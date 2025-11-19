void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 6);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 8);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 7);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_141;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_141;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v8 = a3 - 4;
      while (1)
      {
        v9 = v5;
        if (v5 == a3)
        {
          goto LABEL_117;
        }

        v10 = *v5;
        v9 = v5;
        if (v10 == 93)
        {
          goto LABEL_117;
        }

        v11 = 0;
        v47[0] = 0;
        v47[1] = 0;
        v48 = 0;
        v12 = 0;
        v9 = v5;
        if (v5 + 1 != a3 && v10 == 91)
        {
          v13 = v5[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, v47);
              v12 = HIBYTE(v48);
              v11 = v47[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_140;
              }

              v18 = v8 - v5;
              v15 = v5 + 2;
              for (i = v5 + 2; ; v15 = i)
              {
                v20 = *i++;
                if (v20 == 58 && *i == 93)
                {
                  break;
                }

                if (!v18)
                {
                  goto LABEL_140;
                }

                --v18;
              }

              if (v15 == a3)
              {
LABEL_140:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v26 = *(a1 + 24);
              std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v5 + 2, v15, v15 - (v5 + 2));
              v27 = HIBYTE(v52);
              if (v52 >= 0)
              {
                v28 = __p;
              }

              else
              {
                v28 = __p[0];
              }

              if (v52 < 0)
              {
                v27 = __p[1];
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), v28, &v27[v28]);
              if (v52 >= 0)
              {
                v29 = __p;
              }

              else
              {
                v29 = __p[0];
              }

              classname = std::__get_classname(v29, v26 & 1);
              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p[0]);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v31 = 0;
              *(v7 + 160) |= classname;
              goto LABEL_113;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_140;
              }

              v14 = v8 - v5;
              v15 = v5 + 2;
              for (j = v5 + 2; ; v15 = j)
              {
                v17 = *j++;
                if (v17 == 61 && *j == 93)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_140;
                }

                --v14;
              }

              if (v15 == a3)
              {
                goto LABEL_140;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__p, a1, v5 + 2, v15);
              v24 = SHIBYTE(v52);
              if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
              {
                v24 = __p[1];
                if (!__p[1])
                {
LABEL_142:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                v25 = __p[0];
              }

              else
              {
                if (!HIBYTE(v52))
                {
                  goto LABEL_142;
                }

                v25 = __p;
              }

              std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v25, v24 + v25);
              v33 = HIBYTE(v50);
              if (v50 < 0)
              {
                v33 = __src[1];
              }

              if (v33)
              {
                std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
              }

              else
              {
                v34 = HIBYTE(v52);
                if (v52 < 0)
                {
                  v34 = __p[1];
                }

                if (v34 == 2)
                {
                  if (v52 >= 0)
                  {
                    v41 = __p;
                  }

                  else
                  {
                    v41 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v41, *(v41 + 1));
                }

                else
                {
                  if (v34 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  if (v52 >= 0)
                  {
                    v35 = __p;
                  }

                  else
                  {
                    v35 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v35);
                }
              }

              if (SHIBYTE(v50) < 0)
              {
                operator delete(__src[0]);
              }

              if (SHIBYTE(v52) < 0)
              {
                operator delete(__p[0]);
              }

              v31 = 0;
LABEL_113:
              v21 = v15 + 2;
              v39 = v5;
              goto LABEL_114;
            default:
              v11 = 0;
              v12 = 0;
              v9 = v5;
              break;
          }
        }

        v21 = (*(a1 + 24) & 0x1F0);
        if (v12 >= 0)
        {
          v11 = v12;
        }

        if (!v11)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v22 = *v9;
            if (v22 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 1, a3, v47);
              }

              else
              {
                v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 1, a3, v47, v7);
              }

              v9 = v23;
              goto LABEL_79;
            }
          }

          else
          {
            LOBYTE(v22) = *v9;
          }

          if (v12 < 0)
          {
            v32 = v47[0];
            v47[1] = 1;
          }

          else
          {
            HIBYTE(v48) = 1;
            v32 = v47;
          }

          *v32 = v22;
          *(v32 + 1) = 0;
          ++v9;
        }

LABEL_79:
        if (v9 != a3)
        {
          v36 = *v9;
          if (v36 != 93)
          {
            v38 = v9 + 1;
            if (v9 + 1 != a3 && v36 == 45 && *v38 != 93)
            {
              __p[0] = 0;
              __p[1] = 0;
              v52 = 0;
              v39 = v9 + 2;
              if (v9 + 2 != a3 && *v38 == 91 && *v39 == 46)
              {
                v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v9 + 3, a3, __p);
                goto LABEL_124;
              }

              if ((v21 | 0x40) == 0x40)
              {
                LODWORD(v38) = *v38;
                if (v38 == 92)
                {
                  if (v21)
                  {
                    v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 2, a3, __p);
                  }

                  else
                  {
                    v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 2, a3, __p, v7);
                  }

LABEL_124:
                  v39 = v40;
LABEL_125:
                  *__src = *v47;
                  v43 = v48;
                  v47[1] = 0;
                  v48 = 0;
                  *v45 = *__p;
                  v46 = v52;
                  v47[0] = 0;
                  __p[1] = 0;
                  v52 = 0;
                  v50 = v43;
                  __p[0] = 0;
                  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, v45);
                  if (SHIBYTE(v46) < 0)
                  {
                    operator delete(v45[0]);
                  }

                  if (SHIBYTE(v50) < 0)
                  {
                    operator delete(__src[0]);
                  }

                  if (SHIBYTE(v52) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v31 = 1;
LABEL_114:
                  if (SHIBYTE(v48) < 0)
                  {
                    operator delete(v47[0]);
                  }

                  v9 = v39;
                  if ((v31 & 1) == 0)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_117;
                }
              }

              else
              {
                LOBYTE(v38) = *v38;
              }

              HIBYTE(v52) = 1;
              LOBYTE(__p[0]) = v38;
              goto LABEL_125;
            }
          }
        }

        if (SHIBYTE(v48) < 0)
        {
          if (v47[1])
          {
            if (v47[1] == 1)
            {
              v37 = v47[0];
LABEL_88:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v37);
LABEL_98:
              v31 = 1;
              v39 = v9;
              goto LABEL_114;
            }

            v37 = v47[0];
LABEL_97:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v37, v37[1]);
            goto LABEL_98;
          }

          operator delete(v47[0]);
        }

        else if (HIBYTE(v48))
        {
          v37 = v47;
          if (HIBYTE(v48) == 1)
          {
            goto LABEL_88;
          }

          goto LABEL_97;
        }

LABEL_117:
        v21 = v9;
LABEL_118:
        v42 = v21 == v5;
        v5 = v21;
        if (v42)
        {
          goto LABEL_133;
        }
      }
    }

    v21 = v5;
LABEL_133:
    if (v21 == a3)
    {
      goto LABEL_141;
    }

    if (*v21 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v21;
    }

    if (v21 == a3 || *v21 != 93)
    {
LABEL_141:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v21 + 1;
  }

  return a2;
}

void sub_1DDE126C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 5);
}

void sub_1DDE12914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x1E12BD160](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, void *__src, char *a3)
{
  v3 = a3;
  v4 = __src;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = *(v4 + 23);
        if ((v7 & 0x8000000000000000) != 0)
        {
          if (i >= v4[1])
          {
LABEL_20:
            for (j = 0; ; ++j)
            {
              v16 = v3[23];
              if ((v16 & 0x8000000000000000) != 0)
              {
                if (j >= *(v3 + 1))
                {
                  goto LABEL_35;
                }

                v17 = *v3;
              }

              else
              {
                v17 = v3;
                if (j >= v16)
                {
                  goto LABEL_35;
                }
              }

              v18 = (*(**(a1 + 24) + 40))(*(a1 + 24), v17[j]);
              v19 = v3;
              if (v3[23] < 0)
              {
                v19 = *v3;
              }

              v19[j] = v18;
            }
          }

          v8 = *v4;
        }

        else
        {
          v8 = v4;
          if (i >= v7)
          {
            goto LABEL_20;
          }
        }

        v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), *(v8 + i));
        v10 = v4;
        if (*(v4 + 23) < 0)
        {
          v10 = *v4;
        }

        *(v10 + i) = v9;
      }
    }

    v13 = 0;
    v14 = *(__src + 23);
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    while (v13 < v14)
    {
      while (1)
      {
        ++v13;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

LABEL_17:
        if (v13 >= __src[1])
        {
          goto LABEL_29;
        }
      }
    }

LABEL_29:
    v20 = 0;
    v21 = a3[23];
    if ((v21 & 0x80) != 0)
    {
      goto LABEL_32;
    }

    while (v20 < v21)
    {
      while (1)
      {
        ++v20;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

LABEL_32:
        if (v20 >= *(a3 + 1))
        {
          goto LABEL_35;
        }
      }
    }

LABEL_35:
    v22 = *(v4 + 23);
    if (v22 < 0)
    {
      v23 = v4;
      v4 = *v4;
      v22 = v23[1];
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&v36, a1 + 16, v4, v4 + v22);
    v24 = v3[23];
    if (v24 < 0)
    {
      v25 = v3;
      v3 = *v3;
      v24 = *(v25 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v34, a1 + 16, v3, &v3[v24]);
    *v38 = v36;
    v39 = v37;
    v37 = 0;
    *__p = *v34;
    v41 = v35;
    v34[0] = 0;
    v34[1] = 0;
    v35 = 0;
    v36 = 0uLL;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v38);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      v26 = v36;
LABEL_66:
      operator delete(v26);
    }
  }

  else
  {
    v11 = *(__src + 23);
    if (v11 < 0)
    {
      v12 = __src[1];
    }

    else
    {
      v12 = *(__src + 23);
    }

    if (v12 != 1)
    {
      goto LABEL_68;
    }

    v27 = a3[23];
    if (v27 < 0)
    {
      v27 = *(a3 + 1);
    }

    if (v27 != 1)
    {
LABEL_68:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v28 = __src;
      if ((v11 & 0x80000000) != 0)
      {
        v28 = *__src;
      }

      v29 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v28);
      v30 = v4;
      if (*(v4 + 23) < 0)
      {
        v30 = *v4;
      }

      *v30 = v29;
      v31 = v3;
      if (v3[23] < 0)
      {
        v31 = *v3;
      }

      v32 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v31);
      v33 = v3;
      if (v3[23] < 0)
      {
        v33 = *v3;
      }

      *v33 = v32;
    }

    *v38 = *v4;
    v39 = v4[2];
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *__p = *v3;
    v41 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v38);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      v26 = v38[0];
      goto LABEL_66;
    }
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DDE135C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 9);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 3);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1DDE139B8(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1E12BD160](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925840;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925840;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925810;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925810;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1)
{
  v6 = 95;
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), 95);
    v2 = a1 + 64;
    v3 = &v5;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v2, v3);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v4 = 95;
    v2 = a1 + 64;
    v3 = &v4;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v6);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

LABEL_43:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v10 = v4[1];
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v11 = -87;
        }

        if (v4 + 2 == a3)
        {
LABEL_97:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v12 = v4[2];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6u)
          {
            goto LABEL_97;
          }

          v13 = -87;
        }

        v14 = v13 + v12 + 16 * (v11 + v10);
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v14;
          *(a4 + 1) = 0;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
        }

        v4 += 3;
        return v4;
      }

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_71;
        }

        goto LABEL_43;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 11;
LABEL_89:
        *a4 = v16;
        return ++v4;
      }

      v15 = 11;
      goto LABEL_76;
    }

    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
        goto LABEL_89;
      }

      v15 = 13;
      goto LABEL_76;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
        goto LABEL_89;
      }

      v15 = 9;
LABEL_76:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
      return ++v4;
    }

LABEL_71:
    v15 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v5;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 12;
        goto LABEL_89;
      }

      v15 = 12;
      goto LABEL_76;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 10;
        goto LABEL_89;
      }

      v15 = 10;
      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v15 = 0;
    goto LABEL_76;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_71;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  v7 = v6 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v7;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  v4 += 2;
  return v4;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1DDE145A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 2);
}

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DDE1478C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_61;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    negate = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v16 = this->__ranges_.__begin_;
    v17 = this->__ranges_.__end_ - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v16->second.__r_.__value_.__r.__words) >= 1)
      {
        ++v18;
        ++v16;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_145;
  }

  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v38 = this->__equivalences_.__begin_;
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = this->__equivalences_.__end_ - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v38->__r_.__value_.__l.__size_;
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : v38->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      ++v38;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      neg_mask = this->__neg_mask_;
      if ((v69 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_162:
        negate = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    negate = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      negate = 1;
      goto LABEL_61;
    }
  }

  v37 = this->__ranges_.__begin_;
  v36 = this->__ranges_.__end_;
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = this->__ranges_.__begin_;
    v36 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__s) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, v37->second.__r_.__value_.__r.__words) >= 1)
    {
      ++v51;
      ++v37;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    negate = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_134:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      negate = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v35 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v35 = -995;
  }

  a2->__do_ = v35;
  a2->__node_ = first;
}

void sub_1DDE15024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DDE15108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DDE15224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 4);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F59258D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F59258D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F59258A0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F59258A0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = a2 + 1;
    v8 = *a2;
    if ((a2 + 1 != a3 || v8 != 36) && ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
LABEL_29:
      if (v9 == a3)
      {
        return v9;
      }

      v19 = a1->__marked_count_ + 1;
      v20 = *v9;
      if (v20 == 42)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
        return v9 + 1;
      }

      if (v9 + 1 == a3 || v20 != 92 || v9[1] != 123)
      {
        return v9;
      }

      LODWORD(__max) = 0;
      v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
      if (v21 == v9 + 2)
      {
        goto LABEL_55;
      }

      if (v21 != a3)
      {
        v22 = v21 + 1;
        v23 = *v21;
        if (v23 == 44)
        {
          v31 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v21 + 1, a3, &v31);
          if (v24 != a3)
          {
            v25 = v24;
            if (v24 + 1 != a3 && *v24 == 92)
            {
              v26 = v24[1];
              v27 = v26 == 125;
              if (v26 == 125)
              {
                v28 = v31;
                if (v31 == -1)
                {
                  v29 = a1;
                  v28 = -1;
                  goto LABEL_52;
                }

                if (v31 >= __max)
                {
                  v29 = a1;
LABEL_52:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
                  return &v25[2 * v27];
                }

LABEL_55:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v22 != a3 && v23 == 92 && *v22 == 125)
        {
          v3 = v21 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
          return v3;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (*v11 == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && v9 + 1 != a3 && *v9 == 92)
    {
      v12 = v9[1];
      if (v12 == 40)
      {
        v13 = v9 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        v9 = v16 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v14);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v9 += v18;
      }
    }

    if (v9 != v3)
    {
      goto LABEL_29;
    }
  }

  return v3;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if (a2 + 1 == a3)
      {
        end = this->__end_;
        marked_count = this->__marked_count_;
        goto LABEL_38;
      }

      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
      }

      else
      {
        if (v11 != 98)
        {
          goto LABEL_29;
        }

        v12 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
      return a2 + 2;
    }

    if (v6 != 94)
    {
      goto LABEL_30;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return a2 + 1;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_30;
  }

  if (a2 + 1 == a3)
  {
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_43:
    if (a2 + 1 == a3)
    {
      goto LABEL_99;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v20 == a3)
      {
        goto LABEL_99;
      }

      v21 = v20;
      if (*v20 != 41)
      {
        goto LABEL_99;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v22 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v23 == a3 || (v21 = v23, *v23 != 41))
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v22);
    }

    --*p_open_count;
    v24 = v21 + 1;
LABEL_56:
    result = a2;
    if (v24 == a2)
    {
      return result;
    }

    goto LABEL_96;
  }

  if (a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_29;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v15 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v15;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

LABEL_28:
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
    result = v8 + 1;
    if (v8 + 1 != a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 61)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v9 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
    this->__marked_count_ += v9;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_28;
  }

LABEL_29:
  v6 = *a2;
LABEL_30:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v16 = (v6 - 92);
    if (v16 <= 0x21)
    {
      if (((1 << (v6 - 92)) & 0x300000006) != 0)
      {
        return a2;
      }

      if (v6 == 92)
      {
LABEL_38:
        v17 = a2 + 1;
        if (a2 + 1 == a3)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v18 = *v17;
        if (v18 == 48)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_95:
          v24 = a2 + 2;
          goto LABEL_96;
        }

        if ((v18 - 49) <= 8)
        {
          v25 = (v18 - 48);
          v24 = a2 + 2;
          if (a2 + 2 != a3)
          {
            while (1)
            {
              v26 = *v24;
              if ((v26 - 48) > 9)
              {
                break;
              }

              if (v25 >= 0x19999999)
              {
                goto LABEL_100;
              }

              v25 = v26 + 10 * v25 - 48;
              if (++v24 == a3)
              {
                v24 = a3;
                break;
              }
            }

            if (!v25)
            {
              goto LABEL_100;
            }
          }

          if (v25 > marked_count)
          {
LABEL_100:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v25);
          if (v24 != v17)
          {
            goto LABEL_56;
          }

          v18 = *v17;
        }

        if (v18 > 99)
        {
          if (v18 == 119)
          {
            v27 = this;
            v28 = 0;
            goto LABEL_87;
          }

          if (v18 == 115)
          {
            v35 = this;
            v36 = 0;
LABEL_93:
            started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
            v32 = started->__mask_ | 0x4000;
            goto LABEL_94;
          }

          if (v18 != 100)
          {
            goto LABEL_88;
          }

          v29 = this;
          v30 = 0;
        }

        else
        {
          if (v18 != 68)
          {
            if (v18 != 83)
            {
              if (v18 == 87)
              {
                v27 = this;
                v28 = 1;
LABEL_87:
                v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
                v33->__mask_ |= 0x500u;
                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
                goto LABEL_95;
              }

LABEL_88:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
              if (v34 == v17)
              {
                v24 = a2;
              }

              else
              {
                v24 = v34;
              }

              goto LABEL_56;
            }

            v35 = this;
            v36 = 1;
            goto LABEL_93;
          }

          v29 = this;
          v30 = 1;
        }

        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
        v32 = started->__mask_ | 0x400;
LABEL_94:
        started->__mask_ = v32;
        goto LABEL_95;
      }

      if (v16 == 31)
      {
        goto LABEL_101;
      }
    }

    if (v6 == 91)
    {
      v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_56;
    }

    if (v6 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_83;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_83;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_43;
  }

LABEL_83:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v24 = a2 + 1;
LABEL_96:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v24, a3, end, marked_count + 1, v37);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12BCA00](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * (v10 + v12 - 2);
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_1DDE16B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925798;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925798;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925768;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12BD160);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5925768;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12BD160);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::map<std::string,applesauce::CF::TypeRef>>(void *a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<applesauce::CF::DictionaryRef>::reserve(&v24, v2);
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v23[0] = 0;
      v23[1] = 0;
      v22 = v23;
      v5 = *v4;
      if (*v4 != v4 + 1)
      {
        do
        {
          v6 = v23[0];
          v7 = v23;
          if (v22 == v23)
          {
            goto LABEL_10;
          }

          v8 = v23[0];
          v9 = v23;
          if (v23[0])
          {
            do
            {
              v7 = v8;
              v8 = *(v8 + 1);
            }

            while (v8);
          }

          else
          {
            do
            {
              v7 = v9[2];
              v10 = *v7 == v9;
              v9 = v7;
            }

            while (v10);
          }

          if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, v5 + 4) & 0x80) != 0)
          {
LABEL_10:
            if (!v6)
            {
              v27[0] = v23;
LABEL_15:
              operator new();
            }

            v27[0] = v7;
            v11 = v7 + 1;
          }

          else
          {
            v11 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(&v22, v27, v5 + 4);
          }

          if (!*v11)
          {
            goto LABEL_15;
          }

          v12 = v5[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v5[2];
              v10 = *v13 == v5;
              v5 = v13;
            }

            while (!v10);
          }

          v5 = v13;
        }

        while (v13 != v4 + 1);
      }

      v14 = v25;
      if (v25 >= v26)
      {
        v16 = (v25 - v24) >> 3;
        if ((v16 + 1) >> 61)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v17 = (v26 - v24) >> 2;
        if (v17 <= v16 + 1)
        {
          v17 = v16 + 1;
        }

        if (v26 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        v30 = &v24;
        if (v18)
        {
          std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v18);
        }

        v19 = (8 * v16);
        v27[0] = 0;
        v27[1] = v19;
        v28 = v19;
        v29 = 0;
        *v19 = applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(&v22);
        v28 = v19 + 1;
        std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v24, v27);
        v15 = v25;
        std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(v27);
      }

      else
      {
        *v14 = applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(&v22);
        v15 = v14 + 1;
      }

      v25 = v15;
      std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(v23[0]);
      v4 += 3;
    }

    while (v4 != v3);
  }

  v20 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v24);
  v27[0] = &v24;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](v27);
  return v20;
}

void sub_1DDE17360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void applesauce::CF::convert_to<std::vector<std::map<std::string,applesauce::CF::TypeRef>>,0>(uint64_t *a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  Count = CFArrayGetCount(a2);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (Count << 32)
  {
    if (Count <= 0xAAAAAAAAAAAAAAALL)
    {
      v46 = a1;
      std::allocator<std::map<std::string,applesauce::CF::TypeRef>>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  if (Count >= 1)
  {
    v6 = 0;
    v34 = Count & 0x7FFFFFFF;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      if (!ValueAtIndex || (v8 = CFDictionaryGetTypeID(), v8 != CFGetTypeID(ValueAtIndex)))
      {
        v31 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v31, "Could not convert");
      }

      v9 = CFDictionaryGetCount(ValueAtIndex);
      v36 = 0;
      v37 = 0;
      v35 = &v36;
      std::vector<void const*>::vector[abi:ne200100](keys, v9);
      std::vector<void const*>::vector[abi:ne200100](values, v9);
      CFDictionaryGetKeysAndValues(ValueAtIndex, keys[0], values[0]);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          applesauce::CF::convert_to<std::string,0>(__p, keys[0][i]);
          v11 = values[0][i];
          if (v11)
          {
            CFRetain(values[0][i]);
          }

          v44 = *__p;
          v12 = v40;
          __p[1] = 0;
          v40 = 0;
          v38 = 0;
          __p[0] = 0;
          *&v45 = v12;
          *(&v45 + 1) = v11;
          if (!*std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(&v35, &v43, &v44))
          {
            operator new();
          }

          if (v11)
          {
            CFRelease(v11);
          }

          if (SBYTE7(v45) < 0)
          {
            operator delete(v44);
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (keys[0])
      {
        keys[1] = keys[0];
        operator delete(keys[0]);
      }

      v13 = a1[1];
      v14 = a1[2];
      if (v13 >= v14)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v46 = a1;
        if (v21)
        {
          std::allocator<std::map<std::string,applesauce::CF::TypeRef>>::allocate_at_least[abi:ne200100](v21);
        }

        v23 = 24 * v18;
        *&v44 = 0;
        *(&v44 + 1) = v23;
        *(&v45 + 1) = 0;
        *v23 = v35;
        v24 = v36;
        *(24 * v18 + 8) = v36;
        v25 = 24 * v18 + 8;
        v26 = v37;
        *(v23 + 16) = v37;
        if (v26)
        {
          *(v24 + 2) = v25;
          v35 = &v36;
          v36 = 0;
          v37 = 0;
        }

        else
        {
          *v23 = v25;
        }

        *&v45 = v23 + 24;
        v27 = a1[1];
        v28 = v23 + *a1 - v27;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,applesauce::CF::TypeRef>>,std::map<std::string,applesauce::CF::TypeRef>*>(a1, *a1, v27, v28);
        v29 = *a1;
        *a1 = v28;
        v30 = a1[2];
        v33 = v45;
        *(a1 + 1) = v45;
        *&v45 = v29;
        *(&v45 + 1) = v30;
        *&v44 = v29;
        *(&v44 + 1) = v29;
        std::__split_buffer<std::map<std::string,applesauce::CF::TypeRef>>::~__split_buffer(&v44);
        v22 = v33;
      }

      else
      {
        *v13 = v35;
        v15 = v36;
        v13[1] = v36;
        v16 = (v13 + 1);
        v17 = v37;
        v13[2] = v37;
        if (v17)
        {
          *(v15 + 2) = v16;
          v35 = &v36;
          v36 = 0;
          v37 = 0;
        }

        else
        {
          *v13 = v16;
        }

        v22 = v13 + 3;
      }

      a1[1] = v22;
      std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(v36);
      ++v6;
    }

    while (v6 != v34);
  }
}

void std::vector<std::map<std::string,applesauce::CF::TypeRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = a2;
    goto LABEL_3;
  }

  v8 = a2;
  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_9;
  }

  if (v10 == 5)
  {
    v8 = a2;
    if (*(a1 + 36))
    {
      goto LABEL_9;
    }

    v19 = 41;
  }

  else
  {
LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_9;
    }

    v19 = *a2;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
  v8 = a2 + 1;
LABEL_9:
  if (v8 != a2)
  {
    goto LABEL_18;
  }

  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v11 = (a2 + 1);
  if (a2 + 1 == a3 || *a2 != 92)
  {
    goto LABEL_2;
  }

  v12 = *v11;
  v13 = *v11;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
    v8 = a2 + 2;
  }

  else if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13))
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2;
  }

LABEL_3:
  if (v8 == a2)
  {
    if (a2 != a3 && *v8 == 46)
    {
      operator new();
    }

    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

LABEL_18:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_29;
    }

    ++v8;
  }

LABEL_29:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
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
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_126;
    }

    v5 = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_126;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_126:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = v5;
      v10 = v5;
      if (v5 == a3)
      {
        goto LABEL_111;
      }

      v11 = *v5;
      v10 = v5;
      if (v11 == 93)
      {
        goto LABEL_111;
      }

      v12 = 0;
      v13 = (v5 + 1);
      v41[0] = 0;
      v41[1] = 0;
      v42 = 0;
      v14 = 0;
      v10 = v8;
      if (v8 + 1 == a3 || v11 != 91)
      {
        goto LABEL_46;
      }

      v15 = *v13;
      switch(v15)
      {
        case '.':
          v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, v41);
          v14 = HIBYTE(v42);
          v12 = v41[1];
          goto LABEL_46;
        case ':':
          LOWORD(__src[0]) = 23866;
          v20 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
          if (v20 == a3)
          {
LABEL_127:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
          }

          v17 = v20;
          v21 = *(a1 + 24);
          std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v8 + 2, v20, v20 - (v8 + 2));
          v22 = HIBYTE(v46);
          if (v46 >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if (v46 < 0)
          {
            v22 = __p[1];
          }

          (*(**(a1 + 8) + 48))(*(a1 + 8), v23, &v22[v23]);
          if (v46 >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          classname = std::__get_classname(v24, v21 & 1);
          if (SHIBYTE(v46) < 0)
          {
            operator delete(__p[0]);
          }

          if (!classname)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          v26 = 0;
          *(v7 + 160) |= classname;
          break;
        case '=':
          LOWORD(v39[0]) = 23869;
          v16 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, v39, v39 + 2);
          if (v16 == a3)
          {
            goto LABEL_127;
          }

          v17 = v16;
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__p, a1, v8 + 2, v16);
          v18 = SHIBYTE(v46);
          if ((SHIBYTE(v46) & 0x8000000000000000) != 0)
          {
            v18 = __p[1];
            if (!__p[1])
            {
LABEL_128:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            v19 = __p[0];
          }

          else
          {
            if (!HIBYTE(v46))
            {
              goto LABEL_128;
            }

            v19 = __p;
          }

          std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v19, v18 + v19);
          v30 = HIBYTE(v44);
          if (v44 < 0)
          {
            v30 = __src[1];
          }

          if (v30)
          {
            std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
          }

          else
          {
            v31 = HIBYTE(v46);
            if (v46 < 0)
            {
              v31 = __p[1];
            }

            if (v31 == 2)
            {
              if (v46 >= 0)
              {
                v37 = __p;
              }

              else
              {
                v37 = __p[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v37, *(v37 + 1));
            }

            else
            {
              if (v31 != 1)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              if (v46 >= 0)
              {
                v32 = __p;
              }

              else
              {
                v32 = __p[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v32);
            }
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(__src[0]);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(__p[0]);
          }

          v26 = 0;
          break;
        default:
          v12 = 0;
          v14 = 0;
          v10 = v8;
LABEL_46:
          v5 = *(a1 + 24) & 0x1F0;
          if (v14 >= 0)
          {
            v12 = v14;
          }

          if (!v12)
          {
            if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
            {
              v27 = *v10;
              if (v27 == 92)
              {
                if ((*(a1 + 24) & 0x1F0) != 0)
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, v41);
                }

                else
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, v41, v7);
                }

                v10 = v28;
                goto LABEL_74;
              }
            }

            else
            {
              LOBYTE(v27) = *v10;
            }

            if (v14 < 0)
            {
              v29 = v41[0];
              v41[1] = 1;
            }

            else
            {
              HIBYTE(v42) = 1;
              v29 = v41;
            }

            *v29 = v27;
            *(v29 + 1) = 0;
            ++v10;
          }

LABEL_74:
          if (v10 != a3)
          {
            v33 = *v10;
            if (v33 != 93)
            {
              v35 = v10 + 1;
              if (v10 + 1 != a3 && v33 == 45 && *v35 != 93)
              {
                __p[0] = 0;
                __p[1] = 0;
                v46 = 0;
                v10 += 2;
                if (v35 + 1 != a3 && *v35 == 91 && *v10 == 46)
                {
                  v36 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v35 + 2, a3, __p);
                  goto LABEL_119;
                }

                if ((v5 | 0x40) == 0x40)
                {
                  LODWORD(v35) = *v35;
                  if (v35 == 92)
                  {
                    if (v5)
                    {
                      v36 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, __p);
                    }

                    else
                    {
                      v36 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, __p, v7);
                    }

LABEL_119:
                    v10 = v36;
LABEL_120:
                    *__src = *v41;
                    v38 = v42;
                    v41[1] = 0;
                    v42 = 0;
                    *v39 = *__p;
                    v40 = v46;
                    v41[0] = 0;
                    __p[1] = 0;
                    v46 = 0;
                    v44 = v38;
                    __p[0] = 0;
                    std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, v39);
                    if (SHIBYTE(v40) < 0)
                    {
                      operator delete(v39[0]);
                    }

                    if (SHIBYTE(v44) < 0)
                    {
                      operator delete(__src[0]);
                    }

                    if (SHIBYTE(v46) < 0)
                    {
                      operator delete(__p[0]);
                    }

LABEL_93:
                    v26 = 1;
                    goto LABEL_109;
                  }
                }

                else
                {
                  LOBYTE(v35) = *v35;
                }

                HIBYTE(v46) = 1;
                LOBYTE(__p[0]) = v35;
                goto LABEL_120;
              }
            }
          }

          if (SHIBYTE(v42) < 0)
          {
            if (!v41[1])
            {
              operator delete(v41[0]);
LABEL_111:
              v5 = v10;
              goto LABEL_112;
            }

            if (v41[1] != 1)
            {
              v34 = v41[0];
LABEL_92:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v34, *(v34 + 1));
              goto LABEL_93;
            }

            v34 = v41[0];
          }

          else
          {
            if (!HIBYTE(v42))
            {
              goto LABEL_111;
            }

            v34 = v41;
            if (HIBYTE(v42) != 1)
            {
              goto LABEL_92;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v34);
          goto LABEL_93;
      }

      v5 = (v17 + 2);
      v10 = v8;
LABEL_109:
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
        if ((v26 & 1) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_111;
      }

      if (v26)
      {
        goto LABEL_111;
      }

LABEL_112:
      if (v8 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  return a2;
}

void sub_1DDE18EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 12;
          goto LABEL_77;
        }

        v5 = 12;
        goto LABEL_61;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v11 = 10;
          goto LABEL_77;
        }

        v5 = 10;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 13;
            goto LABEL_77;
          }

          v5 = 13;
          goto LABEL_61;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 9;
            goto LABEL_77;
          }

          v5 = 9;
          goto LABEL_61;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v11 = 11;
            goto LABEL_77;
          }

          v5 = 11;
          goto LABEL_61;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_61;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 7;
        goto LABEL_77;
      }

      v5 = 7;
LABEL_61:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v11 = 8;
LABEL_77:
        *a4 = v11;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_61;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_82;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v7 & 0xF8) != 0x30)
    {
      goto LABEL_51;
    }

    v6 = *v7 + 8 * v6 - 48;
    if (a2 + 2 != a3)
    {
      v8 = a2[2];
      v9 = v8 & 0xF8;
      v10 = v8 + 8 * v6 - 48;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = v10;
      }

      goto LABEL_51;
    }
  }

  v7 = a3;
LABEL_51:
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
    if (*a2 <= 0x65u)
    {
      if (v5 != 48)
      {
        if (v5 != 99)
        {
          if (v5 == 95)
          {
            goto LABEL_93;
          }

          goto LABEL_70;
        }

        v4 = (a2 + 1);
        if (a2 + 1 != a3 && *v4 >= 65)
        {
          v6 = *v4;
          if (v6 < 0x5B || (v6 - 97) <= 0x19u)
          {
            v7 = v6 & 0x1F;
            goto LABEL_72;
          }
        }

LABEL_93:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 0;
        return ++v4;
      }

      v7 = 0;
      goto LABEL_75;
    }

    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 12;
        goto LABEL_90;
      }

      v7 = 12;
      goto LABEL_75;
    }

    if (v5 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 10;
        goto LABEL_90;
      }

      v7 = 10;
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 13;
        goto LABEL_90;
      }

      v7 = 13;
      goto LABEL_75;
    }

    if (v5 == 116)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v15 = 9;
        goto LABEL_90;
      }

      v7 = 9;
LABEL_75:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
      return ++v4;
    }

LABEL_70:
    v7 = v5;
    if (v5 < 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
LABEL_72:
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v7;
        *(a4 + 1) = 0;
        return ++v4;
      }

      goto LABEL_75;
    }

    goto LABEL_93;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_93;
    }

    v8 = a2[1];
    if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
    {
      goto LABEL_93;
    }

    v4 = (a2 + 2);
    if (a2 + 2 == a3)
    {
      goto LABEL_93;
    }

    v9 = *v4;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_93;
    }

    goto LABEL_43;
  }

  if (v5 == 118)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v15 = 11;
LABEL_90:
      *a4 = v15;
      return ++v4;
    }

    v7 = 11;
    goto LABEL_75;
  }

  if (v5 != 120)
  {
    goto LABEL_70;
  }

LABEL_43:
  if (v4 + 1 == a3)
  {
    goto LABEL_93;
  }

  v10 = v4[1];
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6u)
    {
      goto LABEL_93;
    }

    v11 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_93;
  }

  v12 = v4[2];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6u)
    {
      goto LABEL_93;
    }

    v13 = -87;
  }

  v14 = v13 + v12 + 16 * (v11 + v10);
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v14;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
  }

  v4 += 3;
  return v4;
}

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1DDE19A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = (v3 + 2);
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_28;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v27 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v27;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_59;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_59:
  v9 = v14 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_3;
  }

  v18 = *a2;
  if (v18 <= 0x3E)
  {
    v8 = a2;
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_4;
      }

      if (v18 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v23 != a3 && *v23 == 41)
            {
              --a1->__open_count_;
              v8 = v23 + 1;
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v24 = a1->__marked_count_;
            ++a1->__open_count_;
            v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v25 != a3)
            {
              v26 = v25;
              if (*v25 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
                --a1->__open_count_;
                v8 = v26 + 1;
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v18 == 41)
      {
        goto LABEL_4;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_74:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_71:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  v8 = a2;
  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_4;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_101;
    }

    goto LABEL_71;
  }

  v20 = a2 + 1;
  if (a3 == a2 + 1)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
    goto LABEL_78;
  }

  v8 = a2 + 1;
  if ((v21 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v28 = *v8;
        if ((v28 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_103;
        }

        ++v8;
        v22 = v28 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_103:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_103;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_78:
  if (v20 != v8)
  {
    goto LABEL_4;
  }

  v29 = *v20;
  if (v29 <= 0x63)
  {
    if (v29 != 68)
    {
      if (v29 != 83)
      {
        v8 = a2 + 1;
        if (v29 != 87)
        {
          goto LABEL_97;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_91;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_94;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_89;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_94:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_95;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_97;
    }

    v32 = a1;
    v33 = 0;
LABEL_89:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_95:
    started->__mask_ = v35;
    goto LABEL_96;
  }

  v30 = a1;
  v31 = 0;
LABEL_91:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_96:
  v8 = a2 + 2;
LABEL_97:
  if (v20 == v8)
  {
    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v39 == v20)
    {
      v8 = a2;
    }

    else
    {
      v8 = v39;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

void std::allocator<std::map<std::string,applesauce::CF::TypeRef>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::map<std::string,applesauce::CF::TypeRef>>,std::map<std::string,applesauce::CF::TypeRef>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    do
    {
      std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(v5 + 8));
      v5 += 24;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<std::map<std::string,applesauce::CF::TypeRef>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 7);
    if (v3)
    {
      CFRelease(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::vector<applesauce::CF::DictionaryRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(void *a1)
{
  v18 = 0;
  v19 = 0uLL;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v19;
    do
    {
      if (v5 >= *(&v19 + 1))
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v7 = (*(&v19 + 1) - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*(&v19 + 1) - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>((16 * v6), v3 + 32, v3 + 7);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - v19];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v18, v18, v19, v9);
        v10 = v18;
        v11 = *(&v19 + 1);
        v18 = v9;
        v17 = v22;
        v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v20);
        v5 = v17;
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(v5, v3 + 32, v3 + 7);
        v5 += 16;
      }

      *&v19 = v5;
      v12 = v3[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v18);
  v20 = &v18;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v20);
  return CFDictionaryRef;
}

void sub_1DDE1A880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

uint64_t AUDSPGraph_v1::GetProperty(AUDSPGraph_v1 *this, uint64_t a2, int a3, unsigned int a4, CFArrayRef *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 <= 1835758190)
  {
    switch(a2)
    {
      case 0xE74:
        v5 = 0;
        v14 = *(this + 376);
        break;
      case 0x64736267:
        v5 = 0;
        v14 = *(this + 848);
        break;
      case 0x67626F78:
        v9 = *(this + 86);
        if (!v9)
        {
          return 4294956446;
        }

        memset(&__p, 0, sizeof(__p));
        v10 = *(v9 + 24);
        if (v10)
        {
          v31[0] = 0;
          v31[1] = 0;
          v30 = v31;
          v11 = *(v10 + 16);
          v12 = (v11 + 32);
          if (*(v11 + 55) < 0)
          {
            v12 = *v12;
            v13 = strlen(v12);
            if (!v12)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v13 = strlen(v12);
          }

          if (!CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

LABEL_13:
          operator new();
        }

        *a5 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&__p);
        *buf = &__p;
        std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](buf);
        return 0;
      default:
LABEL_23:
        v16 = *(this + 86);
        if (!v16 || !DSPGraph::Graph::hasProperty(v16))
        {
          return 4294956417;
        }

        v17 = (*(**(this + 86) + 64))(*(this + 86), a2);
        v30 = v17;
        LOBYTE(v31[0]) = v18;
        if (v18)
        {
          (*(**(this + 86) + 72))(*(this + 86), a2, &v30, a5);
          return 0;
        }

        v20 = *(this + 656);
        Log = AU::DSPGraph::GetLog(v17);
        v22 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
        if (v20 == 1)
        {
          if (v22)
          {
            v23 = (this + 632);
            if (*(this + 655) < 0)
            {
              v23 = *v23;
            }

            caulk::string_from_4cc(&__p, a2);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = v23;
            v34 = 2048;
            v35 = this;
            v36 = 2080;
            v37 = p_p;
            v38 = 1024;
            v39 = v30;
            v25 = "[%s|%p] failed to query property info for property %s (error %d)";
            v26 = Log;
            v27 = 38;
            goto LABEL_48;
          }
        }

        else if (v22)
        {
          caulk::string_from_4cc(&__p, a2);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &__p;
          }

          else
          {
            v28 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 134218498;
          *&buf[4] = this;
          v34 = 2080;
          v35 = v28;
          v36 = 1024;
          LODWORD(v37) = v30;
          v25 = "[%p] failed to query property info for property %s (error %d)";
          v26 = Log;
          v27 = 28;
LABEL_48:
          _os_log_error_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        return v30;
    }

LABEL_29:
    *a5 = v14;
    return v5;
  }

  if (a2 != 1835758191)
  {
    if (a2 == 1852797026)
    {
      v5 = 0;
      v14 = *(this + 852);
    }

    else
    {
      if (a2 != 1920169063)
      {
        goto LABEL_23;
      }

      v5 = 0;
      v14 = *(this + 849);
    }

    goto LABEL_29;
  }

  v15 = *(this + 118);
  if (v15)
  {
    CFRetain(v15);
  }

  v5 = 0;
  *a5 = v15;
  return v5;
}

void sub_1DDE1B524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, __int16 a20, uint64_t a21, char a22, char a23, __int128 buf, int a25, __int16 a26, __int16 a27, uint64_t a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v31 = __cxa_begin_catch(exception_object);
  v32 = (v28 + 632);
  v33 = *(v28 + 656);
  Log = AU::DSPGraph::GetLog(v31);
  v35 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
  if (a2 == 2)
  {
    if (v33)
    {
      if (v35)
      {
      }
    }

    else if (v35)
    {
    }

    v38 = *(v28 + 656);
    v39 = AU::DSPGraph::GetLog(v35);
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v38 == 1)
    {
      if (v40)
      {
        if (*(v28 + 655) < 0)
        {
          v32 = *v32;
        }

        caulk::string_from_4cc(&a17, v29);
        v41 = a21 >= 0 ? &a17 : *&a17;
        LODWORD(buf) = 136315650;
        *(&buf + 4) = v32;
        WORD6(buf) = 2048;
        *(&buf + 14) = v28;
        a27 = 2080;
        a28 = v41;
        _os_log_error_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_ERROR, "[%s|%p] DSPGraph exception while getting property %s", &buf, 0x20u);
        if (SHIBYTE(a21) < 0)
        {
          v42 = *&a17;
LABEL_41:
          operator delete(v42);
        }
      }
    }

    else if (v40)
    {
      caulk::string_from_4cc(&buf, v29);
      v44 = a27 >= 0 ? &buf : buf;
      a17 = 134218242;
      *(&a17 + 1) = v28;
      a20 = 2080;
      *(&a19 + 6) = v44;
      _os_log_error_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_ERROR, "[%p] DSPGraph exception while getting property %s", &a17, 0x16u);
      if (SHIBYTE(a27) < 0)
      {
        v42 = buf;
        goto LABEL_41;
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DDE1B158);
  }

  if (v33)
  {
    if (v35)
    {
      if (*(v28 + 655) < 0)
      {
        v32 = *v32;
      }

      caulk::string_from_4cc(&a17, v29);
      v36 = a21 >= 0 ? &a17 : *&a17;
      LODWORD(buf) = 136315650;
      *(&buf + 4) = v32;
      WORD6(buf) = 2048;
      *(&buf + 14) = v28;
      a27 = 2080;
      a28 = v36;
      _os_log_error_impl(&dword_1DDB85000, Log, OS_LOG_TYPE_ERROR, "[%s|%p] unknown exception while getting property %s", &buf, 0x20u);
      if (SHIBYTE(a21) < 0)
      {
        v37 = *&a17;
LABEL_35:
        operator delete(v37);
      }
    }
  }

  else if (v35)
  {
    caulk::string_from_4cc(&buf, v29);
    v43 = a27 >= 0 ? &buf : buf;
    a17 = 134218242;
    *(&a17 + 1) = v28;
    a20 = 2080;
    *(&a19 + 6) = v43;
    _os_log_error_impl(&dword_1DDB85000, Log, OS_LOG_TYPE_ERROR, "[%p] unknown exception while getting property %s", &a17, 0x16u);
    if (SHIBYTE(a27) < 0)
    {
      v37 = buf;
      goto LABEL_35;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DDE1A9D0);
}

void sub_1DDE1BBCC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v1 + 32));
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

AU::DSPGraph *AUDSPGraph_v1::GetPropertyInfo(AUDSPGraph_v1 *this, uint64_t a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 <= 1735554167)
  {
    if (a2 <= 1685287014)
    {
      if (a2 > 1652060273)
      {
        if ((a2 - 1652060274) >= 2)
        {
          v11 = 1685283431;
          goto LABEL_26;
        }

        goto LABEL_32;
      }

      if (a2 == 3700)
      {
        v6 = 0;
        v13 = *(this + 17) ^ 1;
        goto LABEL_36;
      }

      v12 = 1635087216;
LABEL_31:
      if (a2 != v12)
      {
        goto LABEL_39;
      }

LABEL_32:
      v6 = 0;
      v14 = 1;
      goto LABEL_33;
    }

    if (a2 > 1735287148)
    {
      if (a2 != 1735287149)
      {
        v12 = 1735553138;
        goto LABEL_31;
      }
    }

    else if (a2 != 1685287015)
    {
      if (a2 != 1734504312)
      {
        goto LABEL_39;
      }

      v6 = 0;
      *a6 = 0;
LABEL_34:
      v15 = 8;
LABEL_37:
      *a5 = v15;
      return v6;
    }

    goto LABEL_28;
  }

  if (a2 > 1886548591)
  {
    if (a2 <= 1886548852)
    {
      if (a2 != 1886548592)
      {
        v12 = 1886548848;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 == 1886548853)
    {
      goto LABEL_28;
    }

    v11 = 1920169063;
  }

  else
  {
    if (a2 <= 1836347500)
    {
      if (a2 != 1735554168 && a2 != 1835758191)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (a2 == 1836347501)
    {
LABEL_28:
      v6 = 0;
      v14 = *(this + 17) ^ 1;
LABEL_33:
      *a6 = v14;
      goto LABEL_34;
    }

    v11 = 1852797026;
  }

LABEL_26:
  if (a2 == v11)
  {
    v6 = 0;
    v13 = 1;
LABEL_36:
    *a6 = v13;
    v15 = 4;
    goto LABEL_37;
  }

LABEL_39:
  v17 = *(this + 86);
  if (!v17 || !DSPGraph::Graph::hasProperty(v17))
  {
    return 4294956417;
  }

  v18 = (*(**(this + 86) + 64))(*(this + 86), a2);
  v6 = v18;
  if (v19)
  {
    *a5 = v18;
    *a6 = BYTE4(v18);
    return 0;
  }

  else
  {
    v20 = *(this + 656);
    Log = AU::DSPGraph::GetLog(v18);
    v22 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
    if (v20 == 1)
    {
      if (!v22)
      {
        return v6;
      }

      v23 = (this + 632);
      if (*(this + 655) < 0)
      {
        v23 = *v23;
      }

      caulk::string_from_4cc(&v32, a2);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      caulk::string_from_4cc(&__p, v6);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v34 = v23;
      v35 = 2048;
      v36 = this;
      v37 = 2080;
      v38 = v24;
      v39 = 2080;
      v40 = p_p;
      v26 = "[%s|%p] failed to query property info for property %s (error %s)";
      v27 = Log;
      v28 = 42;
    }

    else
    {
      if (!v22)
      {
        return v6;
      }

      v29 = &v32;
      caulk::string_from_4cc(&v32, a2);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = v32.__r_.__value_.__r.__words[0];
      }

      caulk::string_from_4cc(&__p, v6);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 134218498;
      v34 = this;
      v35 = 2080;
      v36 = v29;
      v37 = 2080;
      v38 = v30;
      v26 = "[%p] failed to query property info for property %s (error %s)";
      v27 = Log;
      v28 = 32;
    }

    _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  return v6;
}

uint64_t AUDSPGraph_v1::Reset(AUDSPGraph_v1 *this)
{
  v1 = *(this + 86);
  if (v1 && *(v1 + 762) == 1)
  {
    DSPGraph::Graph::reset(v1);
  }

  return 0;
}

void AUDSPGraph_v1::Cleanup(DSPGraph::Graph **this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = (this + 79);
  v3 = *(this + 656);
  if (v3 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v5 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v2;
      if (*(this + 655) < 0)
      {
        v6 = *v2;
      }

      *buf = 136315394;
      v25 = v6;
      v26 = 2048;
      v27 = this;
      v7 = "[%s|%p] will uninitialize";
      v8 = v5;
      v9 = 22;
      goto LABEL_10;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v10 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = this;
      v7 = "[%p] will uninitialize";
      v8 = v10;
      v9 = 12;
LABEL_10:
      _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  v11 = this[83];
  this[83] = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = this[84];
  this[84] = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = this[97];
  this[97] = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = this[98];
  this[98] = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = this[99];
  this[99] = 0;
  if (v15)
  {
    CFRelease(v15);
  }

  this[95] = this[94];
  *(this + 851) = 0;
  v16 = this[86];
  if (v16)
  {
    DSPGraph::Graph::uninitialize(v16);
    DSPGraph::Graph::unconfigure(this[86]);
  }

  v17 = *(this + 656);
  if (v17 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v19 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 655) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315394;
      v25 = v2;
      v26 = 2048;
      v27 = this;
      v20 = "[%s|%p] did uninitialize";
      v21 = v19;
      v22 = 22;
      goto LABEL_32;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v23 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = this;
      v20 = "[%p] did uninitialize";
      v21 = v23;
      v22 = 12;
LABEL_32:
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }
  }
}

void sub_1DDE1C3BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DDE1C3E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t a11, int a12, int a13, __int16 a14, uint64_t a15, char a16, char a17, __int128 buf)
{
  v37 = v19;
  switch(a2)
  {
    case 0:
      JUMPOUT(0x1DDE1C3E0);
    case 4:
      v21 = __cxa_begin_catch(a1);
      v22 = *(v18 + 656);
      Log = AU::DSPGraph::GetLog(v21);
      v24 = os_log_type_enabled(Log, OS_LOG_TYPE_ERROR);
      if (v22 == 1)
      {
        if (v24)
        {
        }
      }

      else if (v24)
      {
      }

      break;
    case 3:
      v25 = __cxa_begin_catch(a1);
      v26 = *(v18 + 656);
      v27 = AU::DSPGraph::GetLog(v25);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26 == 1)
      {
        if (v28)
        {
        }
      }

      else if (v28)
      {
      }

      break;
    default:
      v29 = __cxa_begin_catch(a1);
      v30 = *(v18 + 656);
      v31 = AU::DSPGraph::GetLog(v29);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (a2 != 2)
      {
        if (v30)
        {
          if (!v32)
          {
            break;
          }

          v33 = v37;
          if (*(v18 + 655) < 0)
          {
            v33 = *v37;
          }

          LODWORD(buf) = 136315394;
          *(&buf + 4) = v33;
          WORD6(buf) = 2048;
          *(&buf + 14) = v18;
          v34 = "[%s|%p] caught unknown exception";
          v35 = v31;
          v36 = 22;
        }

        else
        {
          if (!v32)
          {
            break;
          }

          LODWORD(buf) = 134217984;
          *(&buf + 4) = v18;
          v34 = "[%p] caught unknown exception";
          v35 = v31;
          v36 = 12;
        }

        _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, v34, &buf, v36);
        break;
      }

      if (v30)
      {
        if (v32)
        {
        }
      }

      else if (v32)
      {
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DDE1C1E8);
}

uint64_t AUDSPGraph_v1::Initialize(AUDSPGraph_v1 *this)
{
  v594 = *MEMORY[0x1E69E9840];
  v561 = (this + 632);
  v2 = *(this + 656);
  if (v2 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v4 = AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v5 = v561;
    if (*(this + 655) < 0)
    {
      v5 = *v561;
    }

    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = this;
    v6 = "[%s|%p] will initialize";
    v7 = v4;
    v8 = 22;
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v9 = AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v6 = "[%p] will initialize";
    v7 = v9;
    v8 = 12;
  }

  _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_11:
  v10 = *(this + 15);
  v562 = this;
  if (v10)
  {
    LODWORD(v551) = (*(*v10 + 24))(v10);
  }

  else
  {
    v551 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v11 = *(this + 21);
  if (v11)
  {
    LODWORD(v556) = (*(*v11 + 24))(v11);
  }

  else
  {
    v556 = (*(this + 19) - *(this + 18)) >> 3;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v556)
  {
    v12 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v12)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v13 = *(v12 + 80);
    __val = *(v12 + 108);
    v549 = *(v12 + 92) & 0x20;
  }

  else
  {
    v549 = 0;
    v13 = 0;
  }

  DSPGraph::Interpreter::Interpreter(buf);
  *v587 = 0u;
  v588 = 0u;
  v589 = 1065353216;
  memset(v575, 0, sizeof(v575));
  v576 = 1065353216;
  v572 = 0u;
  v573 = 0u;
  v574 = 1065353216;
  std::to_string(v584, *(Element + 80));
  std::string::basic_string[abi:ne200100]<0>(__p, "sampleRate");
  cf[0] = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v575, __p);
  v15 = v14;
  if (*(v14 + 63) < 0)
  {
    operator delete(v14[5]);
  }

  *(v15 + 5) = *v584;
  v15[7] = *&v584[16];
  v584[23] = 0;
  v584[0] = 0;
  if (SBYTE7(v568) < 0)
  {
    operator delete(__p[0]);
    if ((v584[23] & 0x80000000) != 0)
    {
      operator delete(*v584);
    }
  }

  std::to_string(v584, *(Element + 108));
  std::string::basic_string[abi:ne200100]<0>(__p, "numIns");
  cf[0] = __p;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v575, __p);
  v17 = v16;
  if (*(v16 + 63) < 0)
  {
    operator delete(v16[5]);
  }

  *(v17 + 5) = *v584;
  v17[7] = *&v584[16];
  v584[23] = 0;
  v584[0] = 0;
  if (SBYTE7(v568) < 0)
  {
    operator delete(__p[0]);
    if ((v584[23] & 0x80000000) != 0)
    {
      operator delete(*v584);
    }
  }

  if (v556)
  {
    std::to_string(v584, __val);
    std::string::basic_string[abi:ne200100]<0>(__p, "numOuts");
    cf[0] = __p;
    v18 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v575, __p);
    v19 = v18;
    if (*(v18 + 63) < 0)
    {
      operator delete(v18[5]);
    }

    *(v19 + 5) = *v584;
    v19[7] = *&v584[16];
    v584[23] = 0;
    v584[0] = 0;
    if (SBYTE7(v568) < 0)
    {
      operator delete(__p[0]);
      if ((v584[23] & 0x80000000) != 0)
      {
        operator delete(*v584);
      }
    }
  }

  if (*(this + 376) == 1)
  {
    v20 = *(this + 84);
  }

  else
  {
    v20 = 1;
  }

  std::to_string(v584, v20);
  std::string::basic_string[abi:ne200100]<0>(__p, "blockSize");
  cf[0] = __p;
  v21 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v575, __p);
  v22 = v21;
  v23 = v561;
  if (*(v21 + 63) < 0)
  {
    operator delete(v21[5]);
  }

  *(v22 + 5) = *v584;
  v22[7] = *&v584[16];
  v584[23] = 0;
  v584[0] = 0;
  if (SBYTE7(v568) < 0)
  {
    operator delete(__p[0]);
    if ((v584[23] & 0x80000000) != 0)
    {
      operator delete(*v584);
    }
  }

  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(v584, *(v562 + 118));
  applesauce::CF::DictionaryRef_iterator<std::string,std::string>::DictionaryRef_iterator(__p, *(v562 + 118));
  __p[1] = ((*(&v568 + 1) - v568) >> 3);
  while (1)
  {
    if (*v584 && (v24 = *&v584[8], *&v584[8] != (*&v584[24] - *&v584[16]) >> 3))
    {
      v25 = __p[0];
    }

    else
    {
      v25 = __p[0];
      if (!__p[0] || __p[1] == ((*(&v568 + 1) - v568) >> 3))
      {
        break;
      }

      v24 = *&v584[8];
    }

    v26 = *v584 == v25 && v24 == __p[1];
    if (v26)
    {
      break;
    }

    if ((v24 & 0x8000000000000000) != 0 || v24 >= (*&v584[24] - *&v584[16]) >> 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "DictionaryRef_iterator iterator out of range.");
      exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
    }

    applesauce::CF::convert_to<std::string,0>(&v582, *(*&v584[16] + 8 * v24));
    applesauce::CF::convert_to<std::string,0>(&v593, *(v585 + *&v584[8]));
    *cf = *&v582.__r_.__value_.__l.__data_;
    *v566 = *(&v582.__r_.__value_.__l + 2);
    *&v566[8] = v593;
    v27 = std::__string_hash<char>::operator()[abi:ne200100](cf);
    v28 = v27;
    v29 = *(&v575[0] + 1);
    if (!*(&v575[0] + 1))
    {
      goto LABEL_75;
    }

    v30 = vcnt_s8(*(v575 + 8));
    v30.i16[0] = vaddlv_u8(v30);
    v31 = v30.u32[0];
    if (v30.u32[0] > 1uLL)
    {
      v32 = v27;
      if (v27 >= *(&v575[0] + 1))
      {
        v32 = v27 % *(&v575[0] + 1);
      }
    }

    else
    {
      v32 = (*(&v575[0] + 1) - 1) & v27;
    }

    v33 = *(*&v575[0] + 8 * v32);
    if (!v33 || (v34 = *v33) == 0)
    {
LABEL_75:
      operator new();
    }

    while (1)
    {
      v35 = v34[1];
      if (v35 == v28)
      {
        break;
      }

      if (v31 > 1)
      {
        if (v35 >= v29)
        {
          v35 %= v29;
        }
      }

      else
      {
        v35 &= v29 - 1;
      }

      if (v35 != v32)
      {
        goto LABEL_75;
      }

LABEL_74:
      v34 = *v34;
      if (!v34)
      {
        goto LABEL_75;
      }
    }

    v36 = v34 + 2;
    if (!std::equal_to<std::string>::operator()[abi:ne200100](v34 + 2, cf))
    {
      goto LABEL_74;
    }

    v37 = *(v562 + 656);
    if (v37 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v39 = AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        v40 = v561;
        if (*(v562 + 655) < 0)
        {
          v40 = *v561;
        }

        if (*(v34 + 39) < 0)
        {
          v36 = *v36;
        }

        LODWORD(v582.__r_.__value_.__l.__data_) = 136315650;
        *(v582.__r_.__value_.__r.__words + 4) = v40;
        WORD2(v582.__r_.__value_.__r.__words[1]) = 2048;
        *(&v582.__r_.__value_.__r.__words[1] + 6) = v562;
        HIWORD(v582.__r_.__value_.__r.__words[2]) = 2080;
        v583 = v36;
        v41 = v39;
        v42 = "[%s|%p] failed to insert %s, key already exists.";
        v43 = 32;
        goto LABEL_94;
      }
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v44 = AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        if (*(v34 + 39) < 0)
        {
          v36 = *v36;
        }

        LODWORD(v582.__r_.__value_.__l.__data_) = 134218242;
        *(v582.__r_.__value_.__r.__words + 4) = v562;
        WORD2(v582.__r_.__value_.__r.__words[1]) = 2080;
        *(&v582.__r_.__value_.__r.__words[1] + 6) = v36;
        v41 = v44;
        v42 = "[%p] failed to insert %s, key already exists.";
        v43 = 22;
LABEL_94:
        _os_log_error_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_ERROR, v42, &v582, v43);
      }
    }

    if ((v566[31] & 0x80000000) != 0)
    {
      operator delete(*&v566[8]);
    }

    if ((v566[7] & 0x80000000) != 0)
    {
      operator delete(cf[0]);
    }

    ++*&v584[8];
    v23 = v561;
  }

  if (v570)
  {
    v571 = v570;
    operator delete(v570);
  }

  v45 = v562;
  if (v568)
  {
    *(&v568 + 1) = v568;
    operator delete(v568);
  }

  if (v585)
  {
    v586 = v585;
    operator delete(v585);
  }

  if (*&v584[16])
  {
    *&v584[24] = *&v584[16];
    operator delete(*&v584[16]);
  }

  memset(v564, 0, sizeof(v564));
  v560 = (v562 + 688);
  if (!*(v562 + 86) || *(v562 + 850) == 1)
  {
    if (_os_feature_enabled_impl() && (v46 = *(v562 + 118)) != 0 && CFDictionaryGetCount(v46) || _os_feature_enabled_impl())
    {
      std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(v562 + 752, *(v562 + 122), *(v562 + 123), (*(v562 + 123) - *(v562 + 122)) >> 3);
      applesauce::CF::ArrayRef::from_get(v584, *(v562 + 125));
      v47 = *(v562 + 97);
      *(v562 + 97) = *v584;
      *v584 = v47;
      if (v47)
      {
        CFRelease(v47);
      }

      applesauce::CF::ArrayRef::from_get(v584, *(v562 + 126));
      v48 = *(v562 + 98);
      *(v562 + 98) = *v584;
      *v584 = v48;
      if (v48)
      {
        CFRelease(v48);
      }

      applesauce::CF::ArrayRef::from_get(v584, *(v562 + 127));
      v49 = *(v562 + 99);
      *(v562 + 99) = *v584;
      *v584 = v49;
      if (v49)
      {
        CFRelease(v49);
      }

      v50 = *(v562 + 83);
      v51 = *(v562 + 128);
      *(v562 + 83) = v51;
      if (v51)
      {
        CFRetain(v51);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      v52 = *(v562 + 84);
      v53 = *(v562 + 129);
      *(v562 + 84) = v53;
      if (v53)
      {
        CFRetain(v53);
      }

      if (v52)
      {
        CFRelease(v52);
      }
    }

    v54 = *(v562 + 70);
    *(v562 + 70) = 0;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    if (*(v562 + 624) == 1)
    {
      v55 = *(v562 + 592);
      v56 = *(v562 + 656);
      if (v55 == 1)
      {
        if (!v56)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v75 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            *v584 = 134217984;
            *&v584[4] = v562;
            v59 = "[%p] graph text file path and graph text cannot be set simultaneously";
            goto LABEL_262;
          }

          goto LABEL_658;
        }

        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v58 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_658;
        }

        if (*(v562 + 655) < 0)
        {
          v23 = *v23;
        }

        *v584 = 136315394;
        *&v584[4] = v23;
        *&v584[12] = 2048;
        *&v584[14] = v562;
        v59 = "[%s|%p] graph text file path and graph text cannot be set simultaneously";
LABEL_258:
        v122 = v58;
        v123 = 22;
LABEL_263:
        _os_log_error_impl(&dword_1DDB85000, v122, OS_LOG_TYPE_ERROR, v59, v584, v123);
        goto LABEL_658;
      }

      if (v56)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v70 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v23;
          if (*(v562 + 655) < 0)
          {
            v71 = *v23;
          }

          *v584 = 136315394;
          *&v584[4] = v71;
          *&v584[12] = 2048;
          *&v584[14] = v562;
          v72 = "[%s|%p] compiling graph text";
          v73 = v70;
          v74 = 22;
LABEL_172:
          _os_log_impl(&dword_1DDB85000, v73, OS_LOG_TYPE_DEFAULT, v72, v584, v74);
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v79 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          *v584 = 134217984;
          *&v584[4] = v562;
          v72 = "[%p] compiling graph text";
          v73 = v79;
          v74 = 12;
          goto LABEL_172;
        }
      }

      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
      {
        if ((*(v562 + 624) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v80 = *(v562 + 623);
        if ((v80 & 0x8000000000000000) != 0)
        {
          v81 = *(v562 + 75);
          v80 = *(v562 + 76);
        }

        else
        {
          v81 = v562 + 600;
        }

        v82 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v83 = &v81[v80];
        *&v568 = 0;
LABEL_183:
        if ((v80 - v82) > 0)
        {
          v84 = v80 - v82;
          v85 = &v82[v81];
          do
          {
            v86 = memchr(v85, 10, v84);
            if (!v86)
            {
              break;
            }

            if (*v86 == 10)
            {
              if (v86 == v83)
              {
                break;
              }

              v87 = (v86 - v81);
              if (v86 - v81 == -1)
              {
                break;
              }

              v88 = (v87 - v82);
              if (v80 - v82 < v87 - v82)
              {
                v88 = (v80 - v82);
              }

              *v584 = &v82[v81];
              *&v584[8] = v88;
              std::vector<std::string_view>::push_back[abi:ne200100](__p, v584);
              v82 = v87 + 1;
              if (v87 >= v80)
              {
                std::__throw_out_of_range[abi:ne200100]("string_view::substr");
              }

              goto LABEL_183;
            }

            v85 = v86 + 1;
            v84 = v83 - v85;
          }

          while (v83 - v85 >= 1);
        }

        *v584 = &v82[v81];
        *&v584[8] = v80 - v82;
        std::vector<std::string_view>::push_back[abi:ne200100](__p, v584);
        v23 = v561;
        v90 = __p[0];
        v89 = __p[1];
        if (__p[0] != __p[1])
        {
          v91 = 0;
          while (1)
          {
            v92 = *v90;
            v93 = v90[1];
            v94 = *(v562 + 656);
            if (v94 == 1)
            {
              {
                AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
              }

              v96 = AU::DSPGraph::GetLog(void)::sLog;
              if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_205;
              }

              v97 = v23;
              if (*(v562 + 655) < 0)
              {
                v97 = *v23;
              }

              v98 = v91 + 1;
              *v584 = 136316162;
              *&v584[4] = v97;
              *&v584[12] = 2048;
              *&v584[14] = v562;
              *&v584[22] = 2048;
              *&v584[24] = v91;
              *&v584[32] = 1040;
              *&v584[34] = v93;
              *&v584[38] = 2080;
              v585 = v92;
              v99 = v96;
              v100 = "[%s|%p] [%2lu]: %.*s";
              v101 = 48;
            }

            else
            {
              {
                AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
              }

              v102 = AU::DSPGraph::GetLog(void)::sLog;
              if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_205;
              }

              v98 = v91 + 1;
              *v584 = 134218754;
              *&v584[4] = v562;
              *&v584[12] = 2048;
              *&v584[14] = v91;
              *&v584[22] = 1040;
              *&v584[24] = v93;
              *&v584[28] = 2080;
              *&v584[30] = v92;
              v99 = v102;
              v100 = "[%p] [%2lu]: %.*s";
              v101 = 38;
            }

            _os_log_debug_impl(&dword_1DDB85000, v99, OS_LOG_TYPE_DEBUG, v100, v584, v101);
            v91 = v98;
            v23 = v561;
LABEL_205:
            v90 += 2;
            if (v90 == v89)
            {
              v90 = __p[0];
              break;
            }
          }
        }

        v45 = v562;
        if (v90)
        {
          operator delete(v90);
        }
      }

      v103 = *(&v573 + 1);
      if (*(&v573 + 1))
      {
        __p[0] = 0;
        __p[1] = 0;
        *&v568 = 0;
      }

      else
      {
        *__p = 0u;
        v568 = 0u;
        v569 = 1065353216;
        memset(v563, 0, sizeof(v563));
      }

      DSPGraph::Interpreter::compileText();
      std::shared_ptr<DSPGraph::Graph>::operator=[abi:ne200100]<DSPGraph::Graph,std::default_delete<DSPGraph::Graph>,0>(v560, cf);
      v104 = cf[0];
      cf[0] = 0;
      if (v104)
      {
        (*(*v104 + 8))(v104);
      }

      if (v103)
      {
        *v584 = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v584);
      }

      else
      {
        *v584 = v563;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v584);
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(__p);
      }

      goto LABEL_223;
    }

    v60 = *(v562 + 592);
    v61 = *(v562 + 656);
    if (v60 != 1)
    {
      if (!v61)
      {
        if ((v62 & 1) == 0)
        {
          goto LABEL_1100;
        }

        goto LABEL_179;
      }

      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v58 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_658;
      }

      if (*(v562 + 655) < 0)
      {
        v23 = *v23;
      }

      *v584 = 136315394;
      *&v584[4] = v23;
      *&v584[12] = 2048;
      *&v584[14] = v562;
      v59 = "[%s|%p] neither graph text file path nor graph text were set";
      goto LABEL_258;
    }

    v63 = (v562 + 568);
    if (v61)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v64 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_167;
      }

      v65 = v23;
      if (*(v562 + 655) < 0)
      {
        v65 = *v23;
      }

      v66 = v562 + 568;
      if (*(v562 + 591) < 0)
      {
        v66 = *v63;
      }

      *v584 = 136315650;
      *&v584[4] = v65;
      *&v584[12] = 2048;
      *&v584[14] = v562;
      *&v584[22] = 2080;
      *&v584[24] = v66;
      v67 = "[%s|%p] compiling graph file: '%s'";
      v68 = v64;
      v69 = 32;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v76 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_167;
      }

      v77 = v562 + 568;
      if (*(v562 + 591) < 0)
      {
        v77 = *v63;
      }

      *v584 = 134218242;
      *&v584[4] = v562;
      *&v584[12] = 2080;
      *&v584[14] = v77;
      v67 = "[%p] compiling graph file: '%s'";
      v68 = v76;
      v69 = 22;
    }

    _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_DEFAULT, v67, v584, v69);
LABEL_167:
    DSPGraph::Interpreter::compileFile();
    std::shared_ptr<DSPGraph::Graph>::operator=[abi:ne200100]<DSPGraph::Graph,std::default_delete<DSPGraph::Graph>,0>(v560, v584);
    v78 = *v584;
    *v584 = 0;
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }

LABEL_223:
    *(v45 + 850) = 0;
  }

  if (!*v560)
  {
    v120 = *(v45 + 656);
    if (v120 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v58 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_658;
      }

      if (*(v45 + 655) < 0)
      {
        v23 = *v23;
      }

      *v584 = 136315394;
      *&v584[4] = v23;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      v59 = "[%s|%p] failed to create DSPGraph instance";
      goto LABEL_258;
    }

    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v75 = AU::DSPGraph::GetLog(void)::sLog;
    if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_658;
    }

    *v584 = 134217984;
    *&v584[4] = v45;
    v59 = "[%p] failed to create DSPGraph instance";
LABEL_262:
    v122 = v75;
    v123 = 12;
    goto LABEL_263;
  }

  if (*(v45 + 968))
  {
    v105 = *(*v560 + 3);
    if (v105)
    {
      v106 = (v45 + 960);
      do
      {
        (*(*v105[2] + 208))(v584);
        if (*&v584[4] == 1685287015 || ((*(*v105[2] + 208))(cf), HIDWORD(cf[0]) == 1685286961))
        {
          memset(v584, 0, 24);
          std::vector<applesauce::CF::TypeRefPair>::reserve(v584, *(v45 + 968));
          v107 = *(v45 + 952);
          if (v107 != v106)
          {
            v108 = *&v584[8];
            do
            {
              if (v108 >= *&v584[16])
              {
                v108 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(v584, v107 + 32, (v107 + 56));
              }

              else
              {
                applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v108, v107 + 32, (v107 + 56));
                v108 += 2;
              }

              *&v584[8] = v108;
              v109 = *(v107 + 1);
              if (v109)
              {
                do
                {
                  v110 = v109;
                  v109 = *v109;
                }

                while (v109);
              }

              else
              {
                do
                {
                  v110 = *(v107 + 2);
                  v26 = *v110 == v107;
                  v107 = v110;
                }

                while (!v26);
              }

              v107 = v110;
            }

            while (v110 != v106);
          }

          v45 = v562;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v584);
          cf[0] = v584;
          std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](cf);
          v582.__r_.__value_.__r.__words[0] = CFDictionaryRef;
          *v584 = CFDictionaryRef;
          v23 = v561;
          (*(*v105[2] + 312))();
          if (v582.__r_.__value_.__r.__words[0])
          {
            CFRelease(v582.__r_.__value_.__l.__data_);
          }
        }

        v105 = *v105;
      }

      while (v105);
    }
  }

  v112 = *(v45 + 672);
  if (v112 && CFDictionaryGetCount(v112))
  {
    v113 = *(v45 + 656);
    if (v113 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v115 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_268;
      }

      v116 = v23;
      if (*(v45 + 655) < 0)
      {
        v116 = *v23;
      }

      *v584 = 136315394;
      *&v584[4] = v116;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      v117 = "[%s|%p] setting .propstrip on DSPGraph";
      v118 = v115;
      v119 = 22;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v124 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_268;
      }

      *v584 = 134217984;
      *&v584[4] = v45;
      v117 = "[%p] setting .propstrip on DSPGraph";
      v118 = v124;
      v119 = 12;
    }

    _os_log_impl(&dword_1DDB85000, v118, OS_LOG_TYPE_DEFAULT, v117, v584, v119);
LABEL_268:
    DSPGraph::Graph::setPropertyStrip(*(v45 + 688), *(v45 + 672), *(v45 + 680));
  }

  v125 = *(v45 + 664);
  if (v125 && CFDictionaryGetCount(v125))
  {
    v126 = *(v45 + 656);
    if (v126 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v128 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_281;
      }

      v129 = v23;
      if (*(v45 + 655) < 0)
      {
        v129 = *v23;
      }

      *v584 = 136315394;
      *&v584[4] = v129;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      v130 = "[%s|%p] setting .austrip on DSPGraph";
      v131 = v128;
      v132 = 22;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v133 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_281;
      }

      *v584 = 134217984;
      *&v584[4] = v45;
      v130 = "[%p] setting .austrip on DSPGraph";
      v131 = v133;
      v132 = 12;
    }

    _os_log_impl(&dword_1DDB85000, v131, OS_LOG_TYPE_DEFAULT, v130, v584, v132);
LABEL_281:
    DSPGraph::Graph::setAUStrip(*(v45 + 688), *(v45 + 664));
  }

  if ((*(v45 + 850) & 1) == 0)
  {
    DSPGraph::Graph::getFormatNames(cf, *v560);
    v135 = cf[0];
    v134 = cf[1];
    if (cf[0] != cf[1])
    {
      v136 = __val;
      if (v549)
      {
        v136 = 1;
      }

      v548 = v136;
      v553 = cf[1];
      do
      {
        v582.__r_.__value_.__r.__words[0] = 0;
        DSPGraph::Graph::getFormat();
        if (v582.__r_.__value_.__r.__words[0])
        {
          std::string::basic_string[abi:ne200100]<0>(v584, "input");
          v137 = v584[23];
          v138 = *v584;
          if (v584[23] >= 0)
          {
            v139 = v584[23];
          }

          else
          {
            v139 = *&v584[8];
          }

          v140 = *(v135 + 23);
          if ((v140 & 0x8000000000000000) != 0)
          {
            if (v139 == -1)
            {
LABEL_1040:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v142 = *v135;
            if (v135[1] >= v139)
            {
              v141 = v139;
            }

            else
            {
              v141 = v135[1];
            }
          }

          else
          {
            if (v139 == -1)
            {
              goto LABEL_1040;
            }

            if (v140 >= v139)
            {
              v141 = v139;
            }

            else
            {
              v141 = *(v135 + 23);
            }

            v142 = v135;
          }

          if (v584[23] >= 0)
          {
            v151 = v584;
          }

          else
          {
            v151 = *v584;
          }

          v153 = !memcmp(v142, v151, v141) && v141 == v139;
          if (v137 < 0)
          {
            operator delete(v138);
            if (v153)
            {
LABEL_320:
              v154 = *(v135 + 23);
              if (v154 < 0)
              {
                v155 = *v135;
                v156 = v135[1];
              }

              else
              {
                v155 = v135;
                v156 = *(v135 + 23);
              }

              v165 = *(Element + 80);
              v166 = *(Element + 92);
              v167 = *(Element + 108);
              v168 = v582.__r_.__value_.__r.__words[0];
              v169 = *v582.__r_.__value_.__l.__data_;
              v170 = *(v582.__r_.__value_.__r.__words[0] + 12);
              v171 = *(v582.__r_.__value_.__r.__words[0] + 24);
              v172 = *(v582.__r_.__value_.__r.__words[0] + 28);
              v550 = *(v582.__r_.__value_.__r.__words[0] + 32);
              if (v156 >= 17)
              {
                v555 = *(v582.__r_.__value_.__r.__words[0] + 16);
                v557 = *(v582.__r_.__value_.__r.__words[0] + 20);
                v173 = &v155[v156];
                v174 = v155;
                do
                {
                  v175 = memchr(v174, 70, v156 - 16);
                  if (!v175)
                  {
                    break;
                  }

                  if (*v175 == 0x6168436465786946 && *(v175 + 1) == 0x6E756F436C656E6ELL && v175[16] == 116)
                  {
                    if (v175 == v173 || v175 - v155 == -1)
                    {
                      break;
                    }

                    v134 = v553;
                    if ((v154 & 0x80000000) == 0)
                    {
                      goto LABEL_391;
                    }

                    goto LABEL_381;
                  }

                  v174 = v175 + 1;
                  v156 = v173 - v174;
                }

                while (v173 - v174 >= 17);
              }

              if ((v170 & 0x20) != 0)
              {
                v172 = 1;
              }

              else if (!v172)
              {
                v193 = (v550 + 7) >> 3;
LABEL_387:
                v134 = v553;
                if ((v166 & 0x20) != 0)
                {
                  v194 = 1;
                }

                else
                {
                  v194 = v167;
                }

                v171 = v193 * v194;
                v170 = v170 & 0xFFFFFFDF | v166 & 0x20;
                v557 = 1;
                v555 = v193 * v194;
                v172 = v167;
                if ((v154 & 0x80000000) != 0)
                {
LABEL_381:
                  v192 = *v135;
                  v154 = v135[1];
                }

                else
                {
LABEL_391:
                  v192 = v135;
                }

                if (v154 >= 15)
                {
                  v195 = &v192[v154];
                  v196 = v192;
                  do
                  {
                    v197 = memchr(v196, 70, v154 - 14);
                    if (!v197)
                    {
                      break;
                    }

                    if (*v197 == 0x6D61536465786946 && *(v197 + 7) == 0x65746152656C706DLL)
                    {
                      if (v197 != v195 && v197 - v192 != -1)
                      {
                        goto LABEL_404;
                      }

                      break;
                    }

                    v196 = v197 + 1;
                    v154 = v195 - v196;
                  }

                  while (v195 - v196 >= 15);
                }

                v169 = v165;
LABEL_404:
                *v168 = v169;
                *(v168 + 12) = v170;
                *(v168 + 16) = v555;
                *(v168 + 20) = v557;
                *(v168 + 24) = v171;
                *(v168 + 28) = v172;
                v23 = v561;
                v45 = v562;
                goto LABEL_448;
              }

              v193 = v171 / v172;
              goto LABEL_387;
            }
          }

          else if (v153)
          {
            goto LABEL_320;
          }

          std::string::basic_string[abi:ne200100]<0>(v584, "output");
          v157 = v584[23];
          v158 = *v584;
          if (v584[23] >= 0)
          {
            v159 = v584[23];
          }

          else
          {
            v159 = *&v584[8];
          }

          v160 = *(v135 + 23);
          if ((v160 & 0x8000000000000000) != 0)
          {
            if (v159 == -1)
            {
LABEL_1044:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v162 = *v135;
            if (v135[1] >= v159)
            {
              v161 = v159;
            }

            else
            {
              v161 = v135[1];
            }
          }

          else
          {
            if (v159 == -1)
            {
              goto LABEL_1044;
            }

            if (v160 >= v159)
            {
              v161 = v159;
            }

            else
            {
              v161 = *(v135 + 23);
            }

            v162 = v135;
          }

          if (v584[23] >= 0)
          {
            v178 = v584;
          }

          else
          {
            v178 = *v584;
          }

          v180 = !memcmp(v162, v178, v161) && v161 == v159;
          if (v157 < 0)
          {
            operator delete(v158);
          }

          v23 = v561;
          if (!v180)
          {
            goto LABEL_448;
          }

          if (v556)
          {
            v181 = *(v135 + 23);
            if (v181 < 0)
            {
              v182 = *v135;
              v183 = v135[1];
            }

            else
            {
              v182 = v135;
              v183 = *(v135 + 23);
            }

            v199 = v582.__r_.__value_.__r.__words[0];
            v200 = *v582.__r_.__value_.__l.__data_;
            v201 = *(v582.__r_.__value_.__r.__words[0] + 12);
            v202 = *(v582.__r_.__value_.__r.__words[0] + 24);
            v203 = *(v582.__r_.__value_.__r.__words[0] + 28);
            v558 = *(v582.__r_.__value_.__r.__words[0] + 32);
            if (v183 >= 17)
            {
              v204 = *(v582.__r_.__value_.__r.__words[0] + 16);
              v205 = *(v582.__r_.__value_.__r.__words[0] + 20);
              v206 = &v182[v183];
              v207 = v182;
              do
              {
                v208 = memchr(v207, 70, v183 - 16);
                if (!v208)
                {
                  break;
                }

                if (*v208 == 0x6168436465786946 && *(v208 + 1) == 0x6E756F436C656E6ELL && v208[16] == 116)
                {
                  if (v208 != v206 && v208 - v182 != -1)
                  {
                    goto LABEL_432;
                  }

                  break;
                }

                v207 = v208 + 1;
                v183 = v206 - v207;
              }

              while (v206 - v207 >= 17);
            }

            if ((v201 & 0x20) != 0)
            {
              v203 = 1;
            }

            else if (!v203)
            {
              v213 = (v558 + 7) >> 3;
              goto LABEL_431;
            }

            v213 = v202 / v203;
LABEL_431:
            v202 = v213 * v548;
            v201 = v201 & 0xFFFFFFDF | v549;
            v205 = 1;
            v204 = v213 * v548;
            v203 = __val;
LABEL_432:
            if ((v181 & 0x80000000) != 0)
            {
              v214 = *v135;
              v181 = v135[1];
            }

            else
            {
              v214 = v135;
            }

            if (v181 >= 15)
            {
              v215 = &v214[v181];
              v216 = v214;
              do
              {
                v217 = memchr(v216, 70, v181 - 14);
                if (!v217)
                {
                  break;
                }

                if (*v217 == 0x6D61536465786946 && *(v217 + 7) == 0x65746152656C706DLL)
                {
                  if (v217 != v215 && v217 - v214 != -1)
                  {
                    goto LABEL_447;
                  }

                  break;
                }

                v216 = v217 + 1;
                v181 = v215 - v216;
              }

              while (v215 - v216 >= 15);
            }

            v200 = v13;
LABEL_447:
            *v199 = v200;
            *(v199 + 12) = v201;
            *(v199 + 16) = v204;
            *(v199 + 20) = v205;
            *(v199 + 24) = v202;
            *(v199 + 28) = v203;
            v23 = v561;
            v45 = v562;
            v134 = v553;
            goto LABEL_448;
          }

          v184 = *(v45 + 656);
          if (v184 == 1)
          {
            {
              AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
            }

            v186 = AU::DSPGraph::GetLog(void)::sLog;
            if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_448;
            }

            v187 = v561;
            if (*(v45 + 655) < 0)
            {
              v187 = *v561;
            }

            v188 = v135;
            if (*(v135 + 23) < 0)
            {
              v188 = *v135;
            }

            *v584 = 136315650;
            *&v584[4] = v187;
            *&v584[12] = 2048;
            *&v584[14] = v45;
            *&v584[22] = 2080;
            *&v584[24] = v188;
            v189 = v186;
            v190 = "[%s|%p] failed to update output format %s";
            v191 = 32;
          }

          else
          {
            {
              AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
            }

            v211 = AU::DSPGraph::GetLog(void)::sLog;
            if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_448;
            }

            v212 = v135;
            if (*(v135 + 23) < 0)
            {
              v212 = *v135;
            }

            *v584 = 134218242;
            *&v584[4] = v45;
            *&v584[12] = 2080;
            *&v584[14] = v212;
            v189 = v211;
            v190 = "[%p] failed to update output format %s";
            v191 = 22;
          }

          _os_log_impl(&dword_1DDB85000, v189, OS_LOG_TYPE_DEFAULT, v190, v584, v191);
        }

        else
        {
          v143 = *(v45 + 656);
          if (v143 == 1)
          {
            {
              AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
            }

            v145 = AU::DSPGraph::GetLog(void)::sLog;
            if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_448;
            }

            v146 = v23;
            if (*(v45 + 655) < 0)
            {
              v146 = *v23;
            }

            v147 = v135;
            if (*(v135 + 23) < 0)
            {
              v147 = *v135;
            }

            *v584 = 136315650;
            *&v584[4] = v146;
            *&v584[12] = 2048;
            *&v584[14] = v45;
            *&v584[22] = 2080;
            *&v584[24] = v147;
            v148 = v145;
            v149 = "[%s|%p] Failed to get format and block size for named format '%s'";
            v150 = 32;
          }

          else
          {
            {
              AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
            }

            v163 = AU::DSPGraph::GetLog(void)::sLog;
            if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_448;
            }

            v164 = v135;
            if (*(v135 + 23) < 0)
            {
              v164 = *v135;
            }

            *v584 = 134218242;
            *&v584[4] = v45;
            *&v584[12] = 2080;
            *&v584[14] = v164;
            v148 = v163;
            v149 = "[%p] Failed to get format and block size for named format '%s'";
            v150 = 22;
          }

          _os_log_error_impl(&dword_1DDB85000, v148, OS_LOG_TYPE_ERROR, v149, v584, v150);
        }

LABEL_448:
        v135 += 3;
      }

      while (v135 != v134);
    }

    *v584 = cf;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v584);
  }

  v219 = *(v45 + 376);
  v220 = *(v45 + 656);
  if (v219 != 1)
  {
    if (v220)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v228 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_481;
      }

      v229 = v23;
      if (*(v45 + 655) < 0)
      {
        v229 = *v23;
      }

      v230 = *(v45 + 336);
      *v584 = 136315650;
      *&v584[4] = v229;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      *&v584[22] = 1024;
      *&v584[24] = v230;
      v231 = "[%s|%p] setting variable slice duration with block size: %d";
      v232 = v228;
      v233 = 28;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v236 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_481;
      }

      v237 = *(v45 + 336);
      *v584 = 134218240;
      *&v584[4] = v45;
      *&v584[12] = 1024;
      *&v584[14] = v237;
      v231 = "[%p] setting variable slice duration with block size: %d";
      v232 = v236;
      v233 = 18;
    }

    _os_log_impl(&dword_1DDB85000, v232, OS_LOG_TYPE_DEFAULT, v231, v584, v233);
    goto LABEL_481;
  }

  if (v220)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v222 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v223 = v23;
      if (*(v45 + 655) < 0)
      {
        v223 = *v23;
      }

      v224 = *(v45 + 336);
      *v584 = 136315650;
      *&v584[4] = v223;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      *&v584[22] = 1024;
      *&v584[24] = v224;
      v225 = "[%s|%p] setting fixed slice duration with block size: %d";
      v226 = v222;
      v227 = 28;
      goto LABEL_475;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v234 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v235 = *(v45 + 336);
      *v584 = 134218240;
      *&v584[4] = v45;
      *&v584[12] = 1024;
      *&v584[14] = v235;
      v225 = "[%p] setting fixed slice duration with block size: %d";
      v226 = v234;
      v227 = 18;
LABEL_475:
      _os_log_impl(&dword_1DDB85000, v226, OS_LOG_TYPE_DEFAULT, v225, v584, v227);
    }
  }

LABEL_481:
  DSPGraph::Graph::setSliceDuration();
  v238 = *(v45 + 656);
  if (v238 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v240 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v241 = v23;
      if (*(v45 + 655) < 0)
      {
        v241 = *v23;
      }

      *v584 = 136315394;
      *&v584[4] = v241;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      v242 = "[%s|%p] configuring DSPGraph";
      v243 = v240;
      v244 = 22;
      goto LABEL_490;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v245 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *v584 = 134217984;
      *&v584[4] = v45;
      v242 = "[%p] configuring DSPGraph";
      v243 = v245;
      v244 = 12;
LABEL_490:
      _os_log_impl(&dword_1DDB85000, v243, OS_LOG_TYPE_DEFAULT, v242, v584, v244);
    }
  }

  DSPGraph::Graph::configure(*v560);
  v247 = *(v45 + 776);
  if (v247)
  {
    Count = CFArrayGetCount(*(v45 + 776));
    v249 = Count;
    v250 = *(v45 + 776);
    if (v250)
    {
      v251 = CFArrayGetCount(*(v45 + 776));
      if (!v249)
      {
LABEL_519:
        v263 = *(v45 + 776);
        *(v45 + 776) = 0;
        if (v263)
        {
          CFRelease(v263);
        }

        goto LABEL_521;
      }
    }

    else
    {
      v251 = 0;
      if (!Count)
      {
        goto LABEL_519;
      }
    }

    v252 = 0;
    v246.n128_u32[1] = 0;
    while (1)
    {
      if (v247 == v250 && v251 == v252)
      {
        goto LABEL_519;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(cf, v247, v252);
      if (!cf[0])
      {
        v542 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v542, "Could not construct");
      }

      v253 = applesauce::CF::details::find_at_key<unsigned int,char const(&)[3]>(cf[0]);
      v582.__r_.__value_.__l.__data_ = cf[0];
      v254 = *(v45 + 656);
      if (v254 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v256 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          v257 = v23;
          if (*(v562 + 655) < 0)
          {
            v257 = *v23;
          }

          *v584 = 136315650;
          *&v584[4] = v257;
          *&v584[12] = 2048;
          *&v584[14] = v562;
          *&v584[22] = 1024;
          *&v584[24] = v253;
          v258 = v256;
          v259 = "[%s|%p] setting graph property %d";
          v260 = 28;
          goto LABEL_509;
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v261 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
        {
          *v584 = 134218240;
          *&v584[4] = v562;
          *&v584[12] = 1024;
          *&v584[14] = v253;
          v258 = v261;
          v259 = "[%p] setting graph property %d";
          v260 = 18;
LABEL_509:
          _os_log_impl(&dword_1DDB85000, v258, OS_LOG_TYPE_DEFAULT, v259, v584, v260);
        }
      }

      v262 = (*(*v562 + 96))(v562, 1735553138, 0, 0, &v582, 8);
      if (v262)
      {
        v316 = *(v562 + 656);
        if (v316 == 1)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v318 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            if (*(v562 + 655) < 0)
            {
              v23 = *v23;
            }

            *v584 = 136315906;
            *&v584[4] = v23;
            *&v584[12] = 2048;
            *&v584[14] = v562;
            *&v584[22] = 1024;
            *&v584[24] = v253;
            *&v584[28] = 1024;
            *&v584[30] = v262;
            v319 = "[%s|%p] failed to set graph property %d. Error code: %d";
            v320 = v318;
            v321 = 34;
LABEL_1027:
            _os_log_error_impl(&dword_1DDB85000, v320, OS_LOG_TYPE_ERROR, v319, v584, v321);
          }
        }

        else
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v324 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
          {
            *v584 = 134218496;
            *&v584[4] = v562;
            *&v584[12] = 1024;
            *&v584[14] = v253;
            *&v584[18] = 1024;
            *&v584[20] = v262;
            v319 = "[%p] failed to set graph property %d. Error code: %d";
            v320 = v324;
            v321 = 24;
            goto LABEL_1027;
          }
        }

        v323 = cf[0];
        if (!cf[0])
        {
          goto LABEL_658;
        }

        goto LABEL_657;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      ++v252;
      v45 = v562;
      if (v249 == v252)
      {
        goto LABEL_519;
      }
    }
  }

LABEL_521:
  v264 = *(v45 + 784);
  if (!v264)
  {
    goto LABEL_585;
  }

  v265 = CFArrayGetCount(*(v45 + 784));
  v266 = v265;
  v267 = *(v45 + 784);
  if (v267)
  {
    v268 = CFArrayGetCount(*(v45 + 784));
    if (!v266)
    {
      goto LABEL_583;
    }
  }

  else
  {
    v268 = 0;
    if (!v265)
    {
      goto LABEL_583;
    }
  }

  v269 = 0;
  v246.n128_u32[1] = 0;
  do
  {
    if (v264 == v267 && v269 == v268)
    {
      break;
    }

    applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v581, v264, v269);
    if (!v581.__r_.__value_.__r.__words[0])
    {
      v547 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v547, "Could not construct");
    }

    applesauce::CF::details::find_at_key<applesauce::CF::StringRef,char const(&)[7]>(&v580, v581.__r_.__value_.__l.__data_);
    if (!v580.__r_.__value_.__r.__words[0])
    {
      v544 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v544, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(cf, v580.__r_.__value_.__l.__data_);
    if (!v581.__r_.__value_.__r.__words[0])
    {
      v546 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v546, "Could not construct");
    }

    v270 = applesauce::CF::details::find_at_key<unsigned int,char const(&)[3]>(v581.__r_.__value_.__l.__data_);
    if (!v581.__r_.__value_.__r.__words[0])
    {
      v543 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v543, "Could not construct");
    }

    v271 = v270;
    applesauce::CF::details::find_at_key<applesauce::CF::DataRef,char const(&)[5]>(v578, v581.__r_.__value_.__l.__data_);
    if (!v578[0])
    {
      v545 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v545, "Could not construct");
    }

    applesauce::CF::convert_to<std::vector<unsigned char>,0>(&v582, v578[0]);
    v272 = *(*v560 + 3);
    if (!v272)
    {
LABEL_589:
      v296 = *(v562 + 656);
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v297 = AU::DSPGraph::GetLog(void)::sLog;
      v298 = os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR);
      if (v296)
      {
        if (!v298)
        {
          goto LABEL_644;
        }

        if (*(v562 + 655) < 0)
        {
          v299 = *v561;
        }

        else
        {
          v299 = v561;
        }

        v539 = cf;
        if (v566[7] < 0)
        {
          v539 = cf[0];
        }

        *v584 = 136315650;
        *&v584[4] = v299;
        *&v584[12] = 2048;
        *&v584[14] = v562;
        *&v584[22] = 2080;
        *&v584[24] = v539;
        v536 = "[%s|%p] failed to find %s box inside DSPGraph";
        v537 = v297;
        v538 = 32;
      }

      else
      {
        if (!v298)
        {
          goto LABEL_644;
        }

        v535 = cf;
        if (v566[7] < 0)
        {
          v535 = cf[0];
        }

        *v584 = 134218242;
        *&v584[4] = v562;
        *&v584[12] = 2080;
        *&v584[14] = v535;
        v536 = "[%p] failed to find %s box inside DSPGraph";
        v537 = v297;
        v538 = 22;
      }

      _os_log_error_impl(&dword_1DDB85000, v537, OS_LOG_TYPE_ERROR, v536, v584, v538);
LABEL_644:
      if (v582.__r_.__value_.__r.__words[0])
      {
        operator delete(v582.__r_.__value_.__l.__data_);
      }

      if (v578[0])
      {
        CFRelease(v578[0]);
      }

      if ((v566[7] & 0x80000000) != 0)
      {
        operator delete(cf[0]);
      }

      if (v580.__r_.__value_.__r.__words[0])
      {
        CFRelease(v580.__r_.__value_.__l.__data_);
      }

      v323 = v581.__r_.__value_.__r.__words[0];
      if (!v581.__r_.__value_.__r.__words[0])
      {
        goto LABEL_658;
      }

      goto LABEL_657;
    }

    v273 = 0;
    do
    {
      while ((*(*v272[2] + 216))(v272[2]))
      {
        v274 = v272[2];
        v275 = (v274 + 32);
        if (*(v274 + 55) < 0)
        {
          v275 = *v275;
        }

        v276 = strlen(v275);
        v277 = v566[7];
        if (v566[7] < 0)
        {
          v277 = cf[1];
        }

        if (v276 != v277)
        {
          break;
        }

        v278 = v566[7] >= 0 ? cf : cf[0];
        if (memcmp(v275, v278, v276))
        {
          break;
        }

        v279 = *(v562 + 656);
        if (v279 == 1)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v281 = AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_564;
          }

          v282 = v561;
          if (*(v562 + 655) < 0)
          {
            v282 = *v561;
          }

          if (v566[7] >= 0)
          {
            v283 = cf;
          }

          else
          {
            v283 = cf[0];
          }

          *v584 = 136315906;
          *&v584[4] = v282;
          *&v584[12] = 2048;
          *&v584[14] = v562;
          *&v584[22] = 1024;
          *&v584[24] = v271;
          *&v584[28] = 2080;
          *&v584[30] = v283;
          v284 = v281;
          v285 = "[%s|%p] setting box property %d on %s";
          v286 = 38;
        }

        else
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v287 = AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_564;
          }

          if (v566[7] >= 0)
          {
            v288 = cf;
          }

          else
          {
            v288 = cf[0];
          }

          *v584 = 134218498;
          *&v584[4] = v562;
          *&v584[12] = 1024;
          *&v584[14] = v271;
          *&v584[18] = 2080;
          *&v584[20] = v288;
          v284 = v287;
          v285 = "[%p] setting box property %d on %s";
          v286 = 28;
        }

        _os_log_impl(&dword_1DDB85000, v284, OS_LOG_TYPE_DEFAULT, v285, v584, v286);
LABEL_564:
        v289 = v582.__r_.__value_.__r.__words[0];
        (*(*v272[2] + 312))(v272[2], v271, 0, 0, (LODWORD(v582.__r_.__value_.__r.__words[1]) - LODWORD(v582.__r_.__value_.__l.__data_)), v582.__r_.__value_.__r.__words[0]);
        v272 = *v272;
        v273 = 1;
        if (!v272)
        {
          goto LABEL_572;
        }
      }

      v272 = *v272;
    }

    while (v272);
    if ((v273 & 1) == 0)
    {
      goto LABEL_589;
    }

    v289 = v582.__r_.__value_.__r.__words[0];
LABEL_572:
    if (v289)
    {
      operator delete(v289);
    }

    if (v578[0])
    {
      CFRelease(v578[0]);
    }

    v45 = v562;
    if ((v566[7] & 0x80000000) != 0)
    {
      operator delete(cf[0]);
    }

    if (v580.__r_.__value_.__r.__words[0])
    {
      CFRelease(v580.__r_.__value_.__l.__data_);
    }

    if (v581.__r_.__value_.__r.__words[0])
    {
      CFRelease(v581.__r_.__value_.__l.__data_);
    }

    ++v269;
  }

  while (v269 != v266);
LABEL_583:
  v290 = *(v45 + 784);
  *(v45 + 784) = 0;
  if (v290)
  {
    CFRelease(v290);
  }

LABEL_585:
  v291 = *(v45 + 792);
  if (v291)
  {
    v292 = CFArrayGetCount(*(v45 + 792));
    v293 = v292;
    v294 = *(v45 + 792);
    if (v294)
    {
      v295 = CFArrayGetCount(*(v45 + 792));
      if (!v293)
      {
        goto LABEL_602;
      }

LABEL_595:
      v300 = 0;
      while (1)
      {
        if (v291 == v294 && v295 == v300)
        {
          goto LABEL_602;
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v584, v291, v300);
        if (AUDSPGraph_v1::SetBoxPreset(v45, *v584))
        {
          break;
        }

        if (*v584)
        {
          CFRelease(*v584);
        }

        if (v293 == ++v300)
        {
          goto LABEL_602;
        }
      }

      v322 = *(v45 + 792);
      *(v45 + 792) = 0;
      if (v322)
      {
        CFRelease(v322);
      }

      v323 = *v584;
      if (!*v584)
      {
        goto LABEL_658;
      }

LABEL_657:
      CFRelease(v323);
      goto LABEL_658;
    }

    v295 = 0;
    if (v292)
    {
      goto LABEL_595;
    }

LABEL_602:
    v301 = *(v45 + 792);
    *(v45 + 792) = 0;
    if (v301)
    {
      CFRelease(v301);
    }
  }

  v302 = *(v45 + 752);
  v303 = *(v45 + 760);
  while (v302 != v303)
  {
    v246.n128_u32[0] = v302[1];
    AUDSPGraph_v1::SetGraphParameter(v45, *v302, v246);
    v302 += 2;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v304 = *(v45 + 760);
    v305 = *(v45 + 752);
    if (v304 != v305)
    {
      std::vector<std::pair<unsigned int,float>>::__assign_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(v45 + 976, v305, v304, (v304 - v305) >> 3);
    }
  }

  *(v45 + 760) = *(v45 + 752);
  v306 = applesauce::gestalt::query_as<BOOL,0>();
  if (v306 >= 0x100u && (v306 & 1) != 0 && CFPreferencesGetAppBooleanValue(@"enable_audspg_dsp_captures", @"com.apple.coreaudio", 0))
  {
    memset(v584, 0, 24);
    std::string::append[abi:ne200100]<char const*,0>(v584, "/tmp/AudioCapture/AUDSPGraph", "");
    v307 = *v560 + 408;
    if (*(*v560 + 431) < 0)
    {
      v307 = *v307;
    }

    std::string::basic_string[abi:ne200100]<0>(&v593, v307);
    v582 = v593;
    memset(&v593, 0, sizeof(v593));
    std::__fs::filesystem::operator/[abi:ne200100](cf, v584, &v582);
    if (SHIBYTE(v582.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v582.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v593.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v593.__r_.__value_.__l.__data_);
    }

    if ((v584[23] & 0x80000000) != 0)
    {
      operator delete(*v584);
    }

    std::__fs::filesystem::__status(cf, 0);
    if ((v584[0] == 255 || !v584[0]) && std::__fs::filesystem::__create_directories(cf, 0))
    {
      v308 = *(v45 + 656);
      if (v308 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v310 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          v311 = v561;
          if (*(v45 + 655) < 0)
          {
            v311 = *v561;
          }

          v312 = cf;
          if (v566[7] < 0)
          {
            v312 = cf[0];
          }

          *v584 = 136315650;
          *&v584[4] = v311;
          *&v584[12] = 2048;
          *&v584[14] = v45;
          *&v584[22] = 2080;
          *&v584[24] = v312;
          v313 = "[%s|%p] Captures folder created : %s";
          v314 = v310;
          v315 = 32;
          goto LABEL_1036;
        }
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v327 = AU::DSPGraph::GetLog(void)::sLog;
        if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          v540 = cf;
          if (v566[7] < 0)
          {
            v540 = cf[0];
          }

          *v584 = 134218242;
          *&v584[4] = v45;
          *&v584[12] = 2080;
          *&v584[14] = v540;
          v313 = "[%p] Captures folder created : %s";
          v314 = v327;
          v315 = 22;
LABEL_1036:
          _os_log_debug_impl(&dword_1DDB85000, v314, OS_LOG_TYPE_DEBUG, v313, v584, v315);
        }
      }
    }

    for (i = *(*v560 + 3); i; i = *i)
    {
      v329 = i[2];
      if (((v329[9] - v329[8]) & 0x1FFFFFFFE0) != 0 || ((v329[12] - v329[11]) & 0x1FFFFFFFE0) != 0)
      {
        if (*(v562 + 559) >= 0)
        {
          v330 = *(v562 + 559);
        }

        else
        {
          v330 = *(v562 + 68);
        }

        std::string::basic_string[abi:ne200100](&v580, v330 + 1);
        if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v331 = &v580;
        }

        else
        {
          v331 = v580.__r_.__value_.__r.__words[0];
        }

        if (v330)
        {
          if (*(v562 + 559) >= 0)
          {
            v332 = v562 + 536;
          }

          else
          {
            v332 = *(v562 + 67);
          }

          memmove(v331, v332, v330);
        }

        *(&v331->__r_.__value_.__l.__data_ + v330) = 95;
        v333 = i[2];
        v334 = (v333 + 32);
        if (*(v333 + 55) < 0)
        {
          v334 = *v334;
        }

        std::string::basic_string[abi:ne200100]<0>(v578, v334);
        if ((v579 & 0x80u) == 0)
        {
          v335 = v578;
        }

        else
        {
          v335 = v578[0];
        }

        if ((v579 & 0x80u) == 0)
        {
          v336 = v579;
        }

        else
        {
          v336 = v578[1];
        }

        v337 = std::string::append(&v580, v335, v336);
        v338 = *&v337->__r_.__value_.__l.__data_;
        v581.__r_.__value_.__r.__words[2] = v337->__r_.__value_.__r.__words[2];
        *&v581.__r_.__value_.__l.__data_ = v338;
        v337->__r_.__value_.__l.__size_ = 0;
        v337->__r_.__value_.__r.__words[2] = 0;
        v337->__r_.__value_.__r.__words[0] = 0;
        v339 = std::string::append(&v581, "_", 1uLL);
        v340 = *&v339->__r_.__value_.__l.__data_;
        v593.__r_.__value_.__r.__words[2] = v339->__r_.__value_.__r.__words[2];
        *&v593.__r_.__value_.__l.__data_ = v340;
        v339->__r_.__value_.__l.__size_ = 0;
        v339->__r_.__value_.__r.__words[2] = 0;
        v339->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v577, *(v562 + 132));
        if ((v577.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v341 = &v577;
        }

        else
        {
          v341 = v577.__r_.__value_.__r.__words[0];
        }

        if ((v577.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v577.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v577.__r_.__value_.__l.__size_;
        }

        v343 = std::string::append(&v593, v341, size);
        v344 = *&v343->__r_.__value_.__l.__data_;
        v582.__r_.__value_.__r.__words[2] = v343->__r_.__value_.__r.__words[2];
        *&v582.__r_.__value_.__l.__data_ = v344;
        v343->__r_.__value_.__l.__size_ = 0;
        v343->__r_.__value_.__r.__words[2] = 0;
        v343->__r_.__value_.__r.__words[0] = 0;
        v345 = std::string::append(&v582, ".caf", 4uLL);
        v346 = *&v345->__r_.__value_.__l.__data_;
        *&v584[16] = *(&v345->__r_.__value_.__l + 2);
        *v584 = v346;
        v345->__r_.__value_.__l.__size_ = 0;
        v345->__r_.__value_.__r.__words[2] = 0;
        v345->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v582.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v582.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v577.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v577.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v593.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v593.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v581.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v581.__r_.__value_.__l.__data_);
        }

        if (v579 < 0)
        {
          operator delete(v578[0]);
        }

        if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v580.__r_.__value_.__l.__data_);
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v593, v584);
        std::__fs::filesystem::operator/[abi:ne200100](&v582, cf, &v593);
        if (SHIBYTE(v593.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v593.__r_.__value_.__l.__data_);
        }

        if ((v582.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v347 = &v582;
        }

        else
        {
          v347 = v582.__r_.__value_.__r.__words[0];
        }

        (*(*i[2] + 152))(i[2], v347, 0, 1, 0, 4096);
        if (SHIBYTE(v582.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v582.__r_.__value_.__l.__data_);
        }

        if ((v584[23] & 0x80000000) != 0)
        {
          operator delete(*v584);
        }
      }
    }

    v45 = v562;
    ++*(v562 + 132);
    if ((v566[7] & 0x80000000) != 0)
    {
      operator delete(cf[0]);
    }
  }

  v348 = *(v45 + 656);
  if (v348 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v350 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      v351 = v561;
      if (*(v45 + 655) < 0)
      {
        v351 = *v561;
      }

      *v584 = 136315394;
      *&v584[4] = v351;
      *&v584[12] = 2048;
      *&v584[14] = v45;
      v352 = "[%s|%p] initializing DSPGraph";
      v353 = v350;
      v354 = 22;
LABEL_723:
      _os_log_impl(&dword_1DDB85000, v353, OS_LOG_TYPE_DEFAULT, v352, v584, v354);
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v355 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *v584 = 134217984;
      *&v584[4] = v45;
      v352 = "[%p] initializing DSPGraph";
      v353 = v355;
      v354 = 12;
      goto LABEL_723;
    }
  }

  DSPGraph::Graph::initialize(*v560);
  DSPGraph::Graph::getParameterList(cf, *v560);
  memset(v584, 0, 24);
  v356 = *(v45 + 856);
  v357 = *(v45 + 864);
  if (v356 != v357)
  {
    v358 = 0;
    do
    {
      if (v358 >= *&v584[16])
      {
        v359 = *v584;
        v360 = v358 - *v584;
        v361 = (v358 - *v584) >> 2;
        v362 = v361 + 1;
        if ((v361 + 1) >> 62)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v363 = *&v584[16] - *v584;
        if ((*&v584[16] - *v584) >> 1 > v362)
        {
          v362 = v363 >> 1;
        }

        if (v363 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v364 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v364 = v362;
        }

        if (v364)
        {
          std::allocator<float>::allocate_at_least[abi:ne200100](v584, v364);
        }

        *(4 * v361) = *v356;
        v358 = (4 * v361 + 4);
        memcpy(0, v359, v360);
        v365 = *v584;
        *v584 = 0;
        *&v584[8] = v358;
        if (v365)
        {
          operator delete(v365);
        }
      }

      else
      {
        *v358++ = *v356;
      }

      *&v584[8] = v358;
      v356 += 12;
    }

    while (v356 != v357);
    v366 = *v584;
    if (*v584 != v358)
    {
      v367 = cf[1];
      do
      {
        if (v367 >= *v566)
        {
          v368 = cf[0];
          v369 = v367 - cf[0];
          v370 = (v367 - cf[0]) >> 2;
          v371 = v370 + 1;
          if ((v370 + 1) >> 62)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v372 = *v566 - cf[0];
          if ((*v566 - cf[0]) >> 1 > v371)
          {
            v371 = v372 >> 1;
          }

          if (v372 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v373 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v373 = v371;
          }

          if (v373)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](cf, v373);
          }

          v374 = v370;
          v375 = (4 * v370);
          v376 = &v375[-v374];
          *v375 = *v366;
          v367 = (v375 + 1);
          memcpy(v376, v368, v369);
          v377 = cf[0];
          cf[0] = v376;
          cf[1] = v367;
          *v566 = 0;
          if (v377)
          {
            operator delete(v377);
          }
        }

        else
        {
          *v367 = *v366;
          v367 += 4;
        }

        cf[1] = v367;
        ++v366;
      }

      while (v366 != v358);
      v366 = *v584;
    }

    if (v366)
    {
      *&v584[8] = v366;
      operator delete(v366);
    }
  }

  v379 = cf[0];
  v378 = cf[1];
  if (cf[0] != cf[1])
  {
    do
    {
      v380 = *v379;
      GraphParameter = AUDSPGraph_v1::GetGraphParameter(v45, *v379);
      ausdk::AUBase::SetParameter(v45, v380, 0, 0, GraphParameter);
      ++v379;
    }

    while (v379 != v378);
    v379 = cf[0];
  }

  if (v379)
  {
    cf[1] = v379;
    operator delete(v379);
  }

  *v584 = v564;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v584);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v572);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v575);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v587);
  MEMORY[0x1E12BC370](buf);
  if (DSPGraph::Graph::numInputs(*v560) == v551 && DSPGraph::Graph::numOutputs(*v560) == v556)
  {
    v554 = 1;
    goto LABEL_773;
  }

  v382 = *(v562 + 656);
  {
    AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

  v383 = AU::DSPGraph::GetLog(void)::sLog;
  v384 = os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR);
  if (v382)
  {
    if (v384)
    {
      v385 = v561;
      if (*(v562 + 655) < 0)
      {
        v385 = *v561;
      }

      v386 = DSPGraph::Graph::numInputs(*(v562 + 86));
      v387 = DSPGraph::Graph::numOutputs(*(v562 + 86));
      *buf = 136316418;
      *&buf[4] = v385;
      *&buf[12] = 2048;
      *&buf[14] = v562;
      *&buf[22] = 1024;
      *&buf[24] = v551;
      *&buf[28] = 1024;
      *&buf[30] = v556;
      *&buf[34] = 1024;
      *&buf[36] = v386;
      *&buf[40] = 1024;
      *&buf[42] = v387;
      v388 = "[%s|%p] AudioUnit (%d -> %d) and DSPGraph (%d -> %d) I/O bus counts don't match";
      v389 = v383;
      v390 = 46;
LABEL_1009:
      _os_log_error_impl(&dword_1DDB85000, v389, OS_LOG_TYPE_ERROR, v388, buf, v390);
    }
  }

  else if (v384)
  {
    v526 = DSPGraph::Graph::numInputs(*(v562 + 86));
    v527 = DSPGraph::Graph::numOutputs(*(v562 + 86));
    *buf = 134219008;
    *&buf[4] = v562;
    *&buf[12] = 1024;
    *&buf[14] = v551;
    *&buf[18] = 1024;
    *&buf[20] = v556;
    *&buf[24] = 1024;
    *&buf[26] = v526;
    *&buf[30] = 1024;
    *&buf[32] = v527;
    v388 = "[%p] AudioUnit (%d -> %d) and DSPGraph (%d -> %d) I/O bus counts don't match";
    v389 = v383;
    v390 = 36;
    goto LABEL_1009;
  }

  v554 = 0;
LABEL_773:
  v391 = DSPGraph::Graph::numInputs(*v560);
  if (v551 >= v391)
  {
    v392 = v391;
  }

  else
  {
    v392 = v551;
  }

  if (!v392)
  {
LABEL_859:
    v437 = DSPGraph::Graph::numOutputs(*v560);
    if (v556 >= v437)
    {
      v438 = v437;
    }

    else
    {
      v438 = v556;
    }

    if (v438)
    {
      v439 = 0;
      v45 = 2080;
      do
      {
        v440 = ausdk::AUScope::GetElement((v562 + 128), v439);
        if (!v440)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v441 = *(v440 + 96);
        *v584 = *(v440 + 80);
        *&v584[16] = v441;
        *&v584[32] = *(v440 + 112);
        v442 = DSPGraph::Graph::out(*v560);
        v443 = *(v442 + 64);
        if (*(v442 + 72) == v443)
        {
          std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          std::string::basic_string[abi:ne200100]<0>(cf, "in");
          v534 = (v442 + 32);
          if (*(v442 + 55) < 0)
          {
            v534 = *v534;
          }

          DSPGraph::strprintf(v587, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v533, v534, (*(v442 + 72) - *(v442 + 64)) >> 5, 0);
          DSPGraph::ThrowException();
          goto LABEL_1099;
        }

        v445 = *((*(*v443 + 40))(v443) + 120);
        *cf = *v445;
        *v566 = *(v445 + 16);
        *&v566[16] = *(v445 + 32);
        v446 = v561;
        if (*v584 == *cf && *&v584[8] == LODWORD(cf[1]) && *&v584[16] == *v566 && *&v584[28] == *&v566[12] && CA::Implementation::EquivalentFormatFlags(v584, cf, v444))
        {
          goto LABEL_927;
        }

        v447 = *(v562 + 656);
        if (v447 == 1)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v449 = AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_881;
          }

          v450 = v561;
          if (*(v562 + 655) < 0)
          {
            v450 = *v561;
          }

          *buf = 136315650;
          *&buf[4] = v450;
          *&buf[12] = 2048;
          *&buf[14] = v562;
          *&buf[22] = 1024;
          *&buf[24] = v439;
          v451 = v449;
          v452 = "[%s|%p] [WARNING] AudioUnit and DSPGraph formats for output bus %d don't match";
          v453 = 28;
        }

        else
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v454 = AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_881;
          }

          *buf = 134218240;
          *&buf[4] = v562;
          *&buf[12] = 1024;
          *&buf[14] = v439;
          v451 = v454;
          v452 = "[%p] [WARNING] AudioUnit and DSPGraph formats for output bus %d don't match";
          v453 = 18;
        }

        _os_log_impl(&dword_1DDB85000, v451, OS_LOG_TYPE_DEFAULT, v452, buf, v453);
LABEL_881:
        v455 = *(v562 + 656);
        if (v455 == 1)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v457 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v562 + 655) < 0)
            {
              v446 = *v561;
            }

            CA::StreamDescription::AsString(v587, v584, v458, v459);
            if ((SBYTE7(v588) & 0x80u) == 0)
            {
              v460 = v587;
            }

            else
            {
              v460 = *v587;
            }

            *buf = 136315906;
            *&buf[4] = v446;
            *&buf[12] = 2048;
            *&buf[14] = v562;
            *&buf[22] = 2080;
            *&buf[24] = v460;
            *&buf[32] = 2048;
            *&buf[34] = *&v584[12];
            _os_log_impl(&dword_1DDB85000, v457, OS_LOG_TYPE_DEFAULT, "[%s|%p] [WARNING] AudioUnit format: %s, format flags: 0x%lX", buf, 0x2Au);
            if (SBYTE7(v588) < 0)
            {
              operator delete(*v587);
            }

            v446 = v561;
          }
        }

        else
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v461 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            CA::StreamDescription::AsString(v587, v584, v462, v463);
            v464 = (SBYTE7(v588) & 0x80u) == 0 ? v587 : *v587;
            *buf = 134218498;
            *&buf[4] = v562;
            *&buf[12] = 2080;
            *&buf[14] = v464;
            *&buf[22] = 2048;
            *&buf[24] = *&v584[12];
            _os_log_impl(&dword_1DDB85000, v461, OS_LOG_TYPE_DEFAULT, "[%p] [WARNING] AudioUnit format: %s, format flags: 0x%lX", buf, 0x20u);
            if (SBYTE7(v588) < 0)
            {
              operator delete(*v587);
            }
          }
        }

        v465 = *(v562 + 656);
        if (v465 == 1)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v467 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v562 + 655) < 0)
            {
              v446 = *v561;
            }

            CA::StreamDescription::AsString(v587, cf, v468, v469);
            if ((SBYTE7(v588) & 0x80u) == 0)
            {
              v470 = v587;
            }

            else
            {
              v470 = *v587;
            }

            *buf = 136315906;
            *&buf[4] = v446;
            *&buf[12] = 2048;
            *&buf[14] = v562;
            *&buf[22] = 2080;
            *&buf[24] = v470;
            *&buf[32] = 2048;
            *&buf[34] = HIDWORD(cf[1]);
            _os_log_impl(&dword_1DDB85000, v467, OS_LOG_TYPE_DEFAULT, "[%s|%p] [WARNING]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x2Au);
            if (SBYTE7(v588) < 0)
            {
              operator delete(*v587);
            }

            v446 = v561;
          }
        }

        else
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v471 = AU::DSPGraph::GetLog(void)::sLog;
          if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            CA::StreamDescription::AsString(v587, cf, v472, v473);
            v474 = (SBYTE7(v588) & 0x80u) == 0 ? v587 : *v587;
            *buf = 134218498;
            *&buf[4] = v562;
            *&buf[12] = 2080;
            *&buf[14] = v474;
            *&buf[22] = 2048;
            *&buf[24] = HIDWORD(cf[1]);
            _os_log_impl(&dword_1DDB85000, v471, OS_LOG_TYPE_DEFAULT, "[%p] [WARNING]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x20u);
            if (SBYTE7(v588) < 0)
            {
              operator delete(*v587);
            }
          }
        }

        v475 = *(v562 + 656);
        if (v475 == 1)
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v477 = AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_927;
          }

          v478 = v446;
          if (*(v562 + 655) < 0)
          {
            v478 = *v446;
          }

          *buf = 136315650;
          *&buf[4] = v478;
          *&buf[12] = 2048;
          *&buf[14] = v562;
          *&buf[22] = 1024;
          *&buf[24] = v439;
          v479 = v477;
          v480 = "[%s|%p] [WARNING] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on output bus %d";
          v481 = 28;
        }

        else
        {
          {
            AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
          }

          v482 = AU::DSPGraph::GetLog(void)::sLog;
          if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_927;
          }

          *buf = 134218240;
          *&buf[4] = v562;
          *&buf[12] = 1024;
          *&buf[14] = v439;
          v479 = v482;
          v480 = "[%p] [WARNING] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on output bus %d";
          v481 = 18;
        }

        _os_log_impl(&dword_1DDB85000, v479, OS_LOG_TYPE_DEFAULT, v480, buf, v481);
LABEL_927:
        ++v439;
      }

      while (v438 != v439);
    }

    if (v554)
    {
      v483 = v562;
      if (*(v562 + 656) == 1)
      {
        v484 = v561;
        if (*(v562 + 655) < 0)
        {
          v484 = *v561;
        }

        std::string::__assign_external((*(v562 + 86) + 408), v484);
        v483 = v562;
      }

      v485 = *(v483 + 70);
      if (v485)
      {
        if (*(v483 + 852))
        {
          *(v483 + 70) = 0;
          (*(*v485 + 8))(v485);
        }
      }

      else if ((*(v483 + 852) & 1) == 0)
      {
        operator new();
      }

      v591 = 0u;
      v592 = 0u;
      memset(buf, 0, sizeof(buf));
      std::vector<DSPGraph::GraphIOData>::vector[abi:ne200100](v584, v551);
      v486 = *(v562 + 88);
      if (v486)
      {
        *(v562 + 89) = v486;
        operator delete(v486);
        *(v562 + 88) = 0;
        *(v562 + 89) = 0;
        *(v562 + 90) = 0;
      }

      *(v562 + 44) = *v584;
      *(v562 + 90) = *&v584[16];
      v591 = 0u;
      v592 = 0u;
      memset(buf, 0, sizeof(buf));
      std::vector<DSPGraph::GraphIOData>::vector[abi:ne200100](v584, v556);
      v487 = (v562 + 728);
      v488 = *(v562 + 91);
      if (v488)
      {
        *(v562 + 92) = v488;
        operator delete(v488);
        *v487 = 0;
        *(v562 + 92) = 0;
        *(v562 + 93) = 0;
      }

      *v487 = *v584;
      *(v562 + 93) = *&v584[16];
      std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize(v562 + 100, v551);
      std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize(v562 + 103, v556);
      v325 = 0;
    }

    else
    {
      v325 = 4294956428;
    }

    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_991;
    }

    v489 = *(v562 + 656);
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v490 = AU::DSPGraph::GetLog(void)::sLog;
    v491 = os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG);
    if (v489)
    {
      if (!v491)
      {
        goto LABEL_970;
      }

      v492 = v561;
      if (*(v562 + 655) < 0)
      {
        v492 = *v561;
      }

      DSPGraph::Graph::getLatencyInSeconds(*(v562 + 86));
      v493 = *(v562 + 86);
      v494 = *(v493 + 688);
      LODWORD(v493) = *(v493 + 692);
      *buf = 136316162;
      *&buf[4] = v492;
      *&buf[12] = 2048;
      *&buf[14] = v562;
      *&buf[22] = 2048;
      *&buf[24] = v495;
      *&buf[32] = 1024;
      *&buf[34] = v494;
      *&buf[38] = 1024;
      *&buf[40] = v493;
      v496 = "[%s|%p] total graph latency : %f, number of frames per slice = %u, sample rate %u";
      v497 = v490;
      v498 = 44;
    }

    else
    {
      if (!v491)
      {
        goto LABEL_970;
      }

      DSPGraph::Graph::getLatencyInSeconds(*(v562 + 86));
      v528 = *(v562 + 86);
      v529 = *(v528 + 688);
      LODWORD(v528) = *(v528 + 692);
      *buf = 134218752;
      *&buf[4] = v562;
      *&buf[12] = 2048;
      *&buf[14] = v530;
      *&buf[22] = 1024;
      *&buf[24] = v529;
      *&buf[28] = 1024;
      *&buf[30] = v528;
      v496 = "[%p] total graph latency : %f, number of frames per slice = %u, sample rate %u";
      v497 = v490;
      v498 = 34;
    }

    _os_log_debug_impl(&dword_1DDB85000, v497, OS_LOG_TYPE_DEBUG, v496, buf, v498);
LABEL_970:
    v499 = *(*v560 + 3);
    for (j = v561; v499; v499 = *v499)
    {
      v501 = *(v562 + 656);
      if (v501 == 1)
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v503 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          continue;
        }

        if (*(v562 + 655) < 0)
        {
          j = *v561;
        }

        v504 = v499[2];
        v505 = v504 + 32;
        if (v504[55] < 0)
        {
          v505 = *v505;
        }

        DSPGraph::Box::selfLatencyInSeconds(v504);
        *buf = 136315906;
        *&buf[4] = j;
        *&buf[12] = 2048;
        *&buf[14] = v562;
        *&buf[22] = 2080;
        *&buf[24] = v505;
        *&buf[32] = 2048;
        *&buf[34] = v506;
        v507 = v503;
        v508 = "[%s|%p] latency for box %s : %f";
        v509 = 42;
      }

      else
      {
        {
          AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
        }

        v510 = AU::DSPGraph::GetLog(void)::sLog;
        if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEBUG))
        {
          continue;
        }

        v511 = v499[2];
        v512 = v511 + 32;
        if (v511[55] < 0)
        {
          v512 = *v512;
        }

        DSPGraph::Box::selfLatencyInSeconds(v511);
        *buf = 134218498;
        *&buf[4] = v562;
        *&buf[12] = 2080;
        *&buf[14] = v512;
        *&buf[22] = 2048;
        *&buf[24] = v513;
        v507 = v510;
        v508 = "[%p] latency for box %s : %f";
        v509 = 32;
      }

      _os_log_debug_impl(&dword_1DDB85000, v507, OS_LOG_TYPE_DEBUG, v508, buf, v509);
      j = v561;
    }

LABEL_991:
    v514 = *(v562 + 656);
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v515 = AU::DSPGraph::GetLog(void)::sLog;
    if (!v554)
    {
      v518 = os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR);
      if (v514)
      {
        if (!v518)
        {
          return v325;
        }

        if (*(v562 + 655) < 0)
        {
          v519 = *v561;
        }

        else
        {
          v519 = v561;
        }

        *buf = 136315650;
        *&buf[4] = v519;
        *&buf[12] = 2048;
        *&buf[14] = v562;
        *&buf[22] = 1024;
        *&buf[24] = v325;
        v523 = "[%s|%p] failed to initialize with error %d";
        v524 = v515;
        v525 = 28;
      }

      else
      {
        if (!v518)
        {
          return v325;
        }

        *buf = 134218240;
        *&buf[4] = v562;
        *&buf[12] = 1024;
        *&buf[14] = v325;
        v523 = "[%p] failed to initialize with error %d";
        v524 = v515;
        v525 = 18;
      }

      _os_log_error_impl(&dword_1DDB85000, v524, OS_LOG_TYPE_ERROR, v523, buf, v525);
      return v325;
    }

    v516 = os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT);
    if (v514)
    {
      if (!v516)
      {
        return v325;
      }

      if (*(v562 + 655) < 0)
      {
        v517 = *v561;
      }

      else
      {
        v517 = v561;
      }

      *buf = 136315394;
      *&buf[4] = v517;
      *&buf[12] = 2048;
      *&buf[14] = v562;
      v520 = "[%s|%p] did initialize";
      v521 = v515;
      v522 = 22;
    }

    else
    {
      if (!v516)
      {
        return v325;
      }

      *buf = 134217984;
      *&buf[4] = v562;
      v520 = "[%p] did initialize";
      v521 = v515;
      v522 = 12;
    }

    _os_log_impl(&dword_1DDB85000, v521, OS_LOG_TYPE_DEFAULT, v520, buf, v522);
    return v325;
  }

  v393 = 0;
  v45 = 2080;
  while (1)
  {
    v394 = ausdk::AUScope::GetElement((v562 + 80), v393);
    if (!v394)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v395 = *(v394 + 96);
    *v584 = *(v394 + 80);
    *&v584[16] = v395;
    *&v584[32] = *(v394 + 112);
    v396 = DSPGraph::Graph::in(*v560);
    v397 = *(v396 + 88);
    if (*(v396 + 96) == v397)
    {
      break;
    }

    v399 = *((*(*v397 + 40))(v397) + 120);
    *cf = *v399;
    *v566 = *(v399 + 16);
    *&v566[16] = *(v399 + 32);
    v400 = v561;
    if (*v584 == *cf && *&v584[8] == LODWORD(cf[1]) && *&v584[16] == *v566 && *&v584[28] == *&v566[12] && CA::Implementation::EquivalentFormatFlags(v584, cf, v398))
    {
      goto LABEL_841;
    }

    v401 = *(v562 + 656);
    if (v401 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v403 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_795;
      }

      v404 = v561;
      if (*(v562 + 655) < 0)
      {
        v404 = *v561;
      }

      *buf = 136315650;
      *&buf[4] = v404;
      *&buf[12] = 2048;
      *&buf[14] = v562;
      *&buf[22] = 1024;
      *&buf[24] = v393;
      v405 = v403;
      v406 = "[%s|%p] [WARNING] AudioUnit and DSPGraph formats for input bus %d don't match";
      v407 = 28;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v408 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_795;
      }

      *buf = 134218240;
      *&buf[4] = v562;
      *&buf[12] = 1024;
      *&buf[14] = v393;
      v405 = v408;
      v406 = "[%p] [WARNING] AudioUnit and DSPGraph formats for input bus %d don't match";
      v407 = 18;
    }

    _os_log_impl(&dword_1DDB85000, v405, OS_LOG_TYPE_DEFAULT, v406, buf, v407);
LABEL_795:
    v409 = *(v562 + 656);
    if (v409 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v411 = AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v562 + 655) < 0)
        {
          v400 = *v561;
        }

        CA::StreamDescription::AsString(v587, v584, v412, v413);
        if ((SBYTE7(v588) & 0x80u) == 0)
        {
          v414 = v587;
        }

        else
        {
          v414 = *v587;
        }

        *buf = 136315906;
        *&buf[4] = v400;
        *&buf[12] = 2048;
        *&buf[14] = v562;
        *&buf[22] = 2080;
        *&buf[24] = v414;
        *&buf[32] = 2048;
        *&buf[34] = *&v584[12];
        _os_log_impl(&dword_1DDB85000, v411, OS_LOG_TYPE_DEFAULT, "[%s|%p] [WARNING] AudioUnit format: %s, format flags: 0x%lX", buf, 0x2Au);
        if (SBYTE7(v588) < 0)
        {
          operator delete(*v587);
        }

        v400 = v561;
      }
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v415 = AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        CA::StreamDescription::AsString(v587, v584, v416, v417);
        v418 = (SBYTE7(v588) & 0x80u) == 0 ? v587 : *v587;
        *buf = 134218498;
        *&buf[4] = v562;
        *&buf[12] = 2080;
        *&buf[14] = v418;
        *&buf[22] = 2048;
        *&buf[24] = *&v584[12];
        _os_log_impl(&dword_1DDB85000, v415, OS_LOG_TYPE_DEFAULT, "[%p] [WARNING] AudioUnit format: %s, format flags: 0x%lX", buf, 0x20u);
        if (SBYTE7(v588) < 0)
        {
          operator delete(*v587);
        }
      }
    }

    v419 = *(v562 + 656);
    if (v419 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v421 = AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v562 + 655) < 0)
        {
          v400 = *v561;
        }

        CA::StreamDescription::AsString(v587, cf, v422, v423);
        if ((SBYTE7(v588) & 0x80u) == 0)
        {
          v424 = v587;
        }

        else
        {
          v424 = *v587;
        }

        *buf = 136315906;
        *&buf[4] = v400;
        *&buf[12] = 2048;
        *&buf[14] = v562;
        *&buf[22] = 2080;
        *&buf[24] = v424;
        *&buf[32] = 2048;
        *&buf[34] = HIDWORD(cf[1]);
        _os_log_impl(&dword_1DDB85000, v421, OS_LOG_TYPE_DEFAULT, "[%s|%p] [WARNING]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x2Au);
        if (SBYTE7(v588) < 0)
        {
          operator delete(*v587);
        }

        v400 = v561;
      }
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v425 = AU::DSPGraph::GetLog(void)::sLog;
      if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        CA::StreamDescription::AsString(v587, cf, v426, v427);
        v428 = (SBYTE7(v588) & 0x80u) == 0 ? v587 : *v587;
        *buf = 134218498;
        *&buf[4] = v562;
        *&buf[12] = 2080;
        *&buf[14] = v428;
        *&buf[22] = 2048;
        *&buf[24] = HIDWORD(cf[1]);
        _os_log_impl(&dword_1DDB85000, v425, OS_LOG_TYPE_DEFAULT, "[%p] [WARNING]  DSPGraph format: %s, format flags: 0x%lX", buf, 0x20u);
        if (SBYTE7(v588) < 0)
        {
          operator delete(*v587);
        }
      }
    }

    v429 = *(v562 + 656);
    if (v429 == 1)
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v431 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_841;
      }

      v432 = v400;
      if (*(v562 + 655) < 0)
      {
        v432 = *v400;
      }

      *buf = 136315650;
      *&buf[4] = v432;
      *&buf[12] = 2048;
      *&buf[14] = v562;
      *&buf[22] = 1024;
      *&buf[24] = v393;
      v433 = v431;
      v434 = "[%s|%p] [WARNING] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on input bus %d";
      v435 = 28;
    }

    else
    {
      {
        AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
      }

      v436 = AU::DSPGraph::GetLog(void)::sLog;
      if (!os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_841;
      }

      *buf = 134218240;
      *&buf[4] = v562;
      *&buf[12] = 1024;
      *&buf[14] = v393;
      v433 = v436;
      v434 = "[%p] [WARNING] AudioUnit host may have incorrectly set kAudioUnitProperty_StreamFormat on input bus %d";
      v435 = 18;
    }

    _os_log_impl(&dword_1DDB85000, v433, OS_LOG_TYPE_DEFAULT, v434, buf, v435);
LABEL_841:
    if (v392 == ++v393)
    {
      goto LABEL_859;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  std::string::basic_string[abi:ne200100]<0>(cf, "out");
  v532 = (v396 + 32);
  if (*(v396 + 55) < 0)
  {
    v532 = *v532;
  }

  DSPGraph::strprintf(v587, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v531, v532, (*(v396 + 96) - *(v396 + 88)) >> 5, 0);
  DSPGraph::ThrowException();
LABEL_1099:
  __break(1u);
LABEL_1100:
  {
    AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
  }

LABEL_179:
  v75 = AU::DSPGraph::GetLog(void)::sLog;
  if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_ERROR))
  {
    *v584 = 134217984;
    *&v584[4] = v45;
    v59 = "[%p] neither graph text file path nor graph text were set";
    goto LABEL_262;
  }

LABEL_658:
  *v584 = v564;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v584);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v572);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v575);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v587);
  MEMORY[0x1E12BC370](buf);
  return 4294956421;
}