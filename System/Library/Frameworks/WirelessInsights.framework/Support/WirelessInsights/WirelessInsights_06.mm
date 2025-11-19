uint64_t sub_100096E40(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = sub_10000FA34(a1, a2);
  }

  else
  {
    v4 = sub_10000E83C(v3, a2) + 32;
  }

  *(a1 + 8) = v4;
  return v4 - 32;
}

uint64_t sub_100096E8C(uint64_t a1, void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_10009678C(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  sub_100096638(a1, (8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  sub_100096CE4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100096DE0(&v14);
  return v13;
}

void sub_100096F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100096DE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096FA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100096550(result, a4);
  }

  return result;
}

void sub_100097008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10009634C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100097028(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_10000FFF8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100097088(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100033FD0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100038714(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_10003876C(&v17);
  return v11;
}

void sub_1000971B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003876C(va);
  _Unwind_Resume(a1);
}

void sub_1000971C8(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v74 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_10000FF8C(a3, a2 - 3, v10))
      {
LABEL_77:
        v122 = v10[2];
        v98 = *v10;
        v70 = *v8;
        v10[2] = v8[2];
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_100097EB4(v10, a2, a3);
      }

      else
      {

        sub_100097FD8(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_100098878(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 >= 0xC01)
    {
      v17 = sub_10000FF8C(a3, &v10[3 * v15], v10);
      v18 = sub_10000FF8C(a3, a2 - 3, (a1 + 24 * v15));
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = v16[2];
        *a1 = v27;
        v16[2] = v106;
        *v16 = v82;
        if (sub_10000FF8C(a3, a2 - 3, (a1 + 24 * v15)))
        {
          v100 = v16[2];
          v76 = *v16;
          v28 = *v8;
          v16[2] = *(a2 - 1);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 1) = v100;
        }
      }

      else if (v18)
      {
        v102 = v16[2];
        v78 = *v16;
        v23 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 1) = v102;
        if (sub_10000FF8C(a3, (a1 + 24 * v15), a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = v16[2];
          *a1 = v24;
          v16[2] = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = sub_10000FF8C(a3, v29, (a1 + 24));
      v31 = sub_10000FF8C(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 4);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *v74 = v33;
          *(a2 - 4) = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_10000FF8C(a3, v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 4);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 4) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 4);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 4) = v107;
        if (sub_10000FF8C(a3, v29, (a1 + 24)))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = sub_10000FF8C(a3, (v41 + 24), (a1 + 48));
      v43 = sub_10000FF8C(a3, a2 - 9, (v41 + 24));
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 64);
          v45 = *(a1 + 48);
          v46 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(a1 + 48);
        v114 = *(a1 + 64);
        v49 = *(v41 + 40);
        *(a1 + 48) = *(v41 + 24);
        *(a1 + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_10000FF8C(a3, a2 - 9, (v41 + 24)))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 7);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 7) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 7);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 7) = v112;
        if (sub_10000FF8C(a3, (v41 + 24), (a1 + 48)))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_10000FF8C(a3, v16, v29);
      v52 = sub_10000FF8C(a3, (v41 + 24), v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = v16[2];
        v16[2] = v119;
        *v16 = v95;
        if (sub_10000FF8C(a3, (v41 + 24), v16))
        {
          v116 = v16[2];
          v92 = *v16;
          *v16 = *(v41 + 24);
          v16[2] = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = v16[2];
        v93 = *v16;
        *v16 = *(v41 + 24);
        v16[2] = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_10000FF8C(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = v16[2];
          v16[2] = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v53;
      v16[2] = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_10000FF8C(a3, v10, &v10[3 * v15]);
    v21 = sub_10000FF8C(a3, a2 - 3, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = v16[2];
        v77 = *v16;
        v22 = *v8;
        v16[2] = *(a2 - 1);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 1) = v101;
        goto LABEL_58;
      }

      v109 = v16[2];
      v85 = *v16;
      v37 = *a1;
      v16[2] = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (sub_10000FF8C(a3, a2 - 3, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 1) = v104;
      if (sub_10000FF8C(a3, a1, (a1 + 24 * v15)))
      {
        v105 = v16[2];
        v81 = *v16;
        v26 = *a1;
        v16[2] = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_10000FF8C(a3, (a1 - 24), a1))
    {
      v10 = sub_1000980D8(a1, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_10009826C(a1, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_1000983FC(a1, v54, a3);
    v10 = (v54 + 24);
    if (sub_1000983FC(v54 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_1000971C8(a1, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_100097CD4(v10, v10 + 3, v10 + 6, (a2 - 3), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_100097CD4(v10, v10 + 3, v10 + 6, (v10 + 9), a3);
      if (!sub_10000FF8C(a3, a2 - 3, v10 + 9))
      {
        return;
      }

      v62 = v10[11];
      v63 = *(v10 + 9);
      v64 = *(a2 - 1);
      *(v10 + 9) = *v8;
      v10[11] = v64;
      *v8 = v63;
      *(a2 - 1) = v62;
      if (!sub_10000FF8C(a3, v10 + 9, v10 + 6))
      {
        return;
      }

      v65 = v10[8];
      v66 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 9);
      v10[8] = v10[11];
      *(v10 + 9) = v66;
      v10[11] = v65;
      if (!sub_10000FF8C(a3, v10 + 6, v10 + 3))
      {
        return;
      }

      v67 = v10[5];
      v68 = *(v10 + 3);
      *(v10 + 3) = *(v10 + 3);
      v10[5] = v10[8];
      *(v10 + 3) = v68;
      v10[8] = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_10000FF8C(a3, v10 + 3, v10);
  v58 = sub_10000FF8C(a3, v8, v10 + 3);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = v10[5];
    v72 = *(v10 + 3);
    v73 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v73;
    *v8 = v72;
    v8[2] = v71;
LABEL_92:
    if (sub_10000FF8C(a3, v10 + 3, v10))
    {
      v123 = v10[2];
      v99 = *v10;
      *v10 = *(v10 + 3);
      v10[2] = v10[5];
      *(v10 + 3) = v99;
      v10[5] = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = v10[2];
  v97 = *v10;
  *v10 = *(v10 + 3);
  v10[2] = v10[5];
  *(v10 + 3) = v97;
  v10[5] = v121;
  if (sub_10000FF8C(a3, v8, v10 + 3))
  {
    v59 = v10[5];
    v60 = *(v10 + 3);
    v61 = v8[2];
    *(v10 + 3) = *v8;
    v10[5] = v61;
    *v8 = v60;
LABEL_78:
    v8[2] = v59;
  }
}

__n128 sub_100097CD4(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = sub_10000FF8C(a5, a2, a1);
  v11 = sub_10000FF8C(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_10000FF8C(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_10000FF8C(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_10000FF8C(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (sub_10000FF8C(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_10000FF8C(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void sub_100097EB4(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (sub_10000FF8C(a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (sub_10000FF8C(a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void sub_100097FD8(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (sub_10000FF8C(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = sub_10000FF8C(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **sub_1000980D8(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (sub_10000FF8C(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!sub_10000FF8C(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_10000FF8C(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_10000FF8C(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!sub_10000FF8C(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_10000FF8C(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t sub_10009826C(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (sub_10000FF8C(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!sub_10000FF8C(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!sub_10000FF8C(a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (sub_10000FF8C(a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!sub_10000FF8C(a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL sub_1000983FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_10000FF8C(a3, (a1 + 24), a1);
        v17 = sub_10000FF8C(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_10000FF8C(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_100097CD4(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_100097CD4(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_10000FF8C(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_10000FF8C(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_10000FF8C(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_10000FF8C(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_10000FF8C(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_10000FF8C(a3, (a1 + 24), a1);
  v23 = sub_10000FF8C(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_10000FF8C(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_10000FF8C(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_10000FF8C(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_10000FF8C(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_100098878(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_100098AB0(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_10000FF8C(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_100098AB0(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_100098C4C(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          sub_100098D24(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_100098A98(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100098AB0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_10000FF8C(a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_10000FF8C(a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_10000FF8C(a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (sub_10000FF8C(a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *sub_100098C4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (sub_10000FF8C(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double sub_100098D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (sub_10000FF8C(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!sub_10000FF8C(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

uint64_t *sub_100098E28(uint64_t *result)
{
  if (*(result + 23) < 0)
  {
    v1 = *result;
  }

  return result;
}

uint64_t sub_100098E44()
{
  sub_100007ECC(byte_1002D8398, "_");
  __cxa_atexit(&std::string::~string, byte_1002D8398, &_mh_execute_header);
  v1[0] = *&off_1002AE5D0;
  v1[1] = *&off_1002AE5E0;
  v1[2] = *&off_1002AE5F0;
  v1[3] = *&off_1002AE600;
  qword_1002D83B8 = 0;
  unk_1002D83C0 = 0;
  qword_1002D83B0 = 0;
  sub_100096214(&qword_1002D83B0, v1, &v2, 8uLL);
  return __cxa_atexit(sub_100093488, &qword_1002D83B0, &_mh_execute_header);
}

void sub_1000991E4(uint64_t a1)
{
  v2 = kCLLocationAccuracyBystander;
  v8 = [*(a1 + 32) locationManager];
  [v8 setDesiredAccuracy:v2];

  v3 = +[FMConfiguration sharedInstance];
  v9 = v3;
  if (v3)
  {
    v4 = [v3 coreLocationDistanceFilter];
  }

  else
  {
    v4 = 10;
  }

  v5 = [*(a1 + 32) locationManager];
  [v5 setDistanceFilter:v4];

  v6 = [*(a1 + 32) locationManager];
  [v6 startUpdatingLocation];

  v7 = [*(a1 + 32) locationManager];
  [v7 _startLeechingVisits];
}

void sub_1000992FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained locationManager];
  [v1 _requestVisitState];
}

void sub_100099434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = FMCoreLocationController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100099530(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = [v3 authorizationManager];
  [v3 locationManagerDidChangeAuthorization:v4];

  v5 = [*(a1 + 32) currentLocation];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v6 locationManager];
    v9 = v5;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v6 locationManager:v7 didUpdateLocations:v8];
  }
}

void sub_10009AD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  pthread_mutex_unlock(&stru_1002D4C10);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10009AE84(uint64_t a1)
{
  v2 = +[TelephonyStateRelay sharedInstance];
  [*(a1 + 32) setCtRelay:?];

  v3 = [*(a1 + 32) ctRelay];
  [v3 addTelephonyStateDelegate:*(a1 + 32) withQueue:{objc_msgSend(*(a1 + 32), "queue")}];

  [*(a1 + 32) updateCurrentDataContext];
  v4 = [*(a1 + 32) ctRelay];
  [v4 getAirplaneModeStatus:*(a1 + 32)];

  [*(a1 + 32) setIsAirplaneModeActive:0];
  [*(a1 + 32) setCurrentCellularSignalBars:0];
  [*(a1 + 32) setCurrentDataIcon:0];
  [*(a1 + 32) setCurrentDataStatus:0];
  v5 = [*(a1 + 32) ctRelay];
  [v5 getRadioStateForDelegate:*(a1 + 32)];
}

void sub_10009B088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WISDailyWirelessUsageMetricController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10009C8E4(uint64_t a1)
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100204124(a1);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

WISDailyWirelessUsageMetricController **sub_10009DA28(WISDailyWirelessUsageMetricController **a1)
{
  *a1 = 0;
  v2 = objc_alloc_init(WISDailyWirelessUsageMetricController);
  v3 = *a1;
  *a1 = v2;

  return a1;
}

id *sub_10009DA80(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

id sub_10009DAB8(id *a1)
{
  v2 = *(qword_1002DBE98 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "DailyWirelessUsageMetric:#I Trigger fired", v4, 2u);
  }

  return [*a1 triggerMetric];
}

void sub_10009DB5C(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_10009DC40(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_10009DC7C(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    v11 = 0;
    v5 = [WISXPCUtils dictionaryFromPrimitivesXPCDict:&object error:&v11];
    v6 = v11;
    xpc_release(object);
    object = 0;
    if (v6 || !v5)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1002043C4();
      }
    }

    else
    {
      v7 = [WeakRetained queue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10009DE8C;
      v8[3] = &unk_1002AD7E0;
      v9 = WeakRetained;
      v10 = v5;
      dispatch_async(v7, v8);
    }
  }

  xpc_release(v3);
}

uint64_t sub_10009DE40(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002AE9C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009DE98(uint64_t a1)
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

void sub_10009DF44(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_10009E028(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_10009E064(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    v11 = 0;
    v5 = [WISXPCUtils dictionaryFromPrimitivesXPCDict:&object error:&v11];
    v6 = v11;
    xpc_release(object);
    object = 0;
    if (v6 || !v5)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_100204434();
      }
    }

    else
    {
      v7 = [WeakRetained queue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10009E274;
      v8[3] = &unk_1002AD7E0;
      v9 = WeakRetained;
      v10 = v5;
      dispatch_async(v7, v8);
    }
  }

  xpc_release(v3);
}

uint64_t sub_10009E228(uint64_t a1, uint64_t a2)
{
  if (sub_10002B87C(a2, &off_1002AEA48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009E280(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

uint64_t sub_10009E298()
{
  if ((byte_1002D4C60 & 1) == 0)
  {
    byte_1002D4C60 = 1;
    return __cxa_atexit(sub_10004F8F4, &stru_1002D4C10, &_mh_execute_header);
  }

  return result;
}

void sub_10009E408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17)
{
  xpc_release(object);
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10009E460(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [NSString stringWithUTF8String:a2];
  if (v6)
  {
    type = xpc_get_type(a3);
    v8 = type;
    if (type == &_xpc_type_uint64)
    {
      v16 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(a3)];
    }

    else if (type == &_xpc_type_int64)
    {
      v16 = [NSNumber numberWithLongLong:xpc_int64_get_value(a3)];
    }

    else if (type == &_xpc_type_BOOL)
    {
      v16 = [NSNumber numberWithBool:xpc_BOOL_get_value(a3)];
    }

    else if (type == &_xpc_type_string)
    {
      v16 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(a3)];
    }

    else if (type == &_xpc_type_double)
    {
      v16 = [NSNumber numberWithDouble:xpc_double_get_value(a3)];
    }

    else
    {
      if (type != &_xpc_type_data)
      {
        v9 = *(a1 + 48);
        name = xpc_type_get_name(type);
        xpc::object::to_string(__p, (a1 + 56));
        if (v25 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = [NSString stringWithFormat:@"Failed to convert value of type %s for field %@ (%s)", name, v6, v11];
        [WISXPCUtils setError:v9 code:0 message:v12];

        goto LABEL_25;
      }

      bytes_ptr = xpc_data_get_bytes_ptr(a3);
      v16 = [NSData dataWithBytes:bytes_ptr length:xpc_data_get_length(a3)];
    }

    v18 = v16;
    if (v16)
    {
      [*(a1 + 32) setObject:v16 forKey:v6];
      v15 = 1;
LABEL_28:

      goto LABEL_29;
    }

    v19 = *(a1 + 48);
    v20 = xpc_type_get_name(v8);
    xpc::object::to_string(__p, (a1 + 56));
    if (v25 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    v22 = [NSString stringWithFormat:@"Failed to extract value %s of type %s for field %@ (%s)", a2, v20, v6, v21];
    [WISXPCUtils setError:v19 code:0 message:v22];

LABEL_25:
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v18 = 0;
    v15 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_28;
  }

  v13 = *(a1 + 48);
  v14 = [NSString stringWithFormat:@"Failed to convert key %s", a2];
  [WISXPCUtils setError:v13 code:0 message:v14];

  v15 = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_29:

  return v15;
}

void sub_10009E7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_10009E84C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 56) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 56) = result;
  return result;
}

void sub_10009F0A4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10009FF44(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v4 = [v26 subscriptionID];
  v5 = [*(a1 + 32) subscriptionID];
  v6 = [v4 isEqualToNumber:v5];

  if (v6)
  {
    v7 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v26 subscriptionID];
      v23 = [v26 lastCellMapNodeObjectID];
      v24 = [*(a1 + 40) isLocationAuthorized];
      *buf = 138412802;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      v36 = 1024;
      v37 = v24;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCellMapModel]:#D Updating map for subscription ID %@ (%@), location authorized: %{BOOL}d", buf, 0x1Cu);
    }

    if ([*(a1 + 40) isLocationAuthorized])
    {
      v8 = [*(a1 + 40) fmCoreData];
      v9 = *(a1 + 32);
      v10 = [v26 lastCellMapNodeObjectID];
      v11 = [v8 updateMapWithCellMapCongestionMetric:v9 andPreviousNodeObjectID:v10];

      if (v11)
      {
        [v26 setLastCellMapNodeObjectID:v11];
      }
    }

    else
    {
      v11 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v26 pastPredictions];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [v16 nextCellGCI];
          if (v17)
          {
            v18 = [v16 nextCellGCI];
            v19 = [*(a1 + 32) gci];
            if ([v18 isEqualToString:v19])
            {
              v20 = [v16 nextCellCongestionMetric];
              v21 = v20 == 0;

              if (v21)
              {
                [v16 setNextCellCongestionMetric:*(a1 + 32)];
                [*(a1 + 40) sendTelemetryForPrediction:v16];
                goto LABEL_20;
              }
            }

            else
            {
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

LABEL_20:
  }
}

void sub_1000A0AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  pthread_mutex_unlock(&stru_1002D4830);
  sub_1000292F4(va);
  sub_1000292AC(va1);

  _Unwind_Resume(a1);
}

id sub_1000A16D4(uint64_t a1, void *a2)
{
  v3 = [a2 gci];
  v4 = [*(a1 + 32) nextCellGCI];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t sub_1000A1C50()
{
  if ((byte_1002D4880 & 1) == 0)
  {
    byte_1002D4880 = 1;
    return __cxa_atexit(sub_10002973C, &stru_1002D4830, &_mh_execute_header);
  }

  return result;
}

void sub_1000A1F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1000A1F9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "submit:#I Initializing SubmitterController", v2, 2u);
  }
}

uint64_t sub_1000A1FFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000A2018(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000A2028(uint64_t a1)
{
  sub_1000A21F4((a1 + 8), "SubmitterController", QOS_CLASS_DEFAULT, (qword_1002DBE98 + 104));
  *a1 = off_1002AEB88;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 48) = off_1002AEBD8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  sCreateBestChoiceMetadataLoaderDelegate();
  sub_1000A4A04();
}

void sub_1000A2150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 168);
  if (v14)
  {
    sub_100008350(v14);
  }

  v15 = *(v10 + 152);
  if (v15)
  {
    sub_100008350(v15);
  }

  v16 = *(v10 + 136);
  if (v16)
  {
    sub_100008350(v16);
  }

  sub_1000A36E8(v11, 0);
  a10 = (v10 + 96);
  sub_1000A4C6C(&a10);
  if (*(v10 + 95) < 0)
  {
    operator delete(*v12);
  }

  v19 = XPCEventPublisher.Token.rawValue.getter(v17, v18);
  XPCEventPublisher.Token.rawValue.getter(v19, v20);
  ctu::OsLogLogger::~OsLogLogger((v10 + 40));
  sub_100032AD8((v10 + 8));
  _Unwind_Resume(a1);
}

void *sub_1000A21F4(void *a1, const char *a2, dispatch_qos_class_t qos_class, const ctu::OsLogLogger *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), a4);
  return a1;
}

void sub_1000A23CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

void sub_1000A2470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A2CC0(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000A2498(uint64_t *a1, unsigned int a2, int a3)
{
  v7 = a2;
  v6 = a3;
  v4 = *a1;
  result = sub_1000CCFEC(a2);
  if (result)
  {
    sub_100035DE8(*(v4 + 144), a2);
  }

  return result;
}

void sub_1000A2570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A26A0(uint64_t a1, int a2)
{
  (*(*a1 + 32))(a1);
  if (!a2)
  {
    sub_1000A2714(a1);

    sub_1000A2798(a1);
  }
}

void sub_1000A2714(uint64_t a1)
{
  v3 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000A5978;
  block[3] = &unk_1002AEF20;
  block[4] = a1 + 8;
  block[5] = &v3;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void sub_1000A2798(uint64_t a1)
{
  v3 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000A5948;
  block[3] = &unk_1002AEF00;
  block[4] = a1 + 8;
  block[5] = &v3;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void sub_1000A29DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v7, (a1 + 8));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1000A2B08;
  v6[3] = &unk_1002AEC00;
  v6[4] = a1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_1000A4E08;
  v9[3] = &unk_1002AEE60;
  v5 = v7;
  v9[5] = v7;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[4] = v6;
  sub_100160E88(a3, (v5 + 24), v9);
  if (v10)
  {
    sub_100008350(v10);
  }

  if (v8)
  {
    sub_100008350(v8);
  }
}

void sub_1000A2AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008350(a22);
  }

  if (a15)
  {
    sub_100008350(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A2B08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "submit:#I Shutting down: flushing files to disk", v5, 2u);
  }

  v3 = v1[12];
  v4 = v1[13];
  while (v3 != v4)
  {
    sub_100059D4C(v3);
    v3 += 80;
  }
}

void sub_1000A2B88(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    sub_1000081C8(&v7, (a1 + 8));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1000A2CB8;
    v6[3] = &unk_1002AEC20;
    v6[4] = a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1174405120;
    v9[2] = sub_1000A4E08;
    v9[3] = &unk_1002AEE60;
    v5 = v7;
    v9[5] = v7;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[4] = v6;
    sub_100160E88(a3, (v5 + 24), v9);
    if (v10)
    {
      sub_100008350(v10);
    }

    if (v8)
    {
      sub_100008350(v8);
    }
  }
}

void sub_1000A2C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008350(a22);
  }

  if (a15)
  {
    sub_100008350(a15);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1000A2CC0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000A2E40(void *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  while (v2 != v3)
  {
    if (sub_100059C08(v2))
    {
      sub_100059E7C(v2);
    }

    v2 += 80;
  }

  v4 = a1[18];

  sub_100035D10(v4);
}

void sub_1000A2EA4(void *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  while (v2 != v3)
  {
    if (sub_100059C18(v2))
    {
      sub_100059E7C(v2);
    }

    v2 += 80;
  }

  v4 = a1[18];

  sub_1000363D0(v4);
}

void sub_1000A2F08(uint64_t a1, char a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1000A4F8C(&v6, a3);
  sub_1000081C8(v4, (a1 + 8));
  operator new();
}

void sub_1000A3044(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002205C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000A3054(void *a1@<X0>, dispatch_semaphore_t *a2@<X8>)
{
  v4 = dispatch_semaphore_create(0);
  *a2 = v4;
  __p[3] = a1;
  __p[4] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_100007ECC(__p, "Submit-publish");
  sub_100008BF8(__p);
}

void sub_1000A31A0(uint64_t a1, ctu *a2)
{
  pthread_mutex_lock(&stru_1002D4AB0);
  v3 = off_1002D4AF0;
  if (!off_1002D4AF0)
  {
    sub_10005DFD0();
  }

  if (*(&off_1002D4AF0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1002D4AF0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4AB0);
  sub_100060530(v3, a2);
}

void sub_1000A3294(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
    dispatch_release(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_1000081C8(&v4, (a1 + 8));
  operator new();
}

void sub_1000A34C8(void *a1)
{
  __p[3] = a1;
  sub_100007ECC(__p, "Submit-now");
  sub_100008BF8(__p);
}

void sub_1000A35F8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000081C8(&v4, (a1 + 8));
  operator new();
}

uint64_t sub_1000A36E8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100129EA4();

    operator delete();
  }

  return result;
}

void sub_1000A3A00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *__p = 0u;
  v32 = 0u;
  v33 = 1065353216;
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = &v4[v3];
    do
    {
      v6 = *v4;
      sub_100059728(*(*v4 + 8), *(*v4 + 24), &value);
      v7 = *(v6 + 12);
      if (v7 == 1)
      {
        if ((*(v6 + 20) & 1) == 0)
        {
LABEL_9:
          v7 = 0;
          goto LABEL_10;
        }

        v7 = 1;
      }

      else if (v7 != 2)
      {
        if (v7 != 3)
        {
          goto LABEL_9;
        }

        v7 = 3;
      }

LABEL_10:
      if (!__p[1])
      {
        goto LABEL_26;
      }

      v8 = vcnt_s8(__p[1]);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (__p[1] <= v7)
        {
          v9 = v7 - (v7 / LOBYTE(__p[1])) * LOBYTE(__p[1]);
        }
      }

      else
      {
        v9 = (LODWORD(__p[1]) + 3) & v7;
      }

      v10 = *(__p[0] + v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        v12 = v11[1];
        if (v12 == v7)
        {
          break;
        }

        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= __p[1])
          {
            v12 %= __p[1];
          }
        }

        else
        {
          v12 &= __p[1] - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_26;
        }

LABEL_25:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_26;
        }
      }

      if (*(v11 + 16) != v7)
      {
        goto LABEL_25;
      }

      xpc_array_append_value(v11[3], value);
      xpc_release(value);
      ++v4;
    }

    while (v4 != v5);
  }

  v13 = *(qword_1002DBE98 + 104);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "submit:#I File parsing completed. Stats follow.", buf, 2u);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v14 = v32;
  if (v32)
  {
    while (1)
    {
      v15 = *(qword_1002DBE98 + 104);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = sub_10001D04C(v14[16]);
        count = xpc_array_get_count(*(v14 + 3));
        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = count;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "submit:#I  - %s: %zd fragments", buf, 0x16u);
      }

      v18 = xpc_dictionary_create(0, 0, 0);
      v19 = v18;
      if (v18)
      {
        value = v18;
      }

      else
      {
        v19 = xpc_null_create();
        value = v19;
        if (!v19)
        {
          v20 = xpc_null_create();
          v19 = 0;
          goto LABEL_40;
        }
      }

      if (xpc_get_type(v19) != &_xpc_type_dictionary)
      {
        v20 = xpc_null_create();
LABEL_40:
        value = v20;
        goto LABEL_41;
      }

      xpc_retain(v19);
LABEL_41:
      xpc_release(v19);
      v21 = *(v14 + 3);
      v28 = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        v28 = xpc_null_create();
      }

      *buf = &value;
      *&buf[8] = "files";
      sub_1000947D8(buf, &v28, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v28);
      v28 = 0;
      *buf = v14 + 16;
      v22 = sub_1000A5BAC(a2, v14 + 16);
      v23 = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        v23 = xpc_null_create();
      }

      v24 = v22[3];
      v22[3] = v23;
      xpc_release(v24);
      xpc_release(value);
      v14 = *v14;
      if (!v14)
      {
        v25 = v32;
        if (v32)
        {
          do
          {
            v26 = *v25;
            xpc_release(v25[3]);
            operator delete(v25);
            v25 = v26;
          }

          while (v26);
        }

        break;
      }
    }
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_1000A4180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_1000A5B5C(&a21);
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A41F8(uint64_t a1)
{
  sub_1000A45C4(a1);

  operator delete();
}

void sub_1000A4238(uint64_t a1)
{
  sub_1000A45C4(a1 - 48);

  operator delete();
}

uint64_t sub_1000A4274(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    sub_100033FD0();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v8 = 0x333333333333333;
  }

  else
  {
    v8 = v6;
  }

  v20 = a1;
  if (v8)
  {
    sub_1000A43C4(a1, v8);
  }

  v17 = 0;
  v18 = 80 * v5;
  v19 = 80 * v5;
  v9 = *a4;
  v10 = *a5;
  sub_100059B84((80 * v5));
  *&v19 = 80 * v5 + 80;
  v11 = a1[1];
  v12 = 80 * v5 + *a1 - v11;
  sub_1000A441C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1000A44F4(&v17);
  return v16;
}

void sub_1000A43B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000A44F4(va);
  _Unwind_Resume(a1);
}

void sub_1000A43C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_1000A441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_1000A448C(a4, v7);
      v7 += 80;
      a4 = v8 + 80;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_100059C04(v6);
      v6 += 80;
    }
  }
}

__n128 sub_1000A448C(uint64_t a1, uint64_t a2)
{
  v3 = ctu::OsLogLogger::OsLogLogger();
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v3 + 8) = v4;
  v5 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = *(a2 + 64);
  *(v3 + 64) = result;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1000A44F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_100059C04(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000A4544(uint64_t a1)
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

uint64_t sub_1000A45C4(uint64_t a1)
{
  *a1 = off_1002AEB88;
  *(a1 + 48) = off_1002AEBD8;
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100008350(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    sub_100008350(v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    sub_100008350(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    sub_100008350(v5);
  }

  sub_1000A36E8((a1 + 120), 0);
  v11 = (a1 + 96);
  sub_1000A4C6C(&v11);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v8 = XPCEventPublisher.Token.rawValue.getter(v6, v7);
  XPCEventPublisher.Token.rawValue.getter(v8, v9);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100032AD8((a1 + 8));
  return a1;
}

void sub_1000A46A8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_100008350(v3);
    }

    v1 -= 24;
  }
}

void sub_1000A476C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000A4840);
  __cxa_rethrow();
}

void sub_1000A47AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A4800(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4840(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000A486C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = std::uncaught_exceptions();
  if (result)
  {
    std::terminate();
  }

  return result;
}

uint64_t sub_1000A48B8(uint64_t result, uint64_t a2)
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

void sub_1000A48D4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000A48E4(void *a1)
{
  *a1 = off_1002AEDC0;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000A4930(void *a1)
{
  *a1 = off_1002AEDC0;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000A49AC@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

void *sub_1000A4A78(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002AEE18;
  sub_1000A4BE0(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_1000A4B0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AEE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A4B60(uint64_t a1)
{
  sub_1000447B8(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100008350(v2);
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000A4BE0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a4 = 0;
  v7 = v5;
  WISMetadataLoader::WISMetadataLoader();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void sub_1000A4C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100204BA8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A4C6C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        sub_100059C04(v4 - 80);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000A4CF0(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  while (v3 != v4)
  {
    sub_100059C2C(v3, *(v1 + 8));
    v3 += 80;
  }

  *(v2 + 60) = *(v1 + 8);
  if (!std::uncaught_exceptions())
  {
    operator delete();
  }

  std::terminate();
}

void sub_1000A4D7C(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 63) = *(*a1 + 8);
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  while (v3 != v4)
  {
    v5 = *(v1 + 8);
    sub_100059D0C(v3);
    v3 += 80;
  }

  if (!std::uncaught_exceptions())
  {
    operator delete();
  }

  std::terminate();
}

void sub_1000A4E08(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_1000A4E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A4E88(uint64_t result, uint64_t a2)
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

void sub_1000A4EA4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000A4EB4(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFBooleanGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1000A4F38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002AEEA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A4F8C(uint64_t a1, uint64_t a2)
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

void sub_1000A500C(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *v1;
  sub_1000F61F8();
}

uint64_t *sub_1000A530C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000A4544(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1000A535C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000A53E4(result, a4);
  }

  return result;
}

void sub_1000A53C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000388A4(&a9);
  _Unwind_Resume(a1);
}

void sub_1000A53E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100038714(a1, a2);
  }

  sub_100033FD0();
}

char *sub_1000A5430(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_10000FFF8(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1000A54F0(v9);
  return v4;
}

uint64_t sub_1000A54F0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000A5528(a1);
  }

  return a1;
}

void sub_1000A5528(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_1000A5570(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_1000A2CF4(*v1);
}

uint64_t *sub_1000A569C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100008350(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }

    operator delete();
  }

  return result;
}

void sub_1000A56FC(void **a1)
{
  v9 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2[13] - v2[12]) >> 4);
    *buf = 134217984;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "submit:#I Flushing %zu files to disk", buf, 0xCu);
  }

  v5 = v2[12];
  v6 = v2[13];
  while (v5 != v6)
  {
    sub_100059D4C(v5);
    v5 += 80;
  }

  if (!std::uncaught_exceptions())
  {
    v7 = v1[1];
    if (v7)
    {
      dispatch_group_leave(v7);
      v8 = v1[1];
      if (v8)
      {
        dispatch_release(v8);
      }
    }

    operator delete();
  }

  std::terminate();
}

void sub_1000A5820(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 16);
  sub_1000A2CF4(*(v1 + 8));
}

void sub_1000A58A0(uint64_t *a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = *(**a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "submit:#I Calling sTriggerDiagnosticsUpload only", buf, 2u);
  }

  XPCEventPublisher.Token.rawValue.getter(v3, v4);
  if (!std::uncaught_exceptions())
  {
    v5 = *(v1 + 16);
    if (v5)
    {
      sub_100008350(v5);
    }

    operator delete();
  }

  std::terminate();
}

uint64_t sub_1000A5948(uint64_t a1)
{
  sub_100035C10(*(**(a1 + 40) + 144));
  result = std::uncaught_exceptions();
  if (result)
  {
    std::terminate();
  }

  return result;
}

uint64_t sub_1000A5978(uint64_t a1)
{
  sub_100035C90(*(**(a1 + 40) + 144));
  result = std::uncaught_exceptions();
  if (result)
  {
    std::terminate();
  }

  return result;
}

void sub_1000A59A8(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 168);
  *(v2 + 160) = v3;
  *(v2 + 168) = v4;
  if (v5)
  {
    sub_100008350(v5);
  }

  if (!std::uncaught_exceptions())
  {
    v6 = v1[2];
    if (v6)
    {
      sub_100008350(v6);
    }

    operator delete();
  }

  std::terminate();
}

uint64_t sub_1000A5A34(uint64_t a1)
{
  sub_1000A5A70(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000A5A70(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000A5AB4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1000A5AE4(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 62) = 0;
  sub_1000A36E8((v2 + 120), 0);
  if (!std::uncaught_exceptions())
  {
    v3 = v1[2];
    if (v3)
    {
      sub_100008350(v3);
    }

    operator delete();
  }

  std::terminate();
}

uint64_t sub_1000A5B5C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      xpc_release(v2[3]);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_1000A5BAC(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    sub_1000A5DE8();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000A5DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000A5E6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5E6C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000A5AB4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000A5EB8()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000A5EF4()
{
  if ((byte_1002D4BB0 & 1) == 0)
  {
    byte_1002D4BB0 = 1;
    return __cxa_atexit(sub_10004F8EC, &stru_1002D4B60, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000A5F30()
{
  if ((byte_1002D4B00 & 1) == 0)
  {
    byte_1002D4B00 = 1;
    return __cxa_atexit(sub_10004F8E4, &stru_1002D4AB0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000A5F6C()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000A6270(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002AEF50;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "WISMessageComponentId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "WISMessageTriggerId");
    *(a1 + 20) = xpc_dictionary_get_int64(*a2, "WISMessageSubmisssionId");
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "WISMessageTriggeringComponentId");
  }

  return a1;
}

void sub_1000A6324(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "WISMessageType", 3);
    xpc_dictionary_set_int64(v5, "WISMessageComponentId", a1[2]);
    xpc_dictionary_set_int64(v5, "WISMessageTriggerId", a1[4]);
    xpc_dictionary_set_int64(v5, "WISMessageSubmisssionId", a1[5]);
    xpc_dictionary_set_int64(v5, "WISMessageTriggeringComponentId", a1[3]);
    *a2 = v5;
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

void sub_1000A6440()
{
  if ((atomic_load_explicit(&qword_1002D8458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002D8458))
  {
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83C8, "com.apple.wis.wirelessinsightsd", "config");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83D0, "com.apple.wis.wirelessinsightsd", "conn");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83D8, "com.apple.wis.wirelessinsightsd", "file");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83E0, "com.apple.wis.wirelessinsightsd", "file.helpers");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83E8, "com.apple.wis.wirelessinsightsd", "life");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83F0, "com.apple.wis.wirelessinsightsd", "loc");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D83F8, "com.apple.wis.wirelessinsightsd", "main");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8400, "com.apple.wis.wirelessinsightsd", "metric");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8408, "com.apple.wis.wirelessinsightsd", "persist");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8410, "com.apple.wis.wirelessinsightsd", "power");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8418, "com.apple.wis.wirelessinsightsd", "prefs");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8420, "com.apple.wis.wirelessinsightsd", "rule");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8428, "com.apple.wis.wirelessinsightsd", "sanitize");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8430, "com.apple.wis.wirelessinsightsd", "submit");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8438, "com.apple.wis.wirelessinsightsd", "providers");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8440, "com.apple.wis.wirelessinsightsd", "abm");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8448, "com.apple.wis.wirelessinsightsd", "insight.config");
    ctu::OsLogLogger::OsLogLogger(&unk_1002D8450, "com.apple.wis.wirelessinsightsd", "federated.mobility");
    __cxa_atexit(sub_1000A67E8, &unk_1002D83C8, &_mh_execute_header);
    __cxa_guard_release(&qword_1002D8458);
  }

  qword_1002DBE98 = &unk_1002D83C8;
}

void sub_1000A667C(_Unwind_Exception *a1)
{
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8448);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8440);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8438);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8430);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8428);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8420);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8418);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8410);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8408);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D8400);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83F8);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83F0);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83E8);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83E0);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83D8);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83D0);
  ctu::OsLogLogger::~OsLogLogger(&unk_1002D83C8);
  __cxa_guard_abort(&qword_1002D8458);
  _Unwind_Resume(a1);
}

void sub_1000A67EC(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 136));
  ctu::OsLogLogger::~OsLogLogger((a1 + 128));
  ctu::OsLogLogger::~OsLogLogger((a1 + 120));
  ctu::OsLogLogger::~OsLogLogger((a1 + 112));
  ctu::OsLogLogger::~OsLogLogger((a1 + 104));
  ctu::OsLogLogger::~OsLogLogger((a1 + 96));
  ctu::OsLogLogger::~OsLogLogger((a1 + 88));
  ctu::OsLogLogger::~OsLogLogger((a1 + 80));
  ctu::OsLogLogger::~OsLogLogger((a1 + 72));
  ctu::OsLogLogger::~OsLogLogger((a1 + 64));
  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  ctu::OsLogLogger::~OsLogLogger((a1 + 16));
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  ctu::OsLogLogger::~OsLogLogger(a1);
}

uint64_t sub_1000A68A8(uint64_t result, int a2)
{
  *result = off_1002AEF90;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000A68CC(uint64_t a1, xpc_object_t *a2)
{
  *a1 = off_1002AEF90;
  if (xpc_get_type(*a2) == &_xpc_type_dictionary)
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "WISMessageControlMessageType");
  }

  return a1;
}

void sub_1000A6940(uint64_t a1@<X0>, void *a2@<X8>)
{
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

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v11 = xpc_int64_create(7);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v9 = a2;
  v10 = "WISMessageType";
  sub_10000F50C(&v9, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v7 = xpc_int64_create(*(a1 + 8));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v9 = a2;
  v10 = "WISMessageControlMessageType";
  sub_10000F50C(&v9, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

void sub_1000A6AC0(int a1@<W0>, void *a2@<X2>, void **a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [NSData dataWithBytesNoCopy:*a2 length:a2[1] - *a2 freeWhenDone:0];
  if (v7)
  {
    sub_1000E63AC();
    sub_1000E6110(a1, &v25, __p);
    v8 = *(qword_1002DBE98 + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = __p;
      if (SHIBYTE(v24) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "file.helpers:#N Publishing %s", buf, 0xCu);
    }

    if (SHIBYTE(v24) >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithUTF8String:v10];
    v22 = 0;
    v12 = [v7 writeToFile:v11 options:sub_100085084(a1) | 1 error:&v22];
    v13 = v22;

    if (v12)
    {
      *a3 = *__p;
      a3[2] = v24;
      a3 = __p;
    }

    else
    {
      v14 = *(qword_1002DBE98 + 24);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 domain];
        v16 = v15;
        v17 = [v15 UTF8String];
        v18 = [v13 code];
        v19 = [v13 localizedDescription];
        v20 = v19;
        v21 = [v19 UTF8String];
        *buf = 136315650;
        v28 = v17;
        v29 = 2048;
        v30 = v18;
        v31 = 2080;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "file.helpers:#E Failed to publish: %s:%ld (%s)", buf, 0x20u);
      }
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000A6D68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002205C(a1);
}

uint64_t sub_1000A6D74(uint64_t result, int a2)
{
  *result = off_1002AEFD0;
  *(result + 8) = a2;
  return result;
}

void sub_1000A6D98(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "WISMessageType", 13);
    xpc_dictionary_set_int64(v5, "WISMessageTimerId", *(a1 + 8));
    *a2 = v5;
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

void sub_1000A7258(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
    v8 = v6;
  }

  else
  {
    v9 = [&off_1002BF9C0 objectForKeyedSubscript:v5];
    v10 = v9;
    v8 = v6;
    if (v9)
    {
      v8 = v6;
      if (*(a1 + 48) == 1)
      {
        v8 = v9;
      }
    }

    v11 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FederatedMobility[FMConfiguration]:#N Missing config value for key %@, using default %@", &v12, 0x16u);
    }

    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

void sub_1000A8BAC(id a1, NSString *a2, id a3, BOOL *a4)
{
  v6 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100204D70(a2, a3, v6);
  }
}

void sub_1000A8CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A8D10(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) configAsDict];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [*(a1 + 40) objectForKeyedSubscript:v6];
  v10 = v9;
  if (!v8)
  {
    v13 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100204DF8(v6, v13);
    }

    goto LABEL_11;
  }

  if (!v9)
  {
    v11 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      v12 = "FederatedMobility[FMConfiguration]:#I Key %@ missing in other config during compatibility check";
      goto LABEL_10;
    }

LABEL_11:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_12;
  }

  if (([v9 isEqual:v8] & 1) == 0)
  {
    v11 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      v12 = "FederatedMobility[FMConfiguration]:#I Key %@ has different value in other config during compatibility check";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, &v14, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
}

uint64_t sub_1000A91A4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 == 3)
  {
    v6 = sub_1000DDBE4();
    sub_100007ECC(a2, v6);
    ctu::path_join_impl();
    return ctu::path_join_impl();
  }

  else
  {
    if (a1 == 2)
    {
      v5 = sub_1000DDBD8();
      sub_100007ECC(a2, v5);
      ctu::path_join_impl();
    }

    else
    {
      v3 = sub_1000DDBD8();
      sub_100007ECC(a2, v3);
    }

    return ctu::path_join_impl();
  }
}

void sub_1000A9278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A92A0@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1000DDBD8();
  sub_100007ECC(a1, v2);
  return ctu::path_join_impl();
}

void sub_1000A92DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000A92F8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1000DDBD8();

  return sub_100007ECC(a1, v2);
}

const void **sub_1000A9494(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_1000A94CC(uint64_t a1, const void **a2)
{
  *a1 = off_1002AF0A0;
  sub_1000A9494((a1 + 8), a2);
  return a1;
}

void sub_1000A9510(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "WISMessageType", 14);
    ctu::cf_to_xpc(&value, *(a1 + 8), v6);
    xpc_dictionary_set_value(v5, "WISAnomalyInsightPayload", value);
    xpc_release(value);
    *a2 = v5;
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

uint64_t sub_1000A9600(uint64_t a1)
{
  *a1 = off_1002AF0A0;
  sub_10001DF64((a1 + 8));
  return a1;
}

void sub_1000A9644(uint64_t a1)
{
  *a1 = off_1002AF0A0;
  sub_10001DF64((a1 + 8));

  operator delete();
}

void sub_1000A9A84(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_1000A9B04(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

uint64_t sub_1000A9BA8(uint64_t a1, double a2, double a3)
{
  XPCEventPublisher.Token.rawValue.getter(a2, a3);
  ctu::OsLogLogger::~OsLogLogger((v4 + 40));
  sub_100032AD8((a1 + 8));
  return a1;
}

void sub_1000A9BE0(uint64_t a1, double a2, double a3)
{
  XPCEventPublisher.Token.rawValue.getter(a2, a3);
  ctu::OsLogLogger::~OsLogLogger((v4 + 40));
  sub_100032AD8((a1 + 8));

  operator delete();
}

double sub_1000A9C38(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "timer:#I Init TimersManager", v5, 2u);
  }

  return XPCEventPublisher.Token.rawValue.getter(v2, v3);
}

void sub_1000A9CA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "timer:#I Starting TimersManager", v3, 2u);
  }

  sub_100062288(a1);
}

void sub_1000A9D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v5, (a1 + 8));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_1000AB82C;
  v7[3] = &unk_1002AF3B0;
  v4 = v5;
  v7[5] = v5;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = &stru_1002AF198;
  sub_100160D80(a3, (v4 + 24), v7);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v6)
  {
    sub_100008350(v6);
  }
}

void sub_1000A9DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008350(a18);
  }

  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A9E00(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    sub_1000081C8(&v9, (a1 + 8));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_1000AA038;
    v8[3] = &unk_1002AF1D8;
    v8[4] = a1;
    v14 = _NSConcreteStackBlock;
    v15 = 1174405120;
    v16 = sub_1000AB868;
    v17 = &unk_1002AF3E8;
    v7 = v9;
    v19 = v9;
    v20 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v8;
    sub_100160E88(a3, (v7 + 24), &v14);
    if (v20)
    {
      sub_100008350(v20);
    }

    v6 = v10;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else if (!a2)
  {
    sub_1000081C8(&v12, (a1 + 8));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1000AA030;
    v11[3] = &unk_1002AF1B8;
    v11[4] = a1;
    v14 = _NSConcreteStackBlock;
    v15 = 1174405120;
    v16 = sub_1000AB868;
    v17 = &unk_1002AF3E8;
    v5 = v12;
    v19 = v12;
    v20 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v11;
    sub_100160E88(a3, (v5 + 24), &v14);
    if (v20)
    {
      sub_100008350(v20);
    }

    v6 = v13;
    if (v13)
    {
LABEL_8:
      sub_100008350(v6);
    }
  }
}

void sub_1000A9FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v18 = *(v16 - 24);
  if (v18)
  {
    sub_100008350(v18);
  }

  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AA014()
{
  v1 = *(v0 - 24);
  if (v1)
  {
    sub_100008350(v1);
  }

  if (!*(v0 - 80))
  {
    JUMPOUT(0x1000AA00CLL);
  }

  JUMPOUT(0x1000AA008);
}

void sub_1000AA040(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = sub_100007ECC(&v4, "Timer-setConfig");
    sub_100008BF8(v3);
  }
}

void sub_1000AA1C4(void *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008350(v3);
  }

  sub_10002205C(a1);
}

void sub_1000AA1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008350(a11);
  }

  v13 = *(v11 - 88);
  if (v13)
  {
    sub_100008350(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1000AA220(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208))
  {
    pthread_mutex_lock(&stru_1002D4A58);
    v4 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v5 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    sub_1000E0BF0(v4, &v13);
    if (v5)
    {
      sub_100008350(v5);
    }

    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = (v13[1] - *v13) >> 4;
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "timer:#I Destroying old timers (%zd expected to be cleared)", buf, 0xCu);
    }

    v8 = *v13;
    v9 = v13[1];
    while (v8 != v9)
    {
      v10 = *(v8 + 12);
      sub_1000634A4(a1, *v8, *(v8 + 8));
      v8 += 16;
    }

    if (*(a2 + 16))
    {
      sub_100063614(a1);
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "timer:#I Creating new timers.", buf, 2u);
      }

      pthread_mutex_lock(&stru_1002D4A58);
      if (!xmmword_1002D4A98)
      {
        sub_1000927A0();
      }

      if (*(&xmmword_1002D4A98 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4A58);
      sub_1000E0B0C();
    }

    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "timer:#N The device config is empty; no timers will be set up", buf, 2u);
    }

    sub_100063520();
    if (v14)
    {
      sub_100008350(v14);
    }
  }
}

void sub_1000AA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  pthread_mutex_unlock(&stru_1002D4A58);
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1000AA6D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 > 999)
  {
    pthread_mutex_lock(&stru_1002D4A58);
    v5 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v6 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    v7 = sub_1000E0008(v5);
    if (v6)
    {
      sub_100008350(v6);
    }

    pthread_mutex_lock(&stru_1002D4A58);
    v8 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    sub_1000E0A0C(v8, a3 / 1000, a2, v7);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "timer:#E Timer interval of %lldms not supported.", &v11, 0xCu);
  }

  return a3 > 999;
}

void sub_1000AAABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AAAD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v3 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  v4 = sub_1000E08E8(v2);
  if (v3)
  {
    sub_100008350(v3);
  }

  if (v4)
  {
    sub_10006228C(v1, 1);
  }

  else
  {
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "timer:#I setPublicationTimer: timers are disabled; nothing to do", &v6, 2u);
    }
  }
}

void sub_1000AAC1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "timer:#N Publication timer fired: submitting logs", &v4, 2u);
  }

  pthread_mutex_lock(&stru_1002D4C68);
  v2 = xmmword_1002D4CA8;
  if (!xmmword_1002D4CA8)
  {
    sub_1000A1C94();
  }

  v3 = *(&xmmword_1002D4CA8 + 1);
  if (*(&xmmword_1002D4CA8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4CA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4C68);
  sub_1000A285C(v2);
  if (v3)
  {
    sub_100008350(v3);
  }
}

void sub_1000AAD28(uint64_t a1, uint64_t a2, ctu *a3, int a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v15 = 134218496;
    *&v15[4] = a2;
    *&v15[12] = 1024;
    *&v15[14] = a3;
    v16 = 1024;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "timer:#I Job ctx is %lld sec, trid=0x%x, dcid=%d", v15, 0x18u);
  }

  if (a2 >= 1 && a3 && a4)
  {
    pthread_mutex_lock(&stru_1002D4A58);
    v9 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v10 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    v11 = sub_1000E0008(v9);
    if (v10)
    {
      sub_100008350(v10);
    }

    v12 = *(a1 + 40);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == a4)
    {
      if (v13)
      {
        *v15 = 67109120;
        *&v15[4] = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "timer:#I Executing timer callback for trigger 0x%x", v15, 8u);
      }

      pthread_mutex_lock(&stru_1002D4AB0);
      v14 = off_1002D4AF0;
      if (!off_1002D4AF0)
      {
        sub_10005DFD0();
      }

      if (*(&off_1002D4AF0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1002D4AF0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4AB0);
      sub_100060530(v14, a3);
    }

    if (v13)
    {
      *v15 = 67109376;
      *&v15[4] = a3;
      *&v15[8] = 1024;
      *&v15[10] = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "timer:#I In timer callback for trigger 0x%x: device config numbers do not match (expect %d.  We've been reconfigured; ignoring.", v15, 0xEu);
    }
  }
}

void sub_1000AB030(uint64_t a1, uint64_t a2)
{
  if (a2 == 86400)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = wis::asString(1, v7);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "timer:#N Sending %s-Timer notification to client", &v11, 0xCu);
    }

    pthread_mutex_lock(&stru_1002D4CC0);
    v8 = xmmword_1002D4D00;
    if (!xmmword_1002D4D00)
    {
      sub_1000ED560();
    }

    v9 = *(&xmmword_1002D4D00 + 1);
    if (*(&xmmword_1002D4D00 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4D00 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4CC0);
    sub_1000F0314(v8, 1);
    if (v9)
    {
      sub_100008350(v9);
    }

    pthread_mutex_lock(&stru_1002D4DC8);
    v10 = xmmword_1002D4E08;
    if (!xmmword_1002D4E08)
    {
      sub_100088510();
    }

    v5 = *(&xmmword_1002D4E08 + 1);
    if (*(&xmmword_1002D4E08 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4E08 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4DC8);
    sub_100088B38(v10);
  }

  else
  {
    if (a2 != 3600)
    {
      return;
    }

    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = wis::asString(2, v3);
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "timer:#N Sending %s-Timer notification to client", &v11, 0xCu);
    }

    pthread_mutex_lock(&stru_1002D4CC0);
    v4 = xmmword_1002D4D00;
    if (!xmmword_1002D4D00)
    {
      sub_1000ED560();
    }

    v5 = *(&xmmword_1002D4D00 + 1);
    if (*(&xmmword_1002D4D00 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4D00 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4CC0);
    sub_1000F0314(v4, 2);
  }

  if (v5)
  {
    sub_100008350(v5);
  }
}

void sub_1000AB358(uint64_t a1)
{
  pthread_mutex_lock(&stru_1002D4A58);
  v2 = xmmword_1002D4A98;
  if (!xmmword_1002D4A98)
  {
    sub_1000927A0();
  }

  v3 = *(&xmmword_1002D4A98 + 1);
  if (*(&xmmword_1002D4A98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002D4A58);
  v4 = sub_1000E08E8(v2);
  if (v3)
  {
    sub_100008350(v3);
  }

  if (v4)
  {
    sub_10006228C(a1, 0);
    pthread_mutex_lock(&stru_1002D4A58);
    v5 = xmmword_1002D4A98;
    if (!xmmword_1002D4A98)
    {
      sub_1000927A0();
    }

    v6 = *(&xmmword_1002D4A98 + 1);
    if (*(&xmmword_1002D4A98 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4A98 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4A58);
    sub_1000E0BF0(v5, &v10);
    if (v6)
    {
      sub_100008350(v6);
    }

    v7 = *v10;
    v8 = v10[1];
    while (v7 != v8)
    {
      sub_100062A8C(a1, *v7, *(v7 + 8), *(v7 + 12));
      v7 += 16;
    }

    if (v11)
    {
      sub_100008350(v11);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "timer:#I Recreate timers: timers are disabled; nothing to do", buf, 2u);
    }
  }
}

void sub_1000AB610(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1000AB6E4);
  __cxa_rethrow();
}

void sub_1000AB650(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000AB6A4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AB6E4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_1000AB710(void *a1)
{
  *a1 = off_1002AF360;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000AB75C(void *a1)
{
  *a1 = off_1002AF360;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000AB7D8@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

uint64_t sub_1000AB83C(uint64_t result, uint64_t a2)
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

void sub_1000AB858(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000AB868(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_1000AB8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000AB8E8(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "timer:#I Setting new device config", buf, 2u);
  }

  sub_1000AA220(v2, v1 + 24);
  sub_1000AB994(&v6);
  return sub_1000082FC(&v5);
}

void sub_1000AB978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000AB994(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000AB994(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    awd::profile::DeviceConfiguration::~DeviceConfiguration((v1 + 24));
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1000ABA00()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000ABA3C()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000ABA78()
{
  if ((byte_1002D4CB8 & 1) == 0)
  {
    byte_1002D4CB8 = 1;
    return __cxa_atexit(sub_10004F8F8, &stru_1002D4C68, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000ABAB4()
{
  if ((byte_1002D4B00 & 1) == 0)
  {
    byte_1002D4B00 = 1;
    return __cxa_atexit(sub_10004F8E4, &stru_1002D4AB0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000ABAF0()
{
  if ((byte_1002D4D10 & 1) == 0)
  {
    byte_1002D4D10 = 1;
    return __cxa_atexit(sub_10004F8FC, &stru_1002D4CC0, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000ABB2C()
{
  if ((byte_1002D4E18 & 1) == 0)
  {
    byte_1002D4E18 = 1;
    return __cxa_atexit(sub_10004F908, &stru_1002D4DC8, &_mh_execute_header);
  }

  return result;
}

void sub_1000ABD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000ABD78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000ABD90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate now];
  v5 = [*(a1 + 32) getOrCreateCellMapNodeWithContext:v3 andCellMapCongestionMetric:*(a1 + 40)];
  if (v5)
  {
    if ([*(a1 + 32) updateCellMapNode:v5 withMetric:*(a1 + 40) updateConnDuration:+[FMCoreData isFMCellMapCongestionMetricCongested:](FMCoreData andContext:"isFMCellMapCongestionMetricCongested:" atTime:{*(a1 + 40)), v3, v4}])
    {
      v6 = [v5 objectID];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(a1 + 48);
      if (v9)
      {
        v14 = 0;
        v10 = [v3 existingObjectWithID:v9 error:&v14];
        v11 = v14;
        v12 = v11;
        if (!v10 || v11)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_100204F60();
          }
        }

        else
        {
          v13 = [*(a1 + 32) getOrCreateCellMapEdgeWithContext:v3 sourceNode:v10 destinationNode:v5];
          if (v13)
          {
            if (([*(a1 + 32) updateCellMapEdge:v13 withContext:v3 atTime:v4] & 1) == 0 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
            {
              sub_100204EE8();
            }
          }

          else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
          {
            sub_100204F24();
          }
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100204FD4();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100204EAC();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_100205014();
  }
}

void sub_1000AC024(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = +[FMConfiguration sharedInstance];
  [v3 deleteOldestCellMapNodesAndEdgesOverThreshold:objc_msgSend(v4 withContext:{"FMCellMapMaxNumNodesInDatabase"), v5}];
}

void sub_1000AC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1000AC230(uint64_t a1, void *a2)
{
  v22 = a2;
  v23 = [*(a1 + 32) fetchCellMapNodeWithGCI:*(a1 + 40) andContext:?];
  if (v23)
  {
    v3 = *(a1 + 32);
    v4 = +[FMConfiguration sharedInstance];
    v5 = [v3 fetchCellMapEdgesOfCellMapNode:v23 maxCount:objc_msgSend(v4 withContext:{"FMCellMapMaxNumPredictionNeighbors"), v22}];

    v21 = v5;
    if (v5)
    {
      v6 = [*(a1 + 32) fmCellMapNodeFromCellMapNode:v23 edgeSeenCount:0];
      v20 = v6;
      if (v6)
      {
        v7 = [FMCoreData isFMCellMapNodeCongested:v6];
        v8 = objc_alloc_init(NSMutableArray);
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = v5;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v24 + 1) + 8 * i);
              v14 = [v13 destination];
              v15 = [*(a1 + 32) fmCellMapNodeFromCellMapNode:v14 edgeSeenCount:{objc_msgSend(v13, "seenCount")}];
              if (v15)
              {
                [v8 addObject:v15];
                if (v7)
                {
                  v7 = 1;
                }

                else
                {
                  v7 = [FMCoreData isFMCellMapNodeCongested:v15];
                }
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v10);
        }

        if (v7)
        {
          v16 = [[FMCellMapPrediction alloc] initWithNeighborCells:v8 currentCell:v20];
          v17 = *(*(a1 + 48) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_100205050();
        }
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100205090();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100205104();
    }
  }

  else
  {
    v19 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100205178((a1 + 40), v19);
    }
  }
}

uint64_t sub_1000ACB10(uint64_t result, char a2, char a3, char a4)
{
  *result = off_1002AF460;
  *(result + 8) = 0;
  *(result + 12) = a2;
  *(result + 13) = a3;
  *(result + 14) = a4;
  return result;
}

uint64_t sub_1000ACB40(uint64_t result, int a2, char a3, char a4, char a5)
{
  *result = off_1002AF460;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 13) = a4;
  *(result + 14) = a5;
  return result;
}

void sub_1000ACB70(uint64_t a1@<X0>, void *a2@<X8>)
{
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

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_int64_create(8);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageType";
  sub_10000F50C(&v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v13 = xpc_int64_create(*(a1 + 8));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageComponentId";
  sub_10000F50C(&v15, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_int64_create(*(a1 + 12));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessagePII";
  sub_10000F50C(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(*(a1 + 13));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageLocKey";
  sub_10000F50C(&v15, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = xpc_int64_create(*(a1 + 14));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v15 = a2;
  v16 = "WISMessageShimKey";
  sub_10000F50C(&v15, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

uint64_t *sub_1000ACE04(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  v12 = a2;
  v13 = "InvestigationId";
  sub_100007DA4(&v12, &object);
  v5 = xpc::dyn_cast_or_default(&object, 0, v4);
  xpc_release(object);
  v12 = a2;
  v13 = "Config";
  sub_100007DA4(&v12, &object);
  if (xpc_get_type(object) == &_xpc_type_null)
  {
    v7 = *qword_1002DBE98;
    if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "config:#N No config specifed -> load the default", &v12, 2u);
    }

    sub_10012A0AC();
  }

  if (xpc_get_type(object) != &_xpc_type_data)
  {
    v6 = *qword_1002DBE98;
    if (os_log_type_enabled(*qword_1002DBE98, OS_LOG_TYPE_ERROR))
    {
      sub_10020524C(v6);
    }

    operator new();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(object);
  length = xpc_data_get_length(object);
  WISTimestamp = wis::getWISTimestamp(length);
  sub_100136CD8(a1, bytes_ptr, length, v5, WISTimestamp, 4);
  xpc_release(object);
  return a1;
}

void sub_1000AD044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  v15 = *v13;
  *v13 = 0;
  if (v15)
  {
    sub_100070504(v13, v15);
  }

  v16 = *v12;
  *v12 = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  _Unwind_Resume(a1);
}

void *sub_1000AF400(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    __dst[3] = v4;
  }

  else
  {
    v5 = xpc_null_create();
    __dst[3] = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    v6 = xpc_null_create();
LABEL_11:
    __dst[3] = v6;
    goto LABEL_12;
  }

  xpc_retain(v5);
LABEL_12:
  xpc_release(v5);
  return __dst;
}

uint64_t sub_1000AF4D4(uint64_t a1)
{
  sub_1000AF520(a1);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000AF520(uint64_t *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v15 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v15 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v15 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = strlen(CASendEventOptionKeyLogPayload);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023410();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v14 = v5;
  if (v5)
  {
    memmove(&__dst, CASendEventOptionKeyLogPayload, v5);
  }

  *(&__dst + v6) = 0;
  v11 = xpc_BOOL_create(1);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  p_dst = &__dst;
  if (v14 < 0)
  {
    p_dst = __dst;
  }

  v10[0] = &v15;
  v10[1] = p_dst;
  sub_10000F50C(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  v9 = a1[3];
  analytics_send_event_with_options();
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  xpc_release(v15);
}

void sub_1000AF6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1000AF740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void sub_1000AF780(uint64_t a1, void **a2)
{
  v4 = (a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 8);
  switch(v5)
  {
    case '(':
      v9 = *a1;
      if (!memcmp(*a1, "com.apple.Baseband.cellularNrDlPdcpStats", 0x28uLL))
      {
        v12 = *a2;
        v19 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v19 = xpc_null_create();
        }

        sub_1000B1E7C(&v19);
        xpc_release(v19);
      }

      else
      {
        if (memcmp(v9, "com.apple.Baseband.cellularNrUlPdcpStats", 0x28uLL))
        {
          goto LABEL_2;
        }

        v10 = *a2;
        v18 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v18 = xpc_null_create();
        }

        sub_1000B28B8(&v18);
        xpc_release(v18);
      }

      break;
    case '+':
      v8 = *a1;
      if (memcmp(*a1, "com.apple.Baseband.cellularVoiceLastCallEnd", 0x2BuLL))
      {
        if (!memcmp(v8, "com.apple.Baseband.cellularMobilityPerfInfo", 0x2BuLL))
        {
          sub_1000AFB90(&v17, a2);
          sub_1000B3438(&v17);
          xpc_release(v17);
          return;
        }

        goto LABEL_2;
      }

      v21 = *a2;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        v21 = xpc_null_create();
      }

      sub_1000B152C(&v21);
      xpc_release(v21);
      break;
    case '.':
      v6 = *a1;
      if (memcmp(*a1, "com.apple.Baseband.cellularSIValidationFailure", 0x2EuLL))
      {
        if (!memcmp(v6, "com.apple.Baseband.cellularDynamicRatSelection", 0x2EuLL))
        {
          v7 = *a2;
          v20 = v7;
          if (v7)
          {
            xpc_retain(v7);
          }

          else
          {
            v20 = xpc_null_create();
          }

          sub_1000B1B60(&v20);
          xpc_release(v20);
          return;
        }

LABEL_2:
        if (sub_1000B06AC(a1, "com.apple.Baseband.cellularNrScgRemoval"))
        {
          sub_1000AFB90(&object, a2);
          sub_1000B3DF4(&object);
          xpc_release(object);
        }

        else if (sub_1000B06AC(a1, "com.apple.Baseband.cellularSftLlcReg"))
        {
          sub_1000AFB90(&v15, a2);
          sub_1000B46C0(&v15);
          xpc_release(v15);
        }

        else if (sub_1000B06AC(a1, "com.apple.Baseband.cellularRrcConnEvent"))
        {
          sub_1000AFB90(&v14, a2);
          sub_1000B4CA0(&v14);
          xpc_release(v14);
        }

        else if (sub_1000B06AC(a1, "com.apple.Baseband.cellularDataStallMitigation"))
        {
          sub_1000AFB90(&v13, a2);
          sub_1000B586C(&v13);
          xpc_release(v13);
        }

        else
        {
          v11 = *(qword_1002DBE98 + 112);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_100205B80(v4, a1, v11);
          }
        }

        return;
      }

      v22 = *a2;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v22 = xpc_null_create();
      }

      sub_1000B0730(&v22);
      xpc_release(v22);
      break;
    default:
      goto LABEL_2;
  }
}

void **sub_1000AFB90(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  return a1;
}

void sub_1000AFBD4(std::string::size_type a1, uint64_t a2)
{
  if (sub_100010FD4())
  {
    if (*(a1 + 23) < 0)
    {
      sub_10000FFF8(__p, *a1, *(a1 + 8));
    }

    else
    {
      *__p = *a1;
      v7 = *(a1 + 16);
    }

    v4 = sub_100013AF8(__p);
    v5 = v4;
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
      if (!v5)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    sub_1000AFD80(a1, a2);
  }
}

void sub_1000AFD80(std::string::size_type a1, uint64_t a2)
{
  v4 = strlen("com.apple.AVConference.IMSCallSummaryStats");
  v5 = v4;
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    if (v4 != *(a1 + 8))
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_1000C3798();
    }

    v7 = *a1;
  }

  else
  {
    v7 = a1;
    if (v5 != v6)
    {
      goto LABEL_8;
    }
  }

  if (!memcmp(v7, "com.apple.AVConference.IMSCallSummaryStats", v5))
  {

    sub_1000B60C8(0, a2);
    return;
  }

LABEL_8:
  v8 = strlen("com.apple.AVConference.IMSCallAudioFrameStats");
  v9 = v8;
  if ((v6 & 0x80000000) != 0)
  {
    if (v8 != *(a1 + 8))
    {
      goto LABEL_15;
    }

    if (v8 == -1)
    {
      sub_1000C3798();
    }

    v10 = *a1;
  }

  else
  {
    v10 = a1;
    if (v9 != v6)
    {
      goto LABEL_15;
    }
  }

  if (!memcmp(v10, "com.apple.AVConference.IMSCallAudioFrameStats", v9))
  {

    sub_1000B6944(0, a2);
    return;
  }

LABEL_15:
  v11 = strlen("com.apple.AVConference.IMSCallAudioDistortionSummary");
  v12 = v11;
  if ((v6 & 0x80000000) != 0)
  {
    if (v11 != *(a1 + 8))
    {
      goto LABEL_22;
    }

    if (v11 == -1)
    {
      sub_1000C3798();
    }

    v13 = *a1;
  }

  else
  {
    v13 = a1;
    if (v12 != v6)
    {
      goto LABEL_22;
    }
  }

  if (!memcmp(v13, "com.apple.AVConference.IMSCallAudioDistortionSummary", v12))
  {

    sub_1000B7234(a1, a2);
    return;
  }

LABEL_22:
  v14 = strlen("com.apple.Telephony.RCSMessageSendReceive");
  v15 = v14;
  if ((v6 & 0x80000000) != 0)
  {
    if (v14 != *(a1 + 8))
    {
      goto LABEL_29;
    }

    if (v14 == -1)
    {
      sub_1000C3798();
    }

    v16 = *a1;
  }

  else
  {
    v16 = a1;
    if (v15 != v6)
    {
      goto LABEL_29;
    }
  }

  if (!memcmp(v16, "com.apple.Telephony.RCSMessageSendReceive", v15))
  {

    sub_1000B7B4C(a1, a2);
    return;
  }

LABEL_29:
  v17 = strlen("com.apple.Telephony.RCSMessageProvisionRegistration");
  v18 = v17;
  if ((v6 & 0x80000000) == 0)
  {
    v19 = a1;
    if (v18 != v6)
    {
      goto LABEL_39;
    }

LABEL_38:
    if (!memcmp(v19, "com.apple.Telephony.RCSMessageProvisionRegistration", v18))
    {

      sub_1000B8280(a1, a2);
      return;
    }

    goto LABEL_39;
  }

  if (v17 == *(a1 + 8))
  {
    if (v17 == -1)
    {
      sub_1000C3798();
    }

    v19 = *a1;
    goto LABEL_38;
  }

LABEL_39:
  v20 = strlen("com.apple.Telephony.RCSMessageProvisioning");
  v21 = v20;
  if ((v6 & 0x80000000) != 0)
  {
    if (v20 != *(a1 + 8))
    {
      goto LABEL_49;
    }

    if (v20 == -1)
    {
      sub_1000C3798();
    }

    v22 = *a1;
  }

  else
  {
    v22 = a1;
    if (v21 != v6)
    {
LABEL_49:
      if (sub_1000B06AC(a1, "com.apple.Telephony.RCSMessageSessionSetup"))
      {

        sub_1000B90F0(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.RCSPagerMessageSendReceive"))
      {

        sub_1000B98B0(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.RCSMSRPMessageSendReceive"))
      {

        sub_1000BA044(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.metricCCStwCPSummary"))
      {

        sub_1000BA7D8(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.metricCCStwRequest"))
      {

        sub_1000BAE08(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.metricCCStwMessageOutgoing"))
      {

        sub_1000BB484(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.telephony.metricCCStwMessageIncoming"))
      {

        sub_1000BBDA8(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.IDS.QualifiedContacts"))
      {

        sub_1000BC2E4(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Messages.IMMetricsCollectorEventSMSSentMessageSingleComponent"))
      {

        sub_1000BC6FC(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Messages.IMMetricsCollectorEventIMessageSentMessageSingleComponent"))
      {

        sub_1000BCEAC(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.IDS.OffTheGridMode"))
      {

        sub_1000BD688(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.atm_Registration_Result"))
      {

        sub_1000BDB60(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.RCSSIPRefer"))
      {

        sub_1000BDDBC(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.RCSMessageSIPOptions"))
      {

        sub_1000BE588(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.RCSMessageSessionEnd"))
      {

        sub_1000BEC14(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.setupassistant.ios.activation"))
      {

        sub_1000BF274(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Messages.IMMetricsCollectorEventSentMessage"))
      {

        sub_1000BF74C(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.hsarHealthMonitor"))
      {

        sub_1000C0358(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.DNSResolution"))
      {

        sub_1000C0994(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.RCSServerTermination"))
      {

        sub_1000C0EFC(a1, a2);
      }

      else if (sub_1000B06AC(a1, "com.apple.Telephony.UnifiedCTMessage"))
      {

        sub_1000C1510(a1, a2);
      }

      else if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
      {
        sub_100205BF8((a1 + 23), a1);
      }

      return;
    }
  }

  if (memcmp(v22, "com.apple.Telephony.RCSMessageProvisioning", v21))
  {
    goto LABEL_49;
  }

  sub_1000B86DC(a1, a2);
}

BOOL sub_1000B06AC(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1000C3798();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_1000B0730(std::string::size_type a1)
{
  sub_100007ECC(&__str, "");
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  p_p = &__p;
  sub_100013A6C(&__p, size + 14);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, p_str, size);
  }

  strcpy(p_p + size, "failure_cause:");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  *&v74 = a1;
  *(&v74 + 1) = "failure_cause";
  sub_100007DA4(&v74, &v71);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__str;
  }

  else
  {
    v5 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = __str.__r_.__value_.__l.__size_;
  }

  v7 = std::string::insert(&v72, 0, v5, v6);
  v8 = v7->__r_.__value_.__r.__words[0];
  *v75 = v7->__r_.__value_.__l.__size_;
  *&v75[7] = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v8;
  __str.__r_.__value_.__l.__size_ = *v75;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *&v75[7];
  *(&__str.__r_.__value_.__s + 23) = v9;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  xpc_release(v71);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  v11 = &__p;
  sub_100013A6C(&__p, v10 + 11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__str;
    }

    else
    {
      v12 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v11, v12, v10);
  }

  strcpy(v11 + v10, " frequency:");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  v72.__r_.__value_.__r.__words[0] = a1;
  v72.__r_.__value_.__l.__size_ = "frequency";
  sub_100007DA4(&v72, v75);
  v14 = xpc::dyn_cast_or_default(v75, 0, v13);
  std::to_string(&__p, v14);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__str;
  }

  else
  {
    v15 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __str.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&__p, 0, v15, v16);
  v18 = v17->__r_.__value_.__r.__words[0];
  *&v74 = v17->__r_.__value_.__l.__size_;
  *(&v74 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v18;
  __str.__r_.__value_.__l.__size_ = v74;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v74 + 7);
  *(&__str.__r_.__value_.__s + 23) = v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(*v75);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = __str.__r_.__value_.__l.__size_;
  }

  v21 = &__p;
  sub_100013A6C(&__p, v20 + 11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__str;
    }

    else
    {
      v22 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v21, v22, v20);
  }

  strcpy(v21 + v20, " main_plmn:");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  *&v74 = a1;
  *(&v74 + 1) = "main_plmn";
  sub_100007DA4(&v74, &v71);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &__str;
  }

  else
  {
    v23 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __str.__r_.__value_.__l.__size_;
  }

  v25 = std::string::insert(&v72, 0, v23, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  *v75 = v25->__r_.__value_.__l.__size_;
  *&v75[7] = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v26;
  __str.__r_.__value_.__l.__size_ = *v75;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *&v75[7];
  *(&__str.__r_.__value_.__s + 23) = v27;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  xpc_release(v71);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __str.__r_.__value_.__l.__size_;
  }

  v29 = &__p;
  sub_100013A6C(&__p, v28 + 5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if (v28)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &__str;
    }

    else
    {
      v30 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " rat:");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  *&v74 = a1;
  *(&v74 + 1) = "rat";
  sub_100007DA4(&v74, &v71);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &__str;
  }

  else
  {
    v31 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = __str.__r_.__value_.__l.__size_;
  }

  v33 = std::string::insert(&v72, 0, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  *v75 = v33->__r_.__value_.__l.__size_;
  *&v75[7] = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v34;
  __str.__r_.__value_.__l.__size_ = *v75;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *&v75[7];
  *(&__str.__r_.__value_.__s + 23) = v35;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  xpc_release(v71);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = __str.__r_.__value_.__l.__size_;
  }

  v37 = &__p;
  sub_100013A6C(&__p, v36 + 6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = __p.__r_.__value_.__r.__words[0];
  }

  if (v36)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &__str;
    }

    else
    {
      v38 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v37, v38, v36);
  }

  strcpy(v37 + v36, " band:");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  v72.__r_.__value_.__r.__words[0] = a1;
  v72.__r_.__value_.__l.__size_ = "band";
  sub_100007DA4(&v72, v75);
  v40 = xpc::dyn_cast_or_default(v75, 0, v39);
  std::to_string(&__p, v40);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &__str;
  }

  else
  {
    v41 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = __str.__r_.__value_.__l.__size_;
  }

  v43 = std::string::insert(&__p, 0, v41, v42);
  v44 = v43->__r_.__value_.__r.__words[0];
  *&v74 = v43->__r_.__value_.__l.__size_;
  *(&v74 + 7) = *(&v43->__r_.__value_.__r.__words[1] + 7);
  v45 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v44;
  __str.__r_.__value_.__l.__size_ = v74;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v74 + 7);
  *(&__str.__r_.__value_.__s + 23) = v45;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(*v75);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = __str.__r_.__value_.__l.__size_;
  }

  v47 = &__p;
  sub_100013A6C(&__p, v46 + 16);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = __p.__r_.__value_.__r.__words[0];
  }

  if (v46)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &__str;
    }

    else
    {
      v48 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(v47, v48, v46);
  }

  strcpy(v47 + v46, " barring_time_s:");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = __p;
  v72.__r_.__value_.__r.__words[0] = a1;
  v72.__r_.__value_.__l.__size_ = "barring_time_s";
  sub_100007DA4(&v72, v75);
  v50 = xpc::dyn_cast_or_default(v75, 0, v49);
  std::to_string(&__p, v50);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &__str;
  }

  else
  {
    v51 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = __str.__r_.__value_.__l.__size_;
  }

  v53 = std::string::insert(&__p, 0, v51, v52);
  v54 = v53->__r_.__value_.__r.__words[0];
  *&v74 = v53->__r_.__value_.__l.__size_;
  *(&v74 + 7) = *(&v53->__r_.__value_.__r.__words[1] + 7);
  v55 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = v54;
  __str.__r_.__value_.__l.__size_ = v74;
  *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v74 + 7);
  *(&__str.__r_.__value_.__s + 23) = v55;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(*v75);
  sub_100007ECC(&__p, "Cellular");
  memset(&v69, 0, sizeof(v69));
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v70 = 65537;
  std::string::assign(&v66, "Rat Retention");
  std::string::assign((&v67 + 8), "SI Validation Failure");
  std::string::operator=(&v69, &__str);
  v56 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    LOWORD(v72.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularSIValidationFailure", &v72, 2u);
  }

  sub_1000C367C(__dst, &__p);
  sub_1001075F8(__dst);
  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (v60 < 0)
  {
    operator delete(v59);
  }

  if (v58 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(*(&v67 + 1));
  }

  if (SBYTE7(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000B10F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 __p, int a24, __int16 a25, char a26, char a27)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&__p);
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000B152C(uint64_t a1)
{
  sub_100007ECC(&v38, "null");
  sub_100007ECC(&v36, "null");
  sub_100007ECC(&v34, "null");
  sub_100007ECC(&__str, "null");
  sub_100007ECC(&v32, "");
  v27 = a1;
  v28 = "type_of_call";
  sub_100007DA4(&v27, &v29);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  v38 = buf;
  v39 = v31;
  HIBYTE(v31) = 0;
  LOBYTE(buf) = 0;
  xpc_release(v29);
  v27 = a1;
  v28 = "dynamic_type";
  sub_100007DA4(&v27, &v29);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  v36 = buf;
  v37 = v31;
  HIBYTE(v31) = 0;
  LOBYTE(buf) = 0;
  xpc_release(v29);
  v27 = a1;
  v28 = "gci";
  sub_100007DA4(&v27, &v29);
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  v34 = buf;
  v35 = v31;
  HIBYTE(v31) = 0;
  LOBYTE(buf) = 0;
  xpc_release(v29);
  if (SHIBYTE(v39) < 0)
  {
    if (*(&v38 + 1) != 5)
    {
      goto LABEL_16;
    }

    v2 = v38;
  }

  else
  {
    if (SHIBYTE(v39) != 5)
    {
      goto LABEL_16;
    }

    v2 = &v38;
  }

  v3 = *v2;
  v4 = *(v2 + 4);
  if (v3 == 1414295382 && v4 == 69)
  {
    if (SHIBYTE(v37) < 0)
    {
      if (*(&v36 + 1) == 10 && *v36 == 0x5F43494D414E5944 && *(v36 + 8) == 16723)
      {
LABEL_49:
        std::string::assign(&__str, "Dynamic VoNR/SA False Positive");
        std::operator+<char>();
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v32 = __p;
        sub_100007ECC(&__p, "Cellular");
        memset(&v25, 0, sizeof(v25));
        v24 = 0u;
        v23 = 0u;
        v22 = 0u;
        v26 = 65537;
        std::string::assign(&v22, "IMS Call KPI");
        std::string::operator=((&v23 + 8), &__str);
        std::string::operator=(&v25, &v32);
        v12 = *(qword_1002DBE98 + 112);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularVoiceLastCallEnd", &buf, 2u);
        }

        sub_1000C367C(__dst, &__p);
        sub_1001075F8(__dst);
        if (v20 < 0)
        {
          operator delete(v19);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (v14 < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(*(&v23 + 1));
        }

        if (SBYTE7(v23) < 0)
        {
          operator delete(v22);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_16;
      }

      if (*(&v36 + 1) != 12)
      {
        goto LABEL_16;
      }

      v6 = v36;
    }

    else
    {
      if (HIBYTE(v37) == 10)
      {
        if (v36 != 0x5F43494D414E5944 || WORD4(v36) != 16723)
        {
          goto LABEL_16;
        }

        goto LABEL_49;
      }

      if (HIBYTE(v37) != 12)
      {
        goto LABEL_16;
      }

      v6 = &v36;
    }

    v8 = *v6;
    v9 = *(v6 + 2);
    if (v8 != 0x5F43494D414E5944 || v9 != 1380872022)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_16:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }
}

void sub_1000B19E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&__p);
  if (*(v28 - 153) < 0)
  {
    operator delete(*(v28 - 176));
  }

  if (*(v28 - 129) < 0)
  {
    operator delete(*(v28 - 152));
  }

  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_1000B1B60(void *a1)
{
  sub_100007ECC(&__str, "null");
  sub_100007ECC(&v22, "");
  v14[0] = a1;
  v14[1] = "is_decision_to_switch";
  sub_100007DA4(v14, buf);
  v3 = xpc::dyn_cast_or_default(buf, 0, v2);
  xpc_release(*buf);
  v14[0] = a1;
  v14[1] = "is_drs_switch_successful";
  sub_100007DA4(v14, buf);
  LOBYTE(a1) = xpc::dyn_cast_or_default(buf, 0, v4);
  xpc_release(*buf);
  if (!(a1 & 1 | ((v3 & 1) == 0)))
  {
    std::string::assign(&__str, "Switch Failed");
    std::string::assign(&v22, "is_decision_to_switch:true is_drs_switch_successful:false");
    sub_100007ECC(v14, "Cellular");
    memset(&v19, 0, sizeof(v19));
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v20 = 65537;
    std::string::assign(&v16, "Dynamic RAT Selection");
    std::string::operator=((&v17 + 8), &__str);
    std::string::operator=(&v19, &v22);
    v5 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularDynamicRatSelection", buf, 2u);
    }

    sub_1000C367C(v6, v14);
    sub_1001075F8(v6);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(*(&v17 + 1));
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000B1D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1000C20C4(&a9);
  sub_1000C20C4(&a22);
  if (*(v22 - 57) < 0)
  {
    operator delete(*(v22 - 80));
  }

  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_1000B1E7C(std::string::size_type a1)
{
  *buf = a1;
  v44 = "rb_is_srb";
  sub_100007DA4(buf, object);
  v3 = xpc::dyn_cast_or_default(object, 0, v2);
  xpc_release(object[0]);
  if (v3)
  {
    v4 = *(qword_1002DBE98 + 112);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v5 = "WISABC:#I rb_is_srb is false for Event: cellularNrDlPdcpStats and hence skipping rule";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    return;
  }

  *buf = a1;
  v44 = "rb_pdu_discard_perc_bin_index";
  sub_100007DA4(buf, object);
  v7 = xpc::dyn_cast_or_default(object, 0, v6);
  xpc_release(object[0]);
  if (v7 <= 12)
  {
    v4 = *(qword_1002DBE98 + 112);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v5 = "WISABC:#I rb_pdu_discard_perc_bin_index did not satisfy trigger condition for Event: cellularNrDlPdcpStats and hence skipping rule";
    goto LABEL_7;
  }

  sub_100007ECC(&v52, "");
  sub_100007ECC(&v50, "");
  sub_100007ECC(&v48, "");
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "deployment";
  sub_100007DA4(&__str, v47);
  *buf = 0;
  v44 = 0;
  v45[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v45[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v52 = *object;
  v53 = v36;
  HIBYTE(v36) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v47);
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "rb_rb_mode";
  sub_100007DA4(&__str, v47);
  *buf = 0;
  v44 = 0;
  v45[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v45[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  v50 = *object;
  v51 = v36;
  HIBYTE(v36) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v47);
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "reason";
  sub_100007DA4(&__str, v47);
  *buf = 0;
  v44 = 0;
  v45[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v45[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  v48 = *object;
  v49 = v36;
  HIBYTE(v36) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v47);
  *buf = a1;
  v44 = "is_data_preferred";
  sub_100007DA4(buf, object);
  xpc::dyn_cast_or_default(object, 0, v8);
  xpc_release(object[0]);
  *buf = a1;
  v44 = "is_dc_active";
  sub_100007DA4(buf, object);
  xpc::dyn_cast_or_default(object, 0, v9);
  xpc_release(object[0]);
  *buf = a1;
  v44 = "is_vonr_active";
  sub_100007DA4(buf, object);
  xpc::dyn_cast_or_default(object, 0, v10);
  xpc_release(object[0]);
  sub_10000A448(buf);
  v11 = sub_100008EEC(buf, "deployment: ", 12);
  if (v53 >= 0)
  {
    v12 = &v52;
  }

  else
  {
    v12 = v52;
  }

  if (v53 >= 0)
  {
    v13 = HIBYTE(v53);
  }

  else
  {
    v13 = *(&v52 + 1);
  }

  v14 = sub_100008EEC(v11, v12, v13);
  v15 = sub_100008EEC(v14, " rb_rb_mode: ", 13);
  if (v51 >= 0)
  {
    v16 = &v50;
  }

  else
  {
    v16 = v50;
  }

  if (v51 >= 0)
  {
    v17 = HIBYTE(v51);
  }

  else
  {
    v17 = *(&v50 + 1);
  }

  v18 = sub_100008EEC(v15, v16, v17);
  v19 = sub_100008EEC(v18, " reason: ", 9);
  if (v49 >= 0)
  {
    v20 = &v48;
  }

  else
  {
    v20 = v48;
  }

  if (v49 >= 0)
  {
    v21 = HIBYTE(v49);
  }

  else
  {
    v21 = *(&v48 + 1);
  }

  v22 = sub_100008EEC(v19, v20, v21);
  sub_100008EEC(v22, " is_data_preferred: ", 20);
  v23 = std::ostream::operator<<();
  sub_100008EEC(v23, " is_dc_active: ", 15);
  v24 = std::ostream::operator<<();
  sub_100008EEC(v24, " is_vonr_active: ", 17);
  v25 = std::ostream::operator<<();
  sub_100008EEC(v25, " rb_pdu_discard_perc_bin_index: ", 32);
  std::ostream::operator<<();
  std::stringbuf::str();
  sub_100007ECC(object, "Cellular");
  memset(&v40, 0, sizeof(v40));
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v41 = 65537;
  std::string::assign(&v37, "PDCP Performance");
  std::string::assign((&v38 + 8), "DL PDCP Discard Rate");
  std::string::operator=(&v40, &__str);
  v26 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularNrDlPdcpStats", v47, 2u);
  }

  sub_1000C367C(__dst, object);
  sub_1001075F8(__dst);
  if (v34 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(*(&v38 + 1));
  }

  if (SBYTE7(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(object[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  std::locale::~locale(v45);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }
}

void sub_1000B2544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&object);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a42);
  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1000B28B8(std::string::size_type a1)
{
  *buf = a1;
  v48 = "rb_is_srb";
  sub_100007DA4(buf, object);
  v3 = xpc::dyn_cast_or_default(object, 0, v2);
  xpc_release(object[0]);
  if (v3)
  {
    v4 = *(qword_1002DBE98 + 112);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v5 = "WISABC:#I rb_is_srb is false for Event: cellularNrUlPdcpStats and hence skipping rule";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    return;
  }

  *buf = a1;
  v48 = "rb_pdu_discard_perc_bin_index";
  sub_100007DA4(buf, object);
  v7 = xpc::dyn_cast_or_default(object, 0, v6);
  xpc_release(object[0]);
  if (v7 <= 11)
  {
    v4 = *(qword_1002DBE98 + 112);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v5 = "WISABC:#I rb_pdu_discard_perc_bin_index did not satisfy trigger condition for Event: cellularNrUlPdcpStats and hence skipping rule";
    goto LABEL_7;
  }

  sub_100007ECC(&v58, "");
  sub_100007ECC(&v56, "");
  sub_100007ECC(&v54, "");
  sub_100007ECC(&v52, "");
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "deployment";
  sub_100007DA4(&__str, v51);
  *buf = 0;
  v48 = 0;
  v49[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v49[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v58 = *object;
  v59 = v40;
  HIBYTE(v40) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v51);
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "rb_rb_mode";
  sub_100007DA4(&__str, v51);
  *buf = 0;
  v48 = 0;
  v49[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v49[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  v56 = *object;
  v57 = v40;
  HIBYTE(v40) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v51);
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "reason";
  sub_100007DA4(&__str, v51);
  *buf = 0;
  v48 = 0;
  v49[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v49[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  v54 = *object;
  v55 = v40;
  HIBYTE(v40) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v51);
  __str.__r_.__value_.__r.__words[0] = a1;
  __str.__r_.__value_.__l.__size_ = "rb_rat";
  sub_100007DA4(&__str, v51);
  *buf = 0;
  v48 = 0;
  v49[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v49[0].__locale_) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v52 = *object;
  v53 = v40;
  HIBYTE(v40) = 0;
  LOBYTE(object[0]) = 0;
  xpc_release(*v51);
  *buf = a1;
  v48 = "is_data_preferred";
  sub_100007DA4(buf, object);
  xpc::dyn_cast_or_default(object, 0, v8);
  xpc_release(object[0]);
  *buf = a1;
  v48 = "is_dc_active";
  sub_100007DA4(buf, object);
  xpc::dyn_cast_or_default(object, 0, v9);
  xpc_release(object[0]);
  *buf = a1;
  v48 = "is_vonr_active";
  sub_100007DA4(buf, object);
  xpc::dyn_cast_or_default(object, 0, v10);
  xpc_release(object[0]);
  sub_10000A448(buf);
  v11 = sub_100008EEC(buf, "deployment: ", 12);
  if (v59 >= 0)
  {
    v12 = &v58;
  }

  else
  {
    v12 = v58;
  }

  if (v59 >= 0)
  {
    v13 = HIBYTE(v59);
  }

  else
  {
    v13 = *(&v58 + 1);
  }

  v14 = sub_100008EEC(v11, v12, v13);
  v15 = sub_100008EEC(v14, " rb_rb_mode: ", 13);
  if (v57 >= 0)
  {
    v16 = &v56;
  }

  else
  {
    v16 = v56;
  }

  if (v57 >= 0)
  {
    v17 = HIBYTE(v57);
  }

  else
  {
    v17 = *(&v56 + 1);
  }

  v18 = sub_100008EEC(v15, v16, v17);
  v19 = sub_100008EEC(v18, " reason: ", 9);
  if (v55 >= 0)
  {
    v20 = &v54;
  }

  else
  {
    v20 = v54;
  }

  if (v55 >= 0)
  {
    v21 = HIBYTE(v55);
  }

  else
  {
    v21 = *(&v54 + 1);
  }

  v22 = sub_100008EEC(v19, v20, v21);
  sub_100008EEC(v22, " is_data_preferred: ", 20);
  v23 = std::ostream::operator<<();
  sub_100008EEC(v23, " is_dc_active: ", 15);
  v24 = std::ostream::operator<<();
  sub_100008EEC(v24, " is_vonr_active: ", 17);
  v25 = std::ostream::operator<<();
  v26 = sub_100008EEC(v25, " rb_rat: ", 9);
  if (v53 >= 0)
  {
    v27 = &v52;
  }

  else
  {
    v27 = v52;
  }

  if (v53 >= 0)
  {
    v28 = HIBYTE(v53);
  }

  else
  {
    v28 = *(&v52 + 1);
  }

  v29 = sub_100008EEC(v26, v27, v28);
  sub_100008EEC(v29, " rb_pdu_discard_perc_bin_index: ", 32);
  std::ostream::operator<<();
  std::stringbuf::str();
  sub_100007ECC(object, "Cellular");
  memset(&v44, 0, sizeof(v44));
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v45 = 65537;
  std::string::assign(&v41, "PDCP Performance");
  std::string::assign((&v42 + 8), "UL PDCP Discard Rate");
  std::string::operator=(&v44, &__str);
  v30 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularNrUlPdcpStats", v51, 2u);
  }

  sub_1000C367C(__dst, object);
  sub_1001075F8(__dst);
  if (v38 < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  if (SBYTE7(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(object[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  std::locale::~locale(v49);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }
}

void sub_1000B3040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&object);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a42);
  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1000B3438(std::string::size_type a1)
{
  sub_100007ECC(&v48, "");
  *&v46 = a1;
  *(&v46 + 1) = "mobility_status";
  sub_100007DA4(&v46, &v44);
  __p = 0;
  v36 = 0;
  v37[0].__locale_ = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  v48 = *v27;
  v49 = v28;
  HIBYTE(v28) = 0;
  LOBYTE(v27[0]) = 0;
  xpc_release(v44);
  if (SHIBYTE(v49) < 0 && *(&v48 + 1) == 52 && !memcmp(v48, "MOBILITY_STATUS_FAILURE_MOBILITY_MSG_VALIDATION_FAIL", 0x34uLL))
  {
    sub_100007ECC(&v46, "");
    sub_100007ECC(&v44, "");
    sub_100007ECC(&v42, "");
    sub_100007ECC(&v40, "");
    __str.__r_.__value_.__r.__words[0] = a1;
    __str.__r_.__value_.__l.__size_ = "mobility_type";
    sub_100007DA4(&__str, buf);
    __p = 0;
    v36 = 0;
    v37[0].__locale_ = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v37[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }

    v46 = *v27;
    v47 = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27[0]) = 0;
    xpc_release(*buf);
    __str.__r_.__value_.__r.__words[0] = a1;
    __str.__r_.__value_.__l.__size_ = "source_operating_mode";
    sub_100007DA4(&__str, buf);
    __p = 0;
    v36 = 0;
    v37[0].__locale_ = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v37[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    v42 = *v27;
    v43 = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27[0]) = 0;
    xpc_release(*buf);
    __str.__r_.__value_.__r.__words[0] = a1;
    __str.__r_.__value_.__l.__size_ = "target_operating_mode";
    sub_100007DA4(&__str, buf);
    __p = 0;
    v36 = 0;
    v37[0].__locale_ = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v37[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    v40 = *v27;
    v41 = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27[0]) = 0;
    xpc_release(*buf);
    __str.__r_.__value_.__r.__words[0] = a1;
    __str.__r_.__value_.__l.__size_ = "mobilityTrigger";
    sub_100007DA4(&__str, buf);
    __p = 0;
    v36 = 0;
    v37[0].__locale_ = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v37[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v44 = *v27;
    v45 = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27[0]) = 0;
    xpc_release(*buf);
    sub_10000A448(&__p);
    v3 = sub_100008EEC(&__p, "trigger: ", 9);
    if (v45 >= 0)
    {
      v4 = &v44;
    }

    else
    {
      v4 = v44;
    }

    if (v45 >= 0)
    {
      v5 = HIBYTE(v45);
    }

    else
    {
      v5 = *(&v44 + 1);
    }

    v6 = sub_100008EEC(v3, v4, v5);
    v7 = sub_100008EEC(v6, " source_mode: ", 14);
    if (v43 >= 0)
    {
      v8 = &v42;
    }

    else
    {
      v8 = v42;
    }

    if (v43 >= 0)
    {
      v9 = HIBYTE(v43);
    }

    else
    {
      v9 = *(&v42 + 1);
    }

    v10 = sub_100008EEC(v7, v8, v9);
    v11 = sub_100008EEC(v10, " target_mode: ", 14);
    if (v41 >= 0)
    {
      v12 = &v40;
    }

    else
    {
      v12 = v40;
    }

    if (v41 >= 0)
    {
      v13 = HIBYTE(v41);
    }

    else
    {
      v13 = *(&v40 + 1);
    }

    v14 = sub_100008EEC(v11, v12, v13);
    v15 = sub_100008EEC(v14, " status: ", 9);
    if (v49 >= 0)
    {
      v16 = &v48;
    }

    else
    {
      v16 = v48;
    }

    if (v49 >= 0)
    {
      v17 = HIBYTE(v49);
    }

    else
    {
      v17 = *(&v48 + 1);
    }

    sub_100008EEC(v15, v16, v17);
    if ((atomic_load_explicit(&qword_1002D8590, memory_order_acquire) & 1) == 0)
    {
      sub_100205E14(&v46);
    }

    std::stringbuf::str();
    sub_100007ECC(v27, "Cellular");
    memset(&v32, 0, sizeof(v32));
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v33 = 65537;
    std::string::assign(&v29, "Mobility");
    std::string::assign((&v30 + 8), qword_1002D8588);
    std::string::operator=(&v32, &__str);
    v18 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularMobilityPerfInfo", buf, 2u);
    }

    sub_1000C367C(__dst, v27);
    sub_1001075F8(__dst);
    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    std::locale::~locale(v37);
    std::ostream::~ostream();
    std::ios::~ios();
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }
  }

  else
  {
    v2 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "WISABC:#I Skipping ABC, invalid mobility_status value for event: cellularMobilityPerfInfo", &__p, 2u);
    }
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }
}

void sub_1000B3AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&a23);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a42);
  if (*(v47 - 185) < 0)
  {
    operator delete(*(v47 - 208));
  }

  if (*(v47 - 153) < 0)
  {
    operator delete(*(v47 - 176));
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1000B3DF4(uint64_t a1)
{
  sub_100007ECC(&v11, "");
  v10[0] = a1;
  v10[1] = "rel_reason";
  sub_100007DA4(v10, &v9);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  v11 = *v6;
  v12 = v7;
  HIBYTE(v7) = 0;
  LOBYTE(v6[0]) = 0;
  xpc_release(v9);
  if (SHIBYTE(v12) < 0 && *(&v11 + 1) == 20)
  {
    v2 = *v11 == 0x4F4345525F474353 && *(v11 + 8) == 0x4941465F4749464ELL;
    if (v2 && *(v11 + 16) == 1163023692 && *v11 == 0x4F4345525F47434DLL && *(v11 + 8) == 0x4941465F4749464ELL)
    {
      v2 = *(v11 + 16) == 1163023692;
    }
  }

  v5 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WISABC:#I Skipping ABC, invalid rel_reason value for event: cellularNrScgRemoval", __p, 2u);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_1000B4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&a23);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a42);
  if (*(v47 - 153) < 0)
  {
    operator delete(*(v47 - 176));
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1000B4644(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v44 - 144));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_100205E64();
    }

    __cxa_end_catch();
    JUMPOUT(0x1000B3FA8);
  }

  JUMPOUT(0x1000B4628);
}

void sub_1000B46C0(void *a1)
{
  *buf = a1;
  v30 = "is_reg_success";
  sub_100007DA4(buf, &v34);
  if (xpc::dyn_cast_or_default(&v34, 0, v2))
  {
    v21[0] = a1;
    v21[1] = "last_bi_preamble_snr";
    sub_100007DA4(v21, &object);
    v4 = xpc::dyn_cast_or_default(&object, 0, v3);
    xpc_release(object.__r_.__value_.__l.__data_);
    v5 = v4 < -26;
  }

  else
  {
    v5 = 0;
  }

  xpc_release(v34);
  if (v5)
  {
    v6 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WISABC:#I Skipping ABC, criteria not met for event: cellularSftLlcReg", buf, 2u);
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0;
    object.__r_.__value_.__r.__words[0] = a1;
    object.__r_.__value_.__l.__size_ = "reg_latency_sec_bin_index";
    sub_100007DA4(&object, v33);
    *buf = 0;
    v30 = 0;
    v31[0].__locale_ = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v31[0].__locale_) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    v34 = *v21;
    v35 = v22;
    HIBYTE(v22) = 0;
    LOBYTE(v21[0]) = 0;
    xpc_release(*v33);
    sub_10000A448(buf);
    sub_100008EEC(buf, "last_bi_preamble_snr:", 21);
    v21[0] = a1;
    v21[1] = "last_bi_preamble_snr";
    sub_100007DA4(v21, &object);
    xpc::dyn_cast_or_default(&object, 0, v7);
    v8 = std::ostream::operator<<();
    v9 = sub_100008EEC(v8, " reg_latency_sec_bin_index:", 27);
    if (v35 >= 0)
    {
      v10 = &v34;
    }

    else
    {
      v10 = v34;
    }

    if (v35 >= 0)
    {
      v11 = HIBYTE(v35);
    }

    else
    {
      v11 = *(&v34 + 1);
    }

    sub_100008EEC(v9, v10, v11);
    xpc_release(object.__r_.__value_.__l.__data_);
    std::stringbuf::str();
    sub_100007ECC(v21, "Cellular");
    memset(&v26, 0, sizeof(v26));
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v27 = 65537;
    std::string::assign(&v23, "STW");
    std::string::assign((&v24 + 8), "Reg failure in decent RF: snr > -26");
    std::string::operator=(&v26, &object);
    v12 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularSftLlcReg", v33, 2u);
    }

    sub_1000C367C(__dst, v21);
    sub_1001075F8(__dst);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(*(&v24 + 1));
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }

    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    std::locale::~locale(v31);
    std::ostream::~ostream();
    std::ios::~ios();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }
  }
}

void sub_1000B4B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&a23);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a42);
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1000B4CA0(std::string::size_type a1)
{
  sub_100007ECC(&__str, "null");
  sub_10000A448(&v70);
  sub_10000A448(&v66);
  *&__p = a1;
  *(&__p + 1) = "is_rrc_setup_success";
  sub_100007DA4(&__p, &object);
  v3 = xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object.__r_.__value_.__l.__data_);
  if ((v3 & 1) == 0)
  {
    std::string::assign(&__str, "RRC Assessibility");
    v8 = sub_100008EEC(&v66, "sim_hplmn:", 10);
    v62 = a1;
    v63 = "sim_hplmn";
    sub_100007DA4(&v62, &v64);
    __p = 0uLL;
    v46 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_object = &object;
    }

    else
    {
      p_object = object.__r_.__value_.__r.__words[0];
    }

    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(object.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = object.__r_.__value_.__l.__size_;
    }

    v11 = sub_100008EEC(v8, p_object, size);
    v12 = sub_100008EEC(v11, " plmn:", 6);
    v58 = a1;
    v59 = "plmn";
    sub_100007DA4(&v58, &v60);
    __p = 0uLL;
    v46 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v61;
    }

    else
    {
      v13 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v61.__r_.__value_.__l.__size_;
    }

    v15 = sub_100008EEC(v12, v13, v14);
    v16 = sub_100008EEC(v15, " rrc_setup_failure_reason:", 26);
    v52 = a1;
    v53 = "rrc_setup_failure_reason";
    sub_100007DA4(&v52, &v54);
    __p = 0uLL;
    v46 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if ((v57 & 0x80u) == 0)
    {
      v17 = &v55;
    }

    else
    {
      v17 = v55;
    }

    if ((v57 & 0x80u) == 0)
    {
      v18 = v57;
    }

    else
    {
      v18 = v56;
    }

    sub_100008EEC(v16, v17, v18);
    if (v57 < 0)
    {
      operator delete(v55);
    }

    xpc_release(v54);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    xpc_release(v60);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }

    goto LABEL_67;
  }

  *&__p = a1;
  *(&__p + 1) = "is_rrc_setup_success";
  sub_100007DA4(&__p, &v61);
  if (xpc::dyn_cast_or_default(&v61, 0, v4))
  {
    object.__r_.__value_.__r.__words[0] = a1;
    object.__r_.__value_.__l.__size_ = "is_rrc_release_success";
    sub_100007DA4(&object, &v55);
    v6 = xpc::dyn_cast_or_default(&v55, 0, v5);
    xpc_release(v55);
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  xpc_release(v61.__r_.__value_.__l.__data_);
  if (v7)
  {
    std::string::assign(&__str, "RRC Retainability");
    v19 = sub_100008EEC(&v66, "sim_hplmn:", 10);
    v62 = a1;
    v63 = "sim_hplmn";
    sub_100007DA4(&v62, &v64);
    __p = 0uLL;
    v46 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &object;
    }

    else
    {
      v20 = object.__r_.__value_.__r.__words[0];
    }

    if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(object.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = object.__r_.__value_.__l.__size_;
    }

    v22 = sub_100008EEC(v19, v20, v21);
    v23 = sub_100008EEC(v22, " plmn:", 6);
    v58 = a1;
    v59 = "plmn";
    sub_100007DA4(&v58, &v60);
    __p = 0uLL;
    v46 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v61;
    }

    else
    {
      v24 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v61.__r_.__value_.__l.__size_;
    }

    v26 = sub_100008EEC(v23, v24, v25);
    v27 = sub_100008EEC(v26, " rrc_release_reason:", 20);
    v52 = a1;
    v53 = "rrc_release_reason";
    sub_100007DA4(&v52, &v54);
    __p = 0uLL;
    v46 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if ((v57 & 0x80u) == 0)
    {
      v28 = &v55;
    }

    else
    {
      v28 = v55;
    }

    if ((v57 & 0x80u) == 0)
    {
      v29 = v57;
    }

    else
    {
      v29 = v56;
    }

    sub_100008EEC(v27, v28, v29);
    if (v57 < 0)
    {
      operator delete(v55);
    }

    xpc_release(v54);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    xpc_release(v60);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }

LABEL_67:
    xpc_release(v64);
    sub_100008EEC(&v70, "is_gfnw_plmn:", 13);
    *&__p = a1;
    *(&__p + 1) = "is_gfnw_plmn";
    sub_100007DA4(&__p, &v61);
    xpc::dyn_cast_or_default(&v61, 0, v30);
    v31 = std::ostream::operator<<();
    sub_100008EEC(v31, " is_redcap:", 11);
    object.__r_.__value_.__r.__words[0] = a1;
    object.__r_.__value_.__l.__size_ = "is_redcap";
    sub_100007DA4(&object, &v55);
    xpc::dyn_cast_or_default(&v55, 0, v32);
    std::ostream::operator<<();
    xpc_release(v55);
    xpc_release(v61.__r_.__value_.__l.__data_);
    std::stringbuf::str();
    std::stringbuf::str();
    sub_100007ECC(&__p, "Cellular");
    memset(&v50, 0, sizeof(v50));
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v51 = 65537;
    std::string::operator=(&v47, &__str);
    std::string::operator=((&v48 + 8), &object);
    std::string::operator=(&v50, &v61);
    v33 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      LOWORD(v55) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularRrcConnEvent", &v55, 2u);
    }

    sub_1000C367C(__dst, &__p);
    sub_1001075F8(__dst);
    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(*(&v48 + 1));
    }

    if (SBYTE7(v48) < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(object.__r_.__value_.__l.__data_);
    }

    goto LABEL_91;
  }

  v34 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "WISABC:#I Skipping ABC, required conditions not met for event: cellularRrcConnEvent", &__p, 2u);
  }

LABEL_91:
  if (v69 < 0)
  {
    operator delete(v68[7].__locale_);
  }

  std::locale::~locale(v68);
  std::ostream::~ostream();
  std::ios::~ios();
  v70 = v35;
  *(&v70 + *(v35 - 3)) = v36;
  if (v73 < 0)
  {
    operator delete(v72[7].__locale_);
  }

  std::locale::~locale(v72);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000B554C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, xpc_object_t object, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, xpc_object_t a47, xpc_object_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, xpc_object_t a56, xpc_object_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  xpc_release(a47);
  if (a62 < 0)
  {
    operator delete(a57);
  }

  xpc_release(a56);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_100205F30();
    }

    __cxa_end_catch();
    JUMPOUT(0x1000B536CLL);
  }

  sub_100039C48(&a63);
  sub_100039C48(&STACK[0x270]);
  if (*(v63 - 49) < 0)
  {
    operator delete(*(v63 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1000B586C(void *a1)
{
  *buf = a1;
  v43 = "exit_reason";
  sub_100007DA4(buf, &object);
  v3 = xpc::dyn_cast_or_default(&object, 0, v2);
  xpc_release(object);
  if (v3 == 32)
  {
    v4 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "WISABC:#I Skipping ABC, criteria not met for event: cellularDataStallMitigation", buf, 2u);
    }
  }

  else
  {
    sub_10000A448(buf);
    sub_100008EEC(buf, "traffic_type:", 13);
    object = a1;
    v37 = "traffic_type";
    sub_100007DA4(&object, &v33);
    xpc::dyn_cast_or_default(&v33, 0, v5);
    v6 = std::ostream::operator<<();
    sub_100008EEC(v6, " prediction_valid:", 18);
    v26[0] = a1;
    v26[1] = "prediction_valid";
    sub_100007DA4(v26, v41);
    xpc::dyn_cast_or_default(v41, 0, v7);
    v8 = std::ostream::operator<<();
    sub_100008EEC(v8, " prediction_suppressed:", 23);
    __str.__r_.__value_.__r.__words[0] = a1;
    __str.__r_.__value_.__l.__size_ = "prediction_suppressed";
    sub_100007DA4(&__str, &v40);
    xpc::dyn_cast_or_default(&v40, 0, v9);
    std::ostream::operator<<();
    xpc_release(v40);
    xpc_release(v41[0]);
    xpc_release(v33.__r_.__value_.__l.__data_);
    sub_10000A448(&object);
    sub_100008EEC(&object, "exit_reason:", 12);
    v26[0] = a1;
    v26[1] = "exit_reason";
    sub_100007DA4(v26, v41);
    xpc::dyn_cast_or_default(v41, 0, v10);
    v11 = std::ostream::operator<<();
    sub_100008EEC(v11, " is_dl_tput_better:", 19);
    __str.__r_.__value_.__r.__words[0] = a1;
    __str.__r_.__value_.__l.__size_ = "dl_Tput_change_max";
    sub_100007DA4(&__str, &v40);
    xpc::dyn_cast_or_default(&v40, 0, v12);
    v13 = std::ostream::operator<<();
    sub_100008EEC(v13, " is_ul_tput_better:", 19);
    v33.__r_.__value_.__r.__words[0] = a1;
    v33.__r_.__value_.__l.__size_ = "ul_Tput_change_max";
    sub_100007DA4(&v33, &v35);
    xpc::dyn_cast_or_default(&v35, 0, v14);
    std::ostream::operator<<();
    xpc_release(v35);
    xpc_release(v40);
    xpc_release(v41[0]);
    std::stringbuf::str();
    std::stringbuf::str();
    sub_100007ECC(v26, "Cellular");
    memset(&v31, 0, sizeof(v31));
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v32 = 65537;
    std::string::assign(&v28, "Data Stall Mitigation");
    std::string::operator=((&v29 + 8), &__str);
    std::string::operator=(&v31, &v33);
    v15 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: cellularDataStallMitigation", v41, 2u);
    }

    sub_1000C367C(__dst, v26);
    sub_1001075F8(__dst);
    if (v25 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*(&v29 + 1));
    }

    if (SBYTE7(v29) < 0)
    {
      operator delete(v28);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    std::locale::~locale(v38);
    std::ostream::~ostream();
    std::ios::~ios();
    *buf = v16;
    *&buf[*(v16 - 24)] = v17;
    if (v45 < 0)
    {
      operator delete(v44[7].__locale_);
    }

    std::locale::~locale(v44);
    std::ostream::~ostream();
    std::ios::~ios();
  }
}

void sub_1000B5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, xpc_object_t a48, xpc_object_t a49)
{
  sub_1000C20C4(&a10);
  sub_1000C20C4(&a23);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_100039C48(&a49);
  sub_100039C48(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_1000B60C8(int a1, uint64_t a2)
{
  v3 = sub_1000C2128(a2, "cellularSignalBars");
  LODWORD(v41.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v3, &v41);
  if (SLODWORD(v41.__r_.__value_.__l.__data_) > 2)
  {
    sub_100007ECC(&__str, "");
    v4 = sub_1000C2128(a2, "frameErasureRateMean");
    LODWORD(v41.__r_.__value_.__l.__data_) = 0;
    sub_1000C3DC4(v4, &v41);
    if (SLODWORD(v41.__r_.__value_.__l.__data_) < 14)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
      {
        sub_100206084();
      }
    }

    else
    {
      std::string::assign(&__str, "Frame Erasure Rate");
      sub_100007ECC(&v47, "");
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v47.__r_.__value_.__l.__size_;
      }

      v6 = &v41;
      sub_100013A6C(&v41, size + 9);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = v41.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v47;
        }

        else
        {
          v7 = v47.__r_.__value_.__r.__words[0];
        }

        memmove(v6, v7, size);
      }

      strcpy(v6 + size, "callType:");
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v47 = v41;
      v8 = sub_1000C2128(a2, "callType");
      v49 = 0;
      sub_1000C3DC4(v8, &v49);
      sub_1000C1F58(v49, &v41);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v47;
      }

      else
      {
        v9 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = v47.__r_.__value_.__l.__size_;
      }

      v11 = std::string::insert(&v41, 0, v9, v10);
      v12 = v11->__r_.__value_.__r.__words[0];
      *buf = v11->__r_.__value_.__l.__size_;
      *&buf[7] = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v47.__r_.__value_.__r.__words[0] = v12;
      v47.__r_.__value_.__l.__size_ = *buf;
      *(&v47.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
      *(&v47.__r_.__value_.__s + 23) = v13;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v47.__r_.__value_.__l.__size_;
      }

      v15 = &v41;
      sub_100013A6C(&v41, v14 + 20);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v41.__r_.__value_.__r.__words[0];
      }

      if (v14)
      {
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v47;
        }

        else
        {
          v16 = v47.__r_.__value_.__r.__words[0];
        }

        memmove(v15, v16, v14);
      }

      strcpy(v15 + v14, " cellularSignalBars:");
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v47 = v41;
      v17 = sub_1000C2128(a2, "cellularSignalBars");
      v50 = 0;
      sub_1000C3DC4(v17, &v50);
      std::to_string(&v41, v50);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v47;
      }

      else
      {
        v18 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v47.__r_.__value_.__l.__size_;
      }

      v20 = std::string::insert(&v41, 0, v18, v19);
      v21 = v20->__r_.__value_.__r.__words[0];
      *buf = v20->__r_.__value_.__l.__size_;
      *&buf[7] = *(&v20->__r_.__value_.__r.__words[1] + 7);
      v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v47.__r_.__value_.__r.__words[0] = v21;
      v47.__r_.__value_.__l.__size_ = *buf;
      *(&v47.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
      *(&v47.__r_.__value_.__s + 23) = v22;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v47.__r_.__value_.__l.__size_;
      }

      v24 = &v41;
      sub_100013A6C(&v41, v23 + 5);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v41.__r_.__value_.__r.__words[0];
      }

      if (v23)
      {
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v47;
        }

        else
        {
          v25 = v47.__r_.__value_.__r.__words[0];
        }

        memmove(v24, v25, v23);
      }

      strcpy(v24 + v23, " RAT:");
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v47 = v41;
      v26 = sub_1000C2128(a2, "cellularRadioTech");
      sub_1000C22F0(v26, &v41);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v47;
      }

      else
      {
        v27 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v47.__r_.__value_.__l.__size_;
      }

      v29 = std::string::insert(&v41, 0, v27, v28);
      v30 = v29->__r_.__value_.__r.__words[0];
      *buf = v29->__r_.__value_.__l.__size_;
      *&buf[7] = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      v47.__r_.__value_.__r.__words[0] = v30;
      v47.__r_.__value_.__l.__size_ = *buf;
      *(&v47.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
      *(&v47.__r_.__value_.__s + 23) = v31;
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      sub_100007ECC(&v41, "Cellular");
      memset(&v45, 0, sizeof(v45));
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v46 = 65537;
      std::string::assign(&v42, "Audio Quality");
      std::string::operator=((&v43 + 8), &__str);
      std::string::operator=(&v45, &v47);
      v32 = *(qword_1002DBE98 + 112);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: IMSCallSummaryStats", buf, 2u);
      }

      sub_1000C367C(v33, &v41);
      sub_1001075F8(v33);
      if (v40 < 0)
      {
        operator delete(__p);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v36 < 0)
      {
        operator delete(v35);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(*(&v43 + 1));
      }

      if (SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
  {
    sub_100206118();
  }
}