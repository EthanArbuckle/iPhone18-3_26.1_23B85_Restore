BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::greater<long> &,long *>(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

void GetLeftHangingCharacters(void)::$_0::__invoke()
{
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  v0 = &byte_18475A36A;
  v1 = 72;
  do
  {
    if (*v0)
    {
      v4.location = *(v0 - 1);
      v4.length = 1;
      CFCharacterSetAddCharactersInRange(atomic_load_explicit(&Mutable, memory_order_acquire), v4);
    }

    v0 += 4;
    v1 -= 4;
  }

  while (v1);
  v2 = atomic_exchange(&Mutable, 0);
  _CFCharacterSetCompact();
  _MergedGlobals_5 = v2;
}

void GetRightHangingCharacters(void)::$_0::__invoke()
{
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  v0 = &kHangers;
  v1 = 72;
  do
  {
    if (*(v0 + 3))
    {
      v4.location = *v0;
      v4.length = 1;
      CFCharacterSetAddCharactersInRange(atomic_load_explicit(&Mutable, memory_order_acquire), v4);
    }

    v0 += 2;
    v1 -= 4;
  }

  while (v1);
  v2 = atomic_exchange(&Mutable, 0);
  _CFCharacterSetCompact();
  qword_1ED5677E0 = v2;
}

void std::vector<CGSize>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::allocator<CGSize>::allocate_at_least[abi:fn200100](a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

uint64_t *std::vector<long,TInlineBufferAllocator<long,30ul>>::__insert_with_size[abi:fn200100]<long const*,long const*>(uint64_t *result, char *__src, char *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return result;
  }

  v5 = __src;
  v6 = result;
  v8 = result[1];
  v7 = result[2];
  if (a4 > (v7 - v8) >> 3)
  {
    v9 = *result;
    v10 = a4 + ((v8 - *result) >> 3);
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v11;
    v38 = v11;
    if (v10 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v12 = v7 - v9;
    if (v12 >> 2 > v10)
    {
      v10 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v37, v13, -v9 >> 3, (result + 3));
    v14 = v38;
    v15 = (v38 + 8 * a4);
    v16 = 8 * a4;
    do
    {
      v17 = *v5++;
      *v14++ = v17;
      v16 -= 8;
    }

    while (v16);
    *&v38 = v15;
    memcpy(v15, 0, *(v6 + 8));
    v18 = *(&v37 + 1);
    v19 = *v6;
    *&v38 = v38 + *(v6 + 8);
    *(v6 + 8) = 0;
    v20 = (v18 + v19);
    memcpy((v18 + v19), v19, -v19);
    v21 = *v6;
    *v6 = v20;
    v22 = *(v6 + 16);
    *(v6 + 8) = v38;
    *&v38 = v21;
    *(&v38 + 1) = v22;
    *&v37 = v21;
    *(&v37 + 1) = v21;
    return std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v37);
  }

  if (v8 >> 3 >= a4)
  {
    v27 = v8 - 8 * a4;
    if (v27 >= v8)
    {
      v29 = result[1];
    }

    else
    {
      v28 = (v8 - 8 * a4);
      v29 = result[1];
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 < v8);
    }

    result[1] = v29;
    if (v8 != 8 * a4)
    {
      memmove((8 * a4), 0, v27);
    }

    v35 = v5;
    v36 = 8 * a4;
    goto LABEL_35;
  }

  v23 = &__src[v8];
  v24 = result[1];
  v25 = v24;
  while (v23 != a3)
  {
    v26 = *v23;
    v23 += 8;
    *v25++ = v26;
    ++v24;
  }

  result[1] = v24;
  if (v8 >> 3 >= 1)
  {
    v31 = &v24[-a4];
    if (v31 >= v8)
    {
      v33 = v24;
    }

    else
    {
      v32 = &v24[-a4];
      v33 = v24;
      do
      {
        v34 = *v32++;
        *v33++ = v34;
      }

      while (v32 < v8);
    }

    result[1] = v33;
    if (v25 != (8 * a4))
    {
      result = memmove((8 * a4), 0, v31);
    }

    if (v8)
    {
      v35 = v5;
      v36 = v8;
LABEL_35:

      return memmove(0, v35, v36);
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,LessByStringIndex &,long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v82 = *(a2 - 1);
        v76 = *v10;
        if (*(*a3 + 8 * v82) < *(*a3 + 8 * *v10))
        {
          *v10 = v82;
          goto LABEL_204;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v49 = (v10 + 1);
      v83 = v10[1];
      v52 = v10 + 2;
      v15 = v10[2];
      v14 = *a3;
      v84 = *(*a3 + 8 * v83);
      v85 = *v10;
      v86 = *(*a3 + 8 * v15);
      if (v84 >= *(*a3 + 8 * *v10))
      {
        if (v86 >= v84)
        {
          goto LABEL_197;
        }

        *v49 = v15;
        *v52 = v83;
        v87 = v10;
        v88 = v10 + 1;
        result = v83;
        if (*(v14 + 8 * v15) >= *(v14 + 8 * v85))
        {
          goto LABEL_198;
        }
      }

      else
      {
        v87 = v10;
        v88 = v10 + 2;
        result = *v10;
        if (v86 >= v84)
        {
          *v10 = v83;
          v10[1] = v85;
          v87 = v10 + 1;
          v88 = v10 + 2;
          result = v85;
          if (*(v14 + 8 * v15) >= *(v14 + 8 * v85))
          {
            goto LABEL_197;
          }
        }
      }

      *v87 = v15;
      *v88 = v85;
      v83 = result;
      goto LABEL_198;
    }

    if (v11 == 5)
    {
      v81 = *a3;

      return std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,LessByStringIndex &,long *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v81);
    }

LABEL_10:
    if (v11 <= 23)
    {
      v14 = *a3;
      v49 = (v10 + 1);
      v90 = v10 == a2 || v49 == a2;
      if (a5)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v10;
          do
          {
            v93 = *v92;
            v92 = v49;
            v94 = *v49;
            if (*(v14 + 8 * v94) < *(v14 + 8 * v93))
            {
              v95 = v91;
              while (1)
              {
                *(v10 + v95 + 8) = v93;
                if (!v95)
                {
                  break;
                }

                v93 = *(v10 + v95 - 8);
                v95 -= 8;
                if (*(v14 + 8 * v94) >= *(v14 + 8 * v93))
                {
                  v96 = (v10 + v95 + 8);
                  goto LABEL_140;
                }
              }

              v96 = v10;
LABEL_140:
              *v96 = v94;
            }

            v49 = (v92 + 1);
            v91 += 8;
          }

          while (v92 + 1 != a2);
        }

        return result;
      }

      if (v90)
      {
        return result;
      }

      v52 = 0;
      v129 = 8;
      while (1)
      {
        v15 = *(v52 + v10);
        v52 = v129;
        v130 = *v49;
        if (*(v14 + 8 * *v49) < *(v14 + 8 * v15))
        {
          break;
        }

LABEL_194:
        v129 = (v52 + 1);
        v49 += 8;
        if (v49 == a2)
        {
          return result;
        }
      }

      v131 = 0;
      while (1)
      {
        *(v49 + v131) = v15;
        if (!&v52[v131 / 8])
        {
          break;
        }

        v15 = *(v49 + v131 - 16);
        v131 -= 8;
        if (*(v14 + 8 * v130) >= *(v14 + 8 * v15))
        {
          *(v49 + v131) = v130;
          goto LABEL_194;
        }
      }

LABEL_196:
      __break(1u);
LABEL_197:
      v83 = v15;
LABEL_198:
      v132 = *(a2 - 1);
      if (*(v14 + 8 * v132) < *(v14 + 8 * v83))
      {
        *v52 = v132;
        *(a2 - 1) = v83;
        v133 = *v52;
        v134 = *v49;
        if (*(v14 + 8 * v133) < *(v14 + 8 * v134))
        {
          v9[1] = v133;
          v9[2] = v134;
          v135 = *v9;
          if (*(v14 + 8 * v133) < *(v14 + 8 * *v9))
          {
            *v9 = v133;
            v9[1] = v135;
          }
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v97 = (v11 - 2) >> 1;
        v98 = v97;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = *a3;
            v101 = (2 * v99) | 1;
            v102 = &v10[v101];
            if (2 * v99 + 2 >= v11)
            {
              v106 = *v102;
            }

            else
            {
              v103 = *(v100 + 8 * *v102);
              v104 = *(v100 + 8 * v102[1]);
              v105 = v103 < v104;
              if (v103 >= v104)
              {
                v106 = *v102;
              }

              else
              {
                v106 = v102[1];
              }

              if (v105)
              {
                ++v102;
                v101 = 2 * v99 + 2;
              }
            }

            v107 = &v10[v99];
            v108 = *v107;
            result = *(v100 + 8 * *v107);
            if (*(v100 + 8 * v106) >= result)
            {
              do
              {
                *v107 = v106;
                v107 = v102;
                if (v97 < v101)
                {
                  break;
                }

                v109 = (2 * v101) | 1;
                v102 = &v10[v109];
                v101 = 2 * v101 + 2;
                if (v101 >= v11)
                {
                  v106 = *v102;
                  v101 = v109;
                }

                else
                {
                  v106 = *v102;
                  if (*(v100 + 8 * *v102) >= *(v100 + 8 * v102[1]))
                  {
                    v101 = v109;
                  }

                  else
                  {
                    v106 = v102[1];
                    ++v102;
                  }
                }

                result = *(v100 + 8 * v108);
              }

              while (*(v100 + 8 * v106) >= result);
              *v107 = v108;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        do
        {
          v110 = 0;
          v111 = *v10;
          v112 = *a3;
          v113 = v10;
          do
          {
            v114 = &v113[v110];
            v115 = v114 + 1;
            v116 = (2 * v110) | 1;
            v110 = 2 * v110 + 2;
            if (v110 >= v11)
            {
              v118 = *v115;
              v110 = v116;
            }

            else
            {
              v119 = v114[2];
              v117 = v114 + 2;
              v118 = v119;
              result = *(v117 - 1);
              if (*(v112 + 8 * result) < *(v112 + 8 * v119))
              {
                v115 = v117;
              }

              else
              {
                v118 = *(v117 - 1);
                v110 = v116;
              }
            }

            *v113 = v118;
            v113 = v115;
          }

          while (v110 <= ((v11 - 2) >> 1));
          if (v115 == --a2)
          {
            *v115 = v111;
          }

          else
          {
            *v115 = *a2;
            *a2 = v111;
            v120 = (v115 - v10 + 8) >> 3;
            v121 = v120 - 2;
            if (v120 >= 2)
            {
              v122 = *a3;
              v123 = v121 >> 1;
              v124 = &v10[v123];
              v125 = *v124;
              v126 = *v115;
              if (*(*a3 + 8 * *v124) < *(*a3 + 8 * *v115))
              {
                do
                {
                  *v115 = v125;
                  v115 = v124;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = &v10[v123];
                  v125 = *v124;
                }

                while (*(v122 + 8 * *v124) < *(v122 + 8 * v126));
                *v115 = v126;
              }
            }
          }

          v105 = v11-- <= 2;
        }

        while (!v105);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 8 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 8 * *v12);
      v19 = *v10;
      if (v18 >= *(v14 + 8 * *v10))
      {
        if (v16 < v18)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v10;
          if (*(v14 + 8 * *v12) < *(v14 + 8 * *v10))
          {
            *v10 = *v12;
            *v12 = v23;
          }
        }
      }

      else
      {
        if (v16 < v18)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v19;
        v25 = *(a2 - 1);
        if (*(v14 + 8 * v25) < *(v14 + 8 * v19))
        {
          *v12 = v25;
LABEL_27:
          *(a2 - 1) = v19;
        }
      }

      v26 = v12 - 1;
      v27 = *(v12 - 1);
      v28 = *(v14 + 8 * v27);
      v29 = v10[1];
      v30 = *(a2 - 2);
      v31 = *(v14 + 8 * v30);
      if (v28 >= *(v14 + 8 * v29))
      {
        if (v31 < v28)
        {
          *v26 = v30;
          *(a2 - 2) = v27;
          v32 = v10[1];
          if (*(v14 + 8 * *v26) < *(v14 + 8 * v32))
          {
            v10[1] = *v26;
            *v26 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v10[1] = v30;
          goto LABEL_39;
        }

        v10[1] = v27;
        *v26 = v29;
        v34 = *(a2 - 2);
        if (*(v14 + 8 * v34) < *(v14 + 8 * v29))
        {
          *v26 = v34;
LABEL_39:
          *(a2 - 2) = v29;
        }
      }

      v37 = v12[1];
      v35 = v12 + 1;
      v36 = v37;
      v38 = *(v14 + 8 * v37);
      v39 = v10[2];
      v40 = *(a2 - 3);
      v41 = *(v14 + 8 * v40);
      if (v38 >= *(v14 + 8 * v39))
      {
        if (v41 < v38)
        {
          *v35 = v40;
          *(a2 - 3) = v36;
          v42 = v10[2];
          if (*(v14 + 8 * *v35) < *(v14 + 8 * v42))
          {
            v10[2] = *v35;
            *v35 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v10[2] = v40;
          goto LABEL_48;
        }

        v10[2] = v36;
        *v35 = v39;
        v43 = *(a2 - 3);
        if (*(v14 + 8 * v43) < *(v14 + 8 * v39))
        {
          *v35 = v43;
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      v15 = *v13;
      v44 = *(v14 + 8 * *v13);
      v45 = *v26;
      v46 = *v35;
      v47 = *(v14 + 8 * *v35);
      if (v44 >= *(v14 + 8 * *v26))
      {
        if (v47 >= v44)
        {
          goto LABEL_56;
        }

        *v13 = v46;
        *v35 = v15;
        v35 = v13;
        v15 = v45;
        if (*(v14 + 8 * v46) >= *(v14 + 8 * v45))
        {
          v15 = v46;
          goto LABEL_56;
        }
      }

      else if (v47 >= v44)
      {
        *v26 = v15;
        *v13 = v45;
        v26 = v13;
        v15 = v46;
        if (*(v14 + 8 * v46) >= *(v14 + 8 * v45))
        {
          v15 = v45;
LABEL_56:
          v48 = *v10;
          *v10 = v15;
          *v13 = v48;
          goto LABEL_57;
        }
      }

      *v26 = v46;
      *v35 = v45;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *(v14 + 8 * *v10);
    v22 = *v13;
    if (v21 >= *(v14 + 8 * *v13))
    {
      if (v16 < v21)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v15 = *(v14 + 8 * *v10);
        v24 = *v13;
        if (v15 < *(v14 + 8 * *v13))
        {
          *v13 = *v10;
          *v10 = v24;
        }
      }
    }

    else
    {
      if (v16 < v21)
      {
        *v13 = v15;
LABEL_36:
        *(a2 - 1) = v22;
        goto LABEL_57;
      }

      *v13 = v20;
      *v10 = v22;
      v33 = *(a2 - 1);
      v15 = *(v14 + 8 * v22);
      if (*(v14 + 8 * v33) < v15)
      {
        *v10 = v33;
        goto LABEL_36;
      }
    }

LABEL_57:
    --a4;
    v49 = *v10;
    if ((a5 & 1) != 0 || (v50 = *(v14 + 8 * v49), *(v14 + 8 * *(v10 - 1)) < v50))
    {
      v51 = 0;
      v14 = *a3;
      do
      {
        v52 = &v10[v51 + 1];
        if (v52 == a2)
        {
          goto LABEL_196;
        }

        v15 = *v52;
        v53 = *(v14 + 8 * v49);
        ++v51;
      }

      while (*(v14 + 8 * *v52) < v53);
      v52 = &v10[v51];
      v54 = a2;
      if (v51 != 1)
      {
        while (v54 != v10)
        {
          v55 = *--v54;
          if (*(v14 + 8 * v55) < v53)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_196;
      }

      v54 = a2;
      do
      {
        if (v52 >= v54)
        {
          break;
        }

        v56 = *--v54;
      }

      while (*(v14 + 8 * v56) >= v53);
LABEL_69:
      if (v52 < v54)
      {
        v57 = *v54;
        v58 = &v10[v51];
        v59 = v54;
LABEL_71:
        *v58 = v57;
        *v59 = v15;
        v60 = v58 + 1;
        while (v60 != a2)
        {
          v61 = *v60++;
          v15 = v61;
          v62 = *(v14 + 8 * v49);
          if (*(v14 + 8 * v61) >= v62)
          {
            v58 = v60 - 1;
            while (v59 != v10)
            {
              v63 = *--v59;
              v57 = v63;
              result = *(v14 + 8 * v63);
              if (result < v62)
              {
                if (v58 < v59)
                {
                  goto LABEL_71;
                }

                v64 = v60 - 2;
                goto LABEL_80;
              }
            }

            goto LABEL_196;
          }
        }

        goto LABEL_196;
      }

      v64 = v52 - 1;
LABEL_80:
      if (v64 != v10)
      {
        *v10 = *v64;
      }

      *v64 = v49;
      if (v52 < v54)
      {
LABEL_85:
        result = std::__introsort<std::_ClassicAlgPolicy,LessByStringIndex &,long *,false>(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v64 + 1;
        continue;
      }

      v65 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,LessByStringIndex &,long *>(v10, v64, *a3);
      v10 = v64 + 1;
      result = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,LessByStringIndex &,long *>(v64 + 1, a2, *a3);
      if (!result)
      {
        if (v65)
        {
          continue;
        }

        goto LABEL_85;
      }

      a2 = v64;
      if (v65)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (v50 >= *(v14 + 8 * *(a2 - 1)))
    {
      v67 = v10 + 1;
      do
      {
        v10 = v67;
        if (v67 >= a2)
        {
          break;
        }

        ++v67;
        v15 = *(v14 + 8 * *v10);
      }

      while (v50 >= v15);
    }

    else
    {
      v52 = v10 + 1;
      do
      {
        if (v52 == a2)
        {
          goto LABEL_196;
        }

        v66 = *v52++;
        v15 = *(v14 + 8 * v66);
      }

      while (v50 >= v15);
      v10 = v52 - 1;
    }

    v52 = a2;
    if (v10 < a2)
    {
      v52 = a2;
      while (v52 != v9)
      {
        v68 = *--v52;
        v15 = *(v14 + 8 * v68);
        if (v50 >= v15)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_196;
    }

LABEL_99:
    if (v10 < v52)
    {
      v69 = *v10;
      v70 = *v52;
      do
      {
        *v10 = v70;
        v71 = v10 + 1;
        *v52 = v69;
        do
        {
          if (v71 == a2)
          {
            goto LABEL_196;
          }

          v15 = *(v14 + 8 * v49);
          v72 = *v71++;
          v69 = v72;
        }

        while (v15 >= *(v14 + 8 * v72));
        v10 = v71 - 1;
        do
        {
          if (v52 == v9)
          {
            goto LABEL_196;
          }

          v73 = *--v52;
          v70 = v73;
        }

        while (v15 < *(v14 + 8 * v73));
      }

      while (v10 < v52);
    }

    v74 = v10 - 1;
    if (v10 - 1 != v9)
    {
      *v9 = *v74;
    }

    a5 = 0;
    *v74 = v49;
  }

  v75 = *a3;
  v76 = *v10;
  v77 = v10[1];
  v78 = *(*a3 + 8 * v77);
  v79 = *(a2 - 1);
  v80 = *(*a3 + 8 * v79);
  if (v78 >= *(*a3 + 8 * *v10))
  {
    if (v80 < v78)
    {
      v10[1] = v79;
      *(a2 - 1) = v77;
      v128 = *v10;
      v127 = v10[1];
      if (*(v75 + 8 * v127) < *(v75 + 8 * *v10))
      {
        *v10 = v127;
        v10[1] = v128;
      }
    }
  }

  else
  {
    if (v80 < v78)
    {
      *v10 = v79;
      goto LABEL_204;
    }

    *v10 = v77;
    v10[1] = v76;
    v136 = *(a2 - 1);
    if (*(v75 + 8 * v136) < *(v75 + 8 * v76))
    {
      v10[1] = v136;
LABEL_204:
      *(a2 - 1) = v76;
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,LessByStringIndex &,long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *(a6 + 8 * *a2);
  v8 = *result;
  v9 = *a3;
  v10 = *(a6 + 8 * *a3);
  if (v7 >= *(a6 + 8 * *result))
  {
    if (v10 >= v7)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v6;
      v11 = *result;
      if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
      {
        *result = *a2;
        *a2 = v11;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v8;
      v6 = v8;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v8;
    v6 = *a3;
    if (*(a6 + 8 * *a3) < *(a6 + 8 * v8))
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 8 * *a4) < *(a6 + 8 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v12 = *a2;
    if (*(a6 + 8 * *a3) < *(a6 + 8 * *a2))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(a6 + 8 * *a5) < *(a6 + 8 * *a4))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(a6 + 8 * *a4) < *(a6 + 8 * *a3))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(a6 + 8 * *a3) < *(a6 + 8 * *a2))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(a6 + 8 * *a2) < *(a6 + 8 * *result))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,LessByStringIndex &,long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(a3 + 8 * v8);
      v10 = *(a2 - 1);
      v11 = *(a3 + 8 * v10);
      if (v9 >= *(a3 + 8 * *a1))
      {
        if (v11 < v9)
        {
          a1[1] = v10;
          *(a2 - 1) = v8;
          v33 = *a1;
          v32 = a1[1];
          if (*(a3 + 8 * v32) < *(a3 + 8 * *a1))
          {
            *a1 = v32;
            a1[1] = v33;
          }
        }

        return 1;
      }

      if (v11 >= v9)
      {
        *a1 = v8;
        a1[1] = v7;
        v48 = *(a2 - 1);
        if (*(a3 + 8 * v48) >= *(a3 + 8 * v7))
        {
          return 1;
        }

        a1[1] = v48;
      }

      else
      {
        *a1 = v10;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,LessByStringIndex &,long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *(a3 + 8 * v23);
    v27 = *a1;
    v28 = *(a3 + 8 * v25);
    if (v26 >= *(a3 + 8 * *a1))
    {
      if (v28 >= v26)
      {
LABEL_41:
        v23 = v25;
        goto LABEL_42;
      }

      *v22 = v25;
      *v24 = v23;
      v42 = *(a3 + 8 * v25);
      v43 = *(a3 + 8 * v27);
      v29 = a1;
      v30 = a1 + 1;
      v31 = v23;
      if (v42 >= v43)
      {
LABEL_42:
        v44 = *(a2 - 1);
        if (*(a3 + 8 * v44) < *(a3 + 8 * v23))
        {
          *v24 = v44;
          *(a2 - 1) = v23;
          v45 = *v24;
          v46 = *v22;
          if (*(a3 + 8 * v45) < *(a3 + 8 * v46))
          {
            a1[1] = v45;
            a1[2] = v46;
            v47 = *a1;
            if (*(a3 + 8 * v45) < *(a3 + 8 * *a1))
            {
              *a1 = v45;
              a1[1] = v47;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v29 = a1;
      v30 = a1 + 2;
      v31 = *a1;
      if (v28 >= v26)
      {
        *a1 = v23;
        a1[1] = v27;
        v29 = a1 + 1;
        v30 = a1 + 2;
        v31 = v27;
        if (*(a3 + 8 * v25) >= *(a3 + 8 * v27))
        {
          goto LABEL_41;
        }
      }
    }

    *v29 = v25;
    *v30 = v27;
    v23 = v31;
    goto LABEL_42;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (*(a3 + 8 * v5) < *(a3 + 8 * *a1))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *(a3 + 8 * v14);
  v16 = *a1;
  v17 = *(a3 + 8 * v12);
  if (v15 >= *(a3 + 8 * *a1))
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v12;
    *v13 = v14;
    v20 = *(a3 + 8 * v12);
    v21 = *(a3 + 8 * v16);
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v20 >= v21)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v14;
    a1[1] = v16;
    v20 = *(a3 + 8 * v12);
    v21 = *(a3 + 8 * v16);
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v12;
  *v19 = v16;
LABEL_27:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v13;
    if (*(a3 + 8 * *v34) < *(a3 + 8 * v38))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (*(a3 + 8 * v37) >= *(a3 + 8 * v38))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v13 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

uint64_t TRun::FindGlyphIndex<true>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 208);
  v4 = *(*(a1 + 216) + 48);
  v5 = *(a1 + 200);
  v6 = v4 + 8 * v5;
  v7 = *(a1 + 224);
  if (v7)
  {
    v8 = -a3;
  }

  else
  {
    v8 = a3;
  }

  v9 = v3 - 1;
  if (v8 < 0)
  {
    v3 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 256) >= 2)
  {
    if (v9 == v3)
    {
      LOBYTE(v11) = 1;
      v12 = v9;
    }

    else
    {
      v11 = 1;
      v12 = v9;
      while (1)
      {
        v16 = *(v6 + 8 * v9);
        if (v16 == a2)
        {
          break;
        }

        v17 = (v16 < a2) & ((v16 > *(v6 + 8 * v12)) | v11);
        v11 &= v17 ^ 1;
        if (v17)
        {
          v12 = v9;
        }

        v9 += v8;
        if (v3 == v9)
        {
          v9 = v3;
          break;
        }
      }
    }

    if (v9 == v3)
    {
      result = v12;
    }

    else
    {
      result = v9;
    }

    if (v9 == v3)
    {
      if (v7)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      v20 = v3 - v8;
      if (v8 == v19)
      {
        v20 = v12;
      }

      if (v11)
      {
        return v20;
      }
    }
  }

  else
  {
    if (v9 == v3)
    {
      v10 = v9;
    }

    else
    {
      v13 = *(v6 + 8 * v9);
      if (v13 >= a2)
      {
        v15 = v9;
LABEL_36:
        if (v13 <= a2)
        {
          v10 = v15;
        }

        else
        {
          v10 = v9;
        }
      }

      else
      {
        v14 = v4 + 8 * v5 + 8 * v8;
        while (v3 - v8 != v9)
        {
          v15 = v9 + v8;
          v13 = *(v14 + 8 * v9);
          v9 = v15;
          if (v13 >= a2)
          {
            v9 = v15 - v8;
            goto LABEL_36;
          }
        }

        v10 = v3;
      }
    }

    if (v10 == v3)
    {
      return v9;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

unint64_t TRunGlue::AdvanceInitialAdvance(TRunGlue *this, CGSize a2)
{
  if (!*(this + 18))
  {
    v10 = *(this + 23);
    if (v10)
    {
      height = a2.height;
      **(this + 22) = vaddq_f64(a2, **(this + 22));
      *v10 = vaddq_f64(a2, *v10);
    }

    else
    {
      v19 = *(this + 54);
      if (fabs(v19) == INFINITY)
      {
        return 0;
      }

      v20 = a2.height + *(this + 55);
      *(this + 54) = a2.width + v19;
      *(this + 55) = v20;
    }

    return 1;
  }

  v22 = *&a2.height;
  result = TRunGlue::PhysicalRunIndexFromLogical(this, *(this + 1));
  v4 = *(*this + 16);
  if (result < (*(*this + 24) - v4) >> 3)
  {
    v5 = *(*(v4 + 8 * result) + 48);
    v6 = *(v5 + 216);
    v7 = *(v6 + 32);
    if (v7 || (v12 = *(v6 + 24)) == 0)
    {
      v8 = (v7 + 16 * *(v5 + 200));
      v9 = v8[1];
    }

    else
    {
      v8 = (v12 + 8 * *(v5 + 200));
      v9 = 0.0;
    }

    v23.width = a2.width + *v8;
    v23.height = *&v22 + v9;
    TStorageRange::SetAdvance((v5 + 192), 0, v23);
    v13 = MEMORY[0x1E695EFF8];
    if ((*(v5 + 225) & 0x10) != 0)
    {
      [*(v5 + 216) originAtIndex:*(v5 + 200)];
    }

    else
    {
      v14 = *MEMORY[0x1E695EFF8];
      v15 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v16 = a2.width + v14;
    v17 = *&v22 + v15;
    [*(v5 + 216) setOrigin:*(v5 + 200) atIndex:{a2.width + v14, *&v22 + v15, a2, v22}];
    if (v16 != *v13 || v17 != v13[1])
    {
      *(v5 + 225) |= 0x10u;
    }

    return 1;
  }

  __break(1u);
  return result;
}

unint64_t TKerningEngineImplementation::TransferDeletedAdvances(TRunGlue **this)
{
  v2 = MEMORY[0x1E695F060];
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  v5 = TRunGlue::length(*this);
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v12 = *this;
      v13 = v6;
      if (TRunGlue::TGlyph::IsDeleted(&v12))
      {
        width = width + TRunGlue::GetAdvance(v12, v13);
        height = height + v7;
        TRunGlue::SetAdvance(v12, v13, *v2);
      }

      else if (width != v2->width || height != v2->height)
      {
        v14.width = width + TRunGlue::GetAdvance(v12, v13);
        v14.height = height + v9;
        TRunGlue::SetAdvance(v12, v13, v14);
        width = v2->width;
        height = v2->height;
      }

      --v6;
    }

    while (v6 != -1);
  }

  if (width == v2->width && height == v2->height)
  {
    return 1;
  }

  v15.width = width;
  v15.height = height;
  result = TRunGlue::AdvanceInitialAdvance(*this, v15);
  if (result)
  {
    return 1;
  }

  return result;
}

void std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = (v1 + 28);
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
      if (v1[2] == v1[4])
      {
        v1[4] = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

unint64_t TAATKerxEngine::KernRuns(TRunGlue **a1, _BYTE *a2, int *a3)
{
  v4 = a1;
  v222 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  *a3 = 2;
  if (!TRunGlue::length(*a1))
  {
    return 1;
  }

  v6 = v4[11];
  v7 = *(v6 + 4);
  if (!v7)
  {
    return 1;
  }

  v8 = bswap32(v7);
  v9 = v6 + 8;
  v10 = *v4;
  v11 = *(*v4 + 520);
  v12 = *(*v4 + 528);
  v4[1] = v11;
  v4[2] = v12;
  if (*(v10 + 516) == 1)
  {
    v4[1] = v12;
    v4[2] = v11;
  }

  v184 = TRunGlue::length(v10);
  v13 = 0;
  if (v8 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8;
  }

  v187 = v14;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v182 = v4;
  v188 = a2;
  v183 = v5;
  do
  {
    v16 = v4[11];
    v17 = v4[12];
    v18 = (v9 + 8);
    v19 = v16 > v9 + 4 || v18 > v17;
    if (v19 || (v20 = v9 + bswap32(*v9), v20 > v17))
    {
LABEL_263:
      v180 = TFont::DebugDescription(*(*v4 + 496));
      CFLog();

      v179 = *(*(*v4 + 496) + 408);
      (*(*v179 + 496))(v179);
      result = 0;
      v4[11] = 0;
      return result;
    }

    v21 = bswap32(*(v9 + 4));
    v22 = *(v4 + 104);
    if (v22 == v21 >> 31)
    {
      if ((v21 & 0x40000000) != 0)
      {
        if (v22)
        {
          goto LABEL_251;
        }
      }

      else if (!v5 && v21 != 4)
      {
        goto LABEL_251;
      }

      v23 = v4[14];
      v185 = v20;
      v186 = v13;
      if (v13 < (v4[15] - v23) >> 3)
      {
        v24 = *(v23 + 8 * v13);
        if (v24)
        {
          v25 = TRunGlue::CoveredByBitmap(*v4, v24, *(*v4 + 8));
          v20 = v185;
          v13 = v186;
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
          if (!v25)
          {
            goto LABEL_251;
          }

          v16 = v4[11];
        }
      }

      v26 = v9 + 12;
      if (bswap32(*v16) >= 0x40000)
      {
        v27 = 0;
        if (v16 > v18 || v26 > v4[12])
        {
          goto LABEL_35;
        }

        if (*v18)
        {
          v27 = bswap32(*v18);
          if (!v4[48])
          {
            InitializedGraphicsFont = *(*(*v4 + 496) + 408);
            if (InitializedGraphicsFont)
            {
              InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(InitializedGraphicsFont);
              if (InitializedGraphicsFont)
              {
                InitializedGraphicsFont = CGFontGetParserFont();
              }

              v20 = v185;
              v13 = v186;
              *&v15 = 0xAAAAAAAAAAAAAAAALL;
              *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            }

            v4[48] = InitializedGraphicsFont;
          }

          goto LABEL_35;
        }
      }

      v27 = 0;
LABEL_35:
      if (v184 == 1)
      {
        if (v21 == 1)
        {
          goto LABEL_97;
        }

        if (v21 != 4)
        {
          goto LABEL_251;
        }

        goto LABEL_88;
      }

      if (v21 > 1u)
      {
        if (v21 != 6)
        {
          if (v21 == 4)
          {
LABEL_88:
            v56 = v4[12];
            if (v9 + 32 > v56)
            {
              goto LABEL_263;
            }

            *&v216[80] = 0xAAAAAAAAAAAAFFFFLL;
            *&v216[88] = v15;
            *&v216[48] = 0xAAAAAAAAAAAAAAAALL;
            *&v216[56] = v15;
            *&v216[8] = v15;
            *&v216[24] = 0xAAAAAAAAAAAAAAAALL;
            v213 = v4;
            v214 = v9;
            v215 = v9 + 12;
            *v216 = v56;
            *&v216[8] = v21;
            *&v216[32] = TAATLookupTable::BadTable;
            *&v216[40] = 0;
            *&v216[72] = 0;
            *&v216[88] = bswap32(*(v9 + 12));
            *&v216[16] = v26 + bswap32(*(v9 + 20));
            *&v216[24] = v26 + bswap32(*(v9 + 24));
            TAATLookupTable::SetTable(&v216[32], (v26 + bswap32(*(v9 + 16))), v56);
            *&v216[90] = 0;
            *&v216[96] = -1;
            v57 = bswap32(*(v215 + 16));
            if ((v57 & 0xC0000000) == 0x40000000)
            {
              v106 = v213;
              if (*(v213 + 50))
              {
                goto LABEL_169;
              }

              v107 = operator new(0x58uLL, MEMORY[0x1E69E5398]);
              v108 = v107;
              if (v107)
              {
                TAATAnkrTable::TAATAnkrTable(v107, (*v106)[62]);
              }

              std::unique_ptr<TAATAnkrTable>::reset[abi:fn200100](v106 + 50, v108);
              v61 = v106[50];
            }

            else
            {
              if ((v57 & 0xC0000000) != 0 || (v58 = v213, *(v213 + 49)))
              {
LABEL_169:
                v109 = 1;
                if ((*&v216[8] & 0x10000000) != 0)
                {
                  v109 = -1;
                }

                v181 = v109;
                v110 = *v213;
                v190 = *&v216[8];
                if ((*&v216[8] & 0x10000000) != 0)
                {
                  v111 = TRunGlue::length(v110) - 1;
                }

                else
                {
                  v111 = 0;
                }

                v112 = *v213;
                v191 = *&v57 & 0xFFFFFFLL;
                *&v196 = v110;
                *(&v196 + 1) = v111;
                v113 = TRunGlue::length(v112);
                v114 = 0;
                LOWORD(v115) = 0;
                v116 = (v57 >> 30) ^ 2;
                *&v15 = 0xAAAAAAAAAAAAAAAALL;
                *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v189 = v116;
                while (2)
                {
                  v192 = v113;
LABEL_176:
                  v117 = v113 - 1;
                  if (v113 < 1)
                  {
                    if ((v113 != 0) | v114 & 1)
                    {
                      goto LABEL_234;
                    }
                  }

                  else if ((v114 & 1) == 0)
                  {
                    v118 = TRunGlue::TGlyph::glyphID(&v196);
                    if (v118 == 0xFFFF)
                    {
                      v114 = 0;
                      v122 = 2;
                    }

                    else
                    {
                      v119 = v118;
                      *&v197 = 0xAAAAAAAAAAAAAAAALL;
                      v120 = *&v216[32];
                      v121 = &v216[(*&v216[40] >> 1) + 32];
                      if (v216[40])
                      {
                        v120 = *(*v121 + *&v216[32]);
                      }

                      v123 = v120(v121, v119, &v197);
                      v114 = 0;
                      if (v123)
                      {
                        v122 = bswap32(*v123) >> 16;
                      }

                      else
                      {
                        v122 = 1;
                      }
                    }

                    *&v15 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
LABEL_189:
                    v124 = (*&v216[16] + 2 * *&v216[88] * v115 + 2 * v122);
                    if (v215 > v124 || (v124 + 1) > *v216)
                    {
                      goto LABEL_234;
                    }

                    v126 = (*&v216[24] + 6 * (bswap32(*v124) >> 16));
                    if (v215 > v126 || (v126 + 3) > *v216)
                    {
                      goto LABEL_234;
                    }

                    v128 = *v126;
                    v129 = bswap32(v126[1]) >> 16;
                    if (v129 < 0)
                    {
                      *&v216[96] = *(&v196 + 1);
                    }

                    v130 = v126[2];
                    if (v130 != 0xFFFF && *&v216[96] != -1)
                    {
                      v131 = __rev16(v130);
                      v194 = v113 - 1;
                      if (v116 <= 1)
                      {
                        if (v116)
                        {
                          goto LABEL_234;
                        }

                        v145 = (v215 + v191 + 8 * v131);
                        if (v215 > v145 || (v145 + 4) > *v216)
                        {
                          goto LABEL_234;
                        }

                        v147 = (bswap32(*v145) >> 16) - (bswap32(v145[2]) >> 16);
                        v148 = (bswap32(v145[1]) >> 16) - (bswap32(v145[3]) >> 16);
                      }

                      else
                      {
                        if (v116 == 2)
                        {
                          v132 = (v215 + v191 + 4 * v131);
                          if (v215 > v132 || (v132 + 2) > *v216)
                          {
                            goto LABEL_234;
                          }

                          v134 = v213;
                          v135 = bswap32(*v132) >> 16;
                          *&v197 = *v213;
                          *(&v197 + 1) = *&v216[96];
                          v136 = TRunGlue::TGlyph::glyphID(&v197);
                          ControlPointCoordinates = TAATControlPointAccess::GetControlPointCoordinates(*(v134 + 49), v136, v135);
                          v139 = v138;
                          v140 = bswap32(v132[1]) >> 16;
                          v141 = v213;
                          v197 = v196;
                          v142 = TRunGlue::TGlyph::glyphID(&v197);
                          v143 = TAATControlPointAccess::GetControlPointCoordinates(*(v141 + 49), v142, v140);
                        }

                        else
                        {
                          v149 = (v215 + v191 + 4 * v131);
                          if (v215 > v149 || (v149 + 2) > *v216)
                          {
                            goto LABEL_234;
                          }

                          v151 = v213;
                          v152 = bswap32(*v149) >> 16;
                          *&v197 = *v213;
                          *(&v197 + 1) = *&v216[96];
                          v153 = TRunGlue::TGlyph::glyphID(&v197);
                          ControlPointCoordinates = TAATAnkrTable::GetControlPointCoordinates(*(v151 + 50), v153, v152);
                          v139 = v154;
                          v155 = bswap32(v149[1]) >> 16;
                          v156 = v213;
                          v197 = v196;
                          v157 = TRunGlue::TGlyph::glyphID(&v197);
                          v143 = TAATAnkrTable::GetControlPointCoordinates(*(v156 + 50), v157, v155);
                        }

                        v147 = (ControlPointCoordinates - v143);
                        v148 = (v139 - v144);
                      }

                      v158 = v213;
                      v159 = *&v216[96];
                      v160 = *v213;
                      v161 = v196;
                      v162 = TRunGlue::GetOrigin(*v213, *&v216[96]) + v158[1] * v147;
                      v164 = v163 + v158[2] * v148;
                      TRunGlue::ClearGlyphCombiningMark(v161, *(&v161 + 1));
                      if ((v190 & 0x10000000) != 0)
                      {
                        a2 = v188;
                        if (*(&v161 + 1) != v159)
                        {
                          v168 = *(&v161 + 1);
                          do
                          {
                            v162 = v162 + TRunGlue::GetAdvance(v161, v168);
                            v164 = v164 + v169;
                            TRunGlue::ClearGlyphCombiningMark(v161, v168++);
                          }

                          while (v159 != v168);
                        }
                      }

                      else
                      {
                        v165 = *MEMORY[0x1E695F060];
                        v166 = *(MEMORY[0x1E695F060] + 8);
                        a2 = v188;
                        if (v159 < *(&v161 + 1))
                        {
                          do
                          {
                            v165 = v165 + TRunGlue::GetAdvance(v160, v159);
                            v166 = v166 + v167;
                            TRunGlue::ClearGlyphCombiningMark(v160, v159++);
                          }

                          while (*(&v161 + 1) != v159);
                        }

                        v162 = v162 - v165;
                        v164 = v164 - v166;
                      }

                      v224.x = v162;
                      v224.y = v164;
                      TRunGlue::SetOrigin(v161, *(&v161 + 1), v224);
                      *a2 = 1;
                      *&v15 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v116 = v189;
                      v113 = v192;
                      v117 = v194;
                    }

                    v115 = bswap32(v128) >> 16;
                    if ((v129 & 0x4000) == 0)
                    {
                      v41 = v113 >= 2;
                      v113 = v117;
                      if (v41)
                      {
                        *(&v196 + 1) += v181;
                        v113 = v117;
                      }

                      continue;
                    }

                    goto LABEL_176;
                  }

                  break;
                }

                v114 = 1;
                v122 = *&v216[90];
                goto LABEL_189;
              }

              v59 = operator new(0x448uLL, MEMORY[0x1E69E5398]);
              v60 = v59;
              if (v59)
              {
                TAATControlPointAccess::TAATControlPointAccess(v59, *((*v58)[62] + 51));
              }

              std::unique_ptr<TAATControlPointAccess>::reset[abi:fn200100](v58 + 49, v60);
              v61 = v58[49];
            }

            v20 = v185;
            v13 = v186;
            if (v61)
            {
              goto LABEL_169;
            }

            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            goto LABEL_251;
          }

          if (v21 != 2)
          {
            goto LABEL_251;
          }

          v29 = v4[12];
          if (v9 + 28 > v29)
          {
            goto LABEL_263;
          }

          *&v216[104] = v15;
          *&v216[120] = v15;
          *&v216[88] = v15;
          *&v216[40] = v15;
          *&v216[64] = *(&v15 + 1);
          *&v216[12] = DWORD1(v15);
          *&v216[32] = *(&v15 + 1);
          v213 = v4;
          v214 = v9;
          v215 = v9 + 12;
          *v216 = v29;
          *&v216[8] = v21;
          *&v216[16] = TAATLookupTable::BadTable;
          *&v216[24] = 0;
          *&v216[56] = 0;
          *&v216[64] = -1;
          *&v216[72] = TAATLookupTable::BadTable;
          *&v216[80] = 0;
          *&v216[112] = 0;
          *&v216[120] = -1;
          TAATLookupTable::SetTable(&v216[16], (v9 + bswap32(*(v9 + 16))), v29);
          TAATLookupTable::SetTable(&v216[72], (v214 + bswap32(*(v9 + 20))), v29);
          *&v216[128] = v214 + bswap32(*(v9 + 24));
          v30 = *v213;
          v197 = *v213;
          v31 = TRunGlue::length(v30);
          v32 = TRunGlue::TGlyph::glyphID(&v197);
          ++*(&v197 + 1);
          if (v31 >= 2)
          {
            v33 = v32;
            while (1)
            {
              v34 = TRunGlue::TGlyph::glyphID(&v197);
              if (v34 == 0xFFFF || (v35 = v34, (TRunGlue::IsDeleted(v197, *(&v197 + 1)) & 1) != 0))
              {
                v35 = v33;
              }

              else
              {
                *&v196 = 0xAAAAAAAAAAAAAAAALL;
                v36 = *&v216[16];
                v37 = &v216[(*&v216[24] >> 1) + 16];
                if (v216[24])
                {
                  v36 = *(*v37 + *&v216[16]);
                }

                v38 = v36(v37, v33, &v196);
                if (!v38)
                {
                  goto LABEL_63;
                }

                v39 = v196;
                v40 = &v38[v196];
                v41 = v215 <= v38 && v40 >= v38;
                if (!v41 || v40 > *v216)
                {
                  break;
                }

                if (v196)
                {
                  v43 = 0;
                  do
                  {
                    v44 = *v38++;
                    v43 = v44 | (v43 << 8);
                    --v39;
                  }

                  while (v39);
                }

                else
                {
LABEL_63:
                  v43 = 0;
                }

                v195 = 0xAAAAAAAAAAAAAAAALL;
                v45 = *&v216[72];
                v46 = &v216[(*&v216[80] >> 1) + 72];
                if (v216[80])
                {
                  v45 = *(*v46 + *&v216[72]);
                }

                v47 = v45(v46, v35, &v195);
                if (!v47)
                {
                  goto LABEL_78;
                }

                v48 = v195;
                v49 = &v47[v195];
                if (v215 > v47 || v49 < v47 || v49 > *v216)
                {
                  break;
                }

                if (v195)
                {
                  v52 = 0;
                  do
                  {
                    v53 = *v47++;
                    v52 = v53 | (v52 << 8);
                    --v48;
                  }

                  while (v48);
                }

                else
                {
LABEL_78:
                  v52 = 0;
                }

                v54 = (*&v216[128] + (v52 + v43));
                if (v215 > v54 || (v54 + 1) > *v216)
                {
                  break;
                }

                if (*v54)
                {
                  TAATKerxEngine::HandleKern<TRunGlue::TGlyph>(v213, v197, *(&v197 + 1), bswap32(*v54) >> 16, *&v216[8]);
                  *a2 = 1;
                }
              }

              v13 = v186;
              ++*(&v197 + 1);
              v33 = v35;
              v19 = v31-- <= 2;
              if (v19)
              {
                goto LABEL_249;
              }
            }
          }

LABEL_248:
          v13 = v186;
LABEL_249:
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
LABEL_250:
          v20 = v185;
          goto LABEL_251;
        }

        v98 = v4[12];
        if (v9 + 36 > v98)
        {
          goto LABEL_263;
        }

        v212 = v15;
        v211 = *(&v15 + 1);
        v209 = v15;
        v208[2] = *(&v15 + 1);
        v207 = v15;
        v205 = v15;
        v204 = v15;
        *&v197 = v4;
        *(&v197 + 1) = v9;
        v198 = v9 + 12;
        v199 = v98;
        v200 = v21;
        v203[0] = TAATLookupTable::BadTable;
        v203[1] = 0;
        v206 = 0;
        LOWORD(v207) = -1;
        v208[0] = TAATLookupTable::BadTable;
        v208[1] = 0;
        v210 = 0;
        LOWORD(v211) = -1;
        v201 = bswap32(*(v9 + 16)) >> 16;
        v202 = bswap32(*(v9 + 18)) >> 16;
        TAATLookupTable::SetTable(v203, (v9 + bswap32(*(v9 + 20))), v98);
        TAATLookupTable::SetTable(v208, (*(&v197 + 1) + bswap32(*(v9 + 24))), v98);
        *&v212 = *(&v197 + 1) + bswap32(*(v9 + 28));
        *(&v212 + 1) = *(&v197 + 1) + bswap32(*(v9 + 32));
        if (v27 <= 3)
        {
          v214 = -1;
          v215 = -1;
          v213 = -1;
          TAATKerxEngine::ProcessKerxIndexArrayWithTupleScalars(v4, v9 + 12, &v197, v27, &v213, a2);
          goto LABEL_248;
        }

        *&v170 = 0xAAAAAAAAAAAAAAAALL;
        *(&v170 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v216[208] = v170;
        *&v216[224] = v170;
        *&v216[176] = v170;
        *&v216[192] = v170;
        *&v216[144] = v170;
        *&v216[160] = v170;
        *&v216[112] = v170;
        *&v216[128] = v170;
        *&v216[80] = v170;
        *&v216[96] = v170;
        *&v216[48] = v170;
        *&v216[64] = v170;
        *&v216[16] = v170;
        *&v216[32] = v170;
        *v216 = v170;
        v213 = 0;
        v214 = 0;
        v215 = 0;
        *&v216[240] = v216;
        std::vector<double,TInlineBufferAllocator<double,30ul>>::resize(&v213, v27);
        TAATKerxEngine::ProcessKerxIndexArrayWithTupleScalars(v4, v9 + 12, &v197, v27, v213, a2);
        *&v196 = &v213;
        v171 = &v196;
LABEL_247:
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v171);
        goto LABEL_248;
      }

      if (!v21)
      {
        v99 = v4[12];
        v100 = v9 + 28;
        if (v9 + 28 > v99)
        {
          goto LABEL_263;
        }

        v219 = v15;
        v220 = v15;
        v217 = v15;
        v218 = v15;
        *&v216[216] = v15;
        *&v216[232] = v15;
        *&v216[184] = v15;
        *&v216[200] = v15;
        *&v216[152] = v15;
        *&v216[168] = v15;
        *&v216[120] = v15;
        *&v216[136] = v15;
        *&v216[88] = v15;
        *&v216[104] = v15;
        *&v216[72] = v15;
        *&v216[24] = v15;
        *&v216[8] = v15;
        v213 = v4;
        v214 = v9;
        v215 = v9 + 12;
        *v216 = v99;
        *&v216[8] = v21;
        memset(&v216[40], 0, 32);
        v221 = &v216[72];
        LODWORD(v101) = bswap32(*(v9 + 12));
        v102 = v100 + 6 * v101;
        if (v102 < v100 || v102 > v99)
        {
          if (v9 + 34 > v99)
          {
            LOWORD(v101) = 0;
          }

          else
          {
            v101 = (v99 - v100) / 6;
          }
        }

        *&v216[32] = v101;
        v103 = *v4;
        v104 = *(*v4 + 16);
        v105 = TAATKerxEngine::KerxOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInVector>;
        if (v104)
        {
          if (v104 == 1)
          {
            v105 = TAATKerxEngine::KerxOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInSingleRun>;
          }

          else
          {
            v105 = TAATKerxEngine::KerxOrderedList::ProcessGlyphsT<TRunGlue::TGlyph>;
          }
        }

        *&v216[16] = v105;
        *&v216[24] = 0;
        if (v27)
        {
          std::vector<double,TInlineBufferAllocator<double,30ul>>::resize(&v216[48], v27);
          TAATKerxEngine::GetTupleScalars(v4, v27, *&v216[48]);
          v103 = *v213;
        }

        v172 = *(*(v103 + 62) + 408);
        if (TBaseFont::GetGlyphCount(v172))
        {
          v173 = (2 * (v186 & 0x7FFFFFFF)) | 1;
          os_unfair_lock_lock_with_options();
          v174 = *(v172 + 488);
          if (v173 >= (*(v172 + 496) - v174) >> 3 || (v175 = *(v174 + 8 * v173)) == 0)
          {
            operator new[]();
          }

          *&v216[34] = *v175;
          *&v216[40] = v175 + 1;
          os_unfair_lock_unlock((v172 + 444));
        }

        v176 = *&v216[16];
        v177 = (&v213 + (*&v216[24] >> 1));
        if (v216[24])
        {
          v176 = *(*v177 + *&v216[16]);
        }

        v5 = v183;
        v176(v177, a2);
        *&v197 = &v216[48];
        v171 = &v197;
        goto LABEL_247;
      }

      if (v21 != 1)
      {
        goto LABEL_251;
      }

LABEL_97:
      v62 = v4[12];
      if (v9 + 32 > v62)
      {
        goto LABEL_263;
      }

      *&v216[136] = v15;
      *&v216[152] = v15;
      *&v216[104] = v15;
      *&v216[120] = v15;
      *&v216[80] = *(&v15 + 1);
      *&v216[88] = v15;
      *&v216[48] = *(&v15 + 1);
      *&v216[56] = v15;
      *&v216[8] = v15;
      *&v216[24] = v15;
      v213 = v4;
      v214 = v9;
      v215 = v9 + 12;
      *v216 = v62;
      *&v216[8] = v21;
      *&v216[32] = TAATLookupTable::BadTable;
      *&v216[40] = 0;
      *&v216[72] = 0;
      *&v216[80] = -1;
      *&v216[88] = bswap32(*(v9 + 12));
      *&v216[16] = v26 + bswap32(*(v9 + 20));
      *&v216[24] = v26 + bswap32(*(v9 + 24));
      TAATLookupTable::SetTable(&v216[32], (v26 + bswap32(*(v9 + 16))), v62);
      *&v216[90] = 0;
      memset(&v216[96], 0, 64);
      *&v216[160] = -1;
      v63 = v215;
      v64 = v213;
      v65 = *(v215 + 16);
      v66 = 1;
      if ((*&v216[8] & 0x10000000) != 0)
      {
        v66 = -1;
      }

      v193 = v66;
      v67 = *v213;
      if ((*&v216[8] & 0x10000000) != 0)
      {
        v68 = TRunGlue::length(*v213) - 1;
        v64 = v213;
      }

      else
      {
        v68 = 0;
      }

      v69 = v63 + bswap32(v65);
      *&v197 = v67;
      *(&v197 + 1) = v68;
      v70 = TRunGlue::length(*v64);
      v71 = 0;
      LOWORD(v72) = 0;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      while (1)
      {
        v4 = (v70 - 1);
        if (v70 < 1)
        {
          break;
        }

        if (v71)
        {
          goto LABEL_110;
        }

        v73 = TRunGlue::TGlyph::glyphID(&v197);
        if (v73 == 0xFFFF)
        {
          v71 = 0;
          v77 = 2;
        }

        else
        {
          v74 = v73;
          *&v196 = 0xAAAAAAAAAAAAAAAALL;
          v75 = *&v216[32];
          v76 = &v216[(*&v216[40] >> 1) + 32];
          if (v216[40])
          {
            v75 = *(*v76 + *&v216[32]);
          }

          v78 = v75(v76, v74, &v196);
          v71 = 0;
          if (v78)
          {
            v77 = bswap32(*v78) >> 16;
          }

          else
          {
            v77 = 1;
          }
        }

        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
LABEL_117:
        v79 = (*&v216[16] + 2 * *&v216[88] * v72 + 2 * v77);
        v80 = v215 > v79 || (v79 + 1) > *v216;
        if (v80 || ((v81 = (*&v216[24] + 6 * (bswap32(*v79) >> 16)), v215 <= v81) ? (v82 = (v81 + 3) > *v216) : (v82 = 1), v82))
        {
LABEL_234:
          v4 = v182;
          v5 = v183;
          v13 = v186;
          goto LABEL_250;
        }

        v83 = *v81;
        v84 = bswap32(v81[1]);
        if ((v84 & 0x80000000) != 0)
        {
          if (*&v216[160] <= 6)
          {
            v85 = *&v216[160] + 1;
          }

          else
          {
            v85 = 0;
          }

          *&v216[160] = v85;
          if (v85 >= 8)
          {
LABEL_262:
            __break(1u);
            goto LABEL_263;
          }

          *&v216[8 * v85 + 96] = *(&v197 + 1);
        }

        v86 = HIWORD(v84);
        if ((v84 & 0x20000000) != 0)
        {
          v195 = *(&v197 + 1);
          *&v196 = &v195;
          v87 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((v213 + 6), &v195);
          *&v15 = 0xAAAAAAAAAAAAAAAALL;
          *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *(v87 + 42) = 1;
          *(v87 + 20) = 0;
        }

        v88 = v81[2];
        if (v88 != 0xFFFF)
        {
          v89 = *&v216[160];
          if ((*&v216[160] & 0x8000000000000000) == 0)
          {
            v90 = v69 + 2 * __rev16(v88);
            v91 = v215;
            v92 = *v216;
            v93 = v90 + 2;
            if (v215 > v90 || v93 > *v216)
            {
              goto LABEL_234;
            }

            while (1)
            {
              v95 = *(v93 - 2);
              if (v95 == 0xFFFF)
              {
                break;
              }

              if (v89 >= 8)
              {
                goto LABEL_262;
              }

              if (v89)
              {
                v96 = v89 - 1;
              }

              else
              {
                v96 = 7;
              }

              if (*(v93 - 2))
              {
                v97 = *&v216[8 * v89 + 96];
                if ((v97 & 0x8000000000000000) == 0)
                {
                  TAATKerxEngine::HandleKern<TRunGlue::TGlyph>(v213, *v213, v97, bswap32(v95) >> 16, *&v216[8]);
                  *&v15 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *a2 = 1;
                  v91 = v215;
                  v92 = *v216;
                }
              }

              if (v91 <= v93)
              {
                v93 += 2;
                v89 = v96;
                if (v93 <= v92)
                {
                  continue;
                }
              }

              goto LABEL_234;
            }
          }
        }

        v72 = bswap32(v83) >> 16;
        if ((v86 & 0x4000) == 0)
        {
          --v70;
          if ((v71 & 1) == 0)
          {
            *(&v197 + 1) += v193;
            v70 = v4;
          }
        }
      }

      if (((v70 == 0) & (v71 ^ 1)) == 0)
      {
        goto LABEL_234;
      }

LABEL_110:
      v71 = 1;
      v77 = *&v216[90];
      goto LABEL_117;
    }

LABEL_251:
    ++v13;
    v9 = v20;
  }

  while (v13 != v187);
  result = TKerningEngineImplementation::MergeDeltas(v4, v4 + 3, v4 + 6, a2, v4 + 72);
  if (!result)
  {
    return result;
  }

  if (*(v4 + 72) != 1)
  {
    return 1;
  }

  return TKerningEngineImplementation::TransferDeletedAdvances(v4);
}

void TAATKerxEngine::GetTupleScalars(TAATKerxEngine *this, uint64_t a2, double *a3)
{
  *a3 = 1.0;
  v5 = *(*this + 496);
  os_unfair_lock_lock_with_options();
  v6 = a2 - 1;
  v7 = *(v5 + 432);
  if (v6 <= (*(v5 + 440) - v7) >> 3)
  {
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    std::vector<double>::resize((v5 + 432), v6);
    FPFontGetVariationScalars();
    v7 = *(v5 + 432);
  }

  memmove(a3 + 1, v7, 8 * v6);
LABEL_5:

  os_unfair_lock_unlock((v5 + 424));
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void TAATKerxEngine::ProcessKerxIndexArrayWithTupleScalars(TAATKerxEngine *a1, uint64_t a2, void **a3, unsigned int a4, double *a5, _BYTE *a6)
{
  if (a4)
  {
    v10 = a4;
    TAATKerxEngine::GetTupleScalars(a1, a4, a5);
  }

  else
  {
    v10 = 0;
  }

  if (*(a3 + 19))
  {
    v11 = *(a3 + 18) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (*(a2 + 3))
  {
    if ((v12 & 1) == 0)
    {
      v53 = *a3;
      v101 = **a3;
      v102 = 0;
      v54 = TRunGlue::length(*v53);
      v55 = TRunGlue::TGlyph::glyphID(&v101);
      ++v102;
      if (v54 >= 2)
      {
        v56 = v55;
        if (v10 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v10;
        }

        v97 = v57;
        do
        {
          v58 = TRunGlue::TGlyph::glyphID(&v101);
          if (v58 == 0xFFFF || (v59 = v58, (TRunGlue::IsDeleted(v101, v102) & 1) != 0))
          {
            v59 = v56;
          }

          else
          {
            v100 = 0xAAAAAAAAAAAAAAAALL;
            v60 = a3[5];
            v61 = a3[6];
            v62 = (a3 + (v61 >> 1) + 40);
            if (v61)
            {
              v60 = *(*v62 + v60);
            }

            v63 = (v60)(v62, v56, &v100);
            v64 = v100;
            v65 = 0;
            if (v63)
            {
              v66 = v100 == 0;
            }

            else
            {
              v66 = 1;
            }

            if (!v66)
            {
              do
              {
                v67 = *v63++;
                v65 = v67 | (v65 << 8);
                --v64;
              }

              while (v64);
            }

            v99 = 0xAAAAAAAAAAAAAAAALL;
            v68 = a3[12];
            v69 = a3[13];
            v70 = (a3 + (v69 >> 1) + 96);
            if (v69)
            {
              v68 = *(*v70 + v68);
            }

            v71 = (v68)(v70, v59, &v99);
            v72 = v99;
            v73 = 0;
            if (v71)
            {
              v74 = v99 == 0;
            }

            else
            {
              v74 = 1;
            }

            if (!v74)
            {
              do
              {
                v75 = *v71++;
                v73 = v75 | (v73 << 8);
                --v72;
              }

              while (v72);
            }

            v76 = (v73 + v65);
            if (v73 + v65)
            {
              v77 = a3[19];
              v78 = a3[2];
              v79 = a3[3];
              if (a4)
              {
                v80 = v77 + v76;
                if (v78 > v80 || (v80 + 1) > v79)
                {
                  return;
                }

                v82 = (a3[20] + bswap32(*v80));
                v83 = &v82[v10];
                v84 = v78 <= v82 && v83 >= v82;
                if (!v84 || v83 > v79)
                {
                  v86 = (v82 + 1) > v79 || v78 > v82;
                  v87 = (v79 - v82) >> 1;
                  if (v86)
                  {
                    v87 = 0;
                  }

                  if (v87 != v10)
                  {
                    return;
                  }
                }

                LOWORD(v88) = 0;
                v89 = a5;
                v90 = v97;
                do
                {
                  v91 = *v82++;
                  v92 = bswap32(v91);
                  v93 = *v89++;
                  v88 = (round(v93 * (v92 >> 16)) + v88);
                  --v90;
                }

                while (v90);
              }

              else
              {
                v94 = (v77 + 2 * v76);
                if (v78 > v94 || v94 + 2 > v79)
                {
                  return;
                }

                v88 = bswap32(*v94) >> 16;
              }

              if (v88)
              {
                TAATKerxEngine::HandleKern<TRunGlue::TGlyph>(*a3, v101, v102, v88, *(a3 + 8));
                *a6 = 1;
              }
            }
          }

          ++v102;
          v56 = v59;
          v39 = v54-- <= 2;
        }

        while (!v39);
      }
    }
  }

  else if ((v12 & 1) == 0)
  {
    v13 = *a3;
    v101 = **a3;
    v102 = 0;
    v14 = TRunGlue::length(*v13);
    v15 = TRunGlue::TGlyph::glyphID(&v101);
    ++v102;
    if (v14 >= 2)
    {
      v16 = v15;
      if (v10 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v10;
      }

      v96 = v17;
      do
      {
        v18 = TRunGlue::TGlyph::glyphID(&v101);
        if (v18 == 0xFFFF || (v19 = v18, (TRunGlue::IsDeleted(v101, v102) & 1) != 0))
        {
          v19 = v16;
        }

        else
        {
          v100 = 0xAAAAAAAAAAAAAAAALL;
          v20 = a3[5];
          v21 = a3[6];
          v22 = (a3 + (v21 >> 1) + 40);
          if (v21)
          {
            v20 = *(*v22 + v20);
          }

          v23 = (v20)(v22, v16, &v100);
          v24 = v100;
          v25 = 0;
          if (v23)
          {
            v26 = v100 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            do
            {
              v27 = *v23++;
              v25 = v27 | (v25 << 8);
              --v24;
            }

            while (v24);
          }

          v99 = 0xAAAAAAAAAAAAAAAALL;
          v28 = a3[12];
          v29 = a3[13];
          v30 = (a3 + (v29 >> 1) + 96);
          if (v29)
          {
            v28 = *(*v30 + v28);
          }

          v31 = (v28)(v30, v19, &v99);
          v32 = v99;
          v33 = 0;
          if (v31)
          {
            v34 = v99 == 0;
          }

          else
          {
            v34 = 1;
          }

          if (!v34)
          {
            do
            {
              v35 = *v31++;
              v33 = v35 | (v33 << 8);
              --v32;
            }

            while (v32);
          }

          if (v33 + v25)
          {
            v36 = a3[19] + (v33 + v25);
            v37 = a3[2];
            v38 = a3[3];
            v39 = v37 > v36 || (v36 + 1) > v38;
            v40 = !v39;
            if (a4)
            {
              if (!v40)
              {
                return;
              }

              v41 = (a3[20] + (bswap32(*v36) >> 16));
              v42 = &v41[v10];
              v43 = v37 <= v41 && v42 >= v41;
              if (!v43 || v42 > v38)
              {
                v45 = (v41 + 1) > v38 || v37 > v41;
                v46 = (v38 - v41) >> 1;
                if (v45)
                {
                  v46 = 0;
                }

                if (v46 != v10)
                {
                  return;
                }
              }

              LOWORD(v47) = 0;
              v48 = a5;
              v49 = v96;
              do
              {
                v50 = *v41++;
                v51 = bswap32(v50);
                v52 = *v48++;
                v47 = (round(v52 * (v51 >> 16)) + v47);
                --v49;
              }

              while (v49);
            }

            else
            {
              if (!v40)
              {
                return;
              }

              v47 = bswap32(*v36) >> 16;
            }

            if (v47)
            {
              TAATKerxEngine::HandleKern<TRunGlue::TGlyph>(*a3, v101, v102, v47, *(a3 + 8));
              *a6 = 1;
            }
          }
        }

        ++v102;
        v16 = v19;
        v39 = v14-- <= 2;
      }

      while (!v39);
    }
  }
}

uint64_t TAATKerxEngine::KerxOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInVector>(uint64_t result, _BYTE *a2)
{
  if (!*(result + 64))
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 16);
  v5 = **result;
  v6 = *(v5 + 21);
  v7 = *(v5 + 19);
  result = TRunGlue::length(v5);
  if (result < 2)
  {
    return result;
  }

  v8 = result;
  v9 = v4 + 16;
  v10 = (v6 + 2 * v7);
  v11 = *v10;
  v12 = v4 + 18;
  result = 0x7FFFFFFFFFFFFFF0;
  v13 = 1;
  v14 = &std::piecewise_construct;
  while (1)
  {
    v15 = v10[v13];
    if (v15 == 0xFFFF)
    {
      v15 = v11;
      goto LABEL_16;
    }

    if (*(v3 + 58) >= v11)
    {
      if (*(*(v3 + 64) + 2 * v11))
      {
        v16 = *(v3 + 56);
        if (v16 > (*(*(v3 + 64) + 2 * v11) - 1))
        {
          break;
        }
      }
    }

LABEL_16:
    ++v13;
    v11 = v15;
    if (v13 == v8)
    {
      return result;
    }
  }

  v17 = *(*(v3 + 64) + 2 * v11) - 1;
  v18 = (v12 + 6 * v17);
  while (1)
  {
    v19 = bswap32(*(v18 - 1)) >> 16;
    if (v19 != v11)
    {
      break;
    }

    if (v15 <= bswap32(*v18) >> 16)
    {
      goto LABEL_18;
    }

LABEL_13:
    ++v17;
    v18 += 3;
    if (v16 == v17)
    {
      goto LABEL_16;
    }
  }

  if (v19 < v11)
  {
    goto LABEL_13;
  }

LABEL_18:
  v20 = (v9 + 6 * v17);
  if (v11 != bswap32(*v20) >> 16 || v15 != bswap32(v20[1]) >> 16)
  {
    goto LABEL_16;
  }

  v21 = *(v3 + 72);
  v22 = *(v3 + 80);
  v23 = bswap32(v20[2]) >> 16;
  if (v21 == v22)
  {
    goto LABEL_39;
  }

  v24 = *(v3 + 16);
  v25 = (*(v3 + 8) + v23);
  v26 = v22 - v21;
  v27 = v22 - v21;
  v28 = *(v3 + 24);
  v29 = &v25[v26 >> 2];
  if (v24 <= v25 && v29 >= v25 && v29 <= v28)
  {
    goto LABEL_36;
  }

  v32 = (v25 + 2) > v28 || v24 > v25;
  v33 = (v28 - v25) >> 1;
  if (v32)
  {
    v33 = 0;
  }

  if (v33 == v27)
  {
LABEL_36:
    LOWORD(v23) = 0;
    if (v27 <= 1)
    {
      v27 = 1;
    }

    do
    {
      v34 = *v25;
      v25 += 2;
      v35 = bswap32(v34);
      v36 = *v21++;
      v23 = (round(v36 * (v35 >> 16)) + v23);
      --v27;
    }

    while (v27);
LABEL_39:
    if (v23)
    {
      v37 = *v3;
      if ((*(v3 + 35) & 0x40) != 0)
      {
        v52 = v9;
        v54[0] = v13;
        v54[2] = v54;
        v41 = (v37 + 6);
        v42 = v14;
        v43 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(v41, v54);
        v14 = v42;
        if (v23 == 0x8000)
        {
          *(v43 + 42) = 1;
          *(v43 + 20) = 0;
        }

        else
        {
          *(v43 + 20) += v23;
        }

        v9 = v52;
        result = 0x7FFFFFFFFFFFFFF0;
      }

      else
      {
        v39 = v37[4];
        v38 = v37[5];
        if (v39 >= v38)
        {
          v44 = v37[3];
          v45 = v39 - v44;
          v46 = (v39 - v44) >> 4;
          v47 = v46 + 1;
          if ((v46 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v53 = v9;
          v48 = v38 - v44;
          if (v48 >> 3 > v47)
          {
            v47 = v48 >> 3;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF0)
          {
            v49 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100]((v37 + 3), v49);
          }

          v50 = 16 * v46;
          *v50 = v13;
          *(v50 + 8) = v23;
          v40 = 16 * v46 + 16;
          memcpy(0, v44, v45);
          v51 = v37[3];
          v37[3] = 0;
          v37[4] = v40;
          v37[5] = 0;
          if (v51)
          {
            operator delete(v51);
          }

          v9 = v53;
          result = 0x7FFFFFFFFFFFFFF0;
          v14 = &std::piecewise_construct;
        }

        else
        {
          *v39 = v13;
          *(v39 + 8) = v23;
          v40 = v39 + 16;
        }

        v37[4] = v40;
      }

      *a2 = 1;
    }

    goto LABEL_16;
  }

  return result;
}

void TAATKerxEngine::KerxOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInSingleRun>(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 64))
  {
    return;
  }

  v4 = *(a1 + 16);
  v5 = **a1;
  v6 = *(v5 + 21);
  v7 = TRunGlue::length(v5);
  if (v7 < 2)
  {
    return;
  }

  v8 = v7;
  v48 = v4 + 16;
  v9 = v4 + 18;
  v10 = *v6;
  v11 = 1;
  while (1)
  {
    v12 = v6[v11];
    if (v12 == 0xFFFF || (TRunGlue::IsDeleted(v5, v11) & 1) != 0)
    {
      v12 = v10;
      goto LABEL_7;
    }

    if (*(a1 + 58) >= v10)
    {
      if (*(*(a1 + 64) + 2 * v10))
      {
        v13 = *(a1 + 56);
        if (v13 > (*(*(a1 + 64) + 2 * v10) - 1))
        {
          break;
        }
      }
    }

LABEL_7:
    ++v11;
    v10 = v12;
    if (v11 == v8)
    {
      return;
    }
  }

  v14 = *(*(a1 + 64) + 2 * v10) - 1;
  v15 = (v9 + 6 * v14);
  while (1)
  {
    v16 = bswap32(*(v15 - 1)) >> 16;
    if (v16 != v10)
    {
      break;
    }

    if (v12 <= bswap32(*v15) >> 16)
    {
      goto LABEL_19;
    }

LABEL_17:
    ++v14;
    v15 += 3;
    if (v13 == v14)
    {
      goto LABEL_7;
    }
  }

  if (v16 < v10)
  {
    goto LABEL_17;
  }

LABEL_19:
  v17 = (v48 + 6 * v14);
  if (v10 != bswap32(*v17) >> 16 || v12 != bswap32(v17[1]) >> 16)
  {
    goto LABEL_7;
  }

  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = bswap32(v17[2]) >> 16;
  if (v18 == v19)
  {
    goto LABEL_40;
  }

  v21 = *(a1 + 16);
  v22 = (*(a1 + 8) + v20);
  v23 = v19 - v18;
  v24 = v19 - v18;
  v25 = *(a1 + 24);
  v26 = &v22[v23 >> 2];
  v27 = v21 <= v22 && v26 >= v22;
  if (v27 && v26 <= v25)
  {
    goto LABEL_37;
  }

  v29 = (v22 + 2) > v25 || v21 > v22;
  v30 = (v25 - v22) >> 1;
  if (v29)
  {
    v30 = 0;
  }

  if (v30 == v24)
  {
LABEL_37:
    LOWORD(v20) = 0;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    do
    {
      v31 = *v22;
      v22 += 2;
      v32 = bswap32(v31);
      v33 = *v18++;
      v20 = (round(v33 * (v32 >> 16)) + v20);
      --v24;
    }

    while (v24);
LABEL_40:
    if (v20)
    {
      v34 = *a1;
      if ((*(a1 + 35) & 0x40) != 0)
      {
        v49[0] = v11;
        v49[2] = v49;
        v38 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((v34 + 6), v49);
        if (v20 == 0x8000)
        {
          *(v38 + 42) = 1;
          *(v38 + 20) = 0;
        }

        else
        {
          *(v38 + 20) += v20;
        }
      }

      else
      {
        v36 = v34[4];
        v35 = v34[5];
        if (v36 >= v35)
        {
          v39 = v34[3];
          v40 = v36 - v39;
          v41 = (v36 - v39) >> 4;
          v42 = v41 + 1;
          if ((v41 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v43 = v35 - v39;
          if (v43 >> 3 > v42)
          {
            v42 = v43 >> 3;
          }

          v27 = v43 >= 0x7FFFFFFFFFFFFFF0;
          v44 = 0xFFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v44 = v42;
          }

          v47 = *a1;
          if (v44)
          {
            std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100]((v34 + 3), v44);
          }

          v45 = 16 * v41;
          *v45 = v11;
          *(v45 + 8) = v20;
          v37 = 16 * v41 + 16;
          memcpy(0, v39, v40);
          v34 = v47;
          v46 = v47[3];
          v47[3] = 0;
          v47[4] = v37;
          v47[5] = 0;
          if (v46)
          {
            operator delete(v46);
            v34 = v47;
          }
        }

        else
        {
          *v36 = v11;
          *(v36 + 4) = v20;
          v37 = (v36 + 2);
        }

        v34[4] = v37;
      }

      *a2 = 1;
    }

    goto LABEL_7;
  }
}

void TAATKerxEngine::KerxOrderedList::ProcessGlyphsT<TRunGlue::TGlyph>(void **a1, _BYTE *a2)
{
  if (!a1[8])
  {
    return;
  }

  v4 = a1[2];
  v33 = **a1;
  v34 = 0;
  v5 = TRunGlue::length(v33);
  v6 = TRunGlue::TGlyph::glyphID(&v33);
  ++v34;
  if (v5 < 2)
  {
    return;
  }

  v7 = v6;
  v8 = v4 + 2;
  v9 = v4 + 18;
  while (1)
  {
    v10 = TRunGlue::TGlyph::glyphID(&v33);
    if (v10 == 0xFFFF || (v11 = v10, (TRunGlue::IsDeleted(v33, v34) & 1) != 0))
    {
      v11 = v7;
      goto LABEL_7;
    }

    if (*(a1 + 29) >= v7)
    {
      if (*(a1[8] + v7))
      {
        v12 = *(a1 + 28);
        if (v12 > (*(a1[8] + v7) - 1))
        {
          break;
        }
      }
    }

LABEL_7:
    ++v34;
    v7 = v11;
    v27 = v5-- <= 2;
    if (v27)
    {
      return;
    }
  }

  v13 = *(a1[8] + v7) - 1;
  v14 = &v9[6 * v13];
  while (1)
  {
    v15 = bswap32(*(v14 - 1)) >> 16;
    if (v15 != v7)
    {
      break;
    }

    if (v11 <= bswap32(*v14) >> 16)
    {
      goto LABEL_20;
    }

LABEL_18:
    ++v13;
    v14 += 6;
    if (v12 == v13)
    {
      goto LABEL_7;
    }
  }

  if (v15 < v7)
  {
    goto LABEL_18;
  }

LABEL_20:
  v16 = v8 + 3 * v13;
  if (v7 != bswap32(*v16) >> 16 || v11 != bswap32(v16[1]) >> 16)
  {
    goto LABEL_7;
  }

  v17 = a1[9];
  v18 = a1[10];
  v19 = bswap32(v16[2]) >> 16;
  if (v17 == v18)
  {
    goto LABEL_41;
  }

  v20 = a1[2];
  v21 = a1[1] + v19;
  v22 = v18 - v17;
  v23 = v18 - v17;
  v24 = a1[3];
  v25 = &v21[v22 >> 2];
  v27 = v20 > v21 || v25 < v21 || v25 > v24;
  if (!v27)
  {
    goto LABEL_38;
  }

  v28 = (v21 + 2) > v24 || v20 > v21;
  v29 = (v24 - v21) >> 1;
  if (v28)
  {
    v29 = 0;
  }

  if (v29 == v23)
  {
LABEL_38:
    LOWORD(v19) = 0;
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v30 = *v21;
      v21 += 2;
      v31 = bswap32(v30);
      v32 = *v17++;
      v19 = (round(v32 * (v31 >> 16)) + v19);
      --v23;
    }

    while (v23);
LABEL_41:
    if (v19)
    {
      TAATKerxEngine::HandleKern<TRunGlue::TGlyph>(*a1, v33, v34, v19, *(a1 + 8));
      *a2 = 1;
    }

    goto LABEL_7;
  }
}

void *std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v7 = *(a4 + 240);
    v6 = (a4 + 240);
    v5 = v7;
    v8 = v7 + 8 * a2;
    if (v8 > v6)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *v6 = v8;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5 + 8 * a3;
  *a1 = v5;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v5 + 8 * a2;
  return a1;
}

uint64_t TRunGlue::CoveredByBitmap(uint64_t this, const unsigned __int8 *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v6 = this;
  if (*(this + 144) || (this = TRunGlue::length(this), this < 1))
  {
LABEL_2:
    if (length < 1)
    {
      return 0;
    }

    v7 = 0;
    v8 = *(*v6 + 16);
    v9 = (*(*v6 + 24) - v8) >> 3;
    v10 = v9 >= location;
    v11 = v9 - location;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v8 + 8 * location;
    while (1)
    {
      if (v7 == v11)
      {
        __break(1u);
        return this;
      }

      v13 = *(*(v12 + 8 * v7) + 40);
      v14 = v13[26];
      if (v14 >= 1)
      {
        break;
      }

LABEL_12:
      if (++v7 == length)
      {
        return 0;
      }
    }

    v15 = (*(v13[27] + 16) + 2 * v13[25]);
    while (1)
    {
      v17 = *v15++;
      v16 = v17;
      if (v6[63] > v17 && ((a2[v16 >> 3] >> (v16 & 7)) & 1) != 0)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v18 = (v6[21] + 2 * v6[19]);
    while (1)
    {
      v20 = *v18++;
      v19 = v20;
      if (v6[63] > v20 && ((a2[v19 >> 3] >> (v19 & 7)) & 1) != 0)
      {
        break;
      }

      if (!--this)
      {
        goto LABEL_2;
      }
    }
  }

  return 1;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<long>::allocate_at_least[abi:fn200100](a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
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
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::__split_buffer(&v16, v10, v7 >> 3, a1 + 24);
    v11 = v17[0];
    bzero(v17[0], 8 * a2);
    v17[0] = &v11[8 * a2];
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
    std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::~__split_buffer(&v16);
  }
}

void std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 131;
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
      if (v1[2] == v1[131])
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

void TAATKerxEngine::HandleKern<TRunGlue::TGlyph>(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = a4;
  if ((a5 & 0x40000000) != 0)
  {
    v22[0] = a3;
    v22[2] = v22;
    if (a4 == -32768)
    {
      v11 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((a1 + 6), v22);
      *(v11 + 42) = 1;
      *(v11 + 20) = 0;
    }

    else
    {
      v19 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((a1 + 6), v22);
      *(v19 + 20) += v5;
    }
  }

  else
  {
    v9 = a1[4];
    v8 = a1[5];
    if (v9 >= v8)
    {
      v12 = a1[3];
      v13 = v9 - v12;
      v14 = (v9 - v12) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v16 = v8 - v12;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFF0;
      v18 = 0xFFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100]((a1 + 3), v18);
      }

      v20 = 16 * v14;
      *v20 = a3;
      *(v20 + 8) = a4;
      v10 = 16 * v14 + 16;
      memcpy(0, v12, v13);
      v21 = a1[3];
      a1[3] = 0;
      a1[4] = v10;
      a1[5] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v9 = a3;
      *(v9 + 8) = a4;
      v10 = v9 + 16;
    }

    a1[4] = v10;
  }
}

void *std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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

uint64_t *std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:fn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

const __CFArray *FontRequiresOpenTypeShaping(atomic_ullong *a1)
{
  result = atomic_load_explicit(a1 + 22, memory_order_acquire);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(a1 + 22, memory_order_acquire), Count - 1);
      return ([(CTFeatureSetting *)ValueAtIndex tag]!= 0);
    }
  }

  return result;
}

BOOL TShapingEngine::ApplyVerticalForms(TShapingEngine *this, const UniChar *a2, CGGlyph *a3, CFIndex a4)
{
  v56 = *MEMORY[0x1E69E9840];
  ShapingType = TBaseFont::GetShapingType(*(*(this + 5) + 408));
  if (ShapingType == 2)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v54[3] = v10;
    v54[2] = v10;
    v54[1] = v10;
    v54[0] = v10;
    values = 0;
    v52 = 0;
    explicit = 0;
    v55 = v54;
    if (a4)
    {
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&values, a4);
      v11 = v52;
      bzero(v52, 2 * a4);
      v52 = &v11[2 * a4];
      v12 = values;
    }

    else
    {
      v12 = 0;
    }

    CTFontGetGlyphsForCharacters(this, a2, v12, a4);
    v27 = values;
    v28 = v52;
    if (values != v52)
    {
      do
      {
        v29 = *v27;
        if (!*v27)
        {
          v29 = -1;
        }

        *v27++ = v29;
      }

      while (v27 != v28);
    }

    ScriptForVerticalGlyphs = TOpenTypeMorph::FindScriptForVerticalGlyphs(*(this + 5), v26);
    if ((ScriptForVerticalGlyphs & 0x100000000) != 0)
    {
      v31 = ScriptForVerticalGlyphs;
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v49[28] = v32;
      v49[29] = v32;
      v49[26] = v32;
      v49[27] = v32;
      v49[24] = v32;
      v49[25] = v32;
      v49[22] = v32;
      v49[23] = v32;
      v49[20] = v32;
      v49[21] = v32;
      v49[18] = v32;
      v49[19] = v32;
      v49[16] = v32;
      v49[17] = v32;
      v49[15] = v32;
      v49[14] = v32;
      v49[13] = v32;
      v49[12] = v32;
      v49[11] = v32;
      v49[10] = v32;
      v49[9] = v32;
      v49[8] = v32;
      v49[7] = v32;
      v49[6] = v32;
      v49[5] = v32;
      v49[4] = v32;
      v49[3] = v32;
      v49[2] = v32;
      v49[1] = v32;
      v49[0] = v32;
      v47 = 0;
      keys = 0;
      v48 = 0;
      v50 = v49;
      if (a4)
      {
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&keys, a4);
        v33 = v47;
        bzero(v47, 16 * a4);
        v47 = &v33[16 * a4];
        v34 = keys;
      }

      else
      {
        v34 = 0;
      }

      memcpy(v45, &unk_18475A7E0, sizeof(v45));
      TRunGlue::TRunGlue(v45, this, values, v34, a4, 0, 0, 0);
      v41.location = 0;
      v41.length = a4;
      memset(__dst, 170, sizeof(__dst));
      TOpenTypeMorph::TOpenTypeMorph(__dst, v45, 0, v31, &v41);
      TOpenTypeMorph::ApplyVerticalGlyphs(__dst);
      std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](&__dst[4]);
      std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&v45[448]);
      __dst[0] = &v45[256];
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
      __dst[0] = &v45[216];
      std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
      __dst[0] = &v45[56];
      std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
      __dst[0] = &keys;
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
    }

    v35 = values;
    v36 = v52;
    v37 = 1;
    if (values != v52)
    {
      do
      {
        v39 = *v35;
        v35 += 2;
        v38 = v39;
        if (v39 == 0xFFFF)
        {
          v38 = 0;
        }

        v37 = (v38 != 0) & v37;
        *a3++ = v38;
      }

      while (v35 != v36);
    }

    __dst[0] = &values;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
    return v37;
  }

  else
  {
    if (ShapingType)
    {
      v40 = [_CTNativeGlyphStorage newWithCount:a4 capacity:a4];
      glyphs = v40->_glyphs;
      CTFontGetGlyphsForCharacters(this, a2, glyphs, a4);
      if (a4)
      {
        v14 = 2 * a4;
        v15 = glyphs;
        do
        {
          v16 = *v15;
          if (!*v15)
          {
            v16 = -1;
          }

          *v15++ = v16;
          v14 -= 2;
        }

        while (v14);
        v17 = 0;
        stringIndices = v40->_stringIndices;
        v19 = (a4 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v20 = vdupq_n_s64(v19);
        v21 = xmmword_18475A340;
        v22 = vdupq_n_s64(2uLL);
        do
        {
          v23 = vmovn_s64(vcgeq_u64(v20, v21));
          if (v23.i8[0])
          {
            stringIndices[v17] = v17;
          }

          if (v23.i8[4])
          {
            stringIndices[v17 + 1] = v17 + 1;
          }

          v17 += 2;
          v21 = vaddq_s64(v21, v22);
        }

        while (v19 - ((a4 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v17);
      }

      v43 = 0xAAAAAAAAAAAAAAAALL;
      TCFNumber::TCFNumber<int>(&v43, 0);
      keys = @"NSFont";
      v47 = @"CTVerticalForms";
      v48 = @"NSLigature";
      explicit = 0xAAAAAAAAAAAAAAAALL;
      v24 = *MEMORY[0x1E695E4D0];
      values = this;
      v52 = v24;
      explicit = atomic_load_explicit(&v43, memory_order_acquire);
      v25 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v41.location = a2;
      v41.length = a4;
      v42 = v25;
      operator new();
    }

    return CTFontGetGlyphsForCharacters(this, a2, a3, a4);
  }
}

uint64_t Provider(uint64_t a1, uint64_t *a2, const __CFDictionary **a3, void *a4)
{
  if (a1 < 0)
  {
    return 0;
  }

  v4 = a4[1];
  v5 = v4 <= a1;
  v6 = v4 - a1;
  if (v5)
  {
    return 0;
  }

  *a2 = v6;
  *a3 = a4[2];
  return *a4 + 2 * a1;
}

uint64_t std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__vallocate[abi:fn200100](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = a1[4];
  if (result + a2 > a1 + 28)
  {
    operator new();
  }

  a1[4] = result + a2;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + a2;
  return result;
}

uint64_t std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = a1[11];
  v4 = result + 2 * a2;
  if (v4 > a1 + 84)
  {
    operator new();
  }

  a1[11] = v4;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 2 * a2;
  return result;
}

void std::__shared_ptr_emplace<TCharStreamUniChar>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF256DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

void *TCFBase<TRun>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

__CFString *TCFBase<TRun>::ClassDebug(uint64_t a1)
{
  result = TRun::DebugDescription(*(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTRun", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void TCFBase_NEW<CTGlyphRun,TRun const&>(const TRun *a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTGlyphRun::CloneEntire;
    v4[8] = CTGlyphRun::CloneRange;
    TRun::TRun((v4 + 9), a1);
  }

  *a2 = v5;
}

void *TCFBase_NEW<CTGlyphRun,TRun const&,CFRange &,TRun::SubrangingStyle &>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  result = TCFBase<TRun>::Allocate();
  v9 = result;
  if (result)
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = *a3;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 9;
    result[6] = result + 9;
    result[7] = CTGlyphRun::CloneEntire;
    result[8] = CTGlyphRun::CloneRange;
    result = TRun::TRun((result + 9), a1, v10, v11, v12);
  }

  *a4 = v9;
  return result;
}

unint64_t emoji_compression_decode(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, uint8_t *a6, _WORD *a7)
{
  v7 = a2 - 12;
  if (a2 < 0xC)
  {
    return 0;
  }

  v9 = 0;
  if (*a1 != 829058405)
  {
    return v9;
  }

  if (*(a1 + 4) != 256)
  {
    return v9;
  }

  v11 = *(a1 + 6);
  v12 = *(a1 + 10);
  v13 = *(a1 + 8);
  *a7 = v13;
  a7[1] = v12;
  v9 = (4 * v13 * v12);
  if (!a3)
  {
    return v9;
  }

  if (v9 > a4)
  {
    return 0;
  }

  if ((v11 - 41217) > 1)
  {
    return 0;
  }

  v16 = a6;
  if (!a6)
  {
    v17 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
    v16 = malloc_type_malloc(v12 + (7 * v12 + 18) * v13 + v17 + 4096, 0x97BFC370uLL);
    if (!v16)
    {
      return 0;
    }
  }

  v20[0] = a3;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = 4 * v13;
  v18 = vImageCompressionDecode_BGRA8888(a1 + 12, v7, v20, a5, v16);
  if (!a6)
  {
    free(v16);
  }

  if (v18)
  {
    return 0;
  }

  return v9;
}

uint64_t TCharStream::LazyCopyChars(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1[1];
  v5 = a1[2] + v4;
  if (a2 + a3 >= v5)
  {
    v6 = a1[2] + v4;
  }

  else
  {
    v6 = a2 + a3;
  }

  v7 = v6 - v4;
  v8 = a2 <= v4 && v4 < a2 + a3;
  if (v8)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
    v7 = 0;
  }

  v10 = v4 <= a2 && a2 < v5;
  v11 = v6 - a2;
  if (v10)
  {
    v9 = a2;
  }

  if (!v10)
  {
    v11 = v7;
  }

  if (v9 != a2 || v11 != a3)
  {
    return v3;
  }

  v12 = a1[3];
  if (v12)
  {
    return v12 + 2 * a2 - 2 * v4;
  }

  return (*(*a1 + 72))();
}

void TGlyphEncoder::AppendRunClone(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0 && a4 > a3)
  {
    v10[3] = v4;
    v10[4] = v5;
    v6 = *(a1 + 200);
    (*(atomic_load_explicit(a2, memory_order_acquire) + 64))(&v8);
    v9 = atomic_exchange(&v8, 0);
    v7 = atomic_exchange(&v9, 0);
    v10[0] = v7;
    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v6 + 2, v10);
    TLine::UpdateCachedMetricsForRun(v6, *(v7 + 40));
  }
}

void *TCFBase_NEW<CTRubyRun,CTRun *&,BOOL>@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  result = TCFBase<TRun>::Allocate();
  v7 = result;
  if (result)
  {
    v8 = *a1;
    v9 = *a2;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 9;
    result[6] = result + 9;
    result[7] = CTRubyRun::CloneEntire;
    result[8] = CTRubyRun::CloneRange;
    result = TRubyRun::TRubyRun((result + 9), v8, v9);
  }

  *a3 = v7;
  return result;
}

void *TCFBase_NEW<CTTateChuYokoRun,CTRun *&>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TCFBase<TRun>::Allocate();
  v5 = result;
  if (result)
  {
    v6 = *a1;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 9;
    result[6] = result + 9;
    result[7] = CTTateChuYokoRun::CloneEntire;
    result[8] = CTTateChuYokoRun::CloneRange;
    result = TTateChuYokoRun::TTateChuYokoRun((result + 9), v6);
  }

  *a2 = v5;
  return result;
}

void *TCFBase_NEW<CTTextEncapsulationRun,CTRun *&>(void *a1, uint64_t *a2)
{
  result = TCFBase<TRun>::Allocate();
  v5 = result;
  if (result)
  {
    v6 = *a2;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 9;
    result[6] = result + 9;
    result[7] = CTTextEncapsulationRun::CloneEntire;
    result[8] = CTTextEncapsulationRun::CloneRange;
    result = TTextEncapsulationRun::TTextEncapsulationRun((result + 9), v6);
  }

  *a1 = v5;
  return result;
}

void TGlyphEncoder::CreateRun(atomic_ullong *this, CFRange a2, const TAttributes *a3, const __CTFont *a4, const __CTFont *a5)
{
  length = a2.length;
  location = a2.location;
  *this = 0xAAAAAAAAAAAAAAAALL;
  v11 = TCFBase<TRun>::Allocate();
  v12 = v11;
  if (v11)
  {
    v13 = *location;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = 0;
    v11[5] = v11 + 9;
    v11[6] = v11 + 9;
    v11[7] = CTGlyphRun::CloneEntire;
    v11[8] = CTGlyphRun::CloneRange;
    v16.location = length;
    v16.length = a3;
    TRun::TRun((v11 + 9), v16, v13, a4, a5);
  }

  v15 = v12;
  *this = atomic_exchange(&v15, 0);

  v15 = 0xAAAAAAAAAAAAAAAALL;
  TGlyphEncoder::CreateSpecialRun(&v15, location, atomic_load_explicit(this, memory_order_acquire), *(a4 + 69));
  if (atomic_load_explicit(&v15, memory_order_acquire))
  {
    TCFRef<__CTFont const*>::Retain(this, atomic_load_explicit(&v15, memory_order_acquire));
  }

  if (atomic_load_explicit(this, memory_order_acquire))
  {
    v14 = *(atomic_load_explicit(this, memory_order_acquire) + 48);
    *(v14 + 8) = length;
    *(v14 + 16) = a3;
  }
}

void TFontCascade::~TFontCascade(TFontCascade *this)
{
  NSFreeMapTable(*(this + 24));
  *(this + 24) = 0;
}

__n128 std::__function::__func<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_1::operator() const(CFRange,CTEmojiPolicy *)::{lambda(CFRange,unsigned int,BOOL *)#1},std::allocator<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_1::operator() const(CFRange,CTEmojiPolicy *)::{lambda(CFRange,unsigned int,BOOL *)#1}>,void ()(CFRange,unsigned int,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256E20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_1::operator() const(CFRange,CTEmojiPolicy *)::{lambda(CFRange,unsigned int,BOOL *)#1},std::allocator<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_1::operator() const(CFRange,CTEmojiPolicy *)::{lambda(CFRange,unsigned int,BOOL *)#1}>,void ()(CFRange,unsigned int,BOOL *)>::operator()(uint64_t result, void *a2, UChar32 *a3, _BYTE **a4)
{
  v4 = result;
  v5 = *a3;
  if (*a2)
  {
    v6 = *a4;
    if (v5 >= 0xFE0E && (**(result + 8) & 1) != 0 && (v5 >> 4 < 0xFE1 || v5 - 127995 <= 4))
    {
      if (v5 == 65038)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      ***(result + 16) = v8;
    }

    *v6 = 1;
  }

  else
  {
    result = u_hasBinaryProperty(*a3, UCHAR_EMOJI);
    **(v4 + 8) = result != 0;
    if (result)
    {
      result = u_hasBinaryProperty(v5, UCHAR_EMOJI_PRESENTATION);
      if (result)
      {
        ***(v4 + 16) = 2;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(CFRange,unsigned int,BOOL *)>::~__value_func[abi:fn200100](uint64_t a1)
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

void CTEmojiImageRun::CloneEntire(void *a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTEmojiImageRun::CloneEntire;
    v4[8] = CTEmojiImageRun::CloneRange;
    TRun::TRun((v4 + 9), (a1 + 9));
    v5[9] = &unk_1EF2577C8;
    v5[49] = a1[49];
    v5[50] = a1[50];
  }

  v6 = v5;
  *a2 = atomic_exchange(&v6, 0);
}

void CTEmojiImageRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, CFIndex a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = TCFBase<TRun>::Allocate();
  v11 = v10;
  if (v10)
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v10 + 9;
    v10[6] = v10 + 9;
    v10[7] = CTEmojiImageRun::CloneEntire;
    v10[8] = CTEmojiImageRun::CloneRange;
    TRun::TRun((v10 + 9), a1 + 72, a2, a3, a4);
    v11[9] = &unk_1EF2577C8;
    v11[49] = *(a1 + 392);
    v11[50] = *(a1 + 400);
  }

  v12 = v11;
  *a5 = atomic_exchange(&v12, 0);
}

void CTMetricsDelegateRun::CloneEntire(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTMetricsDelegateRun::CloneEntire;
    v4[8] = CTMetricsDelegateRun::CloneRange;
    TRun::TRun((v4 + 9), (a1 + 72));
    v5[9] = &unk_1EF25A900;
  }

  v6 = v5;
  *a2 = atomic_exchange(&v6, 0);
}

void CTMetricsDelegateRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, CFIndex a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = TCFBase<TRun>::Allocate();
  v11 = v10;
  if (v10)
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v10 + 9;
    v10[6] = v10 + 9;
    v10[7] = CTMetricsDelegateRun::CloneEntire;
    v10[8] = CTMetricsDelegateRun::CloneRange;
    TRun::TRun((v10 + 9), a1 + 72, a2, a3, a4);
    v11[9] = &unk_1EF25A900;
  }

  v12 = v11;
  *a5 = atomic_exchange(&v12, 0);
}

void CTRubyRun::CloneEntire(uint64_t a1@<X0>, void *a2@<X8>)
{
  TCFBase_NEW<CTRubyRun,TRubyRun const&>((a1 + 72), &v3);
  *a2 = atomic_exchange(&v3, 0);
}

void CTRubyRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = a4;
  TCFBase_NEW<CTRubyRun,TRubyRun const&,CFRange &,TRun::SubrangingStyle &>(a1 + 72, v8, &v7, &v6);
  *a5 = atomic_exchange(&v6, 0);
}

void TCFBase_NEW<CTRubyRun,TRubyRun const&>(const TRubyRun *a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTRubyRun::CloneEntire;
    v4[8] = CTRubyRun::CloneRange;
    TRubyRun::TRubyRun((v4 + 9), a1);
  }

  *a2 = v5;
}

void *TCFBase_NEW<CTRubyRun,TRubyRun const&,CFRange &,TRun::SubrangingStyle &>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  result = TCFBase<TRun>::Allocate();
  v9 = result;
  if (result)
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = *a3;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 9;
    result[6] = result + 9;
    result[7] = CTRubyRun::CloneEntire;
    result[8] = CTRubyRun::CloneRange;
    result = TRubyRun::TRubyRun((result + 9), a1, v10, v11, v12);
  }

  *a4 = v9;
  return result;
}

void CTTateChuYokoRun::CloneEntire(uint64_t a1@<X0>, void *a2@<X8>)
{
  TCFBase_NEW<CTTateChuYokoRun,TTateChuYokoRun const&>((a1 + 72), &v3);
  *a2 = atomic_exchange(&v3, 0);
}

void CTTateChuYokoRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = a4;
  TCFBase_NEW<CTTateChuYokoRun,TTateChuYokoRun const&,CFRange &,TRun::SubrangingStyle &>(a1 + 72, v8, &v7, &v6);
  *a5 = atomic_exchange(&v6, 0);
}

void TCFBase_NEW<CTTateChuYokoRun,TTateChuYokoRun const&>(const TTateChuYokoRun *a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTTateChuYokoRun::CloneEntire;
    v4[8] = CTTateChuYokoRun::CloneRange;
    TTateChuYokoRun::TTateChuYokoRun((v4 + 9), a1);
  }

  *a2 = v5;
}

void *TCFBase_NEW<CTTateChuYokoRun,TTateChuYokoRun const&,CFRange &,TRun::SubrangingStyle &>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  result = TCFBase<TRun>::Allocate();
  v9 = result;
  if (result)
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = *a3;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = result + 9;
    result[6] = result + 9;
    result[7] = CTTateChuYokoRun::CloneEntire;
    result[8] = CTTateChuYokoRun::CloneRange;
    result = TTateChuYokoRun::TTateChuYokoRun((result + 9), a1, v10, v11, v12);
  }

  *a4 = v9;
  return result;
}

void CTTextEncapsulationRun::CloneEntire(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTTextEncapsulationRun::CloneEntire;
    v4[8] = CTTextEncapsulationRun::CloneRange;
    TTextEncapsulationRun::TTextEncapsulationRun((v4 + 9), (a1 + 72));
  }

  v6 = v5;
  *a2 = atomic_exchange(&v6, 0);
}

void CTTextEncapsulationRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, CFIndex a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = TCFBase<TRun>::Allocate();
  v11 = v10;
  if (v10)
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v10 + 9;
    v10[6] = v10 + 9;
    v10[7] = CTTextEncapsulationRun::CloneEntire;
    v10[8] = CTTextEncapsulationRun::CloneRange;
    TTextEncapsulationRun::TTextEncapsulationRun((v10 + 9), a1 + 72, a2, a3, a4);
  }

  v12 = v11;
  *a5 = atomic_exchange(&v12, 0);
}

__n128 std::__function::__func<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_0,std::allocator<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_0>,BOOL ()(CFRange,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256E68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_0,std::allocator<TGlyphEncoder::AppendUnmappedCharRun(unsigned int,TCFRef<CTRun *> &,__CTFont const*,CFRange &,CFRange,TInlineVector<long,30ul> &,std::unique_ptr<TFontCascade const> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::$_0>,BOOL ()(CFRange,unsigned int)>::operator()(uint64_t a1, uint64_t a2, UChar32 *a3)
{
  v4 = *a3;
  if ((**(a1 + 8) & 1) == 0)
  {
    if (u_hasBinaryProperty(*a3, UCHAR_EMOJI_PRESENTATION))
    {
      v6 = 2;
    }

    else
    {
      if (v4 != 9792 && v4 != 9794 && v4 != 9877)
      {
        goto LABEL_23;
      }

      v6 = 1;
    }

LABEL_22:
    **(a1 + 24) = v6;
    goto LABEL_23;
  }

  if (v4 >= 0xFE0E && (**(a1 + 16) & 1) == 0 && (v4 >> 4 < 0xFE1 || v4 - 127995 <= 4))
  {
    if (v4 == 65038)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_22;
  }

LABEL_23:
  v9 = *(a1 + 8);
  v10 = *v9;
  *v9 = 1;
  if (v10 == 1)
  {
    **(a1 + 16) = 1;
  }

  result = u_hasBinaryProperty(v4, UCHAR_DEFAULT_IGNORABLE_CODE_POINT);
  if (result)
  {
    return !IsVisibleFormatter(v4);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(CFRange,unsigned int)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t TTypesetter::GetLevelsProvider@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 32);
  if (!v3)
  {
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_7;
  }

  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
LABEL_7:
    if ((*(result + 40) & 2) == 0)
    {
      v6 = 0xAAAAAAAAAAAAAAAALL;
      (*(**(result + 8) + 32))(&v6);
      if (atomic_load_explicit(&v6, memory_order_acquire))
      {
        atomic_load_explicit(&v6, memory_order_acquire);
        operator new();
      }

      operator new();
    }

    operator new();
  }

  return result;
}

uint64_t TRunGlue::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::pair<UScriptCode,long> const*>,std::__wrap_iter<std::pair<UScriptCode,long> const*>>((a1 + 56), *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v7;
  *(a1 + 128) = a2[8];
  v8 = a2[9];
  v9 = a2[10];
  v10 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = v8;
  *(a1 + 200) = *(a2 + 200);
  std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a1 + 216), *(a2 + 27), *(a2 + 28), *(a2 + 28) - *(a2 + 27));
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>((a1 + 256), *(a2 + 32), *(a2 + 33), (*(a2 + 33) - *(a2 + 32)) >> 2);
  v11 = *(a2 + 408);
  v12 = *(a2 + 424);
  *(a1 + 440) = *(a2 + 55);
  *(a1 + 408) = v11;
  *(a1 + 424) = v12;
  std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator=((a1 + 448), (a2 + 28));
  v14 = a2[31];
  v13 = a2[32];
  v15 = a2[30];
  *(a1 + 528) = *(a2 + 66);
  *(a1 + 496) = v14;
  *(a1 + 512) = v13;
  *(a1 + 480) = v15;
  return a1;
}

uint64_t TTypesetter::ApplyVerticalLayout(TLine &,TCharStream const*,signed char *)::$_0::operator()(void **a1, uint64_t a2, uint64_t *a3)
{
  v22 = a2;
  v6 = (*(***a1 + 40))(**a1);
  v8 = v6;
  v9 = *a1[1];
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = v11 + v10;
  if (v6 + v7 >= v11 + v10)
  {
    v13 = v11 + v10;
  }

  else
  {
    v13 = v6 + v7;
  }

  if (v10 <= v6 && v6 < v12)
  {
    v16 = v13 - v6;
  }

  else if (v6 <= v10 && v10 < v6 + v7)
  {
    v16 = v13 - v10;
    v8 = v10;
  }

  else
  {
    v8 = 0;
    v16 = 0;
  }

  FullChar = TCharStreamIterator::GetFullChar(*a1, &v22, 0);
  IntPropertyValue = u_getIntPropertyValue(FullChar, UCHAR_VERTICAL_ORIENTATION);
  if ((FullChar & 0xFFC0) == 0x2C0 && FullChar - 711 <= 0x24 && ((1 << (FullChar + 57)) & 0x180004001DLL) != 0)
  {
    IntPropertyValue = 2;
  }

  else if (FullChar >= 0xE000 && (FullChar >> 11 < 0x1F || FullChar >= 0xF0000 && FullChar - 1114110 <= 0xFFFFFC01))
  {
    IntPropertyValue = 1;
  }

  while (++v22 < v8 + v16)
  {
    v19 = TCharStreamIterator::GetFullChar(*a1, &v22, 0);
    if (u_charType(v19) == 7)
    {
      IntPropertyValue = 3;
      goto LABEL_32;
    }
  }

  if ((IntPropertyValue - 1) <= 1)
  {
    v20 = *(*(*(*a1[1] + 216) + 16) + 2 * *(*a1[1] + 200) + 2 * TRun::GetGlyphIndexForCharIndex<false>(*a1[1], a2));
    if (*a1[2] > v20)
    {
      if (CFBitVectorGetBitAtIndex(atomic_load_explicit(a1[3], memory_order_acquire), v20))
      {
        IntPropertyValue = 3;
      }

      else
      {
        IntPropertyValue = IntPropertyValue;
      }
    }
  }

LABEL_32:
  *a3 = v8;
  a3[1] = v16;
  return IntPropertyValue;
}

void TTypesetter::SetVerticalFont(atomic_ullong *this, TRun *a2, const __CTFont *a3)
{
  TAttributes::SetVerticalFont((this + 5), a2);
  v4 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
  RenderingStyle = TAttributes::GetRenderingStyle((this + 5));

  TStorageRange::ResetAdvances((this + 24), v4, RenderingStyle & 0xFFFFFFFFFFLL);
}

void *std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::pair<UScriptCode,long> const*>,std::__wrap_iter<std::pair<UScriptCode,long> const*>>(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 <= (result[2] - *result) >> 4)
  {
    v13 = result[1];
    if (a4 <= (v13 - v8) >> 4)
    {
      while (v6 != a3)
      {
        *v8 = *v6;
        *(v8 + 1) = *(v6++ + 1);
        v8 += 16;
      }
    }

    else
    {
      v14 = (a2 + v13 - v8);
      if (v13 != v8)
      {
        do
        {
          *v8 = *v6;
          *(v8 + 1) = *(v6++ + 1);
          v8 += 16;
        }

        while (v6 != v14);
      }

      v8 = v13;
      if (v14 != a3)
      {
        v8 = v13;
        do
        {
          v15 = *v14++;
          *v13 = v15;
          v13 += 16;
          v8 += 16;
        }

        while (v14 != a3);
      }
    }
  }

  else
  {
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__vdeallocate(result);
    if (a4 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__vallocate[abi:fn200100](v7, v11);
    v8 = v7[1];
    while (v6 != a3)
    {
      v12 = *v6++;
      *v8 = v12;
      v8 += 16;
    }
  }

  v7[1] = v8;
  return result;
}

void std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__vdeallocate(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 40);
    if (a1 + 24 <= v2 && v3 > v2)
    {
      if (*(a1 + 16) == *(a1 + 40))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v4 = a1 + 5;
  result = a1[5];
  v5 = result + 16 * a2;
  if (v5 > v4)
  {
    operator new();
  }

  *v4 = v5;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 16 * a2;
  return result;
}

void *std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = *result;
  if (result[2] - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v8;
    if (v14 - v8 >= a4)
    {
      v20 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v8[v20];
    }

    else
    {
      if (v14 != v8)
      {
        result = memmove(*result, __src, v14 - v8);
        v14 = v7[1];
      }

      v16 = &v6[v15];
      v17 = v14;
      if (&v6[v15] != a3)
      {
        v17 = (&a3[v14] - v16);
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
        }

        while (v16 != a3);
      }

      i = v17;
    }
  }

  else
  {
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__vdeallocate(result);
    if ((a4 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v7[2] - *v7;
    v10 = 2 * v9;
    if (2 * v9 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__vallocate[abi:fn200100](v7, v11);
    for (i = v7[1]; v6 != a3; ++i)
    {
      v13 = *v6++;
      *i = v13;
    }
  }

  v7[1] = i;
  return result;
}

void std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__vdeallocate(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    if (a1 + 24 <= v2 && a1 + 28 > v2)
    {
      if (*(a1 + 16) == *(a1 + 32))
      {
        *(a1 + 32) = v2;
      }
    }

    else
    {
      operator delete(v2);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void *std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = *result;
  if (a4 <= (result[2] - *result) >> 2)
  {
    v14 = result[1];
    v15 = v14 - v8;
    if (a4 <= (v14 - v8) >> 2)
    {
      v20 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v8[v20];
    }

    else
    {
      if (v14 != v8)
      {
        result = memmove(*result, __src, v14 - v8);
        v14 = v7[1];
      }

      v16 = v6 + v15;
      v17 = v14;
      if (v6 + v15 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 4;
          *v18 = v19;
          v18 += 4;
          v17 += 4;
        }

        while (v16 != a3);
      }

      i = v17;
    }
  }

  else
  {
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vdeallocate(result);
    if (a4 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 1;
    if (v9 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vallocate[abi:fn200100](v7, v11);
    for (i = v7[1]; v6 != a3; i += 4)
    {
      v13 = *v6++;
      *i = v13;
    }
  }

  v7[1] = i;
  return result;
}

void VerticalFormsFeature(void)::$_0::__invoke()
{
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:4];
  v1 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], v0, [MEMORY[0x1E696AD98] numberWithUnsignedShort:0], 0, 0);
  qword_1ED567800 = atomic_exchange(&v1, 0);
}

void RotationCopyOf(__CTFont const*)::$_0::__invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:4];
  v1 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], v0, [MEMORY[0x1E696AD98] numberWithUnsignedShort:2], 0, 0);
  v2 = v1;
  v3 = @"NSCTFontFeatureSettingsAttribute";
  v4[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v2 count:1];
  qword_1ED567810 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

void std::__shared_ptr_emplace<TCallbackBidiLevelsProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF256EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

void std::__shared_ptr_emplace<TCharStreamCFString>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF256EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

void std::__shared_ptr_pointer<TBidiLevelsProvider  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__shared_ptr_pointer<TBidiLevelsProvider  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

CFTypeID CTLineGetTypeID(void)
{
  if (TCFBase<TLine>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TLine>::GetTypeID(void)::once, 0, TCFBase<TLine>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TLine>::fTypeID;
}

uint64_t TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TCFBase<TLine>::Allocate();
  if (result)
  {
    v6 = *a1;
    v5 = a1[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 48) = v6;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = result + 48;
    *(result + 56) = v5;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 112) = result + 88;
    *(result + 232) = 0;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 197) = 0;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 248) = 0;
    *(result + 256) = 0;
    *(result + 240) = 0;
    *(result + 176) = 0xFFEFFFFFFFFFFFFFLL;
  }

  *a2 = result;
  return result;
}

CFArrayRef CTLineCreateWithRunArray(CFArrayRef theArray)
{
  v1 = theArray;
  if (theArray)
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      return 0;
    }

    else
    {
      v2 = TCFBase<TLine>::Allocate();
      v3 = v2;
      if (v2)
      {
        v2[2] = 0;
        v2[3] = 0;
        v2[4] = 0;
        v2[5] = v2 + 6;
        TLine::TLine((v2 + 6), v1);
      }

      v9 = v3;
      v1 = atomic_exchange(&v9, 0);

      v4 = *(v1 + 5);
      v5 = *(v4 + 16);
      v6 = (*(v4 + 24) - v5) >> 3;
      if (v6 >= 1)
      {
        do
        {
          v7 = *v5++;
          *(*(v7 + 48) + 272) = v4;
          --v6;
        }

        while (v6);
      }
    }
  }

  return v1;
}

uint64_t CTLineCreateWithUniCharProvider(const unsigned __int16 *(*a1)(uint64_t, uint64_t *, const __CFDictionary **, void *), void (*a2)(const unsigned __int16 *, void *), void *a3)
{
  __dst[34] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memcpy(__dst, &unk_18475AF50, 0x110uLL);
    TTypesetterUniChar::TTypesetterUniChar(__dst, a1, a2, a3);
  }

  return 0;
}

uint64_t CTLineGetRunCount(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 40) + 24) - *(*(result + 40) + 16)) >> 3;
  }

  return result;
}

uint64_t CTLineGetRunAtIndex(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = *(*(result + 40) + 16);
    if (a2 >= (*(*(result + 40) + 24) - v2) >> 3)
    {
      __break(1u);
    }

    else
    {
      return *(v2 + 8 * a2);
    }
  }

  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  if (line)
  {
    v1 = *(line + 5);
    line = *(v1 + 72);
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  result.length = v2;
  result.location = line;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  if (line)
  {
    v3 = *(line + 5);
    v17.length = v3[18];
    v17.location = 0;
    TLine::GetImageBounds(v3, context, v17);
    x = v4;
    y = v6;
    width = v8;
    height = v10;
    if (context)
    {
      TextPosition = CGContextGetTextPosition(context);
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectOffset(v18, TextPosition.x, TextPosition.y);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
    }
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

CFIndex CTLineGetStringIndexForPosition(CTLineRef line, CGPoint position)
{
  if (line)
  {
    return TLine::PositionToCharIndex(*(line + 5), position);
  }

  else
  {
    return -1;
  }
}

unint64_t CTLineCopyCaretPathForStringIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  TLine::CopyCaretPath(*(a1 + 40), a2, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

unint64_t CTLineCopyHighlightPathForStringRange(uint64_t a1, CFRange a2)
{
  if (!a1)
  {
    return 0;
  }

  TLine::CopyHighlightPath(*(a1 + 40), a2, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

void CTLineDrawAttributedString(const __CFAttributedString *a1)
{
  __dst[34] = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_18475AF50, 0x110uLL);
  TTypesetterAttrString::TTypesetterAttrString(__dst, a1, 0);
}

void *CTLineCreateCopyWithAttributeOverrides(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = *(v4 + 72);
  v6 = *(v4 + 80);
  v7 = *v4;
  v8 = *(v4 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v44 = 0;
  v43 = 0u;
  *&v43 = v7[2];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = v7;
  (*(*v7 + 32))(&v31);
  MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(&v31, memory_order_acquire));
  v10 = MutableCopy;
  v11 = *(v4 + 96);
  if (v11)
  {
    v12 = *(v11 + 312);
    if (v12)
    {
      if (atomic_load_explicit((v12 + 80), memory_order_acquire))
      {
        v13 = *(v11 + 8);
        v48.length = CFAttributedStringGetLength(MutableCopy) - v13;
        v48.location = v13;
        CFAttributedStringReplaceString(v10, v48, &stru_1EF25C610);
      }
    }
  }

  v30 = v5;
  if (v6 >= 1)
  {
    v26 = v8;
    v14 = 0;
    v15 = &v5[v6];
    v16 = v5;
    do
    {
      __dst[0] = v16;
      v17 = (*(a2 + 16))(a2);
      v18 = *&__dst[0];
      if (v15 >= *(&__dst[0] + 1) + *&__dst[0])
      {
        v19 = (*(&__dst[0] + 1) + *&__dst[0]);
      }

      else
      {
        v19 = &v5[v6];
      }

      if (*&__dst[0] <= v5 && v5 < *(&__dst[0] + 1) + *&__dst[0])
      {
        v22 = v19 - v5;
        v18 = v5;
      }

      else if (v5 <= *&__dst[0] && *&__dst[0] < v15)
      {
        v22 = &v19[-*&__dst[0]];
      }

      else
      {
        v18 = 0;
        v22 = 0;
      }

      *&__dst[0] = v18;
      *(&__dst[0] + 1) = v22;
      if (v22 < 1)
      {
        TCharStreamIterator::GetFullChar(&v32, &v30, 0);
        v16 = v30 + 1;
      }

      else
      {
        effectiveRange.location = 0xAAAAAAAAAAAAAAAALL;
        effectiveRange.length = 0xAAAAAAAAAAAAAAAALL;
        Attributes = CFAttributedStringGetAttributes(v10, v18, &effectiveRange);
        if (*(&__dst[0] + 1) + *&__dst[0] > effectiveRange.length + effectiveRange.location || Attributes != v17 && (!v17 || !Attributes || !CFEqual(Attributes, v17)))
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3321888768;
          v27[2] = __CTLineCreateCopyWithAttributeOverrides_block_invoke;
          v27[3] = &__block_descriptor_56_8_32c36_ZTS6TCFRefIP20__CFAttributedStringE_e15_v32__0_8_16_B24l;
          v28 = v10;
          v29 = __dst[0];
          [(__CFDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v27];

          v14 = 1;
        }

        v16 = (*(&__dst[0] + 1) + *&__dst[0]);
      }

      v30 = v16;
    }

    while (v16 < v15);
    v8 = v26;
    if (v14)
    {
      memcpy(__dst, &unk_18475AF50, sizeof(__dst));
      TTypesetterAttrString::TTypesetterAttrString(__dst, v10, 0);
    }
  }

  v24 = a1;

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v8);
  }

  return v24;
}

void __CTLineCreateCopyWithAttributeOverrides_block_invoke(uint64_t a1, const __CFString *a2, const void *a3)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  explicit = atomic_load_explicit((a1 + 32), memory_order_acquire);
  v8 = *(a1 + 40);
  if (isKindOfClass)
  {

    CFAttributedStringRemoveAttribute(explicit, v8, a2);
  }

  else
  {

    CFAttributedStringSetAttribute(explicit, v8, a2, a3);
  }
}

id __copy_helper_block_8_32c36_ZTS6TCFRefIP20__CFAttributedStringE(uint64_t a1, uint64_t a2)
{
  result = atomic_load_explicit((a2 + 32), memory_order_acquire);
  *(a1 + 32) = result;
  return result;
}

void _CTLineEnumerateDecorations(uint64_t a1, CGContext *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    v7 = 0xAAAAAAAA00000000;
    v8 = a4;
    v6 = -1;
    v5[0] = xmmword_18475AEF8;
    memset(&v5[1], 255, 64);
    TLineDrawContext::TLineDrawContext(v5, a2);
    TLine::DrawGlyphsWithAttributeOverrides(v4, v5);
  }
}

uint64_t CTLineIsRightToLeft(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 40) + 152) >> 3) & 1;
  }

  return result;
}

uint64_t CTLineHasBidiLevels(uint64_t result)
{
  if (result)
  {
    return *(*(result + 40) + 152) & 1;
  }

  return result;
}

uint64_t **CTLineCreateTruncatedLineWithTokenCallback(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v6 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CTLineCreateTruncatedLineWithTokenCallback_block_invoke;
    v8[3] = &__block_descriptor_48_e58_____CTRun__32__0____CTLine__8____qq_16____CFDictionary__24l;
    v8[4] = a3;
    v8[5] = a4;
  }

  else
  {
    v6 = 0;
  }

  return CreateTruncatedLine(a1, a2, 0, v6, a5);
}

void CTLineSyncWithRuns(uint64_t a1)
{
  if (a1)
  {
    TLine::SyncWithRuns(*(a1 + 40));
  }
}

CFIndex CTLineSuggestLineBreakWithOffset(CFIndex result, const TLine *a2, double a3, double a4, uint64_t a5, uint64_t *a6)
{
  if (result)
  {
    return TTypesetter::SuggestLineBreak(*(result + 40), a2, 0, a3, a4, a6);
  }

  return result;
}

CFIndex TTypesetter::SuggestLineBreak(TTypesetter *this, const TLine *a2, uint64_t a3, double a4, double a5, uint64_t *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v9[0] = this;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  v10[0] = 0;
  *(v10 + 6) = 0;
  v10[2] = a3;
  v12 = 0;
  v7 = TTypesetter::SuggestLineBreak(v9, a2, v11, a4, a5);
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v11);
  return v7;
}

uint64_t CTLineSuggestClusterBreakWithOffset(uint64_t result, const TLine *a2, double a3, double a4, uint64_t a5, uint64_t *a6)
{
  if (result)
  {
    return TTypesetter::SuggestClusterBreak(*(result + 40), a2, 0, a3, a4, a6);
  }

  return result;
}

CFIndex CTLineSuggestLineBreakWithTabOverflow(CFIndex result, const TLine *a2, uint64_t *a3, uint64_t *a4, double a5, double a6)
{
  if (result)
  {
    v7 = *(result + 40);
    v8 = -1;
    result = TTypesetter::SuggestLineBreak(v7, a2, &v8, a5, a6, a4);
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

void *TCFBase<TLine>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

void TCFBase<TLine>::ClassDebug(uint64_t a1)
{
  TLine::DebugDescription(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTLine", a1, v2);
    CFRelease(v3);
  }
}

void std::__shared_ptr_pointer<TCharStreamCFString  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__shared_ptr_pointer<TCharStreamCFString  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

void *std::__function::__func<void({block_pointer})(double,long,BOOL,BOOL *),std::allocator<void({block_pointer})(double,long,BOOL,BOOL *)>,void ()(double,long,BOOL,BOOL *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1EF256F88;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void TLine::TLine(TLine *this, const __CFArray *a2)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = this + 40;
  *(this + 184) = 0;
  *(this + 120) = 0u;
  *(this + 149) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0xFFEFFFFFFFFFFFFFLL;
  *(this + 77) = 1;
  TLine::SetRunArray(this, a2);
  for (i = *(this + 2); ; i += 8)
  {
    if (i == *(this + 3))
    {
      operator new();
    }

    v4 = *(*(*i + 40) + 272);
    if (v4)
    {
      break;
    }
  }

  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 1);
  *this = v6;
  *(this + 1) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v7);
  }
}

uint64_t TLine::operator==(uint64_t result, void *a2)
{
  if (*(result + 72) != a2[9] || *(result + 80) != a2[10])
  {
    return 0;
  }

  v4 = result;
  if (*(result + 144) != a2[18])
  {
    return 0;
  }

  v5 = *(result + 24) - *(result + 16);
  if (v5 != a2[3] - a2[2])
  {
    return 0;
  }

  v6 = v5 >> 3;
  v7 = v6 - 1;
  if (v6 < 1)
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    v9 = *(v4 + 16);
    if (i >= (*(v4 + 24) - v9) >> 3)
    {
      break;
    }

    v10 = a2[2];
    if (i >= (a2[3] - v10) >> 3)
    {
      break;
    }

    result = TRun::operator==(*(*(v9 + 8 * i) + 40), *(*(v10 + 8 * i) + 40));
    if (result)
    {
      v11 = v7 == i;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void TLine::DebugDescription(TLine *this)
{
  v2 = (*(this + 3) - *(this + 2)) >> 3;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  NonDeletedGlyphCount = TLine::GetNonDeletedGlyphCount(this);
  v6 = CFStringCreateWithFormat(v3, 0, @"(%ld, %ld)", *(this + 9), *(this + 10));
  CFStringAppendFormat(Mutable, 0, @"run count = %ld, string range = %@, width = %lg, A/D/L = %g/%g/%g, glyph count = %ld, runs = (\n"), v2, v6, *(this + 13), *(this + 14), *(this + 15), *(this + 16), NonDeletedGlyphCount;

  if (v2 < 1)
  {
LABEL_8:
    CFStringAppend(Mutable, @"\n"));
  }

  else
  {
    v7 = 0;
    while (1)
    {
      CFStringAppend(Mutable, @"\n");
      v8 = *(this + 2);
      if (v7 >= (*(this + 3) - v8) >> 3)
      {
        break;
      }

      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        CFStringAppendFormat(Mutable, 0, @"%@", v9);
        v10 = @"\n\n";
      }

      else
      {
        v10 = @"<null CTRun?!>\n\n";
      }

      CFStringAppend(Mutable, v10);
      if (v2 == ++v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

id TLine::CopyDescriptionDictionary(TLine *this, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = (*(this + 3) - *(this + 2)) >> 3;
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v6), @"numRuns"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", *(this + 18)), @"numGlyphs"}];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(this + 2);
      if (i >= (*(this + 3) - v8) >> 3)
      {
        __break(1u);
      }

      v9 = *(*(v8 + 8 * i) + 40);
      v10 = (*(*v9 + 16))(v9, a2);
      [v5 addObject:v10];
      CFRelease(v10);
    }
  }

  [v4 setObject:v5 forKey:@"runs"];
  if ((a2 & 2) != 0)
  {
    v12[0] = @"ascent";
    v13[0] = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 14)];
    v12[1] = @"descent";
    v13[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 15)];
    v12[2] = @"leading";
    v13[2] = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 16)];
    v12[3] = @"width";
    v13[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 13)];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v13, v12, 4), @"lineMetrics"}];
  }

  return v4;
}

uint64_t TLine::PositionToCharIndex(TLine *this, CGPoint a2)
{
  if (!*this || *(this + 3) == *(this + 2))
  {
    return -1;
  }

  x = a2.x;
  TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
  if (v4 == 0.0)
  {
    v5 = x;
  }

  else
  {
    v5 = x + v4;
  }

  if (v5 >= 0.0)
  {
    operator new();
  }

  result = *(this + 9);
  if ((*(this + 76) & 8) != 0)
  {
    result += *(this + 10);
  }

  return result;
}

uint64_t TLine::GetWidthOfRuns(uint64_t this, CFRange a2)
{
  if (a2.length >= 1)
  {
    v2 = a2.location + a2.length;
    v3 = *(this + 16);
    v4 = (*(this + 24) - v3) >> 3;
    v5 = v4 >= a2.location;
    v6 = v4 - a2.location;
    if (!v5)
    {
      v6 = 0;
    }

    if (v2 <= a2.location + 1)
    {
      v2 = a2.location + 1;
    }

    if (v6 <= v2 + ~a2.location)
    {
      __break(1u);
    }

    else
    {
      v7 = v2 - a2.location;
      v8 = (v3 + 8 * a2.location);
      v9 = 0.0;
      do
      {
        v10 = *v8++;
        v11 = *(v10 + 40);
        v12 = *(v11 + 192);
        v13 = *(v11 + 312);
        if (!v13)
        {
          v13 = MEMORY[0x1E695F060];
        }

        v9 = v9 + v12 + *v13;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

void TLine::CopyCaretPath(TLine *this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (!*this || *(this + 3) == *(this + 2))
  {
    *a3 = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    if (explicit)
    {
      v7 = *(this + 14);
      v8 = *(this + 15);
      TLine::CharIndexToOffsets(this, a2);
      if (v9 == v10)
      {
        v11 = -v8;
        v12 = v7 + v8;
        v13 = atomic_load_explicit(&Mutable, memory_order_acquire);
      }

      else
      {
        v14 = v10;
        v12 = (v7 + v8) * 0.5;
        v11 = -v8;
        v15 = v12 - v8;
        v16 = 1.0;
        v17 = v12;
        CGPathAddRect(atomic_load_explicit(&Mutable, memory_order_acquire), 0, *&v9);
        v13 = atomic_load_explicit(&Mutable, memory_order_acquire);
        v9 = v14;
      }

      v18 = 1.0;
      v19 = v11;
      v20 = v12;
      CGPathAddRect(v13, 0, *&v9);
      explicit = atomic_exchange(&Mutable, 0);
    }

    *a3 = explicit;
  }
}

void TLine::CopyHighlightPath(TLine *this@<X0>, CFRange a2@<0:X1, 8:X2>, unint64_t *a3@<X8>)
{
  if (!*this || ((location = a2.location, v6 = *(this + 9), v7 = *(this + 10), v8 = v7 + v6, a2.location + a2.length >= v7 + v6) ? (v9 = v7 + v6) : (v9 = a2.location + a2.length), v6 <= a2.location ? (v10 = a2.location < v8) : (v10 = 0), v10 ? (v12 = v9 - a2.location) : (a2.location <= v6 ? (v11 = v6 < a2.location + a2.length) : (v11 = 0), v11 ? (v12 = v9 - v6, location = *(this + 9)) : (location = 0, v12 = 0)), v12 <= 0 || (v14 = *(this + 2), v13 = *(this + 3), v15 = v13 - v14, v13 == v14)))
  {
    *a3 = 0;
    return;
  }

  Mutable = CGPathCreateMutable();
  explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (!explicit)
  {
    goto LABEL_44;
  }

  v17 = *(this + 2);
  if (*(this + 3) != v17)
  {
    v43 = a3;
    v18 = v15 >> 3;
    v19 = *(*(*v17 + 40) + 312);
    if (!v19)
    {
      v19 = MEMORY[0x1E695F060];
    }

    v20 = *v19;
    TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
    v44 = v18;
    if (v18 >= 1)
    {
      v22 = 0;
      v23 = *(this + 15);
      v24 = -v23;
      v25 = v23 + *(this + 14);
      if (v21 != 0.0)
      {
        v20 = v20 - v21;
      }

      v26 = location + v12;
      do
      {
        v27 = *(this + 2);
        if (v22 >= (*(this + 3) - v27) >> 3)
        {
          goto LABEL_46;
        }

        v28 = *(*(v27 + 8 * v22) + 40);
        v29 = v28[27];
        v30 = v29[4];
        if (v30 || (v34 = v29[3]) == 0)
        {
          v31 = 0;
          v32 = v28[25];
          v33 = (v30 + 16 * v32);
        }

        else
        {
          v32 = v28[25];
          v33 = (v34 + 8 * v32);
          v31 = 1;
        }

        v35 = v28[26];
        if (v35 >= 1)
        {
          v36 = (v29[6] + 8 * v32);
          v37 = v33;
          do
          {
            v39 = *v36++;
            v38 = v39;
            if (v31)
            {
              v40 = v33;
            }

            else
            {
              v40 = v37;
            }

            v41 = *v40;
            if (location <= v38 && v26 > v38)
            {
              v46.origin.x = v20;
              v46.origin.y = v24;
              v46.size.width = *v40;
              v46.size.height = v25;
              CGPathAddRect(atomic_load_explicit(&Mutable, memory_order_acquire), 0, v46);
            }

            v20 = v20 + v41;
            v37 += 2;
            ++v33;
            --v35;
          }

          while (v35);
        }
      }

      while (++v22 != v44);
    }

    explicit = atomic_exchange(&Mutable, 0);
    a3 = v43;
LABEL_44:
    *a3 = explicit;

    return;
  }

LABEL_46:
  __break(1u);
}

void TLine::DrawTransformedGlyphs(TLine *this, CGContextRef c)
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *&v58.c = v4;
  *&v58.tx = v4;
  *&v58.a = v4;
  CGContextGetTextMatrix(&v58, c);
  TLine::DrawBackground(this, c);
  v7 = *(this + 2);
  v6 = *(this + 3);
  v8 = (v6 - v7) >> 3;
  if (v6 == v7)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    v9 = *(*v7 + 40);
    v10 = *(v9 + 312);
    if (!v10 || *(v10 + 56) == *(v10 + 64))
    {
      goto LABEL_7;
    }

    t1.a = -3.72066208e-103;
    TAttributes::CopyForegroundColorForContext((v9 + 40), c, v5, &t1);
    if (atomic_load_explicit(&t1, memory_order_acquire))
    {
      if (CGColorGetAlpha(atomic_load_explicit(&t1, memory_order_acquire)) < 1.0)
      {
        break;
      }
    }

LABEL_7:
    v7 += 8;
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_9:
  if (v8 < 1)
  {
    v13 = 0;
    v12 = 0;
LABEL_30:
    tx = v58.tx;
    ty = v58.ty;
    TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
    if (v48 != 0.0)
    {
      tx = tx - v48;
    }

    if (v12)
    {
      CGContextSetTextPosition(c, tx, ty);
      t2.a = -3.72066066e-103;
      t2.b = 0.0;
      t1 = *__const__ZN10TDecorator14DrawDecorationEP9CGContextRK5TLinePK13TInlineVectorI18DecorationOverrideLm30EE_c;
      v61 = unk_184778468;
      v62 = xmmword_184778478;
      v63 = -1;
      TLineDrawContext::TLineDrawContext(&t1, c);
      TDecorator::DrawDecoration(&t2, &t1, this, 0);
    }

    if (v13)
    {
      CGContextSetTextPosition(c, tx, ty);
      t2.a = -3.72066066e-103;
      t2.b = 0.0;
      t1 = *__const__ZN10TDecorator14DrawDecorationEP9CGContextRK5TLinePK13TInlineVectorI18DecorationOverrideLm30EE_c;
      v61 = unk_184778468;
      v62 = xmmword_184778478;
      v63 = -1;
      TLineDrawContext::TLineDrawContext(&t1, c);
      TDecorator::DrawDecoration(&t2, &t1, this, 0);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v49 = vdupq_n_s64(0x3CB0000000000000uLL);
    _D12 = 0;
    while (1)
    {
      v16 = *(this + 2);
      if (v14 >= (*(this + 3) - v16) >> 3)
      {
        break;
      }

      v17 = *(v16 + 8 * v14);
      v18 = *(v17 + 40);
      v19 = v18[13].n128_u64[0];
      if (v11)
      {
        *&v20 = -1;
        *(&v20 + 1) = -1;
        *&v57.c = v20;
        *&v57.tx = v20;
        *&v57.a = v20;
        v21 = v18 + 6;
        if (!v18[9].n128_u8[0])
        {
          v21 = MEMORY[0x1E695EFD0];
        }

        v22 = v21[1];
        *&t2.a = *v21;
        *&t2.c = v22;
        *&t2.tx = v21[2];
        t1 = v58;
        CGAffineTransformConcat(&v57, &t1, &t2);
        *&t1.a = *&v57.a;
        *&t1.c = *&v57.c;
        *&t1.tx = *&v58.tx;
        CGContextSetTextMatrix(c, &t1);
        Positions = TRun::GetPositions(v18, 0);
        t1.a = -3.72066208e-103;
        t1.b = 0.0;
        t1.c = -3.72066208e-103;
        (*(v18->n128_u64[0] + 40))(v18, c, 0, v19, v24, &t1, Positions);
      }

      else
      {
        v64.location = 0;
        v64.length = v18[13].n128_i64[0];
        TRun::DrawBackground(*(v17 + 40), c, v64, 0, 1);
        v52 = *&v58.a;
        v54 = *&v58.c;
        v26 = v58.tx;
        v25 = v58.ty;
        *&v27 = -1;
        *(&v27 + 1) = -1;
        *&v57.c = v27;
        *&v57.tx = v27;
        *&v57.a = v27;
        CGContextGetCTM(&v57, c);
        _V4.D[1] = v52.f64[1];
        v29 = vandq_s8(vcgeq_f64(v49, vabsq_f64(vaddq_f64(v54, xmmword_18475B150))), vcgeq_f64(v49, vabsq_f64(vaddq_f64(v52, xmmword_18475B140))));
        if ((vandq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0)
        {
          v41 = v57.tx;
          v40 = v57.ty;
          v53 = *&v57.a;
          v55 = *&v57.c;
          CGAffineTransformMakeTranslation(&t1, v26, v25);
        }

        else
        {
          __asm { FMLA            D1, D12, V4.D[1]; __y }

          v35 = hypot(v54.f64[0] + v52.f64[0] * 0.0, _D1);
          v36 = 1.0;
          if (v35 <= 1.0)
          {
            v39 = v52;
            v38 = v54;
          }

          else
          {
            v37 = v35;
            *&t1.a = v52;
            *&t1.c = v54;
            t1.tx = v26;
            t1.ty = v25;
            CGAffineTransformScale(&t2, &t1, 1.0 / v35, 1.0 / v35);
            v39 = *&t2.a;
            v38 = *&t2.c;
            v36 = v37;
            v26 = t2.tx;
            v25 = t2.ty;
          }

          *&t1.a = v39;
          *&t1.c = v38;
          t1.tx = v26;
          t1.ty = v25;
          t2 = v57;
          CGAffineTransformConcat(&v56, &t1, &t2);
          v53 = *&v56.a;
          v55 = *&v56.c;
          v41 = v56.tx;
          v40 = v56.ty;
          CGAffineTransformMakeScale(&t1, v36, v36);
        }

        v50 = *&t1.a;
        v51 = *&t1.c;
        v42 = t1.tx;
        v43 = t1.ty;
        CGContextSaveGState(c);
        CGContextBeginTransparencyLayer(c, 0);
        *&t1.a = v50;
        *&t1.c = v51;
        t1.tx = v42;
        t1.ty = v43;
        *&t2.a = v53;
        *&t2.c = v55;
        t2.tx = v41;
        t2.ty = v40;
        CGAffineTransformConcat(&v56, &t1, &t2);
        CGContextSetCTM();
        t1.a = -3.72066208e-103;
        (*(v18->n128_u64[0] + 32))(&t1, v18);
        CGContextAddPath(c, atomic_load_explicit(&t1, memory_order_acquire));
        v44 = TAttributes::SetContextAttributes(&v18[2].n128_i64[1], c, 0);
        CGContextFillPath(c);
        if (v44)
        {
          CGContextRestoreGState(c);
        }

        CGContextEndTransparencyLayer(c);

        CGContextRestoreGState(c);
      }

      v45 = v18[10].n128_u64[0];
      if (v45)
      {
        v12 |= *(v45 + 56) != 0;
        LOBYTE(v45) = *(v45 + 60) != 0;
      }

      v13 |= v45;
      t1 = v58;
      CGContextSetTextMatrix(c, &t1);
      if (v8 == ++v14)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }
}

void TLine::DrawUnderlines(TLine *this, CGContext *a2)
{
  v3[0] = 0xAAAAAAAA00000000;
  v3[1] = 0;
  v5 = -1;
  v4[0] = *__const__ZN10TDecorator14DrawDecorationEP9CGContextRK5TLinePK13TInlineVectorI18DecorationOverrideLm30EE_c;
  memset(&v4[1], 255, 64);
  TLineDrawContext::TLineDrawContext(v4, a2);
  TDecorator::DrawDecoration(v3, v4, this, 0);
}

void TLine::DrawStrikethroughs(TLine *this, CGContext *a2)
{
  v3[0] = 0xAAAAAAAA00000001;
  v3[1] = 0;
  v5 = -1;
  v4[0] = *__const__ZN10TDecorator14DrawDecorationEP9CGContextRK5TLinePK13TInlineVectorI18DecorationOverrideLm30EE_c;
  memset(&v4[1], 255, 64);
  TLineDrawContext::TLineDrawContext(v4, a2);
  TDecorator::DrawDecoration(v3, v4, this, 0);
}

unint64_t TLine::DeleteChars(unint64_t this, uint64_t a2, const uint64_t *a3)
{
  if (a2 >= 1)
  {
    v3 = this;
    if (*(this + 24) != *(this + 16))
    {
      v6 = 0;
      v7 = a3 + 1;
      while (1)
      {
        this = TLine::FindRunWithCharIndex(v3, a3[v6], 1);
        v8 = v3[2];
        if (this >= (v3[3] - v8) >> 3)
        {
          break;
        }

        v9 = this;
        v10 = *(*(v8 + 8 * this) + 48);
        v11 = *(v10 + 26);
        if (a2 <= v6 + 1)
        {
          v12 = v6 + 1;
        }

        else
        {
          v12 = a2;
        }

        v13 = v6;
        while (v12 - 1 != v13)
        {
          v14 = v13 + 1;
          v15 = v7[v13++];
          if (v15 >= *(v10 + 2) + *(v10 + 1))
          {
            goto LABEL_13;
          }
        }

        v14 = v12;
LABEL_13:
        this = TRun::DeleteChars(v10, v14 - v6, &a3[v6], v3[9]);
        v3[18] += *(v10 + 26) - v11;
        if (this >= 1)
        {
          this = TLine::AttachToPreviousRun(v3, v9, this);
        }

        v6 = v14;
        if (v14 >= a2)
        {
          return this;
        }
      }

      __break(1u);
    }
  }

  return this;
}

unint64_t TLine::AttachToPreviousRun(unint64_t this, unint64_t a2, uint64_t a3)
{
  v3 = *(this + 16);
  if (a2 < (*(this + 24) - v3) >> 3)
  {
    v5 = this;
    v6 = *(*(v3 + 8 * a2) + 48);
    v7 = v6[26];
    if (!v7)
    {
      TLine::DeleteRun(this, a2);
      return v7 == 0;
    }

    v8 = v6[1];
    if (v8 <= *(this + 72))
    {
      return v7 == 0;
    }

    v10 = v6[2];
    this = TLine::FindRunWithCharIndex(this, v8 - 1, 1);
    if (this == a2)
    {
      return v7 == 0;
    }

    v6[1] = v8 + a3;
    v6[2] = v10 - a3;
    v11 = *(v5 + 16);
    if (this < (*(v5 + 24) - v11) >> 3)
    {
      v12 = *(*(v11 + 8 * this) + 48);
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      TRun::IncrementAttachCountForChar(v12, v8 - 1, a3);
      *(v12 + 8) = v13;
      *(v12 + 16) = v14 + a3;
      return v7 == 0;
    }
  }

  __break(1u);
  return this;
}

unint64_t TLine::GetMappedCharsInRange(unint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  a4[1] = *a4;
  result = TLine::FindRunWithCharIndex(a1, a2, 1);
  v9 = *(a1 + 16);
  if (result >= (*(a1 + 24) - v9) >> 3)
  {
    __break(1u);
  }

  else
  {
    v10 = *(*(v9 + 8 * result) + 40);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v12 + v11;
    if (v12 + v11 >= a2 + a3)
    {
      v14 = a2 + a3;
    }

    else
    {
      v14 = v12 + v11;
    }

    if (a2 <= v11 && v11 < a2 + a3)
    {
      v17 = v14 - v11;
    }

    else if (v11 <= a2 && a2 < v13)
    {
      v17 = v14 - a2;
      v11 = a2;
    }

    else
    {
      v11 = 0;
      v17 = 0;
    }

    result = TRun::AppendMappedCharsInRange(v10, v11, v17, a4);
    v18 = a3 - v17;
    if (result)
    {
      v19 = v18 < 1;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      do
      {
        v10 = v10[3];
        if (!v10)
        {
          break;
        }

        v20 = v10[2] >= v18 ? v18 : v10[2];
        result = TRun::AppendMappedCharsInRange(v10, v10[1], v20, a4);
        v18 -= v20;
      }

      while (result && v18 > 0);
    }
  }

  return result;
}

BOOL TLine::SplitRun(_BOOL8 result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = (result + 16);
  if (a2 >= (*(result + 24) - v3) >> 3)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = *(v3 + 8 * a2);
    v9 = *(v8 + 48);
    v10 = *(v9 + 1);
    v17 = 0xAAAAAAAAAAAAAAAALL;
    (*(v8 + 64))(&v17);
    v11 = *(atomic_load_explicit(&v17, memory_order_acquire) + 48);
    v12 = v11[26];
    if (v12 >= 1)
    {
      v13 = *(v9 + 4);
      v14 = (v7 + 88);
      if (v13)
      {
        v14 = (v13 + 24);
      }

      *v14 = v11;
      v11[3] = v9;
      v11[4] = v13;
      *(v9 + 4) = v11;
      explicit = atomic_load_explicit(&v17, memory_order_acquire);
      v16 = (*(v7 + 16) + 8 * a2);
      v18 = explicit;
      std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(v4, v16, &v18);
      TRun::TruncateBeginToChar(v9, v10 + a3);
    }

    return v12 > 0;
  }

  return result;
}

uint64_t TLine::AbsorbRunFollowing(TLine *this, unint64_t a2)
{
  v2 = a2 + 1;
  v3 = *(this + 2);
  v4 = *(this + 3) - v3;
  if ((a2 + 1) >= v4 >> 3)
  {
    return 0;
  }

  v5 = v4 >> 3;
  if (v5 <= a2 || v5 <= v2)
  {
    __break(1u);
    return 0;
  }

  v7 = *(*(v3 + 8 * a2) + 48);
  v8 = *(*(v3 + 8 * v2) + 48);
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);
  result = TRun::AbsorbFollowingRun(v7, v8);
  if (result)
  {
    v12 = *(v7 + 1);
    if (v9 >= v12)
    {
      v13 = *(v7 + 1);
    }

    else
    {
      v13 = v9;
    }

    v14 = *(v7 + 2) + v12;
    if (v14 <= v10 + v9)
    {
      v14 = v10 + v9;
    }

    *(v7 + 1) = v13;
    *(v7 + 2) = v14 - v13;
    TLine::SimpleRunDelete(this, v2);
    return 1;
  }

  return result;
}

unint64_t TLine::NormalizeRange(TLine *this, CFRange a2, uint64_t *a3, unint64_t *a4)
{
  length = a2.length;
  location = a2.location;
  *a3 = 0;
  while (1)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = TLine::FindRunWithCharIndex(this, location, 1);
    *a4 = result;
    v10 = *(this + 2);
    if (result >= (*(this + 3) - v10) >> 3)
    {
      break;
    }

    v11 = *(*(v10 + 8 * result) + 40);
    v14.location = location;
    v14.length = length;
    result = TRun::NormalizeRange(v11, v14, &v13);
    location = result;
    length = v12;
    *a3 += v13;
    if (!v12 || *(v11 + 2) + *(v11 + 1) > result)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t TLine::SetLevelRange(void *a1, CFRange a2, char a3, int a4)
{
  v4 = a1 + 2;
  if (a1[3] == a1[2])
  {
    return 0;
  }

  length = a2.length;
  location = a2.location;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  result = TLine::NormalizeRange(a1, a2, &v48, &v47);
  v12 = a1[2];
  if (v47 >= ((a1[3] - v12) >> 3))
  {
LABEL_39:
    __break(1u);
  }

  else
  {
    if (v11 >= 1)
    {
      v13 = *(*(*(v12 + 8 * v47) + 48) + 8);
      if (result != v13)
      {
        TLine::SplitRun(a1, v47, result - v13);
      }
    }

    if (length >= 1)
    {
      do
      {
        v50.location = location;
        v50.length = length;
        result = TLine::NormalizeRange(a1, v50, &v48, &v47);
        v15 = v48;
        if (v48 < 1)
        {
          break;
        }

        if (v14 >= 1)
        {
          v16 = a1[2];
          if (v47 >= ((a1[3] - v16) >> 3))
          {
            goto LABEL_39;
          }

          v17 = *(v16 + 8 * v47);
          v18 = *(v17 + 48);
          v19 = *(v18 + 16);
          if (v48 < v19)
          {
            v24 = *(v18 + 8);
            v51.location = location;
            v51.length = length;
            result = TLine::NormalizeRange(a1, v51, &v48, &v47);
            if (v25 >= 1)
            {
              v26 = v47;
              v27 = a1[2];
              if (v47 >= ((a1[3] - v27) >> 3))
              {
                goto LABEL_39;
              }

              v28 = v25;
              if (a4 == 1)
              {
                v29 = result;
                v30 = *(v27 + 8 * v47);
                v41 = *(v30 + 48);
                v42 = v24;
                v45 = 0xAAAAAAAAAAAAAAAALL;
                (*(v30 + 64))(&v45, v30, result, v25, 1);
                v31 = *(atomic_load_explicit(&v45, memory_order_acquire) + 48);
                if (*(v31 + 208) >= 1)
                {
                  v32 = [*(v31 + 216) copyWithRange:*(v31 + 200)];

                  *(v31 + 216) = v32;
                  *(v31 + 200) = 0;
                  if ((*(v31 + 224) & 1) != (a3 & 1))
                  {
                    TRun::ReverseGlyphs(v31);
                  }

                  *(v31 + 224) = a3;
                  explicit = atomic_load_explicit(&v45, memory_order_acquire);
                  v34 = v47;
                  v35 = ++v47;
                  v36 = (a1[2] + 8 * v34);
                  v49 = explicit;
                  std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(v4, v36, &v49);
                  v37 = *(v41 + 32);
                  v38 = (v37 + 24);
                  if (!v37)
                  {
                    v38 = a1 + 11;
                  }

                  *v38 = v31;
                  *(v31 + 24) = v41;
                  *(v31 + 32) = v37;
                  *(v41 + 32) = v31;
                  v49 = 0xAAAAAAAAAAAAAAAALL;
                  (*(v30 + 64))(&v49, v30, v29 + v28, v19 + v42 - (v29 + v28), 1);
                  v43 = atomic_exchange(&v49, 0);
                  TLine::ReplaceRun(a1, v35, &v43, &v44);
                }
              }

              else
              {
                result = TLine::SplitRun(a1, v47, v25);
                v39 = a1[2];
                if (v26 >= (a1[3] - v39) >> 3)
                {
                  goto LABEL_39;
                }

                v40 = *(*(v39 + 8 * v26) + 48);
                if ((*(v40 + 224) & 1) != (a3 & 1))
                {
                  TRun::ReverseGlyphs(v40);
                }

                *(v40 + 224) = a3;
              }
            }

            length -= v48;
            return -length;
          }

          if (a4 == 1)
          {
            v49 = 0xAAAAAAAAAAAAAAAALL;
            (*(v17 + 56))(&v49);
            v20 = *(atomic_load_explicit(&v49, memory_order_acquire) + 48);
            v21 = [*(v20 + 216) copyWithRange:{*(v20 + 200), *(v20 + 208)}];

            *(v20 + 216) = v21;
            *(v20 + 200) = 0;
            if ((*(v20 + 224) & 1) != (a3 & 1))
            {
              TRun::ReverseGlyphs(v20);
            }

            *(v20 + 224) = a3;
            v22 = v47;
            v45 = atomic_exchange(&v49, 0);
            TLine::ReplaceRun(a1, v22, &v45, &v46);

            v15 = v48;
          }

          else
          {
            if ((*(v18 + 224) & 1) != (a3 & 1))
            {
              TRun::ReverseGlyphs(*(v17 + 48));
            }

            *(v18 + 224) = a3;
          }
        }

        location += v15;
        v23 = length <= v15;
        length -= v15;
      }

      while (!v23);
    }

    return -length;
  }

  return result;
}

uint64_t TLine::SeparateCharWithGlyphIndex(TLine *this, uint64_t *a2, uint64_t a3)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(this + 2);
  v5 = this + 16;
  v6 = *(this + 3) - v4;
  if (*a2 >= v6 >> 3)
  {
    return 0;
  }

  if (v6 >> 3 <= v3)
  {
    goto LABEL_70;
  }

  v77 = *(v4 + 8 * v3);
  v8 = *(v77 + 48);
  v81 = v8;
  v9 = *(v8 + 216);
  v10 = *(v8 + 200);
  if ((*(v9[5] + 4 * v10 + 4 * a3) & 0x380) != 0)
  {
    return 0;
  }

  v12 = *(v9[6] + 8 * v10 + 8 * a3);
  v13 = [v9 attachmentCountAtIndex:v10 + a3] + 1;
  v78 = v13;
  v74 = a2;
  if (a3 < 1)
  {
    v16 = 0;
    v17 = -1;
  }

  else
  {
    v14 = *(v8 + 216);
    v15 = *(v14[6] + 8 * *(v8 + 200));
    v16 = [v14 attachmentCountAtIndex:?] + 1;
    if (a3 != 1)
    {
      v18 = v13 + v12;
      v19 = 1;
      while (1)
      {
        v20 = *(v8 + 216);
        v21 = *(v8 + 200);
        v22 = *(v20[6] + 8 * v21 + 8 * v19);
        if (v12 <= v22 && v18 > v22)
        {
          break;
        }

        v24 = [v20 attachmentCountAtIndex:v19 + v21];
        if (v22 >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v22;
        }

        v25 = v15 + v16;
        if (v15 + v16 <= v22 + v24 + 1)
        {
          v25 = v22 + v24 + 1;
        }

        v16 = v25 - v17;
        ++v19;
        v15 = v17;
        if (a3 == v19)
        {
          goto LABEL_20;
        }
      }
    }

    v17 = v15;
  }

LABEL_20:
  v75 = a3;
  v76 = v5;
  v26 = a3 + 1;
  v72 = a3 + 1;
  if (a3 + 1 >= *(v8 + 208))
  {
    v32 = v12;
    v30 = 0;
    v39 = -1;
  }

  else
  {
    v27 = *(v8 + 216);
    v28 = *(v8 + 200);
    v29 = *(v27[6] + 8 * v28 + 8 * v26);
    v30 = [v27 attachmentCountAtIndex:v28 + v26] + 1;
    v31 = a3 + 2;
    if (a3 + 2 >= *(v8 + 208))
    {
      v32 = v12;
    }

    else
    {
      v32 = v12;
      v33 = v78 + v12;
      while (1)
      {
        v34 = *(v8 + 216);
        v35 = *(v8 + 200);
        v36 = *(v34[6] + 8 * v35 + 8 * v31);
        if (v32 <= v36 && v33 > v36)
        {
          break;
        }

        v38 = [v34 attachmentCountAtIndex:v31 + v35];
        if (v36 >= v29)
        {
          v39 = v29;
        }

        else
        {
          v39 = v36;
        }

        v40 = v29 + v30;
        if (v29 + v30 <= v36 + v38 + 1)
        {
          v40 = v36 + v38 + 1;
        }

        v30 = v40 - v39;
        ++v31;
        v29 = v39;
        if (v31 >= *(v8 + 208))
        {
          goto LABEL_38;
        }
      }
    }

    v39 = v29;
  }

LABEL_38:
  if (!(v16 | v30))
  {
    return 0;
  }

  v85 = 0;
  memset(v86, 170, sizeof(v86));
  v83 = 0;
  v84 = 0;
  v87[0] = v86;
  std::vector<TRun *,TInlineBufferAllocator<TRun *,3ul>>::push_back[abi:fn200100](&v83, &v81);
  v41 = *(v8 + 224);
  if (v16 >= 1)
  {
    v80 = 0xAAAAAAAAAAAAAAAALL;
    (*(v77 + 56))(&v80);
    v42 = *(atomic_load_explicit(&v80, memory_order_acquire) + 48);
    v79 = v42;
    *(v42 + 1) = v17;
    *(v42 + 2) = v16;
    v88.location = 0;
    v88.length = v75;
    TRun::TruncateStorageRange(v42, v88);
    explicit = atomic_load_explicit(&v80, memory_order_acquire);
    v44 = *v74;
    if (v41)
    {
      v50 = *v76 + 8 * v44;
      v82 = explicit;
      v48 = (v50 + 8);
      v47 = v76;
    }

    else
    {
      *v74 = v44 + 1;
      v45 = v41;
      v46 = *v76 + 8 * v44;
      v82 = explicit;
      v47 = v76;
      v48 = v46;
      v41 = v45;
    }

    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(v47, v48, &v82);
    std::vector<TRun *,TInlineBufferAllocator<TRun *,3ul>>::push_back[abi:fn200100](&v83, &v79);
  }

  if (v30 >= 1)
  {
    v80 = 0xAAAAAAAAAAAAAAAALL;
    (*(v77 + 56))(&v80);
    v51 = *(atomic_load_explicit(&v80, memory_order_acquire) + 48);
    v79 = v51;
    v89.location = v72;
    v89.length = *(v81 + 26) - v72;
    *(v51 + 1) = v39;
    *(v51 + 2) = v30;
    TRun::TruncateStorageRange(v51, v89);
    v52 = atomic_load_explicit(&v80, memory_order_acquire);
    v53 = *v74;
    if (v41)
    {
      *v74 = v53 + 1;
      v57 = *v76 + 8 * v53;
      v82 = v52;
      v56 = v76;
      v55 = v57;
    }

    else
    {
      v54 = *v76 + 8 * v53;
      v82 = v52;
      v55 = (v54 + 8);
      v56 = v76;
    }

    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(v56, v55, &v82);
    std::vector<TRun *,TInlineBufferAllocator<TRun *,3ul>>::push_back[abi:fn200100](&v83, &v79);
  }

  v58 = v81;
  *(v81 + 1) = v32;
  *(v58 + 2) = v78;
  v90.location = v75;
  v90.length = 1;
  TRun::TruncateStorageRange(v58, v90);
  v59 = 126 - 2 * __clz(v84 - v83);
  if (v84 == v83)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  std::__introsort<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **,false>(v83, v84, v60, 1);
  v61 = *(v58 + 4);
  v62 = v83;
  v63 = v84;
  if (!v61)
  {
    if (v83 != v84)
    {
      v64 = *v83;
      *(this + 11) = *v83;
      if (!v64)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

LABEL_70:
    __break(1u);
  }

  if (v83 == v84)
  {
    goto LABEL_70;
  }

  v64 = *v83;
  *(v61 + 24) = *v83;
LABEL_58:
  *(v64 + 32) = v61;
LABEL_59:
  v65 = *(v58 + 3);
  v66 = *(v63 - 1);
  if (v65)
  {
    *(v65 + 32) = v66;
LABEL_62:
    *(v66 + 24) = v65;
    goto LABEL_63;
  }

  *(this + 12) = v66;
  if (v66)
  {
    goto LABEL_62;
  }

LABEL_63:
  v67 = v63 - v62;
  if (v67 >= 2)
  {
    v68 = v67 - 1;
    v69 = v62 + 1;
    do
    {
      v70 = *(v69 - 1);
      v71 = *v69;
      *(v70 + 24) = *v69;
      *(v71 + 32) = v70;
      ++v69;
      --v68;
    }

    while (v68);
  }

  v84 = v62;
  if (v86 > v62 || v87 <= v62)
  {
    operator delete(v62);
  }

  return 1;
}

void std::vector<TRun *,TInlineBufferAllocator<TRun *,3ul>>::push_back[abi:fn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = *(a1 + 48);
      v11 = v10 + 8 * v9;
      if (v11 > a1 + 48)
      {
        if (!(v9 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(a1 + 48) = v11;
    }

    else
    {
      v10 = 0;
    }

    v13 = v10 + 8 * v9;
    v12 = (v10 + 8 * v6);
    *v12 = *a2;
    v5 = v12 + 1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v5;
    v17 = *(a1 + 16);
    *(a1 + 16) = v13;
    if (v16)
    {
      if (a1 + 24 > v16 || (v18 = (a1 + 48), a1 + 48 <= v16))
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
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

unint64_t TLine::SetTrailingWhitespaceLevel(TLine *this, char a2)
{
  result = TLine::GetTrailingWhitespace(this, v6);
  v5.length = v6[0];
  if (v6[0])
  {
    v5.location = *(this + 9) - v6[0] + *(this + 10);

    return TLine::SetLevelRange(this, v5, a2, 1);
  }

  return result;
}

uint64_t TLine::ReverseRuns(uint64_t this, CFRange a2)
{
  v2 = a2.length + a2.location;
  while (1)
  {
    if (--v2 <= a2.location)
    {
      *(this + 154) |= 0x80u;
      return this;
    }

    v3 = *(this + 16);
    v4 = (*(this + 24) - v3) >> 3;
    if (v4 <= a2.location || v4 <= v2)
    {
      break;
    }

    v5 = *(v3 + 8 * a2.location);
    *(v3 + 8 * a2.location) = *(v3 + 8 * v2);
    *(v3 + 8 * v2) = v5;
    ++a2.location;
  }

  __break(1u);
  return this;
}

uint64_t TLine::GetLeftWhitespaceGlyphCountAndWidth(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = 0;
  v4 = *(this + 24) - *(this + 16);
  v5 = (v4 >> 3) & ~(v4 >> 63);
  v6 = 0.0;
  while (1)
  {
    if (v5 == v3)
    {
      return v2;
    }

    v7 = *(v1 + 16);
    if (v3 >= (*(v1 + 24) - v7) >> 3)
    {
      break;
    }

    v8 = *(*(v7 + 8 * v3) + 40);
    this = (*(*v8 + 80))(v8);
    v2 += this;
    v6 = v6 + v9;
    ++v3;
    if (this < v8[26])
    {
      return v2;
    }
  }

  __break(1u);
  return this;
}

uint64_t TLine::GetLeftPartialHangingGlyphCountAndWidth(uint64_t this, const unint64_t *a2)
{
  v2 = (*(this + 24) - *(this + 16)) >> 3;
  v3 = v2 - 1;
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    v8 = 0.0;
    while (1)
    {
      v9 = *(v5 + 16);
      if (v6 >= (*(v5 + 24) - v9) >> 3)
      {
        break;
      }

      v10 = *(*(v9 + 8 * v6) + 40);
      v11 = *(v10 + 26);
      if (*&a2 == 0.0)
      {
        v13 = *(v10 + 21);
        if (v13)
        {
          LOBYTE(v12) = TParagraphStyle::GetLineBoundsOptions(v13, a2);
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        v12 = *a2;
      }

      this = TRun::GetLeftPartialHangingGlyphCountAndWidth(v10, 0, v12, *v5);
      v7 += this;
      v8 = v8 + *&a2;
      if (this < v11 || v3 == v6++)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return this;
}

uint64_t TLine::GetRightPartialHangingGlyphCountAndWidth(uint64_t this, const unint64_t *a2)
{
  v3 = this;
  v4 = 0;
  v5 = ((*(this + 24) - *(this + 16)) >> 3) - 1;
  v6 = 0.0;
  while (1)
  {
    if ((v5 + 1) < 1)
    {
      return v4;
    }

    v7 = *(v3 + 16);
    if (v5 >= (*(v3 + 24) - v7) >> 3)
    {
      break;
    }

    v8 = *(*(v7 + 8 * v5) + 40);
    v9 = *(v8 + 26);
    if (*&a2 == 0.0)
    {
      v11 = *(v8 + 21);
      if (v11)
      {
        LOBYTE(v10) = TParagraphStyle::GetLineBoundsOptions(v11, a2);
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      v10 = *a2;
    }

    this = TRun::GetRightPartialHangingGlyphCountAndWidth(v8, v9 - 1, v10, *v3);
    v4 += this;
    v6 = v6 + *&a2;
    --v5;
    if (this < v9)
    {
      return v4;
    }
  }

  __break(1u);
  return this;
}

void TLine::CopyPath(TLine *this@<X0>, void *a2@<X8>)
{
  Mutable = CGPathCreateMutable();
  v4 = (*(this + 3) - *(this + 2)) >> 3;
  if (v4 < 1)
  {
LABEL_5:
    *a2 = atomic_exchange(&Mutable, 0);
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *(this + 2);
      if (v5 >= (*(this + 3) - v6) >> 3)
      {
        break;
      }

      v7 = *(*(v6 + 8 * v5) + 40);
      v8 = 0xAAAAAAAAAAAAAAAALL;
      TRun::CopyPath(v7, &v8);
      CGPathAddPath(atomic_load_explicit(&Mutable, memory_order_acquire), 0, atomic_load_explicit(&v8, memory_order_acquire));

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void TLine::DoGlyphFixups(TLine *this)
{
  v1 = (*(this + 3) - *(this + 2)) >> 3;
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E695F060];
    while (1)
    {
      v5 = *(this + 2);
      if (v3 >= (*(this + 3) - v5) >> 3)
      {
        break;
      }

      v6 = *(*(v5 + 8 * v3) + 48);
      v8 = *(v6 + 208);
      v7 = *(v6 + 216);
      v9 = v7[2] + 2 * *(v6 + 200);
      if ((*(v6 + 225) & 0x10) != 0 && ([v7 implementsOrigins] & 1) == 0)
      {
        v11 = [*(v6 + 216) copyWithRange:{*(v6 + 200), *(v6 + 208)}];

        *(v6 + 216) = v11;
        *(v6 + 200) = 0;
        v12 = *v4;
        v13 = v4[1];
        if (v8 < 1)
        {
LABEL_47:
          if (v12 != *v4 || v13 != v4[1])
          {
            v45 = MEMORY[0x1E695EFF8];
            v46 = *MEMORY[0x1E695EFF8];
            v47 = *(MEMORY[0x1E695EFF8] + 8);
            [*(v6 + 216) setOrigin:*(v6 + 200) atIndex:{*MEMORY[0x1E695EFF8], v47}];
            if (v46 != *v45 || v47 != v45[1])
            {
              *(v6 + 225) |= 0x10u;
            }

            v51.width = v12;
            v51.height = v13;
            TRun::AdvanceInitialAdvance(v6, v51);
          }

          goto LABEL_57;
        }

        v14 = v9 - 2;
        while (2)
        {
          v15 = 16 * v8 - 8;
          v16 = 8 * v8 - 8;
          v17 = v8;
          while (1)
          {
            v8 = v17 - 1;
            if (*(v14 + 2 * v17) != -1)
            {
              break;
            }

            [*(v6 + 216) setProps:*(*(*(v6 + 216) + 40) + 4 * *(v6 + 200) + 4 * v17 - 4) | 0x20u atIndex:v17 + *(v6 + 200) - 1];
            v15 -= 16;
            v16 -= 8;
            --v17;
            if ((v8 + 1) <= 1)
            {
              goto LABEL_47;
            }
          }

          if (v12 != *v4 || v13 != v4[1])
          {
            v19 = *(v6 + 216);
            v20 = *(v19 + 32);
            if (v20)
            {
              v21 = *(v6 + 200);
              goto LABEL_24;
            }

            v26 = *(v19 + 24);
            v21 = *(v6 + 200);
            if (v26)
            {
              v23 = (v26 + 8 * v21 + v16);
              v25 = 0.0;
            }

            else
            {
LABEL_24:
              v22 = (v20 + 16 * v21 + v15);
              v24 = *v22;
              v23 = v22 - 1;
              v25 = v24;
            }

            v49.width = v12 + *v23;
            v49.height = v13 + v25;
            TStorageRange::SetAdvance((v6 + 192), v17 - 1, v49);
            v12 = *v4;
            v13 = v4[1];
          }

          if ((*(v6 + 225) & 0x10) != 0)
          {
            [*(v6 + 216) originAtIndex:*(v6 + 200) + v17 - 1];
            v29 = v31;
            v30 = v32;
            v27 = *MEMORY[0x1E695EFF8];
            v28 = *(MEMORY[0x1E695EFF8] + 8);
          }

          else
          {
            v27 = *MEMORY[0x1E695EFF8];
            v28 = *(MEMORY[0x1E695EFF8] + 8);
            v29 = *MEMORY[0x1E695EFF8];
            v30 = v28;
          }

          if (v29 != v27 || v30 != v28)
          {
            v34 = *(v6 + 216);
            v35 = v34[4];
            if (v35)
            {
              v36 = *(v6 + 200);
              goto LABEL_37;
            }

            v41 = v34[3];
            v36 = *(v6 + 200);
            if (v41)
            {
              v38 = (v41 + 8 * v36 + v16);
              v40 = 0.0;
            }

            else
            {
LABEL_37:
              v37 = (v35 + 16 * v36 + v15);
              v39 = *v37;
              v38 = v37 - 1;
              v40 = v39;
            }

            v42 = *v38;
            [v34 setOrigin:v36 + v17 - 1 atIndex:{v27, v28}];
            if (v27 != *MEMORY[0x1E695EFF8] || v28 != *(MEMORY[0x1E695EFF8] + 8))
            {
              *(v6 + 225) |= 0x10u;
            }

            v50.width = v42 - v29;
            v50.height = v40 - v30;
            TStorageRange::SetAdvance((v6 + 192), v17 - 1, v50);
            v12 = v12 + v29;
            v13 = v13 + v30;
          }

          if (v17 <= 1)
          {
            goto LABEL_47;
          }

          continue;
        }
      }

      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*(v9 + 2 * i) == -1)
          {
            [*(v6 + 216) setProps:*(*(*(v6 + 216) + 40) + 4 * *(v6 + 200) + 4 * i) | 0x20u atIndex:i + *(v6 + 200)];
          }
        }
      }

LABEL_57:
      if (++v3 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

float64x2_t TRun::AdvanceInitialAdvance(TRun *this, CGSize a2)
{
  v2 = *(this + 39);
  if (!v2)
  {
    operator new();
  }

  height = a2.height;
  result = vaddq_f64(a2, *v2);
  *v2 = result;
  return result;
}

double std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&>(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v7;
  *(a2 + 28) = v8;
  return result;
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(double *a1, double *a2, unint64_t a3, __n128 *a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v10 = (a2 - 4);
      if (*(a2 - 4) >= *a1)
      {
        v25 = *(a1 + 2);
        *a4 = *a1;
        a4[1] = v25;
        result = *v10;
        v12 = *(a2 - 2);
      }

      else
      {
        v11 = *(a2 - 2);
        *a4 = *v10;
        a4[1] = v11;
        result = *a1;
        v12 = *(a1 + 2);
      }

      a4[2] = result;
      a4[3] = v12;
    }

    else if (a3 == 1)
    {
      result = *a1;
      v9 = *(a1 + 2);
      *a4 = *a1;
      a4[1] = v9;
    }

    else if (a3 > 8)
    {
      v26 = &a1[4 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(a1, v26, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(&v8[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v5[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v27 = &v8[2 * (a3 >> 1)];
      while (v27 != a2)
      {
        if (v27->n128_f64[0] >= v8->n128_f64[0])
        {
          result = *v8;
          v28 = v8[1];
          v8 += 2;
        }

        else
        {
          result = *v27;
          v28 = v27[1];
          v27 += 2;
        }

        *v5 = result;
        v5[1] = v28;
        v5 += 2;
        if (v8 == v26)
        {
          while (v27 != a2)
          {
            result = *v27;
            v30 = v27[1];
            v27 += 2;
            *v5 = result;
            v5[1] = v30;
            v5 += 2;
          }

          return result;
        }
      }

      while (v8 != v26)
      {
        result = *v8;
        v29 = v8[1];
        v8 += 2;
        *v5 = result;
        v5[1] = v29;
        v5 += 2;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v13 = *(a1 + 2);
      *a4 = *a1;
      a4[1] = v13;
      v14 = (a1 + 4);
      if (a1 + 4 != a2)
      {
        v15 = 0;
        v16 = a4;
        v17 = a4;
        do
        {
          v18 = v17->n128_f64[0];
          v17 += 2;
          if (v14->n128_f64[0] >= v18)
          {
            result = *v14;
            v24 = v14[1];
            *v17 = *v14;
            v17[1] = v24;
          }

          else
          {
            v19 = v16[1];
            *v17 = *v16;
            v17[1] = v19;
            v20 = a4;
            if (v16 != a4)
            {
              v21 = v15;
              while (1)
              {
                v20 = (a4 + v21);
                if (v14->n128_f64[0] >= *(a4[-2].n128_f64 + v21))
                {
                  break;
                }

                v22 = *(a4 + v21 - 16);
                *v20 = *(a4 + v21 - 32);
                v20[1] = v22;
                v21 -= 32;
                if (!v21)
                {
                  v20 = a4;
                  break;
                }
              }
            }

            result = *v14;
            v23 = v14[1];
            *v20 = *v14;
            v20[1] = v23;
          }

          v14 += 2;
          v15 += 32;
          v16 = v17;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 1);
        v83 = *v8;
        if (*(v82 + 8) < *(*v8 + 8))
        {
          *v8 = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v51 = v8 + 1;
      v84 = v8[1];
      v52 = (v8 + 2);
      v12 = v8[2];
      v85 = *v8;
      v86 = v84[1];
      v87 = *(*v8 + 8);
      v88 = *(v12 + 8);
      if (v86 >= v87)
      {
        if (v88 >= v86)
        {
          goto LABEL_190;
        }

        *v51 = v12;
        *v52 = v84;
        v89 = v8;
        v90 = (v8 + 1);
        result = v84;
        if (v88 >= v87)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v89 = v8;
        v90 = (v8 + 2);
        result = *v8;
        if (v88 >= v86)
        {
          *v8 = v84;
          v8[1] = v85;
          v89 = v8 + 1;
          v90 = (v8 + 2);
          result = v85;
          if (v88 >= v87)
          {
            goto LABEL_190;
          }
        }
      }

      *v89 = v12;
      *v90 = v85;
      v84 = result;
      goto LABEL_191;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v51 = v8 + 1;
      v92 = v8 == a2 || v51 == a2;
      if (a4)
      {
        if (!v92)
        {
          v93 = 8;
          v94 = v8;
          do
          {
            v95 = *v94;
            v94 = v51;
            v96 = *v51;
            v97 = *(v96 + 8);
            if (v97 < *(v95 + 8))
            {
              v98 = v93;
              while (1)
              {
                *(v8 + v98) = v95;
                v99 = v98 - 8;
                if (v98 == 8)
                {
                  break;
                }

                v95 = *(v8 + v98 - 16);
                v98 -= 8;
                if (v97 >= *(v95 + 8))
                {
                  v100 = (v8 + v99);
                  goto LABEL_140;
                }
              }

              v100 = v8;
LABEL_140:
              *v100 = v96;
            }

            v51 = v94 + 1;
            v93 += 8;
          }

          while (v94 + 1 != a2);
        }

        return result;
      }

      if (v92)
      {
        return result;
      }

      v52 = 0;
      v133 = 8;
      while (1)
      {
        v134 = *(v8 + v52);
        v52 = v133;
        v135 = *v51;
        v12 = *(*v51 + 8);
        if (v12 < *(v134 + 8))
        {
          break;
        }

LABEL_187:
        v133 = v52 + 8;
        if (++v51 == a2)
        {
          return result;
        }
      }

      v136 = 0;
      while (1)
      {
        v51[v136] = v134;
        if (!(v52 + v136 * 8))
        {
          break;
        }

        v134 = v51[v136 - 2];
        --v136;
        if (v12 >= *(v134 + 8))
        {
          v51[v136] = v135;
          goto LABEL_187;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      v84 = v12;
LABEL_191:
      v137 = *(a2 - 1);
      if (*(v137 + 8) < v84[1])
      {
        *v52 = v137;
        *(a2 - 1) = v84;
        v138 = *v52;
        v139 = *v51;
        v140 = *(v138 + 8);
        if (v140 < *(v139 + 8))
        {
          v7[1] = v138;
          v7[2] = v139;
          v141 = *v7;
          if (v140 < *(*v7 + 8))
          {
            *v7 = v138;
            v7[1] = v141;
          }
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v101 = (v9 - 2) >> 1;
        v102 = v101;
        do
        {
          v103 = v102;
          if (v101 >= v102)
          {
            v104 = (2 * v102) | 1;
            v105 = &v8[v104];
            v106 = *v105;
            if (2 * v103 + 2 < v9 && *(v106 + 8) < *(v105[1] + 8))
            {
              v106 = v105[1];
              ++v105;
              v104 = 2 * v103 + 2;
            }

            result = &v8[v103];
            v107 = *result;
            v108 = *(*result + 8);
            if (*(v106 + 8) >= v108)
            {
              do
              {
                v109 = v105;
                *result = v106;
                if (v101 < v104)
                {
                  break;
                }

                v110 = (2 * v104) | 1;
                v105 = &v8[v110];
                v111 = 2 * v104 + 2;
                v106 = *v105;
                if (v111 < v9 && *(v106 + 8) < *(v105[1] + 8))
                {
                  v106 = v105[1];
                  ++v105;
                  v110 = v111;
                }

                result = v109;
                v104 = v110;
              }

              while (*(v106 + 8) >= v108);
              *v109 = v107;
            }
          }

          v102 = v103 - 1;
        }

        while (v103);
        do
        {
          v112 = 0;
          v113 = *v8;
          v114 = v8;
          do
          {
            v115 = &v114[v112];
            v116 = v115 + 1;
            v117 = v115[1];
            v118 = (2 * v112) | 1;
            v112 = 2 * v112 + 2;
            if (v112 >= v9)
            {
              v112 = v118;
            }

            else
            {
              v121 = v115[2];
              v119 = v115 + 2;
              v120 = v121;
              result = *(v117 + 8);
              if (result >= *(v121 + 8))
              {
                v112 = v118;
              }

              else
              {
                v117 = v120;
                v116 = v119;
              }
            }

            *v114 = v117;
            v114 = v116;
          }

          while (v112 <= ((v9 - 2) >> 1));
          if (v116 == --a2)
          {
            *v116 = v113;
          }

          else
          {
            *v116 = *a2;
            *a2 = v113;
            v122 = (v116 - v8 + 8) >> 3;
            v123 = v122 < 2;
            v124 = v122 - 2;
            if (!v123)
            {
              v125 = v124 >> 1;
              v126 = &v8[v125];
              v127 = *v126;
              v128 = *v116;
              v129 = *(*v116 + 8);
              if (*(*v126 + 8) < v129)
              {
                do
                {
                  v130 = v126;
                  *v116 = v127;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = &v8[v125];
                  v127 = *v126;
                  v116 = v130;
                }

                while (*(*v126 + 8) < v129);
                *v130 = v128;
              }
            }
          }

          v123 = v9-- <= 2;
        }

        while (!v123);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 8);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 8);
      v17 = *(*v8 + 8);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 8) < *(*v8 + 8))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 8) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 8);
      v29 = *(v27 + 8);
      v30 = *(a2 - 2);
      v31 = *(v30 + 8);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 8) < *(v32 + 8))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 8) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 8);
      v40 = *(v38 + 8);
      v41 = *(a2 - 3);
      v42 = *(v41 + 8);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 8) < *(v43 + 8))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 8) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v12 = *v11;
      v45 = *v25;
      v46 = *(*v11 + 8);
      v47 = *(*v25 + 8);
      v48 = *v35;
      v49 = *(*v35 + 8);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v11 = v48;
        *v35 = v12;
        v35 = v11;
        v12 = v45;
        if (v49 >= v47)
        {
          v12 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v12;
        *v11 = v45;
        v25 = v11;
        v12 = v48;
        if (v49 >= v47)
        {
          v12 = v45;
LABEL_56:
          v50 = *v8;
          *v8 = v12;
          *v11 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v35 = v45;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 8);
    v21 = *(*v11 + 8);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        v12 = *(*v8 + 8);
        if (v12 < *(*v11 + 8))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }
    }

    else
    {
      if (v13 < v20)
      {
        *v11 = v12;
LABEL_36:
        *(a2 - 1) = v19;
        goto LABEL_57;
      }

      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*(v33 + 8) < v21)
      {
        *v8 = v33;
        goto LABEL_36;
      }
    }

LABEL_57:
    --a3;
    v51 = *v8;
    if ((a4 & 1) != 0 || (v52 = v51[1], *(*(v8 - 1) + 8) < v52))
    {
      v53 = 0;
      do
      {
        v52 = &v8[v53 + 1];
        if (v52 == a2)
        {
          goto LABEL_189;
        }

        v54 = *v52;
        v12 = v51[1];
        ++v53;
      }

      while (*(*v52 + 8) < v12);
      v52 = &v8[v53];
      v55 = a2;
      if (v53 != 1)
      {
        while (v55 != v8)
        {
          v56 = *--v55;
          if (*(v56 + 8) < v12)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_189;
      }

      v55 = a2;
      do
      {
        if (v52 >= v55)
        {
          break;
        }

        v57 = *--v55;
      }

      while (*(v57 + 8) >= v12);
LABEL_69:
      if (v52 < v55)
      {
        v58 = *v55;
        v59 = &v8[v53];
        v60 = v55;
LABEL_71:
        *v59 = v58;
        *v60 = v54;
        v61 = v59 + 1;
        while (v61 != a2)
        {
          v62 = *v61++;
          v54 = v62;
          if (*(v62 + 8) >= v12)
          {
            v59 = v61 - 1;
            while (v60 != v8)
            {
              v63 = *--v60;
              v58 = v63;
              if (*(v63 + 8) < v12)
              {
                if (v59 < v60)
                {
                  goto LABEL_71;
                }

                v64 = v61 - 2;
                goto LABEL_80;
              }
            }

            goto LABEL_189;
          }
        }

        goto LABEL_189;
      }

      v64 = (v52 - 8);
LABEL_80:
      if (v64 != v8)
      {
        *v8 = *v64;
      }

      *v64 = v51;
      if (v52 < v55)
      {
LABEL_85:
        result = std::__introsort<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **,false>(v7, v64, a3, a4 & 1);
        a4 = 0;
        v8 = v64 + 1;
        continue;
      }

      v65 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **>(v8, v64);
      v8 = v64 + 1;
      result = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,TLine::SeparateCharWithGlyphIndex(long *,long)::$_0 &,TRun **>(v64 + 1, a2);
      if (!result)
      {
        if (v65)
        {
          continue;
        }

        goto LABEL_85;
      }

      a2 = v64;
      if (v65)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (v52 >= *(*(a2 - 1) + 8))
    {
      v68 = v8 + 1;
      do
      {
        v8 = v68;
        if (v68 >= a2)
        {
          break;
        }

        ++v68;
        v12 = *(*v8 + 8);
      }

      while (v52 >= v12);
    }

    else
    {
      v66 = v8 + 1;
      do
      {
        if (v66 == a2)
        {
          goto LABEL_189;
        }

        v67 = *v66++;
        v12 = *(v67 + 8);
      }

      while (v52 >= v12);
      v8 = v66 - 1;
    }

    v69 = a2;
    if (v8 < a2)
    {
      v69 = a2;
      while (v69 != v7)
      {
        v70 = *--v69;
        v12 = *(v70 + 8);
        if (v52 >= v12)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_189;
    }

LABEL_99:
    if (v8 < v69)
    {
      v12 = *v8;
      v71 = *v69;
      do
      {
        *v8 = v71;
        v72 = v8 + 1;
        *v69 = v12;
        do
        {
          if (v72 == a2)
          {
            goto LABEL_189;
          }

          v73 = *v72++;
          v12 = v73;
        }

        while (v52 >= *(v73 + 8));
        v8 = v72 - 1;
        do
        {
          if (v69 == v7)
          {
            goto LABEL_189;
          }

          v74 = *--v69;
          v71 = v74;
        }

        while (v52 < *(v74 + 8));
      }

      while (v8 < v69);
    }

    v75 = v8 - 1;
    if (v8 - 1 != v7)
    {
      *v7 = *v75;
    }

    a4 = 0;
    *v75 = v51;
  }

  v76 = *v8;
  v77 = v8[1];
  v78 = *(v77 + 8);
  v79 = *(*v8 + 8);
  v80 = *(a2 - 1);
  v81 = *(v80 + 8);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v8[1] = v80;
      *(a2 - 1) = v77;
      v132 = *v8;
      v131 = v8[1];
      if (*(v131 + 8) < *(*v8 + 8))
      {
        *v8 = v131;
        v8[1] = v132;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v8 = v77;
      v8[1] = v76;
      v142 = *(a2 - 1);
      if (*(v142 + 8) >= v79)
      {
        return result;
      }

      v8[1] = v142;
    }

    else
    {
      *v8 = v80;
    }

    *(a2 - 1) = v76;
  }

  return result;
}