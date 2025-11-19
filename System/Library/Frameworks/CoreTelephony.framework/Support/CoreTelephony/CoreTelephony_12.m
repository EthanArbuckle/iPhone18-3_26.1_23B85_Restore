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

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
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

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_284A74E90;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_284A74E90;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2383CBEF0);
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

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_284A74ED8;
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

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_284A74ED8;
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

  JUMPOUT(0x2383CBEF0);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v22 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  memset(v19, 0, sizeof(v19));
  *__p = 0u;
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  *(&v19[0] + 1) = *(a2 + 24);
  *&v19[1] = *(&v19[0] + 1);
  std::vector<std::sub_match<char const*>>::assign(__p, v4, (v19 + 8));
  *&v20 = v5;
  *(&v20 + 1) = v5;
  LOBYTE(v21[0]) = 0;
  *(v21 + 8) = *(v19 + 8);
  BYTE8(v21[1]) = BYTE8(v19[1]);
  *(&v22 + 1) = v5;
  LOBYTE(v22) = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), __p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p[0];
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p[0];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(v9);
}

void sub_23749E424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
        v46[0] = 0;
        v46[1] = 0;
        v47 = 0;
        v12 = 0;
        v9 = v5;
        if (v5 + 1 != a3 && v10 == 91)
        {
          v13 = v5[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, v46);
              v12 = HIBYTE(v47);
              v11 = v46[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_140;
              }

              for (i = 0; v5[i + 2] != 58 || v5[i + 3] != 93; ++i)
              {
                if (v8 - v5 == i)
                {
                  goto LABEL_140;
                }
              }

              v24 = &v5[i + 2];
              if (v24 == a3)
              {
LABEL_140:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v25 = *(a1 + 24);
              __p[0] = 0;
              __p[1] = 0;
              v51 = 0;
              std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, v5 + 2, v24, i);
              v26 = HIBYTE(v51);
              if (v51 >= 0)
              {
                v27 = __p;
              }

              else
              {
                v27 = __p[0];
              }

              if (v51 < 0)
              {
                v26 = __p[1];
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), v27, &v26[v27]);
              if (v51 >= 0)
              {
                v28 = __p;
              }

              else
              {
                v28 = __p[0];
              }

              classname = std::__get_classname(v28, v25 & 1);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(__p[0]);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v30 = 0;
              *(v7 + 160) |= classname;
              v19 = &v5[i + 4];
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

              __p[0] = 0;
              __p[1] = 0;
              v51 = 0;
              std::regex_traits<char>::__lookup_collatename<char const*>(__p, a1, v5 + 2, v15);
              v22 = SHIBYTE(v51);
              if ((SHIBYTE(v51) & 0x8000000000000000) != 0)
              {
                v22 = __p[1];
                if (!__p[1])
                {
LABEL_142:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                __src[0] = 0;
                __src[1] = 0;
                v49 = 0;
                v23 = __p[0];
              }

              else
              {
                if (!HIBYTE(v51))
                {
                  goto LABEL_142;
                }

                __src[0] = 0;
                __src[1] = 0;
                v23 = __p;
                v49 = 0;
              }

              std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v23, v22 + v23);
              v32 = HIBYTE(v49);
              if (v49 < 0)
              {
                v32 = __src[1];
              }

              if (v32)
              {
                std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
              }

              else
              {
                v33 = HIBYTE(v51);
                if (v51 < 0)
                {
                  v33 = __p[1];
                }

                if (v33 == 2)
                {
                  if (v51 >= 0)
                  {
                    v40 = __p;
                  }

                  else
                  {
                    v40 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v40, *(v40 + 1));
                }

                else
                {
                  if (v33 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  if (v51 >= 0)
                  {
                    v34 = __p;
                  }

                  else
                  {
                    v34 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v34);
                }
              }

              if (SHIBYTE(v49) < 0)
              {
                operator delete(__src[0]);
              }

              if (SHIBYTE(v51) < 0)
              {
                operator delete(__p[0]);
              }

              v30 = 0;
              v19 = (v15 + 2);
LABEL_113:
              v38 = v5;
              goto LABEL_114;
            default:
              v11 = 0;
              v12 = 0;
              v9 = v5;
              break;
          }
        }

        v19 = *(a1 + 24) & 0x1F0;
        if (v12 >= 0)
        {
          v11 = v12;
        }

        if (!v11)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v20 = *v9;
            if (v20 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 1, a3, v46);
              }

              else
              {
                v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 1, a3, v46, v7);
              }

              v9 = v21;
              goto LABEL_79;
            }
          }

          else
          {
            LOBYTE(v20) = *v9;
          }

          if (v12 < 0)
          {
            v31 = v46[0];
            v46[1] = 1;
          }

          else
          {
            HIBYTE(v47) = 1;
            v31 = v46;
          }

          *v31 = v20;
          *(v31 + 1) = 0;
          ++v9;
        }

LABEL_79:
        if (v9 != a3)
        {
          v35 = *v9;
          if (v35 != 93)
          {
            v37 = v9 + 1;
            if (v9 + 1 != a3 && v35 == 45 && *v37 != 93)
            {
              v38 = v9 + 2;
              __p[0] = 0;
              __p[1] = 0;
              v51 = 0;
              if (v9 + 2 != a3 && *v37 == 91 && *v38 == 46)
              {
                v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v9 + 3, a3, __p);
                goto LABEL_124;
              }

              if ((v19 | 0x40) == 0x40)
              {
                LODWORD(v37) = *v37;
                if (v37 == 92)
                {
                  if (v19)
                  {
                    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 2, a3, __p);
                  }

                  else
                  {
                    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 2, a3, __p, v7);
                  }

LABEL_124:
                  v38 = v39;
LABEL_125:
                  *__src = *v46;
                  v42 = v47;
                  v46[1] = 0;
                  v47 = 0;
                  *v44 = *__p;
                  v45 = v51;
                  v46[0] = 0;
                  __p[1] = 0;
                  v51 = 0;
                  v49 = v42;
                  __p[0] = 0;
                  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, v44);
                  if (SHIBYTE(v45) < 0)
                  {
                    operator delete(v44[0]);
                  }

                  if (SHIBYTE(v49) < 0)
                  {
                    operator delete(__src[0]);
                  }

                  if (SHIBYTE(v51) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v30 = 1;
LABEL_114:
                  if (SHIBYTE(v47) < 0)
                  {
                    operator delete(v46[0]);
                  }

                  v9 = v38;
                  if ((v30 & 1) == 0)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_117;
                }
              }

              else
              {
                LOBYTE(v37) = *v37;
              }

              HIBYTE(v51) = 1;
              LOWORD(__p[0]) = v37;
              goto LABEL_125;
            }
          }
        }

        if (SHIBYTE(v47) < 0)
        {
          if (v46[1])
          {
            if (v46[1] == 1)
            {
              v36 = v46[0];
LABEL_88:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v36);
LABEL_98:
              v30 = 1;
              v38 = v9;
              goto LABEL_114;
            }

            v36 = v46[0];
LABEL_97:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v36, v36[1]);
            goto LABEL_98;
          }

          operator delete(v46[0]);
        }

        else if (HIBYTE(v47))
        {
          v36 = v46;
          if (HIBYTE(v47) == 1)
          {
            goto LABEL_88;
          }

          goto LABEL_97;
        }

LABEL_117:
        v19 = v9;
LABEL_118:
        v41 = v19 == v5;
        v5 = v19;
        if (v41)
        {
          goto LABEL_133;
        }
      }
    }

    v19 = v5;
LABEL_133:
    if (v19 == a3)
    {
      goto LABEL_141;
    }

    if (*v19 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v19;
    }

    if (v19 == a3 || *v19 != 93)
    {
LABEL_141:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return (v19 + 1);
  }

  return a2;
}

void sub_23749EADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
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

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
            v15 = -87;
LABEL_55:
            v16 = v14 + 16 * (v6 + v13 + v12) + v15;
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

              *a4 = v16;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
            }

            v4 += 3;
            return v4;
          }
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
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

          *a4 = v5;
          *(a4 + 1) = 0;
          return ++v4;
        }

        goto LABEL_78;
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

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
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

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
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

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
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

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
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

    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
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

void sub_23749F37C(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x2383CBEF0](v2, v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_284A74F68;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_284A74F68;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2383CBEF0);
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

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_284A74FB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_284A74FB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2383CBEF0);
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

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
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

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_284A75040;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_284A75040;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2383CBEF0);
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
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
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

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_284A75088;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_284A75088;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2383CBEF0);
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

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
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

void sub_2374A0148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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

  MEMORY[0x2383CBEF0](v10, v11);
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

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x2383CBEF0);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_63;
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

  __s.__r_.__value_.__r.__words[2] = 0x200000000000000;
  *&__s.__r_.__value_.__l.__data_ = __src;
  std::__get_collation_name(&v74, &__s);
  __p = v74;
  size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v74.__r_.__value_.__l.__size_;
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

  (*(*this->__traits_.__col_ + 32))(&v74);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v74;
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v74.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v74.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_168;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_168:
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

  v22 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v22)
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

    goto LABEL_164;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    memset(&__s, 0, sizeof(__s));
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v74);
    v16 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v16)
    {
LABEL_32:
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 3;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v16->first.__r_.__value_.__r.__words[v18 - 3], &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, (&this->__ranges_.__begin_->first.__r_.__value_.__l.__data_ + v18 * 8)) >= 1)
      {
        ++v17;
        v16 = this->__ranges_.__begin_;
        v18 += 6;
        if (v17 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v16) >> 4))
        {
          goto LABEL_32;
        }
      }

      v20 = 5;
      v19 = 1;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v19)
    {
      v21 = 1;
      goto LABEL_144;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v21 = 0;
    goto LABEL_146;
  }

  memset(&__s, 0, sizeof(__s));
  p_s = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v74);
  v39 = this->__equivalences_.__begin_;
  v40 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v41 = this->__equivalences_.__end_ - v39;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v42 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = HIBYTE(v39->__r_.__value_.__r.__words[2]);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = v39->__r_.__value_.__l.__size_;
      }

      if (v43 == v47)
      {
        v49 = v48 >= 0 ? v39 : v39->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v49, v43))
        {
          break;
        }
      }

      v46 = v45++ < v42;
      ++v39;
      if (!--v44)
      {
        goto LABEL_141;
      }
    }

    v21 = 1;
    v20 = 5;
    if (v40 < 0)
    {
LABEL_142:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_141:
    v20 = 0;
    v21 = 0;
    if (v40 < 0)
    {
      goto LABEL_142;
    }
  }

  if (!v46)
  {
LABEL_146:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v68 = tab[__src];
      if (((v68 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_164;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v68) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_163:
        negate = v21;
LABEL_165:
        v9 = 2;
        goto LABEL_63;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_165;
        }
      }

      goto LABEL_163;
    }

LABEL_164:
    negate = 1;
    goto LABEL_165;
  }

LABEL_144:
  v9 = 2;
  negate = v21;
  if (v20)
  {
    goto LABEL_63;
  }

LABEL_39:
  v23 = *a2->__current_;
  v74.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v23) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v23);
    v74.__r_.__value_.__s.__data_[0] = v23;
  }

  v24 = this->__chars_.__begin_;
  v25 = this->__chars_.__end_ - v24;
  if (v25)
  {
    if (v25 <= 1)
    {
      v25 = 1;
    }

    do
    {
      v26 = *v24++;
      if (v26 == v23)
      {
        goto LABEL_62;
      }
    }

    while (--v25);
  }

  v27 = this->__neg_mask_;
  if (v27 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v23 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v23] & v27) == 0)
    {
      v29 = (v27 >> 7) & 1;
      v28 = v23 == 95 ? v29 : 0;
    }

    else
    {
      v28 = 1;
    }

    end = this->__neg_chars_.__end_;
    v31 = memchr(this->__neg_chars_.__begin_, v23, end - this->__neg_chars_.__begin_);
    v32 = !v31 || v31 == end;
    v33 = !v32;
    if ((v28 & 1) == 0 && !v33)
    {
LABEL_62:
      negate = 1;
      goto LABEL_63;
    }
  }

  v36 = this->__ranges_.__begin_;
  v37 = this->__ranges_.__end_;
  if (v36 == v37)
  {
    goto LABEL_100;
  }

  memset(&__s, 0, sizeof(__s));
  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v74, &v74.__r_.__value_.__s.__data_[1]);
    v36 = this->__ranges_.__begin_;
    v37 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v23;
  }

  if (v37 == v36)
  {
LABEL_96:
    v52 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 3;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36->first.__r_.__value_.__r.__words[v51 - 3], &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, (&this->__ranges_.__begin_->first.__r_.__value_.__l.__data_ + v51 * 8)) >= 1)
    {
      ++v50;
      v36 = this->__ranges_.__begin_;
      v51 += 6;
      if (v50 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v36) >> 4))
      {
        goto LABEL_96;
      }
    }

    v52 = 1;
    negate = 1;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v52 & 1) == 0)
  {
LABEL_100:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_135:
      v64 = this->__mask_;
      if ((v74.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v74.__r_.__value_.__s.__data_[0]] & v64) != 0)
      {
        goto LABEL_62;
      }

      v65 = (v64 >> 7) & 1;
      if (v74.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v65) = 0;
      }

      negate |= v65;
      goto LABEL_63;
    }

    memset(&__s, 0, sizeof(__s));
    v53 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v74, &v74.__r_.__value_.__s.__data_[1]);
    v54 = this->__equivalences_.__begin_;
    v55 = this->__equivalences_.__end_ - v54;
    if (v55)
    {
      v70 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v71 = v9;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
      }

      v59 = 1;
      v60 = 1;
      while (1)
      {
        v61 = HIBYTE(v54->__r_.__value_.__r.__words[2]);
        v62 = v61;
        if ((v61 & 0x80u) != 0)
        {
          v61 = v54->__r_.__value_.__l.__size_;
        }

        if (v57 == v61)
        {
          v63 = v62 >= 0 ? v54 : v54->__r_.__value_.__r.__words[0];
          if (!memcmp(v53, v63, v57))
          {
            break;
          }
        }

        v60 = v59++ < v56;
        ++v54;
        if (!--v58)
        {
          goto LABEL_132;
        }
      }

      negate = 1;
LABEL_132:
      v9 = v71;
      if ((v70 & 0x80) == 0)
      {
LABEL_134:
        if (v60)
        {
          goto LABEL_63;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v60 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_134;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_134;
  }

LABEL_63:
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

void sub_2374A0B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, __src, a4, a4 - __src);
  v5 = HIBYTE(v9);
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v9 < 0)
  {
    v5 = v8;
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), p_p, &p_p[v5]);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_2374A0D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, __src, a4, a4 - __src);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v6 = v12;
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), p_p, &p_p[v6]);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
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

      *(v10 + 11) = *(v10 + 3);
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      a1[1] = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_2374A0E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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
        v8 = v7 < 0 ? v4[1] : *(v4 + 23);
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), *(v9 + i));
        v11 = v4;
        if (*(v4 + 23) < 0)
        {
          v11 = *v4;
        }

        *(v11 + i) = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = *(__src + 23);
        v16 = v15 < 0 ? __src[1] : *(__src + 23);
        if (k >= v16)
        {
          break;
        }

        v17 = __src;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *__src;
        }

        v18 = __src;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *__src;
        }

        *(v18 + k) = *(v17 + k);
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = *(v4 + 23);
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = v31[1];
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&v44, a1 + 16, v4, v4 + v30);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v42, a1 + 16, v3, &v3[v32]);
    *v46 = v44;
    v47 = v45;
    v45 = 0;
    *__p = *v42;
    v49 = v43;
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    v44 = 0uLL;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v46);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v45) < 0)
    {
      v34 = v44;
LABEL_76:
      operator delete(v34);
    }
  }

  else
  {
    v12 = *(__src + 23);
    if (v12 < 0)
    {
      v13 = __src[1];
    }

    else
    {
      v13 = *(__src + 23);
    }

    if (v13 != 1)
    {
      goto LABEL_78;
    }

    v35 = a3[23];
    if (v35 < 0)
    {
      v35 = *(a3 + 1);
    }

    if (v35 != 1)
    {
LABEL_78:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v36 = __src;
      if ((v12 & 0x80000000) != 0)
      {
        v36 = *__src;
      }

      v37 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v36);
      v38 = v4;
      if (*(v4 + 23) < 0)
      {
        v38 = *v4;
      }

      *v38 = v37;
      v39 = v3;
      if (v3[23] < 0)
      {
        v39 = *v3;
      }

      v40 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v39);
      v41 = v3;
      if (v3[23] < 0)
      {
        v41 = *v3;
      }

      *v41 = v40;
    }

    *v46 = *v4;
    v47 = v4[2];
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *__p = *v3;
    v49 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v46);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47) < 0)
    {
      v34 = v46[0];
      goto LABEL_76;
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  memset(&__s, 0, sizeof(__s));
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, __src, a4, a4 - __src);
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

void sub_2374A1BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, __src, a4, a4 - __src);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = HIBYTE(v13);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 < 0)
  {
    v6 = v12;
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), p_p, &p_p[v6]);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
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

      *(v10 + 11) = *(v10 + 3);
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      a1[1] = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_2374A1D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, __src, a4, a4 - __src);
  v5 = HIBYTE(v9);
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v9 < 0)
  {
    v5 = v8;
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), p_p, &p_p[v5]);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_2374A2050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
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

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
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

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
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
  MEMORY[0x2383CBBD0](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x2383CBEF0);
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

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x2383CBEF0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_284A75250;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
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

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 != a3 || v8 != 36)
  {
    if ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    }

    else
    {
      if (v9 == a3 || v8 != 92)
      {
        if (v8 == 46)
        {
          operator new();
        }

        goto LABEL_4;
      }

      v17 = *v9;
      if ((v17 - 36) > 0x3A || ((1 << (v17 - 36)) & 0x580000000000441) == 0)
      {
        goto LABEL_4;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
      v9 = v3 + 2;
    }

LABEL_32:
    if (v9 == a3)
    {
      return v9;
    }

    v20 = a1->__marked_count_ + 1;
    v21 = *v9;
    if (v21 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v9 + 1;
    }

    if (v9 + 1 == a3 || v21 != 92 || v9[1] != 123)
    {
      return v9;
    }

    LODWORD(__max) = 0;
    v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
    if (v22 == v9 + 2)
    {
      goto LABEL_58;
    }

    if (v22 != a3)
    {
      v23 = v22 + 1;
      v24 = *v22;
      if (v24 == 44)
      {
        v32 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v22 + 1, a3, &v32);
        if (v25 != a3)
        {
          v26 = v25;
          if (v25 + 1 != a3 && *v25 == 92)
          {
            v27 = v25[1];
            v28 = v27 == 125;
            if (v27 == 125)
            {
              v29 = v32;
              if (v32 == -1)
              {
                v30 = a1;
                v29 = -1;
                goto LABEL_55;
              }

              if (v32 >= __max)
              {
                v30 = a1;
LABEL_55:
                std::basic_regex<char,std::regex_traits<char>>::__push_loop(v30, __max, v29, end, marked_count + 1, v20, 1);
                return &v26[2 * v28];
              }

LABEL_58:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
            }
          }
        }
      }

      else if (v23 != a3 && v24 == 92 && *v23 == 125)
      {
        v3 = v22 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v20, 1);
        return v3;
      }
    }

    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  v9 = v10;
  if (v10 == v3 && v10 != a3 && v10 + 1 != a3 && *v10 == 92)
  {
    v11 = v10[1];
    if (v11 == 40)
    {
      v12 = v10 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      v13 = a1->__marked_count_;
      do
      {
        v14 = v12;
        v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v12, a3);
        v12 = v15;
      }

      while (v15 != v14);
      if (v14 == a3 || v15 + 1 == a3 || *v15 != 92 || v15[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v9 = v15 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v13);
    }

    else
    {
      v18 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v11);
      v19 = 2;
      if (!v18)
      {
        v19 = 0;
      }

      v9 += v19;
    }
  }

  if (v9 != v3)
  {
    goto LABEL_32;
  }

  return v3;
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

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_24;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
LABEL_14:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

LABEL_15:
    v12 = 1;
    goto LABEL_16;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (!this->__open_count_)
      {
        LOBYTE(v8) = 41;
        goto LABEL_15;
      }

LABEL_24:
      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_25;
    }

    goto LABEL_14;
  }

LABEL_4:
  v10 = a2 + 1;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_22:
    if (v8 == 46)
    {
      operator new();
    }

    goto LABEL_24;
  }

  v11 = *v10;
  LOBYTE(v8) = *v10;
  v12 = 2;
  if ((v11 - 36) <= 0x3A && ((1 << (v11 - 36)) & 0x5800000080004F1) != 0 || (v11 - 123) < 3)
  {
LABEL_16:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v8);
    v13 = &a2[v12];
    goto LABEL_37;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, a2 + 1, a3, 0);
  }

  else
  {
    v14 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v8);
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = &a2[v15];
  }

  if (v13 == a2)
  {
    v8 = *v13;
    goto LABEL_22;
  }

LABEL_25:
  if (v13 == a2 && v13 != a3)
  {
    v16 = *v13;
    switch(v16)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v17 = this->__marked_count_;
        ++this->__open_count_;
        v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, v13 + 1, a3);
        if (v18 == a3 || (v13 = v18, *v18 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v17);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_36;
    }

    ++v13;
  }

LABEL_36:
  if (v13 == a2)
  {
    return v13;
  }

LABEL_37:
  v19 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v13, a3, end, marked_count + 1, v19);
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
    memset(&v40, 0, sizeof(v40));
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v28 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v28;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_68;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  memset(&v40, 0, sizeof(v40));
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

LABEL_68:
  v9 = v14 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v18 = *a2;
  if (v18 <= 0x3E)
  {
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_3;
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
        goto LABEL_3;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_100:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_73:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_70:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_100;
    }

    goto LABEL_73;
  }

  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_3;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_100;
    }

    goto LABEL_70;
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
    goto LABEL_77;
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
        v27 = *v8;
        if ((v27 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_102;
        }

        ++v8;
        v22 = v27 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_102:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_102;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_77:
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
          goto LABEL_96;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_90;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_93;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_88;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_93:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_94;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_96;
    }

    v32 = a1;
    v33 = 0;
LABEL_88:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_94:
    started->__mask_ = v35;
    goto LABEL_95;
  }

  v30 = a1;
  v31 = 0;
LABEL_90:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_95:
  v8 = a2 + 2;
LABEL_96:
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

    LODWORD(__max) = 0;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_125;
    }

    v5 = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_125;
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

LABEL_125:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = v5;
      v10 = v5;
      if (v5 == a3)
      {
        goto LABEL_112;
      }

      v11 = *v5;
      v10 = v5;
      if (v11 == 93)
      {
        goto LABEL_112;
      }

      v12 = 0;
      v13 = (v5 + 1);
      v42[0] = 0;
      v42[1] = 0;
      v43 = 0;
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
          v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, v42);
          v14 = HIBYTE(v43);
          v12 = v42[1];
          goto LABEL_46;
        case ':':
          LOWORD(__src[0]) = 23866;
          v20 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
          if (v20 == a3)
          {
LABEL_126:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
          }

          v17 = v20;
          v21 = *(a1 + 24);
          __p[0] = 0;
          __p[1] = 0;
          v47 = 0;
          std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, v8 + 2, v20, v20 - (v8 + 2));
          v22 = HIBYTE(v47);
          if (v47 >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if (v47 < 0)
          {
            v22 = __p[1];
          }

          (*(**(a1 + 8) + 48))(*(a1 + 8), v23, &v22[v23]);
          if (v47 >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          classname = std::__get_classname(v24, v21 & 1);
          if (SHIBYTE(v47) < 0)
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
          LOWORD(v40[0]) = 23869;
          v16 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, v40, v40 + 2);
          if (v16 == a3)
          {
            goto LABEL_126;
          }

          v17 = v16;
          __p[0] = 0;
          __p[1] = 0;
          v47 = 0;
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__p, a1, v8 + 2, v16);
          v18 = SHIBYTE(v47);
          if ((SHIBYTE(v47) & 0x8000000000000000) != 0)
          {
            v18 = __p[1];
            if (!__p[1])
            {
LABEL_127:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            __src[0] = 0;
            __src[1] = 0;
            v45 = 0;
            v19 = __p[0];
          }

          else
          {
            if (!HIBYTE(v47))
            {
              goto LABEL_127;
            }

            __src[0] = 0;
            __src[1] = 0;
            v19 = __p;
            v45 = 0;
          }

          std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v19, v18 + v19);
          v30 = HIBYTE(v45);
          if (v45 < 0)
          {
            v30 = __src[1];
          }

          if (v30)
          {
            std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
          }

          else
          {
            v31 = HIBYTE(v47);
            if (v47 < 0)
            {
              v31 = __p[1];
            }

            if (v31 == 2)
            {
              if (v47 >= 0)
              {
                v38 = __p;
              }

              else
              {
                v38 = __p[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v38, *(v38 + 1));
            }

            else
            {
              if (v31 != 1)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              if (v47 >= 0)
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

          if (SHIBYTE(v45) < 0)
          {
            operator delete(__src[0]);
          }

          if (SHIBYTE(v47) < 0)
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
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, v42);
                }

                else
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, v42, v7);
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
              v29 = v42[0];
              v42[1] = 1;
            }

            else
            {
              HIBYTE(v43) = 1;
              v29 = v42;
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
              if (v10 + 1 != a3 && v33 == 45)
              {
                v36 = *v35;
                if (v36 != 93)
                {
                  v10 += 2;
                  __p[0] = 0;
                  __p[1] = 0;
                  v47 = 0;
                  if (v35 + 1 != a3 && v36 == 91 && *v10 == 46)
                  {
                    v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v35 + 2, a3, __p);
                    goto LABEL_118;
                  }

                  if ((v5 | 0x40) == 0x40 && v36 == 92)
                  {
                    if (v5)
                    {
                      v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, __p);
                    }

                    else
                    {
                      v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, __p, v7);
                    }

LABEL_118:
                    v10 = v37;
                  }

                  else
                  {
                    HIBYTE(v47) = 1;
                    LOWORD(__p[0]) = v36;
                  }

                  *__src = *v42;
                  v39 = v43;
                  v42[1] = 0;
                  v43 = 0;
                  *v40 = *__p;
                  v41 = v47;
                  v42[0] = 0;
                  __p[1] = 0;
                  v47 = 0;
                  v45 = v39;
                  __p[0] = 0;
                  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, v40);
                  if (SHIBYTE(v41) < 0)
                  {
                    operator delete(v40[0]);
                  }

                  if (SHIBYTE(v45) < 0)
                  {
                    operator delete(__src[0]);
                  }

                  if (SHIBYTE(v47) < 0)
                  {
                    operator delete(__p[0]);
                  }

LABEL_93:
                  v26 = 1;
                  goto LABEL_110;
                }
              }
            }
          }

          if (SHIBYTE(v43) < 0)
          {
            if (!v42[1])
            {
              operator delete(v42[0]);
LABEL_112:
              v5 = v10;
              goto LABEL_113;
            }

            if (v42[1] != 1)
            {
              v34 = v42[0];
LABEL_92:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v34, *(v34 + 1));
              goto LABEL_93;
            }

            v34 = v42[0];
          }

          else
          {
            if (!HIBYTE(v43))
            {
              goto LABEL_112;
            }

            v34 = v42;
            if (HIBYTE(v43) != 1)
            {
              goto LABEL_92;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v34);
          goto LABEL_93;
      }

      v5 = (v17 + 2);
      v10 = v8;
LABEL_110:
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
        if ((v26 & 1) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      if (v26)
      {
        goto LABEL_112;
      }

LABEL_113:
      if (v8 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  return a2;
}

void sub_2374A492C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
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

          v17 = 12;
          goto LABEL_92;
        }

        v8 = 12;
        goto LABEL_77;
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

          v17 = 10;
          goto LABEL_92;
        }

        v8 = 10;
        goto LABEL_77;
      }
    }

    else
    {
      switch(v5)
      {
        case '0':
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

          v8 = 0;
          goto LABEL_77;
        case 'c':
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          if (*v4 < 65)
          {
            goto LABEL_95;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_95;
          }

          v8 = v7 & 0x1F;
LABEL_74:
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

            *a4 = v8;
            *(a4 + 1) = 0;
            return ++v4;
          }

          goto LABEL_77;
        case '_':
          goto LABEL_95;
      }
    }

    goto LABEL_72;
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

        v17 = 13;
        goto LABEL_92;
      }

      v8 = 13;
      goto LABEL_77;
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

        v17 = 9;
        goto LABEL_92;
      }

      v8 = 9;
LABEL_77:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      return ++v4;
    }

LABEL_72:
    v8 = v5;
    if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_74;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_45;
      }

      goto LABEL_72;
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

      v17 = 11;
LABEL_92:
      *a4 = v17;
      return ++v4;
    }

    v8 = 11;
    goto LABEL_77;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v9 = a2[1];
  if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
  {
    goto LABEL_95;
  }

  v4 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_95;
  }

  v10 = *v4;
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v11 = -87;
  }

  v6 = 16 * (v11 + v10);
LABEL_45:
  if (v4 + 1 == a3)
  {
    goto LABEL_95;
  }

  v12 = v4[1];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v13 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_95;
  }

  v14 = v4[2];
  v15 = -48;
  if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
  {
    goto LABEL_55;
  }

  v14 |= 0x20u;
  if ((v14 - 97) >= 6)
  {
LABEL_95:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = -87;
LABEL_55:
  v16 = v14 + 16 * (v6 + v13 + v12) + v15;
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

    *a4 = v16;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
  }

  v4 += 3;
  return v4;
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

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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
        return (a2 + 1);
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
        return (a2 + 1);
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return (a2 + 1);
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
      return (a2 + 1);
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return (a2 + 1);
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
  return (a2 + 1);
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
  memset(&__s, 0, sizeof(__s));
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, __src, a4, a4 - __src);
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

void sub_2374A5498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_2:
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
    goto LABEL_16;
  }

  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_35;
  }

  v8 = a2;
  if (((1 << (v9 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v10 == 5)
    {
      v8 = a2;
      if (this->__open_count_)
      {
        goto LABEL_5;
      }

      LOBYTE(v9) = 41;
LABEL_36:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v9);
      v8 = a2 + 1;
      goto LABEL_5;
    }

LABEL_35:
    v8 = a2;
    if ((v9 - 123) < 2)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_5:
  if (v8 == a2)
  {
    v11 = (a2 + 1);
    if (a2 + 1 == a3 || *a2 != 92)
    {
      v8 = a2;
    }

    else if ((v12 = *v11, v13 = *v11, (v12 - 36) <= 0x3A) && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v13);
      v8 = a2 + 2;
    }

    else if ((this->__flags_ & 0x1F0) == 0x40)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(this, a2 + 1, a3, 0);
    }

    else
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v13) ? a2 + 2 : a2;
    }

    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_2;
    }
  }

LABEL_16:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v15 = this->__marked_count_;
        ++this->__open_count_;
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(this, v8 + 1, a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v15);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_27;
    }

    ++v8;
  }

LABEL_27:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(this, v8, a3, end, marked_count + 1, v17);
}

void CarrierBundleInterface::copyOperatorBundleMatchInfo(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v9 = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    v10 = *(a3 + 4);
  }

  v7 = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a4 + 1), *(a4 + 2));
  }

  else
  {
    __p = *(a4 + 4);
  }

  (*(*a1 + 216))(a1, a2, &v9, &v7, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2374A5F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CarrierBundleInterface::getCarrierBundleNameWithCallback(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      (*(*v3 + 24))(v3, v6);
    }

    else
    {
      v7 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 184))(a1, 1, v6);
  result = std::__function::__value_func<void ()(ctu::cf::CFSharedRef<__CFString const>)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<void ()(ctu::cf::CFSharedRef<__CFString const>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void BasebandModeEvaluator::~BasebandModeEvaluator(BasebandModeEvaluator *this)
{
  v2 = *(this + 1);
  *this = &unk_284A75588;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void BasebandModeEvaluator::getAwdReasonsForCurrentMode(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void rest::write_rest_value(char *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v29 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v29 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v29 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v29 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = asString(*a1);
  ctu::rest::detail::write_enum_string_value(&v27, v7, v8, v9);
  v25 = &v29;
  v26 = "change";
  xpc::dict::object_proxy::operator=(&v25, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v11 = a1[1];
  if (v11 > 2)
  {
    v12 = "???";
  }

  else
  {
    v12 = off_278A32F60[v11];
  }

  ctu::rest::detail::write_enum_string_value(&v23, v11, v12, v10);
  v25 = &v29;
  v26 = "technology";
  xpc::dict::object_proxy::operator=(&v25, &v23, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  if (a1[31] >= 0)
  {
    v13 = a1 + 8;
  }

  else
  {
    v13 = *(a1 + 1);
  }

  v21 = xpc_string_create(v13);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v25 = &v29;
  v26 = "bundle_id";
  xpc::dict::object_proxy::operator=(&v25, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v16 = *(a1 + 4);
  v15 = a1 + 32;
  v14 = v16;
  if (v15[23] >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v19 = xpc_string_create(v17);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v25 = &v29;
  v26 = "bundle_version";
  xpc::dict::object_proxy::operator=(&v25, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v18 = v29;
  *a2 = v29;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v29);
}

{
  v34 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v34 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v34 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v34 = v6;
LABEL_9:
  xpc_release(v5);
  v8 = *(a1 + 14);
  if ((v8 - 1) > 2)
  {
    v9 = "kUnknown";
  }

  else
  {
    v9 = off_278A32F48[v8 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v32, v8, v9, v7);
  v30 = &v34;
  v31 = "simSlot";
  xpc::dict::object_proxy::operator=(&v30, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v10 = *a1;
  v11 = asString(*a1);
  ctu::rest::detail::write_enum_string_value(&v28, v10, v11, v12);
  v30 = &v34;
  v31 = "change";
  xpc::dict::object_proxy::operator=(&v30, &v28, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v28);
  v28 = 0;
  v14 = a1[1];
  if (v14 > 2)
  {
    v15 = "???";
  }

  else
  {
    v15 = off_278A32F60[v14];
  }

  ctu::rest::detail::write_enum_string_value(&v26, v14, v15, v13);
  v30 = &v34;
  v31 = "technology";
  xpc::dict::object_proxy::operator=(&v30, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (a1[31] >= 0)
  {
    v16 = a1 + 8;
  }

  else
  {
    v16 = *(a1 + 1);
  }

  v24 = xpc_string_create(v16);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "bundle_id";
  xpc::dict::object_proxy::operator=(&v30, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  v19 = *(a1 + 4);
  v18 = a1 + 32;
  v17 = v19;
  if (v18[23] >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  v22 = xpc_string_create(v20);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v30 = &v34;
  v31 = "bundle_version";
  xpc::dict::object_proxy::operator=(&v30, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v21 = v34;
  *a2 = v34;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v34);
}

void sub_2374A6760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_2374A6F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t asString@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = 0;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  *__p = 0u;
  v37 = 0u;
  v34 = 0u;
  *__src = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v31);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "{", 1);
  v5 = asString(*a1);
  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  v9 = a1[1];
  if (v9 > 2)
  {
    v10 = "???";
  }

  else
  {
    v10 = off_278A32F60[v9];
  }

  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  v14 = a1[31];
  if (v14 >= 0)
  {
    v15 = (a1 + 8);
  }

  else
  {
    v15 = *(a1 + 1);
  }

  if (v14 >= 0)
  {
    v16 = a1[31];
  }

  else
  {
    v16 = *(a1 + 2);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ":", 1);
  v21 = *(a1 + 4);
  v20 = a1 + 32;
  v19 = v21;
  v22 = v20[23];
  if (v22 >= 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19;
  }

  if (v22 >= 0)
  {
    v24 = v20[23];
  }

  else
  {
    v24 = *(v20 + 1);
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "}", 1);
  if ((BYTE8(v38) & 0x10) != 0)
  {
    v27 = v38;
    if (v38 < __src[1])
    {
      *&v38 = __src[1];
      v27 = __src[1];
    }

    v28 = __src[0];
  }

  else
  {
    if ((BYTE8(v38) & 8) == 0)
    {
      v26 = 0;
      a2[23] = 0;
      goto LABEL_29;
    }

    v28 = *(&v33 + 1);
    v27 = *(&v34 + 1);
  }

  v26 = v27 - v28;
  if ((v27 - v28) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  a2[23] = v26;
  if (v26)
  {
    memmove(a2, v28, v26);
  }

LABEL_29:
  a2[v26] = 0;
  *&v31 = *MEMORY[0x277D82818];
  v29 = *(MEMORY[0x277D82818] + 72);
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v32 = v29;
  *(&v32 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v32 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v39);
}

void sub_2374A75FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x2383CBE70](v9 + 128);
  _Unwind_Resume(a1);
}

uint64_t std::pair<subscriber::SimSlot const,rest::BundleInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<subscriber::SimSlot,rest::BundleInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<subscriber::SimSlot,rest::BundleInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::BundleInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::BundleInfo>,0>(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::BundleInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::BundleInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::BundleInfo>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::BundleInfo>,0>((a1 + 4));

    operator delete(a1);
  }
}

void _GLOBAL__sub_I_CarrierBundleRestResources_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  qword_280CE8D30 = 0;
  qword_280CE8D28 = 0;
  rest::kDefaultBundles = &qword_280CE8D28;
  operator new();
}

void sub_2374A78A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__tree<std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::BundleInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::BundleInfo>>>::destroy(qword_280CE8D28);
  std::pair<subscriber::SimSlot const,rest::BundleInfo>::~pair(va1);
  std::pair<subscriber::SimSlot const,rest::MccMncComputedInfo>::~pair(va);
  _Unwind_Resume(a1);
}

void rest::getDefaultDataUiIndicators(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  operator new();
}

void rest::getDefaultDataUiModifiers(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  operator new();
}

uint64_t toString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "[", 1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "simSlot = ", 10);
  v5 = *a1 - 1;
  if (v5 > 2)
  {
    v6 = "kUnknown";
  }

  else
  {
    v6 = off_278A33018[v5];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " pdp_id = ", 10);
  v10 = MEMORY[0x2383CBD20](v9, *(a1 + 4));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " connectionMask = ", 18);
  v12 = MEMORY[0x2383CBD50](v11, *(a1 + 8));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " serviceMask = ", 15);
  v14 = MEMORY[0x2383CBD50](v13, *(a1 + 16));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " contextType = ", 15);
  MEMORY[0x2383CBD20](v15, *(a1 + 24));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "]", 1);
  std::ostringstream::str[abi:ne200100](&v17, a2);
  *&v17 = *MEMORY[0x277D82828];
  *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v17 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v22);
}

{
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "[", 1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "simSlot = ", 10);
  v5 = *a1 - 1;
  if (v5 > 2)
  {
    v6 = "kUnknown";
  }

  else
  {
    v6 = off_278A33018[v5];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " error = ", 9);
  v10 = MEMORY[0x2383CBD20](v9, *(a1 + 4));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " connectionMask = ", 18);
  MEMORY[0x2383CBD50](v11, *(a1 + 8));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "]", 1);
  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82828];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v13 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v18);
}

{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "[", 1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "simSlot = ", 10);
  v5 = *a1 - 1;
  if (v5 > 2)
  {
    v6 = "kUnknown";
  }

  else
  {
    v6 = off_278A33018[v5];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " forceSend = ", 13);
  v10 = MEMORY[0x2383CBD10](v9, *(a1 + 4));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " reason = ", 10);
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = *(v13 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "]", 1);
  std::ostringstream::str[abi:ne200100](&v19, a2);
  *&v19 = *MEMORY[0x277D82828];
  *(&v20[-1] + *(v19 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v19 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v24);
}

{
  v16 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "[", 1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " error = ", 9);
  v5 = CSIErrorString(*a1);
  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ct = ", 6);
  MEMORY[0x2383CBD20](v8, *(a1 + 4));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "]", 1);
  std::ostringstream::str[abi:ne200100](&v10, a2);
  *&v10 = *MEMORY[0x277D82828];
  *(&v11[-1] + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v10 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v10 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v15);
}

uint64_t toString@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "ct=", 3);
  v5 = *a1 + 1;
  if (v5 > 3)
  {
    v6 = "Unknown DataContextType";
  }

  else
  {
    v6 = off_278A32FE0[v5];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", bb_mask=", 10);
  v10 = sd::asString(a1[1]);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", tech_mask=", 12);
  v14 = sd::asString(a1[2]);
  v15 = strlen(v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  std::ostringstream::str[abi:ne200100](&v17, a2);
  *&v17 = *MEMORY[0x277D82828];
  *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v17 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v22);
}

void sub_2374A8724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t toString@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "container=", 10);
  v4 = MEMORY[0x2383CBD40](v3, *a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", data { ", 9);
  v5 = *(a1 + 1);
  for (i = *(a1 + 2); v5 != i; ++v5)
  {
    v7 = v13;
    v8 = &v14[-1] + *(v13 - 24);
    if (*(v8 + 36) == -1)
    {
      std::ios_base::getloc((&v14[-1] + *(v13 - 24)));
      v9 = std::locale::use_facet(&v20, MEMORY[0x277D82680]);
      (v9->__vftable[2].~facet_0)(v9, 32);
      std::locale::~locale(&v20);
      v7 = v13;
    }

    *(v8 + 36) = 48;
    *(v14 + *(v7 - 24) + 8) = 2;
    *(&v13 + *(v7 - 24) + 8) = *(&v13 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
    v10 = MEMORY[0x2383CBD30](&v13, *v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " }", 2);
  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82828];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v13 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v18);
}

void sub_2374A8D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void write_rest_value(const void **a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_int64_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "containerId";
  xpc::dict::object_proxy::operator=(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v8 = xpc_data_create(a1[1], a1[2] - a1[1]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "data";
  xpc::dict::object_proxy::operator=(&v10, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

void sub_2374A94DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_2374A9DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object, xpc_object_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void NetworkInterfaceInfo::NetworkInterfaceInfo(std::string *this, __int128 *a2, int a3, std::string::value_type a4, std::string::value_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  this[1].__r_.__value_.__s.__data_[4] = a4;
  this[1].__r_.__value_.__s.__data_[5] = a5;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  this[1].__r_.__value_.__s.__data_[4] = a4;
  this[1].__r_.__value_.__s.__data_[5] = a5;
}

void sub_2374AB190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t object)
{
  if (*(v20 - 33) < 0)
  {
    operator delete(*(v20 - 56));
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

char *read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  *a1 = -1;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 33) = 0;
  *(a1 + 44) = 2;
  v3 = *a2;
  result = xpc_data_get_length(*a2);
  if (result >= 0x16)
  {
    result = xpc_data_get_bytes_ptr(v3);
    if (result)
    {
      *a1 = *result;
      *(a1 + 40) = result[1] != 0;
      *(a1 + 4) = result[2];
      *(a1 + 44) = result[3];
      *(a1 + 16) = bswap64(*(result + 4));
      *(a1 + 8) = result[12];
      *(a1 + 32) = bswap64(*(result + 13));
      *(a1 + 24) = result[21];
    }
  }

  return result;
}

uint64_t anonymous namespace::sWriteToBuffer(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = (*a3)++;
  *(*a2 + v4) = v3;
  v5 = *(result + 40);
  v6 = (*a3)++;
  *(*a2 + v6) = v5;
  v7 = *(result + 4);
  v8 = (*a3)++;
  *(*a2 + v8) = v7;
  v9 = *(result + 44);
  v10 = (*a3)++;
  *(*a2 + v10) = v9;
  *(*a2 + *a3) = bswap64(*(result + 16));
  v11 = *a3;
  LOBYTE(v10) = *(result + 8);
  *a3 += 9;
  *(*a2 + v11 + 8) = v10;
  *(*a2 + *a3) = bswap64(*(result + 32));
  v12 = *a3;
  LODWORD(v10) = *(result + 24);
  *a3 += 9;
  *(*a2 + v12 + 8) = v10;
  return result;
}

uint64_t asString@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = 0;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  *v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "(pdp: ", 6);
  v5 = MEMORY[0x2383CBD20](v4, *a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "state: ", 7);
  v7 = a1[1];
  if (v7 > 3)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_278A32F98[v7];
  }

  v9 = strlen(v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "silent: ", 8);
  if (*(a1 + 40))
  {
    v12 = "True";
  }

  else
  {
    v12 = "False";
  }

  if (*(a1 + 40))
  {
    v13 = 4;
  }

  else
  {
    v13 = 5;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "mode masks: ", 12);
  asString(ConnectionState const&)::$_0::operator()(&__s, (a1 + 2));
  __p = __s;
  *(&__s.__r_.__value_.__s + 23) = 2;
  strcpy(&__s, ", ");
  std::string::append(&__p, &__s, 2uLL);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  asString(ConnectionState const&)::$_0::operator()(&__s, (a1 + 6));
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, p_s, size);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_p, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ",", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "transport type:", 15);
  v22 = a1[11] + 1;
  if (v22 > 3)
  {
    v23 = "Unknown DataContextType";
  }

  else
  {
    v23 = off_278A32FE0[v22];
  }

  v24 = strlen(v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, ")", 1);
  std::ostringstream::str[abi:ne200100](&v27, a2);
  *&v27 = *MEMORY[0x277D82828];
  *(&v28[-1] + *(v27 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v27 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  *(&v27 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v32);
}

void sub_2374ABA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void read_rest_value(uint64_t ***a1, xpc_object_t *a2)
{
  v4 = (a1 + 1);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a1[1]);
  *a1 = v4;
  a1[2] = 0;
  *v4 = 0;
  v5 = *a2;
  length = xpc_data_get_length(*a2);
  if (length)
  {
    v7 = length;
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    if (bytes_ptr)
    {
      if ((*bytes_ptr & 0x8000000000000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v31 = 0;
          v10 = MEMORY[0x277D86220];
          v11 = "number of connections is negative in read_rest_value";
          v12 = &v31;
          goto LABEL_25;
        }
      }

      else
      {
        v9 = *bytes_ptr;
        if (v9 < 0x24)
        {
          if (22 * *bytes_ptr >= v7)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v10 = MEMORY[0x277D86220];
              v11 = "boundary check failed in read_rest_value";
              v12 = buf;
              goto LABEL_25;
            }
          }

          else if (*bytes_ptr)
          {
            v13 = bytes_ptr + 1;
            while (1)
            {
              v14 = *v13;
              if (v14 >= 36)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                v28 = 0;
                v10 = MEMORY[0x277D86220];
                v11 = "connection type must be less than kDataConnectionTotal in read_rest_value";
                v12 = &v28;
                goto LABEL_25;
              }

              if (v14 < 0)
              {
                break;
              }

              v15 = v13[2] != 0;
              v16 = v13[3];
              v17 = v13[4];
              v18 = *(v13 + 5);
              v19 = v13[13];
              v20 = *(v13 + 14);
              v21 = v13[22];
              v22 = *v4;
              if (!*v4)
              {
LABEL_20:
                v26 = *(v13 + 5);
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v23 = v22;
                  v24 = *(v22 + 8);
                  if (v24 <= v14)
                  {
                    break;
                  }

                  v22 = *v23;
                  if (!*v23)
                  {
                    goto LABEL_20;
                  }
                }

                if (v24 >= v14)
                {
                  break;
                }

                v22 = v23[1];
                if (!v22)
                {
                  goto LABEL_20;
                }
              }

              v25 = v9--;
              *(v23 + 10) = v13[1];
              *(v23 + 11) = v16;
              v13 += 23;
              *(v23 + 12) = v19;
              *(v23 + 13) = 0;
              v23[7] = bswap64(v18);
              *(v23 + 16) = v21;
              *(v23 + 17) = 0;
              v23[9] = bswap64(v20);
              *(v23 + 80) = v15;
              *(v23 + 81) = 0;
              *(v23 + 83) = 0;
              *(v23 + 21) = v17;
              if (v25 <= 1)
              {
                return;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v27 = 0;
            v10 = MEMORY[0x277D86220];
            v11 = "connection type must be more or equal to kDataConnectionMin in read_rest_value";
            v12 = &v27;
            goto LABEL_25;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v30 = 0;
          v10 = MEMORY[0x277D86220];
          v11 = "number of connections must be less than kDataConnectionTotal in read_rest_value";
          v12 = &v30;
LABEL_25:
          _os_log_error_impl(&dword_2373EA000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
        }
      }
    }
  }
}

void sub_2374AD87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void read_rest_value(const void **a1, void **a2)
{
  v3 = *a2;
  xdict = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    xdict = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    p_xdict = &xdict;
    v18 = "simSlot";
    xpc::dict::object_proxy::operator xpc::object(&p_xdict, v22);
    v5 = MEMORY[0x2383CC760](*v22);
    if (v5 == MEMORY[0x277D864C0])
    {
      LODWORD(v21) = *a1;
      ctu::rest::detail::read_enum_string_value(&v21, v22, v6);
      *a1 = v21;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(v22, 0);
    }

    xpc_release(*v22);
    cf = 0;
    value = xpc_dictionary_get_value(xdict, "reportDict");
    ctu::xpc_to_cf(&cf, value, v8);
    v9 = cf;
    v14 = cf;
    if (cf)
    {
      CFRetain(cf);
      v21 = v9;
      CFRetain(v9);
    }

    else
    {
      v21 = 0;
    }

    v20 = 0;
    *v22 = 0;
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(v22, &v21);
    v10 = *v22;
    if (*v22)
    {
      p_xdict = *v22;
      CFRetain(*v22);
      v11 = v20;
      v20 = v10;
      p_xdict = v11;
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&p_xdict);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v22);
    v12 = v20;
    v15 = v20;
    v20 = 0;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v20);
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v21);
    v13 = (a1 + 1);
    if (a1 + 1 != &v15)
    {
      p_xdict = *v13;
      *v13 = v12;
      v15 = 0;
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&p_xdict);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v15);
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v14);
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  }

  else
  {
    LODWORD(p_xdict) = 0;
    v18 = 0;
    *a1 = 0;
    if (&p_xdict != a1)
    {
      *v22 = a1[1];
      a1[1] = 0;
      v18 = 0;
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v22);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v18);
  }

  xpc_release(xdict);
}

void sub_2374ADE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, xpc_object_t object, const void *a16)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a16);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef((v16 - 48));
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a10);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a12);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void write_rest_value(ctu **a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  v8 = *a1;
  if ((v8 - 1) > 2)
  {
    v9 = "kUnknown";
  }

  else
  {
    v9 = off_278A33018[v8 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v16, v8, v9, v7);
  v14 = &v18;
  v15 = "simSlot";
  xpc::dict::object_proxy::operator=(&v14, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  ctu::cf_to_xpc(&v12, a1[1], v10);
  v14 = &v18;
  v15 = "reportDict";
  xpc::dict::object_proxy::operator=(&v14, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v18;
  *a2 = v18;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void read_rest_value(_DWORD *a1, void **a2)
{
  v3 = *a2;
  v16 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    v13 = &v16;
    v14 = "simSlot";
    xpc::dict::object_proxy::operator xpc::object(&v13, &object);
    v5 = MEMORY[0x2383CC760](object);
    v7 = MEMORY[0x277D864C0];
    v8 = MEMORY[0x277D86448];
    if (v5 == MEMORY[0x277D864C0])
    {
      v17 = *a1;
      ctu::rest::detail::read_enum_string_value(&v17, &object, v6);
      *a1 = v17;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v13 = &v16;
    v14 = "connection";
    xpc::dict::object_proxy::operator xpc::object(&v13, &object);
    v9 = MEMORY[0x2383CC760](object);
    if (v9 == v7)
    {
      v17 = a1[1];
      ctu::rest::detail::read_enum_string_value(&v17, &object, v10);
      a1[1] = v17;
    }

    else if (v9 == v8 || v9 == MEMORY[0x277D86498] || v9 == MEMORY[0x277D864C8])
    {
      a1[1] = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v13 = &v16;
    v14 = "changeType";
    xpc::dict::object_proxy::operator xpc::object(&v13, &object);
    v11 = MEMORY[0x2383CC760](object);
    if (v11 == v7)
    {
      v17 = a1[2];
      ctu::rest::detail::read_enum_string_value(&v17, &object, v12);
      a1[2] = v17;
    }

    else if (v11 == v8 || v11 == MEMORY[0x277D86498] || v11 == MEMORY[0x277D864C8])
    {
      a1[2] = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v13 = &v16;
    v14 = "flowId";
    xpc::dict::object_proxy::operator xpc::object(&v13, &object);
    a1[3] = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  xpc_release(v16);
}

void sub_2374AE314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

_BYTE *rest::SaveDataModePreference::SaveDataModePreference(_BYTE *this, char a2, char a3, char a4)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

const char *rest::asString(rest *this, const rest::SaveDataModePreference *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    v22 = this;
    v23 = __cxa_guard_acquire(&_MergedGlobals_7);
    this = v22;
    if (v23)
    {
      v25 = 0;
      v24 = 0;
      v26 = "lowDataMode=false, smartDataMode=false, expensive=false";
      v28 = 1;
      v27 = 0;
      v29 = "lowDataMode=false, smartDataMode=false, expensive=true";
      v31 = 0;
      v30 = 256;
      v32 = "lowDataMode=false, smartDataMode=true, expensive=false";
      v34 = 1;
      v33 = 256;
      v35 = "lowDataMode=false, smartDataMode=true, expensive=true";
      v37 = 0;
      v36 = 1;
      v38 = "lowDataMode=true, smartDataMode=false, expensive=false";
      v39 = 1;
      v40 = 1;
      v41 = "lowDataMode=true, smartDataMode=false, expensive=true";
      v43 = 0;
      v42 = 257;
      v44 = "lowDataMode=true, smartDataMode=true, expensive=false";
      v46 = 1;
      v45 = 257;
      v47 = "lowDataMode=true, smartDataMode=true, expensive=true";
      std::map<std::tuple<BOOL,BOOL,BOOL>,char const*>::map[abi:ne200100](&v24, 8);
      __cxa_atexit(std::map<std::tuple<BOOL,BOOL,BOOL>,char const*>::~map[abi:ne200100], &qword_280CE8588, &dword_2373EA000);
      __cxa_guard_release(&_MergedGlobals_7);
      this = v22;
    }
  }

  v2 = qword_280CE8590;
  if (!qword_280CE8590)
  {
    goto LABEL_29;
  }

  v3 = *this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = &qword_280CE8590;
  do
  {
    v7 = v2[32];
    v8 = v7 == v3;
    if (v7 < v3)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v8)
    {
      v10 = v2[33];
      v11 = v10 == v4;
      v9 = v10 < v4 ? -1 : 1;
      if (v11)
      {
        v12 = v2[34];
        v13 = v12 == v5;
        v9 = v12 < v5 ? -1 : 1;
        if (v13)
        {
          v9 = 0;
        }
      }
    }

    v14 = v9;
    v15 = v9 & 8;
    if (v14 >= 0)
    {
      v6 = v2;
    }

    v2 = *&v2[v15];
  }

  while (v2);
  if (v6 == &qword_280CE8590)
  {
    goto LABEL_29;
  }

  v16 = *(v6 + 32);
  v8 = v3 == v16;
  v17 = v3 < v16;
  if (v8)
  {
    v18 = *(v6 + 33);
    v8 = v4 == v18;
    v17 = v4 < v18;
    if (v8)
    {
      v19 = *(v6 + 34);
      v17 = v5 < v19;
      if (v5 == v19)
      {
        goto LABEL_30;
      }
    }
  }

  if (!v17)
  {
LABEL_30:
    result = v6[5];
  }

  else
  {
LABEL_29:
    result = "???";
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374AEE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t rest::SlicingSupportInfo::toString@<X0>(rest::SlicingSupportInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "[configured: ", 13);
  v5 = MEMORY[0x2383CBD10](v4, *this);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " enterprise: ", 13);
  v7 = MEMORY[0x2383CBD10](v6, *(this + 1));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " consumer: ", 11);
  v9 = MEMORY[0x2383CBD10](v8, *(this + 2));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " llphs: ", 8);
  v11 = MEMORY[0x2383CBD10](v10, *(this + 3));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "]", 1);
  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82828];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v13 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v18);
}

void sub_2374AF450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::write_rest_value(BOOL *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v18 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  v16 = xpc_BOOL_create(*a1);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "conf";
  xpc::dict::object_proxy::operator=(&v14, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v12 = xpc_BOOL_create(a1[1]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "ent";
  xpc::dict::object_proxy::operator=(&v14, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_BOOL_create(a1[2]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "cons";
  xpc::dict::object_proxy::operator=(&v14, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_BOOL_create(a1[3]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "llphs";
  xpc::dict::object_proxy::operator=(&v14, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v18;
  *a2 = v18;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void sub_2374AF910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t object)
{
  xpc_release(*(v22 - 72));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t operator==(uint64_t a1, int *a2)
{
  v2 = (a1 + 4);
  v3 = 280;
  do
  {
    v4 = *a2;
    v5 = a2[1];
    a2 += 2;
    v8 = *(v2 - 1) == v4;
    v7 = *v2;
    v2 += 2;
    v6 = v7;
    v8 = v8 && v6 == v5;
    result = v8;
    v10 = result != 1 || v3 == 0;
    v3 -= 8;
  }

  while (!v10);
  return result;
}

uint64_t operator!=(uint64_t a1, int *a2)
{
  v2 = (a1 + 4);
  v3 = 280;
  do
  {
    v4 = *a2;
    v5 = a2[1];
    a2 += 2;
    v8 = *(v2 - 1) == v4;
    v7 = *v2;
    v2 += 2;
    v6 = v7;
    v8 = v8 && v6 == v5;
    v9 = v8;
    v10 = v9 != 1 || v3 == 0;
    v3 -= 8;
  }

  while (!v10);
  return v9 ^ 1u;
}

_BYTE *read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  for (i = 0; i != 288; i += 32)
  {
    v4 = (a1 + i);
    *v4 = xmmword_2374BF710;
    v4[1] = xmmword_2374BF710;
  }

  v5 = *a2;
  length = xpc_data_get_length(*a2);
  result = xpc_data_get_bytes_ptr(v5);
  v8 = 0;
  v9 = (a1 + 4);
  do
  {
    v10 = 2;
    v11 = -3;
    if (result && v8 < length)
    {
      v12 = result[v8];
      if (v12 == 246)
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        LOBYTE(v11) = result[v8];
      }

      if (v12 == 246)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      if (v12 == 245)
      {
        LOBYTE(v11) = 0;
        v10 = 1;
      }

      else
      {
        v10 = v13;
      }

      v11 = v11;
    }

    *(v9 - 1) = v11;
    *v9 = v10;
    ++v8;
    v9 += 2;
  }

  while (v8 != 36);
  return result;
}

uint64_t ConnectionAvailabilityContainer::clear(uint64_t this)
{
  for (i = 0; i != 288; i += 32)
  {
    v2 = (this + i);
    *v2 = xmmword_2374BF710;
    v2[1] = xmmword_2374BF710;
  }

  return this;
}

uint64_t ConnectionAvailabilityContainer::set(uint64_t result, unsigned int a2, int a3, int a4)
{
  if (a2 <= 0x23)
  {
    v4 = (result + 8 * a2);
    *v4 = a3;
    v4[1] = a4;
  }

  return result;
}

xpc_object_t write_rest_value@<X0>(const ConnectionAvailabilityContainer *a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = (a1 + 4);
  do
  {
    v5 = *(v4 - 4);
    if (!v5)
    {
      if (!*v4)
      {
        v5 = -10;
      }

      if (*v4 == 1)
      {
        v5 = -11;
      }
    }

    *(v8 + v3++) = v5;
    v4 += 2;
  }

  while (v3 != 36);
  result = xpc_data_create(v8, 0x24uLL);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374AFD40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ConnectionAvailabilityContainer::error(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x23)
  {
    return 1;
  }

  else
  {
    return *(a1 + 8 * a2);
  }
}

uint64_t ConnectionAvailabilityContainer::contextType(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x23)
  {
    return 2;
  }

  else
  {
    return *(a1 + 8 * a2 + 4);
  }
}

void ConnectionAvailabilityContainer::ConnectionAvailabilityContainer(ConnectionAvailabilityContainer *this)
{
  for (i = 0; i != 288; i += 32)
  {
    v2 = (this + i);
    *v2 = xmmword_2374BF720;
    v2[1] = xmmword_2374BF720;
  }

  for (j = 0; j != 288; j += 32)
  {
    v4 = (this + j);
    *v4 = xmmword_2374BF710;
    v4[1] = xmmword_2374BF710;
  }
}

{
  for (i = 0; i != 288; i += 32)
  {
    v2 = (this + i);
    *v2 = xmmword_2374BF720;
    v2[1] = xmmword_2374BF720;
  }

  for (j = 0; j != 288; j += 32)
  {
    v4 = (this + j);
    *v4 = xmmword_2374BF710;
    v4[1] = xmmword_2374BF710;
  }
}

uint64_t ConnectionAvailabilityContainer::ConnectionAvailabilityContainer(uint64_t result, void *a2)
{
  for (i = 0; i != 288; i += 32)
  {
    v3 = (result + i);
    *v3 = xmmword_2374BF720;
    v3[1] = xmmword_2374BF720;
  }

  for (j = 0; j != 288; j += 32)
  {
    v5 = (result + j);
    *v5 = xmmword_2374BF710;
    v5[1] = xmmword_2374BF710;
  }

  v6 = a2[1];
  v7 = v6 - *a2;
  if (v6 != *a2)
  {
    v8 = 0;
    v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (*a2 + 32);
    do
    {
      if (v8 <= 0x23)
      {
        v11 = *v10;
        v12 = (result + 8 * (v8 & 0x3F));
        *v12 = *(v10 - 8);
        v12[1] = v11;
      }

      ++v8;
      v10 += 14;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t ConnectionAvailabilityContainer::set(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 0x23)
  {
    v3 = (result + 8 * a2);
    *v3 = a3;
    v3[1] = 2;
  }

  return result;
}

uint64_t ConnectionAvailabilityContainer::at(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x24)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return a1 + 8 * a2;
}

{
  if (a2 >= 0x24)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return a1 + 8 * a2;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2374AFFC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void asString(ConnectionState const&)::$_0::operator()(std::string *a1, uint64_t a2)
{
  v4 = asString(*a2);
  std::string::basic_string[abi:ne200100]<0>(&v11, v4);
  v5 = std::string::append(&v11, ":", 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a2 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v12, p_p, size);
  *a1 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2374B00C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::map<std::tuple<BOOL,BOOL,BOOL>,char const*>::map[abi:ne200100](uint64_t a1, uint64_t a2)
{
  qword_280CE8598 = 0;
  qword_280CE8590 = 0;
  qword_280CE8588 = &qword_280CE8590;
  if (a2)
  {
    operator new();
  }
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,0ul,1ul,2ul>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == v4)
  {
    v6 = a1[1];
    v7 = a2[1];
    result = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v6 == v7)
    {
      v8 = a1[2];
      v9 = a2[2];
      v10 = v8 == v9;
      if (v8 < v9)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x2821F6888]();
}

{
  return MEMORY[0x2821F6890]();
}

uint64_t ctu::rest::detail::write_enum_string_value(ctu::rest::detail *this, uint64_t a2, const char *a3)
{
  return MEMORY[0x2821F6988](this, a2, a3);
}

{
  return MEMORY[0x2821F6990](this, a2, a3);
}

uint64_t ctu::operator<<()
{
  return MEMORY[0x2821F6A38]();
}

{
  return MEMORY[0x2821F6A40]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A68]();
}

uint64_t xpc::dyn_cast_or_default(xpc *this, const object *a2)
{
  return MEMORY[0x2821F6A70](this, a2);
}

{
  return MEMORY[0x2821F6A80](this, a2);
}

{
  return MEMORY[0x2821F6A88](this, a2);
}

{
  return MEMORY[0x2821F6A90](this, a2);
}

{
  return MEMORY[0x2821F6A98](this, a2);
}

{
  return MEMORY[0x2821F6AA0](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}