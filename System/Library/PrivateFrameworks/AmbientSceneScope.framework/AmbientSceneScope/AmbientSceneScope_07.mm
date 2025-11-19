void sub_23EFCBCF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23EFCBD34(uint64_t a1, int *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_23F07903C(a1 + 48, (a1 + 40));
  v4 = sub_23F2E6C78(a1);
  *(a1 + 40) = v4;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v4 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v5 = *"sion" == 1852795251) : (v5 = 0), v5))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
    v14 = *a2;
    v12 = *(a2 + 1);
    v10 = a2 + 2;
    v9 = v12;
    v15 = 0;
    v16 = 0;
    if (!v12)
    {
LABEL_10:
      sub_23EFCBF40(a1);
    }
  }

  else
  {
    v15 = 2;
    v6 = sub_23F2E6C78(a1);
    v7 = *v6;
    *v6 = 6;
    v8 = v6[1];
    v6[1] = v15;
    v15 = v8;
    sub_23F06357C(&v15, v7);
    v13 = *a2;
    v11 = *(a2 + 1);
    v10 = a2 + 2;
    v9 = v11;
    v15 = 0;
    v16 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v9(1, v10, &v15, 0, 0);
  goto LABEL_10;
}

void sub_23EFCBEF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFCBF40(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v1 = *(a1 + 88);
    *(a1 + 72) = "camera_type";
    *(a1 + 80) = 11;
    if ((v1 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v2 = 0;
  sub_23EFC9AD8();
}

void sub_23EFCC920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFCC93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFCC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFCC964(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_23F07903C(a1 + 48, v3);
  v6 = sub_23F2E6C78(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
    if (*v6 > 1u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v17) = 6;
    v18 = 2;
    v11 = sub_23F2E6C78(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v17) = v12;
    v13 = v11[1];
    v11[1] = v18;
    v18 = v13;
    sub_23F06357C(&v18, v12);
    if (**v3 > 1u)
    {
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 88);
  *(a1 + 72) = "focal_length";
  *(a1 + 80) = 12;
  if ((v14 & 1) == 0)
  {
    *(a1 + 88) = 1;
  }

LABEL_15:
  v17 = v5;
  v18 = 2;
  sub_23F2E8C48(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "principal_point";
    *(a1 + 80) = 15;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 2;
  v18 = 2;
  sub_23F2E8C48(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v16 = *(a1 + 88);
    *(a1 + 72) = "image_size";
    *(a1 + 80) = 10;
    if ((v16 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 4;
  v18 = 2;
  sub_23F2E838C(a1, &v17);
}

void sub_23EFCCBA8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_23F07903C(a1 + 48, v3);
  v6 = sub_23F2E6C78(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
    if (*v6 > 1u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v17) = 6;
    v18 = 2;
    v11 = sub_23F2E6C78(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v17) = v12;
    v13 = v11[1];
    v11[1] = v18;
    v18 = v13;
    sub_23F06357C(&v18, v12);
    if (**v3 > 1u)
    {
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 88);
  *(a1 + 72) = "focal_length";
  *(a1 + 80) = 12;
  if ((v14 & 1) == 0)
  {
    *(a1 + 88) = 1;
  }

LABEL_15:
  v17 = v5;
  v18 = 2;
  sub_23F2E90A8(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "principal_point";
    *(a1 + 80) = 15;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 2;
  v18 = 2;
  sub_23F2E90A8(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v16 = *(a1 + 88);
    *(a1 + 72) = "image_size";
    *(a1 + 80) = 10;
    if ((v16 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 4;
  v18 = 2;
  sub_23F2E838C(a1, &v17);
}

void sub_23EFCCDEC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_23F07903C(a1 + 48, v3);
  v6 = sub_23F2E6C78(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
    if (*v6 > 1u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v17) = 6;
    v18 = 2;
    v11 = sub_23F2E6C78(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v17) = v12;
    v13 = v11[1];
    v11[1] = v18;
    v18 = v13;
    sub_23F06357C(&v18, v12);
    if (**v3 > 1u)
    {
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 88);
  *(a1 + 72) = "focal_length";
  *(a1 + 80) = 12;
  if ((v14 & 1) == 0)
  {
    *(a1 + 88) = 1;
  }

LABEL_15:
  v17 = v5;
  v18 = 2;
  sub_23F2E8C48(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "principal_point";
    *(a1 + 80) = 15;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 2;
  v18 = 2;
  sub_23F2E8C48(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v16 = *(a1 + 88);
    *(a1 + 72) = "image_size";
    *(a1 + 80) = 10;
    if ((v16 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 4;
  v18 = 2;
  sub_23F2E838C(a1, &v17);
}

void sub_23EFCD030(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_23F07903C(a1 + 48, v3);
  v6 = sub_23F2E6C78(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
    if (*v6 > 1u)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v17) = 6;
    v18 = 2;
    v11 = sub_23F2E6C78(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v17) = v12;
    v13 = v11[1];
    v11[1] = v18;
    v18 = v13;
    sub_23F06357C(&v18, v12);
    if (**v3 > 1u)
    {
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 88);
  *(a1 + 72) = "focal_length";
  *(a1 + 80) = 12;
  if ((v14 & 1) == 0)
  {
    *(a1 + 88) = 1;
  }

LABEL_15:
  v17 = v5;
  v18 = 2;
  sub_23F2E90A8(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "principal_point";
    *(a1 + 80) = 15;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 2;
  v18 = 2;
  sub_23F2E90A8(a1, &v17);
  if (**(a1 + 40) <= 1u)
  {
    v16 = *(a1 + 88);
    *(a1 + 72) = "image_size";
    *(a1 + 80) = 10;
    if ((v16 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v17 = v5 + 4;
  v18 = 2;
  sub_23F2E838C(a1, &v17);
}

void *sub_23EFCD274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    LOBYTE(v14) = *(a2 + 32);
    sub_23EF2F9B0(v5, &v14, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 2);
  ++*(a2 + 40);
  v14 = *a3;
  v8 = *(a3 + 8);
  v7 = a3 + 8;
  v6 = v8;
  v15[0] = 0;
  v15[1] = 0;
  if (v8)
  {
    v6(1, v7, v15, 0, 0);
  }

  sub_23EFCD3E0(a2, &v14);
  if (v15[0])
  {
    (v15[0])(0, v15, 0, 0, 0);
  }

  v9 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v10 = *(a2 + 24);
    LOBYTE(v14) = *(a2 + 32);
    sub_23EF2F9B0(v10, &v14, 1);
  }

  v11 = *(a2 + 24);
  LOBYTE(v14) = v9;
  result = sub_23EF2F9B0(v11, &v14, 1);
  ++*(a2 + 40);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EFCD3B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EFCD3E0(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    v58 = *(a1 + 32);
    sub_23EF2F9B0(v5, &v58, 1);
  }

  result = MEMORY[0x245CAC910](*(a1 + 24), v4);
  ++*(a1 + 40);
  v7 = *a2;
  if (*a2 > 99)
  {
    if (v7 > 109)
    {
      if (v7 != 110)
      {
        if (v7 != 111)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v25 = (a2 + 2);
        v24 = v26;
        if (!v26)
        {
          goto LABEL_62;
        }

        v15 = v24(3, v25, 0, &unk_28517A9E8, &unk_23F312AE0);
        goto LABEL_29;
      }

      v48 = *(a2 + 1);
      v47 = (a2 + 2);
      v46 = v48;
      if (!v48)
      {
        goto LABEL_62;
      }

      v38 = v46(3, v47, 0, &unk_28517A998, &unk_23F312A08);
    }

    else
    {
      if (v7 != 100)
      {
        if (v7 != 101)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v13 = (a2 + 2);
        v12 = v14;
        if (!v14)
        {
          goto LABEL_62;
        }

        v15 = v12(3, v13, 0, &unk_28517A948, &unk_23F312930);
LABEL_29:
        v27 = v15;
        if (!v15)
        {
          goto LABEL_62;
        }

        if (*(a1 + 40))
        {
          v28 = *(a1 + 24);
          v58 = *(a1 + 32);
          sub_23EF2F9B0(v28, &v58, 1);
        }

        MEMORY[0x245CAC910](*(a1 + 24), 2);
        ++*(a1 + 40);
        sub_23F2F435C(a1, v27);
        sub_23F2F435C(a1, (v27 + 8));
        sub_23F2F435C(a1, (v27 + 16));
        sub_23F2F435C(a1, (v27 + 24));
        sub_23F2F435C(a1, (v27 + 32));
        sub_23F2F435C(a1, (v27 + 40));
        sub_23F2F435C(a1, (v27 + 48));
        sub_23F2F435C(a1, (v27 + 56));
        sub_23F2F435C(a1, (v27 + 64));
        if (*(a1 + 40))
        {
          v29 = *(a1 + 24);
          v58 = *(a1 + 32);
          sub_23EF2F9B0(v29, &v58, 1);
        }

        MEMORY[0x245CAC910](*(a1 + 24), *(v27 + 72));
        v30 = *(a1 + 40);
        v23 = (v27 + 76);
        *(a1 + 40) = v30 + 1;
        if (v30 == -1)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      v37 = *(a2 + 1);
      v36 = (a2 + 2);
      v35 = v37;
      if (!v37)
      {
        goto LABEL_62;
      }

      v38 = v35(3, v36, 0, &unk_28517A8F8, &unk_23F312858);
    }

    v49 = v38;
    if (!v38)
    {
      goto LABEL_62;
    }

    if (*(a1 + 40))
    {
      v50 = *(a1 + 24);
      v58 = *(a1 + 32);
      sub_23EF2F9B0(v50, &v58, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), 2);
    ++*(a1 + 40);
    sub_23F2F40F0(a1, v49);
    sub_23F2F40F0(a1, (v49 + 4));
    sub_23F2F40F0(a1, (v49 + 8));
    sub_23F2F40F0(a1, (v49 + 12));
    sub_23F2F40F0(a1, (v49 + 16));
    sub_23F2F40F0(a1, (v49 + 20));
    sub_23F2F40F0(a1, (v49 + 24));
    sub_23F2F40F0(a1, (v49 + 28));
    sub_23F2F40F0(a1, (v49 + 32));
    if (*(a1 + 40))
    {
      v51 = *(a1 + 24);
      v58 = *(a1 + 32);
      sub_23EF2F9B0(v51, &v58, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), *(v49 + 36));
    v52 = *(a1 + 40);
    v23 = (v49 + 40);
    *(a1 + 40) = v52 + 1;
    if (v52 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v7 > 9)
  {
    if (v7 != 10)
    {
      if (v7 != 11)
      {
        return result;
      }

      v18 = *(a2 + 1);
      v17 = (a2 + 2);
      v16 = v18;
      if (!v18)
      {
        goto LABEL_62;
      }

      v11 = v16(3, v17, 0, &unk_28517A8A8, &unk_23F312780);
      goto LABEL_18;
    }

    v41 = *(a2 + 1);
    v40 = (a2 + 2);
    v39 = v41;
    if (!v41)
    {
      goto LABEL_62;
    }

    v34 = v39(3, v40, 0, &unk_28517A858, &unk_23F3126AC);
  }

  else
  {
    if (v7)
    {
      if (v7 != 1)
      {
        return result;
      }

      v10 = *(a2 + 1);
      v9 = (a2 + 2);
      v8 = v10;
      if (!v10)
      {
        goto LABEL_62;
      }

      v11 = v8(3, v9, 0, &unk_28517A808, &unk_23F3125D8);
LABEL_18:
      v19 = v11;
      if (v11)
      {
        if (*(a1 + 40))
        {
          v20 = *(a1 + 24);
          v58 = *(a1 + 32);
          sub_23EF2F9B0(v20, &v58, 1);
        }

        MEMORY[0x245CAC910](*(a1 + 24), 2);
        ++*(a1 + 40);
        sub_23F2F435C(a1, v19);
        sub_23F2F435C(a1, (v19 + 8));
        sub_23F2F435C(a1, (v19 + 16));
        sub_23F2F435C(a1, (v19 + 24));
        if (*(a1 + 40))
        {
          v21 = *(a1 + 24);
          v58 = *(a1 + 32);
          sub_23EF2F9B0(v21, &v58, 1);
        }

        MEMORY[0x245CAC910](*(a1 + 24), *(v19 + 32));
        v22 = *(a1 + 40);
        v23 = (v19 + 36);
        *(a1 + 40) = v22 + 1;
        if (v22 == -1)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

LABEL_62:
      sub_23EFC9F68();
    }

    v33 = *(a2 + 1);
    v32 = (a2 + 2);
    v31 = v33;
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = v31(3, v32, 0, &unk_28517A7B8, &unk_23F312504);
  }

  v42 = v34;
  if (!v34)
  {
    goto LABEL_62;
  }

  if (*(a1 + 40))
  {
    v43 = *(a1 + 24);
    v58 = *(a1 + 32);
    sub_23EF2F9B0(v43, &v58, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 2);
  ++*(a1 + 40);
  sub_23F2F40F0(a1, v42);
  sub_23F2F40F0(a1, (v42 + 4));
  sub_23F2F40F0(a1, (v42 + 8));
  sub_23F2F40F0(a1, (v42 + 12));
  if (*(a1 + 40))
  {
    v44 = *(a1 + 24);
    v58 = *(a1 + 32);
    sub_23EF2F9B0(v44, &v58, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), *(v42 + 16));
  v45 = *(a1 + 40);
  v23 = (v42 + 20);
  *(a1 + 40) = v45 + 1;
  if (v45 == -1)
  {
    goto LABEL_58;
  }

LABEL_57:
  v53 = *(a1 + 24);
  v58 = *(a1 + 32);
  sub_23EF2F9B0(v53, &v58, 1);
LABEL_58:
  MEMORY[0x245CAC910](*(a1 + 24), *v23);
  v54 = *(a1 + 40);
  v55 = *(a1 + 34);
  *(a1 + 40) = v54 + 1;
  if (v54 != -1)
  {
    v56 = *(a1 + 24);
    v58 = *(a1 + 32);
    sub_23EF2F9B0(v56, &v58, 1);
  }

  v57 = *(a1 + 24);
  v58 = v55;
  result = sub_23EF2F9B0(v57, &v58, 1);
  ++*(a1 + 40);
  return result;
}

char *sub_23EFCD9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v10 = 2;
  sub_23F295368(a2 + 24, *(a2 + 32), &v10, v11, 4uLL);
  sub_23F294D84(a2);
  v10 = *a3;
  v7 = *(a3 + 8);
  v6 = a3 + 8;
  v5 = v7;
  v12[0] = 0;
  v12[1] = 0;
  if (v7)
  {
    v5(1, v6, v12, 0, 0);
  }

  result = sub_23EFCDB18(a2, &v10);
  if (v12[0])
  {
    result = (v12[0])(0, v12, 0, 0, 0);
  }

  *(*(*(a2 + 56) - 8) + *(a2 + 24) + 10) = *(a2 + 32) - (*(*(a2 + 56) - 8) + *(a2 + 24)) - 18;
  *(a2 + 56) -= 8;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EFCDAE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_23EFCDB18(uint64_t a1, uint64_t a2)
{
  __src = *a2;
  result = sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v46, 4uLL);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 != 110)
      {
        if (v5 != 111)
        {
          return result;
        }

        v26 = *(a2 + 8);
        v25 = a2 + 8;
        v24 = v26;
        if (!v26)
        {
          goto LABEL_38;
        }

        v13 = v24(3, v25, 0, &unk_28517A9E8, &unk_23F312AE0);
        goto LABEL_22;
      }

      v42 = *(a2 + 8);
      v41 = a2 + 8;
      v40 = v42;
      if (!v42)
      {
        goto LABEL_38;
      }

      v35 = v40(3, v41, 0, &unk_28517A998, &unk_23F312A08);
    }

    else
    {
      if (v5 != 100)
      {
        if (v5 != 101)
        {
          return result;
        }

        v12 = *(a2 + 8);
        v11 = a2 + 8;
        v10 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        v13 = v10(3, v11, 0, &unk_28517A948, &unk_23F312930);
LABEL_22:
        v27 = v13;
        if (v13)
        {
          __src = 2;
          sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v46, 4uLL);
          sub_23F294D84(a1);
          sub_23F295368(a1 + 24, *(a1 + 32), v27, v27 + 16, 0x10uLL);
          sub_23F295368(a1 + 24, *(a1 + 32), v27 + 16, v27 + 32, 0x10uLL);
          v18 = *(a1 + 32);
          v19 = v27 + 72;
          v20 = a1 + 24;
          v21 = v27 + 32;
          v22 = v27 + 72;
          v23 = 40;
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      v34 = *(a2 + 8);
      v33 = a2 + 8;
      v32 = v34;
      if (!v34)
      {
        goto LABEL_38;
      }

      v35 = v32(3, v33, 0, &unk_28517A8F8, &unk_23F312858);
    }

    v43 = v35;
    if (v35)
    {
      __src = 2;
      sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v46, 4uLL);
      sub_23F294D84(a1);
      sub_23F295368(a1 + 24, *(a1 + 32), v43, v43 + 8, 8uLL);
      sub_23F295368(a1 + 24, *(a1 + 32), v43 + 8, v43 + 16, 8uLL);
      v18 = *(a1 + 32);
      v19 = v43 + 36;
      v20 = a1 + 24;
      v21 = v43 + 16;
      v22 = v43 + 36;
      v23 = 20;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v5 <= 9)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v8 = *(a2 + 8);
      v7 = a2 + 8;
      v6 = v8;
      if (v8)
      {
        v9 = v6(3, v7, 0, &unk_28517A808, &unk_23F3125D8);
        goto LABEL_16;
      }

LABEL_38:
      sub_23EFC9F68();
    }

    v30 = *(a2 + 8);
    v29 = a2 + 8;
    v28 = v30;
    if (!v30)
    {
      goto LABEL_38;
    }

    v31 = v28(3, v29, 0, &unk_28517A7B8, &unk_23F312504);
LABEL_30:
    v39 = v31;
    if (v31)
    {
      __src = 2;
      sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v46, 4uLL);
      sub_23F294D84(a1);
      sub_23F295368(a1 + 24, *(a1 + 32), v39, v39 + 8, 8uLL);
      v18 = *(a1 + 32);
      v19 = v39 + 16;
      v20 = a1 + 24;
      v21 = v39 + 8;
      v22 = v39 + 16;
      v23 = 8;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if (v5 == 10)
  {
    v38 = *(a2 + 8);
    v37 = a2 + 8;
    v36 = v38;
    if (!v38)
    {
      goto LABEL_38;
    }

    v31 = v36(3, v37, 0, &unk_28517A858, &unk_23F3126AC);
    goto LABEL_30;
  }

  if (v5 != 11)
  {
    return result;
  }

  v16 = *(a2 + 8);
  v15 = a2 + 8;
  v14 = v16;
  if (!v16)
  {
    goto LABEL_38;
  }

  v9 = v14(3, v15, 0, &unk_28517A8A8, &unk_23F312780);
LABEL_16:
  v17 = v9;
  if (!v9)
  {
    goto LABEL_38;
  }

  __src = 2;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v46, 4uLL);
  sub_23F294D84(a1);
  sub_23F295368(a1 + 24, *(a1 + 32), v17, v17 + 16, 0x10uLL);
  v18 = *(a1 + 32);
  v19 = v17 + 32;
  v20 = a1 + 24;
  v21 = v17 + 16;
  v22 = v17 + 32;
  v23 = 16;
LABEL_36:
  sub_23F295368(v20, v18, v21, v22, v23);
  result = sub_23F295368(a1 + 24, *(a1 + 32), v19, v19 + 8, 8uLL);
  v44 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v44 + 10) = *(a1 + 32) - v44 - 18;
  *(a1 + 56) -= 8;
  return result;
}

uint64_t *sub_23EFCDF4C(uint64_t *a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v10 = a1[1];
  v11 = 2;
  (*(v4 + 104))(a1, &v11);
  if (v10 < 1)
  {
    v11 = *a2;
    v7 = *(a2 + 8);
    v6 = a2 + 8;
    v5 = v7;
    v12[0] = 0;
    v12[1] = 0;
    if (v7)
    {
      v5(1, v6, v12, 0, 0);
    }

    sub_23EFCE23C(a1, &v11);
    if (v12[0])
    {
      (v12[0])(0, v12, 0, 0, 0);
    }
  }

  else
  {
    sub_23EFCE098(&v10, a1, a2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23EFCE068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EFCE098(int *a1, uint64_t a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (*a1 == 2)
  {
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    v5 = *a1;
  }

  if (v5 >= 1)
  {
    (*(*a2 + 16))(a2);
  }

  v12 = *a3;
  v9 = *(a3 + 8);
  v8 = a3 + 8;
  v7 = v9;
  v13[0] = 0;
  v13[1] = 0;
  if (v9)
  {
    v7(1, v8, v13, 0, 0);
  }

  result = sub_23EFCE23C(a2, &v12);
  if (v13[0])
  {
    result = (v13[0])(0, v13, 0, 0, 0);
  }

  if (v5 >= 1)
  {
    result = (*(*a2 + 24))(a2);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EFCE20C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EFCE23C(uint64_t a1, uint64_t a2)
{
  result = sub_23EFCEE04(a1, a2);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 != 110)
      {
        if (v5 != 111)
        {
          return result;
        }

        v20 = *(a2 + 8);
        v19 = a2 + 8;
        v18 = v20;
        if (!v20)
        {
          goto LABEL_46;
        }

        v13 = v18(3, v19, 0, &unk_28517A9E8, &unk_23F312AE0);
        goto LABEL_23;
      }

      v36 = *(a2 + 8);
      v35 = a2 + 8;
      v34 = v36;
      if (!v36)
      {
        goto LABEL_46;
      }

      v30 = v34(3, v35, 0, &unk_28517A998, &unk_23F312A08);
    }

    else
    {
      if (v5 != 100)
      {
        if (v5 != 101)
        {
          return result;
        }

        v12 = *(a2 + 8);
        v11 = a2 + 8;
        v10 = v12;
        if (!v12)
        {
          goto LABEL_46;
        }

        v13 = v10(3, v11, 0, &unk_28517A948, &unk_23F312930);
LABEL_23:
        v21 = v13;
        if (!v13)
        {
          goto LABEL_46;
        }

        v22 = *(a1 + 8);
        LODWORD(v39) = 2;
        (*(*a1 + 104))(a1, &v39);
        if (v22 < 1)
        {
          (*(*a1 + 136))(a1, v21);
          (*(*a1 + 136))(a1, v21 + 8);
          (*(*a1 + 136))(a1, v21 + 16);
          (*(*a1 + 136))(a1, v21 + 24);
          (*(*a1 + 136))(a1, v21 + 32);
          (*(*a1 + 136))(a1, v21 + 40);
          (*(*a1 + 136))(a1, v21 + 48);
          (*(*a1 + 136))(a1, v21 + 56);
          (*(*a1 + 136))(a1, v21 + 64);
          (*(*a1 + 104))(a1, v21 + 72);
          return (*(*a1 + 104))(a1, v21 + 76);
        }

        if (v22 == 2)
        {
          LODWORD(v39) = 2;
          (*(*a1 + 104))(a1, &v39);
        }

        (*(*a1 + 16))(a1);
        (*(*a1 + 136))(a1, v21);
        (*(*a1 + 136))(a1, v21 + 8);
        (*(*a1 + 136))(a1, v21 + 16);
        (*(*a1 + 136))(a1, v21 + 24);
        (*(*a1 + 136))(a1, v21 + 32);
        (*(*a1 + 136))(a1, v21 + 40);
        (*(*a1 + 136))(a1, v21 + 48);
        (*(*a1 + 136))(a1, v21 + 56);
        (*(*a1 + 136))(a1, v21 + 64);
        (*(*a1 + 104))(a1, v21 + 72);
        (*(*a1 + 104))(a1, v21 + 76);
        return (*(*a1 + 24))(a1);
      }

      v29 = *(a2 + 8);
      v28 = a2 + 8;
      v27 = v29;
      if (!v29)
      {
        goto LABEL_46;
      }

      v30 = v27(3, v28, 0, &unk_28517A8F8, &unk_23F312858);
    }

    v37 = v30;
    if (!v30)
    {
      goto LABEL_46;
    }

    v38 = *(a1 + 8);
    LODWORD(v39) = 2;
    (*(*a1 + 104))(a1, &v39);
    if (v38 < 1)
    {
      (*(*a1 + 128))(a1, v37);
      (*(*a1 + 128))(a1, v37 + 4);
      (*(*a1 + 128))(a1, v37 + 8);
      (*(*a1 + 128))(a1, v37 + 12);
      (*(*a1 + 128))(a1, v37 + 16);
      (*(*a1 + 128))(a1, v37 + 20);
      (*(*a1 + 128))(a1, v37 + 24);
      (*(*a1 + 128))(a1, v37 + 28);
      (*(*a1 + 128))(a1, v37 + 32);
      (*(*a1 + 104))(a1, v37 + 36);
      return (*(*a1 + 104))(a1, v37 + 40);
    }

    if (v38 == 2)
    {
      LODWORD(v39) = 2;
      (*(*a1 + 104))(a1, &v39);
    }

    (*(*a1 + 16))(a1);
    (*(*a1 + 128))(a1, v37);
    (*(*a1 + 128))(a1, v37 + 4);
    (*(*a1 + 128))(a1, v37 + 8);
    (*(*a1 + 128))(a1, v37 + 12);
    (*(*a1 + 128))(a1, v37 + 16);
    (*(*a1 + 128))(a1, v37 + 20);
    (*(*a1 + 128))(a1, v37 + 24);
    (*(*a1 + 128))(a1, v37 + 28);
    (*(*a1 + 128))(a1, v37 + 32);
    (*(*a1 + 104))(a1, v37 + 36);
    (*(*a1 + 104))(a1, v37 + 40);
    return (*(*a1 + 24))(a1);
  }

  if (v5 <= 9)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v8 = *(a2 + 8);
      v7 = a2 + 8;
      v6 = v8;
      if (v8)
      {
        v9 = v6(3, v7, 0, &unk_28517A808, &unk_23F3125D8);
        if (v9)
        {
          v39 = *(a1 + 8);
          return sub_23EFCF2D4(&v39, a1, v9);
        }
      }

LABEL_46:
      sub_23EFC9F68();
    }

    v25 = *(a2 + 8);
    v24 = a2 + 8;
    v23 = v25;
    if (!v25)
    {
      goto LABEL_46;
    }

    v26 = v23(3, v24, 0, &unk_28517A7B8, &unk_23F312504);
    if (!v26)
    {
      goto LABEL_46;
    }

LABEL_30:
    v39 = *(a1 + 8);
    return sub_23EFCEF6C(&v39, a1, v26);
  }

  if (v5 == 10)
  {
    v33 = *(a2 + 8);
    v32 = a2 + 8;
    v31 = v33;
    if (!v33)
    {
      goto LABEL_46;
    }

    v26 = v31(3, v32, 0, &unk_28517A858, &unk_23F3126AC);
    if (!v26)
    {
      goto LABEL_46;
    }

    goto LABEL_30;
  }

  if (v5 == 11)
  {
    v16 = *(a2 + 8);
    v15 = a2 + 8;
    v14 = v16;
    if (v16)
    {
      v17 = v14(3, v15, 0, &unk_28517A8A8, &unk_23F312780);
      if (v17)
      {
        v39 = *(a1 + 8);
        return sub_23EFCF2D4(&v39, a1, v17);
      }
    }

    goto LABEL_46;
  }

  return result;
}

uint64_t sub_23EFCEE04(_BYTE *a1, _DWORD *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3[6] = 0;
    sub_23EFC9AD8();
  }

  v3[0] = *a2;
  return (*(*a1 + 104))(a1, v3);
}

void sub_23EFCEF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFCEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFCEF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFCEF6C(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = 2;
  (*(*a2 + 104))(a2, &v7);
  if (*a1 >= 1)
  {
    return sub_23EFCF114(a1, a2, a3);
  }

  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  return (*(*a2 + 104))(a2, a3 + 20);
}

uint64_t sub_23EFCF114(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 2;
    (*(*a2 + 104))(a2, &v8);
    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  result = (*(*a2 + 104))(a2, a3 + 20);
  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

uint64_t sub_23EFCF2D4(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = 2;
  (*(*a2 + 104))(a2, &v7);
  if (*a1 >= 1)
  {
    return sub_23EFCF47C(a1, a2, a3);
  }

  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  return (*(*a2 + 104))(a2, a3 + 36);
}

uint64_t sub_23EFCF47C(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 2;
    (*(*a2 + 104))(a2, &v8);
    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  result = (*(*a2 + 104))(a2, a3 + 36);
  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_23EFCF63C(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v5);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v6);
  if (v6 < 2)
  {
    sub_23EFCF738();
  }

  sub_23EFCF990(a1, a2);
}

void sub_23EFCF918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFCF990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_23EFD0194(a1);
}

void sub_23EFD0194(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F0707E4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EFD0284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EFD0318(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD0444();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v10, &v11);
}

void sub_23EFD0444()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFD07B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD07CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD07E0(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD090C();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v10, &v11);
}

void sub_23EFD090C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFD0CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD0CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD0CC8(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD0DF4();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v10, &v11);
}

void sub_23EFD0DF4()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFD1168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD1190(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD12BC();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v10, &v11);
}

void sub_23EFD12BC()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFD1650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD1664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD1678(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD17EC();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v12, &v13);
}

void sub_23EFD17EC()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFD1AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD1AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD1ADC(uint64_t a1, float *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2;
  v13 = 2;
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v5, &v12);
  v6 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 2;
  v13 = 2;
  v7 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v7, &v12);
  v8 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 4;
  v13 = 5;
  v9 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v9, &v12);
  v10 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 9;
  v13 = 2;
  v11 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v11, &v12);
}

void sub_23EFD1C24(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD1D98();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v12, &v13);
}

void sub_23EFD1D98()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFD209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD20B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD20C4(uint64_t a1, double *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2;
  v13 = 2;
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v5, &v12);
  v6 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 2;
  v13 = 2;
  v7 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v7, &v12);
  v8 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 4;
  v13 = 5;
  v9 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v9, &v12);
  v10 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 9;
  v13 = 2;
  v11 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v11, &v12);
}

void sub_23EFD220C(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD2380();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED6DC(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v12, &v13);
}

void sub_23EFD2380()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFD2648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD265C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD2670(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD27E4();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED7F8(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2ED3D0(v12, &v13);
}

void sub_23EFD27E4()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFD2AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD2AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_23EFD2B10(_DWORD *a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  *a1 = *a2;
  v3 = (a1 + 2);
  v6 = *(a2 + 8);
  v4 = a2 + 8;
  v5 = v6;
  v13[0] = 0;
  v13[1] = 0;
  if (v6)
  {
    v5(2, v4, v13, 0, 0);
  }

  if (v13 != v3)
  {
    v7 = *v3;
    if (v13[0])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v13[0] | v7)
      {
        if (v13[0])
        {
          v7 = v13[0];
          v9 = v3;
        }

        else
        {
          v9 = v13;
        }

        if (v13[0])
        {
          v10 = v13;
        }

        else
        {
          v10 = v3;
        }

        (v7)(2, v10, v9, 0, 0);
      }
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
      (v7)(2, v3, v14, 0, 0);
      (v13[0])(2, v13, v3, 0, 0);
      (v14[0])(2, v14, v13, 0, 0);
      if (v14[0])
      {
        (v14[0])(0, v14, 0, 0, 0);
      }
    }
  }

  if (v13[0])
  {
    (v13[0])(0, v13, 0, 0, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23EFD2C78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EFD2C98(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2(0, a1 + 8, 0, 0, 0);
  }

  return a1;
}

void sub_23EFD2CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_23EFD0194(a1);
}

uint64_t sub_23EFD34E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    sub_23EFD3610();
  }

  v10 = 0;
  sub_23F2F80F8(*(a2 + 48), &v10);
  *&v9 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v9 + 1) = v10;
  sub_23EF62458(a2 + 24, &v9);
  sub_23EFD3868(a2, a3);
  v6 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v8 = *(v6 - 16) - result + *(v6 - 8);
  if (v8)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v8);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD37F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_23EFD3868(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  sub_23F2F7EFC(*(a1 + 48), &v38);
  *a2 = v38;
  result = sub_23F29AC30(a2);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 == 110)
      {
        v36 = *(a2 + 8);
        v35 = a2 + 8;
        v34 = v36;
        if (v36)
        {
          v37 = v34(3, v35, 0, &unk_28517A998, &unk_23F312A08);
          if (v37)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD5A94(&v38, a1, v37, v38);
          }
        }

        goto LABEL_37;
      }

      if (v5 == 111)
      {
        v20 = *(a2 + 8);
        v19 = a2 + 8;
        v18 = v20;
        if (v20)
        {
          v21 = v18(3, v19, 0, &unk_28517A9E8, &unk_23F312AE0);
          if (v21)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD6008(&v38, a1, v21, v38);
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v5 == 100)
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28517A8F8, &unk_23F312858);
          if (v29)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD4F70(&v38, a1, v29, v38);
          }
        }

        goto LABEL_37;
      }

      if (v5 == 101)
      {
        v12 = *(a2 + 8);
        v11 = a2 + 8;
        v10 = v12;
        if (v12)
        {
          v13 = v10(3, v11, 0, &unk_28517A948, &unk_23F312930);
          if (v13)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD54E4(&v38, a1, v13, v38);
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v5 <= 9)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v8 = *(a2 + 8);
        v7 = a2 + 8;
        v6 = v8;
        if (v8)
        {
          v9 = v6(3, v7, 0, &unk_28517A808, &unk_23F3125D8);
          if (v9)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD4114(&v38, a1, v9, v38);
          }
        }
      }

      else
      {
        v24 = *(a2 + 8);
        v23 = a2 + 8;
        v22 = v24;
        if (v24)
        {
          v25 = v22(3, v23, 0, &unk_28517A7B8, &unk_23F312504);
          if (v25)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD3C60(&v38, a1, v25, v38);
          }
        }
      }

LABEL_37:
      sub_23EFC9F68();
    }

    if (v5 == 10)
    {
      v32 = *(a2 + 8);
      v31 = a2 + 8;
      v30 = v32;
      if (v32)
      {
        v33 = v30(3, v31, 0, &unk_28517A858, &unk_23F3126AC);
        if (v33)
        {
          v38 = 2;
          sub_23F2F7EFC(*(a1 + 48), &v38);
          return sub_23EFD45E8(&v38, a1, v33, v38);
        }
      }

      goto LABEL_37;
    }

    if (v5 == 11)
    {
      v16 = *(a2 + 8);
      v15 = a2 + 8;
      v14 = v16;
      if (v16)
      {
        v17 = v14(3, v15, 0, &unk_28517A8A8, &unk_23F312780);
        if (v17)
        {
          v38 = 2;
          sub_23F2F7EFC(*(a1 + 48), &v38);
          return sub_23EFD4A9C(&v38, a1, v17, v38);
        }
      }

      goto LABEL_37;
    }
  }

  return result;
}

uint64_t sub_23EFD3C60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD3DD0();
  }

  v13 = 0;
  sub_23F2F80F8(*(a2 + 48), &v13);
  *&v12 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v12 + 1) = v13;
  sub_23EF62458(a2 + 24, &v12);
  v6 = *(a2 + 48);
  sub_23F2F81EC(v6, a3);
  sub_23F2F81EC(v6, (a3 + 4));
  v7 = *(a2 + 48);
  sub_23F2F81EC(v7, (a3 + 8));
  sub_23F2F81EC(v7, (a3 + 12));
  v8 = *(a2 + 48);
  sub_23F2F7EFC(v8, (a3 + 16));
  sub_23F2F7EFC(v8, (a3 + 20));
  v9 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v11);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD3DD0()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFD40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD40D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD40EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD4114(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD4284();
  }

  v13 = 0;
  sub_23F2F80F8(*(a2 + 48), &v13);
  *&v12 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v12 + 1) = v13;
  sub_23EF62458(a2 + 24, &v12);
  v6 = *(a2 + 48);
  sub_23F2F8334(v6, a3);
  sub_23F2F8334(v6, (a3 + 8));
  v7 = *(a2 + 48);
  sub_23F2F8334(v7, (a3 + 16));
  sub_23F2F8334(v7, (a3 + 24));
  v8 = *(a2 + 48);
  sub_23F2F7EFC(v8, (a3 + 32));
  sub_23F2F7EFC(v8, (a3 + 36));
  v9 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v11);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD4284()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFD4598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD45AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD45C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD45D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD45E8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD4758();
  }

  v13 = 0;
  sub_23F2F80F8(*(a2 + 48), &v13);
  *&v12 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v12 + 1) = v13;
  sub_23EF62458(a2 + 24, &v12);
  v6 = *(a2 + 48);
  sub_23F2F81EC(v6, a3);
  sub_23F2F81EC(v6, (a3 + 4));
  v7 = *(a2 + 48);
  sub_23F2F81EC(v7, (a3 + 8));
  sub_23F2F81EC(v7, (a3 + 12));
  v8 = *(a2 + 48);
  sub_23F2F7EFC(v8, (a3 + 16));
  sub_23F2F7EFC(v8, (a3 + 20));
  v9 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v11);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD4758()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFD4A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD4A9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD4C0C();
  }

  v13 = 0;
  sub_23F2F80F8(*(a2 + 48), &v13);
  *&v12 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v12 + 1) = v13;
  sub_23EF62458(a2 + 24, &v12);
  v6 = *(a2 + 48);
  sub_23F2F8334(v6, a3);
  sub_23F2F8334(v6, (a3 + 8));
  v7 = *(a2 + 48);
  sub_23F2F8334(v7, (a3 + 16));
  sub_23F2F8334(v7, (a3 + 24));
  v8 = *(a2 + 48);
  sub_23F2F7EFC(v8, (a3 + 32));
  sub_23F2F7EFC(v8, (a3 + 36));
  v9 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v11 = *(v9 - 16) - result + *(v9 - 8);
  if (v11)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v11);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD4C0C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFD4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD4F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD4F70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD5120();
  }

  v14 = 0;
  sub_23F2F80F8(*(a2 + 48), &v14);
  *&v13 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v13 + 1) = v14;
  sub_23EF62458(a2 + 24, &v13);
  v6 = *(a2 + 48);
  sub_23F2F81EC(v6, a3);
  sub_23F2F81EC(v6, (a3 + 4));
  v7 = *(a2 + 48);
  sub_23F2F81EC(v7, (a3 + 8));
  sub_23F2F81EC(v7, (a3 + 12));
  v8 = *(a2 + 48);
  sub_23F2F81EC(v8, (a3 + 16));
  sub_23F2F81EC(v8, (a3 + 20));
  sub_23F2F81EC(v8, (a3 + 24));
  sub_23F2F81EC(v8, (a3 + 28));
  sub_23F2F81EC(v8, (a3 + 32));
  v9 = *(a2 + 48);
  sub_23F2F7EFC(v9, (a3 + 36));
  sub_23F2F7EFC(v9, (a3 + 40));
  v10 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v12);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD5120()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFD5480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD54A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD54BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD54D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD54E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD5694();
  }

  v14 = 0;
  sub_23F2F80F8(*(a2 + 48), &v14);
  *&v13 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v13 + 1) = v14;
  sub_23EF62458(a2 + 24, &v13);
  v6 = *(a2 + 48);
  sub_23F2F8334(v6, a3);
  sub_23F2F8334(v6, (a3 + 8));
  v7 = *(a2 + 48);
  sub_23F2F8334(v7, (a3 + 16));
  sub_23F2F8334(v7, (a3 + 24));
  v8 = *(a2 + 48);
  sub_23F2F8334(v8, (a3 + 32));
  sub_23F2F8334(v8, (a3 + 40));
  sub_23F2F8334(v8, (a3 + 48));
  sub_23F2F8334(v8, (a3 + 56));
  sub_23F2F8334(v8, (a3 + 64));
  v9 = *(a2 + 48);
  sub_23F2F7EFC(v9, (a3 + 72));
  sub_23F2F7EFC(v9, (a3 + 76));
  v10 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v12);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD5694()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFD5A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD5A94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD5C44();
  }

  v14 = 0;
  sub_23F2F80F8(*(a2 + 48), &v14);
  *&v13 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v13 + 1) = v14;
  sub_23EF62458(a2 + 24, &v13);
  v6 = *(a2 + 48);
  sub_23F2F81EC(v6, a3);
  sub_23F2F81EC(v6, (a3 + 4));
  v7 = *(a2 + 48);
  sub_23F2F81EC(v7, (a3 + 8));
  sub_23F2F81EC(v7, (a3 + 12));
  v8 = *(a2 + 48);
  sub_23F2F81EC(v8, (a3 + 16));
  sub_23F2F81EC(v8, (a3 + 20));
  sub_23F2F81EC(v8, (a3 + 24));
  sub_23F2F81EC(v8, (a3 + 28));
  sub_23F2F81EC(v8, (a3 + 32));
  v9 = *(a2 + 48);
  sub_23F2F7EFC(v9, (a3 + 36));
  sub_23F2F7EFC(v9, (a3 + 40));
  v10 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v12);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD5C44()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFD5FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFD6008(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    sub_23EFD61B8();
  }

  v14 = 0;
  sub_23F2F80F8(*(a2 + 48), &v14);
  *&v13 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v13 + 1) = v14;
  sub_23EF62458(a2 + 24, &v13);
  v6 = *(a2 + 48);
  sub_23F2F8334(v6, a3);
  sub_23F2F8334(v6, (a3 + 8));
  v7 = *(a2 + 48);
  sub_23F2F8334(v7, (a3 + 16));
  sub_23F2F8334(v7, (a3 + 24));
  v8 = *(a2 + 48);
  sub_23F2F8334(v8, (a3 + 32));
  sub_23F2F8334(v8, (a3 + 40));
  sub_23F2F8334(v8, (a3 + 48));
  sub_23F2F8334(v8, (a3 + 56));
  sub_23F2F8334(v8, (a3 + 64));
  v9 = *(a2 + 48);
  sub_23F2F7EFC(v9, (a3 + 72));
  sub_23F2F7EFC(v9, (a3 + 76));
  v10 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v12 = *(v10 - 16) - result + *(v10 - 8);
  if (v12)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v12);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFD61B8()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFD6554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD6568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD657C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD6590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD65A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

int *sub_23EFD65B8(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  sub_23F2F7EFC(*(a1 + 48), &v38);
  *a2 = v38;
  result = sub_23F298FB0(a2);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 == 110)
      {
        v36 = *(a2 + 8);
        v35 = a2 + 8;
        v34 = v36;
        if (v36)
        {
          v37 = v34(3, v35, 0, &unk_28517A998, &unk_23F312A08);
          if (v37)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD5A94(&v38, a1, v37, v38);
          }
        }

        goto LABEL_37;
      }

      if (v5 == 111)
      {
        v20 = *(a2 + 8);
        v19 = a2 + 8;
        v18 = v20;
        if (v20)
        {
          v21 = v18(3, v19, 0, &unk_28517A9E8, &unk_23F312AE0);
          if (v21)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD6008(&v38, a1, v21, v38);
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v5 == 100)
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28517A8F8, &unk_23F312858);
          if (v29)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD4F70(&v38, a1, v29, v38);
          }
        }

        goto LABEL_37;
      }

      if (v5 == 101)
      {
        v12 = *(a2 + 8);
        v11 = a2 + 8;
        v10 = v12;
        if (v12)
        {
          v13 = v10(3, v11, 0, &unk_28517A948, &unk_23F312930);
          if (v13)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD54E4(&v38, a1, v13, v38);
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v5 <= 9)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v8 = *(a2 + 8);
        v7 = a2 + 8;
        v6 = v8;
        if (v8)
        {
          v9 = v6(3, v7, 0, &unk_28517A808, &unk_23F3125D8);
          if (v9)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD4114(&v38, a1, v9, v38);
          }
        }
      }

      else
      {
        v24 = *(a2 + 8);
        v23 = a2 + 8;
        v22 = v24;
        if (v24)
        {
          v25 = v22(3, v23, 0, &unk_28517A7B8, &unk_23F312504);
          if (v25)
          {
            v38 = 2;
            sub_23F2F7EFC(*(a1 + 48), &v38);
            return sub_23EFD3C60(&v38, a1, v25, v38);
          }
        }
      }

LABEL_37:
      sub_23EFC9F68();
    }

    if (v5 == 10)
    {
      v32 = *(a2 + 8);
      v31 = a2 + 8;
      v30 = v32;
      if (v32)
      {
        v33 = v30(3, v31, 0, &unk_28517A858, &unk_23F3126AC);
        if (v33)
        {
          v38 = 2;
          sub_23F2F7EFC(*(a1 + 48), &v38);
          return sub_23EFD45E8(&v38, a1, v33, v38);
        }
      }

      goto LABEL_37;
    }

    if (v5 == 11)
    {
      v16 = *(a2 + 8);
      v15 = a2 + 8;
      v14 = v16;
      if (v16)
      {
        v17 = v14(3, v15, 0, &unk_28517A8A8, &unk_23F312780);
        if (v17)
        {
          v38 = 2;
          sub_23F2F7EFC(*(a1 + 48), &v38);
          return sub_23EFD4A9C(&v38, a1, v17, v38);
        }
      }

      goto LABEL_37;
    }
  }

  return result;
}

void sub_23EFD69B0(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v5);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v6);
  if (v6 < 2)
  {
    sub_23EFD6AAC();
  }

  sub_23EFD6D04(a1, a2);
}

void sub_23EFD6C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFD6D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_23EFD7508(a1);
}

void sub_23EFD7508(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F06FFE4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EFD75F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EFD768C(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD77B8();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v10, &v11);
}

void sub_23EFD77B8()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFD7B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD7B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD7B54(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD7C80();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v10, &v11);
}

void sub_23EFD7C80()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFD8014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD8028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD803C(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD8168();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v10, &v11);
}

void sub_23EFD8168()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFD84DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD84F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFD8504(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD8630();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2;
  v12 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v6, &v11);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 2;
  v12 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v8, &v11);
  v9 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v11 = a2 + 4;
  v12 = 2;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v10, &v11);
}

void sub_23EFD8630()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFD89C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD89D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFD89EC(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD8B60();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v12, &v13);
}

void sub_23EFD8B60()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFD8E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD8E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD8E50(uint64_t a1, float *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2;
  v13 = 2;
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v5, &v12);
  v6 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 2;
  v13 = 2;
  v7 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v7, &v12);
  v8 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 4;
  v13 = 5;
  v9 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v9, &v12);
  v10 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 9;
  v13 = 2;
  v11 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v11, &v12);
}

void sub_23EFD8F98(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD910C();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v12, &v13);
}

void sub_23EFD910C()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFD9410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD9424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD9438(uint64_t a1, double *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2;
  v13 = 2;
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v5, &v12);
  v6 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 2;
  v13 = 2;
  v7 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v7, &v12);
  v8 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v8 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 4;
  v13 = 5;
  v9 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v9, &v12);
  v10 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v10 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v12 = a2 + 9;
  v13 = 2;
  v11 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v11, &v12);
}

void sub_23EFD9580(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD96F4();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC778(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v12, &v13);
}

void sub_23EFD96F4()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFD99BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD99D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFD99E4(uint64_t a1, double *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFD9B58();
  }

  v5 = *(a1 + 104);
  *(a1 + 88) = "focal_length";
  *(a1 + 96) = 12;
  if ((v5 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2;
  v14 = 2;
  v6 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v6, &v13);
  v7 = *(a1 + 104);
  *(a1 + 88) = "principal_point";
  *(a1 + 96) = 15;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 2;
  v14 = 2;
  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v8, &v13);
  v9 = *(a1 + 104);
  *(a1 + 88) = "distortion_coeff";
  *(a1 + 96) = 16;
  if ((v9 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 4;
  v14 = 5;
  v10 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC8BC(v10, &v13);
  v11 = *(a1 + 104);
  *(a1 + 88) = "image_size";
  *(a1 + 96) = 10;
  if ((v11 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v13 = a2 + 9;
  v14 = 2;
  v12 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EC444(v12, &v13);
}

void sub_23EFD9B58()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFD9E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD9E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFD9E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "camera_type";
  *(a1 + 96) = 11;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_23EFD7508(a1);
}

void sub_23EFDA868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFDA8E0(uint64_t a1, uint64_t a2)
{
  LODWORD(v37) = 0;
  sub_23F2F5830(a1, &v37);
  *a2 = v37;
  sub_23F29AC30(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v35 = *(a2 + 8);
        v34 = a2 + 8;
        v33 = v35;
        if (v35)
        {
          v36 = v33(3, v34, 0, &unk_28517A998, &unk_23F312A08);
          if (v36)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v36;
            sub_23EFDAF44(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 111)
      {
        v19 = *(a2 + 8);
        v18 = a2 + 8;
        v17 = v19;
        if (v19)
        {
          v20 = v17(3, v18, 0, &unk_28517A9E8, &unk_23F312AE0);
          if (v20)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v20;
            sub_23EFDB0CC(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v4 == 100)
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28517A8F8, &unk_23F312858);
          if (v28)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v28;
            sub_23EFDAC34(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 101)
      {
        v11 = *(a2 + 8);
        v10 = a2 + 8;
        v9 = v11;
        if (v11)
        {
          v12 = v9(3, v10, 0, &unk_28517A948, &unk_23F312930);
          if (v12)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v12;
            sub_23EFDADBC(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28517A808, &unk_23F3125D8);
          if (v8)
          {
            sub_23EFDB6D8(&v37, a1, v8);
            return;
          }
        }
      }

      else
      {
        v23 = *(a2 + 8);
        v22 = a2 + 8;
        v21 = v23;
        if (v23)
        {
          v24 = v21(3, v22, 0, &unk_28517A7B8, &unk_23F312504);
          if (v24)
          {
            sub_23EFDB254(&v37, a1, v24);
            return;
          }
        }
      }

LABEL_37:
      sub_23EFC9F68();
    }

    if (v4 == 10)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (v31)
      {
        v32 = v29(3, v30, 0, &unk_28517A858, &unk_23F3126AC);
        if (v32)
        {
          sub_23EFDBB7C(&v37, a1, v32);
          return;
        }
      }

      goto LABEL_37;
    }

    if (v4 == 11)
    {
      v15 = *(a2 + 8);
      v14 = a2 + 8;
      v13 = v15;
      if (v15)
      {
        v16 = v13(3, v14, 0, &unk_28517A8A8, &unk_23F312780);
        if (v16)
        {
          sub_23EFDC000(&v37, a1, v16);
          return;
        }
      }

      goto LABEL_37;
    }
  }
}

uint64_t sub_23EFDAC34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDC4A4();
  }

  sub_23F2F6564(a1, v3);
  sub_23F2F6564(a1, v3 + 1);
  sub_23F2F6564(a1, v3 + 2);
  sub_23F2F6564(a1, v3 + 3);
  sub_23F2F6564(a1, v3 + 4);
  sub_23F2F6564(a1, v3 + 5);
  sub_23F2F6564(a1, v3 + 6);
  sub_23F2F6564(a1, v3 + 7);
  sub_23F2F6564(a1, v3 + 8);
  sub_23F2F5830(a1, v3 + 9);
  sub_23F2F5830(a1, v3 + 10);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

uint64_t sub_23EFDADBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDC858();
  }

  sub_23F2F68A4(a1, v3);
  sub_23F2F68A4(a1, (v3 + 8));
  sub_23F2F68A4(a1, (v3 + 16));
  sub_23F2F68A4(a1, (v3 + 24));
  sub_23F2F68A4(a1, (v3 + 32));
  sub_23F2F68A4(a1, (v3 + 40));
  sub_23F2F68A4(a1, (v3 + 48));
  sub_23F2F68A4(a1, (v3 + 56));
  sub_23F2F68A4(a1, (v3 + 64));
  sub_23F2F5830(a1, (v3 + 72));
  sub_23F2F5830(a1, (v3 + 76));
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

uint64_t sub_23EFDAF44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDCC48();
  }

  sub_23F2F6564(a1, v3);
  sub_23F2F6564(a1, v3 + 1);
  sub_23F2F6564(a1, v3 + 2);
  sub_23F2F6564(a1, v3 + 3);
  sub_23F2F6564(a1, v3 + 4);
  sub_23F2F6564(a1, v3 + 5);
  sub_23F2F6564(a1, v3 + 6);
  sub_23F2F6564(a1, v3 + 7);
  sub_23F2F6564(a1, v3 + 8);
  sub_23F2F5830(a1, v3 + 9);
  sub_23F2F5830(a1, v3 + 10);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

uint64_t sub_23EFDB0CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a1, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDCFFC();
  }

  sub_23F2F68A4(a1, v3);
  sub_23F2F68A4(a1, (v3 + 8));
  sub_23F2F68A4(a1, (v3 + 16));
  sub_23F2F68A4(a1, (v3 + 24));
  sub_23F2F68A4(a1, (v3 + 32));
  sub_23F2F68A4(a1, (v3 + 40));
  sub_23F2F68A4(a1, (v3 + 48));
  sub_23F2F68A4(a1, (v3 + 56));
  sub_23F2F68A4(a1, (v3 + 64));
  sub_23F2F5830(a1, (v3 + 72));
  sub_23F2F5830(a1, (v3 + 76));
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a1, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_12:
        v4 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v4 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v4 & 1) == 0)
    {
      return a1;
    }
  }

  return a1;
}

void sub_23EFDB254(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDB3A0();
  }

  sub_23F2F6564(a2, a3);
  sub_23F2F6564(a2, a3 + 1);
  sub_23F2F6564(a2, a3 + 2);
  sub_23F2F6564(a2, a3 + 3);
  sub_23F2F5830(a2, a3 + 4);
  sub_23F2F5830(a2, a3 + 5);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_23EFDB3A0()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFDB688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDB69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDB6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDB6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDB6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDB824();
  }

  sub_23F2F68A4(a2, a3);
  sub_23F2F68A4(a2, (a3 + 8));
  sub_23F2F68A4(a2, (a3 + 16));
  sub_23F2F68A4(a2, (a3 + 24));
  sub_23F2F5830(a2, (a3 + 32));
  sub_23F2F5830(a2, (a3 + 36));
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_23EFDB824()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFDBB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBB7C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDBCC8();
  }

  sub_23F2F6564(a2, a3);
  sub_23F2F6564(a2, a3 + 1);
  sub_23F2F6564(a2, a3 + 2);
  sub_23F2F6564(a2, a3 + 3);
  sub_23F2F5830(a2, a3 + 4);
  sub_23F2F5830(a2, a3 + 5);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_23EFDBCC8()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFDBFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDBFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 2;
  sub_23F2F5830(a2, __p);
  if (LODWORD(__p[0]) < 2)
  {
    sub_23EFDC14C();
  }

  sub_23F2F68A4(a2, a3);
  sub_23F2F68A4(a2, (a3 + 8));
  sub_23F2F68A4(a2, (a3 + 16));
  sub_23F2F68A4(a2, (a3 + 24));
  sub_23F2F5830(a2, (a3 + 32));
  sub_23F2F5830(a2, (a3 + 36));
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a2, __p);
    if (v7 < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_12:
        v5 = 0;
        if (v7 < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    else if (v7 == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_12;
    }

    v5 = 1;
    if (v7 < 0)
    {
LABEL_15:
      operator delete(__p[0]);
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_23EFDC14C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFDC454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC4A4()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFDC7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDC858()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFDCBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCC48()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFDCF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDCFFC()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFDD388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDD39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDD3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDD3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDD3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFDD3EC(uint64_t a1, uint64_t a2)
{
  LODWORD(v37) = 0;
  sub_23F2F5830(a1, &v37);
  *a2 = v37;
  sub_23F298FB0(a2);
  v4 = *a2;
  if (*a2 > 99)
  {
    if (v4 > 109)
    {
      if (v4 == 110)
      {
        v35 = *(a2 + 8);
        v34 = a2 + 8;
        v33 = v35;
        if (v35)
        {
          v36 = v33(3, v34, 0, &unk_28517A998, &unk_23F312A08);
          if (v36)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v36;
            sub_23EFDAF44(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 111)
      {
        v19 = *(a2 + 8);
        v18 = a2 + 8;
        v17 = v19;
        if (v19)
        {
          v20 = v17(3, v18, 0, &unk_28517A9E8, &unk_23F312AE0);
          if (v20)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v20;
            sub_23EFDB0CC(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v4 == 100)
      {
        v27 = *(a2 + 8);
        v26 = a2 + 8;
        v25 = v27;
        if (v27)
        {
          v28 = v25(3, v26, 0, &unk_28517A8F8, &unk_23F312858);
          if (v28)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v28;
            sub_23EFDAC34(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }

      if (v4 == 101)
      {
        v11 = *(a2 + 8);
        v10 = a2 + 8;
        v9 = v11;
        if (v11)
        {
          v12 = v9(3, v10, 0, &unk_28517A948, &unk_23F312930);
          if (v12)
          {
            v37 = "camera";
            v38 = 6;
            v39 = v12;
            sub_23EFDADBC(a1, &v37);
            return;
          }
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    if (v4 <= 9)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        v7 = *(a2 + 8);
        v6 = a2 + 8;
        v5 = v7;
        if (v7)
        {
          v8 = v5(3, v6, 0, &unk_28517A808, &unk_23F3125D8);
          if (v8)
          {
            sub_23EFDB6D8(&v37, a1, v8);
            return;
          }
        }
      }

      else
      {
        v23 = *(a2 + 8);
        v22 = a2 + 8;
        v21 = v23;
        if (v23)
        {
          v24 = v21(3, v22, 0, &unk_28517A7B8, &unk_23F312504);
          if (v24)
          {
            sub_23EFDB254(&v37, a1, v24);
            return;
          }
        }
      }

LABEL_37:
      sub_23EFC9F68();
    }

    if (v4 == 10)
    {
      v31 = *(a2 + 8);
      v30 = a2 + 8;
      v29 = v31;
      if (v31)
      {
        v32 = v29(3, v30, 0, &unk_28517A858, &unk_23F3126AC);
        if (v32)
        {
          sub_23EFDBB7C(&v37, a1, v32);
          return;
        }
      }

      goto LABEL_37;
    }

    if (v4 == 11)
    {
      v15 = *(a2 + 8);
      v14 = a2 + 8;
      v13 = v15;
      if (v15)
      {
        v16 = v13(3, v14, 0, &unk_28517A8A8, &unk_23F312780);
        if (v16)
        {
          sub_23EFDC000(&v37, a1, v16);
          return;
        }
      }

      goto LABEL_37;
    }
  }
}

int *sub_23EFDD740(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDD838();
  }

  sub_23F294FCC(a2);
  result = sub_23EFDDA90(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDDA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_23EFDDA90(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  *a2 = v8;
  result = sub_23F29AC30(a2);
  v10 = *a2;
  if (*a2 > 99)
  {
    if (v10 > 109)
    {
      if (v10 == 110)
      {
        v41 = *(a2 + 8);
        v40 = a2 + 8;
        v39 = v41;
        if (v41)
        {
          v42 = v39(3, v40, 0, &unk_28517A998, &unk_23F312A08);
          if (v42)
          {
            return sub_23EFE0630(&v50, a1, v42);
          }
        }

        goto LABEL_40;
      }

      if (v10 == 111)
      {
        v25 = *(a2 + 8);
        v24 = a2 + 8;
        v23 = v25;
        if (v25)
        {
          v26 = v23(3, v24, 0, &unk_28517A9E8, &unk_23F312AE0);
          if (v26)
          {
            return sub_23EFE0D68(&v51, a1, v26);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v10 == 100)
      {
        v33 = *(a2 + 8);
        v32 = a2 + 8;
        v31 = v33;
        if (v33)
        {
          v34 = v31(3, v32, 0, &unk_28517A8F8, &unk_23F312858);
          if (v34)
          {
            return sub_23EFDF784(&v48, a1, v34);
          }
        }

        goto LABEL_40;
      }

      if (v10 == 101)
      {
        v17 = *(a2 + 8);
        v16 = a2 + 8;
        v15 = v17;
        if (v17)
        {
          v18 = v15(3, v16, 0, &unk_28517A948, &unk_23F312930);
          if (v18)
          {
            return sub_23EFDFEBC(&v49, a1, v18);
          }
        }

        goto LABEL_40;
      }
    }
  }

  else
  {
    if (v10 <= 9)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          return result;
        }

        v13 = *(a2 + 8);
        v12 = a2 + 8;
        v11 = v13;
        if (v13)
        {
          v14 = v11(3, v12, 0, &unk_28517A808, &unk_23F3125D8);
          if (v14)
          {
            return sub_23EFDE454(&v45, a1, v14);
          }
        }
      }

      else
      {
        v29 = *(a2 + 8);
        v28 = a2 + 8;
        v27 = v29;
        if (v29)
        {
          v30 = v27(3, v28, 0, &unk_28517A7B8, &unk_23F312504);
          if (v30)
          {
            return sub_23EFDDE04(&v44, a1, v30);
          }
        }
      }

LABEL_40:
      sub_23EFC9F68();
    }

    if (v10 == 10)
    {
      v37 = *(a2 + 8);
      v36 = a2 + 8;
      v35 = v37;
      if (v37)
      {
        v38 = v35(3, v36, 0, &unk_28517A858, &unk_23F3126AC);
        if (v38)
        {
          return sub_23EFDEAC4(&v46, a1, v38);
        }
      }

      goto LABEL_40;
    }

    if (v10 == 11)
    {
      v21 = *(a2 + 8);
      v20 = a2 + 8;
      v19 = v21;
      if (v21)
      {
        v22 = v19(3, v20, 0, &unk_28517A8A8, &unk_23F312780);
        if (v22)
        {
          return sub_23EFDF114(&v47, a1, v22);
        }
      }

      goto LABEL_40;
    }
  }

  return result;
}

void *sub_23EFDDE04(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDDEFC();
  }

  sub_23F294FCC(a2);
  result = sub_23EFDE1CC(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDDEFC()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFDE1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDE1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void *sub_23EFDE1CC(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDE310(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDE454(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDE54C();
  }

  sub_23F294FCC(a2);
  result = sub_23EFDE83C(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDE54C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFDE814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDE828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void *sub_23EFDE83C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDE980(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDEAC4(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDEBBC();
  }

  sub_23F294FCC(a2);
  result = sub_23EFDEE8C(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDEBBC()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFDEE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFDEE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void *sub_23EFDEE8C(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDEFD0(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_11;
  }

  a2[1] = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  a2[2] = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDF114(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDF20C();
  }

  sub_23F294FCC(a2);
  result = sub_23EFDF4FC(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDF20C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFDF4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFDF4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void *sub_23EFDF4FC(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDF640(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 7)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 32) = *(result[3] + v10);
  result[6] += 8;
  return result;
}

void *sub_23EFDF784(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDF87C();
  }

  sub_23F294FCC(a2);
  result = sub_23EFDFB6C(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDF87C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFDFB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFDFB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void *sub_23EFDFB6C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_23EFDFD14(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_23EFDFEBC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFDFFB4();
  }

  sub_23F294FCC(a2);
  result = sub_23EFE02E0(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFDFFB4()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFE02B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE02CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void *sub_23EFE02E0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void *sub_23EFE0488(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void *sub_23EFE0630(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFE0728();
  }

  sub_23F294FCC(a2);
  result = sub_23EFE0A18(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFE0728()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFE09F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFE0A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void *sub_23EFE0A18(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_23EFE0BC0(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 8;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 7)
  {
    goto LABEL_14;
  }

  *(a2 + 8) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 8;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x13)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  *(a2 + 32) = *(v12 + 16);
  *(a2 + 16) = v13;
  v14 = result[7];
  v15 = result[6] + 20;
  result[6] = v15;
  v4 = v14 >= v15;
  v16 = v14 - v15;
  if (!v4)
  {
    v16 = 0;
  }

  if (v16 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 36) = *(result[3] + v15);
  result[6] += 8;
  return result;
}

void *sub_23EFE0D68(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFE0E60();
  }

  sub_23F294FCC(a2);
  result = sub_23EFE118C(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFE0E60()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFE1164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void *sub_23EFE118C(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

void *sub_23EFE1334(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_14;
  }

  *a2 = *(result[3] + v2);
  v6 = result[7];
  v7 = result[6] + 16;
  result[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_14;
  }

  *(a2 + 16) = *(result[3] + v7);
  v9 = result[7];
  v10 = result[6] + 16;
  result[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0x27)
  {
    goto LABEL_14;
  }

  v12 = result[3] + v10;
  v13 = *v12;
  v14 = *(v12 + 16);
  *(a2 + 64) = *(v12 + 32);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v15 = result[7];
  v16 = result[6] + 40;
  result[6] = v16;
  v4 = v15 >= v16;
  v17 = v15 - v16;
  if (!v4)
  {
    v17 = 0;
  }

  if (v17 <= 7)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(a2 + 72) = *(result[3] + v16);
  result[6] += 8;
  return result;
}

int *sub_23EFE14DC(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  *a2 = v8;
  result = sub_23F298FB0(a2);
  v10 = *a2;
  if (*a2 > 99)
  {
    if (v10 > 109)
    {
      if (v10 == 110)
      {
        v41 = *(a2 + 8);
        v40 = a2 + 8;
        v39 = v41;
        if (v41)
        {
          v42 = v39(3, v40, 0, &unk_28517A998, &unk_23F312A08);
          if (v42)
          {
            return sub_23EFE0630(&v50, a1, v42);
          }
        }

        goto LABEL_40;
      }

      if (v10 == 111)
      {
        v25 = *(a2 + 8);
        v24 = a2 + 8;
        v23 = v25;
        if (v25)
        {
          v26 = v23(3, v24, 0, &unk_28517A9E8, &unk_23F312AE0);
          if (v26)
          {
            return sub_23EFE0D68(&v51, a1, v26);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v10 == 100)
      {
        v33 = *(a2 + 8);
        v32 = a2 + 8;
        v31 = v33;
        if (v33)
        {
          v34 = v31(3, v32, 0, &unk_28517A8F8, &unk_23F312858);
          if (v34)
          {
            return sub_23EFDF784(&v48, a1, v34);
          }
        }

        goto LABEL_40;
      }

      if (v10 == 101)
      {
        v17 = *(a2 + 8);
        v16 = a2 + 8;
        v15 = v17;
        if (v17)
        {
          v18 = v15(3, v16, 0, &unk_28517A948, &unk_23F312930);
          if (v18)
          {
            return sub_23EFDFEBC(&v49, a1, v18);
          }
        }

        goto LABEL_40;
      }
    }
  }

  else
  {
    if (v10 <= 9)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          return result;
        }

        v13 = *(a2 + 8);
        v12 = a2 + 8;
        v11 = v13;
        if (v13)
        {
          v14 = v11(3, v12, 0, &unk_28517A808, &unk_23F3125D8);
          if (v14)
          {
            return sub_23EFDE454(&v45, a1, v14);
          }
        }
      }

      else
      {
        v29 = *(a2 + 8);
        v28 = a2 + 8;
        v27 = v29;
        if (v29)
        {
          v30 = v27(3, v28, 0, &unk_28517A7B8, &unk_23F312504);
          if (v30)
          {
            return sub_23EFDDE04(&v44, a1, v30);
          }
        }
      }

LABEL_40:
      sub_23EFC9F68();
    }

    if (v10 == 10)
    {
      v37 = *(a2 + 8);
      v36 = a2 + 8;
      v35 = v37;
      if (v37)
      {
        v38 = v35(3, v36, 0, &unk_28517A858, &unk_23F3126AC);
        if (v38)
        {
          return sub_23EFDEAC4(&v46, a1, v38);
        }
      }

      goto LABEL_40;
    }

    if (v10 == 11)
    {
      v21 = *(a2 + 8);
      v20 = a2 + 8;
      v19 = v21;
      if (v21)
      {
        v22 = v19(3, v20, 0, &unk_28517A8A8, &unk_23F312780);
        if (v22)
        {
          return sub_23EFDF114(&v47, a1, v22);
        }
      }

      goto LABEL_40;
    }
  }

  return result;
}

int *sub_23EFE1850(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v11 = 2;
    (*(*a2 + 104))(a2, &v11);
    if (v11 >= 3)
    {
      v10 = v11;
      if ((atomic_load_explicit(&qword_27E394318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394318))
      {
        sub_23EFE1A28();
      }

      sub_23F2FF068(&stru_27E394300, v10, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_23EFE1D84(a2, a3);
    return (*(*a2 + 24))(a2);
  }

  if (a4 <= 1)
  {
LABEL_10:
    sub_23EFE1B2C();
  }

  return sub_23EFE1D84(a2, a3);
}

void sub_23EFE1AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE1D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *sub_23EFE1D84(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  sub_23EFE2A04(a1, &v46);
  result = sub_23F29AC30(a2);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 == 110)
      {
        v42 = *(a2 + 8);
        v41 = a2 + 8;
        v40 = v42;
        if (!v42)
        {
          goto LABEL_45;
        }

        v43 = v40(3, v41, 0, &unk_28517A998, &unk_23F312A08);
        if (!v43)
        {
          goto LABEL_45;
        }

        v44 = *a1;
        v46 = *(a1 + 8);
        v45 = v46;
        v49 = 2;
        (*(v44 + 104))(a1, &v49);
        if (v45 < 1)
        {
          return sub_23EFE6CA8(a1, v43, v49);
        }

        else
        {
          return sub_23EFE6920(&v46, a1, v43, v49);
        }
      }

      else if (v5 == 111)
      {
        v22 = *(a2 + 8);
        v21 = a2 + 8;
        v20 = v22;
        if (!v22)
        {
          goto LABEL_45;
        }

        v23 = v20(3, v21, 0, &unk_28517A9E8, &unk_23F312AE0);
        if (!v23)
        {
          goto LABEL_45;
        }

        v24 = *a1;
        v46 = *(a1 + 8);
        v25 = v46;
        v49 = 2;
        (*(v24 + 104))(a1, &v49);
        if (v25 < 1)
        {
          return sub_23EFE7854(a1, v23, v49);
        }

        else
        {
          return sub_23EFE74CC(&v46, a1, v23, v49);
        }
      }
    }

    else if (v5 == 100)
    {
      v32 = *(a2 + 8);
      v31 = a2 + 8;
      v30 = v32;
      if (!v32)
      {
        goto LABEL_45;
      }

      v33 = v30(3, v31, 0, &unk_28517A8F8, &unk_23F312858);
      if (!v33)
      {
        goto LABEL_45;
      }

      v34 = *a1;
      v46 = *(a1 + 8);
      v35 = v46;
      v49 = 2;
      (*(v34 + 104))(a1, &v49);
      if (v35 < 1)
      {
        return sub_23EFE5514(a1, v33, v49);
      }

      else
      {
        return sub_23EFE518C(&v46, a1, v33, v49);
      }
    }

    else if (v5 == 101)
    {
      v12 = *(a2 + 8);
      v11 = a2 + 8;
      v10 = v12;
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = v10(3, v11, 0, &unk_28517A948, &unk_23F312930);
      if (!v13)
      {
        goto LABEL_45;
      }

      v14 = *a1;
      v46 = *(a1 + 8);
      v15 = v46;
      v49 = 2;
      (*(v14 + 104))(a1, &v49);
      if (v15 < 1)
      {
        return sub_23EFE60C0(a1, v13, v49);
      }

      else
      {
        return sub_23EFE5D38(&v46, a1, v13, v49);
      }
    }
  }

  else
  {
    if (v5 <= 9)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v8 = *(a2 + 8);
        v7 = a2 + 8;
        v6 = v8;
        if (v8)
        {
          v9 = v6(3, v7, 0, &unk_28517A808, &unk_23F3125D8);
          if (v9)
          {
            v46 = "camera";
            v47 = 6;
            v48 = v9;
            return sub_23EFE247C(a1, &v46);
          }
        }
      }

      else
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28517A7B8, &unk_23F312504);
          if (v29)
          {
            v46 = "camera";
            v47 = 6;
            v48 = v29;
            return sub_23EFE22A4(a1, &v46);
          }
        }
      }

LABEL_45:
      sub_23EFC9F68();
    }

    if (v5 == 10)
    {
      v38 = *(a2 + 8);
      v37 = a2 + 8;
      v36 = v38;
      if (v38)
      {
        v39 = v36(3, v37, 0, &unk_28517A858, &unk_23F3126AC);
        if (v39)
        {
          v46 = "camera";
          v47 = 6;
          v48 = v39;
          return sub_23EFE2654(a1, &v46);
        }
      }

      goto LABEL_45;
    }

    if (v5 == 11)
    {
      v18 = *(a2 + 8);
      v17 = a2 + 8;
      v16 = v18;
      if (v18)
      {
        v19 = v16(3, v17, 0, &unk_28517A8A8, &unk_23F312780);
        if (v19)
        {
          v46 = "camera";
          v47 = 6;
          v48 = v19;
          return sub_23EFE282C(a1, &v46);
        }
      }

      goto LABEL_45;
    }
  }

  return result;
}

void *sub_23EFE22A4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_23EFE3120();
    }

    (*(*a1 + 128))(a1, v3);
    (*(*a1 + 128))(a1, v3 + 4);
    (*(*a1 + 128))(a1, v3 + 8);
    (*(*a1 + 128))(a1, v3 + 12);
    (*(*a1 + 104))(a1, v3 + 16);
    (*(*a1 + 104))(a1, v3 + 20);
    return a1;
  }

  else
  {
    sub_23EFE2B7C(&v6, a1, v3, v7);
    return a1;
  }
}

void *sub_23EFE247C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_23EFE3A94();
    }

    (*(*a1 + 136))(a1, v3);
    (*(*a1 + 136))(a1, v3 + 8);
    (*(*a1 + 136))(a1, v3 + 16);
    (*(*a1 + 136))(a1, v3 + 24);
    (*(*a1 + 104))(a1, v3 + 32);
    (*(*a1 + 104))(a1, v3 + 36);
    return a1;
  }

  else
  {
    sub_23EFE34F0(&v6, a1, v3, v7);
    return a1;
  }
}

void *sub_23EFE2654(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_23EFE4428();
    }

    (*(*a1 + 128))(a1, v3);
    (*(*a1 + 128))(a1, v3 + 4);
    (*(*a1 + 128))(a1, v3 + 8);
    (*(*a1 + 128))(a1, v3 + 12);
    (*(*a1 + 104))(a1, v3 + 16);
    (*(*a1 + 104))(a1, v3 + 20);
    return a1;
  }

  else
  {
    sub_23EFE3E84(&v6, a1, v3, v7);
    return a1;
  }
}

void *sub_23EFE282C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v6 = a1[1];
  v7 = 2;
  (*(v4 + 104))(a1, &v7);
  if (v6 < 1)
  {
    if (v7 < 2)
    {
      sub_23EFE4D9C();
    }

    (*(*a1 + 136))(a1, v3);
    (*(*a1 + 136))(a1, v3 + 8);
    (*(*a1 + 136))(a1, v3 + 16);
    (*(*a1 + 136))(a1, v3 + 24);
    (*(*a1 + 104))(a1, v3 + 32);
    (*(*a1 + 104))(a1, v3 + 36);
    return a1;
  }

  else
  {
    sub_23EFE47F8(&v6, a1, v3, v7);
    return a1;
  }
}

uint64_t sub_23EFE2A04(_BYTE *a1, _DWORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LODWORD(__p[0]) = 0;
  result = (*(*a1 + 104))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_23EFE2B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EFE2B7C(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_27E394338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394338))
      {
        sub_23EFE2E0C();
      }

      sub_23F2FF068(&stru_27E394320, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_23EFE3120();
  }

LABEL_14:
  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  result = (*(*a2 + 104))(a2, a3 + 20);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_23EFE2EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE2F10(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Center]", 35, &v13);
  sub_23F302E84("2U]", 2, &v14);
  sub_23EF42150(__p, v11, 3uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EFE3088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_23EF3291C(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23EFE3120()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFE34C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE34DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE34F0(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_27E394358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394358))
      {
        sub_23EFE3780();
      }

      sub_23F2FF068(&stru_27E394340, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_23EFE3A94();
  }

LABEL_14:
  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  result = (*(*a2 + 104))(a2, a3 + 36);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_23EFE3854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE3884(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Center]", 35, &v13);
  sub_23F302E84("2U]", 2, &v14);
  sub_23EF42150(__p, v11, 3uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EFE39FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_23EF3291C(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23EFE3A94()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFE3E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFE3E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE3E84(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_27E394378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394378))
      {
        sub_23EFE4114();
      }

      sub_23F2FF068(&stru_27E394360, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_23EFE4428();
  }

LABEL_14:
  (*(*a2 + 128))(a2, a3);
  (*(*a2 + 128))(a2, a3 + 4);
  (*(*a2 + 128))(a2, a3 + 8);
  (*(*a2 + 128))(a2, a3 + 12);
  (*(*a2 + 104))(a2, a3 + 16);
  result = (*(*a2 + 104))(a2, a3 + 20);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_23EFE41E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE4218(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float32");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_23F302E84("2U]", 2, &v14);
  sub_23EF42150(__p, v11, 3uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EFE4390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_23EF3291C(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23EFE4428()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_23EFE47D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE47E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F0633AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE47F8(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_17;
    }

    v8 = a4;
    v13 = 2;
    (*(*a2 + 104))(a2, &v13);
    if (v13 >= 3)
    {
      v12 = v13;
      if ((atomic_load_explicit(&qword_27E394398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394398))
      {
        sub_23EFE4A88();
      }

      sub_23F2FF068(&stru_27E394380, v12, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  v10 = a4 > 1 && v6 > 0;
  if (v10)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 < 2)
  {
LABEL_17:
    sub_23EFE4D9C();
  }

LABEL_14:
  (*(*a2 + 136))(a2, a3);
  (*(*a2 + 136))(a2, a3 + 8);
  (*(*a2 + 136))(a2, a3 + 16);
  (*(*a2 + 136))(a2, a3 + 24);
  (*(*a2 + 104))(a2, a3 + 32);
  result = (*(*a2 + 104))(a2, a3 + 36);
  if (v10)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_23EFE4B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE4B8C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 7;
  strcpy(v11, "float64");
  sub_23F302E84("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v13);
  sub_23F302E84("2U]", 2, &v14);
  sub_23EF42150(__p, v11, 3uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    operator delete(v11[0]);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EFE4D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_23EF3291C(&a10);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23EFE4D9C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  operator new();
}

void sub_23EFE5164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

void sub_23EFE5178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F2A09B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE518C(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E3943B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3943B8))
      {
        sub_23EFE575C();
      }

      sub_23F2FF068(&stru_27E3943A0, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 128))(a2, a3);
    (*(*a2 + 128))(a2, a3 + 4);
    (*(*a2 + 128))(a2, a3 + 8);
    (*(*a2 + 128))(a2, a3 + 12);
    (*(*a2 + 128))(a2, a3 + 16);
    (*(*a2 + 128))(a2, a3 + 20);
    (*(*a2 + 128))(a2, a3 + 24);
    (*(*a2 + 128))(a2, a3 + 28);
    (*(*a2 + 128))(a2, a3 + 32);
    (*(*a2 + 104))(a2, a3 + 36);
    (*(*a2 + 104))(a2, a3 + 40);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_23EFE5514(a2, a3, v10);
}

uint64_t sub_23EFE5514(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFE5860();
  }

  (*(*a1 + 128))(a1, a2);
  (*(*a1 + 128))(a1, a2 + 4);
  (*(*a1 + 128))(a1, a2 + 8);
  (*(*a1 + 128))(a1, a2 + 12);
  (*(*a1 + 128))(a1, a2 + 16);
  (*(*a1 + 128))(a1, a2 + 20);
  (*(*a1 + 128))(a1, a2 + 24);
  (*(*a1 + 128))(a1, a2 + 28);
  (*(*a1 + 128))(a1, a2 + 32);
  (*(*a1 + 104))(a1, a2 + 36);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 40);
}

void sub_23EFE5830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE5860()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFE5D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFE5D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE5D38(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E3943D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3943D8))
      {
        sub_23EFE6308();
      }

      sub_23F2FF068(&stru_27E3943C0, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 136))(a2, a3);
    (*(*a2 + 136))(a2, a3 + 8);
    (*(*a2 + 136))(a2, a3 + 16);
    (*(*a2 + 136))(a2, a3 + 24);
    (*(*a2 + 136))(a2, a3 + 32);
    (*(*a2 + 136))(a2, a3 + 40);
    (*(*a2 + 136))(a2, a3 + 48);
    (*(*a2 + 136))(a2, a3 + 56);
    (*(*a2 + 136))(a2, a3 + 64);
    (*(*a2 + 104))(a2, a3 + 72);
    (*(*a2 + 104))(a2, a3 + 76);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_23EFE60C0(a2, a3, v10);
}

uint64_t sub_23EFE60C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFE640C();
  }

  (*(*a1 + 136))(a1, a2);
  (*(*a1 + 136))(a1, a2 + 8);
  (*(*a1 + 136))(a1, a2 + 16);
  (*(*a1 + 136))(a1, a2 + 24);
  (*(*a1 + 136))(a1, a2 + 32);
  (*(*a1 + 136))(a1, a2 + 40);
  (*(*a1 + 136))(a1, a2 + 48);
  (*(*a1 + 136))(a1, a2 + 56);
  (*(*a1 + 136))(a1, a2 + 64);
  (*(*a1 + 104))(a1, a2 + 72);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 76);
}

void sub_23EFE63DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE640C()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFE68F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE6920(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E3943F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3943F8))
      {
        sub_23EFE6EF0();
      }

      sub_23F2FF068(&stru_27E3943E0, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 128))(a2, a3);
    (*(*a2 + 128))(a2, a3 + 4);
    (*(*a2 + 128))(a2, a3 + 8);
    (*(*a2 + 128))(a2, a3 + 12);
    (*(*a2 + 128))(a2, a3 + 16);
    (*(*a2 + 128))(a2, a3 + 20);
    (*(*a2 + 128))(a2, a3 + 24);
    (*(*a2 + 128))(a2, a3 + 28);
    (*(*a2 + 128))(a2, a3 + 32);
    (*(*a2 + 104))(a2, a3 + 36);
    (*(*a2 + 104))(a2, a3 + 40);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_23EFE6CA8(a2, a3, v10);
}

uint64_t sub_23EFE6CA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFE6FF4();
  }

  (*(*a1 + 128))(a1, a2);
  (*(*a1 + 128))(a1, a2 + 4);
  (*(*a1 + 128))(a1, a2 + 8);
  (*(*a1 + 128))(a1, a2 + 12);
  (*(*a1 + 128))(a1, a2 + 16);
  (*(*a1 + 128))(a1, a2 + 20);
  (*(*a1 + 128))(a1, a2 + 24);
  (*(*a1 + 128))(a1, a2 + 28);
  (*(*a1 + 128))(a1, a2 + 32);
  (*(*a1 + 104))(a1, a2 + 36);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 40);
}

void sub_23EFE6FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE6FF4()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0u;
  memset(v1, 0, sizeof(v1));
  operator new();
}

void sub_23EFE74A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

void sub_23EFE74B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F29E8F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFE74CC(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E394418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394418))
      {
        sub_23EFE7A9C();
      }

      sub_23F2FF068(&stru_27E394400, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 136))(a2, a3);
    (*(*a2 + 136))(a2, a3 + 8);
    (*(*a2 + 136))(a2, a3 + 16);
    (*(*a2 + 136))(a2, a3 + 24);
    (*(*a2 + 136))(a2, a3 + 32);
    (*(*a2 + 136))(a2, a3 + 40);
    (*(*a2 + 136))(a2, a3 + 48);
    (*(*a2 + 136))(a2, a3 + 56);
    (*(*a2 + 136))(a2, a3 + 64);
    (*(*a2 + 104))(a2, a3 + 72);
    (*(*a2 + 104))(a2, a3 + 76);
    return (*(*a2 + 24))(a2);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  return sub_23EFE7854(a2, a3, v10);
}

uint64_t sub_23EFE7854(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    sub_23EFE7BA0();
  }

  (*(*a1 + 136))(a1, a2);
  (*(*a1 + 136))(a1, a2 + 8);
  (*(*a1 + 136))(a1, a2 + 16);
  (*(*a1 + 136))(a1, a2 + 24);
  (*(*a1 + 136))(a1, a2 + 32);
  (*(*a1 + 136))(a1, a2 + 40);
  (*(*a1 + 136))(a1, a2 + 48);
  (*(*a1 + 136))(a1, a2 + 56);
  (*(*a1 + 136))(a1, a2 + 64);
  (*(*a1 + 104))(a1, a2 + 72);
  v5 = *(*a1 + 104);

  return v5(a1, a2 + 76);
}

void sub_23EFE7B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFE7BA0()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  operator new();
}

void sub_23EFE808C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE80A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F29EA6C(va);
  _Unwind_Resume(a1);
}

int *sub_23EFE80B4(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  sub_23EFE2A04(a1, &v46);
  result = sub_23F298FB0(a2);
  v5 = *a2;
  if (*a2 > 99)
  {
    if (v5 > 109)
    {
      if (v5 == 110)
      {
        v42 = *(a2 + 8);
        v41 = a2 + 8;
        v40 = v42;
        if (!v42)
        {
          goto LABEL_45;
        }

        v43 = v40(3, v41, 0, &unk_28517A998, &unk_23F312A08);
        if (!v43)
        {
          goto LABEL_45;
        }

        v44 = *a1;
        v46 = *(a1 + 8);
        v45 = v46;
        v49 = 2;
        (*(v44 + 104))(a1, &v49);
        if (v45 < 1)
        {
          return sub_23EFE6CA8(a1, v43, v49);
        }

        else
        {
          return sub_23EFE6920(&v46, a1, v43, v49);
        }
      }

      else if (v5 == 111)
      {
        v22 = *(a2 + 8);
        v21 = a2 + 8;
        v20 = v22;
        if (!v22)
        {
          goto LABEL_45;
        }

        v23 = v20(3, v21, 0, &unk_28517A9E8, &unk_23F312AE0);
        if (!v23)
        {
          goto LABEL_45;
        }

        v24 = *a1;
        v46 = *(a1 + 8);
        v25 = v46;
        v49 = 2;
        (*(v24 + 104))(a1, &v49);
        if (v25 < 1)
        {
          return sub_23EFE7854(a1, v23, v49);
        }

        else
        {
          return sub_23EFE74CC(&v46, a1, v23, v49);
        }
      }
    }

    else if (v5 == 100)
    {
      v32 = *(a2 + 8);
      v31 = a2 + 8;
      v30 = v32;
      if (!v32)
      {
        goto LABEL_45;
      }

      v33 = v30(3, v31, 0, &unk_28517A8F8, &unk_23F312858);
      if (!v33)
      {
        goto LABEL_45;
      }

      v34 = *a1;
      v46 = *(a1 + 8);
      v35 = v46;
      v49 = 2;
      (*(v34 + 104))(a1, &v49);
      if (v35 < 1)
      {
        return sub_23EFE5514(a1, v33, v49);
      }

      else
      {
        return sub_23EFE518C(&v46, a1, v33, v49);
      }
    }

    else if (v5 == 101)
    {
      v12 = *(a2 + 8);
      v11 = a2 + 8;
      v10 = v12;
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = v10(3, v11, 0, &unk_28517A948, &unk_23F312930);
      if (!v13)
      {
        goto LABEL_45;
      }

      v14 = *a1;
      v46 = *(a1 + 8);
      v15 = v46;
      v49 = 2;
      (*(v14 + 104))(a1, &v49);
      if (v15 < 1)
      {
        return sub_23EFE60C0(a1, v13, v49);
      }

      else
      {
        return sub_23EFE5D38(&v46, a1, v13, v49);
      }
    }
  }

  else
  {
    if (v5 <= 9)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return result;
        }

        v8 = *(a2 + 8);
        v7 = a2 + 8;
        v6 = v8;
        if (v8)
        {
          v9 = v6(3, v7, 0, &unk_28517A808, &unk_23F3125D8);
          if (v9)
          {
            v46 = "camera";
            v47 = 6;
            v48 = v9;
            return sub_23EFE247C(a1, &v46);
          }
        }
      }

      else
      {
        v28 = *(a2 + 8);
        v27 = a2 + 8;
        v26 = v28;
        if (v28)
        {
          v29 = v26(3, v27, 0, &unk_28517A7B8, &unk_23F312504);
          if (v29)
          {
            v46 = "camera";
            v47 = 6;
            v48 = v29;
            return sub_23EFE22A4(a1, &v46);
          }
        }
      }

LABEL_45:
      sub_23EFC9F68();
    }

    if (v5 == 10)
    {
      v38 = *(a2 + 8);
      v37 = a2 + 8;
      v36 = v38;
      if (v38)
      {
        v39 = v36(3, v37, 0, &unk_28517A858, &unk_23F3126AC);
        if (v39)
        {
          v46 = "camera";
          v47 = 6;
          v48 = v39;
          return sub_23EFE2654(a1, &v46);
        }
      }

      goto LABEL_45;
    }

    if (v5 == 11)
    {
      v18 = *(a2 + 8);
      v17 = a2 + 8;
      v16 = v18;
      if (v18)
      {
        v19 = v16(3, v17, 0, &unk_28517A8A8, &unk_23F312780);
        if (v19)
        {
          v46 = "camera";
          v47 = 6;
          v48 = v19;
          return sub_23EFE282C(a1, &v46);
        }
      }

      goto LABEL_45;
    }
  }

  return result;
}

void sub_23EFE85D4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5[25] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *a3;
  sub_23EF432A8(v5, a3 + 1);
  operator new();
}

void sub_23EFE8A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  (*(*v2 + 8))(v2);
  sub_23EF44E04(va);
  sub_23EF461FC(va1);
  _Unwind_Resume(a1);
}

void sub_23EFE8A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF461FC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE8A70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_23F2E6438(a2 + 48, (a2 + 40));
  v5 = sub_23F2E72C0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u)
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    *(a2 + 88) = 1;
    if (*"version" == 1936876918 && *"sion" == 1852795251)
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v13) = 6;
  v14 = 2;
  v7 = sub_23F2E72C0(a2);
  v8 = *v7;
  *v7 = 6;
  LOBYTE(v13) = v8;
  v9 = v7[1];
  v7[1] = v14;
  v14 = v9;
  sub_23F0655DC(&v14, v8);
  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
LABEL_9:
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_23EFE8C34(a2, &v13, 2u);
  v11 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 40) = *(v12 - 8);
  *(a2 + 56) = v12 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_23EFE8C34(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 2)
  {
    v9 = sub_23F063154(a2);
    sub_23F06AD58(v10, v9);
  }

  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = sub_23F0630E4(a2);
  sub_23F06F0C0(v10, *v5);
  v6 = sub_23F2E72C0(a1);
  v7 = *v6;
  *v6 = v10[0];
  v10[0] = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  sub_23F0655DC(&v11, v7);
}

void sub_23EFE8D84(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23EF4652C(v3, a2);
}

void sub_23EFE8ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23F0655DC((v3 + 8), v2);
  sub_23F2D8E74(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE8EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE8F0C(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_23F063154(v4);
  sub_23F06AD58(v5, v3);
}

void sub_23EFE9010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFE9040(uint64_t a1, unint64_t a2)
{
  v32 = 0u;
  memset(v31, 0, sizeof(v31));
  sub_23F06AEAC(&v27, a2);
  v3 = v27;
  *&v31[0] = v27;
  *(v31 + 8) = v28;
  v4 = v29;
  *(&v31[1] + 1) = v29;
  v26 = v30;
  v32 = v30;
  v5 = v28;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v27 = (v7 + 16);
    sub_23F2FDC5C(&v27, v6);
  }

  else
  {
    sub_23F2FDF70((v7 + 8));
  }

  v8 = *(a1 + 24);
  if (*(v8 + 40) == 1)
  {
    v27 = (v8 + 16);
    if (v5 != v3)
    {
      v9 = v3;
      do
      {
        sub_23F2FE3A8(&v27, v9);
        v9 += 3;
      }

      while (v9 != v5);
    }
  }

  else if (v5 != v3)
  {
    v10 = v3;
    do
    {
      sub_23F2FE7C4((v8 + 8), v10);
      v10 += 3;
    }

    while (v10 != v5);
  }

  v11 = v26;
  v12 = *(a1 + 24);
  if (*(v12 + 40) == 1)
  {
    v27 = (v12 + 16);
    sub_23F2FDC5C(&v27, 0xAAAAAAAAAAAAAAABLL * (v26 - v4));
  }

  else
  {
    sub_23F2FDF70((v12 + 8));
  }

  if (v4 == v26)
  {
    if (!v4)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = v4;
  do
  {
    v14 = *(a1 + 24);
    if (*(v14 + 40) == 1)
    {
      v27 = (v14 + 16);
      sub_23F2FD25C(&v27, 2u);
    }

    else
    {
      sub_23F2FD4DC(&v27, (v14 + 8));
    }

    sub_23F2F887C(*(a1 + 24));
    sub_23EFE955C(a1, v13);
    v15 = *(a1 + 24);
    v16 = *(v15[11] - 8);
    sub_23F2F866C(v15 + 6, v15[2] - v16 - 9);
    v17 = v15[6];
    if (v17)
    {
      memmove((v15[3] + v16), v15[7], v17);
    }

    v15[6] = 0;
    v18 = v15[10];
    v19 = v15[11] - 8;
    v15[11] = v19;
    if (v18 == v19)
    {
      v20 = *v15;
      v22 = v15[2];
      v21 = v15[3];
      std::ostream::write();
      if (*(v15 + 40) == 1)
      {
        free(v15[3]);
        *(v15 + 40) = 0;
      }
    }

    v13 += 3;
  }

  while (v13 != v26);
  if (v4)
  {
    do
    {
      v23 = *(v11 - 1);
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      v11 -= 3;
    }

    while (v11 != v4);
    v4 = *(&v31[1] + 1);
    v3 = *&v31[0];
LABEL_34:
    operator delete(v4);
  }

LABEL_35:
  if (v3)
  {
    v24 = *(&v31[0] + 1);
    while (v24 != v3)
    {
      v25 = *(v24 - 1);
      v24 -= 3;
      if (v25 < 0)
      {
        operator delete(*v24);
      }
    }

    operator delete(v3);
  }
}

void sub_23EFE9334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE9348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE9370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE9384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFE9398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void ***sub_23EFE93AC(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 3;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

void **sub_23EFE94A8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_23EFE955C(uint64_t a1, const void **a2)
{
  v4 = *a2;
  LOWORD(v17) = *a2;
  v5 = *(a1 + 24);
  if (*(v5 + 40) != 1)
  {
    if (v4 > 0x7F)
    {
      if (v4 > 0xFF)
      {
        __p.__r_.__value_.__s.__data_[0] = -51;
        *(&__p.__r_.__value_.__l.__data_ + 1) = __rev16(v4);
        v15 = *(v5 + 8);
        std::ostream::write();
        v6 = *a2;
        if (v6 <= 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        __p.__r_.__value_.__s.__data_[0] = -52;
        __p.__r_.__value_.__s.__data_[1] = v4;
        v9 = *(v5 + 8);
        std::ostream::write();
        v6 = *a2;
        if (v6 <= 1)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = v4;
      v7 = *(v5 + 8);
      std::ostream::write();
      v6 = *a2;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

LABEL_3:
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        sub_23EFEA198(a2 + 1);
      }

      if (v6 == 4)
      {
        sub_23EFEA404(a2 + 1);
      }

      goto LABEL_34;
    }

    v10 = a2[1];
    if (v10 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v10) == TypeID))
    {
      v12 = CFBooleanGetValue(v10) != 0;
      LOWORD(v17) = v12 | 0x100;
      v13 = *(a1 + 24);
      if (*(v13 + 40) != 1)
      {
LABEL_19:
        if (v12)
        {
          v14 = -61;
        }

        else
        {
          v14 = -62;
        }

        __p.__r_.__value_.__s.__data_[0] = v14;
        v16 = *(v13 + 8);
        std::ostream::write();
        return;
      }
    }

    else
    {
      v12 = 0;
      LOWORD(v17) = 0;
      v13 = *(a1 + 24);
      if (*(v13 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    __p.__r_.__value_.__r.__words[0] = v13 + 16;
    sub_23F2FE23C(&__p, &v17);
    return;
  }

  __p.__r_.__value_.__r.__words[0] = v5 + 16;
  sub_23F2FCB5C(&__p, &v17);
  v6 = *a2;
  if (v6 > 1)
  {
    goto LABEL_3;
  }

LABEL_9:
  if (!v6)
  {
    sub_23EFEA0A4(a2 + 1);
  }

  if (v6 != 1)
  {
LABEL_34:
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
    abort();
  }

  sub_23F2CB1FC(a2[1], &__p);
  v8 = *(a1 + 24);
  if (*(v8 + 40) == 1)
  {
    v17 = (v8 + 16);
    sub_23F2FE3A8(&v17, &__p.__r_.__value_.__l.__data_);
  }

  else
  {
    sub_23F2FE7C4((v8 + 8), &__p);
  }

  if (v19 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}