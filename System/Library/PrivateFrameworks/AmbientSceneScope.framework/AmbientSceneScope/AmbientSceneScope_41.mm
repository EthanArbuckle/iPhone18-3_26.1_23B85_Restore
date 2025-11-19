void sub_23F26B320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_23F26B680(unint64_t *a1, _DWORD *a2, unint64_t *a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = a2[1];
  }

  else
  {
    LODWORD(v13) = *a2;
    v12 = a2[1];
    if (v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v11 = (*a2 != 0) | (v13 << 32);
  }

  v14 = v12 * HIDWORD(v11);
  v15 = 2 * v14;
  v16 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *a1 = v15;
  a1[1] = 0;
  a1[2] = v19;
  if (v14)
  {
    memptr[0] = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, 2 * v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, a1[2], v15);
    }

    v21 = memptr[0];
    a1[1] = memptr[0];
    v22 = *a2;
    a1[3] = *a2;
    a1[4] = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
    if (v21 && (a6 & 1) != 0)
    {
      if (v22)
      {
        v23 = HIDWORD(v22) == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        v22 = 0;
      }

      memptr[0] = v21;
      memptr[1] = v22;
      memptr[2] = (v11 & 0x7FFFFFFF7FFFFFFFLL);
      if (HIDWORD(v22) * ((v11 >> 31) >> 1) != -1)
      {
        goto LABEL_29;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v24 = qword_27E396178, v25 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_28:
          qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
          v28[0] = memptr;
          v28[1] = a5;
          sub_23F1F3E6C(v28);
          return a1;
        }
      }

      else
      {
        v24 = qword_27E396178;
        v25 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_32;
        }
      }

      do
      {
        (*v24)(*(v24 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v24 += 16;
      }

      while (v24 != v25);
      if (byte_27E3961A0)
      {
        goto LABEL_28;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    a1[3] = *a2;
    a1[4] = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  }

  return a1;
}

void sub_23F26B8C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

unint64_t *sub_23F26B8E4(unint64_t *a1, _DWORD *a2, unint64_t *a3, char a4, __int16 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = a2[1];
  }

  else
  {
    LODWORD(v13) = *a2;
    v12 = a2[1];
    if (v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v11 = (*a2 != 0) | (v13 << 32);
  }

  v14 = v12 * HIDWORD(v11);
  v15 = 2 * v14;
  v16 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *a1 = v15;
  a1[1] = 0;
  a1[2] = v19;
  if (!v14)
  {
    a1[3] = *a2;
    a1[4] = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
    return a1;
  }

  memptr = 0;
  v20 = malloc_type_posix_memalign(&memptr, v19, 2 * v14, 0x63222AC6uLL);
  if (v20)
  {
    sub_23F2BAF78(v20, a1[2], v15);
  }

  v21 = memptr;
  a1[1] = memptr;
  v22 = *a2;
  a1[3] = *a2;
  a1[4] = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  if (v21)
  {
    if (HIDWORD(v22))
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v22;
    }

    v26 = HIDWORD(v25) * ((v11 >> 31) >> 1);
    if (a6)
    {
      if (v26 != -1)
      {
        goto LABEL_38;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v28 = qword_27E396178, v27 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_37:
          qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_38:
          if (v25)
          {
            v31 = v24;
          }

          else
          {
            v31 = 1;
          }

          if ((v31 & 1) == 0)
          {
            v32 = v25 - 1;
            v33 = HIDWORD(v25) - 1;
            if (HIDWORD(v25) != 1)
            {
              v34 = HIDWORD(v11) & 0x7FFFFFFF;
              v35 = *a5;
              if (v25 != 1)
              {
                v36 = 0;
                v37 = v11 & 0x7FFFFFFF;
                v38 = 2 * v34;
                do
                {
                  v39 = v21;
                  v40 = v25 - 1;
                  do
                  {
                    *v39 = v35;
                    v39 += v11 & 0x7FFFFFFF;
                    --v40;
                  }

                  while (v40);
                  v35 = *a5;
                  *v39 = *a5;
                  v21 = (v21 + v38);
                  ++v36;
                }

                while (v36 != v33);
                goto LABEL_67;
              }

              do
              {
                *v21 = v35;
                v21 += v34;
                --v33;
              }

              while (v33);
            }

            if (v25 == 1)
            {
LABEL_68:
              *v21 = *a5;
              return a1;
            }

            v37 = v11 & 0x7FFFFFFF;
            v35 = *a5;
            do
            {
LABEL_67:
              *v21 = v35;
              v21 += v37;
              --v32;
            }

            while (v32);
            goto LABEL_68;
          }

          return a1;
        }
      }

      else
      {
        v28 = qword_27E396178;
        v27 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_76;
        }
      }

      do
      {
        (*v28)(*(v28 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v28 += 16;
      }

      while (v28 != v27);
      if (byte_27E3961A0)
      {
        goto LABEL_37;
      }

LABEL_76:
      abort();
    }

    if (v26 != -1)
    {
LABEL_53:
      if (v25)
      {
        v41 = v24;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        return a1;
      }

      v42 = v25 - 1;
      v43 = HIDWORD(v25) - 1;
      if (HIDWORD(v25) != 1)
      {
        v44 = HIDWORD(v11) & 0x7FFFFFFF;
        if (v25 != 1)
        {
          v45 = 0;
          v46 = v11 & 0x7FFFFFFF;
          v47 = 2 * v44;
          do
          {
            v48 = v21;
            v49 = v25 - 1;
            do
            {
              *v48 = 0;
              v48 += v11 & 0x7FFFFFFF;
              --v49;
            }

            while (v49);
            *v48 = 0;
            v21 = (v21 + v47);
            ++v45;
          }

          while (v45 != v43);
          goto LABEL_72;
        }

        do
        {
          *v21 = 0;
          v21 += v44;
          --v43;
        }

        while (v43);
      }

      if (v25 == 1)
      {
LABEL_73:
        *v21 = 0;
        return a1;
      }

      v46 = v11 & 0x7FFFFFFF;
      do
      {
LABEL_72:
        *v21 = 0;
        v21 += v46;
        --v42;
      }

      while (v42);
      goto LABEL_73;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v30 = qword_27E396178, v29 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_52:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_53;
      }
    }

    else
    {
      v30 = qword_27E396178;
      v29 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_76;
      }
    }

    do
    {
      (*v30)(*(v30 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v30 += 16;
    }

    while (v30 != v29);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_52;
  }

  return a1;
}

unint64_t *sub_23F26BDA4(unint64_t *a1, _DWORD *a2, unint64_t *a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = a2[1];
  }

  else
  {
    LODWORD(v13) = *a2;
    v12 = a2[1];
    if (v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = 0;
    }

    v11 = (*a2 != 0) | (v13 << 32);
  }

  v14 = v12 * HIDWORD(v11);
  v15 = 4 * v14;
  v16 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *a1 = v15;
  a1[1] = 0;
  a1[2] = v19;
  if (v14)
  {
    memptr[0] = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, 4 * v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_23F2BAF78(v20, a1[2], v15);
    }

    v22 = memptr[0];
    a1[1] = memptr[0];
    v23 = *a2;
    a1[3] = *a2;
    a1[4] = (4 * v11) & 0xFFFFFFFCFFFFFFFCLL;
    if (v22 && (a6 & 1) != 0)
    {
      if (v23)
      {
        v24 = HIDWORD(v23) == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v23 = 0;
      }

      memptr[0] = v22;
      memptr[1] = v23;
      memptr[2] = (v11 & 0x3FFFFFFF3FFFFFFFLL);
      if (HIDWORD(v23) * ((v11 >> 30) >> 2) != -1)
      {
        goto LABEL_29;
      }

      sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
      if (byte_27E3961A0 == 1)
      {
        if (byte_27E3961A8 != 1 || (v25 = qword_27E396178, v26 = unk_27E396180, qword_27E396178 == unk_27E396180))
        {
LABEL_28:
          v21 = qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
          v29[0] = memptr;
          v29[1] = a5;
          sub_23F1F7B90(v29, *&v21);
          return a1;
        }
      }

      else
      {
        v25 = qword_27E396178;
        v26 = unk_27E396180;
        if (qword_27E396178 == unk_27E396180)
        {
          goto LABEL_32;
        }
      }

      do
      {
        (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v25 += 16;
      }

      while (v25 != v26);
      if (byte_27E3961A0)
      {
        goto LABEL_28;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    a1[3] = *a2;
    a1[4] = (4 * v11) & 0xFFFFFFFCFFFFFFFCLL;
  }

  return a1;
}

void sub_23F26BFE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F26C008(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, char *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = a2[2];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v13 = a2[2];
    if (v13)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    v11 = (*a2 != 0) | (v16 << 32);
  }

  v18 = v12 * v13;
  v19 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v20 = v19 | (v19 >> 4) | ((v19 | (v19 >> 4)) >> 8);
  v21 = v20 | (v20 >> 16) | ((v20 | (v20 >> 16)) >> 32);
  if (v21 + 1 > 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = v22;
  if (!v18)
  {
    v34 = *a2;
    *(a1 + 32) = a2[2];
    *(a1 + 24) = v34;
    *(a1 + 36) = v11;
    *(a1 + 44) = v12;
    return a1;
  }

  memptr = 0;
  v23 = malloc_type_posix_memalign(&memptr, v22, v18, 0x63222AC6uLL);
  if (v23)
  {
    sub_23F2BAF78(v23, *(a1 + 16), v18);
  }

  v24 = memptr;
  *(a1 + 8) = memptr;
  v25 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v25;
  *(a1 + 36) = v11;
  *(a1 + 44) = v12;
  if (v24 && (a6 & 1) != 0)
  {
    if (*(a1 + 24))
    {
      v26 = *(a1 + 28) == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26;
    if (*(a1 + 32))
    {
      v28 = v27;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(a1 + 24);
    }

    if (v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 32);
    }

    v31 = v30 * v12;
    if (v31 != -1)
    {
LABEL_43:
      if (v11 == 1)
      {
        v36 = HIDWORD(v11);
        if (HIDWORD(v11) == v29)
        {
          if (v12 != HIDWORD(v29) * v29)
          {
            if (v30 && v36 && HIDWORD(v29))
            {
              v37 = v30 - 1;
              if (v30 != 1)
              {
                do
                {
                  memset(v24, *a5, (HIDWORD(v29) * v29));
                  v24 += v12;
                  --v37;
                }

                while (v37);
              }

              memset(v24, *a5, (HIDWORD(v29) * v29));
            }

            return a1;
          }

LABEL_80:
          memset(v24, *a5, v31);
          return a1;
        }

        if (!v30)
        {
          return a1;
        }

        v49 = HIDWORD(v29);
        if (!HIDWORD(v29) || !v29)
        {
          return a1;
        }

        v31 = v29;
        v50 = HIDWORD(v29) - 1;
        v51 = v30 - 1;
        if (v51)
        {
          v52 = v12;
          if (v49 != 1)
          {
            v53 = 0;
            v69 = v52;
            do
            {
              v54 = HIDWORD(v29) - 1;
              v55 = v24;
              do
              {
                memset(v55, *a5, v31);
                v55 += v36;
                --v54;
              }

              while (v54);
              memset(v55, *a5, v31);
              v24 += v69;
              ++v53;
            }

            while (v53 != v51);
            goto LABEL_79;
          }

          do
          {
            memset(v24, *a5, v31);
            v24 += v12;
            --v51;
          }

          while (v51);
        }

        if (HIDWORD(v29) == 1)
        {
          goto LABEL_80;
        }

        do
        {
LABEL_79:
          memset(v24, *a5, v31);
          v24 += v36;
          --v50;
        }

        while (v50);
        goto LABEL_80;
      }

      if (!v30 || !HIDWORD(v29) || !v29)
      {
        return a1;
      }

      v38 = v29 - 1;
      v39 = HIDWORD(v29) - 1;
      v40 = HIDWORD(v11);
      v41 = v30 - 1;
      if (v30 != 1)
      {
        if (HIDWORD(v29) == 1)
        {
          v56 = *a5;
          if (v29 == 1)
          {
            do
            {
              *v24 = v56;
              v24 += v12;
              --v41;
            }

            while (v41);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = v29 - 1;
              v59 = v24;
              do
              {
                *v59 = v56;
                v59 += v11;
                --v58;
              }

              while (v58);
              v56 = *a5;
              *v59 = *a5;
              v24 += v12;
              ++v57;
            }

            while (v57 != v41);
          }
        }

        else
        {
          if (v29 == 1)
          {
            v61 = 0;
            v60 = *a5;
            do
            {
              v62 = HIDWORD(v29) - 1;
              v63 = v24;
              do
              {
                *v63 = v60;
                v63 += v40;
                --v62;
              }

              while (v62);
              v60 = *a5;
              *v63 = *a5;
              v24 += v12;
              ++v61;
            }

            while (v61 != v41);
LABEL_94:
            if (v29 != 1)
            {
              v64 = 0;
              do
              {
                v65 = v29 - 1;
                v66 = v24;
                do
                {
                  *v66 = v60;
                  v66 += v11;
                  --v65;
                }

                while (v65);
                v60 = *a5;
                *v66 = *a5;
                v24 += v40;
                ++v64;
              }

              while (v64 != v39);
              goto LABEL_103;
            }

            do
            {
              *v24 = v60;
              v24 += v40;
              --v39;
            }

            while (v39);
            v60 = *a5;
LABEL_102:
            if (v29 == 1)
            {
LABEL_105:
              *v24 = v60;
              return a1;
            }

            do
            {
LABEL_103:
              *v24 = v60;
              v24 += v11;
              --v38;
            }

            while (v38);
            v60 = *a5;
            goto LABEL_105;
          }

          v42 = 0;
          do
          {
            v43 = 0;
            v44 = *a5;
            v45 = v24;
            do
            {
              v46 = v29 - 1;
              v47 = v45;
              do
              {
                *v47 = v44;
                v47 += v11;
                --v46;
              }

              while (v46);
              v44 = *a5;
              *v47 = *a5;
              v45 += v40;
              ++v43;
            }

            while (v43 != v39);
            v48 = v29 - 1;
            do
            {
              *v45 = v44;
              v45 += v11;
              --v48;
            }

            while (v48);
            *v45 = v44;
            v24 += v12;
            ++v42;
          }

          while (v42 != v41);
        }
      }

      v60 = *a5;
      if (HIDWORD(v29) == 1)
      {
        goto LABEL_102;
      }

      goto LABEL_94;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v67 = v30 * v12;
    v68 = v30;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v32 = qword_27E396178, v33 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_42:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v30 = v68;
        v31 = v67;
        goto LABEL_43;
      }
    }

    else
    {
      v32 = qword_27E396178;
      v33 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_107;
      }
    }

    do
    {
      (*v32)(*(v32 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v32 += 16;
    }

    while (v32 != v33);
    if (byte_27E3961A0)
    {
      goto LABEL_42;
    }

LABEL_107:
    abort();
  }

  return a1;
}

void sub_23F26C558(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F26C578(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, unsigned __int16 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = a2[2];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v13 = a2[2];
    if (v13)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    v11 = (*a2 != 0) | (v16 << 32);
  }

  v18 = v12 * v13;
  v19 = 2 * v18;
  v20 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
  v22 = v21 | (v21 >> 16) | ((v21 | (v21 >> 16)) >> 32);
  if (v22 + 1 > 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 16) = v23;
  if (v18)
  {
    memptr = 0;
    v24 = malloc_type_posix_memalign(&memptr, v23, 2 * v18, 0x63222AC6uLL);
    if (v24)
    {
      sub_23F2BAF78(v24, *(a1 + 16), v19);
    }

    v25 = memptr;
    *(a1 + 8) = memptr;
  }

  else
  {
    v25 = 0;
  }

  v26 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v26;
  *(a1 + 36) = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  *(a1 + 44) = 2 * v12;
  if (!v25 || (a6 & 1) == 0)
  {
    return a1;
  }

  v27 = v12 & 0x7FFFFFFF;
  if (*(a1 + 24))
  {
    v28 = *(a1 + 28) == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (*(a1 + 32))
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(a1 + 24);
  }

  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 32);
  }

  v33 = (v32 * v27);
  if (v33 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v34 = qword_27E396178, v35 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_42:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_43;
      }
    }

    else
    {
      v34 = qword_27E396178;
      v35 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_230;
      }
    }

    do
    {
      (*v34)(*(v34 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v34 += 16;
    }

    while (v34 != v35);
    v33 = (v32 * v27);
    if (byte_27E3961A0)
    {
      goto LABEL_42;
    }

LABEL_230:
    abort();
  }

LABEL_43:
  v36 = v11 & 0x7FFFFFFF7FFFFFFFLL;
  v37 = v11 & 0x7FFFFFFF;
  if (v37 != 1)
  {
    if (!v32 || !HIDWORD(v31) || !v31)
    {
      return a1;
    }

    v43 = v31 - 1;
    v44 = HIDWORD(v31) - 1;
    v45 = HIDWORD(v36);
    v46 = v32 - 1;
    if (v32 != 1)
    {
      v47 = *a5;
      if (HIDWORD(v31) == 1)
      {
        if (v31 == 1)
        {
          do
          {
            v25->i16[0] = v47;
            v25 = (v25 + 2 * v27);
            --v46;
          }

          while (v46);
          goto LABEL_197;
        }

        v140 = 0;
        do
        {
          v141 = v25;
          v142 = v31 - 1;
          do
          {
            v141->i16[0] = v47;
            v141 = (v141 + 2 * v37);
            --v142;
          }

          while (v142);
          v47 = *a5;
          v141->i16[0] = *a5;
          v25 = (v25 + 2 * v27);
          ++v140;
        }

        while (v140 != v46);
        goto LABEL_174;
      }

      if (v31 == 1)
      {
        v148 = 0;
        do
        {
          v149 = v25;
          v150 = HIDWORD(v31) - 1;
          do
          {
            v149->i16[0] = v47;
            v149 = (v149 + 2 * v45);
            --v150;
          }

          while (v150);
          v47 = *a5;
          v149->i16[0] = *a5;
          v25 = (v25 + 2 * v27);
          ++v148;
        }

        while (v148 != v46);
        goto LABEL_186;
      }

      v48 = 0;
      v49 = 2 * v27;
      v50 = v45;
      v51 = 2 * v37;
      v52 = &v25->i16[v45];
      do
      {
        v53 = 0;
        v54 = v52;
        v55 = v25;
        do
        {
          v56 = v54;
          v57 = v55;
          v58 = v31 - 1;
          do
          {
            v57->i16[0] = v47;
            v57 = (v57 + v51);
            --v58;
          }

          while (v58);
          v47 = *a5;
          v57->i16[0] = *a5;
          v55 = (v55 + v50 * 2);
          ++v53;
          v54 = &v56[v50];
        }

        while (v53 != v44);
        v59 = v31 - 1;
        do
        {
          *v56 = v47;
          v56 = (v56 + v51);
          --v59;
        }

        while (v59);
        v47 = *a5;
        *v56 = *a5;
        v25 = (v25 + v49);
        ++v48;
        v52 = (v52 + v49);
      }

      while (v48 != v46);
    }

    v47 = *a5;
    if (HIDWORD(v31) == 1)
    {
      if (v31 == 1)
      {
LABEL_198:
        v25->i16[0] = v47;
        return a1;
      }

      goto LABEL_174;
    }

    if (v31 != 1)
    {
      v60 = 0;
      v61 = 2 * v45;
      do
      {
        v62 = v25;
        v63 = v31 - 1;
        do
        {
          v62->i16[0] = v47;
          v62 = (v62 + 2 * v37);
          --v63;
        }

        while (v63);
        v47 = *a5;
        v62->i16[0] = *a5;
        v25 = (v25 + v61);
        ++v60;
      }

      while (v60 != v44);
LABEL_174:
      v143 = 2 * v37;
      do
      {
        v25->i16[0] = v47;
        v25 = (v25 + v143);
        --v43;
      }

      while (v43);
LABEL_197:
      v47 = *a5;
      goto LABEL_198;
    }

    do
    {
LABEL_186:
      v25->i16[0] = v47;
      v25 = (v25 + 2 * v45);
      --v44;
    }

    while (v44);
    goto LABEL_197;
  }

  v38 = HIDWORD(v36);
  if (HIDWORD(v36) != v31)
  {
    if (!v32 || !HIDWORD(v31) || !v31)
    {
      return a1;
    }

    v64 = v31;
    v65 = HIDWORD(v31) - 1;
    v66 = 2 * v38;
    v67 = v32 - 1;
    if (v32 != 1)
    {
      v68 = v31 & 0xF;
      v69 = 2 * (v31 - v68);
      v70 = 2 * (v31 - (v31 & 3));
      v71 = 2 * v27;
      v72 = 0;
      v73 = v25 + 1;
      v74 = (v31 & 3) - v31;
      if (HIDWORD(v31) == 1)
      {
        while (1)
        {
          v98 = *a5;
          v99 = v31;
          v100 = v25;
          if (v31 < 4uLL)
          {
            goto LABEL_120;
          }

          if (v31 >= 0x10uLL)
          {
            v102 = vdupq_n_s16(v98);
            v103 = v31 - (v31 & 0xF);
            v104 = v73;
            do
            {
              v104[-1] = v102;
              *v104 = v102;
              v104 += 2;
              v103 -= 16;
            }

            while (v103);
            if ((v31 & 0xF) == 0)
            {
              goto LABEL_108;
            }

            v101 = v31 - (v31 & 0xF);
            if (v68 < 4)
            {
              v100 = (v25 + v69);
              v99 = v31 & 0xF;
LABEL_120:
              v100->i16[0] = v98;
              if (v99 >= 2)
              {
                v100->i16[1] = v98;
                if (v99 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v100->i16[2] = v98;
                }
              }

              goto LABEL_108;
            }
          }

          else
          {
            v101 = 0;
          }

          v100 = (v25 + v70);
          v105 = vdup_n_s16(v98);
          v106 = 2 * v101;
          v107 = v74 + v101;
          do
          {
            *&v25->i8[v106] = v105;
            v106 += 8;
            v107 += 4;
          }

          while (v107);
          v99 = v31 & 3;
          if ((v31 & 3) != 0)
          {
            goto LABEL_120;
          }

LABEL_108:
          v25 = (v25 + v71);
          ++v72;
          v73 = (v73 + v71);
          if (v72 == v67)
          {
            goto LABEL_123;
          }
        }
      }

LABEL_77:
      v75 = 0;
      v76 = v25;
      v77 = v73;
      while (1)
      {
        v78 = *a5;
        v79 = v31;
        v80 = v76;
        if (v31 < 4uLL)
        {
          goto LABEL_90;
        }

        if (v31 >= 0x10uLL)
        {
          v82 = vdupq_n_s16(v78);
          v83 = v31 - (v31 & 0xF);
          v84 = v77;
          do
          {
            v84[-1] = v82;
            *v84 = v82;
            v84 += 2;
            v83 -= 16;
          }

          while (v83);
          if ((v31 & 0xF) == 0)
          {
            goto LABEL_78;
          }

          v81 = v31 - (v31 & 0xF);
          if (v68 < 4)
          {
            v80 = (v76 + v69);
            v79 = v31 & 0xF;
LABEL_90:
            v80->i16[0] = v78;
            if (v79 >= 2)
            {
              v80->i16[1] = v78;
              if (v79 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v80->i16[2] = v78;
              }
            }

            goto LABEL_78;
          }
        }

        else
        {
          v81 = 0;
        }

        v80 = (v76 + v70);
        v85 = vdup_n_s16(v78);
        v86 = 2 * v81;
        v87 = v74 + v81;
        do
        {
          *&v76->i8[v86] = v85;
          v86 += 8;
          v87 += 4;
        }

        while (v87);
        v79 = v31 & 3;
        if ((v31 & 3) != 0)
        {
          goto LABEL_90;
        }

LABEL_78:
        v76 = (v76 + v66);
        ++v75;
        v77 = (v77 + v66);
        if (v75 == v65)
        {
          v88 = *a5;
          if (v31 < 4uLL)
          {
            v89 = v31;
            v90 = v76;
            goto LABEL_105;
          }

          if (v31 < 0x10uLL)
          {
            v91 = 0;
            goto LABEL_102;
          }

          v92 = 0;
          v93 = vdupq_n_s16(v88);
          v94 = v31 - (v31 & 0xF);
          do
          {
            v76[v92] = v93;
            v77[v92] = v93;
            v92 += 2;
            v94 -= 16;
          }

          while (v94);
          if ((v31 & 0xF) != 0)
          {
            v91 = v31 - (v31 & 0xF);
            if (v68 >= 4)
            {
LABEL_102:
              v90 = (v76 + v70);
              v95 = vdup_n_s16(v88);
              v96 = 2 * v91;
              v97 = v74 + v91;
              do
              {
                *&v76->i8[v96] = v95;
                v96 += 8;
                v97 += 4;
              }

              while (v97);
              v89 = v31 & 3;
              if ((v31 & 3) != 0)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v90 = (v76 + v69);
              v89 = v31 & 0xF;
LABEL_105:
              v90->i16[0] = v88;
              if (v89 >= 2)
              {
                v90->i16[1] = v88;
                if (v89 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v90->i16[2] = v88;
                }
              }
            }
          }

          v25 = (v25 + v71);
          ++v72;
          v73 = (v73 + v71);
          if (v72 == v67)
          {
            break;
          }

          goto LABEL_77;
        }
      }
    }

LABEL_123:
    if (HIDWORD(v31) != 1)
    {
      v108 = 0;
      v109 = v31 - (v31 != 0) + 1;
      v110 = v25 + 1;
      do
      {
        v111 = *a5;
        v112 = v31;
        v113 = v25;
        if (v109 >= 4)
        {
          if (v109 < 0x10)
          {
            v114 = 0;
LABEL_133:
            v113 = (v25 + 2 * (v109 & 0xFFFFFFFFFFFFFFFCLL));
            v118 = vdup_n_s16(v111);
            v119 = 2 * v114;
            v120 = v114 - (v109 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v25->i8[v119] = v118;
              v119 += 8;
              v120 += 4;
            }

            while (v120);
            v112 = v31 - (v109 & 0xFFFFFFFFFFFFFFFCLL);
            if (v109 == (v109 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_125;
            }

            goto LABEL_138;
          }

          v115 = vdupq_n_s16(v111);
          v116 = v109 & 0xFFFFFFFFFFFFFFF0;
          v117 = v110;
          do
          {
            v117[-1] = v115;
            *v117 = v115;
            v117 += 2;
            v116 -= 16;
          }

          while (v116);
          if (v109 == (v109 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_125;
          }

          v114 = v109 & 0xFFFFFFFFFFFFFFF0;
          if ((v109 & 0xC) != 0)
          {
            goto LABEL_133;
          }

          v113 = (v25 + 2 * (v109 & 0xFFFFFFFFFFFFFFF0));
          v112 = v31 - (v109 & 0xFFFFFFFFFFFFFFF0);
        }

LABEL_138:
        v121 = v112 + 1;
        do
        {
          v113->i16[0] = v111;
          v113 = (v113 + 2);
          --v121;
        }

        while (v121 > 1);
LABEL_125:
        v25 = (v25 + v66);
        ++v108;
        v110 = (v110 + v66);
      }

      while (v108 != v65);
    }

    v122 = *a5;
    v123 = v31 - (v31 != 0) + 1;
    if (v123 < 4)
    {
      v124 = v25;
      goto LABEL_218;
    }

    if (v123 >= 0x10)
    {
      v139 = v123 & 0xFFFFFFFFFFFFFFF0;
      v151 = vdupq_n_s16(v122);
      v152 = v25 + 1;
      v153 = v123 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v152[-1] = v151;
        *v152 = v151;
        v152 += 2;
        v153 -= 16;
      }

      while (v153);
      if (v123 == v139)
      {
        return a1;
      }

      if ((v123 & 0xC) == 0)
      {
        v124 = (v25 + 2 * v139);
        v64 = v31 - v139;
        goto LABEL_218;
      }
    }

    else
    {
      v139 = 0;
    }

    v64 = v31 - (v123 & 0xFFFFFFFFFFFFFFFCLL);
    v124 = (v25 + 2 * (v123 & 0xFFFFFFFFFFFFFFFCLL));
    v154 = vdup_n_s16(v122);
    v155 = (v25 + 2 * v139);
    v156 = v139 - (v123 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v155++ = v154;
      v156 += 4;
    }

    while (v156);
    if (v123 == (v123 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return a1;
    }

LABEL_218:
    v170 = v64 + 1;
    do
    {
      v124->i16[0] = v122;
      v124 = (v124 + 2);
      --v170;
    }

    while (v170 > 1);
    return a1;
  }

  v39 = (HIDWORD(v31) * v31);
  if (v27 != v39)
  {
    if (!v32 || !v38 || !HIDWORD(v31))
    {
      return a1;
    }

    if (v32 != 1)
    {
      if (!v39)
      {
        return a1;
      }

      v125 = 0;
      v126 = v25 + 1;
      v127 = 2 * v27;
      do
      {
        v128 = *a5;
        v129 = (HIDWORD(v31) * v31);
        v130 = v25;
        if (v39 >= 4)
        {
          if (v39 < 0x10)
          {
            v131 = 0;
LABEL_157:
            v130 = (v25 + 2 * (v39 & 0xFFFFFFFC));
            v135 = vdup_n_s16(v128);
            v136 = 2 * v131;
            v137 = v131 - (v39 & 0xFFFFFFFC);
            do
            {
              *&v25->i8[v136] = v135;
              v136 += 8;
              v137 += 4;
            }

            while (v137);
            v129 = (BYTE4(v31) * v31) & 3;
            if ((v39 & 0xFFFFFFFC) == v39)
            {
              goto LABEL_149;
            }

            goto LABEL_162;
          }

          v132 = vdupq_n_s16(v128);
          v133 = v39 & 0xFFFFFFF0;
          v134 = v126;
          do
          {
            v134[-1] = v132;
            *v134 = v132;
            v134 += 2;
            v133 -= 16;
          }

          while (v133);
          if ((v39 & 0xFFFFFFF0) == v39)
          {
            goto LABEL_149;
          }

          v131 = v39 & 0xFFFFFFF0;
          if (((BYTE4(v31) * v31) & 0xC) != 0)
          {
            goto LABEL_157;
          }

          v130 = (v25 + 2 * (v39 & 0xFFFFFFF0));
          v129 = (BYTE4(v31) * v31) & 0xF;
        }

LABEL_162:
        v138 = v129 + 1;
        do
        {
          v130->i16[0] = v128;
          v130 = (v130 + 2);
          --v138;
        }

        while (v138 > 1);
LABEL_149:
        v25 = (v25 + v127);
        ++v125;
        v126 = (v126 + v127);
      }

      while (v125 != v32 - 1);
    }

    if (!v39)
    {
      return a1;
    }

    v144 = *a5;
    if (v39 < 4)
    {
      v145 = (HIDWORD(v31) * v31);
      v146 = v25;
      goto LABEL_226;
    }

    if (v39 >= 0x10)
    {
      v163 = v39 & 0xFFFFFFF0;
      v164 = vdupq_n_s16(v144);
      v165 = v25 + 1;
      v166 = v163;
      do
      {
        v165[-1] = v164;
        *v165 = v164;
        v165 += 2;
        v166 -= 16;
      }

      while (v166);
      if (v163 == v39)
      {
        return a1;
      }

      if (((BYTE4(v31) * v31) & 0xC) == 0)
      {
        v146 = (v25 + 2 * v163);
        v145 = (BYTE4(v31) * v31) & 0xF;
        goto LABEL_226;
      }
    }

    else
    {
      v163 = 0;
    }

    v145 = (BYTE4(v31) * v31) & 3;
    v146 = (v25 + 2 * (v39 & 0xFFFFFFFC));
    v167 = vdup_n_s16(v144);
    v168 = (v25 + 2 * v163);
    v169 = v163 - (v39 & 0xFFFFFFFC);
    do
    {
      *v168++ = v167;
      v169 += 4;
    }

    while (v169);
    if ((v39 & 0xFFFFFFFC) == v39)
    {
      return a1;
    }

LABEL_226:
    v172 = v145 + 1;
    do
    {
      v146->i16[0] = v144;
      v146 = (v146 + 2);
      --v172;
    }

    while (v172 > 1);
    return a1;
  }

  if (!v33)
  {
    return a1;
  }

  v40 = *a5;
  if (v33 < 4)
  {
    v41 = v33;
    v42 = v25;
    goto LABEL_222;
  }

  if (v33 >= 0x10)
  {
    v147 = v33 & 0xFFFFFFF0;
    v157 = vdupq_n_s16(v40);
    v158 = v25 + 1;
    v159 = v147;
    do
    {
      v158[-1] = v157;
      *v158 = v157;
      v158 += 2;
      v159 -= 16;
    }

    while (v159);
    if (v147 == v33)
    {
      return a1;
    }

    if ((v33 & 0xC) == 0)
    {
      v42 = (v25 + 2 * v147);
      v41 = v33 & 0xF;
LABEL_222:
      v171 = v41 + 1;
      do
      {
        v42->i16[0] = v40;
        v42 = (v42 + 2);
        --v171;
      }

      while (v171 > 1);
      return a1;
    }
  }

  else
  {
    v147 = 0;
  }

  v41 = v33 & 3;
  v42 = (v25 + 2 * (v33 & 0xFFFFFFFC));
  v160 = vdup_n_s16(v40);
  v161 = (v25 + 2 * v147);
  v162 = v147 - (v33 & 0xFFFFFFFC);
  do
  {
    *v161++ = v160;
    v162 += 4;
  }

  while (v162);
  if ((v33 & 0xFFFFFFFC) != v33)
  {
    goto LABEL_222;
  }

  return a1;
}

void sub_23F26D084(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F26D0A4(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, __int16 *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = a2[2];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v13 = a2[2];
    if (v13)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    v11 = (*a2 != 0) | (v16 << 32);
  }

  v18 = v12 * v13;
  v19 = 2 * v18;
  v20 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
  v22 = v21 | (v21 >> 16) | ((v21 | (v21 >> 16)) >> 32);
  if (v22 + 1 > 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 16) = v23;
  if (v18)
  {
    memptr = 0;
    v24 = malloc_type_posix_memalign(&memptr, v23, 2 * v18, 0x63222AC6uLL);
    if (v24)
    {
      sub_23F2BAF78(v24, *(a1 + 16), v19);
    }

    v25 = memptr;
    *(a1 + 8) = memptr;
  }

  else
  {
    v25 = 0;
  }

  v26 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v26;
  *(a1 + 36) = (2 * v11) & 0xFFFFFFFEFFFFFFFELL;
  *(a1 + 44) = 2 * v12;
  if (!v25)
  {
    return a1;
  }

  v27 = v12 & 0x7FFFFFFF;
  if (*(a1 + 24))
  {
    v28 = *(a1 + 28) == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (*(a1 + 32))
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(a1 + 24);
  }

  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 32);
  }

  v33 = v32 * v27;
  if ((a6 & 1) == 0)
  {
    if (v33 != -1)
    {
LABEL_67:
      if (!v32 || !HIDWORD(v31) || !v31)
      {
        return a1;
      }

      v56 = v31 - 1;
      v57 = HIDWORD(v31) - 1;
      v58 = HIDWORD(v11) & 0x7FFFFFFF;
      v59 = v32 - 1;
      if (v32 != 1)
      {
        v60 = v11 & 0x7FFFFFFF;
        if (HIDWORD(v31) == 1)
        {
          if (v31 == 1)
          {
            do
            {
              *v25 = 0;
              v25 += v27;
              --v59;
            }

            while (v59);
          }

          else
          {
            v84 = 0;
            v85 = 2 * v60;
            do
            {
              v86 = v25;
              v87 = v31 - 1;
              do
              {
                *v86 = 0;
                v86 = (v86 + v85);
                --v87;
              }

              while (v87);
              *v86 = 0;
              v25 += v27;
              ++v84;
            }

            while (v84 != v59);
          }
        }

        else
        {
          v61 = 0;
          v62 = 2 * v27;
          v63 = v58;
          if (v31 == 1)
          {
            do
            {
              v73 = HIDWORD(v31) - 1;
              v74 = v25;
              do
              {
                *v74 = 0;
                v74 = (v74 + v63 * 2);
                --v73;
              }

              while (v73);
              *v74 = 0;
              v25 = (v25 + v62);
              ++v61;
            }

            while (v61 != v59);
            goto LABEL_123;
          }

          v64 = 2 * v60;
          v65 = &v25[v63];
          do
          {
            v66 = 0;
            v67 = v65;
            v68 = v25;
            do
            {
              v69 = v67;
              v70 = v68;
              v71 = v31 - 1;
              do
              {
                *v70 = 0;
                v70 = (v70 + v64);
                --v71;
              }

              while (v71);
              *v70 = 0;
              v68 = (v68 + v63 * 2);
              ++v66;
              v67 = &v69[v63];
            }

            while (v66 != v57);
            v72 = v31 - 1;
            do
            {
              *v69 = 0;
              v69 = (v69 + v64);
              --v72;
            }

            while (v72);
            *v69 = 0;
            v25 = (v25 + v62);
            ++v61;
            v65 = (v65 + v62);
          }

          while (v61 != v59);
        }
      }

      if (HIDWORD(v31) == 1)
      {
        goto LABEL_131;
      }

      v60 = v11 & 0x7FFFFFFF;
LABEL_123:
      if (v31 != 1)
      {
        v93 = 0;
        v94 = 2 * v58;
        do
        {
          v95 = v25;
          v96 = v31 - 1;
          do
          {
            *v95 = 0;
            v95 += v60;
            --v96;
          }

          while (v96);
          *v95 = 0;
          v25 = (v25 + v94);
          ++v93;
        }

        while (v93 != v57);
        goto LABEL_133;
      }

      v97 = 2 * v58;
      do
      {
        *v25 = 0;
        v25 = (v25 + v97);
        --v57;
      }

      while (v57);
LABEL_131:
      if (v31 == 1)
      {
LABEL_134:
        *v25 = 0;
        return a1;
      }

      v60 = v11 & 0x7FFFFFFF;
      do
      {
LABEL_133:
        *v25 = 0;
        v25 += v60;
        --v56;
      }

      while (v56);
      goto LABEL_134;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v100 = v11;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v37 = qword_27E396178, v36 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_66:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v11 = v100;
        goto LABEL_67;
      }
    }

    else
    {
      v37 = qword_27E396178;
      v36 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_137;
      }
    }

    do
    {
      (*v37)(*(v37 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v37 += 16;
    }

    while (v37 != v36);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_66;
  }

  if (v33 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    v99 = v11;
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v35 = qword_27E396178, v34 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_47:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v11 = v99;
        goto LABEL_48;
      }
    }

    else
    {
      v35 = qword_27E396178;
      v34 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_137;
      }
    }

    do
    {
      (*v35)(*(v35 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v35 += 16;
    }

    while (v35 != v34);
    if (byte_27E3961A0)
    {
      goto LABEL_47;
    }

LABEL_137:
    abort();
  }

LABEL_48:
  if (v32 && HIDWORD(v31) && v31)
  {
    v38 = v31 - 1;
    v39 = HIDWORD(v31) - 1;
    v40 = HIDWORD(v11) & 0x7FFFFFFF;
    v41 = v32 - 1;
    if (v32 != 1)
    {
      v42 = v11 & 0x7FFFFFFF;
      if (HIDWORD(v31) == 1)
      {
        v75 = *a5;
        if (v31 == 1)
        {
          do
          {
            *v25 = v75;
            v25 += v27;
            --v41;
          }

          while (v41);
        }

        else
        {
          v76 = 0;
          v77 = 2 * v42;
          do
          {
            v78 = v25;
            v79 = v31 - 1;
            do
            {
              *v78 = v75;
              v78 = (v78 + v77);
              --v79;
            }

            while (v79);
            v75 = *a5;
            *v78 = *a5;
            v25 += v27;
            ++v76;
          }

          while (v76 != v41);
        }
      }

      else
      {
        if (v31 == 1)
        {
          v80 = 0;
          v81 = *a5;
          do
          {
            v82 = HIDWORD(v31) - 1;
            v83 = v25;
            do
            {
              *v83 = v81;
              v83 += v40;
              --v82;
            }

            while (v82);
            v81 = *a5;
            *v83 = *a5;
            v25 += v27;
            ++v80;
          }

          while (v80 != v41);
          goto LABEL_106;
        }

        v43 = 0;
        v44 = 2 * v27;
        v45 = v40;
        v46 = 2 * v42;
        v47 = &v25[v40];
        do
        {
          v48 = 0;
          v49 = *a5;
          v50 = v47;
          v51 = v25;
          do
          {
            v52 = v50;
            v53 = v51;
            v54 = v31 - 1;
            do
            {
              *v53 = v49;
              v53 = (v53 + v46);
              --v54;
            }

            while (v54);
            v49 = *a5;
            *v53 = *a5;
            v51 = (v51 + v45 * 2);
            ++v48;
            v50 = &v52[v45];
          }

          while (v48 != v39);
          v55 = v31 - 1;
          do
          {
            *v52 = v49;
            v52 = (v52 + v46);
            --v55;
          }

          while (v55);
          *v52 = v49;
          v25 = (v25 + v44);
          ++v43;
          v47 = (v47 + v44);
        }

        while (v43 != v41);
      }
    }

    v81 = *a5;
    if (HIDWORD(v31) == 1)
    {
      goto LABEL_115;
    }

    v42 = v11 & 0x7FFFFFFF;
LABEL_106:
    if (v31 != 1)
    {
      v88 = 0;
      v89 = 2 * v40;
      do
      {
        v90 = v25;
        v91 = v31 - 1;
        do
        {
          *v90 = v81;
          v90 += v42;
          --v91;
        }

        while (v91);
        v81 = *a5;
        *v90 = *a5;
        v25 = (v25 + v89);
        ++v88;
      }

      while (v88 != v39);
      goto LABEL_117;
    }

    v92 = 2 * v40;
    do
    {
      *v25 = v81;
      v25 = (v25 + v92);
      --v39;
    }

    while (v39);
    v81 = *a5;
LABEL_115:
    if (v31 == 1)
    {
LABEL_119:
      *v25 = v81;
      return a1;
    }

    v42 = v11 & 0x7FFFFFFF;
    do
    {
LABEL_117:
      *v25 = v81;
      v25 += v42;
      --v38;
    }

    while (v38);
    v81 = *a5;
    goto LABEL_119;
  }

  return a1;
}

uint64_t sub_23F26D800(uint64_t a1, unsigned int *a2, uint64_t *a3, char a4, __int32 *a5, char a6, uint64_t a7, int32x2_t a8)
{
  if (a4)
  {
    v12 = *a3;
    v13 = *(a3 + 2);
    v14 = a2[2];
  }

  else
  {
    v15 = *a2;
    v16 = a2[1];
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 * v15;
    v14 = a2[2];
    if (v14)
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    v12 = (*a2 != 0) | (v17 << 32);
  }

  v19 = v13 * v14;
  v20 = 4 * v19;
  v21 = (a7 - 1) | ((a7 - 1) >> 1) | (((a7 - 1) | ((a7 - 1) >> 1)) >> 2);
  v22 = v21 | (v21 >> 4) | ((v21 | (v21 >> 4)) >> 8);
  v23 = v22 | (v22 >> 16) | ((v22 | (v22 >> 16)) >> 32);
  if (v23 + 1 > 8)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 8;
  }

  *a1 = v20;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  if (v19)
  {
    memptr = 0;
    v25 = malloc_type_posix_memalign(&memptr, v24, 4 * v19, 0x63222AC6uLL);
    if (v25)
    {
      sub_23F2BAF78(v25, *(a1 + 16), v20);
    }

    v26 = memptr;
    *(a1 + 8) = memptr;
  }

  else
  {
    v26 = 0;
  }

  v27 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 24) = v27;
  *(a1 + 36) = (4 * v12) & 0xFFFFFFFCFFFFFFFCLL;
  *(a1 + 44) = 4 * v13;
  if (!v26 || (a6 & 1) == 0)
  {
    return a1;
  }

  v28 = v13 & 0x3FFFFFFF;
  if (*(a1 + 24))
  {
    v29 = *(a1 + 28) == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (*(a1 + 32))
  {
    v31 = v30;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(a1 + 24);
  }

  if (v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(a1 + 32);
  }

  v34 = (v33 * v28);
  if (v34 == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v35 = qword_27E396178, v36 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_42:
        *&a8 = qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_43;
      }
    }

    else
    {
      v35 = qword_27E396178;
      v36 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_181;
      }
    }

    do
    {
      (*v35)(*(v35 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v35 += 16;
    }

    while (v35 != v36);
    v34 = (v33 * v28);
    if (byte_27E3961A0)
    {
      goto LABEL_42;
    }

LABEL_181:
    abort();
  }

LABEL_43:
  v37 = v12 & 0x3FFFFFFF3FFFFFFFLL;
  v38 = v12 & 0x3FFFFFFF;
  if (v38 != 1)
  {
    if (!v33 || !HIDWORD(v32) || !v32)
    {
      return a1;
    }

    v43 = v32 - 1;
    v44 = HIDWORD(v32) - 1;
    v45 = HIDWORD(v37);
    v46 = v33 - 1;
    if (v33 != 1)
    {
      v47 = *a5;
      if (HIDWORD(v32) == 1)
      {
        if (v32 == 1)
        {
          do
          {
            v26->i32[0] = v47;
            v26 = (v26 + 4 * v28);
            --v46;
          }

          while (v46);
          goto LABEL_171;
        }

        v113 = 0;
        do
        {
          v114 = v26;
          v115 = v32 - 1;
          do
          {
            *v114 = v47;
            v114 += v38;
            --v115;
          }

          while (v115);
          v47 = *a5;
          *v114 = *a5;
          v26 = (v26 + 4 * v28);
          ++v113;
        }

        while (v113 != v46);
        goto LABEL_152;
      }

      if (v32 == 1)
      {
        v123 = 0;
        do
        {
          v124 = v26;
          v125 = HIDWORD(v32) - 1;
          do
          {
            *v124 = v47;
            v124 += v45;
            --v125;
          }

          while (v125);
          v47 = *a5;
          *v124 = *a5;
          v26 = (v26 + 4 * v28);
          ++v123;
        }

        while (v123 != v46);
        goto LABEL_168;
      }

      v48 = 0;
      v49 = 4 * v28;
      v50 = v45;
      v51 = 4 * v38;
      v52 = &v26->i32[v45];
      do
      {
        v53 = 0;
        v54 = v52;
        v55 = v26;
        do
        {
          v56 = v54;
          v57 = v55;
          v58 = v32 - 1;
          do
          {
            *v57 = v47;
            v57 = (v57 + v51);
            --v58;
          }

          while (v58);
          v47 = *a5;
          *v57 = *a5;
          v55 = (v55 + v50 * 4);
          ++v53;
          v54 = &v56[v50];
        }

        while (v53 != v44);
        v59 = v32 - 1;
        do
        {
          *v56 = v47;
          v56 = (v56 + v51);
          --v59;
        }

        while (v59);
        v47 = *a5;
        *v56 = *a5;
        v26 = (v26 + v49);
        ++v48;
        v52 = (v52 + v49);
      }

      while (v48 != v46);
    }

    v47 = *a5;
    if (HIDWORD(v32) == 1)
    {
      if (v32 == 1)
      {
LABEL_172:
        v26->i32[0] = v47;
        return a1;
      }

      goto LABEL_152;
    }

    if (v32 != 1)
    {
      v60 = 0;
      v61 = 4 * v45;
      do
      {
        v62 = v26;
        v63 = v32 - 1;
        do
        {
          *v62 = v47;
          v62 += v38;
          --v63;
        }

        while (v63);
        v47 = *a5;
        *v62 = *a5;
        v26 = (v26 + v61);
        ++v60;
      }

      while (v60 != v44);
LABEL_152:
      v116 = 4 * v38;
      do
      {
        v26->i32[0] = v47;
        v26 = (v26 + v116);
        --v43;
      }

      while (v43);
LABEL_171:
      v47 = *a5;
      goto LABEL_172;
    }

    do
    {
LABEL_168:
      v26->i32[0] = v47;
      v26 = (v26 + 4 * v45);
      --v44;
    }

    while (v44);
    goto LABEL_171;
  }

  v39 = HIDWORD(v37);
  if (HIDWORD(v37) == v32)
  {
    v40 = (HIDWORD(v32) * v32);
    if (v28 == v40)
    {
      if (!v34)
      {
        return a1;
      }

      a8.i32[0] = *a5;
      if (v34 < 8)
      {
        v41 = v34;
        v42 = v26;
LABEL_161:
        v122 = v41 + 1;
        do
        {
          v42->i32[0] = a8.i32[0];
          v42 = (v42 + 4);
          --v122;
        }

        while (v122 > 1);
        return a1;
      }

      v41 = v34 & 7;
      v42 = (v26 + 4 * (v34 & 0xFFFFFFF8));
      v119 = vdupq_lane_s32(a8, 0);
      v120 = v26 + 1;
      v121 = v34 & 0xFFFFFFF8;
      do
      {
        v120[-1] = v119;
        *v120 = v119;
        v120 += 2;
        v121 -= 8;
      }

      while (v121);
      if ((v34 & 0xFFFFFFF8) != v34)
      {
        goto LABEL_161;
      }
    }

    else if (v33 && v39 && HIDWORD(v32))
    {
      if (v33 != 1)
      {
        if (!v40)
        {
          return a1;
        }

        v101 = 0;
        v102 = v26 + 1;
        do
        {
          a8.i32[0] = *a5;
          v103 = (HIDWORD(v32) * v32);
          v104 = v26;
          if (v40 < 8)
          {
            goto LABEL_136;
          }

          v104 = (v26 + 4 * (v40 & 0xFFFFFFF8));
          v105 = vdupq_lane_s32(a8, 0);
          v106 = v40 & 0xFFFFFFF8;
          v107 = v102;
          do
          {
            v107[-1] = v105;
            *v107 = v105;
            v107 += 2;
            v106 -= 8;
          }

          while (v106);
          v103 = (BYTE4(v32) * v32) & 7;
          if ((v40 & 0xFFFFFFF8) != v40)
          {
LABEL_136:
            v108 = v103 + 1;
            do
            {
              v104->i32[0] = a8.i32[0];
              v104 = (v104 + 4);
              --v108;
            }

            while (v108 > 1);
          }

          v26 = (v26 + 4 * v28);
          ++v101;
          v102 = (v102 + 4 * v28);
        }

        while (v101 != v33 - 1);
      }

      if (!v40)
      {
        return a1;
      }

      a8.i32[0] = *a5;
      if (v40 >= 8)
      {
        v117 = (BYTE4(v32) * v32) & 7;
        v118 = (v26 + 4 * (v40 & 0xFFFFFFF8));
        v127 = vdupq_lane_s32(a8, 0);
        v128 = v26 + 1;
        v129 = v40 & 0xFFFFFFF8;
        do
        {
          v128[-1] = v127;
          *v128 = v127;
          v128 += 2;
          v129 -= 8;
        }

        while (v129);
        if ((v40 & 0xFFFFFFF8) == v40)
        {
          return a1;
        }
      }

      else
      {
        v117 = (HIDWORD(v32) * v32);
        v118 = v26;
      }

      v130 = v117 + 1;
      do
      {
        v118->i32[0] = a8.i32[0];
        v118 = (v118 + 4);
        --v130;
      }

      while (v130 > 1);
    }
  }

  else if (v33 && HIDWORD(v32) && v32)
  {
    v64 = v32;
    v65 = HIDWORD(v32) - 1;
    v66 = 4 * v39;
    v67 = v33 - 1;
    if (v33 != 1)
    {
      v68 = 4 * (v32 - (v32 & 7));
      v69 = 4 * v28;
      v70 = 0;
      v71 = v26 + 1;
      if (HIDWORD(v32) == 1)
      {
        do
        {
          a8.i32[0] = *a5;
          v85 = v32;
          v86 = v26;
          if (v32 < 8uLL)
          {
            goto LABEL_184;
          }

          v86 = (v26 + v68);
          v87 = vdupq_lane_s32(a8, 0);
          v88 = v32 - (v32 & 7);
          v89 = v71;
          do
          {
            v89[-1] = v87;
            *v89 = v87;
            v89 += 2;
            v88 -= 8;
          }

          while (v88);
          v85 = v32 & 7;
          if ((v32 & 7) != 0)
          {
LABEL_184:
            v86->i32[0] = a8.i32[0];
            if (v85 >= 2)
            {
              v86->i32[1] = a8.i32[0];
              if (v85 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v86->i32[2] = a8.i32[0];
                if ((v85 & 6) != 2)
                {
                  v86->i32[3] = a8.i32[0];
                  if (v85 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v86[1].i32[0] = a8.i32[0];
                    if ((v85 & 6) != 4)
                    {
                      v86[1].i32[1] = a8.i32[0];
                      if (v85 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v86[1].i32[2] = a8.i32[0];
                      }
                    }
                  }
                }
              }
            }
          }

          v26 = (v26 + 4 * v28);
          ++v70;
          v71 = (v71 + v69);
        }

        while (v70 != v67);
      }

      else
      {
        do
        {
          v72 = 0;
          v73 = v26;
          v74 = v71;
          v75 = v26;
          do
          {
            a8.i32[0] = *a5;
            v76 = v32;
            v77 = v75;
            if (v32 < 8uLL)
            {
              goto LABEL_185;
            }

            v77 = (v75 + v68);
            v78 = vdupq_lane_s32(a8, 0);
            v79 = v32 - (v32 & 7);
            v80 = v74;
            do
            {
              v80[-1] = v78;
              *v80 = v78;
              v80 += 2;
              v79 -= 8;
            }

            while (v79);
            v76 = v32 & 7;
            if ((v32 & 7) != 0)
            {
LABEL_185:
              v77->i32[0] = a8.i32[0];
              if (v76 >= 2)
              {
                v77->i32[1] = a8.i32[0];
                if (v76 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v77->i32[2] = a8.i32[0];
                  if ((v76 & 6) != 2)
                  {
                    v77->i32[3] = a8.i32[0];
                    if (v76 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v77[1].i32[0] = a8.i32[0];
                      if ((v76 & 6) != 4)
                      {
                        v77[1].i32[1] = a8.i32[0];
                        if (v76 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v77[1].i32[2] = a8.i32[0];
                        }
                      }
                    }
                  }
                }
              }
            }

            v75 = (v75 + 4 * v39);
            ++v72;
            v74 = (v74 + v66);
            v73 = (v73 + v66);
          }

          while (v72 != v65);
          a8.i32[0] = *a5;
          v81 = v32;
          if (v32 < 8uLL)
          {
            goto LABEL_186;
          }

          v82 = 0;
          v75 = (v75 + v68);
          v83 = vdupq_lane_s32(a8, 0);
          v84 = v32 - (v32 & 7);
          do
          {
            v73[v82] = v83;
            v74[v82] = v83;
            v82 += 2;
            v84 -= 8;
          }

          while (v84);
          v81 = v32 & 7;
          if ((v32 & 7) != 0)
          {
LABEL_186:
            v75->i32[0] = a8.i32[0];
            if (v81 >= 2)
            {
              v75->i32[1] = a8.i32[0];
              if (v81 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v75->i32[2] = a8.i32[0];
                if ((v81 & 6) != 2)
                {
                  v75->i32[3] = a8.i32[0];
                  if (v81 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v75[1].i32[0] = a8.i32[0];
                    if ((v81 & 6) != 4)
                    {
                      v75[1].i32[1] = a8.i32[0];
                      if (v81 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        v75[1].i32[2] = a8.i32[0];
                      }
                    }
                  }
                }
              }
            }
          }

          v26 = (v26 + v69);
          ++v70;
          v71 = (v71 + v69);
        }

        while (v70 != v67);
      }
    }

    if (HIDWORD(v32) != 1)
    {
      v90 = 0;
      v91 = v32 - (v32 != 0) + 1;
      v92 = v26 + 1;
      do
      {
        a8.i32[0] = *a5;
        v93 = v32;
        v94 = v26;
        if (v91 < 8)
        {
          goto LABEL_120;
        }

        v94 = (v26 + 4 * (v91 & 0xFFFFFFFFFFFFFFF8));
        v95 = vdupq_lane_s32(a8, 0);
        v96 = v91 & 0xFFFFFFFFFFFFFFF8;
        v97 = v92;
        do
        {
          v97[-1] = v95;
          *v97 = v95;
          v97 += 2;
          v96 -= 8;
        }

        while (v96);
        v93 = v32 - (v91 & 0xFFFFFFFFFFFFFFF8);
        if (v91 != (v91 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_120:
          v98 = v93 + 1;
          do
          {
            v94->i32[0] = a8.i32[0];
            v94 = (v94 + 4);
            --v98;
          }

          while (v98 > 1);
        }

        v26 = (v26 + 4 * v39);
        ++v90;
        v92 = (v92 + v66);
      }

      while (v90 != v65);
    }

    a8.i32[0] = *a5;
    v99 = v32 - (v32 != 0) + 1;
    if (v99 >= 8)
    {
      v64 = v32 - (v99 & 0xFFFFFFFFFFFFFFF8);
      v100 = (v26 + 4 * (v99 & 0xFFFFFFFFFFFFFFF8));
      v109 = vdupq_lane_s32(a8, 0);
      v110 = v26 + 1;
      v111 = v99 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v110[-1] = v109;
        *v110 = v109;
        v110 += 2;
        v111 -= 8;
      }

      while (v111);
      if (v99 == (v99 & 0xFFFFFFFFFFFFFFF8))
      {
        return a1;
      }
    }

    else
    {
      v100 = v26;
    }

    v112 = v64 + 1;
    do
    {
      v100->i32[0] = a8.i32[0];
      v100 = (v100 + 4);
      --v112;
    }

    while (v112 > 1);
  }

  return a1;
}

void sub_23F26E154(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    free(v3);
  }

  *(v1 + 8) = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F26E174(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v46 = *a2;
    v47 = *(a2 + 1);
    v48 = *(a2 + 2);
    v49 = *(a2 + 6);
    sub_23F24DC18(v50, (a2 + 14));
    *a1 = v46;
    *(a1 + 16) = v47;
    *(a1 + 32) = v48;
    *(a1 + 80) = v51;
    *(a1 + 96) = v52;
    v4 = v50[0];
    *(a1 + 48) = v49;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v50[2];
    *(a1 + 64) = v50[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = a2[4];
    v13 = *(a1 + 16);
    v14 = *(a2 + 8);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (v11)
      {
        v18 = 0;
        v19 = v3 + 2;
        v20 = v14 + 2;
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v11;
          do
          {
            *(v22 - 2) = *(v21 - 2);
            *(v22 - 1) = *(v21 - 1);
            *v22 = *v21;
            v22 += v13;
            v21 += v12;
            --v23;
          }

          while (v23);
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v14 += v17;
          v3 += v16;
          ++v18;
          v19 += v16;
          v20 += v17;
        }

        while (v18 != v15);
        goto LABEL_24;
      }

      do
      {
        *v3 = *v14;
        v3[1] = v14[1];
        v3[2] = v14[2];
        v14 += v17;
        v3 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v11)
    {
LABEL_25:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      return a1;
    }

    do
    {
LABEL_24:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      v14 += v12;
      v3 += v13;
      --v11;
    }

    while (v11);
    goto LABEL_25;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 != v25 || v24 != v26)
  {
    if (!v26)
    {
      return a1;
    }

    v31 = a2[1];
    if (!v31)
    {
      return a1;
    }

    v32 = a2[2];
    if (!v32)
    {
      return a1;
    }

    v33 = v31 - 1;
    v34 = *(a2 + 8);
    v35 = v32 - 1;
    if (v32 != 1)
    {
      v36 = *(a1 + 20);
      v45 = a2[5];
      if (v31 == 1)
      {
        do
        {
          memmove(v3, v34, v26);
          v34 += v45;
          v3 += v36;
          --v35;
        }

        while (v35);
      }

      else
      {
        v37 = 0;
        v43 = v32 - 1;
        v44 = v31 - 1;
        v42 = *(a1 + 20);
        do
        {
          v38 = v34;
          v39 = v3;
          do
          {
            memmove(v39, v38, v26);
            v38 += v24;
            v39 += v25;
            --v33;
          }

          while (v33);
          memmove(v39, v38, v26);
          v34 += v45;
          v3 += v42;
          ++v37;
          v33 = v44;
        }

        while (v37 != v43);
      }
    }

    for (; v33; --v33)
    {
      memmove(v3, v34, v26);
      v34 += v24;
      v3 += v25;
    }

LABEL_53:
    memmove(v3, v34, v26);
    return a1;
  }

  v27 = a2[5];
  v28 = *(a1 + 20);
  v29 = a2[1];
  v26 = v29 * v24;
  if (v27 != v28 || v27 != v26)
  {
    if (!v24)
    {
      return a1;
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[2];
    if (!v40)
    {
      return a1;
    }

    v34 = *(a2 + 8);
    v41 = v40 - 1;
    if (v40 != 1)
    {
      if (!v26)
      {
        return a1;
      }

      do
      {
        memmove(v3, v34, v26);
        v34 += v27;
        v3 += v28;
        --v41;
      }

      while (v41);
    }

    if (!v26)
    {
      return a1;
    }

    goto LABEL_53;
  }

  v30 = a2[2] * v27;
  if (v30)
  {
    memmove(*(a1 + 64), *(a2 + 8), v30);
  }

  return a1;
}

uint64_t sub_23F26E51C(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_23F24E2E0(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 2 * a2[4];
    v14 = 2 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 2 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 2 * v27;
            v49 = 2 * v28;
            do
            {
              memmove(v3, v46, 2 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 2 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 2 * v26;
        v37 = 2 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 2 * v40;
            v51 = 2 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 2 * v24;
            v54 = 2 * v39;
            v55 = 2 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 2 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_23F26E920(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v200 = *a2;
    v201 = *(a2 + 1);
    v202 = *(a2 + 2);
    v203 = *(a2 + 6);
    sub_23F24EBE4(v204, (a2 + 14));
    *a1 = v200;
    *(a1 + 16) = v201;
    *(a1 + 32) = v202;
    *(a1 + 48) = v203;
    *(a1 + 80) = v205;
    *(a1 + 96) = v206;
    v4 = *(a1 + 64);
    if (!v4)
    {
      *(a1 + 56) = v204[0];
      goto LABEL_22;
    }

    if (*(a1 + 84))
    {
      v5 = *(a1 + 80) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 88);
    if (v5)
    {
      v6 = 0;
    }

    if (v6 * (*(a1 + 100) >> 1) != -1)
    {
      *(a1 + 56) = v204[0];
LABEL_21:
      free(v4);
      goto LABEL_22;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_20;
      }

      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_214;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
LABEL_20:
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v4 = *(a1 + 64);
      *(a1 + 56) = v204[0];
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_22:
      v9 = v204[2];
      *(a1 + 64) = v204[1];
      *(a1 + 72) = v9;
      return a1;
    }

LABEL_214:
    abort();
  }

  if (a2[3] == 1 && *(a1 + 12) == 1)
  {
    v27 = a2[4];
    v28 = *(a1 + 16);
    v29 = *a2;
    if (v27 == v28 && v27 == v29)
    {
      v30 = a2[5];
      v31 = *(a1 + 20);
      v32 = a2[1];
      v33 = v32 * v27;
      if (v30 == v31 && v30 == v33)
      {
        v34 = a2[2] * v30;
        if (!v34)
        {
          return a1;
        }

        v35 = *(a2 + 8);
        v36 = (v34 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v36 < 3)
        {
          v37 = *(a2 + 8);
          goto LABEL_209;
        }

        v37 = *(a2 + 8);
        if (v3 - v35 < 0x20)
        {
          goto LABEL_209;
        }

        v38 = v36 + 1;
        if (v36 >= 0xF)
        {
          v39 = v38 & 0xFFFFFFFFFFFFFFF0;
          v166 = (v35 + 16);
          v167 = v3 + 8;
          v168 = v38 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v169 = *v166;
            *(v167 - 1) = *(v166 - 1);
            *v167 = v169;
            v166 += 2;
            v167 += 2;
            v168 -= 16;
          }

          while (v168);
          if (v38 == v39)
          {
            return a1;
          }

          if ((v38 & 0xC) == 0)
          {
            v189 = 2 * v39;
            v37 = (v35 + v189);
            v3 = (v3 + v189);
            goto LABEL_209;
          }
        }

        else
        {
          v39 = 0;
        }

        v170 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        v171 = &v3[v170];
        v37 = (v35 + v170 * 2);
        v172 = (v35 + 2 * v39);
        v173 = &v3[v39];
        v174 = v39 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v175 = *v172++;
          *v173++ = v175;
          v174 += 4;
        }

        while (v174);
        v3 = v171;
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_209:
          v190 = *v37++;
          *v3++ = v190;
        }

        while (v37 != (v35 + 2 * v34));
        return a1;
      }

      if (!v27)
      {
        return a1;
      }

      if (!v32)
      {
        return a1;
      }

      v86 = a2[2];
      if (!v86)
      {
        return a1;
      }

      v87 = *(a2 + 8);
      if (v86 == 1)
      {
LABEL_96:
        if (!v33)
        {
          return a1;
        }

        v88 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v88 < 3 || v3 - v87 < 0x20)
        {
          v176 = v3;
          v177 = v87;
          goto LABEL_212;
        }

        v89 = v88 + 1;
        if (v88 >= 0xF)
        {
          v90 = v89 & 0xFFFFFFFFFFFFFFF0;
          v178 = (v87 + 16);
          v179 = v3 + 8;
          v180 = v89 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v181 = *v178;
            *(v179 - 1) = *(v178 - 1);
            *v179 = v181;
            v178 += 2;
            v179 += 2;
            v180 -= 16;
          }

          while (v180);
          if (v89 == v90)
          {
            return a1;
          }

          if ((v89 & 0xC) == 0)
          {
            v191 = v90;
            v177 = (v87 + v191 * 2);
            v176 = &v3[v191];
            goto LABEL_212;
          }
        }

        else
        {
          v90 = 0;
        }

        v182 = v89 & 0xFFFFFFFFFFFFFFFCLL;
        v176 = &v3[v182];
        v177 = (v87 + v182 * 2);
        v183 = (v87 + 2 * v90);
        v184 = &v3[v90];
        v185 = v90 - (v89 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v186 = *v183++;
          *v184++ = v186;
          v185 += 4;
        }

        while (v185);
        if (v89 == (v89 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_212:
          v192 = *v177++;
          *v176++ = v192;
        }

        while (v177 != (v87 + 2 * v33));
        return a1;
      }

      if (!v33)
      {
        return a1;
      }

      v92 = 0;
      v93 = v86 - 2;
      v94 = &v3[v33 + v31 * (v86 - 2)];
      v95 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v96 = v95 + 1;
      v97 = v3 >= v87 + 2 * (v33 + v30 * v93) || v87 >= v94;
      v98 = v96 & 0xFFFFFFFFFFFFFFF0;
      v99 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v100 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v101 = !v97;
      v102 = 2 * v30;
      v103 = 2 * v31;
      while (1)
      {
        v104 = v3;
        v105 = v87;
        if (!((v95 < 3) | v101 & 1))
        {
          if (v95 < 0xF)
          {
            v106 = 0;
LABEL_122:
            v104 = &v3[v100];
            v105 = (v87 + v100 * 2);
            v111 = v106;
            v112 = v106 - v99;
            do
            {
              *&v3[v111] = *(v87 + v111 * 2);
              v111 += 4;
              v112 += 4;
            }

            while (v112);
            if (v96 == v99)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          v107 = 0;
          v108 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v109 = &v3[v107];
            v110 = *(v87 + v107 * 2 + 16);
            *v109 = *(v87 + v107 * 2);
            v109[1] = v110;
            v107 += 16;
            v108 -= 16;
          }

          while (v108);
          if (v96 == (v96 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_114;
          }

          v106 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) != 0)
          {
            goto LABEL_122;
          }

          v105 = (v87 + v98 * 2);
          v104 = &v3[v98];
        }

        do
        {
LABEL_127:
          v113 = *v105++;
          *v104++ = v113;
        }

        while (v105 != (v87 + 2 * v33));
LABEL_114:
        v87 += v102;
        v3 = (v3 + v103);
        v5 = v92++ == v93;
        if (v5)
        {
          goto LABEL_96;
        }
      }
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[1];
    if (!v40)
    {
      return a1;
    }

    v41 = a2[2];
    if (!v41)
    {
      return a1;
    }

    v42 = v40 - 1;
    v43 = *(a2 + 8);
    v44 = 2 * v28;
    v45 = v41 - 1;
    v194 = *(a1 + 16);
    v195 = a2[4];
    v193 = a2[1];
    if (v41 != 1)
    {
      v46 = *(a1 + 20);
      v47 = a2[5];
      if (v40 != 1)
      {
        v48 = 0;
        v49 = 2 * v27;
        v199 = &v3[v44 / 2] - v43 + -2 * v27;
        v198 = 2 * (v46 - v47);
        v196 = v44 - 2 * v27;
        v50 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v51 = v50 + 1;
        v52 = 2 * v46;
        v53 = 2 * v47;
        v197 = &v3[v29 + v28 * (v40 - 2)];
        v54 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
        v55 = v54;
        v56 = (v50 + 1) & 0xC;
        v57 = (v50 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v58 = v57;
        v59 = v43 + 2 * (v29 + v27 * (v40 - 2));
        while (1)
        {
          v60 = 0;
          v62 = v3 < v59 + v53 * v48 && v43 < v197 + v52 * v48;
          v63 = v3;
          v64 = v43;
          do
          {
            v65 = v60;
            v66 = v63;
            v67 = v64;
            if (v50 < 3 || v62)
            {
              goto LABEL_74;
            }

            if (v50 >= 0xF)
            {
              v69 = 0;
              v70 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v71 = &v63[v69];
                v72 = *&v64[v69 + 8];
                *v71 = *&v64[v69];
                v71[1] = v72;
                v69 += 16;
                v70 -= 16;
              }

              while (v70);
              if (v51 == v54)
              {
                goto LABEL_61;
              }

              v68 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v67 = &v64[v55];
                v66 = &v63[v55];
                do
                {
LABEL_74:
                  v75 = *v67++;
                  *v66++ = v75;
                }

                while (v67 != &v64[v29]);
                goto LABEL_61;
              }
            }

            else
            {
              v68 = 0;
            }

            v66 = &v63[v58];
            v67 = &v64[v58];
            v73 = v68;
            v74 = v68 - v57;
            do
            {
              *&v63[v73] = *&v64[v73];
              v73 += 4;
              v74 += 4;
            }

            while (v74);
            if (v51 != v57)
            {
              goto LABEL_74;
            }

LABEL_61:
            v64 = (v64 + v49);
            v63 = (v63 + v44);
            v60 = v65 + 1;
          }

          while (v65 + 1 != v42);
          if (v50 < 3 || (v199 + v198 * v48 + v196 * v65) < 0x20)
          {
            v76 = v63;
            v77 = v64;
            goto LABEL_79;
          }

          if (v50 >= 0xF)
          {
            v80 = 0;
            v81 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v82 = &v63[v80];
              v83 = *&v64[v80 + 8];
              *v82 = *&v64[v80];
              v82[1] = v83;
              v80 += 16;
              v81 -= 16;
            }

            while (v81);
            if (v51 != v54)
            {
              v79 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v77 = &v64[v55];
                v76 = &v63[v55];
                goto LABEL_79;
              }

              goto LABEL_87;
            }
          }

          else
          {
            v79 = 0;
LABEL_87:
            v76 = &v63[v58];
            v77 = &v64[v58];
            v84 = v79;
            v85 = v79 - v57;
            do
            {
              *&v63[v84] = *&v64[v84];
              v84 += 4;
              v85 += 4;
            }

            while (v85);
            if (v51 != v57)
            {
              do
              {
LABEL_79:
                v78 = *v77++;
                *v76++ = v78;
              }

              while (v77 != &v64[v29]);
            }
          }

          v43 += v53;
          v3 = (v3 + v52);
          if (++v48 == v45)
          {
            goto LABEL_151;
          }
        }
      }

      v114 = 0;
      v115 = v41 - 2;
      v116 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v117 = v116 + 1;
      v118 = v3 >= v43 + 2 * (v29 + v47 * v115) || v43 >= &v3[v29 + v46 * v115];
      v119 = v117 & 0xFFFFFFFFFFFFFFF0;
      v120 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v121 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v122 = !v118;
      v123 = 2 * v47;
      v124 = 2 * v46;
      do
      {
        v125 = v3;
        v126 = v43;
        if (!((v116 < 3) | v122 & 1))
        {
          if (v116 < 0xF)
          {
            v127 = 0;
LABEL_144:
            v125 = &v3[v121];
            v126 = (v43 + v121 * 2);
            v132 = v127;
            v133 = v127 - v120;
            do
            {
              *&v3[v132] = *(v43 + v132 * 2);
              v132 += 4;
              v133 += 4;
            }

            while (v133);
            if (v117 == v120)
            {
              goto LABEL_136;
            }

            goto LABEL_149;
          }

          v128 = 0;
          v129 = v117 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v130 = &v3[v128];
            v131 = *(v43 + v128 * 2 + 16);
            *v130 = *(v43 + v128 * 2);
            v130[1] = v131;
            v128 += 16;
            v129 -= 16;
          }

          while (v129);
          if (v117 == (v117 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_136;
          }

          v127 = v117 & 0xFFFFFFFFFFFFFFF0;
          if ((v117 & 0xC) != 0)
          {
            goto LABEL_144;
          }

          v126 = (v43 + v119 * 2);
          v125 = &v3[v119];
        }

        do
        {
LABEL_149:
          v134 = *v126++;
          *v125++ = v134;
        }

        while (v126 != (v43 + 2 * v29));
LABEL_136:
        v43 += v123;
        v3 = (v3 + v124);
        ++v114;
      }

      while (v114 != v45);
    }

LABEL_151:
    if (v42)
    {
      v135 = 0;
      v136 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v137 = v136 + 1;
      v139 = v3 < v43 + 2 * (v29 + v195 * (v193 - 2)) && v43 < &v3[v29 + v194 * (v193 - 2)];
      v140 = v137 & 0xFFFFFFFFFFFFFFF0;
      v141 = v137 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v142 = v3;
        v143 = v43;
        if (v136 >= 3 && !v139)
        {
          if (v136 < 0xF)
          {
            v144 = 0;
LABEL_167:
            v142 = &v3[v141];
            v143 = (v43 + v141 * 2);
            v149 = v144;
            v150 = v144 - (v137 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v3[v149] = *(v43 + v149 * 2);
              v149 += 4;
              v150 += 4;
            }

            while (v150);
            if (v137 == (v137 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_159;
            }

            goto LABEL_172;
          }

          v145 = 0;
          v146 = v137 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v147 = &v3[v145];
            v148 = *(v43 + v145 * 2 + 16);
            *v147 = *(v43 + v145 * 2);
            v147[1] = v148;
            v145 += 16;
            v146 -= 16;
          }

          while (v146);
          if (v137 == (v137 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_159;
          }

          v144 = v137 & 0xFFFFFFFFFFFFFFF0;
          if ((v137 & 0xC) != 0)
          {
            goto LABEL_167;
          }

          v143 = (v43 + v140 * 2);
          v142 = &v3[v140];
        }

        do
        {
LABEL_172:
          v151 = *v143++;
          *v142++ = v151;
        }

        while (v143 != (v43 + 2 * v29));
LABEL_159:
        v43 += 2 * v195;
        v3 = (v3 + v44);
        ++v135;
      }

      while (v135 != v42);
    }

    v152 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v152 < 3 || v3 - v43 < 0x20)
    {
      v155 = v3;
      v156 = v43;
      goto LABEL_206;
    }

    v153 = v152 + 1;
    if (v152 >= 0xF)
    {
      v154 = v153 & 0xFFFFFFFFFFFFFFF0;
      v157 = (v43 + 16);
      v158 = v3 + 8;
      v159 = v153 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v160 = *v157;
        *(v158 - 1) = *(v157 - 1);
        *v158 = v160;
        v157 += 2;
        v158 += 2;
        v159 -= 16;
      }

      while (v159);
      if (v153 == v154)
      {
        return a1;
      }

      if ((v153 & 0xC) == 0)
      {
        v187 = v154;
        v156 = (v43 + v187 * 2);
        v155 = &v3[v187];
        goto LABEL_206;
      }
    }

    else
    {
      v154 = 0;
    }

    v161 = v153 & 0xFFFFFFFFFFFFFFFCLL;
    v155 = &v3[v161];
    v156 = (v43 + v161 * 2);
    v162 = (v43 + 2 * v154);
    v163 = &v3[v154];
    v164 = v154 - (v153 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      *v163++ = v165;
      v164 += 4;
    }

    while (v164);
    if (v153 == (v153 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return a1;
    }

    do
    {
LABEL_206:
      v188 = *v156++;
      *v155++ = v188;
    }

    while (v156 != (v43 + 2 * v29));
    return a1;
  }

  if (*a2)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2[2];
      if (v13)
      {
        v14 = v12 - 1;
        v15 = *(a2 + 8);
        v16 = 2 * a2[4];
        v17 = 2 * *(a1 + 16);
        v18 = v13 - 1;
        if (v13 != 1)
        {
          v19 = *(a1 + 20);
          v20 = a2[5];
          if (v14)
          {
            v21 = 0;
            v22 = v3 + 2;
            v23 = v15 + 2;
            do
            {
              v24 = v23;
              v25 = v22;
              v26 = v14;
              do
              {
                *(v25 - 2) = *(v24 - 2);
                *(v25 - 1) = *(v24 - 1);
                *v25 = *v24;
                v25 = (v25 + v17);
                v24 = (v24 + v16);
                --v26;
              }

              while (v26);
              *(v25 - 2) = *(v24 - 2);
              *(v25 - 1) = *(v24 - 1);
              *v25 = *v24;
              v15 += v20;
              v3 += v19;
              ++v21;
              v22 += v19;
              v23 += v20;
            }

            while (v21 != v18);
            goto LABEL_104;
          }

          v91 = 2 * v19;
          do
          {
            *v3 = *v15;
            v3[1] = v15[1];
            v3[2] = v15[2];
            v15 += v20;
            v3 = (v3 + v91);
            --v18;
          }

          while (v18);
        }

        if (!v14)
        {
LABEL_105:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          return a1;
        }

        do
        {
LABEL_104:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          v15 = (v15 + v16);
          v3 = (v3 + v17);
          --v14;
        }

        while (v14);
        goto LABEL_105;
      }
    }
  }

  return a1;
}

void sub_23F26F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23F235614(va);
  _Unwind_Resume(a1);
}

void sub_23F26F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23F235614(va);
  _Unwind_Resume(a1);
}

__int16 sub_23F26F554@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a1 + 20) == 1 && *(a2 + 20) == 1;
  if (v2)
  {
    v21 = *(a1 + 24);
    v22 = *(a2 + 24);
    v23 = *(a1 + 8);
    if (v21 != v22 || v21 != v23)
    {
      v25 = *(a1 + 12);
      v26 = *(a1 + 16);
      if (v23)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v26 == 0)
      {
        return v97;
      }

      v29 = v25 - 1;
      v30 = *a1;
      v31 = *a2;
      v32 = 2 * v22;
      v33 = v26 - 1;
      v201 = *(a2 + 24);
      v202 = *(a1 + 24);
      v200 = *(a1 + 12);
      if (v26 != 1)
      {
        v34 = *(a2 + 28);
        v35 = *(a1 + 28);
        if (v25 != 1)
        {
          v36 = 0;
          v37 = 2 * v21;
          v205 = &v31[v32 / 2] - v30 - 2 * v21;
          v204 = 2 * (v34 - v35);
          v203 = v32 - 2 * v21;
          v38 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v39 = v38 + 1;
          v40 = 2 * v34;
          v41 = 2 * v35;
          v42 = &v31[v23 + v22 * (v25 - 2)];
          v43 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
          v44 = v43;
          v45 = (v38 + 1) & 0xC;
          v46 = (v38 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v47 = v46;
          v48 = &v30[v23 + v21 * (v25 - 2)];
          while (1)
          {
            v49 = 0;
            v51 = v31 < (v48 + v41 * v36) && v30 < (v42 + v40 * v36);
            v52 = v31;
            v53 = v30;
            do
            {
              v54 = v49;
              v55 = v52;
              v56 = v53;
              if (v38 < 3 || v51)
              {
                goto LABEL_54;
              }

              if (v38 >= 0xF)
              {
                v58 = 0;
                v59 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v60 = &v52[v58];
                  v61 = *&v53[v58 + 8];
                  *v60 = *&v53[v58];
                  *(v60 + 1) = v61;
                  v58 += 16;
                  v59 -= 16;
                }

                while (v59);
                if (v39 == v43)
                {
                  goto LABEL_41;
                }

                v57 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v45)
                {
                  v56 = &v53[v44];
                  v55 = &v52[v44];
                  do
                  {
LABEL_54:
                    v64 = *v56++;
                    *v55++ = v64;
                  }

                  while (v56 != &v53[v23]);
                  goto LABEL_41;
                }
              }

              else
              {
                v57 = 0;
              }

              v55 = &v52[v47];
              v56 = &v53[v47];
              v62 = v57;
              v63 = v57 - v46;
              do
              {
                *&v52[v62] = *&v53[v62];
                v62 += 4;
                v63 += 4;
              }

              while (v63);
              if (v39 != v46)
              {
                goto LABEL_54;
              }

LABEL_41:
              v53 = (v53 + v37);
              v52 = (v52 + v32);
              v49 = v54 + 1;
            }

            while (v54 + 1 != v29);
            if (v38 < 3 || (v205 + v204 * v36 + v203 * v54) < 0x20)
            {
              v65 = v52;
              v66 = v53;
              goto LABEL_59;
            }

            if (v38 >= 0xF)
            {
              v70 = 0;
              v71 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v72 = &v52[v70];
                v73 = *&v53[v70 + 8];
                *v72 = *&v53[v70];
                *(v72 + 1) = v73;
                v70 += 16;
                v71 -= 16;
              }

              while (v71);
              if (v39 != v43)
              {
                v69 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v45)
                {
                  v66 = &v53[v44];
                  v65 = &v52[v44];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v69 = 0;
LABEL_68:
              v65 = &v52[v47];
              v66 = &v53[v47];
              v74 = v69;
              v75 = v69 - v46;
              do
              {
                *&v52[v74] = *&v53[v74];
                v74 += 4;
                v75 += 4;
              }

              while (v75);
              if (v39 != v46)
              {
LABEL_59:
                v67 = &v53[v23];
                do
                {
                  v68 = *v66++;
                  *v65++ = v68;
                }

                while (v66 != v67);
              }
            }

            v30 = (v30 + v41);
            v31 = (v31 + v40);
            if (++v36 == v33)
            {
              goto LABEL_143;
            }
          }
        }

        v119 = 0;
        v120 = v26 - 2;
        v121 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v122 = v121 + 1;
        v123 = v31 >= &v30[v23 + v35 * v120] || v30 >= &v31[v23 + v34 * v120];
        v124 = v122 & 0xFFFFFFFFFFFFFFF0;
        v125 = v122 & 0xFFFFFFFFFFFFFFFCLL;
        v126 = v122 & 0xFFFFFFFFFFFFFFFCLL;
        v127 = !v123;
        v128 = 2 * v35;
        v129 = 2 * v34;
        do
        {
          v130 = v31;
          v131 = v30;
          if (!((v121 < 3) | v127 & 1))
          {
            if (v121 < 0xF)
            {
              v132 = 0;
LABEL_136:
              v130 = &v31[v126];
              v131 = &v30[v126];
              v137 = v132;
              v138 = v132 - v125;
              do
              {
                *&v31[v137] = *&v30[v137];
                v137 += 4;
                v138 += 4;
              }

              while (v138);
              if (v122 == v125)
              {
                goto LABEL_128;
              }

              goto LABEL_141;
            }

            v133 = 0;
            v134 = v122 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v135 = &v31[v133];
              v136 = *&v30[v133 + 8];
              *v135 = *&v30[v133];
              *(v135 + 1) = v136;
              v133 += 16;
              v134 -= 16;
            }

            while (v134);
            if (v122 == (v122 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_128;
            }

            v132 = v122 & 0xFFFFFFFFFFFFFFF0;
            if ((v122 & 0xC) != 0)
            {
              goto LABEL_136;
            }

            v131 = &v30[v124];
            v130 = &v31[v124];
          }

          do
          {
LABEL_141:
            v139 = *v131++;
            *v130++ = v139;
          }

          while (v131 != &v30[v23]);
LABEL_128:
          v30 = (v30 + v128);
          v31 = (v31 + v129);
          ++v119;
        }

        while (v119 != v33);
      }

LABEL_143:
      if (v29)
      {
        v140 = 0;
        v141 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v142 = v141 + 1;
        v144 = v31 < &v30[v23 + v202 * (v200 - 2)] && v30 < &v31[v23 + v201 * (v200 - 2)];
        v145 = v142 & 0xFFFFFFFFFFFFFFF0;
        v146 = v142 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v147 = v31;
          v148 = v30;
          if (v141 >= 3 && !v144)
          {
            if (v141 < 0xF)
            {
              v149 = 0;
LABEL_159:
              v147 = &v31[v146];
              v148 = &v30[v146];
              v154 = v149;
              v155 = v149 - (v142 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v31[v154] = *&v30[v154];
                v154 += 4;
                v155 += 4;
              }

              while (v155);
              if (v142 == (v142 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_151;
              }

              goto LABEL_164;
            }

            v150 = 0;
            v151 = v142 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v152 = &v31[v150];
              v153 = *&v30[v150 + 8];
              *v152 = *&v30[v150];
              *(v152 + 1) = v153;
              v150 += 16;
              v151 -= 16;
            }

            while (v151);
            if (v142 == (v142 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_151;
            }

            v149 = v142 & 0xFFFFFFFFFFFFFFF0;
            if ((v142 & 0xC) != 0)
            {
              goto LABEL_159;
            }

            v148 = &v30[v145];
            v147 = &v31[v145];
          }

          do
          {
LABEL_164:
            v156 = *v148++;
            *v147++ = v156;
          }

          while (v148 != &v30[v23]);
LABEL_151:
          v30 += v202;
          v31 = (v31 + v32);
          ++v140;
        }

        while (v140 != v29);
      }

      v157 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v157 < 3 || (v31 - v30) < 0x20)
      {
        v160 = v31;
        v161 = v30;
        goto LABEL_198;
      }

      v158 = v157 + 1;
      if (v157 >= 0xF)
      {
        v159 = v158 & 0xFFFFFFFFFFFFFFF0;
        v162 = (v30 + 8);
        v163 = v31 + 8;
        v164 = v158 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v162 - 1);
          v165 = *v162;
          *(v163 - 1) = v97;
          *v163 = v165;
          v162 += 2;
          v163 += 2;
          v164 -= 16;
        }

        while (v164);
        if (v158 == v159)
        {
          return v97;
        }

        if ((v158 & 0xC) == 0)
        {
          v192 = v159;
          v161 = &v30[v192];
          v160 = &v31[v192];
          goto LABEL_198;
        }
      }

      else
      {
        v159 = 0;
      }

      v166 = v158 & 0xFFFFFFFFFFFFFFFCLL;
      v160 = &v31[v166];
      v161 = &v30[v166];
      v167 = &v30[v159];
      v168 = &v31[v159];
      v169 = v159 - (v158 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v170 = *v167++;
        LOWORD(v97) = v170;
        *v168 = v170;
        v168 += 4;
        v169 += 4;
      }

      while (v169);
      if (v158 == (v158 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_198:
      v193 = &v30[v23];
      do
      {
        v194 = *v161++;
        LOWORD(v97) = v194;
        *v160++ = v194;
      }

      while (v161 != v193);
      return v97;
    }

    v76 = *(a1 + 28);
    v77 = *(a2 + 28);
    v78 = *(a1 + 12);
    v79 = (v78 * v21);
    if (v76 == v77 && v76 == v79)
    {
      v80 = (*(a1 + 16) * v76);
      if (!v80)
      {
        return v97;
      }

      v81 = *a1;
      v82 = *a2;
      v83 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v83 < 3)
      {
        v84 = *a1;
        goto LABEL_202;
      }

      v84 = *a1;
      if ((v82 - v81) < 0x20)
      {
        goto LABEL_202;
      }

      v85 = v83 + 1;
      if (v83 >= 0xF)
      {
        v86 = v85 & 0xFFFFFFFFFFFFFFF0;
        v171 = (v81 + 8);
        v172 = v82 + 8;
        v173 = v85 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v171 - 1);
          v174 = *v171;
          *(v172 - 1) = v97;
          *v172 = v174;
          v171 += 2;
          v172 += 2;
          v173 -= 16;
        }

        while (v173);
        if (v85 == v86)
        {
          return v97;
        }

        if ((v85 & 0xC) == 0)
        {
          v84 = &v81[v86];
          v82 += v86;
          goto LABEL_202;
        }
      }

      else
      {
        v86 = 0;
      }

      v175 = v85 & 0xFFFFFFFFFFFFFFFCLL;
      v176 = &v82[v175];
      v84 = &v81[v175];
      v177 = &v81[v86];
      v178 = &v82[v86];
      v179 = v86 - (v85 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v180 = *v177++;
        LOWORD(v97) = v180;
        *v178 = v180;
        v178 += 4;
        v179 += 4;
      }

      while (v179);
      v82 = v176;
      if (v85 == (v85 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_202:
      v195 = &v81[v80];
      do
      {
        v196 = *v84++;
        LOWORD(v97) = v196;
        *v82++ = v196;
      }

      while (v84 != v195);
      return v97;
    }

    v87 = *(a1 + 16);
    if (v21)
    {
      v88 = v78 == 0;
    }

    else
    {
      v88 = 1;
    }

    if (v88 || v87 == 0)
    {
      return v97;
    }

    v90 = *a1;
    v91 = *a2;
    if (v87 == 1)
    {
LABEL_88:
      if (!v79)
      {
        return v97;
      }

      v92 = (v79 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v92 < 3 || (v91 - v90) < 0x20)
      {
        v181 = v91;
        v182 = v90;
        goto LABEL_206;
      }

      v93 = v92 + 1;
      if (v92 >= 0xF)
      {
        v94 = v93 & 0xFFFFFFFFFFFFFFF0;
        v183 = (v90 + 8);
        v184 = v91 + 8;
        v185 = v93 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v183 - 1);
          v186 = *v183;
          *(v184 - 1) = v97;
          *v184 = v186;
          v183 += 2;
          v184 += 2;
          v185 -= 16;
        }

        while (v185);
        if (v93 == v94)
        {
          return v97;
        }

        if ((v93 & 0xC) == 0)
        {
          v182 = &v90[v94];
          v181 = &v91[v94];
          goto LABEL_206;
        }
      }

      else
      {
        v94 = 0;
      }

      v187 = v93 & 0xFFFFFFFFFFFFFFFCLL;
      v181 = &v91[v187];
      v182 = &v90[v187];
      v188 = &v90[v94];
      v189 = &v91[v94];
      v190 = v94 - (v93 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v191 = *v188++;
        LOWORD(v97) = v191;
        *v189 = v191;
        v189 += 4;
        v190 += 4;
      }

      while (v190);
      if (v93 == (v93 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_206:
      v197 = &v90[v79];
      do
      {
        v198 = *v182++;
        LOWORD(v97) = v198;
        *v181++ = v198;
      }

      while (v182 != v197);
      return v97;
    }

    if (!v79)
    {
      return v97;
    }

    v98 = 0;
    v99 = v87 - 2;
    v100 = (v79 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v101 = v100 + 1;
    v102 = v91 >= &v90[v79 + v76 * v99] || v90 >= &v91[v79 + v77 * v99];
    v103 = v101 & 0xFFFFFFFFFFFFFFF0;
    v104 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v105 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = !v102;
    v107 = 2 * v76;
    v108 = 2 * v77;
    while (1)
    {
      v109 = v91;
      v110 = v90;
      if (!((v100 < 3) | v106 & 1))
      {
        if (v100 < 0xF)
        {
          v111 = 0;
LABEL_114:
          v109 = &v91[v105];
          v110 = &v90[v105];
          v116 = v111;
          v117 = v111 - v104;
          do
          {
            *&v97 = *&v90[v116];
            *&v91[v116] = v97;
            v116 += 4;
            v117 += 4;
          }

          while (v117);
          if (v101 == v104)
          {
            goto LABEL_106;
          }

          goto LABEL_119;
        }

        v112 = 0;
        v113 = v101 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v114 = &v91[v112];
          v97 = *&v90[v112];
          v115 = *&v90[v112 + 8];
          *v114 = v97;
          *(v114 + 1) = v115;
          v112 += 16;
          v113 -= 16;
        }

        while (v113);
        if (v101 == (v101 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_106;
        }

        v111 = v101 & 0xFFFFFFFFFFFFFFF0;
        if ((v101 & 0xC) != 0)
        {
          goto LABEL_114;
        }

        v110 = &v90[v103];
        v109 = &v91[v103];
      }

      do
      {
LABEL_119:
        v118 = *v110++;
        LOWORD(v97) = v118;
        *v109++ = v118;
      }

      while (v110 != &v90[v79]);
LABEL_106:
      v90 = (v90 + v107);
      v91 = (v91 + v108);
      v2 = v98++ == v99;
      if (v2)
      {
        goto LABEL_88;
      }
    }
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a1;
    v9 = *a2;
    v10 = 2 * *(a1 + 24);
    v11 = 2 * *(a2 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 28);
      v14 = *(a1 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v9 + 2;
        v17 = v8 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v8 += v14;
          v9 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_96;
      }

      v95 = 2 * v14;
      v96 = 2 * v13;
      do
      {
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        v8 = (v8 + v95);
        v9 = (v9 + v96);
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_97:
      *v9 = *v8;
      v9[1] = v8[1];
      LOWORD(v97) = v8[2];
      v9[2] = v97;
      return v97;
    }

    do
    {
LABEL_96:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_97;
  }

  return v97;
}

uint64_t sub_23F26FF90(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_23F24F178(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 4 * a2[4];
    v14 = 4 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 4 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 4 * v27;
            v49 = 4 * v28;
            do
            {
              memmove(v3, v46, 4 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 4 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 4 * v26;
        v37 = 4 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 4 * v40;
            v51 = 4 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 4 * v24;
            v54 = 4 * v39;
            v55 = 4 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 4 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_23F270394(uint64_t result, char **a2)
{
  if (*(result + 20) == 1 && *(a2 + 5) == 1)
  {
    v21 = *(result + 24);
    v22 = *(a2 + 6);
    v23 = *(result + 8);
    if (v21 == v22 && v21 == v23)
    {
      v42 = *(result + 28);
      v43 = *(a2 + 7);
      v44 = *(result + 12);
      v45 = (v44 * v21);
      if (v42 == v43 && v42 == v45)
      {
        if (!(*(result + 16) * v42))
        {
          return result;
        }

        v46 = 4 * (*(result + 16) * v42);
        v47 = *a2;
        v48 = *result;
        v49 = v47;
      }

      else
      {
        v50 = *(result + 16);
        if (v21)
        {
          v51 = v44 == 0;
        }

        else
        {
          v51 = 1;
        }

        if (v51 || v50 == 0)
        {
          return result;
        }

        v53 = *result;
        v54 = *a2;
        v55 = v50 - 1;
        if (v50 != 1)
        {
          if (!v45)
          {
            return result;
          }

          v56 = 4 * v42;
          v57 = 4 * v43;
          do
          {
            result = memmove(v54, v53, 4 * v45);
            v53 += v56;
            v54 += v57;
            --v55;
          }

          while (v55);
        }

        if (!v45)
        {
          return result;
        }

        v46 = 4 * v45;
        v49 = v54;
        v48 = v53;
      }
    }

    else
    {
      v26 = *(result + 12);
      v25 = *(result + 16);
      if (v23)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v25 == 0)
      {
        return result;
      }

      v29 = v26 - 1;
      v30 = *result;
      v31 = 4 * v23;
      v32 = *a2;
      v33 = 4 * v21;
      v34 = 4 * v22;
      v35 = v25 - 1;
      if (v25 != 1)
      {
        v36 = *(a2 + 7);
        v37 = *(result + 28);
        if (v26 == 1)
        {
          v58 = 4 * v37;
          v59 = 4 * v36;
          do
          {
            memmove(v32, v30, v31);
            v30 += v58;
            v32 += v59;
            --v35;
          }

          while (v35);
        }

        else
        {
          v38 = 0;
          v60 = 4 * v36;
          v61 = 4 * v37;
          v62 = v25 - 1;
          do
          {
            v39 = v32;
            v40 = v30;
            v41 = v29;
            do
            {
              memmove(v39, v40, v31);
              v40 += v33;
              v39 += v34;
              --v41;
            }

            while (v41);
            memmove(v39, v40, v31);
            v30 += v61;
            v32 += v60;
            ++v38;
          }

          while (v38 != v62);
        }
      }

      for (; v29; --v29)
      {
        memmove(v32, v30, v31);
        v30 += v33;
        v32 += v34;
      }

      v49 = v32;
      v48 = v30;
      v46 = v31;
    }

    return memmove(v49, v48, v46);
  }

  v3 = *(result + 12);
  v4 = *(result + 16);
  if (*(result + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *result;
    v9 = *a2;
    v10 = 4 * *(result + 24);
    v11 = 4 * *(a2 + 6);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 7);
      v14 = *(result + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = *(v8 + 1);
          v9[2] = *(v8 + 2);
          v8 += 4 * v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_58;
      }

      v15 = 0;
      v16 = v9 + 2;
      result = 4 * v13;
      v17 = v8 + 8;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v8 += 4 * v14;
        v9 += v13;
        ++v15;
        v16 = (v16 + result);
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_58:
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v8 += v10;
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_23F270724(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v46 = *a2;
    v47 = *(a2 + 1);
    v48 = *(a2 + 2);
    v49 = *(a2 + 6);
    sub_23F24DC18(v50, (a2 + 14));
    *a1 = v46;
    *(a1 + 16) = v47;
    *(a1 + 32) = v48;
    *(a1 + 80) = v51;
    *(a1 + 96) = v52;
    v4 = v50[0];
    *(a1 + 48) = v49;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v50[2];
    *(a1 + 64) = v50[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = a2[4];
    v13 = *(a1 + 16);
    v14 = *(a2 + 8);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (v11)
      {
        v18 = 0;
        v19 = v3 + 3;
        v20 = v14 + 1;
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v11;
          do
          {
            *(v22 - 3) = *(v21 - 1);
            *(v22 - 2) = *v21;
            *(v22 - 1) = v21[1];
            *v22 = v21[2];
            v22 += v13;
            v21 += v12;
            --v23;
          }

          while (v23);
          *(v22 - 3) = *(v21 - 1);
          *(v22 - 2) = *v21;
          *(v22 - 1) = v21[1];
          *v22 = v21[2];
          v14 += v17;
          v3 += v16;
          ++v18;
          v19 += v16;
          v20 += v17;
        }

        while (v18 != v15);
        goto LABEL_24;
      }

      do
      {
        *v3 = *v14;
        v3[1] = v14[1];
        v3[2] = v14[2];
        v3[3] = v14[3];
        v14 += v17;
        v3 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v11)
    {
LABEL_25:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      v3[3] = v14[3];
      return a1;
    }

    do
    {
LABEL_24:
      *v3 = *v14;
      v3[1] = v14[1];
      v3[2] = v14[2];
      v3[3] = v14[3];
      v14 += v12;
      v3 += v13;
      --v11;
    }

    while (v11);
    goto LABEL_25;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 != v25 || v24 != v26)
  {
    if (!v26)
    {
      return a1;
    }

    v31 = a2[1];
    if (!v31)
    {
      return a1;
    }

    v32 = a2[2];
    if (!v32)
    {
      return a1;
    }

    v33 = v31 - 1;
    v34 = *(a2 + 8);
    v35 = v32 - 1;
    if (v32 != 1)
    {
      v36 = *(a1 + 20);
      v45 = a2[5];
      if (v31 == 1)
      {
        do
        {
          memmove(v3, v34, v26);
          v34 += v45;
          v3 += v36;
          --v35;
        }

        while (v35);
      }

      else
      {
        v37 = 0;
        v43 = v32 - 1;
        v44 = v31 - 1;
        v42 = *(a1 + 20);
        do
        {
          v38 = v34;
          v39 = v3;
          do
          {
            memmove(v39, v38, v26);
            v38 += v24;
            v39 += v25;
            --v33;
          }

          while (v33);
          memmove(v39, v38, v26);
          v34 += v45;
          v3 += v42;
          ++v37;
          v33 = v44;
        }

        while (v37 != v43);
      }
    }

    for (; v33; --v33)
    {
      memmove(v3, v34, v26);
      v34 += v24;
      v3 += v25;
    }

LABEL_53:
    memmove(v3, v34, v26);
    return a1;
  }

  v27 = a2[5];
  v28 = *(a1 + 20);
  v29 = a2[1];
  v26 = v29 * v24;
  if (v27 != v28 || v27 != v26)
  {
    if (!v24)
    {
      return a1;
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[2];
    if (!v40)
    {
      return a1;
    }

    v34 = *(a2 + 8);
    v41 = v40 - 1;
    if (v40 != 1)
    {
      if (!v26)
      {
        return a1;
      }

      do
      {
        memmove(v3, v34, v26);
        v34 += v27;
        v3 += v28;
        --v41;
      }

      while (v41);
    }

    if (!v26)
    {
      return a1;
    }

    goto LABEL_53;
  }

  v30 = a2[2] * v27;
  if (v30)
  {
    memmove(*(a1 + 64), *(a2 + 8), v30);
  }

  return a1;
}

uint64_t sub_23F270AF4(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_23F24E2E0(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 2 * a2[4];
    v14 = 2 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v3[3] = v12[3];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22[1] = v21[1];
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v22[1] = v21[1];
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 2 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 2 * v27;
            v49 = 2 * v28;
            do
            {
              memmove(v3, v46, 2 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 2 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 2 * v26;
        v37 = 2 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 2 * v40;
            v51 = 2 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 2 * v24;
            v54 = 2 * v39;
            v55 = 2 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 2 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_23F270F20(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v200 = *a2;
    v201 = *(a2 + 1);
    v202 = *(a2 + 2);
    v203 = *(a2 + 6);
    sub_23F24EBE4(v204, (a2 + 14));
    *a1 = v200;
    *(a1 + 16) = v201;
    *(a1 + 32) = v202;
    *(a1 + 48) = v203;
    *(a1 + 80) = v205;
    *(a1 + 96) = v206;
    v4 = *(a1 + 64);
    if (!v4)
    {
      *(a1 + 56) = v204[0];
      goto LABEL_22;
    }

    if (*(a1 + 84))
    {
      v5 = *(a1 + 80) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 88);
    if (v5)
    {
      v6 = 0;
    }

    if (v6 * (*(a1 + 100) >> 1) != -1)
    {
      *(a1 + 56) = v204[0];
LABEL_21:
      free(v4);
      goto LABEL_22;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_20;
      }

      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_214;
      }
    }

    do
    {
      (*v7)(*(v7 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v7 += 16;
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
LABEL_20:
      qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v4 = *(a1 + 64);
      *(a1 + 56) = v204[0];
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_22:
      v9 = v204[2];
      *(a1 + 64) = v204[1];
      *(a1 + 72) = v9;
      return a1;
    }

LABEL_214:
    abort();
  }

  if (a2[3] == 1 && *(a1 + 12) == 1)
  {
    v27 = a2[4];
    v28 = *(a1 + 16);
    v29 = *a2;
    if (v27 == v28 && v27 == v29)
    {
      v30 = a2[5];
      v31 = *(a1 + 20);
      v32 = a2[1];
      v33 = v32 * v27;
      if (v30 == v31 && v30 == v33)
      {
        v34 = a2[2] * v30;
        if (!v34)
        {
          return a1;
        }

        v35 = *(a2 + 8);
        v36 = (v34 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v36 < 3)
        {
          v37 = *(a2 + 8);
          goto LABEL_209;
        }

        v37 = *(a2 + 8);
        if (v3 - v35 < 0x20)
        {
          goto LABEL_209;
        }

        v38 = v36 + 1;
        if (v36 >= 0xF)
        {
          v39 = v38 & 0xFFFFFFFFFFFFFFF0;
          v166 = (v35 + 16);
          v167 = v3 + 8;
          v168 = v38 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v169 = *v166;
            *(v167 - 1) = *(v166 - 1);
            *v167 = v169;
            v166 += 2;
            v167 += 2;
            v168 -= 16;
          }

          while (v168);
          if (v38 == v39)
          {
            return a1;
          }

          if ((v38 & 0xC) == 0)
          {
            v189 = 2 * v39;
            v37 = (v35 + v189);
            v3 = (v3 + v189);
            goto LABEL_209;
          }
        }

        else
        {
          v39 = 0;
        }

        v170 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        v171 = &v3[v170];
        v37 = (v35 + v170 * 2);
        v172 = (v35 + 2 * v39);
        v173 = &v3[v39];
        v174 = v39 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v175 = *v172++;
          *v173++ = v175;
          v174 += 4;
        }

        while (v174);
        v3 = v171;
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_209:
          v190 = *v37++;
          *v3++ = v190;
        }

        while (v37 != (v35 + 2 * v34));
        return a1;
      }

      if (!v27)
      {
        return a1;
      }

      if (!v32)
      {
        return a1;
      }

      v86 = a2[2];
      if (!v86)
      {
        return a1;
      }

      v87 = *(a2 + 8);
      if (v86 == 1)
      {
LABEL_96:
        if (!v33)
        {
          return a1;
        }

        v88 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v88 < 3 || v3 - v87 < 0x20)
        {
          v176 = v3;
          v177 = v87;
          goto LABEL_212;
        }

        v89 = v88 + 1;
        if (v88 >= 0xF)
        {
          v90 = v89 & 0xFFFFFFFFFFFFFFF0;
          v178 = (v87 + 16);
          v179 = v3 + 8;
          v180 = v89 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v181 = *v178;
            *(v179 - 1) = *(v178 - 1);
            *v179 = v181;
            v178 += 2;
            v179 += 2;
            v180 -= 16;
          }

          while (v180);
          if (v89 == v90)
          {
            return a1;
          }

          if ((v89 & 0xC) == 0)
          {
            v191 = v90;
            v177 = (v87 + v191 * 2);
            v176 = &v3[v191];
            goto LABEL_212;
          }
        }

        else
        {
          v90 = 0;
        }

        v182 = v89 & 0xFFFFFFFFFFFFFFFCLL;
        v176 = &v3[v182];
        v177 = (v87 + v182 * 2);
        v183 = (v87 + 2 * v90);
        v184 = &v3[v90];
        v185 = v90 - (v89 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v186 = *v183++;
          *v184++ = v186;
          v185 += 4;
        }

        while (v185);
        if (v89 == (v89 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return a1;
        }

        do
        {
LABEL_212:
          v192 = *v177++;
          *v176++ = v192;
        }

        while (v177 != (v87 + 2 * v33));
        return a1;
      }

      if (!v33)
      {
        return a1;
      }

      v92 = 0;
      v93 = v86 - 2;
      v94 = &v3[v33 + v31 * (v86 - 2)];
      v95 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v96 = v95 + 1;
      v97 = v3 >= v87 + 2 * (v33 + v30 * v93) || v87 >= v94;
      v98 = v96 & 0xFFFFFFFFFFFFFFF0;
      v99 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v100 = v96 & 0xFFFFFFFFFFFFFFFCLL;
      v101 = !v97;
      v102 = 2 * v30;
      v103 = 2 * v31;
      while (1)
      {
        v104 = v3;
        v105 = v87;
        if (!((v95 < 3) | v101 & 1))
        {
          if (v95 < 0xF)
          {
            v106 = 0;
LABEL_122:
            v104 = &v3[v100];
            v105 = (v87 + v100 * 2);
            v111 = v106;
            v112 = v106 - v99;
            do
            {
              *&v3[v111] = *(v87 + v111 * 2);
              v111 += 4;
              v112 += 4;
            }

            while (v112);
            if (v96 == v99)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          v107 = 0;
          v108 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v109 = &v3[v107];
            v110 = *(v87 + v107 * 2 + 16);
            *v109 = *(v87 + v107 * 2);
            v109[1] = v110;
            v107 += 16;
            v108 -= 16;
          }

          while (v108);
          if (v96 == (v96 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_114;
          }

          v106 = v96 & 0xFFFFFFFFFFFFFFF0;
          if ((v96 & 0xC) != 0)
          {
            goto LABEL_122;
          }

          v105 = (v87 + v98 * 2);
          v104 = &v3[v98];
        }

        do
        {
LABEL_127:
          v113 = *v105++;
          *v104++ = v113;
        }

        while (v105 != (v87 + 2 * v33));
LABEL_114:
        v87 += v102;
        v3 = (v3 + v103);
        v5 = v92++ == v93;
        if (v5)
        {
          goto LABEL_96;
        }
      }
    }

    if (!v29)
    {
      return a1;
    }

    v40 = a2[1];
    if (!v40)
    {
      return a1;
    }

    v41 = a2[2];
    if (!v41)
    {
      return a1;
    }

    v42 = v40 - 1;
    v43 = *(a2 + 8);
    v44 = 2 * v28;
    v45 = v41 - 1;
    v194 = *(a1 + 16);
    v195 = a2[4];
    v193 = a2[1];
    if (v41 != 1)
    {
      v46 = *(a1 + 20);
      v47 = a2[5];
      if (v40 != 1)
      {
        v48 = 0;
        v49 = 2 * v27;
        v199 = &v3[v44 / 2] - v43 + -2 * v27;
        v198 = 2 * (v46 - v47);
        v196 = v44 - 2 * v27;
        v50 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v51 = v50 + 1;
        v52 = 2 * v46;
        v53 = 2 * v47;
        v197 = &v3[v29 + v28 * (v40 - 2)];
        v54 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
        v55 = v54;
        v56 = (v50 + 1) & 0xC;
        v57 = (v50 + 1) & 0xFFFFFFFFFFFFFFFCLL;
        v58 = v57;
        v59 = v43 + 2 * (v29 + v27 * (v40 - 2));
        while (1)
        {
          v60 = 0;
          v62 = v3 < v59 + v53 * v48 && v43 < v197 + v52 * v48;
          v63 = v3;
          v64 = v43;
          do
          {
            v65 = v60;
            v66 = v63;
            v67 = v64;
            if (v50 < 3 || v62)
            {
              goto LABEL_74;
            }

            if (v50 >= 0xF)
            {
              v69 = 0;
              v70 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v71 = &v63[v69];
                v72 = *&v64[v69 + 8];
                *v71 = *&v64[v69];
                v71[1] = v72;
                v69 += 16;
                v70 -= 16;
              }

              while (v70);
              if (v51 == v54)
              {
                goto LABEL_61;
              }

              v68 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v67 = &v64[v55];
                v66 = &v63[v55];
                do
                {
LABEL_74:
                  v75 = *v67++;
                  *v66++ = v75;
                }

                while (v67 != &v64[v29]);
                goto LABEL_61;
              }
            }

            else
            {
              v68 = 0;
            }

            v66 = &v63[v58];
            v67 = &v64[v58];
            v73 = v68;
            v74 = v68 - v57;
            do
            {
              *&v63[v73] = *&v64[v73];
              v73 += 4;
              v74 += 4;
            }

            while (v74);
            if (v51 != v57)
            {
              goto LABEL_74;
            }

LABEL_61:
            v64 = (v64 + v49);
            v63 = (v63 + v44);
            v60 = v65 + 1;
          }

          while (v65 + 1 != v42);
          if (v50 < 3 || (v199 + v198 * v48 + v196 * v65) < 0x20)
          {
            v76 = v63;
            v77 = v64;
            goto LABEL_79;
          }

          if (v50 >= 0xF)
          {
            v80 = 0;
            v81 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v82 = &v63[v80];
              v83 = *&v64[v80 + 8];
              *v82 = *&v64[v80];
              v82[1] = v83;
              v80 += 16;
              v81 -= 16;
            }

            while (v81);
            if (v51 != v54)
            {
              v79 = (v50 + 1) & 0xFFFFFFFFFFFFFFF0;
              if (!v56)
              {
                v77 = &v64[v55];
                v76 = &v63[v55];
                goto LABEL_79;
              }

              goto LABEL_87;
            }
          }

          else
          {
            v79 = 0;
LABEL_87:
            v76 = &v63[v58];
            v77 = &v64[v58];
            v84 = v79;
            v85 = v79 - v57;
            do
            {
              *&v63[v84] = *&v64[v84];
              v84 += 4;
              v85 += 4;
            }

            while (v85);
            if (v51 != v57)
            {
              do
              {
LABEL_79:
                v78 = *v77++;
                *v76++ = v78;
              }

              while (v77 != &v64[v29]);
            }
          }

          v43 += v53;
          v3 = (v3 + v52);
          if (++v48 == v45)
          {
            goto LABEL_151;
          }
        }
      }

      v114 = 0;
      v115 = v41 - 2;
      v116 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v117 = v116 + 1;
      v118 = v3 >= v43 + 2 * (v29 + v47 * v115) || v43 >= &v3[v29 + v46 * v115];
      v119 = v117 & 0xFFFFFFFFFFFFFFF0;
      v120 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v121 = v117 & 0xFFFFFFFFFFFFFFFCLL;
      v122 = !v118;
      v123 = 2 * v47;
      v124 = 2 * v46;
      do
      {
        v125 = v3;
        v126 = v43;
        if (!((v116 < 3) | v122 & 1))
        {
          if (v116 < 0xF)
          {
            v127 = 0;
LABEL_144:
            v125 = &v3[v121];
            v126 = (v43 + v121 * 2);
            v132 = v127;
            v133 = v127 - v120;
            do
            {
              *&v3[v132] = *(v43 + v132 * 2);
              v132 += 4;
              v133 += 4;
            }

            while (v133);
            if (v117 == v120)
            {
              goto LABEL_136;
            }

            goto LABEL_149;
          }

          v128 = 0;
          v129 = v117 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v130 = &v3[v128];
            v131 = *(v43 + v128 * 2 + 16);
            *v130 = *(v43 + v128 * 2);
            v130[1] = v131;
            v128 += 16;
            v129 -= 16;
          }

          while (v129);
          if (v117 == (v117 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_136;
          }

          v127 = v117 & 0xFFFFFFFFFFFFFFF0;
          if ((v117 & 0xC) != 0)
          {
            goto LABEL_144;
          }

          v126 = (v43 + v119 * 2);
          v125 = &v3[v119];
        }

        do
        {
LABEL_149:
          v134 = *v126++;
          *v125++ = v134;
        }

        while (v126 != (v43 + 2 * v29));
LABEL_136:
        v43 += v123;
        v3 = (v3 + v124);
        ++v114;
      }

      while (v114 != v45);
    }

LABEL_151:
    if (v42)
    {
      v135 = 0;
      v136 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v137 = v136 + 1;
      v139 = v3 < v43 + 2 * (v29 + v195 * (v193 - 2)) && v43 < &v3[v29 + v194 * (v193 - 2)];
      v140 = v137 & 0xFFFFFFFFFFFFFFF0;
      v141 = v137 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v142 = v3;
        v143 = v43;
        if (v136 >= 3 && !v139)
        {
          if (v136 < 0xF)
          {
            v144 = 0;
LABEL_167:
            v142 = &v3[v141];
            v143 = (v43 + v141 * 2);
            v149 = v144;
            v150 = v144 - (v137 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v3[v149] = *(v43 + v149 * 2);
              v149 += 4;
              v150 += 4;
            }

            while (v150);
            if (v137 == (v137 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_159;
            }

            goto LABEL_172;
          }

          v145 = 0;
          v146 = v137 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v147 = &v3[v145];
            v148 = *(v43 + v145 * 2 + 16);
            *v147 = *(v43 + v145 * 2);
            v147[1] = v148;
            v145 += 16;
            v146 -= 16;
          }

          while (v146);
          if (v137 == (v137 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_159;
          }

          v144 = v137 & 0xFFFFFFFFFFFFFFF0;
          if ((v137 & 0xC) != 0)
          {
            goto LABEL_167;
          }

          v143 = (v43 + v140 * 2);
          v142 = &v3[v140];
        }

        do
        {
LABEL_172:
          v151 = *v143++;
          *v142++ = v151;
        }

        while (v143 != (v43 + 2 * v29));
LABEL_159:
        v43 += 2 * v195;
        v3 = (v3 + v44);
        ++v135;
      }

      while (v135 != v42);
    }

    v152 = (v29 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v152 < 3 || v3 - v43 < 0x20)
    {
      v155 = v3;
      v156 = v43;
      goto LABEL_206;
    }

    v153 = v152 + 1;
    if (v152 >= 0xF)
    {
      v154 = v153 & 0xFFFFFFFFFFFFFFF0;
      v157 = (v43 + 16);
      v158 = v3 + 8;
      v159 = v153 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v160 = *v157;
        *(v158 - 1) = *(v157 - 1);
        *v158 = v160;
        v157 += 2;
        v158 += 2;
        v159 -= 16;
      }

      while (v159);
      if (v153 == v154)
      {
        return a1;
      }

      if ((v153 & 0xC) == 0)
      {
        v187 = v154;
        v156 = (v43 + v187 * 2);
        v155 = &v3[v187];
        goto LABEL_206;
      }
    }

    else
    {
      v154 = 0;
    }

    v161 = v153 & 0xFFFFFFFFFFFFFFFCLL;
    v155 = &v3[v161];
    v156 = (v43 + v161 * 2);
    v162 = (v43 + 2 * v154);
    v163 = &v3[v154];
    v164 = v154 - (v153 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v165 = *v162++;
      *v163++ = v165;
      v164 += 4;
    }

    while (v164);
    if (v153 == (v153 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return a1;
    }

    do
    {
LABEL_206:
      v188 = *v156++;
      *v155++ = v188;
    }

    while (v156 != (v43 + 2 * v29));
    return a1;
  }

  if (*a2)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2[2];
      if (v13)
      {
        v14 = v12 - 1;
        v15 = *(a2 + 8);
        v16 = 2 * a2[4];
        v17 = 2 * *(a1 + 16);
        v18 = v13 - 1;
        if (v13 != 1)
        {
          v19 = *(a1 + 20);
          v20 = a2[5];
          if (v14)
          {
            v21 = 0;
            v22 = v3 + 2;
            v23 = v15 + 2;
            do
            {
              v24 = v23;
              v25 = v22;
              v26 = v14;
              do
              {
                *(v25 - 2) = *(v24 - 2);
                *(v25 - 1) = *(v24 - 1);
                *v25 = *v24;
                v25[1] = v24[1];
                v25 = (v25 + v17);
                v24 = (v24 + v16);
                --v26;
              }

              while (v26);
              *(v25 - 2) = *(v24 - 2);
              *(v25 - 1) = *(v24 - 1);
              *v25 = *v24;
              v25[1] = v24[1];
              v15 += v20;
              v3 += v19;
              ++v21;
              v22 += v19;
              v23 += v20;
            }

            while (v21 != v18);
            goto LABEL_104;
          }

          v91 = 2 * v19;
          do
          {
            *v3 = *v15;
            v3[1] = v15[1];
            v3[2] = v15[2];
            v3[3] = v15[3];
            v15 += v20;
            v3 = (v3 + v91);
            --v18;
          }

          while (v18);
        }

        if (!v14)
        {
LABEL_105:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          v3[3] = v15[3];
          return a1;
        }

        do
        {
LABEL_104:
          *v3 = *v15;
          v3[1] = v15[1];
          v3[2] = v15[2];
          v3[3] = v15[3];
          v15 = (v15 + v16);
          v3 = (v3 + v17);
          --v14;
        }

        while (v14);
        goto LABEL_105;
      }
    }
  }

  return a1;
}

void sub_23F271B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23F2382B8(va);
  _Unwind_Resume(a1);
}

void sub_23F271B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23F2382B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F271B7C(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 64);
  if (!v3 || *(a2 + 1) != *(a1 + 4) || *(a2 + 2) != *(a1 + 16))
  {
    v58 = *a2;
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    v61 = *(a2 + 6);
    sub_23F24F178(v62, (a2 + 14));
    *a1 = v58;
    *(a1 + 16) = v59;
    *(a1 + 32) = v60;
    *(a1 + 80) = v63;
    *(a1 + 96) = v64;
    v4 = v62[0];
    *(a1 + 48) = v61;
    *(a1 + 56) = v4;
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
    }

    v6 = v62[2];
    *(a1 + 64) = v62[1];
    *(a1 + 72) = v6;
    return a1;
  }

  if (a2[3] != 1 || *(a1 + 12) != 1)
  {
    if (!*a2)
    {
      return a1;
    }

    v9 = a2[1];
    if (!v9)
    {
      return a1;
    }

    v10 = a2[2];
    if (!v10)
    {
      return a1;
    }

    v11 = v9 - 1;
    v12 = *(a2 + 8);
    v13 = 4 * a2[4];
    v14 = 4 * *(a1 + 16);
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(a1 + 20);
      v17 = a2[5];
      if (!v11)
      {
        do
        {
          *v3 = *v12;
          v3[1] = v12[1];
          v3[2] = v12[2];
          v3[3] = v12[3];
          v12 += v17;
          v3 += v16;
          --v15;
        }

        while (v15);
        goto LABEL_51;
      }

      v18 = 0;
      v19 = v3 + 2;
      v20 = v12 + 2;
      do
      {
        v21 = v20;
        v22 = v19;
        v23 = v11;
        do
        {
          *(v22 - 2) = *(v21 - 2);
          *(v22 - 1) = *(v21 - 1);
          *v22 = *v21;
          v22[1] = v21[1];
          v22 = (v22 + v14);
          v21 = (v21 + v13);
          --v23;
        }

        while (v23);
        *(v22 - 2) = *(v21 - 2);
        *(v22 - 1) = *(v21 - 1);
        *v22 = *v21;
        v22[1] = v21[1];
        v12 += v17;
        v3 += v16;
        ++v18;
        v19 += v16;
        v20 += v17;
      }

      while (v18 != v15);
    }

    else if (!v11)
    {
LABEL_51:
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      return a1;
    }

    do
    {
      *v3 = *v12;
      v3[1] = v12[1];
      v3[2] = v12[2];
      v3[3] = v12[3];
      v12 = (v12 + v13);
      v3 = (v3 + v14);
      --v11;
    }

    while (v11);
    goto LABEL_51;
  }

  v24 = a2[4];
  v25 = *(a1 + 16);
  v26 = *a2;
  if (v24 == v25 && v24 == v26)
  {
    v27 = a2[5];
    v28 = *(a1 + 20);
    v29 = a2[1];
    v30 = v29 * v24;
    if (v27 == v28 && v27 == v30)
    {
      v31 = a2[2] * v27;
      if (v31)
      {
        memmove(*(a1 + 64), *(a2 + 8), 4 * v31);
      }
    }

    else if (v24)
    {
      if (v29)
      {
        v45 = a2[2];
        if (v45)
        {
          v46 = *(a2 + 8);
          v47 = v45 - 1;
          if (v45 != 1)
          {
            if (!v30)
            {
              return a1;
            }

            v48 = 4 * v27;
            v49 = 4 * v28;
            do
            {
              memmove(v3, v46, 4 * v30);
              v46 += v48;
              v3 = (v3 + v49);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            memmove(v3, v46, 4 * v30);
          }
        }
      }
    }
  }

  else if (v26)
  {
    v32 = a2[1];
    if (v32)
    {
      v33 = a2[2];
      if (v33)
      {
        v34 = v32 - 1;
        v35 = *(a2 + 8);
        v36 = 4 * v26;
        v37 = 4 * v25;
        v38 = v33 - 1;
        v53 = a2[4];
        if (v38)
        {
          v39 = *(a1 + 20);
          v40 = a2[5];
          if (v32 == 1)
          {
            v50 = 4 * v40;
            v51 = 4 * v39;
            do
            {
              v52 = v38;
              memmove(v3, v35, v36);
              v35 += v50;
              v3 = (v3 + v51);
              v38 = v52 - 1;
            }

            while (v52 != 1);
          }

          else
          {
            v41 = 0;
            v42 = 4 * v24;
            v54 = 4 * v39;
            v55 = 4 * v40;
            v56 = v38;
            v57 = v32 - 1;
            do
            {
              v43 = v3;
              v44 = v35;
              do
              {
                memmove(v43, v44, v36);
                v44 += v42;
                v43 += v37;
                --v34;
              }

              while (v34);
              memmove(v43, v44, v36);
              v35 += v55;
              v3 = (v3 + v54);
              ++v41;
              v34 = v57;
            }

            while (v41 != v56);
          }
        }

        for (; v34; --v34)
        {
          memmove(v3, v35, v36);
          v35 += 4 * v53;
          v3 = (v3 + v37);
        }

        memmove(v3, v35, v36);
      }
    }
  }

  return a1;
}

uint64_t sub_23F271FA8(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v3;
  v4 = 2 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  v8 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_23F2BAF78(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F272174(uint64_t result, _DWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 2;
  *&memptr[4] = v3;
  v4 = 2 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x1FFFFFFFFLL | ((v6 >> 1) << 33);
  v8 = __PAIR64__(*&memptr[4], 2);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 4 * v6;
  v14 = v13 - 1;
  v2 = (v13 & (v13 - 1)) == 0;
  v15 = 3;
  if (v2)
  {
    v15 = v14;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v19;
  if (v12 * v6)
  {
    v20 = result;
    *memptr = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v20;
    if (v21)
    {
      sub_23F2BAF78(v21, *(v20 + 72), 4 * (v12 * v6));
    }

    *(v20 + 64) = *memptr;
  }

  if (v5)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  *(result + 80) = v23;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F272344(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v3;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | (v6 << 32);
  v8 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = v5;
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_23F2BAF78(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F272508(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v3;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | (v6 << 32);
  v8 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = __PAIR64__(v3, 3);
  *(result + 8) = v5;
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (__PAIR64__(v3, 3) >> 32)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = 4 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_23F2BAF78(v20, *(v19 + 72), 4 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F2726CC(uint64_t result, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v3;
  v4 = 4 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  v8 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 2 * v6;
  if ((v13 & (v13 - 1)) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
  v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
  if (v17 + 1 > 8)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 8;
  }

  *(result + 56) = 2 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v18;
  if (v12 * v6)
  {
    v19 = result;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v18, 2 * (v12 * v6), 0x63222AC6uLL);
    result = v19;
    if (v20)
    {
      sub_23F2BAF78(v20, *(v19 + 72), 2 * (v12 * v6));
    }

    *(v19 + 64) = *memptr;
  }

  if (v5)
  {
    v21 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v8;
  }

  *(result + 80) = v22;
  *(result + 88) = v12;
  *(result + 92) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(result + 100) = 2 * v6;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F272898(uint64_t result, _DWORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2[1])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *a2;
  if (v2)
  {
    v3 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v3;
  v4 = 4 * (v3 != 0);
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = (v4 * *&memptr[4]);
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  v8 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v7;
  v9 = *memptr;
  *result = v8;
  *(result + 8) = HIDWORD(v3);
  *(result + 12) = v9;
  *(result + 20) = v6;
  *(result + 24) = v3;
  *(result + 32) = v7;
  *(result + 40) = 0;
  *(result + 52) = 0;
  if (HIDWORD(v8))
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v3);
  }

  v13 = 4 * v6;
  v14 = v13 - 1;
  v2 = (v13 & (v13 - 1)) == 0;
  v15 = 3;
  if (v2)
  {
    v15 = v14;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  *(result + 56) = 4 * (v12 * v6);
  *(result + 64) = 0;
  *(result + 72) = v19;
  if (v12 * v6)
  {
    v20 = result;
    *memptr = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, 4 * (v12 * v6), 0x63222AC6uLL);
    result = v20;
    if (v21)
    {
      sub_23F2BAF78(v21, *(v20 + 72), 4 * (v12 * v6));
    }

    *(v20 + 64) = *memptr;
  }

  if (v5)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v8;
  }

  *(result + 80) = v23;
  *(result + 88) = v12;
  *(result + 92) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(result + 100) = 4 * v6;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *sub_23F272A68(_DWORD *result, char **a2)
{
  if (result[5] != 1 || *(a2 + 5) != 1)
  {
    v3 = result[3];
    v4 = result[4];
    if (result[2])
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && v4 != 0)
    {
      v7 = v3 - 1;
      v8 = result[6];
      v9 = *(a2 + 6);
      v10 = *result;
      v11 = *a2;
      v12 = v4 - 1;
      if (v12)
      {
        v13 = *(a2 + 7);
        v14 = result[7];
        if (v7)
        {
          v15 = 0;
          v16 = v11 + 2;
          result = v10 + 2;
          do
          {
            v17 = result;
            v18 = v16;
            v19 = v7;
            do
            {
              *(v18 - 2) = *(v17 - 2);
              *(v18 - 1) = *(v17 - 1);
              *v18 = *v17;
              v18 += v9;
              v17 += v8;
              --v19;
            }

            while (v19);
            *(v18 - 2) = *(v17 - 2);
            *(v18 - 1) = *(v17 - 1);
            *v18 = *v17;
            v10 += v14;
            v11 += v13;
            ++v15;
            v16 += v13;
            result = (result + v14);
          }

          while (v15 != v12);
          goto LABEL_21;
        }

        do
        {
          *v11 = *v10;
          v11[1] = v10[1];
          v11[2] = v10[2];
          v10 += v14;
          v11 += v13;
          --v12;
        }

        while (v12);
      }

      if (!v7)
      {
LABEL_22:
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        return result;
      }

      do
      {
LABEL_21:
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v10 += v8;
        v11 += v9;
        --v7;
      }

      while (v7);
      goto LABEL_22;
    }

    return result;
  }

  v20 = result[6];
  v21 = *(a2 + 6);
  v22 = result[2];
  if (v20 != v21 || v20 != v22)
  {
    v25 = result[3];
    v24 = result[4];
    if (v22)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26 || v24 == 0)
    {
      return result;
    }

    v28 = v25 - 1;
    v29 = *result;
    v30 = *a2;
    v31 = v24 - 1;
    if (v24 != 1)
    {
      v32 = *(a2 + 7);
      v33 = result[7];
      if (v25 == 1)
      {
        do
        {
          memmove(v30, v29, v22);
          v29 += v33;
          v30 += v32;
          --v31;
        }

        while (v31);
      }

      else
      {
        v34 = 0;
        v51 = v24 - 1;
        v49 = result[7];
        v50 = *(a2 + 7);
        do
        {
          v35 = v28;
          v36 = v29;
          v37 = v30;
          do
          {
            memmove(v37, v36, v22);
            v36 += v20;
            v37 += v21;
            --v35;
          }

          while (v35);
          memmove(v37, v36, v22);
          v29 += v49;
          v30 += v50;
          ++v34;
        }

        while (v34 != v51);
      }
    }

    for (; v28; --v28)
    {
      memmove(v30, v29, v22);
      v29 += v20;
      v30 += v21;
    }

    goto LABEL_60;
  }

  v38 = result[7];
  v39 = *(a2 + 7);
  v40 = result[3];
  v22 = (v40 * v20);
  if (v38 == v39 && v38 == v22)
  {
    v41 = (result[4] * v38);
    if (!v41)
    {
      return result;
    }

    v42 = *a2;
    v43 = *result;
    v44 = v42;
    goto LABEL_61;
  }

  v45 = result[4];
  if (v20)
  {
    v46 = v40 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (!v46 && v45 != 0)
  {
    v29 = *result;
    v30 = *a2;
    v48 = v45 - 1;
    if (v45 != 1)
    {
      if (!v22)
      {
        return result;
      }

      do
      {
        result = memmove(v30, v29, v22);
        v29 += v38;
        v30 += v39;
        --v48;
      }

      while (v48);
    }

    if (v22)
    {
LABEL_60:
      v44 = v30;
      v43 = v29;
      v41 = v22;
LABEL_61:

      return memmove(v44, v43, v41);
    }
  }

  return result;
}

uint64_t sub_23F272DA8(uint64_t result, char **a2)
{
  if (*(result + 20) == 1 && *(a2 + 5) == 1)
  {
    v21 = *(result + 24);
    v22 = *(a2 + 6);
    v23 = *(result + 8);
    if (v21 == v22 && v21 == v23)
    {
      v42 = *(result + 28);
      v43 = *(a2 + 7);
      v44 = *(result + 12);
      v45 = (v44 * v21);
      if (v42 == v43 && v42 == v45)
      {
        if (!(*(result + 16) * v42))
        {
          return result;
        }

        v46 = 2 * (*(result + 16) * v42);
        v47 = *a2;
        v48 = *result;
        v49 = v47;
      }

      else
      {
        v50 = *(result + 16);
        if (v21)
        {
          v51 = v44 == 0;
        }

        else
        {
          v51 = 1;
        }

        if (v51 || v50 == 0)
        {
          return result;
        }

        v53 = *result;
        v54 = *a2;
        v55 = v50 - 1;
        if (v50 != 1)
        {
          if (!v45)
          {
            return result;
          }

          v56 = 2 * v42;
          v57 = 2 * v43;
          do
          {
            result = memmove(v54, v53, 2 * v45);
            v53 += v56;
            v54 += v57;
            --v55;
          }

          while (v55);
        }

        if (!v45)
        {
          return result;
        }

        v46 = 2 * v45;
        v49 = v54;
        v48 = v53;
      }
    }

    else
    {
      v26 = *(result + 12);
      v25 = *(result + 16);
      if (v23)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v25 == 0)
      {
        return result;
      }

      v29 = v26 - 1;
      v30 = *result;
      v31 = 2 * v23;
      v32 = *a2;
      v33 = 2 * v21;
      v34 = 2 * v22;
      v35 = v25 - 1;
      if (v25 != 1)
      {
        v36 = *(a2 + 7);
        v37 = *(result + 28);
        if (v26 == 1)
        {
          v58 = 2 * v37;
          v59 = 2 * v36;
          do
          {
            memmove(v32, v30, v31);
            v30 += v58;
            v32 += v59;
            --v35;
          }

          while (v35);
        }

        else
        {
          v38 = 0;
          v60 = 2 * v36;
          v61 = 2 * v37;
          v62 = v25 - 1;
          do
          {
            v39 = v32;
            v40 = v30;
            v41 = v29;
            do
            {
              memmove(v39, v40, v31);
              v40 += v33;
              v39 += v34;
              --v41;
            }

            while (v41);
            memmove(v39, v40, v31);
            v30 += v61;
            v32 += v60;
            ++v38;
          }

          while (v38 != v62);
        }
      }

      for (; v29; --v29)
      {
        memmove(v32, v30, v31);
        v30 += v33;
        v32 += v34;
      }

      v49 = v32;
      v48 = v30;
      v46 = v31;
    }

    return memmove(v49, v48, v46);
  }

  v3 = *(result + 12);
  v4 = *(result + 16);
  if (*(result + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *result;
    v9 = *a2;
    v10 = 2 * *(result + 24);
    v11 = 2 * *(a2 + 6);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 7);
      v14 = *(result + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = *(v8 + 1);
          v9[2] = *(v8 + 2);
          v8 += 2 * v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_58;
      }

      v15 = 0;
      v16 = v9 + 2;
      result = 2 * v13;
      v17 = v8 + 4;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v8 += 2 * v14;
        v9 += v13;
        ++v15;
        v16 = (v16 + result);
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_58:
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      return result;
    }

    do
    {
      *v9 = *v8;
      v9[1] = *(v8 + 1);
      v9[2] = *(v8 + 2);
      v8 += v10;
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_58;
  }

  return result;
}

_DWORD *sub_23F273138(_DWORD *result, char **a2)
{
  if (result[5] != 1 || *(a2 + 5) != 1)
  {
    v3 = result[3];
    v4 = result[4];
    if (result[2])
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && v4 != 0)
    {
      v7 = v3 - 1;
      v8 = result[6];
      v9 = *(a2 + 6);
      v10 = *result;
      v11 = *a2;
      v12 = v4 - 1;
      if (v12)
      {
        v13 = *(a2 + 7);
        v14 = result[7];
        if (v7)
        {
          v15 = 0;
          v16 = v11 + 3;
          result = v10 + 1;
          do
          {
            v17 = result;
            v18 = v16;
            v19 = v7;
            do
            {
              *(v18 - 3) = *(v17 - 1);
              *(v18 - 2) = *v17;
              *(v18 - 1) = v17[1];
              *v18 = v17[2];
              v18 += v9;
              v17 += v8;
              --v19;
            }

            while (v19);
            *(v18 - 3) = *(v17 - 1);
            *(v18 - 2) = *v17;
            *(v18 - 1) = v17[1];
            *v18 = v17[2];
            v10 += v14;
            v11 += v13;
            ++v15;
            v16 += v13;
            result = (result + v14);
          }

          while (v15 != v12);
          goto LABEL_21;
        }

        do
        {
          *v11 = *v10;
          v11[1] = v10[1];
          v11[2] = v10[2];
          v11[3] = v10[3];
          v10 += v14;
          v11 += v13;
          --v12;
        }

        while (v12);
      }

      if (!v7)
      {
LABEL_22:
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        return result;
      }

      do
      {
LABEL_21:
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        v10 += v8;
        v11 += v9;
        --v7;
      }

      while (v7);
      goto LABEL_22;
    }

    return result;
  }

  v20 = result[6];
  v21 = *(a2 + 6);
  v22 = result[2];
  if (v20 != v21 || v20 != v22)
  {
    v25 = result[3];
    v24 = result[4];
    if (v22)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26 || v24 == 0)
    {
      return result;
    }

    v28 = v25 - 1;
    v29 = *result;
    v30 = *a2;
    v31 = v24 - 1;
    if (v24 != 1)
    {
      v32 = *(a2 + 7);
      v33 = result[7];
      if (v25 == 1)
      {
        do
        {
          memmove(v30, v29, v22);
          v29 += v33;
          v30 += v32;
          --v31;
        }

        while (v31);
      }

      else
      {
        v34 = 0;
        v51 = v24 - 1;
        v49 = result[7];
        v50 = *(a2 + 7);
        do
        {
          v35 = v28;
          v36 = v29;
          v37 = v30;
          do
          {
            memmove(v37, v36, v22);
            v36 += v20;
            v37 += v21;
            --v35;
          }

          while (v35);
          memmove(v37, v36, v22);
          v29 += v49;
          v30 += v50;
          ++v34;
        }

        while (v34 != v51);
      }
    }

    for (; v28; --v28)
    {
      memmove(v30, v29, v22);
      v29 += v20;
      v30 += v21;
    }

    goto LABEL_60;
  }

  v38 = result[7];
  v39 = *(a2 + 7);
  v40 = result[3];
  v22 = (v40 * v20);
  if (v38 == v39 && v38 == v22)
  {
    v41 = (result[4] * v38);
    if (!v41)
    {
      return result;
    }

    v42 = *a2;
    v43 = *result;
    v44 = v42;
    goto LABEL_61;
  }

  v45 = result[4];
  if (v20)
  {
    v46 = v40 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (!v46 && v45 != 0)
  {
    v29 = *result;
    v30 = *a2;
    v48 = v45 - 1;
    if (v45 != 1)
    {
      if (!v22)
      {
        return result;
      }

      do
      {
        result = memmove(v30, v29, v22);
        v29 += v38;
        v30 += v39;
        --v48;
      }

      while (v48);
    }

    if (v22)
    {
LABEL_60:
      v44 = v30;
      v43 = v29;
      v41 = v22;
LABEL_61:

      return memmove(v44, v43, v41);
    }
  }

  return result;
}

__int16 sub_23F2734A0@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a1 + 20) == 1 && *(a2 + 20) == 1;
  if (v2)
  {
    v21 = *(a1 + 24);
    v22 = *(a2 + 24);
    v23 = *(a1 + 8);
    if (v21 != v22 || v21 != v23)
    {
      v25 = *(a1 + 12);
      v26 = *(a1 + 16);
      if (v23)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 || v26 == 0)
      {
        return v97;
      }

      v29 = v25 - 1;
      v30 = *a1;
      v31 = *a2;
      v32 = 2 * v22;
      v33 = v26 - 1;
      v201 = *(a2 + 24);
      v202 = *(a1 + 24);
      v200 = *(a1 + 12);
      if (v26 != 1)
      {
        v34 = *(a2 + 28);
        v35 = *(a1 + 28);
        if (v25 != 1)
        {
          v36 = 0;
          v37 = 2 * v21;
          v205 = &v31[v32 / 2] - v30 - 2 * v21;
          v204 = 2 * (v34 - v35);
          v203 = v32 - 2 * v21;
          v38 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v39 = v38 + 1;
          v40 = 2 * v34;
          v41 = 2 * v35;
          v42 = &v31[v23 + v22 * (v25 - 2)];
          v43 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
          v44 = v43;
          v45 = (v38 + 1) & 0xC;
          v46 = (v38 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v47 = v46;
          v48 = &v30[v23 + v21 * (v25 - 2)];
          while (1)
          {
            v49 = 0;
            v51 = v31 < (v48 + v41 * v36) && v30 < (v42 + v40 * v36);
            v52 = v31;
            v53 = v30;
            do
            {
              v54 = v49;
              v55 = v52;
              v56 = v53;
              if (v38 < 3 || v51)
              {
                goto LABEL_54;
              }

              if (v38 >= 0xF)
              {
                v58 = 0;
                v59 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v60 = &v52[v58];
                  v61 = *&v53[v58 + 8];
                  *v60 = *&v53[v58];
                  *(v60 + 1) = v61;
                  v58 += 16;
                  v59 -= 16;
                }

                while (v59);
                if (v39 == v43)
                {
                  goto LABEL_41;
                }

                v57 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v45)
                {
                  v56 = &v53[v44];
                  v55 = &v52[v44];
                  do
                  {
LABEL_54:
                    v64 = *v56++;
                    *v55++ = v64;
                  }

                  while (v56 != &v53[v23]);
                  goto LABEL_41;
                }
              }

              else
              {
                v57 = 0;
              }

              v55 = &v52[v47];
              v56 = &v53[v47];
              v62 = v57;
              v63 = v57 - v46;
              do
              {
                *&v52[v62] = *&v53[v62];
                v62 += 4;
                v63 += 4;
              }

              while (v63);
              if (v39 != v46)
              {
                goto LABEL_54;
              }

LABEL_41:
              v53 = (v53 + v37);
              v52 = (v52 + v32);
              v49 = v54 + 1;
            }

            while (v54 + 1 != v29);
            if (v38 < 3 || (v205 + v204 * v36 + v203 * v54) < 0x20)
            {
              v65 = v52;
              v66 = v53;
              goto LABEL_59;
            }

            if (v38 >= 0xF)
            {
              v70 = 0;
              v71 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v72 = &v52[v70];
                v73 = *&v53[v70 + 8];
                *v72 = *&v53[v70];
                *(v72 + 1) = v73;
                v70 += 16;
                v71 -= 16;
              }

              while (v71);
              if (v39 != v43)
              {
                v69 = (v38 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v45)
                {
                  v66 = &v53[v44];
                  v65 = &v52[v44];
                  goto LABEL_59;
                }

                goto LABEL_68;
              }
            }

            else
            {
              v69 = 0;
LABEL_68:
              v65 = &v52[v47];
              v66 = &v53[v47];
              v74 = v69;
              v75 = v69 - v46;
              do
              {
                *&v52[v74] = *&v53[v74];
                v74 += 4;
                v75 += 4;
              }

              while (v75);
              if (v39 != v46)
              {
LABEL_59:
                v67 = &v53[v23];
                do
                {
                  v68 = *v66++;
                  *v65++ = v68;
                }

                while (v66 != v67);
              }
            }

            v30 = (v30 + v41);
            v31 = (v31 + v40);
            if (++v36 == v33)
            {
              goto LABEL_143;
            }
          }
        }

        v119 = 0;
        v120 = v26 - 2;
        v121 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v122 = v121 + 1;
        v123 = v31 >= &v30[v23 + v35 * v120] || v30 >= &v31[v23 + v34 * v120];
        v124 = v122 & 0xFFFFFFFFFFFFFFF0;
        v125 = v122 & 0xFFFFFFFFFFFFFFFCLL;
        v126 = v122 & 0xFFFFFFFFFFFFFFFCLL;
        v127 = !v123;
        v128 = 2 * v35;
        v129 = 2 * v34;
        do
        {
          v130 = v31;
          v131 = v30;
          if (!((v121 < 3) | v127 & 1))
          {
            if (v121 < 0xF)
            {
              v132 = 0;
LABEL_136:
              v130 = &v31[v126];
              v131 = &v30[v126];
              v137 = v132;
              v138 = v132 - v125;
              do
              {
                *&v31[v137] = *&v30[v137];
                v137 += 4;
                v138 += 4;
              }

              while (v138);
              if (v122 == v125)
              {
                goto LABEL_128;
              }

              goto LABEL_141;
            }

            v133 = 0;
            v134 = v122 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v135 = &v31[v133];
              v136 = *&v30[v133 + 8];
              *v135 = *&v30[v133];
              *(v135 + 1) = v136;
              v133 += 16;
              v134 -= 16;
            }

            while (v134);
            if (v122 == (v122 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_128;
            }

            v132 = v122 & 0xFFFFFFFFFFFFFFF0;
            if ((v122 & 0xC) != 0)
            {
              goto LABEL_136;
            }

            v131 = &v30[v124];
            v130 = &v31[v124];
          }

          do
          {
LABEL_141:
            v139 = *v131++;
            *v130++ = v139;
          }

          while (v131 != &v30[v23]);
LABEL_128:
          v30 = (v30 + v128);
          v31 = (v31 + v129);
          ++v119;
        }

        while (v119 != v33);
      }

LABEL_143:
      if (v29)
      {
        v140 = 0;
        v141 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v142 = v141 + 1;
        v144 = v31 < &v30[v23 + v202 * (v200 - 2)] && v30 < &v31[v23 + v201 * (v200 - 2)];
        v145 = v142 & 0xFFFFFFFFFFFFFFF0;
        v146 = v142 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v147 = v31;
          v148 = v30;
          if (v141 >= 3 && !v144)
          {
            if (v141 < 0xF)
            {
              v149 = 0;
LABEL_159:
              v147 = &v31[v146];
              v148 = &v30[v146];
              v154 = v149;
              v155 = v149 - (v142 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v31[v154] = *&v30[v154];
                v154 += 4;
                v155 += 4;
              }

              while (v155);
              if (v142 == (v142 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_151;
              }

              goto LABEL_164;
            }

            v150 = 0;
            v151 = v142 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v152 = &v31[v150];
              v153 = *&v30[v150 + 8];
              *v152 = *&v30[v150];
              *(v152 + 1) = v153;
              v150 += 16;
              v151 -= 16;
            }

            while (v151);
            if (v142 == (v142 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_151;
            }

            v149 = v142 & 0xFFFFFFFFFFFFFFF0;
            if ((v142 & 0xC) != 0)
            {
              goto LABEL_159;
            }

            v148 = &v30[v145];
            v147 = &v31[v145];
          }

          do
          {
LABEL_164:
            v156 = *v148++;
            *v147++ = v156;
          }

          while (v148 != &v30[v23]);
LABEL_151:
          v30 += v202;
          v31 = (v31 + v32);
          ++v140;
        }

        while (v140 != v29);
      }

      v157 = (v23 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v157 < 3 || (v31 - v30) < 0x20)
      {
        v160 = v31;
        v161 = v30;
        goto LABEL_198;
      }

      v158 = v157 + 1;
      if (v157 >= 0xF)
      {
        v159 = v158 & 0xFFFFFFFFFFFFFFF0;
        v162 = (v30 + 8);
        v163 = v31 + 8;
        v164 = v158 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v162 - 1);
          v165 = *v162;
          *(v163 - 1) = v97;
          *v163 = v165;
          v162 += 2;
          v163 += 2;
          v164 -= 16;
        }

        while (v164);
        if (v158 == v159)
        {
          return v97;
        }

        if ((v158 & 0xC) == 0)
        {
          v192 = v159;
          v161 = &v30[v192];
          v160 = &v31[v192];
          goto LABEL_198;
        }
      }

      else
      {
        v159 = 0;
      }

      v166 = v158 & 0xFFFFFFFFFFFFFFFCLL;
      v160 = &v31[v166];
      v161 = &v30[v166];
      v167 = &v30[v159];
      v168 = &v31[v159];
      v169 = v159 - (v158 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v170 = *v167++;
        LOWORD(v97) = v170;
        *v168 = v170;
        v168 += 4;
        v169 += 4;
      }

      while (v169);
      if (v158 == (v158 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_198:
      v193 = &v30[v23];
      do
      {
        v194 = *v161++;
        LOWORD(v97) = v194;
        *v160++ = v194;
      }

      while (v161 != v193);
      return v97;
    }

    v76 = *(a1 + 28);
    v77 = *(a2 + 28);
    v78 = *(a1 + 12);
    v79 = (v78 * v21);
    if (v76 == v77 && v76 == v79)
    {
      v80 = (*(a1 + 16) * v76);
      if (!v80)
      {
        return v97;
      }

      v81 = *a1;
      v82 = *a2;
      v83 = (v80 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v83 < 3)
      {
        v84 = *a1;
        goto LABEL_202;
      }

      v84 = *a1;
      if ((v82 - v81) < 0x20)
      {
        goto LABEL_202;
      }

      v85 = v83 + 1;
      if (v83 >= 0xF)
      {
        v86 = v85 & 0xFFFFFFFFFFFFFFF0;
        v171 = (v81 + 8);
        v172 = v82 + 8;
        v173 = v85 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v171 - 1);
          v174 = *v171;
          *(v172 - 1) = v97;
          *v172 = v174;
          v171 += 2;
          v172 += 2;
          v173 -= 16;
        }

        while (v173);
        if (v85 == v86)
        {
          return v97;
        }

        if ((v85 & 0xC) == 0)
        {
          v84 = &v81[v86];
          v82 += v86;
          goto LABEL_202;
        }
      }

      else
      {
        v86 = 0;
      }

      v175 = v85 & 0xFFFFFFFFFFFFFFFCLL;
      v176 = &v82[v175];
      v84 = &v81[v175];
      v177 = &v81[v86];
      v178 = &v82[v86];
      v179 = v86 - (v85 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v180 = *v177++;
        LOWORD(v97) = v180;
        *v178 = v180;
        v178 += 4;
        v179 += 4;
      }

      while (v179);
      v82 = v176;
      if (v85 == (v85 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_202:
      v195 = &v81[v80];
      do
      {
        v196 = *v84++;
        LOWORD(v97) = v196;
        *v82++ = v196;
      }

      while (v84 != v195);
      return v97;
    }

    v87 = *(a1 + 16);
    if (v21)
    {
      v88 = v78 == 0;
    }

    else
    {
      v88 = 1;
    }

    if (v88 || v87 == 0)
    {
      return v97;
    }

    v90 = *a1;
    v91 = *a2;
    if (v87 == 1)
    {
LABEL_88:
      if (!v79)
      {
        return v97;
      }

      v92 = (v79 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v92 < 3 || (v91 - v90) < 0x20)
      {
        v181 = v91;
        v182 = v90;
        goto LABEL_206;
      }

      v93 = v92 + 1;
      if (v92 >= 0xF)
      {
        v94 = v93 & 0xFFFFFFFFFFFFFFF0;
        v183 = (v90 + 8);
        v184 = v91 + 8;
        v185 = v93 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v97 = *(v183 - 1);
          v186 = *v183;
          *(v184 - 1) = v97;
          *v184 = v186;
          v183 += 2;
          v184 += 2;
          v185 -= 16;
        }

        while (v185);
        if (v93 == v94)
        {
          return v97;
        }

        if ((v93 & 0xC) == 0)
        {
          v182 = &v90[v94];
          v181 = &v91[v94];
          goto LABEL_206;
        }
      }

      else
      {
        v94 = 0;
      }

      v187 = v93 & 0xFFFFFFFFFFFFFFFCLL;
      v181 = &v91[v187];
      v182 = &v90[v187];
      v188 = &v90[v94];
      v189 = &v91[v94];
      v190 = v94 - (v93 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v191 = *v188++;
        LOWORD(v97) = v191;
        *v189 = v191;
        v189 += 4;
        v190 += 4;
      }

      while (v190);
      if (v93 == (v93 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v97;
      }

LABEL_206:
      v197 = &v90[v79];
      do
      {
        v198 = *v182++;
        LOWORD(v97) = v198;
        *v181++ = v198;
      }

      while (v182 != v197);
      return v97;
    }

    if (!v79)
    {
      return v97;
    }

    v98 = 0;
    v99 = v87 - 2;
    v100 = (v79 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v101 = v100 + 1;
    v102 = v91 >= &v90[v79 + v76 * v99] || v90 >= &v91[v79 + v77 * v99];
    v103 = v101 & 0xFFFFFFFFFFFFFFF0;
    v104 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v105 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = !v102;
    v107 = 2 * v76;
    v108 = 2 * v77;
    while (1)
    {
      v109 = v91;
      v110 = v90;
      if (!((v100 < 3) | v106 & 1))
      {
        if (v100 < 0xF)
        {
          v111 = 0;
LABEL_114:
          v109 = &v91[v105];
          v110 = &v90[v105];
          v116 = v111;
          v117 = v111 - v104;
          do
          {
            *&v97 = *&v90[v116];
            *&v91[v116] = v97;
            v116 += 4;
            v117 += 4;
          }

          while (v117);
          if (v101 == v104)
          {
            goto LABEL_106;
          }

          goto LABEL_119;
        }

        v112 = 0;
        v113 = v101 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v114 = &v91[v112];
          v97 = *&v90[v112];
          v115 = *&v90[v112 + 8];
          *v114 = v97;
          *(v114 + 1) = v115;
          v112 += 16;
          v113 -= 16;
        }

        while (v113);
        if (v101 == (v101 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_106;
        }

        v111 = v101 & 0xFFFFFFFFFFFFFFF0;
        if ((v101 & 0xC) != 0)
        {
          goto LABEL_114;
        }

        v110 = &v90[v103];
        v109 = &v91[v103];
      }

      do
      {
LABEL_119:
        v118 = *v110++;
        LOWORD(v97) = v118;
        *v109++ = v118;
      }

      while (v110 != &v90[v79]);
LABEL_106:
      v90 = (v90 + v107);
      v91 = (v91 + v108);
      v2 = v98++ == v99;
      if (v2)
      {
        goto LABEL_88;
      }
    }
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a1;
    v9 = *a2;
    v10 = 2 * *(a1 + 24);
    v11 = 2 * *(a2 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a2 + 28);
      v14 = *(a1 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v9 + 2;
        v17 = v8 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19[1] = v18[1];
            v19 = (v19 + v11);
            v18 = (v18 + v10);
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v8 += v14;
          v9 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_96;
      }

      v95 = 2 * v14;
      v96 = 2 * v13;
      do
      {
        *v9 = *v8;
        v9[1] = v8[1];
        v9[2] = v8[2];
        v9[3] = v8[3];
        v8 = (v8 + v95);
        v9 = (v9 + v96);
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_97:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      LOWORD(v97) = v8[3];
      v9[3] = v97;
      return v97;
    }

    do
    {
LABEL_96:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_97;
  }

  return v97;
}