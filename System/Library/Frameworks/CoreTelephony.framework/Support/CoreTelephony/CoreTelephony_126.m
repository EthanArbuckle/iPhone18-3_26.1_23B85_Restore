void sub_101144284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  sub_10113A8AC(&a62);
  _Unwind_Resume(a1);
}

void sub_101144498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1011439D4(a1, a2, a3);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_100034C50(&v66, *a4, *(a4 + 8), *(a4 + 8) - *a4);
  if (*(a4 + 47) < 0)
  {
    sub_100005F2C(&v69, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v69 = *(a4 + 24);
    v70 = *(a4 + 40);
  }

  if (*(a4 + 71) < 0)
  {
    sub_100005F2C(&v71, *(a4 + 48), *(a4 + 56));
  }

  else
  {
    v71 = *(a4 + 48);
    v72 = *(a4 + 64);
  }

  v73 = *(a4 + 72);
  v59 = 0;
  v60 = 0;
  v58 = 0;
  sub_100034C50(&v58, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(&v61, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v61 = *(a3 + 24);
    v62 = *(a3 + 40);
  }

  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(&v63, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    v63 = *(a3 + 48);
    v64 = *(a3 + 64);
  }

  v65 = *(a3 + 72);
  v8 = v66;
  v9 = v58;
  if (v59 - v58 >= v67 - v66)
  {
    v10 = v67 - v66;
  }

  else
  {
    v10 = v59 - v58;
  }

  if (v10 < 1)
  {
LABEL_19:
    v13 = v67 - v66 < v59 - v58;
  }

  else
  {
    while (1)
    {
      v11 = *v8;
      v12 = *v9;
      if (v11 != v12)
      {
        break;
      }

      ++v8;
      ++v9;
      if (!--v10)
      {
        goto LABEL_19;
      }
    }

    v13 = v11 < v12;
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v13)
  {
    sub_1011404EC(a3, a4);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    sub_100034C50(&v50, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v53, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v53 = *(a3 + 24);
      v54 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&v55, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      v55 = *(a3 + 48);
      v56 = *(a3 + 64);
    }

    v57 = *(a3 + 72);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    sub_100034C50(&v42, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&v45, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v45 = *(a2 + 24);
      v46 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(&__p, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      __p = *(a2 + 48);
      v48 = *(a2 + 64);
    }

    v49 = *(a2 + 72);
    v14 = v50;
    v15 = v42;
    if (v43 - v42 >= v51 - v50)
    {
      v16 = v51 - v50;
    }

    else
    {
      v16 = v43 - v42;
    }

    if (v16 < 1)
    {
LABEL_52:
      v19 = v51 - v50 < v43 - v42;
    }

    else
    {
      while (1)
      {
        v17 = *v14;
        v18 = *v15;
        if (v17 != v18)
        {
          break;
        }

        ++v14;
        ++v15;
        if (!--v16)
        {
          goto LABEL_52;
        }
      }

      v19 = v17 < v18;
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v19)
    {
      sub_1011404EC(a2, a3);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_100034C50(&v34, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v37, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v37 = *(a2 + 24);
        v38 = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        sub_100005F2C(&v39, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v39 = *(a2 + 48);
        v40 = *(a2 + 64);
      }

      v41 = *(a2 + 72);
      v27 = 0;
      v28 = 0;
      v26 = 0;
      sub_100034C50(&v26, *a1, *(a1 + 8), *(a1 + 8) - *a1);
      if (*(a1 + 47) < 0)
      {
        sub_100005F2C(v29, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        *v29 = *(a1 + 24);
        v30 = *(a1 + 40);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(v31, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *v31 = *(a1 + 48);
        v32 = *(a1 + 64);
      }

      v33 = *(a1 + 72);
      v20 = v34;
      v21 = v26;
      if (v27 - v26 >= v35 - v34)
      {
        v22 = v35 - v34;
      }

      else
      {
        v22 = v27 - v26;
      }

      if (v22 < 1)
      {
LABEL_85:
        v25 = v35 - v34 < v27 - v26;
      }

      else
      {
        while (1)
        {
          v23 = *v20;
          v24 = *v21;
          if (v23 != v24)
          {
            break;
          }

          ++v20;
          ++v21;
          if (!--v22)
          {
            goto LABEL_85;
          }
        }

        v25 = v23 < v24;
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[0]);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v25)
      {
        sub_1011404EC(a1, a2);
      }
    }
  }
}

void sub_1011449F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  sub_10113A8AC(&a22);
  _Unwind_Resume(a1);
}

void sub_101144B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_101144498(a1, a2, a3, a4);
  v90 = 0;
  v91 = 0;
  v92 = 0;
  sub_100034C50(&v90, *a5, *(a5 + 8), *(a5 + 8) - *a5);
  if (*(a5 + 47) < 0)
  {
    sub_100005F2C(&v93, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    v93 = *(a5 + 24);
    v94 = *(a5 + 40);
  }

  if (*(a5 + 71) < 0)
  {
    sub_100005F2C(&v95, *(a5 + 48), *(a5 + 56));
  }

  else
  {
    v95 = *(a5 + 48);
    v96 = *(a5 + 64);
  }

  v97 = *(a5 + 72);
  v83 = 0;
  v84 = 0;
  v82 = 0;
  sub_100034C50(&v82, *a4, *(a4 + 8), *(a4 + 8) - *a4);
  if (*(a4 + 47) < 0)
  {
    sub_100005F2C(&v85, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v85 = *(a4 + 24);
    v86 = *(a4 + 40);
  }

  if (*(a4 + 71) < 0)
  {
    sub_100005F2C(&v87, *(a4 + 48), *(a4 + 56));
  }

  else
  {
    v87 = *(a4 + 48);
    v88 = *(a4 + 64);
  }

  v89 = *(a4 + 72);
  v10 = v90;
  v11 = v82;
  if (v83 - v82 >= v91 - v90)
  {
    v12 = v91 - v90;
  }

  else
  {
    v12 = v83 - v82;
  }

  if (v12 < 1)
  {
LABEL_19:
    v15 = v91 - v90 < v83 - v82;
  }

  else
  {
    while (1)
    {
      v13 = *v10;
      v14 = *v11;
      if (v13 != v14)
      {
        break;
      }

      ++v10;
      ++v11;
      if (!--v12)
      {
        goto LABEL_19;
      }
    }

    v15 = v13 < v14;
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95);
  }

  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v15)
  {
    sub_1011404EC(a4, a5);
    v74 = 0;
    v75 = 0;
    v76 = 0;
    sub_100034C50(&v74, *a4, *(a4 + 8), *(a4 + 8) - *a4);
    if (*(a4 + 47) < 0)
    {
      sub_100005F2C(&v77, *(a4 + 24), *(a4 + 32));
    }

    else
    {
      v77 = *(a4 + 24);
      v78 = *(a4 + 40);
    }

    if (*(a4 + 71) < 0)
    {
      sub_100005F2C(&v79, *(a4 + 48), *(a4 + 56));
    }

    else
    {
      v79 = *(a4 + 48);
      v80 = *(a4 + 64);
    }

    v81 = *(a4 + 72);
    v67 = 0;
    v68 = 0;
    v66 = 0;
    sub_100034C50(&v66, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v69, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v69 = *(a3 + 24);
      v70 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&__p, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      __p = *(a3 + 48);
      v72 = *(a3 + 64);
    }

    v73 = *(a3 + 72);
    v16 = v74;
    v17 = v66;
    if (v67 - v66 >= v75 - v74)
    {
      v18 = v75 - v74;
    }

    else
    {
      v18 = v67 - v66;
    }

    if (v18 < 1)
    {
LABEL_52:
      v21 = v75 - v74 < v67 - v66;
    }

    else
    {
      while (1)
      {
        v19 = *v16;
        v20 = *v17;
        if (v19 != v20)
        {
          break;
        }

        ++v16;
        ++v17;
        if (!--v18)
        {
          goto LABEL_52;
        }
      }

      v21 = v19 < v20;
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v21)
    {
      sub_1011404EC(a3, a4);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      sub_100034C50(&v58, *a3, *(a3 + 8), *(a3 + 8) - *a3);
      if (*(a3 + 47) < 0)
      {
        sub_100005F2C(&v61, *(a3 + 24), *(a3 + 32));
      }

      else
      {
        v61 = *(a3 + 24);
        v62 = *(a3 + 40);
      }

      if (*(a3 + 71) < 0)
      {
        sub_100005F2C(&v63, *(a3 + 48), *(a3 + 56));
      }

      else
      {
        v63 = *(a3 + 48);
        v64 = *(a3 + 64);
      }

      v65 = *(a3 + 72);
      v51 = 0;
      v52 = 0;
      v50 = 0;
      sub_100034C50(&v50, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v53, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v53 = *(a2 + 24);
        v54 = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        sub_100005F2C(&v55, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v55 = *(a2 + 48);
        v56 = *(a2 + 64);
      }

      v57 = *(a2 + 72);
      v22 = v58;
      v23 = v50;
      if (v51 - v50 >= v59 - v58)
      {
        v24 = v59 - v58;
      }

      else
      {
        v24 = v51 - v50;
      }

      if (v24 < 1)
      {
LABEL_85:
        v27 = v59 - v58 < v51 - v50;
      }

      else
      {
        while (1)
        {
          v25 = *v22;
          v26 = *v23;
          if (v25 != v26)
          {
            break;
          }

          ++v22;
          ++v23;
          if (!--v24)
          {
            goto LABEL_85;
          }
        }

        v27 = v25 < v26;
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(v53);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v27)
      {
        sub_1011404EC(a2, a3);
        v42 = 0;
        v43 = 0;
        v44 = 0;
        sub_100034C50(&v42, *a2, *(a2 + 8), *(a2 + 8) - *a2);
        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(&v45, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v45 = *(a2 + 24);
          v46 = *(a2 + 40);
        }

        if (*(a2 + 71) < 0)
        {
          sub_100005F2C(&v47, *(a2 + 48), *(a2 + 56));
        }

        else
        {
          v47 = *(a2 + 48);
          v48 = *(a2 + 64);
        }

        v49 = *(a2 + 72);
        v35 = 0;
        v36 = 0;
        v34 = 0;
        sub_100034C50(&v34, *a1, *(a1 + 8), *(a1 + 8) - *a1);
        if (*(a1 + 47) < 0)
        {
          sub_100005F2C(v37, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *v37 = *(a1 + 24);
          v38 = *(a1 + 40);
        }

        if (*(a1 + 71) < 0)
        {
          sub_100005F2C(v39, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          *v39 = *(a1 + 48);
          v40 = *(a1 + 64);
        }

        v41 = *(a1 + 72);
        v28 = v42;
        v29 = v34;
        if (v35 - v34 >= v43 - v42)
        {
          v30 = v43 - v42;
        }

        else
        {
          v30 = v35 - v34;
        }

        if (v30 < 1)
        {
LABEL_118:
          v33 = v43 - v42 < v35 - v34;
        }

        else
        {
          while (1)
          {
            v31 = *v28;
            v32 = *v29;
            if (v31 != v32)
            {
              break;
            }

            ++v28;
            ++v29;
            if (!--v30)
            {
              goto LABEL_118;
            }
          }

          v33 = v31 < v32;
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0]);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47);
        }

        if (SHIBYTE(v46) < 0)
        {
          operator delete(v45);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v33)
        {
          sub_1011404EC(a1, a2);
        }
      }
    }
  }
}

void sub_101145248(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a10 < 0)
  {
    operator delete(__p);
  }

  if (a2)
  {
    operator delete(a2);
  }

  sub_10113A8AC(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1011453F4(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  *&v156[8] = *(a1 + 8);
  v5 = *&v156[8];
  *a1 = 0;
  *(a1 + 8) = 0;
  v157 = *(a1 + 24);
  v6 = *(a1 + 40);
  *v156 = v4;
  v158 = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v159 = *(a1 + 48);
  v160 = *(a1 + 64);
  v161 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  LOWORD(v161) = *(a1 + 72);
  v148 = 0;
  v149 = 0;
  v150 = 0;
  sub_100034C50(&v148, v4, v5, v5 - v4);
  if (SHIBYTE(v158) < 0)
  {
    sub_100005F2C(&v151, v157, *(&v157 + 1));
  }

  else
  {
    v151 = v157;
    v152 = v158;
  }

  if (SHIBYTE(v160) < 0)
  {
    sub_100005F2C(&v153, v159, *(&v159 + 1));
  }

  else
  {
    v153 = v159;
    v154 = v160;
  }

  v155 = v161;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  sub_100034C50(&v140, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
  if (*(a2 - 33) < 0)
  {
    sub_100005F2C(&v143, *(a2 - 56), *(a2 - 48));
  }

  else
  {
    v143 = *(a2 - 56);
    v144 = *(a2 - 40);
  }

  if (*(a2 - 9) < 0)
  {
    sub_100005F2C(&__p, *(a2 - 32), *(a2 - 24));
  }

  else
  {
    __p = *(a2 - 32);
    v146 = *(a2 - 16);
  }

  v147 = *(a2 - 8);
  v7 = v148;
  v8 = v140;
  if (v141 - v140 >= v149 - v148)
  {
    v9 = v149 - v148;
  }

  else
  {
    v9 = v141 - v140;
  }

  if (v9 < 1)
  {
LABEL_19:
    v12 = v149 - v148 < v141 - v140;
  }

  else
  {
    while (1)
    {
      v10 = *v7;
      v11 = *v8;
      if (v10 != v11)
      {
        break;
      }

      ++v7;
      ++v8;
      if (!--v9)
      {
        goto LABEL_19;
      }
    }

    v12 = v10 < v11;
  }

  if (SHIBYTE(v146) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v144) < 0)
  {
    operator delete(v143);
  }

  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  if (SHIBYTE(v154) < 0)
  {
    operator delete(v153);
  }

  if (SHIBYTE(v152) < 0)
  {
    operator delete(v151);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v12)
  {
    v13 = a1;
    do
    {
      v133 = 0;
      v132 = 0;
      v134 = 0;
      sub_100034C50(&v132, *v156, *&v156[8], *&v156[8] - *v156);
      if (SHIBYTE(v158) < 0)
      {
        sub_100005F2C(&v135, v157, *(&v157 + 1));
      }

      else
      {
        v135 = v157;
        v136 = v158;
      }

      if (SHIBYTE(v160) < 0)
      {
        sub_100005F2C(&v137, v159, *(&v159 + 1));
      }

      else
      {
        v137 = v159;
        v138 = v160;
      }

      v139 = v161;
      v126 = 0;
      v124 = 0;
      v125 = 0;
      sub_100034C50(&v124, *(v13 + 80), *(v13 + 88), *(v13 + 88) - *(v13 + 80));
      if (*(v13 + 127) < 0)
      {
        sub_100005F2C(&v127, *(v13 + 104), *(v13 + 112));
      }

      else
      {
        v127 = *(v13 + 104);
        v128 = *(v13 + 120);
      }

      if (*(v13 + 151) < 0)
      {
        sub_100005F2C(&v129, *(v13 + 128), *(v13 + 136));
      }

      else
      {
        v129 = *(v13 + 128);
        v130 = *(v13 + 144);
      }

      v131 = *(v13 + 152);
      v14 = v132;
      v15 = v124;
      if (v125 - v124 >= v133 - v132)
      {
        v16 = v133 - v132;
      }

      else
      {
        v16 = v125 - v124;
      }

      if (v16 < 1)
      {
LABEL_53:
        v19 = v133 - v132 < v125 - v124;
      }

      else
      {
        while (1)
        {
          v17 = *v14;
          v18 = *v15;
          if (v17 != v18)
          {
            break;
          }

          ++v14;
          ++v15;
          if (!--v16)
          {
            goto LABEL_53;
          }
        }

        v19 = v17 < v18;
      }

      if (SHIBYTE(v130) < 0)
      {
        operator delete(v129);
      }

      if (SHIBYTE(v128) < 0)
      {
        operator delete(v127);
      }

      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      if (SHIBYTE(v138) < 0)
      {
        operator delete(v137);
      }

      if (SHIBYTE(v136) < 0)
      {
        operator delete(v135);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      v13 += 80;
    }

    while (!v19);
  }

  else
  {
    v13 = a1 + 80;
    if (a1 + 80 < a2)
    {
      v20 = a1;
      while (1)
      {
        v21 = v13;
        v117 = 0;
        v116 = 0;
        v118 = 0;
        sub_100034C50(&v116, *v156, *&v156[8], *&v156[8] - *v156);
        if (SHIBYTE(v158) < 0)
        {
          sub_100005F2C(&v119, v157, *(&v157 + 1));
        }

        else
        {
          v119 = v157;
          v120 = v158;
        }

        if (SHIBYTE(v160) < 0)
        {
          sub_100005F2C(&v121, v159, *(&v159 + 1));
        }

        else
        {
          v121 = v159;
          v122 = v160;
        }

        v123 = v161;
        v109 = 0;
        v110 = 0;
        v108 = 0;
        sub_100034C50(&v108, *v13, *(v20 + 88), *(v20 + 88) - *v13);
        if (*(v20 + 127) < 0)
        {
          sub_100005F2C(&v111, *(v20 + 104), *(v20 + 112));
        }

        else
        {
          v111 = *(v20 + 104);
          v112 = *(v20 + 120);
        }

        if (*(v20 + 151) < 0)
        {
          sub_100005F2C(&v113, *(v20 + 128), *(v20 + 136));
        }

        else
        {
          v113 = *(v20 + 128);
          v114 = *(v20 + 144);
        }

        v115 = *(v20 + 152);
        v22 = v116;
        v23 = v108;
        v24 = v117 - v116;
        v25 = v109 - v108;
        v26 = v109 - v108 >= v117 - v116 ? v117 - v116 : v109 - v108;
        if (v26 < 1)
        {
LABEL_89:
          v29 = v24 < v25 ? -1 : 1;
          v30 = v24 == v25 ? 0 : v29;
        }

        else
        {
          while (1)
          {
            v27 = *v22;
            v28 = *v23;
            if (v27 != v28)
            {
              break;
            }

            ++v22;
            ++v23;
            if (!--v26)
            {
              goto LABEL_89;
            }
          }

          v30 = v27 < v28 ? -1 : 1;
        }

        if (SHIBYTE(v114) < 0)
        {
          operator delete(v113);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(v111);
        }

        if (v108)
        {
          v109 = v108;
          operator delete(v108);
        }

        if (SHIBYTE(v122) < 0)
        {
          operator delete(v121);
        }

        if (SHIBYTE(v120) < 0)
        {
          operator delete(v119);
        }

        if (v116)
        {
          v117 = v116;
          operator delete(v116);
        }

        if (v30 < 0)
        {
          break;
        }

        v13 = v21 + 80;
        v20 = v21;
        if (v21 + 80 >= a2)
        {
          goto LABEL_114;
        }
      }

      v13 = v21;
    }
  }

LABEL_114:
  if (v13 < a2)
  {
    do
    {
      v100 = 0;
      v101 = 0;
      v102 = 0;
      sub_100034C50(&v100, *v156, *&v156[8], *&v156[8] - *v156);
      if (SHIBYTE(v158) < 0)
      {
        sub_100005F2C(&v103, v157, *(&v157 + 1));
      }

      else
      {
        v103 = v157;
        v104 = v158;
      }

      if (SHIBYTE(v160) < 0)
      {
        sub_100005F2C(&v105, v159, *(&v159 + 1));
      }

      else
      {
        v105 = v159;
        v106 = v160;
      }

      v107 = v161;
      v93 = 0;
      v94 = 0;
      v92 = 0;
      sub_100034C50(&v92, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
      if (*(a2 - 33) < 0)
      {
        sub_100005F2C(&v95, *(a2 - 56), *(a2 - 48));
      }

      else
      {
        v95 = *(a2 - 56);
        v96 = *(a2 - 40);
      }

      if (*(a2 - 9) < 0)
      {
        sub_100005F2C(&v97, *(a2 - 32), *(a2 - 24));
      }

      else
      {
        v97 = *(a2 - 32);
        v98 = *(a2 - 16);
      }

      v99 = *(a2 - 8);
      v31 = v100;
      v32 = v92;
      if (v93 - v92 >= v101 - v100)
      {
        v33 = v101 - v100;
      }

      else
      {
        v33 = v93 - v92;
      }

      if (v33 < 1)
      {
LABEL_133:
        v36 = v101 - v100 < v93 - v92;
      }

      else
      {
        while (1)
        {
          v34 = *v31;
          v35 = *v32;
          if (v34 != v35)
          {
            break;
          }

          ++v31;
          ++v32;
          if (!--v33)
          {
            goto LABEL_133;
          }
        }

        v36 = v34 < v35;
      }

      if (SHIBYTE(v98) < 0)
      {
        operator delete(v97);
      }

      if (SHIBYTE(v96) < 0)
      {
        operator delete(v95);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105);
      }

      if (SHIBYTE(v104) < 0)
      {
        operator delete(v103);
      }

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      a2 -= 80;
    }

    while (v36);
  }

  while (v13 < a2)
  {
    sub_1011404EC(v13, a2);
    do
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100034C50(&v84, *v156, *&v156[8], *&v156[8] - *v156);
      if (SHIBYTE(v158) < 0)
      {
        sub_100005F2C(&v87, v157, *(&v157 + 1));
      }

      else
      {
        v87 = v157;
        v88 = v158;
      }

      if (SHIBYTE(v160) < 0)
      {
        sub_100005F2C(&v89, v159, *(&v159 + 1));
      }

      else
      {
        v89 = v159;
        v90 = v160;
      }

      v91 = v161;
      v77 = 0;
      v78 = 0;
      v76 = 0;
      sub_100034C50(&v76, *(v13 + 80), *(v13 + 88), *(v13 + 88) - *(v13 + 80));
      if (*(v13 + 127) < 0)
      {
        sub_100005F2C(&v79, *(v13 + 104), *(v13 + 112));
      }

      else
      {
        v79 = *(v13 + 104);
        v80 = *(v13 + 120);
      }

      if (*(v13 + 151) < 0)
      {
        sub_100005F2C(&v81, *(v13 + 128), *(v13 + 136));
      }

      else
      {
        v81 = *(v13 + 128);
        v82 = *(v13 + 144);
      }

      v83 = *(v13 + 152);
      v37 = v84;
      v38 = v76;
      if (v77 - v76 >= v85 - v84)
      {
        v39 = v85 - v84;
      }

      else
      {
        v39 = v77 - v76;
      }

      if (v39 < 1)
      {
LABEL_168:
        v42 = v85 - v84 < v77 - v76;
      }

      else
      {
        while (1)
        {
          v40 = *v37;
          v41 = *v38;
          if (v40 != v41)
          {
            break;
          }

          ++v37;
          ++v38;
          if (!--v39)
          {
            goto LABEL_168;
          }
        }

        v42 = v40 < v41;
      }

      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      if (SHIBYTE(v90) < 0)
      {
        operator delete(v89);
      }

      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      v13 += 80;
    }

    while (!v42);
    do
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      sub_100034C50(&v68, *v156, *&v156[8], *&v156[8] - *v156);
      if (SHIBYTE(v158) < 0)
      {
        sub_100005F2C(&v71, v157, *(&v157 + 1));
      }

      else
      {
        v71 = v157;
        v72 = v158;
      }

      if (SHIBYTE(v160) < 0)
      {
        sub_100005F2C(&v73, v159, *(&v159 + 1));
      }

      else
      {
        v73 = v159;
        v74 = v160;
      }

      v75 = v161;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      sub_100034C50(&v60, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
      if (*(a2 - 33) < 0)
      {
        sub_100005F2C(&v63, *(a2 - 56), *(a2 - 48));
      }

      else
      {
        v43 = *(a2 - 56);
        v64 = *(a2 - 40);
        v63 = v43;
      }

      if (*(a2 - 9) < 0)
      {
        sub_100005F2C(&v65, *(a2 - 32), *(a2 - 24));
      }

      else
      {
        v44 = *(a2 - 32);
        v66 = *(a2 - 16);
        v65 = v44;
      }

      v67 = *(a2 - 8);
      v45 = v68;
      v46 = v60;
      if (v61 - v60 >= v69 - v68)
      {
        v47 = v69 - v68;
      }

      else
      {
        v47 = v61 - v60;
      }

      if (v47 < 1)
      {
LABEL_201:
        v50 = v69 - v68 < v61 - v60;
      }

      else
      {
        while (1)
        {
          v48 = *v45;
          v49 = *v46;
          if (v48 != v49)
          {
            break;
          }

          ++v45;
          ++v46;
          if (!--v47)
          {
            goto LABEL_201;
          }
        }

        v50 = v48 < v49;
      }

      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
      }

      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      a2 -= 80;
    }

    while (v50);
  }

  v51 = (v13 - 80);
  if (v13 - 80 != a1)
  {
    sub_100015184(a1, (v13 - 80));
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v52 = *(v13 - 56);
    *(a1 + 40) = *(v13 - 40);
    *(a1 + 24) = v52;
    *(v13 - 33) = 0;
    *(v13 - 56) = 0;
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v53 = *(v13 - 32);
    *(a1 + 64) = *(v13 - 16);
    *(a1 + 48) = v53;
    *(v13 - 9) = 0;
    *(v13 - 32) = 0;
    *(a1 + 72) = *(v13 - 8);
  }

  v54 = *v51;
  if (*v51)
  {
    *(v13 - 72) = v54;
    operator delete(v54);
    *v51 = 0;
    *(v13 - 72) = 0;
    *(v13 - 64) = 0;
  }

  *(v13 - 80) = *v156;
  *(v13 - 64) = *&v156[16];
  memset(v156, 0, sizeof(v156));
  v55 = (v13 - 56);
  if (*(v13 - 33) < 0)
  {
    operator delete(*v55);
  }

  v56 = v157;
  *(v13 - 40) = v158;
  *v55 = v56;
  HIBYTE(v158) = 0;
  LOBYTE(v157) = 0;
  v57 = (v13 - 32);
  if (*(v13 - 9) < 0)
  {
    operator delete(*v57);
  }

  v58 = v159;
  *(v13 - 16) = v160;
  *v57 = v58;
  HIBYTE(v160) = 0;
  LOBYTE(v159) = 0;
  *(v13 - 8) = v161;
  if (SHIBYTE(v160) < 0)
  {
    operator delete(v159);
  }

  if (SHIBYTE(v158) < 0)
  {
    operator delete(v157);
  }

  if (*v156)
  {
    *&v156[8] = *v156;
    operator delete(*v156);
  }

  return v13;
}

void sub_101146024(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  v3 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v3;
    operator delete(v3);
  }

  sub_10113A8AC(v1 - 240);
  sub_10113A8AC(v1 - 160);
  _Unwind_Resume(a1);
}

BOOL sub_1011462C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 80);
        v6 = *(v2 - 72);
        v90 = 0;
        v91 = 0;
        v92 = 0;
        sub_100034C50(&v90, v5, v6, v6 - v5);
        if (*(v2 - 33) < 0)
        {
          sub_100005F2C(&v93, *(v2 - 56), *(v2 - 48));
        }

        else
        {
          v93 = *(v2 - 56);
          v94 = *(v2 - 40);
        }

        if (*(v2 - 9) < 0)
        {
          sub_100005F2C(&v95, *(v2 - 32), *(v2 - 24));
        }

        else
        {
          v95 = *(v2 - 32);
          v96 = *(v2 - 16);
        }

        v97 = *(v2 - 8);
        v83 = 0;
        v84 = 0;
        v82 = 0;
        sub_100034C50(&v82, *a1, *(a1 + 8), *(a1 + 8) - *a1);
        if (*(a1 + 47) < 0)
        {
          sub_100005F2C(&v85, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v85 = *(a1 + 24);
          v86 = *(a1 + 40);
        }

        if (*(a1 + 71) < 0)
        {
          sub_100005F2C(&v87, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          v87 = *(a1 + 48);
          v88 = *(a1 + 64);
        }

        v89 = *(a1 + 72);
        v35 = v90;
        v36 = v82;
        if (v83 - v82 >= v91 - v90)
        {
          v37 = v91 - v90;
        }

        else
        {
          v37 = v83 - v82;
        }

        if (v37 < 1)
        {
LABEL_113:
          v40 = v91 - v90 < v83 - v82;
        }

        else
        {
          while (1)
          {
            v38 = *v35;
            v39 = *v36;
            if (v38 != v39)
            {
              break;
            }

            ++v35;
            ++v36;
            if (!--v37)
            {
              goto LABEL_113;
            }
          }

          v40 = v38 < v39;
        }

        if (SHIBYTE(v88) < 0)
        {
          operator delete(v87);
        }

        if (SHIBYTE(v86) < 0)
        {
          operator delete(v85);
        }

        if (v82)
        {
          v83 = v82;
          operator delete(v82);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(v95);
        }

        if (SHIBYTE(v94) < 0)
        {
          operator delete(v93);
        }

        if (v90)
        {
          v91 = v90;
          operator delete(v90);
        }

        if (v40)
        {
          sub_1011404EC(a1, v2 - 80);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1011439D4(a1, a1 + 80, a2 - 80);
      return 1;
    case 4:
      sub_101144498(a1, a1 + 80, a1 + 160, a2 - 80);
      return 1;
    case 5:
      sub_101144B34(a1, a1 + 80, a1 + 160, a1 + 240, a2 - 80);
      return 1;
  }

LABEL_11:
  v7 = a1 + 160;
  sub_1011439D4(a1, a1 + 80, a1 + 160);
  v8 = a1 + 240;
  if (a1 + 240 == v2)
  {
    return 1;
  }

  v9 = 0;
  v42 = v2;
  while (1)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    sub_100034C50(&v74, *v8, *(v8 + 8), *(v8 + 8) - *v8);
    if (*(v8 + 47) < 0)
    {
      sub_100005F2C(&v77, *(v8 + 24), *(v8 + 32));
    }

    else
    {
      v77 = *(v8 + 24);
      v78 = *(v8 + 40);
    }

    if (*(v8 + 71) < 0)
    {
      sub_100005F2C(&v79, *(v8 + 48), *(v8 + 56));
    }

    else
    {
      v79 = *(v8 + 48);
      v80 = *(v8 + 64);
    }

    v81 = *(v8 + 72);
    v67 = 0;
    v68 = 0;
    v66 = 0;
    sub_100034C50(&v66, *v7, *(v7 + 8), *(v7 + 8) - *v7);
    if (*(v7 + 47) < 0)
    {
      sub_100005F2C(&v69, *(v7 + 24), *(v7 + 32));
    }

    else
    {
      v10 = *(v7 + 24);
      v70 = *(v7 + 40);
      v69 = v10;
    }

    if (*(v7 + 71) < 0)
    {
      sub_100005F2C(&__p, *(v7 + 48), *(v7 + 56));
    }

    else
    {
      v11 = *(v7 + 48);
      v72 = *(v7 + 64);
      __p = v11;
    }

    v73 = *(v7 + 72);
    v12 = v74;
    v13 = v66;
    v14 = v67 - v66 >= v75 - v74 ? v75 - v74 : v67 - v66;
    if (v14 < 1)
    {
LABEL_31:
      v17 = v75 - v74 < v67 - v66;
    }

    else
    {
      while (1)
      {
        v15 = *v12;
        v16 = *v13;
        if (v15 != v16)
        {
          break;
        }

        ++v12;
        ++v13;
        if (!--v14)
        {
          goto LABEL_31;
        }
      }

      v17 = v15 < v16;
    }

    if (SHIBYTE(v72) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(v69);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v17)
    {
      v59 = *v8;
      v18 = *(v8 + 16);
      v65 = 0;
      v60 = v18;
      *v8 = 0;
      *(v8 + 8) = 0;
      v61 = *(v8 + 24);
      v62 = *(v8 + 40);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v63 = *(v8 + 48);
      v64 = *(v8 + 64);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      LOWORD(v65) = *(v8 + 72);
      v19 = v8;
      *(v8 + 48) = 0;
      while (1)
      {
        v20 = v7;
        sub_100015184(v19, v7);
        if (*(v19 + 47) < 0)
        {
          operator delete(*(v19 + 24));
        }

        *(v19 + 24) = *(v7 + 24);
        *(v19 + 40) = *(v7 + 40);
        *(v7 + 47) = 0;
        *(v7 + 24) = 0;
        if (*(v19 + 71) < 0)
        {
          operator delete(*(v19 + 48));
        }

        *(v19 + 48) = *(v7 + 48);
        *(v19 + 64) = *(v7 + 64);
        *(v7 + 71) = 0;
        *(v7 + 48) = 0;
        *(v19 + 72) = *(v7 + 72);
        if (v7 == a1)
        {
          break;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        sub_100034C50(&v51, v59, *(&v59 + 1), *(&v59 + 1) - v59);
        if (SHIBYTE(v62) < 0)
        {
          sub_100005F2C(&v54, v61, *(&v61 + 1));
        }

        else
        {
          v54 = v61;
          v55 = v62;
        }

        if (SHIBYTE(v64) < 0)
        {
          sub_100005F2C(&v56, v63, *(&v63 + 1));
        }

        else
        {
          v56 = v63;
          v57 = v64;
        }

        v58 = v65;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v21 = *(v7 - 80);
        v22 = *(v7 - 72);
        v7 -= 80;
        sub_100034C50(&v43, v21, v22, v22 - v21);
        if (*(v20 - 33) < 0)
        {
          sub_100005F2C(&v46, *(v20 - 56), *(v20 - 48));
        }

        else
        {
          v23 = *(v20 - 56);
          v47 = *(v20 - 40);
          v46 = v23;
        }

        if (*(v20 - 9) < 0)
        {
          sub_100005F2C(&v48, *(v20 - 32), *(v20 - 24));
        }

        else
        {
          v24 = *(v20 - 32);
          v49 = *(v20 - 16);
          v48 = v24;
        }

        v50 = *(v20 - 8);
        v25 = v51;
        v26 = v43;
        if (v44 - v43 >= v52 - v51)
        {
          v27 = v52 - v51;
        }

        else
        {
          v27 = v44 - v43;
        }

        if (v27 < 1)
        {
LABEL_70:
          v30 = v52 - v51 < v44 - v43;
        }

        else
        {
          while (1)
          {
            v28 = *v25;
            v29 = *v26;
            if (v28 != v29)
            {
              break;
            }

            ++v25;
            ++v26;
            if (!--v27)
            {
              goto LABEL_70;
            }
          }

          v30 = v28 < v29;
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56);
        }

        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        v19 = v20;
        if (!v30)
        {
          v31 = v20;
          goto LABEL_87;
        }
      }

      v31 = a1;
LABEL_87:
      v2 = v42;
      v32 = *v31;
      if (*v31)
      {
        *(v31 + 8) = v32;
        operator delete(v32);
        *v31 = 0;
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
      }

      *v31 = v59;
      *(v31 + 16) = v60;
      v59 = 0uLL;
      v60 = 0;
      if (*(v31 + 47) < 0)
      {
        operator delete(*(v20 + 24));
      }

      v33 = v61;
      *(v20 + 40) = v62;
      *(v20 + 24) = v33;
      HIBYTE(v62) = 0;
      LOBYTE(v61) = 0;
      if (*(v31 + 71) < 0)
      {
        operator delete(*(v20 + 48));
      }

      v34 = v63;
      *(v20 + 64) = v64;
      *(v20 + 48) = v34;
      *(v31 + 72) = v65;
      if (++v9 == 8)
      {
        return v8 + 80 == v42;
      }
    }

    v7 = v8;
    v8 += 80;
    if (v8 == v2)
    {
      return 1;
    }
  }
}

void sub_101146A58(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
  }

  sub_10113A8AC(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_101146C7C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[7], v1, sub_101146D50);
  __cxa_rethrow();
}

void sub_101146CBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101146D10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101146D50(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101146D80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101146DB8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101146DE8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_101146E28(void *a1)
{
  *a1 = off_101F11188;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101146E74(void *a1)
{
  *a1 = off_101F11188;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101146EE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v5 + 248);
          v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 232) - *(v5 + 224)) >> 4);
          *buf = 67109376;
          *&buf[4] = v7;
          LOWORD(v31) = 2048;
          *(&v31 + 2) = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [3] Send receipt # %d (of %lu) to server", buf, 0x12u);
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        if (sub_1010FA220(v5 + 256, &v27))
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          sub_10172A4C8(v5, &v24);
          std::operator+<char>();
          v22 = 0;
          v23 = 0;
          sub_10172A670((v5 + 80), "/gsma/rsp2/es9plus/handleNotification", buf, &v27, (v5 + 56), &v24, &v22, __p);
          v9 = *__p;
          __p[0] = 0;
          __p[1] = 0;
          v10 = *(v5 + 360);
          *(v5 + 352) = v9;
          if (v10)
          {
            sub_100004A34(v10);
            if (__p[1])
            {
              sub_100004A34(__p[1]);
            }
          }

          if (v23)
          {
            sub_100004A34(v23);
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(*buf);
          }

          v11 = *(v5 + 352);
          sub_10006F22C(buf, (v5 + 32));
          (*(*v11 + 72))(v11, *buf);
          sub_100010250(buf);
          (*(**(v5 + 352) + 240))(*(v5 + 352), &stru_101F66F10);
          sub_1011389AC(v5, "SendNotificationReq");
          v12 = *(v5 + 48);
          if (!v12 || (v13 = *(v5 + 40), (v14 = std::__shared_weak_count::lock(v12)) == 0))
          {
            sub_100013CC4();
          }

          v15 = v14;
          p_shared_weak_owners = &v14->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v14);
          v17 = *(v5 + 352);
          *buf = _NSConcreteStackBlock;
          *&v31 = 1174405120;
          *(&v31 + 1) = sub_101139E88;
          v32 = &unk_101F10F68;
          v33 = v5;
          v34 = v13;
          v35 = v15;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          (*(*v17 + 16))(v17, buf);
          v18 = *(v5 + 352);
          v21 = 0;
          LOBYTE(__p[0]) = 0;
          (*(*v18 + 40))(v18, __p);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (v35)
          {
            std::__shared_weak_count::__release_weak(v35);
          }

          std::__shared_weak_count::__release_weak(v15);
          sub_1000DD0AC(&v24, v25);
        }

        else
        {
          v19 = *(v5 + 72);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E Cannot encode receipt data! Skipping and removing notification", buf, 2u);
          }

          sub_1011499EC(*(v5 + 112), buf, 1);
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1011472D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_weak(a33);
  }

  std::__shared_weak_count::__release_weak(v34);
  sub_1000DD0AC(&a18, a19);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_101147380(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = v5[9];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [1] Retrieving receipt list from baseband", v12, 2u);
        }

        v7 = v5[6];
        if (!v7 || (v8 = v5[5], (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          sub_100013CC4();
        }

        v10 = v9;
        p_shared_weak_owners = &v9->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1174405120;
        v12[2] = sub_101138E60;
        v12[3] = &unk_101F10ED8;
        v12[4] = v5;
        v12[5] = v8;
        v13 = v10;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        VinylCommandDriver::tapeListNotifications();
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        std::__shared_weak_count::__release_weak(v10);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1011474E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

void sub_101147510(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v5 + 248);
          v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 232) - *(v5 + 224)) >> 4);
          *buf = 67109376;
          *&buf[4] = v7;
          LOWORD(v21) = 2048;
          *(&v21 + 2) = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [2] Retrieving data for receipt #%d (of %lu) from baseband", buf, 0x12u);
        }

        v9 = *(v5 + 48);
        if (!v9 || (v10 = *(v5 + 40), (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          sub_100013CC4();
        }

        v12 = v11;
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v17 = 0;
        v18 = 0;
        v19 = 0;
        if (sub_101101D20((*(v5 + 224) + 80 * *(v5 + 248)), &v17))
        {
          sub_1011389AC(v5, "GetNotificationReq");
          v15 = 0;
          v16 = 0;
          __p = 0;
          sub_100034C50(&__p, v17, v18, v18 - v17);
          *buf = _NSConcreteStackBlock;
          *&v21 = 1174405120;
          *(&v21 + 1) = sub_101139800;
          v22 = &unk_101F10F38;
          v23 = v5;
          v24 = v10;
          v25 = v12;
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          VinylCommandDriver::tapeGetNotification();
          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }
        }

        else
        {
          v13 = *(v5 + 72);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Could not encode notification request - skipping", buf, 2u);
          }

          ++*(v5 + 248);
          sub_1011490C4(*(v5 + 112), buf, 1);
        }

        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        std::__shared_weak_count::__release_weak(v12);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1011477C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  std::__shared_weak_count::__release_weak(v22);
  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void sub_101147824(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v5 + 248);
          v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 232) - *(v5 + 224)) >> 4);
          *buf = 67109376;
          *&buf[4] = v7;
          LOWORD(v21) = 2048;
          *(&v21 + 2) = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [4] Deleting receipt #%d (of %lu) from baseband", buf, 0x12u);
        }

        v9 = *(v5 + 48);
        if (!v9 || (v10 = *(v5 + 40), (v11 = std::__shared_weak_count::lock(v9)) == 0))
        {
          sub_100013CC4();
        }

        v12 = v11;
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v17 = 0;
        v18 = 0;
        v19 = 0;
        if (!sub_101102290((*(v5 + 224) + 80 * *(v5 + 248)), &v17))
        {
          v13 = *(v5 + 72);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Could not encode - continuing anyways", buf, 2u);
          }

          ++*(v5 + 248);
          sub_101149D18(*(v5 + 112), buf, 1);
        }

        sub_1011389AC(v5, "DeleteNotificationReq");
        v15 = 0;
        v16 = 0;
        __p = 0;
        sub_100034C50(&__p, v17, v18, v18 - v17);
        *buf = _NSConcreteStackBlock;
        *&v21 = 1174405120;
        *(&v21 + 1) = sub_10113A124;
        v22 = &unk_101F10FC8;
        v23 = v5;
        v24 = v10;
        v25 = v12;
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        VinylCommandDriver::tapeDeleteNotification();
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_weak(v25);
        }

        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        std::__shared_weak_count::__release_weak(v12);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101147AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v22);
  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

void sub_101147B34(uint64_t a1, signed int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        sub_101138C24(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101147BC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [-] Receipts operation has been paused due to baseband error; will resume on trigger", v7, 2u);
        }

        *(v5 + 178) = 1;
      }

      sub_100004A34(v4);
    }
  }
}

BOOL sub_101147C7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 232) - *(v4 + 224)) >> 4) > *(v4 + 248);
  }

  else
  {
    v5 = 0;
  }

  sub_100004A34(v3);
  return v5;
}

uint64_t sub_101147CF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __p = 0;
    v9 = 0;
    v10 = 0;
    v5 = *(v5 + 256) != *(v5 + 264) && *(*(v5 + 224) + 80 * *(v5 + 248) + 72) == 1 && (sub_1010F84C4((v5 + 256)) & 1) != 0 && ((*(v5 + 207) & 0x8000000000000000) != 0 ? (v6 = *(v5 + 192)) : (v6 = *(v5 + 207)), v6) && sub_100071DF8((v5 + 184), (*(v5 + 224) + 80 * *(v5 + 248) + 48));
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v11);
    }
  }

  sub_100004A34(v4);
  return v5;
}

void sub_101147F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_101147F3C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 72])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_1011480B0(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5StartEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5StartEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1011481A8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

int64x2_t *sub_1011481DC(int64x2_t *result)
{
  if (result[4].i64[1])
  {
    v1 = result;
    do
    {
      memset(v5, 0, sizeof(v5));
      v2 = *(v1[2].i64[1] + ((v1[4].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v1[4].i64[0] & 0x7F);
      v3 = *v2;
      if (*v2)
      {
        *&v5[0] = *v2;
        if (v3)
        {
          v4 = *(v2 + 8);
          *(&v5[1] + 1) = *(v2 + 24);
          *(v5 + 8) = v4;
        }

        else
        {
          (*v3)(v2 + 8, v5 + 8, 0);
        }
      }

      sub_1003AC4F4(v1 + 2);
      sub_1003AC560(v5);
      result = sub_1003ABCAC(v5);
    }

    while (v1[4].i64[1]);
  }

  return result;
}

uint64_t sub_1011482A8(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 0;
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  *(v3 + 24) = 1;
  return 1;
}

uint64_t sub_101148324(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 128])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_10114849C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5AbortEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5AbortEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_10114859C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[32];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1011485D0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 5)
  {
    __assert_rtn("execute", "state_machine.hpp", 800, "state == (current_state)");
  }

  return 1;
}

uint64_t sub_10114860C(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  (*(**(a1 + 8) + 48))(*(a1 + 8), *a4, *(a4 + 1));
  *(v4 + 24) = 5;
  return 1;
}

uint64_t sub_101148698(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 3)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 3;
  (*(**(a1 + 8) + 48))(*(a1 + 8), *a4, *(a4 + 1));
  *(v4 + 24) = 5;
  return 1;
}

uint64_t sub_101148724(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 2;
  (*(**(a1 + 8) + 48))(*(a1 + 8), *a4, *(a4 + 1));
  *(v4 + 24) = 5;
  return 1;
}

uint64_t sub_1011487B0(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3 != 1)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  (*(**(a1 + 8) + 48))(*(a1 + 8), *a4, *(a4 + 1));
  *(v4 + 24) = 5;
  return 1;
}

uint64_t sub_10114883C(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  if (a3)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 0;
  (*(**(a1 + 8) + 48))(*(a1 + 8), *a4, *(a4 + 1));
  *(v4 + 24) = 5;
  return 1;
}

uint64_t sub_1011488C0(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 184])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_101148A34(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_21bbListReceiptsSuccessEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_21bbListReceiptsSuccessEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101148B2C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101148B68(uint64_t a1, int a2, int a3)
{
  if (a3 != 1)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 1;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 32))();
    v7 = 2;
  }

  else
  {
    (*(v6 + 48))();
    v7 = 5;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_101148C60(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 240])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_101148DD4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5RetryEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_5RetryEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101148ECC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101148F08(uint64_t a1, int a2, int a3)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 4;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_101148F88(uint64_t a1, int a2, int a3)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 2;
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  *(v3 + 24) = 2;
  return 1;
}

uint64_t sub_101149008(uint64_t a1, int a2, int a3)
{
  if (a3 != 1)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 1;
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  *(v3 + 24) = 1;
  return 1;
}

uint64_t sub_101149098(uint64_t result, uint64_t a2)
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

void sub_1011490B4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1011490C4(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 296])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_101149238(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_4SkipEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_4SkipEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101149330(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_10114936C(uint64_t a1, int a2, int a3)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 4;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 32))();
    v7 = 2;
  }

  else
  {
    (*(v6 + 48))();
    v7 = 5;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_101149464(uint64_t a1, int a2, int a3)
{
  if (a3 != 3)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 3;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 32))();
    v7 = 2;
  }

  else
  {
    (*(v6 + 48))();
    v7 = 5;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_10114955C(uint64_t a1, int a2, int a3)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 2;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 32))();
    v7 = 2;
  }

  else
  {
    (*(v6 + 48))();
    v7 = 5;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_101149654(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 352])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_1011497C8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_12bbGotReceiptEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_12bbGotReceiptEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1011498C0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1011498FC(uint64_t a1, int a2, int a3)
{
  if (a3 != 2)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 72))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 2;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 40))();
    v7 = 4;
  }

  else
  {
    (*(v6 + 16))();
    v7 = 3;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

uint64_t sub_1011499EC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 408])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_101149B60(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_13vsReceiptSentEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_13vsReceiptSentEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101149C58(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101149C94(uint64_t a1, int a2, int a3)
{
  if (a3 != 3)
  {
    __assert_rtn("execute", "state_machine.hpp", 587, "state == (current_state)");
  }

  v3 = a1 + 4 * a2;
  *(v3 + 24) = 3;
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  *(v3 + 24) = 4;
  return 1;
}

uint64_t sub_101149D18(int64x2_t *a1, uint64_t a2, char a3)
{
  if (a1[5].i8[8] == 1)
  {
    operator new();
  }

  a1[5].i8[8] = 1;
  v5 = (*&byte_101FC8A78[8 * a1[1].i32[2] + 464])(a1, 0);
  std::exception::~exception(&v7);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1011481DC(a1);
  }

  return v5;
}

uint64_t sub_101149E8C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16bbReceiptDeletedEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN18vinyl_receipts_fsm21VinylReceiptsFrontFSMENS_9parameter5void_ESB_SB_SB_EERKNS8_16bbReceiptDeletedEhEENS0_5list3INS0_5valueIPSC_EENSI_ISD_EENSI_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_101149F84(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_101149FC0(uint64_t a1, int a2, int a3)
{
  if (a3 != 4)
  {
    __assert_rtn("execute", "state_machine.hpp", 445, "state == (current_state)");
  }

  v5 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  *(a1 + 24 + 4 * a2) = 4;
  v6 = **(a1 + 8);
  if (v5)
  {
    (*(v6 + 32))();
    v7 = 2;
  }

  else
  {
    (*(v6 + 48))();
    v7 = 5;
  }

  *(a1 + 24 + 4 * a2) = v7;
  return 1;
}

void sub_10114A0B8()
{
  if ((byte_101FC8A78[0] & 1) == 0)
  {
    byte_101FC8A78[0] = 1;
    qword_101FC8AE0 = sub_1011482A0;
    unk_101FC8AE8 = sub_1011482A0;
    qword_101FC8AD0 = sub_1011482A0;
    unk_101FC8AD8 = sub_1011482A0;
    qword_101FC8AC8 = sub_1011482A0;
    qword_101FC8AC0 = sub_1011482A8;
  }
}

void sub_10114A100()
{
  if ((byte_101FC8A80 & 1) == 0)
  {
    byte_101FC8A80 = 1;
    qword_101FC8B20 = sub_1011485D0;
    qword_101FC8B18 = sub_10114860C;
    qword_101FC8B10 = sub_101148698;
    qword_101FC8B08 = sub_101148724;
    qword_101FC8B00 = sub_1011487B0;
    qword_101FC8AF8 = sub_10114883C;
  }
}

void sub_10114A180()
{
  if ((byte_101FC8A88 & 1) == 0)
  {
    byte_101FC8A88 = 1;
    qword_101FC8B50 = sub_101148B60;
    unk_101FC8B58 = sub_101148B60;
    qword_101FC8B40 = sub_101148B60;
    unk_101FC8B48 = sub_101148B60;
    qword_101FC8B30 = sub_101148B60;
    qword_101FC8B38 = sub_101148B68;
  }
}

void sub_10114A1C8()
{
  if ((byte_101FC8A90 & 1) == 0)
  {
    byte_101FC8A90 = 1;
    qword_101FC8B90 = sub_101148F00;
    qword_101FC8B80 = sub_101148F00;
    qword_101FC8B68 = sub_101148F00;
    qword_101FC8B88 = sub_101148F08;
    qword_101FC8B78 = sub_101148F88;
    qword_101FC8B70 = sub_101149008;
  }
}

void sub_10114A230()
{
  if ((byte_101FC8A98 & 1) == 0)
  {
    byte_101FC8A98 = 1;
    qword_101FC8BC8 = sub_101149364;
    qword_101FC8BA0 = sub_101149364;
    unk_101FC8BA8 = sub_101149364;
    qword_101FC8BC0 = sub_10114936C;
    qword_101FC8BB8 = sub_101149464;
    qword_101FC8BB0 = sub_10114955C;
  }
}

void sub_10114A294()
{
  if ((byte_101FC8AA0 & 1) == 0)
  {
    byte_101FC8AA0 = 1;
    qword_101FC8BF8 = sub_1011498F4;
    unk_101FC8C00 = sub_1011498F4;
    qword_101FC8BF0 = sub_1011498F4;
    qword_101FC8BD8 = sub_1011498F4;
    unk_101FC8BE0 = sub_1011498F4;
    qword_101FC8BE8 = sub_1011498FC;
  }
}

void sub_10114A2DC()
{
  if ((byte_101FC8AA8 & 1) == 0)
  {
    byte_101FC8AA8 = 1;
    qword_101FC8C30 = sub_101149C8C;
    unk_101FC8C38 = sub_101149C8C;
    qword_101FC8C18 = sub_101149C8C;
    unk_101FC8C20 = sub_101149C8C;
    qword_101FC8C10 = sub_101149C8C;
    qword_101FC8C28 = sub_101149C94;
  }
}

void sub_10114A324()
{
  if ((byte_101FC8AB0 & 1) == 0)
  {
    byte_101FC8AB0 = 1;
    qword_101FC8C70 = sub_101149FB8;
    qword_101FC8C58 = sub_101149FB8;
    unk_101FC8C60 = sub_101149FB8;
    qword_101FC8C48 = sub_101149FB8;
    unk_101FC8C50 = sub_101149FB8;
    qword_101FC8C68 = sub_101149FC0;
  }
}

void sub_10114A36C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CTXPCServiceInterface];
  v2 = qword_101FC8C78;
  qword_101FC8C78 = v1;

  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, objc_opt_class(), 0];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValue:key:bundleType:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValue:keyHierarchy:bundleType:completion:" argumentIndex:1 ofReply:0];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValue:keyHierarchy:bundleType:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValueWithDefault:key:bundleType:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValueWithDefault:keyHierarchy:bundleType:completion:" argumentIndex:1 ofReply:0];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValueWithDefault:keyHierarchy:bundleType:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"copyCarrierBundleValueWithCountryBundleLookup:keyHierarchy:matchingInfo:completion:" argumentIndex:1 ofReply:0];
  [qword_101FC8C78 setClasses:v9 forSelector:"getWiFiCallingSettingPreferences:key:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"setWiFiCallingSettingPreferences:key:value:completion:" argumentIndex:2 ofReply:0];
  [qword_101FC8C78 setClasses:v9 forSelector:"setPrefForKey:heirarchy:value:storage:completion:" argumentIndex:2 ofReply:0];
  [qword_101FC8C78 setClasses:v9 forSelector:"getPrefForKey:heirarchy:storage:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"getRadioPersonality:completion:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"getEOSFirmwareUpdateInfo:" argumentIndex:0 ofReply:1];
  [qword_101FC8C78 setClasses:v9 forSelector:"getPNRPriorityRegistrationListWithCompletion:" argumentIndex:0 ofReply:1];
}

void sub_10114A604(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreTelephonyClientDelegateProxyInterface];
  v2 = qword_101FC8C88;
  qword_101FC8C88 = v1;
}

void sub_10114A948(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10114AC4C(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10114AEFC(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10114B1E8(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10114B284(uint64_t a1)
{

  operator delete();
}

id sub_10114B338(uint64_t a1, void *a2)
{
  *a2 = off_101F11378;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10114B388(id *a1)
{

  operator delete(a1);
}

void sub_10114B3C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int16 *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v11 = objc_opt_new();
  v8 = [NSNumber numberWithUnsignedInteger:v5];
  [v11 setMajorVersion:v8];

  v9 = [NSNumber numberWithUnsignedInteger:v6];
  [v11 setMinorVersion:v9];

  v10 = [NSNumber numberWithUnsignedInteger:v7];
  [v11 setReleaseVersion:v10];

  (*(*(a1 + 8) + 16))();
}

uint64_t sub_10114B4EC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F113E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10114B538(uint64_t a1)
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

void sub_10114B5E4(uint64_t a1)
{

  operator delete();
}

id sub_10114B698(uint64_t a1, void *a2)
{
  *a2 = off_101F11408;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10114B6E8(id *a1)
{

  operator delete(a1);
}

void sub_10114B724(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = [NSNumber numberWithBool:*a2];
  (*(v2 + 16))(v2);
}

uint64_t sub_10114B7A4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F11468))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10114BA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CTWifiLocationManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10114BB38(os_log_t *a1)
{
  v2 = sub_10114BE00();
  v3 = sub_10114CD1C();
  if (HIDWORD(v3))
  {
    v9 = v3;
    v10 = *a1;
    v11 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (v2 == v9)
    {
      if (!v11)
      {
        return;
      }

      if (v2 > 4)
      {
        v12 = "???";
      }

      else
      {
        v12 = off_101F115B0[v2];
      }

      *__str = 136315138;
      *&__str[4] = v12;
      v15 = "#I Same location status had already been saved previously: %s";
      v16 = v10;
      goto LABEL_27;
    }

    if (v11)
    {
      if (v9 > 4)
      {
        v14 = "???";
      }

      else
      {
        v14 = off_101F115B0[v9 & 7];
      }

      if (v2 > 4)
      {
        v17 = "???";
      }

      else
      {
        v17 = off_101F115B0[v2];
      }

      *__str = 136315394;
      *&__str[4] = v14;
      *&__str[12] = 2080;
      *&__str[14] = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Saved location status changed from %s -> %s", __str, 0x16u);
    }
  }

  v4 = sub_10005D028();
  sub_10000501C(&v18, "WifiCallingLocationAuthorizationStatus");
  memset(__str, 0, 32);
  snprintf(__str, 0x20uLL, "0x%x", v2);
  sub_10000501C(&__p, __str);
  v5 = sub_10033238C(v4, &v18, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v6 = *a1;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      return;
    }

    if (v2 > 4)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_101F115B0[v2];
    }

    *__str = 136315138;
    *&__str[4] = v8;
    v15 = "#I Successfully save current location status %s";
  }

  else
  {
    if (!v7)
    {
      return;
    }

    if (v2 > 4)
    {
      v13 = "???";
    }

    else
    {
      v13 = off_101F115B0[v2];
    }

    *__str = 136315138;
    *&__str[4] = v13;
    v15 = "#I Failed to save current location status %s";
  }

  v16 = v6;
LABEL_27:
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, __str, 0xCu);
}

void sub_10114BDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_10114BE00()
{
  v0 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/WifiCalling.bundle"];
  v1 = [CLLocationManager authorizationStatusForBundle:v0];

  return v1;
}

void sub_10114BEE8(NSObject *a1, int a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = CSIBOOLAsString(a2);
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, "#I Set location status authorized: %s", &v6, 0xCu);
  }

  if (a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/WifiCalling.bundle"];
  [CLLocationManager setAuthorizationStatusByType:v4 forBundle:v5];
}

void sub_10114BFEC()
{
  v0 = sub_10005D028();
  sub_10000501C(__p, "WifiCallingLocationAuthorizationStatus");
  sub_10033220C(v0, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10114C044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10114C138(NSObject **a1)
{
  v2 = sub_10114CD1C();
  if (HIDWORD(v2))
  {
    v6 = v2;
    sub_10114BEE8(*a1, (v2 - 3) < 0xFFFFFFFE);
    sub_10114BFEC();
    v3 = *a1;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (v6 > 4)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_101F115B0[v6 & 7];
    }

    v9 = 136315138;
    v10 = v7;
    v8 = "#I Successfully restored location status %s";
  }

  else
  {
    v3 = *a1;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v4 = sub_10114BE00();
    if (v4 > 4)
    {
      v5 = "???";
    }

    else
    {
      v5 = off_101F115B0[v4];
    }

    v9 = 136315138;
    v10 = v5;
    v8 = "#I No saved location status to restore. Current: %s";
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v8, &v9, 0xCu);
}

unint64_t sub_10114CD1C()
{
  v5 = 0;
  v0 = sub_10005D028();
  sub_10000501C(__p, "WifiCallingLocationAuthorizationStatus");
  v1 = sub_1002D5DB8(v0, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v1)
  {
    return v5 | &_mh_execute_header;
  }

  else
  {
    return 0;
  }
}

void sub_10114CD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10114D030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CTWifiLocationManager **sub_10114D354(CTWifiLocationManager **a1)
{
  *a1 = 0;
  v2 = objc_alloc_init(CTWifiLocationManager);
  v3 = *a1;
  *a1 = v2;

  return a1;
}

void sub_10114D424(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "wifi-loc");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(v2, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *a1 = off_101F11488;
  operator new();
}

void sub_10114D564(void *a1)
{
  *a1 = off_101F11488;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {

    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  CTWifiLocationInterface::~CTWifiLocationInterface(a1);
}

void sub_10114D5EC(void *a1)
{
  sub_10114D564(a1);

  operator delete();
}

void sub_10114D624(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    [v1 initialize];
  }

  else
  {
    v2 = *(a1 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "CTWifiLocation failed to initialize. WifiLocationManager is invalid", v3, 2u);
    }
  }
}

void sub_10114D6B8(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    v2 = v1;
    [v1 disableVoWiFiLocationStatusOnFirstLaunch];
    v1 = v2;
  }
}

void sub_10114D71C(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    [v1 handleDataMigration];
  }

  else
  {
    v2 = *(a1 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "CTWifiLocation failed to handle data migration. WifiLocationManager is invalid", v3, 2u);
    }
  }
}

void sub_10114D7B0(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    [v1 registerWifiCallingEntity];
  }

  else
  {
    v2 = *(a1 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "registerWifiCallingEntity: Error - No CTWifiLocationManager !!!", v3, 2u);
    }
  }
}

void sub_10114D844(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 16);
  if (v2)
  {
    v3 = v2;
    [v2 enableVoWiFiLocationStatus:a2];
    v2 = v3;
  }
}

void sub_10114D8B0(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 16);
  v5 = v3;
  if (v3)
  {
    v4 = v3;
    v3 = v5;
  }

  [v3 startLocationUpdateWithForceLocationLookup:a2];
}

void sub_10114D924(uint64_t a1)
{
  v1 = **(a1 + 16);
  v3 = v1;
  if (v1)
  {
    v2 = v1;
    v1 = v3;
  }

  [v1 stopLocationUpdates];
}

id sub_10114D990(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    v2 = [v1 isLocationServiceAuthorized];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10114D9F0(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    v2 = [v1 isLocationServiceEnabled];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10114DA50(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    v2 = [v1 isLocationServiceAuthorized];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10114DAB0(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (v1)
  {
    v2 = v1;
    [v1 handleDumpState];
    v1 = v2;
  }
}

id sub_10114DB14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLLocationManager alloc];
  v3 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/WifiCalling.bundle"];
  v4 = [v2 initWithEffectiveBundle:v3 delegate:*v1 onQueue:*(*v1 + 32)];
  v5 = *(*v1 + 8);
  *(*v1 + 8) = v4;

  [*(*v1 + 8) setDistanceFilter:-1.0];
  [*(*v1 + 8) setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
  v6 = *(*v1 + 8);

  return [v6 setDynamicAccuracyReductionEnabled:1];
}

void sub_10114DC4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10114DC88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10114DCC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10114DCF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10114DD30()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10114DE00(CarrierSettingsInterface *a1)
{
  CarrierSettingsInterface::~CarrierSettingsInterface(a1);

  operator delete();
}

uint64_t sub_10114DE38(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = 0;
  *result = off_101F116D0;
  *(result + 8) = a2;
  *(result + 20) = a3;
  return result;
}

uint64_t sub_10114DFA0(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__src = 0u;
  *__p = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_10000D518(&v9);
  std::ostream::operator<<();
  if ((BYTE8(v15) & 0x10) != 0)
  {
    v4 = v15;
    if (v15 < __src[1])
    {
      *&v15 = __src[1];
      v4 = __src[1];
    }

    v5 = __src[0];
  }

  else
  {
    if ((BYTE8(v15) & 8) == 0)
    {
      v3 = 0;
      HIBYTE(v8) = 0;
      goto LABEL_14;
    }

    v5 = *(&v10 + 1);
    v4 = *(&v11 + 1);
  }

  v3 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v4 - v5;
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

LABEL_14:
  *(&__dst + v3) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v8;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v10);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_10114E208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10114E234(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = 0;
  *(result + 20) = a3;
  *result = off_101F11748;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_10114E25C(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "MMS 1.0"))
  {
    v4 = 16;
  }

  else if (!strcmp(__s1, "MMS 1.1"))
  {
    v4 = 17;
  }

  else if (!strcmp(__s1, "MMS 1.2"))
  {
    v4 = 18;
  }

  else
  {
    v4 = 19;
  }

  *(a1 + 20) = v4;
  return 1;
}

uint64_t sub_10114E2EC(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 20);
  if (v2 > 17)
  {
    if (v2 == 18)
    {
      v3 = off_101E29BB8;
      goto LABEL_12;
    }

    if (v2 == 19)
    {
      v3 = off_101E29BC0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 16)
    {
      v3 = off_101E29BA8;
      goto LABEL_12;
    }

    if (v2 == 17)
    {
      v3 = off_101E29BB0;
LABEL_12:
      sub_100016890(a2, *v3);
      return 1;
    }
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = 7;
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = 7;
  }

  strcpy(a2, "Unknown");
  return 1;
}

uint64_t sub_10114E470(uint64_t a1, char *a2)
{
  memset(&v5, 0, sizeof(v5));
  result = strptime(a2, "%a %b %d %T %Y\n", &v5);
  if (result)
  {
    v4 = timegm(&v5);
    if (v4 == -1)
    {
      return 0;
    }

    else
    {
      *(a1 + 20) = v4;
      return 1;
    }
  }

  return result;
}

BOOL sub_10114E4E4(uint64_t a1, std::string *a2)
{
  v6 = *(a1 + 20);
  *__s = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  memset(&v5, 0, sizeof(v5));
  gmtime_r(&v6, &v5);
  strftime(__s, 0x1AuLL, "%a %b %d %T %Y\n", &v5);
  v3 = __s[0];
  if (__s[0])
  {
    sub_100016890(a2, __s);
  }

  return v3 != 0;
}

void *stewie::Targets::Targets(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  sub_10114E900(a1 + 2, a2);
  return a1;
}

void sub_10114E768(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t stewie::Targets::getById@<X0>(stewie::Targets *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(this + 3);
  result = this + 24;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = result;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != result && *(v6 + 32) <= a2)
  {
    v11 = *(v6 + 40);
    v10 = *(v6 + 48);
    *a3 = v11;
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_10114E85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100E6ADEC(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10114E880(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10114E8C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10114E900(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_10114E958(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_10114E958(uint64_t *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10114E9E0(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t *sub_10114E9E0(uint64_t **a1, uint64_t *a2, unsigned int *a3)
{
  v3 = a2;
  v4 = *a3;
  v5 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v6 = *(a2 + 8);
    if (v6 <= v4)
    {
      if (v6 >= v4)
      {
        return v3;
      }

      v10 = a2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
          v12 = v11;
        }

        while (v10);
      }

      else
      {
        v12 = a2;
        do
        {
          v19 = v12;
          v12 = v12[2];
        }

        while (*v12 != v19);
      }

      if (v12 == v5 || *(v12 + 8) > v4 || (v20 = *v5) == 0)
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v17 = v20;
          v21 = *(v20 + 8);
          if (v21 <= v4)
          {
            break;
          }

          v20 = *v20;
          if (!*v17)
          {
            goto LABEL_38;
          }
        }

        if (v21 >= v4)
        {
          return v17;
        }

        v20 = v20[1];
        if (!v20)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
    goto LABEL_16;
  }

  if (v7)
  {
    v8 = *a2;
    do
    {
      v9 = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    v13 = a2;
    do
    {
      v9 = v13[2];
      v14 = *v9 == v13;
      v13 = v9;
    }

    while (v14);
  }

  if (*(v9 + 8) >= v4)
  {
    v16 = *v5;
    if (!*v5)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = *(v16 + 8);
        if (v18 <= v4)
        {
          break;
        }

        v16 = *v16;
        if (!*v17)
        {
          goto LABEL_38;
        }
      }

      if (v18 >= v4)
      {
        return v17;
      }

      v16 = v16[1];
      if (!v16)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_16:
  if (v7)
  {
    v15 = v9 + 1;
  }

  else
  {
    v15 = a2;
  }

  v3 = *v15;
  if (!*v15)
  {
    goto LABEL_38;
  }

  return v3;
}

void *sub_10114EDA0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  *a1 = off_101F118F8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v6 = a3[1];
  a1[4] = *a3;
  a1[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = [[NSMutableDictionary alloc] initWithCapacity:10];
  v8 = a1[2];
  a1[2] = v7;

  v9 = a1[1];
  a1[1] = v5;
  v10 = v5;

  v11 = a1[3];
  a1[3] = 0;

  return a1;
}

void sub_10114EE54(_Unwind_Exception *a1)
{
  v4 = *(v1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  DataUsageCacheManagerInterface::~DataUsageCacheManagerInterface(v1);
  _Unwind_Resume(a1);
}

void sub_10114EE90(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v19 = [*(a1 + 8) mainObjectContext];
  if (v19)
  {
    v16 = [NSEntityDescription entityForName:@"Process" inManagedObjectContext:?];
    v17 = objc_alloc_init(NSFetchRequest);
    [v17 setEntity:v16];
    [v17 setResultType:2];
    [v17 setFetchLimit:10];
    v2 = objc_alloc_init(NSExpressionDescription);
    [v2 setName:@"objectID"];
    v3 = +[NSExpression expressionForEvaluatedObject];
    [v2 setExpression:v3];

    [v2 setExpressionResultType:2000];
    v4 = [NSArray arrayWithObjects:@"procName", v2, 0];
    [v17 setPropertiesToFetch:v4];

    v24 = 0;
    v5 = [v19 executeFetchRequest:v17 error:&v24];
    v15 = v24;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"procName"];
          v12 = [v10 objectForKeyedSubscript:@"objectID"];
          sub_10114F208(a1, v11, v12);
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);
    }

    v13 = v19;
  }

  else
  {
    v14 = *getDataUsageLog();
    v13 = 0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Managed object context is nil", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_10114F208(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11 && v5)
  {
    v6 = [*(a1 + 16) objectForKey:v11];

    if (!v6)
    {
      while ([*(a1 + 16) count] >= 0xA)
      {
        v9 = [*(a1 + 16) keysSortedByValueUsingSelector:"compare:"];
        v10 = [v9 firstObject];

        if (v10)
        {
          [*(a1 + 16) removeObjectForKey:v10];
        }
      }
    }

    v7 = *(a1 + 16);
    v8 = [[CacheEntry alloc] init:v5];
    [v7 setObject:v8 forKey:v11];
  }
}

void sub_10114F358(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v3 = [v3 objectID];
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
}

id sub_10114F3C8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = [*(a1 + 8) mainObjectContext];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectWithID:*(a1 + 24)];
    }

    else
    {
      v5 = *getDataUsageLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Managed object context is nil", v7, 2u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10114F4A0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 procName];
  v4 = [v5 objectID];
  sub_10114F208(a1, v3, v4);
}

id sub_10114F54C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 16) objectForKey:v3];
    if (v4)
    {
      [v4 setLastAccess:CFAbsoluteTimeGetCurrent()];
      v5 = [v4 nsManagedObjectId];
      if (v5)
      {
        v6 = [*(a1 + 8) mainObjectContext];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 objectWithID:v5];
        }

        else
        {
          v9 = *getDataUsageLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v11 = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Managed object context is nil", v11, 2u);
          }

          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10114F6B4(uint64_t a1)
{
  *a1 = off_101F118F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;

  v5 = *(a1 + 40);
  if (v5)
  {
    sub_100004A34(v5);
  }

  DataUsageCacheManagerInterface::~DataUsageCacheManagerInterface(a1);
}

void sub_10114F750(uint64_t a1)
{
  sub_10114F6B4(a1);

  operator delete();
}

void sub_101150038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011500D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NetworkReachability;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1011501A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[24] path];
    v4 = [v3 usesInterfaceType:1];

    v5 = [v2[24] path];
    v6 = [v5 usesInterfaceType:2];

    v7 = [v2[24] path];
    v8 = [v7 usesInterfaceType:3];

    if (v4)
    {
      v9 = 1;
      *(v2 + 40) = 1;
      v10 = v2[4];
      if (v10)
      {
        v10 = (*(*v10 + 48))(v10, v2 + 5);
      }
    }

    else if (v6)
    {
      *(v2 + 40) = 2;
      v10 = v2[4];
      if (v10)
      {
        v10 = (*(*v10 + 48))(v10, v2 + 5);
      }

      v9 = 1;
    }

    else
    {
      *(v2 + 40) = 0;
      v10 = v2[4];
      if (v10)
      {
        v10 = (*(*v10 + 48))(v10, v2 + 5);
      }

      v9 = 2;
    }

    if (capabilities::ct::getBasebandBootStrategy(v10) == 2)
    {
      v11 = [v2[24] path];
      v12 = [v11 usesInterfaceType:0];

      if (v12)
      {
        v13 = [v2[24] path];
        v14 = [v13 interface];
        v15 = [v14 subtype];

        if (v15 == 5001)
        {
          v16 = *v2[27];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 136315138;
            v25 = CSIBOOLAsString(1);
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I On Companion: %s", &v24, 0xCu);
          }

          v9 = 1;
        }
      }
    }

    if (*(v2 + 80) != v9)
    {
      *(v2 + 80) = v9;
      v17 = v2[9];
      if (v17)
      {
        (*(*v17 + 48))(v17, v2 + 10);
      }
    }

    if (*(v2 + 120) != v4)
    {
      *(v2 + 120) = v4;
      v18 = v2[14];
      if (v18)
      {
        (*(*v18 + 48))(v18, v2 + 15);
      }
    }

    if (*(v2 + 160) != v8)
    {
      *(v2 + 160) = v8;
      v19 = v2[19];
      if (v19)
      {
        (*(*v19 + 48))(v19, v2 + 20);
      }
    }

    v20 = *v2[27];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = CSIBOOLAsString(v4);
      v22 = CSIBOOLAsString(v6);
      v23 = CSIBOOLAsString(v8);
      v24 = 136315650;
      v25 = v21;
      v26 = 2080;
      v27 = v22;
      v28 = 2080;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I On WiFi: %s On Cellular: %s On Ethernet: %s", &v24, 0x20u);
    }
  }
}

uint64_t sub_101150684(uint64_t a1)
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

uint64_t sub_101150704(uint64_t a1)
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

uint64_t sub_101150784(uint64_t a1)
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

uint64_t sub_101150804(uint64_t a1)
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

uint64_t sub_1011508F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F11988;
  a2[1] = v2;
  return result;
}

void sub_101150920(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v8 = 0;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/internet_reachability_interface");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1011509D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101150A18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101150AD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F11A18;
  a2[1] = v2;
  return result;
}

void sub_101150B00(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v8 = 0;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/internet_status");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_101150BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101150BF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101150CB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F11AA8;
  a2[1] = v2;
  return result;
}

void sub_101150CE0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v8 = 0;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/wifi_status");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_101150D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101150DD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101150E94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F11B38;
  a2[1] = v2;
  return result;
}

void sub_101150EC0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v8 = 0;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/ethernet_status");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_101150F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_101150FB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101151004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_101151110;
  v3[3] = &unk_101F11BB8;
  v3[4] = v1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (v1 + 8));
  v2 = *(v1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_101151F1C;
  block[3] = &unk_101F11C20;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

wis::MetricContainer **sub_101151110(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[131];
  v3 = v1[132];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 56);
    v6 = CSIBOOLAsString(*(v2 + 64));
    *v19 = 136315394;
    *&v19[4] = v5;
    *&v19[12] = 2080;
    *&v19[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s", v19, 0x16u);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  v7 = v1[127];
  v8 = v1[128];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v1[5];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v7 + 56);
    v11 = CSIBOOLAsString(*(v7 + 64));
    *v19 = 136315394;
    *&v19[4] = v10;
    *&v19[12] = 2080;
    *&v19[14] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s", v19, 0x16u);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  v12 = v1[129];
  v13 = v1[130];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v1[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(v12 + 56);
    v16 = CSIBOOLAsString(*(v12 + 64));
    *v19 = 136315394;
    *&v19[4] = v15;
    *&v19[12] = 2080;
    *&v19[14] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s", v19, 0x16u);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v17 = v1[5];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Metric queried", v19, 2u);
  }

  *v19 = _NSConcreteStackBlock;
  *&v19[8] = 0x40000000;
  *&v19[16] = sub_101151544;
  v20 = &unk_101F11BF8;
  v21 = v1;
  return sub_1011513B4(v19);
}

void sub_10115138C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

wis::MetricContainer **sub_1011513B4(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v5 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x8007Fu);
  if (v5)
  {
    v3 = 0;
    v4 = 0;
    sub_10001C610(&v3);
    if (v3)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  return sub_10001C0A0(&v5);
}

void sub_1011514C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

void RoamingNetworkHandler::submitOperatorRoamingAwdMetric(RoamingNetworkHandler *this)
{
  v2 = *(this + 131);
  v3 = *(this + 132);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 56);
    v6 = CSIBOOLAsString(*(v2 + 64));
    v7 = CSIBOOLAsString(*(v2 + 65));
    *v26 = 136315650;
    *&v26[4] = v5;
    *&v26[12] = 2080;
    *&v26[14] = v6;
    *&v26[22] = 2080;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s, needs submission: %s", v26, 0x20u);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  v8 = *(this + 127);
  v9 = *(this + 128);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v8 + 56);
    v12 = CSIBOOLAsString(*(v8 + 64));
    v13 = CSIBOOLAsString(*(v8 + 65));
    *v26 = 136315650;
    *&v26[4] = v11;
    *&v26[12] = 2080;
    *&v26[14] = v12;
    *&v26[22] = 2080;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s, needs submission: %s", v26, 0x20u);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  v14 = *(this + 129);
  v15 = *(this + 130);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v14 + 56);
    v18 = CSIBOOLAsString(*(v14 + 64));
    v19 = CSIBOOLAsString(*(v14 + 65));
    *v26 = 136315650;
    *&v26[4] = v17;
    *&v26[12] = 2080;
    *&v26[14] = v18;
    *&v26[22] = 2080;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s, needs submission: %s", v26, 0x20u);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v20 = *(this + 127);
  if (*(*(this + 131) + 65) == 1)
  {
    v21 = *(this + 129);
  }

  else
  {
    v21 = *(this + 129);
    if ((*(v20 + 65) & 1) == 0 && *(v21 + 65) != 1)
    {
      return;
    }
  }

  v22 = *(v20 + 64);
  if (*(v21 + 64))
  {
    v23 = v22 | 2;
  }

  else
  {
    if (!v22)
    {
      return;
    }

    v23 = 1;
  }

  v24 = *(this + 5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = "3GPP/3GPP2";
    if (v23 == 1)
    {
      v25 = "3GPP";
    }

    if (v23 == 2)
    {
      v25 = "3GPP2";
    }

    *v26 = 136315138;
    *&v26[4] = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Operator roaming metric is of type: %s", v26, 0xCu);
  }

  *v26 = _NSConcreteStackBlock;
  *&v26[8] = 0x40000000;
  *&v26[16] = sub_101151544;
  v27 = &unk_101F11BF8;
  v28 = this;
  sub_1011513B4(v26);
  sub_10130C7EC(*(this + 131));
  if (v23)
  {
    sub_10130C7EC(*(this + 127));
  }

  if ((v23 & 2) != 0)
  {
    sub_10130C7EC(*(this + 129));
  }
}

void sub_1011518C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoamingNetworkHandler::fillInMetricInfo(RoamingNetworkHandler *this, awd::metrics::CommCenterOperatorRoaming *a2)
{
  v4 = *(this + 131);
  v5 = *(this + 132);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v4 + 56);
    v8 = CSIBOOLAsString(*(v4 + 64));
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v7;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s", &__p, 0x16u);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  v9 = *(this + 127);
  v10 = *(this + 128);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(v9 + 56);
    v13 = CSIBOOLAsString(*(v9 + 64));
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v12;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s", &__p, 0x16u);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  v14 = *(this + 129);
  v15 = *(this + 130);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v14 + 56);
    v18 = CSIBOOLAsString(*(v14 + 64));
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v17;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s, valid: %s", &__p, 0x16u);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v19 = *(this + 131);
  if (v19[2].__r_.__value_.__s.__data_[16] == 1)
  {
    *(a2 + 27) |= 2u;
    v20 = *(a2 + 2);
    if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v20, v19 + 3);
    v21 = *(this + 131);
    *(a2 + 27) |= 4u;
    v22 = *(a2 + 3);
    if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v22, v21 + 4);
    v23 = *(this + 131);
    *(a2 + 27) |= 0x20u;
    v24 = *(a2 + 10);
    if (v24 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v24, v23 + 5);
    v25 = *(this + 127);
    v26 = *(*(this + 129) + 64);
    if (*(v25 + 64) == 1)
    {
      v27 = *(a2 + 11);
      v28 = *(a2 + 10);
      if (v28 >= v27)
      {
        if (v27 == *(a2 + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32), v27 + 1);
          v27 = *(a2 + 11);
        }

        *(a2 + 11) = v27 + 1;
        operator new();
      }

      v29 = *(a2 + 4);
      *(a2 + 10) = v28 + 1;
      v30 = *(v29 + 8 * v28);
      MCC::getStringValue(&__p, (v25 + 72));
      *(v30 + 52) |= 1u;
      v31 = *(v30 + 8);
      if (v31 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v31, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      MCC::getStringValue(&__p, (*(this + 127) + 104));
      *(v30 + 52) |= 2u;
      v32 = *(v30 + 16);
      if (v32 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v32, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v33 = *(this + 127);
      v34 = *(v30 + 52);
      *(v30 + 32) = *(v33 + 164);
      *(v30 + 52) = v34 | 0xC;
      v35 = *(v30 + 24);
      if (v35 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v35, (v33 + 136));
      v36 = mapRoamingResultToTriBOOL() == 1;
      *(v30 + 52) |= 0x10u;
      *(v30 + 36) = v36;
    }

    if (v26)
    {
      v37 = *(a2 + 17);
      v38 = *(a2 + 16);
      if (v38 >= v37)
      {
        if (v37 == *(a2 + 18))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 56), v37 + 1);
          v37 = *(a2 + 17);
        }

        *(a2 + 17) = v37 + 1;
        operator new();
      }

      v39 = *(a2 + 7);
      *(a2 + 16) = v38 + 1;
      v40 = *(v39 + 8 * v38);
      v41 = *(this + 129);
      *(v40 + 44) |= 8u;
      v42 = *(v40 + 16);
      if (v42 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v42, v41 + 3);
      v43 = *(this + 129);
      v44 = v43[24];
      v45 = *(v40 + 44);
      *(v40 + 44) = v45 | 1;
      *(v40 + 8) = v44;
      *(v40 + 12) = v43[25];
      v46 = v43[27];
      *(v40 + 44) = v45 | 7;
      *(v40 + 24) = v46;
      v47 = mapRoamingResultToTriBOOL() == 1;
      *(v40 + 44) |= 0x10u;
      *(v40 + 28) = v47;
    }
  }

  result = subscriber::simSlotAsInstance();
  v49 = *(a2 + 27);
  *(a2 + 24) = result;
  v50 = *(this + 30);
  *(a2 + 27) = v49 | 0x180;
  *(a2 + 23) = v50;
  return result;
}

uint64_t sub_101151F2C(uint64_t result, uint64_t a2)
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

void sub_101151F48(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

const void **sub_101151F58@<X0>(const void ***a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  result = *a1;
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"TerminalRegistration");
    v5 = 0;
    sub_100010180(&v5, &Value);
    *a2 = v5;
    v5 = 0;
    return sub_10001021C(&v5);
  }

  return result;
}

BOOL sub_101151FD0(const void **a1, const void **a2)
{
  theDict = 0;
  sub_100010024(&v14, a1);
  sub_101151F58(&v14, &theDict);
  sub_10001021C(&v14);
  if (theDict)
  {
    v13 = 0;
    *&v16 = CFDictionaryGetValue(theDict, @"DestinationAddress");
    sub_100060DE8(&v13, &v16);
    if (v13)
    {
      v16 = 0uLL;
      v17 = 0;
      ctu::cf::assign();
      v12 = v17;
      *__p = v16;
      v3 = a2[1];
      v4 = *(a2 + 23);
      v5 = SHIBYTE(v17);
      if (v17 >= 0)
      {
        v6 = HIBYTE(v12);
      }

      else
      {
        v6 = __p[1];
      }

      if (v4 >= 0)
      {
        v3 = *(a2 + 23);
      }

      if (v6 == v3)
      {
        if (v17 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if (v4 >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        v9 = memcmp(v7, v8, v6) == 0;
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v9 = 0;
        if ((SHIBYTE(v17) & 0x80000000) == 0)
        {
LABEL_21:
          sub_100005978(&v13);
          goto LABEL_22;
        }
      }

      operator delete(__p[0]);
      goto LABEL_21;
    }

    sub_100005978(&v13);
  }

  v9 = 0;
LABEL_22:
  sub_10001021C(&theDict);
  return v9;
}

void sub_101152100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  if (*(v5 - 17) < 0)
  {
    operator delete(*(v5 - 40));
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101152140(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void *sub_1011521C0(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "cb.bom");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F11C68;
  a1[4] = BOMCopierNew();
  BOMCopierSetUserData();
  BOMCopierSetFileErrorHandler();
  BOMCopierSetFatalFileErrorHandler();
  return a1;
}

void sub_1011522B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  CarrierBundleBOMCopierInterface::~CarrierBundleBOMCopierInterface(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_101152308(uint64_t a1, uint64_t a2, int a3)
{
  v5 = BOMCopierUserData();
  if (v5)
  {
    v6 = *(v5 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = a2;
      v10 = 1024;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N BOMCopier error when copying %{public}s: %d", &v8, 0x12u);
    }
  }

  return 2;
}

void sub_1011523C8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = BOMCopierUserData();
  if (v5)
  {
    v6 = *(v5 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446466;
      v8 = a2;
      v9 = 1024;
      v10 = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "BOMCopier fatal error when copying %{public}s: %d", &v7, 0x12u);
    }
  }
}

void sub_101152488(void *a1)
{
  *a1 = off_101F11C68;
  if (a1[4])
  {
    BOMCopierFree();
  }

  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  CarrierBundleBOMCopierInterface::~CarrierBundleBOMCopierInterface(a1);
}

void sub_101152500(void *a1)
{
  sub_101152488(a1);

  operator delete();
}

uint64_t sub_101152538()
{
  *v3 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v3 = Mutable;
    v4 = 0;
    sub_1000296E0(&v4);
    Mutable = *v3;
  }

  sub_1002E0298(Mutable, @"extractPKZip", kCFBooleanTrue);
  sub_1002E0298(*v3, @"copyExtendedAttributes", kCFBooleanTrue);
  sub_1002E0298(*v3, @"copyResources", kCFBooleanTrue);
  v1 = BOMCopierCopyWithOptions();
  sub_1000296E0(v3);
  return v1;
}

uint64_t sub_10115264C()
{
  *v3 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v3 = Mutable;
    v4 = 0;
    sub_1000296E0(&v4);
    Mutable = *v3;
  }

  sub_1002E0298(Mutable, @"createPKZip", kCFBooleanTrue);
  sub_1002E0298(*v3, @"copyExtendedAttributes", kCFBooleanTrue);
  sub_1002E0298(*v3, @"keepParent", kCFBooleanFalse);
  sub_1002E0298(*v3, @"copyResources", kCFBooleanTrue);
  v1 = BOMCopierCopyWithOptions();
  sub_1000296E0(v3);
  return v1;
}

void sub_101152804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101152840(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101152878(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1011528A8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101152D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13)
{
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_101152E50(uint64_t a1)
{

  operator delete();
}

id sub_101152F04(uint64_t a1, void *a2)
{
  *a2 = off_101F11D78;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101152F54(id *a1)
{

  operator delete(a1);
}

void sub_101152F90(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (HIDWORD(*a2))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v5 = [NSError alloc];
    v6 = &NSMachErrorDomain;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  v5 = [NSError alloc];
  v6 = &NSPOSIXErrorDomain;
LABEL_10:
  v7 = [v5 initWithDomain:*v6 code:v3 >> 32 userInfo:0];
LABEL_11:
  v8 = v7;
  (*(*(a1 + 8) + 16))();
}

uint64_t sub_10115306C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F11DD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **stewie::dumpToString@<X0>(CFUUIDRef *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CFUUIDCreateString(kCFAllocatorDefault, *a1);
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a2 = 0uLL;
  *(a2 + 16) = v6;
  return sub_100005978(&v4);
}

void sub_101153124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

void stewie::dumpToString(const void ***a1@<X0>, void *a2@<X8>)
{
  memset(&v25, 0, sizeof(v25));
  sub_10000501C(&v25, "{ ");
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_10000501C(&v22, ", ");
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      sub_100168A48(v5 + 4, &v22, __p);
      if ((v21 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v21 & 0x80u) == 0)
      {
        v8 = v21;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(&v25, v7, v8);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }

  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
    if (v25.__r_.__value_.__l.__size_)
    {
      goto LABEL_20;
    }

LABEL_33:
    v18 = 0;
    goto LABEL_35;
  }

  if (!*(&v25.__r_.__value_.__s + 23))
  {
    goto LABEL_33;
  }

  size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
LABEL_20:
  v13 = HIBYTE(v24);
  if (v24 < 0)
  {
    v13 = v23;
  }

  if (size <= v13)
  {
    __assert_rtn("dumpToString", "StewieDumpStateUtils.cpp", 42, "result.size() > kSeparator.size()");
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v25;
  }

  else
  {
    v14 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v25.__r_.__value_.__l.__size_;
  }

  v16 = v14 + v15;
  v17 = &v25 + SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = (v25.__r_.__value_.__r.__words[0] + v25.__r_.__value_.__l.__size_);
  }

  std::string::erase(&v25, &v16[-v13] - v14, v17 - &v16[-v13]);
  if ((*(&v25.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    v18 = v25.__r_.__value_.__l.__size_;
  }

  else
  {
    v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

LABEL_35:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1000677C4(a2, v18 + 2);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (v18)
  {
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v25;
    }

    else
    {
      v19 = v25.__r_.__value_.__r.__words[0];
    }

    memmove(a2, v19, v18);
  }

  strcpy(a2 + v18, " }");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_101153360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011533B4(NSObject **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = 0;
  v16[1] = 0;
  ctu::TextConverter::TextConverter(v16);
  ctu::TextConverter::pushConversion();
  LODWORD(a2) = *(a2 + 48);
  v8 = *a1;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a2 == 3)
  {
    if (v9)
    {
      if (a3[23] >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Get Inkey: Requested format is UCS2, coding the string %s in UCS2", buf, 0xCu);
    }

    ctu::TextConverter::pushConversion();
    v11 = 3;
  }

  else
  {
    if (v9)
    {
      if (a3[23] >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Get Inkey: Requested format is GSM-7, sending the string %s in GSM 7 bit", buf, 0xCu);
    }

    ctu::TextConverter::pushConversion();
    v11 = 2;
  }

  v13 = a3[23];
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 1);
  }

  ctu::TextConverter::setSource(v16, v14, v15);
  ctu::TextConverter::readChars(buf, v16, 0x7FFFFFFFuLL);
  *a4 = v11;
  *(a4 + 8) = *buf;
  *(a4 + 24) = v18;
  ctu::TextConverter::~TextConverter(v16);
}

void sub_101153594(os_log_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v22[0] = 0;
  v22[1] = 0;
  ctu::TextConverter::TextConverter(v22);
  ctu::TextConverter::pushConversion();
  if (*(a2 + 48) == 3)
  {
    v8 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Get Input: Requested format is UCS2, coding the string %s in UCS2", buf, 0xCu);
    }

    ctu::TextConverter::pushConversion();
    v10 = 3;
  }

  else
  {
    v11 = *(a2 + 52);
    v12 = *a1;
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 == 1)
    {
      if (v13)
      {
        v14 = a3[23];
        v15 = *a3;
        v16 = CSIBOOLAsString(*(a2 + 72));
        if (v14 >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = v15;
        }

        *buf = 136315394;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Get Input: Requested format is GSM-7/Packed, coding the string %s in GSM 7 bit, packed by baseband: %s", buf, 0x16u);
      }

      ctu::TextConverter::pushConversion();
      if ((*(a2 + 72) & 1) == 0)
      {
        ctu::TextConverter::pushConversion();
      }

      v10 = 1;
    }

    else
    {
      if (v13)
      {
        if (a3[23] >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Get Input: Requested format is GSM-7/Unpacked, coding the string %s in GSM 8 bit", buf, 0xCu);
      }

      ctu::TextConverter::pushConversion();
      v10 = 2;
    }
  }

  v19 = a3[23];
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 1);
  }

  ctu::TextConverter::setSource(v22, v20, v21);
  ctu::TextConverter::readChars(buf, v22, 0x7FFFFFFFuLL);
  *a4 = v10;
  *(a4 + 8) = *buf;
  *(a4 + 24) = *&buf[16];
  ctu::TextConverter::~TextConverter(v22);
}

void sub_101153838(os_log_t *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I ProvideLocalInfoLanguage: Coding as GSM 8 bit", v7, 2u);
  }

  *a3 = 2;
  v6 = a3 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 2) = *(a2 + 16);
  }
}

void *sub_1011538D8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 192) = 0;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = (a4 + 16);
  CSIPhoneNumber::CSIPhoneNumber((a4 + 8));
  *(a4 + 168) = 0;
  *(a4 + 192) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  *a4 = a1;
  *(a4 + 4) = a2;
  *(a4 + 8) = *(a3 + 56);
  std::string::operator=(v8, (a3 + 64));
  std::string::operator=((a4 + 40), (a3 + 88));
  *(a4 + 64) = *(a3 + 112);
  *(a4 + 68) = *(a3 + 116);
  std::string::operator=((a4 + 72), (a3 + 120));
  *(a4 + 96) = *(a3 + 144);
  *(a4 + 104) = *(a3 + 152);
  std::string::operator=((a4 + 112), (a3 + 160));
  std::string::operator=((a4 + 136), (a3 + 184));
  v9 = *(a3 + 24);
  *(a4 + 160) = *(a3 + 208);
  v10 = *(a3 + 47);
  if (v10 >= 0)
  {
    v11 = (a3 + 24);
  }

  else
  {
    v11 = v9;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 47);
  }

  else
  {
    v12 = *(a3 + 32);
  }

  result = sub_10110506C((a4 + 168), v11, &v11[v12], v12);
  *(a4 + 192) = *(a3 + 48) == 1;
  *(a4 + 193) = *(a3 + 20) == 1;
  return result;
}

uint64_t sub_101153A24@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  CSIPhoneNumber::CSIPhoneNumber((a4 + 8));
  *(a4 + 168) = 0;
  *a4 = a1;
  *(a4 + 4) = a2;
  CSIPhoneNumber::CSIPhoneNumber();
  *(a4 + 8) = v9;
  if (*(a4 + 39) < 0)
  {
    operator delete(*(a4 + 16));
  }

  *(a4 + 16) = v10;
  *(a4 + 32) = v11;
  if (*(a4 + 63) < 0)
  {
    operator delete(*(a4 + 40));
  }

  *(a4 + 40) = v12;
  *(a4 + 56) = v13;
  *(a4 + 64) = v14;
  *(a4 + 68) = v15;
  if (*(a4 + 95) < 0)
  {
    operator delete(*(a4 + 72));
  }

  *(a4 + 72) = v16;
  *(a4 + 88) = v17;
  *(a4 + 96) = v18;
  *(a4 + 104) = v19;
  if (*(a4 + 135) < 0)
  {
    operator delete(*(a4 + 112));
  }

  *(a4 + 112) = __p;
  *(a4 + 128) = v21;
  if (*(a4 + 159) < 0)
  {
    operator delete(*(a4 + 136));
  }

  *(a4 + 136) = v22;
  *(a4 + 152) = v23;
  *(a4 + 160) = v24;
  result = sub_100DD9800(a3);
  *(a4 + 168) = result;
  return result;
}

std::string *sub_101153C1C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *a3 = a1;
  std::string::operator=((a3 + 8), (a2 + 24));
  return std::string::operator=((a3 + 32), (a2 + 104));
}

void LASDController::submitAWDMetricsForUpdate_sync(uint64_t a1, void *a2)
{
  if (*a2 != a2 + 1)
  {
    operator new();
  }
}

void sub_101153EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_101153F90(capabilities::ct *a1)
{
  BasebandBootStrategy = capabilities::ct::getBasebandBootStrategy(a1);
  if (BasebandBootStrategy != 1)
  {
    if (BasebandBootStrategy == 2)
    {
      sub_101747730(&v2);
    }

    operator new();
  }

  operator new();
}

void sub_10115428C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10115431C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F12010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011543B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F12060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101154454(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F120B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011544F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F12100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10115456C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_1011545F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = off_101F12208;
  v3[3] = v3;
  sub_100125DF8(v1, v3);
  return sub_10002B210(v3);
}

void sub_101154680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101154694(CTXPCNotificationInterface *this)
{
  *this = off_101F12150;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCNotificationInterface::~CTXPCNotificationInterface(this);
}

void sub_1011546F0(CTXPCNotificationInterface *this)
{
  *this = off_101F12150;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCNotificationInterface::~CTXPCNotificationInterface(this);

  operator delete();
}

void sub_1011547C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101154804(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10115483C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10115486C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10115493C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101154988@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsBIPController(a1);
  *a2 = 0;
  a2[1] = 0;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_101154C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_101154DCC(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101154ECC(uint64_t a1)
{
  if ((rest::operator==() & 1) == 0 && *(a1 + 144))
  {
    v2 = *(a1 + 32);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = asString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bundle change: %s", &v3, 0xCu);
    }

    sub_101154F9C(a1);
  }
}

void sub_101154F9C(void *a1)
{
  if (a1[10])
  {
    v2 = sub_10115535C(a1, @"BasebandBootDuration", "Boot Duration");
    if (v2)
    {
      a1[13] = v2;
    }

    else
    {
      v4 = a1[4];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[13];
        v9 = 134217984;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Did not find baseband boot duration key, using default %ld", &v9, 0xCu);
      }
    }

    v6 = sub_10115535C(a1, @"BasebandBootInterval", "Boot Interval");
    if (v6)
    {
      a1[14] = v6;
    }

    else
    {
      v7 = a1[4];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[14];
        v9 = 134217984;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Did not find baseband boot interval key, using default %ld", &v9, 0xCu);
      }
    }
  }

  else
  {
    v3 = a1[4];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Missing CarrierSettings!", &v9, 2u);
    }
  }
}

void sub_101155120(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  if (v2 != a2)
  {
    v4 = *(a1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 136315138;
      *&v6[4] = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband mode changed to %s", v6, 0xCu);
      v2 = *(a1 + 72);
    }

    if (v2 == 3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      *v6 = CFDateCreate(kCFAllocatorDefault, Current);
      DevicePersistentSaveValue(@"kDateBasebandLastBootedKey", *v6);
      if (*(a1 + 124) == 3)
      {
        sub_101155244(a1);
      }

      sub_1003EC530(v6);
    }
  }
}

uint64_t sub_101155244(uint64_t a1)
{
  sub_10000501C(__p, "/cc/assertions/baseband_online");
  ctu::rest::AssertionHandle::create();
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = *(a1 + 136);
  *(a1 + 128) = v4;
  if (v2)
  {
    sub_100004A34(v2);
  }

  __p[0] = off_101F12668;
  __p[1] = a1;
  v7 = __p;
  ctu::rest::AssertionHandle::setHandler_impl();
  return sub_10000FF50(__p);
}

uint64_t sub_10115535C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = *(a1 + 80);
    cf = 0;
    valuePtr[0] = @"BasebandBootOptions";
    valuePtr[1] = a2;
    memset(__p, 0, sizeof(__p));
    sub_10005B328(__p, valuePtr, __p, 2uLL);
    (*(*v5 + 16))(&cf, v5, kCarrier1BundleId, __p, 0, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!cf)
    {
      goto LABEL_15;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr[0]) = 0;
      CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr);
      v7 = valuePtr[0];
      if (SLODWORD(valuePtr[0]) > 0)
      {
        v8 = LODWORD(valuePtr[0]);
LABEL_16:
        sub_10000A1EC(&cf);
        return v8;
      }

      v14 = *(a1 + 32);
      v8 = 0;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = a3;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v7;
      v11 = "#N Invalid %s key value: %d, dropping it!";
      v12 = v14;
      v13 = 18;
    }

    else
    {
      v10 = *(a1 + 32);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:
        v8 = 0;
        goto LABEL_16;
      }

      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = a3;
      v11 = "#N %s key is not a number";
      v12 = v10;
      v13 = 12;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, __p, v13);
    goto LABEL_15;
  }

  v9 = *(a1 + 32);
  v8 = 0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Invalid %s key", __p, 0xCu);
    return 0;
  }

  return v8;
}

void sub_1011555C0(uint64_t *a1, int a2)
{
  if (*(a1 + 30) != a2)
  {
    v3 = a1[4];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Power source changed to %s", &buf, 0xCu);
    }

    v4 = a1[12];
    a1[12] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (*(a1 + 30) != 1)
    {
      Registry::getTimerService(&v15, a1[5]);
      v5 = v15;
      sub_10000501C(v13, "Power source debounce");
      v6 = a1[1];
      if (!v6 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        sub_100013CC4();
      }

      v9 = v8;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      *__p = *v13;
      v19 = v14;
      v13[0] = 0;
      v13[1] = 0;
      v14 = 0;
      *&buf = off_101F126E8;
      *(&buf + 1) = v7;
      v21 = v9;
      p_buf = &buf;
      (*(*v5 + 40))(&v17, v5, __p, 0, 30000000, 0, &buf);
      sub_10002B644(&buf);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v10 = v17;
      v17 = 0;
      v11 = a1[12];
      a1[12] = v10;
      if (v11)
      {
        (*(*v11 + 8))(v11);
        v12 = v17;
        v17 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      if (v16)
      {
        sub_100004A34(v16);
      }
    }
  }
}

void sub_101155820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  sub_10002B644(&a25);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void sub_101155878(uint64_t a1, int a2)
{
  if (*(a1 + 124) != a2)
  {
    v3 = *(a1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = asString();
      v9 = 2080;
      v10 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband service provisioned state has changed from %s to %s", &v7, 0x16u);
    }

    if (*(a1 + 72) == 3)
    {
      v4 = *(a1 + 124);
      if ((v4 - 1) < 2 || v4 == 4)
      {
        v6 = *(a1 + 136);
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        if (v6)
        {
          sub_100004A34(v6);
        }
      }

      else if (v4 == 3)
      {
        sub_101155244(a1);
      }
    }
  }
}

void sub_101155990(void *a1)
{
  v2 = a1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Baseband mode: %s", &v13, 0xCu);
    v2 = a1[4];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[13];
    v13 = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Boot duration: %ld minutes", &v13, 0xCu);
    v2 = a1[4];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[14];
    v13 = 134217984;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Boot interval: %ld hours", &v13, 0xCu);
    v2 = a1[4];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString();
    v13 = 136315138;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Baseband service provisioned state: %s", &v13, 0xCu);
    v2 = a1[4];
  }

  v6 = a1[16];
  v7 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v7)
    {
      return;
    }

    v8 = CSIBOOLAsString(*(v6 + 68) == 2);
    v9 = CSIBOOLAsString(*(a1[16] + 68) == 0);
    v13 = 136315394;
    v14 = v8;
    v15 = 2080;
    v16 = v9;
    v10 = "#I Baseband online assertion: acquired (%s) revoked (%s)";
    v11 = v2;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    LOWORD(v13) = 0;
    v10 = "#I Baseband online assertion not held";
    v11 = v2;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);
}

void sub_101155BD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101155C24(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_101155C64(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1000EFBF0((result + 18));
    v2 = v1[17];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[12];
    v1[12] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[11];
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = v1[8];
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      sub_100004A34(v6);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_101155D24(ServiceManager::Service *this)
{
  *this = off_101F122E8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101155D80(ServiceManager::Service *this)
{
  *this = off_101F122E8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101155E00@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101155E44(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101154DCC(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101154DCC(v4, 0);
}

void sub_101155EE4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101155FC4(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1011560D8(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 56));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10115615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101156178(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  sub_10000501C(&__p, "/cc/props/carrier_bundles");
  operator new();
}

void sub_10115656C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101156670(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12368;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011566A8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  sub_10032CF1C(&v16, a2);
  v11 = 0;
  LOWORD(v11) = *v3;
  v4 = *(v3 + 24);
  *v12 = *(v3 + 8);
  v13 = v4;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v5 = *(v3 + 32);
  v15 = *(v3 + 48);
  *__p = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  v9 = v16;
  v10[0] = v17;
  v10[1] = v18;
  if (v18)
  {
    v17[2] = v10;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v9 = v10;
  }

  sub_101156868(v3, &v9);
  sub_10032D3A4(&v9, v10[0]);
  if (rest::operator!=())
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = (a1[2] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8, &v11);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_10032D3A4(&v16, v17);
}

void sub_1011567E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_10032D3A4(va, v6);
  sub_1000EFBF0(va1);
  sub_10032D3A4(v2 - 56, *(v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_10115681C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_101156868(std::string *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 32) >= 1)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < 1));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= 1)
    {
      LOWORD(result->__r_.__value_.__l.__data_) = *(v5 + 40);
      v6 = (result + 32);
      std::string::operator=(&result->__r_.__value_.__r.__words[1], (v5 + 48));

      return std::string::operator=(v6, (v5 + 72));
    }
  }

  return result;
}

__n128 sub_101156974(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F123E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011569AC(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101156A84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101156B4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12468;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101156B84(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101156C5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101156D24(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F124E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101156D5C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101156D84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101156E4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F12568;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101156E84(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  sub_10084650C(&v13, a2);
  v4 = *v3;
  v5 = v14;
  v11 = v13;
  v12[0] = v14;
  v12[1] = v15;
  if (v15)
  {
    v14[2] = v12;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = v12;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v6 = v12;
  v7 = v5;
  do
  {
    if (*(v7 + 7) >= 1)
    {
      v6 = v7;
    }

    v7 = v7[*(v7 + 7) < 1];
  }

  while (v7);
  if (v6 != v12 && *(v6 + 7) <= 1)
  {
    *v3 = *(v6 + 32);
  }

LABEL_12:
  sub_10006DCAC(&v11, v5);
  if (v4 != *v3)
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = (a1[2] + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v4);
  }

  sub_10006DCAC(&v13, v14);
}

uint64_t sub_101156FB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101156FFC(void ***a1)
{
  v1 = a1;
  sub_101154F9C(**a1);
  operator delete();
}

void *sub_10115707C(void *a1)
{
  *a1 = off_101F125E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1011570C8(void *a1)
{
  *a1 = off_101F125E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1011571A0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F125E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011571D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1011571E8(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101157228(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v4 + 8);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101157340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10115738C(void **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[4];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Releasing baseband online assertion", buf, 2u);
    v2 = *v1;
  }

  v4 = v2[17];
  v2[16] = 0;
  v2[17] = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    sub_100004A34(v5);
  }

  operator delete();
}

uint64_t sub_1011574B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F12668;
  a2[1] = v2;
  return result;
}

void sub_1011574DC(uint64_t a1, _BYTE *a2)
{
  v3 = *(*(a1 + 8) + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v4 = "is";
    }

    else
    {
      v4 = "is NOT";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband online assertion %s held", &v5, 0xCu);
  }
}

uint64_t sub_101157598(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1011575E4(void *a1)
{
  *a1 = off_101F126E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101157630(void *a1)
{
  *a1 = off_101F126E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101157708(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F126E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101157740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101157750(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101157790(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v4 + 8);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_1011578A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011578F4(uint64_t **a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  otherDate = 0;
  DevicePersistentCopyValue(&buf, @"kDateBasebandLastBootedKey", 0);
  sub_100432018(&otherDate, &buf);
  sub_10000A1EC(&buf);
  if (otherDate)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = CFDateCreate(kCFAllocatorDefault, Current);
    v24 = v4;
    if (v4)
    {
      v5 = CFDateGetTimeIntervalSinceDate(v4, otherDate) / 3600;
      v6 = *(v2 + 112);
      v7 = *(v2 + 32);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 >= v5)
      {
        if (v8)
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I It's only been %ld hours since we last booted, waiting", &buf, 0xCu);
        }
      }

      else
      {
        if (v8)
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N It's been %ld hours since we last booted", &buf, 0xCu);
        }

        sub_101155244(v2);
        Registry::getTimerService(&v22, *(v2 + 40));
        v9 = v22;
        sub_10000501C(v20, "Release BIP baseband online assertion");
        v10 = *(v2 + 8);
        if (!v10 || (v11 = *(v2 + 104), v12 = *v2, (v13 = std::__shared_weak_count::lock(v10)) == 0))
        {
          sub_100013CC4();
        }

        v14 = v13;
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        *__p = *v20;
        v27 = v21;
        v20[0] = 0;
        v20[1] = 0;
        v21 = 0;
        *&buf = off_101F125E8;
        *(&buf + 1) = v12;
        v29 = v14;
        p_buf = &buf;
        (*(*v9 + 32))(v9, __p, 0, 60000000 * v11, &buf);
        sub_10002B644(&buf);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }

        if (v23)
        {
          sub_100004A34(v23);
        }
      }
    }

    else
    {
      v16 = *(v2 + 32);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get current time!", &buf, 2u);
      }
    }

    sub_1003EC530(&v24);
  }

  else
  {
    v15 = *(v2 + 32);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Did not find persisted last booted key", &buf, 2u);
    }
  }

  sub_1003EC530(&otherDate);
  sub_10024BAAC(&v19);
  return sub_1000049E0(&v18);
}

void sub_101157C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, const void *a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10002B644(v27 - 96);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_1003EC530(&a20);
  sub_1003EC530(&a21);
  sub_10024BAAC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101157CC0(uint64_t a1, uint64_t a2, char a3, const char *a4)
{
  *(a1 + 16) = 0;
  *a1 = off_101F12768;
  *(a1 + 8) = a2;
  *(a1 + 17) = a3;
  *(a1 + 20) = 0;
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v8 = (a1 + 24);
  *(a1 + 47) = v6;
  if (v6)
  {
    memmove(v8, v5, v6);
  }

  *(v8 + v7) = 0;
  return a1;
}

uint64_t sub_101157DB0(uint64_t a1)
{
  *a1 = off_101F12768;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_101157E00(uint64_t a1)
{
  *a1 = off_101F12768;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

BOOL sub_101157E70(std::string *a1, char *__s)
{
  v4 = strchr(__s, 32);
  if (v4)
  {
    if (*__s == 97 && __s[1] == 100 && __s[2] == 100)
    {
      v5 = 0x80;
    }

    else if (!strncmp(__s, "remove", 6uLL))
    {
      v5 = -127;
    }

    else
    {
      if (strncmp(__s, "filter", 6uLL))
      {
LABEL_11:
        sub_100016890(a1 + 1, v4 + 1);
        return v4 != 0;
      }

      v5 = -126;
    }

    a1->__r_.__value_.__s.__data_[17] = v5;
    goto LABEL_11;
  }

  return v4 != 0;
}

uint64_t sub_101157F30(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!sub_101566604(a2, &v7))
  {
    return 0;
  }

  v4 = *(a2 + 20);
  if (v4 >= *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 8);
  *(a2 + 20) = v4 + 1;
  *(a1 + 17) = *(v5 + v4);

  return sub_10156676C(a2, (a1 + 24), (a1 + 20), 0);
}

uint64_t sub_101157FC4(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v9 = 0u;
  LODWORD(__p[0]) = *a2;
  v10 = 0;
  __p[1] = 0;
  v9 = 0uLL;
  std::string::push_back(&__p[1], *(a1 + 17));
  sub_101135EC0(__p, a1 + 24, *(a1 + 20));
  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = v9;
  }

  sub_101135DF8(a2, v4);
  if (v9 >= 0)
  {
    v5 = &__p[1];
  }

  else
  {
    v5 = __p[1];
  }

  if (v9 >= 0)
  {
    v6 = HIBYTE(v9);
  }

  else
  {
    v6 = v9;
  }

  std::string::append((a2 + 8), v5, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

void sub_101158088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011581DC(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 17);
  if (v2 == 130)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = 7;
      v4 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = 7;
      v4 = this;
    }

    *(v4->__r_.__value_.__r.__words + 3) = 544367988;
    v6 = 1953261926;
    goto LABEL_15;
  }

  if (v2 == 129)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = 7;
      v4 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = 7;
      v4 = this;
    }

    *(v4->__r_.__value_.__r.__words + 3) = 543520367;
    v6 = 1869440370;
LABEL_15:
    LODWORD(v4->__r_.__value_.__l.__data_) = v6;
    v7 = &v4->__r_.__value_.__s.__data_[7];
    goto LABEL_18;
  }

  if (v2 != 128)
  {
    return 0;
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = 4;
    v3 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = 4;
    v3 = this;
  }

  LODWORD(v3->__r_.__value_.__l.__data_) = 543450209;
  v7 = &v3->__r_.__value_.__s.__data_[4];
LABEL_18:
  *v7 = 0;
  v10 = *(a1 + 24);
  v8 = a1 + 24;
  v9 = v10;
  if (*(v8 + 23) < 0)
  {
    v11 = *(v8 + 8);
  }

  else
  {
    v9 = v8;
    v11 = *(v8 + 23);
  }

  std::string::append(this, v9, v11);
  return 1;
}

uint64_t sub_101158300(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = a1[2];
  if (v3 < 2)
  {
    return 3;
  }

  v5 = (*a1 + 1);
  v6 = **a1;
  v7 = v3 - 1;
  v8 = v6 & 0x1F;
  if ((v6 & 0x1F) != 0x1F)
  {
LABEL_10:
    *a2 = v8 | ((v6 & 0xE0) << 56);
    v11 = (v5 + 1);
    v12 = *v5;
    v13 = v7 - 1;
    if (*v5 < 0)
    {
      v15 = v12 & 0x7F;
      if (v15 > 4)
      {
        return 3;
      }

      v16 = v13 >= v15;
      v17 = v13 - v15;
      if (!v16 && a3 == 0)
      {
        return 3;
      }

      v12 = 0;
      if (v15)
      {
        v19 = v15 - 1;
        do
        {
          v20 = *v11++;
          v12 = v20 | (v12 << 8);
          --v15;
        }

        while (v15);
        v11 = &v5[v19 + 2];
        if (v12 > v17 && (a3 & 1) == 0)
        {
          return 3;
        }
      }
    }

    else if (v13 < v12 && a3 == 0)
    {
      return 3;
    }

    result = 0;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    return result;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v9 = v8;
    if (v8 >> 57)
    {
      break;
    }

    v10 = *v5++;
    --v7;
    v8 = v10 & 0x7F | (v8 << 7);
    if ((v10 & 0x80) == 0)
    {
      if (v9 >> 54)
      {
        return 3;
      }

      goto LABEL_10;
    }
  }

  return result;
}