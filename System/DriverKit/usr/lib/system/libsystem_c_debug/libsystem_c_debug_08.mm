uint64_t tre_ast_to_tnfa(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v5 = a1[12];
  switch(v5)
  {
    case 0:
      return v6;
    case 1:
      v12 = *a1;
      trans = tre_make_trans(*(**a1 + 32), *(*(*a1 + 8) + 24), a2, a3, a4);
      if (trans)
      {
        return trans;
      }

      v9 = tre_ast_to_tnfa(*v12, a2, a3, a4);
      if (v9)
      {
        return v9;
      }

      return tre_ast_to_tnfa(v12[1], a2, a3, a4);
    case 2:
      v11 = *a1;
      if (*(*a1 + 12) == -1)
      {
        v10 = tre_make_trans(*(*v11 + 32), *(*v11 + 24), a2, a3, a4);
        if (v10)
        {
          return v10;
        }
      }

      return tre_ast_to_tnfa(*v11, a2, a3, a4);
  }

  if (v5 != 3)
  {
    return v6;
  }

  v13 = *a1;
  v7 = tre_ast_to_tnfa(**a1, a2, a3, a4);
  if (!v7)
  {
    return tre_ast_to_tnfa(*(v13 + 8), a2, a3, a4);
  }

  return v7;
}

void tre_free(uint64_t a1)
{
  *a1 = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 24) = 0;
    for (i = 0; i < *(v3 + 16); ++i)
    {
      if (*(*v3 + 56 * i + 8))
      {
        if (*(*v3 + 56 * i + 24))
        {
          free(*(*v3 + 56 * i + 24));
        }

        if ((*(*v3 + 56 * i + 40) & 4) != 0)
        {
          free(*(*v3 + 56 * i + 48));
        }

        if (*(*v3 + 56 * i + 32))
        {
          free(*(*v3 + 56 * i + 32));
        }
      }
    }

    if (*v3)
    {
      free(*v3);
    }

    if (*(v3 + 1))
    {
      for (j = *(v3 + 1); *(j + 8); j += 56)
      {
        if (*(j + 24))
        {
          free(*(j + 24));
        }

        if (*(j + 32))
        {
          free(*(j + 32));
        }
      }

      free(*(v3 + 1));
    }

    if (*(v3 + 3))
    {
      free(*(v3 + 3));
    }

    if (*(v3 + 4))
    {
      free(*(v3 + 4));
    }

    if (*(v3 + 5))
    {
      free(*(v3 + 5));
    }

    if (*(v3 + 7))
    {
      xlocale_release(*(v3 + 7));
    }

    if (*(v3 + 6))
    {
      free(*(v3 + 6));
    }

    free(v3);
  }
}

uint64_t tre_merge_branches(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v14 = *(a2 + 8);
  if (a3)
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v14)
  {
    if (v9)
    {
      v13 = v14 + 40;
      v12 = (v9 + 40);
      v11 = (a5 + 7) >> 3;
      while (1)
      {
        v5 = v11--;
        if (v5 <= 0)
        {
          break;
        }

        v6 = v12++;
        v7 = v13++;
        *v7 |= *v6;
      }

      *(v14 + 6) += *(v9 + 24);
      *(v14 + 9) += *(v9 + 36);
      if (*(v14 + 1))
      {
        if (*(v9 + 8))
        {
            ;
          }

          *i = *(v9 + 8);
          *(v14 + 4) += *(v9 + 16);
          *(v14 + 7) += *(v9 + 28);
          *(v14 + 8) += *(v9 + 32);
        }
      }

      else if (*(v9 + 8))
      {
        *(v14 + 1) = *(v9 + 8);
        *(v14 + 4) = *(v9 + 16);
        *(v14 + 7) = *(v9 + 28);
        *(v14 + 8) = *(v9 + 32);
      }
    }
  }

  else
  {
    v14 = v9;
  }

  if (!a4)
  {
    goto LABEL_27;
  }

  if (v14)
  {
LABEL_25:
    if (a4 > 0)
    {
      v14[(a4 >> 3) + 40] |= 1 << (a4 & 7);
      ++*(v14 + 6);
      ++*(v14 + 9);
    }

LABEL_27:
    *(a2 + 8) = v14;
    return 0;
  }

  v14 = tre_mem_alloc_impl(a1, 0, 0, 1, ((a5 + 7) >> 3) + 40);
  if (v14)
  {
    *(v14 + 7) = 1;
    goto LABEL_25;
  }

  return 12;
}

uint64_t tre_add_tag_right(uint64_t a1, uint64_t a2, int a3)
{
  v4 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x10uLL);
  if (v4)
  {
    *(v4 + 1) = tre_ast_new_literal(a1, -3, a3, -1);
    if (*(v4 + 1))
    {
      *v4 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x48uLL);
      if (*v4)
      {
        **v4 = *a2;
        *(*v4 + 48) = *(a2 + 48);
        *(*v4 + 8) = *(a2 + 8);
        *(*v4 + 64) = -1;
        *(*v4 + 52) = -1;
        *a2 = v4;
        *(a2 + 48) = 1;
        *(a2 + 40) = *v4;
        return 0;
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 12;
    }
  }

  else
  {
    return 12;
  }
}

_DWORD *tre_purge_regset(_DWORD *result, uint64_t a2, int a3)
{
  for (i = 0; result[i] != -1; ++i)
  {
    v3 = result[i] / 2u;
    if (v3 < 0x40000000)
    {
      if (result[i] % 2u)
      {
        *(*(a2 + 24) + 8 * v3 + 4) = a3;
      }

      else
      {
        *(*(a2 + 24) + 8 * v3) = a3;
      }
    }
  }

  *result = -1;
  return result;
}

uint64_t tre_add_tag_left(uint64_t a1, uint64_t a2, int a3)
{
  v4 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x10uLL);
  if (v4)
  {
    *v4 = tre_ast_new_literal(a1, -3, a3, -1);
    if (*v4)
    {
      *(v4 + 1) = tre_mem_alloc_impl(a1, 0, 0, 1, 0x48uLL);
      if (*(v4 + 1))
      {
        **(v4 + 1) = *a2;
        *(*(v4 + 1) + 48) = *(a2 + 48);
        *(*(v4 + 1) + 8) = *(a2 + 8);
        *(*(v4 + 1) + 64) = -1;
        *(*(v4 + 1) + 52) = -1;
        *a2 = v4;
        *(a2 + 48) = 1;
        *(a2 + 40) = *(v4 + 1);
        return 0;
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 12;
    }
  }

  else
  {
    return 12;
  }
}

uint64_t tre_copy_ast(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5, uint64_t a6, void **a7, int *a8)
{
  v27 = tre_stack_num_objects(a2);
  v26 = 0;
  v25 = 1;
  v24 = a7;
  tre_stack_push_voidptr(a2, a3);
  v28 = tre_stack_push_int(a2, 0);
  while (1)
  {
    v13 = 0;
    if (!v28)
    {
      v13 = tre_stack_num_objects(a2) > v27;
    }

    if (!v13 || v28)
    {
      break;
    }

    v12 = tre_stack_pop_int(a2);
    if (v12)
    {
      if (v12 == 1)
      {
        v24 = tre_stack_pop_voidptr(a2);
      }
    }

    else
    {
      v23 = tre_stack_pop_voidptr(a2);
      v11 = *(v23 + 12);
      if (v11)
      {
        switch(v11)
        {
          case 1:
            v16 = *v23;
            *v24 = tre_ast_new_catenation(a1, **v23, *(*v23 + 1));
            if (*v24)
            {
              v15 = **v24;
              *v15 = 0;
              v15[1] = 0;
              v24 = v15;
              v28 = tre_stack_push_voidptr(a2, v16[1]);
              if (!v28)
              {
                v28 = tre_stack_push_int(a2, 0);
                if (!v28)
                {
                  v28 = tre_stack_push_voidptr(a2, (v15 + 1));
                  if (!v28)
                  {
                    v28 = tre_stack_push_int(a2, 1u);
                    if (!v28)
                    {
                      v28 = tre_stack_push_voidptr(a2, *v16);
                      if (!v28)
                      {
LABEL_44:
                        v28 = tre_stack_push_int(a2, 0);
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v28 = 12;
            }

            break;
          case 2:
            v14 = *v23;
            v28 = tre_stack_push_voidptr(a2, **v23);
            if (!v28)
            {
              v28 = tre_stack_push_int(a2, 0);
              if (!v28)
              {
                *v24 = tre_ast_new_iter(a1, *v14, *(v14 + 2), *(v14 + 3), v14[2] & 1);
                if (*v24)
                {
                  v24 = **v24;
                }

                else
                {
                  v28 = 12;
                }
              }
            }

            break;
          case 3:
            v18 = *v23;
            *v24 = tre_ast_new_union(a1, **v23, *(*v23 + 1));
            if (*v24)
            {
              v17 = **v24;
              v24 = v17;
              v28 = tre_stack_push_voidptr(a2, v18[1]);
              if (!v28)
              {
                v28 = tre_stack_push_int(a2, 0);
                if (!v28)
                {
                  v28 = tre_stack_push_voidptr(a2, (v17 + 1));
                  if (!v28)
                  {
                    v28 = tre_stack_push_int(a2, 1u);
                    if (!v28)
                    {
                      v28 = tre_stack_push_voidptr(a2, *v18);
                      if (!v28)
                      {
                        goto LABEL_44;
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v28 = 12;
            }

            break;
        }
      }

      else
      {
        v22 = *v23;
        v21 = (*v23)[2];
        v20 = **v23;
        v19 = (*v23)[1];
        if (v20 < 0)
        {
          v10 = 0;
        }

        else
        {
          v10 = v22[2];
        }

        if ((*v22 & 0x80000000) != 0 && *v22 != -4)
        {
          if (*v22 == -3 && (a4 & 1) != 0)
          {
            v21 = -1;
            v8 = tre_ast_new_literal(a1, -1, -1, -1);
          }

          else
          {
            if (*v22 == -3 && (a4 & 2) != 0 && v25)
            {
              if (*(a6 + 4 * v19) == 2)
              {
                *(a6 + 4 * v19) = 1;
              }

              v25 = 0;
            }

            v8 = tre_ast_new_literal(a1, v20, v19, v21);
          }
        }

        else
        {
          v21 += *a5;
          ++v26;
          v8 = tre_ast_new_literal(a1, v20, v19, v21);
        }

        *v24 = v8;
        if (!*v24)
        {
          v28 = 12;
        }

        if (v21 > *a8)
        {
          *a8 = v21;
        }

        if ((*v22 & 0x80000000) == 0)
        {
          *(**v24 + 16) = v10;
        }
      }
    }
  }

  *a5 += v26;
  return v28;
}

char *tre_set_one(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v7 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x80uLL);
  if (!v7)
  {
    return 0;
  }

  *v7 = a2;
  *(v7 + 1) = a3;
  *(v7 + 2) = a4;
  *(v7 + 4) = a5;
  *(v7 + 10) = a6;
  *(v7 + 16) = -1;
  *(v7 + 17) = -1;
  *(v7 + 18) = -1;
  return v7;
}

char *tre_set_empty(uint64_t a1)
{
  v2 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x40uLL);
  if (!v2)
  {
    return 0;
  }

  *v2 = -1;
  *(v2 + 1) = -1;
  *(v2 + 2) = -1;
  return v2;
}

char *tre_set_union(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  for (i = 0; ; ++i)
  {
    v8 = 0;
    if (a4)
    {
      v8 = *(a4 + 4 * i) >= 0;
    }

    if (!v8)
    {
      break;
    }
  }

    ;
  }

    ;
  }

  v12 = tre_mem_alloc_impl(a1, 0, 0, 1, (j + k + 1) << 6);
  if (!v12)
  {
    return 0;
  }

  for (m = 0; (*(a2 + (m << 6)) & 0x80000000) == 0; ++m)
  {
    *&v12[64 * m] = *(a2 + (m << 6));
    *&v12[64 * m + 4] = *(a2 + (m << 6) + 4);
    *&v12[64 * m + 8] = *(a2 + (m << 6) + 8);
    *&v12[64 * m + 24] = *(a2 + (m << 6) + 24) | a5;
    *&v12[64 * m + 32] = *(a2 + (m << 6) + 32);
    *&v12[64 * m + 40] = *(a2 + (m << 6) + 40);
    if (*(a2 + (m << 6) + 16) || a4)
    {
      for (n = 0; ; ++n)
      {
        v7 = 0;
        if (*(a2 + (m << 6) + 16))
        {
          v7 = *(*(a2 + (m << 6) + 16) + 4 * n) >= 0;
        }

        if (!v7)
        {
          break;
        }
      }

      v10 = tre_mem_alloc_impl(a1, 0, 0, 0, 4 * (n + i + 1));
      if (!v10)
      {
        return 0;
      }

      for (ii = 0; ii < n; ++ii)
      {
        *&v10[4 * ii] = *(*(a2 + (m << 6) + 16) + 4 * ii);
      }

      for (jj = 0; jj < i; ++jj)
      {
        *&v10[4 * ii + 4 * jj] = *(a4 + 4 * jj);
      }

      *&v10[4 * ii + 4 * jj] = -1;
      *&v12[64 * m + 16] = v10;
    }

    else
    {
      *&v12[64 * m + 16] = 0;
    }

    if (*(a2 + (m << 6) + 48))
    {
      *&v12[64 * m + 48] = *(a2 + (m << 6) + 48);
    }

    if (a6)
    {
      if (*&v12[64 * m + 48])
      {
        *&v12[64 * m + 48] = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
        if (!*&v12[64 * m + 48])
        {
          return 0;
        }

        for (kk = 0; kk < 9; ++kk)
        {
          if (*(a6 + 4 * kk) != -1)
          {
            *(*&v12[64 * m + 48] + 4 * kk) = *(a6 + 4 * kk);
          }
        }
      }

      else
      {
        *&v12[64 * m + 48] = a6;
      }
    }
  }

  for (mm = 0; (*(a3 + (mm << 6)) & 0x80000000) == 0; ++mm)
  {
    *&v12[64 * (m + mm)] = *(a3 + (mm << 6));
    *&v12[64 * (m + mm) + 4] = *(a3 + (mm << 6) + 4);
    *&v12[64 * (m + mm) + 8] = *(a3 + (mm << 6) + 8);
    *&v12[64 * (m + mm) + 24] = *(a3 + (mm << 6) + 24);
    *&v12[64 * (m + mm) + 32] = *(a3 + (mm << 6) + 32);
    *&v12[64 * (m + mm) + 40] = *(a3 + (mm << 6) + 40);
    if (*(a3 + (mm << 6) + 16))
    {
        ;
      }

      v11 = tre_mem_alloc_impl(a1, 0, 0, 0, 4 * (nn + 1));
      if (!v11)
      {
        return 0;
      }

      for (i1 = 0; i1 < nn; ++i1)
      {
        *&v11[4 * i1] = *(*(a3 + (mm << 6) + 16) + 4 * i1);
      }

      *&v11[4 * i1] = -1;
      *&v12[64 * (m + mm) + 16] = v11;
    }

    else
    {
      *&v12[64 * (m + mm) + 16] = 0;
    }

    if (*(a3 + (mm << 6) + 48))
    {
      *&v12[64 * (m + mm) + 48] = *(a3 + (mm << 6) + 48);
    }

    if (a6)
    {
      if (*&v12[64 * (m + mm) + 48])
      {
        *&v12[64 * (m + mm) + 48] = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
        if (!*&v12[64 * (m + mm) + 48])
        {
          return 0;
        }

        for (i2 = 0; i2 < 9; ++i2)
        {
          if (*(a6 + 4 * i2) != -1)
          {
            *(*&v12[64 * (m + mm) + 48] + 4 * i2) = *(a6 + 4 * i2);
          }
        }
      }

      else
      {
        *&v12[64 * (m + mm) + 48] = a6;
      }
    }
  }

  *&v12[64 * (m + mm)] = -1;
  return v12;
}

uint64_t tre_match_empty(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = tre_stack_num_objects(a1);
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v11 = tre_stack_push_voidptr(a1, a2);
  while (1)
  {
    v10 = 0;
    if (!v11)
    {
      v10 = tre_stack_num_objects(a1) > v12;
    }

    if (!v10)
    {
      break;
    }

    v24 = tre_stack_pop_voidptr(a1);
    v9 = *(v24 + 12);
    if (v9)
    {
      switch(v9)
      {
        case 1:
          v15 = *v24;
          v11 = tre_stack_push_voidptr(a1, **v24);
          if (!v11)
          {
            v11 = tre_stack_push_voidptr(a1, v15[1]);
          }

          break;
        case 2:
          if (*(**v24 + 64))
          {
            v11 = tre_stack_push_voidptr(a1, **v24);
          }

          break;
        case 3:
          v16 = *v24;
          if (*(**v24 + 64))
          {
            v11 = tre_stack_push_voidptr(a1, *v16);
          }

          else if (*(v16[1] + 64))
          {
            v11 = tre_stack_push_voidptr(a1, v16[1]);
          }

          break;
      }
    }

    else
    {
      v17 = *v24;
      v8 = **v24;
      if (v8 == -5)
      {
        if (a5)
        {
          for (i = 0; i < 9; ++i)
          {
            *(a5 + 4 * i) = *(v17[2] + 4 * i);
          }
        }

        if (a7)
        {
          *a7 = 1;
        }
      }

      else if (v8 == -3)
      {
        if ((*(v17 + 1) & 0x80000000) == 0)
        {
          if (a3)
          {
              ;
            }

            if ((*(a3 + 4 * j) & 0x80000000) != 0)
            {
              *(a3 + 4 * j) = *(v17 + 1);
              *(a3 + 4 * (j + 1)) = -1;
            }
          }

          if (a6)
          {
            ++*a6;
          }
        }
      }

      else if (v8 == -2 && a4)
      {
        *a4 |= *(v17 + 1);
      }
    }
  }

  return v11;
}

uint64_t tre_make_trans(int *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    while ((*a1 & 0x80000000) == 0)
    {
      v22 = a2;
      v9 = -1;
      while ((*v22 & 0x80000000) == 0)
      {
        if (*v22 == v9)
        {
          v22 += 16;
        }

        else
        {
          v9 = *v22;
            ;
          }

          *(i + 64) = 0;
          *i = a1[1];
          *(i + 4) = a1[2];
          *(i + 8) = a3 + 56 * *(a5 + 4 * *v22);
          *(i + 16) = *v22;
          if (*(a1 + 4))
          {
            v5 = 4;
          }

          else
          {
            v5 = 0;
          }

          *(i + 40) = a1[6] | v22[6] | v5;
          if ((a1[10] & 0x80000000) == 0)
          {
            *(i + 48) = a1[10];
            *(i + 40) |= 0x80u;
          }

          if (*(a1 + 4))
          {
            v6 = **(a1 + 4);
            *(i + 48) = malloc_type_malloc();
            if (!*(i + 48))
            {
              return 12;
            }

            memcpy(*(i + 48), *(a1 + 4), 8 * **(a1 + 4) + 8);
          }

          v15 = 0;
          if (*(a1 + 2))
          {
            while ((*(*(a1 + 2) + 4 * v15) & 0x80000000) == 0)
            {
              ++v15;
            }
          }

          v13 = 0;
          if (*(v22 + 2))
          {
            while ((*(*(v22 + 2) + 4 * v13) & 0x80000000) == 0)
            {
              ++v13;
            }
          }

          if (*(i + 24))
          {
            free(*(i + 24));
          }

          *(i + 24) = 0;
          if (v15 + v13 > 0)
          {
            *(i + 24) = malloc_type_malloc();
            if (!*(i + 24))
            {
              return 12;
            }

            v16 = 0;
            if (*(a1 + 2))
            {
              while ((*(*(a1 + 2) + 4 * v16) & 0x80000000) == 0)
              {
                *(*(i + 24) + 4 * v16) = *(*(a1 + 2) + 4 * v16);
                ++v16;
              }
            }

            v11 = v16;
            v14 = 0;
            if (*(v22 + 2))
            {
              while ((*(*(v22 + 2) + 4 * v14) & 0x80000000) == 0)
              {
                v10 = 0;
                for (j = 0; j < v16; ++j)
                {
                  if (*(*(i + 24) + 4 * j) == *(*(v22 + 2) + 4 * v14))
                  {
                    v10 = 1;
                    break;
                  }
                }

                if (!v10)
                {
                  v7 = v11++;
                  *(*(i + 24) + 4 * v7) = *(*(v22 + 2) + 4 * v14);
                }

                ++v14;
              }
            }

            *(*(i + 24) + 4 * v11) = -1;
          }

          if (*(a1 + 6) || *(v22 + 6))
          {
            if (!*(i + 32))
            {
              *(i + 32) = malloc_type_malloc();
            }

            if (!*(i + 32))
            {
              return 12;
            }

            for (k = 0; k < 9; ++k)
            {
              *(*(i + 32) + 4 * k) = -1;
              if (*(a1 + 6) && *(*(a1 + 6) + 4 * k) != -1)
              {
                *(*(i + 32) + 4 * k) = *(*(a1 + 6) + 4 * k);
              }

              if (*(v22 + 6) && *(*(v22 + 6) + 4 * k) != -1)
              {
                *(*(i + 32) + 4 * k) = *(*(v22 + 6) + 4 * k);
              }
            }
          }

          else
          {
            if (*(i + 32))
            {
              free(*(i + 32));
            }

            *(i + 32) = 0;
          }

          v22 += 16;
        }
      }

      a1 += 16;
    }
  }

  else
  {
    while ((*a1 & 0x80000000) == 0)
    {
      for (m = a2; (*m & 0x80000000) == 0; m += 16)
      {
        ++*(a4 + 4 * *a1);
      }

      a1 += 16;
    }
  }

  return 0;
}

uint64_t tre_tnfa_run_backtrack(uint64_t a1, char *a2, int a3, int a4, void *a5, int a6, int *a7)
{
  v90 = a1;
  v89 = a2;
  v88 = a3;
  v87 = a4;
  v86 = a5;
  v85 = a6;
  v84 = a7;
  v83 = 0;
  v82 = 0;
  v81 = a2;
  v79 = 1;
  v78 = a2;
  memset(&__b, 0, sizeof(__b));
  v77 = v85 & 1;
  v76 = v85 & 2;
  v75 = *(v90 + 96) & 8;
  v69 = -1;
  memset(__dst, 0, sizeof(__dst));
  v67 = -1;
  v63 = tre_mem_new_impl(0, 0);
  v57 = *(v90 + 80);
  v56 = 1;
  v55 = 0;
  memset(&__b, 0, sizeof(__b));
  if (!v63)
  {
    return 12;
  }

  v62 = tre_mem_alloc_impl(v63, 0, 0, 0, 0xC0uLL);
  if (!v62)
  {
    v58 = 12;
    goto LABEL_302;
  }

  *(v62 + 22) = 0;
  *(v62 + 23) = 0;
  v54 = 16 * *(v90 + 72);
  v53 = 16 * v57 + 14 + v54 + 4 * *(v90 + 92);
  v55 = malloc_type_malloc();
  if (!v55)
  {
    return 12;
  }

  v51 = &v55[16 * v57];
  if (v51 % 8)
  {
    v32 = 8 - v51 % 8;
  }

  else
  {
    v32 = 0;
  }

  v59 = (v51 + v32);
  v52 = v51 + v32 + v54;
  if (v52 % 8)
  {
    v31 = 8 - v52 % 8;
  }

  else
  {
    v31 = 0;
  }

  v64 = (v52 + v31);
  while (1)
  {
    bzero(v55, 16 * v57);
    if (v86)
    {
      bzero(v86, 16 * v57);
    }

    for (i = 0; i < *(v90 + 92); ++i)
    {
      v64[i] = 0;
    }

    v65 = 0;
    v80 = v69;
    v83 = v82;
    if (v87)
    {
      if (v87 == 1)
      {
        v80 = v69 + 1;
        if (v88 < 0 || v80 < v88)
        {
          v7 = v81++;
          v82 = *v7;
        }

        else
        {
          v82 = 0;
        }
      }

      else if (v87 == 2)
      {
        v80 = v69 + v79;
        v30 = 0;
        if ((v88 & 0x80000000) == 0)
        {
          v30 = v80 >= v88;
        }

        if (v30)
        {
          v82 = 0;
          v79 = 1;
        }

        else if (*v81 < 0)
        {
          if (v88 < 0)
          {
            v49 = 32;
          }

          else
          {
            v49 = v88 - v80;
          }

          v50 = mbrtowc_l(&v82, v81, v49, &__b, *(v90 + 56));
          if (v50 >= 0xFFFFFFFFFFFFFFFELL)
          {
            return 17;
          }

          if (v50 || v88 < 0)
          {
            v79 = v50;
            v81 += v50;
          }

          else
          {
            v79 = 1;
            v82 = 0;
            ++v81;
          }
        }

        else
        {
          v9 = v81++;
          v82 = *v9;
          v79 = 1;
        }
      }
    }

    else
    {
      v80 = v69 + 1;
      if (v88 < 0 || v80 < v88)
      {
        v8 = v78++;
        v82 = *v8;
      }

      else
      {
        v82 = 0;
      }
    }

    v69 = v80;
    v71 = v82;
    v70 = v81;
    v68 = v78;
    memcpy(__dst, &__b, sizeof(__dst));
    v66 = 0;
    for (j = *(v90 + 8); *(j + 8); j += 56)
    {
      if (!*(j + 40))
      {
        goto LABEL_86;
      }

      if (((*(j + 40) & 1) == 0 || v80 <= 0 && !v77 || v83 == 10 && v75) && ((*(j + 40) & 2) == 0 || !v82 && !v76 || v82 == 10 && v75) && ((*(j + 40) & 8) == 0 || v83 != 95 && !iswalnum_l(v83, *(v90 + 56)) && (v82 == 95 || iswalnum_l(v82, *(v90 + 56)))) && ((*(j + 40) & 0x10) == 0 || (v83 == 95 || iswalnum_l(v83, *(v90 + 56))) && v82 != 95 && !iswalnum_l(v82, *(v90 + 56))))
      {
        if ((*(j + 40) & 0x20) == 0 || !v80 || !v82)
        {
          goto LABEL_77;
        }

        v29 = 1;
        if (v83 != 95)
        {
          v29 = iswalnum_l(v83, *(v90 + 56)) != 0;
        }

        v28 = 1;
        if (v82 != 95)
        {
          v28 = iswalnum_l(v82, *(v90 + 56)) != 0;
        }

        if (v29 != v28)
        {
LABEL_77:
          if ((*(j + 40) & 0x40) == 0)
          {
            goto LABEL_86;
          }

          if (v80 && v82)
          {
            v27 = 1;
            if (v83 != 95)
            {
              v27 = iswalnum_l(v83, *(v90 + 56)) != 0;
            }

            v26 = 1;
            if (v82 != 95)
            {
              v26 = iswalnum_l(v82, *(v90 + 56)) != 0;
            }

            if (v27 == v26)
            {
LABEL_86:
              if (v65)
              {
                if (*(v62 + 23))
                {
                  v62 = *(v62 + 23);
                }

                else
                {
                  v48 = tre_mem_alloc_impl(v63, 0, 0, 0, 0xC0uLL);
                  if (!v48)
                  {
                    tre_mem_destroy(v63);
                    free(v55);
                    if (v59)
                    {
                      free(v59);
                    }

                    if (v64)
                    {
                      free(v64);
                    }

                    return 12;
                  }

                  *(v48 + 22) = v62;
                  *(v48 + 23) = 0;
                  *(v48 + 5) = tre_mem_alloc_impl(v63, 0, 0, 0, 16 * v57);
                  if (!*(v48 + 5))
                  {
                    tre_mem_destroy(v63);
                    free(v55);
                    if (v59)
                    {
                      free(v59);
                    }

                    if (v64)
                    {
                      free(v64);
                    }

                    return 12;
                  }

                  *(v62 + 23) = v48;
                  v62 = v48;
                }

                *v62 = v80;
                *(v62 + 1) = v79;
                *(v62 + 1) = v81;
                *(v62 + 2) = v78;
                *(v62 + 3) = *(j + 8);
                *(v62 + 8) = *(j + 16);
                *(v62 + 9) = v82;
                memcpy(*(v62 + 5), v55, 16 * v57);
                memcpy(v62 + 48, &__b, 0x80uLL);
                v47 = *(j + 24);
                if (v47)
                {
                  while ((*v47 & 0x80000000) == 0)
                  {
                    v10 = v47++;
                    tre_tag_set(*(v62 + 5), *v10, v80, v56);
                  }

                  ++v56;
                }
              }

              else
              {
                v65 = *(j + 8);
                v66 = *(j + 24);
              }
            }
          }
        }
      }
    }

    if (v66)
    {
      while ((*v66 & 0x80000000) == 0)
      {
        tre_tag_set(v55, *v66++, v80, v56);
      }

      ++v56;
    }

    if (!v65)
    {
      goto LABEL_290;
    }

    while (1)
    {
      while (1)
      {
        if ((v67 & 0x80000000) == 0 && *(v90 + 84))
        {
          v44 = 0;
          for (k = 0; (*(*(v90 + 40) + 4 * k) & 0x80000000) == 0; k += 2)
          {
            if (tre_minimal_tag_order(*(*(v90 + 40) + 4 * (k + 1)), *(*(v90 + 40) + 4 * k), v86, v55) > 0)
            {
              v44 = 1;
              break;
            }
          }

          if (v44)
          {
            goto LABEL_290;
          }
        }

        if (v65 == *(v90 + 16))
        {
          break;
        }

        v45 = 0;
        if (*(v65 + 8) && (*(v65 + 40) & 0x80) != 0)
        {
          __n_4 = *(v65 + 48);
          v58 = tre_fill_pmatch(__n_4 + 1, v59, *(v90 + 96) & 0xFB, v90, v55, v80);
          if (v58)
          {
            goto LABEL_302;
          }

          v42 = *&v59[16 * __n_4];
          __n = *&v59[16 * __n_4 + 8] - v42;
          if (v42 < 0)
          {
            v39 = 1;
          }

          else if (v88 < 0)
          {
            if (v87)
            {
              v39 = strncmp(&v89[v42], v81 - 1, __n);
            }

            else
            {
              v39 = wcsncmp(&v89[4 * v42], v78 - 1, __n);
            }
          }

          else if (v88 - v80 >= __n)
          {
            if (v87)
            {
              v39 = memcmp(&v89[v42], v81 - 1, __n);
            }

            else
            {
              v39 = wmemcmp(&v89[4 * v42], v78 - 1, __n);
            }
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            goto LABEL_290;
          }

          if (!__n)
          {
            v45 = 1;
          }

          if (v45 && v64[*(v65 + 16)])
          {
            goto LABEL_290;
          }

          v64[*(v65 + 16)] = v45;
          v81 += __n - 1;
          v78 += __n - 1;
          v80 += __n - 1;
          v83 = v82;
          if (v87)
          {
            if (v87 == 1)
            {
              ++v80;
              if (v88 < 0 || v80 < v88)
              {
                v11 = v81++;
                v82 = *v11;
              }

              else
              {
                v82 = 0;
              }
            }

            else if (v87 == 2)
            {
              v80 += v79;
              v25 = 0;
              if ((v88 & 0x80000000) == 0)
              {
                v25 = v80 >= v88;
              }

              if (v25)
              {
                v82 = 0;
                v79 = 1;
              }

              else if (*v81 < 0)
              {
                if (v88 < 0)
                {
                  v37 = 32;
                }

                else
                {
                  v37 = v88 - v80;
                }

                v38 = mbrtowc_l(&v82, v81, v37, &__b, *(v90 + 56));
                if (v38 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  return 17;
                }

                if (v38 || v88 < 0)
                {
                  v79 = v38;
                  v81 += v38;
                }

                else
                {
                  v79 = 1;
                  v82 = 0;
                  ++v81;
                }
              }

              else
              {
                v13 = v81++;
                v82 = *v13;
                v79 = 1;
              }
            }
          }

          else
          {
            ++v80;
            if (v88 < 0 || v80 < v88)
            {
              v12 = v78++;
              v82 = *v12;
            }

            else
            {
              v82 = 0;
            }
          }
        }

        else
        {
          if (v88 < 0)
          {
            if (!v82)
            {
              goto LABEL_290;
            }
          }

          else if (v80 >= v88)
          {
            goto LABEL_290;
          }

          v83 = v82;
          if (v87)
          {
            if (v87 == 1)
            {
              ++v80;
              if (v88 < 0 || v80 < v88)
              {
                v14 = v81++;
                v82 = *v14;
              }

              else
              {
                v82 = 0;
              }
            }

            else if (v87 == 2)
            {
              v80 += v79;
              v24 = 0;
              if ((v88 & 0x80000000) == 0)
              {
                v24 = v80 >= v88;
              }

              if (v24)
              {
                v82 = 0;
                v79 = 1;
              }

              else if (*v81 < 0)
              {
                if (v88 < 0)
                {
                  v35 = 32;
                }

                else
                {
                  v35 = v88 - v80;
                }

                v36 = mbrtowc_l(&v82, v81, v35, &__b, *(v90 + 56));
                if (v36 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  return 17;
                }

                if (v36 || v88 < 0)
                {
                  v79 = v36;
                  v81 += v36;
                }

                else
                {
                  v79 = 1;
                  v82 = 0;
                  ++v81;
                }
              }

              else
              {
                v16 = v81++;
                v82 = *v16;
                v79 = 1;
              }
            }
          }

          else
          {
            ++v80;
            if (v88 < 0 || v80 < v88)
            {
              v15 = v78++;
              v82 = *v15;
            }

            else
            {
              v82 = 0;
            }
          }
        }

        v46 = 0;
        for (m = v65; *(m + 8); m += 56)
        {
          if (*m <= v83 && *(m + 4) >= v83)
          {
            if (!*(m + 40))
            {
              goto LABEL_260;
            }

            if (((*(m + 40) & 1) == 0 || v80 <= 0 && !v77 || v83 == 10 && v75) && ((*(m + 40) & 2) == 0 || !v82 && !v76 || v82 == 10 && v75) && ((*(m + 40) & 8) == 0 || v83 != 95 && !iswalnum_l(v83, *(v90 + 56)) && (v82 == 95 || iswalnum_l(v82, *(v90 + 56)))) && ((*(m + 40) & 0x10) == 0 || (v83 == 95 || iswalnum_l(v83, *(v90 + 56))) && v82 != 95 && !iswalnum_l(v82, *(v90 + 56))))
            {
              if ((*(m + 40) & 0x20) == 0 || !v80 || !v82)
              {
                goto LABEL_249;
              }

              v23 = 1;
              if (v83 != 95)
              {
                v23 = iswalnum_l(v83, *(v90 + 56)) != 0;
              }

              v22 = 1;
              if (v82 != 95)
              {
                v22 = iswalnum_l(v82, *(v90 + 56)) != 0;
              }

              if (v23 != v22)
              {
LABEL_249:
                if ((*(m + 40) & 0x40) == 0)
                {
                  goto LABEL_308;
                }

                if (v80 && v82)
                {
                  v21 = 1;
                  if (v83 != 95)
                  {
                    v21 = iswalnum_l(v83, *(v90 + 56)) != 0;
                  }

                  v20 = 1;
                  if (v82 != 95)
                  {
                    v20 = iswalnum_l(v82, *(v90 + 56)) != 0;
                  }

                  if (v21 == v20)
                  {
LABEL_308:
                    if ((*(m + 40) & 4) == 0 || tre_bracket_match(*(m + 48), v83, v90))
                    {
LABEL_260:
                      if (v46)
                      {
                        if (*(v62 + 23))
                        {
                          v62 = *(v62 + 23);
                        }

                        else
                        {
                          v34 = tre_mem_alloc_impl(v63, 0, 0, 0, 0xC0uLL);
                          if (!v34)
                          {
                            tre_mem_destroy(v63);
                            free(v55);
                            if (v59)
                            {
                              free(v59);
                            }

                            if (v64)
                            {
                              free(v64);
                            }

                            return 12;
                          }

                          *(v34 + 22) = v62;
                          *(v34 + 23) = 0;
                          *(v34 + 5) = tre_mem_alloc_impl(v63, 0, 0, 0, 16 * v57);
                          if (!*(v34 + 5))
                          {
                            tre_mem_destroy(v63);
                            free(v55);
                            if (v59)
                            {
                              free(v59);
                            }

                            if (v64)
                            {
                              free(v64);
                            }

                            return 12;
                          }

                          *(v62 + 23) = v34;
                          v62 = v34;
                        }

                        *v62 = v80;
                        *(v62 + 1) = v79;
                        *(v62 + 1) = v81;
                        *(v62 + 2) = v78;
                        *(v62 + 3) = *(m + 8);
                        *(v62 + 8) = *(m + 16);
                        *(v62 + 9) = v82;
                        memcpy(*(v62 + 5), v55, 16 * v57);
                        memcpy(v62 + 48, &__b, 0x80uLL);
                        for (n = *(m + 24); ; ++n)
                        {
                          v19 = 0;
                          if (n)
                          {
                            v19 = *n >= 0;
                          }

                          if (!v19)
                          {
                            break;
                          }

                          tre_tag_set(*(v62 + 5), *n, v80, v56);
                        }

                        ++v56;
                      }

                      else
                      {
                        v46 = *(m + 8);
                        v66 = *(m + 24);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (!v46)
        {
          goto LABEL_290;
        }

        v65 = v46;
        if (v66)
        {
          while ((*v66 & 0x80000000) == 0)
          {
            v17 = v66++;
            tre_tag_set(v55, *v17, v80, v56);
          }

          ++v56;
        }
      }

      if ((v67 & 0x80000000) == 0 && *(v90 + 84))
      {
        v43 = 0;
        for (ii = 0; (*(*(v90 + 40) + 4 * ii) & 0x80000000) == 0; ii += 2)
        {
          v43 = tre_minimal_tag_order(*(*(v90 + 40) + 4 * (ii + 1)), *(*(v90 + 40) + 4 * ii), v86, v55);
          if (v43)
          {
            break;
          }
        }

        if (v43 > 0)
        {
          goto LABEL_290;
        }

        if (v43 < 0)
        {
          v67 = -1;
        }
      }

      if (v67 < v80 || v67 == v80 && v86 && tre_tag_order(*(v90 + 80), *(v90 + 32), v55, v86))
      {
        v67 = v80;
        if (v86)
        {
          memcpy(v86, v55, 16 * v57);
        }
      }

LABEL_290:
      if (!*(v62 + 22))
      {
        break;
      }

      if ((*(*(v62 + 3) + 40) & 0x80) != 0)
      {
        v64[*(v62 + 8)] = 0;
      }

      v80 = *v62;
      v79 = *(v62 + 1);
      v81 = *(v62 + 1);
      v78 = *(v62 + 2);
      v65 = *(v62 + 3);
      v82 = *(v62 + 9);
      memcpy(v55, *(v62 + 5), 16 * v57);
      memcpy(&__b, v62 + 48, sizeof(__b));
      v62 = *(v62 + 22);
    }

    if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_301;
    }

    if (v80 != v69)
    {
      goto LABEL_300;
    }

    if ((v88 & 0x80000000) == 0)
    {
      break;
    }

    if (!v82)
    {
      goto LABEL_301;
    }

LABEL_300:
    v82 = v71;
    memcpy(&__b, __dst, sizeof(__b));
    v81 = v70;
    v78 = v68;
  }

  if (v80 < v88)
  {
    goto LABEL_300;
  }

LABEL_301:
  v58 = v67 < 0;
  *v84 = v67;
LABEL_302:
  tre_mem_destroy(v63);
  if (v55)
  {
    free(v55);
  }

  return v58;
}

uint64_t tre_tag_set(uint64_t result, int a2, int a3, int a4)
{
  v5 = (result + 16 * a2);
  if (!(*v5)++)
  {
    v5[1] = a3;
  }

  v5[2] = a3;
  v5[3] = a4;
  return result;
}

uint64_t tre_minimal_tag_order(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = (a4 + 16 * a1);
  if (*(a3 + 16 * a1) && *v5)
  {
    if (*(a3 + 16 * a1 + 8) == v5[2])
    {
      v6 = (a4 + 16 * a2);
      if (*(a3 + 16 * a2))
      {
        if (!*v6)
        {
          return 1;
        }
      }

      else if (*v6)
      {
        return -1;
      }

      return (v6[2] - *(a3 + 16 * a2 + 8));
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL tre_tag_order(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i < a1; ++i)
  {
    v5 = tre_tag_order_1(i, *(a2 + 4 * i), a3, a4);
    if (v5)
    {
      return v5 > 0;
    }
  }

  return 0;
}

uint64_t tre_bracket_match(_DWORD *a1, wint_t a2, uint64_t a3)
{
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v16 = (*(a3 + 96) & 2) != 0;
  if ((*(a3 + 96) & 2) != 0)
  {
    if (iswlower_l(a2, *(a3 + 56)))
    {
      v17 = a2;
      v18 = towupper_l(a2, *(a3 + 56));
    }

    else if (iswupper_l(a2, *(a3 + 56)))
    {
      v18 = a2;
      v17 = towlower_l(a2, *(a3 + 56));
    }

    else
    {
      v16 = 0;
    }
  }

  v20 = 0;
  v19 = a1 + 2;
  while (v20 < *a1)
  {
    v13 = *v19;
    if (*v19 == 1)
    {
      if (v16)
      {
        v12 = 1;
        if (v19[1] != v18)
        {
          v12 = v19[1] == v17;
        }

        v21 = v12;
      }

      else
      {
        v21 = v19[1] == a2;
      }
    }

    else if (v13 == 2)
    {
      v15 = v19[1];
      if (++v20 >= *a1)
      {
        break;
      }

      v19 += 2;
      if (*v19 != 3)
      {
        break;
      }

      v14 = v19[1];
      v27 = __locale_key;
      v26 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v27);
      if (v26)
      {
        v11 = v26;
      }

      else
      {
        v11 = __global_locale;
      }

      if (*(v11[166] + 64) <= 1)
      {
        if (v16)
        {
          if (__collate_range_cmp(v15, v18, *(a3 + 56)) > 0 || (v7 = 1, (__collate_range_cmp(v14, v18, *(a3 + 56)) & 0x80000000) != 0))
          {
            v6 = 0;
            if (__collate_range_cmp(v15, v17, *(a3 + 56)) <= 0)
            {
              v6 = __collate_range_cmp(v14, v17, *(a3 + 56)) >= 0;
            }

            v7 = v6;
          }

          v21 = v7 & 1;
        }

        else
        {
          v5 = 0;
          if (__collate_range_cmp(v15, a2, *(a3 + 56)) <= 0)
          {
            v5 = __collate_range_cmp(v14, a2, *(a3 + 56)) >= 0;
          }

          v21 = v5;
        }
      }

      else if (v16)
      {
        if (v15 > v18 || (v10 = 1, v18 > v14))
        {
          v9 = 0;
          if (v15 <= v17)
          {
            v9 = v17 <= v14;
          }

          v10 = v9;
        }

        v21 = v10 & 1;
      }

      else
      {
        v8 = 0;
        if (v15 <= a2)
        {
          v8 = a2 <= v14;
        }

        v21 = v8;
      }
    }

    else if (v13 != 3)
    {
      if (v13 == 4)
      {
        if (v16)
        {
          v4 = 1;
          if (!iswctype_l(v18, v19[1], *(a3 + 56)))
          {
            v4 = iswctype_l(v17, v19[1], *(a3 + 56)) != 0;
          }

          v21 = v4;
        }

        else
        {
          v21 = iswctype_l(a2, v19[1], *(a3 + 56));
        }
      }

      else if (v13 == 5)
      {
        v21 = __collate_equiv_wchar(*(a3 + 56), a2, v19[1], v16);
      }
    }

    if (v21)
    {
      break;
    }

    ++v20;
    v19 += 2;
  }

  if ((a1[1] & 1) == 0)
  {
    return v21;
  }

  if ((*(a3 + 96) & 8) == 0 || a2 != 10)
  {
    return v21 == 0;
  }

  return 0;
}

uint64_t tre_tag_order_1(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + 16 * a1);
  v5 = (a4 + 16 * a1);
  if (a2)
  {
    if (a2 == 1)
    {
      if (*v6)
      {
        if (*v5)
        {
          if (v6[1] == v5[1])
          {
            if (*v5 == *v6)
            {
              if (*v6 == 1)
              {
                return 0;
              }

              else
              {
                return (v6[2] - v5[2]);
              }
            }

            else
            {
              return (*v5 - *v6);
            }
          }

          else
          {
            return (v6[1] - v5[1]);
          }
        }

        else
        {
          return 1;
        }
      }

      else if (*v5)
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else if (a2 == 2)
    {
      if (*v6)
      {
        if (*v5)
        {
          if (v5[1] == v6[1])
          {
            if (*v5 == *v6)
            {
              if (*v6 == 1)
              {
                return 0;
              }

              else
              {
                return (v6[2] - v5[2]);
              }
            }

            else
            {
              return (*v5 - *v6);
            }
          }

          else
          {
            return (v5[1] - v6[1]);
          }
        }

        else
        {
          return 1;
        }
      }

      else if (*v5)
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (v5[2] - v6[2]);
  }
}

uint64_t tre_tnfa_run_parallel(uint64_t a1, const char *a2, int a3, int a4, void *a5, int a6, int *a7)
{
  v91 = a1;
  v90 = a2;
  v89 = a3;
  v88 = a4;
  v87 = a5;
  v86 = a6;
  v85 = a7;
  v84 = 0;
  v83 = 0;
  v82 = a2;
  v80 = 1;
  v79 = a2;
  memset(&__b, 0, sizeof(__b));
  v78 = v86 & 1;
  v77 = v86 & 2;
  v76 = *(v91 + 96) & 8;
  v60 = -1;
  v55 = 1;
  memset(&__b, 0, sizeof(__b));
  if (v87)
  {
    v64 = *(v91 + 80);
  }

  else
  {
    v64 = 0;
  }

  __n = 16 * v64;
  v54 = 16 * (*(v91 + 92) + 1);
  v53 = 16 * *(v91 + 92);
  v52 = 2 * (v54 + __n * *(v91 + 92)) + 28 + __n + v53;
  v75 = malloc_type_malloc();
  if (v75)
  {
    bzero(v75, v52);
    __dst = v75;
    v46 = &v75[__n];
    if (&v75[__n] % 8)
    {
      v33 = 8 - v46 % 8;
    }

    else
    {
      v33 = 0;
    }

    v71 = (v46 + v33);
    v47 = v46 + v33 + v54;
    if (v47 % 8)
    {
      v32 = 8 - v47 % 8;
    }

    else
    {
      v32 = 0;
    }

    v72 = v47 + v32;
    v48 = v47 + v32 + v54;
    if (v48 % 8)
    {
      v31 = 8 - v48 % 8;
    }

    else
    {
      v31 = 0;
    }

    v67 = v48 + v31;
    v49 = v48 + v31 + v53;
    if (v49 % 8)
    {
      v30 = 8 - v49 % 8;
    }

    else
    {
      v30 = 0;
    }

    v50 = v49 + v30;
    for (i = 0; i < *(v91 + 92); ++i)
    {
      *(v72 + 16 * i + 8) = v50;
      v51 = v50 + __n;
      *&v71[16 * i + 8] = v51;
      v50 = v51 + __n;
    }

    for (j = 0; j < *(v91 + 92); ++j)
    {
      *(v67 + 16 * j) = -1;
    }

    if ((*(v91 + 68) & 0x80000000) == 0 && v82)
    {
      __s = v82;
      v44 = *(v91 + 68);
      v43 = 0;
      if (v88 == 1)
      {
        if (v89 < 0)
        {
          v82 = strchr(v82, v44);
        }

        else
        {
          v82 = memchr(v82, v44, v89);
        }
      }

      else if (v88 == 2)
      {
        if (v44 >= 128)
        {
          if (v89 < 0)
          {
            while (1)
            {
              if (!*v82)
              {
                v82 = 0;
                goto LABEL_58;
              }

              if (*v82 < 0)
              {
                break;
              }

              ++v82;
            }

            v43 = 1;
          }

          else
          {
            for (k = 0; ; ++k)
            {
              if (k >= v89)
              {
                v82 = 0;
                goto LABEL_58;
              }

              if (*v82 < 0)
              {
                break;
              }

              ++v82;
            }

            v43 = 1;
          }
        }

        else if (v89 < 0)
        {
          while (1)
          {
            if (!*v82)
            {
              v82 = 0;
              goto LABEL_58;
            }

            if (*v82 == v44)
            {
              goto LABEL_58;
            }

            if (*v82 < 0)
            {
              break;
            }

            ++v82;
          }

          v43 = 1;
        }

        else
        {
          for (m = 0; ; ++m)
          {
            if (m >= v89)
            {
              v82 = 0;
              goto LABEL_58;
            }

            if (*v82 == v44)
            {
              goto LABEL_58;
            }

            if (*v82 < 0)
            {
              break;
            }

            ++v82;
          }

          v43 = 1;
        }
      }

LABEL_58:
      if (!v82)
      {
        free(v75);
        return 1;
      }

      if (!v43)
      {
        if (v82 >= __s + 1)
        {
          v84 = *(v82 - 1);
        }

        v83 = *v82;
        v81 = v82 - __s;
        if (v89 < 0 || v81 < v89)
        {
          ++v82;
        }

LABEL_122:
        v68 = v71;
        while ((v60 & 0x80000000) == 0)
        {
          if (!v64 || v68 == v71)
          {
LABEL_285:
            *v85 = v60;
            free(v75);
            return v60 < 0;
          }

LABEL_179:
          if (v89 < 0)
          {
            if (!v83)
            {
              goto LABEL_285;
            }
          }

          else if (v81 >= v89)
          {
            goto LABEL_285;
          }

          v84 = v83;
          if (v88)
          {
            if (v88 == 1)
            {
              ++v81;
              if (v89 < 0 || v81 < v89)
              {
                v13 = v82++;
                v83 = *v13;
              }

              else
              {
                v83 = 0;
              }
            }

            else if (v88 == 2)
            {
              v81 += v80;
              v23 = 0;
              if ((v89 & 0x80000000) == 0)
              {
                v23 = v81 >= v89;
              }

              if (v23)
              {
                v83 = 0;
                v80 = 1;
              }

              else if (*v82 < 0)
              {
                if (v89 < 0)
                {
                  v35 = 32;
                }

                else
                {
                  v35 = v89 - v81;
                }

                v36 = mbrtowc_l(&v83, v82, v35, &__b, *(v91 + 56));
                if (v36 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  return 17;
                }

                if (v36 || v89 < 0)
                {
                  v80 = v36;
                  v82 += v36;
                }

                else
                {
                  v80 = 1;
                  v83 = 0;
                  ++v82;
                }
              }

              else
              {
                v15 = v82++;
                v83 = *v15;
                v80 = 1;
              }
            }
          }

          else
          {
            ++v81;
            if (v89 < 0 || v81 < v89)
            {
              v14 = v79++;
              v83 = *v14;
            }

            else
            {
              v83 = 0;
            }
          }

          v69 = v72;
          v72 = v71;
          v71 = v69;
          v68 = v69;
          for (n = v72; *n; n += 2)
          {
            for (ii = *n; *(ii + 8); ii += 56)
            {
              if (*ii <= v84 && *(ii + 4) >= v84)
              {
                if (!*(ii + 40))
                {
                  goto LABEL_256;
                }

                if (((*(ii + 40) & 1) == 0 || v81 <= 0 && !v78 || v84 == 10 && v76) && ((*(ii + 40) & 2) == 0 || !v83 && !v77 || v83 == 10 && v76) && ((*(ii + 40) & 8) == 0 || v84 != 95 && !iswalnum_l(v84, *(v91 + 56)) && (v83 == 95 || iswalnum_l(v83, *(v91 + 56)))) && ((*(ii + 40) & 0x10) == 0 || (v84 == 95 || iswalnum_l(v84, *(v91 + 56))) && v83 != 95 && !iswalnum_l(v83, *(v91 + 56))))
                {
                  if ((*(ii + 40) & 0x20) == 0 || !v81 || !v83)
                  {
                    goto LABEL_245;
                  }

                  v22 = 1;
                  if (v84 != 95)
                  {
                    v22 = iswalnum_l(v84, *(v91 + 56)) != 0;
                  }

                  v21 = 1;
                  if (v83 != 95)
                  {
                    v21 = iswalnum_l(v83, *(v91 + 56)) != 0;
                  }

                  if (v22 != v21)
                  {
LABEL_245:
                    if ((*(ii + 40) & 0x40) == 0)
                    {
                      goto LABEL_289;
                    }

                    if (v81 && v83)
                    {
                      v20 = 1;
                      if (v84 != 95)
                      {
                        v20 = iswalnum_l(v84, *(v91 + 56)) != 0;
                      }

                      v19 = 1;
                      if (v83 != 95)
                      {
                        v19 = iswalnum_l(v83, *(v91 + 56)) != 0;
                      }

                      if (v20 == v19)
                      {
LABEL_289:
                        if ((*(ii + 40) & 4) == 0 || tre_bracket_match(*(ii + 48), v84, v91))
                        {
LABEL_256:
                          memcpy(__dst, n[1], __n);
                          v66 = *(ii + 24);
                          if (v66)
                          {
                            while ((*v66 & 0x80000000) == 0)
                            {
                              if (*v66 < v64)
                              {
                                tre_tag_set(__dst, *v66, v81, v55);
                              }

                              ++v66;
                            }

                            ++v55;
                          }

                          if (!*(v91 + 84) || v60 < 0)
                          {
                            goto LABEL_270;
                          }

                          v34 = 0;
                          for (jj = 0; (*(*(v91 + 40) + 4 * jj) & 0x80000000) == 0; jj += 2)
                          {
                            if (tre_minimal_tag_order(*(*(v91 + 40) + 4 * (jj + 1)), *(*(v91 + 40) + 4 * jj), v87, __dst) > 0)
                            {
                              v34 = 1;
                              break;
                            }
                          }

                          if (!v34)
                          {
LABEL_270:
                            if (*(v67 + 16 * *(ii + 16)) < v81)
                            {
                              *v68 = *(ii + 8);
                              v57 = *(v68 + 1);
                              *(v68 + 1) = __dst;
                              __dst = v57;
                              *(v67 + 16 * *(ii + 16)) = v81;
                              *(v67 + 16 * *(ii + 16) + 8) = v68 + 8;
                              if (*v68 == *(v91 + 16))
                              {
                                if (v60 == -1 || v64 > 0 && (v18 = tre_tag_get(*(v68 + 1), 0), v18 <= tre_tag_get(v87, 0)))
                                {
                                  v60 = v81;
                                  memcpy(v87, *(v68 + 1), __n);
                                }
                              }

                              v68 += 16;
                            }

                            else if (tre_tag_order(v64, *(v91 + 32), __dst, **(v67 + 16 * *(ii + 16) + 8)))
                            {
                              v58 = **(v67 + 16 * *(ii + 16) + 8);
                              **(v67 + 16 * *(ii + 16) + 8) = __dst;
                              if (*(ii + 8) == *(v91 + 16))
                              {
                                v60 = v81;
                                memcpy(v87, __dst, __n);
                              }

                              __dst = v58;
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

          *v68 = 0;
        }

        for (kk = *(v91 + 8); ; kk += 56)
        {
          while (1)
          {
            if (!*(kk + 8))
            {
              *v68 = 0;
              goto LABEL_179;
            }

            if (*(v67 + 16 * *(kk + 16)) < v81)
            {
              break;
            }

LABEL_174:
            kk += 56;
          }

          if (!*(kk + 40))
          {
            goto LABEL_165;
          }

          if (((*(kk + 40) & 1) == 0 || v81 <= 0 && !v78 || v84 == 10 && v76) && ((*(kk + 40) & 2) == 0 || !v83 && !v77 || v83 == 10 && v76) && ((*(kk + 40) & 8) == 0 || v84 != 95 && !iswalnum_l(v84, *(v91 + 56)) && (v83 == 95 || iswalnum_l(v83, *(v91 + 56)))) && ((*(kk + 40) & 0x10) == 0 || (v84 == 95 || iswalnum_l(v84, *(v91 + 56))) && v83 != 95 && !iswalnum_l(v83, *(v91 + 56))))
          {
            if ((*(kk + 40) & 0x20) == 0 || !v81 || !v83)
            {
              goto LABEL_156;
            }

            v27 = 1;
            if (v84 != 95)
            {
              v27 = iswalnum_l(v84, *(v91 + 56)) != 0;
            }

            v26 = 1;
            if (v83 != 95)
            {
              v26 = iswalnum_l(v83, *(v91 + 56)) != 0;
            }

            if (v27 != v26)
            {
LABEL_156:
              if ((*(kk + 40) & 0x40) == 0)
              {
                goto LABEL_165;
              }

              if (v81 && v83)
              {
                v25 = 1;
                if (v84 != 95)
                {
                  v25 = iswalnum_l(v84, *(v91 + 56)) != 0;
                }

                v24 = 1;
                if (v83 != 95)
                {
                  v24 = iswalnum_l(v83, *(v91 + 56)) != 0;
                }

                if (v25 == v24)
                {
LABEL_165:
                  *v68 = *(kk + 8);
                  bzero(*(v68 + 1), __n);
                  v65 = *(kk + 24);
                  if (v65)
                  {
                    while ((*v65 & 0x80000000) == 0)
                    {
                      if (*v65 < v64)
                      {
                        tre_tag_set(*(v68 + 1), *v65, v81, v55);
                      }

                      ++v65;
                    }

                    ++v55;
                  }

                  if (*v68 == *(v91 + 16))
                  {
                    v60 = v81;
                    memcpy(v87, *(v68 + 1), __n);
                  }

                  *(v67 + 16 * *(kk + 16)) = v81;
                  *(v67 + 16 * *(kk + 16) + 8) = v68 + 8;
                  v68 += 16;
                  goto LABEL_174;
                }
              }
            }
          }
        }
      }

      if (v82 != __s)
      {
        v83 = *(v82 - 1);
        v81 = v82 - 1 - __s;
        v84 = v83;
        if (v88)
        {
          if (v88 == 1)
          {
            v81 = v82 - __s;
            if (v89 < 0 || v81 < v89)
            {
              v7 = v82++;
              v83 = *v7;
            }

            else
            {
              v83 = 0;
            }
          }

          else if (v88 == 2)
          {
            v81 = v82 - __s;
            v29 = 0;
            if ((v89 & 0x80000000) == 0)
            {
              v29 = v81 >= v89;
            }

            if (v29)
            {
              v83 = 0;
              v80 = 1;
            }

            else if (*v82 < 0)
            {
              if (v89 < 0)
              {
                v39 = 32;
              }

              else
              {
                v39 = v89 - v81;
              }

              v40 = mbrtowc_l(&v83, v82, v39, &__b, *(v91 + 56));
              if (v40 >= 0xFFFFFFFFFFFFFFFELL)
              {
                return 17;
              }

              if (v40 || v89 < 0)
              {
                v80 = v40;
                v82 += v40;
              }

              else
              {
                v80 = 1;
                v83 = 0;
                ++v82;
              }
            }

            else
            {
              v9 = v82++;
              v83 = *v9;
              v80 = 1;
            }
          }
        }

        else
        {
          v81 = v82 - __s;
          if (v89 < 0 || v81 < v89)
          {
            v8 = v79++;
            v83 = *v8;
          }

          else
          {
            v83 = 0;
          }
        }

        goto LABEL_122;
      }
    }

    v84 = v83;
    if (v88)
    {
      if (v88 == 1)
      {
        if (v89 < 0 || v89 > 0)
        {
          v10 = v82++;
          v83 = *v10;
        }

        else
        {
          v83 = 0;
        }
      }

      else if (v88 == 2)
      {
        v28 = 0;
        if ((v89 & 0x80000000) == 0)
        {
          v28 = v89 <= 0;
        }

        if (v28)
        {
          v83 = 0;
          v80 = 1;
        }

        else if (*v82 < 0)
        {
          if (v89 < 0)
          {
            v37 = 32;
          }

          else
          {
            v37 = v89;
          }

          v38 = mbrtowc_l(&v83, v82, v37, &__b, *(v91 + 56));
          if (v38 >= 0xFFFFFFFFFFFFFFFELL)
          {
            return 17;
          }

          if (v38 || v89 < 0)
          {
            v80 = v38;
            v82 += v38;
          }

          else
          {
            v80 = 1;
            v83 = 0;
            ++v82;
          }
        }

        else
        {
          v12 = v82++;
          v83 = *v12;
          v80 = 1;
        }
      }
    }

    else if (v89 < 0 || v89 > 0)
    {
      v11 = v79++;
      v83 = *v11;
    }

    else
    {
      v83 = 0;
    }

    v81 = 0;
    goto LABEL_122;
  }

  return 12;
}

void *tre_mem_new_impl(int a1, void *a2)
{
  if (a1)
  {
    __b = a2;
    memset(a2, 0, 0x30uLL);
  }

  else
  {
    __b = malloc_type_calloc();
  }

  if (__b)
  {
    return __b;
  }

  else
  {
    return 0;
  }
}

void tre_mem_destroy(void **a1)
{
  for (i = *a1; i; i = v2)
  {
    free(*i);
    v2 = i[1];
    free(i);
  }

  free(a1);
}

char *tre_mem_alloc_impl(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  if (*(a1 + 24) < a5)
  {
    if (a2)
    {
      if (!a3)
      {
        *(a1 + 32) = 1;
        return 0;
      }

      *(a1 + 16) = a3;
      *(a1 + 24) = 1024;
    }

    else
    {
      if (8 * a5 <= 0x400)
      {
        v7 = 1024;
      }

      else
      {
        v7 = 8 * a5;
      }

      v8 = malloc_type_malloc();
      if (!v8)
      {
        *(a1 + 32) = 1;
        return 0;
      }

      *v8 = malloc_type_malloc();
      if (!*v8)
      {
        free(v8);
        *(a1 + 32) = 1;
        return 0;
      }

      v8[1] = 0;
      if (*(a1 + 8))
      {
        *(*(a1 + 8) + 8) = v8;
      }

      if (!*a1)
      {
        *a1 = v8;
      }

      *(a1 + 8) = v8;
      *(a1 + 16) = *v8;
      *(a1 + 24) = v7;
    }
  }

  if ((*(a1 + 16) + a5) % 8)
  {
    v6 = 8 - (*(a1 + 16) + a5) % 8;
  }

  else
  {
    v6 = 0;
  }

  v11 = a5 + v6;
  v9 = *(a1 + 16);
  *(a1 + 16) = &v9[v11];
  *(a1 + 24) -= v11;
  if (a4)
  {
    bzero(v9, v11);
  }

  return v9;
}

uint64_t tre_parse(void *a1)
{
  __src = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = a1[1];
  v54 = tre_stack_num_objects(v55);
  v53 = 0;
  v52 = 0;
  v51 = 0;
  if (*(__src + 14) <= 0)
  {
    return 14;
  }

  if (!*(__src + 22))
  {
    v56 = tre_stack_push_int(v55, *(__src + 21));
    tre_stack_push_int(v55, *(__src + 15));
    v56 = tre_stack_push_int(v55, 2u);
    ++*(__src + 15);
  }

  tre_stack_push_int(v55, 0);
  v56 = tre_stack_push_int(v55, 0);
  *(__src + 4) = *(__src + 3);
  *(__src + 5) = *(__src + 3) + 4 * *(__src + 14);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    while (1)
                    {
                      while (1)
                      {
                        while (1)
                        {
                          while (1)
                          {
                            while (1)
                            {
                              while (1)
                              {
                                v1 = tre_stack_num_objects(v55);
                                v24 = 0;
                                if (v1 > v54)
                                {
                                  v24 = v56 == 0;
                                }

                                if (!v24)
                                {
                                  if (v56)
                                  {
                                    return v56;
                                  }

                                  else if (v53 <= 0)
                                  {
                                    *(__src + 2) = v58;
                                    return 0;
                                  }

                                  else
                                  {
                                    return 8;
                                  }
                                }

                                v57 = tre_stack_pop_int(v55);
                                if (v57)
                                {
                                  break;
                                }

                                v51 = tre_stack_pop_int(v55);
                                if ((*(__src + 21) & 0x10) == 0 && (*(__src + 21) & 0x101) != 0)
                                {
                                  v56 = tre_stack_push_int(v55, 7u);
                                  if (v56)
                                  {
                                    continue;
                                  }
                                }

                                v56 = tre_stack_push_int(v55, v51);
                                if (!v56)
                                {
                                  v56 = tre_stack_push_int(v55, 3u);
                                }
                              }

                              if (v57 != 1)
                              {
                                break;
                              }

                              v51 = tre_stack_pop_int(v55);
                              if (*(__src + 3) >= *(__src + 5) || (*(__src + 21) & 0x10) != 0)
                              {
                                goto LABEL_322;
                              }

                              v19 = **(__src + 3);
                              switch(v19)
                              {
                                case '$':
                                  if ((*(__src + 21) & 1) == 0 && ((*(__src + 3) + 8) >= *(__src + 5) || *(*(__src + 3) + 4) != 92 || *(*(__src + 3) + 8) != 41) && *(__src + 3) + 4 != *(__src + 5))
                                  {
                                    goto LABEL_322;
                                  }

                                  v58 = tre_ast_new_literal(*__src, -2, 2, -1);
                                  if (!v58)
                                  {
                                    return 12;
                                  }

                                  *(__src + 3) += 4;
                                  break;
                                case '(':
                                  if ((*(__src + 21) & 0x101) == 0x101 && *(*(__src + 3) + 4) == 63)
                                  {
                                    v39 = *(__src + 21);
                                    v38 = 1;
                                    v37 = 0;
                                    *(__src + 3) += 8;
                                    while (1)
                                    {
                                      while (1)
                                      {
                                        while (1)
                                        {
                                          while (**(__src + 3) == 105)
                                          {
                                            if (v38)
                                            {
                                              v39 |= 2u;
                                            }

                                            else
                                            {
                                              v39 &= ~2u;
                                            }

                                            *(__src + 3) += 4;
                                          }

                                          if (**(__src + 3) != 110)
                                          {
                                            break;
                                          }

                                          if (v38)
                                          {
                                            v39 |= 8u;
                                          }

                                          else
                                          {
                                            v39 &= ~8u;
                                          }

                                          *(__src + 3) += 4;
                                        }

                                        if (**(__src + 3) != 85)
                                        {
                                          break;
                                        }

                                        if (v38)
                                        {
                                          v39 |= 0x40u;
                                        }

                                        else
                                        {
                                          v39 &= ~0x40u;
                                        }

                                        *(__src + 3) += 4;
                                      }

                                      if (**(__src + 3) != 45)
                                      {
                                        break;
                                      }

                                      *(__src + 3) += 4;
                                      v38 = 0;
                                    }

                                    switch(**(__src + 3))
                                    {
                                      case ':':
                                        *(__src + 3) += 4;
                                        ++v53;
                                        v37 = 1;
                                        break;
                                      case '#':
                                        while (1)
                                        {
                                          v18 = 0;
                                          if (**(__src + 3) != 41)
                                          {
                                            v18 = *(__src + 3) < *(__src + 5);
                                          }

                                          if (!v18)
                                          {
                                            break;
                                          }

                                          *(__src + 3) += 4;
                                        }

                                        if (**(__src + 3) != 41 || *(__src + 3) >= *(__src + 5))
                                        {
                                          return 2;
                                        }

                                        *(__src + 3) += 4;
                                        break;
                                      case ')':
                                        *(__src + 3) += 4;
                                        break;
                                      default:
                                        return 13;
                                    }

                                    if (v37)
                                    {
                                      v56 = tre_stack_push_int(v55, *(__src + 21));
                                      if (!v56)
                                      {
                                        v56 = tre_stack_push_int(v55, *(__src + 16));
                                        if (!v56)
                                        {
                                          v56 = tre_stack_push_int(v55, 2u);
                                          if (!v56)
                                          {
                                            ++*(__src + 16);
                                            v56 = tre_stack_push_int(v55, 0);
                                            if (!v56)
                                            {
                                              v56 = tre_stack_push_int(v55, 0);
                                              if (!v56)
                                              {
                                                goto LABEL_212;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v56 = tre_stack_push_int(v55, 0);
                                      if (!v56)
                                      {
                                        v56 = tre_stack_push_int(v55, 1u);
                                        if (!v56)
                                        {
LABEL_212:
                                          *(__src + 21) = v39;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if ((*(__src + 21) & 1) == 0)
                                    {
                                      goto LABEL_322;
                                    }

LABEL_214:
                                    *(__src + 3) += 4;
                                    v56 = tre_stack_push_int(v55, *(__src + 21));
                                    if (!v56)
                                    {
                                      v56 = tre_stack_push_int(v55, *(__src + 15));
                                      if (!v56)
                                      {
                                        v56 = tre_stack_push_int(v55, 2u);
                                        if (!v56)
                                        {
                                          v56 = tre_stack_push_int(v55, (*(__src + 21) & 1) == 0);
                                          if (!v56)
                                          {
                                            v56 = tre_stack_push_int(v55, 0);
                                            if (!v56)
                                            {
                                              ++*(__src + 15);
                                              ++v53;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  break;
                                case ')':
                                  if ((*(__src + 21) & 1) == 0 || v53 <= 0)
                                  {
                                    goto LABEL_322;
                                  }

LABEL_223:
                                  if ((*(__src + 21) & 1) == 0 && !v53)
                                  {
                                    return 8;
                                  }

                                  v58 = tre_ast_new_literal(*__src, -1, -1, -1);
                                  if (!v58)
                                  {
                                    return 12;
                                  }

                                  if ((*(__src + 21) & 1) == 0)
                                  {
                                    *(__src + 3) -= 4;
                                  }

                                  break;
                                case '.':
                                  if ((*(__src + 21) & 8) != 0)
                                  {
                                    v31 = tre_ast_new_literal(*__src, 0, 9, *(__src + 17));
                                    if (!v31)
                                    {
                                      return 12;
                                    }

                                    v30 = tre_ast_new_literal(*__src, 11, 0x7FFFFFFF, *(__src + 17) + 1);
                                    if (!v30)
                                    {
                                      return 12;
                                    }

                                    v58 = tre_ast_new_union(*__src, v31, v30);
                                    if (!v58)
                                    {
                                      return 12;
                                    }

                                    *(__src + 17) += 2;
                                  }

                                  else
                                  {
                                    v58 = tre_ast_new_literal(*__src, 0, 0x7FFFFFFF, *(__src + 17));
                                    if (!v58)
                                    {
                                      return 12;
                                    }

                                    ++*(__src + 17);
                                  }

                                  *(__src + 3) += 4;
                                  break;
                                case '[':
                                  *(__src + 3) += 4;
                                  v56 = tre_parse_bracket(__src, &v58);
                                  if (v56)
                                  {
                                    return v56;
                                  }

                                  break;
                                case '\\':
                                  if ((*(__src + 21) & 1) == 0 && (*(__src + 3) + 4) < *(__src + 5))
                                  {
                                    switch(*(*(__src + 3) + 4))
                                    {
                                      case '(':
                                        *(__src + 3) += 4;
                                        goto LABEL_214;
                                      case ')':
                                        *(__src + 3) += 4;
                                        goto LABEL_223;
                                      case '{':
                                        goto LABEL_322;
                                    }
                                  }

                                  if ((*(__src + 3) + 4) >= *(__src + 5))
                                  {
                                    return 5;
                                  }

                                  if ((*(__src + 21) & 0x100) == 0)
                                  {
                                    *(__src + 3) += 4;
LABEL_282:
                                    if ((*(__src + 21) & 0x101) == 1 || !iswdigit_l(**(__src + 3), *(__src + 6)) || **(__src + 3) == 48)
                                    {
                                      v58 = tre_ast_new_literal(*__src, **(__src + 3), **(__src + 3), *(__src + 17));
                                      ++*(__src + 17);
                                      *(__src + 3) += 4;
                                    }

                                    else
                                    {
                                      v32 = **(__src + 3) - 48;
                                      v58 = tre_ast_new_literal(*__src, -4, v32, *(__src + 17));
                                      if (!v58)
                                      {
                                        return 12;
                                      }

                                      v6 = *(__src + 16);
                                      *(__src + 16) = v6 + 1;
                                      *(v58 + 13) = v6;
                                      ++*(__src + 17);
                                      ++*(__src + 19);
                                      if (v32 < *(__src + 18))
                                      {
                                        v16 = *(__src + 18);
                                      }

                                      else
                                      {
                                        v16 = v32;
                                      }

                                      *(__src + 18) = v16;
                                      *(__src + 3) += 4;
                                    }

                                    goto LABEL_292;
                                  }

                                  tre_expand_macro((*(__src + 3) + 4), *(__src + 5), v62, 0x40uLL);
                                  if (v62[0])
                                  {
                                    memset(__b, 0, sizeof(__b));
                                    memcpy(__b, __src, sizeof(__b));
                                    __b[3] = v62;
                                    LODWORD(__b[7]) = wcslen(v62);
                                    LODWORD(__b[11]) = 1;
                                    v56 = tre_parse(__b);
                                    if (v56)
                                    {
                                      return v56;
                                    }

                                    *(__src + 3) += 8;
                                    *(__src + 17) = HIDWORD(__b[8]);
                                    v58 = __b[2];
                                  }

                                  else if (*(*(__src + 3) + 4) == 81)
                                  {
                                    *(__src + 21) |= 0x10u;
                                    v52 |= 0x10u;
                                    *(__src + 3) += 8;
                                    v56 = tre_stack_push_int(v55, 0);
                                    if (!v56)
                                    {
                                      goto LABEL_328;
                                    }
                                  }

                                  else
                                  {
                                    *(__src + 3) += 4;
                                    v17 = **(__src + 3);
                                    switch(v17)
                                    {
                                      case '<':
                                        v58 = tre_ast_new_literal(*__src, -2, 8, -1);
                                        *(__src + 3) += 4;
                                        break;
                                      case '>':
                                        v58 = tre_ast_new_literal(*__src, -2, 16, -1);
                                        *(__src + 3) += 4;
                                        break;
                                      case 'B':
                                        v58 = tre_ast_new_literal(*__src, -2, 64, -1);
                                        *(__src + 3) += 4;
                                        break;
                                      case 'b':
                                        v58 = tre_ast_new_literal(*__src, -2, 32, -1);
                                        *(__src + 3) += 4;
                                        break;
                                      case 'x':
                                        *(__src + 3) += 4;
                                        if (**(__src + 3) == 123 || *(__src + 3) >= *(__src + 5))
                                        {
                                          if (*(__src + 3) >= *(__src + 5))
                                          {
                                            goto LABEL_282;
                                          }

                                          v33 = 0;
                                          for (*(__src + 3) += 4; (((*(__src + 5) - *(__src + 3)) / 4) & 0x8000000000000000) == 0; *(__src + 3) += 4)
                                          {
                                            if (v33 == 32)
                                            {
                                              return 9;
                                            }

                                            if (**(__src + 3) == 125)
                                            {
                                              break;
                                            }

                                            if (!iswxdigit_l(**(__src + 3), *(__src + 6)))
                                            {
                                              return 9;
                                            }

                                            v61[v33++] = **(__src + 3);
                                          }

                                          *(__src + 3) += 4;
                                          v61[v33] = 0;
                                          v5 = strtol(v61, 0, 16);
                                          v58 = tre_ast_new_literal(*__src, v5, v5, *(__src + 17));
                                          ++*(__src + 17);
                                        }

                                        else
                                        {
                                          *__str = 0;
                                          v35 = 0;
                                          if (iswxdigit_l(**(__src + 3), *(__src + 6)) && *(__src + 3) < *(__src + 5))
                                          {
                                            __str[0] = **(__src + 3);
                                            *(__src + 3) += 4;
                                          }

                                          if (iswxdigit_l(**(__src + 3), *(__src + 6)) && *(__src + 3) < *(__src + 5))
                                          {
                                            __str[1] = **(__src + 3);
                                            *(__src + 3) += 4;
                                          }

                                          v4 = strtol(__str, 0, 16);
                                          v58 = tre_ast_new_literal(*__src, v4, v4, *(__src + 17));
                                          ++*(__src + 17);
                                        }

                                        break;
                                      default:
                                        goto LABEL_282;
                                    }

LABEL_292:
                                    if (!v58)
                                    {
                                      return 12;
                                    }
                                  }

                                  break;
                                default:
                                  if (v19 != 94 || (*(__src + 21) & 1) == 0 && !v51 && *(__src + 3) != *(__src + 4))
                                  {
                                    goto LABEL_322;
                                  }

                                  v58 = tre_ast_new_literal(*__src, -2, 1, -1);
                                  if (!v58)
                                  {
                                    return 12;
                                  }

                                  *(__src + 3) += 4;
                                  break;
                              }
                            }

                            if (v57 != 2)
                            {
                              break;
                            }

                            v27 = tre_stack_pop_int(v55);
                            v10 = tre_stack_pop_int(v55);
                            *(__src + 21) = v10;
                            if ((*(v58 + 13) & 0x80000000) != 0 || *(v58 + 13) >= 0x40000000)
                            {
                              goto LABEL_379;
                            }

                            if (v27 < 0x40000000)
                            {
                              v26 = tre_ast_new_literal(*__src, -1, -1, -1);
                              if (!v26)
                              {
                                return 12;
                              }

                              v25 = tre_ast_new_catenation(*__src, v26, v58);
                              if (!v25)
                              {
                                return 12;
                              }

                              *(v25 + 14) = *(v58 + 14);
                              v58 = v25;
LABEL_379:
                              *(v58 + 13) = v27;
                              if (v27 < 0x40000000)
                              {
                                ++*(v58 + 14);
                              }
                            }
                          }

                          if (v57 != 3)
                          {
                            break;
                          }

                          v51 = tre_stack_pop_int(v55);
                          v56 = tre_stack_push_int(v55, 5u);
                          if (!v56)
                          {
                            v56 = tre_stack_push_int(v55, v51);
                            if (!v56)
                            {
LABEL_27:
                              v56 = tre_stack_push_int(v55, 4u);
                            }
                          }
                        }

                        if (v57 != 4)
                        {
                          break;
                        }

                        v51 = tre_stack_pop_int(v55);
                        v56 = tre_stack_push_int(v55, 9u);
                        if (!v56)
                        {
                          v56 = tre_stack_push_int(v55, v51);
                          if (!v56)
                          {
LABEL_328:
                            v56 = tre_stack_push_int(v55, 1u);
                          }
                        }
                      }

                      if (v57 != 5)
                      {
                        break;
                      }

                      v50 = 0;
                      if (*(__src + 3) < *(__src + 5))
                      {
                        v50 = **(__src + 3);
                        if ((*(__src + 21) & 0x10) != 0)
                        {
LABEL_53:
                          v56 = tre_stack_push_voidptr(v55, v58);
                          if (!v56)
                          {
                            v56 = tre_stack_push_int(v55, 6u);
                            if (!v56)
                            {
                              v56 = tre_stack_push_int(v55, 5u);
                              if (!v56)
                              {
                                v56 = tre_stack_push_int(v55, 0);
                                if (!v56)
                                {
                                  goto LABEL_27;
                                }
                              }
                            }
                          }
                        }

                        else if (((*(__src + 21) & 1) == 0 || v50 != 124) && ((*(__src + 21) & 0x101) != 0x100 || (*(__src + 3) + 4) >= *(__src + 5) || v50 != 92 || *(*(__src + 3) + 4) != 124))
                        {
                          if (((*(__src + 21) & 1) == 0 || v50 != 41 || v53 <= 0) && ((*(__src + 21) & 1) != 0 || (*(__src + 3) + 4) >= *(__src + 5) || v50 != 92 || *(*(__src + 3) + 4) != 41))
                          {
                            goto LABEL_53;
                          }

                          if ((*(__src + 21) & 1) == 0 && !v53)
                          {
                            return 8;
                          }

                          --v53;
                          if ((*(__src + 21) & 0x101) == 0)
                          {
                            *(__src + 3) += 8;
                          }
                        }
                      }
                    }

                    if (v57 != 6)
                    {
                      break;
                    }

                    v49 = tre_stack_pop_voidptr(v55);
                    v48 = 0;
                    v48 = tre_ast_new_catenation(*__src, v49, v58);
                    if (!v48)
                    {
                      return 12;
                    }

                    v58 = v48;
                  }

                  if (v57 != 7)
                  {
                    break;
                  }

                  if (*(__src + 3) < *(__src + 5) && (*(__src + 21) & 0x10) == 0)
                  {
                    if (*(__src + 21))
                    {
LABEL_68:
                      v23 = **(__src + 3);
                      if (v23 == 41)
                      {
                        *(__src + 3) += 4;
                      }

                      else if (v23 == 124)
                      {
                        v56 = tre_stack_push_int(v55, 7u);
                        if (!v56)
                        {
                          v56 = tre_stack_push_voidptr(v55, *(__src + 3));
                          if (!v56)
                          {
                            v56 = tre_stack_push_voidptr(v55, v58);
                            if (!v56)
                            {
                              v56 = tre_stack_push_int(v55, 8u);
                              if (!v56)
                              {
                                v56 = tre_stack_push_int(v55, (*(__src + 21) & 0x101) == 256);
                                if (!v56)
                                {
                                  v56 = tre_stack_push_int(v55, 3u);
                                  if (!v56)
                                  {
                                    *(__src + 3) += 4;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      else if ((*(__src + 21) & 1) == 0)
                      {
                        *(__src + 3) -= 4;
                      }
                    }

                    else if (**(__src + 3) == 92 && (*(__src + 3) + 4) < *(__src + 5))
                    {
                      *(__src + 3) += 4;
                      goto LABEL_68;
                    }
                  }
                }

                if (v57 != 8)
                {
                  break;
                }

                v47 = 0;
                v46 = tre_stack_pop_voidptr(v55);
                v45 = tre_stack_pop_voidptr(v55);
                if (v45 == *(__src + 3) - 4)
                {
                  return 14;
                }

                v47 = tre_ast_new_union(*__src, v46, v58);
                if (!v47)
                {
                  return 12;
                }

                v58 = v47;
              }
            }

            while (v57 != 9 || *(__src + 3) >= *(__src + 5) || (*(__src + 21) & 0x10) != 0);
            v44 = (*(__src + 21) & 0x40) != 0;
            v43 = 0;
            v42 = -1;
            v22 = **(__src + 3);
            if (v22 == 42)
            {
              break;
            }

            switch(v22)
            {
              case '+':
              case '?':
                if (*(__src + 21))
                {
                  goto LABEL_95;
                }

                break;
              case '\\':
                if ((*(__src + 21) & 1) == 0 && (*(__src + 3) + 4) < *(__src + 5))
                {
                  v21 = *(*(__src + 3) + 4);
                  if (v21 == 43 || v21 == 63)
                  {
                    if ((*(__src + 21) & 0x100) != 0)
                    {
                      *(__src + 3) += 4;
                      goto LABEL_96;
                    }
                  }

                  else if (v21 == 123)
                  {
                    *(__src + 3) += 4;
LABEL_147:
                    v20 = 0;
                    if (!*(v58 + 12))
                    {
                      v20 = 0;
                      if ((*(v58 + 13) & 0x80000000) != 0)
                      {
                        v20 = **v58 == -2;
                      }
                    }

                    v40 = v20;
                    *(__src + 3) += 4;
                    v56 = tre_parse_bound(__src, &v58);
                    if (v56 == 1)
                    {
                      v56 = 0;
                      *(__src + 3) -= 4;
                    }

                    else
                    {
                      if (v56)
                      {
                        return v56;
                      }

                      if (v40)
                      {
                        return 13;
                      }

                      if (*(v58 + 12) == 2)
                      {
                        v3 = *(__src + 16);
                        *(__src + 16) = v3 + 1;
                        *(v58 + 13) = v3;
                      }
                    }
                  }
                }

                break;
              case '{':
                v40 = 0;
                if (*(__src + 21))
                {
                  goto LABEL_147;
                }

                break;
            }
          }

LABEL_95:
          v41 = 0;
LABEL_96:
          if (*(v58 + 12) || (*(v58 + 13) & 0x80000000) == 0 || **v58 != -2)
          {
            break;
          }

          if (*(__src + 21))
          {
            return 13;
          }
        }

        if (**(__src + 3) == 43)
        {
          v43 = 1;
        }

        if (**(__src + 3) == 63)
        {
          v42 = 1;
        }

        if (*(__src + 21))
        {
          if ((*(__src + 3) + 4) < *(__src + 5))
          {
            if (*(*(__src + 3) + 4) == 63)
            {
              if ((*(__src + 21) & 0x100) == 0)
              {
                return 13;
              }

              v44 = (*(__src + 21) & 0x40) == 0;
              *(__src + 3) += 4;
            }

            else if (*(*(__src + 3) + 4) == 42 || *(*(__src + 3) + 4) == 43)
            {
              return 13;
            }
          }
        }

        else
        {
          if ((*(__src + 3) + 4) < *(__src + 5) && *(*(__src + 3) + 4) == 42)
          {
            return 13;
          }

          if ((*(__src + 3) + 8) < *(__src + 5))
          {
            if (*(*(__src + 3) + 4) == 92 && *(*(__src + 3) + 4) == 63)
            {
              if ((*(__src + 21) & 0x100) != 0)
              {
                v44 = (*(__src + 21) & 0x40) == 0;
                *(__src + 3) += 8;
              }
            }

            else if (*(*(__src + 3) + 4) == 92 && *(*(__src + 3) + 8) == 43)
            {
              return 13;
            }
          }
        }

        if (v44)
        {
          ++*(__src + 19);
        }

        if (!v58)
        {
          break;
        }

        *(__src + 3) += 4;
        v41 = tre_ast_new_iter(*__src, v58, v43, v42, v44);
        if (!v41)
        {
          return 12;
        }

        v58 = v41;
        v2 = *(__src + 16);
        *(__src + 16) = v2 + 1;
        *(v58 + 13) = v2;
      }

      if (*(__src + 21))
      {
        return 13;
      }

LABEL_322:
      if (!v52 || (*(__src + 3) + 4) >= *(__src + 5) || **(__src + 3) != 92 || *(*(__src + 3) + 4) != 69)
      {
        break;
      }

      *(__src + 21) &= ~v52;
      v52 = 0;
      *(__src + 3) += 8;
      if (*(__src + 3) >= *(__src + 5))
      {
        v58 = tre_ast_new_literal(*__src, -1, -1, -1);
        if (!v58)
        {
          return 12;
        }
      }

      else
      {
        v56 = tre_stack_push_int(v55, 0);
        if (!v56)
        {
          goto LABEL_328;
        }
      }
    }

    if ((*(__src + 21) & 0x10) != 0)
    {
      goto LABEL_358;
    }

    if (*(__src + 3) >= *(__src + 5))
    {
      break;
    }

    if (*(__src + 21))
    {
      if (*(__src + 3) >= *(__src + 5))
      {
        goto LABEL_358;
      }

      if (**(__src + 3) == 124)
      {
        return 14;
      }

      if (**(__src + 3) != 123)
      {
        if (**(__src + 3) == 42 || **(__src + 3) == 43 || **(__src + 3) == 63)
        {
          return 13;
        }

        goto LABEL_358;
      }

      *(__src + 3) += 4;
    }

    else
    {
      if ((*(__src + 3) + 4) >= *(__src + 5) || **(__src + 3) != 92 || *(*(__src + 3) + 4) != 123)
      {
        goto LABEL_358;
      }

      *(__src + 3) += 8;
    }

    v56 = tre_parse_bound(__src, 0);
    if (v56 != 1)
    {
      if (v56)
      {
        return v56;
      }

      else
      {
        return 13;
      }
    }

    v56 = 0;
    *(__src + 3) -= 4;
LABEL_358:
    if ((*(__src + 21) & 2) != 0 && (iswupper_l(**(__src + 3), *(__src + 6)) || iswlower_l(**(__src + 3), *(__src + 6))))
    {
      v15 = *__src;
      v14 = towupper_l(**(__src + 3), *(__src + 6));
      v8 = towupper_l(**(__src + 3), *(__src + 6));
      v29 = tre_ast_new_literal(v15, v14, v8, *(__src + 17));
      if (!v29)
      {
        return 12;
      }

      v13 = *__src;
      v12 = towlower_l(**(__src + 3), *(__src + 6));
      v9 = towlower_l(**(__src + 3), *(__src + 6));
      v28 = tre_ast_new_literal(v13, v12, v9, *(__src + 17));
      if (!v28)
      {
        return 12;
      }

      v58 = tre_ast_new_union(*__src, v29, v28);
      if (!v58)
      {
        return 12;
      }
    }

    else
    {
      v58 = tre_ast_new_literal(*__src, **(__src + 3), **(__src + 3), *(__src + 17));
      if (!v58)
      {
        return 12;
      }
    }

    ++*(__src + 17);
    *(__src + 3) += 4;
  }

  if (v53 <= 0)
  {
    return 14;
  }

  else
  {
    return 8;
  }
}

uint64_t tre_parse_bound(uint64_t a1, uint64_t *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = *(a1 + 24);
  v6 = (*(a1 + 84) & 0x40) != 0;
  v9 = -1;
  if (v7 < *(a1 + 40))
  {
    if (*v7 < 48 || *v7 > 57)
    {
      if (*(v11 + 84))
      {
        return 1;
      }

      else
      {
        return 10;
      }
    }

    else
    {
      v9 = tre_parse_int(&v7, *(v11 + 40));
      v8 = v9;
      if (v7 < *(v11 + 40) && *v7 == 44)
      {
        ++v7;
        v8 = tre_parse_int(&v7, *(v11 + 40));
      }

      if ((v8 < 0 || v9 <= v8) && v9 <= 255 && v8 <= 255)
      {
        if (v7 < *(v11 + 40))
        {
          if (v7 == *(v11 + 24))
          {
            return 10;
          }

          else
          {
            if (*(v11 + 84))
            {
              if (v7 >= *(v11 + 40) || *v7 != 125)
              {
                return 10;
              }

              if (++v7 < *(v11 + 40))
              {
                if (*v7 == 63)
                {
                  if ((*(v11 + 84) & 0x100) == 0)
                  {
                    return 13;
                  }

                  v6 = (*(v11 + 84) & 0x40) == 0;
                  ++v7;
                }

                else if (*v7 == 42 || *v7 == 43)
                {
                  return 13;
                }
              }
            }

            else
            {
              if ((v7 + 1) >= *(v11 + 40) || *v7 != 92 || v7[1] != 125)
              {
                return 10;
              }

              v7 += 2;
              if (v7 < *(v11 + 40) && *v7 == 42)
              {
                return 13;
              }
            }

            if (v6)
            {
              ++*(v11 + 76);
            }

            if (!v10 || (v4 = tre_ast_new_iter(*v11, *v10, v9, v8, v6), (*v10 = v4) != 0))
            {
              *(v11 + 24) = v7;
              return 0;
            }

            else
            {
              return 12;
            }
          }
        }

        else
        {
          return 9;
        }
      }

      else
      {
        return 10;
      }
    }
  }

  else if (*(v11 + 84))
  {
    return 1;
  }

  else
  {
    return 9;
  }
}

uint64_t tre_parse_bracket(uint64_t a1, char **a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 32;
  v18 = 0;
  if ((*(v24 + 40) - *(v24 + 24)) / 4 >= 6 && **(v24 + 24) == 91 && *(*(v24 + 24) + 4) == 58 && (*(*(v24 + 24) + 8) == 60 || *(*(v24 + 24) + 8) == 62) && *(*(v24 + 24) + 12) == 58 && *(*(v24 + 24) + 16) == 93 && *(*(v24 + 24) + 20) == 93)
  {
    if (*(*(v24 + 24) + 8) == 60)
    {
      v2 = 8;
    }

    else
    {
      v2 = 16;
    }

    *v23 = tre_ast_new_literal(*v24, -2, v2, -1);
    *(v24 + 24) += 24;
    if (*v23)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  v20 = malloc_type_calloc();
  if (!v20)
  {
    return 12;
  }

  if (**(v24 + 24) == 94)
  {
    v20[1] |= 1u;
    *(v24 + 24) += 4;
  }

  v21 = tre_parse_bracket_items(v24, &v20, &v19, &v18);
  if (v21)
  {
LABEL_44:
    free(v20);
    ++*(v24 + 68);
    *v23 = v22;
    return v21;
  }

  if (!v18)
  {
    v22 = tre_ast_new_literal(*v24, 0, 0x7FFFFFFF, *(v24 + 68));
    if (v22)
    {
      v10 = *v22;
      *(v10 + 16) = tre_mem_alloc_impl(*v24, 0, 0, 0, 8 * *v20 + 8);
      if (*(v10 + 16))
      {
        memcpy(*(v10 + 16), v20, 8 * *v20 + 8);
      }

      else
      {
        v21 = 12;
      }
    }

    else
    {
      v21 = 12;
    }

    goto LABEL_44;
  }

  v17 = 0;
  v16 = 0;
  i = 0;
  memset(__b, 0, sizeof(__b));
  free(v20);
  v4 = *v18;
  v5 = *(v24 + 24);
  v17 = malloc_type_malloc();
  if (v17)
  {
    v16 = v17;
    if (v18[2] > 0)
    {
      v6 = v16;
      v16 += 4;
      *v6 = 91;
      __src = *(v24 + 24);
      for (i = (v18 + 4); *i; i += 16)
      {
        v11 = (*i - __src) / 4 - 2;
        if (v11 > 0)
        {
          memcpy(v16, __src, 4 * v11);
          v16 += 4 * v11;
        }

        __src = (*i + 4 * *(i + 2) + 8);
      }

      v12 = (*v18 - __src) / 4;
      memcpy(v16, __src, 4 * v12);
      v16 += 4 * v12;
      v7 = v16;
      v16 += 4;
      *v7 = 124;
    }

    for (i = (v18 + 4); *i; i += 16)
    {
      memcpy(v16, *i, 4 * *(i + 2));
      v16 += 4 * *(i + 2);
      if (*(i + 2))
      {
        v8 = v16;
        v16 += 4;
        *v8 = 124;
      }
    }

    *v16 = 0;
    memcpy(__b, v24, sizeof(__b));
    __b[3] = v17;
    LODWORD(__b[7]) = (v16 - v17) / 4;
    LODWORD(__b[11]) = 1;
    HIDWORD(__b[10]) |= 1u;
    v21 = tre_parse(__b);
    free(v17);
    if (v21)
    {
      free(v18);
      return v21;
    }

    else
    {
      *(v24 + 24) = *v18;
      *(v24 + 68) = HIDWORD(__b[8]);
      free(v18);
      *v23 = __b[2];
      return 0;
    }
  }

  else
  {
    free(v18);
    return 12;
  }
}

_DWORD *tre_expand_macro(_DWORD *result, unint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a3 = 0;
  if (result < a2)
  {
    for (i = 0; *(&tre_macros + 2 * i + 1); ++i)
    {
      if (*(&tre_macros + 16 * i) == *result)
      {
        for (j = 0; ; ++j)
        {
          v4 = 0;
          if (*(*(&tre_macros + 2 * i + 1) + j))
          {
            v4 = j < a4;
          }

          if (!v4)
          {
            break;
          }

          a3[j] = *(*(&tre_macros + 2 * i + 1) + j);
        }

        a3[j] = 0;
        return result;
      }
    }
  }

  return result;
}

uint64_t tre_parse_int(_DWORD **a1, unint64_t a2)
{
  v5 = -1;
  for (i = *a1; ; ++i)
  {
    v3 = 0;
    if (i < a2)
    {
      v3 = 0;
      if (*i >= 48)
      {
        v3 = *i <= 57;
      }
    }

    if (!v3)
    {
      break;
    }

    if ((v5 & 0x80000000) != 0)
    {
      v5 = 0;
    }

    v5 = 10 * v5 + *i - 48;
  }

  *a1 = i;
  return v5;
}

uint64_t tre_parse_bracket_items(uint64_t a1, uint64_t *a2, int *a3, void **a4)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = *(a1 + 24);
  v30 = *(a1 + 40);
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = *a3;
  v24 = 0;
  v23 = -1;
  v22 = 0;
  v21 = 0;
  v20 = *(*a2 + 4) & 1;
  v19 = 0;
  v18 = 0;
  while (1)
  {
    if (v31 >= v30)
    {
      v26 = 7;
      goto LABEL_117;
    }

    v10 = *v31;
    if (*v31 == 45)
    {
      if (v31 == v35[3])
      {
        v22 = 45;
        ++v24;
        v23 = 0;
        goto LABEL_115;
      }

      if (v23 > 0)
      {
        v21 = 45;
        goto LABEL_103;
      }

      if ((v31 + 1) >= v30)
      {
        v26 = 7;
        goto LABEL_117;
      }

      if (v31[1] == 93)
      {
        v21 = 45;
        goto LABEL_109;
      }

      if (v23 < 0)
      {
        v26 = 11;
        goto LABEL_117;
      }

      v23 = 1;
      goto LABEL_115;
    }

    if (v10 != 91)
    {
      if (v10 != 93)
      {
        v21 = *v31;
        goto LABEL_102;
      }

      if (v31 != v35[3])
      {
        if (v19)
        {
          if (v29)
          {
            *v29 = v31 + 1;
            *(v29 + 2) = v24;
            *v28 = 0;
          }

          *v32 = v29;
          return 0;
        }

        else
        {
          if (!v23)
          {
            v26 = tre_new_item(*v35, 1, v22, &v25, v34);
            if (v26)
            {
              goto LABEL_117;
            }
          }

          *v33 = v25;
          v35[3] = (v31 + 1);
          return 0;
        }
      }

      v22 = 93;
      v23 = 0;
      ++v24;
      goto LABEL_115;
    }

    if ((v31 + 1) >= v30)
    {
      v26 = 7;
      goto LABEL_117;
    }

    v9 = v31[1];
    if (v9 != 46)
    {
      break;
    }

    v31 += 2;
    v18 = v31;
    while (1)
    {
      if (v31 >= v30)
      {
        v26 = 3;
        goto LABEL_117;
      }

      if (*v31 == 46)
      {
        if ((v31 + 1) >= v30)
        {
          v26 = 3;
          goto LABEL_117;
        }

        if (v31[1] == 93)
        {
          break;
        }
      }

      ++v31;
    }

    if (v31 == v18)
    {
      v26 = 3;
      goto LABEL_117;
    }

    v21 = tre_search_cnames(v18, v31 - v18);
    if (v21 != -1)
    {
      ++v31;
      goto LABEL_102;
    }

    if (!__collate_equiv_value(v35[6], v18, v31 - v18))
    {
      v26 = 3;
      goto LABEL_117;
    }

    if (v31 - v18 == 1)
    {
      v21 = *v18;
      ++v31;
LABEL_102:
      if (v23 <= 0)
      {
LABEL_109:
        if (!v19)
        {
          if (!v23)
          {
            v26 = tre_new_item(*v35, 1, v22, &v25, v34);
            if (v26)
            {
              goto LABEL_117;
            }
          }

          v22 = v21;
        }

        v23 = 0;
      }

      else
      {
LABEL_103:
        if (__collate_range_cmp(v22, v21, v35[6]) > 0)
        {
          v26 = 11;
          goto LABEL_117;
        }

        if (!v19)
        {
          v26 = tre_new_item(*v35, 2, v22, &v25, v34);
          if (v26)
          {
            goto LABEL_117;
          }

          v26 = tre_new_item(*v35, 3, v21, &v25, v34);
          if (v26)
          {
            goto LABEL_117;
          }
        }

        v23 = -1;
      }

      ++v24;
      goto LABEL_115;
    }

    if (v20)
    {
      v26 = 3;
      goto LABEL_117;
    }

    if (v23 > 0)
    {
      v26 = 11;
      goto LABEL_117;
    }

    v23 = -1;
    v19 = 1;
    if (!v28)
    {
      v29 = malloc_type_malloc();
      if (!v29)
      {
        return 12;
      }

      v28 = v29 + 16;
      v27 = 16;
    }

    if ((v28 - v29) / 16 - 1 >= v27)
    {
      v17 = v27;
      v27 *= 2;
      v16 = malloc_type_realloc();
      if (!v16)
      {
        free(v29);
        return 12;
      }

      v29 = v16;
      v28 = &v16[16 * v17 + 16];
    }

    *v28 = v18;
    *(v28 + 2) = v31 - v18;
    v28 += 16;
    ++v31;
LABEL_115:
    ++v31;
  }

  if (v9 != 58 && v9 != 61)
  {
    v21 = 91;
    goto LABEL_102;
  }

  v15 = v31[1];
  if (v23 > 0)
  {
    v26 = 11;
    goto LABEL_117;
  }

  if (v19 || v23 || (v26 = tre_new_item(*v35, 1, v22, &v25, v34)) == 0)
  {
    v23 = -1;
    v31 += 2;
    v18 = v31;
    while (1)
    {
      if (v31 >= v30)
      {
        if (v15 == 61)
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }

        v26 = v4;
        goto LABEL_117;
      }

      if (*v31 == v15)
      {
        if ((v31 + 1) >= v30)
        {
          if (v15 == 61)
          {
            v5 = 3;
          }

          else
          {
            v5 = 4;
          }

          v26 = v5;
          goto LABEL_117;
        }

        if (v31[1] == 93)
        {
          break;
        }
      }

      ++v31;
    }

    if (v31 == v18)
    {
      if (v15 == 61)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      v26 = v6;
      goto LABEL_117;
    }

    if (v15 == 61)
    {
      v14 = 0;
      v14 = __collate_equiv_value(v35[6], v18, v31 - v18);
      if (!v14)
      {
        v21 = tre_search_cnames(v18, v31 - v18);
        if (v21 != -1)
        {
          ++v31;
          goto LABEL_102;
        }

        v26 = 3;
        goto LABEL_117;
      }

      if (!v19)
      {
        v26 = tre_new_item(*v35, 5, v14, &v25, v34);
        if (v26)
        {
          goto LABEL_117;
        }
      }

LABEL_91:
      ++v31;
      ++v24;
      goto LABEL_115;
    }

    if (v19)
    {
      goto LABEL_91;
    }

    v13 = 0;
    if (v31 - v18 <= 63)
    {
      v8 = v31 - v18;
    }

    else
    {
      LODWORD(v8) = 63;
    }

    v12 = v8;
    wcsncpy(v38, v18, v8);
    v38[v12] = 0;
    v11 = v38;
    memset(&__b, 0, sizeof(__b));
    v12 = wcsrtombs_l(v39, &v11, 0x40uLL, &__b, v35[6]);
    v39[v12] = 0;
    v13 = wctype_l(v39, v35[6]);
    if (!v13)
    {
      v26 = 4;
      goto LABEL_117;
    }

    v26 = tre_new_item(*v35, 4, v13, &v25, v34);
    if (!v26)
    {
      goto LABEL_91;
    }
  }

LABEL_117:
  if (v29)
  {
    free(v29);
  }

  return v26;
}

uint64_t tre_search_cnames(const __int32 *a1, size_t a2)
{
  v6 = 0;
  v5 = 95;
  while (v6 <= v5)
  {
    v4 = (v6 + v5) / 2;
    v3 = wcsncmp(a1, *(&cnames + 2 * v4), a2);
    if (!v3 && !*(*(&cnames + 2 * v4) + a2))
    {
      return *(&cnames + 4 * v4 + 2);
    }

    if (v3 <= 0)
    {
      v5 = v4 - 1;
    }

    else
    {
      v6 = v4 + 1;
    }
  }

  return -1;
}

uint64_t tre_new_item(uint64_t a1, int a2, int a3, int *a4, uint64_t *a5)
{
  v9 = *a5;
  v8 = **a5;
  if (v8 < *a4)
  {
    goto LABEL_7;
  }

  if (*a4 < 1024)
  {
    *a4 *= 2;
    v5 = *a4;
    v7 = malloc_type_realloc();
    if (!v7)
    {
      return 12;
    }

    v9 = v7;
    *a5 = v7;
LABEL_7:
    v9[2 * v8 + 2] = a2;
    v9[2 * v8 + 3] = a3;
    ++*v9;
    return 0;
  }

  return 12;
}

void *tre_stack_new(int a1, int a2, int a3)
{
  v4 = malloc_type_malloc();
  if (!v4)
  {
    return v4;
  }

  v4[2] = malloc_type_malloc();
  if (v4[2])
  {
    *v4 = a1;
    *(v4 + 1) = a2;
    *(v4 + 2) = a3;
    *(v4 + 3) = 0;
    return v4;
  }

  free(v4);
  return 0;
}

uint64_t tre_stack_push(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) < *a1)
  {
    *(*(a1 + 16) + 8 * (*(a1 + 12))++) = a2;
    return 0;
  }

  if (*a1 < *(a1 + 4))
  {
    *v4 = (*a1 + *(a1 + 8));
    if (*v4 > *(a1 + 4))
    {
      *v4 = *(a1 + 4);
    }

    v2 = *(a1 + 16);
    *&v4[4] = malloc_type_realloc();
    if (*&v4[4])
    {
      *a1 = *v4;
      *(a1 + 16) = *&v4[4];
      tre_stack_push(a1, a2);
      return 0;
    }

    return 12;
  }

  else
  {
    return 12;
  }
}

uint64_t tre_stack_pop_int(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 12) - 1;
  *(a1 + 12) = v2;
  return *(v1 + 8 * v2);
}

uint64_t tre_stack_pop_voidptr(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 12) - 1;
  *(a1 + 12) = v2;
  return *(v1 + 8 * v2);
}

int sigpause(int a1)
{
  v4 = a1;
  v3 = 0;
  if (!__unix_conforming)
  {
    __unix_conforming = 1;
  }

  pthread_testcancel();
  if (v4 > 0 && v4 < 32)
  {
    if (sigprocmask(1, 0, &v3) < 0)
    {
      return -1;
    }

    else
    {
      v6 = v4;
      if (v4 <= 32)
      {
        v2 = 1 << (v6 - 1);
      }

      else
      {
        v2 = 0;
      }

      v3 &= ~v2;
      return sigsuspend_NOCANCEL();
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int lockf(int a1, int a2, off_t a3)
{
  if (a2 <= 2)
  {
    return __fcntl();
  }

  if (a2 == 3)
  {
    if (__fcntl() == -1)
    {
      return -1;
    }

    else if (getpid())
    {
      *__error() = 35;
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int pause(void)
{
  v1 = 0;
  sigprocmask(0, 0, &v1);
  return sigsuspend(&v1);
}

unsigned int sleep(unsigned int a1)
{
  v4 = a1;
  __rqtp.tv_sec = 0;
  __rqtp.tv_nsec = 0;
  __rmtp.tv_sec = 0;
  __rmtp.tv_nsec = 0;
  if (a1 > 0x7FFFFFFF)
  {
    return v4 - 0x7FFFFFFF + sleep(0x7FFFFFFFu);
  }

  __rqtp.tv_sec = v4;
  __rqtp.tv_nsec = 0;
  if (nanosleep(&__rqtp, &__rmtp) != -1)
  {
    return 0;
  }

  if (*__error() == 4)
  {
    return LODWORD(__rmtp.tv_sec) + (__rmtp.tv_nsec != 0);
  }

  return v4;
}

int usleep(useconds_t a1)
{
  v3 = a1;
  __rqtp.tv_nsec = 1000 * (a1 % 0xF4240);
  __rqtp.tv_sec = a1 / 0xF4240;
  return nanosleep(&__rqtp, 0);
}

pid_t waitpid(pid_t a1, int *a2, int a3)
{
  if ((a3 & 0x13) == a3)
  {
    return __wait4();
  }

  *__error() = 22;
  return -1;
}

int nanosleep(const timespec *__rqtp, timespec *__rmtp)
{
  v18 = __rqtp;
  v17 = __rmtp;
  v16 = 0;
  time = 0;
  v14 = 0;
  cur_time = 0;
  if (!__unix_conforming)
  {
    __unix_conforming = 1;
  }

  pthread_testcancel();
  if (v18 && (v18->tv_sec & 0x8000000000000000) == 0 && v18->tv_nsec < 0x3B9ACA00uLL)
  {
    if (!v17 || (v16 = clock_get_time(clock_port, &cur_time)) == 0)
    {
      tv_sec = v18->tv_sec;
      tv_nsec = v18->tv_nsec;
      time = __semwait_signal();
      if (time < 0)
      {
        if (*__error() == 60)
        {
          return 0;
        }

        if (*__error() == 4)
        {
          if (v17)
          {
            time = clock_get_time(clock_port, &v14);
            if (time)
            {
              v11 = __stderrp;
              v5 = mach_error_string(time);
              fprintf(v11, "clock_get_time() failed: %s\n", v5);
              return -1;
            }

            v6 = cur_time.tv_nsec + v18->tv_nsec;
            cur_time.tv_nsec += LODWORD(v18->tv_nsec);
            if (v6 >= 1000000000)
            {
              cur_time.tv_nsec -= 1000000000;
              ++cur_time.tv_sec;
            }

            cur_time.tv_sec += v18->tv_sec;
            if (cur_time.tv_sec <= v14.tv_sec)
            {
              if (cur_time.tv_sec >= v14.tv_sec)
              {
                v9 = cur_time.tv_nsec - v14.tv_nsec;
              }

              else
              {
                v9 = -1000000000;
              }

              v10 = v9;
            }

            else
            {
              v10 = 1000000000;
            }

            if (v10 <= 0)
            {
              v7 = v17;
              v17->tv_sec = 0;
              v7->tv_nsec = 0;
            }

            else
            {
              cur_time.tv_nsec -= v14.tv_nsec;
              if (cur_time.tv_nsec < 0)
              {
                cur_time.tv_nsec += 1000000000;
                --cur_time.tv_sec;
              }

              cur_time.tv_sec -= v14.tv_sec;
              v17->tv_sec = cur_time.tv_sec;
              v17->tv_nsec = cur_time.tv_nsec;
            }
          }
        }

        else
        {
          *__error() = 22;
        }
      }

      return -1;
    }

    v12 = __stderrp;
    v2 = mach_error_string(v16);
    fprintf(v12, "clock_get_time() failed: %s\n", v2);
    *__error() = 22;
    return -1;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int system(const char *a1)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12.__sigaction_u.__sa_handler = 0;
  *&v12.sa_mask = 0;
  v11.__sigaction_u.__sa_handler = 0;
  *&v11.sa_mask = 0;
  v10.__sigaction_u.__sa_handler = 0;
  *&v10.sa_mask = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 8;
  __argv[0] = "sh";
  __argv[1] = "-c";
  v23 = a1;
  v24 = 0;
  if (!__unix_conforming)
  {
    __unix_conforming = 1;
  }

  pthread_testcancel();
  if (!v17)
  {
    return access("/bin/sh", 0) != -1;
  }

  v13 = posix_spawnattr_init(&v6);
  if (v13)
  {
    v4 = v13;
    *__error() = v4;
    return -1;
  }

  else
  {
    v7 = 0;
    pthread_mutex_lock(&__systemfn_mutex_0);
    v12.__sigaction_u.__sa_handler = (&dword_0 + 1);
    v12.sa_mask = 0;
    v12.sa_flags = 0;
    sigaction(2, &v12, &v11);
    if (v11.__sigaction_u.__sa_handler != (&dword_0 + 1))
    {
      v21 = 2;
      v7 |= 2u;
      v5 = 12;
    }

    sigaction(3, &v12, &v10);
    if (v10.__sigaction_u.__sa_handler != (&dword_0 + 1))
    {
      v20 = 3;
      v7 |= 4u;
      v5 |= 4u;
    }

    v19 = 20;
    v9 = 0x80000;
    sigprocmask(1, &v9, &v8);
    posix_spawnattr_setsigmask(&v6, &v8);
    if ((v5 & 4) != 0)
    {
      posix_spawnattr_setsigdefault(&v6, &v7);
    }

    posix_spawnattr_setflags(&v6, v5);
    v1 = _NSGetEnviron();
    v13 = posix_spawn(&v16, "/bin/sh", 0, &v6, __argv, *v1);
    posix_spawnattr_destroy(&v6);
    if (v13)
    {
      if (v13 == 12 || v13 == 35)
      {
        v14 = -1;
      }

      else
      {
        v14 = 32512;
      }
    }

    else
    {
      v15 = v16;
      do
      {
        v16 = wait4(v15, &v14, 0, 0);
        v3 = 0;
        if (v16 == -1)
        {
          v3 = *__error() == 4;
        }
      }

      while (v3);
      if (v16 == -1)
      {
        v14 = -1;
      }
    }

    sigaction(2, &v11, 0);
    sigaction(3, &v10, 0);
    sigprocmask(3, &v8, 0);
    pthread_mutex_unlock(&__systemfn_mutex_0);
    return v14;
  }
}

FILE *popen_DARWIN_EXTSN(uint64_t a1, char *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v15 = 0u;
  v16 = 0u;
  i = 0;
  v5 = 0;
  libc_hooks_will_read_cstring(a1);
  libc_hooks_will_read_cstring(v12);
  if (!v12)
  {
LABEL_2:
    *__error() = 22;
    return 0;
  }

  if (!strcmp(v12, "r+"))
  {
    v8 = 1;
    v12 = "r+";
    if (socketpair(1, 1, 0, &v17) < 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    if (*v12 != 114 && *v12 != 119 || v12[1])
    {
      goto LABEL_2;
    }

    if (pipe(&v17) < 0)
    {
      return 0;
    }
  }

  if (*v12 == 114)
  {
    v10 = fdopen_DARWIN_EXTSN(v17, v12);
    v7 = v18;
  }

  else
  {
    v10 = fdopen_DARWIN_EXTSN(v18, v12);
    v7 = v17;
  }

  if (v10)
  {
    v11 = malloc_type_malloc();
    if (v11)
    {
      v4 = posix_spawn_file_actions_init(&v5);
      if (v4)
      {
        goto LABEL_21;
      }

      if (*v12 == 114)
      {
        posix_spawn_file_actions_addclose(&v5, v17);
        if (v18 == 1)
        {
          if (v8)
          {
            posix_spawn_file_actions_adddup2(&v5, v18, 0);
          }
        }

        else
        {
          posix_spawn_file_actions_adddup2(&v5, v18, 1);
          posix_spawn_file_actions_addclose(&v5, v18);
          if (v8)
          {
            posix_spawn_file_actions_adddup2(&v5, 1, 0);
          }
        }
      }

      else
      {
        if (v17)
        {
          posix_spawn_file_actions_adddup2(&v5, v17, 0);
          posix_spawn_file_actions_addclose(&v5, v17);
        }

        posix_spawn_file_actions_addclose(&v5, v18);
      }

      pthread_mutex_lock(&__popen_pidlist_mutex);
      for (i = __popen_pidlist; i; i = *i)
      {
        posix_spawn_file_actions_addclose(&v5, *(i + 16));
      }

      *&v15 = "sh";
      *(&v15 + 1) = "-c";
      v16 = v13;
      v2 = _NSGetEnviron();
      v4 = posix_spawn(&v9, "/bin/sh", &v5, 0, &v15, *v2);
      pthread_mutex_unlock(&__popen_pidlist_mutex);
      posix_spawn_file_actions_destroy(&v5);
      if (v4 == 12 || v4 == 35)
      {
LABEL_21:
        fclose(v10);
        close_NOCANCEL();
        free(v11);
        *__error() = v4;
        return 0;
      }

      else
      {
        if (v4)
        {
          v9 = -1;
        }

        if (*v12 == 114)
        {
          *(v11 + 4) = v17;
        }

        else
        {
          *(v11 + 4) = v18;
        }

        close_NOCANCEL();
        v11[1] = v10;
        *(v11 + 5) = v9;
        pthread_mutex_lock(&__popen_pidlist_mutex);
        *v11 = __popen_pidlist;
        __popen_pidlist = v11;
        pthread_mutex_unlock(&__popen_pidlist_mutex);
        fwide(v10, -1);
        return v10;
      }
    }

    else
    {
      fclose(v10);
      close_NOCANCEL();
      return 0;
    }
  }

  else
  {
    close_NOCANCEL();
    close_NOCANCEL();
    return 0;
  }
}

uint64_t *fdopen_DARWIN_EXTSN(int a1, char *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  libc_hooks_will_read_cstring(a2);
  if (v8 < 0x8000)
  {
    v5 = __sflags(v7, &v4);
    if (v5)
    {
      v3 = fcntl_NOCANCEL();
      if (v3 < 0)
      {
        return 0;
      }

      else if ((v3 & 3) == 2 || (v3 & 3) == (v4 & 3))
      {
        v6 = __sfp(0);
        if (v6)
        {
          *(v6 + 8) = v5;
          if ((v4 & 8) != 0 && (v3 & 8) == 0)
          {
            *(v6 + 8) |= 0x100u;
          }

          *(v6 + 9) = v8;
          v6[6] = v6;
          v6[8] = __sread;
          v6[10] = __swrite;
          v6[9] = __sseek;
          v6[7] = __sclose;
          return v6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        *__error() = 22;
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 24;
    return 0;
  }
}

uint64_t *fopen_DARWIN_EXTSN(uint64_t a1, char *a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  libc_hooks_will_read_cstring(a1);
  libc_hooks_will_read_cstring(v7);
  v4 = __sflags(v7, &v3);
  if (!v4)
  {
    return 0;
  }

  v6 = __sfp(0);
  if (!v6)
  {
    return 0;
  }

  v5 = open_NOCANCEL();
  if (v5 < 0)
  {
    __sfprelease(v6);
    return 0;
  }

  else if (v5 < 0x8000)
  {
    *(v6 + 9) = v5;
    *(v6 + 8) = v4;
    v6[6] = v6;
    v6[8] = __sread;
    v6[10] = __swrite;
    v6[9] = __sseek;
    v6[7] = __sclose;
    if ((v3 & 8) != 0)
    {
      _sseek(v6, 0, 2u);
    }

    return v6;
  }

  else
  {
    *(v6 + 8) = 0;
    close_NOCANCEL();
    *__error() = 24;
    return 0;
  }
}

char *__cdecl realpath_DARWIN_EXTSN(const char *a1, char *a2)
{
  v27 = a1;
  v26 = a2;
  bzero(v34, 0x200uLL);
  memset(&__b, 0, sizeof(__b));
  v15 = 0;
  v13 = 0;
  bzero(&v30, 0x200uLL);
  st_ino = 0;
  if (!v27)
  {
    *__error() = 22;
    return 0;
  }

  if (!*v27)
  {
    *__error() = 2;
    return 0;
  }

  if (v26)
  {
    __dst = v26;
  }

  else
  {
    __dst = malloc_type_malloc();
    if (!__dst)
    {
      return 0;
    }
  }

  if (!realpath_DARWIN_EXTSN_rootdev_inited)
  {
    realpath_DARWIN_EXTSN_rootdev_inited = 1;
    if (stat("/", &__b) < 0)
    {
      goto LABEL_12;
    }

    realpath_DARWIN_EXTSN_rootdev = __b.st_dev;
  }

  v17 = *__error();
  v18 = 0;
  if (*v27 == 47)
  {
    *__dst = 47;
    __dst[1] = 0;
    if (!v27[1])
    {
      return __dst;
    }

    v20 = 1;
    v21 = strlcpy(v33, v27 + 1, 0x400uLL);
  }

  else
  {
    if (!__private_getcwd(__dst, 1024, 1))
    {
      strlcpy(__dst, ".", 0x400uLL);
      goto LABEL_12;
    }

    v20 = strlen(__dst);
    v21 = strlcpy(v33, v27, 0x400uLL);
  }

  if (v21 < 0x400 && v20 < 0x400)
  {
    if (v20 > 1)
    {
      if ((stat(__dst, &__b) & 0x80000000) == 0)
      {
        st_dev = __b.st_dev;
        goto LABEL_30;
      }

      goto LABEL_12;
    }

    st_dev = realpath_DARWIN_EXTSN_rootdev;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
LABEL_30:
              if (!v21)
              {
                if (v20 > 1 && __dst[v20 - 1] == 47)
                {
                  __dst[v20 - 1] = 0;
                }

                return __dst;
              }

              v24 = strchr(v33, 47);
              if (v24)
              {
                v6 = v24 - v33;
              }

              else
              {
                v6 = v21;
              }

              memcpy(v32, v33, v6);
              v32[v6] = 0;
              if (v24)
              {
                v21 -= v6 + 1;
                memmove(v33, v24 + 1, v21 + 1);
              }

              else
              {
                v33[0] = 0;
                v21 = 0;
              }

              if (__dst[v20 - 1] != 47)
              {
                if (v20 + 1 >= 0x400)
                {
                  goto LABEL_94;
                }

                v2 = v20++;
                __dst[v2] = 47;
                __dst[v20] = 0;
              }
            }

            while (!v32[0] || !strcmp(v32, "."));
            if (strcmp(v32, ".."))
            {
              break;
            }

            if (v20 > 1)
            {
              __dst[v20 - 1] = 0;
              v22 = strrchr(__dst, 47) + 1;
              *v22 = 0;
              v20 = v22 - __dst;
            }
          }

          v19 = v20;
          v20 = strlcat(__dst, v32, 0x400uLL);
          if (v20 >= 0x400)
          {
            goto LABEL_94;
          }

          if (getattrlist(__dst, &_rp_alist, v34, 0x41CuLL, 1u))
          {
            if (*__error() == 45 || *__error() == 22)
            {
              v16 = lstat(__dst, &__b);
              if (!v16)
              {
                v15 = (__b.st_mode & 0xF000) == 40960;
                v13 = __b.st_dev;
                st_ino = __b.st_ino;
              }
            }

            else
            {
              v16 = -1;
            }
          }

          else
          {
            v16 = 1;
            v15 = v35[3] == 5;
            v13 = v35[2];
            st_ino = v35[4];
          }

          if (v16 < 0)
          {
            goto LABEL_12;
          }

          if (v13 == st_dev)
          {
            break;
          }

          st_dev = v13;
          if (statfs(__dst, &v30) || lstat(v30.f_mntonname, &__b) || v13 != __b.st_dev || st_ino != __b.st_ino)
          {
            break;
          }

          v7 = 1;
          strcpy(__s, v30.f_mntonname);
          do
          {
            v8 = strrchr(__s, 47);
            if (!v8)
            {
              v7 = 0;
              goto LABEL_70;
            }

            if (v8 <= __s)
            {
              goto LABEL_70;
            }

            *v8 = 0;
          }

          while ((lstat(__s, &__b) & 0x80000000) == 0 && (__b.st_mode & 0xF000) == 0x4000);
          v7 = 0;
LABEL_70:
          if (!v7)
          {
            break;
          }

          v20 = strlcpy(__dst, v30.f_mntonname, 0x400uLL);
        }

        if (v15)
        {
          break;
        }

        if (v16)
        {
          __dst[v19] = 0;
          v20 = strlcat(__dst, v35 + v35[0], 0x400uLL);
          if (v20 >= 0x400)
          {
            goto LABEL_94;
          }
        }
      }

      v3 = v18++;
      if (v3 > 0x20)
      {
        *__error() = 62;
        goto LABEL_12;
      }

      v4 = readlink(__dst, __source, 0x400uLL);
      v14 = v4;
      if (v4 <= 0 || v4 >= 0x400)
      {
        break;
      }

      __source[v4] = 0;
      if (__source[0] == 47)
      {
        __dst[1] = 0;
        v20 = 1;
        st_dev = realpath_DARWIN_EXTSN_rootdev;
      }

      else
      {
        v23 = strrchr(__dst, 47) + 1;
        *v23 = 0;
        v20 = v23 - __dst;
      }

      if (v24)
      {
        if (__source[v14 - 1] != 47)
        {
          if ((v14 + 1) >= 0x400)
          {
            goto LABEL_94;
          }

          __source[v14] = 47;
          __source[v14 + 1] = 0;
        }

        if (strlcat(__source, v33, 0x400uLL) >= 0x400)
        {
          goto LABEL_94;
        }
      }

      v21 = strlcpy(v33, __source, 0x400uLL);
    }

    if (v4 < 0)
    {
      goto LABEL_12;
    }

    if (!v4)
    {
      *__error() = 2;
      goto LABEL_12;
    }
  }

LABEL_94:
  *__error() = 63;
LABEL_12:
  if (!v26)
  {
    v9 = *__error();
    free(__dst);
    *__error() = v9;
  }

  return 0;
}

size_t __strlcat_chk(const char *a1, const char *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  v6 = strlen(a2);
  v5 = strnlen(a1, a3);
  if (v5 == a3)
  {
    return a3 + v6;
  }

  if (v6 >= a3 - v5)
  {
    __chk_overlap(a1, a3, a2, a3 - v5 - 1);
    memcpy(&a1[v5], a2, a3 - v5 - 1);
    a1[a3 - 1] = 0;
  }

  else
  {
    __chk_overlap(a1, v6 + v5 + 1, a2, v6 + 1);
    memcpy(&a1[v5], a2, v6 + 1);
  }

  return v6 + v5;
}

unint64_t __chk_overlap(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (a2)
  {
    v4 = a4 == 0;
  }

  if (!v4)
  {
    if (result == a3)
    {
      __chk_fail_overlap();
    }

    if (result >= a3)
    {
      if (a3 + a4 > result)
      {
        __chk_fail_overlap();
      }
    }

    else if (result + a2 > a3)
    {
      __chk_fail_overlap();
    }
  }

  return result;
}

void *__memset_chk(void *a1, int a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  memset(a1, a2, a3);
  return a1;
}

size_t __strlcpy_chk(char *a1, const char *a2, size_t a3, size_t a4)
{
  __size = a3;
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  v5 = strlcpy(a1, a2, a3);
  if (v5 < __size)
  {
    __size = v5 + 1;
  }

  __chk_overlap(a1, __size, a2, __size);
  return v5;
}

const char *__strncat_chk(const char *a1, const char *a2, size_t a3, unint64_t a4)
{
  v6 = strlen(a1);
  v5 = strnlen(a2, a3);
  if (a4 < v6 + v5 + 1)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v6 + v5 + 1, a2, v5 + 1);
  }

  memcpy(&a1[v6], a2, v5);
  a1[v6 + v5] = 0;
  return a1;
}

unint64_t __strncpy_chk(unint64_t a1, const char *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  v5 = &stpncpy(a1, a2, a3)[-a1 + 1];
  if (v5 == (a3 + 1))
  {
    --v5;
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v5, a2, v5);
  }

  return a1;
}

void *__memmove_chk(void *a1, const void *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  memmove(a1, a2, a3);
  return a1;
}

unint64_t __strcpy_chk(unint64_t a1, const char *a2, unint64_t a3)
{
  v4 = &stpcpy(a1, a2)[-a1 + 1];
  if (a3 < v4)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v4, a2, v4);
  }

  return a1;
}

_BYTE *__memccpy_chk(void *a1, const void *a2, int a3, size_t a4, size_t a5)
{
  __n = a4;
  if (a5 < a4)
  {
    __chk_fail_overflow();
  }

  v6 = memccpy(a1, a2, a3, a4);
  if (v6)
  {
    __n = v6 - a1;
  }

  __chk_overlap(a1, __n, a2, __n);
  return v6;
}

int __snprintf_chk(char *a1, size_t a2, int a3, size_t a4, const char *a5, ...)
{
  va_start(va, a5);
  if (a4 < a2)
  {
    __chk_fail_overflow();
  }

  return vsnprintf(a1, a2, a5, va);
}

uint64_t __snprintf_object_size_chk(char *a1, size_t a2, size_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2 < a3)
  {
    __chk_fail_overflow();
  }

  return vsnprintf(a1, a3, a4, &a9);
}

const char *__strcat_chk(const char *a1, const char *a2, unint64_t a3)
{
  v5 = strlen(a1);
  v4 = strlen(a2);
  if (a3 < v5 + v4 + 1)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v5 + v4 + 1, a2, v4 + 1);
  }

  memcpy(&a1[v5], a2, v4 + 1);
  return a1;
}

int __vsprintf_chk(char *a1, int a2, size_t a3, const char *a4, va_list a5)
{
  if (a3 > 0x7FFFFFFF)
  {
    return vsprintf(a1, a4, a5);
  }

  v7 = vsnprintf(a1, a3, a4, a5);
  v6 = 0;
  if ((v7 & 0x80000000) == 0)
  {
    v6 = v7 >= a3;
  }

  if (v6)
  {
    __chk_fail_overflow();
  }

  return v7;
}

char *__stpcpy_chk(char *a1, const char *a2, unint64_t a3)
{
  v5 = stpcpy(a1, a2);
  v4 = v5 - a1 + 1;
  if (a3 < v4)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v4, a2, v4);
  }

  return v5;
}

int __sprintf_chk(char *a1, int a2, size_t a3, const char *a4, ...)
{
  va_start(va, a4);
  if (a3 > 0x7FFFFFFF)
  {
    return vsprintf(a1, a4, va);
  }

  v6 = vsnprintf(a1, a3, a4, va);
  v5 = 0;
  if ((v6 & 0x80000000) == 0)
  {
    v5 = v6 >= a3;
  }

  if (v5)
  {
    __chk_fail_overflow();
  }

  return v6;
}

uint64_t __sprintf_object_size_chk(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2 <= 0x7FFFFFFF)
  {
    v11 = vsnprintf(a1, a2, a3, &a9);
    v10 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      v10 = v11 >= a2;
    }

    if (v10)
    {
      __chk_fail_overflow();
    }
  }

  else
  {
    return vsprintf(a1, a3, &a9);
  }

  return v11;
}

void *__memcpy_chk(void *a1, const void *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  memcpy(a1, a2, a3);
  return a1;
}

char *__stpncpy_chk(char *a1, const char *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  v5 = stpncpy(a1, a2, a3);
  v6 = v5 - a1 + 1;
  if (v6 == a3 + 1)
  {
    v6 = v5 - a1;
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v6, a2, v6);
  }

  return v5;
}

int __vsnprintf_chk(char *a1, size_t a2, int a3, size_t a4, const char *a5, va_list a6)
{
  if (a4 < a2)
  {
    __chk_fail_overflow();
  }

  return vsnprintf(a1, a2, a5, a6);
}

BOOL _os_assumes_log(uint64_t a1)
{
  v3 = a1;
  memset(__b, 0, sizeof(__b));
  v10 = v3;
  v9 = &v2;
  v8 = __b;
  __size = 256;
  v6 = 0;
  v5 = 0;
  memset(v15, 0, sizeof(v15));
  v2 = 0;
  snprintf(__str, 0x40uLL, "%s:%lu", v15, 0);
  snprintf(v13, 0x18uLL, "0x%llx", v10);
  v4 = 32;
  _os_get_build(v12, 0x20uLL);
  snprintf(v8, __size, "assertion failed: %s: %s + %lu [%s]: %s", v12, v6, v5, v15, v13);
  _os_log_redirect(v2, __b);
  result = _os_abort_on_assumes();
  if (result)
  {
    _os_crash(__b);
    __break(1u);
    JUMPOUT(0xBF774);
  }

  return result;
}

char *_os_assert_log(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = 0;
  v8 = a1;
  v7 = v2;
  v6 = __s1;
  __size = 256;
  v4 = 0;
  v3 = 0;
  memset(__b, 0, sizeof(__b));
  v2[0] = 0;
  snprintf(__str, 0x40uLL, "%s:%lu", __b, 0);
  snprintf(v11, 0x18uLL, "0x%llx", v8);
  v2[3] = 32;
  _os_get_build(v10, 0x20uLL);
  snprintf(v6, __size, "assertion failed: %s: %s + %lu [%s]: %s", v10, v4, v3, __b, v11);
  _os_log_redirect(v2[0], __s1);
  return strdup(__s1);
}

BOOL _os_assumes_log_ctx(void (*a1)(uint64_t, uint64_t, _BYTE *), uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  memset(__b, 0, sizeof(__b));
  v15 = v6;
  v14 = &v5;
  v13 = __b;
  __size = 256;
  v11 = 0;
  v10 = 0;
  memset(v20, 0, sizeof(v20));
  v5 = 0;
  snprintf(__str, 0x40uLL, "%s:%lu", v20, 0);
  snprintf(v18, 0x18uLL, "0x%llx", v15);
  v9 = 32;
  _os_get_build(v17, 0x20uLL);
  snprintf(v13, __size, "assertion failed: %s: %s + %lu [%s]: %s", v17, v11, v10, v20, v18);
  v4 = _simple_asl_msg_new();
  v8(v4, v7, __b);
  _simple_sfree();
  result = _os_abort_on_assumes();
  if (result)
  {
    _os_crash(__b);
    __break(1u);
    JUMPOUT(0xBFABCLL);
  }

  return result;
}

char *_os_assert_log_ctx(void (*a1)(uint64_t, uint64_t, char *), uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5[1] = 0;
  memset(__b, 0, sizeof(__b));
  v15 = v6;
  v14 = v5;
  v13 = __b;
  __size = 256;
  v11 = 0;
  v10 = 0;
  memset(v20, 0, sizeof(v20));
  v5[0] = 0;
  snprintf(__str, 0x40uLL, "%s:%lu", v20, 0);
  snprintf(v18, 0x18uLL, "0x%llx", v15);
  v9 = 32;
  _os_get_build(v17, 0x20uLL);
  snprintf(v13, __size, "assertion failed: %s: %s + %lu [%s]: %s", v17, v11, v10, v20, v18);
  v4 = _simple_asl_msg_new();
  v8(v4, v7, __b);
  _simple_sfree();
  return strdup(__b);
}

void __assert_rtn(const char *a1, const char *a2, int a3, const char *a4)
{
  if (a1 == -1)
  {
    _simple_dprintf();
    if (!qword_D4008)
    {
      if (_simple_salloc())
      {
LABEL_14:
        _simple_sprintf();
        qword_D4008 = _simple_string();
        goto LABEL_16;
      }

      qword_D4008 = a4;
    }
  }

  else if (a1)
  {
    _simple_dprintf();
    if (qword_D4008)
    {
      goto LABEL_16;
    }

    if (_simple_salloc())
    {
      goto LABEL_14;
    }

    qword_D4008 = a4;
  }

  else
  {
    _simple_dprintf();
    if (!qword_D4008)
    {
      if (_simple_salloc())
      {
        goto LABEL_14;
      }

      qword_D4008 = a4;
    }
  }

LABEL_16:
  abort();
}

void err(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v2 = __error();
  verrc(a1, *v2, a2, va);
}

void verrc(int a1, int a2, const char *a3, __darwin_va_list a4)
{
  if (!_e_err_file)
  {
    err_set_file(0);
  }

  v7 = _e_err_file;
  v4 = getprogname();
  fprintf(v7, "%s: ", v4);
  if (a3)
  {
    _e_visprintf(_e_err_file, a3, a4);
    fprintf(_e_err_file, ": ");
  }

  v6 = _e_err_file;
  v5 = strerror(a2);
  fprintf(v6, "%s\n", v5);
  if (_e_err_exit)
  {
    if (_e_err_exit == 1)
    {
      (*(off_E1568 + 2))(off_E1568, a1);
    }

    else
    {
      off_E1568(a1);
    }
  }

  exit(a1);
}

void verrx(int a1, const char *a2, __darwin_va_list a3)
{
  if (!_e_err_file)
  {
    err_set_file(0);
  }

  v4 = _e_err_file;
  v3 = getprogname();
  fprintf(v4, "%s: ", v3);
  if (a2)
  {
    _e_visprintf(_e_err_file, a2, a3);
  }

  fprintf(_e_err_file, "\n");
  if (_e_err_exit)
  {
    if (_e_err_exit == 1)
    {
      (*(off_E1568 + 2))(off_E1568, a1);
    }

    else
    {
      off_E1568(a1);
    }
  }

  exit(a1);
}

void warn(const char *a1, ...)
{
  va_start(va, a1);
  v1 = __error();
  vwarnc(*v1, a1, va);
}

void vwarnc(int a1, const char *a2, __darwin_va_list a3)
{
  if (!_e_err_file)
  {
    err_set_file(0);
  }

  v6 = _e_err_file;
  v3 = getprogname();
  fprintf(v6, "%s: ", v3);
  if (a2)
  {
    _e_visprintf(_e_err_file, a2, a3);
    fprintf(_e_err_file, ": ");
  }

  v5 = _e_err_file;
  v4 = strerror(a1);
  fprintf(v5, "%s\n", v4);
}

void vwarnx(const char *a1, __darwin_va_list a2)
{
  if (!_e_err_file)
  {
    err_set_file(0);
  }

  v3 = _e_err_file;
  v2 = getprogname();
  fprintf(v3, "%s: ", v2);
  if (a1)
  {
    _e_visprintf(_e_err_file, a1, a2);
  }

  fprintf(_e_err_file, "\n");
}

void perror(const char *a1)
{
  v3 = v5;
  if (a1 && *a1)
  {
    v5[0] = a1;
    v5[1] = strlen(a1);
    v5[2] = ": ";
    v5[3] = 2;
    v3 = &v6;
  }

  v1 = __error();
  strerror_r(*v1, __strerrbuf, 0x800uLL);
  *v3 = __strerrbuf;
  v3[1] = strlen(*v3);
  v4 = v3 + 2;
  *v4 = "\n";
  v4[1] = 1;
  flockfile(__stderrp);
  __sflush(__stderrp);
  file = __stderrp->_file;
  writev_NOCANCEL();
  __stderrp->_flags &= ~0x1000u;
  funlockfile(__stderrp);
}

size_t regerror(int a1, const regex_t *a2, char *a3, size_t a4)
{
  v7 = a1 & 0xFFFFFEFF;
  if (a1 == 255)
  {
    __s = regatoi(a2, __dst);
    v4 = strlen(__s);
  }

  else
  {
      ;
    }

    if ((a1 & 0x100) != 0)
    {
      if (*i)
      {
        strcpy(__dst, *(i + 1));
      }

      else
      {
        sprintf(__dst, "REG_0x%x", v7);
      }

      __s = __dst;
      v4 = strlen(__dst);
    }

    else
    {
      __s = *(i + 2);
      v4 = strlen(__s);
    }
  }

  v8 = v4 + 1;
  if (a4)
  {
    if (a4 <= v8)
    {
      strncpy(a3, __s, a4 - 1);
      a3[a4 - 1] = 0;
    }

    else
    {
      strcpy(a3, __s);
    }
  }

  return v8;
}

void abort(void)
{
  v2 = 0;
  *v3 = 0;
  if (!qword_D4008)
  {
    qword_D4008 = "abort() called";
  }

  v1 = pthread_self();
  if (__cleanup)
  {
    _cleanup();
  }

  v6 = 6;
  v5 = 11;
  v4 = 10;
  v3[0] = -1569;
  v0 = -1;
  sigprocmask(3, &v0, 0);
  __pthread_workqueue_setkill();
  pthread_sigmask(3, v3, 0);
  pthread_kill(v1, 6);
  usleep_NOCANCEL(0x2710u);
  __abort();
}

void __abort()
{
  v2.__sigaction_u.__sa_handler = 0;
  *&v2.sa_mask = 0;
  if (!qword_D4008)
  {
    qword_D4008 = "__abort() called";
  }

  v1 = pthread_self();
  v2.__sigaction_u.__sa_handler = 0;
  v2.sa_flags = 0;
  v2.sa_mask = -1;
  sigaction(6, &v2, 0);
  v5 = 6;
  v2.sa_mask &= ~0x20u;
  v0 = -1;
  sigprocmask(3, &v0, 0);
  __pthread_workqueue_setkill();
  pthread_sigmask(3, &v2.sa_mask, 0);
  pthread_kill(v1, 6);
  usleep_NOCANCEL(0x2710u);
  v4 = 4;
  v3 = 5;
  v2.sa_mask = -25;
  sigprocmask(3, &v2.sa_mask, 0);
  __break(1u);
}

void abort_report_np(uint64_t a1)
{
  if (_simple_salloc())
  {
    _simple_vsprintf();
    qword_D4008 = _simple_string();
  }

  else
  {
    qword_D4008 = a1;
  }

  abort();
}

void bzero(void *a1, size_t a2)
{
    ;
  }
}

char *__cdecl index(const char *a1, int a2)
{
    ;
  }
}

void *__cdecl memccpy(void *__dst, const void *__src, int __c, size_t __n)
{
    ;
  }
}

void *__cdecl memchr(const void *__s, int __c, size_t __n)
{
    ;
  }
}

int memcmp(const void *__s1, const void *__s2, size_t __n)
{
    ;
  }
}

void *__cdecl memcpy(void *__dst, const void *__src, size_t __n)
{
    ;
  }
}

void *__cdecl memmove(void *__dst, const void *__src, size_t __len)
{
    ;
  }
}

void *__cdecl memset(void *__b, int __c, size_t __len)
{
    ;
  }
}

char *__cdecl strchr(const char *__s, int __c)
{
    ;
  }
}

int strcmp(const char *__s1, const char *__s2)
{
    ;
  }
}

char *__cdecl strcpy(char *__dst, const char *__src)
{
    ;
  }
}

size_t strlcat(char *__dst, const char *__source, size_t __size)
{
    ;
  }
}

size_t strlcpy(char *__dst, const char *__source, size_t __size)
{
    ;
  }
}

size_t strlen(const char *__s)
{
    ;
  }
}

int strncmp(const char *__s1, const char *__s2, size_t __n)
{
    ;
  }
}

char *__cdecl strncpy(char *__dst, const char *__src, size_t __n)
{
    ;
  }
}

size_t strnlen(const char *__s1, size_t __n)
{
    ;
  }
}

char *__cdecl strstr(const char *__big, const char *__little)
{
    ;
  }
}