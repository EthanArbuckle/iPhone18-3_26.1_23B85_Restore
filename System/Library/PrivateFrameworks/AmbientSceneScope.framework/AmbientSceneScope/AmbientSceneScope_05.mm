void sub_23EF90244(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        v31 = *(a2 + 16);
        v32 = *(v31 + 48);
        if (v32 >= 2)
        {
          v33 = *(v31 + 40);
          v34 = v32 >> 1;
          v35 = *(a3 + 40);
          v36 = 2 * v34;
          do
          {
            if (v35)
            {
              v38 = *(a3 + 24);
              v70 = *(a3 + 32);
              sub_23EF2F9B0(v38, &v70, 1);
            }

            v37 = *v33++;
            MEMORY[0x245CAC930](*(a3 + 24), v37);
            v35 = *(a3 + 40) + 1;
            *(a3 + 40) = v35;
            v36 -= 2;
          }

          while (v36);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        v20 = *(a2 + 16);
        v21 = *(v20 + 48);
        if (v21 >= 4)
        {
          v22 = *(v20 + 40);
          v23 = v21 >> 2;
          v24 = *(a3 + 40);
          v25 = 4 * v23;
          do
          {
            if (v24)
            {
              v27 = *(a3 + 24);
              v71 = *(a3 + 32);
              sub_23EF2F9B0(v27, &v71, 1);
            }

            v26 = *v22++;
            MEMORY[0x245CAC900](*(a3 + 24), v26);
            v24 = *(a3 + 40) + 1;
            *(a3 + 40) = v24;
            v25 -= 4;
          }

          while (v25);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          v47 = *(a2 + 16);
          v48 = *(v47 + 48);
          if (v48 >= 8)
          {
            v49 = *(v47 + 40);
            v50 = v48 >> 3;
            v51 = *(a3 + 40);
            v52 = 8 * v50;
            do
            {
              if (v51)
              {
                v54 = *(a3 + 24);
                v72 = *(a3 + 32);
                sub_23EF2F9B0(v54, &v72, 1);
              }

              v53 = *v49++;
              MEMORY[0x245CAC950](*(a3 + 24), v53);
              v51 = *(a3 + 40) + 1;
              *(a3 + 40) = v51;
              v52 -= 8;
            }

            while (v52);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v63 = *(a2 + 16);
          v64 = *(v63 + 48);
          if (v64 >= 4)
          {
            v65 = *(v63 + 40);
            v66 = 4 * (v64 >> 2);
            do
            {
              sub_23F2F40F0(a3, v65++);
              v66 -= 4;
            }

            while (v66);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v8 = *(a2 + 16);
          v9 = *(v8 + 48);
          if (v9 >= 8)
          {
            v10 = *(v8 + 40);
            v11 = 8 * (v9 >> 3);
            do
            {
              sub_23F2F435C(a3, v10++);
              v11 -= 8;
            }

            while (v11);
          }

          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_59;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      v12 = *(a2 + 16);
      v13 = *(v12 + 48);
      if (v13 >= 2)
      {
        v14 = *(v12 + 40);
        v15 = v13 >> 1;
        v16 = *(a3 + 40);
        v17 = 2 * v15;
        do
        {
          if (v16)
          {
            v19 = *(a3 + 24);
            v67 = *(a3 + 32);
            sub_23EF2F9B0(v19, &v67, 1);
          }

          v18 = *v14++;
          MEMORY[0x245CAC940](*(a3 + 24), v18);
          v16 = *(a3 + 40) + 1;
          *(a3 + 40) = v16;
          v17 -= 2;
        }

        while (v17);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      v28 = *(a2 + 16);
      v29 = *(v28 + 48);
      if (v29)
      {
        v30 = *(v28 + 40);
        do
        {
          sub_23F2F3D94(a3, v30++);
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        v39 = *(a2 + 16);
        v40 = *(v39 + 48);
        if (v40 >= 4)
        {
          v41 = *(v39 + 40);
          v42 = v40 >> 2;
          v43 = *(a3 + 40);
          v44 = 4 * v42;
          do
          {
            if (v43)
            {
              v46 = *(a3 + 24);
              v68 = *(a3 + 32);
              sub_23EF2F9B0(v46, &v68, 1);
            }

            v45 = *v41++;
            MEMORY[0x245CAC910](*(a3 + 24), v45);
            v43 = *(a3 + 40) + 1;
            *(a3 + 40) = v43;
            v44 -= 4;
          }

          while (v44);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        v55 = *(a2 + 16);
        v56 = *(v55 + 48);
        if (v56 >= 8)
        {
          v57 = *(v55 + 40);
          v58 = v56 >> 3;
          v59 = *(a3 + 40);
          v60 = 8 * v58;
          do
          {
            if (v59)
            {
              v62 = *(a3 + 24);
              v69 = *(a3 + 32);
              sub_23EF2F9B0(v62, &v69, 1);
            }

            v61 = *v57++;
            MEMORY[0x245CAC960](*(a3 + 24), v61);
            v59 = *(a3 + 40) + 1;
            *(a3 + 40) = v59;
            v60 -= 8;
          }

          while (v60);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        v5 = *(a2 + 16);
        v6 = *(v5 + 48);
        if (v6)
        {
          v7 = *(v5 + 40);
          do
          {
            sub_23F2F3CAC(a3, v7++);
            --v6;
          }

          while (v6);
        }

        return;
      default:
LABEL_59:

        sub_23F2F1304(a1);
    }
  }
}

void sub_23EF90694(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __src = v5;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v9, 1uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  sub_23EF90798(v5, &v5, a1);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

char *sub_23EF90798(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          v7 = (a2 + 16);
          v8 = 8;
          break;
        case 11:
          v11 = (a2 + 16);
          v12 = 11;
          goto LABEL_26;
        case 12:
          v7 = (a2 + 16);
          v8 = 12;
          break;
        default:
          goto LABEL_30;
      }

LABEL_24:
      sub_23F2C6BA0(v7, v8);
      v17 = *(a2 + 16);
      v14 = *(v17 + 40);
      v15 = *(v17 + 48) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (a1 != 6)
    {
      v11 = (a2 + 16);
      v12 = 7;
      goto LABEL_26;
    }

    v9 = (a2 + 16);
    v10 = 6;
LABEL_20:
    sub_23F2C6BA0(v9, v10);
    v16 = *(a2 + 16);
    v14 = *(v16 + 40);
    v15 = *(v16 + 48) & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v5 = (a2 + 16);
      v6 = 0;
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_30:

      sub_23F2F1304(a1);
    }

    v9 = (a2 + 16);
    v10 = 1;
    goto LABEL_20;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 5)
      {
        v5 = (a2 + 16);
        v6 = 5;
LABEL_18:
        sub_23F2C6BA0(v5, v6);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v7 = (a2 + 16);
    v8 = 3;
    goto LABEL_24;
  }

  v11 = (a2 + 16);
  v12 = 2;
LABEL_26:
  sub_23F2C6BA0(v11, v12);
  v18 = *(a2 + 16);
  v14 = *(v18 + 40);
  v15 = *(v18 + 48) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_27:
  v19 = *(a3 + 32);

  return sub_23F295368(a3 + 24, v19, v14, &v14[v15], v15);
}

void sub_23EF90908(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_23EF88DD8(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  sub_23EF90A08(v5, &v5, a1);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

unsigned __int8 **sub_23EF90A08(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = sub_23F2C6BA0((a2 + 16), 6);
        v24 = *(a2 + 16);
        v25 = *(v24 + 48);
        if (v25 >= 2)
        {
          v26 = *(v24 + 40);
          v27 = 2 * (v25 >> 1);
          do
          {
            result = (*(*a3 + 48))(a3, v26);
            v26 += 2;
            v27 -= 2;
          }

          while (v27);
        }
      }

      else
      {
        result = sub_23F2C6BA0((a2 + 16), 7);
        v17 = *(a2 + 16);
        v18 = *(v17 + 48);
        if (v18 >= 4)
        {
          v19 = *(v17 + 40);
          v20 = 4 * (v18 >> 2);
          do
          {
            result = (*(*a3 + 56))(a3, v19);
            v19 += 4;
            v20 -= 4;
          }

          while (v20);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          result = sub_23F2C6BA0((a2 + 16), 8);
          v32 = *(a2 + 16);
          v33 = *(v32 + 48);
          if (v33 >= 8)
          {
            v34 = *(v32 + 40);
            v35 = 8 * (v33 >> 3);
            do
            {
              result = (*(*a3 + 72))(a3, v34);
              v34 += 8;
              v35 -= 8;
            }

            while (v35);
          }

          break;
        case 11:
          result = sub_23F2C6BA0((a2 + 16), 11);
          v40 = *(a2 + 16);
          v41 = *(v40 + 48);
          if (v41 >= 4)
          {
            v42 = *(v40 + 40);
            v43 = 4 * (v41 >> 2);
            do
            {
              result = (*(*a3 + 128))(a3, v42);
              v42 += 4;
              v43 -= 4;
            }

            while (v43);
          }

          break;
        case 12:
          result = sub_23F2C6BA0((a2 + 16), 12);
          v9 = *(a2 + 16);
          v10 = *(v9 + 48);
          if (v10 >= 8)
          {
            v11 = *(v9 + 40);
            v12 = 8 * (v10 >> 3);
            do
            {
              result = (*(*a3 + 136))(a3, v11);
              v11 += 8;
              v12 -= 8;
            }

            while (v12);
          }

          break;
        default:
          goto LABEL_53;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_53;
      }

      result = sub_23F2C6BA0((a2 + 16), 1);
      v13 = *(a2 + 16);
      v14 = *(v13 + 48);
      if (v14 >= 2)
      {
        v15 = *(v13 + 40);
        v16 = 2 * (v14 >> 1);
        do
        {
          result = (*(*a3 + 96))(a3, v15);
          v15 += 2;
          v16 -= 2;
        }

        while (v16);
      }
    }

    else
    {
      result = sub_23F2C6BA0((a2 + 16), 0);
      v21 = *(a2 + 16);
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v21 + 40);
        do
        {
          result = (*(*a3 + 80))(a3, v23++);
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        result = sub_23F2C6BA0((a2 + 16), 2);
        v28 = *(a2 + 16);
        v29 = *(v28 + 48);
        if (v29 >= 4)
        {
          v30 = *(v28 + 40);
          v31 = 4 * (v29 >> 2);
          do
          {
            result = (*(*a3 + 104))(a3, v30);
            v30 += 4;
            v31 -= 4;
          }

          while (v31);
        }

        break;
      case 3:
        result = sub_23F2C6BA0((a2 + 16), 3);
        v36 = *(a2 + 16);
        v37 = *(v36 + 48);
        if (v37 >= 8)
        {
          v38 = *(v36 + 40);
          v39 = 8 * (v37 >> 3);
          do
          {
            result = (*(*a3 + 120))(a3, v38);
            v38 += 8;
            v39 -= 8;
          }

          while (v39);
        }

        break;
      case 5:
        result = sub_23F2C6BA0((a2 + 16), 5);
        v6 = *(a2 + 16);
        v7 = *(v6 + 48);
        if (v7)
        {
          v8 = *(v6 + 40);
          do
          {
            result = (*(*a3 + 88))(a3, v8++);
            --v7;
          }

          while (v7);
        }

        return result;
      default:
LABEL_53:

        sub_23F2F1304(a1);
    }
  }

  return result;
}

void sub_23EF90E84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v7[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v8);
  if (v8 >= 2)
  {
    v6 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7[0] = v4;
    sub_23EF898EC(a1);
  }

  sub_23EF9100C();
}

void sub_23EF9100C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C5C10();
}

void sub_23EF911C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF911DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EF911F0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF91C88(v3);
      }

      sub_23EF91B10(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF91E04(v3);
      case 11:
        sub_23EF91FCC(v3);
      case 12:
        sub_23EF92148(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF91374(v3);
    }

    if (a1 == 1)
    {
      sub_23EF914E4(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF9165C(v3);
      case 3:
        sub_23EF917D8(v3);
      case 5:
        sub_23EF919A0(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF91374(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2EBAF0(v4, &v5);
  sub_23F2C544C();
}

void sub_23EF914BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF914E4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED220(v4, &v5);
  sub_23F2C5978();
}

void sub_23EF91634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9165C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED3D0(v4, &v5);
  sub_23F2C5EA8();
}

void sub_23EF917B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF917D8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EEE3C(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C63D8();
}

void sub_23EF9194C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF919A0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ECFE0(v4, &v5);
  sub_23F2C51B8();
}

void sub_23EF91AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF91B10(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED100(v4, &v5);
  sub_23F2C56E0();
}

void sub_23EF91C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF91C88(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED2F8(v4, &v5);
  sub_23F2C5C10();
}

void sub_23EF91DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF91E04(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EEB70(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C6140();
}

void sub_23EF91F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF91FCC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED6DC(v4, &v5);
  sub_23F2C6670();
}

void sub_23EF92120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF92148(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED7F8(v4, &v5);
  sub_23F2C6908();
}

void sub_23EF9229C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF922C4(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF92D5C(v3);
      }

      sub_23EF92BE4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF92ED8(v3);
      case 11:
        sub_23EF930A0(v3);
      case 12:
        sub_23EF9321C(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF92448(v3);
    }

    if (a1 == 1)
    {
      sub_23EF925B8(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF92730(v3);
      case 3:
        sub_23EF928AC(v3);
      case 5:
        sub_23EF92A74(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF92448(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2EBAF0(v4, &v5);
  sub_23F2C544C();
}

void sub_23EF92590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF925B8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED220(v4, &v5);
  sub_23F2C5978();
}

void sub_23EF92708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF92730(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED3D0(v4, &v5);
  sub_23F2C5EA8();
}

void sub_23EF92884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF928AC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EEE3C(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C63D8();
}

void sub_23EF92A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF92A74(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ECFE0(v4, &v5);
  sub_23F2C51B8();
}

void sub_23EF92BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF92BE4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED100(v4, &v5);
  sub_23F2C56E0();
}

void sub_23EF92D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF92D5C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED2F8(v4, &v5);
  sub_23F2C5C10();
}

void sub_23EF92EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF92ED8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EEB70(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C6140();
}

void sub_23EF9304C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF930A0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED6DC(v4, &v5);
  sub_23F2C6670();
}

void sub_23EF931F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9321C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB9A4(v2);
  ++*(v2 + 112);
  sub_23F2ED7F8(v4, &v5);
  sub_23F2C6908();
}

void sub_23EF93370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF93398(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v7 = 0;
    sub_23F2F80F8(*(a2 + 48), &v7);
    *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v6 + 1) = v7;
    sub_23EF62458(a2 + 24, &v6);
    LOBYTE(v6) = 0;
    sub_23F2F7BA4(*(a2 + 48), &v6);
    *a3 = v6;
    sub_23F2F80F8(*(a2 + 48), a3 + 1);
    sub_23EF93680(*a3, a3, a2);
  }

  sub_23EF934E8();
}

void sub_23EF934E8()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C5C10();
}

void sub_23EF93650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9366C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EF93680(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF94094(v3);
      }

      sub_23EF93F24(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF94208(v3);
      case 11:
        sub_23EF9437C(v3);
      case 12:
        sub_23EF944F0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF93804(v3);
    }

    if (a1 == 1)
    {
      sub_23EF93968(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF93AD8(v3);
      case 3:
        sub_23EF93C4C(v3);
      case 5:
        sub_23EF93DC0(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF93804(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EF93940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF93968(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EF93AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF93AD8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EF93C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF93C4C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EF93D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF93DC0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EF93EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF93F24(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EF9406C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94094(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EF941E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94208(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EF94354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9437C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EF944C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF944F0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EF9463C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94664(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF95078(v3);
      }

      sub_23EF94F08(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF951EC(v3);
      case 11:
        sub_23EF95360(v3);
      case 12:
        sub_23EF954D4(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF947E8(v3);
    }

    if (a1 == 1)
    {
      sub_23EF9494C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF94ABC(v3);
      case 3:
        sub_23EF94C30(v3);
      case 5:
        sub_23EF94DA4(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF947E8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EF94924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9494C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EF94A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94ABC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EF94C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94C30(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EF94D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94DA4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EF94EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF94F08(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EF95050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF95078(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EF951C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF951EC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EF95338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF95360(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EF954AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF954D4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EF95620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF95648(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v7[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v8);
  if (v8 >= 2)
  {
    v6 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7[0] = v4;
    sub_23EF8A8C4(a1);
  }

  sub_23EF957D0();
}

void sub_23EF957D0()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C5C10();
}

void sub_23EF95984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF959A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EF959B4(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF9644C(v3);
      }

      sub_23EF962D4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF965C8(v3);
      case 11:
        sub_23EF96790(v3);
      case 12:
        sub_23EF9690C(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF95B38(v3);
    }

    if (a1 == 1)
    {
      sub_23EF95CA8(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF95E20(v3);
      case 3:
        sub_23EF95F9C(v3);
      case 5:
        sub_23EF96164(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF95B38(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EB858(v4, &v5);
  sub_23F2C544C();
}

void sub_23EF95C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF95CA8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC294(v4, &v5);
  sub_23F2C5978();
}

void sub_23EF95DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF95E20(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC444(v4, &v5);
  sub_23F2C5EA8();
}

void sub_23EF95F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF95F9C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EDFA0(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C63D8();
}

void sub_23EF96110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF96164(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC054(v4, &v5);
  sub_23F2C51B8();
}

void sub_23EF962AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF962D4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC174(v4, &v5);
  sub_23F2C56E0();
}

void sub_23EF96424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9644C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC36C(v4, &v5);
  sub_23F2C5C10();
}

void sub_23EF965A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF965C8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EDA80(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C6140();
}

void sub_23EF9673C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF96790(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC778(v4, &v5);
  sub_23F2C6670();
}

void sub_23EF968E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9690C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC8BC(v4, &v5);
  sub_23F2C6908();
}

void sub_23EF96A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF96A88(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF97520(v3);
      }

      sub_23EF973A8(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF9769C(v3);
      case 11:
        sub_23EF97864(v3);
      case 12:
        sub_23EF979E0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF96C0C(v3);
    }

    if (a1 == 1)
    {
      sub_23EF96D7C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF96EF4(v3);
      case 3:
        sub_23EF97070(v3);
      case 5:
        sub_23EF97238(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF96C0C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EB858(v4, &v5);
  sub_23F2C544C();
}

void sub_23EF96D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF96D7C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC294(v4, &v5);
  sub_23F2C5978();
}

void sub_23EF96ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF96EF4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC444(v4, &v5);
  sub_23F2C5EA8();
}

void sub_23EF97048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF97070(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EDFA0(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C63D8();
}

void sub_23EF971E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF97238(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC054(v4, &v5);
  sub_23F2C51B8();
}

void sub_23EF97380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF973A8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC174(v4, &v5);
  sub_23F2C56E0();
}

void sub_23EF974F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF97520(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC36C(v4, &v5);
  sub_23F2C5C10();
}

void sub_23EF97674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9769C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_23F2EDA80(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_23F2C6140();
}

void sub_23EF97810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_23EF97864(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC778(v4, &v5);
  sub_23F2C6670();
}

void sub_23EF979B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF979E0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_23F2EB70C(v2);
  ++*(v2 + 112);
  sub_23F2EC8BC(v4, &v5);
  sub_23F2C6908();
}

void sub_23EF97B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF97B5C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  LODWORD(__p) = 2;
  sub_23F2F5830(a2, &__p);
  if (__p > 1)
  {
    LOBYTE(__p) = 0;
    sub_23F2F4C14(a2, &__p);
    *a3 = __p;
    sub_23F2F5EB0(a2, a3 + 1);
    sub_23EF97E2C(*a3, a3, a2);
  }

  sub_23EF97C94();
}

void sub_23EF97C94()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C5C10();
}

void sub_23EF97DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF97E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EF97E2C(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF98828(v3);
      }

      sub_23EF986BC(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF98998(v3);
      case 11:
        sub_23EF98B08(v3);
      case 12:
        sub_23EF98C78(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF97FB0(v3);
    }

    if (a1 == 1)
    {
      sub_23EF98110(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF9827C(v3);
      case 3:
        sub_23EF983EC(v3);
      case 5:
        sub_23EF9855C(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF97FB0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EF980E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF98110(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EF98254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9827C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EF983C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF983EC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EF98534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9855C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EF98694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF986BC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EF98800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF98828(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EF98970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF98998(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EF98AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF98B08(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EF98C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF98C78(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EF98DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF98DE8(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF997E4(v3);
      }

      sub_23EF99678(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF99954(v3);
      case 11:
        sub_23EF99AC4(v3);
      case 12:
        sub_23EF99C34(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF98F6C(v3);
    }

    if (a1 == 1)
    {
      sub_23EF990CC(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF99238(v3);
      case 3:
        sub_23EF993A8(v3);
      case 5:
        sub_23EF99518(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF98F6C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EF990A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF990CC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EF99210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99238(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EF99380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF993A8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EF994F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99518(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EF99650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99678(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EF997BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF997E4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EF9992C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99954(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EF99A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99AC4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EF99C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99C34(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EF99D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF99DA4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v7 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v7 > 1)
    {
      sub_23F294FCC(a2);
      sub_23EF9A014(a2, a3);
    }

    sub_23EF99E9C();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF99E9C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C5C10();
}

void sub_23EF99FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EF99FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9A014(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 1;
    a1[6] = v7;
    *a2 = v6;
    v8 = v3 >= v7;
    v9 = v3 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    if (v9 > 7)
    {
      *(a2 + 8) = *(v5 + v7);
      a1[6] += 8;

      sub_23EF9A104(v6, a2, a1);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF9A104(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF9AD68(v3);
      }

      sub_23EF9AB98(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF9AF3C(v3);
      case 11:
        sub_23EF9B110(v3);
      case 12:
        sub_23EF9B2E4(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF9A288(v3);
    }

    if (a1 == 1)
    {
      sub_23EF9A454(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF9A624(v3);
      case 3:
        sub_23EF9A7F8(v3);
      case 5:
        sub_23EF9A9CC(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF9A288(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C544C();
}

void sub_23EF9A41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9A454(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5978();
}

void sub_23EF9A5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9A624(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5EA8();
}

void sub_23EF9A7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9A7F8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C63D8();
}

void sub_23EF9A994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9A9CC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C51B8();
}

void sub_23EF9AB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9AB98(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C56E0();
}

void sub_23EF9AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9AD68(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5C10();
}

void sub_23EF9AF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9AF3C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6140();
}

void sub_23EF9B0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9B110(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6670();
}

void sub_23EF9B2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9B2E4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6908();
}

void sub_23EF9B480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9B4B8(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 1;
    a1[6] = v7;
    *a2 = v6;
    v8 = v3 >= v7;
    v9 = v3 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    if (v9 > 7)
    {
      *(a2 + 8) = *(v5 + v7);
      a1[6] += 8;

      sub_23EF9B5A8(v6, a2, a1);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF9B5A8(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF9C20C(v3);
      }

      sub_23EF9C03C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF9C3E0(v3);
      case 11:
        sub_23EF9C5B4(v3);
      case 12:
        sub_23EF9C788(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF9B72C(v3);
    }

    if (a1 == 1)
    {
      sub_23EF9B8F8(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF9BAC8(v3);
      case 3:
        sub_23EF9BC9C(v3);
      case 5:
        sub_23EF9BE70(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF9B72C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C544C();
}

void sub_23EF9B8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9B8F8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5978();
}

void sub_23EF9BA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9BAC8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5EA8();
}

void sub_23EF9BC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9BC9C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C63D8();
}

void sub_23EF9BE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9BE70(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C51B8();
}

void sub_23EF9C004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9C03C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C56E0();
}

void sub_23EF9C1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9C20C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5C10();
}

void sub_23EF9C3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9C3E0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6140();
}

void sub_23EF9C57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9C5B4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6670();
}

void sub_23EF9C750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9C788(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6908();
}

void sub_23EF9C924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9C95C(int *a1, _BYTE *a2, _BYTE *a3)
{
  v6 = 2;
  (*(*a2 + 104))(a2, &v6);
  if (*a1 >= 1)
  {
    sub_23EF9CA74(a1, a2, a3, v6);
  }

  if (v6 >= 2)
  {
    v7 = a3;
    sub_23EF8CEE0(a2, &v7);
    (*(*a2 + 120))(a2, a3 + 8);
    sub_23EF9CE2C(*a3, a3, a2);
  }

  sub_23EF9CC78();
}

void sub_23EF9CA74(int *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_15;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E394198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394198))
      {
        sub_23F302BD0("cv3d::kit::conio::NumbersSample]", 0x1FuLL, &stru_27E394180);
        __cxa_guard_release(&qword_27E394198);
        sub_23F2FF068(&stru_27E394180, v11, 2u);
      }

      sub_23F2FF068(&stru_27E394180, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 > 1 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 >= 2)
  {
LABEL_14:
    v13 = a3;
    sub_23EF8CEE0(a2, &v13);
    (*(*a2 + 120))(a2, a3 + 8);
    sub_23EF9CE2C(*a3, a3, a2);
  }

LABEL_15:
  sub_23EF9CC78();
}

void sub_23EF9CC78()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C5C10();
}

void sub_23EF9CDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9CE18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EF9CE2C(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF9D820(v3);
      }

      sub_23EF9D6B8(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF9D98C(v3);
      case 11:
        sub_23EF9DAF8(v3);
      case 12:
        sub_23EF9DC64(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF9CFB0(v3);
    }

    if (a1 == 1)
    {
      sub_23EF9D114(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF9D27C(v3);
      case 3:
        sub_23EF9D3E8(v3);
      case 5:
        sub_23EF9D554(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF9CFB0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EF9D0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D114(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EF9D254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D27C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EF9D3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D3E8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EF9D52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D554(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EF9D690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D6B8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EF9D7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D820(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EF9D964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9D98C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EF9DAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9DAF8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EF9DC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9DC64(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EF9DDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9DDD0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EF9E7C4(v3);
      }

      sub_23EF9E65C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EF9E930(v3);
      case 11:
        sub_23EF9EA9C(v3);
      case 12:
        sub_23EF9EC08(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EF9DF54(v3);
    }

    if (a1 == 1)
    {
      sub_23EF9E0B8(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EF9E220(v3);
      case 3:
        sub_23EF9E38C(v3);
      case 5:
        sub_23EF9E4F8(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF9DF54(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EF9E090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E0B8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EF9E1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E220(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EF9E364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E38C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EF9E4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E4F8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EF9E634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E65C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EF9E79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E7C4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EF9E908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9E930(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EF9EA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9EA9C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EF9EBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9EC08(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EF9ED4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9ED74(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5[25] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a4;
  sub_23EF432A8(v5, a4 + 1);
  operator new();
}

void sub_23EF9F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_23EFA0A8C(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EF9F218(void *a1)
{
  *a1 = &unk_28517A0F8;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517A140;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23EF9F2D8(void *a1)
{
  *a1 = &unk_28517A0F8;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_28517A140;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF9F3BC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3941F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3941F8))
    {
      sub_23EFA079C(&stru_27E3941E0);
      __cxa_guard_release(&qword_27E3941F8);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&stru_27E3941E0, "{", __p, ",");
}

void sub_23EF9F4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9F4D8(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 3;
}

void *sub_23EF9F554(void *result)
{
  *result = &unk_28517A140;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_23EF9F5E8(void *a1)
{
  *a1 = &unk_28517A0F8;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517A140;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23EF9F6A8(void *a1)
{
  *a1 = &unk_28517A0F8;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_28517A140;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF9F77C()
{
  if ((atomic_load_explicit(&qword_27E3941D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3941D8))
    {
      sub_23EFA04FC();
    }
  }

  sub_23EF9FFB8(&xmmword_27E3941C0, "{");
}

void sub_23EF9F830(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EF9F85C(void *a1)
{
  *a1 = &unk_28517A140;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF9F904(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_28517A160, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_23F2C7774(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23EF9F9D8()
{
  if ((atomic_load_explicit(&qword_27E3941B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3941B8))
    {
      sub_23EF9FED8(&stru_27E3941A0);
      __cxa_guard_release(&qword_27E3941B8);
    }
  }

  sub_23EF9FA80(&stru_27E3941A0, "{");
}

void sub_23EF9FA80(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_23EF4248C(v8, &v3);
  sub_23EF9FC2C();
}

void sub_23EF9FBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF9FBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF9FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF9FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF9FC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF9FE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9FED8(std::string *a1@<X8>)
{
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF6A9B0(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_23EF9FF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF9FFB8(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_23EF4248C(v8, &v3);
  sub_23EFA01E8();
}

void sub_23EFA0158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA0170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA0184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA0198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA01AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA01C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA01D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFA0474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_27E3941B8);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_23EFA05D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFA0600(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF6A9B0(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  sub_23EF42150(v9, &v13, 1uLL);
  sub_23F302CF4(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EFA0748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23EF3291C(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_23EFA079C(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  strcpy(&__p, "cv3d::kit::con::Points");
  *(&__p.__r_.__value_.__s + 23) = 22;
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF6A9B0(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 12;
  strcpy(v14, "viz::Package");
  sub_23F302E84("3U]", 2, &v16);
  v18 = 4;
  strcpy(v17, "void");
  sub_23EF42150(v8, &v13, 4uLL);
  sub_23F302CF4(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23EFA09CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_23EF3291C(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *sub_23EFA0A8C(void *a1)
{
  *a1 = &unk_28517A0F8;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517A140;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23EFA0B4C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_23EF83FFC(a1, v6);
}

void sub_23EFA0D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0655DC((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFA0DA8(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E9D84(a3, &v9);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2EA094(a3, &v9);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v9 = *(*(a2 + 16) + 40);
            v10 = 2;
            sub_23F2EA3A4(a3, &v9);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v7 = *(a2 + 8);
          if (v7)
          {
            v8 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v8;
              v10 = 2;
              sub_23F2EAAD8(a3, &v9);
              v8 += 2;
              --v7;
            }

            while (v7);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v5 = *(a2 + 8);
          if (v5)
          {
            v6 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v6;
              v10 = 2;
              sub_23F2EAF38(a3, &v9);
              v6 += 4;
              --v5;
            }

            while (v5);
          }

          break;
        default:
          goto LABEL_37;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_23F2E9F0C(a3, &v9);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_23F2E76F4(a3, &v9);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2EA21C(a3, &v9);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2EA52C(a3, &v9);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E9C18(a3, &v9);
        }

        return;
      default:
LABEL_37:

        sub_23F2F1304(a1);
    }
  }
}

void sub_23EFA10E0(uint64_t *a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v12) = v8;
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v11[0] = (v4 + 16);
    sub_23F2FC63C(v11, &v12);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v11[0]) = -52;
      BYTE1(v11[0]) = v8;
    }

    else
    {
      LOBYTE(v11[0]) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = a1[3];
  if (*(v6 + 40) == 1)
  {
    v11[0] = (v6 + 16);
    sub_23F2FDC5C(v11, *(&v8 + 1));
  }

  else
  {
    sub_23F2FDF70((v6 + 8));
  }

  v12 = xmmword_278C744E8;
  v11[0] = &v8;
  v11[1] = a1;
  v11[2] = &v12;
  sub_23EFA125C(v8, v11);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t sub_23EFA125C(int a1, void *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v34 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 6);
        v35 = *(v34 + 16);
        v37 = *(v35 + 40);
        v36 = *(v35 + 48);
        v38 = v36 >> 1;
        v39 = *(a2[1] + 24);
        if (*(v39 + 40) == 1)
        {
          *&v98 = v39 + 16;
          if (v36 >= 2)
          {
            v40 = 2 * v38;
            do
            {
              v41 = *v37++;
              result = sub_23F2FC78C(&v98, v41);
              v40 -= 2;
            }

            while (v40);
          }
        }

        else if (v36 >= 2)
        {
          v79 = 2 * v38;
          do
          {
            v80 = *v37++;
            result = sub_23F2FCA5C((v39 + 8));
            v79 -= 2;
          }

          while (v79);
        }
      }

      else
      {
        v21 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 7);
        v22 = *(v21 + 16);
        v24 = *(v22 + 40);
        v23 = *(v22 + 48);
        v25 = v23 >> 2;
        v26 = *(a2[1] + 24);
        if (*(v26 + 40) == 1)
        {
          *&v98 = v26 + 16;
          if (v23 >= 4)
          {
            v27 = 4 * v25;
            do
            {
              v28 = *v24++;
              result = sub_23F2FCD34(&v98, v28);
              v27 -= 4;
            }

            while (v27);
          }
        }

        else if (v23 >= 4)
        {
          v74 = 4 * v25;
          do
          {
            v75 = *v24++;
            result = sub_23F2FD15C((v26 + 8));
            v74 -= 4;
          }

          while (v74);
        }
      }

      goto LABEL_99;
    }

    switch(a1)
    {
      case 8:
        v50 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 8);
        v51 = *(v50 + 16);
        v53 = *(v51 + 40);
        v52 = *(v51 + 48);
        v54 = v52 >> 3;
        v55 = *(a2[1] + 24);
        if (*(v55 + 40) == 1)
        {
          *&v98 = v55 + 16;
          if (v52 >= 8)
          {
            v56 = 8 * v54;
            do
            {
              v57 = *v53++;
              result = sub_23F2FD5D0(&v98, v57);
              v56 -= 8;
            }

            while (v56);
          }
        }

        else if (v52 >= 8)
        {
          v83 = 8 * v54;
          do
          {
            v84 = *v53++;
            result = sub_23F2FDB18((v55 + 8), v84);
            v83 -= 8;
          }

          while (v83);
        }

        goto LABEL_99;
      case 11:
        v66 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 11);
        v67 = *(v66 + 16);
        v69 = *(v67 + 40);
        v68 = *(v67 + 48);
        v70 = v68 >> 2;
        v71 = *(a2[1] + 24);
        if (*(v71 + 40) == 1)
        {
          *&v98 = v71 + 16;
          if (v68 >= 4)
          {
            v72 = 4 * v70;
            do
            {
              result = sub_23F2FE06C(&v97, &v98, v69++);
              v72 -= 4;
            }

            while (v72);
          }
        }

        else if (v68 >= 4)
        {
          v93 = 4 * v70;
          do
          {
            v94 = *v69++;
            LOBYTE(v98) = -54;
            *(&v98 + 1) = bswap32(v94);
            v95 = *(v71 + 8);
            result = std::ostream::write();
            v93 -= 4;
          }

          while (v93);
        }

        goto LABEL_99;
      case 12:
        v9 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 12);
        v10 = *(v9 + 16);
        v12 = *(v10 + 40);
        v11 = *(v10 + 48);
        v13 = v11 >> 3;
        v14 = *(a2[1] + 24);
        if (*(v14 + 40) == 1)
        {
          *&v98 = v14 + 16;
          if (v11 >= 8)
          {
            v15 = 8 * v13;
            do
            {
              result = sub_23F2FE154(&v97, &v98, v12++);
              v15 -= 8;
            }

            while (v15);
          }
        }

        else if (v11 >= 8)
        {
          v88 = 8 * v13;
          do
          {
            v89 = *v12++;
            LOBYTE(v98) = -53;
            *(&v98 + 1) = bswap64(v89);
            v90 = *(v14 + 8);
            result = std::ostream::write();
            v88 -= 8;
          }

          while (v88);
        }

        goto LABEL_99;
    }

    goto LABEL_57;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v42 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 2);
        v43 = *(v42 + 16);
        v45 = *(v43 + 40);
        v44 = *(v43 + 48);
        v46 = v44 >> 2;
        v47 = *(a2[1] + 24);
        if (*(v47 + 40) == 1)
        {
          *&v98 = v47 + 16;
          if (v44 >= 4)
          {
            v48 = 4 * v46;
            do
            {
              v49 = *v45++;
              result = sub_23F2FD25C(&v98, v49);
              v48 -= 4;
            }

            while (v48);
          }
        }

        else if (v44 >= 4)
        {
          v81 = 4 * v46;
          do
          {
            v82 = *v45++;
            result = sub_23F2FD4DC(&v98, (v47 + 8));
            v81 -= 4;
          }

          while (v81);
        }

        goto LABEL_99;
      case 3:
        v58 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 3);
        v59 = *(v58 + 16);
        v61 = *(v59 + 40);
        v60 = *(v59 + 48);
        v62 = v60 >> 3;
        v63 = *(a2[1] + 24);
        if (*(v63 + 40) == 1)
        {
          *&v98 = v63 + 16;
          if (v60 >= 8)
          {
            v64 = 8 * v62;
            do
            {
              v65 = *v61++;
              result = sub_23F2FDC5C(&v98, v65);
              v64 -= 8;
            }

            while (v64);
          }
        }

        else if (v60 >= 8)
        {
          v91 = 8 * v62;
          do
          {
            v92 = *v61++;
            result = sub_23F2FDF70((v63 + 8));
            v91 -= 8;
          }

          while (v91);
        }

        goto LABEL_99;
      case 5:
        v3 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 5);
        v5 = *(v3 + 16);
        v6 = *(v5 + 40);
        v7 = *(v5 + 48);
        v8 = *(a2[1] + 24);
        if (*(v8 + 40) == 1)
        {
          for (*&v98 = v8 + 16; v7; --v7)
          {
            result = sub_23F2FC4E8(&v98, v6++);
          }
        }

        else
        {
          for (; v7; --v7)
          {
            while (1)
            {
              v86 = *v6;
              if (v86 <= -33)
              {
                break;
              }

              LOBYTE(v98) = *v6;
              v85 = *(v8 + 8);
              result = std::ostream::write();
              ++v6;
              if (!--v7)
              {
                goto LABEL_99;
              }
            }

            LOBYTE(v98) = -48;
            BYTE1(v98) = v86;
            v87 = *(v8 + 8);
            result = std::ostream::write();
            ++v6;
          }
        }

        goto LABEL_99;
    }

LABEL_57:
    v73 = *MEMORY[0x277D85DE8];

    sub_23F2F1304(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v16 = *a2;
      sub_23F2C6BA0((*a2 + 16), 1);
      v17 = *(v16 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 1;
      v20 = a2[1];
      *&v98 = v18;
      *(&v98 + 1) = v19;
      result = sub_23F2F7948(v20, &v98);
      goto LABEL_99;
    }

    goto LABEL_57;
  }

  v29 = *a2;
  result = sub_23F2C6BA0((*a2 + 16), 0);
  v30 = *(v29 + 16);
  v31 = *(v30 + 40);
  v32 = *(v30 + 48);
  v33 = *(a2[1] + 24);
  if (*(v33 + 40) == 1)
  {
    for (*&v98 = v33 + 16; v32; --v32)
    {
      result = sub_23F2FC63C(&v98, v31++);
    }
  }

  else
  {
    for (; v32; --v32)
    {
      while (1)
      {
        v77 = *v31;
        if ((v77 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v98) = -52;
        BYTE1(v98) = v77;
        v76 = *(v33 + 8);
        result = std::ostream::write();
        ++v31;
        if (!--v32)
        {
          goto LABEL_99;
        }
      }

      LOBYTE(v98) = *v31;
      v78 = *(v33 + 8);
      result = std::ostream::write();
      ++v31;
    }
  }

LABEL_99:
  v96 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EFA18AC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_23EF861C8(a1, v6);
}

void sub_23EFA1AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F06357C((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFA1B08(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E7EF4(a3, &v9);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E8204(a3, &v9);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v9 = *(*(a2 + 16) + 40);
            v10 = 2;
            sub_23F2E8514(a3, &v9);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v7 = *(a2 + 8);
          if (v7)
          {
            v8 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v8;
              v10 = 2;
              sub_23F2E8C48(a3, &v9);
              v8 += 2;
              --v7;
            }

            while (v7);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v5 = *(a2 + 8);
          if (v5)
          {
            v6 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v6;
              v10 = 2;
              sub_23F2E90A8(a3, &v9);
              v6 += 4;
              --v5;
            }

            while (v5);
          }

          break;
        default:
          goto LABEL_37;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_23F2E807C(a3, &v9);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_23F2E7154(a3, &v9);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E838C(a3, &v9);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E869C(a3, &v9);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_23F2E7D88(a3, &v9);
        }

        return;
      default:
LABEL_37:

        sub_23F2F1304(a1);
    }
  }
}

void sub_23EFA1E40(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_23F2F3D94(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_278C744E8;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_23EFA1F6C(v6, v9);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_23EFA1F6C(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v39 = *a2;
        sub_23F2C6BA0((*a2 + 16), 6);
        v40 = *(v39 + 16);
        v41 = *(v40 + 48);
        if (v41 >= 2)
        {
          v42 = *(v40 + 40);
          v43 = v41 >> 1;
          v44 = a2[1];
          v45 = *(v44 + 40);
          v46 = 2 * v43;
          do
          {
            if (v45)
            {
              v48 = *(v44 + 24);
              v88 = *(v44 + 32);
              sub_23EF2F9B0(v48, &v88, 1);
            }

            v47 = *v42++;
            MEMORY[0x245CAC930](*(v44 + 24), v47);
            v45 = *(v44 + 40) + 1;
            *(v44 + 40) = v45;
            v46 -= 2;
          }

          while (v46);
        }
      }

      else
      {
        v24 = *a2;
        sub_23F2C6BA0((*a2 + 16), 7);
        v25 = *(v24 + 16);
        v26 = *(v25 + 48);
        if (v26 >= 4)
        {
          v27 = *(v25 + 40);
          v28 = v26 >> 2;
          v29 = a2[1];
          v30 = *(v29 + 40);
          v31 = 4 * v28;
          do
          {
            if (v30)
            {
              v33 = *(v29 + 24);
              v89 = *(v29 + 32);
              sub_23EF2F9B0(v33, &v89, 1);
            }

            v32 = *v27++;
            MEMORY[0x245CAC900](*(v29 + 24), v32);
            v30 = *(v29 + 40) + 1;
            *(v29 + 40) = v30;
            v31 -= 4;
          }

          while (v31);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v59 = *a2;
          sub_23F2C6BA0((*a2 + 16), 8);
          v60 = *(v59 + 16);
          v61 = *(v60 + 48);
          if (v61 >= 8)
          {
            v62 = *(v60 + 40);
            v63 = v61 >> 3;
            v64 = a2[1];
            v65 = *(v64 + 40);
            v66 = 8 * v63;
            do
            {
              if (v65)
              {
                v68 = *(v64 + 24);
                v90 = *(v64 + 32);
                sub_23EF2F9B0(v68, &v90, 1);
              }

              v67 = *v62++;
              MEMORY[0x245CAC950](*(v64 + 24), v67);
              v65 = *(v64 + 40) + 1;
              *(v64 + 40) = v65;
              v66 -= 8;
            }

            while (v66);
          }

          break;
        case 11:
          v79 = *a2;
          sub_23F2C6BA0((*a2 + 16), 11);
          v80 = *(v79 + 16);
          v81 = *(v80 + 48);
          if (v81 >= 4)
          {
            v82 = *(v80 + 40);
            v83 = a2[1];
            v84 = 4 * (v81 >> 2);
            do
            {
              sub_23F2F40F0(v83, v82++);
              v84 -= 4;
            }

            while (v84);
          }

          break;
        case 12:
          v8 = *a2;
          sub_23F2C6BA0((*a2 + 16), 12);
          v9 = *(v8 + 16);
          v10 = *(v9 + 48);
          if (v10 >= 8)
          {
            v11 = *(v9 + 40);
            v12 = a2[1];
            v13 = 8 * (v10 >> 3);
            do
            {
              sub_23F2F435C(v12, v11++);
              v13 -= 8;
            }

            while (v13);
          }

          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_59;
      }

      v14 = *a2;
      sub_23F2C6BA0((*a2 + 16), 1);
      v15 = *(v14 + 16);
      v16 = *(v15 + 48);
      if (v16 >= 2)
      {
        v17 = *(v15 + 40);
        v18 = v16 >> 1;
        v19 = a2[1];
        v20 = *(v19 + 40);
        v21 = 2 * v18;
        do
        {
          if (v20)
          {
            v23 = *(v19 + 24);
            v85 = *(v19 + 32);
            sub_23EF2F9B0(v23, &v85, 1);
          }

          v22 = *v17++;
          MEMORY[0x245CAC940](*(v19 + 24), v22);
          v20 = *(v19 + 40) + 1;
          *(v19 + 40) = v20;
          v21 -= 2;
        }

        while (v21);
      }
    }

    else
    {
      v34 = *a2;
      sub_23F2C6BA0((*a2 + 16), 0);
      v35 = *(v34 + 16);
      v36 = *(v35 + 48);
      if (v36)
      {
        v37 = *(v35 + 40);
        v38 = a2[1];
        do
        {
          sub_23F2F3D94(v38, v37++);
          --v36;
        }

        while (v36);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v49 = *a2;
        sub_23F2C6BA0((*a2 + 16), 2);
        v50 = *(v49 + 16);
        v51 = *(v50 + 48);
        if (v51 >= 4)
        {
          v52 = *(v50 + 40);
          v53 = v51 >> 2;
          v54 = a2[1];
          v55 = *(v54 + 40);
          v56 = 4 * v53;
          do
          {
            if (v55)
            {
              v58 = *(v54 + 24);
              v86 = *(v54 + 32);
              sub_23EF2F9B0(v58, &v86, 1);
            }

            v57 = *v52++;
            MEMORY[0x245CAC910](*(v54 + 24), v57);
            v55 = *(v54 + 40) + 1;
            *(v54 + 40) = v55;
            v56 -= 4;
          }

          while (v56);
        }

        break;
      case 3:
        v69 = *a2;
        sub_23F2C6BA0((*a2 + 16), 3);
        v70 = *(v69 + 16);
        v71 = *(v70 + 48);
        if (v71 >= 8)
        {
          v72 = *(v70 + 40);
          v73 = v71 >> 3;
          v74 = a2[1];
          v75 = *(v74 + 40);
          v76 = 8 * v73;
          do
          {
            if (v75)
            {
              v78 = *(v74 + 24);
              v87 = *(v74 + 32);
              sub_23EF2F9B0(v78, &v87, 1);
            }

            v77 = *v72++;
            MEMORY[0x245CAC960](*(v74 + 24), v77);
            v75 = *(v74 + 40) + 1;
            *(v74 + 40) = v75;
            v76 -= 8;
          }

          while (v76);
        }

        break;
      case 5:
        v3 = *a2;
        sub_23F2C6BA0((*a2 + 16), 5);
        v4 = *(v3 + 16);
        v5 = *(v4 + 48);
        if (v5)
        {
          v6 = *(v4 + 40);
          v7 = a2[1];
          do
          {
            sub_23F2F3CAC(v7, v6++);
            --v5;
          }

          while (v5);
        }

        return;
      default:
LABEL_59:

        sub_23F2F1304(a1);
    }
  }
}

void sub_23EFA2408(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_23F295368(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_278C744E8;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_23EFA2524(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

char *sub_23EFA2524(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          v6 = *a2;
          v7 = (*a2 + 16);
          v8 = 8;
          break;
        case 11:
          v12 = *a2;
          v13 = (*a2 + 16);
          v14 = 11;
          goto LABEL_26;
        case 12:
          v6 = *a2;
          v7 = (*a2 + 16);
          v8 = 12;
          break;
        default:
          goto LABEL_30;
      }

LABEL_24:
      sub_23F2C6BA0(v7, v8);
      v19 = *(v6 + 16);
      v16 = *(v19 + 40);
      v17 = *(v19 + 48) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (a1 != 6)
    {
      v12 = *a2;
      v13 = (*a2 + 16);
      v14 = 7;
      goto LABEL_26;
    }

    v9 = *a2;
    v10 = (*a2 + 16);
    v11 = 6;
LABEL_20:
    sub_23F2C6BA0(v10, v11);
    v18 = *(v9 + 16);
    v16 = *(v18 + 40);
    v17 = *(v18 + 48) & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = *a2;
      v4 = (*a2 + 16);
      v5 = 0;
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_30:

      sub_23F2F1304(a1);
    }

    v9 = *a2;
    v10 = (*a2 + 16);
    v11 = 1;
    goto LABEL_20;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 5)
      {
        v3 = *a2;
        v4 = (*a2 + 16);
        v5 = 5;
LABEL_18:
        sub_23F2C6BA0(v4, v5);
        v15 = *(v3 + 16);
        v16 = *(v15 + 40);
        v17 = *(v15 + 48);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v6 = *a2;
    v7 = (*a2 + 16);
    v8 = 3;
    goto LABEL_24;
  }

  v12 = *a2;
  v13 = (*a2 + 16);
  v14 = 2;
LABEL_26:
  sub_23F2C6BA0(v13, v14);
  v20 = *(v12 + 16);
  v16 = *(v20 + 40);
  v17 = *(v20 + 48) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_27:
  v21 = a2[1];
  v22 = *(v21 + 32);

  return sub_23F295368(v21 + 24, v22, v16, &v16[v17], v17);
}

void sub_23EFA26BC(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_23EF88DD8(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_278C744E8;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_23EFA27D8(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

unsigned __int8 **sub_23EFA27D8(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v32 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 6);
        v33 = *(v32 + 16);
        v34 = *(v33 + 48);
        if (v34 >= 2)
        {
          v35 = *(v33 + 40);
          v36 = a2[1];
          v37 = 2 * (v34 >> 1);
          do
          {
            result = (*(*v36 + 48))(v36, v35);
            v35 += 2;
            v37 -= 2;
          }

          while (v37);
        }
      }

      else
      {
        v21 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 7);
        v22 = *(v21 + 16);
        v23 = *(v22 + 48);
        if (v23 >= 4)
        {
          v24 = *(v22 + 40);
          v25 = a2[1];
          v26 = 4 * (v23 >> 2);
          do
          {
            result = (*(*v25 + 56))(v25, v24);
            v24 += 4;
            v26 -= 4;
          }

          while (v26);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v44 = *a2;
          result = sub_23F2C6BA0((*a2 + 16), 8);
          v45 = *(v44 + 16);
          v46 = *(v45 + 48);
          if (v46 >= 8)
          {
            v47 = *(v45 + 40);
            v48 = a2[1];
            v49 = 8 * (v46 >> 3);
            do
            {
              result = (*(*v48 + 72))(v48, v47);
              v47 += 8;
              v49 -= 8;
            }

            while (v49);
          }

          break;
        case 11:
          v56 = *a2;
          result = sub_23F2C6BA0((*a2 + 16), 11);
          v57 = *(v56 + 16);
          v58 = *(v57 + 48);
          if (v58 >= 4)
          {
            v59 = *(v57 + 40);
            v60 = a2[1];
            v61 = 4 * (v58 >> 2);
            do
            {
              result = (*(*v60 + 128))(v60, v59);
              v59 += 4;
              v61 -= 4;
            }

            while (v61);
          }

          break;
        case 12:
          v9 = *a2;
          result = sub_23F2C6BA0((*a2 + 16), 12);
          v10 = *(v9 + 16);
          v11 = *(v10 + 48);
          if (v11 >= 8)
          {
            v12 = *(v10 + 40);
            v13 = a2[1];
            v14 = 8 * (v11 >> 3);
            do
            {
              result = (*(*v13 + 136))(v13, v12);
              v12 += 8;
              v14 -= 8;
            }

            while (v14);
          }

          break;
        default:
          goto LABEL_53;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_53;
      }

      v15 = *a2;
      result = sub_23F2C6BA0((*a2 + 16), 1);
      v16 = *(v15 + 16);
      v17 = *(v16 + 48);
      if (v17 >= 2)
      {
        v18 = *(v16 + 40);
        v19 = a2[1];
        v20 = 2 * (v17 >> 1);
        do
        {
          result = (*(*v19 + 96))(v19, v18);
          v18 += 2;
          v20 -= 2;
        }

        while (v20);
      }
    }

    else
    {
      v27 = *a2;
      result = sub_23F2C6BA0((*a2 + 16), 0);
      v28 = *(v27 + 16);
      v29 = *(v28 + 48);
      if (v29)
      {
        v30 = *(v28 + 40);
        v31 = a2[1];
        do
        {
          result = (*(*v31 + 80))(v31, v30++);
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v38 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 2);
        v39 = *(v38 + 16);
        v40 = *(v39 + 48);
        if (v40 >= 4)
        {
          v41 = *(v39 + 40);
          v42 = a2[1];
          v43 = 4 * (v40 >> 2);
          do
          {
            result = (*(*v42 + 104))(v42, v41);
            v41 += 4;
            v43 -= 4;
          }

          while (v43);
        }

        break;
      case 3:
        v50 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 3);
        v51 = *(v50 + 16);
        v52 = *(v51 + 48);
        if (v52 >= 8)
        {
          v53 = *(v51 + 40);
          v54 = a2[1];
          v55 = 8 * (v52 >> 3);
          do
          {
            result = (*(*v54 + 120))(v54, v53);
            v53 += 8;
            v55 -= 8;
          }

          while (v55);
        }

        break;
      case 5:
        v3 = *a2;
        result = sub_23F2C6BA0((*a2 + 16), 5);
        v5 = *(v3 + 16);
        v6 = *(v5 + 48);
        if (v6)
        {
          v7 = *(v5 + 40);
          v8 = a2[1];
          do
          {
            result = (*(*v8 + 88))(v8, v7++);
            --v6;
          }

          while (v6);
        }

        return result;
      default:
LABEL_53:

        sub_23F2F1304(a1);
    }
  }

  return result;
}

void sub_23EFA2CA0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v4 = a2;
    sub_23EF898EC(a1);
  }

  sub_23EFA2E1C();
}

void sub_23EFA2E1C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C8774();
}

void sub_23EFA3070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFA308C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EFA30A0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EFA3DC0(v3);
      }

      sub_23EFA3BE0(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EFA3FA4(v3);
      case 11:
        sub_23EFA41EC(v3);
      case 12:
        sub_23EFA43D0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EFA3224(v3);
    }

    if (a1 == 1)
    {
      sub_23EFA33FC(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EFA35DC(v3);
      case 3:
        sub_23EFA37C0(v3);
      case 5:
        sub_23EFA3A08(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EFA3224(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2EBAF0(v5, v6);
    i += 2;
  }

  sub_23F2C544C();
}

void sub_23EFA33CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA33FC(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED220(v5, v6);
    i += 2;
  }

  sub_23F2C5978();
}

void sub_23EFA35AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA35DC(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED3D0(v5, v6);
    i += 2;
  }

  sub_23F2C5EA8();
}

void sub_23EFA3790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA37C0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_23F2EEE3C(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_23F2C63D8();
}

void sub_23EFA39A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EFA3A08(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ECFE0(v5, v6);
    i += 2;
  }

  sub_23F2C51B8();
}

void sub_23EFA3BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA3BE0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED100(v5, v6);
    i += 2;
  }

  sub_23F2C56E0();
}

void sub_23EFA3D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA3DC0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED2F8(v5, v6);
    i += 2;
  }

  sub_23F2C5C10();
}

void sub_23EFA3F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA3FA4(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_23F2EEB70(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_23F2C6140();
}

void sub_23EFA4184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EFA41EC(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED6DC(v5, v6);
    i += 2;
  }

  sub_23F2C6670();
}

void sub_23EFA43A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA43D0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED7F8(v5, v6);
    i += 2;
  }

  sub_23F2C6908();
}

void sub_23EFA4584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA45B4(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EFA52D4(v3);
      }

      sub_23EFA50F4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EFA54B8(v3);
      case 11:
        sub_23EFA5700(v3);
      case 12:
        sub_23EFA58E4(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EFA4738(v3);
    }

    if (a1 == 1)
    {
      sub_23EFA4910(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EFA4AF0(v3);
      case 3:
        sub_23EFA4CD4(v3);
      case 5:
        sub_23EFA4F1C(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EFA4738(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2EBAF0(v5, v6);
    i += 2;
  }

  sub_23F2C544C();
}

void sub_23EFA48E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA4910(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED220(v5, v6);
    i += 2;
  }

  sub_23F2C5978();
}

void sub_23EFA4AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA4AF0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED3D0(v5, v6);
    i += 2;
  }

  sub_23F2C5EA8();
}

void sub_23EFA4CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA4CD4(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_23F2EEE3C(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_23F2C63D8();
}

void sub_23EFA4EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EFA4F1C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ECFE0(v5, v6);
    i += 2;
  }

  sub_23F2C51B8();
}

void sub_23EFA50C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA50F4(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED100(v5, v6);
    i += 2;
  }

  sub_23F2C56E0();
}

void sub_23EFA52A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA52D4(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED2F8(v5, v6);
    i += 2;
  }

  sub_23F2C5C10();
}

void sub_23EFA5488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA54B8(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_23F2EEB70(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_23F2C6140();
}

void sub_23EFA5698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EFA5700(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED6DC(v5, v6);
    i += 2;
  }

  sub_23F2C6670();
}

void sub_23EFA58B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA58E4(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB9A4(v4);
    ++v4[14];
    sub_23F2ED7F8(v5, v6);
    i += 2;
  }

  sub_23F2C6908();
}

void sub_23EFA5A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA5AC8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    *&v9 = 0;
    sub_23F2F80F8(*(a2 + 48), &v9);
    *&v7 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v7 + 1) = v9;
    sub_23EF62458(a2 + 24, &v7);
    LOBYTE(v7) = 0;
    sub_23F2F7BA4(*(a2 + 48), &v7);
    *a3 = v7;
    sub_23F2F80F8(*(a2 + 48), a3 + 1);
    v9 = xmmword_278C744E8;
    v6 = *a3;
    *&v7 = a3;
    *(&v7 + 1) = a2;
    v8 = &v9;
    sub_23EFA5DE0(v6, &v7);
  }

  sub_23EFA5C30();
}

void sub_23EFA5C30()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C8774();
}

void sub_23EFA5DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFA5DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EFA5DE0(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EFA6988(a2);
      }

      sub_23EFA67B8(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23EFA6B5C(a2);
      case 11:
        sub_23EFA6D30(a2);
      case 12:
        sub_23EFA6F04(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EFA5EC0(a2);
    }

    if (a1 == 1)
    {
      sub_23EFA6080(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EFA6250(a2);
      case 3:
        sub_23EFA6424(a2);
      case 5:
        sub_23EFA65F8(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EFA5EC0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EFA6050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6080(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EFA6220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6250(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EFA63F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6424(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EFA65C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA65F8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EFA6788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA67B8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EFA6958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6988(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EFA6B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6B5C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EFA6D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6D30(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EFA6ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA6F04(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EFA70A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA70D8(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EFA7C80(a2);
      }

      sub_23EFA7AB0(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23EFA7E54(a2);
      case 11:
        sub_23EFA8028(a2);
      case 12:
        sub_23EFA81FC(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EFA71B8(a2);
    }

    if (a1 == 1)
    {
      sub_23EFA7378(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EFA7548(a2);
      case 3:
        sub_23EFA771C(a2);
      case 5:
        sub_23EFA78F0(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EFA71B8(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23EFA7348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA7378(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23EFA7518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA7548(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23EFA76EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA771C(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23EFA78C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA78F0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23EFA7A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA7AB0(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23EFA7C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA7C80(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23EFA7E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA7E54(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23EFA7FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA8028(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23EFA81CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA81FC(uint64_t a1)
{
  v1 = 2 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23EFA83A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA83D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v4 = a2;
    sub_23EF8A8C4(a1);
  }

  sub_23EFA854C();
}

void sub_23EFA854C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_23F2C8774();
}

void sub_23EFA87A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFA87BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50E84(va);
  _Unwind_Resume(a1);
}

void sub_23EFA87D0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23EFA94F0(v3);
      }

      sub_23EFA9310(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23EFA96D4(v3);
      case 11:
        sub_23EFA991C(v3);
      case 12:
        sub_23EFA9B00(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23EFA8954(v3);
    }

    if (a1 == 1)
    {
      sub_23EFA8B2C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23EFA8D0C(v3);
      case 3:
        sub_23EFA8EF0(v3);
      case 5:
        sub_23EFA9138(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EFA8954(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB70C(v4);
    ++v4[14];
    sub_23F2EB858(v5, v6);
    i += 2;
  }

  sub_23F2C544C();
}

void sub_23EFA8AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA8B2C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (((2 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB70C(v4);
    ++v4[14];
    sub_23F2EC294(v5, v6);
    i += 2;
  }

  sub_23F2C5978();
}

void sub_23EFA8CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA8D0C(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v6[0] = i;
    v6[1] = 2;
    v5 = sub_23F2EB70C(v4);
    ++v4[14];
    sub_23F2EC444(v5, v6);
    i += 2;
  }

  sub_23F2C5EA8();
}

void sub_23EFA8EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EFA8EF0(void *a1)
{
  v2 = *(*a1 + 8);
  if (2 * v2)
  {
    if (!((2 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  for (i = 0; v2; --v2)
  {
    v4 = a1[1];
    v5 = sub_23F2EB70C(v4);
    ++v4[14];
    v7 = 0uLL;
    v8 = 0;
    sub_23F2EDFA0(v5, &v7);
    v6 = v7;
    if (*(&v7 + 1) != v7)
    {
      memmove(i, v7, *(&v7 + 1) - v7);
    }

    if (v6)
    {
      *(&v7 + 1) = v6;
      operator delete(v6);
    }

    i += 16;
  }

  sub_23F2C63D8();
}

void sub_23EFA90D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}