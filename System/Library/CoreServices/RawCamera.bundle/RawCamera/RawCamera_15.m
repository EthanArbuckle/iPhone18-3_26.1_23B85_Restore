void sub_233844458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_2337239E8(a4);
  }

  sub_233754F18(va);
  if (*(v4 - 17) < 0)
  {
    operator delete(*(v4 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338444FC(uint64_t result, void **a2, int a3)
{
  if (a3 <= 261)
  {
    if (a3 > 258)
    {
      if (a3 == 259)
      {
        result = sub_233757E18(result + 1208, a2);
        v3 = 0x3FB1EB851EB851ECLL;
      }

      else if (a3 == 260)
      {
        result = sub_233757E18(result + 1208, a2);
        v3 = 0x3FB999999999999ALL;
      }

      else
      {
        result = sub_233757E18(result + 1208, a2);
        v3 = 0x3FC0A3D70A3D70A4;
      }
    }

    else
    {
      switch(a3)
      {
        case 0:
          result = sub_233757E18(result + 1208, a2);
          *(result + 56) = 0;
          return result;
        case 257:
          result = sub_233757E18(result + 1208, a2);
          v3 = 0x3F9EB851EB851EB8;
          break;
        case 258:
          result = sub_233757E18(result + 1208, a2);
          v3 = 0x3FA999999999999ALL;
          break;
        default:
          return result;
      }
    }
  }

  else if (a3 <= 512)
  {
    switch(a3)
    {
      case 262:
        result = sub_233757E18(result + 1208, a2);
        v3 = 0x3FC3333333333333;
        break;
      case 263:
        result = sub_233757E18(result + 1208, a2);
        v3 = 0x3FC5C28F5C28F5C3;
        break;
      case 264:
        result = sub_233757E18(result + 1208, a2);
        v3 = 0x3FC999999999999ALL;
        break;
      default:
        return result;
    }
  }

  else if (a3 > 514)
  {
    if (a3 == 515)
    {
      result = sub_233757E18(result + 1208, a2);
      v3 = 0xBFB1EB851EB851ECLL;
    }

    else
    {
      if (a3 != 516)
      {
        return result;
      }

      result = sub_233757E18(result + 1208, a2);
      v3 = 0xBFB999999999999ALL;
    }
  }

  else if (a3 == 513)
  {
    result = sub_233757E18(result + 1208, a2);
    v3 = 0xBF9EB851EB851EB8;
  }

  else
  {
    result = sub_233757E18(result + 1208, a2);
    v3 = 0xBFA999999999999ALL;
  }

  *(result + 56) = v3;
  return result;
}

void sub_2338447E4(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v113[1] = *MEMORY[0x277D85DE8];
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0x24)
  {
    if (*a3 > 0x10u)
    {
      if (*a3 > 0x1Au)
      {
        if (v6 == 27)
        {
          if (((*(*a1 + 56))(a1) & 1) == 0)
          {
            memset(&__dst, 0, sizeof(__dst));
            if (a3[1] == 3 && *(a3 + 1) >= 7u)
            {
              v37 = sub_233751BE4(a1, a3, &__dst);
              sub_2338FCC34(&__dst, v37, a1);
            }
          }

          return;
        }

        if (v6 != 29)
        {
          if (v6 == 30)
          {
            sub_2338FCCC8(a1, a3);
          }

          return;
        }

        if ((*(*a1 + 56))(a1))
        {
          return;
        }

        sub_2337338AC(a1, &__p);
        LODWORD(__src) = *(a3 + 2);
        sub_233723AE0(&v112, &__src);
        sub_233725F08(&__dst, &__p, &v112, 0);
        if (v105)
        {
          sub_2337239E8(v105);
        }

        *(a1 + 1264) = 0;
        v31 = *(a3 + 1);
        v32 = MEMORY[0x277D85DE0];
        while (1)
        {
          sub_2337338AC(a1, &__p);
          v33 = sub_233725510(__p);
          v35 = v31-- != 0;
          if (v105)
          {
            sub_2337239E8(v105);
          }

          if (v33 == 0 || !v35)
          {
            break;
          }

          if ((*(v32 + 4 * v33 + 60) & 0x400) != 0)
          {
            v36 = v33 - 48;
          }

          else
          {
            v36 = (v33 - 10 * ((205 * v33) >> 11));
          }

          *(a1 + 1264) = v36 + 10 * *(a1 + 1264);
        }

        goto LABEL_297;
      }

      if (v6 == 17)
      {
        sub_2338FCD48(a3, a1, a2);
        return;
      }

      if (v6 != 20 || ((*(*a1 + 56))(a1) & 1) != 0)
      {
        return;
      }

      sub_2337338AC(a1, &__p);
      LODWORD(__src) = *(a3 + 2);
      sub_233723AE0(&v112, &__src);
      sub_233725F08(&__dst, &__p, &v112, 0);
      if (v105)
      {
        sub_2337239E8(v105);
      }

      __p = 0;
      v105 = 0;
      v106 = 0;
      sub_2337338AC(a1, &v112);
      v11 = v112;
      LODWORD(v102[0]) = 4;
      sub_233726998(&__src, v102);
      v12 = sub_2337257E8(v11, &__src, &__p);
      if (*(&v112 + 1))
      {
        sub_2337239E8(*(&v112 + 1));
      }

      if (v12 && sub_233754AA0(&__p, "NRW "))
      {
        v13 = 0;
        v14 = 4;
        do
        {
          sub_2337338AC(a1, &v112);
          v15 = sub_233725510(v112);
          if (*(&v112 + 1))
          {
            sub_2337239E8(*(&v112 + 1));
          }

          v13 = (v15 - 48) | (v13 << 8);
          --v14;
        }

        while (v14);
        v16 = 1;
        *(a1 + 1329) = 1;
        if (v13 <= 0x10000)
        {
          v17 = 5096;
        }

        else
        {
          v17 = 56;
        }
      }

      else
      {
        v16 = 0;
        v17 = 5096;
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(__p);
      }

      sub_233725FD4(&__dst);
      v45 = *(a3 + 1);
      if (v16)
      {
        if (v17 + 16 <= v45 && a3[1] == 7)
        {
          sub_2337338AC(a1, &__p);
          *&v112 = v17 + *(a3 + 2);
          sub_2337268D8(&__src, &v112);
          sub_233725F08(&__dst, &__p, &__src, 0);
          if (v105)
          {
            sub_2337239E8(v105);
          }

          sub_2337530DC(":0x14", a2, &__p);
          sub_2337338AC(a1, &v112);
          v47 = sub_233725614(v112);
          if (*(&v112 + 1))
          {
            sub_2337239E8(*(&v112 + 1));
          }

          sub_2337338AC(a1, &v112);
          v48 = sub_233725614(v112);
          if (*(&v112 + 1))
          {
            sub_2337239E8(*(&v112 + 1));
          }

          sub_2337338AC(a1, &v112);
          v49 = sub_233725614(v112);
          if (*(&v112 + 1))
          {
            sub_2337239E8(*(&v112 + 1));
          }

          sub_2337338AC(a1, &v112);
          v50 = sub_233725614(v112);
          if (*(&v112 + 1))
          {
            sub_2337239E8(*(&v112 + 1));
          }

          LODWORD(v112) = 4 * v47;
          DWORD1(v112) = v49 + v48;
          DWORD2(v112) = 4 * v50;
          __src = &__p;
          v51 = sub_2337577E4(a1 + 120, &__p);
          sub_23375538C((v51 + 56), &v112, &v112 + 12, 3uLL);
          if (SHIBYTE(v106) < 0)
          {
            operator delete(__p);
          }

          sub_233725FD4(&__dst);
        }

        return;
      }

      if (v45 != 2560 || a3[1] != 7)
      {
        return;
      }

      sub_2337530DC(":0x14", a2, &__dst.__r_.__value_.__l.__data_);
      sub_2337338AC(a1, &v112);
      LODWORD(v102[0]) = *(a3 + 2) + 1248;
      sub_233723AE0(&__src, v102);
      sub_233725F08(&__p, &v112, &__src, 0);
      if (*(&v112 + 1))
      {
        sub_2337239E8(*(&v112 + 1));
      }

      sub_2337338AC(a1, &__src);
      sub_233735A18(&v112, &__src, 2);
      if (v110)
      {
        sub_2337239E8(v110);
      }

      sub_2337338AC(a1, &__src);
      v52 = sub_2337255C0(__src);
      if (v110)
      {
        sub_2337239E8(v110);
      }

      sub_2337338AC(a1, &__src);
      v53 = sub_2337255C0(__src);
      if (v110)
      {
        sub_2337239E8(v110);
      }

      __src = (v52 | 0x10000000000);
      LODWORD(v110) = v53;
      v102[0] = &__dst;
      v54 = sub_2337577E4(a1 + 120, &__dst.__r_.__value_.__l.__data_);
      sub_23375538C((v54 + 56), &__src, &v110 + 4, 3uLL);
      sub_233735A90(&v112);
      sub_233725FD4(&__p);
      goto LABEL_323;
    }

    if (*a3 > 0xBu)
    {
      if (v6 != 12)
      {
        if (v6 != 16 || (*(*a1 + 56))(a1) || *(a3 + 1) < 0x84u || a3[1] != 7)
        {
          return;
        }

        if (*(a2 + 23) < 0)
        {
          sub_233731FB8(&__dst, *a2, *(a2 + 8));
        }

        else
        {
          __dst = *a2;
        }

        std::string::append(&__dst, ":DataDump", 9uLL);
        sub_2337338AC(a1, &v112);
        __src = (*(a3 + 2) + 128);
        sub_233723B40(v102, &__src);
        sub_233725F08(&__p, &v112, v102, 0);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v75 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v76 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        *&v112 = v75 | 0x10000000000;
        DWORD2(v112) = v76;
        __src = &__dst;
        v77 = sub_2337577E4(a1 + 120, &__dst.__r_.__value_.__l.__data_);
        sub_23375538C((v77 + 56), &v112, &v112 + 12, 3uLL);
        sub_233725FD4(&__p);
        goto LABEL_323;
      }

      if ((*(*a1 + 56))(a1))
      {
        v29 = 0;
      }

      else
      {
        v29 = a3[1] == 5;
      }

      if (!v29 || *(a3 + 1) != 4)
      {
        return;
      }

      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
      }

      std::string::append(&__dst, ":ColorBalance1", 0xEuLL);
      sub_2337338AC(a1, &v112);
      LODWORD(v102[0]) = *(a3 + 2);
      sub_233723AE0(&__src, v102);
      sub_233725F08(&__p, &v112, &__src, 0);
      if (*(&v112 + 1))
      {
        sub_2337239E8(*(&v112 + 1));
      }

      v112 = 0uLL;
      v55 = 8;
      v113[0] = 0;
      do
      {
        sub_2337338AC(a1, &__src);
        v56 = sub_233725614(__src);
        if (v110)
        {
          sub_2337239E8(v110);
        }

        v58 = *(&v112 + 1);
        if (*(&v112 + 1) >= v113[0])
        {
          v60 = v112;
          v61 = *(&v112 + 1) - v112;
          v62 = (*(&v112 + 1) - v112) >> 2;
          v63 = v62 + 1;
          if ((v62 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v64 = v113[0] - v112;
          if ((v113[0] - v112) >> 1 > v63)
          {
            v63 = v64 >> 1;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v65 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            sub_2337235D4(&v112, v65);
          }

          *(4 * v62) = v56;
          v59 = 4 * v62 + 4;
          memcpy(0, v60, v61);
          v66 = v112;
          *&v112 = 0;
          *(&v112 + 1) = v59;
          v113[0] = 0;
          if (v66)
          {
            operator delete(v66);
          }
        }

        else
        {
          **(&v112 + 1) = v56;
          v59 = v58 + 4;
        }

        *(&v112 + 1) = v59;
        --v55;
      }

      while (v55);
      v67 = v112;
      v68 = *(v112 + 4);
      if (v68 != *(v112 + 12) || v68 != *(v112 + 20) || v68 != *(v112 + 28))
      {
        v69 = 0;
        v70 = (v112 + 4);
        v71 = 4;
        do
        {
          if (*v70)
          {
            LODWORD(v57) = *(v70 - 1);
            v57 = *&v57 / *v70 * 256.0;
            *(v70 - 1) = llround(v57);
            v72 = v70;
          }

          else
          {
            *v70 = 256;
            v72 = &v67[2 * v69];
          }

          *v72 = 256;
          ++v69;
          v70 += 2;
          --v71;
        }

        while (v71);
      }

      v73 = v67[4];
      LODWORD(__src) = *v67;
      HIDWORD(__src) = v73;
      v110 = __PAIR64__(v67[6], v67[2]);
      v102[0] = &__dst;
      v74 = sub_2337577E4(a1 + 120, &__dst.__r_.__value_.__l.__data_);
      sub_23375538C((v74 + 56), &__src, v111, 4uLL);
      if (v112)
      {
        *(&v112 + 1) = v112;
        operator delete(v112);
      }

      goto LABEL_322;
    }

    if (v6 != 2)
    {
      if (v6 != 4 || a3[1] != 2)
      {
        return;
      }

      memset(&__dst, 0, sizeof(__dst));
      v8 = sub_23375168C(a1, a3, &__dst, 1);
      v9 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (v8)
      {
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__dst.__r_.__value_.__l.__size_ != 3)
          {
LABEL_325:
            v19 = __dst.__r_.__value_.__r.__words[0];
            goto LABEL_326;
          }

          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) != 3)
          {
            return;
          }

          p_dst = &__dst;
        }

        data_low = LOWORD(p_dst->__r_.__value_.__l.__data_);
        v88 = p_dst->__r_.__value_.__s.__data_[2];
        if (data_low == 21070 && v88 == 87)
        {
          *(a1 + 1329) = 1;
        }
      }

LABEL_324:
      if ((v9 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_325;
    }

    if ((*(*a1 + 56))(a1))
    {
      return;
    }

    if ((a3[1] | 4) != 7)
    {
      return;
    }

    if (!*(a3 + 1))
    {
      return;
    }

    LODWORD(__p) = 0;
    sub_233726998(&__dst, &__p);
    if (sub_23374B704(a3, &__dst))
    {
      LODWORD(__src) = 0;
      sub_233726998(&v112, &__src);
      if (sub_23374B704(a3, &v112) != 1)
      {
        return;
      }
    }

    if (a3[1] == 7)
    {
      v27 = *(a3 + 1);
      if (v27 < 2)
      {
LABEL_94:
        LODWORD(__src) = v27 != 1;
        sub_233726998(&v112, &__src);
        LODWORD(__p) = sub_23374B704(a3, &v112);
        __dst.__r_.__value_.__r.__words[0] = a2;
        v28 = sub_2337577E4(a1 + 192, a2);
        sub_23375538C((v28 + 56), &__p, &__p + 4, 1uLL);
        return;
      }

      LODWORD(__p) = 0;
      sub_233726998(&__dst, &__p);
      if (!sub_23374B704(a3, &__dst))
      {
        LODWORD(__src) = 1;
        sub_233726998(&v112, &__src);
        if (!sub_23374B704(a3, &v112))
        {
          return;
        }
      }
    }

    v27 = *(a3 + 1);
    goto LABEL_94;
  }

  if (*a3 > 0x92u)
  {
    if (*a3 > 0x96u)
    {
      if (v6 != 151)
      {
        if (v6 == 167)
        {
          sub_2338FCDF4();
        }

        else if (v6 == 176 && ((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 7 && *(a3 + 1) == 16)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(__src) = sub_233749410(a3);
          sub_233726A8C(&v112, &__src);
          sub_233725F08(&__dst, &__p, &v112, 0);
          if (v105)
          {
            sub_2337239E8(v105);
          }

          sub_2337338AC(a1, &__p);
          sub_233725614(__p);
          if (v105)
          {
            sub_2337239E8(v105);
          }

          sub_2337338AC(a1, &__p);
          v7 = sub_233725614(__p);
          if (v105)
          {
            sub_2337239E8(v105);
          }

          sub_2337338AC(a1, &__p);
          sub_233725614(__p);
          if (v105)
          {
            sub_2337239E8(v105);
          }

          sub_2337338AC(a1, &__p);
          sub_233725614(__p);
          if (v105)
          {
            sub_2337239E8(v105);
          }

          *(a1 + 1328) = v7 != 0;
          sub_233725FD4(&__dst);
        }

        return;
      }

      if ((*(*a1 + 56))(a1))
      {
        return;
      }

      if (*(a2 + 23) < 0)
      {
        sub_233731FB8(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
      }

      std::string::append(&__dst, ":ColorBalance", 0xDuLL);
      sub_2337338AC(a1, &v112);
      LODWORD(v102[0]) = *(a3 + 2);
      sub_233723AE0(&__src, v102);
      sub_233725F08(&__p, &v112, &__src, 0);
      if (*(&v112 + 1))
      {
        sub_2337239E8(*(&v112 + 1));
      }

      v78 = 0;
      v79 = 4;
      do
      {
        sub_2337338AC(a1, &v112);
        v80 = sub_233725510(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        v78 = 16 * v78 + v80 - 48;
        --v79;
      }

      while (v79);
      if (v78 > 258)
      {
        if (v78 != 259)
        {
          if (v78 == 1282)
          {
            sub_2337338AC(a1, &__src);
            sub_233754E04(&v112, &__src);
            if (v110)
            {
              sub_2337239E8(v110);
            }

            sub_2337338AC(a1, &__src);
            LODWORD(v102[0]) = 52;
            (*(*__src + 40))(__src, v102, 1);
            if (v110)
            {
              sub_2337239E8(v110);
            }

            sub_2337338AC(a1, &__src);
            sub_2337255C0(__src);
            if (v110)
            {
              sub_2337239E8(v110);
            }

            sub_2337338AC(a1, &__src);
            v85 = sub_2337255C0(__src);
            if (v110)
            {
              sub_2337239E8(v110);
            }

            sub_2337338AC(a1, &__src);
            sub_2337255C0(__src);
            if (v110)
            {
              sub_2337239E8(v110);
            }

            *v102 = v85;
            sub_233731694(&__src, 4uLL);
            sub_2337530DC(":BLACKLEVELS", a2, v102);
            v108 = v102;
            v86 = (sub_23375E520(a1 + 264, v102) + 56);
            if (v86 != &__src)
            {
              sub_23373176C(v86, __src, v110, (v110 - __src) >> 3);
            }

            if (v103 < 0)
            {
              operator delete(v102[0]);
            }

            if (__src)
            {
              v110 = __src;
              operator delete(__src);
            }

            sub_233725FD4(&v112);
            goto LABEL_322;
          }

          goto LABEL_298;
        }

        std::string::append(&__dst, ":103", 4uLL);
        sub_2337338AC(a1, &v112);
        LODWORD(__src) = 16;
        (*(*v112 + 40))(v112, &__src, 1);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v81 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v82 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v84 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }
      }

      else
      {
        if (v78 != 256)
        {
          if (v78 == 258)
          {
            std::string::append(&__dst, ":102", 4uLL);
            sub_2337338AC(a1, &v112);
            LODWORD(__src) = 6;
            (*(*v112 + 40))(v112, &__src, 1);
            if (*(&v112 + 1))
            {
              sub_2337239E8(*(&v112 + 1));
            }

            sub_2337338AC(a1, &v112);
            v81 = sub_2337255C0(v112);
            if (*(&v112 + 1))
            {
              sub_2337239E8(*(&v112 + 1));
            }

            sub_2337338AC(a1, &v112);
            v82 = sub_2337255C0(v112);
            if (*(&v112 + 1))
            {
              sub_2337239E8(*(&v112 + 1));
            }

            sub_2337338AC(a1, &v112);
            v83 = sub_2337255C0(v112);
            if (*(&v112 + 1))
            {
              sub_2337239E8(*(&v112 + 1));
            }

            sub_2337338AC(a1, &v112);
            v84 = sub_2337255C0(v112);
            goto LABEL_319;
          }

LABEL_298:
          if ((v78 & 0xFFFFFF00) == 0x200)
          {
            if (v78 == 517)
            {
              v99 = 14;
            }

            else
            {
              sub_2337338AC(a1, &v112);
              LODWORD(__src) = 280;
              (*(*v112 + 40))(v112, &__src, 1);
              if (*(&v112 + 1))
              {
                sub_2337239E8(*(&v112 + 1));
              }

              *(a1 + 1256) = 6;
              if ((v78 - 521) <= 0xB && ((1 << (v78 - 9)) & 0xA01) != 0)
              {
                *(a1 + 1256) = 10;
              }

              if ((v78 & 0x2FE) != 0x216)
              {
LABEL_336:
                if (!*(a1 + 1240))
                {
                  sub_2337AD310(0x144uLL, &v112);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              v99 = 4;
            }

            *(a1 + 1256) = v99;
            goto LABEL_336;
          }

LABEL_322:
          sub_233725FD4(&__p);
LABEL_323:
          v9 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          goto LABEL_324;
        }

        std::string::append(&__dst, ":100", 4uLL);
        sub_2337338AC(a1, &v112);
        LODWORD(__src) = 68;
        (*(*v112 + 40))(v112, &__src, 1);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v81 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v84 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }

        sub_2337338AC(a1, &v112);
        v82 = sub_2337255C0(v112);
        if (*(&v112 + 1))
        {
          sub_2337239E8(*(&v112 + 1));
        }
      }

      sub_2337338AC(a1, &v112);
      v83 = sub_2337255C0(v112);
LABEL_319:
      if (*(&v112 + 1))
      {
        sub_2337239E8(*(&v112 + 1));
      }

      *&v112 = __PAIR64__(v82, v81);
      *(&v112 + 1) = __PAIR64__(v83, v84);
      __src = &__dst;
      v100 = sub_2337577E4(a1 + 120, &__dst.__r_.__value_.__l.__data_);
      sub_23375538C((v100 + 56), &v112, v113, 4uLL);
      goto LABEL_322;
    }

    if (v6 == 147)
    {
      LODWORD(__p) = 0;
      sub_233726998(&__dst, &__p);
      *(a1 + 1340) = sub_23374B704(a3, &__dst);
      *(a1 + 1344) = 1;
      return;
    }

    if (v6 != 150 || ((*(*a1 + 56))(a1) & 1) != 0)
    {
      return;
    }

    if ((*(a1 + 1344) & 1) == 0)
    {
      if (sub_23374E3A4(a3) == 46)
      {
        v26 = 3;
      }

      else
      {
        if (sub_23374E3A4(a3) != 624)
        {
          goto LABEL_271;
        }

        v26 = 4;
      }

      *(a1 + 1340) = v26;
      *(a1 + 1344) = 1;
    }

LABEL_271:
    sub_2337338AC(a1, &__dst);
    v90 = sub_233725414(__dst.__r_.__value_.__l.__data_);
    LODWORD(v112) = *(a3 + 2);
    LODWORD(__p) = v90;
    *(a1 + 1320) = *sub_233723874(&__p, &v112);
    if (__dst.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__dst.__r_.__value_.__l.__size_);
    }

    return;
  }

  if (*a3 <= 0x3Du)
  {
    if (v6 != 37)
    {
      if (v6 != 61 || a3[1] != 3 || *(a3 + 1) != 4)
      {
        return;
      }

      memset(&__dst, 0, sizeof(__dst));
      v18 = sub_233751BE4(a1, a3, &__dst);
      v19 = __dst.__r_.__value_.__r.__words[0];
      if (v18 && *(a3 + 1) == (__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1)
      {
        __p = 0;
        v105 = 0;
        v106 = 0;
        v20 = (*(*a1 + 520))(a1);
        if ((v20 & 0xFFFFFFFD) == 0xC)
        {
          v21 = __dst.__r_.__value_.__r.__words[0];
          if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
          {
            v22 = 0;
            v23 = 14 - v20;
            v24 = 1;
            do
            {
              *&v112 = (*(v21 + 2 * v22) >> v23);
              sub_2337F207C(&__p, &v112);
              v22 = v24;
              v21 = __dst.__r_.__value_.__r.__words[0];
              ++v24;
            }

            while (v22 < (__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 1);
          }

          sub_2337530DC(":BLACKLEVELS", a2, &v112);
          __src = &v112;
          v25 = (sub_23375E520(a1 + 264, &v112) + 56);
          if (v25 != &__p)
          {
            sub_23373176C(v25, __p, v105, (v105 - __p) >> 3);
          }

          sub_2338FCC88(&v112, &__p);
        }

        v19 = __dst.__r_.__value_.__r.__words[0];
      }

      goto LABEL_148;
    }

    if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 7 || *(a3 + 1) < 4u)
    {
      return;
    }

    sub_2337338AC(a1, &__p);
    LODWORD(__src) = *(a3 + 2);
    sub_233723AE0(&v112, &__src);
    sub_233725F08(&__dst, &__p, &v112, 0);
    if (v105)
    {
      sub_2337239E8(v105);
    }

    sub_2337338AC(a1, &__p);
    v40 = sub_233725510(__p);
    if (v105)
    {
      sub_2337239E8(v105);
    }

    v41 = (exp2(v40 / 12.0 + -5.0) * 100.0);
    switch(v40)
    {
      case '<':
        LODWORD(__src) = 100;
        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v92 = sub_23375E5EC(a1 + 192, &__p);
        sub_23375538C((v92 + 56), &__src, &__src + 4, 1uLL);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(__p);
        }

        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v43 = sub_23377BB60(a1 + 1208, &__p);
        v44 = 0xBFE0000000000000;
        break;
      case '@':
        LODWORD(__src) = 125;
        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v91 = sub_23375E5EC(a1 + 192, &__p);
        sub_23375538C((v91 + 56), &__src, &__src + 4, 1uLL);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(__p);
        }

        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v43 = sub_23377BB60(a1 + 1208, &__p);
        v44 = 0xBFC5C28F5C28F5C3;
        break;
      case 'D':
        LODWORD(__src) = 160;
        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v42 = sub_23375E5EC(a1 + 192, &__p);
        sub_23375538C((v42 + 56), &__src, &__src + 4, 1uLL);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(__p);
        }

        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v43 = sub_23377BB60(a1 + 1208, &__p);
        v44 = 0x3FC5C28F5C28F5C3;
        break;
      default:
        LODWORD(__src) = v41;
        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v93 = sub_23375E5EC(a1 + 192, &__p);
        sub_23375538C((v93 + 56), &__src, &__src + 4, 1uLL);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(__p);
        }

        sub_2337530DC(":ISOInfo", a2, &__p);
        *&v112 = &__p;
        v43 = sub_23377BB60(a1 + 1208, &__p);
        v44 = 0x3FE0000000000000;
        break;
    }

    *(v43 + 56) = v44;
    if (SHIBYTE(v106) < 0)
    {
      operator delete(__p);
    }

    (*(*a1 + 392))(&__p, a1, a2);
    v94 = sub_233735E3C(a1 + 192, &__p);
    v95 = a1 + 200 != v94 && *(v94 + 64) != *(v94 + 56);
    if (SHIBYTE(v106) < 0)
    {
      operator delete(__p);
    }

    if (!v95)
    {
      LODWORD(v112) = v41;
      __p = a2;
      v96 = sub_2337577E4(a1 + 192, a2);
      sub_23375538C((v96 + 56), &v112, &v112 + 4, 1uLL);
    }

    if (*(a3 + 1) >= 6u)
    {
      sub_2337338AC(a1, &__p);
      v97 = __p;
      LODWORD(__src) = *(a3 + 2) + 4;
      sub_233723AE0(&v112, &__src);
      (*(*v97 + 40))(v97, &v112, 0);
      if (v105)
      {
        sub_2337239E8(v105);
      }

      sub_2337338AC(a1, &__p);
      v98 = sub_2337255C0(__p);
      if (v105)
      {
        sub_2337239E8(v105);
      }

      sub_2337530DC(":ISOExpansion", a2, &__p);
      sub_2338444FC(a1, &__p, v98);
      sub_2338F8878(&__p);
    }

LABEL_297:
    sub_233725FD4(&__dst);
    return;
  }

  if (v6 == 62)
  {
    sub_2338FCD9C();
    return;
  }

  if (v6 == 69)
  {
    if (a3[1] != 3 || *(a3 + 1) != 4)
    {
      return;
    }

    memset(&__dst, 0, sizeof(__dst));
    v38 = sub_233751BE4(a1, a3, &__dst);
    v19 = __dst.__r_.__value_.__r.__words[0];
    if (v38)
    {
      v39 = *(a1 + 1316);
      *(a1 + 1300) = vmovl_u16(*__dst.__r_.__value_.__l.__data_);
      if ((v39 & 1) == 0)
      {
        *(a1 + 1316) = 1;
      }

LABEL_149:
      __dst.__r_.__value_.__l.__size_ = v19;
LABEL_326:
      operator delete(v19);
      return;
    }

LABEL_148:
    if (!v19)
    {
      return;
    }

    goto LABEL_149;
  }

  if (v6 == 140 && ((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_271;
  }
}

void sub_2338465A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  v32 = *(v30 - 88);
  if (v32)
  {
    sub_2337239E8(v32);
  }

  sub_233725FD4(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_233846A64(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233846ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233846AD8(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233846B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233846B4C(uint64_t a1)
{
  v2 = (*(*a1 + 448))(a1);
  v3 = (*(*a1 + 456))(a1);
  return ((v3 & 0xFFFFFFFF00000000) + v2) & 0xFFFFFFFF00000000 | (v3 + v2);
}

uint64_t sub_233846BE0(uint64_t a1)
{
  if (*(a1 + 1316) == 1)
  {
    return *(a1 + 1300);
  }

  else
  {
    return sub_2337339FC(a1);
  }
}

unint64_t sub_233846C5C(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233846CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233846CD8(uint64_t a1@<X0>, void **a2@<X8>)
{
  sub_233753B14(a1, a2);
  sub_233753FB4(a1, 1, __p);
  sub_233753354(a1, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "IFD0:SUBIFD2");
  sub_233753354(a1, __p, &v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:SUBIFD0");
  sub_233753354(a1, __p, &v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    (*(*v8 + 64))(v8, *(a1 + 1584));
    sub_233753C74(a2, &v8);
  }

  if (v5)
  {
    (*(*v5 + 64))(v5, *(a1 + 1584));
    sub_233753C74(a2, &v5);
  }

  if (v4)
  {
    (*(*v4 + 64))(v4, *(a1 + 1584));
    sub_233753C74(a2, &v4);
  }

  if (*(&v4 + 1))
  {
    sub_2337239E8(*(&v4 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_2337239E8(*(&v5 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }
}

void sub_233846E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  sub_233723948(&__p);
  _Unwind_Resume(a1);
}

void sub_233846F0C(std::string *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, int a4@<W3>, void **a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a4 != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!std::string::compare(this, "encrypted") || !std::string::compare(this, "encrypted2"))
  {
    v9 = *(a2 + 1240);
    if (v9)
    {
      if (*(v9 + 24) >= 0x144uLL && *(a2 + 1256) <= 0x13BuLL)
      {
        v10 = byte_233909793[*(a2 + 1264)];
        v11 = byte_233909793[((HIWORD(*(a2 + 1268)) ^ BYTE1(*(a2 + 1268)) ^ *(a2 + 1268)) ^ HIBYTE(*(a2 + 1268))) + 256];
        v12 = sub_23378972C(v9);
        v13 = 0;
        v14 = 96;
        do
        {
          v11 += v14 * v10;
          ++v14;
          v31[v13] = *(v12 + v13) ^ v11;
          ++v13;
        }

        while (v13 != 324);
        v15 = &v31[*(a2 + 1256)];
        if (!std::string::compare(this, "encrypted"))
        {
          v25 = *v15;
          v26 = v15[2];
          v27 = v15[4];
          v23 = v15[6];
          if (*(a2 + 1272) == 1)
          {
            v16 = (v25 | (v15[1] << 8));
            v17 = (v26 | (v15[3] << 8));
            v19 = (v27 | (v15[5] << 8));
            v24 = v15[7];
            goto LABEL_18;
          }

          v16 = (v15[1] | (v25 << 8));
          v17 = (v15[3] | (v26 << 8));
          v19 = (v15[5] | (v27 << 8));
          v29 = v15[7];
        }

        else
        {
          v16 = 1.0;
          v17 = 1.0;
          v18 = 1.0;
          v19 = 1.0;
          if (std::string::compare(this, "encrypted2"))
          {
LABEL_23:
            sub_233730758(a5, 3uLL);
            v30 = *a5;
            *v30 = v16 / v17;
            v30[1] = 1.0;
            v30[2] = v18 / v19;
            return;
          }

          v20 = v15[2];
          v21 = *v15;
          v22 = v15[6];
          v23 = v15[4];
          if (*(a2 + 1272) == 1)
          {
            v16 = (v20 | (v15[3] << 8));
            v17 = (v21 | (v15[1] << 8));
            v19 = (v22 | (v15[7] << 8));
            v24 = v15[5];
LABEL_18:
            v28 = v23 | (v24 << 8);
LABEL_22:
            v18 = v28;
            goto LABEL_23;
          }

          v16 = (v15[3] | (v20 << 8));
          v17 = (v15[1] | (v21 << 8));
          v19 = (v15[7] | (v22 << 8));
          v29 = v15[5];
        }

        v28 = v29 | (v23 << 8);
        goto LABEL_22;
      }
    }
  }

  sub_233733E44(a2, &this->__r_.__value_.__l.__data_, a3, 3, a5);
}

uint64_t sub_233847234(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOWORD(result) = sub_233733AF4();
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  LODWORD(result) = ~(-1 << v4);
  return result;
}

void sub_2338472DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338472F8(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return v4;
    }

    return sub_233733AFC();
  }

  if ((v5 & 1) == 0)
  {
    return sub_233733AFC();
  }

  return v4;
}

void sub_233847398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338473B4(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 584, __p);
  v3 = v2;
  if (a1 + 592 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 56);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 592 == v3)
  {
    return sub_233733B0C();
  }

  return v4;
}

void sub_233847440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23384746C(uint64_t a1, void **a2, void *a3)
{
  v5 = sub_233735E3C(a1 + 1208, a2);
  if (a1 + 1216 != v5)
  {
    *a3 = *(v5 + 56);
  }

  return a1 + 1216 != v5;
}

uint64_t sub_2338474B4(uint64_t a1)
{
  if (*(a1 + 1336) != 1)
  {
    if (!*(a1 + 1344))
    {
      if ((*(a1 + 1329) & 1) == 0)
      {
        if ((*(*a1 + 536))(a1) == 34713)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      return 5;
    }

    return *(a1 + 1340);
  }

  if (*(a1 + 1344))
  {
    return *(a1 + 1340);
  }

  if (*(a1 + 1329))
  {
    return 5;
  }

  if ((*(*a1 + 520))(a1) == 12)
  {
    return 6;
  }

  if ((*(*a1 + 520))(a1) != 14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 100006;
}

void sub_23384763C(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = &v22;
  sub_2337355A8(a1, &v22);
  v5 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  size = v22.__r_.__value_.__l.__size_;
  v6 = v22.__r_.__value_.__r.__words[0];
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v22.__r_.__value_.__l.__size_;
  }

  if (v9 >= 5)
  {
    v10 = v8 + v9;
    v11 = v8;
    do
    {
      v12 = memchr(v11, 78, v9 - 4);
      if (!v12)
      {
        break;
      }

      if (LODWORD(v12->__r_.__value_.__l.__data_) == 1330334030 && v12->__r_.__value_.__s.__data_[4] == 78)
      {
        if (v12 == v8)
        {
          std::string::erase(&v22, 0, 5uLL);
          v5 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          size = v22.__r_.__value_.__l.__size_;
          v6 = v22.__r_.__value_.__r.__words[0];
        }

        break;
      }

      v11 = (&v12->__r_.__value_.__l.__data_ + 1);
      v9 = v10 - v11;
    }

    while (v10 - v11 >= 5);
  }

  if ((v5 & 0x80u) == 0)
  {
    v14 = v5;
  }

  else
  {
    v4 = v6;
    v14 = size;
  }

  if (v14 >= 7)
  {
    v15 = v4 + v14;
    v16 = v4;
    do
    {
      v17 = memchr(v16, 67, v14 - 6);
      if (!v17)
      {
        break;
      }

      if (LODWORD(v17->__r_.__value_.__l.__data_) == 1280266051 && *(v17->__r_.__value_.__r.__words + 3) == 1481199692)
      {
        if (v17 == v4)
        {
          std::string::erase(&v22, 0, 7uLL);
        }

        break;
      }

      v16 = (&v17->__r_.__value_.__l.__data_ + 1);
      v14 = v15 - v16;
    }

    while (v15 - v16 >= 7);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[1329])
  {
    v19 = "nrw";
  }

  else
  {
    v19 = "nef";
  }

  sub_23372A488(__p, v19);
  sub_233735478(a2, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "nikon");
  sub_233735478(a2, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  sub_233754418(a2, &v22);
  if ((*(*a1 + 824))(a1))
  {
    sub_23372A488(__p, "raws");
    sub_233735478(a2, __p);
  }

  else if ((*(*a1 + 832))(a1))
  {
    sub_23372A488(__p, "rawm");
    sub_233735478(a2, __p);
  }

  else
  {
    if (!sub_23384797C(a1))
    {
      goto LABEL_47;
    }

    sub_23372A488(__p, "nefx");
    sub_233735478(a2, __p);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_47:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_233847910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23384797C(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 632, __p);
  v3 = a1 + 640 != v2 && *(v2 + 56) == 2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2338479F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233847A0C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v1;
  v6 = *v3;
  if (v6 == 51157)
  {
    if (v3[1] != 7)
    {
      return;
    }

    sub_2337338AC(v1, &v145);
    LODWORD(__p[0]) = sub_233749410(v4);
    sub_233726A8C(&v148, __p);
    sub_233725F08(v151, &v145, &v148, 0);
    if (v146)
    {
      sub_2337239E8(v146);
    }

    v148 = 0;
    v149 = 0;
    v150 = 0;
    sub_2337338AC(v5, &v145);
    v7 = v145;
    LODWORD(v141.__r_.__value_.__l.__data_) = 6;
    sub_233726998(__p, &v141);
    v8 = sub_2337257E8(v7, __p, &v148);
    if (v146)
    {
      sub_2337239E8(v146);
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    if (SHIBYTE(v150) < 0)
    {
      if (v149 == 5)
      {
        v9 = v148;
        goto LABEL_17;
      }
    }

    else if (SHIBYTE(v150) == 5)
    {
      v9 = &v148;
LABEL_17:
      v10 = *v9;
      v11 = *(v9 + 4);
      if (v10 != 1869310286 || v11 != 110)
      {
        goto LABEL_41;
      }

      *(v5 + 1336) = 1;
      sub_2337338AC(v5, &v145);
      v13 = sub_2337256DC(v145);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v13 - 256 >= 2 && v13 != 513 && v13 != 769)
      {
        goto LABEL_41;
      }

      sub_2337338AC(v5, &v145);
      v14 = sub_2337256DC(v145);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v14)
      {
        goto LABEL_41;
      }

      sub_2337338AC(v5, &v145);
      v15 = (*(*v145 + 48))(v145);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      v147 = v15;
      sub_2337338AC(v5, &v145);
      v16 = sub_233725614(v145);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v16 != 2771273)
      {
        goto LABEL_41;
      }

      sub_2337338AC(v5, &v145);
      v17 = sub_233725614(v145);
      if (v146)
      {
        sub_2337239E8(v146);
      }

      if (v17 != 8)
      {
        goto LABEL_41;
      }

      *(v5 + 1349) = 1;
      sub_23372A488(__p, "");
      v18 = sub_23374DF5C(v5, __p, &v145);
      if (v144 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v18)
      {
        goto LABEL_41;
      }

      v19 = 0;
      while (1)
      {
        v20 = &v145 + 6 * v19 + 2;
        v21 = *v20;
        if (v21 <= 5)
        {
          break;
        }

        if (*v20 <= 7u)
        {
          if (v21 != 6)
          {
            if (v21 != 7 || v20[1] != 7)
            {
              goto LABEL_258;
            }

            sub_2337338AC(v5, &v141);
            sub_233723C18(&v132, &v147);
            v142 = sub_233749410(&v145 + 12 * v19 + 4);
            LODWORD(v140.__r_.__value_.__l.__data_) = v132;
            LODWORD(v134) = *sub_233753AB0(&v140, &v142);
            sub_233726A8C(&v136, &v134);
            sub_233725F08(__p, &v141, &v136, 0);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            memset(&v141, 0, sizeof(v141));
            memset(&v140, 0, sizeof(v140));
            sub_2337338AC(v5, &v136);
            v37 = v136;
            v142 = 2;
            sub_233726998(&v132, &v142);
            if (sub_2337257E8(v37, &v132, &v141))
            {
              sub_2337338AC(v5, &v134);
              v38 = v134;
              v138 = 2;
              sub_233726998(&v139, &v138);
              v39 = sub_2337257E8(v38, &v139, &v140);
              if (v135)
              {
                sub_2337239E8(v135);
              }
            }

            else
            {
              v39 = 0;
            }

            if (v137)
            {
              sub_2337239E8(v137);
            }

            if (v39)
            {
              if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
              {
                sub_2337338AC(v5, &v136);
                v81 = sub_233725510(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                if (v81)
                {
                  sub_2337338AC(v5, &v136);
                  v82 = sub_233725510(v136);
                  if (v137)
                  {
                    sub_2337239E8(v137);
                  }

                  if (v82 == 2)
                  {
                    sub_2337338AC(v5, &v136);
                    v83 = sub_2337255C0(v136);
                    if (v137)
                    {
                      sub_2337239E8(v137);
                    }

                    if (!v83)
                    {
                      sub_2337338AC(v5, &v136);
                      sub_2337257A8(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      sub_2337338AC(v5, &v136);
                      v84 = sub_233725510(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      if (v84 == 3)
                      {
                        sub_2337338AC(v5, &v136);
                        v85 = sub_2337255C0(v136);
                        if (v137)
                        {
                          sub_2337239E8(v137);
                        }

                        if (!v85)
                        {
                          sub_2337338AC(v5, &v136);
                          v86 = sub_233725510(v136);
                          if (v137)
                          {
                            sub_2337239E8(v137);
                          }

                          if (!v86)
                          {
                            sub_2337338AC(v5, &v136);
                            LODWORD(v134) = sub_233725768(v136);
                            sub_233754CB4((v5 + 1488), &v134);
                            if (v137)
                            {
                              sub_2337239E8(v137);
                            }

                            sub_2337338AC(v5, &v136);
                            LODWORD(v134) = sub_233725768(v136);
                            sub_233754CB4((v5 + 1488), &v134);
                            if (v137)
                            {
                              sub_2337239E8(v137);
                            }

                            sub_2337338AC(v5, &v136);
                            v87 = sub_233725768(v136);
                            if (v137)
                            {
                              sub_2337239E8(v137);
                            }

                            if (v87 == 0.0)
                            {
                              sub_2337338AC(v5, &v136);
                              LODWORD(v134) = sub_233725768(v136);
                              sub_233754CB4((v5 + 1488), &v134);
                              if (v137)
                              {
                                sub_2337239E8(v137);
                              }

                              sub_2337338AC(v5, &v136);
                              v88 = sub_233725510(v136);
                              if (v137)
                              {
                                sub_2337239E8(v137);
                              }

                              if (v88 == 3)
                              {
                                sub_2337338AC(v5, &v136);
                                v89 = sub_2337255C0(v136);
                                if (v137)
                                {
                                  sub_2337239E8(v137);
                                }

                                if (!v89)
                                {
                                  sub_2337338AC(v5, &v136);
                                  v90 = sub_233725510(v136);
                                  if (v137)
                                  {
                                    sub_2337239E8(v137);
                                  }

                                  if (!v90)
                                  {
                                    sub_2337338AC(v5, &v136);
                                    LODWORD(v134) = sub_233725768(v136);
                                    sub_233754CB4((v5 + 1512), &v134);
                                    if (v137)
                                    {
                                      sub_2337239E8(v137);
                                    }

                                    sub_2337338AC(v5, &v136);
                                    LODWORD(v134) = sub_233725768(v136);
                                    sub_233754CB4((v5 + 1512), &v134);
                                    if (v137)
                                    {
                                      sub_2337239E8(v137);
                                    }

                                    sub_2337338AC(v5, &v136);
                                    v91 = sub_233725768(v136);
                                    if (v137)
                                    {
                                      sub_2337239E8(v137);
                                    }

                                    if (v91 == 0.0)
                                    {
                                      sub_2337338AC(v5, &v136);
                                      LODWORD(v134) = sub_233725768(v136);
                                      sub_233754CB4((v5 + 1512), &v134);
                                      if (v137)
                                      {
                                        sub_2337239E8(v137);
                                      }

                                      sub_2337338AC(v5, &v136);
                                      v92 = sub_2337255C0(v136);
                                      if (v137)
                                      {
                                        sub_2337239E8(v137);
                                      }

                                      if (!v92)
                                      {
                                        sub_2337338AC(v5, &v136);
                                        *(v5 + 1481) = sub_233725510(v136);
                                        if (v137)
                                        {
                                          sub_2337239E8(v137);
                                        }

                                        sub_2337338AC(v5, &v136);
                                        v93 = sub_233725510(v136);
                                        if (v137)
                                        {
                                          sub_2337239E8(v137);
                                        }

                                        if (!v93)
                                        {
                                          *(v5 + 1480) = v81;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v40 = &v141;
                if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v40 = v141.__r_.__value_.__r.__words[0];
                }

                v41 = &v140;
                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v140.__r_.__value_.__r.__words[0];
                }

                printf("Unknown version for Nikon LateralChromaticAberrationCorrectionCurve.  The values are major: %s and minor: %s", v40, v41);
              }
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            goto LABEL_257;
          }

          if (v20[1] == 7)
          {
            sub_2337338AC(v5, &v141);
            sub_233723C18(&v132, &v147);
            v142 = sub_233749410(&v145 + 12 * v19 + 4);
            LODWORD(v140.__r_.__value_.__l.__data_) = v132;
            LODWORD(v134) = *sub_233753AB0(&v140, &v142);
            sub_233726A8C(&v136, &v134);
            sub_233725F08(__p, &v141, &v136, 0);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            memset(&v141, 0, sizeof(v141));
            memset(&v140, 0, sizeof(v140));
            sub_2337338AC(v5, &v136);
            v45 = v136;
            v142 = 2;
            sub_233726998(&v132, &v142);
            if (sub_2337257E8(v45, &v132, &v141))
            {
              sub_2337338AC(v5, &v134);
              v46 = v134;
              v138 = 2;
              sub_233726998(&v139, &v138);
              v47 = sub_2337257E8(v46, &v139, &v140);
              if (v135)
              {
                sub_2337239E8(v135);
              }
            }

            else
            {
              v47 = 0;
            }

            if (v137)
            {
              sub_2337239E8(v137);
            }

            if (v47)
            {
              if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
              {
                sub_2337338AC(v5, &v136);
                v94 = sub_233725510(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                if (v94)
                {
                  sub_2337338AC(v5, &v136);
                  v95 = sub_233725510(v136);
                  if (v137)
                  {
                    sub_2337239E8(v137);
                  }

                  if (v95 == 1)
                  {
                    sub_2337338AC(v5, &v136);
                    v96 = sub_2337255C0(v136);
                    if (v137)
                    {
                      sub_2337239E8(v137);
                    }

                    if (!v96)
                    {
                      sub_2337338AC(v5, &v136);
                      sub_2337257A8(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      sub_2337338AC(v5, &v136);
                      v97 = sub_233725510(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      if (v97 == 8)
                      {
                        sub_2337338AC(v5, &v136);
                        v98 = sub_2337255C0(v136);
                        if (v137)
                        {
                          sub_2337239E8(v137);
                        }

                        if (!v98)
                        {
                          sub_2337338AC(v5, &v136);
                          v99 = sub_233725510(v136);
                          if (v137)
                          {
                            sub_2337239E8(v137);
                          }

                          if (!v99)
                          {
                            sub_2337338AC(v5, &v136);
                            LODWORD(v134) = sub_233725768(v136);
                            sub_233754CB4((v5 + 1456), &v134);
                            if (v137)
                            {
                              sub_2337239E8(v137);
                            }

                            sub_2337338AC(v5, &v136);
                            v100 = sub_233725768(v136);
                            if (v137)
                            {
                              sub_2337239E8(v137);
                            }

                            if (v100 == 0.0)
                            {
                              sub_2337338AC(v5, &v136);
                              LODWORD(v134) = sub_233725768(v136);
                              sub_233754CB4((v5 + 1456), &v134);
                              if (v137)
                              {
                                sub_2337239E8(v137);
                              }

                              sub_2337338AC(v5, &v136);
                              v101 = sub_233725768(v136);
                              if (v137)
                              {
                                sub_2337239E8(v137);
                              }

                              if (v101 == 0.0)
                              {
                                sub_2337338AC(v5, &v136);
                                LODWORD(v134) = sub_233725768(v136);
                                sub_233754CB4((v5 + 1456), &v134);
                                if (v137)
                                {
                                  sub_2337239E8(v137);
                                }

                                sub_2337338AC(v5, &v136);
                                v102 = sub_233725768(v136);
                                if (v137)
                                {
                                  sub_2337239E8(v137);
                                }

                                if (v102 == 0.0)
                                {
                                  sub_2337338AC(v5, &v136);
                                  LODWORD(v134) = sub_233725768(v136);
                                  sub_233754CB4((v5 + 1456), &v134);
                                  if (v137)
                                  {
                                    sub_2337239E8(v137);
                                  }

                                  sub_2337338AC(v5, &v136);
                                  v103 = sub_233725768(v136);
                                  if (v137)
                                  {
                                    sub_2337239E8(v137);
                                  }

                                  if (v103 == 0.0)
                                  {
                                    sub_2337338AC(v5, &v136);
                                    v104 = sub_233725768(v136);
                                    if (v137)
                                    {
                                      sub_2337239E8(v137);
                                    }

                                    if (v104 == 1.0)
                                    {
                                      sub_2337338AC(v5, &v136);
                                      v105 = sub_2337255C0(v136);
                                      if (v137)
                                      {
                                        sub_2337239E8(v137);
                                      }

                                      if (!v105)
                                      {
                                        sub_2337338AC(v5, &v136);
                                        v106 = sub_2337255C0(v136);
                                        if (v137)
                                        {
                                          sub_2337239E8(v137);
                                        }

                                        if (!v106)
                                        {
                                          sub_2337338AC(v5, &v136);
                                          *(v5 + 1452) = sub_233725768(v136);
                                          if (v137)
                                          {
                                            sub_2337239E8(v137);
                                          }

                                          *(v5 + 1448) = v94;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v48 = &v141;
                if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v48 = v141.__r_.__value_.__r.__words[0];
                }

                v49 = &v140;
                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v49 = v140.__r_.__value_.__r.__words[0];
                }

                printf("Unknown version for Nikon VignetteCorrectionCurve.  The values are major: %s and minor: %s", v48, v49);
              }
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            goto LABEL_257;
          }
        }

        else if (v21 == 8)
        {
          if (v20[1] == 7)
          {
            sub_2337338AC(v5, &v141);
            sub_233723C18(&v132, &v147);
            v142 = sub_233749410(&v145 + 12 * v19 + 4);
            LODWORD(v140.__r_.__value_.__l.__data_) = v132;
            LODWORD(v134) = *sub_233753AB0(&v140, &v142);
            sub_233726A8C(&v136, &v134);
            sub_233725F08(__p, &v141, &v136, 0);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            memset(&v141, 0, sizeof(v141));
            memset(&v140, 0, sizeof(v140));
            sub_2337338AC(v5, &v136);
            v61 = v136;
            v142 = 2;
            sub_233726998(&v132, &v142);
            if (sub_2337257E8(v61, &v132, &v141))
            {
              sub_2337338AC(v5, &v134);
              v62 = v134;
              v138 = 2;
              sub_233726998(&v139, &v138);
              v63 = sub_2337257E8(v62, &v139, &v140);
              if (v135)
              {
                sub_2337239E8(v135);
              }
            }

            else
            {
              v63 = 0;
            }

            if (v137)
            {
              sub_2337239E8(v137);
            }

            if (v63)
            {
              if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
              {
                sub_2337338AC(v5, &v136);
                sub_233725768(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                sub_2337338AC(v5, &v136);
                sub_233725768(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                sub_2337338AC(v5, &v136);
                sub_2337255C0(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }
              }

              else
              {
                v64 = &v141;
                if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v64 = v141.__r_.__value_.__r.__words[0];
                }

                v65 = &v140;
                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v65 = v140.__r_.__value_.__r.__words[0];
                }

                printf("Unknown version for Nikon OpticalCenterOffset.  The values are major: %s and minor: %s", v64, v65);
              }
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            goto LABEL_257;
          }
        }

        else
        {
          if (v21 != 9)
          {
            if (v21 != 13 || v20[1] != 7)
            {
              goto LABEL_258;
            }

            sub_2337338AC(v5, &v141);
            sub_233723C18(&v132, &v147);
            v142 = sub_233749410(&v145 + 12 * v19 + 4);
            LODWORD(v140.__r_.__value_.__l.__data_) = v132;
            LODWORD(v134) = *sub_233753AB0(&v140, &v142);
            sub_233726A8C(&v136, &v134);
            sub_233725F08(__p, &v141, &v136, 0);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            memset(&v141, 0, sizeof(v141));
            memset(&v140, 0, sizeof(v140));
            sub_2337338AC(v5, &v136);
            v27 = v136;
            v142 = 2;
            sub_233726998(&v132, &v142);
            if (sub_2337257E8(v27, &v132, &v141))
            {
              sub_2337338AC(v5, &v134);
              v28 = v134;
              v138 = 2;
              sub_233726998(&v139, &v138);
              v29 = sub_2337257E8(v28, &v139, &v140);
              if (v135)
              {
                sub_2337239E8(v135);
              }
            }

            else
            {
              v29 = 0;
            }

            if (v137)
            {
              sub_2337239E8(v137);
            }

            if (v29 && !std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
            {
              sub_2337338AC(v5, &v136);
              v30 = sub_2337255C0(v136);
              if (v137)
              {
                sub_2337239E8(v137);
              }

              if (v30 <= 0xE && ((1 << v30) & 0x6458) != 0)
              {
                *(v5 + 1340) = v30;
                v31 = 1;
                *(v5 + 1344) = 1;
LABEL_91:
                if (v30 == 13)
                {
                  goto LABEL_504;
                }
              }

              else
              {
                v30 = *(v5 + 1340);
                v31 = *(v5 + 1344);
                if (v31)
                {
                  goto LABEL_91;
                }
              }

              if ((v31 & (v30 == 14)) == 1)
              {
LABEL_504:
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            goto LABEL_257;
          }

          if (v20[1] == 7)
          {
            sub_2337338AC(v5, &v141);
            sub_233723C18(&v132, &v147);
            v142 = sub_233749410(&v145 + 12 * v19 + 4);
            LODWORD(v140.__r_.__value_.__l.__data_) = v132;
            LODWORD(v134) = *sub_233753AB0(&v140, &v142);
            sub_233726A8C(&v136, &v134);
            sub_233725F08(__p, &v141, &v136, 0);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            sub_2337338AC(v5, &v141);
            v66 = sub_2337257A8(v141.__r_.__value_.__l.__data_);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            *&v140.__r_.__value_.__l.__data_ = v66;
            sub_2337338AC(v5, &v141);
            v67 = sub_2337257A8(v141.__r_.__value_.__l.__data_);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            *&v136 = v67;
            sub_2337338AC(v5, &v141);
            v68 = sub_2337257A8(v141.__r_.__value_.__l.__data_);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            *&v134 = v68;
            sub_2337338AC(v5, &v141);
            v69 = sub_2337257A8(v141.__r_.__value_.__l.__data_);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            *&v132 = v69;
            sub_2337338AC(v5, &v141);
            v70 = sub_2337255C0(v141.__r_.__value_.__l.__data_);
            if (v141.__r_.__value_.__l.__size_)
            {
              sub_2337239E8(v141.__r_.__value_.__l.__size_);
            }

            if (!v70)
            {
              sub_233754CB4((v5 + 1552), &v140);
              sub_233754CB4((v5 + 1552), &v136);
              sub_233754CB4((v5 + 1552), &v134);
              sub_233754CB4((v5 + 1552), &v132);
            }

            goto LABEL_257;
          }
        }

LABEL_258:
        if (++v19 == v18)
        {
          goto LABEL_41;
        }
      }

      if (*v20 <= 2u)
      {
        if (v21 == 1)
        {
          if (v20[1] != 7 || *(v20 + 1) != 12)
          {
            goto LABEL_258;
          }

          sub_2337338AC(v5, &v141);
          sub_233723C18(&v132, &v147);
          v142 = sub_233749410(&v145 + 12 * v19 + 4);
          LODWORD(v140.__r_.__value_.__l.__data_) = v132;
          LODWORD(v134) = *sub_233753AB0(&v140, &v142);
          sub_233726A8C(&v136, &v134);
          sub_233725F08(__p, &v141, &v136, 0);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          sub_2337338AC(v5, &v141);
          v42 = sub_233725614(v141.__r_.__value_.__l.__data_);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          sub_2337338AC(v5, &v141);
          v43 = sub_233725614(v141.__r_.__value_.__l.__data_);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          sub_2337338AC(v5, &v141);
          v44 = sub_2337255C0(v141.__r_.__value_.__l.__data_);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          if (!v44)
          {
            *(v5 + 1576) = v42 / v43;
          }
        }

        else
        {
          if (v21 != 2 || v20[1] != 7)
          {
            goto LABEL_258;
          }

          sub_2337338AC(v5, &v141);
          sub_233723C18(&v132, &v147);
          v142 = sub_233749410(&v145 + 12 * v19 + 4);
          LODWORD(v140.__r_.__value_.__l.__data_) = v132;
          LODWORD(v134) = *sub_233753AB0(&v140, &v142);
          sub_233726A8C(&v136, &v134);
          sub_233725F08(__p, &v141, &v136, 0);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          memset(&v141, 0, sizeof(v141));
          memset(&v140, 0, sizeof(v140));
          sub_2337338AC(v5, &v136);
          v32 = v136;
          v142 = 2;
          sub_233726998(&v132, &v142);
          if (sub_2337257E8(v32, &v132, &v141))
          {
            sub_2337338AC(v5, &v134);
            v33 = v134;
            v138 = 2;
            sub_233726998(&v139, &v138);
            v34 = sub_2337257E8(v33, &v139, &v140);
            if (v135)
            {
              sub_2337239E8(v135);
            }
          }

          else
          {
            v34 = 0;
          }

          if (v137)
          {
            sub_2337239E8(v137);
          }

          if (v34)
          {
            if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
            {
              sub_2337338AC(v5, &v136);
              v76 = sub_233725510(v136);
              *(v5 + 1350) = v76;
              if (v137)
              {
                sub_2337239E8(v137);
                v76 = *(v5 + 1350);
              }

              if (v76)
              {
                sub_2337338AC(v5, &v136);
                *(v5 + 1352) = sub_233725510(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                sub_2337338AC(v5, &v136);
                v77 = sub_233725510(v136);
                *(v5 + 1351) = v77;
                if (v137)
                {
                  sub_2337239E8(v137);
                  v77 = *(v5 + 1351);
                }

                if (v77 >= 2)
                {
                  sub_2337338AC(v5, &v136);
                  *(v5 + 1353) = sub_233725510(v136);
                  if (v137)
                  {
                    sub_2337239E8(v137);
                  }

                  if (*(v5 + 1351))
                  {
                    v78 = 0;
                    do
                    {
                      sub_2337338AC(v5, &v136);
                      v79 = sub_233725614(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      sub_2337338AC(v5, &v136);
                      v80 = sub_233725614(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      if (!(v80 | v79))
                      {
                        break;
                      }

                      *&v136 = v79 / v80;
                      sub_2337F207C((v5 + 1360), &v136);
                      ++v78;
                    }

                    while (v78 < *(v5 + 1351));
                  }

                  sub_2337338AC(v5, &v136);
                  sub_2337255C0(v136);
                  if (v137)
                  {
                    sub_2337239E8(v137);
                  }
                }
              }
            }

            else
            {
              v35 = &v141;
              if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v35 = v141.__r_.__value_.__r.__words[0];
              }

              v36 = &v140;
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v36 = v140.__r_.__value_.__r.__words[0];
              }

              printf("Unknown version for Nikon Lens Distortion Correction.  The values are major: %s and minor: %s", v35, v36);
            }
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_257;
      }

      if (v21 != 3)
      {
        if (v21 != 4)
        {
          if (v21 != 5 || v20[1] != 7)
          {
            goto LABEL_258;
          }

          sub_2337338AC(v5, &v141);
          sub_233723C18(&v132, &v147);
          v142 = sub_233749410(&v145 + 12 * v19 + 4);
          LODWORD(v140.__r_.__value_.__l.__data_) = v132;
          LODWORD(v134) = *sub_233753AB0(&v140, &v142);
          sub_233726A8C(&v136, &v134);
          sub_233725F08(__p, &v141, &v136, 0);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          memset(&v141, 0, sizeof(v141));
          memset(&v140, 0, sizeof(v140));
          sub_2337338AC(v5, &v136);
          v22 = v136;
          v142 = 2;
          sub_233726998(&v132, &v142);
          if (sub_2337257E8(v22, &v132, &v141))
          {
            sub_2337338AC(v5, &v134);
            v23 = v134;
            v138 = 2;
            sub_233726998(&v139, &v138);
            v24 = sub_2337257E8(v23, &v139, &v140);
            if (v135)
            {
              sub_2337239E8(v135);
            }
          }

          else
          {
            v24 = 0;
          }

          if (v137)
          {
            sub_2337239E8(v137);
          }

          if (v24)
          {
            if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
            {
              sub_2337338AC(v5, &v136);
              v120 = sub_233725510(v136);
              if (v137)
              {
                sub_2337239E8(v137);
              }

              if (v120)
              {
                sub_2337338AC(v5, &v136);
                v121 = sub_233725510(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                if (v121 == 1)
                {
                  sub_2337338AC(v5, &v136);
                  v122 = sub_2337255C0(v136);
                  if (v137)
                  {
                    sub_2337239E8(v137);
                  }

                  if (!v122)
                  {
                    sub_2337338AC(v5, &v136);
                    sub_2337257A8(v136);
                    if (v137)
                    {
                      sub_2337239E8(v137);
                    }

                    sub_2337338AC(v5, &v136);
                    v123 = sub_233725510(v136);
                    if (v137)
                    {
                      sub_2337239E8(v137);
                    }

                    if (v123 == 4)
                    {
                      sub_2337338AC(v5, &v136);
                      v124 = sub_2337255C0(v136);
                      if (v137)
                      {
                        sub_2337239E8(v137);
                      }

                      if (!v124)
                      {
                        sub_2337338AC(v5, &v136);
                        v125 = sub_233725510(v136);
                        if (v137)
                        {
                          sub_2337239E8(v137);
                        }

                        if (!v125)
                        {
                          sub_2337338AC(v5, &v136);
                          LODWORD(v134) = sub_233725768(v136);
                          sub_233754CB4((v5 + 1424), &v134);
                          if (v137)
                          {
                            sub_2337239E8(v137);
                          }

                          sub_2337338AC(v5, &v136);
                          LODWORD(v134) = sub_233725768(v136);
                          sub_233754CB4((v5 + 1424), &v134);
                          if (v137)
                          {
                            sub_2337239E8(v137);
                          }

                          sub_2337338AC(v5, &v136);
                          LODWORD(v134) = sub_233725768(v136);
                          sub_233754CB4((v5 + 1424), &v134);
                          if (v137)
                          {
                            sub_2337239E8(v137);
                          }

                          sub_2337338AC(v5, &v136);
                          v126 = sub_233725768(v136);
                          if (v137)
                          {
                            sub_2337239E8(v137);
                          }

                          if (v126 == 0.0)
                          {
                            sub_2337338AC(v5, &v136);
                            v127 = sub_233725768(v136);
                            if (v137)
                            {
                              sub_2337239E8(v137);
                            }

                            if (v127 == 0.0)
                            {
                              sub_2337338AC(v5, &v136);
                              v128 = sub_2337255C0(v136);
                              if (v137)
                              {
                                sub_2337239E8(v137);
                              }

                              if (!v128)
                              {
                                sub_2337338AC(v5, &v136);
                                v129 = sub_2337255C0(v136);
                                if (v137)
                                {
                                  sub_2337239E8(v137);
                                }

                                if (!v129)
                                {
                                  sub_2337338AC(v5, &v136);
                                  *(v5 + 1420) = sub_233725768(v136);
                                  if (v137)
                                  {
                                    sub_2337239E8(v137);
                                  }

                                  sub_2337338AC(v5, &v136);
                                  v130 = sub_2337255C0(v136);
                                  if (v137)
                                  {
                                    sub_2337239E8(v137);
                                  }

                                  if (!v130)
                                  {
                                    *(v5 + 1416) = v120;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v25 = &v141;
              if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = v141.__r_.__value_.__r.__words[0];
              }

              v26 = &v140;
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v26 = v140.__r_.__value_.__r.__words[0];
              }

              printf("Unknown version for Nikon DistortionCorrectionCurve.  The values are major: %s and minor: %s", v25, v26);
            }
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          goto LABEL_257;
        }

LABEL_200:
        if (v20[1] == 7)
        {
          sub_2337338AC(v5, &v141);
          sub_233723C18(&v132, &v147);
          v142 = sub_233749410(&v145 + 12 * v19 + 4);
          LODWORD(v140.__r_.__value_.__l.__data_) = v132;
          LODWORD(v134) = *sub_233753AB0(&v140, &v142);
          sub_233726A8C(&v136, &v134);
          sub_233725F08(__p, &v141, &v136, 0);
          if (v141.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(v141.__r_.__value_.__l.__size_);
          }

          memset(&v141, 0, sizeof(v141));
          memset(&v140, 0, sizeof(v140));
          sub_2337338AC(v5, &v136);
          v56 = v136;
          v142 = 2;
          sub_233726998(&v132, &v142);
          if (sub_2337257E8(v56, &v132, &v141))
          {
            sub_2337338AC(v5, &v134);
            v57 = v134;
            v138 = 2;
            sub_233726998(&v139, &v138);
            v58 = sub_2337257E8(v57, &v139, &v140);
            if (v135)
            {
              sub_2337239E8(v135);
            }
          }

          else
          {
            v58 = 0;
          }

          if (v137)
          {
            sub_2337239E8(v137);
          }

          if (v58)
          {
            if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
            {
              sub_2337338AC(v5, &v136);
              *(v5 + 1384) = sub_233725510(v136);
              if (v137)
              {
                sub_2337239E8(v137);
              }

              sub_2337338AC(v5, &v136);
              v71 = sub_233725510(v136);
              *(v5 + 1385) = v71;
              if (v137)
              {
                sub_2337239E8(v137);
                v71 = *(v5 + 1385);
              }

              if (v71 >= 2)
              {
                sub_2337338AC(v5, &v136);
                *(v5 + 1386) = sub_233725510(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                sub_2337338AC(v5, &v136);
                v72 = sub_233725510(v136) / 100.0;
                *(v5 + 1388) = v72;
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                *(v5 + 1400) = *(v5 + 1392);
                if (*(v5 + 1385))
                {
                  v73 = 0;
                  do
                  {
                    sub_2337338AC(v5, &v136);
                    v74 = sub_233725614(v136);
                    if (v137)
                    {
                      sub_2337239E8(v137);
                    }

                    sub_2337338AC(v5, &v136);
                    v75 = sub_233725614(v136);
                    if (v137)
                    {
                      sub_2337239E8(v137);
                    }

                    if (v74 | v75)
                    {
                      *&v136 = v74 / v75;
                      sub_233754CB4((v5 + 1392), &v136);
                    }

                    ++v73;
                  }

                  while (v73 < *(v5 + 1385));
                }

                sub_2337338AC(v5, &v136);
                sub_2337255C0(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }
              }
            }

            else
            {
              v59 = &v141;
              if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v59 = v141.__r_.__value_.__r.__words[0];
              }

              v60 = &v140;
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v60 = v140.__r_.__value_.__r.__words[0];
              }

              printf("Unknown version for Nikon Lens Vignette Correction.  The values are major: %s and minor: %s", v59, v60);
            }
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

LABEL_257:
          sub_233725FD4(__p);
          goto LABEL_258;
        }

        goto LABEL_258;
      }

      if (v20[1] != 7)
      {
        goto LABEL_258;
      }

      sub_2337338AC(v5, &v141);
      sub_233723C18(&v132, &v147);
      v142 = sub_233749410(&v145 + 12 * v19 + 4);
      LODWORD(v140.__r_.__value_.__l.__data_) = v132;
      LODWORD(v134) = *sub_233753AB0(&v140, &v142);
      sub_233726A8C(&v136, &v134);
      sub_233725F08(__p, &v141, &v136, 0);
      if (v141.__r_.__value_.__l.__size_)
      {
        sub_2337239E8(v141.__r_.__value_.__l.__size_);
      }

      memset(&v141, 0, sizeof(v141));
      memset(&v140, 0, sizeof(v140));
      sub_2337338AC(v5, &v136);
      v50 = v136;
      v142 = 2;
      sub_233726998(&v132, &v142);
      if (sub_2337257E8(v50, &v132, &v141))
      {
        sub_2337338AC(v5, &v134);
        v51 = v134;
        v138 = 2;
        sub_233726998(&v139, &v138);
        v52 = sub_2337257E8(v51, &v139, &v140);
        if (v135)
        {
          sub_2337239E8(v135);
        }
      }

      else
      {
        v52 = 0;
      }

      if (v137)
      {
        sub_2337239E8(v137);
      }

      if (v52)
      {
        if (!std::string::compare(&v141, "01") && !std::string::compare(&v140, "00"))
        {
          sub_2337338AC(v5, &v136);
          v107 = sub_233725510(v136);
          if (v137)
          {
            sub_2337239E8(v137);
          }

          if (v107)
          {
            sub_2337338AC(v5, &v136);
            v108 = sub_233725510(v136);
            if (v137)
            {
              sub_2337239E8(v137);
            }

            if (v108 >= 2)
            {
              sub_2337338AC(v5, &v136);
              v109 = sub_233725510(v136);
              if (v137)
              {
                sub_2337239E8(v137);
              }

              if (v109)
              {
                sub_2337338AC(v5, &v136);
                v110 = sub_233725510(v136);
                if (v137)
                {
                  sub_2337239E8(v137);
                }

                if (!v110)
                {
                  v111 = v108 >> 1;
                  sub_233730758(&v136, v111);
                  sub_233730758(&v134, v111);
                  v112 = 0;
                  do
                  {
                    sub_2337338AC(v5, &v132);
                    v113 = sub_233725614(v132);
                    if (v133)
                    {
                      sub_2337239E8(v133);
                    }

                    sub_2337338AC(v5, &v132);
                    v114 = sub_233725614(v132);
                    if (v133)
                    {
                      sub_2337239E8(v133);
                    }

                    if (v114)
                    {
                      v115 = v113 / v114;
                    }

                    else
                    {
                      v115 = 0.0;
                    }

                    *(v136 + v112++) = v115;
                  }

                  while (v111 != v112);
                  v116 = 0;
                  do
                  {
                    sub_2337338AC(v5, &v132);
                    v117 = sub_233725614(v132);
                    if (v133)
                    {
                      sub_2337239E8(v133);
                    }

                    sub_2337338AC(v5, &v132);
                    v118 = sub_233725614(v132);
                    if (v133)
                    {
                      sub_2337239E8(v133);
                    }

                    if (v118)
                    {
                      v119 = v117 / v118;
                    }

                    else
                    {
                      v119 = 0.0;
                    }

                    *(v134 + v116++) = v119;
                  }

                  while (v111 != v116);
                  sub_2337338AC(v5, &v132);
                  v55 = sub_2337255C0(v132) == 0;
                  if (v133)
                  {
                    sub_2337239E8(v133);
                  }

                  if (v134)
                  {
                    v135 = v134;
                    operator delete(v134);
                  }

                  if (*&v136 != 0.0)
                  {
                    v137 = v136;
                    operator delete(v136);
                  }

LABEL_195:
                  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v140.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v141.__r_.__value_.__l.__data_);
                  }

                  sub_233725FD4(__p);
                  if (!v55)
                  {
                    goto LABEL_258;
                  }

                  goto LABEL_200;
                }
              }
            }
          }
        }

        else
        {
          v53 = &v141;
          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = v141.__r_.__value_.__r.__words[0];
          }

          v54 = &v140;
          if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v54 = v140.__r_.__value_.__r.__words[0];
          }

          printf("Unknown version for Nikon Lens CA Correction.  The values are major: %s and minor: %s", v53, v54);
        }
      }

      v55 = 0;
      goto LABEL_195;
    }

LABEL_41:
    sub_2338FCE3C(&v148, v151);
    return;
  }

  if (v6 == 51158)
  {
    sub_2338FCE74(v3, v1);
  }

  else
  {

    sub_23374FA0C(v1, v2, v3);
  }
}

void sub_233849C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_233725FD4(&a33);
  if (*(v40 - 129) < 0)
  {
    operator delete(*(v40 - 152));
  }

  sub_233725FD4((v40 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_23384A468@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_2337236E0(a2, *(a1 + 1360), *(a1 + 1368), (*(a1 + 1368) - *(a1 + 1360)) >> 3);
}

uint64_t sub_23384A490(uint64_t a1, int a2)
{
  if (a2)
  {
    return ((*(a1 + 1416) - 1) & 0xFD) == 0;
  }

  else
  {
    return (*(a1 + 1416) + 255) >> 8;
  }
}

uint64_t sub_23384A4B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_233729070(a2, *(a1 + 1424), *(a1 + 1432), (*(a1 + 1432) - *(a1 + 1424)) >> 2);
}

uint64_t sub_23384A4DC(uint64_t a1, int a2)
{
  if (a2)
  {
    return ((*(a1 + 1448) - 1) & 0xFD) == 0;
  }

  else
  {
    return (*(a1 + 1448) + 255) >> 8;
  }
}

uint64_t sub_23384A500@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_233729070(a2, *(a1 + 1456), *(a1 + 1464), (*(a1 + 1464) - *(a1 + 1456)) >> 2);
}

id sub_23384A534(uint64_t a1)
{
  v25[12] = *MEMORY[0x277D85DE8];
  v2 = sub_23374CF00();
  v7 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);

  v24[0] = &unk_284957DF0;
  v24[1] = &unk_284957E08;
  v25[0] = &unk_28495D6E0;
  v25[1] = &unk_28495D708;
  v24[2] = &unk_284957E20;
  v24[3] = &unk_284957DC0;
  v25[2] = &unk_28495D730;
  v25[3] = &unk_28495D758;
  v24[4] = &unk_284957E38;
  v24[5] = &unk_284957E50;
  v25[4] = &unk_28495D780;
  v25[5] = &unk_28495D7A8;
  v24[6] = &unk_284957E68;
  v24[7] = &unk_284957E80;
  v25[6] = &unk_28495D7D0;
  v25[7] = &unk_28495D7F8;
  v24[8] = &unk_284957E98;
  v24[9] = &unk_284957EB0;
  v25[8] = &unk_28495D820;
  v25[9] = &unk_28495D848;
  v24[10] = &unk_284957EC8;
  v22[0] = @"Name";
  v22[1] = @"Type";
  v23[0] = @"PreviewIFD";
  v23[1] = &unk_284957EE0;
  v22[2] = @"Namespace";
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23384A7F8;
  v21[3] = &unk_2789EEAE0;
  v21[4] = a1;
  v8 = MEMORY[0x2383AC810](v21);
  v23[2] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v23, v22, 3);
  v24[11] = &unk_284957EF8;
  v25[10] = v10;
  v25[11] = &unk_28495D870;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v25, v24, 12);
  objc_msgSend_addEntriesFromDictionary_(v7, v13, v12, v14, v15);

  v19 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v16, v7, v17, v18);

  return v19;
}

id sub_23384A7FC(uint64_t a1, const char *a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284957F10;
  v4[1] = &unk_284957F28;
  v5[0] = &unk_28495D898;
  v5[1] = &unk_28495D8C0;
  v4[2] = &unk_284957F40;
  v4[3] = &unk_284957F58;
  v5[2] = &unk_28495D8E8;
  v5[3] = &unk_28495D910;
  v4[4] = &unk_284957F70;
  v4[5] = &unk_284957F88;
  v5[4] = &unk_28495D938;
  v5[5] = &unk_28495D960;
  v4[6] = &unk_284957FA0;
  v4[7] = &unk_284957FB8;
  v5[6] = &unk_28495D988;
  v5[7] = &unk_28495D9B0;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 8);

  return v2;
}

BOOL sub_23384A910(uint64_t a1)
{
  sub_233753FB4(a1, 0, __p);
  v2 = sub_233735E3C(a1 + 632, __p);
  v3 = a1 + 640 != v2 && *(v2 + 56) == 2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_23384A984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23384A9C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_233729070(a2, *(a1 + 1392), *(a1 + 1400), (*(a1 + 1400) - *(a1 + 1392)) >> 2);
}

void *sub_23384AA84(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284922B50;
  sub_233843EC8((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_23384AB0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284922B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_23384AB9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_23384AC88();
  v8 = objc_msgSend_URLForResource_withExtension_(v5, v6, v3, v4, v7);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v8;
}

id sub_23384AC88()
{
  if (qword_280C04E90 != -1)
  {
    sub_2338FCEE4();
  }

  v1 = qword_280C04E88;

  return v1;
}

void sub_23384ACCC()
{
  if (!dladdr(sub_23384AC88, &v32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_23372A488(&__str, v32.dli_fname);
  sub_23372A488(v29, "/RawCamera.bundle");
  p_str = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v2 = v30;
  v3 = v29[0];
  if ((v30 & 0x80u) != 0)
  {
    v2 = v29[1];
  }

  else
  {
    v3 = v29;
  }

  v4 = p_str + size;
  if (size && v2)
  {
    v7 = *v3;
    v5 = v3 + 1;
    v6 = v7;
    v8 = p_str;
    v9 = (p_str + size);
    do
    {
      v10 = &v8->__r_.__value_.__s.__data_[1];
      while (v8->__r_.__value_.__s.__data_[0] != v6)
      {
        v8 = (v8 + 1);
        ++v10;
        if (v8 == v4)
        {
          goto LABEL_24;
        }
      }

      v11 = (v2 - 1);
      v12 = v5;
      while (v11)
      {
        if (v10 == v4)
        {
          goto LABEL_24;
        }

        v14 = *v10++;
        v13 = v14;
        v15 = *v12++;
        --v11;
        if (v13 != v15)
        {
          goto LABEL_21;
        }
      }

      v9 = v8;
LABEL_21:
      v8 = (v8 + 1);
    }

    while (v8 != v4);
  }

  else
  {
    v9 = (p_str + size);
  }

LABEL_24:
  v16 = v9 != v4 || v2 == 0;
  if (!v16 || (v17 = v9 - p_str, v17 == -1))
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v27, "RawCameraException");
    __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string(&__p, &__str, 0, v17 + v2, &v33);
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
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  v23 = CFURLCreateFromFileSystemRepresentation(0, p_p, v19, 1u);
  if (v23)
  {
    v24 = objc_msgSend_bundleWithURL_(MEMORY[0x277CCA8D8], v20, v23, v21, v22);
    v25 = qword_280C04E88;
    qword_280C04E88 = v24;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_23384AF14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v27 = v26;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  __cxa_begin_catch(a1);
  v29 = qword_280C04E88;
  qword_280C04E88 = 0;

  __cxa_end_catch();
  JUMPOUT(0x23384AE8CLL);
}

id sub_23384AFB8()
{
  if (qword_280C04EA0 != -1)
  {
    sub_2338FCEF8();
  }

  v1 = qword_280C04E98;

  return v1;
}

void sub_23384AFFC()
{
  v5 = sub_23384AC88();
  v3 = objc_msgSend_objectForInfoDictionaryKey_(v5, v0, @"CFBundleShortVersionString", v1, v2);
  v4 = qword_280C04E98;
  qword_280C04E98 = v3;
}

uint64_t sub_23384B074(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_componentsSeparatedByString_(a1, v3, @".", v4, v5);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  v15 = v11;
  if (v11 >= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v11;
  }

  LODWORD(v17) = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

  v18 = 0;
  do
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v6, v12, v18, v13, v14);
    v24 = objc_msgSend_intValue(v19, v20, v21, v22, v23);

    v17 = (v24 + 100 * v17);
    ++v18;
  }

  while (v16 != v18);
  if (v15 <= 3)
  {
LABEL_8:
    v25.i64[1] = 0x100000001;
    v25.i64[0] = v17 | 0x100000000;
    v26 = vdupq_n_s64(3 - v16);
    v27.i32[1] = 100;
    v27.i64[1] = 0x6400000064;
    v27.i32[0] = 100 * v17;
    v28 = vbslq_s8(vuzp1q_s32(vcgtq_u64(xmmword_233903BB0, v26), vcgtq_u64(xmmword_233903BE0, v26)), v25, v27);
    *v28.i8 = vmul_s32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v17 = (v28.i32[0] * v28.i32[1]);
  }

  objc_autoreleasePoolPop(v2);
  return v17;
}

void sub_23384B1B8(os_signpost_id_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicUnpacker", &unk_233945DBE, buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23384B898;
  v5[3] = &unk_2789EE800;
  v5[4] = a1;
  v4 = MEMORY[0x2383AC810](v5);
  if (*(a1 + 188))
  {
    operator new[]();
  }

  v4[2](v4);
}

void sub_23384B82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void))
{
  MEMORY[0x2383ABEF0](v9, 0x1000C8077774924);
  a9[2](a9);

  _Unwind_Resume(a1);
}

void sub_23384B898(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23384B920(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23384B990()
{
  if ((atomic_load_explicit(&qword_280C04EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04EB0))
  {
    operator new();
  }

  return qword_280C04EA8;
}

void sub_23384BA08(_Unwind_Exception *a1)
{
  MEMORY[0x2383ABF10](v1, 0x10A0C40AD2D8FC7);
  __cxa_guard_abort(&qword_280C04EB0);
  _Unwind_Resume(a1);
}

uint64_t sub_23384BA40(uint64_t a1)
{
  *a1 = dispatch_queue_create("PurgableImageStore", 0);
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 112) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  *(a1 + 40) = nullsub_9;
  *(a1 + 48) = sub_23384BBA8;
  *(a1 + 56) = sub_23384BBB4;
  *(a1 + 64) = nullsub_10;
  *(a1 + 96) = a1;
  *(a1 + 104) = nullsub_11;
  *(a1 + 72) = sub_23384BBC4;
  *(a1 + 80) = sub_23384BC38;
  *(a1 + 88) = sub_23384BCEC;
  if (cache_create("com.apple.rawcamera.images", (a1 + 32), (a1 + 112)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_23384BB74(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  sub_233736790(v2, *(v1 + 16));

  _Unwind_Resume(a1);
}

void sub_23384BBC4(uint64_t a1, NSObject **a2)
{
  v2 = *a2;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23384C104;
  v3[3] = &unk_2789EF2C8;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
}

uint64_t sub_23384BC38(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v7[0] = a1;
  v7[2] = v7;
  v2 = sub_23384C588(a2 + 8, v7);
  v3 = v2[5];
  v4 = v2[6];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = sub_233738EC8(v3);
    if (!v4)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (v4)
  {
LABEL_8:
    sub_2337239E8(v4);
  }

  return v5;
}

void sub_23384BCD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23384BCEC(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5[0] = a1;
    v5[2] = v5;
    v2 = sub_23384C588(a2 + 8, v5);
    v3 = v2[5];
    v4 = v2[6];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      sub_233738EB8(v3);
    }

    if (v4)
    {
      sub_2337239E8(v4);
    }
  }
}

void sub_23384BD6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23384BD84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  value_out = 0;
  result = cache_get_and_retain(*(a1 + 112), a2, &value_out);
  if (result == 2)
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = *(a1 + 16);
  v7 = (a1 + 16);
  v6 = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v7;
  do
  {
    v10 = v6[4];
    v11 = v10 >= value_out;
    v12 = v10 < value_out;
    if (v11)
    {
      v9 = v6;
    }

    v6 = v6[v12];
  }

  while (v6);
  if (v9 == v7 || v9[4] > value_out)
  {
LABEL_17:
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_18;
  }

  v13 = v9[5];
  v14 = v9[6];
  *a3 = v13;
  a3[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v13)
  {
LABEL_18:
    v16 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v16, "RawCameraException");
    __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t sub_23384BEE4(uint64_t a1, void **a2)
{
  result = cache_release_value(*(a1 + 112), *a2);
  if (result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_23384BF44(uint64_t a1, void *a2, void **a3)
{
  if (cache_set_and_retain(*(a1 + 112), a2, *a3, 0x64uLL))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = *a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23384C00C;
  v6[3] = &unk_2789EF2C8;
  v6[4] = a1;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void sub_23384C00C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = *v2;
  v7[2] = v7;
  v3 = sub_23384C588(v1 + 8, v7);
  v5 = *v2;
  v4 = v2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[6];
  v3[5] = v5;
  v3[6] = v4;
  if (v6)
  {
    sub_2337239E8(v6);
  }
}

uint64_t sub_23384C088(uint64_t a1, void *a2)
{
  result = cache_remove(*(a1 + 112), a2);
  if ((result | 2) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t *sub_23384C104(uint64_t *result)
{
  v1 = result[4];
  v4 = *(v1 + 16);
  v2 = (v1 + 16);
  v3 = v4;
  if (v4)
  {
    v5 = result;
    result = v2 - 1;
    v6 = v5[5];
    v7 = v2;
    do
    {
      v8 = v3[4];
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v3;
      }

      v3 = v3[v10];
    }

    while (v3);
    if (v7 != v2 && v7[4] <= v6)
    {
      return sub_23384C154(result, v7);
    }
  }

  return result;
}

uint64_t *sub_23384C154(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_23384C194(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_2337239E8(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_23384C194(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_23384C208(v6, a2);
  return v3;
}

uint64_t *sub_23384C208(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void *sub_23384C588(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_23384C65C(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  v7 = (a1 + 232);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

uint64_t sub_23384C6D4(_DWORD *a1)
{
  v1 = a1[17];
  if (((a1[70] + 2 * v1) & 0xFLL) != 0)
  {
    return (2 * (a1[15] + 2 * v1) + 31) & 0x3FFFFFFE0;
  }

  else
  {
    return 2 * (a1[70] + 2 * v1);
  }
}

uint64_t sub_23384C70C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23384C7A4;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (*(a1 + 131368) != -1)
  {
    dispatch_once((a1 + 131368), block);
  }

  return a1 + 288;
}

void sub_23384C7A4(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = v1 + 0x20000;
  v3 = *(v1 + 192);
  v4 = *(v1 + 200) - v3;
  if (!v4 || (v5 = v4 >> 1, (v4 >> 1) > 0x10000))
  {
    v15 = *(v1 + 131376);
    v14 = *(v1 + 131384);
    *(v1 + 131360) = 1;
    if (v14 == v15)
    {
      v30 = 0;
      v31 = xmmword_233903BA0;
      v32 = v1 + 288;
      v33.i64[0] = 0x8000800080008;
      v33.i64[1] = 0x8000800080008;
      do
      {
        *(v32 + v30) = v31;
        v31 = vaddq_s16(v31, v33);
        v30 += 16;
      }

      while (v30 != 0x20000);
      return;
    }

    v16 = v1 + 288;
    while (1)
    {
      v17 = *v15;
      if (*v15 && (v17 = __dynamic_cast(v17, &unk_2849027A8, &unk_284934FF8, 0)) != 0)
      {
        v18 = *(v15 + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v17 + 7);
      if (v19)
      {
        v20 = sub_2338C0490();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v19;
          LOWORD(v35) = 2048;
          *(&v35 + 2) = 1;
          _os_log_impl(&dword_23371F000, v20, OS_LOG_TYPE_INFO, "Plane %d will be ignored. Only expected up to %zu planes\n", buf, 0x12u);
        }

        if (!v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v21 = v17[6];
        v22 = v17[7];
        v23 = (v22 - v21) >> 3;
        *buf = 0;
        v35 = 0uLL;
        sub_2337236E0(buf, v21, v22, v23);
        v24 = 0;
        v25 = v23 - 1;
        v26 = *buf;
        do
        {
          v27 = 0;
          v28 = 0.0;
          do
          {
            v29 = v26[v27];
            v28 = v28 + v29 * pow((v24 / 65535.0), v27++);
          }

          while (v25 >= v27);
          *(v16 + 2 * v24++) = (v28 * 65535.0);
        }

        while (v24 != 0x10000);
        *&v35 = v26;
        operator delete(v26);
        if (!v18)
        {
          goto LABEL_25;
        }
      }

      sub_2337239E8(v18);
LABEL_25:
      v15 += 16;
      if (v15 == v14)
      {
        return;
      }
    }
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 >> 1;
  }

  v7 = v6;
  v8 = (v1 + 288);
  do
  {
    v9 = *v3++;
    *v8++ = v9;
    --v7;
  }

  while (v7);
  if (!(v5 >> 16))
  {
    v10 = *(v1 + 288 + 2 * (v6 - 1));
    v11 = (v1 + 2 * v6 + 288);
    v12 = v6 + 1;
    do
    {
      *v11++ = v10;
    }

    while (v12++ != 0x10000);
  }

  *(v2 + 288) = 1;
}

void sub_23384CA84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23384CAA8(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3;
  v9 = 64;
  v10 = a2;
  v11 = a3;
  v5 = sub_233723BA0(&v11, &v9);
  v6 = malloc_type_malloc(*v5, 0x100004077774924uLL);
  v7 = *(a1 + 24);
  sub_233723AE0(&v11, &v10);
  (*(*v7 + 40))(v7, &v11, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v6, v4);
  return v6;
}

void sub_23384CB84(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x23384CB6CLL);
}

void sub_23384CBAC(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x277D85DE8];
  v14 = sub_23378E038();
  v15 = v14;
  if (a1 + 1 >= 2 && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLBayerUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_23384D1F4;
  v51[3] = &unk_2789EE800;
  v51[4] = a1;
  v16 = MEMORY[0x2383AC810](v51);
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *buf = 0u;
  v53 = 0u;
  if (JxlDecoderGetBasicInfo() || JxlDecoderProcessInput() != 256)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v47, "RawCameraException");
    __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (JxlDecoderGetColorAsEncodedProfile() || JxlDecoderSetPreferredColorProfile())
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v48, "RawCameraException");
    __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (JxlDecoderImageOutBufferSize())
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v49, "RawCameraException");
    __cxa_throw(v49, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v20 = a3[2];
  v19 = a3[3];
  if (!(2 * v19 * v20) && (v22 = *a3, v21 = a3[1], v21 == a5[1]) && v22 == *a5)
  {
    v23 = 0;
    x = v22;
    y = v21;
    width = v20;
    v27 = a2;
    height = v19;
  }

  else
  {
    v29 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v17, 0, 0, v18);
    v30 = v29;
    v27 = objc_msgSend_mutableBytes(v29, v31, v32, v33, v34);
    v65.origin.x = *a3;
    v65.origin.y = a3[1];
    v65.size.width = a3[2];
    v65.size.height = a3[3];
    v67.origin.x = *a5;
    v67.origin.y = a5[1];
    v67.size.width = a5[2];
    v67.size.height = a5[3];
    v66 = CGRectIntersection(v65, v67);
    x = v66.origin.x;
    y = v66.origin.y;
    width = v66.size.width;
    height = v66.size.height;
    v23 = v29;
  }

  if (JxlDecoderSetImageOutBuffer() || JxlDecoderProcessInput() != 4096 || (a4 & 1) != 0)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v50, "RawCameraException");
    __cxa_throw(v50, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v35 = y;
  v36 = (y + height);
  if (y < v36)
  {
    v37 = (x + width);
    v38 = a5[2];
    v39 = (a2 + a4 * (v35 - a3[1]) + 2 * x - 2 * *a3);
    v40 = (v27 + 2 * (v35 - a5[1]) * v38 + 2 * x - 2 * *a5);
    v41 = 2 * v38;
    do
    {
      v42 = v40;
      v43 = v39;
      v44 = v37 - x;
      if (v37 > x)
      {
        do
        {
          v45 = *v42++;
          *v43++ = *(a8 + 2 * v45);
          --v44;
        }

        while (v44);
      }

      ++v35;
      v39 = (v39 + a4);
      v40 = (v40 + v41);
    }

    while (v35 != v36);
  }

  JxlDecoderDestroy();

  v16[2](v16);
}

void sub_23384D148(_Unwind_Exception *a1)
{
  v1[2](v1);

  _Unwind_Resume(a1);
}

void sub_23384D1F4(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLBayerUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_23384D27C(os_signpost_id_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLBayerUnpacker", &unk_233945DBE, buf, 2u);
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_23384DF18;
  v81[3] = &unk_2789EE800;
  v81[4] = a1;
  v58 = MEMORY[0x2383AC810](v81);
  v4 = *(a1 + 44);
  v68 = *(a1 + 48);
  v5 = *(a1 + 224);
  v6 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&v80, buf);
  v7 = v80;
  (*(*a1 + 40))(a1);
  v8 = *(a1 + 256);
  v9 = *(a1 + 264);
  if (*(a1 + 240) - *(a1 + 232) != v9 - v8 || (v4 - 100000) < 0xFFFE7961 || (v68 - 100000) < 0xFFFE7961 || v5 - 100000 < 0xFFFE7961 || v6 - 100000 < 0xFFFE7961 || v7 >> 5 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v60 = (v68 - 1);
  if ((v60 + v6) / v6 * ((v4 - 1 + v5) / v5) != v7)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v56, "RawCameraException");
    __cxa_throw(v56, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      *buf = v10;
      v10 = *sub_233723874(buf, v8++);
    }

    while (v8 != v9);
  }

  v11 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v10 & 0x80000000) == 0 && v10 >= v11)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v57, "RawCameraException");
    __cxa_throw(v57, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  group = dispatch_group_create();
  v61 = dispatch_queue_create("JPEGXL DNG Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  v67 = a1 + 0x20000;
  v12 = *(a1 + 131400) != 1 || *(a1 + 131404) != 1;
  v63 = sub_2337ADCC4(a1);
  v69 = v4;
  v65 = (v4 - 1);
  if (v12)
  {
    v59 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v13, 2 * (v68 * v4), v14, v15);
    v16 = v59;
    v64 = objc_msgSend_mutableBytes(v59, v17, v18, v19, v20);
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v59 = 0;
    v64 = v63;
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = v7;
  v24 = 0;
  v25 = 4 * v23;
  do
  {
    v26 = sub_23384CAA8(a1, *(*(a1 + 232) + v21), *(*(a1 + 256) + v21));
    if (v26)
    {
      sub_23384E268(buf, v26);
    }

    v21 += 4;
    v27 = v24 + v5;
    if (v24 + v5 >= v69)
    {
      v24 = 0;
    }

    else
    {
      v24 += v5;
    }

    if (v27 >= v69)
    {
      v28 = v6;
    }

    else
    {
      v28 = 0;
    }

    v22 += v28;
  }

  while (v25 != v21);
LABEL_33:
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (v12)
  {
    sub_23374340C(&v79, (a1 + 280));
    v78 = *(a1 + 131400);
    *buf = v79;
    v80 = *sub_23384E3A8(buf, &v78);
    sub_23374340C(&v78, (a1 + 284));
    v77 = *(a1 + 131404);
    *buf = v78;
    v29 = *sub_23384E3A8(buf, &v77);
    v78 = v68;
    v79 = v29;
    *buf = v69;
    v30 = *sub_23375B354(buf, &v78);
    v77 = *(a1 + 131404);
    *buf = v68;
    *buf = *sub_23384E3A8(buf, &v77);
    v78 = *sub_233743570(buf, &v79);
    v76 = *(a1 + 131400);
    *buf = v69;
    *buf = *sub_23384E3A8(buf, &v76);
    v66 = v30;
    v77 = *sub_233743570(buf, &v80);
    *buf = v69;
    *buf = *sub_23375B354(buf, &v78);
    v31 = *sub_233743570(buf, &v77);
    if (v31 >= v30)
    {
      v54 = sub_2338C0420();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_2338FCF0C(v31, v66, v54);
      }
    }

    else
    {
      v32 = v69;
      v33 = v65;
      v34 = v30;
      v35 = v67;
      if (v68 != 1)
      {
        v70 = 0;
        while (!v33)
        {
LABEL_55:
          v70 += 2;
          if (v70 >= v60)
          {
            goto LABEL_62;
          }
        }

        v36 = 0;
        while (1)
        {
          v75 = *(v35 + 332);
          *buf = v70;
          v76 = *sub_23384E3A8(buf, &v75);
          v74 = *(v35 + 328);
          *buf = v36;
          v75 = *sub_23384E3A8(buf, &v74);
          *buf = v32;
          *buf = *sub_23375B354(buf, &v76);
          v37 = *sub_233743570(buf, &v75);
          *buf = v37;
          v38 = *sub_233743570(buf, &v80);
          *buf = v76;
          v74 = *sub_233743570(buf, &v79);
          *buf = v32;
          *buf = *sub_23375B354(buf, &v74);
          v39 = *sub_233743570(buf, &v75);
          *buf = v39;
          v40 = sub_233743570(buf, &v80);
          if (v37 >= v34)
          {
            break;
          }

          if (v38 >= v34)
          {
            break;
          }

          if (v39 >= v34)
          {
            break;
          }

          v41 = *v40;
          if (*v40 >= v34)
          {
            break;
          }

          v74 = v32;
          *buf = v70;
          v42 = *sub_23375B354(buf, &v74);
          v73 = v36;
          *buf = v42;
          v43 = *sub_233743570(buf, &v73);
          v74 = v32;
          *buf = v70;
          v44 = *sub_23375B354(buf, &v74);
          v73 = v36;
          *buf = v44;
          v45 = *sub_233743570(buf, &v73);
          v71 = 1;
          sub_23374340C(&v72, &v71);
          *buf = v45;
          v46 = *sub_233743570(buf, &v72);
          v74 = v32;
          *buf = v70 | 1;
          v47 = *sub_23375B354(buf, &v74);
          v73 = v36;
          *buf = v47;
          v48 = *sub_233743570(buf, &v73);
          v74 = v69;
          *buf = v70 | 1;
          v49 = *sub_23375B354(buf, &v74);
          v73 = v36;
          *buf = v49;
          v50 = *sub_233743570(buf, &v73);
          v71 = 1;
          sub_23374340C(&v72, &v71);
          *buf = v50;
          v51 = *sub_233743570(buf, &v72);
          v74 = v68;
          *buf = v69;
          v52 = *sub_23375B354(buf, &v74);
          if (v43 >= v52 || v46 >= v52 || v48 >= v52 || v51 >= v52)
          {
            v53 = sub_2338C0420();
            v32 = v69;
            v33 = v65;
            v34 = v66;
            v35 = v67;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v70;
              v83 = 2048;
              v84 = v36;
              _os_log_error_impl(&dword_23371F000, v53, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: destination index OOB at row=%zu, col=%zu", buf, 0x16u);
            }

LABEL_53:

            goto LABEL_54;
          }

          *(v63 + 2 * v43) = *(v64 + 2 * v37);
          *(v63 + 2 * v46) = *(v64 + 2 * v38);
          *(v63 + 2 * v48) = *(v64 + 2 * v39);
          *(v63 + 2 * v51) = *(v64 + 2 * v41);
          v32 = v69;
          v33 = v65;
          v34 = v66;
          v35 = v67;
LABEL_54:
          v36 += 2;
          if (v36 >= v33)
          {
            goto LABEL_55;
          }
        }

        v53 = sub_2338C0420();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v70;
          v83 = 2048;
          v84 = v36;
          _os_log_error_impl(&dword_23371F000, v53, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: source index OOB at row=%zu, col=%zu", buf, 0x16u);
        }

        goto LABEL_53;
      }
    }
  }

LABEL_62:

  v58[2](v58);
}

void sub_23384DD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void (**a9)(void), void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = sub_2338C0420();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_2338FCF94(v17, v18);
    }

    __cxa_end_catch();
    JUMPOUT(0x23384DBC8);
  }

  a9[2](a9);
  _Unwind_Resume(a1);
}

void sub_23384DF18(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLBayerUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23384DFA0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = *(a1 + 64);
  v5 = *(a1 + 68);
  v7 = *(a1 + 72);
  v15 = 0;
  sub_2337238F0(&v16, v5, v7);
  v8 = *(a1 + 68);
  v9 = *(a1 + 76);
  v10 = *(a1 + 88);
  v11 = *(a1 + 92);
  sub_2337238F0(&v13, *(a1 + 80), *(a1 + 84));
  sub_2337238F0(&v14, v10, v11);
  v12 = sub_23384C70C(v3);
  sub_23384CBAC(v3, v4, &v15, 2 * (v9 * v8), &v13, v2, v2 + v6, v12);
}

void sub_23384E068(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = sub_2338C0420();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2338FD040(v2, v3, v4);
    }

    __cxa_end_catch();
    JUMPOUT(0x23384E048);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23384E0D0(uint64_t result, uint64_t a2)
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

void sub_23384E0EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

void *sub_23384E0FC(uint64_t a1)
{
  *a1 = &unk_2849238D0;
  v6 = (a1 + 131376);
  sub_233723948(&v6);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  return sub_233723A54(a1);
}

uint64_t sub_23384E1A8(uint64_t a1)
{
  *a1 = &unk_2849238D0;
  v7 = (a1 + 131376);
  sub_233723948(&v7);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  v5 = sub_233723A54(a1);
  return MEMORY[0x2383ABF10](v5, 0x10B1C40C5033927);
}

void sub_23384E2E0(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void sub_23384E30C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23384E364(uint64_t a1, uint64_t a2)
{
  if (sub_2337BF190(a2, &unk_284923A40))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *sub_23384E3A8(void *result, void *a2)
{
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *result /= *a2;
  return result;
}

double sub_23384E628(uint64_t a1, int8x16_t a2)
{
  *v2.i64 = pow(fabs(*a2.i64), *(a1 + 32));
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *&result = vbslq_s8(vnegq_f64(v3), v2, a2).u64[0];
  return result;
}

double sub_23384E664(uint64_t a1, int8x16_t a2)
{
  *v2.i64 = pow(fabs(*a2.i64), 1.0 / *(a1 + 32));
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *&result = vbslq_s8(vnegq_f64(v3), v2, a2).u64[0];
  return result;
}

double sub_23384E878(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = objc_msgSend_inverse(*(a1 + 32), a2, a3, a4, a5);
  v8 = v7[2](a6);

  return v8;
}

double sub_23384E8CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = objc_msgSend_function(*(a1 + 32), a2, a3, a4, a5);
  v8 = v7[2](a6);

  return v8;
}

double sub_23384EB50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = objc_msgSend_function(*(a1 + 32), a2, a3, a4, a5);
  v13 = objc_msgSend_function(*(a1 + 40), v9, v10, v11, v12);
  v13[2](a6);
  v14 = v8[2](v8);

  return v14;
}

double sub_23384EBCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = objc_msgSend_inverse(*(a1 + 32), a2, a3, a4, a5);
  v13 = objc_msgSend_inverse(*(a1 + 40), v9, v10, v11, v12);
  v13[2](a6);
  v14 = v8[2](v8);

  return v14;
}

id sub_23384EF3C(void *a1, double a2, double a3)
{
  v5 = a1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23384F74C;
  v10[3] = &unk_2789EF3A8;
  v12 = a2;
  v13 = a3;
  v11 = v5;
  v6 = v5;
  v7 = MEMORY[0x2383AC810](v10);
  v8 = MEMORY[0x2383AC810]();

  return v8;
}

double sub_23384F3BC(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v9 = objc_msgSend_mutableBytes(v4, v5, v6, v7, v8);
  v10 = *(a1 + 56);
  v11 = (a2 - *(a1 + 40)) / (*(a1 + 48) - *(a1 + 40)) * v10;
  v12 = fmin(floor(fmax(v11, 0.0)), (v10 - 1));
  return *(v9 + 8 * v12) * ((v12 + 1) - v11) + (v11 - v12) * *(v9 + 8 * (v12 + 1));
}

uint64_t sub_23384F454(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  result = objc_msgSend_mutableBytes(v4, v5, v6, v7, v8);
  v10 = *(a1 + 56) - 1;
  v11 = *(a1 + 56);
  do
  {
    v12 = __OFSUB__(v11--, 1);
    if (v11 < 0 != v12)
    {
      break;
    }

    v13 = *(result + 8 * v10);
    if (v10-- == 0)
    {
      break;
    }
  }

  while (v13 > a2);
  return result;
}

uint64_t sub_23384F4F4(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  result = objc_msgSend_mutableBytes(v4, v5, v6, v7, v8);
  v10 = *(a1 + 56);
  if (v10 >= 1)
  {
    v11 = v10 + 1;
    v12 = result + 8 * v10 + 8;
    do
    {
      v13 = v11;
      v14 = *(v12 - 16);
      --v11;
      v12 -= 8;
    }

    while (v13 != 2 && v14 < a2);
  }

  return result;
}

double sub_23384F74C(double *a1, double a2)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = (*(*(a1 + 4) + 16))(v5);
  v7 = (*(*(a1 + 4) + 16))(v4);
  v8 = v5;
  v9 = v4;
  v10 = v7;
  v11 = -21;
  while (1)
  {
    if (v6 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    if (v6 >= v10)
    {
      v13 = v9;
    }

    else
    {
      v13 = v8;
    }

    if (v6 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v6;
    }

    if (v6 <= v10)
    {
      v15 = v9;
    }

    else
    {
      v15 = v8;
    }

    if (v12 >= a2)
    {
      return v13;
    }

    if (v14 <= a2)
    {
      break;
    }

    v22 = v8;
    v23 = v9;
    v16 = (v9 + v8) * 0.5;
    (*(*(a1 + 4) + 16))(v16);
    if (v12 > a2 || v17 < a2)
    {
      v19 = v14 < a2 || v17 > a2;
      v8 = v22;
      v9 = v23;
      if (!v19)
      {
        v6 = v14;
        v10 = v17;
        v9 = v16;
        v8 = v15;
      }
    }

    else
    {
      v6 = v12;
      v10 = v17;
      v9 = v16;
      v8 = v13;
    }

    if (__CFADD__(v11++, 1))
    {
      return v16;
    }
  }

  return v15;
}

uint64_t sub_23384F8A0(uint64_t a1)
{
  *a1 = &unk_284923AB0;
  if (pthread_mutex_init((a1 + 8), 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  return a1;
}

uint64_t sub_23384F920(uint64_t a1)
{
  *a1 = &unk_284923AB0;
  pthread_mutex_destroy((a1 + 8));
  return a1;
}

void sub_23384F96C(uint64_t a1)
{
  sub_23384F920(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23384FA10(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284923AE0;
  sub_23384F8A0((a1 + 3));
  return a1;
}

void sub_23384FA8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284923AE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23384FB08(uint64_t a1, int a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284923B30;
  *(v5 + 16) = 0u;
  v6 = v5 + 16;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_23372574C(*a3);
    v9 = sub_23372574C(*a3);
    v10 = sub_23372574C(*a3);
    v11 = sub_23372574C(*a3);
    v12 = sub_23372574C(*a3);
    v13 = sub_23372574C(*a3);
    *v20 = v8;
    *&v20[1] = v9;
    *&v20[2] = v10;
    *&v20[3] = v11;
    *&v20[4] = v12;
    *&v20[5] = v13;
    v18 = 0;
    v19 = 0;
    __p = 0;
    sub_233764ED4(&__p, v20, &v21, 6uLL);
    sub_2337A521C(v6, &__p);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  v14 = sub_23372574C(*a3);
  v15 = sub_23372574C(*a3);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  return a1;
}

void sub_23384FC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2337A6DEC(va);
  _Unwind_Resume(a1);
}

void sub_23384FCB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23384FCA4);
}

void sub_23384FCD4(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 40);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_233764ED4(a2, &v17, v18, 2uLL);
  v4 = *(a1 + 16);
  for (i = *(a1 + 24); v4 != i; v4 += 24)
  {
    v6 = *v4;
    v7 = *(v4 + 8);
    if (*v4 != v7)
    {
      v8 = a2[1];
      do
      {
        v9 = a2[2];
        if (v8 >= v9)
        {
          v10 = *a2;
          v11 = v8 - *a2;
          v12 = v11 >> 3;
          v13 = (v11 >> 3) + 1;
          if (v13 >> 61)
          {
            sub_2337235BC();
          }

          v14 = v9 - v10;
          if (v14 >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_233723798(a2, v15);
          }

          *(8 * v12) = *v6;
          v8 = (8 * v12 + 8);
          memcpy(0, v10, v11);
          v16 = *a2;
          *a2 = 0;
          a2[1] = v8;
          a2[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v8 = *v6;
          v8 += 8;
        }

        a2[1] = v8;
        ++v6;
      }

      while (v6 != v7);
    }
  }
}

id sub_23384FE88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73[6] = *MEMORY[0x277D85DE8];
  v69 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v70 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v13 = *(a1 + 16);
  for (i = *(a1 + 24); v13 != i; v13 += 3)
  {
    v72[0] = @"kr0";
    v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, v11, v12, **v13);
    v73[0] = v15;
    v72[1] = @"kr1";
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, v19, (*v13)[1]);
    v73[1] = v20;
    v72[2] = @"kr2";
    v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, v23, v24, (*v13)[2]);
    v73[2] = v25;
    v72[3] = @"kr3";
    v30 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v26, v27, v28, v29, (*v13)[3]);
    v73[3] = v30;
    v72[4] = @"kt0";
    v35 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v31, v32, v33, v34, (*v13)[4]);
    v73[4] = v35;
    v72[5] = @"kt1";
    v40 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v36, v37, v38, v39, (*v13)[5]);
    v73[5] = v40;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v73, v72, 6);
    objc_msgSend_addObject_(v70, v43, v42, v44, v45);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v69, v9, v70, @"CoefficientSets", v12);
  v46 = *(a1 + 48);
  v51 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v47, v48, v49, v50, *(a1 + 40));
  v71[0] = v51;
  v56 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v52, v53, v54, v55, v46);
  v71[1] = v56;
  v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v71, 2, v58);
  objc_msgSend_setObject_forKeyedSubscript_(v69, v60, v59, @"NormalizedCenter", v61);

  v62 = [RAWOpcodeWarpRectilinear alloc];
  v66 = objc_msgSend_initWithArguments_(v62, v63, v69, v64, v65);

  return v66;
}

uint64_t sub_2338501F0(uint64_t a1)
{
  *a1 = &unk_284923B30;
  v3 = (a1 + 16);
  sub_2337A6DEC(&v3);
  return a1;
}

uint64_t sub_233850248(uint64_t a1)
{
  *a1 = &unk_284923B30;
  v3 = (a1 + 16);
  sub_2337A6DEC(&v3);
  return MEMORY[0x2383ABF10](a1, 0x10A1C40C9E8D6FDLL);
}

uint64_t sub_2338502B4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 72))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23385033C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233850354(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 80))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338503DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338503F4(uint64_t *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    v4 = *(v3 + 2176);
    v5 = a1;
  }

  else
  {
    v4 = *(v3 + 2184);
    v5 = a1;
  }

  return v4(v5);
}

uint64_t sub_2338504B4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 504))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233850550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233850568(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 504))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233850604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385061C(uint64_t a1)
{
  if (((*(*a1 + 1048))(a1) & 1) == 0)
  {
    v2 = (*(*a1 + 1600))(a1);
    fmin(fmax(v2 * (*(*a1 + 2088))(a1), 0.0), 1.0);
  }
}

uint64_t sub_2338506F4(uint64_t a1)
{
  v2 = (*(*a1 + 1240))(a1);
  v9 = v2;
  if (v2)
  {
    (*(*a1 + 2864))(&v7, a1);
    LOBYTE(v2) = sub_23381E094(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      LOBYTE(v2) = v9;
    }
  }

  return v2 & 1;
}

void sub_2338507AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338507C4(uint64_t a1)
{
  v2 = (*(*a1 + 1456))(a1);
  v9 = v2;
  if ((*(*a1 + 2224))(a1))
  {
    (*(*a1 + 2864))(&v7, a1);
    v2 = sub_23381E0A8(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      v2 = v9;
    }
  }

  return fmin(fmax(v2, 0.0), 1.04);
}

void sub_2338508C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338508E0(uint64_t a1)
{
  v2 = (*(*a1 + 1472))(a1);
  v9 = v2;
  if ((*(*a1 + 2224))(a1))
  {
    (*(*a1 + 2864))(&v7, a1);
    v2 = sub_23381E138(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      v2 = v9;
    }
  }

  return fmin(fmax(v2, 1.5), 3.1);
}

void sub_2338509E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338509FC(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return 1.0;
}

double sub_233850A7C(uint64_t a1)
{
  v2 = (*(*a1 + 1464))(a1);
  v9 = v2;
  if ((*(*a1 + 2224))(a1))
  {
    (*(*a1 + 2864))(&v7, a1);
    v2 = sub_23381E14C(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      return v9;
    }
  }

  return v2;
}

void sub_233850B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233850B88(uint64_t a1)
{
  v2 = (*(*a1 + 1248))(a1);
  v9 = v2;
  if (v2)
  {
    (*(*a1 + 2864))(&v7, a1);
    LOBYTE(v2) = sub_23381E160(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      LOBYTE(v2) = v9;
    }
  }

  return v2 & 1;
}

void sub_233850C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_233850C58(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(*a1 + 2664))(a1, 0, 0);
  result = 4.0;
  if (v2 >= 0.5)
  {
    return ceil(sqrt((v2 + -0.5) * 60.0)) + 4.0;
  }

  return result;
}

void sub_233850DD4(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(*a1 + 1776))(a1);
  if (v2 == 0.0)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = v2;
  }

  v9 = v3;
  if ((*(*a1 + 2264))(a1))
  {
    (*(*a1 + 2864))(&v7, a1);
    v9 = sub_23381E188(v7, &v9, v4, v5, v6);
    if (v8)
    {
      sub_2337239E8(v8);
    }
  }
}

void sub_233850F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_233850F5C(uint64_t a1)
{
  v2 = (*(*a1 + 1544))(a1);
  v9 = v2;
  if ((*(*a1 + 2264))(a1))
  {
    (*(*a1 + 2864))(&v7, a1);
    v2 = sub_23381E19C(v7, &v9, v3, v4, v5);
    v9 = v2;
    if (v8)
    {
      sub_2337239E8(v8);
      v2 = v9;
    }
  }

  return fmin(fmax(v2, 0.1), 25.0);
}

void sub_233851060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

double sub_233851078(uint64_t a1)
{
  v2 = (*(*a1 + 1512))(a1);
  if (((*(*a1 + 1048))(a1) & 1) == 0 && ((*(*a1 + 1112))(a1) & 1) == 0)
  {
    v3 = v2 * ((*(*a1 + 1560))(a1) + -1.0);
    v2 = v2 + v3 * (*(*a1 + 2088))(a1);
  }

  v4 = (*(*a1 + 1520))(a1) - v2;
  return v2 + v4 * (*(*a1 + 2288))(a1);
}

double sub_233851210(uint64_t a1)
{
  v2 = (*(*a1 + 1528))(a1);
  v3 = (*(*a1 + 1536))(a1) - v2;
  v4 = v2 + v3 * (*(*a1 + 2288))(a1);
  return fmax(v4, (*(*a1 + 2304))(a1));
}

double sub_233851328(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *__p = xmmword_233909C50;
  v16 = 0x400D99999999999ALL;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_233764ED4(&v9, __p, &v17, 3uLL);
  v12 = xmmword_233909C68;
  v13 = 0x3FB1EB851EB851ECLL;
  __p[1] = 0;
  v16 = 0;
  __p[0] = 0;
  sub_233764ED4(__p, &v12, &v14, 3uLL);
  (*(*a1 + 2664))(a1, 0, 0);
  if (v10 == v9)
  {
LABEL_6:
    v6 = __p[0];
    v7 = *(__p[1] - 1);
  }

  else
  {
    v3 = 0;
    v4 = (v10 - v9) >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (1)
    {
      v5 = *(v9 + v3);
      if (v2 < v5)
      {
        break;
      }

      if (v4 == ++v3)
      {
        goto LABEL_6;
      }
    }

    v6 = __p[0];
    if (v3)
    {
      v7 = *(__p[0] + v3 - 1) + (v2 - *(v9 + v3 - 1)) / (v5 - *(v9 + v3 - 1)) * (*(__p[0] + v3) - *(__p[0] + v3 - 1));
    }

    else
    {
      v7 = *__p[0];
    }
  }

  __p[1] = v6;
  operator delete(v6);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v7;
}

void sub_2338514C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233851788(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1312))(a1);
  v6 = sub_23381E1B0(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return fmin(fmax(v6, 0.0), 1.0);
}

void sub_233851858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233851870(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 1256))();
  }
}

BOOL sub_233851A78(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return (*(*a1 + 2664))(a1, 0, 0) > 0.7;
}

uint64_t sub_233851B40(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((*(*a1 + 184))(a1) && (*(*a1 + 128))(a1))
  {
    return (*(*a1 + 120))(a1) > 7;
  }

  if (!(*(*a1 + 2152))(a1))
  {
    return 1;
  }

  if ((*(*a1 + 120))(a1) < 8)
  {
    return 0;
  }

  return (*(*a1 + 128))(a1) ^ 1;
}

double sub_233851CEC(uint64_t a1)
{
  v2 = (*(*a1 + 2480))(a1);
  result = 0.0;
  if (v2)
  {
    v10 = 0x3FE0000000000000;
    if ((*(*a1 + 2664))(a1, 0, 0, 0.0) < 0.5)
    {
      v10 = 0;
    }

    (*(*a1 + 2864))(&v8, a1);
    v7 = sub_23381E488(v8, &v10, v4, v5, v6);
    v10 = *&v7;
    if (v9)
    {
      sub_2337239E8(v9);
      v7 = *&v10;
    }

    return fmin(fmax(v7, 0.0), 1.0);
  }

  return result;
}

void sub_233851DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233851E14(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((*(*a1 + 120))(a1) > 8)
  {
    (*(*a1 + 2864))(&v17, a1);
    v9 = v17;
    v16 = (*(*a1 + 2264))(a1);
    v13 = sub_23381E498(v9, &v16, v10, v11, v12);
    if (v18)
    {
      sub_2337239E8(v18);
    }

    if (v13)
    {
      v14 = (*(*a1 + 2504))(a1);
      (*(*a1 + 2512))(a1);
      return v15 > 0.0 && v14 > 0.0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = (*(*a1 + 280))(a1);
    v3 = (*(*a1 + 2264))(a1);
    v4 = (*(*a1 + 2504))(a1);
    (*(*a1 + 2512))(a1);
    v5 = v4 != 0.0;
    if (v6 == 0.0)
    {
      v5 = 0;
    }

    v7 = v5 & v3;
    if (v2 <= 3.0)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2338520DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_233852104(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1776))(a1);
  v6 = sub_23381E4A8(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v6;
}

void sub_2338521C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338521E0(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1544))(a1);
  v6 = sub_23381E4B8(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v6;
}

void sub_2338522A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338522BC(uint64_t a1)
{
  (*(*a1 + 2864))(&v11);
  v2 = v11;
  v10 = (*(*a1 + 1784))(a1);
  v6 = sub_23381E4C8(v2, &v10, v3, v4, v5);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  v7 = (*(*a1 + 2664))(a1, 0, 0) > 1.0 && v6 == 0.0;
  v8 = 0.1;
  if (!v7)
  {
    v8 = v6;
  }

  return fmin(fmax(v8, 0.0), 1.3);
}

void sub_2338523E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338523F8(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1792))(a1);
  v6 = sub_23381E4D8(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return fmin(fmax(v6, 0.0), 1.0);
}

void sub_2338524C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338524E0(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1800))(a1);
  v6 = sub_23381E4E8(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v6;
}

void sub_23385259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338525B4(uint64_t a1)
{
  if ((*(*a1 + 184))(a1) && (*(*a1 + 128))(a1))
  {
    v2 = fmax((*(*a1 + 168))(a1) + -0.5, 0.0);
  }

  else
  {
    (*(*a1 + 2864))(&v10, a1);
    v3 = v10;
    v9 = (*(*a1 + 1808))(a1);
    v7 = sub_23381E4F8(v3, &v9, v4, v5, v6);
    if (v11)
    {
      sub_2337239E8(v11);
    }

    v2 = fmax(v7, 0.0);
  }

  return fmin(v2, 1.0);
}

void sub_233852718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_233852730(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1816))(a1);
  v6 = sub_23381E508(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return fmin(fmax(v6, -2.0), 2.0);
}

void sub_233852800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_233852818(uint64_t a1)
{
  if ((*(*a1 + 184))(a1) && (*(*a1 + 128))(a1))
  {
    v2 = fmax((*(*a1 + 168))(a1) * 0.1 / 1.5, 0.0);
    v3 = 0.2;
  }

  else
  {
    (*(*a1 + 2864))(&v11, a1);
    v4 = v11;
    v10 = (*(*a1 + 1824))(a1);
    v8 = sub_23381E518(v4, &v10, v5, v6, v7);
    if (v12)
    {
      sub_2337239E8(v12);
    }

    v2 = fmax(v8, 0.0);
    v3 = 1.0;
  }

  return fmin(v2, v3);
}

void sub_233852990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338529A8(uint64_t a1)
{
  (*(*a1 + 2864))(&v9);
  v2 = v9;
  v8 = (*(*a1 + 1832))(a1);
  v6 = sub_23381E528(v2, &v8, v3, v4, v5);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return fmin(fmax(v6, 0.0), 4.0);
}

void sub_233852A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233852A90(uint64_t a1)
{
  (*(*a1 + 2864))(&v7);
  v6 = 0;
  v4 = sub_23381E538(v7, &v6, v1, v2, v3);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_233852B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233852B20(uint64_t a1)
{
  (*(*a1 + 2864))(&v7);
  v6 = 0;
  v4 = sub_23381E548(v7, &v6, v1, v2, v3);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_233852B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233852BB0(uint64_t a1)
{
  (*(*a1 + 2864))(&v7);
  v6 = 0;
  v4 = sub_23381E558(v7, &v6, v1, v2, v3);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_233852C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_233852C80@<D0>(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (((*(*a1 + 2408))(a1) | a2) != 1)
  {
    goto LABEL_5;
  }

  (*(*a1 + 1720))(v8, a1);
  v6 = v8[0];
  v5 = v8[1];
  *a3 = v8[0];
  a3[1] = v5;
  if ((*(*a1 + 2712))(a1))
  {
    result = sub_233764E58(v6);
  }

  if (!v6)
  {
LABEL_5:
    sub_233764CA8();
  }

  return result;
}

void sub_233852DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_233852E34(uint64_t a1, _DWORD *a2, _DWORD *a3, char *a4)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v8 = (*(*a1 + 264))(a1);
  if (v8 <= (*(*a1 + 2448))(a1))
  {
    v9 = 0;
    *a3 = 1065353216;
    *a2 = 1065353216;
  }

  else
  {
    *a2 = 1071300739;
    *a3 = 1084393259;
    v9 = 1;
  }

  *a4 = v9;
}

double sub_233852F70(uint64_t a1, int a2)
{
  result = 2.2;
  if (a2)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_233852F98(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(*a1 + 2168))(a1);
  if (v2 >> 8 == 8487297)
  {
    if (v2 + 2122219136 >= 0x12)
    {
      return 23;
    }

    else
    {
      return v2 + 2122219145;
    }
  }

  else
  {
    v4 = (v2 >> 4) & 0xF0F0F0F | (16 * v2) & 0xF0F0F0F0;
    if (v4 > 555819296)
    {
      if (v4 > 1229539656)
      {
        if (v4 == 1229539657)
        {
          return 3;
        }

        if (v4 == 1633771873)
        {
          return 2;
        }
      }

      else
      {
        if (v4 == 555819297)
        {
          return 30;
        }

        if (v4 == 825307441)
        {
          return 29;
        }
      }
    }

    else if (v4 > 320017170)
    {
      if (v4 == 320017171)
      {
        return 28;
      }

      if (v4 == 370546198)
      {
        return 1;
      }
    }

    else
    {
      if (v4 == -1802201964)
      {
        return 0;
      }

      if (v4 == 303174162)
      {
        return 27;
      }
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_233853180(uint64_t a1, double *a2, double *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!(*(*a1 + 176))(a1) || (v7 = (*(*a1 + 2152))(a1), v6.n128_u64[0] = 1.0, (v7 & 1) == 0))
  {
    if ((*(*a1 + 2656))(a1, v6))
    {
      v8 = (*(*a1 + 2656))(a1) != 1;
    }

    else
    {
      v8 = 0;
    }

    (*(*a1 + 1016))(&__p, a1);
    v9 = v8;
    if (v8 >= ((v31 - __p) >> 3))
    {
      sub_2337306B0();
    }

    v10 = *(__p + v8);
    (*(*a1 + 1016))(&v28, a1);
    v11 = v8 ^ 3u;
    if (v11 >= (v29 - v28) >> 3)
    {
      sub_2337306B0();
    }

    v12 = *(v28 + v11);
    v29 = v28;
    operator delete(v28);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    (*(*a1 + 1120))(&__p, a1);
    v13 = __p;
    v14 = (*(*a1 + 256))(a1);
    (*(*a1 + 264))(a1);
    (*(*v13 + 8))(&v28, v13, v14);
    if (v31)
    {
      sub_2337239E8(v31);
    }

    if (v9 >= (v29 - v28) >> 3)
    {
      sub_2337306B0();
    }

    v15 = *(v28 + v9);
    v27 = 0;
    (*(*a1 + 2128))(&v25, a1);
    v16 = v25;
    v17 = (*(*a1 + 256))(a1);
    (**v16)(v16, v17, &__p, &v27);
    if (v26)
    {
      sub_2337239E8(v26);
    }

    v18 = (&__p + 2 * v9);
    if (v27 == 1)
    {
      v19 = v18[2];
    }

    else
    {
      v19 = v18[3] * v18[3];
    }

    v20 = *v18;
    v21 = v18[1];
    v22 = (*(*a1 + 904))(a1);
    v23 = (v10 + v12) * 0.5;
    v24 = v22 - v23;
    if (a2)
    {
      *a2 = (v20 + (v23 + (v22 - v23) * 0.150000006) * (v21 + (v23 + (v22 - v23) * 0.150000006) * v19)) / (v24 * v24) / 0.150000006;
    }

    if (a3)
    {
      *a3 = v15 * v15 / (v24 * v24);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }
  }
}

void sub_233853678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

long double sub_23385370C(uint64_t a1)
{
  v2 = (*(*a1 + 2664))(a1, 0, 0);
  v3 = (*(*a1 + 928))(a1);
  return v2 * exp2(v3);
}

float sub_2338537B4@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  bzero(a3, 0x4D8uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 13) = _D0;
  a3[50] = 1045220557;
  a3[61] = 0;
  a3[64] = 0;
  *(a3 + 27) = 0;
  *(a3 + 221) = 0;
  *(a3 + 29) = 0;
  *(a3 + 240) = 0;
  a3[17] = 1077936128;
  *(a3 + 9) = 1;
  a3[3] = 1077936128;
  *(a3 + 20) = 1;
  a3[12] = 1063665663;
  (*(*a1 + 2456))(a1, a3 + 14, a3 + 15, a3 + 53);
  v11 = (*(*a1 + 1080))(a1);
  a3[33] = 1059760816;
  *&v11 = v11;
  a3[29] = LODWORD(v11);
  a3[49] = 1077936128;
  *(a3 + 78) = xmmword_233909BA0;
  v12 = (*(*a1 + 2168))(a1);
  if (!v12)
  {
    v12 = -1802201964;
  }

  *a3 = v12;
  a3[1] = (*(*a1 + 2656))(a1);
  *(a3 + 21) = (*(*a1 + 128))(a1);
  v13 = (*(*a1 + 2216))(a1);
  *(a3 + 124) = v13;
  *(a3 + 52) = (*(*a1 + 2112))(a1);
  *(a3 + 272) = (*(*a1 + 2224))(a1);
  v14 = (*(*a1 + 2232))(a1);
  *(a3 + 70) = v14;
  v15 = (*(*a1 + 2256))(a1);
  *(a3 + 71) = v15;
  v16 = (*(*a1 + 2240))(a1);
  v17 = __exp10(v16);
  *(a3 + 72) = v17;
  *(a3 + 160) = (*(*a1 + 2264))(a1);
  v18 = (*(*a1 + 2272))(a1);
  *(a3 + 41) = v18;
  v19 = (*(*a1 + 2280))(a1);
  *(a3 + 42) = v19;
  v20 = (*(*a1 + 2304))(a1);
  *(a3 + 44) = v20;
  v21 = (*(*a1 + 2312))(a1);
  *(a3 + 45) = v21;
  v22 = (*(*a1 + 2320))(a1);
  *(a3 + 28) = v22;
  *(a3 + 420) = (*(*a1 + 2408))(a1, a2);
  v23 = (*(*a1 + 2632))(a1, a2);
  *(a3 + 115) = v23;
  v24 = (*(*a1 + 2640))(a1);
  *(a3 + 125) = v24;
  v25 = (*(*a1 + 2648))(a1);
  *(a3 + 126) = v25;
  v26 = (*(*a1 + 896))(a1);
  *(a3 + 103) = v26;
  *(a3 + 102) = v26;
  *(a3 + 101) = v26;
  v27 = (*(*a1 + 2080))(a1);
  *(a3 + 4) = v27;
  (*(*a1 + 432))(a1);
  a3[23] = v28 & 0xFFFFFFFC;
  a3[24] = v29 & 0xFFFFFFFE;
  (*(*a1 + 744))(&v108, a1);
  v30 = v108;
  v31 = v109 - v108;
  if (v109 == v108 || (v32 = *v108, *(a3 + 82) = v32, v31 < 9) || (v33 = v30[1], *(a3 + 83) = v33, v31 == 16))
  {
    sub_2337306B0();
  }

  v34 = v30[2];
  *(a3 + 84) = v34;
  (*(*a1 + 792))(__p, a1, a2);
  if (sub_2337E0044(__p) < 5 || sub_2337E003C(__p) <= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v106 = sub_2337DFCEC(__p, 0);
  v107 = v35;
  v36 = *sub_2337DFD6C(&v106, 0);
  *(a3 + 85) = v36;
  v106 = sub_2337DFCEC(__p, 0);
  v107 = v37;
  v38 = *sub_2337DFD6C(&v106, 1u);
  *(a3 + 86) = v38;
  v106 = sub_2337DFCEC(__p, 0);
  v107 = v39;
  v40 = *sub_2337DFD6C(&v106, 2u);
  *(a3 + 87) = v40;
  v106 = sub_2337DFCEC(__p, 1u);
  v107 = v41;
  v42 = *sub_2337DFD6C(&v106, 0);
  *(a3 + 88) = v42;
  v106 = sub_2337DFCEC(__p, 1u);
  v107 = v43;
  v44 = *sub_2337DFD6C(&v106, 1u);
  *(a3 + 89) = v44;
  v106 = sub_2337DFCEC(__p, 1u);
  v107 = v45;
  v46 = *sub_2337DFD6C(&v106, 2u);
  *(a3 + 90) = v46;
  v106 = sub_2337DFCEC(__p, 2u);
  v107 = v47;
  v48 = *sub_2337DFD6C(&v106, 0);
  *(a3 + 91) = v48;
  v106 = sub_2337DFCEC(__p, 2u);
  v107 = v49;
  v50 = *sub_2337DFD6C(&v106, 1u);
  *(a3 + 92) = v50;
  v106 = sub_2337DFCEC(__p, 2u);
  v107 = v51;
  v52 = *sub_2337DFD6C(&v106, 2u);
  *(a3 + 93) = v52;
  v106 = sub_2337DFCEC(__p, 0);
  v107 = v53;
  v54 = *sub_2337DFD6C(&v106, 4u);
  *(a3 + 94) = v54;
  v106 = sub_2337DFCEC(__p, 1u);
  v107 = v55;
  v56 = *sub_2337DFD6C(&v106, 4u);
  *(a3 + 95) = v56;
  v106 = sub_2337DFCEC(__p, 2u);
  v107 = v57;
  v58 = *sub_2337DFD6C(&v106, 4u);
  *(a3 + 96) = v58;
  if (__p[1])
  {
    *&v104 = __p[1];
    operator delete(__p[1]);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  (*(*a1 + 1016))(__p, a1);
  v59 = __p[0];
  v60 = __p[1];
  if (__p[0] == __p[1])
  {
    if (!__p[0])
    {
      goto LABEL_19;
    }
  }

  else
  {
    v61 = 0;
    v62 = __p[0];
    do
    {
      *&v63 = v59[v61];
      a3[v61 + 97] = v63;
      if ((v63 & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v101 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v101, "RawCameraException");
        __cxa_throw(v101, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v62 += 8;
      ++v61;
    }

    while (v62 != v60);
  }

  __p[1] = v59;
  operator delete(v59);
LABEL_19:
  (*(*a1 + 2624))(&v108, a1, a2, 0);
  sub_233764E8C(v108, __p);
  a3[114] = v105;
  v64 = v104;
  *(a3 + 106) = *__p;
  *(a3 + 110) = v64;
  if (v109)
  {
    sub_2337239E8(v109);
  }

  a3[136] = (*(*a1 + 256))(a1);
  *(a3 + 161) = (*(*a1 + 2440))(a1);
  *(a3 + 162) = (*(*a1 + 2464))(a1);
  v65 = (*(*a1 + 1384))(a1);
  *(a3 + 6) = v65;
  v66 = (*(*a1 + 1392))(a1);
  *(a3 + 7) = v66;
  v67 = (*(*a1 + 1400))(a1);
  *(a3 + 8) = v67;
  a3[9] = (*(*a1 + 1408))(a1);
  if ((*(*a1 + 624))(a1))
  {
    a3[9] = (*(*a1 + 624))(a1);
  }

  *(a3 + 44) = (*(*a1 + 1208))(a1);
  *(a3 + 64) = (*(*a1 + 1232))(a1);
  v68 = (*(*a1 + 1448))(a1);
  *(a3 + 69) = v68;
  v69 = (*(*a1 + 1488))(a1);
  *(a3 + 73) = v69;
  v70 = (*(*a1 + 1496))(a1);
  *(a3 + 74) = v70;
  v71 = (*(*a1 + 1584))(a1);
  *(a3 + 122) = v71;
  v72 = (*(*a1 + 1592))(a1);
  *(a3 + 123) = v72;
  *(a3 + 8) = (*(*a1 + 1376))(a1);
  v73 = (*(*a1 + 1768))(a1);
  *(a3 + 43) = v73;
  (*(*a1 + 2056))(__p, a1);
  if (__p[0])
  {
    if ((*(*__p[0] + 16))(__p[0]))
    {
      *(a3 + 636) = 1;
      *(a3 + 160) = (*(*a1 + 256))(a1);
      v74 = __p[0];
      v75 = (*(*a1 + 256))(a1);
      v76 = (*(*v74 + 32))(v74, v75);
      *(a3 + 161) = v76;
      v77 = __p[0];
      v78 = (*(*a1 + 256))(a1);
      v79 = (*(*v77 + 40))(v77, v78);
      *(a3 + 162) = v79;
    }

    if ((*(*__p[0] + 48))(__p[0]))
    {
      a3[127] = (*(*__p[0] + 56))(__p[0]);
      v80 = (*(*__p[0] + 64))(__p[0]);
      *(a3 + 128) = v80;
      v81 = (*(*__p[0] + 72))(__p[0]);
      *(a3 + 129) = v81;
      v82 = (*(*__p[0] + 80))(__p[0]);
      *(a3 + 130) = v82;
      a3[131] = (*(*__p[0] + 88))(__p[0]);
      v83 = (*(*__p[0] + 96))(__p[0]);
      *(a3 + 132) = v83;
      v84 = (*(*__p[0] + 104))(__p[0]);
      *(a3 + 133) = v84;
      v85 = (*(*__p[0] + 112))(__p[0]);
      *(a3 + 134) = v85;
      a3[135] = (*(*__p[0] + 120))(__p[0]);
    }

    if ((*(*__p[0] + 128))(__p[0]))
    {
      *(a3 + 548) = 1;
      v86 = (*(*__p[0] + 144))(__p[0]);
      *(a3 + 138) = v86;
      a3[139] = (*(*__p[0] + 136))(__p[0]);
      v87 = (*(*__p[0] + 152))(__p[0]);
      *(a3 + 140) = v87;
      v88 = (*(*__p[0] + 160))(__p[0]);
      *(a3 + 141) = v88;
      v89 = (*(*__p[0] + 168))(__p[0]);
      *(a3 + 142) = v89;
      a3[143] = (*(*__p[0] + 176))(__p[0]);
      v90 = (*(*__p[0] + 184))(__p[0]);
      *(a3 + 144) = v90;
      v91 = (*(*__p[0] + 192))(__p[0]);
      *(a3 + 145) = v91;
      v92 = (*(*__p[0] + 200))(__p[0]);
      *(a3 + 146) = v92;
      a3[147] = (*(*__p[0] + 208))(__p[0]);
      v93 = (*(*__p[0] + 216))(__p[0]);
      *(a3 + 148) = v93;
      v94 = (*(*__p[0] + 224))(__p[0]);
      *(a3 + 149) = v94;
      v95 = (*(*__p[0] + 232))(__p[0]);
      *(a3 + 150) = v95;
      a3[151] = (*(*__p[0] + 240))(__p[0]);
      v96 = (*(*__p[0] + 248))(__p[0]);
      *(a3 + 152) = v96;
      v97 = (*(*__p[0] + 256))(__p[0]);
      *(a3 + 153) = v97;
      v98 = (*(*__p[0] + 264))(__p[0]);
      *(a3 + 154) = v98;
    }
  }

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (getenv("RAWCAMERA_DENOISE_BAYER"))
  {
    if ((*(*a1 + 256))(a1) >> 9 <= 0x18)
    {
      if ((*(*a1 + 256))(a1) >> 8 <= 0x18)
      {
        if ((*(*a1 + 256))(a1) < 0xC80)
        {
LABEL_40:
          result = *(a3 + 4) / 10.0;
          *(a3 + 4) = result;
          a3[9] = 1;
          return result;
        }

        v100 = -1139844055;
      }

      else
      {
        v100 = -1131455447;
      }
    }

    else
    {
      v100 = -1123066839;
    }

    a3[7] = v100;
    a3[8] = v100;
    goto LABEL_40;
  }

  return result;
}

void sub_233854F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_233855004(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = a3 + 162;
  bzero(a3, 0x478uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 25) = _D0;
  *(a3 + 16) = 1;
  a3[10] = 1063665663;
  a3[3] = 1075838976;
  *(a3 + 6) = 0x4051999A3F94DD2FLL;
  a3[14] = 1075838976;
  *(a3 + 60) = (*(*a1 + 2664))(a1, 0, 0) >= 0.85;
  a3[16] = 1065856532;
  v12 = (*(*a1 + 2664))(a1, 0, 0) * -1.5 + 5.19999981;
  *(a3 + 17) = v12;
  v13 = (*(*a1 + 2664))(a1, 0, 0) * 1136.0;
  *(a3 + 25) = v13;
  *(a3 + 9) = 0x3F4DD2F200000001;
  *(a3 + 5) = xmmword_233909BB0;
  v14 = (*(*a1 + 1080))(a1);
  *(a3 + 139) = v14;
  v15 = (*(*a1 + 120))(a1);
  v16 = 3.0;
  if (v15 >= 9)
  {
    v17 = (*(*a1 + 2664))(a1, 0, 0, 3.0);
    v16 = 5.0;
    if (v17 <= 0.5)
    {
      v16 = 1.0;
      if (v17 > 0.15)
      {
        v16 = (v17 * 11.429) + -0.71429;
      }
    }
  }

  *(a3 + 151) = v16;
  *(a3 + 608) = 0;
  a3[153] = 0;
  *(a3 + 308) = 256;
  v18 = 7.1;
  if ((a3[1] - 27) >= 4)
  {
    v18 = 12.0;
  }

  *(a3 + 155) = v18;
  *(a3 + 78) = 0x6800000000;
  a3[158] = 1052334096;
  a3[160] = 1065353216;
  *(a3 + 644) = 0;
  *v6 = xmmword_233909BC0;
  a3[166] = 0;
  *(a3 + 600) = (*(*a1 + 120))(a1) > 8;
  *(a3 + 167) = 0x3F00000000000000;
  v19 = (*(*a1 + 456))(a1);
  v21 = v20;
  v22 = (*(*a1 + 520))(a1);
  v23 = sub_233739B84(a1);
  if (v23 == 3)
  {
    if (!sub_233739B94(a1))
    {
      v22 = (*(*a1 + 408))(a1);
    }
  }

  else if (v23 == 2)
  {
    v22 = v21;
  }

  *(a3 + 169) = v22 / v21;
  *(a3 + 170) = (SHIDWORD(v22) + SHIDWORD(v22)) / SHIDWORD(v21);
  *(a3 + 171) = 0x404000003F543958;
  a3[173] = 1;
  *(a3 + 87) = v19;
  *(a3 + 88) = 0x4190000041400000;
  *a3 = (*(*a1 + 2168))(a1);
  if (((*(*a1 + 2152))(a1) & 1) == 0 && !*a3)
  {
    *a3 = -1802201964;
  }

  a3[1] = (*(*a1 + 2656))(a1);
  a3[246] = (*(*a1 + 2656))(a1);
  *(a3 + 17) = (*(*a1 + 128))(a1);
  v24 = (*(*a1 + 2216))(a1);
  *(a3 + 210) = v24;
  *(a3 + 44) = (*(*a1 + 2112))(a1);
  *(a3 + 560) = (*(*a1 + 2264))(a1);
  v25 = (*(*a1 + 2272))(a1);
  *(a3 + 141) = v25;
  v26 = (*(*a1 + 2280))(a1);
  *(a3 + 142) = v26;
  v27 = (*(*a1 + 2304))(a1);
  *(a3 + 148) = v27;
  v28 = (*(*a1 + 2312))(a1);
  *(a3 + 149) = v28;
  v29 = (*(*a1 + 2320))(a1);
  *(a3 + 138) = v29;
  *(a3 + 788) = (*(*a1 + 2408))(a1, a2);
  v30 = (*(*a1 + 2632))(a1, a2);
  *(a3 + 207) = v30;
  v31 = (*(*a1 + 2640))(a1);
  *(a3 + 211) = v31;
  v32 = (*(*a1 + 2648))(a1);
  *(a3 + 212) = v32;
  v33 = (*(*a1 + 896))(a1);
  *(a3 + 195) = v33;
  *(a3 + 194) = v33;
  *(a3 + 193) = v33;
  v34 = *a1;
  if ((a3[1] - 27) > 3)
  {
    (*(v34 + 432))(a1);
    v35 = v36;
  }

  else
  {
    v35 = (*(v34 + 520))(a1);
  }

  *(a3 + 47) = v35;
  (*(*a1 + 744))(&v148, a1);
  v37 = v148;
  v38 = v149 - v148;
  if (v149 == v148 || (v39 = *v148, *(a3 + 178) = v39, v38 < 9) || (v40 = v37[1], *(a3 + 179) = v40, v38 == 16))
  {
    sub_2337306B0();
  }

  v41 = v37[2];
  *(a3 + 180) = v41;
  (*(*a1 + 792))(__p, a1, a2);
  if (sub_2337E0044(__p) < 5 || sub_2337E003C(__p) <= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v146 = sub_2337DFCEC(__p, 0);
  v147 = v42;
  v43 = *sub_2337DFD6C(&v146, 0);
  *(a3 + 181) = v43;
  v146 = sub_2337DFCEC(__p, 0);
  v147 = v44;
  v45 = *sub_2337DFD6C(&v146, 1u);
  *(a3 + 182) = v45;
  v146 = sub_2337DFCEC(__p, 0);
  v147 = v46;
  v47 = *sub_2337DFD6C(&v146, 2u);
  *(a3 + 183) = v47;
  v146 = sub_2337DFCEC(__p, 1u);
  v147 = v48;
  v49 = *sub_2337DFD6C(&v146, 0);
  *(a3 + 184) = v49;
  v146 = sub_2337DFCEC(__p, 1u);
  v147 = v50;
  v51 = *sub_2337DFD6C(&v146, 1u);
  *(a3 + 185) = v51;
  v146 = sub_2337DFCEC(__p, 1u);
  v147 = v52;
  v53 = *sub_2337DFD6C(&v146, 2u);
  *(a3 + 186) = v53;
  v146 = sub_2337DFCEC(__p, 2u);
  v147 = v54;
  v55 = *sub_2337DFD6C(&v146, 0);
  *(a3 + 187) = v55;
  v146 = sub_2337DFCEC(__p, 2u);
  v147 = v56;
  v57 = *sub_2337DFD6C(&v146, 1u);
  *(a3 + 188) = v57;
  v146 = sub_2337DFCEC(__p, 2u);
  v147 = v58;
  v59 = *sub_2337DFD6C(&v146, 2u);
  *(a3 + 189) = v59;
  v146 = sub_2337DFCEC(__p, 0);
  v147 = v60;
  v61 = *sub_2337DFD6C(&v146, 4u);
  *(a3 + 190) = v61;
  v146 = sub_2337DFCEC(__p, 1u);
  v147 = v62;
  v63 = *sub_2337DFD6C(&v146, 4u);
  *(a3 + 191) = v63;
  v146 = sub_2337DFCEC(__p, 2u);
  v147 = v64;
  v65 = *sub_2337DFD6C(&v146, 4u);
  *(a3 + 192) = v65;
  a3[196] = 0;
  if (__p[1])
  {
    *&v144 = __p[1];
    operator delete(__p[1]);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  (*(*a1 + 1016))(__p, a1);
  v66 = __p[0];
  v67 = __p[1];
  if (__p[0] == __p[1])
  {
    v70 = 0;
    goto LABEL_35;
  }

  v68 = 214;
  do
  {
    if (v68 == 218)
    {
      v141 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v141, "RawCameraException");
      __cxa_throw(v141, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v69 = *v66;
    if ((LODWORD(v69) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v137 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v137, "RawCameraException");
      __cxa_throw(v137, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *&a3[v68] = v69;
    ++v66;
    ++v68;
  }

  while (v66 != v67);
  if ((v68 - 215) <= 2)
  {
    v70 = v68 - 214;
LABEL_35:
    bzero(a3 + (4 * v70) + 856, (16 - 4 * v70));
  }

  (*(*a1 + 2680))(a1, a3 + 214);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  (*(*a1 + 1120))(&v148, a1);
  v71 = v148;
  v72 = (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (*(*v71 + 8))(__p, v71, v72);
  if (v149)
  {
    sub_2337239E8(v149);
  }

  v74 = __p[0];
  v73 = __p[1];
  if ((__p[1] - __p[0]) != 32)
  {
    v140 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v140, "RawCameraException");
    __cxa_throw(v140, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (__p[0] == __p[1])
  {
    v78 = 0;
    goto LABEL_49;
  }

  v75 = 218;
  v76 = __p[0];
  do
  {
    if (v75 == 222)
    {
      v142 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v142, "RawCameraException");
      __cxa_throw(v142, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v77 = *v76;
    if ((LODWORD(v77) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v138 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v138, "RawCameraException");
      __cxa_throw(v138, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *&a3[v75] = v77;
    ++v76;
    ++v75;
  }

  while (v76 != v73);
  if ((v75 - 219) <= 2)
  {
    v78 = v75 - 218;
LABEL_49:
    bzero(a3 + (4 * v78) + 872, (16 - 4 * v78));
  }

  if (v74)
  {
    __p[1] = v74;
    operator delete(v74);
  }

  v79 = (*(*a1 + 2344))(a1);
  *(a3 + 240) = v79;
  v80 = (*(*a1 + 2352))(a1);
  *(a3 + 241) = v80;
  v81 = (*(*a1 + 2360))(a1);
  *(a3 + 242) = v81;
  v82 = (*(*a1 + 2368))(a1);
  *(a3 + 243) = v82;
  v83 = (*(*a1 + 2376))(a1);
  *(a3 + 244) = v83;
  v84 = (*(*a1 + 2384))(a1);
  *(a3 + 245) = v84;
  (*(*a1 + 2624))(&v148, a1, a2, 0);
  sub_233764E8C(v148, __p);
  a3[206] = v145;
  v85 = v144;
  *(a3 + 198) = *__p;
  *(a3 + 202) = v85;
  if (v149)
  {
    sub_2337239E8(v149);
  }

  a3[213] = (*(*a1 + 256))(a1);
  *(a3 + 561) = (*(*a1 + 2440))(a1);
  v86 = (*(*a1 + 264))(a1);
  if (v86 > (*(*a1 + 2448))(a1))
  {
    *(a3 + 561) = 1;
    a3[148] = 998445679;
  }

  v87 = (*(*a1 + 2328))(a1);
  *(a3 + 143) = v87;
  v88 = (*(*a1 + 2608))(a1);
  *(a3 + 144) = v88;
  v89 = (*(*a1 + 2600))(a1);
  *(a3 + 145) = v89;
  v90 = (*(*a1 + 2616))(a1);
  *(a3 + 147) = v90;
  v91 = (*(*a1 + 2528))(a1);
  *(a3 + 146) = v91;
  v92 = (*(*a1 + 1384))(a1);
  *(a3 + 5) = v92;
  v93 = (*(*a1 + 1392))(a1);
  *(a3 + 6) = v93;
  v94 = (*(*a1 + 1400))(a1);
  *(a3 + 7) = v94;
  a3[8] = (*(*a1 + 1408))(a1);
  if ((*(*a1 + 624))(a1))
  {
    a3[8] = (*(*a1 + 624))(a1);
  }

  *(a3 + 36) = (*(*a1 + 1208))(a1);
  v95 = (*(*a1 + 1584))(a1);
  *(a3 + 208) = v95;
  v96 = (*(*a1 + 1592))(a1);
  *(a3 + 209) = v96;
  if ((*(*a1 + 2664))(a1, 0, 0) >= 0.5)
  {
    v97 = (*(*a1 + 1376))(a1);
  }

  else
  {
    v97 = 0;
  }

  *(a3 + 8) = v97;
  (*(*a1 + 2128))(__p, a1);
  v98 = __p[0];
  v99 = (*(*a1 + 256))(a1);
  (**v98)(v98, v99, (a3 + 223), (a3 + 222));
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if ((*(*a1 + 120))(a1) <= 7)
  {
    v100 = (*(*a1 + 2496))(a1);
  }

  else
  {
    v100 = 0;
  }

  *(a3 + 956) = v100;
  v101 = (*(*a1 + 2664))(a1, 0, 0);
  if ((a3[1] - 9) <= 0x11)
  {
    *(a3 + 44) = 0;
    if (v101 <= 0.65)
    {
      v102 = 0;
      v103 = 0;
    }

    else
    {
      a3[16] = 1084227584;
      v102 = 1;
      v103 = 1;
    }

    *(a3 + 60) = v102;
    a3[156] = v103;
    v104 = fmaxf(fminf((a3[213] + -2500.0) / 3900.0, 1.0), 0.0);
    a3[157] = llroundf((v104 * 396.0) + 104.0);
    *(a3 + 79) = vmla_n_f32(0x3F0000003EB95810, 0x3F000000BEB95810, v104);
  }

  v105 = (*(*a1 + 2528))(a1);
  v106 = (*(*a1 + 2520))(a1);
  v107 = (*(*a1 + 2544))(a1);
  v108 = (*(*a1 + 2560))(a1);
  v109 = (*(*a1 + 2568))(a1);
  (*(*a1 + 744))(__p, a1);
  if (__p[1] == __p[0] || (v110 = *__p[0], v111 = (*(*a1 + 800))(a1, a2), v112 = v110, *&v111 = v112 / v111, a3[268] = LODWORD(v111), (__p[1] - __p[0]) < 9) || (v113 = *(__p[0] + 1), v114 = (*(*a1 + 800))(a1, a2), v115 = v113, *&v114 = v115 / v114, a3[269] = LODWORD(v114), (__p[1] - __p[0]) <= 0x10))
  {
    sub_2337306B0();
  }

  v116 = *(__p[0] + 2);
  v117 = (*(*a1 + 800))(a1, a2);
  v118 = v105;
  v119 = v116;
  *&v117 = v119 / v117;
  a3[270] = LODWORD(v117);
  *(a3 + 271) = v101;
  *(a3 + 989) = v118 != 0.0;
  *(a3 + 272) = v118;
  v120 = (*(*a1 + 2608))(a1);
  *(a3 + 274) = v120;
  v121 = (*(*a1 + 2600))(a1);
  *(a3 + 273) = v121;
  v122 = (*(*a1 + 2616))(a1);
  *(a3 + 275) = v122;
  a3[276] = 16843009;
  *(v6 + 460) = xmmword_233909BD0;
  *(a3 + 1124) = 1;
  *(a3 + 141) = 0x138800000005;
  a3[284] = 1076258406;
  if (v101 <= 3.7633)
  {
    if (v101 <= 2.1287)
    {
      if (v101 <= 1.6717)
      {
        if (v101 <= 0.8968)
        {
          if (v101 <= 0.5)
          {
            v123 = 0.0021;
            goto LABEL_85;
          }

          v124 = (v101 + -0.5) / 0.3968;
          v125 = 0.0021;
          v126 = 0.0039;
        }

        else
        {
          v124 = (v101 + -0.8968) / 0.7749;
          v125 = 0.006;
          v126 = 0.0038;
        }
      }

      else
      {
        v124 = (v101 + -1.6717) / 0.457;
        v125 = 0.0098;
        v126 = 0.0085;
      }
    }

    else
    {
      v124 = (v101 + -2.1287) / 1.6346;
      v125 = 0.0183;
      v126 = 0.0067;
    }

    v123 = v125 + (v124 * v126);
  }

  else
  {
    v123 = 0.025;
  }

LABEL_85:
  v127 = v101 * 50.0;
  v128 = v101 * 25.0;
  v129 = 0.0;
  v130 = 0.0;
  if ((v101 * 25.0) >= 18.0)
  {
    v130 = 1.0;
    if (v128 < 36.0)
    {
      v130 = (v128 + -18.0) / 18.0;
    }
  }

  v131 = v101 * 100.0;
  if (v127 >= 18.0)
  {
    v129 = 1.0;
    if (v127 < 36.0)
    {
      v129 = (v127 + -18.0) / 18.0;
    }
  }

  v132 = v106;
  v133 = v108;
  v134 = v109;
  v135 = 0.0;
  if (v131 >= 18.0)
  {
    v135 = 1.0;
    if (v131 < 36.0)
    {
      v135 = (v131 + -18.0) / 18.0;
    }
  }

  *(a3 + 988) = fmaxf(fmaxf(v132, v133), v134) > 0.0;
  *(a3 + 248) = v132;
  *(a3 + 498) = 257;
  *(a3 + 125) = 0x3DCCCCCD3EBC6A7FLL;
  v136 = v107;
  *(a3 + 252) = v135;
  *(a3 + 253) = v129;
  *(a3 + 254) = v130;
  *(a3 + 255) = v123 + v123;
  *(a3 + 257) = v123;
  *(a3 + 259) = v123 * 0.5;
  a3[256] = 1061158912;
  a3[258] = 1061158912;
  a3[260] = 1061158912;
  *(a3 + 261) = v135;
  *(a3 + 262) = v129;
  *(a3 + 263) = v130;
  *(a3 + 264) = v133;
  *(a3 + 1060) = v136 != 0.0;
  *(a3 + 266) = v136;
  *(a3 + 267) = v134;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_233856FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_233857188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338571D0(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284923B78;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *a4;
  v5 = CGImageProviderRetain();
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_233857290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v11);
  sub_233723948(&a10);
  v13 = *(v10 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338572C4(uint64_t a1)
{
  *a1 = &unk_284923B78;
  CGImageProviderRelease();
  *(a1 + 80) = 0;
  v4 = (a1 + 24);
  sub_233723948(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_23385733C(uint64_t a1)
{
  sub_2338572C4(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233857374(void *a1)
{
  result = a1[10];
  if (!result)
  {
    v3 = a1[4] - a1[3];
    if (v3)
    {
      if ((v3 >> 4) < 0x1F4)
      {
        __p = 0;
        v20 = 0;
        v21 = 0;
        sub_233857694(&__p, v3 >> 4);
        x = *MEMORY[0x277CBF398];
        y = *(MEMORY[0x277CBF398] + 8);
        width = *(MEMORY[0x277CBF398] + 16);
        height = *(MEMORY[0x277CBF398] + 24);
        v9 = a1[3];
        for (i = a1[4]; v9 != i; v9 += 16)
        {
          v24.origin.x = *(*v9 + 28);
          v24.origin.y = *(*v9 + 32);
          v24.size.width = *(*v9 + 36);
          v24.size.height = *(*v9 + 40);
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = width;
          v22.size.height = height;
          v23 = CGRectUnion(v22, v24);
          x = v23.origin.x;
          y = v23.origin.y;
          width = v23.size.width;
          height = v23.size.height;
          v10 = (***v9)();
          v11 = v20;
          if (v20 >= v21)
          {
            v13 = (v20 - __p) >> 3;
            if ((v13 + 1) >> 61)
            {
              sub_2337235BC();
            }

            v14 = (v21 - __p) >> 2;
            if (v14 <= v13 + 1)
            {
              v14 = v13 + 1;
            }

            if (v21 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              sub_233857934(&__p, v15);
            }

            v16 = (8 * v13);
            *v16 = v10;
            v12 = 8 * v13 + 8;
            v17 = v16 - (v20 - __p);
            memcpy(v17, __p, v20 - __p);
            v18 = __p;
            __p = v17;
            v20 = v12;
            v21 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v20 = v10;
            v12 = (v11 + 8);
          }

          v20 = v12;
        }

        operator new();
      }

      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_233857620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233857694(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_233857934(result, a2);
    }

    sub_2337235BC();
  }

  return result;
}

uint64_t sub_233857734(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      sub_2337239E8(v1);
    }

    JUMPOUT(0x2383ABF10);
  }

  return result;
}

uint64_t sub_233857794()
{
  ComponentType = CGImageProviderGetComponentType();
  if (ComponentType == 1)
  {
    return 8;
  }

  if (ComponentType != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 16;
}

void sub_23385781C(void *a1)
{
  v8 = a1;
  v2 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      sub_2337239E8(v3);
LABEL_12:
      v8 = 0;
      v7 = a1;
LABEL_10:
      sub_233857B14(&v8, v7);
      return;
    }
  }

  else if (!v2)
  {
    goto LABEL_12;
  }

  v4 = atomic_fetch_add((v2 + 88), 0xFFFFFFFFFFFFFFFFLL) - 1;
  v6 = v2 + 24;
  v5 = *(v2 + 24);
  if (v4 < (*(v6 + 8) - v5) >> 4)
  {
    (*(**(v5 + 16 * v4) + 16))(*(v5 + 16 * v4));
  }

  if (v3)
  {
    sub_2337239E8(v3);
  }

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    goto LABEL_10;
  }
}

void sub_2338578F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    sub_2337239E8(v9);
  }

  sub_2338FD114(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338578D0);
}

void sub_233857934(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2337236AC();
}

void *sub_233857A18(void *a1, uint64_t *a2, _OWORD *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284923BE0;
  sub_2338571D0((a1 + 3), *a2, a3, a4);
  return a1;
}

void sub_233857A98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284923BE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233857B14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_2337239E8(v2);
    }

    JUMPOUT(0x2383ABF10);
  }
}

void *sub_233857BE4(void *a1)
{
  *a1 = &unk_284923C30;
  v2 = a1[7];
  if (v2)
  {
    free(v2);
    a1[7] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_233857C44(void *a1)
{
  sub_233857BE4(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233857C7C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      sub_2337239E8(v1);
    }

    JUMPOUT(0x2383ABF10);
  }

  return result;
}

void sub_233857CD4(_DWORD *a1)
{
  (*(*a1 + 8))(a1, 0);
  if (!a1[6])
  {
    (*(*a1 + 8))(a1, 0);
  }

  operator new();
}

void sub_233857E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233857E34(unsigned int *a1)
{
  result = a1[6];
  if (!result)
  {
    (*(*a1 + 8))(a1, 0);
    return a1[6];
  }

  return result;
}

void *sub_233857E8C(uint64_t a1, int a2)
{
  result = *(a1 + 56);
  if (!result)
  {
    *v9 = *(a1 + 28);
    sub_233726998(&v10, (v9 | 0xC));
    *v9 = *(a1 + 28);
    sub_233726998(&v8, &v9[2]);
    if (a2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v9[0] = (*(a1 + 44) >> 3) * v5;
    sub_233757DB0(&v8, v9);
    v6 = v8;
    if (*(a1 + 52) == 1 && (v8 & 0xF) != 0)
    {
      v9[0] = 16 - (v8 & 0xF);
      sub_233753AB0(&v8, v9);
      v6 = v8;
    }

    *(a1 + 24) = v6;
    v9[0] = v10;
    v7 = sub_233757DB0(v9, &v8);
    result = malloc_type_valloc(*v7, 0xCD4C3CBEuLL);
    *(a1 + 56) = result;
    if (!result)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  return result;
}

uint64_t sub_233857FB8(uint64_t a1)
{
  result = *(a1 + 56);
  if (!result)
  {
    *(a1 + 56) = sub_2337B0628(*(a1 + 64));
    v3 = 2 * *(*(a1 + 64) + 56);
    sub_233723C18(&v4, &v3);
    *(a1 + 24) = v4;
    return *(a1 + 56);
  }

  return result;
}

void sub_233858108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233858138(void *a1)
{
  sub_233858170(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233858170(void *a1)
{
  *a1 = &unk_284923CC0;
  sub_2337B0898(a1[8]);
  v2 = a1[9];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_233857BE4(a1);
}

void sub_2338582C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284923D10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338583D0(void *a1, uint64_t *a2, _OWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284923D60;
  sub_2338584C8((a1 + 3), a2, a3);
  return a1;
}

void sub_23385844C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284923D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338584C8(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284923C30;
  *(a1 + 24) = 0;
  *(a1 + 28) = *a3;
  *(a1 + 44) = 0xFFFFFFFF00000010;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *a1 = &unk_284923CC0;
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *(a1 + 64);
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337B08C8(v4);
  return a1;
}

void sub_2338585B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = v1[9];
  if (v4)
  {
    sub_2337239E8(v4);
  }

  sub_233857BE4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2338585E4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 448))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233858688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338586A0(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 456))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233858744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385875C(uint64_t a1)
{
  (*(*a1 + 160))(&v17);
  v2 = v17;
  sub_23372A488(&__p, "IFD0:EXIF");
  v3 = (v2->__vftable[6].__on_zero_shared_weak)(v2, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_2337239E8(v18);
  }

  sub_23372630C(&v17, 3uLL);
  v4 = v17;
  if (v3 == 2)
  {
    v5 = 473000;
  }

  else
  {
    v5 = 550000;
  }

  if (v3 == 2)
  {
    v6 = 359000;
  }

  else
  {
    v6 = 418000;
  }

  LODWORD(v17->__vftable) = v5;
  HIDWORD(v4->__vftable) = 256000;
  LODWORD(v4->__shared_owners_) = v6;
  v13 = 0;
  __p = &unk_284924960;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_233729070(&v14, v4, v18, (v18 - v4) >> 2);
  (*(*a1 + 160))(&v10, a1);
  v7 = v10;
  sub_23372A488(v8, "IFD0:EXIF:MAKERNOTE:WhitePoint");
  (*(*v7 + 600))(v7, v8, &__p, 3);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11)
  {
    sub_2337239E8(v11);
  }

  __p = &unk_284924960;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_233858970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 56);
  if (v23)
  {
    *(v21 - 48) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233858A00(void *a1)
{
  *a1 = &unk_284924960;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_233858A50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = 0x4050000000000000;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  if ((*(*a1 + 960))(a1) != 10)
  {
    goto LABEL_11;
  }

  (*(*a1 + 160))(&v9, a1);
  v4 = v9;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE");
  v5 = (*(*v4 + 248))(v4, __p, v11, 0);
  if ((v11[1] - v11[0]) == 32)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v6)
  {
    *a2 = *v11;
    a2[2] = v12;
  }

  else
  {
LABEL_11:
    sub_233731694(a2, 4uLL);
    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }
}

void sub_233858B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_233858BE4(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 160))(&v2, a1);
    (*(*v2 + 384))(&v4);
    if (v3)
    {
      sub_2337239E8(v3);
    }

    (*(*a1 + 336))(a1);
    (*(*a1 + 408))(a1);
    (*(*a1 + 432))(a1);
    sub_233858F08();
  }
}

void sub_233858D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  v17 = *(v15 - 32);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_233858DD4(void *a1)
{
  *a1 = &unk_284924960;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233858E44(uint64_t a1, uint64_t a2, void **a3, unsigned int a4, uint64_t *a5)
{
  v8 = sub_2337BF918(a1, a2, a3, a4, a5);
  if (a4 == 3 && v8 && *(a1 + 24) - *(a1 + 16) == 12)
  {
    sub_23372630C(&v15, 3uLL);
    v9 = *(a1 + 16);
    v10 = *a5;
    v11 = **a5 * *v9;
    v12 = v15;
    *a5 = v15;
    *v12 = v11;
    v12[1] = v10[1] * v9[1];
    v12[2] = v10[2] * v9[2];
    v13 = a5[2];
    a5[2] = v16;
    *(&v15 + 1) = v10;
    v16 = v13;
    *&v15 = v10;
    operator delete(v10);
  }

  return 1;
}

uint64_t sub_233858FAC(int a1, unsigned int a2)
{
  v2 = &unk_233909E64;
  if ((a1 + 2122219136) < 0x12)
  {
    return v2[a2];
  }

  if (a1 > 370546197)
  {
    if (a1 > 1229539656)
    {
      if (a1 == 1229539657)
      {
        if (a2 >= 4)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        v2 = &unk_233909E54;
        return v2[a2];
      }

      if (a1 != 1364283729)
      {
        if (a1 == 1633771873)
        {
          if (a2 >= 4)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v2 = &unk_233909E44;
          return v2[a2];
        }

LABEL_19:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      return v2[a2];
    }

    if (a1 == 370546198)
    {
      if (a2 >= 4)
      {
        __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0]();
        sub_2338F83F4();
      }

      v2 = &unk_233909E34;
      return v2[a2];
    }

    v4 = 1094795585;
LABEL_18:
    if (a1 != v4)
    {
      goto LABEL_19;
    }

    return v2[a2];
  }

  if (a1 > 336860179)
  {
    if (a1 == 336860180)
    {
      return v2[a2];
    }

    v4 = 353703189;
    goto LABEL_18;
  }

  if (a1 == -1802201964)
  {
    if (a2 >= 4)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v2 = &unk_233909E64;
    return v2[a2];
  }

  if (a1)
  {
    goto LABEL_19;
  }

  return 1;
}

void sub_2338591CC(void *a1)
{
  (*(*a1 + 2888))(&v26);
  if (v27 != v26 && *v26 == 11)
  {
    if ((v27 - v26) > 8)
    {
      (*(*a1 + 160))(&v22, a1);
      (*(*v22 + 384))(&v25);
      if (v23)
      {
        sub_2337239E8(v23);
      }

      v24 = (*(*a1 + 336))(a1);
      v2 = (*(*a1 + 3016))(a1);
      (*(*a1 + 2960))(&v22, a1, v2);
      v3 = v22;
      if (v23 - v22 == 24)
      {
        __src = 0;
        v20 = 0;
        v21 = 0;
        if (v23 != v22)
        {
          v4 = 0;
          v5 = 0;
          do
          {
            v6 = (v3[v5] * 0.5);
            if (v4 >= v21)
            {
              v7 = __src;
              v8 = v4 - __src;
              v9 = (v4 - __src) >> 2;
              v10 = v9 + 1;
              if ((v9 + 1) >> 62)
              {
                sub_2337235BC();
              }

              v11 = v21 - __src;
              if ((v21 - __src) >> 1 > v10)
              {
                v10 = v11 >> 1;
              }

              if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v12 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v12 = v10;
              }

              if (v12)
              {
                sub_2337235D4(&__src, v12);
              }

              v13 = (v4 - __src) >> 2;
              v14 = (4 * v9);
              v15 = (4 * v9 - 4 * v13);
              *v14 = v6;
              v4 = v14 + 1;
              memcpy(v15, v7, v8);
              v16 = __src;
              __src = v15;
              v20 = v4;
              v21 = 0;
              if (v16)
              {
                operator delete(v16);
              }
            }

            else
            {
              *v4++ = v6;
            }

            v20 = v4;
            ++v5;
            v3 = v22;
          }

          while (v5 < (v23 - v22) >> 3);
        }

        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_23385996C();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_27:
    v17 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v17, "RawCameraException");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337D7738(a1);
  if (!a1[3])
  {
    goto LABEL_27;
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_2338596A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a24)
  {
    sub_2337239E8(a24);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338597B4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 464))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233859858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338598A0(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_23381446C(v2, @"srawMultipliersOffset", v3, &unk_284924998);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_23385994C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}