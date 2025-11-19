void std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::LigInput *,0>(__int16 **a1, uint64_t a2, __int16 **a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = v7 - v6;
  v11 = v9 - *a1;
  if (v10 > v11 >> 1)
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = v13 - *a3;
    if (v14 > v10)
    {
      goto LABEL_26;
    }

    LOBYTE(v15) = 1;
LABEL_17:
    if (v14 < v10 || v13 == v12)
    {
LABEL_24:
      v26 = 0;
      if ((v15 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = v6;
      while (1)
      {
        v24 = *v12;
        v25 = *v23;
        if (v24 != v25)
        {
          break;
        }

        ++v12;
        ++v23;
        if (!--v14)
        {
          goto LABEL_24;
        }
      }

      v26 = v24 <= v25;
      if ((v15 & 1) == 0)
      {
LABEL_31:
        if (!v26)
        {
          return;
        }

        goto LABEL_32;
      }
    }

    if (!v26)
    {
      *&v36 = 0xAAAAAAAAAAAAAAAALL;
      *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v36;
      v52 = v36;
      v50 = v36;
      TInlineVector<unsigned short,3ul>::TInlineVector(&v50, v8, v9);
      WORD4(v52) = *(a1 + 20);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
      *(a1 + 20) = *(a2 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, v50, *(&v50 + 1), (*(&v50 + 1) - v50) >> 1);
      *(a2 + 40) = WORD4(v52);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v50);
      v37 = *a3;
      v38 = a3[1];
      v39 = *a2;
      v40 = *(a2 + 8);
      v41 = (v38 - *a3) >> 1;
      v42 = v40 - *a2;
      if (v41 <= v42 >> 1)
      {
        if (v38 == v37 || v41 < v42 >> 1)
        {
          return;
        }

        for (i = *a2; ; ++i)
        {
          v48 = *v37;
          v49 = *i;
          if (v48 != v49)
          {
            break;
          }

          ++v37;
          if (!--v41)
          {
            return;
          }
        }

        if (v48 > v49)
        {
          return;
        }
      }

      *&v43 = 0xAAAAAAAAAAAAAAAALL;
      *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v43;
      v52 = v43;
      v50 = v43;
      TInlineVector<unsigned short,3ul>::TInlineVector(&v50, v39, v40);
      WORD4(v52) = *(a2 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, *a3, a3[1], a3[1] - *a3);
      *(a2 + 40) = *(a3 + 20);
LABEL_27:
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, v50, *(&v50 + 1), (*(&v50 + 1) - v50) >> 1);
      *(a3 + 20) = WORD4(v52);
LABEL_28:
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v50);
      return;
    }

LABEL_26:
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51 = v27;
    v52 = v27;
    v50 = v27;
    TInlineVector<unsigned short,3ul>::TInlineVector(&v50, v8, v9);
    WORD4(v52) = *(a1 + 20);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *a3, a3[1], a3[1] - *a3);
    *(a1 + 20) = *(a3 + 20);
    goto LABEL_27;
  }

  v16 = v11 >> 1;
  if (v7 != v6 && v10 >= v16)
  {
    v15 = v7 - v6;
    v18 = *a1;
    v19 = v6;
    while (1)
    {
      v20 = *v19;
      v21 = *v18;
      if (v20 != v21)
      {
        break;
      }

      ++v19;
      ++v18;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v15) = v20 <= v21;
  }

  else
  {
    LODWORD(v15) = 0;
  }

LABEL_14:
  v12 = *a3;
  v13 = a3[1];
  v14 = v13 - *a3;
  if (v14 <= v10)
  {
    goto LABEL_17;
  }

  if (v15)
  {
    goto LABEL_26;
  }

LABEL_32:
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v28;
  v52 = v28;
  v50 = v28;
  TInlineVector<unsigned short,3ul>::TInlineVector(&v50, v6, v7);
  WORD4(v52) = *(a2 + 40);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, *a3, a3[1], a3[1] - *a3);
  *(a2 + 40) = *(a3 + 20);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, v50, *(&v50 + 1), (*(&v50 + 1) - v50) >> 1);
  *(a3 + 20) = WORD4(v52);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v50);
  v29 = *a2;
  v30 = *(a2 + 8);
  v31 = *a1;
  v32 = a1[1];
  v33 = (v30 - *a2) >> 1;
  v34 = v32 - *a1;
  if (v33 > v34 >> 1)
  {
    goto LABEL_33;
  }

  if (v30 != v29 && v33 >= v34 >> 1)
  {
    for (j = *a1; ; ++j)
    {
      v45 = *v29;
      v46 = *j;
      if (v45 != v46)
      {
        break;
      }

      ++v29;
      if (!--v33)
      {
        return;
      }
    }

    if (v45 <= v46)
    {
LABEL_33:
      *&v35 = 0xAAAAAAAAAAAAAAAALL;
      *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v35;
      v52 = v35;
      v50 = v35;
      TInlineVector<unsigned short,3ul>::TInlineVector(&v50, v31, v32);
      WORD4(v52) = *(a1 + 20);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
      *(a1 + 20) = *(a2 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, v50, *(&v50 + 1), (*(&v50 + 1) - v50) >> 1);
      *(a2 + 40) = WORD4(v52);
      goto LABEL_28;
    }
  }
}

void std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::LigInput *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = (v9 - *a4) >> 1;
  v13 = v11 - *a3;
  if (v12 > v13 >> 1)
  {
    goto LABEL_2;
  }

  v29 = v13 >> 1;
  if (v9 != v8 && v12 >= v29)
  {
    for (i = *a3; ; ++i)
    {
      v32 = *v8;
      v33 = *i;
      if (v32 != v33)
      {
        break;
      }

      ++v8;
      if (!--v12)
      {
        return;
      }
    }

    if (v32 <= v33)
    {
LABEL_2:
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41 = v14;
      v42 = v14;
      v40 = v14;
      TInlineVector<unsigned short,3ul>::TInlineVector(&v40, v10, v11);
      WORD4(v42) = *(a3 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 1);
      *(a3 + 40) = *(a4 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a4, v40, *(&v40 + 1), (*(&v40 + 1) - v40) >> 1);
      *(a4 + 40) = WORD4(v42);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v40);
      v15 = *a3;
      v16 = *(a3 + 8);
      v17 = *a2;
      v18 = *(a2 + 8);
      v19 = (v16 - *a3) >> 1;
      v20 = v18 - *a2;
      if (v19 > v20 >> 1)
      {
        goto LABEL_3;
      }

      if (v16 != v15 && v19 >= v20 >> 1)
      {
        for (j = *a2; ; ++j)
        {
          v35 = *v15;
          v36 = *j;
          if (v35 != v36)
          {
            break;
          }

          ++v15;
          if (!--v19)
          {
            return;
          }
        }

        if (v35 <= v36)
        {
LABEL_3:
          *&v21 = 0xAAAAAAAAAAAAAAAALL;
          *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v41 = v21;
          v42 = v21;
          v40 = v21;
          TInlineVector<unsigned short,3ul>::TInlineVector(&v40, v17, v18);
          WORD4(v42) = *(a2 + 40);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
          *(a2 + 40) = *(a3 + 40);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, v40, *(&v40 + 1), (*(&v40 + 1) - v40) >> 1);
          *(a3 + 40) = WORD4(v42);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v40);
          v22 = *a2;
          v23 = *(a2 + 8);
          v24 = *a1;
          v25 = *(a1 + 8);
          v26 = (v23 - *a2) >> 1;
          v27 = v25 - *a1;
          if (v26 > v27 >> 1)
          {
            goto LABEL_4;
          }

          if (v23 != v22 && v26 >= v27 >> 1)
          {
            for (k = *a1; ; ++k)
            {
              v38 = *v22;
              v39 = *k;
              if (v38 != v39)
              {
                break;
              }

              ++v22;
              if (!--v26)
              {
                return;
              }
            }

            if (v38 <= v39)
            {
LABEL_4:
              *&v28 = 0xAAAAAAAAAAAAAAAALL;
              *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v41 = v28;
              v42 = v28;
              v40 = v28;
              TInlineVector<unsigned short,3ul>::TInlineVector(&v40, v24, v25);
              WORD4(v42) = *(a1 + 40);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
              *(a1 + 40) = *(a2 + 40);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, v40, *(&v40 + 1), (*(&v40 + 1) - v40) >> 1);
              *(a2 + 40) = WORD4(v42);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v40);
            }
          }
        }
      }
    }
  }
}

void std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::LigInput *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = (v11 - *a5) >> 1;
  v15 = v13 - *a4;
  if (v14 > v15 >> 1)
  {
    goto LABEL_2;
  }

  v38 = v15 >> 1;
  if (v11 != v10 && v14 >= v38)
  {
    for (i = *a4; ; ++i)
    {
      v41 = *v10;
      v42 = *i;
      if (v41 != v42)
      {
        break;
      }

      ++v10;
      if (!--v14)
      {
        return;
      }
    }

    if (v41 <= v42)
    {
LABEL_2:
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v53 = v16;
      v54 = v16;
      v52 = v16;
      TInlineVector<unsigned short,3ul>::TInlineVector(&v52, v12, v13);
      WORD4(v54) = *(a4 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a4, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 1);
      *(a4 + 40) = *(a5 + 40);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a5, v52, *(&v52 + 1), (*(&v52 + 1) - v52) >> 1);
      *(a5 + 40) = WORD4(v54);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v52);
      v17 = *a4;
      v18 = *(a4 + 8);
      v19 = *a3;
      v20 = *(a3 + 8);
      v21 = (v18 - *a4) >> 1;
      v22 = v20 - *a3;
      if (v21 > v22 >> 1)
      {
        goto LABEL_3;
      }

      if (v18 != v17 && v21 >= v22 >> 1)
      {
        for (j = *a3; ; ++j)
        {
          v44 = *v17;
          v45 = *j;
          if (v44 != v45)
          {
            break;
          }

          ++v17;
          if (!--v21)
          {
            return;
          }
        }

        if (v44 <= v45)
        {
LABEL_3:
          *&v23 = 0xAAAAAAAAAAAAAAAALL;
          *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v53 = v23;
          v54 = v23;
          v52 = v23;
          TInlineVector<unsigned short,3ul>::TInlineVector(&v52, v19, v20);
          WORD4(v54) = *(a3 + 40);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 1);
          *(a3 + 40) = *(a4 + 40);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a4, v52, *(&v52 + 1), (*(&v52 + 1) - v52) >> 1);
          *(a4 + 40) = WORD4(v54);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v52);
          v24 = *a3;
          v25 = *(a3 + 8);
          v26 = *a2;
          v27 = *(a2 + 8);
          v28 = (v25 - *a3) >> 1;
          v29 = v27 - *a2;
          if (v28 > v29 >> 1)
          {
            goto LABEL_4;
          }

          if (v25 != v24 && v28 >= v29 >> 1)
          {
            for (k = *a2; ; ++k)
            {
              v47 = *v24;
              v48 = *k;
              if (v47 != v48)
              {
                break;
              }

              ++v24;
              if (!--v28)
              {
                return;
              }
            }

            if (v47 <= v48)
            {
LABEL_4:
              *&v30 = 0xAAAAAAAAAAAAAAAALL;
              *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v53 = v30;
              v54 = v30;
              v52 = v30;
              TInlineVector<unsigned short,3ul>::TInlineVector(&v52, v26, v27);
              WORD4(v54) = *(a2 + 40);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 1);
              *(a2 + 40) = *(a3 + 40);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, v52, *(&v52 + 1), (*(&v52 + 1) - v52) >> 1);
              *(a3 + 40) = WORD4(v54);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v52);
              v31 = *a2;
              v32 = *(a2 + 8);
              v33 = *a1;
              v34 = *(a1 + 8);
              v35 = (v32 - *a2) >> 1;
              v36 = v34 - *a1;
              if (v35 > v36 >> 1)
              {
                goto LABEL_5;
              }

              if (v32 != v31 && v35 >= v36 >> 1)
              {
                for (m = *a1; ; ++m)
                {
                  v50 = *v31;
                  v51 = *m;
                  if (v50 != v51)
                  {
                    break;
                  }

                  ++v31;
                  if (!--v35)
                  {
                    return;
                  }
                }

                if (v50 <= v51)
                {
LABEL_5:
                  *&v37 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v53 = v37;
                  v54 = v37;
                  v52 = v37;
                  TInlineVector<unsigned short,3ul>::TInlineVector(&v52, v33, v34);
                  WORD4(v54) = *(a1 + 40);
                  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
                  *(a1 + 40) = *(a2 + 40);
                  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, v52, *(&v52 + 1), (*(&v52 + 1) - v52) >> 1);
                  *(a2 + 40) = WORD4(v54);
                  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v52);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::LigInput *>(uint64_t a1, unsigned __int16 **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 1;
    }

    goto LABEL_11;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_11:
    v12 = a1 + 96;
    v13 = (a1 + 144);
    if ((a1 + 144) != a2)
    {
      v14 = 0;
      while (1)
      {
        v15 = *v13;
        v16 = v13[1];
        v17 = *v12;
        v18 = v16 - *v13;
        v19 = *(v12 + 8) - *v12;
        if (v18 > v19 >> 1)
        {
          goto LABEL_14;
        }

        v31 = v19 >> 1;
        if (v16 != v15 && v18 >= v31)
        {
          v33 = *v13;
          while (1)
          {
            v34 = *v33;
            v35 = *v17;
            if (v34 != v35)
            {
              break;
            }

            ++v33;
            ++v17;
            if (!--v18)
            {
              goto LABEL_40;
            }
          }

          if (v34 <= v35)
          {
LABEL_14:
            *&v20 = 0xAAAAAAAAAAAAAAAALL;
            *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v42 = v20;
            v43 = v20;
            v41 = v20;
            TInlineVector<unsigned short,3ul>::TInlineVector(&v41, v15, v16);
            WORD4(v43) = *(v13 + 20);
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v13, *v12, *(v12 + 8), (*(v12 + 8) - *v12) >> 1);
            *(v13 + 20) = *(v12 + 40);
            v21 = v12;
            while (1)
            {
              v22 = *(v21 - 48);
              v23 = *(v21 - 40);
              v21 -= 48;
              v25 = *(&v41 + 1);
              v24 = v41;
              v26 = (*(&v41 + 1) - v41) >> 1;
              if (v26 <= v23 - v22)
              {
                if (*(&v41 + 1) == v41 || v26 < v23 - v22)
                {
                  break;
                }

                v28 = 0;
                while (1)
                {
                  v29 = *(v41 + 2 * v28);
                  v30 = v22[v28];
                  if (v29 != v30)
                  {
                    break;
                  }

                  if (v26 == ++v28)
                  {
                    goto LABEL_28;
                  }
                }

                if (v29 > v30)
                {
                  break;
                }
              }

              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v12, v22, v23, v23 - v22);
              *(v12 + 40) = *(v12 - 8);
              v12 = v21;
              if (v21 == a1)
              {
                v25 = *(&v41 + 1);
                v24 = v41;
                v26 = (*(&v41 + 1) - v41) >> 1;
                v12 = a1;
                break;
              }
            }

LABEL_28:
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v12, v24, v25, v26);
            *(v12 + 40) = WORD4(v43);
            if (++v14 == 8)
            {
              v36 = v13 + 6 == a2;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v41);
              return v36;
            }

            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v41);
          }
        }

LABEL_40:
        v12 = v13;
        v13 += 6;
        if (v13 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v5 = *(a2 - 6);
  v6 = *(a2 - 5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v6 - v5;
  v10 = v8 - *a1;
  if (v9 > v10 >> 1)
  {
LABEL_5:
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v11;
    v43 = v11;
    v41 = v11;
    TInlineVector<unsigned short,3ul>::TInlineVector(&v41, v7, v8);
    WORD4(v43) = *(a1 + 40);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *(a2 - 6), *(a2 - 5), *(a2 - 5) - *(a2 - 6));
    *(a1 + 40) = *(a2 - 4);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2 - 6, v41, *(&v41 + 1), (*(&v41 + 1) - v41) >> 1);
    *(a2 - 4) = WORD4(v43);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v41);
    return 1;
  }

  v36 = 1;
  if (v6 != v5 && v9 >= v10 >> 1)
  {
    for (i = *a1; ; ++i)
    {
      v39 = *v5;
      v40 = *i;
      if (v39 != v40)
      {
        break;
      }

      ++v5;
      if (!--v9)
      {
        return v36;
      }
    }

    if (v39 > v40)
    {
      return 1;
    }

    goto LABEL_5;
  }

  return v36;
}

BOOL anonymous namespace::MorxLigatureSubtableBuilder::StateNeedsAction(_anonymous_namespace_::MorxLigatureSubtableBuilder *this, int a2, int a3)
{
  v3 = (a3 + *(this + 6) * a2);
  v4 = *(this + 5);
  result = 0;
  if (v3 < (*(this + 6) - v4) >> 1)
  {
    v5 = *(v4 + 2 * v3);
    v6 = *(this + 17);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 18) - v6) >> 1) > v5)
    {
      v7 = (v6 + 6 * v5);
      v8 = v7[1];
      v9 = bswap32(*v7) >> 16;
      if ((v8 & 0xE0) != 0 || v9 > 1)
      {
        return 1;
      }
    }
  }

  return result;
}

void std::vector<anonymous namespace::StateMemberInfo,TInlineBufferAllocator<anonymous namespace::StateMemberInfo,30ul>>::push_back[abi:fn200100](unint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if ((v8 + 1) > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v10;
    }

    v12 = (a1 + 3);
    if (v11)
    {
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = v13 + 56 * v8;
    *v16 = *a2;
    TInlineVector<unsigned short,3ul>::TInlineVector((v16 + 8), *(a2 + 8), *(a2 + 16));
    v17 = *(a2 + 48);
    *(v16 + 52) = *(a2 + 52);
    *(v16 + 48) = v17;
    v18 = *a1;
    v19 = a1[1];
    v20 = v16 - (v19 - *a1);
    v21 = v13 + 56 * v15;
    v7 = v16 + 56;
    if (v19 != *a1)
    {
      v22 = (56 * v8 - 8 * ((v19 - *a1) >> 3) + v13 + 8);
      v23 = *a1;
      v24 = v16 - (v19 - *a1);
      do
      {
        *(v22 - 4) = *v23;
        v25 = TInlineVector<unsigned short,3ul>::TInlineVector(v22, v23[1], v23[2]);
        v26 = *(v23 + 12);
        *(v24 + 52) = *(v23 + 26);
        *(v24 + 48) = v26;
        v23 += 7;
        v24 += 56;
        v22 = v25 + 7;
      }

      while (v23 != v19);
      do
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100]((v18 + 1));
        v18 += 7;
      }

      while (v18 != v19);
      v18 = *a1;
    }

    *a1 = v20;
    a1[1] = v7;
    v27 = a1[2];
    a1[2] = v21;
    if (v18)
    {
      v28 = (a1 + 213);
      if (v12 <= v18 && v28 > v18)
      {
        if (v27 == *v28)
        {
          *v28 = v18;
        }
      }

      else
      {
        operator delete(v18);
      }
    }
  }

  else
  {
    *v5 = *a2;
    TInlineVector<unsigned short,3ul>::TInlineVector((v5 + 8), *(a2 + 8), *(a2 + 16));
    v6 = *(a2 + 48);
    *(v5 + 52) = *(a2 + 52);
    *(v5 + 48) = v6;
    v7 = v5 + 56;
  }

  a1[1] = v7;
}

void DoSubgroupSubstitutions(void *a1, uint64_t a2, unsigned __int16 **a3, uint64_t a4)
{
  v4 = *(a2 + 48) - *(a2 + 40);
  if (v4)
  {
    v6 = a3;
    v9 = 0;
    v10 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 3);
    v25 = v10;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    while (1)
    {
      v12 = *(a2 + 40);
      if (0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - v12) >> 3) <= v9)
      {
        break;
      }

      v13 = v12 + 56 * v9;
      if (*(v13 + 8) == *(v13 + 16))
      {
        v24 = *(v13 + 50);
        if (v24 >= 1)
        {
          if (0x6FB586FB586FB587 * ((a1[1] - *a1) >> 5) <= v24)
          {
            break;
          }

          DoSubgroupSubstitutions(a1, *a1 + 1760 * *(v13 + 50), v6, a4);
        }
      }

      else if (ReplaceSubgroupWithSingle((v13 + 8), v6, a4))
      {
        v14 = a4;
        v15 = a1;
        v28 = 0xAAAAAAAAAAAAAAAALL;
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27[0] = v16;
        v27[1] = v16;
        TInlineVector<unsigned short,3ul>::TInlineVector(v27, *(v13 + 8), *(v13 + 16));
        v17 = 0;
        v18 = *(a2 + 40);
        v19 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - v18) >> 3);
        v20 = *&v27[0];
        v21 = *(&v27[0] + 1) - *&v27[0];
        v22 = (v18 + 16);
        while (v19 != v17)
        {
          v23 = *(v22 - 1);
          if (*v22 - v23 != v21 || memcmp(v23, v20, v21))
          {
            goto LABEL_14;
          }

          ++v17;
          v22 += 7;
          if (v11 == v17)
          {
            v17 = v11;
LABEL_14:
            a1 = v15;
            a4 = v14;
            v6 = a3;
            if (v17 == v25)
            {
              ChangeIdentityForward(a1, a2, a3, a4);
            }

            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v27);
            goto LABEL_20;
          }
        }

        break;
      }

LABEL_20:
      if (++v9 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t GetActionLookupIndex(char **a1, uint64_t a2, int a3, __int16 **a4)
{
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v50[0] = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0uLL;
  v50[1] = v50;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  WORD1(v51) = *(a1 + 857);
  v6 = *a4;
  v5 = a4[1];
  v7 = *(a1 + 856);
  if (*a4 == v5)
  {
    v7 = -1;
  }

  LOWORD(v51) = v7;
  v8 = *a1;
  v9 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v46 = v5;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = v5 - v6;
    while (v9 > v11)
    {
      v13 = &v8[56 * v11];
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(v13 + 1);
      v17 = v12 == *(v13 + 2) - v16 && memcmp(v6, v16, v12) == 0;
      if (v14 == a2)
      {
        if (v15 == a3)
        {
          if (v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v18 = !v17;
          if (v6 == v46)
          {
            v18 = 1;
          }

          if ((v18 & 1) == 0)
          {
            LODWORD(v51) = *(v13 + 12);
          }
        }

        v10 = 1;
      }

      else if (v10)
      {
        v11 = v9 - 1;
      }

      if (++v11 >= v9)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_62:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v11 = 0;
LABEL_24:
  if (v11 == v9)
  {
    LOWORD(v48) = a2;
    WORD1(v48) = a3;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&v48 + 1, v6, v46, v46 - v6);
    v20 = a1[1];
    v19 = a1[2];
    if (v20 >= v19)
    {
      v23 = 0x6DB6DB6DB6DB6DB7 * ((v20 - *a1) >> 3);
      v24 = v23 + 1;
      if ((v23 + 1) > 0x492492492492492)
      {
        goto LABEL_62;
      }

      v25 = 0x6DB6DB6DB6DB6DB7 * ((v19 - *a1) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x249249249249249)
      {
        v26 = 0x492492492492492;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        v27 = a1[213];
        v28 = &v27[56 * v26];
        if (v28 > (a1 + 213))
        {
          if (v26 <= 0x492492492492492)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        a1[213] = v28;
      }

      else
      {
        v27 = 0;
      }

      v29 = &v27[56 * v23];
      *v29 = v48;
      TInlineVector<unsigned short,3ul>::TInlineVector(v29 + 1, *(&v48 + 1), v49);
      *(v29 + 12) = v51;
      v30 = *a1;
      v31 = a1[1];
      v32 = &v29[-(v31 - *a1)];
      v33 = &v27[56 * v26];
      v21 = v29 + 56;
      if (v31 == *a1)
      {
        v22 = a4;
      }

      else
      {
        v34 = &v27[56 * v23 - 8 * ((v31 - *a1) >> 3) + 8];
        v35 = *a1;
        v36 = &v29[-(v31 - *a1)];
        do
        {
          *(v34 - 2) = *v35;
          v37 = TInlineVector<unsigned short,3ul>::TInlineVector(v34, v35[1], v35[2]);
          *(v36 + 12) = *(v35 + 12);
          v35 += 7;
          v36 += 56;
          v34 = v37 + 7;
        }

        while (v35 != v31);
        v22 = a4;
        do
        {
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100]((v30 + 8));
          v30 += 56;
        }

        while (v30 != v31);
        v30 = *a1;
      }

      *a1 = v32;
      a1[1] = v21;
      v38 = a1[2];
      a1[2] = v33;
      if (v30)
      {
        v39 = (a1 + 213);
        if (a1 + 3 <= v30 && v39 > v30)
        {
          if (v38 == *v39)
          {
            *v39 = v30;
          }
        }

        else
        {
          operator delete(v30);
        }
      }
    }

    else
    {
      *v20 = v48;
      TInlineVector<unsigned short,3ul>::TInlineVector(v20 + 1, *(&v48 + 1), v49);
      *(v20 + 12) = v51;
      v21 = v20 + 56;
      v22 = a4;
    }

    a1[1] = v21;
    v41 = *v22;
    v42 = v22[1];
    if (*v22 != v42)
    {
      if (v51 == *(a1 + 856))
      {
        *(a1 + 856) = v51 + 1;
      }

      if (WORD1(v51) == *(a1 + 857))
      {
        *(a1 + 857) = WORD1(v51) + ((v42 - v41) >> 1) + 1;
      }
    }
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v48 + 8);
  return v11;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<anonymous namespace::StateMemberInfo,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 1680);
  result = *(a1 + 1680);
  v4 = result + 56 * a2;
  if (v4 > v2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

uint64_t *TInlineVector<anonymous namespace::StateMemberInfo,30ul>::TInlineVector(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (a1 + 3);
  a1[2] = 0;
  a1[213] = v4;
  if (a3 != a2)
  {
    v5 = a2;
    v6 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3);
    if (v6 >= 0x492492492492493)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *a1 = v8;
    a1[1] = v8;
    a1[2] = v8 + 56 * v9;
    v10 = (v8 + 8);
    do
    {
      v11 = v8;
      *(v10 - 4) = *v5;
      v12 = TInlineVector<unsigned short,3ul>::TInlineVector(v10, *(v5 + 8), *(v5 + 16));
      v13 = *(v5 + 48);
      *(v12 + 22) = *(v5 + 52);
      *(v12 + 10) = v13;
      v5 += 56;
      v8 = (v12 + 6);
      v10 = v12 + 7;
    }

    while (v5 != a3);
    a1[1] = v11 + 56;
  }

  return a1;
}

void std::allocator_traits<TInlineBufferAllocator<anonymous namespace::StateInfo,30ul>>::destroy[abi:fn200100]<anonymous namespace::StateInfo,void,0>(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 56;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v3 - 48);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    v6 = a1 + 218;
    if (a1 + 8 <= v4 && v6 > v4)
    {
      if (a1[7] == *v6)
      {
        *v6 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](a1);
}

unsigned __int16 *ReplaceSubgroupWithSingle(unsigned __int16 *result, unsigned __int16 **a2, unsigned __int16 a3)
{
  v4 = *result;
  v3 = *(result + 1);
  v5 = *a2;
  v6 = a2[1];
  if (v3 - *result >= v6 - *a2)
  {
    v10 = result;
    v7 = 0;
LABEL_5:
    v11 = v6 - v5;
    v12 = v6 - v5;
    while (1)
    {
      if (v6 != v5)
      {
        v13 = v3 - v4;
        v14 = v13 < v12;
        v15 = v13 - v12;
        if (v14 || (v16 = &v4[v15 + 1], v16 == v4))
        {
          v4 = v3;
        }

        else
        {
          v17 = v4;
          while (1)
          {
            result = *v17;
            if (result == *v5)
            {
              break;
            }

LABEL_15:
            ++v17;
            v4 = v3;
            if (v17 == v16)
            {
              goto LABEL_18;
            }
          }

          result = v17 + 1;
          v18 = v5 + 1;
          while (v18 != v6)
          {
            v20 = *result++;
            v19 = v20;
            v21 = *v18++;
            if (v19 != v21)
            {
              goto LABEL_15;
            }
          }

          v4 = v17;
        }
      }

LABEL_18:
      if (v3 == v4)
      {
        break;
      }

      v22 = (v4 + v11);
      *v4++ = a3;
      if (v4 > v22)
      {
        __break(1u);
        return result;
      }

      v7 = 1;
      if (v11 != 2)
      {
        v23 = v4 + v11 - 2;
        v24 = v3 - v23;
        if (v3 != v23)
        {
          result = memmove(v4, v23, v3 - v23);
          v5 = *a2;
        }

        v3 = (v4 + v24);
        *(v10 + 1) = v4 + v24;
        v6 = a2[1];
        v7 = 1;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1);
}

unsigned __int16 *ChangeIdentityForward(void *a1, uint64_t a2, unsigned __int16 **a3, uint64_t a4)
{
  result = ReplaceSubgroupWithSingle(a2, a3, a4);
  if (result)
  {
    v9 = *(a2 + 48) - *(a2 + 40);
    if (v9)
    {
      v10 = 0;
      v11 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
      *(a2 + 1752) = 1;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      for (i = 50; ; i += 56)
      {
        v14 = *(a2 + 40);
        if (0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - v14) >> 3) <= v10)
        {
          break;
        }

        v15 = *(v14 + i);
        if (v15 != -1)
        {
          if (0x6FB586FB586FB587 * ((a1[1] - *a1) >> 5) <= v15)
          {
            break;
          }

          result = ChangeIdentityForward(a1, *a1 + 1760 * v15, a3, a4);
        }

        if (v12 == ++v10)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t GetActionIndex(uint64_t a1, int a2, int a3, int a4)
{
  if (a4 == -1)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3 | 0x2000;
  }

  if (a4 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = v9 - *a1;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 1);
  if (v9 == *a1)
  {
LABEL_16:
    v15 = *(a1 + 16);
    if (v9 >= v15)
    {
      v18 = v11 + 1;
      if (v11 + 1 > 0x2AAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 1);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x1555555555555555)
      {
        v20 = 0x2AAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        v21 = *(a1 + 208);
        v22 = v21 + 6 * v20;
        if (v22 > a1 + 204)
        {
          if (v20 <= 0x2AAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        *(a1 + 208) = v22;
      }

      else
      {
        v21 = 0;
      }

      v23 = (v21 + 2 * (v10 >> 1));
      *v23 = a2;
      v24 = v21 + 6 * v20;
      v23[1] = v6;
      v23[2] = v7;
      v16 = v23 + 3;
      v17 = (v23 - v10);
      memcpy(v23 - v10, v8, v10);
      v25 = *a1;
      *a1 = v17;
      *(a1 + 8) = v16;
      v26 = *(a1 + 16);
      *(a1 + 16) = v24;
      if (v25)
      {
        if (a1 + 24 > v25 || a1 + 204 <= v25)
        {
          operator delete(v25);
          v17 = *a1;
        }

        else if (v26 == *(a1 + 208))
        {
          *(a1 + 208) = v25;
        }
      }
    }

    else
    {
      *v9 = a2;
      v9[1] = v6;
      v16 = v9 + 3;
      v17 = v8;
      v9[2] = v7;
    }

    *(a1 + 8) = v16;
    return 0xAAAAAAAAAAAAAAABLL * (v16 - v17) - 1;
  }

  else
  {
    result = 0;
    if (v11 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 1);
    }

    v14 = v8 + 2;
    while (*(v14 - 2) != a2 || *(v14 - 1) != v6 || *v14 != v7)
    {
      ++result;
      v14 += 3;
      if (v13 == result)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

void *std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::push_back[abi:fn200100](void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v21 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v7;
    v20 = v7;
    v8 = (v4 - *result) >> 2;
    v9 = v8 + 1;
    if ((v8 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(&v19, v11, v8, (result + 3));
    v13 = *(&v19 + 1);
    v12 = v20;
    *v20 = *a2;
    *&v20 = v12 + 4;
    v14 = v3[1] - *v3;
    v15 = v13 - v14;
    memcpy((v13 - v14), *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v17 = v3[2];
    v18 = v20;
    *(v3 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    *&v19 = v16;
    *(&v19 + 1) = v16;
    result = std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(&v19);
    v6 = v18;
  }

  else
  {
    *v4 = *a2;
    v6 = v4 + 1;
  }

  v3[1] = v6;
  return result;
}

__n128 std::__function::__func<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryOne>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryOne>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B4C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 34) = 0;
  *(a2 + 38) = 0;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryOne>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryOne>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *(result + 8);
  if (v4[6] > *a4)
  {
    v5 = result;
    v6 = *a2;
    v7 = *a3;
    result = (*(*v4 + 16))(*(result + 8), 0, *a4);
    if (result)
    {
      if (v6 <= v7)
      {
        do
        {
          if (*(v5 + 16) > v6)
          {
            *(*(v5 + 24) + (v6 >> 3)) |= 1 << (v6 & 7);
          }

          ++v6;
        }

        while (v7 + 1 != v6);
      }
    }

    else if (*(v5 + 32))
    {
      result = (*(*v4 + 16))(v4);
      if (result && v6 <= v7)
      {
        do
        {
          if (*(v5 + 16) > v6)
          {
            *(*(v5 + 24) + (v6 >> 3)) |= 1 << (v6 & 7);
          }

          ++v6;
        }

        while (v7 + 1 != v6);
      }
    }
  }

  return result;
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::clear[abi:fn200100](v2);
    v3 = **a1;
    v4 = *a1 + 93;
    if (*a1 + 3 <= v3 && v4 > v3)
    {
      if ((*a1)[2] == *v4)
      {
        *v4 = v3;
      }
    }

    else
    {

      operator delete(v3);
    }
  }
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::clear[abi:fn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<STXEntryOne,TInlineBufferAllocator<STXEntryOne,30ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 204);
    if (a1 + 24 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (*(a1 + 16) == *(a1 + 208))
      {
        *(a1 + 208) = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void *std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v6 = result;
    result = std::allocator_traits<TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::vector<unsigned short>,4ul>>((result + 3), a4);
    v7 = result;
    *v6 = result;
    v6[1] = result;
    for (v6[2] = &result[3 * v8]; a2 != a3; v7 += 3)
    {
      v9 = std::vector<unsigned short>::vector[abi:fn200100](result, a2);
      a2 += 3;
      result = v9 + 3;
    }

    v6[1] = v7;
  }

  return result;
}

uint64_t std::allocator_traits<TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::vector<unsigned short>,4ul>>(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 96);
  result = *(a1 + 96);
  v4 = result + 24 * a2;
  if (v4 > v3)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v3 = v4;
  return result;
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::clear[abi:fn200100](v2);
    v4 = *a1 + 15;
    v3 = **a1;
    if (*a1 + 3 <= v3 && v4 > v3)
    {
      if ((*a1)[2] == (*a1)[15])
      {
        *v4 = v3;
      }
    }

    else
    {

      operator delete(v3);
    }
  }
}

void *std::__split_buffer<anonymous namespace::SubstFormat3,TInlineBufferAllocator<anonymous namespace::SubstFormat3,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 12480);
    v6 = v5 + 416 * a2;
    if (v6 > a4 + 12480)
    {
      if (a2 < 0x9D89D89D89D89ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 12480) = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + 416 * a3;
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v5 + 416 * a2;
  return a1;
}

void std::vector<anonymous namespace::SubstFormat3,TInlineBufferAllocator<anonymous namespace::SubstFormat3,30ul>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = (v4 + *a1 - v6);
    do
    {
      v8 += 26;
      v9 += 26;
    }

    while (v8 != v6);
    do
    {
      v5 += 52;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = v5;
  a2[1] = v5;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::SubstFormat3,TInlineBufferAllocator<anonymous namespace::SubstFormat3,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 416;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v7 = v5 > v4;
    v6 = (v5 + 12480);
    v7 = !v7 && v6 > v4;
    if (v7)
    {
      if (*(a1 + 24) == *v6)
      {
        *v6 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

__n128 std::allocator_traits<TInlineBufferAllocator<anonymous namespace::SubstFormat3,30ul>>::construct[abi:fn200100]<anonymous namespace::SubstFormat3,anonymous namespace::SubstFormat3,void,0>(__n128 *a1, __n128 *a2)
{
  v3 = a1;
  *a1 = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[8].n128_u64[1] = &a1[2].n128_u64[1];
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(a1[1].n128_u64, v4, v5, 0xAAAAAAAAAAAAAAABLL * (v5 - v4));
  v6 = a2[9].n128_u64[0];
  v7 = a2[9].n128_u64[1];
  v3[9].n128_u64[0] = 0;
  v3 += 9;
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  v3[7].n128_u64[1] = &v3[1].n128_u64[1];
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(v3, v6, v7, 0xAAAAAAAAAAAAAAABLL * (v7 - v6));
  v8 = a2[17].n128_u64[0];
  v9 = a2[17].n128_u64[1];
  v3[8].n128_u64[0] = 0;
  v3[8].n128_u64[1] = 0;
  v3[9].n128_u64[0] = 0;
  v3[15].n128_u64[1] = &v3[9].n128_u64[1];
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(v3[8].n128_u64, v8, v9, 0xAAAAAAAAAAAAAAABLL * (v9 - v8));
  result = a2[25];
  v3[16] = result;
  return result;
}

void std::allocator_traits<TInlineBufferAllocator<anonymous namespace::SubstFormat3,30ul>>::destroy[abi:fn200100]<anonymous namespace::SubstFormat3,void,0>(void **a1)
{
  v2 = a1 + 34;
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = a1 + 18;
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = a1 + 2;
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
}

__n128 std::__function::__func<anonymous namespace::ParseSubstFormat3(OTL::ChainContextSubstFormat3 const*,void const*,std::vector<unsigned short> const&,anonymous namespace::SubstFormat3 *)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<anonymous namespace::ParseSubstFormat3(OTL::ChainContextSubstFormat3 const*,void const*,std::vector<unsigned short> const&,anonymous namespace::SubstFormat3 *)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B510;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::ParseSubstFormat3(OTL::ChainContextSubstFormat3 const*,void const*,std::vector<unsigned short> const&,anonymous namespace::SubstFormat3 *)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<anonymous namespace::ParseSubstFormat3(OTL::ChainContextSubstFormat3 const*,void const*,std::vector<unsigned short> const&,anonymous namespace::SubstFormat3 *)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4)
  {
    do
    {
      v16 = v3;
      v6 = *(a1 + 8);
      v7 = *v6;
      v8 = v6[1];
      if (v8 == *v6)
      {
        goto LABEL_10;
      }

      v9 = v8 - *v6;
      do
      {
        v10 = v9 >> 1;
        v11 = &v7[v9 >> 1];
        v13 = *v11;
        v12 = v11 + 1;
        v9 += ~(v9 >> 1);
        if (v13 < v3)
        {
          v7 = v12;
        }

        else
        {
          v9 = v10;
        }
      }

      while (v9);
      if (v7 == v8 || *v7 > v3)
      {
LABEL_10:
        std::vector<unsigned short>::push_back[abi:fn200100](*(a1 + 16), &v16);
      }
    }

    while (v3++ != v4);
  }

  return 1;
}

uint64_t *std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__init_with_size[abi:fn200100]<std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>>(uint64_t *result, uint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6)
{
  if (a6)
  {
    v8 = result;
    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vallocate[abi:fn200100](result, a6);
    result = v8[1];
    while (a3 != a5)
    {
      a3 -= 3;
      result = std::vector<unsigned short>::vector[abi:fn200100](result, a3) + 3;
    }

    v8[1] = result;
  }

  return result;
}

uint64_t std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::allocator_traits<TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::vector<unsigned short>,30ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 24 * v4;
  return result;
}

uint64_t std::allocator_traits<TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::vector<unsigned short>,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 720);
  result = *(a1 + 720);
  v4 = result + 24 * a2;
  if (v4 > v2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>>(uint64_t *a1, uint64_t a2, char **a3, int a4, char **a5, unint64_t a6)
{
  v8 = a3;
  v10 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= a6)
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - v10) >> 3);
    if (v14 >= a6)
    {
      std::__copy_move_unwrap_iters[abi:fn200100]<std::__copy_impl,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::vector<unsigned short>*,0>(v23, a2, a3, a4, a5, v10);
      v18 = v23[2];
      v19 = a1[1];
      if (v19 != v23[2])
      {
        v20 = a1[1];
        do
        {
          v22 = *(v20 - 24);
          v20 -= 24;
          v21 = v22;
          if (v22)
          {
            *(v19 - 16) = v21;
            operator delete(v21);
          }

          v19 = v20;
        }

        while (v20 != v18);
      }

      a1[1] = v18;
    }

    else
    {
      memset(v23, 170, sizeof(v23));
      std::__copy_move_unwrap_iters[abi:fn200100]<std::__copy_impl,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::vector<unsigned short>*,0>(v23, a2, a3, a3 - 24 * v14, &a3[-3 * v14], v10);
      v15 = v23[1];
      v16 = a1[1];
      if (a5 != v23[1])
      {
        v17 = a1[1];
        do
        {
          v15 -= 3;
          v17 = std::vector<unsigned short>::vector[abi:fn200100](v17, v15) + 3;
          v16 += 24;
        }

        while (v15 != a5);
      }

      a1[1] = v16;
    }
  }

  else
  {
    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vdeallocate(a1);
    if (a6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v11 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    if (v11 <= a6)
    {
      v11 = a6;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vallocate[abi:fn200100](a1, v12);
    v13 = a1[1];
    while (v8 != a5)
    {
      v8 -= 3;
      v13 = std::vector<unsigned short>::vector[abi:fn200100](v13, v8) + 3;
    }

    a1[1] = v13;
  }
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::clear[abi:fn200100](a1);
    v2 = *a1;
    v3 = a1 + 93;
    if ((a1 + 3) <= *a1 && v3 > v2)
    {
      if (a1[2] == *v3)
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::__copy_move_unwrap_iters[abi:fn200100]<std::__copy_impl,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::reverse_iterator<std::__wrap_iter<std::vector<unsigned short> const*>>,std::vector<unsigned short>*,0>(void *result, uint64_t a2, char **a3, int a4, char **a5, char **a6)
{
  v8 = result;
  if (a3 == a5)
  {
    v9 = a3;
  }

  else
  {
    v9 = a5;
    v10 = a3 - 3;
    do
    {
      if (v10 != a6)
      {
        result = std::vector<unsigned short>::__assign_with_size[abi:fn200100]<unsigned short *,unsigned short *>(a6, *v10, v10[1], (v10[1] - *v10) >> 1);
      }

      a6 += 3;
      v11 = v10 == v9;
      v10 -= 3;
    }

    while (!v11);
  }

  *v8 = a2;
  v8[1] = v9;
  v8[2] = a6;
  return result;
}

void *std::vector<unsigned short>::__assign_with_size[abi:fn200100]<unsigned short *,unsigned short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 1)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 <= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned short>::__vallocate[abi:fn200100](v7, v11);
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 1)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::vector<unsigned short>::__vallocate[abi:fn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<unsigned short>::allocate_at_least[abi:fn200100](a1, a2);
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::vector<unsigned short> const*>,std::__wrap_iter<std::vector<unsigned short> const*>>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= a4)
  {
    v13 = a1[1] - v8;
    if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
    {
      std::__copy_impl::operator()[abi:fn200100]<std::vector<unsigned short> const*,std::vector<unsigned short> const*,std::vector<unsigned short>*>(a2, a3, v8);
      v20 = v19;
      v21 = a1[1];
      if (v21 != v19)
      {
        v22 = a1[1];
        do
        {
          v24 = *(v22 - 24);
          v22 -= 24;
          v23 = v24;
          if (v24)
          {
            *(v21 - 16) = v23;
            operator delete(v23);
          }

          v21 = v22;
        }

        while (v22 != v20);
      }

      a1[1] = v20;
    }

    else
    {
      v14 = std::__copy_impl::operator()[abi:fn200100]<std::vector<unsigned short> const*,std::vector<unsigned short> const*,std::vector<unsigned short>*>(a2, (a2 + v13), v8);
      v15 = a1[1];
      if (v14 != a3)
      {
        v16 = v14;
        v17 = a1[1];
        do
        {
          v18 = std::vector<unsigned short>::vector[abi:fn200100](v17, v16);
          v16 += 3;
          v17 = v18 + 3;
          v15 += 24;
        }

        while (v16 != a3);
      }

      a1[1] = v15;
    }
  }

  else
  {
    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vdeallocate(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::__vallocate[abi:fn200100](a1, v10);
    v11 = a1[1];
    while (v6 != a3)
    {
      v12 = std::vector<unsigned short>::vector[abi:fn200100](v11, v6);
      v6 += 3;
      v11 = v12 + 3;
    }

    a1[1] = v11;
  }
}

char **std::__copy_impl::operator()[abi:fn200100]<std::vector<unsigned short> const*,std::vector<unsigned short> const*,std::vector<unsigned short>*>(char **a1, char **a2, char **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        std::vector<unsigned short>::__assign_with_size[abi:fn200100]<unsigned short *,unsigned short *>(a3, *v4, v4[1], (v4[1] - *v4) >> 1);
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::vector<unsigned short>::vector[abi:fn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned short>::__vallocate[abi:fn200100](result, (v2 - *a2) >> 1);
  }

  return result;
}

__CFData *CreateSingleSubstitutionLKTHandle(int64_t a1, int a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = NewLKTHandle(a1, 0);
  if (a2 == 3)
  {
    v37 = a3;
    v17 = a3 + 3;
    if ((a3 + 3) <= a4)
    {
      v18 = bswap32(a3[2]) >> 16;
      v19 = &v17[v18];
      v20 = (a3 + 4) <= a4 ? (a4 - v17) >> 1 : 0;
      v21 = v19 <= a4 && v19 >= v17;
      if (v21 || v20 == v18)
      {
        OTL::LookupWithCoverage::GetCoverage(a3, a4, v31, v12, v13);
        operator new();
      }
    }

    goto LABEL_20;
  }

  if (a2 != 1)
  {
LABEL_20:
    DisposeLKTHandle(v11);
    return 0;
  }

  std::__function::__value_func<BOOL ()(unsigned short)>::__value_func[abi:fn200100](v36, a6);
  v34 = a5;
  v35 = v11;
  v16 = bswap32(*a3) >> 16;
  if (v16 == 2)
  {
    v33 = a3;
    v23 = a3 + 3;
    if ((a3 + 3) <= a4)
    {
      v24 = bswap32(a3[2]) >> 16;
      v25 = &v23[v24];
      v27 = v25 >= v23 && v25 <= a4;
      v28 = (a4 - v23) >> 1;
      if ((a3 + 4) > a4)
      {
        v28 = 0;
      }

      if (v27 || v28 == v24)
      {
        v32 = 0xAAAAAAAAAAAAAAAALL;
        *&v29 = 0xAAAAAAAAAAAAAAAALL;
        *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31[1] = v29;
        v31[2] = v29;
        v31[0] = v29;
        OTL::LookupWithCoverage::GetCoverage(a3, a4, v31, -3.72066208e-103, v15);
        operator new();
      }
    }
  }

  else if (v16 == 1)
  {
    v33 = a3;
    if ((a3 + 3) <= a4)
    {
      OTL::LookupWithCoverage::GetCoverage(a3, a4, v31, v14, v15);
      operator new();
    }
  }

  std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:fn200100](v36);
  return v11;
}

__n128 std::__function::__func<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_0,std::allocator<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B558;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_0,std::allocator<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4)
  {
    v6 = v4 + 1;
    do
    {
      if (std::function<BOOL ()(unsigned short)>::operator()(*(*(a1 + 8) + 24), v3) && LKTAddRange(**(a1 + 16), v3, v3, v3 + (bswap32(*(**(a1 + 24) + 4)) >> 16)))
      {
        *(**(a1 + 32) + (v3 >> 3)) |= 1 << (v3 & 7);
      }

      ++v3;
    }

    while (v6 != v3);
  }

  return 1;
}

uint64_t std::function<BOOL ()(unsigned short)>::operator()(uint64_t a1, __int16 a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:fn200100]();
    JUMPOUT(0x184718F74);
  }

  return (*(*a1 + 48))(a1, &v3);
}

__n128 std::__function::__func<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_1,std::allocator<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_1>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B5A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_1,std::allocator<AddSingleSubstitutions(LKTHandle,OTL::LookupSubtable const*,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>)::$_1>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= v5)
  {
    v7 = *a4;
    v8 = v5 + 1;
    v9 = *a2;
    do
    {
      if (std::function<BOOL ()(unsigned short)>::operator()(*(*(a1 + 8) + 24), v9) && **(a1 + 16) > (v9 - v4 + v7) && LKTAddRange(**(a1 + 24), v9, v9, bswap32(*(**(a1 + 32) + 2 * (v9 - v4 + v7) + 6)) >> 16))
      {
        *(**(a1 + 40) + (v9 >> 3)) |= 1 << (v9 & 7);
      }

      ++v9;
    }

    while (v8 != v9);
  }

  return 1;
}

__n128 std::__function::__func<CreateSingleSubstitutionLKTHandle(long,std::pair<unsigned int,OTL::LookupSubtable const*>,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>,unsigned short)::$_0,std::allocator<CreateSingleSubstitutionLKTHandle(long,std::pair<unsigned int,OTL::LookupSubtable const*>,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>,unsigned short)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B5E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<CreateSingleSubstitutionLKTHandle(long,std::pair<unsigned int,OTL::LookupSubtable const*>,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>,unsigned short)::$_0,std::allocator<CreateSingleSubstitutionLKTHandle(long,std::pair<unsigned int,OTL::LookupSubtable const*>,void const*,unsigned char *,std::function<BOOL ()(unsigned short)>,unsigned short)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = 1;
  if (v4 <= v5)
  {
    v8 = *a4;
    v9 = v5 + 1;
    v10 = *a2;
    while (1)
    {
      if (std::function<BOOL ()(unsigned short)>::operator()(*(*(a1 + 8) + 24), v10))
      {
        v11 = **(a1 + 16);
        v12 = **(a1 + 24);
        v13 = v11 + 6;
        if (v11 + 6 > v12)
        {
          return 0;
        }

        v14 = v10 - v4 + v8;
        v15 = bswap32(*(v11 + 4)) >> 16;
        v16 = v13 + 2 * v15;
        if (v16 < v13 || v16 > v12)
        {
          if (v11 + 8 <= v12)
          {
            v18 = (v12 - v13) >> 1;
          }

          else
          {
            v18 = 0;
          }

          if (v15 <= v14 || v18 != v15)
          {
            return 0;
          }
        }

        else if (v15 <= v14)
        {
          return 0;
        }

        v20 = (v11 + (bswap32(*(v13 + 2 * (v10 - v4 + v8))) >> 16));
        v21 = v20 + 1;
        if ((v20 + 1) > v12)
        {
          return 0;
        }

        v22 = bswap32(*v20) >> 16;
        v23 = &v21[v22];
        v24 = (v20 + 2) <= v12 ? (v12 - v21) >> 1 : 0;
        v25 = v23 <= v12 && v23 >= v21;
        if (!v25 && v24 != v22)
        {
          return 0;
        }

        if (**(a1 + 32) < v22 && LKTAddRange(**(a1 + 40), v10, v10, bswap32(v21[**(a1 + 32)]) >> 16))
        {
          *(**(a1 + 48) + (v10 >> 3)) |= 1 << (v10 & 7);
        }
      }

      if (v9 == ++v10)
      {
        return 1;
      }
    }
  }

  return v6;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned short)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6>,BOOL ()(unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF25B630;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6>,BOOL ()(unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF25B630;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865F22D0);
}

void *std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6>,BOOL ()(unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B630;
  std::vector<unsigned short>::vector[abi:fn200100]((a2 + 8), (a1 + 8));
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v5;
  *(a2 + 32) = v4;

  return std::vector<unsigned short>::vector[abi:fn200100]((a2 + 80), (a1 + 80));
}

void std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6>,BOOL ()(unsigned short)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

BOOL std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6>,BOOL ()(unsigned short)>::operator()(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = v3 - v2;
  do
  {
    v6 = v5 >> 1;
    v7 = &v2[v5 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v5 += ~(v5 >> 1);
    if (v9 < v4)
    {
      v2 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v2 == v3 || *v2 > v4)
  {
    return 0;
  }

  v11 = a1[10];
  v12 = a1[11];
  if (v12 == v11)
  {
    return 1;
  }

  v13 = v12 - v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v11[v13 >> 1];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += ~(v13 >> 1);
    if (v17 < v4)
    {
      v11 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  return v11 == v12 || *v11 > v4;
}

void std::__function::__alloc_func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6>,BOOL ()(unsigned short)>::destroy[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:fn200100](uint64_t a1)
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

unsigned __int16 *AddGlyphClassesByAppearance(unsigned __int16 **a1, __CFData *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a4 != a5)
  {
    v7 = a4;
    while (1)
    {
      v9 = 0;
      v10 = *(v7 + 4);
      v11 = v7 + 8;
      do
      {
        v7 = v11;
        v12 = *(v11 - 8);
        v13 = LKTGetValue(a2, v12);
        if ((v13 & 0x10000) != 0)
        {
          v44 = v13;
          v9 = 1;
        }

        else
        {
          LKTAddRange(a2, v12, v12, v44);
        }

        if (v7 == a5)
        {
          break;
        }

        v11 = v7 + 8;
      }

      while (*(v7 + 4) == v10);
      v15 = *a1;
      v14 = a1[1];
      v16 = v14 - *a1;
      if (v14 == *a1)
      {
        v18 = a1[1];
      }

      else
      {
        v17 = v16 >> 1;
        v18 = *a1;
        do
        {
          v19 = v17 >> 1;
          v20 = &v18[v17 >> 1];
          v22 = *v20;
          v21 = v20 + 1;
          v17 += ~(v17 >> 1);
          if (v22 < v44)
          {
            v18 = v21;
          }

          else
          {
            v17 = v19;
          }
        }

        while (v17);
      }

      v23 = a1[2];
      if (v14 >= v23)
      {
        v25 = v16 >> 1;
        if (v16 >> 1 <= -2)
        {
          goto LABEL_63;
        }

        v26 = v23 - v15;
        if (v26 <= v25 + 1)
        {
          v27 = v25 + 1;
        }

        else
        {
          v27 = v26;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          std::allocator<unsigned short>::allocate_at_least[abi:fn200100](a1, v28);
        }

        v29 = v18 - v15;
        v30 = v18 - v15;
        v31 = (2 * v30);
        if (!v30)
        {
          if (v29 < 1)
          {
            if (v18 == v15)
            {
              v39 = 1;
            }

            else
            {
              v39 = v18 - v15;
            }

            std::allocator<unsigned short>::allocate_at_least[abi:fn200100](a1, v39);
          }

          v31 = (v31 - (((v29 >> 1) + 1) & 0x7FFFFFFFFFFFFFFELL));
        }

        *v31 = v44;
        memcpy(v31 + 1, v18, a1[1] - v18);
        v32 = *a1;
        v33 = v31 + a1[1] - v18 + 2;
        a1[1] = v18;
        v34 = v18 - v32;
        v35 = v31 - (v18 - v32);
        memcpy(v35, v32, v34);
        v36 = *a1;
        *a1 = v35;
        a1[1] = v33;
        a1[2] = 0;
        if (v36)
        {
          operator delete(v36);
        }

        if (v9)
        {
          goto LABEL_39;
        }
      }

      else if (v18 == v14)
      {
        *v14 = v44;
        a1[1] = v14 + 1;
        if (v9)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v14 < 2)
        {
          v24 = a1[1];
        }

        else
        {
          *v14 = *(v14 - 1);
          v24 = v14 + 1;
        }

        a1[1] = v24;
        if (v14 != v18 + 1)
        {
          memmove(v18 + 1, v18, v14 - (v18 + 1));
          v24 = a1[1];
        }

        if (v24 < v18)
        {
          goto LABEL_62;
        }

        v37 = v24 <= &v44 || v18 > &v44;
        v38 = 2;
        if (v37)
        {
          v38 = 0;
        }

        *v18 = *(&v44 + v38);
        if (v9)
        {
          goto LABEL_39;
        }
      }

      ++v44;
LABEL_39:
      if (v7 == a5)
      {
        v40 = *a1;
        v41 = a1[1];
        goto LABEL_58;
      }
    }
  }

  v41 = 0;
  v40 = 0;
LABEL_58:
  result = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,std::__equal_to &>(v40, v41);
  v43 = a1[1];
  if (result > v43)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (result != v43)
  {
    a1[1] = result;
  }

  return result;
}

void std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::push_back[abi:fn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::allocator_traits<TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::vector<unsigned short>,30ul>>(a1 + 24, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v11 + 24 * v7);
    v13 = v11 + 24 * v10;
    std::vector<unsigned short>::vector[abi:fn200100](v12, a2);
    v6 = v12 + 3;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12 + 3;
    v17 = *(a1 + 16);
    *(a1 + 16) = v13;
    if (v16)
    {
      if (a1 + 24 > v16 || (v18 = (a1 + 744), a1 + 744 <= v16))
      {
        operator delete(v16);
      }

      else if (v17 == *v18)
      {
        *v18 = v16;
      }
    }
  }

  else
  {
    v6 = std::vector<unsigned short>::vector[abi:fn200100](v4, a2) + 3;
  }

  *(a1 + 8) = v6;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

__n128 std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B6A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t **std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4)
  {
    v5 = result;
    v6 = v4 + 1;
    do
    {
      v9 = v3;
      v7 = v5[1];
      v8 = *v5[2];
      v10 = &v9;
      result = std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v7, v3);
      *(result + 5) |= v8;
      ++v3;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_1 &,std::pair<unsigned short,unsigned int> *,false>(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  for (i = v7; ; *(i - 4) = v53)
  {
LABEL_3:
    v7 = i;
    v9 = &a2[-i] >> 3;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          LODWORD(v53) = *(i + 12);
          LODWORD(v52) = *(i + 4);
          v78 = *(a2 - 1);
          if (v53 >= v52)
          {
            if (v78 < v53)
            {
              v131 = *(i + 8);
              *(i + 8) = *(a2 - 4);
              *(a2 - 4) = v131;
              *(i + 12) = v78;
              *(a2 - 1) = v53;
              v132 = *(i + 12);
              v133 = *(i + 4);
              if (v132 < v133)
              {
                v134 = *i;
                *i = *(i + 8);
                *(i + 8) = v134;
                *(i + 4) = v132;
                *(i + 12) = v133;
              }
            }

            return result;
          }

          LOWORD(v15) = *i;
          if (v78 < v53)
          {
            *i = *(a2 - 4);
            *(a2 - 4) = v15;
            *(i + 4) = v78;
LABEL_190:
            *(a2 - 1) = v52;
            return result;
          }

LABEL_188:
          *v7 = *(v7 + 8);
          *(v7 + 8) = v15;
          *(v7 + 4) = v53;
          *(v7 + 12) = v52;
          v145 = *(a2 - 1);
          if (v145 >= v52)
          {
            return result;
          }

          *(v7 + 8) = *(a2 - 4);
          *(a2 - 4) = v15;
          *(v7 + 12) = v145;
          goto LABEL_190;
        case 4:
          v82 = (i + 12);
          v83 = *(i + 12);
          v85 = (i + 4);
          v84 = *(i + 4);
          v86 = *(i + 20);
          if (v83 >= v84)
          {
            if (v86 < v83)
            {
              v135 = *(i + 8);
              v136 = *(i + 16);
              *(i + 8) = v136;
              *(i + 16) = v135;
              *(i + 12) = v86;
              *(i + 20) = v83;
              if (v86 < v84)
              {
                v137 = *i;
                *i = v136;
                *(i + 8) = v137;
                goto LABEL_194;
              }

LABEL_195:
              v86 = v83;
            }
          }

          else
          {
            v87 = *i;
            if (v86 < v83)
            {
              *i = *(i + 16);
              *(i + 16) = v87;
              goto LABEL_193;
            }

            *i = *(i + 8);
            *(i + 8) = v87;
            *(i + 4) = v83;
            *(i + 12) = v84;
            if (v86 < v84)
            {
              *(i + 8) = *(i + 16);
              *(i + 16) = v87;
              v85 = (i + 12);
LABEL_193:
              v82 = (i + 20);
              v83 = v84;
LABEL_194:
              *v85 = v86;
              *v82 = v84;
              goto LABEL_195;
            }
          }

          v146 = *(a2 - 1);
          if (v146 < v86)
          {
            v147 = *(i + 16);
            *(i + 16) = *(a2 - 4);
            *(a2 - 4) = v147;
            *(i + 20) = v146;
            *(a2 - 1) = v86;
            v148 = *(i + 20);
            v149 = *(i + 12);
            if (v148 < v149)
            {
              v150 = *(i + 8);
              v151 = *(i + 16);
              *(i + 8) = v151;
              *(i + 16) = v150;
              *(i + 12) = v148;
              *(i + 20) = v149;
              v152 = *(i + 4);
              if (v148 < v152)
              {
                v153 = *i;
                *i = v151;
                *(i + 8) = v153;
                *(i + 4) = v148;
                *(i + 12) = v152;
              }
            }
          }

          return result;
        case 5:
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v79 = *(a2 - 1);
        v80 = *(i + 4);
        if (v79 < v80)
        {
          v81 = *i;
          *i = *(a2 - 4);
          *(a2 - 4) = v81;
          *(i + 4) = v79;
          *(a2 - 1) = v80;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v98 = (v9 - 2) >> 1;
        v99 = v98;
        do
        {
          v100 = v99;
          if (v98 >= v99)
          {
            v101 = (2 * v99) | 1;
            v102 = (i + 8 * v101);
            if (2 * v100 + 2 < v9)
            {
              v103 = v102[1];
              v104 = v102[3];
              v102 += 2 * (v103 < v104);
              if (v103 < v104)
              {
                v101 = 2 * v100 + 2;
              }
            }

            v105 = (i + 8 * v100);
            v106 = v102[1];
            if (v106 >= v105[1])
            {
              v107 = *v105;
              v108 = v105[1];
              do
              {
                v109 = v105;
                v105 = v102;
                *v109 = *v102;
                v109[1] = v106;
                if (v98 < v101)
                {
                  break;
                }

                v110 = (2 * v101) | 1;
                v102 = (i + 8 * v110);
                v111 = 2 * v101 + 2;
                if (v111 < v9)
                {
                  v112 = v102[1];
                  result = v102[3];
                  v102 += 2 * (v112 < result);
                  if (v112 < result)
                  {
                    v110 = v111;
                  }
                }

                v106 = v102[1];
                v101 = v110;
              }

              while (v106 >= v108);
              *v105 = v107;
              v105[1] = v108;
            }
          }

          v99 = v100 - 1;
        }

        while (v100);
        do
        {
          v113 = 0;
          v114 = *i;
          v115 = i;
          do
          {
            v116 = (v115 + 8 * v113);
            v117 = (v116 + 2);
            v118 = (2 * v113) | 1;
            v113 = 2 * v113 + 2;
            if (v113 >= v9)
            {
              v113 = v118;
            }

            else
            {
              v119 = v116[3];
              v120 = v116[5];
              v121 = (v116 + 4);
              if (v119 >= v120)
              {
                v113 = v118;
              }

              else
              {
                v117 = v121;
              }
            }

            *v115 = *v117;
            *(v115 + 4) = *(v117 + 1);
            v115 = v117;
          }

          while (v113 <= ((v9 - 2) >> 1));
          if (v117 == a2 - 8)
          {
            *v117 = v114;
            *(v117 + 1) = HIDWORD(v114);
          }

          else
          {
            *v117 = *(a2 - 4);
            *(v117 + 1) = *(a2 - 1);
            *(a2 - 4) = v114;
            *(a2 - 1) = HIDWORD(v114);
            v122 = &v117[-i + 8] >> 3;
            v123 = v122 < 2;
            v124 = v122 - 2;
            if (!v123)
            {
              v125 = v124 >> 1;
              v126 = i + 8 * v125;
              v127 = *(v126 + 4);
              if (v127 < *(v117 + 1))
              {
                v128 = *v117;
                v129 = *(v117 + 1);
                do
                {
                  v130 = v117;
                  v117 = v126;
                  *v130 = *v126;
                  *(v130 + 1) = v127;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = i + 8 * v125;
                  v127 = *(v126 + 4);
                }

                while (v127 < v129);
                *v117 = v128;
                *(v117 + 1) = v129;
              }
            }
          }

          a2 -= 8;
          v123 = v9-- <= 2;
        }

        while (!v123);
      }

      return result;
    }

    v10 = i + 8 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 4);
      v13 = *(i + 4);
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 4) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 4);
          v20 = *(i + 4);
          if (v19 < v20)
          {
            v21 = *i;
            *i = *v10;
            *v10 = v21;
            *(i + 4) = v19;
            *(v10 + 4) = v20;
          }
        }
      }

      else
      {
        v14 = *i;
        if (v11 < v12)
        {
          *i = *(a2 - 4);
          *(a2 - 4) = v14;
          *(i + 4) = v11;
          goto LABEL_27;
        }

        *i = *v10;
        *v10 = v14;
        *(i + 4) = v12;
        *(v10 + 4) = v13;
        v25 = *(a2 - 1);
        if (v25 < v13)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 4) = v25;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v26 = (v10 - 8);
      v27 = *(v10 - 4);
      v28 = *(i + 12);
      v29 = *(a2 - 3);
      if (v27 >= v28)
      {
        if (v29 < v27)
        {
          v31 = *v26;
          *v26 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 4) = v29;
          *(a2 - 3) = v27;
          v32 = *(v10 - 4);
          v33 = *(i + 12);
          if (v32 < v33)
          {
            v34 = *(i + 8);
            *(i + 8) = *v26;
            *v26 = v34;
            *(i + 12) = v32;
            *(v10 - 4) = v33;
          }
        }
      }

      else
      {
        v30 = *(i + 8);
        if (v29 < v27)
        {
          *(i + 8) = *(a2 - 8);
          *(a2 - 8) = v30;
          *(i + 12) = v29;
          goto LABEL_39;
        }

        *(i + 8) = *v26;
        *v26 = v30;
        *(i + 12) = v27;
        *(v10 - 4) = v28;
        v36 = *(a2 - 3);
        if (v36 < v28)
        {
          *v26 = *(a2 - 8);
          *(a2 - 8) = v30;
          *(v10 - 4) = v36;
LABEL_39:
          *(a2 - 3) = v28;
        }
      }

      v37 = *(v10 + 12);
      v38 = *(i + 20);
      v39 = *(a2 - 5);
      if (v37 >= v38)
      {
        if (v39 < v37)
        {
          v41 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 12);
          *(a2 - 12) = v41;
          *(v10 + 12) = v39;
          *(a2 - 5) = v37;
          v42 = *(v10 + 12);
          v43 = *(i + 20);
          if (v42 < v43)
          {
            v44 = *(i + 16);
            *(i + 16) = *(v10 + 8);
            *(v10 + 8) = v44;
            *(i + 20) = v42;
            *(v10 + 12) = v43;
          }
        }
      }

      else
      {
        v40 = *(i + 16);
        if (v39 < v37)
        {
          *(i + 16) = *(a2 - 12);
          *(a2 - 12) = v40;
          *(i + 20) = v39;
          goto LABEL_48;
        }

        *(i + 16) = *(v10 + 8);
        *(v10 + 8) = v40;
        *(i + 20) = v37;
        *(v10 + 12) = v38;
        v45 = *(a2 - 5);
        if (v45 < v38)
        {
          *(v10 + 8) = *(a2 - 12);
          *(a2 - 12) = v40;
          *(v10 + 12) = v45;
LABEL_48:
          *(a2 - 5) = v38;
        }
      }

      v46 = *(v10 + 4);
      v47 = *(v10 - 4);
      v48 = *(v10 + 12);
      if (v46 >= v47)
      {
        LOWORD(v15) = *v10;
        if (v48 >= v46)
        {
LABEL_55:
          v47 = v46;
        }

        else
        {
          v49 = *(v10 + 8);
          *v10 = v49;
          *(v10 + 8) = v15;
          *(v10 + 4) = v48;
          *(v10 + 12) = v46;
          if (v48 >= v47)
          {
            v47 = v48;
            LOWORD(v15) = v49;
          }

          else
          {
            LOWORD(v15) = *v26;
            *v26 = v49;
            *v10 = v15;
            *(v10 - 4) = v48;
            *(v10 + 4) = v47;
          }
        }
      }

      else
      {
        LOWORD(v15) = *v26;
        if (v48 < v46)
        {
          *v26 = *(v10 + 8);
          *(v10 + 8) = v15;
          *(v10 - 4) = v48;
          *(v10 + 12) = v47;
          LOWORD(v15) = *v10;
          goto LABEL_55;
        }

        *v26 = *v10;
        *v10 = v15;
        *(v10 - 4) = v46;
        *(v10 + 4) = v47;
        if (v48 < v47)
        {
          v68 = *(v10 + 8);
          *v10 = v68;
          *(v10 + 8) = v15;
          *(v10 + 4) = v48;
          *(v10 + 12) = v47;
          v47 = v48;
          LOWORD(v15) = v68;
        }
      }

      v50 = *i;
      *i = v15;
      *v10 = v50;
      v51 = *(i + 4);
      *(i + 4) = v47;
      *(v10 + 4) = v51;
      goto LABEL_57;
    }

    LODWORD(v15) = *(i + 4);
    v16 = *(v10 + 4);
    if (v15 >= v16)
    {
      if (v11 < v15)
      {
        v22 = *i;
        *i = *(a2 - 4);
        *(a2 - 4) = v22;
        *(i + 4) = v11;
        *(a2 - 1) = v15;
        v23 = *(i + 4);
        v24 = *(v10 + 4);
        if (v23 < v24)
        {
          LOWORD(v15) = *v10;
          *v10 = *i;
          *i = v15;
          *(v10 + 4) = v23;
          *(i + 4) = v24;
        }
      }
    }

    else
    {
      v17 = *v10;
      if (v11 < v15)
      {
        LOWORD(v15) = *(a2 - 4);
        *v10 = v15;
        *(a2 - 4) = v17;
        *(v10 + 4) = v11;
LABEL_36:
        *(a2 - 1) = v16;
        goto LABEL_57;
      }

      *v10 = *i;
      *i = v17;
      *(v10 + 4) = v15;
      *(i + 4) = v16;
      v35 = *(a2 - 1);
      if (v35 < v16)
      {
        *i = *(a2 - 4);
        *(a2 - 4) = v17;
        *(i + 4) = v35;
        goto LABEL_36;
      }
    }

LABEL_57:
    --a3;
    if ((a4 & 1) != 0 || *(i - 4) < *(i + 4))
    {
      v15 = 0;
      v52 = *i;
      v53 = HIDWORD(*i);
      do
      {
        if (&v15[i + 8] == a2)
        {
          goto LABEL_187;
        }

        v54 = *&v15[i + 12];
        v15 += 8;
      }

      while (v54 < v53);
      v55 = &v15[i];
      v56 = a2;
      if (v15 != 8)
      {
        while (v56 != i)
        {
          v15 = v56 - 8;
          v57 = *(v56 - 1);
          v56 -= 8;
          if (v57 < v53)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_187;
      }

      v58 = a2;
      while (v55 < v58)
      {
        v15 = v58 - 8;
        v59 = *(v58 - 1);
        v58 -= 8;
        if (v59 < v53)
        {
          goto LABEL_71;
        }
      }

      v15 = v58;
LABEL_71:
      i = v55;
      if (v55 < v15)
      {
        v60 = v15;
LABEL_73:
        v61 = *i;
        *i = *v60;
        *v60 = v61;
        v62 = *(i + 4);
        *(i + 4) = *(v60 + 1);
        *(v60 + 1) = v62;
        v63 = (i + 8);
        while (v63 != a2)
        {
          v64 = *(v63 + 1);
          v63 += 8;
          if (v64 >= v53)
          {
            i = (v63 - 8);
            v65 = v60;
            while (v65 != v7)
            {
              v60 = v65 - 8;
              v66 = *(v65 - 1);
              v65 -= 8;
              if (v66 < v53)
              {
                if (i < v60)
                {
                  goto LABEL_73;
                }

                goto LABEL_80;
              }
            }

            goto LABEL_187;
          }
        }

        goto LABEL_187;
      }

LABEL_80:
      if (i - 8 != v7)
      {
        *v7 = *(i - 8);
        *(v7 + 4) = *(i - 4);
      }

      *(i - 8) = v52;
      *(i - 4) = v53;
      if (v55 < v15)
      {
LABEL_85:
        a4 = 0;
        goto LABEL_3;
      }

      if (!result)
      {
        if (v67)
        {
          goto LABEL_3;
        }

        goto LABEL_85;
      }

      a2 = (i - 8);
      if (v67)
      {
        return result;
      }

      goto LABEL_2;
    }

    v52 = *i;
    v53 = HIDWORD(*i);
    if (*(a2 - 1) <= v53)
    {
      v70 = i + 8;
      do
      {
        i = v70;
        if (v70 >= a2)
        {
          break;
        }

        v71 = *(v70 + 4);
        v70 += 8;
      }

      while (v71 <= v53);
    }

    else
    {
      v69 = (i + 8);
      do
      {
        if (v69 == a2)
        {
          goto LABEL_187;
        }

        LODWORD(v15) = *(v69 + 1);
        v69 += 8;
      }

      while (v15 <= v53);
      i = (v69 - 8);
    }

    v72 = a2;
    if (i < a2)
    {
      v15 = a2;
      while (v15 != v7)
      {
        v72 = v15 - 8;
        v73 = *(v15 - 1);
        v15 -= 8;
        if (v73 <= v53)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_187;
    }

LABEL_108:
    if (i < v72)
    {
      v74 = *i;
      *i = *v72;
      *v72 = v74;
      v75 = *(i + 4);
      *(i + 4) = *(v72 + 1);
      *(v72 + 1) = v75;
      v15 = (i + 8);
      while (v15 != a2)
      {
        v76 = *(v15 + 1);
        v15 += 8;
        if (v76 > v53)
        {
          i = (v15 - 8);
          v15 = v72;
          while (v15 != v7)
          {
            v72 = v15 - 8;
            v77 = *(v15 - 1);
            v15 -= 8;
            if (v77 <= v53)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_187;
        }
      }

      goto LABEL_187;
    }

    if (i - 8 != v7)
    {
      *v7 = *(i - 8);
      *(v7 + 4) = *(i - 4);
    }

    a4 = 0;
    *(i - 8) = v52;
  }

  if ((a4 & 1) == 0)
  {
    if (i == a2)
    {
      return result;
    }

    v15 = (i + 8);
    if ((i + 8) == a2)
    {
      return result;
    }

    v138 = 0;
    v52 = (i + 12);
    v53 = -8;
    v139 = 8;
    while (1)
    {
      v140 = i + v138;
      v138 = v139;
      if (*(v140 + 12) < *(v140 + 4))
      {
        break;
      }

LABEL_185:
      v139 = v138 + 8;
      v15 = (i + v138 + 8);
      v52 += 2;
      v53 -= 8;
      if (v15 == a2)
      {
        return result;
      }
    }

    v141 = *v15;
    LODWORD(v15) = *(v15 + 1);
    v142 = v53;
    v143 = v52;
    while (1)
    {
      *(v143 - 2) = *(v143 - 6);
      *v143 = *(v143 - 2);
      if (!v142)
      {
        break;
      }

      v144 = *(v143 - 4);
      v143 -= 2;
      v142 += 8;
      if (v144 <= v15)
      {
        *(v143 - 2) = v141;
        *v143 = v15;
        goto LABEL_185;
      }
    }

LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (i != a2)
  {
    v88 = (i + 8);
    if ((i + 8) != a2)
    {
      v89 = 0;
      v90 = i;
      do
      {
        v91 = v90[3];
        v92 = v90[1];
        v90 = v88;
        if (v91 < v92)
        {
          v93 = *v88;
          v94 = v90[1];
          v95 = v89;
          while (1)
          {
            v96 = i + v95;
            *(v96 + 8) = *(i + v95);
            *(v96 + 12) = *(i + v95 + 4);
            if (!v95)
            {
              break;
            }

            v95 -= 8;
            if (*(v96 - 4) <= v94)
            {
              v97 = i + v95 + 8;
              goto LABEL_135;
            }
          }

          v97 = i;
LABEL_135:
          *v97 = v93;
          *(v97 + 4) = v94;
        }

        v88 = v90 + 2;
        v89 += 8;
      }

      while (v90 + 2 != a2);
    }
  }

  return result;
}

__int16 *std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_1 &,std::pair<unsigned short,unsigned int> *,0>(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 >= v6)
  {
    if (v7 >= v5)
    {
      v5 = *(a3 + 1);
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      *(a2 + 1) = v7;
      *(a3 + 1) = v5;
      v10 = *(a2 + 1);
      v11 = *(result + 1);
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        *(result + 1) = v10;
        *(a2 + 1) = v11;
        v5 = *(a3 + 1);
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v5)
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
LABEL_9:
      *(a3 + 1) = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    *(result + 1) = v5;
    *(a2 + 1) = v6;
    v5 = *(a3 + 1);
    if (v5 < v6)
    {
      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = *(a4 + 1);
  if (v13 < v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    *(a3 + 1) = v13;
    *(a4 + 1) = v5;
    v15 = *(a3 + 1);
    v16 = *(a2 + 1);
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      *(a2 + 1) = v15;
      *(a3 + 1) = v16;
      v18 = *(a2 + 1);
      v19 = *(result + 1);
      if (v18 < v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        *(result + 1) = v18;
        *(a2 + 1) = v19;
      }
    }
  }

  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_1 &,std::pair<unsigned short,unsigned int> *>(uint64_t a1, _DWORD *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 12);
      v7 = *(a1 + 4);
      v8 = *(a2 - 1);
      if (v6 >= v7)
      {
        if (v8 < v6)
        {
          v22 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 4);
          *(a2 - 4) = v22;
          *(a1 + 12) = v8;
          *(a2 - 1) = v6;
          v23 = *(a1 + 12);
          v24 = *(a1 + 4);
          if (v23 < v24)
          {
            v25 = *a1;
            *a1 = *(a1 + 8);
            *(a1 + 8) = v25;
            *(a1 + 4) = v23;
            *(a1 + 12) = v24;
          }
        }

        return 1;
      }

      v9 = *a1;
      if (v8 >= v6)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v9;
        *(a1 + 4) = v6;
        *(a1 + 12) = v7;
        v32 = *(a2 - 1);
        if (v32 >= v7)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 4);
        *(a2 - 4) = v9;
        *(a1 + 12) = v32;
      }

      else
      {
        *a1 = *(a2 - 4);
        *(a2 - 4) = v9;
        *(a1 + 4) = v8;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v16 = (a1 + 12);
    v17 = *(a1 + 12);
    v19 = (a1 + 4);
    v18 = *(a1 + 4);
    v20 = *(a1 + 20);
    if (v17 >= v18)
    {
      if (v20 < v17)
      {
        v29 = *(a1 + 8);
        v30 = *(a1 + 16);
        *(a1 + 8) = v30;
        *(a1 + 16) = v29;
        *(a1 + 12) = v20;
        *(a1 + 20) = v17;
        if (v20 >= v18)
        {
LABEL_49:
          v20 = v17;
          goto LABEL_50;
        }

        v31 = *a1;
        *a1 = v30;
        *(a1 + 8) = v31;
LABEL_48:
        *v19 = v20;
        *v16 = v18;
        goto LABEL_49;
      }
    }

    else
    {
      v21 = *a1;
      if (v20 < v17)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v21;
LABEL_47:
        v16 = (a1 + 20);
        v17 = v18;
        goto LABEL_48;
      }

      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      *(a1 + 4) = v17;
      *(a1 + 12) = v18;
      if (v20 < v18)
      {
        *(a1 + 8) = *(a1 + 16);
        *(a1 + 16) = v21;
        v19 = (a1 + 12);
        goto LABEL_47;
      }
    }

LABEL_50:
    v42 = *(a2 - 1);
    if (v42 < v20)
    {
      v43 = *(a1 + 16);
      *(a1 + 16) = *(a2 - 4);
      *(a2 - 4) = v43;
      *(a1 + 20) = v42;
      *(a2 - 1) = v20;
      v44 = *(a1 + 20);
      v45 = *(a1 + 12);
      if (v44 < v45)
      {
        v46 = *(a1 + 8);
        v47 = *(a1 + 16);
        *(a1 + 8) = v47;
        *(a1 + 16) = v46;
        *(a1 + 12) = v44;
        *(a1 + 20) = v45;
        v48 = *(a1 + 4);
        if (v44 < v48)
        {
          v49 = *a1;
          *a1 = v47;
          *(a1 + 8) = v49;
          *(a1 + 4) = v44;
          *(a1 + 12) = v48;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *(a1 + 4);
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v5;
      *(a1 + 4) = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = *(a1 + 12);
  v12 = (a1 + 4);
  v11 = *(a1 + 4);
  v14 = (a1 + 20);
  v13 = *(a1 + 20);
  if (v10 < v11)
  {
    v15 = *a1;
    if (v13 >= v10)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v15;
      *(a1 + 4) = v10;
      *(a1 + 12) = v11;
      if (v13 >= v11)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
      *(a1 + 16) = v15;
      v12 = (a1 + 12);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v15;
    }

    goto LABEL_33;
  }

  if (v13 < v10)
  {
    v26 = *(a1 + 8);
    v27 = *(a1 + 16);
    *(a1 + 8) = v27;
    *(a1 + 16) = v26;
    *(a1 + 12) = v13;
    *(a1 + 20) = v10;
    if (v13 < v11)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 8) = v28;
      v14 = (a1 + 12);
LABEL_33:
      *v12 = v13;
      *v14 = v11;
    }
  }

LABEL_34:
  v33 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = (a1 + 16);
  while (1)
  {
    if (v33[1] < v36[1])
    {
      v37 = *v33;
      v38 = v33[1];
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 24) = *(a1 + v39 + 16);
        *(v40 + 28) = *(a1 + v39 + 20);
        if (v39 == -16)
        {
          break;
        }

        v39 -= 8;
        if (*(v40 + 12) <= v38)
        {
          v41 = a1 + v39 + 24;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v37;
      *(v41 + 4) = v38;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 8;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void std::vector<std::pair<unsigned short,unsigned int>,TInlineBufferAllocator<std::pair<unsigned short,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 264);
    if (a1 + 24 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (*(a1 + 16) == *(a1 + 264))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

__n128 std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_2,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B6E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_2,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromSubstitution(long,unsigned int,unsigned int,TInlineVector<std::vector<unsigned short>,30ul> const&,TInlineVector<std::vector<unsigned short>,30ul> const&,__CFData const*,std::vector<unsigned short> const&)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4)
  {
    v5 = result;
    v6 = v4 + 1;
    do
    {
      v25 = v3;
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      v26[0] = &v25;
      result = std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v7, v3);
      v9 = result;
      v11 = *(v8 + 8);
      v10 = *(v8 + 16);
      if (v11 >= v10)
      {
        v13 = *v8;
        v14 = v11 - *v8;
        v15 = (v14 >> 3) + 1;
        if (v15 >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v16 = v10 - v13;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        v26[4] = v8 + 24;
        if (v17)
        {
          v18 = *(v8 + 264);
          v19 = &v18[8 * v17];
          if (v19 > v8 + 264)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *(v8 + 264) = v19;
        }

        else
        {
          v18 = 0;
        }

        v20 = &v18[8 * (v14 >> 3)];
        v21 = &v18[8 * v17];
        *v20 = v25;
        *(v20 + 1) = *(v9 + 20);
        v12 = v20 + 8;
        v22 = v18;
        memcpy(v18, v13, v14);
        v23 = *v8;
        *v8 = v22;
        v26[0] = v23;
        v26[1] = v23;
        *(v8 + 8) = v12;
        v26[2] = v23;
        v24 = *(v8 + 16);
        *(v8 + 16) = v21;
        v26[3] = v24;
        result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v26);
      }

      else
      {
        *v11 = v25;
        *(v11 + 4) = *(result + 20);
        v12 = (v11 + 8);
      }

      *(v8 + 8) = v12;
      ++v3;
    }

    while (v6 != v3);
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 34) = 0;
  *(a2 + 38) = 0;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::PopulateBitmap(long)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *(result + 8);
  if (v4[6] > *a4)
  {
    v5 = result;
    v6 = *a2;
    v7 = *a3;
    result = (*(*v4 + 16))(*(result + 8), 0, *a4);
    if (result)
    {
      if (v6 <= v7)
      {
        do
        {
          if (*(v5 + 16) > v6)
          {
            *(*(v5 + 24) + (v6 >> 3)) |= 1 << (v6 & 7);
          }

          ++v6;
        }

        while (v7 + 1 != v6);
      }
    }

    else if (*(v5 + 32))
    {
      result = (*(*v4 + 16))(v4);
      if (result && v6 <= v7)
      {
        do
        {
          if (*(v5 + 16) > v6)
          {
            *(*(v5 + 24) + (v6 >> 3)) |= 1 << (v6 & 7);
          }

          ++v6;
        }

        while (v7 + 1 != v6);
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::MorxContextualSubtableBuilder::PrepareArabicStateTable(uint64_t a1, unsigned __int16 **a2, int64_t a3, unsigned __int16 ***a4, unsigned __int16 **a5)
{
  v9 = NewLKTHandle(a3, 1);
  if (qword_1ED5681E0 != -1)
  {
LABEL_75:
  }

  __p = 0;
  v49 = 0;
  v50 = 0;
  std::vector<unsigned short>::reserve(&__p, qword_1ED5681D8);
  v10 = (*(&_MergedGlobals_33 + 1) - _MergedGlobals_33) >> 1;
  std::vector<unsigned short>::resize(&__p, v10);
  (*(*a2 + 84))(a2, _MergedGlobals_33, __p, v10);
  v11 = __p;
  v12 = v49;
  while (v11 != v12)
  {
    if (*v11)
    {
      LKTAddRange(v9, *v11, *v11, 4);
    }

    ++v11;
  }

  v13 = (*(&xmmword_1ED5681A8 + 1) - xmmword_1ED5681A8) >> 1;
  std::vector<unsigned short>::resize(&__p, v13);
  (*(*a2 + 84))(a2, xmmword_1ED5681A8, __p, v13);
  v14 = __p;
  v15 = v49;
  while (v14 != v15)
  {
    if (*v14)
    {
      LKTAddRange(v9, *v14, *v14, 5);
    }

    ++v14;
  }

  v16 = (qword_1ED5681C8 - qword_1ED5681C0) >> 1;
  std::vector<unsigned short>::resize(&__p, v16);
  (*(*a2 + 84))(a2, qword_1ED5681C0, __p, v16);
  v17 = __p;
  v18 = v49;
  while (v17 != v18)
  {
    if (*v17)
    {
      LKTAddRange(v9, *v17, *v17, 6);
    }

    ++v17;
  }

  LODWORD(v47) = 537724480;
  std::vector<unsigned short>::resize(&__p, 2uLL);
  (*(*a2 + 84))(a2, &v47, __p, 2);
  v19 = __p;
  v20 = v49;
  while (v19 != v20)
  {
    if (*v19)
    {
      LKTAddRange(v9, *v19, *v19, 7);
    }

    ++v19;
  }

  a2 = *a4;
  v21 = a4[1];
  while (a2 != v21)
  {
    if (*a2 == a2[1])
    {
      __break(1u);
      goto LABEL_75;
    }

    v22 = LKTGetValue(v9, **a2);
    v23 = *a2;
    v24 = a2[1];
    if (*a2 != v24)
    {
      a4 = v22;
      v25 = 0;
      while (1)
      {
        v26 = LKTGetValue(v9, *v23);
        if ((v25 & ((v26 & 0x10000) == 0)) != 0)
        {
          break;
        }

        if ((v26 & 0x10000) != 0)
        {
          if (v26 != a4 && v26 != 6)
          {
            break;
          }

          ++v23;
          v25 = 1;
          if (v23 == v24)
          {
            goto LABEL_39;
          }
        }

        else if (++v23 == v24)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_40;
          }

LABEL_39:
          LKTAddRange(v9, *(a2 + 20), *(a2 + 20), a4);
          goto LABEL_40;
        }
      }

LABEL_45:
      v30 = 0;
      goto LABEL_71;
    }

LABEL_40:
    a2 += 6;
  }

  v29 = *a5;
  v28 = a5[1];
  while (v29 != v28)
  {
    if ((LKTGetValue(v9, *v29) & 0x10000) != 0)
    {
      goto LABEL_45;
    }

    ++v29;
  }

  *(a1 + 24) = 8;
  LKTCreateLookupTable(v9, &v47);

  DisposeLKTHandle(v9);
  for (i = 0; i != 48; ++i)
  {
    LOWORD(v47) = word_18477B370[i] - 1;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](a1 + 40, &v47);
  }

  v32 = *(a1 + 136);
  v33 = *(a1 + 152);
  if ((v33 - v32) >= 0x78)
  {
    v35 = *(a1 + 144);
    v36 = v35 - v32;
    if ((v35 - v32) > 0x77)
    {
      v32[14] = 0xFFFF000300000000;
      *(v32 + 4) = xmmword_18477B410;
      *(v32 + 5) = unk_18477B420;
      *(v32 + 6) = xmmword_18477B430;
      *v32 = xmmword_18477B3D0;
      *(v32 + 1) = unk_18477B3E0;
      *(v32 + 2) = xmmword_18477B3F0;
      *(v32 + 3) = unk_18477B400;
      v38 = (v32 + 15);
      v30 = 1;
      *(a1 + 144) = v38;
      goto LABEL_71;
    }

    if (v35 != v32)
    {
      memcpy(*(a1 + 136), &xmmword_18477B3D0, v35 - v32);
    }

    v37 = *(a1 + 144);
    v45 = ((v32 - v35 + 112) & 0xFFFFFFFFFFFFFFF8) + 8;
    memcpy(v37, &xmmword_18477B3D0 + v36, v45);
    v44 = &v37[v45];
  }

  else
  {
    if (v32)
    {
      *(a1 + 144) = v32;
      if (a1 + 160 > v32 || (v34 = (a1 + 400), a1 + 400 <= v32))
      {
        operator delete(v32);
      }

      else if (v33 == *v34)
      {
        *v34 = v32;
      }

      v33 = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
    }

    v39 = v33 >> 2;
    if ((v33 >> 2) <= 0xF)
    {
      v39 = 15;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      v40 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v39;
    }

    if (v40 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v41 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(a1 + 160, v40);
    v42 = 0;
    *(a1 + 136) = v41;
    *(a1 + 152) = v41 + 8 * v43;
    do
    {
      *(v41 + v42) = *(&xmmword_18477B3D0 + v42);
      v42 += 8;
    }

    while (v42 != 120);
    v44 = (v41 + 120);
  }

  *(a1 + 144) = v44;
  v30 = 1;
LABEL_71:
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  return v30;
}

uint64_t **TInlineVector<anonymous namespace::LigInput,30ul>::TInlineVector(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (a1 + 3);
  a1[2] = 0;
  a1[183] = v4;
  if (a3 != a2)
  {
    v5 = a2;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4);
    if (v6 >= 0x555555555555556)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *a1 = v8;
    a1[1] = v8;
    a1[2] = &v8[6 * v9];
    do
    {
      v10 = TInlineVector<unsigned short,3ul>::TInlineVector(v8, *v5, *(v5 + 8));
      *(v10 + 20) = *(v5 + 40);
      v5 += 48;
      v8 = v10 + 6;
    }

    while (v5 != a3);
    a1[1] = v8;
  }

  return a1;
}

uint64_t anonymous namespace::MorxContextualSubtableBuilder::BuildArabicSubtableData(atomic_ullong *this, const __CFData *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || a4 == 0 || a5 == 0;
  v8 = !v7;
  if (!v7)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = 0x10000000;
    CFDataAppendBytes(explicit, bytes, 4);
    v15 = CFDataGetLength(a2) + 16;
    v16 = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = bswap32(v15);
    CFDataAppendBytes(v16, bytes, 4);
    v17 = v15 + CFDataGetLength(a3);
    v18 = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = bswap32(v17);
    CFDataAppendBytes(v18, bytes, 4);
    v19 = v17 + CFDataGetLength(a4);
    v20 = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = bswap32(v19);
    CFDataAppendBytes(v20, bytes, 4);
  }

  return v8;
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:fn200100](result, a2);
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  return result;
}

void ArabicCharactersWithJoiningType(const char *a1, const char *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = U_ZERO_ERROR;
  OpenUSetWithPattern(&v2, "[[[:block=Arabic:][:block=Arabic_Supplement:][:block=Arabic_Extended_A:][:Bidi_Control:]]&[:Joining_Type=%s:]]", a2);
}

uint64_t std::__function::__func<ArabicCharactersWithJoiningType(char const*)::$_0,std::allocator<ArabicCharactersWithJoiningType(char const*)::$_0>,void ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B778;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ArabicCharactersWithJoiningType(char const*)::$_0,std::allocator<ArabicCharactersWithJoiningType(char const*)::$_0>,void ()(unsigned int,unsigned int)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (HIWORD(*a2))
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == v4;
  }

  if (!v5)
  {
    do
    {
      v7 = *(a1 + 8);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      if (v9 >= v8)
      {
        v11 = *v7;
        v12 = v9 - *v7;
        v13 = v12 >> 1;
        if (v12 >> 1 <= -2)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v14 = v8 - v11;
        if (v14 <= v13 + 1)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::allocator<unsigned short>::allocate_at_least[abi:fn200100](*(a1 + 8), v16);
        }

        *(2 * v13) = v3;
        v10 = 2 * v13 + 2;
        memcpy(0, v11, v12);
        v17 = *v7;
        *v7 = 0;
        *(v7 + 8) = v10;
        *(v7 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v3;
        v10 = (v9 + 1);
      }

      *(v7 + 8) = v10;
      ++v3;
    }

    while (v4 != v3);
  }
}

void *std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0>,BOOL ()(unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF25B7C0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0>,BOOL ()(unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF25B7C0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0>,BOOL ()(unsigned short)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0>,BOOL ()(unsigned short)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

BOOL std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_0>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    return 1;
  }

  v4 = *a2;
  v5 = v3 - v2;
  do
  {
    v6 = v5 >> 1;
    v7 = &v2[v5 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v5 += ~(v5 >> 1);
    if (v9 < v4)
    {
      v2 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  return v2 == v3 || *v2 > v4;
}

uint64_t std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_1,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B808;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_1,std::allocator<anonymous namespace::MorxContextualSubtableBuilder::FromArabicLookups(TBaseFont const&,unsigned int,unsigned int,anonymous namespace::ArabicLookups const&,void const*,std::vector<unsigned short> const&)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= v5)
  {
    v6 = result;
    v7 = *a4;
    v8 = v5 + 1;
    do
    {
      result = LKTGetValue(*(v6 + 8), v4);
      if ((result & 0x10000) != 0)
      {
        result = LKTAddRange(*(v6 + 8), v7, v7, result);
      }

      ++v4;
    }

    while (v8 != v4);
  }

  return result;
}

void *std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::emplace<MortFeatureEntry>(void *result, char *__src, uint64_t *a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v6 >= v7)
  {
    v14 = *result;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v14) >> 2) + 1;
    if (v15 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v16 = __src - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 2);
    if (2 * v17 > v15)
    {
      v15 = 2 * v17;
    }

    if (v17 >= 0xAAAAAAAAAAAAAAALL)
    {
      v18 = 0x1555555555555555;
    }

    else
    {
      v18 = v15;
    }

    v39 = (result + 3);
    if (v18)
    {
      v19 = std::allocator_traits<TInlineBufferAllocator<MortFeatureEntry,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<MortFeatureEntry,30ul>>((result + 3), v18);
    }

    else
    {
      v19 = 0;
    }

    v21 = v19 + 4 * (v16 >> 2);
    v22 = v19 + 12 * v18;
    v36 = v21;
    v38 = v22;
    if (0xAAAAAAAAAAAAAAABLL * (v16 >> 2) == v18)
    {
      if (v16 < 1)
      {
        if (v14 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v16 >> 2);
        }

        v44 = v5 + 24;
        v24 = std::allocator_traits<TInlineBufferAllocator<MortFeatureEntry,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<MortFeatureEntry,30ul>>(v5 + 24, v23);
        v25 = v24 + 12 * (v23 >> 2);
        v35 = v24;
        v36 = v25;
        v40 = v19;
        v41 = v19 + 4 * (v16 >> 2);
        v38 = v24 + 12 * v26;
        v42 = v41;
        v43 = v22;
        std::__split_buffer<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul> &>::~__split_buffer(&v40);
        v21 = v25;
      }

      else
      {
        v21 -= 12 * ((1 - 0x5555555555555555 * (v16 >> 2)) >> 1);
        v36 = v21;
      }
    }

    v27 = *a3;
    *(v21 + 8) = *(a3 + 2);
    *v21 = v27;
    v37 = (v21 + 12);
    memcpy((v21 + 12), __src, *(v5 + 8) - __src);
    v28 = *v5;
    v29 = v36;
    v30 = v21 + 12 + *(v5 + 8) - __src;
    *(v5 + 8) = __src;
    v31 = (__src - v28);
    v32 = &v29[-(__src - v28)];
    memcpy(v32, v28, v31);
    v33 = *v5;
    *v5 = v32;
    *(v5 + 8) = v30;
    v34 = *(v5 + 16);
    *(v5 + 16) = v38;
    v37 = v33;
    v38 = v34;
    v35 = v33;
    v36 = v33;
    return std::__split_buffer<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul> &>::~__split_buffer(&v35);
  }

  else if (__src == v6)
  {
    v20 = *a3;
    *(v6 + 2) = *(a3 + 2);
    *v6 = v20;
    result[1] = v6 + 12;
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 1);
    v10 = *(a3 + 4);
    v11 = __src + 12;
    if (v6 < 0xC)
    {
      v12 = result[1];
    }

    else
    {
      v12 = v6 + 12;
      v13 = *(v6 - 12);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v13;
    }

    result[1] = v12;
    if (v6 != v11)
    {
      result = memmove(__src + 12, __src, v6 - v11);
    }

    *__src = v8;
    *(__src + 1) = v9;
    *(__src + 4) = v10;
  }

  return result;
}

void *std::allocator_traits<TInlineBufferAllocator<anonymous namespace::MorxChainBuilder,30ul>>::construct[abi:fn200100]<anonymous namespace::MorxChainBuilder,anonymous namespace::MorxChainBuilder const&,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::vector[abi:fn200100]<std::__wrap_iter<MortFeatureEntry const*>,0>((a1 + 8), *(a2 + 8), *(a2 + 16));
  v4 = *(a2 + 400);
  v5 = *(a2 + 408);
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 664) = a1 + 424;
  std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<TCFRef<__CFData *> const*>,std::__wrap_iter<TCFRef<__CFData *> const*>>((a1 + 400), v4, v5, v5 - v4);
  v6 = *(a2 + 672);
  v7 = *(a2 + 680);
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 936) = a1 + 696;

  return std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<TCFRef<__CFData const*> const*>,std::__wrap_iter<TCFRef<__CFData const*> const*>>((a1 + 672), v6, v7, v7 - v6);
}

uint64_t *std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::vector[abi:fn200100]<std::__wrap_iter<MortFeatureEntry const*>,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (a1 + 3);
  a1[2] = 0;
  a1[48] = v4;
  if (a3 != a2)
  {
    v5 = a2;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2);
    if (v6 >= 0x1555555555555556)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = std::allocator_traits<TInlineBufferAllocator<MortFeatureEntry,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<MortFeatureEntry,30ul>>(v4, v6);
    *a1 = v8;
    a1[1] = v8;
    a1[2] = v8 + 12 * v9;
    do
    {
      v10 = *v5;
      *(v8 + 8) = *(v5 + 2);
      *v8 = v10;
      v8 += 12;
      v5 = (v5 + 12);
    }

    while (v5 != a3);
    a1[1] = v8;
  }

  return a1;
}

void *std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<TCFRef<__CFData *> const*>,std::__wrap_iter<TCFRef<__CFData *> const*>>(void *result, atomic_ullong *a2, atomic_ullong *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v6 = result;
    result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>((result + 3), a4);
    v7 = result;
    *v6 = result;
    v6[1] = result;
    v6[2] = &result[v8];
    if (a2 != a3)
    {
      v9 = result;
      do
      {
        result = atomic_load_explicit(a2, memory_order_acquire);
        *v9++ = result;
        ++a2;
        ++v7;
      }

      while (a2 != a3);
    }

    v6[1] = v7;
  }

  return result;
}

void *std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<TCFRef<__CFData const*> const*>,std::__wrap_iter<TCFRef<__CFData const*> const*>>(void *result, atomic_ullong *a2, atomic_ullong *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v6 = result;
    result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>((result + 3), a4);
    v7 = result;
    *v6 = result;
    v6[1] = result;
    v6[2] = &result[v8];
    if (a2 != a3)
    {
      v9 = result;
      do
      {
        result = atomic_load_explicit(a2, memory_order_acquire);
        *v9++ = result;
        ++a2;
        ++v7;
      }

      while (a2 != a3);
    }

    v6[1] = v7;
  }

  return result;
}

void std::allocator_traits<TInlineBufferAllocator<anonymous namespace::MorxChainBuilder,30ul>>::destroy[abi:fn200100]<anonymous namespace::MorxChainBuilder,void,0>(void **a1)
{
  v2 = a1 + 84;
  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = a1 + 50;
  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = a1 + 1;
  std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
}

void std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        v7 = v4 - 1;

        v4 = v7;
      }

      while (v7 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    v8 = v6 + 33;
    if (v6 + 3 <= v5 && v8 > v5)
    {
      if (v6[2] == v6[33])
      {
        *v8 = v5;
      }
    }

    else
    {

      operator delete(v5);
    }
  }
}

void std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 48;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == *v3)
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void std::vector<LtagStringRange,TInlineBufferAllocator<LtagStringRange,30ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 144);
    if (a1 + 24 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (*(a1 + 16) == *(a1 + 144))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

unint64_t anonymous namespace::MorxChainBuilder::TotalSize(_anonymous_namespace_::MorxChainBuilder *this, unint64_t a2)
{
  v3 = *(this + 50);
  v2 = *(this + 51);
  v4 = ((a2 + 7) >> 3) + 4;
  if (a2 > 0x10000)
  {
    v4 = 8196;
  }

  for (i = *(this + 2) - *(this + 1) + (v2 - v3) * v4 + 28; v3 != v2; ++v3)
  {
    LODWORD(i) = CFDataGetLength(atomic_load_explicit(v3, memory_order_acquire)) + i;
  }

  return (i + 3) & 0xFFFFFFFC | ((((i + 3) & 0xFFFFFFFC) - i) << 32);
}

void std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::destroy(a1[1]);
    std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table((a1 + 5));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void AddLigInputForCharacters(uint64_t *a1, TBaseFont *a2, __int16 a3, __int16 *a4, unint64_t a5)
{
  v5 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v26 = a3;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[3] = v9;
  v36[2] = v9;
  v10 = a5 + 1;
  v36[1] = v9;
  v36[0] = v9;
  memset(v35, 0, sizeof(v35));
  v37 = v36;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v35, &v26);
  if (v5)
  {
    v11 = 2 * v5;
    do
    {
      v12 = *a4++;
      LOWORD(v27) = v12;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v35, &v27);
      v11 -= 2;
    }

    while (v11);
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v13;
    v31 = v13;
    v32 = v13;
    v30 = v13;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v34 = &v30;
    if (!v10)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v15;
    v31 = v15;
    v32 = v15;
    v30 = v15;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v34 = &v30;
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v27, v10);
  v16 = v28;
  bzero(v28, 2 * v5 + 2);
  v28 = &v16[2 * v10];
  v14 = v27;
LABEL_8:
  if ((*(*a2 + 672))(a2, v35[0], v14, v10) >= v10)
  {
    v24[0] = 0xAAAAAAAAAAAAAAAALL;
    memset(v23, 0, sizeof(v23));
    v24[1] = v24;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (v28 == v27)
    {
      goto LABEL_21;
    }

    LOWORD(v25) = *v27;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::reserve(v23, v5);
    GlyphCount = TBaseFont::GetGlyphCount(a2);
    if (v10 >= 2)
    {
      v18 = GlyphCount;
      v19 = 1;
      v20 = 2;
      while (v19 < (v28 - v27) >> 1)
      {
        v21 = *(v27 + v20);
        if (v21 == v25 || v18 <= v21)
        {
          goto LABEL_19;
        }

        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v23, (v27 + v20));
        ++v19;
        v20 += 2;
        if (!--v5)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      __break(1u);
    }

LABEL_18:
LABEL_19:
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v23);
  }

  v23[0] = &v27;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v23);
  v27 = v35;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
}

void CreateLookupTableFromCharacterSwashes<std::pair<unsigned short,unsigned short> const*>(atomic_ullong *a1, uint64_t a2, int64_t a3, int *a4, int *a5, uint64_t a6)
{
  for (i = NewLKTHandle(a3, 0); a4 != a5; ++a4)
  {
    v12 = *a4;
    v13 = -1431655766;
    v14 = v12;
    if ((*(*a2 + 672))(a2, &v14, &v13, 2) == 2 && LKTAddRange(i, v13, v13, SHIWORD(v13)))
    {
      *(a6 + (v13 >> 3)) |= 1 << (v13 & 7);
    }
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  LKTCreateLookupTable(i, a1);
  DisposeLKTHandle(i);
}

_BYTE *TForcedBidiLevelsProvider::GetLevels(TForcedBidiLevelsProvider *this, CFRange a2, CTWritingDirection a3)
{
  length = a2.length;
  v5 = *(this + 3);
  v6 = *(this + 2);
  v7 = (v5 - v6);
  v8 = a2.length - (v5 - v6);
  if (a2.length <= (v5 - v6))
  {
    if (a2.length < (v5 - v6))
    {
      v5 = &v6[a2.length];
      *(this + 3) = &v6[a2.length];
    }
  }

  else
  {
    v9 = *(this + 4);
    if (v9 - v5 >= v8)
    {
      v14 = &v6[a2.length];
      memset(v5, *(this + 8), a2.length - (v5 - v6));
      *(this + 3) = v14;
      v5 = v14;
    }

    else
    {
      if (a2.length < 0)
      {
        goto LABEL_19;
      }

      v10 = v9 - v6;
      v11 = 2 * v10;
      if (2 * v10 <= a2.length)
      {
        v11 = a2.length;
      }

      if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      v23[4] = this + 40;
      v13 = *(this + 9);
      if (v13 + v12 > this + 70)
      {
        operator new();
      }

      *(this + 9) = v13 + v12;
      v15 = &v7[v13];
      memset(v15, *(this + 8), v8);
      v16 = v13 + length;
      v17 = *(this + 2);
      v18 = *(this + 3);
      v19 = &v17[v15 - v18];
      memcpy(v19, v17, v18 - v17);
      v20 = *(this + 2);
      *(this + 2) = v19;
      *(this + 3) = v16;
      v21 = *(this + 4);
      *(this + 4) = v13 + v12;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<char,TInlineBufferAllocator<char,30ul> &>::~__split_buffer(v23);
      v5 = *(this + 3);
    }

    v6 = *(this + 2);
  }

  if (v5 == v6)
  {
    __break(1u);
LABEL_19:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  return v6;
}

void TForcedBidiLevelsProvider::~TForcedBidiLevelsProvider(TForcedBidiLevelsProvider *this)
{
  *this = &unk_1EF25B850;
  v1 = (this + 16);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v1);
}

{
  *this = &unk_1EF25B850;
  v2 = (this + 16);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  MEMORY[0x1865F22D0](this, 0x1091C406A714F82);
}

uint64_t GetCharClass(int a1)
{
  if (a1 > 43487)
  {
    if (a1 > 43631)
    {
      if (a1 <= 43641)
      {
        if ((a1 - 43633) < 6)
        {
          return 0;
        }

        if ((a1 - 43639) < 3 || a1 == 43632)
        {
          return 8;
        }
      }

      else
      {
        if ((a1 - 71376) < 0x14)
        {
          return 2;
        }

        if ((a1 - 43642) <= 5)
        {
          v5 = 1 << (a1 - 122);
          if ((v5 & 0x31) == 0)
          {
            if ((v5 & 0xC) != 0)
            {
              return 25;
            }

            else
            {
              return 24;
            }
          }

          return 0;
        }
      }
    }

    else
    {
      if (a1 > 43615)
      {
        return 0;
      }

      if ((a1 - 43494) <= 0x18)
      {
        v4 = 1 << (a1 + 26);
        if ((v4 & 0x1F003FE) == 0)
        {
          if ((v4 & 0xFFC00) == 0)
          {
            return 8;
          }

          return 2;
        }

        return 0;
      }

      if ((a1 - 43488) < 5)
      {
        return 0;
      }

      if (a1 == 43493)
      {
        return 19;
      }
    }

LABEL_44:
    if (IsGenericBase(a1))
    {
      return 3;
    }

    if (a1 >> 9 < 0x7F || (result = 9, a1 >> 4 >= 0xFE1) && (a1 - 917760) >= 0xF0)
    {
      if ((u_charType(a1) - 12) >= 3)
      {
        return 6;
      }

      else
      {
        return 11;
      }
    }

    return result;
  }

  v2 = a1 - 4096;
  result = 21;
  switch(v2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
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
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 63:
    case 78:
    case 80:
    case 81:
    case 90:
    case 91:
    case 92:
    case 93:
    case 97:
    case 101:
    case 102:
    case 110:
    case 111:
    case 112:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 142:
      return 0;
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 82:
    case 83:
    case 84:
    case 85:
      return 5;
    case 43:
    case 44:
    case 86:
    case 87:
    case 98:
    case 103:
    case 104:
    case 131:
      return 23;
    case 45:
    case 46:
    case 51:
    case 52:
    case 53:
    case 113:
    case 114:
    case 115:
    case 116:
    case 133:
    case 134:
    case 157:
      return 19;
    case 47:
    case 48:
    case 88:
    case 89:
      return 20;
    case 49:
    case 132:
      return 18;
    case 50:
    case 54:
      return result;
    case 55:
      return 22;
    case 56:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
    case 154:
    case 155:
    case 156:
      return 25;
    case 57:
      return 4;
    case 58:
      return 12;
    case 59:
    case 94:
    case 95:
      return 13;
    case 60:
      return 14;
    case 61:
    case 130:
      return 15;
    case 62:
      return 16;
    case 64:
      return 1;
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
      return 2;
    case 74:
    case 75:
      return 7;
    case 76:
    case 77:
    case 79:
    case 158:
    case 159:
      return 8;
    case 96:
      return 17;
    case 99:
    case 100:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
      return 24;
    default:
      if ((a1 - 8204) < 2)
      {
        return 26;
      }

      if (a1 != 8288)
      {
        goto LABEL_44;
      }

      result = 10;
      break;
  }

  return result;
}

uint64_t Has<(CharClass)19>(uint64_t result, uint64_t a2, int64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3)
  {
    return 0;
  }

  v4 = **(*result + 104);
  v5 = (*(*(*result + 104) + 8) - v4) >> 4;
  if (v5 > v3)
  {
    if (*(v4 + 16 * v3 + 8) == 19)
    {
      v6 = v3 + 1;
      if ((v3 + 1) >= a3)
      {
LABEL_8:
        *(result + 8) = v6;
        return 1;
      }

      if (v5 > v6)
      {
        v7 = v3 + 2;
        if (*(v4 + 16 * v6 + 8) == 9)
        {
          v6 = v7;
        }

        goto LABEL_8;
      }

      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t HasAnusvara(uint64_t result, uint64_t a2, int64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= a3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(*result + 104);
  v6 = *v5;
  v7 = v5[1] - *v5;
  v8 = v7 >> 4;
  if (v3 <= v7 >> 4)
  {
    v9 = v7 >> 4;
  }

  else
  {
    v9 = *(result + 8);
  }

  v10 = (v6 + 16 * v3 + 24);
  v11 = a3;
  while (1)
  {
    if (v3 == v9)
    {
      goto LABEL_19;
    }

    v12 = *(v10 - 4);
    if (v12 != 21)
    {
      break;
    }

    --v4;
    v10 += 4;
    --v11;
    --v9;
    if (v3 == v11)
    {
      v13 = a3;
      goto LABEL_16;
    }
  }

  v14 = v3 - v4;
  if (v8 <= v3 - v4)
  {
    goto LABEL_19;
  }

  v13 = v3 - v4;
  if (v12 != 22)
  {
    goto LABEL_16;
  }

  v13 = v14 + 1;
  if (v14 + 1 >= a3)
  {
    goto LABEL_16;
  }

  if (v8 <= v13)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (*v10 == 12)
  {
    v13 = v14 + 2;
  }

LABEL_16:
  if (v13 == v3)
  {
    return 0;
  }

  *(result + 8) = v13;
  return 1;
}

uint64_t MyanmarShapingEngine::ApplyScriptShaping(MyanmarShapingEngine *this, const OTL::GSUB *a2, OTL::GlyphLookups *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2);
  v182 = v5;
  v6 = v3;
  v244 = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 8);
  if ((*(v7 + 24) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = v4;
  v9 = &StringIndex;
  v185 = 0;
  v11 = *v4;
  v10 = v4[1];
  if (v10 != *v4)
  {
    do
    {
      v12 = v10 - 104;
      p_StringIndex = (v10 - 96);
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&p_StringIndex);
      v10 = v12;
    }

    while (v12 != v11);
    v7 = *(v6 + 8);
  }

  v8[1] = v11;
  v13 = *(v7 + 104);
  v14 = TRunGlue::length(v7);
  std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::resize(v13, v14);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v230[28] = v15;
  v230[29] = v15;
  v230[26] = v15;
  v230[27] = v15;
  v230[24] = v15;
  v230[25] = v15;
  v230[22] = v15;
  v230[23] = v15;
  v230[20] = v15;
  v230[21] = v15;
  v230[18] = v15;
  v230[19] = v15;
  v230[16] = v15;
  v230[17] = v15;
  v230[15] = v15;
  v230[14] = v15;
  v230[13] = v15;
  v230[12] = v15;
  v230[11] = v15;
  v230[10] = v15;
  v230[9] = v15;
  v230[8] = v15;
  v230[7] = v15;
  v230[6] = v15;
  v230[5] = v15;
  v230[4] = v15;
  v230[3] = v15;
  v230[2] = v15;
  v230[1] = v15;
  v230[0] = v15;
  v229 = 0;
  v231 = v230;
  v16 = *(v6 + 8);
  p_StringIndex = *v6;
  v224 = 0u;
  memset(v225, 0, 168);
  v225[18] = *(p_StringIndex + 2);
  v227 = 0;
  v228 = 0;
  v17 = TRunGlue::length(v16);
  if (v17)
  {
    v9 = v17;
    v18 = 0;
    for (i = 0; i != v9; ++i)
    {
      StringIndex = TRunGlue::GetStringIndex(v16, i);
      FullChar = TCharStreamIterator::GetFullChar(&p_StringIndex, &StringIndex, 0);
      CharClass = GetCharClass(FullChar);
      v22 = **(v16 + 13);
      if (i >= (*(*(v16 + 13) + 8) - v22) >> 4)
      {
        goto LABEL_340;
      }

      v23 = v22 + v18;
      *(v23 + 8) = CharClass;
      *(v23 + 12) = 0;
      v18 += 16;
    }
  }

  StringIndex = &unk_1EF25B880;
  p_p_StringIndex = &v227;
  *&v191 = &StringIndex;
  v24 = TRunGlue::length(*(v6 + 8));
  v184 = v6;
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v183 = v24;
LABEL_11:
    v27 = *(v6 + 8);
    if (v26 + 31 >= v25)
    {
      v9 = v25;
    }

    else
    {
      v9 = v26 + 31;
    }

    *(&v233 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v233 = 0xAAAAAAAAAAAAAAAALL;
    if (v25 <= v26)
    {
      v28 = 0;
      v29 = 3;
      v9 = v26;
      goto LABEL_36;
    }

    v28 = 0;
    v29 = 3;
    v30 = 1;
    v31 = v26;
    while (1)
    {
      v32 = 16 * v31;
      while ((v30 & 1) != 0)
      {
        if (v28)
        {
          break;
        }

        *&v232[0] = TRunGlue::GetStringIndex(v27, v31);
        v33 = TCharStreamIterator::GetFullChar(&p_StringIndex, v232, 0);
        if (v33 != 4100 && v33 != 4186 && v33 != 4123)
        {
          break;
        }

        if (v31 + 1 >= v9)
        {
          break;
        }

        *&v232[0] = TRunGlue::GetStringIndex(v27, v31 + 1);
        if (TCharStreamIterator::GetFullChar(&p_StringIndex, v232, 0) != 4154)
        {
          break;
        }

        if (v31 + 2 >= v9)
        {
          break;
        }

        *&v232[0] = TRunGlue::GetStringIndex(v27, v31 + 2);
        if (TCharStreamIterator::GetFullChar(&p_StringIndex, v232, 0) != 4153)
        {
          break;
        }

        v31 += 3;
        v32 += 48;
        v30 = 1;
        v28 = 1;
        if (v31 >= v9)
        {
          goto LABEL_33;
        }
      }

      v34 = **(v27 + 13);
      v35 = (*(*(v27 + 13) + 8) - v34) >> 4;
      if (v35 <= v31)
      {
        goto LABEL_340;
      }

      v36 = *(v34 + v32 + 8);
      if (v36 > 0xB)
      {
        goto LABEL_93;
      }

      if (((1 << v36) & 0x2D) == 0)
      {
        break;
      }

      if ((v30 & 1) == 0)
      {
        *&v233 = v27;
        goto LABEL_46;
      }

      v30 = 0;
      ++v31;
      v29 = 2;
      if (v31 >= v9)
      {
LABEL_33:
        v9 = v31;
LABEL_34:
        v25 = v183;
        v6 = v184;
        goto LABEL_36;
      }
    }

    if (((1 << v36) & 0xDC2) != 0)
    {
      *&v233 = v27;
      if (v30 & 1) == 0 || (v28)
      {
        goto LABEL_46;
      }

      v37 = v31 + 1;
      if (v31 + 1 < v9)
      {
        if (v35 <= v37)
        {
          goto LABEL_340;
        }

        v29 = 0;
LABEL_96:
        if (*(v34 + v32 + 24) == 9)
        {
          v9 = v31 + 2;
        }

        else
        {
          v9 = v37;
        }

        goto LABEL_34;
      }

      v29 = 0;
      goto LABEL_100;
    }

LABEL_93:
    *&v233 = v27;
    if (v36 == 4 && (v30 & 1) != 0)
    {
      v37 = v31 + 1;
      if (v31 + 1 < v9)
      {
        if (v35 <= v37)
        {
          goto LABEL_340;
        }

        goto LABEL_96;
      }

LABEL_100:
      v9 = v37;
      goto LABEL_34;
    }

LABEL_46:
    if (v31 < v9 && v36 == 9)
    {
      v39 = v31 + 1;
    }

    else
    {
      v39 = v31;
    }

    if (v39 >= v9)
    {
      v25 = v183;
      v6 = v184;
      goto LABEL_77;
    }

    v25 = v183;
    v6 = v184;
LABEL_54:
    v40 = 0;
    v41 = v39;
    while (1)
    {
      if (v35 <= v41)
      {
        goto LABEL_340;
      }

      v42 = *(v34 + 16 * v41 + 8);
      if (v42 > 4)
      {
        if (v42 != 26)
        {
          if (v42 != 5)
          {
            goto LABEL_77;
          }

LABEL_69:
          if ((v40 & 1) == 0)
          {
            goto LABEL_77;
          }

          v39 = v41 + 1;
          if ((v41 + 1) < v9)
          {
            if (v35 <= v39)
            {
              goto LABEL_340;
            }

            v43 = v41 + 2;
            if (*(v34 + 16 * v39 + 8) == 9)
            {
              v39 = v43;
            }
          }

          if (v39 >= v9)
          {
LABEL_77:
            if (v39 == v9)
            {
              goto LABEL_36;
            }

            if (v35 <= v39)
            {
              goto LABEL_340;
            }

            v44 = v34 + 16 * v39;
            if (*(v44 + 8) == 4)
            {
              v45 = v39 + 1;
              if (v39 + 1 >= v9)
              {
                v29 = 1;
                v9 = v39 + 1;
              }

              else
              {
                if (v35 <= v45)
                {
                  goto LABEL_340;
                }

                if (*(v34 + 16 * v45 + 8) == 26)
                {
                  v9 = v39 + 2;
                }

                else
                {
                  v9 = v39 + 1;
                }

                v29 = 1;
              }

              goto LABEL_36;
            }

            if (v39 >= v9)
            {
              goto LABEL_107;
            }

            v46 = (v44 + 24);
            while (1)
            {
              if (v35 == v39)
              {
                goto LABEL_340;
              }

              v47 = *(v46 - 4);
              if (v47 != 12)
              {
                break;
              }

              ++v39;
              v46 += 4;
              if (v9 == v39)
              {
                v48 = v9;
LABEL_138:
                *(&v233 + 1) = v48;
                  ;
                }

                v52 = *(&v233 + 1);
                if (*(&v233 + 1) < v9)
                {
                  v53 = **(v233 + 104);
                  v54 = (*(*(v233 + 104) + 8) - v53) >> 4;
                  while (v54 > v52)
                  {
                    if (*(v53 + 16 * v52 + 8) != 20)
                    {
                      goto LABEL_150;
                    }

                    v55 = v52 + 1;
                    if ((v52 + 1) < v9)
                    {
                      if (v54 <= v55)
                      {
                        goto LABEL_340;
                      }

                      v56 = v52 + 2;
                      if (*(v53 + 16 * v55 + 8) == 9)
                      {
                        v55 = v56;
                      }
                    }

                    v52 = v55;
                    if (v55 >= v9)
                    {
                      goto LABEL_151;
                    }
                  }

                  goto LABEL_340;
                }

LABEL_150:
                v55 = v52;
LABEL_151:
                *(&v233 + 1) = v55;
                HasAnusvara(&v233, v27, v9);
                while (1)
                {
                  v232[0] = v233;
                  if (*(&v233 + 1) >= v9)
                  {
                    break;
                  }

                  v57 = *(*&v232[0] + 104);
                  v58 = *v57;
                  v59 = (v57[1] - *v57) >> 4;
                  if (v59 <= *(&v233 + 1))
                  {
                    goto LABEL_340;
                  }

                  if (*(v58 + 16 * *(&v233 + 1) + 8) != 23)
                  {
                    break;
                  }

                  v60 = *(&v233 + 1) + 1;
                  if (*(&v233 + 1) + 1 < v9)
                  {
                    if (v59 <= v60)
                    {
                      goto LABEL_340;
                    }

                    if (*(v58 + 16 * v60 + 8) == 9)
                    {
                      v60 = *(&v233 + 1) + 2;
                    }
                  }

                  if (v60 < v9)
                  {
                    if (v59 <= v60)
                    {
                      goto LABEL_340;
                    }

                    if (*(v58 + 16 * v60 + 8) == 16)
                    {
                      ++v60;
                    }
                  }

                  if (v60 < v9)
                  {
                    if (v59 <= v60)
                    {
                      goto LABEL_340;
                    }

                    if (*(v58 + 16 * v60 + 8) == 17)
                    {
                      ++v60;
                    }
                  }

                  if (v60 < v9)
                  {
                    if (v60 > v59)
                    {
                      v59 = v60;
                    }

                    v61 = (v58 + 16 * v60 + 8);
                    do
                    {
                      if (v59 == v60)
                      {
                        goto LABEL_340;
                      }

                      if (*v61 != 12)
                      {
                        goto LABEL_175;
                      }

                      ++v60;
                      v61 += 4;
                    }

                    while (v9 != v60);
                    v60 = v9;
                  }

LABEL_175:
                  *(&v232[0] + 1) = v60;
                    ;
                  }

                  HasAnusvara(v232, v27, v9);
                  v233 = v232[0];
                }

                v62 = *(&v233 + 1);
                while (v62 < v9)
                {
                  v63 = **(v233 + 104);
                  if (v62 >= (*(*(v233 + 104) + 8) - v63) >> 4)
                  {
                    goto LABEL_340;
                  }

                  if (*(v63 + 16 * v62 + 8) != 24)
                  {
                    break;
                  }

                  *(&v233 + 1) = v62 + 1;
                  v64 = HasAnusvara(&v233, v27, v9);
                  v62 = *(&v233 + 1);
                  if ((v64 & 1) == 0 && *(&v233 + 1) < v9)
                  {
                    v65 = *(v233 + 104);
                    v66 = *v65;
                    v67 = (v65[1] - *v65) >> 4;
                    if (v67 <= *(&v233 + 1))
                    {
                      goto LABEL_340;
                    }

                    v68 = v66 + 16 * *(&v233 + 1);
                    if (*(v68 + 8) == 12)
                    {
                      v69 = v67 - 1;
                      v70 = (v68 + 24);
                      while (v9 - 1 != v62)
                      {
                        if (v69 == v62)
                        {
                          goto LABEL_340;
                        }

                        v71 = *v70;
                        v70 += 4;
                        ++v62;
                        if (v71 != 21)
                        {
                          goto LABEL_191;
                        }
                      }

                      v62 = v9;
LABEL_191:
                      *(&v233 + 1) = v62;
                    }
                  }
                }

                if (v62 >= v9)
                {
                  v9 = v62;
                }

                else
                {
                  v72 = *(v233 + 104);
                  v73 = *v72;
                  v74 = v72[1] - *v72;
                  v75 = v74 >> 4;
                  if (v62 <= v74 >> 4)
                  {
                    v76 = v74 >> 4;
                  }

                  else
                  {
                    v76 = v62;
                  }

                  v77 = -v62;
                  v78 = (v73 + 16 * v62 + 8);
                  while (1)
                  {
                    if (-v76 == v77)
                    {
                      goto LABEL_340;
                    }

                    if (*v78 != 25)
                    {
                      break;
                    }

                    --v77;
                    v78 += 4;
                    if (-v9 == v77)
                    {
                      goto LABEL_36;
                    }
                  }

                  if (v75 <= -v77)
                  {
                    goto LABEL_340;
                  }

                  v9 = (*v78 == 26) - v77;
                }

LABEL_36:
                *&v232[0] = v26;
                *(&v232[0] + 1) = v9 - v26;
                LODWORD(v233) = v29;
                LOBYTE(v187) = v28 & 1;
                if (v191)
                {
                  (*(*v191 + 48))(v191, v232, &v233, &v187);
                  v26 = v9;
                  if (v9 == v25)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_11;
                }

LABEL_341:
                std::__throw_bad_function_call[abi:fn200100]();
              }
            }

            if (v47 == 13)
            {
              v49 = v39 + 1;
              if (v39 + 1 < v9)
              {
                if (v35 <= v49)
                {
                  goto LABEL_340;
                }

                v50 = v39 + 2;
                if (*v46 == 12)
                {
                  v49 = v50;
                }
              }
            }

            else
            {
LABEL_107:
              v49 = v39;
            }

            if (v49 < v9)
            {
              if (v35 <= v49)
              {
                goto LABEL_340;
              }

              if (*(v34 + 16 * v49 + 8) == 14)
              {
                ++v49;
              }
            }

            if (v49 < v9)
            {
              if (v35 <= v49)
              {
                goto LABEL_340;
              }

              if (*(v34 + 16 * v49 + 8) == 15)
              {
                ++v49;
              }
            }

            if (v49 < v9)
            {
              if (v35 <= v49)
              {
                goto LABEL_340;
              }

              if (*(v34 + 16 * v49 + 8) == 16)
              {
                ++v49;
              }
            }

            if (v49 < v9)
            {
              if (v35 <= v49)
              {
                goto LABEL_340;
              }

              if (*(v34 + 16 * v49 + 8) == 17)
              {
                ++v49;
              }
            }

            if (v49 < v9)
            {
              if (v35 <= v49)
              {
                goto LABEL_340;
              }

              if (*(v34 + 16 * v49 + 8) == 12)
              {
                ++v49;
              }
            }

            if (v49 >= v9)
            {
LABEL_137:
              v48 = v49;
              goto LABEL_138;
            }

            while (v35 > v49)
            {
              if (*(v34 + 16 * v49 + 8) != 18)
              {
                goto LABEL_137;
              }

              v48 = v49 + 1;
              if ((v49 + 1) < v9)
              {
                if (v35 <= v48)
                {
                  break;
                }

                v51 = v49 + 2;
                if (*(v34 + 16 * v48 + 8) == 9)
                {
                  v48 = v51;
                }
              }

              v49 = v48;
              if (v48 >= v9)
              {
                goto LABEL_138;
              }
            }

LABEL_340:
            __break(1u);
            goto LABEL_341;
          }

          goto LABEL_54;
        }

        if (++v41 < v9)
        {
          if (v35 <= v41)
          {
            goto LABEL_340;
          }

          if (*(v34 + 16 * v41 + 8) == 26)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        if (v42 != 4)
        {
          if (v42)
          {
            goto LABEL_77;
          }

          goto LABEL_69;
        }

        if (v40)
        {
          goto LABEL_77;
        }

        ++v41;
      }

      v40 = 1;
      if (v41 >= v9)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_205:
  if (v191 == &StringIndex)
  {
    (*(*v191 + 32))(v191);
  }

  else if (v191)
  {
    (*(*v191 + 40))();
  }

  *&v80 = 0xAAAAAAAAAAAAAAAALL;
  *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v197 = v80;
  v196 = v80;
  v195 = v80;
  v194 = v80;
  v193 = v80;
  v192 = v80;
  v191 = v80;
  p_p_StringIndex = 0;
  v190 = 0;
  StringIndex = 0;
  *&v198 = 0xAAAAAAAAAAAAAAAALL;
  *(&v198 + 1) = &v191;
  v232[0] = xmmword_184773D20;
  OTL::FeatureBuffer::FeatureBuffer(&p_StringIndex, v232, 4);
  OTL::GCommon::GetLookups(v182, &p_StringIndex, &StringIndex, 0);
  *&v233 = &p_StringIndex;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v233);
  memset(v225, 170, sizeof(v225));
  v224 = 0uLL;
  p_StringIndex = 0;
  v226 = v225;
  v81 = TRunGlue::length(*(v6 + 8));
  v82 = StringIndex;
  v83 = p_p_StringIndex;
  if (StringIndex != p_p_StringIndex)
  {
    v84 = v81;
    do
    {
      v85 = *v82;
      v82 += 4;
      v9 = v9 & 0xFFFFFFFF00000000 | v85;
      OTL::GlyphLookups::SetLookupInRange<false>(&p_StringIndex, v9, 0, v84);
    }

    while (v82 != v83);
  }

  v86 = v184;
  OTL::GSUB::ApplyLookups(v182, *(v184 + 8), *(*(v184 + 8) + 24), &p_StringIndex, &v185, 0, 0);
  *&v232[0] = &p_StringIndex;
  std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](v232);
  p_StringIndex = &StringIndex;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_StringIndex);
  v87 = v227;
  v88 = v228;
  if (v227 == v228)
  {
    goto LABEL_310;
  }

  v89 = 0;
  v90 = 0;
  v82 = 3;
LABEL_215:
  while (2)
  {
    v91 = *v87;
    v92 = *(v87 + 2);
    if (v92)
    {
      if (*(v87 + 12))
      {
        v93 = 3;
      }

      else
      {
        v93 = 0;
      }

      if (v92 == 3)
      {
        LOWORD(StringIndex) = 9676;
        LOWORD(v232[0]) = -21846;
        v94 = *(*(*(v86 + 8) + 496) + 408);
        if ((*(*v94 + 672))(v94, &StringIndex, v232, 1))
        {
          v95 = *(v86 + 8);
          LOWORD(p_StringIndex) = v232[0];
          v96 = TRunGlue::DoGlyphInsertion(v95, &p_StringIndex, 1u, *(v95 + 6) >= 0, 0, v90, v90, 1, 0);
          v185 |= v96;
          if (v90 >= ((v13[1] - *v13) >> 4))
          {
            goto LABEL_340;
          }

          *(*v13 + 16 * v90 + 8) = 3;
          ++*v87;
          ++v91;
          v97 = 1;
          goto LABEL_228;
        }
      }

      else
      {
        v97 = 1;
        if (v93 >= 1)
        {
          v97 = v93 + 1;
          TRunGlue::Rotate(*(v184 + 8), v90, v90 + v93, v93 + 1 + v90, v13);
          v89 = 1;
        }

        if (v92 != 1)
        {
LABEL_228:
          v98 = v90;
          v99 = v90 + v97;
          v90 += v91;
          if (v99 < v90)
          {
            v100 = (16 * v99) | 8;
            while (1)
            {
              if ((TRunGlue::IsDeleted(*(v184 + 8), v99) & 1) == 0)
              {
                if (v99 >= ((v13[1] - *v13) >> 4))
                {
                  goto LABEL_340;
                }

                v101 = *(*v13 + v100);
                if (v101 > 0xE)
                {
                  goto LABEL_237;
                }

                if (v101 == 14)
                {
                  break;
                }
              }

              ++v99;
              v100 += 16;
              if (v99 >= v90)
              {
                goto LABEL_237;
              }
            }

            v102 = TRunGlue::GlyphRangeForGlyphIndex(*(v184 + 8), v99);
            v99 = v102 + v103;
            TRunGlue::Rotate(*(v184 + 8), v98, v102, v102 + v103, v13);
            v89 = 1;
          }

LABEL_237:
          if (v99 < v90)
          {
            v104 = 0;
            v105 = -1;
            do
            {
              if (v99 >= ((v13[1] - *v13) >> 4))
              {
                goto LABEL_340;
              }

              v106 = *(*v13 + 16 * v99 + 8);
              if (v106 > 0x12)
              {
                break;
              }

              if (v106 == 18 || v106 == 9)
              {
                v108 = TRunGlue::GlyphRangeForGlyphIndex(*(v184 + 8), v99);
                if (v108 >= v105)
                {
                  v110 = v105;
                }

                else
                {
                  v110 = v108;
                }

                v111 = v105 + v104;
                if (v105 + v104 <= v108 + v109)
                {
                  v111 = v108 + v109;
                }

                v112 = v111 - v110;
                v113 = v105 == -1;
                if (v105 == -1)
                {
                  v105 = v108;
                }

                else
                {
                  v105 = v110;
                }

                if (v113)
                {
                  v104 = v109;
                }

                else
                {
                  v104 = v112;
                }

                v99 = v104 + v105 - 1;
              }

              ++v99;
            }

            while (v99 < v90);
            if (v105 != -1)
            {
              TRunGlue::Rotate(*(v184 + 8), v98, v105, v104 + v105, v13);
              v89 = 1;
            }
          }

          if (v99 >= v90)
          {
            goto LABEL_302;
          }

          v114 = 0;
          v115 = -1;
          v86 = v184;
          do
          {
            if ((TRunGlue::IsDeleted(*(v184 + 8), v99) & 1) == 0)
            {
              if (v99 >= ((v13[1] - *v13) >> 4))
              {
                goto LABEL_340;
              }

              v116 = *(*v13 + 16 * v99 + 8);
              if (v116 >= 0x14)
              {
                if (v116 != 20)
                {
                  break;
                }

                v117 = TRunGlue::GlyphRangeForGlyphIndex(*(v184 + 8), v99);
                if (v117 >= v115)
                {
                  v119 = v115;
                }

                else
                {
                  v119 = v117;
                }

                v120 = v115 + v114;
                if (v115 + v114 <= v117 + v118)
                {
                  v120 = v117 + v118;
                }

                v121 = v120 - v119;
                v122 = v115 == -1;
                if (v115 == -1)
                {
                  v115 = v117;
                }

                else
                {
                  v115 = v119;
                }

                if (v122)
                {
                  v114 = v118;
                }

                else
                {
                  v114 = v121;
                }

                v99 = v114 + v115 - 1;
              }
            }

            ++v99;
          }

          while (v99 < v90);
          if (v115 != -1)
          {
            v123 = v114 + v115;
            if (v114 + v115 >= v90)
            {
              goto LABEL_302;
            }

            v124 = 0;
            v125 = -1;
            while (1)
            {
              if ((TRunGlue::IsDeleted(*(v184 + 8), v123) & 1) == 0)
              {
                if (v123 >= (v13[1] - *v13) >> 4)
                {
                  goto LABEL_340;
                }

                if (*(*v13 + 16 * v123 + 8) != 21)
                {
LABEL_299:
                  if (v125 != -1)
                  {
                    v86 = v184;
                    TRunGlue::Rotate(*(v184 + 8), v115, v125, v124 + v125, v13);
                    v87 += 2;
                    v89 = 1;
                    v82 = 3;
                    if (v87 == v88)
                    {
LABEL_306:
                      v185 = 1;
                      if (*(*(v86 + 8) + 144))
                      {
                        v132 = v227;
                        v133 = v228;
                        if (v227 != v228)
                        {
                          v134 = 0;
                          do
                          {
                            v135 = *v132;
                            v132 += 2;
                            v245.location = v134;
                            v245.length = v135;
                            TRunGlue::ClearSafeToBreakAfter(*(v86 + 8), v245);
                            v134 += v135;
                          }

                          while (v132 != v133);
                        }
                      }

                      goto LABEL_310;
                    }

                    goto LABEL_215;
                  }

LABEL_302:
                  v86 = v184;
                  break;
                }

                v126 = TRunGlue::GlyphRangeForGlyphIndex(*(v184 + 8), v123);
                if (v126 >= v125)
                {
                  v128 = v125;
                }

                else
                {
                  v128 = v126;
                }

                v129 = v125 + v124;
                if (v125 + v124 <= v126 + v127)
                {
                  v129 = v126 + v127;
                }

                v130 = v129 - v128;
                v131 = v125 == -1;
                if (v125 == -1)
                {
                  v125 = v126;
                }

                else
                {
                  v125 = v128;
                }

                if (v131)
                {
                  v124 = v127;
                }

                else
                {
                  v124 = v130;
                }

                v123 = v124 + v125 - 1;
              }

              if (++v123 >= v90)
              {
                goto LABEL_299;
              }
            }
          }

          v82 = 3;
          goto LABEL_304;
        }

        v90 += v91;
        v86 = v184;
      }
    }

    else
    {
      v90 += v91;
    }

LABEL_304:
    v87 += 2;
    if (v87 != v88)
    {
      continue;
    }

    break;
  }

  if (v89)
  {
    goto LABEL_306;
  }

LABEL_310:
  memset(v225, 170, sizeof(v225));
  v224 = 0uLL;
  p_StringIndex = 0;
  v226 = v225;
  *&v136 = 0xAAAAAAAAAAAAAAAALL;
  *(&v136 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v136;
  v221 = v136;
  v218 = v136;
  v219 = v136;
  v216 = v136;
  v217 = v136;
  v214 = v136;
  v215 = v136;
  v212 = v136;
  v213 = v136;
  v210 = v136;
  v211 = v136;
  v208 = v136;
  v209 = v136;
  v206 = v136;
  v207 = v136;
  v205 = v136;
  v204 = v136;
  v203 = v136;
  v202 = v136;
  v201 = v136;
  v200 = v136;
  v199 = v136;
  v198 = v136;
  v197 = v136;
  v196 = v136;
  v195 = v136;
  v194 = v136;
  v193 = v136;
  v192 = v136;
  v137 = v182;
  StringIndex = v182;
  p_p_StringIndex = &p_StringIndex;
  v138 = v227;
  v139 = v228;
  v191 = 0uLL;
  v190 = 0;
  v222 = &v192;
  v140 = v228 - v227;
  if (v228 != v227)
  {
    if ((v140 >> 4) >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v141 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul>>(&v192, v140 >> 4);
    v190 = v141;
    *(&v191 + 1) = &v141[2 * v142];
    do
    {
      v143 = *v138;
      v138 += 2;
      *v141 = v143;
      v141 += 2;
    }

    while (v138 != v139);
    *&v191 = v141;
    v137 = StringIndex;
    *&v136 = 0xAAAAAAAAAAAAAAAALL;
    *(&v136 + 1) = 0xAAAAAAAAAAAAAAAALL;
  }

  v242 = 0xAAAAAAAAAAAAAAAALL;
  v241 = v136;
  v240 = v136;
  v239 = v136;
  v238 = v136;
  v237 = v136;
  v236 = v136;
  v235 = v136;
  v234 = 0;
  v233 = 0uLL;
  v243 = &v235;
  v186 = 1919969382;
  OTL::FeatureBuffer::FeatureBuffer(v232, &v186, 1);
  OTL::GCommon::GetLookups(v137, v232, &v233, 0);
  v187 = v232;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v187);
  v144 = v190;
  v145 = v191;
  if (v190 != v191)
  {
    v146 = 0;
    do
    {
      v147 = *v144;
      v148 = *(&v233 + 1);
      v149 = v233;
      if (v233 != *(&v233 + 1))
      {
        v150 = p_p_StringIndex;
        do
        {
          v151 = *v149++;
          v82 = v82 & 0xFFFFFFFF00000000 | v151;
          OTL::GlyphLookups::SetLookupInRange<false>(v150, v82, v146, v147);
        }

        while (v149 != v148);
      }

      v146 += v147;
      v144 += 2;
    }

    while (v144 != v145);
  }

  *&v232[0] = &v233;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v232);
  *&v152 = 0xAAAAAAAAAAAAAAAALL;
  *(&v152 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v241 = v152;
  v240 = v152;
  v239 = v152;
  v238 = v152;
  v237 = v152;
  v236 = v152;
  v235 = v152;
  v234 = 0;
  v233 = 0uLL;
  v242 = 0xAAAAAAAAAAAAAAAALL;
  v243 = &v235;
  v153 = StringIndex;
  v186 = 1886545254;
  OTL::FeatureBuffer::FeatureBuffer(v232, &v186, 1);
  OTL::GCommon::GetLookups(v153, v232, &v233, 0);
  v187 = v232;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v187);
  v154 = v190;
  v155 = v191;
  if (v190 != v191)
  {
    v156 = 0;
    do
    {
      v157 = *v154;
      v159 = *(&v233 + 1);
      v158 = v233;
      if (v233 != *(&v233 + 1))
      {
        v160 = p_p_StringIndex;
        do
        {
          v161 = *v158++;
          v82 = v82 & 0xFFFFFFFF00000000 | v161;
          OTL::GlyphLookups::SetLookupInRange<false>(v160, v82, v156, v157);
        }

        while (v158 != v159);
      }

      v156 += v157;
      v154 += 2;
    }

    while (v154 != v155);
  }

  *&v232[0] = &v233;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v232);
  *&v162 = 0xAAAAAAAAAAAAAAAALL;
  *(&v162 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v241 = v162;
  v240 = v162;
  v239 = v162;
  v238 = v162;
  v237 = v162;
  v236 = v162;
  v235 = v162;
  v234 = 0;
  v233 = 0uLL;
  v242 = 0xAAAAAAAAAAAAAAAALL;
  v243 = &v235;
  v163 = StringIndex;
  v186 = 1651275622;
  OTL::FeatureBuffer::FeatureBuffer(v232, &v186, 1);
  OTL::GCommon::GetLookups(v163, v232, &v233, 0);
  v187 = v232;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v187);
  v164 = v190;
  v165 = v191;
  if (v190 != v191)
  {
    v166 = 0;
    do
    {
      v167 = *v164;
      v168 = *(&v233 + 1);
      v169 = v233;
      if (v233 != *(&v233 + 1))
      {
        v170 = p_p_StringIndex;
        do
        {
          v171 = *v169++;
          v82 = v82 & 0xFFFFFFFF00000000 | v171;
          OTL::GlyphLookups::SetLookupInRange<false>(v170, v82, v166, v167);
        }

        while (v169 != v168);
      }

      v166 += v167;
      v164 += 2;
    }

    while (v164 != v165);
  }

  *&v232[0] = &v233;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v232);
  *&v172 = 0xAAAAAAAAAAAAAAAALL;
  *(&v172 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v241 = v172;
  v240 = v172;
  v239 = v172;
  v238 = v172;
  v237 = v172;
  v236 = v172;
  v235 = v172;
  v234 = 0;
  v233 = 0uLL;
  v242 = 0xAAAAAAAAAAAAAAAALL;
  v243 = &v235;
  v173 = StringIndex;
  v186 = 1886614630;
  OTL::FeatureBuffer::FeatureBuffer(v232, &v186, 1);
  OTL::GCommon::GetLookups(v173, v232, &v233, 0);
  v187 = v232;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v187);
  v174 = v190;
  v175 = v191;
  if (v190 != v191)
  {
    v176 = 0;
    do
    {
      v177 = *v174;
      v179 = *(&v233 + 1);
      v178 = v233;
      if (v233 != *(&v233 + 1))
      {
        v180 = p_p_StringIndex;
        do
        {
          v181 = *v178++;
          v82 = v82 & 0xFFFFFFFF00000000 | v181;
          OTL::GlyphLookups::SetLookupInRange<false>(v180, v82, v176, v177);
        }

        while (v178 != v179);
      }

      v176 += v177;
      v174 += 2;
    }

    while (v174 != v175);
  }

  *&v232[0] = &v233;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v232);
  OTL::GSUB::ApplyLookups(v182, *(v184 + 8), *(*(v184 + 8) + 24), &p_StringIndex, &v185, 0, 0);
  std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](&v190);
  StringIndex = &p_StringIndex;
  std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&StringIndex);
  std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](&v227);
  return v185;
}

void std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__append(a1, a2 - v2);
  }
}

uint64_t IsGenericBase(int a1)
{
  result = 1;
  if (a1 > 9675)
  {
    v3 = a1 - 9676;
    if (v3 > 0x32 || ((1 << v3) & 0x7800000000001) == 0)
    {
      return 0;
    }
  }

  else if (((a1 - 8210) > 0x10 || ((1 << (a1 - 18)) & 0x1000F) == 0) && a1 != 160 && a1 != 215)
  {
    return 0;
  }

  return result;
}

void std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    *v17 = v6;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    std::__split_buffer<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul> &>::__split_buffer(&v16, v10, v7 >> 4, a1 + 24);
    v11 = v17[0];
    bzero(v17[0], 16 * a2);
    v17[0] = &v11[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = *(&v16 + 1) - v12;
    memcpy((*(&v16 + 1) - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = *v17;
    v17[0] = v14;
    v17[1] = v15;
    *&v16 = v14;
    *(&v16 + 1) = v14;
    std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(&v16);
  }
}

uint64_t std::__function::__func<MyanmarShapingEngine::AnalyzeCharacters(TInlineVector<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul> *)::$_0,std::allocator<MyanmarShapingEngine::AnalyzeCharacters(TInlineVector<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul> *)::$_0>,void ()(CFRange,MyanmarShapingEngine::ClusterType,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B880;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MyanmarShapingEngine::AnalyzeCharacters(TInlineVector<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul> *)::$_0,std::allocator<MyanmarShapingEngine::AnalyzeCharacters(TInlineVector<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul> *)::$_0>,void ()(CFRange,MyanmarShapingEngine::ClusterType,BOOL)>::operator()(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  if (v8 >= v9)
  {
    v11 = *v7;
    v12 = v8 - *v7;
    v13 = v12 >> 4;
    v14 = (v12 >> 4) + 1;
    if (v14 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v15 = v9 - v11;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v16 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul>>(v7 + 24, v14);
      v14 = v17;
      v11 = *v7;
      v12 = *(v7 + 8) - *v7;
    }

    else
    {
      v16 = 0;
    }

    v18 = v16 + 16 * v13;
    v19 = v16 + 16 * v14;
    *v18 = v4;
    *(v18 + 8) = v5;
    *(v18 + 12) = v6;
    v10 = v18 + 16;
    v20 = (v18 - 16 * (v12 >> 4));
    memcpy(v20, v11, v12);
    v21 = *v7;
    *v7 = v20;
    *(v7 + 8) = v10;
    v22 = *(v7 + 16);
    *(v7 + 16) = v19;
    if (v21)
    {
      if (v7 + 24 > v21 || (v23 = (v7 + 504), v7 + 504 <= v21))
      {
        operator delete(v21);
      }

      else if (v22 == *v23)
      {
        *v23 = v21;
      }
    }
  }

  else
  {
    *v8 = v4;
    *(v8 + 8) = v5;
    v10 = v8 + 16;
    *(v8 + 12) = v6;
  }

  *(v7 + 8) = v10;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::tuple<long,MyanmarShapingEngine::ClusterType,BOOL>,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 480);
  result = *(a1 + 480);
  v4 = result + 16 * a2;
  if (v4 > v2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

uint64_t IsLooseFontNameMatchingDisabled(void)
{
  if (gDisableLooseFontNameMatchingOverride)
  {
    v0 = 1;
  }

  else
  {
    if (IsLooseFontNameMatchingDisabled(void)::onceToken != -1)
    {
      dispatch_once(&IsLooseFontNameMatchingDisabled(void)::onceToken, &__block_literal_global_2);
    }

    v0 = gDisableLooseFontNameMatchingOverride;
  }

  return v0 & 1;
}

uint64_t ___Z31IsLooseFontNameMatchingDisabledv_block_invoke()
{
  result = [objc_msgSend(CTFontGetPlistFromGSFontCache(@"CoreTextConfig.plist" 0)];
  gDisableLooseFontNameMatchingOverride = result;
  return result;
}

void CopyPostScriptNameForAliasLowercased(const __CFString *a1@<X0>, void *a2@<X8>)
{
  if (qword_1ED568240 != -1)
  {
    dispatch_once(&qword_1ED568240, &__block_literal_global_110);
  }

  if (qword_1ED568238 && (v4 = CFDictionaryGetValue(qword_1ED568238, @"Aliases")) != 0)
  {
    Value = CFDictionaryGetValue(v4, @"Faces");
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, a1);
    }
  }

  else
  {
    Value = 0;
  }

  v6 = Value;
  *a2 = atomic_exchange(&v6, 0);
}

BOOL IsPostScriptNameAlias(const __CFString *a1, const __CFString *a2)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  CopyLowercasedString(a1, &v8);
  CopyPostScriptNameForAliasLowercased(atomic_load_explicit(&v8, memory_order_acquire), &v7);
  v3 = atomic_load_explicit(&v7, memory_order_acquire);
  v4 = v3;
  if (v3 == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (a2 && v3)
    {
      v5 = CFStringCompare(v3, a2, 1uLL) == kCFCompareEqualTo;
    }
  }

  return v5;
}

void CopyPostScriptNamesForFamily(const __CFString *a1@<X0>, char a2@<W1>, __CFString *a3@<X8>)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  CopyLowercasedString(a1, &v19);
  a3->isa = 0xAAAAAAAAAAAAAAAALL;
  CopyPostScriptNamesForFamilyLowercased(a3, atomic_load_explicit(&v19, memory_order_acquire));
  if (a1 != @"." && (!a1 || !CFStringHasPrefix(a1, @".")))
  {
    atomic_load_explicit(&v19, memory_order_acquire);
    v6 = FSFontCopyFontNamesForFamily();
    if (atomic_load_explicit(a3, memory_order_acquire))
    {
      v20.isa = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableArray::TCFMutableArray(&v20, atomic_load_explicit(a3, memory_order_acquire));
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count)
        {
          v8 = Count;
          for (i = 0; i != v8; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
            explicit = atomic_load_explicit(&v20, memory_order_acquire);
            v21.length = CFArrayGetCount(atomic_load_explicit(&v20, memory_order_acquire));
            v21.location = 0;
            if (!CFArrayContainsValue(explicit, v21, ValueAtIndex))
            {
              CFArrayAppendValue(atomic_load_explicit(&v20, memory_order_acquire), ValueAtIndex);
            }
          }
        }
      }
    }

    else
    {
      TCFRef<__CTFont const*>::Retain(a3, v6);
    }
  }

  v12 = atomic_load_explicit(a3, memory_order_acquire);
  v13 = v12;
  if (v12)
  {
    v14 = CFArrayGetCount(v12) != 0;
  }

  else
  {
    v14 = 0;
  }

  if (!v14 && (a2 & 1) == 0)
  {
    v15 = atomic_load_explicit(&v19, memory_order_acquire);
    if (qword_1ED568240 != -1)
    {
      dispatch_once(&qword_1ED568240, &__block_literal_global_110);
    }

    if (qword_1ED568238 && (v16 = CFDictionaryGetValue(qword_1ED568238, @"Aliases")) != 0)
    {
      Value = CFDictionaryGetValue(v16, @"Families");
      if (Value)
      {
        Value = CFDictionaryGetValue(Value, v15);
      }
    }

    else
    {
      Value = 0;
    }

    v20.isa = Value;
    v18 = atomic_exchange(&v20, 0);

    if (v18)
    {
      CopyPostScriptNamesForFamilyLowercased(&v20, v18);
    }
  }
}

void CopyPostScriptNamesForFamilyLowercased(const __CFString *a1, const void *a2)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  if (qword_1ED568240 != -1)
  {
    dispatch_once(&qword_1ED568240, &__block_literal_global_110);
  }

  if (qword_1ED568238 && (Value = CFDictionaryGetValue(qword_1ED568238, @"Families")) != 0 && (v5 = CFDictionaryGetValue(Value, a2)) != 0 && (v6 = v5, CFArrayGetCount(v5)))
  {
    v7 = v6;
    a1->isa = atomic_exchange(&v7, 0);
  }

  else
  {
LABEL_9:
    a1->isa = 0;
  }
}

BOOL IsInvisibleSystemFontName(const __CFString *a1)
{
  CopyAttributeForSystemFont(a1, @"CTFontInvisibleAttribute", &v4);
  v1 = atomic_exchange(&v4, 0);

  if (v1)
  {
    valuePtr = -1431655766;
    CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
    v2 = valuePtr != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const void *IsInvisibleSystemFontPostScriptNameWithoutPrecedingPeriod(const void *value)
{
  if (value)
  {
    v1 = value;
    if (qword_1ED568220 != -1)
    {
      dispatch_once(&qword_1ED568220, &__block_literal_global_34);
    }

    value = qword_1ED568218;
    if (qword_1ED568218)
    {
      return (CFSetContainsValue(qword_1ED568218, v1) != 0);
    }
  }

  return value;
}

void ___Z57IsInvisibleSystemFontPostScriptNameWithoutPrecedingPeriodPK10__CFString_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = xmmword_1E6E3EAC0;
  v6 = *&off_1E6E3EAD0;
  v7 = xmmword_1E6E3EAE0;
  *values = xmmword_1E6E3EA80;
  v2 = *&off_1E6E3EA90;
  v3 = xmmword_1E6E3EAA0;
  v4 = *&off_1E6E3EAB0;
  v0 = CFSetCreate(*MEMORY[0x1E695E480], values, 14, MEMORY[0x1E695E9F8]);
  qword_1ED568218 = atomic_exchange(&v0, 0);
}

uint64_t GetFontFormat(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  valuePtr = 0;
  CopyAttributeForSystemFont(a1, @"NSCTFontFormatAttribute", &v4);
  v1 = atomic_exchange(&v4, 0);

  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
  }

  v2 = valuePtr;

  return v2;
}

BOOL GetStringEncodingSpecialCase(_BOOL8 key, unsigned int *a2)
{
  if (key)
  {
    v3 = key;
    if (qword_1ED568230 != -1)
    {
      dispatch_once_f(&qword_1ED568230, 0, GetStringEncodingSpecialCase(__CFString const*,unsigned int *)::$_0::__invoke);
    }

    value = 0xAAAAAAAAAAAAAAAALL;
    ValueIfPresent = CFDictionaryGetValueIfPresent(qword_1ED568228, v3, &value);
    key = ValueIfPresent != 0;
    if (ValueIfPresent)
    {
      *a2 = value;
    }
  }

  return key;
}

const __CFArray *IsInvisiblePlatformDelivery(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFArrayGetTypeID())
    {
      v3.length = CFArrayGetCount(v1);
      v3.location = 0;
      return (CFArrayContainsValue(v1, v3, @"iOS-invisible") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL23FontServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  FontServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void GetStringEncodingSpecialCase(__CFString const*,unsigned int *)::$_0::__invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 29, MEMORY[0x1E695E9D8], 0);
  v2 = *MEMORY[0x1E695E498];
  v3 = &dword_1E6E3EAF8;
  v4 = 464;
  do
  {
    v5 = *v3;
    v6 = CFStringCreateWithCStringNoCopy(v0, *(v3 - 1), 0x600u, v2);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(Mutable, v6, v5);
      CFRelease(v7);
    }

    v3 += 4;
    v4 -= 16;
  }

  while (v4);
  qword_1ED568228 = Mutable;
}

uint64_t CreateFontWithData@<X0>(atomic_ullong *a1@<X8>)
{
  *a1 = 0;
  result = FPFontCreateWithData();
  if (result)
  {

    return FPFontRelease();
  }

  return result;
}

void CreateMemorySafeFontWithData(const __CFData *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0;
  if (!a1)
  {
    return;
  }

  MemorySafeFontsFromData = FPFontCreateMemorySafeFontsFromData();
  v4 = MemorySafeFontsFromData;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);

  if (Count)
  {
    CFArrayGetValueAtIndex(MemorySafeFontsFromData, 0);
    v4 = atomic_exchange(a2, CGFontCreateWithParserFont());
LABEL_5:
  }
}

void CopyPathFromInMemoryFontURL(const __CFURL *a1@<X0>, CFStringRef *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[11] = v3;
    v11[10] = v3;
    v11[9] = v3;
    v11[8] = v3;
    v11[7] = v3;
    v11[6] = v3;
    v11[4] = v3;
    v11[5] = v3;
    v11[2] = v3;
    v11[3] = v3;
    v11[0] = v3;
    v11[1] = v3;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v12 = v11;
    BytesForComponent = GetBytesForComponent(a1, &v8);
    if (BytesForComponent == -1)
    {
      v6 = 0;
    }

    else
    {
      if (v9 - v8 <= BytesForComponent)
      {
        __break(1u);
      }

      v6 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &v8[BytesForComponent], v5, 0x8000100u, 0);
    }

    *a2 = v6;
    v7 = &v8;
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,192ul>>::__destroy_vector::operator()[abi:fn200100](&v7);
  }

  else
  {
    *a2 = 0;
  }
}

void CreateMaskedPath(const CGPath *a1@<X0>, CGPathRef path@<X1>, CGFloat a3@<D0>, CGAffineTransform *a4@<X2>, char a5@<W3>, void *a6@<X8>)
{
  SeparateComponents = CGPathCreateSeparateComponents(path, 0);
  Mutable = CGPathCreateMutable();
  if (SeparateComponents)
  {
    Count = CFArrayGetCount(SeparateComponents);
    if (Count)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        CFArrayGetValueAtIndex(SeparateComponents, i);
        v30[1] = MEMORY[0x1E69E9820];
        v30[2] = 3321888768;
        v30[3] = ___Z16CreateMaskedPathPK6CGPathS1_dP17CGAffineTransformb_block_invoke;
        v30[4] = &__block_descriptor_48_8_32c21_ZTS6TCFRefIP6CGPathE_e40_v24__0r__CGPathElement_i__CGPoint__8_B16l;
        v31 = Mutable;
        v32 = a4;
        CGPathApplyWithBlock2();
      }
    }
  }

  v30[0] = CGPathCreateCopyByStrokingPath(Mutable, 0, a3, kCGLineCapButt, kCGLineJoinRound, 0.0);
  v14 = a1;
  if (a5)
  {
    BoundingBox = CGPathGetBoundingBox(a1);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    v19 = CGPathCreateMutable();
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v35.origin.x = CGRectGetMinX(v34);
    v35.origin.y = y;
    v35.size.width = a3;
    v35.size.height = height;
    CGPathAddRect(v19, 0, v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v37.origin.x = CGRectGetMaxX(v36);
    v37.size.width = -a3;
    v37.origin.y = y;
    v37.size.height = height;
    CGPathAddRect(v19, 0, v37);
    CopyBySubtractingPath = CGPathCreateCopyBySubtractingPath(atomic_load_explicit(v30, memory_order_acquire), v19, 0);
  }

  CopyBySubtractingPath = CGPathCreateCopyByUnioningPath(atomic_load_explicit(v30, memory_order_acquire), Mutable, 0);

  v20 = CGPathCreateCopyBySubtractingPath(v14, atomic_load_explicit(v30, memory_order_acquire), 0);
  v21 = CGPathCreateSeparateComponents(v20, 0);
  CopyBySubtractingPath = CGPathCreateMutable();
  if (v21)
  {
    v22 = CFArrayGetCount(v21);
    if (v22)
    {
      v23 = v22;
      for (j = 0; j != v23; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v21, j);
        PathBoundingBox = CGPathGetPathBoundingBox(ValueAtIndex);
        if (PathBoundingBox.size.width >= a3 || PathBoundingBox.size.height >= a3)
        {
          CGPathAddPath(atomic_load_explicit(&CopyBySubtractingPath, memory_order_acquire), 0, ValueAtIndex);
        }
      }
    }
  }

  *a6 = atomic_exchange(&CopyBySubtractingPath, 0);
}

void ___Z16CreateMaskedPathPK6CGPathS1_dP17CGAffineTransformb_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        explicit = atomic_load_explicit((a1 + 32), memory_order_acquire);
        v7 = *(a1 + 40);
        v8 = *(a2 + 8);
        v9 = *v8;
        v10 = v8[1];

        CGPathAddLineToPoint(explicit, v7, v9, v10);
      }
    }

    else
    {
      v27 = atomic_load_explicit((a1 + 32), memory_order_acquire);
      v28 = *(a1 + 40);
      v29 = *(a2 + 8);
      v30 = *v29;
      v31 = v29[1];

      CGPathMoveToPoint(v27, v28, v30, v31);
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v11 = atomic_load_explicit((a1 + 32), memory_order_acquire);
        v12 = *(a1 + 40);
        v13 = *(a2 + 8);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];

        CGPathAddQuadCurveToPoint(v11, v12, v14, v15, v16, v17);
        break;
      case 3:
        v18 = atomic_load_explicit((a1 + 32), memory_order_acquire);
        v19 = *(a1 + 40);
        v20 = *(a2 + 8);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];

        CGPathAddCurveToPoint(v18, v19, v21, v22, v23, v24, v25, v26);
        break;
      case 4:
        CGPathCloseSubpath(atomic_load_explicit((a1 + 32), memory_order_acquire));
        *a3 = 1;
        break;
    }
  }
}

id __copy_helper_block_8_32c21_ZTS6TCFRefIP6CGPathE(uint64_t a1, uint64_t a2)
{
  result = atomic_load_explicit((a2 + 32), memory_order_acquire);
  *(a1 + 32) = result;
  return result;
}

void TArabicJustEngine::PostcompTable(TArabicJustEngine *this@<X0>, unint64_t *a2@<X8>)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  explicit = atomic_load_explicit((*(this + 1) + 56), memory_order_acquire);
  if (explicit)
  {
    GlyphCount = TBaseFont::GetGlyphCount(*(*(explicit + 40) + 408));
  }

  else
  {
    GlyphCount = 0;
  }

  v6 = NewLKTHandle(GlyphCount, 0);
  for (i = *(this + 6); i; i = *i)
  {
    LKTAddRange(v6, *(i + 8), *(i + 8), 1);
  }

  LKTCreateLookupTable(v6, &v23);
  if (atomic_load_explicit(&v23, memory_order_acquire))
  {
    Length = CFDataGetLength(atomic_load_explicit(&v23, memory_order_acquire));
  }

  else
  {
    Length = 0;
  }

  for (j = *(this + 6); j; j = *j)
  {
    LKTAddRange(v6, *(j + 8), *(j + 8), Length);
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  LKTCreateLookupTable(v6, &v22);
  DisposeLKTHandle(v6);
  v10 = atomic_load_explicit(&v22, memory_order_acquire);
  if (v10)
  {
    v11 = atomic_load_explicit(&Mutable, memory_order_acquire);
    BytePtr = CFDataGetBytePtr(atomic_load_explicit(&v22, memory_order_acquire));
    CFDataAppendBytes(v11, BytePtr, Length);
    v13 = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = 0x2000000;
    CFDataAppendBytes(v13, bytes, 4);
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = atomic_load_explicit(&Mutable, memory_order_acquire);
      *bytes = v14;
      CFDataAppendBytes(v17, bytes, 2);
      v18 = atomic_load_explicit(&Mutable, memory_order_acquire);
      *bytes = 1280;
      CFDataAppendBytes(v18, bytes, 2);
      v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
      *bytes = 201326592;
      CFDataAppendBytes(v19, bytes, 4);
      v20 = atomic_load_explicit(&Mutable, memory_order_acquire);
      *bytes = 0;
      CFDataAppendBytes(v20, bytes, 2);
      v21 = atomic_load_explicit(&Mutable, memory_order_acquire);
      *bytes = bswap32(*(this + 8)) >> 16;
      CFDataAppendBytes(v21, bytes, 2);
      v15 = 0;
      v14 = 256;
    }

    while ((v16 & 1) != 0);
    v10 = atomic_exchange(&Mutable, 0);
  }

  *a2 = v10;
}

void TFallbacksSource::CopyDescriptorsForFamily(atomic_ullong **this@<X0>, const __CFString *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  TPurgeableCache::RetainedValueForKey(*this, a2, &v10);
  *a3 = atomic_exchange(&v10, 0);

  if (!atomic_load_explicit(a3, memory_order_acquire))
  {
    TDescriptorSource::TDescriptorSource(&v9);
    TDescriptorSource::CopyMatchingDescriptorsForFamily(&v9, a2, &v10);

    if (atomic_load_explicit(a3, memory_order_acquire))
    {
      v6 = *this;
      explicit = atomic_load_explicit(a3, memory_order_acquire);
      v8 = atomic_load_explicit(v6, memory_order_acquire);
      if (explicit)
      {
        [v8 setObject:explicit forKey:a2];
      }

      else
      {
        [v8 removeObjectForKey:a2];
      }
    }
  }
}

void SyriacShapingEngine::SetFeatures(SyriacShapingEngine *this, const OTL::GSUB *a2, OTL::GlyphLookups *a3)
{
  v4 = 0;
  v97 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86[19] = v5;
  v86[20] = v5;
  v86[17] = v5;
  v86[18] = v5;
  v86[15] = v5;
  v86[16] = v5;
  v86[13] = v5;
  v86[14] = v5;
  v86[11] = v5;
  v86[12] = v5;
  v86[9] = v5;
  v86[10] = v5;
  v86[8] = v5;
  v86[6] = v5;
  v86[7] = v5;
  v86[4] = v5;
  v86[5] = v5;
  v86[2] = v5;
  v86[3] = v5;
  v86[0] = v5;
  v86[1] = v5;
  do
  {
    v6 = &v86[v4];
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[5] = &v86[v4 + 1] + 8;
    v4 += 3;
  }

  while (v4 != 21);
  v7 = *(this + 2);
  v8 = TRunGlue::length(v7);
  v9 = *(this + 2);
  v71 = v9[6];
  v74 = a3;
  if (v71 < 1)
  {
    v75 = v7;
    v77 = (v8 - 1);
    v81 = &SyriacShapingEngine::SetFeatures(OTL::GSUB const&,OTL::GlyphLookups &)::rtlTagArray;
    v78 = -1;
  }

  else
  {
    v77 = 0;
    v78 = TRunGlue::length(v9);
    v75 = v9;
    v81 = "lositinianifidem2dem2nif3niflosianif2nif3nifidem2demtini";
  }

  v10 = 0;
  v11 = 0x3FFFFFFFFFFFFFFFLL;
  do
  {
    v95 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v94[5] = v12;
    v94[6] = v12;
    v94[3] = v12;
    v94[4] = v12;
    v94[1] = v12;
    v94[2] = v12;
    v94[0] = v12;
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v96 = v94;
    v85 = *&v81[4 * v10];
    OTL::FeatureBuffer::FeatureBuffer(v88, &v85, 1);
    OTL::GCommon::GetLookups(a2, v88, &v91, 0);
    StringIndex = v88;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&StringIndex);
    v14 = v91;
    v13 = v92;
    if (v91 != v92)
    {
      v15 = &v86[3 * v10];
      v16 = *(v15 + 1);
      do
      {
        v17 = *v14;
        v18 = *(v14 + 1);
        v19 = *(v15 + 2);
        if (v16 >= v19)
        {
          *&v88[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v88 = v20;
          *&v88[16] = v20;
          v21 = (v16 - *v15) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            goto LABEL_80;
          }

          v23 = v19 - *v15;
          if (v23 >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::__split_buffer(v88, v24, v21, v15 + 24);
          **&v88[16] = v17 | (v18 << 16);
          *&v88[16] += 4;
          v25 = *(v15 + 1) - *v15;
          v26 = *&v88[8] - v25;
          memcpy((*&v88[8] - v25), *v15, v25);
          v27 = *v15;
          *v15 = v26;
          v28 = *(v15 + 2);
          v83 = *&v88[16];
          *(v15 + 8) = *&v88[16];
          *&v88[16] = v27;
          *&v88[24] = v28;
          *v88 = v27;
          *&v88[8] = v27;
          std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::~__split_buffer(v88);
          v16 = v83;
        }

        else
        {
          *v16++ = v17 | (v18 << 16);
        }

        *(v15 + 1) = v16;
        v14 = (v14 + 4);
      }

      while (v14 != v13);
    }

    *v88 = &v91;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v88);
    ++v10;
  }

  while (v10 != 7);
  v29 = 0;
  v30 = v74;
  do
  {
    v31 = 28;
    v32 = v81;
    while (*v32 != *&SyriacShapingEngine::SetFeatures(OTL::GSUB const&,OTL::GlyphLookups &)::ltrTagArray[v29 + 28])
    {
      v32 += 4;
      v31 -= 4;
      if (!v31)
      {
        v32 = (v81 + 28);
        break;
      }
    }

    v33 = (v32 - v81) >> 2;
    if (v33 >= 7)
    {
      goto LABEL_79;
    }

    v34 = &v86[3 * v33];
    v35 = *v34;
    v36 = v34[1];
    if (*v34 != v36)
    {
      do
      {
        v37 = *v35++;
        v11 = v11 & 0xFFFFFFFF00000000 | v37;
        OTL::GlyphLookups::SetLookupInRange<false>(v74, v11, 0, 0);
      }

      while (v35 != v36);
    }

    v29 += 4;
  }

  while (v29 != 28);
  *v88 = *(this + 1);
  memset(&v88[8], 0, 160);
  v90 = 0;
  v89 = 0u;
  *&v89 = *(*v88 + 16);
  v91 = v75;
  v92 = v77;
  v38 = v78;
  if (v77 == v78)
  {
    goto LABEL_76;
  }

  v76 = 0;
  v82 = 0;
  v84 = 0;
  v39 = 0;
  v40 = 0;
  v80 = 0;
  v41 = 0;
  v42 = 0;
  v43 = v71;
  do
  {
    IsDeleted = TRunGlue::TGlyph::IsDeleted(&v91);
    v45 = v92;
    if (IsDeleted)
    {
      goto LABEL_58;
    }

    v46 = v39;
    StringIndex = TRunGlue::GetStringIndex(v91, v92);
    FullChar = TCharStreamIterator::GetFullChar(v88, &StringIndex, 0);
    IntPropertyValue = u_getIntPropertyValue(FullChar, UCHAR_JOINING_TYPE);
    v49 = JoiningScriptShapingEngine::shapeTypes[IntPropertyValue];
    if (v84)
    {
      v50 = IntPropertyValue;
      if (u_getIntPropertyValue(v40, UCHAR_JOINING_GROUP) == 2)
      {
        if (!v50)
        {
          v73 = v40;
          if ((v41 & 1) == 0)
          {
            if (u_getIntPropertyValue(v46, UCHAR_JOINING_GROUP) == 7)
            {
              v61 = 6;
            }

            else
            {
              v61 = 5;
            }

            v80 = v61;
          }

          v49 = 8;
          v52 = v42;
          goto LABEL_40;
        }

        v51 = v80;
        if (v41)
        {
          v51 = 4;
        }

        v80 = v51;
      }
    }

    v52 = v42;
    if ((v49 & 4) == 0)
    {
      v73 = v40;
LABEL_40:
      if (v52 & v49)
      {
        v53 = ((v49 & 8) >> 3) ^ 1;
      }

      else
      {
        v53 = 0;
      }

      v54 = v74;
      if (v76 >= 1)
      {
        if ((v52 & v49) & v82)
        {
          v55 = v80 + 2;
        }

        else
        {
          v55 = v80;
        }

        if (v55 >= 7)
        {
          goto LABEL_79;
        }

        v56 = &v86[3 * v55];
        v57 = *v56;
        v58 = v56[1];
        v54 = v74;
        if (*v56 != v58)
        {
          do
          {
            v59 = *v57++;
            v41 = v41 & 0xFFFFFFFF00000000 | v59;
            OTL::GlyphLookups::SetLookupInRange<true>(v74, v41, v77, 1);
          }

          while (v57 != v58);
        }
      }

      v60 = (v49 >> 1) & 1;
      v80 = v53;
      v84 = v82;
      v39 = v73;
      v82 = (v49 & 8) == 0;
      v76 = 1;
      v77 = v92;
      v30 = v54;
      v43 = v71;
      v38 = v78;
      v41 = v42;
      goto LABEL_57;
    }

    if (*(this + 24))
    {
      v60 = v42;
      FullChar = v40;
      v39 = v46;
    }

    else
    {
      if (!TRunGlue::TGlyph::glyphID(&v91))
      {
        TRunGlue::Delete(*(this + 2), v92, 0);
      }

      v60 = v42;
      FullChar = v40;
      v39 = v46;
    }

    v38 = v78;
LABEL_57:
    v45 = v92;
    v42 = v60;
    v40 = FullChar;
LABEL_58:
    v92 = (v45 + v43);
  }

  while ((v45 + v43) != v38);
  if (v84)
  {
    v62 = u_getIntPropertyValue(v40, UCHAR_JOINING_GROUP) != 2;
    v63 = v76;
    v64 = v77;
    v65 = v80;
    if (((v62 | v41) & 1) == 0)
    {
      if (u_getIntPropertyValue(v39, UCHAR_JOINING_GROUP) == 7)
      {
        v65 = 6;
      }

      else
      {
        v65 = 5;
      }
    }
  }

  else
  {
    v63 = v76;
    v64 = v77;
    v65 = v80;
  }

  if (v63 >= 1)
  {
    if (v65 < 7)
    {
      v66 = &v86[3 * v65];
      v67 = *v66;
      v68 = v66[1];
      if (*v66 != v68)
      {
        do
        {
          v69 = *v67++;
          v43 = v43 & 0xFFFFFFFF00000000 | v69;
          OTL::GlyphLookups::SetLookupInRange<true>(v30, v43, v64, 1);
        }

        while (v67 != v68);
      }

      goto LABEL_76;
    }

LABEL_79:
    __break(1u);
LABEL_80:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

LABEL_76:
  for (i = 18; i != -3; i -= 3)
  {
    *v88 = &v86[i];
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](v88);
  }
}

uint64_t JoiningScriptShapingEngine::ApplyScriptShaping(JoiningScriptShapingEngine *this, const OTL::GSUB *a2, OTL::GlyphLookups *a3, BOOL *a4)
{
  if (!*(this + 1))
  {
    return 0;
  }

  *(*(this + 2) + 512) = 257;
  if (a4)
  {
    *a4 = JoiningScriptShapingEngine::ApplyStretching(this, a2);
  }

  (*(*this + 24))(this, a2, a3);
  return 1;
}

uint64_t JoiningScriptShapingEngine::ApplyStretching(TRunGlue **this, const OTL::GSUB *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[8] = v4;
  v23 = v4;
  v22[6] = v4;
  v22[7] = v4;
  v22[4] = v4;
  v22[5] = v4;
  v22[2] = v4;
  v22[3] = v4;
  v22[0] = v4;
  v22[1] = v4;
  v18 = 1937007464;
  v5 = v19;
  OTL::FeatureBuffer::FeatureBuffer(v19, &v18, 1);
  OTL::GCommon::GetLookups(a2, v19, v22);
  v17[0] = v19;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v17);
  v6 = 0;
  if (BYTE8(v23) == 1)
  {
    memset(v20, 170, sizeof(v20));
    memset(v19, 0, sizeof(v19));
    v21 = v20;
    v7 = TRunGlue::length(this[2]);
    v9 = *(&v22[0] + 1);
    v8 = *&v22[0];
    if (*&v22[0] != *(&v22[0] + 1))
    {
      v10 = v7;
      do
      {
        v11 = *v8++;
        v5 = v5 & 0xFFFFFFFF00000000 | v11;
        OTL::GlyphLookups::SetLookupInRange<false>(v19, v5, 0, v10);
      }

      while (v8 != v9);
    }

    v12 = this[2];
    v13 = *(v12 + 13);
    v14 = TRunGlue::length(v12);
    std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::resize(v13, v14);
    v17[0] = v13;
    v17[1] = 0xAAAAAAAA00000001;
    LOBYTE(v18) = 0;
    v15 = OTL::GSUB::ApplyLookups(a2, this[2], *(this[2] + 6), v19, &v18, JoiningScriptShapingEngine::ApplyStretching(OTL::GSUB const&)::$_0::__invoke, v17);
    v6 = v15 & v18;
    v17[0] = v19;
    std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](v17);
    if (BYTE8(v23))
    {
      v19[0] = v22;
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v19);
    }
  }

  return v6;
}

uint64_t JoiningScriptShapingEngine::MakePositioningAdjustments(JoiningScriptShapingEngine *this)
{
  v1 = *(this + 2);
  v10 = *(this + 1);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v22 = 0;
  v21 = 0u;
  *&v21 = *(v10 + 16);
  result = TRunGlue::length(v1);
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = MEMORY[0x1E695F060];
    do
    {
      v8 = v1;
      v9 = v4;
      result = TRunGlue::TGlyph::IsDeleted(&v8);
      if ((result & 1) == 0)
      {
        StringIndex = TRunGlue::GetStringIndex(v8, v9);
        FullChar = TCharStreamIterator::GetFullChar(&v10, &StringIndex, 0);
        result = u_getCombiningClass(FullChar);
        if (result)
        {
          result = TRunGlue::SetAdvance(v8, v9, *v5);
        }
      }

      ++v4;
    }

    while (v3 != v4);
  }

  return result;
}