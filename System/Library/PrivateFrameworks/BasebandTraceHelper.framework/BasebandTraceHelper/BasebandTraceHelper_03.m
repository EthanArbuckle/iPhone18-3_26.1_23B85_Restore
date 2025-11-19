void sub_241A3BBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__state<char>::~__state(va);
  std::deque<std::__state<char>>::~deque[abi:ne200100]((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  *&v67[36] = -1431655766;
  *v65 = 0xAAAAAAAA00000000;
  memset(&v65[8], 0, 32);
  *v66 = 0u;
  memset(v67, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v53 = 0;
    v54 = *v67;
    if (!*v67)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v63 = 0;
  memset(&v63[8], 0, 85);
  v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
  if (*&v63[56])
  {
    *&v63[64] = *&v63[56];
    operator delete(*&v63[56]);
  }

  if (*&v63[32])
  {
    *&v63[40] = *&v63[32];
    operator delete(*&v63[32]);
  }

  v13 = v69;
  *(v69 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v69;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v61 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v18 - v19);
    v13 = v69;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v62 = a3;
  v23 = (a3 - a2);
  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v24 = (++v22 & 0xFFF) != 0 || (v22 >> 12) < v23;
    if (!v24)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v26 = v13 - 1;
    v25 = *(v13 - 2);
    v27 = v13 - 6;
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 6);
    }

    v28 = *v27;
    if (*v27 <= -994)
    {
      if ((v28 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v28 != -1000)
      {
LABEL_84:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      v29 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v29 == a2 || (a5 & 0x1000) != 0 && v29 != v62)
      {
LABEL_34:
        v30 = v69;
        v31 = *(v69 - 5);
        if (v31)
        {
          *(v69 - 4) = v31;
          operator delete(v31);
        }

        v32 = *(v30 - 8);
        if (v32)
        {
          *(v30 - 7) = v32;
          operator delete(v32);
        }

        v69 = v30 - 6;
        goto LABEL_16;
      }

      v37 = v20;
      v38 = &v29[-*(v13 - 11)];
      if ((v21 & (v37 >= v38)) == 0)
      {
        v39 = *(v13 - 5);
        *v65 = *v27;
        *&v65[16] = v39;
        if (v65 != v27)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v65[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v67, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v40 = *v26;
        *&v67[29] = *(v13 - 11);
        *&v67[24] = v40;
        v37 = v38;
      }

      v41 = v69;
      if (v37 == v23)
      {
        v42 = v68;
        while (v41 != v42)
        {
          v43 = *(v41 - 5);
          if (v43)
          {
            *(v41 - 4) = v43;
            operator delete(v43);
          }

          v44 = *(v41 - 8);
          if (v44)
          {
            *(v41 - 7) = v44;
            operator delete(v44);
          }

          v41 -= 6;
        }

        v69 = v42;
        v21 = 1;
        v20 = v23;
      }

      else
      {
        v20 = v37;
        v45 = *(v69 - 5);
        if (v45)
        {
          *(v69 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v41 - 8);
        if (v46)
        {
          *(v41 - 7) = v46;
          operator delete(v46);
        }

        v69 = v41 - 6;
        v21 = 1;
      }
    }

    else
    {
      switch(v28)
      {
        case -993:
          goto LABEL_34;
        case -992:
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v63[64] = v33;
          *&v63[80] = v33;
          *&v63[32] = v33;
          *&v63[48] = v33;
          *v63 = v33;
          *&v63[16] = v33;
          std::__state<char>::__state(v63, v13 - 6);
          (*(**v26 + 24))(*v26, 1, v13 - 6);
          (*(**&v63[80] + 24))(*&v63[80], 0, v63);
          v34 = v69;
          if (v69 >= v70)
          {
            v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
            if (*&v63[56])
            {
              *&v63[64] = *&v63[56];
              operator delete(*&v63[56]);
            }
          }

          else
          {
            v35 = *&v63[16];
            *v69 = *v63;
            v34[1] = v35;
            *(v34 + 6) = 0;
            *(v34 + 7) = 0;
            *(v34 + 4) = 0;
            *(v34 + 5) = 0;
            v34[2] = *&v63[32];
            *(v34 + 6) = *&v63[48];
            *&v63[32] = 0;
            *&v63[40] = 0;
            *(v34 + 8) = 0;
            *(v34 + 9) = 0;
            *(v34 + 56) = *&v63[56];
            *(v34 + 9) = *&v63[72];
            memset(&v63[48], 0, 32);
            v36 = *&v63[80];
            *(v34 + 85) = *&v63[85];
            *(v34 + 10) = v36;
            v69 = v34 + 6;
          }

          if (*&v63[32])
          {
            *&v63[40] = *&v63[32];
            operator delete(*&v63[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v69;
  }

  while (v68 != v69);
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  v47 = *v61;
  *v47 = a2;
  *(v47 + 8) = &v20[a2];
  *(v47 + 16) = 1;
  if (v66[0] != *&v65[32])
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v66[0] - *&v65[32]) >> 3);
    v49 = (*&v65[32] + 16);
    v50 = 1;
    do
    {
      v51 = v47 + 24 * v50;
      *v51 = *(v49 - 1);
      v52 = *v49;
      v49 += 24;
      *(v51 + 16) = v52;
      v24 = v48 > v50++;
    }

    while (v24);
  }

  v53 = 1;
  v54 = *v67;
  if (*v67)
  {
LABEL_70:
    *&v67[8] = v54;
    operator delete(v54);
  }

LABEL_71:
  if (*&v65[32])
  {
    v66[0] = *&v65[32];
    operator delete(*&v65[32]);
  }

  v55 = v68;
  if (v68)
  {
    v56 = v69;
    v57 = v68;
    if (v69 != v68)
    {
      do
      {
        v58 = *(v56 - 5);
        if (v58)
        {
          *(v56 - 4) = v58;
          operator delete(v58);
        }

        v59 = *(v56 - 8);
        if (v59)
        {
          *(v56 - 7) = v59;
          operator delete(v59);
        }

        v56 -= 6;
      }

      while (v56 != v55);
      v57 = v68;
    }

    v69 = v55;
    operator delete(v57);
  }

  return v53;
}

void sub_241A3C23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a27);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v27 - 120));
  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void std::deque<std::__state<char>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      std::__split_buffer<char **>::emplace_back<char **&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<char **>::emplace_back<char **&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_241A3C700(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x2A)
  {
    *(a1 + 32) = v5 + 42;
    v41 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<char **>::emplace_back<char **&>(a1, &v41);
      v37 = *(a1 + 16);
      v41 = *(v37 - 8);
      *(a1 + 16) = v37 - 8;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
LABEL_9:
        v9 = 21;
LABEL_42:
        *(a1 + 32) = v9;
        return;
      }
    }

    v9 = *(a1 + 32) + 42;
    goto LABEL_42;
  }

  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 2;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = operator new(8 * v10);
  v12 = operator new(0xFC0uLL);
  v13 = v12;
  if (v10)
  {
    v14 = &v11[8 * v10];
    *v11 = v12;
    v15 = v11 + 8;
    if (v3 != v2)
    {
LABEL_16:
      v16 = v11;
      while (1)
      {
        if (v15 == v14)
        {
          if (v16 <= v11)
          {
            if (v15 == v11)
            {
              v20 = 1;
            }

            else
            {
              v20 = (v15 - v11) >> 2;
            }

            if (v20 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v21 = operator new(8 * v20);
            v22 = v21;
            v23 = v20 >> 2;
            v17 = &v21[8 * (v20 >> 2)];
            v25 = v15 - v16;
            v24 = v15 == v16;
            v15 = v17;
            if (!v24)
            {
              v15 = &v17[v25];
              v26 = v25 - 8;
              if (v26 < 0x18 || (v27 = 8 * v23, (&v21[8 * v23] - v16) < 0x20))
              {
                v28 = &v21[8 * (v20 >> 2)];
                v29 = v16;
                goto LABEL_32;
              }

              v31 = (v26 >> 3) + 1;
              v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
              v28 = &v17[v32];
              v29 = &v16[v32];
              v33 = (v16 + 16);
              v34 = &v21[v27 + 16];
              v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v36 = *v33;
                *(v34 - 1) = *(v33 - 1);
                *v34 = v36;
                v33 += 2;
                v34 += 32;
                v35 -= 4;
              }

              while (v35);
              if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_32:
                  v30 = *v29;
                  v29 += 8;
                  *v28 = v30;
                  v28 += 8;
                }

                while (v28 != v15);
              }
            }

            v14 = &v21[8 * v20];
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v22;
            goto LABEL_18;
          }

          v19 = (((v16 - v11) >> 3) + 1 + ((((v16 - v11) >> 3) + 1) >> 63)) >> 1;
          v17 = &v16[-8 * v19];
          if (v15 != v16)
          {
            memmove(&v16[-8 * v19], v16, v15 - v16);
          }

          v15 = &v17[v15 - v16];
        }

        else
        {
          v17 = v16;
        }

LABEL_18:
        v18 = *v3;
        v3 += 8;
        *v15 = v18;
        v15 += 8;
        v16 = v17;
        if (v3 == *(a1 + 16))
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    v38 = operator new(8uLL);
    v14 = v38 + 8;
    operator delete(v11);
    v3 = *(a1 + 8);
    v39 = *(a1 + 16);
    v11 = v38;
    *v38 = v13;
    v15 = v38 + 8;
    if (v3 != v39)
    {
      goto LABEL_16;
    }
  }

  v17 = v11;
LABEL_45:
  v40 = *a1;
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 21;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 42;
    if (!v40)
    {
      return;
    }
  }

  operator delete(v40);
}

void sub_241A3CC14(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void **std::deque<std::__state<char>>::~deque[abi:ne200100](void **a1)
{
  std::deque<std::__state<char>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) >= a4)
  {
    v16 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - result) >> 3) >= a4)
    {
      while (v5 != a3)
      {
        *result = *v5;
        result[16] = v5[16];
        v5 += 24;
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v17 = &a2[v16 - result];
      if (v16 != result)
      {
        do
        {
          *result = *v5;
          result[16] = v5[16];
          v5 += 24;
          result += 24;
        }

        while (v5 != v17);
      }

      if (v17 == a3)
      {
        a1[1] = v16;
      }

      else
      {
        v18 = v16;
        do
        {
          v19 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v19;
          v16 += 24;
          v17 += 24;
          v18 += 24;
        }

        while (v17 != a3);
        a1[1] = v18;
      }
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_25;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    v12 = v10 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v11;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_25:
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * v12;
    result = operator new(24 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    if (v5 != a3)
    {
      v15 = 24 * ((a3 - v5 - 24) / 0x18uLL) + 24;
      result = memcpy(result, v5, v15);
      v14 += v15;
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = (a2 + 32);
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          v54[1] = v58;
          v54 += 4;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = (a2 + 32);
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          v38[1] = v42;
          v38 += 4;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v5 = v4 + __n;
    if (v4 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v8 = __n;
      v9 = this;
      v10 = operator new(24 * v7);
      this = v9;
      __n = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * __n;
    v15 = &v13[24 * __n];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    begin = this->__begin_;
    v19 = &v13[(this->__begin_ - end)];
    if (end != this->__begin_)
    {
      v20 = v19;
      do
      {
        v21 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *&v20->matched = *&begin->matched;
        v20->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v21;
        ++v20;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = v15;
    this->__end_cap_.__value_ = v17;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = MEMORY[0x245CF5A90]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(a1, v8, &v8[v7]) != &v8[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_241A3D3E8(_Unwind_Exception *a1)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2853A2830;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2853A2888;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
          }

          goto LABEL_15;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      else
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x80u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x100u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_241A3D658(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v22 = *(a1 + 56);
      v23 = (&v8->__traits_.__loc_.__locale_ + 1);
      v24 = &v8->__traits_.__loc_.__locale_ + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_2853A2E48;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_2853A2E90;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_2853A2980;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_2853A29C8;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &unk_2853A2E48;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &unk_2853A2E90;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2853A2E48;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2853A2E90;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2853A2E48;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2853A2E90;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_2853A2A10;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2853A2980;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2853A29C8;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = v26->__flags_;
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = v7->__flags_;
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x3E)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) > 0x5Bu)
    {
      if (locale_low == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      if (locale_low != 123)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (locale_low != 91)
    {
      if (locale_low != 63)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_32:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  if (locale_low != 40)
  {
    if (locale_low == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = &unk_2853A2AA0;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return (&v5->__traits_.__loc_.__locale_ + 1);
    }

    if (locale_low - 42 >= 2)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if ((&a2->__traits_.__loc_.__locale_ + 1) == a3)
  {
LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v10 = a1;
  if ((&a2->__traits_.__loc_.__locale_ + 2) != a3 && BYTE1(a2->__traits_.__loc_.__locale_) == 63 && BYTE2(a2->__traits_.__loc_.__locale_) == 58)
  {
    ++*(a1 + 36);
    v11 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
    if (v12 != v11 && LOBYTE(v12->__traits_.__loc_.__locale_) == 41)
    {
      --*(v10 + 36);
      return (&v12->__traits_.__loc_.__locale_ + 1);
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v13 = a3;
    v14 = operator new(0x18uLL);
    a3 = v13;
    v15 = v14;
    a1 = v10;
    v16 = *(v10 + 28) + 1;
    *(v10 + 28) = v16;
    v17 = *(v10 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2853A2CE0;
    v15[1] = v18;
    *(v15 + 4) = v16;
    *(v17 + 8) = v15;
    *(v10 + 56) = v15;
  }

  ++*(a1 + 36);
  v19 = a3;
  v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
  if (v20 == v19)
  {
    goto LABEL_33;
  }

  v21 = v20;
  if (LOBYTE(v20->__traits_.__loc_.__locale_) != 41)
  {
    goto LABEL_33;
  }

  v22 = v10;
  if ((*(v10 + 24) & 2) == 0)
  {
    v23 = operator new(0x18uLL);
    v22 = v10;
    v24 = *(v10 + 56);
    v25 = *(v24 + 8);
    *v23 = &unk_2853A2D28;
    v23[1] = v25;
    *(v23 + 4) = v16;
    *(v24 + 8) = v23;
    *(v10 + 56) = v23;
  }

  --*(v22 + 36);
  return (&v21->__traits_.__loc_.__locale_ + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v9, v16, a4, __mexp_begin, __mexp_end, v17);
                  return v6;
                }

                v9 = v12;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                goto LABEL_34;
              }

              v9 = v12;
              __mexp_begin = __mexp_begin;
              __mexp_end = __mexp_end;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    __mexp_begin = __mexp_begin;
                    __mexp_end = __mexp_end;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      goto LABEL_34;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3 && LOBYTE(this->__traits_.__loc_.__locale_) == 92)
  {
    v4 = &this->__traits_.__loc_.__locale_ + 1;
    if (a3 == (&this->__traits_.__loc_.__locale_ + 1))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      return (v3 + 2);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 = (v3 + 2);
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          locale_low = LOBYTE(v3->__traits_.__loc_.__locale_);
          if ((locale_low - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          v3 = (v3 + 1);
          v6 = locale_low + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v6 > a1->__marked_count_)
      {
        goto LABEL_23;
      }

      v10 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v10 + 1;
  }

  return a2;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v5 = (locale_low - 36) > 0x3A || ((1 << (locale_low - 36)) & 0x7800000080004F1) == 0;
  if (!v5 || (locale_low - 123) < 3)
  {
    return this;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
  return (&this->__traits_.__loc_.__locale_ + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (this)
        {
          std::string::operator=(this, 12);
          return (v4 + 1);
        }

        v8 = 12;
        goto LABEL_68;
      }

      if (v5 == 110)
      {
        if (this)
        {
          std::string::operator=(this, 10);
          return (v4 + 1);
        }

        v8 = 10;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v5)
      {
        case '0':
          if (this)
          {
            std::string::operator=(this, 0);
            return (v4 + 1);
          }

          v8 = 0;
          goto LABEL_68;
        case 'c':
          v4 = (a2 + 1);
          if (a2 + 1 == a3)
          {
            goto LABEL_69;
          }

          if (*v4 < 65)
          {
            goto LABEL_69;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_69;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
LABEL_67:
            std::string::operator=(this, v8);
            return (v4 + 1);
          }

LABEL_68:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
          return (v4 + 1);
        case '_':
          goto LABEL_69;
      }
    }

LABEL_64:
    if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
    {
      goto LABEL_69;
    }

    v8 = *a2;
    if (this)
    {
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (this)
      {
        std::string::operator=(this, 13);
        return (v4 + 1);
      }

      v8 = 13;
      goto LABEL_68;
    }

    if (v5 == 116)
    {
      if (this)
      {
        std::string::operator=(this, 9);
        return (v4 + 1);
      }

      v8 = 9;
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (v5 != 117)
  {
    if (v5 == 118)
    {
      if (this)
      {
        std::string::operator=(this, 11);
        return (v4 + 1);
      }

      v8 = 11;
      goto LABEL_68;
    }

    if (v5 == 120)
    {
      v6 = 0;
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_69;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_69;
  }

  v4 = (a2 + 2);
  if (a2 + 2 == a3)
  {
    goto LABEL_69;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_69;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_69;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_69;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_69;
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
  {
    goto LABEL_51;
  }

  v15 |= 0x20u;
  if ((v15 - 97) >= 6)
  {
LABEL_69:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v16 = -87;
LABEL_51:
  v17 = v15 + 16 * (v6 + v14 + v13) + v16;
  if (this)
  {
    std::string::operator=(this, v17);
    v4 += 3;
    return v4;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
  return (v4 + 3);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v9 = a2 + 1;
  memset(&v28, 0, sizeof(v28));
  if (a2 + 1 != a3 && v5 == 91)
  {
    v10 = *v9;
    switch(v10)
    {
      case '.':
        v17 = a2 + 2;
        if (a3 - (a2 + 2) >= 2 && a3 - 1 != v17)
        {
          v18 = a2 + 2;
          v19 = v9 + 2;
          if (*(v19 - 1) != 46)
          {
            goto LABEL_29;
          }

LABEL_28:
          if (*v19 == 93)
          {
            if (a3 != v18)
            {
              std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, v17, v18, &v29);
              if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28.__r_.__value_.__l.__data_);
              }

              v28 = v29;
              size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
              if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v28.__r_.__value_.__l.__size_;
              }

              if (size - 1 >= 2)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              v13 = v18 + 2;
              v11 = *(a1 + 24) & 0x1F0;
              if (v13 == a3)
              {
LABEL_46:
                if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (!v28.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_63;
                  }

                  if (v28.__r_.__value_.__l.__size_ != 1)
                  {
                    v23 = v28.__r_.__value_.__r.__words[0];
LABEL_62:
                    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, v23->__r_.__value_.__s.__data_[0], v23->__r_.__value_.__s.__data_[1]);
                    goto LABEL_63;
                  }

                  v23 = v28.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if (!*(&v28.__r_.__value_.__s + 23))
                  {
                    goto LABEL_63;
                  }

                  v23 = &v28;
                  if (HIBYTE(v28.__r_.__value_.__r.__words[2]) != 1)
                  {
                    goto LABEL_62;
                  }
                }

                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, v23->__r_.__value_.__s.__data_[0]);
                goto LABEL_63;
              }

              goto LABEL_45;
            }
          }

          else
          {
LABEL_29:
            while (v19 != a3 - 1)
            {
              ++v18;
              if (*v19++ == 46)
              {
                goto LABEL_28;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
      case ':':
        v14 = a2 + 2;
        if (a3 - (a2 + 2) >= 2 && a3 - 1 != v14)
        {
          v15 = a2 + 2;
          v16 = a2 + 3;
          if (a2[2] != 58)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (*v16 == 93)
          {
            if (a3 != v15)
            {
              v20 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, v14, v15, *(a1 + 24) & 1);
              if (!v20)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              *(a4 + 160) |= v20;
              if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_64;
              }

              return;
            }
          }

          else
          {
LABEL_22:
            while (v16 != a3 - 1)
            {
              ++v15;
              if (*v16++ == 58)
              {
                goto LABEL_21;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
      case '=':
        std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_64;
    }
  }

  v11 = *(a1 + 24) & 0x1F0;
  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v12 = *a2;
    if (v12 == 92)
    {
      if (v11)
      {
        v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, &v28);
        if (v13 == a3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, &v28, a4);
        v11 = 0;
        if (v13 == a3)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_45;
    }
  }

  else
  {
    LOBYTE(v12) = *a2;
  }

  std::string::operator=(&v28, v12);
  v13 = a2 + 1;
  if (v13 == a3)
  {
    goto LABEL_46;
  }

LABEL_45:
  v22 = *v13;
  if (v22 == 93)
  {
    goto LABEL_46;
  }

  v24 = v13 + 1;
  if (v13 + 1 == a3 || v22 != 45 || *v24 == 93)
  {
    goto LABEL_46;
  }

  memset(&v29, 0, sizeof(v29));
  v25 = v13 + 2;
  if (v24 + 1 != a3 && *v24 == 91 && *v25 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v24 + 2, a3, &v29);
    goto LABEL_73;
  }

  if ((v11 | 0x40) != 0x40)
  {
    LOBYTE(v24) = *v24;
    goto LABEL_71;
  }

  LODWORD(v24) = *v24;
  if (v24 != 92)
  {
LABEL_71:
    std::string::operator=(&v29, v24);
    goto LABEL_73;
  }

  if (v11)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v25, a3, &v29);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v25, a3, &v29, a4);
  }

LABEL_73:
  v27 = v28;
  memset(&v28, 0, sizeof(v28));
  __p = v29;
  memset(&v29, 0, sizeof(v29));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, &v27, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(v27.__r_.__value_.__l.__data_);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_79;
    }

LABEL_63:
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_64;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_79:
  operator delete(v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_64:
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_241A3F748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_241A3FA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::string::value_type *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v6 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }
    }

    else
    {
      if (v6 == 98)
      {
        std::string::operator=(this, 8);
        return a2 + 1;
      }

      if (v6 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }
    }
  }

  else if (*a2 > 0x52u)
  {
    if (v6 == 83)
    {
      *(a5 + 164) |= 0x4000u;
      return a2 + 1;
    }

    if (v6 == 87)
    {
      *(a5 + 164) |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
      return a2 + 1;
    }
  }

  else
  {
    if (!*a2)
    {
      std::string::operator=(this, 0);
      return a2 + 1;
    }

    if (v6 == 68)
    {
      *(a5 + 164) |= 0x400u;
      return a2 + 1;
    }
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_63;
  }

  v5 = *a2;
  if (v5 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (this)
        {
          std::string::operator=(this, 12);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
        }

        return a2 + 1;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_40;
        }

        if (this)
        {
          std::string::operator=(this, 10);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
        }

        return a2 + 1;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (this)
          {
            std::string::operator=(this, 13);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
          }

          return a2 + 1;
        case 't':
          if (this)
          {
            std::string::operator=(this, 9);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
          }

          return a2 + 1;
        case 'v':
          if (this)
          {
            std::string::operator=(this, 11);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
          }

          return a2 + 1;
        default:
          goto LABEL_40;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_40;
    }

    goto LABEL_19;
  }

  if (v5 == 92)
  {
LABEL_19:
    if (this)
    {
      std::string::operator=(this, v5);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    }

    return a2 + 1;
  }

  if (v5 != 97)
  {
    if (v5 == 98)
    {
      if (this)
      {
        std::string::operator=(this, 8);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
      }

      return a2 + 1;
    }

LABEL_40:
    if ((v5 & 0xF8) == 0x30)
    {
      v7 = v5 - 48;
      if (a2 + 1 == a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a2 + 1;
        v9 = a2[1];
        if ((v9 & 0xF8) == 0x30)
        {
          v10 = v9 + 8 * v7 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v10 - 48;
            if (v12 == 48)
            {
              v8 = a2 + 3;
            }

            else
            {
              v8 = a2 + 2;
            }

            if (v12 == 48)
            {
              v10 = v13;
            }

            v14 = v10;
            if (!this)
            {
              goto LABEL_62;
            }

LABEL_60:
            std::string::operator=(this, v14);
            return v8;
          }

          v8 = a3;
          v14 = v10;
          if (this)
          {
            goto LABEL_60;
          }

LABEL_62:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
          return v8;
        }
      }

      v14 = v7;
      if (this)
      {
        goto LABEL_60;
      }

      goto LABEL_62;
    }

LABEL_63:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (this)
  {
    std::string::operator=(this, 7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
  }

  return a2 + 1;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(&__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    *(&__dst.__r_.__value_.__s + 23) = a3 - a2;
    p_dst = &__dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(p_dst, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  p_dst = v11;
  __dst.__r_.__value_.__l.__size_ = v5;
  __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = __dst.__r_.__value_.__r.__words[0];
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    v12 = &__dst;
  }

  std::__get_collation_name(&v17, v12);
  *a4 = *&v17.__r_.__value_.__l.__data_;
  v13 = v17.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v17.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v12 = __dst.__r_.__value_.__r.__words[0];
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v12 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_23;
    }

LABEL_25:
    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 != 1 && v16 != 12)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 != 12 && v15 != 1)
      {
        *a4 = 0;
        *(a4 + 23) = 0;
        goto LABEL_17;
      }
    }

    std::string::operator=(a4, &__dst);
    goto LABEL_17;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 3)
  {
    goto LABEL_25;
  }
}

void sub_241A40230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_241A403CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || v4 + 1 == a3 || *v6 != 92)
  {
    return v4;
  }

  v7 = v4[1];
  if (v7 == 40)
  {
    v6 = v4 + 2;
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = &unk_2853A2CE0;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v14 + 1 == a3 || *v14 != 92)
      {
        goto LABEL_31;
      }

      if (v14[1] == 41)
      {
        v4 = v14 + 2;
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = &unk_2853A2D28;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
  return v4 + 2;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    v7 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (&v7->__traits_.__loc_.__locale_ + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92)
  {
    return this;
  }

  v9 = BYTE1(this->__traits_.__loc_.__locale_) == 123 ? (&this->__traits_.__loc_.__locale_ + 2) : this;
  if (v9 == this)
  {
    return this;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = &v9->__traits_.__loc_.__locale_ + 1;
  if ((&v9->__traits_.__loc_.__locale_ + 1) == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = *v12;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    if (++v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = *v12;
  v15 = (v12 + 1);
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = LOBYTE(v15->__traits_.__loc_.__locale_);
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = (v12 + 2);
      if (v12 + 2 == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = LOBYTE(v15->__traits_.__loc_.__locale_);
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        v15 = (v15 + 1);
        if (v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if ((&v15->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v15->__traits_.__loc_.__locale_) != 92)
      {
        goto LABEL_55;
      }

      if (BYTE1(v15->__traits_.__loc_.__locale_) == 125)
      {
        a3 = (&v15->__traits_.__loc_.__locale_ + 2);
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_53;
      }

LABEL_54:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = (v12[1] == 125 ? v12 + 2 : v12);
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  __mexp_begin = __mexp_begin;
  __mexp_end = __mexp_end;
  v21 = v10;
LABEL_53:
  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v20, v21, a4, __mexp_begin, __mexp_end, 1);
  return v19;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      end = v14->__end_;
      first = end->__first_;
      v15->__vftable = &unk_2853A2ED8;
      v15->__first_ = first;
      end->__first_ = v15;
      v14->__end_ = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2853A29C8;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = &unk_2853A2CE0;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = &unk_2853A2D28;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2853A2980;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, v6, (v7 + 1), v23);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!a1->__open_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      end = a1->__end_;
      first = end->__first_;
      v10->__vftable = &unk_2853A2ED8;
      v10->__first_ = first;
      end->__first_ = v10;
      a1->__end_ = v10;
      return v9 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void TracePeakDataRateObserver::create(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  _ZNSt3__115allocate_sharedB8ne200100I25TracePeakDataRateObserverNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(a2);
  v4 = *a2;
  *(v4 + 104) = (1000000 * *a1);
  *(v4 + 96) = *(a1 + 4);
}

uint64_t TracePeakDataRateObserver::init(uint64_t result, uint64_t a2)
{
  *(result + 104) = (1000000 * *a2);
  *(result + 96) = *(a2 + 4);
  return result;
}

void TracePeakDataRateObserver::TracePeakDataRateObserver(TracePeakDataRateObserver *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  strcpy(__p, "trace.dataRateObserver");
  v3 = 22;
  ctu::OsLogLogger::OsLogLogger((this + 24), "com.apple.telephony", __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  strcpy(__p, "trace.dataRateObserver");
  v3 = 22;
  ctu::OsLogLogger::OsLogLogger((this + 24), "com.apple.telephony", __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
}

void sub_241A40F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    v16 = *(v14 + 8);
    if (!v16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = *(v14 + 8);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(exception_object);
}

void sub_241A4107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    v16 = *(v14 + 8);
    if (!v16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = *(v14 + 8);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(exception_object);
}

void TracePeakDataRateObserver::snapshot(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = &v36;
  v37 = &v36;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 0x40000000;
  v30[2] = ___ZN25TracePeakDataRateObserver8snapshotENSt3__110shared_ptrIN3abm5trace9TraceInfoEEE_block_invoke;
  v30[3] = &unk_278D04810;
  v30[4] = &v31;
  v30[5] = a1;
  os_unfair_lock_lock((a1 + 16));
  ___ZN25TracePeakDataRateObserver8snapshotENSt3__110shared_ptrIN3abm5trace9TraceInfoEEE_block_invoke(v30);
  os_unfair_lock_unlock((a1 + 16));
  if (v32[7])
  {
    v3 = xpc_array_create(0, 0);
    v4 = MEMORY[0x277D86440];
    if (v3 || (v3 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x245CF6530](v3) == v4)
      {
        xpc_retain(v3);
        v5 = v3;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      v3 = 0;
    }

    xpc_release(v3);
    if (MEMORY[0x245CF6530](v5) == v4)
    {
      v7 = v32 + 5;
      v8 = v32[6];
      if (v8 != v32 + 5)
      {
        v9 = MEMORY[0x277D86468];
        do
        {
          v10 = xpc_dictionary_create(0, 0, 0);
          if (v10 || (v10 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x245CF6530](v10) == v9)
            {
              xpc_retain(v10);
              v11 = v10;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v10 = 0;
          }

          xpc_release(v10);
          if (MEMORY[0x245CF6530](v11) == v9)
          {
            v13 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v13 = *v13;
            }

            v14 = xpc_string_create(v13);
            if (!v14)
            {
              v14 = xpc_null_create();
            }

            xpc_dictionary_set_value(v11, "StartTime", v14);
            v15 = xpc_null_create();
            xpc_release(v14);
            xpc_release(v15);
            v16 = (v8 + 40);
            if (*(v8 + 63) < 0)
            {
              v16 = *v16;
            }

            v17 = xpc_string_create(v16);
            if (!v17)
            {
              v17 = xpc_null_create();
            }

            xpc_dictionary_set_value(v11, "EndTime", v17);
            v18 = xpc_null_create();
            xpc_release(v17);
            xpc_release(v18);
            v19 = xpc_double_create(*(v8 + 64));
            if (!v19)
            {
              v19 = xpc_null_create();
            }

            xpc_dictionary_set_value(v11, "BandwidthMbps", v19);
            v20 = xpc_null_create();
            xpc_release(v19);
            xpc_release(v20);
            xpc_array_append_value(v5, v11);
          }

          else
          {
            v12 = *(a1 + 24);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, "failed to create entry dictionary", buf, 2u);
            }
          }

          xpc_release(v11);
          v8 = *(v8 + 8);
        }

        while (v8 != v7);
      }

      v21 = *a2;
      v29 = 13;
      object = v5;
      strcpy(buf, "PeakBandwidth");
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        object = xpc_null_create();
      }

      abm::trace::TraceInfo::push(v21, buf, &object);
      xpc_release(object);
      object = 0;
      if (v29 < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v6 = *(a1 + 24);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "failed to create entry array", buf, 2u);
      }
    }

    xpc_release(v5);
  }

  _Block_object_dispose(&v31, 8);
  if (v38)
  {
    v22 = v37;
    v23 = *(v36 + 8);
    v24 = *v37;
    *(v24 + 8) = v23;
    *v23 = v24;
    v38 = 0;
    if (v22 != &v36)
    {
      do
      {
        v25 = v22[1];
        if (*(v22 + 63) < 0)
        {
          operator delete(v22[5]);
          if (*(v22 + 39) < 0)
          {
LABEL_48:
            operator delete(v22[2]);
          }
        }

        else if (*(v22 + 39) < 0)
        {
          goto LABEL_48;
        }

        operator delete(v22);
        v22 = v25;
      }

      while (v25 != &v36);
    }
  }
}

void sub_241A4153C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v24);
  _Block_object_dispose(&a23, 8);
  std::list<TracePeakDataRateObserver::ExceedInfo>::~list(v23);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[5] = result + 5;
  result[6] = result + 5;
  result[7] = 0;
  v2 = a2[7];
  if (v2)
  {
    v4 = a2[5];
    v3 = a2[6];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[5];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[5] = v4;
    *(v4 + 8) = result + 5;
    result[7] = v2;
    a2[7] = 0;
  }

  return result;
}

void __Block_byref_object_dispose_(void *a1)
{
  if (a1[7])
  {
    v1 = (a1 + 5);
    v2 = a1[6];
    v3 = *(a1[5] + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[7] = 0;
    if (v2 != (a1 + 5))
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[63] < 0)
        {
          operator delete(*(v2 + 5));
          if (v2[39] < 0)
          {
LABEL_9:
            operator delete(*(v2 + 2));
          }
        }

        else if (v2[39] < 0)
        {
          goto LABEL_9;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != v1);
    }
  }
}

void ___ZN25TracePeakDataRateObserver8snapshotENSt3__110shared_ptrIN3abm5trace9TraceInfoEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = (v2 + 5);
  if (v2[7])
  {
    v4 = v2[6];
    v5 = *(v2[5] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    v2[7] = 0;
    if (v4 != v3)
    {
      do
      {
        v13 = *(v4 + 1);
        if (v4[63] < 0)
        {
          operator delete(*(v4 + 5));
          if (v4[39] < 0)
          {
LABEL_11:
            operator delete(*(v4 + 2));
          }
        }

        else if (v4[39] < 0)
        {
          goto LABEL_11;
        }

        operator delete(v4);
        v4 = v13;
      }

      while (v13 != v3);
    }
  }

  v7 = v1[11];
  if (v7)
  {
    v9 = v1[9];
    v8 = v1[10];
    v10 = *(v9 + 8);
    v11 = *v8;
    *(v11 + 8) = v10;
    *v10 = v11;
    v12 = v2[5];
    *(v12 + 8) = v8;
    *v8 = v12;
    v2[5] = v9;
    *(v9 + 8) = v3;
    v2[7] += v7;
    v1[11] = 0;
  }
}

void TracePeakDataRateObserver::feedSample(os_unfair_lock_s *this, int a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN25TracePeakDataRateObserver10feedSampleEj_block_invoke;
  v3[3] = &__block_descriptor_tmp_6;
  v3[4] = this;
  v4 = a2;
  os_unfair_lock_lock(this + 4);
  ___ZN25TracePeakDataRateObserver10feedSampleEj_block_invoke(v3);
  os_unfair_lock_unlock(this + 4);
}

void ___ZN25TracePeakDataRateObserver10feedSampleEj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v3 = a1;
    *(v1 + 40) = std::chrono::steady_clock::now();
    Timestamp::Timestamp(&v24);
    Timestamp::asString(&v24, 0, 9);
    std::string::operator=((v1 + 48), __str);
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v24, v24.__r_.__value_.__l.__size_);
    v2 = *(v1 + 32);
    a1 = v3;
  }

  v4 = v2 + (8 * *(a1 + 40));
  *(v1 + 32) = v4;
  if (v4 >= *(v1 + 104))
  {
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    memset(&v24, 170, sizeof(v24));
    Timestamp::Timestamp(__str);
    Timestamp::asString(__str, 0, 9);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(__str, *&__str[8]);
    if (((v5.__d_.__rep_ - *(v1 + 40)) / 1000000) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = (v5.__d_.__rep_ - *(v1 + 40)) / 1000000;
    }

    v7 = *(v1 + 24);
    v8 = (1000 * (*(v1 + 32) / v6));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v20 = (v1 + 48);
      if (*(v1 + 71) < 0)
      {
        v20 = *v20;
      }

      v21 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v24.__r_.__value_.__r.__words[0];
      }

      *__str = 134218754;
      *&__str[4] = v6;
      *&__str[12] = 2048;
      *&__str[14] = v8 / 1000000.0;
      *&__str[22] = 2080;
      *&__str[24] = v20;
      *&__str[32] = 2080;
      *&__str[34] = v21;
      _os_log_debug_impl(&dword_241A16000, v7, OS_LOG_TYPE_DEBUG, "#D duration: %llu milliseconds, bandwidth: %lf Mbps, start: %s, end: %s", __str, 0x2Au);
      v9 = *(v1 + 104);
      if (v8 < v9)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v9 = *(v1 + 104);
      if (v8 < v9)
      {
        goto LABEL_47;
      }
    }

    v10 = *(v1 + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *__str = 134218240;
      *&__str[4] = v8 / 1000000.0;
      *&__str[12] = 2048;
      *&__str[14] = v9 / 0xF4240;
      _os_log_impl(&dword_241A16000, v10, OS_LOG_TYPE_DEFAULT, "#N baseband trace data rate %lf Mbps is higher than %llu Mbps", __str, 0x16u);
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__str[16] = v11;
    *&__str[32] = v11;
    *__str = v11;
    v26 = NAN;
    if (*(v1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(v1 + 48), *(v1 + 56));
    }

    else
    {
      v23 = *(v1 + 48);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v24;
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__str, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      *__str = v23;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str[24], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v26 = v8 / 1000000.0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_30;
        }
      }

      else if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *&__str[24] = __p;
      v26 = v8 / 1000000.0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_30:
        operator delete(v23.__r_.__value_.__l.__data_);
        v12 = *(v1 + 88);
        if (v12 < *(v1 + 96))
        {
          goto LABEL_36;
        }

LABEL_31:
        v13 = *(v1 + 80);
        v15 = *v13;
        v14 = *(v13 + 1);
        *(v15 + 8) = v14;
        *v14 = v15;
        *(v1 + 88) = v12 - 1;
        if (v13[63] < 0)
        {
          operator delete(*(v13 + 5));
        }

        if (v13[39] < 0)
        {
          operator delete(*(v13 + 2));
        }

        operator delete(v13);
LABEL_36:
        v16 = operator new(0x48uLL);
        v17 = v16;
        *v16 = 0;
        *(v16 + 1) = 0;
        if ((__str[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external((v16 + 16), *__str, *&__str[8]);
        }

        else
        {
          *(v16 + 1) = *__str;
          *(v16 + 4) = *&__str[16];
        }

        if ((__str[47] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external((v17 + 40), *&__str[24], *&__str[32]);
        }

        else
        {
          *(v17 + 40) = *&__str[24];
          *(v17 + 7) = *&__str[40];
        }

        *(v17 + 8) = v26;
        *(v17 + 1) = v1 + 72;
        v18 = *(v1 + 72);
        *v17 = v18;
        *(v18 + 8) = v17;
        *(v1 + 72) = v17;
        ++*(v1 + 88);
        if ((__str[47] & 0x80000000) != 0)
        {
          operator delete(*&__str[24]);
          if ((__str[23] & 0x80000000) == 0)
          {
            goto LABEL_47;
          }
        }

        else if ((__str[23] & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        operator delete(*__str);
LABEL_47:
        *(v1 + 32) = 0;
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        goto LABEL_49;
      }
    }

    v12 = *(v1 + 88);
    if (v12 < *(v1 + 96))
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_49:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_241A41D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 39) < 0)
  {
    operator delete(*(v33 + 16));
  }

  operator delete(v33);
  std::pair<std::string,std::string>::~pair(&a28);
  if (a27 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void TracePeakDataRateObserver::updateTraceBandwidth(os_unfair_lock_s *this, int a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN25TracePeakDataRateObserver20updateTraceBandwidthEj_block_invoke;
  v3[3] = &__block_descriptor_tmp_7;
  v3[4] = this;
  v4 = a2;
  os_unfair_lock_lock(this + 4);
  ___ZN25TracePeakDataRateObserver20updateTraceBandwidthEj_block_invoke(v3);
  os_unfair_lock_unlock(this + 4);
}

char *std::list<TracePeakDataRateObserver::ExceedInfo>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[63] < 0)
        {
          operator delete(*(v2 + 5));
          if (v2[39] < 0)
          {
LABEL_9:
            operator delete(*(v2 + 2));
          }
        }

        else if (v2[39] < 0)
        {
          goto LABEL_9;
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void _ZNSt3__115allocate_sharedB8ne200100I25TracePeakDataRateObserverNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0x88uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2853A2F20;
  v2[1].__vftable = 0;
  v2[1].__shared_owners_ = 0;
  LODWORD(v2[1].__shared_weak_owners_) = 0;
  strcpy(__p, "trace.dataRateObserver");
  v6 = 22;
  ctu::OsLogLogger::OsLogLogger(&v2[2], "com.apple.telephony", __p);
  if (v6 < 0)
  {
    operator delete(*__p);
  }

  v2[3].std::__shared_count = 0u;
  *&v2[2].__shared_owners_ = 0u;
  v2[3].__shared_weak_owners_ = 0;
  v2[4].__vftable = &v2[4];
  v2[4].__shared_owners_ = &v2[4];
  v2[4].__shared_weak_owners_ = 0;
  *a1 = v2 + 1;
  a1[1] = v2;
  shared_owners = v2[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v2[1].__vftable = &v2[1];
      v2[1].__shared_owners_ = v2;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_9:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

void sub_241A4211C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    shared_owners = v14[1].__shared_owners_;
    if (!shared_owners)
    {
LABEL_3:
      std::__shared_weak_count::~__shared_weak_count(v14);
      operator delete(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    shared_owners = v14[1].__shared_owners_;
    if (!shared_owners)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(shared_owners);
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TracePeakDataRateObserver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A2F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<TracePeakDataRateObserver>::__on_zero_shared(void *a1)
{
  if (a1[14])
  {
    v2 = (a1 + 12);
    v3 = a1[13];
    v4 = *(a1[12] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[14] = 0;
    if (v3 != (a1 + 12))
    {
      do
      {
        v7 = *(v3 + 1);
        if (v3[63] < 0)
        {
          operator delete(*(v3 + 5));
          if (v3[39] < 0)
          {
LABEL_13:
            operator delete(*(v3 + 2));
          }
        }

        else if (v3[39] < 0)
        {
          goto LABEL_13;
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(a1[9]);
    MEMORY[0x245CF5550](a1 + 6);
    v6 = a1[4];
    if (!v6)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x245CF5550](a1 + 6);
    v6 = a1[4];
    if (!v6)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v6);
}

void **BasebandTransport::getSupportedProtocols@<X0>(BasebandTransport *this@<X0>, void **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  result = capabilities::radio::vendor(this);
  if (result > 2)
  {
    if (result == 3)
    {
      v53 = &v53;
      v54 = &v53;
      v55 = 0;
      v20 = operator new(0x18uLL);
      v20[4] = 8;
      *v20 = &v53;
      *(v20 + 1) = &v53;
      v53 = v20;
      v54 = v20;
      v55 = 1;
      v42 = operator new(0x18uLL);
      v42[4] = 17;
      *v42 = v20;
      *(v42 + 1) = &v53;
      *(v20 + 1) = v42;
      v53 = v42;
      v55 = 2;
      v43 = operator new(0x18uLL);
      v43[4] = 10;
      *v43 = v42;
      *(v43 + 1) = &v53;
      *(v42 + 1) = v43;
      v53 = v43;
      v55 = 3;
      v44 = operator new(0x18uLL);
      v44[4] = 14;
      *v44 = v43;
      *(v44 + 1) = &v53;
      *(v43 + 1) = v44;
      v53 = v44;
      v55 = 4;
      v45 = operator new(0x18uLL);
      v45[4] = 16;
      *v45 = v44;
      *(v45 + 1) = &v53;
      *(v44 + 1) = v45;
      v53 = v45;
      v55 = 5;
      result = operator new(0x18uLL);
      *(result + 4) = 18;
      v46 = &v53;
      *result = v45;
      result[1] = &v53;
      *(v45 + 1) = result;
      v19 = 6;
      v53 = result;
      v55 = 6;
      if (a2[2])
      {
        result = a2[1];
        v47 = *(*a2 + 1);
        v48 = *result;
        v48[1] = v47;
        *v47 = v48;
        a2[2] = 0;
        if (result == a2)
        {
          v19 = 6;
        }

        else
        {
          do
          {
            v49 = result[1];
            operator delete(result);
            result = v49;
          }

          while (v49 != a2);
          if (!v55)
          {
            return result;
          }

          v19 = a2[2] + v55;
        }

        result = v53;
        v20 = v54;
        v51 = v53[1];
        v46 = *v54;
      }

      else
      {
        v51 = &v53;
      }

      v46[1] = v51;
      *v51 = v46;
LABEL_36:
      v52 = *a2;
      v52[1] = v20;
      *v20 = v52;
      *a2 = result;
      result[1] = a2;
      goto LABEL_37;
    }

    if (result != 4)
    {
      return result;
    }

    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 10;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v21 = operator new(0x18uLL);
    v21[4] = 19;
    *v21 = v20;
    *(v21 + 1) = &v53;
    *(v20 + 1) = v21;
    v53 = v21;
    v55 = 2;
    v22 = operator new(0x18uLL);
    v22[4] = 20;
    *v22 = v21;
    *(v22 + 1) = &v53;
    *(v21 + 1) = v22;
    v53 = v22;
    v55 = 3;
    v23 = operator new(0x18uLL);
    v23[4] = 21;
    *v23 = v22;
    *(v23 + 1) = &v53;
    *(v22 + 1) = v23;
    v53 = v23;
    v55 = 4;
    v24 = operator new(0x18uLL);
    v24[4] = 22;
    *v24 = v23;
    *(v24 + 1) = &v53;
    *(v23 + 1) = v24;
    v53 = v24;
    v55 = 5;
    v25 = operator new(0x18uLL);
    v25[4] = 23;
    v26 = &v53;
    *v25 = v24;
    *(v25 + 1) = &v53;
    *(v24 + 1) = v25;
    v53 = v25;
    v55 = 6;
    result = operator new(0x18uLL);
    *(result + 4) = 24;
    *result = v25;
    result[1] = &v53;
    *(v25 + 1) = result;
    v19 = 7;
    v53 = result;
    v55 = 7;
    if (a2[2])
    {
      result = a2[1];
      v27 = *(*a2 + 1);
      v28 = *result;
      v28[1] = v27;
      *v27 = v28;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v29 = result[1];
          operator delete(result);
          result = v29;
        }

        while (v29 != a2);
        goto LABEL_20;
      }

      v19 = 7;
LABEL_34:
      result = v53;
      v20 = v54;
      v50 = v53[1];
      v26 = *v54;
      goto LABEL_35;
    }

LABEL_27:
    v50 = &v53;
LABEL_35:
    v26[1] = v50;
    *v50 = v26;
    goto LABEL_36;
  }

  if (result == 1)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 0;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v30 = operator new(0x18uLL);
    v30[4] = 1;
    *v30 = v20;
    *(v30 + 1) = &v53;
    *(v20 + 1) = v30;
    v53 = v30;
    v55 = 2;
    v31 = operator new(0x18uLL);
    v31[4] = 2;
    *v31 = v30;
    *(v31 + 1) = &v53;
    *(v30 + 1) = v31;
    v53 = v31;
    v55 = 3;
    v32 = operator new(0x18uLL);
    v32[4] = 3;
    *v32 = v31;
    *(v32 + 1) = &v53;
    *(v31 + 1) = v32;
    v53 = v32;
    v55 = 4;
    v33 = operator new(0x18uLL);
    v33[4] = 4;
    *v33 = v32;
    *(v33 + 1) = &v53;
    *(v32 + 1) = v33;
    v53 = v33;
    v55 = 5;
    v34 = operator new(0x18uLL);
    v34[4] = 5;
    *v34 = v33;
    *(v34 + 1) = &v53;
    *(v33 + 1) = v34;
    v53 = v34;
    v55 = 6;
    v35 = operator new(0x18uLL);
    v35[4] = 10;
    *v35 = v34;
    *(v35 + 1) = &v53;
    *(v34 + 1) = v35;
    v53 = v35;
    v55 = 7;
    v36 = operator new(0x18uLL);
    v36[4] = 12;
    *v36 = v35;
    *(v36 + 1) = &v53;
    *(v35 + 1) = v36;
    v53 = v36;
    v55 = 8;
    v37 = operator new(0x18uLL);
    v37[4] = 14;
    *v37 = v36;
    *(v37 + 1) = &v53;
    *(v36 + 1) = v37;
    v53 = v37;
    v55 = 9;
    v38 = operator new(0x18uLL);
    v38[4] = 11;
    v26 = &v53;
    *v38 = v37;
    *(v38 + 1) = &v53;
    *(v37 + 1) = v38;
    v53 = v38;
    v55 = 10;
    result = operator new(0x18uLL);
    *(result + 4) = 15;
    *result = v38;
    result[1] = &v53;
    *(v38 + 1) = result;
    v19 = 11;
    v53 = result;
    v55 = 11;
    if (a2[2])
    {
      result = a2[1];
      v39 = *(*a2 + 1);
      v40 = *result;
      v40[1] = v39;
      *v39 = v40;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v41 = result[1];
          operator delete(result);
          result = v41;
        }

        while (v41 != a2);
LABEL_20:
        if (!v55)
        {
          return result;
        }

        v19 = a2[2] + v55;
        goto LABEL_34;
      }

      v19 = 11;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (result == 2)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v4 = operator new(0x18uLL);
    v4[4] = 6;
    *v4 = &v53;
    *(v4 + 1) = &v53;
    v53 = v4;
    v54 = v4;
    v55 = 1;
    v5 = operator new(0x18uLL);
    v5[4] = 7;
    *v5 = v4;
    *(v5 + 1) = &v53;
    *(v4 + 1) = v5;
    v53 = v5;
    v55 = 2;
    v6 = operator new(0x18uLL);
    v6[4] = 8;
    *v6 = v5;
    *(v6 + 1) = &v53;
    *(v5 + 1) = v6;
    v53 = v6;
    v55 = 3;
    v7 = operator new(0x18uLL);
    v7[4] = 9;
    *v7 = v6;
    *(v7 + 1) = &v53;
    *(v6 + 1) = v7;
    v53 = v7;
    v55 = 4;
    v8 = operator new(0x18uLL);
    v8[4] = 10;
    *v8 = v7;
    *(v8 + 1) = &v53;
    *(v7 + 1) = v8;
    v53 = v8;
    v55 = 5;
    result = capabilities::abs::supportsETSProtocol(v8);
    if (result)
    {
      result = operator new(0x18uLL);
      *(result + 4) = 13;
      v9 = v53;
      *result = v53;
      result[1] = &v53;
      v9[1] = result;
      v53 = result;
      ++v55;
    }

    if (a2[2])
    {
      result = a2[1];
      v10 = *(*a2 + 1);
      v11 = *result;
      v11[1] = v10;
      *v10 = v11;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v12 = result[1];
          operator delete(result);
          result = v12;
        }

        while (v12 != a2);
      }
    }

    v13 = v55;
    if (v55)
    {
      v15 = v53;
      v14 = v54;
      v16 = v53[1];
      v17 = *v54;
      v17[1] = v16;
      *v16 = v17;
      v18 = *a2;
      v18[1] = v14;
      *v14 = v18;
      *a2 = v15;
      v15[1] = a2;
      v19 = a2[2] + v13;
LABEL_37:
      a2[2] = v19;
    }
  }

  return result;
}

void sub_241A429D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::list<TCP::Mode>::~list(va);
  std::list<TCP::Mode>::~list(v2);
  _Unwind_Resume(a1);
}

void sub_241A429F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<TCP::Mode>::clear(va);
  std::list<TCP::Mode>::~list(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::getSupportedProtocolsAsStringLowerCase(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v15, 170, sizeof(v15));
  BasebandTransport::getSupportedProtocols(this, v15);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v4 = *(i + 4);
    memset(__p, 170, sizeof(__p));
    BasebandTransport::asString(v4, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v5 = (__p + HIBYTE(__p[2]));
    }

    else
    {
      v5 = (__p[0] + __p[1]);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    for (; v6 != v5; v6 = (v6 + 1))
    {
      *v6 = __tolower(*v6);
    }

    v7 = operator new(0x28uLL);
    v8 = v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v7 + 1) = *__p;
      *(v7 + 4) = __p[2];
    }

    v9 = *a2;
    *v8 = *a2;
    v8[1] = a2;
    *(v9 + 8) = v8;
    *a2 = v8;
    ++a2[2];
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15[2])
  {
    v10 = v15[1];
    v11 = *(v15[0] + 1);
    v12 = *v15[1];
    *(v12 + 8) = v11;
    *v11 = v12;
    v15[2] = 0;
    if (v10 != v15)
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != v15);
    }
  }
}

void sub_241A42BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = v16;
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<TCP::Mode>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asStringLowerCase@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = BasebandTransport::asString(a1, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = a2 + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*a2 + a2[1]);
  }

  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  for (; v8 != v7; ++v8)
  {
    result = __tolower(*v8);
    *v8 = result;
  }

  return result;
}

void sub_241A42C80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::getSupportedProtocolsAsString(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v14, 170, sizeof(v14));
  BasebandTransport::getSupportedProtocols(this, v14);
  for (i = v14[1]; i != v14; i = i[1])
  {
    BasebandTransport::asString(*(i + 4), __p);
    v4 = operator new(0x28uLL);
    v5 = v4;
    *v4 = 0;
    *(v4 + 1) = 0;
    v6 = SHIBYTE(v13);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v4 + 1) = *__p;
      *(v4 + 4) = v13;
    }

    v7 = *a2;
    *v5 = *a2;
    v5[1] = a2;
    *(v7 + 8) = v5;
    *a2 = v5;
    ++a2[2];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14[2])
  {
    v8 = v14[1];
    v9 = *(v14[0] + 1);
    v10 = *v14[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    v14[2] = 0;
    if (v8 != v14)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v14);
    }
  }
}

void sub_241A42DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;
  operator delete(v18);
  operator delete(v17);
  std::list<TCP::Mode>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 3;
      *a2 = 16976;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 16979;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 4;
      strcpy(a2, "DIAG");
      break;
    case 3:
      a2[23] = 4;
      strcpy(a2, "REFS");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 49;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 50;
      a2[5] = 0;
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20306;
      a2[2] = 77;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 4;
      strcpy(a2, "BOOT");
      break;
    case 8:
      a2[23] = 3;
      *a2 = 21057;
      a2[2] = 73;
      a2[3] = 0;
      break;
    case 9:
      a2[23] = 3;
      *a2 = 21587;
      a2[2] = 84;
      a2[3] = 0;
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, "AT");
      break;
    case 11:
      a2[23] = 4;
      strcpy(a2, "ADPL");
      break;
    case 12:
      a2[23] = 8;
      strcpy(a2, "MEDIACTL");
      break;
    case 13:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 83;
      a2[3] = 0;
      break;
    case 14:
      a2[23] = 4;
      strcpy(a2, "GNSS");
      break;
    case 15:
      a2[23] = 4;
      strcpy(a2, "QDSS");
      break;
    case 16:
      a2[23] = 5;
      *a2 = 1414808402;
      a2[4] = 72;
      a2[5] = 0;
      break;
    case 17:
      a2[23] = 3;
      *a2 = 17217;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 18:
      a2[23] = 4;
      strcpy(a2, "VCOM");
      break;
    case 19:
      a2[23] = 4;
      strcpy(a2, "MIPC");
      break;
    case 20:
      a2[23] = 3;
      *a2 = 18500;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 21:
      a2[23] = 3;
      *a2 = 21837;
      a2[2] = 88;
      a2[3] = 0;
      break;
    case 22:
      a2[23] = 3;
      *a2 = 16710;
      a2[2] = 67;
      a2[3] = 0;
      break;
    case 23:
      a2[23] = 3;
      *a2 = 17734;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 24:
      a2[23] = 7;
      strcpy(a2, "IQTRACE");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 7;
        strcpy(a2, "Stalled");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 5;
    *a2 = 1869771333;
    a2[4] = 114;
    a2[5] = 0;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 5;
        *a2 = 1684104530;
        a2[4] = 121;
        a2[5] = 0;
        return result;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      return result;
    }

    a2[23] = 8;
    strcpy(a2, "NotReady");
  }

  return result;
}

uint64_t BasebandTransport::asProtocol(char *__s1)
{
  v1 = __s1;
  if ((__s1[23] & 0x80000000) == 0)
  {
    result = strcmp(__s1, "PBL");
    if (!result)
    {
      return result;
    }

    if (!strcmp(v1, "SBL"))
    {
      return 1;
    }

    if (strcasecmp(v1, "DIAG"))
    {
      if (strcasecmp(v1, "REFS"))
      {
        if (strcasecmp(v1, "QMUX1"))
        {
          if (strcasecmp(v1, "QMUX2"))
          {
            if (strcasecmp(v1, "ROM"))
            {
              if (strcasecmp(v1, "BOOT"))
              {
                if (strcasecmp(v1, "ARI"))
                {
                  if (strcasecmp(v1, "STT"))
                  {
                    if (strcasecmp(v1, "AT"))
                    {
                      if (strcasecmp(v1, "ADPL"))
                      {
                        if (strcasecmp(v1, "MEDIACTL"))
                        {
                          if (strcasecmp(v1, "ETS"))
                          {
                            if (strcasecmp(v1, "GNSS"))
                            {
                              if (strcasecmp(v1, "QDSS"))
                              {
                                if (strcasecmp(v1, "RCTTH"))
                                {
                                  if (strcasecmp(v1, "ACP"))
                                  {
                                    if (strcasecmp(v1, "VCOM"))
                                    {
                                      if (strcasecmp(v1, "MIPC"))
                                      {
                                        if (strcasecmp(v1, "DHL"))
                                        {
                                          if (strcasecmp(v1, "MUX"))
                                          {
                                            if (strcasecmp(v1, "FAC"))
                                            {
                                              if (strcasecmp(v1, "FEP"))
                                              {
                                                goto LABEL_26;
                                              }

                                              return 23;
                                            }

                                            return 22;
                                          }

                                          return 21;
                                        }

                                        return 20;
                                      }

                                      return 19;
                                    }

                                    return 18;
                                  }

                                  return 17;
                                }

                                return 16;
                              }

                              return 15;
                            }

                            return 14;
                          }

                          return 13;
                        }

                        return 12;
                      }

                      return 11;
                    }

                    return 10;
                  }

                  return 9;
                }

                return 8;
              }

              return 7;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      return 3;
    }

    return 2;
  }

  v1 = *__s1;
  result = strcmp(*__s1, "PBL");
  if (!result)
  {
    return result;
  }

  if (!strcmp(v1, "SBL"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "DIAG"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "REFS"))
  {
    return 3;
  }

  if (!strcasecmp(v1, "QMUX1"))
  {
    return 4;
  }

  if (!strcasecmp(v1, "QMUX2"))
  {
    return 5;
  }

  if (!strcasecmp(v1, "ROM"))
  {
    return 6;
  }

  if (!strcasecmp(v1, "BOOT"))
  {
    return 7;
  }

  if (!strcasecmp(v1, "ARI"))
  {
    return 8;
  }

  if (!strcasecmp(v1, "STT"))
  {
    return 9;
  }

  if (!strcasecmp(v1, "AT"))
  {
    return 10;
  }

  if (!strcasecmp(v1, "ADPL"))
  {
    return 11;
  }

  if (!strcasecmp(v1, "MEDIACTL"))
  {
    return 12;
  }

  if (!strcasecmp(v1, "ETS"))
  {
    return 13;
  }

  if (!strcasecmp(v1, "GNSS"))
  {
    return 14;
  }

  if (!strcasecmp(v1, "QDSS"))
  {
    return 15;
  }

  if (!strcasecmp(v1, "RCTTH"))
  {
    return 16;
  }

  if (!strcasecmp(v1, "ACP"))
  {
    return 17;
  }

  if (!strcasecmp(v1, "VCOM"))
  {
    return 18;
  }

  if (!strcasecmp(v1, "MIPC"))
  {
    return 19;
  }

  if (!strcasecmp(v1, "DHL"))
  {
    return 20;
  }

  if (!strcasecmp(v1, "MUX"))
  {
    return 21;
  }

  if (!strcasecmp(v1, "FAC"))
  {
    return 22;
  }

  if (!strcasecmp(v1, "FEP"))
  {
    return 23;
  }

LABEL_26:
  if (!strcasecmp(v1, "IQTRACE"))
  {
    return 24;
  }

  else
  {
    return 25;
  }
}

uint64_t BasebandTransport::getDefaultTransportIOReadSize(capabilities::radio *a1)
{
  v1 = a1;
  v2 = capabilities::radio::dal(a1);
  if (v2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v2);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v3;
  }

  if (v1 == 17)
  {
    return 0x80000;
  }

  if (v1 == 21 || v1 == 20)
  {
    return 61440;
  }

  v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if (v1 == 10 && (v6 & 1) != 0)
  {
    return 3584;
  }

  if ((v1 - 19) > 5)
  {
    return 0x8000;
  }

  return dword_241A66328[v1 - 19];
}

uint64_t BasebandTransport::getDefaultTransportIOReadCount(capabilities::abs *a1)
{
  v1 = a1;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(a1);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    return 4;
  }

  switch(v1)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  v4 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v1 == 10 && (v4 & 1) != 0)
  {
    return 15;
  }

  if (v1 <= 18)
  {
    if (v1 != 2)
    {
      if (v1 == 15 || v1 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v1 > 22)
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 86;
      }

      return 4;
    }
  }

  else if (v1 != 19)
  {
    return 15;
  }

  return result;
}

double BasebandTransport::Status::Status(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double BasebandTransport::Status::init(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t BasebandTransport::Status::toString(BasebandTransport::Status *this)
{
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[7] = v2;
  v35[8] = v2;
  v35[5] = v2;
  v35[6] = v2;
  v35[3] = v2;
  v35[4] = v2;
  v35[1] = v2;
  v35[2] = v2;
  v34 = v2;
  v35[0] = v2;
  *v32 = v2;
  v33 = v2;
  v31[1] = v2;
  v31[2] = v2;
  v30 = v2;
  v31[0] = v2;
  v29 = v2;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v29);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "State: ", 7);
  v4 = *this;
  if (*this > 1)
  {
    if (v4 == 2)
    {
      v5 = 5;
      v28 = 5;
      LODWORD(__p[0]) = 1869771333;
      v6 = 114;
      goto LABEL_12;
    }

    if (v4 == 3)
    {
      v5 = 7;
      v28 = 7;
      LODWORD(__p[0]) = 1818326099;
      v7 = 1684368492;
LABEL_9:
      *(__p + 3) = v7;
      goto LABEL_13;
    }

LABEL_8:
    v5 = 7;
    v28 = 7;
    LODWORD(__p[0]) = 1852534357;
    v7 = 1853321070;
    goto LABEL_9;
  }

  if (!v4)
  {
    v5 = 8;
    v28 = 8;
    __p[0] = 0x7964616552746F4ELL;
    goto LABEL_13;
  }

  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v5 = 5;
  v28 = 5;
  LODWORD(__p[0]) = 1684104530;
  v6 = 121;
LABEL_12:
  BYTE4(__p[0]) = v6;
LABEL_13:
  *(__p + v5) = 0;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, v5);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Async: ", 7);
  *(v10 + *(*v10 - 24) + 8) |= 1u;
  v11 = *(this + 4);
  v12 = MEMORY[0x245CF5940]();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Total Rx: ", 10);
  v15 = MEMORY[0x245CF5990](v14, *(this + 1) >> 10);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " KB, ", 5);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Total Tx: ", 10);
  v18 = MEMORY[0x245CF5990](v17, *(this + 2) >> 10);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " KB, ", 5);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Total RX: ", 10);
  v21 = MEMORY[0x245CF5990](v20, *(this + 1));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " B, ", 4);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Total TX: ", 10);
  v24 = MEMORY[0x245CF5990](v23, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " B", 2);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  *&v29 = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v30 = v25;
  *(&v30 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  *(&v30 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CF5AE0](v35);
}

void sub_241A43CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_241A43CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CF5AE0](a1 + 128);
  return a1;
}

uint64_t BasebandTransport::Parameters::toString(BasebandTransport::Parameters *this)
{
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[7] = v2;
  v30[8] = v2;
  v30[5] = v2;
  v30[6] = v2;
  v30[3] = v2;
  v30[4] = v2;
  v30[1] = v2;
  v30[2] = v2;
  v29 = v2;
  v30[0] = v2;
  *__p = v2;
  v28 = v2;
  v26[1] = v2;
  v26[2] = v2;
  v25 = v2;
  v26[0] = v2;
  v24 = v2;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v24);
  BasebandTransport::asString(*this, &v20);
  std::operator+<char>();
  if ((v23 & 0x80u) == 0)
  {
    v3 = v22;
  }

  else
  {
    v3 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v22[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Powersave: ", 11);
  *(v7 + *(*v7 - 24) + 8) |= 1u;
  v8 = *(this + 4);
  v9 = MEMORY[0x245CF5940]();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Create Timeout: ", 16);
  v12 = MEMORY[0x245CF5980](v11, *(this + 1));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " sec, ", 6);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "IO Size: ", 9);
  v15 = MEMORY[0x245CF5960](v14, *(this + 4) >> 10);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " KB, ", 5);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Num Pending Reads: ", 19);
  MEMORY[0x245CF5960](v17, *(this + 5));
  if (v23 < 0)
  {
    operator delete(v22[0]);
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v20);
LABEL_9:
  std::stringbuf::str();
  *&v24 = *MEMORY[0x277D82818];
  v18 = *(MEMORY[0x277D82818] + 72);
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v25 = v18;
  *(&v25 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v25 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CF5AE0](v30);
}

void sub_241A44224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_241A44238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::BasebandTransport(uint64_t a1, NSObject **a2, dispatch_qos_class_t a3)
{
  *a1 = &unk_2853A2F70;
  v6 = (a1 + 8);
  {
    std::string::basic_string[abi:ne200100]<0>(&BasebandTransport::getName(void)::kName, "ipc.bb");
  }

  if (byte_27E55248F >= 0)
  {
    v7 = &BasebandTransport::getName(void)::kName;
  }

  else
  {
    v7 = BasebandTransport::getName(void)::kName;
  }

  {
    std::string::basic_string[abi:ne200100]<0>(&BasebandTransport::getName(void)::kName, "ipc.bb");
  }

  if (byte_27E55248F >= 0)
  {
    v8 = &BasebandTransport::getName(void)::kName;
  }

  else
  {
    v8 = BasebandTransport::getName(void)::kName;
  }

  ctu::OsLogContext::OsLogContext(v22, "com.apple.telephony.abm", v8);
  v9 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v10 = dispatch_queue_create(v7, v9);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 24) = v10;
  if (v10)
  {
    v11 = v10;
    dispatch_retain(v10);
    *(a1 + 32) = 0;
    dispatch_release(v11);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CF5540](a1 + 40, v23);
  MEMORY[0x245CF5550](v23);
  ctu::OsLogContext::~OsLogContext(v22);
  *a1 = &unk_2853A2F70;
  *(a1 + 48) = 25;
  *(a1 + 52) = 0;
  *(a1 + 56) = 10;
  v13 = capabilities::radio::dal(v12);
  v14 = v13;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
  if (v14)
  {
    v16 = 1024;
  }

  else
  {
    v16 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v16 = 0x8000;
  }

  *(a1 + 64) = v16;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  *(a1 + 68) = 4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v18 = *a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v19 = *MEMORY[0x277CBECE8];
  Controller = TelephonyBasebandCreateController();
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = Controller;
  *(a1 + 229) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = dispatch_group_create();
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 309) = 0;
  *(a1 + 352) = a3;
  *(a1 + 360) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_241A44538(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v3)
  {
    _Block_release(*v3);
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x245CF5550](v1 + 5);
  ctu::SharedSynchronizable<TCP>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

uint64_t *BasebandTransport::getName(BasebandTransport *this)
{
  {
    return &BasebandTransport::getName(void)::kName;
  }

  std::string::basic_string[abi:ne200100]<0>(&BasebandTransport::getName(void)::kName, "ipc.bb");
  return &BasebandTransport::getName(void)::kName;
}

void BasebandTransport::~BasebandTransport(BasebandTransport *this)
{
  *this = &unk_2853A2F70;
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v17, 2u);
    }
  }

  (*(*this + 48))(this);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
    *(this + 26) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    operator delete[](v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 45);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    _Block_release(v13);
  }

  MEMORY[0x245CF5550](this + 40);
  v14 = *(this + 4);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

void BasebandTransport::timerOff_sync(BasebandTransport *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

void BasebandTransport::create(capabilities::radio *a1@<X0>, dispatch_qos_class_t a2@<W1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = capabilities::radio::vendor(a1);
  if ((v6 - 3) < 2)
  {
    v7 = operator new(0x170uLL);
    v12 = *a1;
    v16 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    BasebandTransport::BasebandTransport(v7, &v16, a2);
    v13 = operator new(0x20uLL);
    v13->__shared_owners_ = 0;
    p_shared_owners = &v13->__shared_owners_;
    v13->__vftable = &unk_2853A32B0;
    v13->__shared_weak_owners_ = 0;
    v13[1].__vftable = v7;
    on_zero_shared = v7->__on_zero_shared;
    if (!on_zero_shared)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = operator new(0x1E0uLL);
      v8 = *a1;
      v17 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      BasebandTransportICE::BasebandTransportICE(v7, &v17, a2);
      v9 = operator new(0x20uLL);
      v9->__shared_owners_ = 0;
      v10 = &v9->__shared_owners_;
      v9->__vftable = &unk_2853A3260;
      v9->__shared_weak_owners_ = 0;
      v9[1].__vftable = v7;
      v11 = v7->__on_zero_shared;
      if (v11)
      {
        if (v11->__shared_owners_ != -1 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed), v7->~__shared_weak_count_0 = v7, v7->__on_zero_shared = v9, std::__shared_weak_count::__release_weak(v11), atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL)))
        {
LABEL_29:
          *a3 = v7;
          a3[1] = v9;
          v12 = v17;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v7->~__shared_weak_count_0 = v7;
        v7->__on_zero_shared = v9;
        if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_29;
        }
      }

      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      goto LABEL_29;
    }

    v7 = operator new(0x170uLL);
    v12 = *a1;
    if (v12)
    {
      dispatch_retain(v12);
      dispatch_retain(v12);
    }

    v18 = v12;
    BasebandTransport::BasebandTransport(v7, &v18, a2);
    if (v12)
    {
      dispatch_release(v12);
    }

    v7->~__shared_weak_count = &unk_2853A34C0;
    v13 = operator new(0x20uLL);
    v13->__shared_owners_ = 0;
    p_shared_owners = &v13->__shared_owners_;
    v13->__vftable = &unk_2853A3210;
    v13->__shared_weak_owners_ = 0;
    v13[1].__vftable = v7;
    on_zero_shared = v7->__on_zero_shared;
    if (!on_zero_shared)
    {
LABEL_21:
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7->~__shared_weak_count_0 = v7;
      v7->__on_zero_shared = v13;
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7->~__shared_weak_count_0 = v7;
    v7->__on_zero_shared = v13;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_22:
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_23:
  *a3 = v7;
  a3[1] = v13;
  if (v12)
  {
LABEL_24:
    dispatch_release(v12);
  }

LABEL_25:
  BasebandTransport::init(v7);
}

void sub_241A44BB0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1}::operator() const(BasebandTransportMAV*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void BasebandTransport::init(BasebandTransport *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN17BasebandTransport4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_56;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_99;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN17BasebandTransport4initEv_block_invoke(capabilities::ipc *a1)
{
  v2 = *(a1 + 4);
  if (capabilities::ipc::supportsPCI(a1))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN17BasebandTransport4initEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_9;
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    aBlock[4] = v2;
    aBlock[5] = v4;
    v14 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(v2 + 104);
    *(v2 + 104) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1174405120;
    v11[2] = ___ZN17BasebandTransport4initEv_block_invoke_48;
    v11[3] = &__block_descriptor_tmp_52;
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v11[4] = v2;
    v11[5] = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = _Block_copy(v11);
    v10 = *(v2 + 112);
    *(v2 + 112) = v9;
    if (v10)
    {
      _Block_release(v10);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v24 = a2;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = a4;
          _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, "PCI Transport Status: 0x%x (0x%08lx, 0x%08lx)", buf, 0x1Cu);
        }

        *(v9 + 272) = 2 * (a2 != 0);
        *(v9 + 296) = vsubq_s64(*(v9 + 280), *(v9 + 320));
        v13 = *(v9 + 216);
        if (v13)
        {
          v14 = _Block_copy(v13);
          v15 = v14;
          v20 = *(v9 + 272);
          v21 = *(v9 + 288);
          v22 = *(v9 + 304);
          v16 = *(v9 + 96);
          v17 = v14 ? _Block_copy(v14) : 0;
          v18 = operator new(0x30uLL);
          *v18 = v17;
          *(v18 + 8) = v20;
          *(v18 + 24) = v21;
          *(v18 + 5) = v22;
          dispatch_async_f(v16, v18, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (v15)
          {
            _Block_release(v15);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_241A451A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t BasebandTransport::updateDeltas_sync(BasebandTransport *this)
{
  result = vsubq_s64(*(this + 280), *(this + 20));
  *(this + 296) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_48(void *a1, int a2, void *a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  v28 = 0;
  v7 = a1[6];
  if (v7 && (v28 = std::__shared_weak_count::lock(v7)) != 0 && (v10 = a1[5]) != 0)
  {
    v11 = *(v10 + 264);
    if (v11)
    {
      dispatch_retain(*(v10 + 264));
      dispatch_group_enter(v11);
    }

    if (a2)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = a2;
        _os_log_debug_impl(&dword_241A16000, v12, OS_LOG_TYPE_DEBUG, "#D Async read error 0x%08x", &__p, 8u);
      }
    }

    else
    {
      *(v6 + 280) += a4;
      v14 = *(v6 + 88);
      if (v14)
      {
        v15 = _Block_copy(v14);
        v16 = *(v6 + 72);
        if (v16)
        {
          __p = 0;
          v30 = 0;
          v31 = 0;
          (*(*v16 + 8))(v16, a3, a4, &__p);
          v17 = *(v6 + 96);
          if (v15)
          {
            v18 = _Block_copy(v15);
          }

          else
          {
            v18 = 0;
          }

          v22 = __p;
          v23 = v30 - __p;
          if (v30 == __p)
          {
            v25 = 0;
            v24 = 0;
          }

          else
          {
            if ((v23 & 0x8000000000000000) != 0)
            {
              std::vector<DataRateObserver::Sample>::__throw_length_error[abi:ne200100]();
            }

            v24 = operator new(v30 - __p);
            v25 = &v24[v23];
            memcpy(v24, v22, v23);
          }

          v26 = operator new(0x20uLL);
          *v26 = v18;
          v26[1] = v24;
          v26[2] = v25;
          v26[3] = v25;
          dispatch_async_f(v17, v26, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v19 = *(v6 + 80);
          v20 = *(v6 + 96);
          if (v15)
          {
            v21 = _Block_copy(v15);
          }

          else
          {
            v21 = 0;
          }

          v27 = operator new(0x18uLL);
          *v27 = v21;
          v27[1] = a3;
          *(v27 + 4) = a4;
          *(v27 + 20) = v19;
          dispatch_async_f(v20, v27, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          a3 = 0;
        }

        if (v15)
        {
          _Block_release(v15);
        }
      }
    }

    if (a3 && (*(v6 + 80) & 1) == 0)
    {
      free(a3);
    }

    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else if (a3)
  {
    free(a3);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241A454F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandTransport::open(BasebandTransport *a1, __int128 *a2, void **a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  BasebandTransport::stopReader(a1);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke;
  v12[3] = &unk_2853A3040;
  v12[5] = a1;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 4);
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v12[4] = &v17;
  v21 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_99;
  block[4] = a1 + 8;
  block[5] = &v21;
  v8 = *(a1 + 3);
  if (*(a1 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v18 + 24);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v8, block);
  v9 = *(v18 + 24);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v10);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_241A456EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BasebandTransport::stopReader(BasebandTransport *this)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v2 = (this + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke;
  v13[3] = &unk_278D049A8;
  v13[4] = v14;
  v13[5] = this;
  v16 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_99;
  block[4] = this + 8;
  block[5] = &v16;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke_2;
  v12[3] = &unk_278D049D0;
  v12[4] = v14;
  v12[5] = this;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v2, v12);
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_241A16000, v6, OS_LOG_TYPE_DEFAULT, "#I Waiting for reader to be stopped", block, 2u);
      v5 = *(this + 33);
    }

    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v5, v7))
    {
      (*(*this + 48))(this);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block[0]) = 0;
        _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "Timeout waiting for read to unblock, freed transport to force read unblock", block, 2u);
      }
    }

    else
    {
      v10 = *(this + 30);
      if (v10)
      {
        operator delete[](v10);
        *(this + 30) = 0;
        v11 = *(this + 32);
        *(this + 32) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_241A16000, v9, OS_LOG_TYPE_DEFAULT, "#I Reader stopped", block, 2u);
    }
  }

  _Block_object_dispose(v14, 8);
}

void sub_241A45988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v2 + 224));
    *(v2 + 224) = 0;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v9, 2u);
    }
  }

  (*(*v2 + 48))(v2);
  *(v2 + 272) = 0;
  *(v2 + 276) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 309) = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v2 + 48) != 25)
  {
    if (capabilities::ipc::supportsPCI(v7))
    {
      *(*(*(a1 + 32) + 8) + 24) = BasebandTransport::openPCI_sync(v2);
    }

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      BasebandTransport::timerOn_sync(v2);
    }

    else
    {
      (*(*v2 + 48))(v2);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
    v9[3] = &__block_descriptor_tmp_87;
    v9[4] = v2;
    v10 = 0;
    ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v2 + 8), v9);
  }
}

uint64_t BasebandTransport::openPCI_sync(BasebandTransport *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = v3;
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v4);
  }

  inited = TelephonyBasebandPCITransportInitParameters();
  v6 = *(this + 14);
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::traceTransportTimeoutScalingFactor(inited);
  v8 = 1000 * v6;
  if ((((1000 * v6) * shouldUseMinBasebandTransportIOReadCount) & 0xFFFFFFFF00000000) != 0)
  {
    v9 = *(this + 5);
    shouldUseMinBasebandTransportIOReadCount = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_241A16000, v9, OS_LOG_TYPE_ERROR, "Scaled create timeout overflowed, falling back to unscaled value: %u", buf, 8u);
    }
  }

  v36 = *(this + 3);
  v10 = *(this + 17);
  if (!v10)
  {
    v11 = *(this + 12);
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadCount);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
LABEL_10:
      v10 = 4;
      goto LABEL_29;
    }

    if (v11 != 17)
    {
      if (v11 == 21)
      {
        goto LABEL_19;
      }

      if (v11 == 20)
      {
        v10 = 63;
        goto LABEL_29;
      }

      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v12 = v11 == 10 ? shouldUseMinBasebandTransportIOReadCount : 0;
      if (v12)
      {
        goto LABEL_19;
      }

      if (v11 > 18)
      {
        v10 = 31;
        if (v11 > 22)
        {
          if (v11 == 23)
          {
            goto LABEL_29;
          }

          if (v11 == 24)
          {
            v10 = 86;
            goto LABEL_29;
          }

          goto LABEL_10;
        }

        if (v11 == 19)
        {
          goto LABEL_29;
        }

LABEL_19:
        v10 = 15;
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        if (v11 == 15 || v11 == 16)
        {
          v10 = 36;
          goto LABEL_29;
        }

        goto LABEL_10;
      }
    }

    v10 = 16;
  }

LABEL_29:
  v38 = v10;
  v13 = *(this + 16);
  if (!v13)
  {
    v14 = *(this + 12);
    v15 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v16 = v15;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v15);
    v13 = v16 ? 1024 : 0x4000;
    if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
    {
      if (v14 == 17)
      {
        v13 = 0x80000;
      }

      else if (v14 == 21 || v14 == 20)
      {
        v13 = 61440;
      }

      else
      {
        shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
        if (v14 == 10)
        {
          v17 = shouldUseMinBasebandTransportIOReadCount;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v13 = 3584;
        }

        else if ((v14 - 19) > 5)
        {
          v13 = 0x8000;
        }

        else
        {
          v13 = dword_241A66328[v14 - 19];
        }
      }
    }
  }

  v39 = v13;
  v41 = *(this + 88);
  v18 = *(this + 12);
  if (v18 != 20 && v18 != 9)
  {
    goto LABEL_57;
  }

  v48[0] = &unk_2853A3338;
  v49 = v48;
  inactive = dispatch_workloop_create_inactive("com.apple.BasebandTransport.workloop");
  *buf = inactive;
  if (!v49)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v49 + 48))(v49, buf);
  dispatch_activate(inactive);
  v20 = *(this + 45);
  *(this + 45) = inactive;
  if (v20)
  {
    dispatch_release(v20);
  }

  shouldUseMinBasebandTransportIOReadCount = v49;
  if (v49 != v48)
  {
    if (v49)
    {
      shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 40))(v49);
    }

    if (*(this + 45))
    {
      goto LABEL_56;
    }

LABEL_59:
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v21, OS_LOG_TYPE_ERROR, "Failed to create workloop", buf, 2u);
    }

    goto LABEL_95;
  }

  shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 32))(v49);
  if (!*(this + 45))
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = *(this + 12);
LABEL_57:
  switch(v18)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      goto LABEL_70;
    case 2:
      shouldUseMinBasebandTransportIOReadCount = capabilities::diag::supportsQDSS(shouldUseMinBasebandTransportIOReadCount);
      goto LABEL_70;
    case 10:
      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
LABEL_70:
      v25 = v38;
      if (v38 < 0x41)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    case 24:
      v25 = v38;
      if (v38 >= 0x57)
      {
LABEL_63:
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        *v44 = 136315394;
        v45 = v23;
        v46 = 2048;
        v47 = v25;
        v24 = "%s: invalid transport io read count (%lu)";
        goto LABEL_92;
      }

LABEL_71:
      if (capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount))
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0x4000;
      }

      if (v39 > 0x100000 || v26 > v39)
      {
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v44 = 136315394;
        v45 = v31;
        v46 = 2048;
        v47 = v39;
        v24 = "%s: invalid transport io read size (%lu)";
LABEL_92:
        _os_log_error_impl(&dword_241A16000, v22, OS_LOG_TYPE_ERROR, v24, v44, 0x16u);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v37 = *(this + 13);
      if (*(this + 11))
      {
        *(this + 276) = 1;
        v40 = *(this + 14);
      }

      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241A16000, v27, OS_LOG_TYPE_DEFAULT, "#I opening transport", buf, 2u);
      }

      if (!TelephonyBasebandPCITransportCreate())
      {
        *(this + 68) = 2;
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*(this + 12), buf);
          v35 = v43 >= 0 ? buf : *buf;
          *v44 = 136315138;
          v45 = v35;
          _os_log_error_impl(&dword_241A16000, v32, OS_LOG_TYPE_ERROR, "%s: transport open failed", v44, 0xCu);
          if (v43 < 0)
          {
LABEL_93:
            operator delete(*buf);
          }
        }

LABEL_95:
        v28 = 0;
        goto LABEL_96;
      }

      v28 = 1;
      *(this + 68) = 1;
      v29 = *(this + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *v44 = 136315394;
        v45 = v30;
        v46 = 1024;
        LODWORD(v47) = v39;
        _os_log_impl(&dword_241A16000, v29, OS_LOG_TYPE_DEFAULT, "#I %s: transport successfully opened with read io size as %u", v44, 0x12u);
        if (v43 < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_96:
      std::__shared_weak_count::__release_weak(v4);
      v33 = *MEMORY[0x277D85DE8];
      return v28;
    default:
      goto LABEL_95;
  }
}

void sub_241A4639C(_Unwind_Exception *a1)
{
  std::function<void ()(dispatch_workloop_s *)>::~function(v2 - 88);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::timerOn_sync(BasebandTransport *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", buf, 2u);
    }
  }

  if (*(this + 68) == 1)
  {
    v4 = *(this + 58);
    if (v4 && *(this + 27))
    {
      v5 = 1000000000 * v4;
      v6 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, *(this + 3));
      *(this + 28) = v6;
      v7 = dispatch_time(0, v5);
      dispatch_source_set_timer(v6, v7, v5, 0xBEBC200uLL);
      v8 = *(this + 2);
      if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v10;
      p_shared_weak_owners = &v10->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v11);
      }

      v13 = *(this + 28);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 1174405120;
      handler[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_86;
      handler[4] = this;
      handler[5] = v9;
      v19 = v11;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(this + 28));
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 58);
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&dword_241A16000, v14, OS_LOG_TYPE_DEFAULT, "#I Status report enabled(%d sec)", buf, 8u);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241A16000, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid state for status report enable.  Ignoring enable request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void BasebandTransport::dumpState(BasebandTransport *this, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v2[3] = &__block_descriptor_tmp_87;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(this + 1, v2);
}

void *__copy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t BasebandTransport::write(BasebandTransport *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v7 = this + 8;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 0x40000000;
  v34[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke;
  v34[3] = &unk_278D04878;
  v34[5] = &v39;
  v34[6] = this;
  v34[4] = &v35;
  v44 = v34;
  block = MEMORY[0x277D85DD0];
  p_block = 0x40000000;
  v28 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v29 = &__block_descriptor_tmp_99;
  v30 = (this + 8);
  __p = &v44;
  v9 = this + 24;
  v8 = *(this + 3);
  if (*(v9 + 1))
  {
    dispatch_async_and_wait(v8, &block);
    if (*(v40 + 24) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  dispatch_sync(v8, &block);
  if (*(v40 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  block = 0;
  p_block = &block;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59;
  v17[3] = &unk_278D048A0;
  v17[8] = a2;
  v17[9] = a3;
  v17[4] = &block;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = this;
  v43 = v17;
  v44 = MEMORY[0x277D85DD0];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_99;
  v48 = v7;
  v49 = &v43;
  v10 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v10, &v44);
    if (v19[3])
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_sync(v10, &v44);
    if (v19[3])
    {
LABEL_5:
      v11 = v36[3];
      if (*v11)
      {
        v12 = (*v11)(v11, v23[3]);
        *(v40 + 24) = v12;
        if (v12)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 0x40000000;
          v16[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2;
          v16[3] = &unk_278D048C8;
          v16[4] = &v18;
          v16[5] = this;
          v43 = v16;
          v44 = MEMORY[0x277D85DD0];
          v45 = 0x40000000;
          v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v47 = &__block_descriptor_tmp_99;
          v48 = v7;
          v49 = &v43;
          v13 = *(this + 3);
          if (*(this + 4))
          {
            dispatch_async_and_wait(v13, &v44);
          }

          else
          {
            dispatch_sync(v13, &v44);
          }

          v14 = *(v40 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        *(v40 + 24) = 0;
      }

      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&block, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v14 & 1;
}

void sub_241A46AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 216), 8);
  _Block_object_dispose((v39 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    result = v3();
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(v2 + 288) + *(*(*(a1 + 32) + 8) + 24);
  *(v2 + 288) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_debug_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEBUG, "#D Written: %zu bytes, for a total of: %llu", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t BasebandTransport::read(BasebandTransport *this, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = (this + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke;
  v17[3] = &unk_278D048F0;
  v17[5] = &v22;
  v17[6] = this;
  v17[4] = &v18;
  v26 = v17;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_99;
  block[4] = this + 8;
  block[5] = &v26;
  v8 = this + 24;
  v7 = *(this + 3);
  if (*(v8 + 1))
  {
    dispatch_async_and_wait(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = v19[3];
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = v11();
    *(v23 + 24) = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke_63;
      v16[3] = &__block_descriptor_tmp_64;
      v16[4] = this;
      v16[5] = a4;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v6, v16);
      goto LABEL_14;
    }

    v10 = v19[3];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v9 + 24) = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    v13();
  }

LABEL_14:
  v14 = *(v23 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void sub_241A46F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4readEPhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    if (v3())
    {
      LOBYTE(v3) = *(v2 + 276) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(*(a1[5] + 8) + 24) = v3 & 1;
  if (*(v2 + 276) == 1)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "Explicit reads not allowed in async mode", v5, 2u);
    }
  }
}

uint64_t BasebandTransport::close(BasebandTransport *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *(this + 58) = 0;
  v2 = this + 8;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN17BasebandTransport5closeEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_65;
  v9[4] = this;
  v14 = v9;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_99;
  v19 = this + 8;
  v20 = &v14;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    dispatch_sync(v3, &block);
  }

  BasebandTransport::stopReader(this);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN17BasebandTransport5closeEv_block_invoke_2;
  v8[3] = &unk_278D04958;
  v8[4] = &v10;
  v8[5] = this;
  v14 = v8;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_99;
  v19 = v2;
  v20 = &v14;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_241A4724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 224));
    *(v1 + 224) = 0;
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

uint64_t ___ZN17BasebandTransport5closeEv_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BasebandTransport::operator*(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN17BasebandTransportdeEv_block_invoke;
  v5[3] = &unk_278D04980;
  v5[4] = &v6;
  v5[5] = a1;
  v10 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_99;
  block[4] = a1 + 8;
  block[5] = &v10;
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

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t BasebandTransport::close_sync(BasebandTransport *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 22);
  if (v2 && v2(this + 120))
  {
    *(this + 68) = 0;
    v3 = TelephonyUtilTransportFree();
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *(this + 25) = 0;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  BasebandTransport::asString(*(this + 12), __p);
  v5 = __p[0];
  v6 = "error";
  if (v10 >= 0)
  {
    v5 = __p;
  }

  if (v3)
  {
    v6 = "success";
  }

  *buf = 136315394;
  v12 = v5;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "#I Transport close %s: %s", buf, 0x16u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t BasebandTransport::startReader_sync(BasebandTransport *this)
{
  if (!*(this + 30))
  {
    v2 = *(this + 12);
    v3 = capabilities::radio::dal(this);
    if (v3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v2 == 17)
      {
        v4 = 0x80000;
      }

      else if (v2 == 21 || v2 == 20)
      {
        v4 = 61440;
      }

      else
      {
        v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v2 == 10 && (v6 & 1) != 0)
        {
          v4 = 3584;
        }

        else if ((v2 - 19) > 5)
        {
          v4 = 0x8000;
        }

        else
        {
          v4 = qword_241A662F8[v2 - 19];
        }
      }
    }

    *(this + 31) = v4;
    *(this + 30) = operator new[](v4);
    {
      std::string::basic_string[abi:ne200100]<0>(&BasebandTransport::getName(void)::kName, "ipc.bb");
    }

    if (byte_27E55248F >= 0)
    {
      v7 = &BasebandTransport::getName(void)::kName;
    }

    else
    {
      v7 = BasebandTransport::getName(void)::kName;
    }

    v8 = dispatch_queue_create(v7, 0);
    v9 = *(this + 32);
    *(this + 32) = v8;
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  *(this + 236) = 1;
  *(this + 276) = 1;
  BasebandTransport::queueRead_sync(this);
  return *(this + 236);
}

void BasebandTransport::queueRead_sync(BasebandTransport *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 33);
  if (v6)
  {
    dispatch_retain(*(this + 33));
    dispatch_group_enter(v6);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1174405120;
  v8[2] = ___ZN17BasebandTransport14queueRead_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_74;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_async(*(this + 32), v8);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 236);
  *(v1 + 236) = 0;
  *(v1 + 276) = 0;
  return result;
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = result;
    result = v2(v1 + 120);
    if (result)
    {
      if (*(*(*(v3 + 32) + 8) + 24) == 1)
      {
        v4 = *(v1 + 136);
        if (v4)
        {

          return v4(v1 + 120);
        }
      }
    }
  }

  return result;
}

void ___ZN17BasebandTransport14queueRead_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  BasebandTransport::read_sync(v1, &v3);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_241A479D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::read_sync(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  v34 = v6;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v35 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + 240);
    v12 = *(a1 + 48);
    v13 = capabilities::radio::dal(v8);
    v14 = v13;
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
    if (v14)
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0x4000;
    }

    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v12 == 17)
      {
        v16 = 0x80000;
      }

      else if (v12 == 21 || v12 == 20)
      {
        v16 = 61440;
      }

      else
      {
        v17 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v12 == 10)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v16 = 3584;
        }

        else if ((v12 - 19) > 5)
        {
          v16 = 0x8000;
        }

        else
        {
          v16 = dword_241A66328[v12 - 19];
        }
      }
    }

    v19 = v9(a1 + 120, v11, v16, &v33, 0, 0xFFFFFFFFLL, 0);
    if (v33)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 0x40000000;
      v31[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke;
      v31[3] = &__block_descriptor_tmp_75;
      v31[4] = a1;
      v32 = v33;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v31);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_78;
      block[4] = a1;
      block[5] = v6;
      v28 = v10;
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      v21 = *a2;
      group = v21;
      if (v21)
      {
        dispatch_retain(v21);
        dispatch_group_enter(group);
      }

      v30 = v33;
      dispatch_sync(*(a1 + 96), block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v22 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1174405120;
  v25[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_79;
  v25[3] = &__block_descriptor_tmp_80;
  v25[4] = a1;
  v25[5] = v34;
  v26 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v25);
  v23 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v35;
  if (v35)
  {
    if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}