unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x3E)
  {
    v11 = v4 - 92;
    if (v11 <= 0x21)
    {
      v3 = a2;
      if (((1 << (v4 - 92)) & 0x300000006) != 0)
      {
        return v3;
      }

      if (v4 == 92)
      {
        v22 = a2 + 1;
        if (a3 == a2 + 1)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v23 = *v22;
        v24 = v23 - 48;
        if (v23 == 48)
        {
          v25 = 0;
LABEL_46:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v25);
          return v22 + 1;
        }

        if ((v23 - 49) <= 8)
        {
          v3 = a2 + 2;
          if (a2 + 2 == a3)
          {
            v34 = a2;
            v35 = a3;
            v3 = a3;
          }

          else
          {
            while (1)
            {
              v33 = *v3;
              if ((v33 - 48) > 9)
              {
                break;
              }

              if (v24 >= 0x19999999)
              {
                goto LABEL_75;
              }

              ++v3;
              v24 = v33 + 10 * v24 - 48;
              if (v3 == a3)
              {
                v3 = a3;
                break;
              }
            }

            v34 = a2;
            v35 = a3;
            if (!v24)
            {
LABEL_75:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
            }
          }

          if (v24 > *(a1 + 28))
          {
            goto LABEL_75;
          }

          v36 = a1;
          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v24);
          if (v3 != v22)
          {
            return v3;
          }

          a1 = v36;
          a3 = v35;
          a2 = v34;
          v23 = *v22;
        }

        v37 = a1;
        if (v23 > 99)
        {
          if (v23 == 119)
          {
            v42 = a2;
            v43 = a3;
            v46 = operator new(0xB0uLL);
            std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v46, v37, *(*(v37 + 56) + 8), 0, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
            *(*(v37 + 56) + 8) = v46;
            *(v37 + 56) = v46;
            v46[40] |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v46, 95);
            a1 = v37;
LABEL_68:
            v3 = v22 + 1;
            a3 = v43;
            a2 = v42;
            goto LABEL_69;
          }

          if (v23 != 115)
          {
            v3 = v22;
            if (v23 == 100)
            {
              v38 = a2;
              v39 = a3;
              v41 = operator new(0xB0uLL);
              std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v41, v37, *(*(v37 + 56) + 8), 0, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
              a1 = v37;
              *(*(v37 + 56) + 8) = v41;
              *(v37 + 56) = v41;
              v41[40] |= 0x400u;
              goto LABEL_61;
            }

LABEL_69:
            if (v22 == v3)
            {
              v3 = a2;
              v47 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, v22, a3, 0);
              if (v47 != v22)
              {
                return v47;
              }
            }

            return v3;
          }

          v42 = a2;
          v43 = a3;
          v44 = operator new(0xB0uLL);
          std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v37, *(*(v37 + 56) + 8), 0, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
        }

        else
        {
          if (v23 == 68)
          {
            v42 = a2;
            v43 = a3;
            v44 = operator new(0xB0uLL);
            std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v37, *(*(v37 + 56) + 8), 1, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
            a1 = v37;
            *(*(v37 + 56) + 8) = v44;
            *(v37 + 56) = v44;
            v45 = v44[40] | 0x400;
LABEL_67:
            v44[40] = v45;
            goto LABEL_68;
          }

          if (v23 != 83)
          {
            v3 = v22;
            if (v23 == 87)
            {
              v38 = a2;
              v39 = a3;
              v40 = operator new(0xB0uLL);
              std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v40, v37, *(*(v37 + 56) + 8), 1, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
              *(*(v37 + 56) + 8) = v40;
              *(v37 + 56) = v40;
              v40[40] |= 0x500u;
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v40, 95);
              a1 = v37;
LABEL_61:
              v3 = v22 + 1;
              a3 = v39;
              a2 = v38;
              goto LABEL_69;
            }

            goto LABEL_69;
          }

          v42 = a2;
          v43 = a3;
          v44 = operator new(0xB0uLL);
          std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v37, *(*(v37 + 56) + 8), 1, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
        }

        a1 = v37;
        *(*(v37 + 56) + 8) = v44;
        *(v37 + 56) = v44;
        v45 = v44[40] | 0x4000;
        goto LABEL_67;
      }

      if (v11 == 31)
      {
        goto LABEL_73;
      }
    }

    if (v4 == 91)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    if (v4 == 63)
    {
      goto LABEL_73;
    }

    goto LABEL_45;
  }

  v3 = a2;
  if (*a2 <= 0x28u)
  {
    if (v4 != 36)
    {
      if (v4 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++*(a1 + 36);
            v12 = a1;
            v13 = a3;
            v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
            if (v14 != v13 && *v14 == 41)
            {
              --*(v12 + 36);
              return v14 + 1;
            }
          }

          else
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              v19 = *(a1 + 28);
            }

            else
            {
              v15 = a1;
              v16 = a3;
              v17 = operator new(0x18uLL);
              a3 = v16;
              v18 = v17;
              a1 = v15;
              v19 = *(v15 + 28) + 1;
              *(v15 + 28) = v19;
              v20 = *(v15 + 56);
              v21 = *(v20 + 8);
              *v18 = &unk_28521A408;
              v18[1] = v21;
              *(v18 + 4) = v19;
              *(v20 + 8) = v18;
              *(v15 + 56) = v18;
            }

            ++*(a1 + 36);
            v26 = a1;
            v27 = a3;
            v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
            if (v28 != v27)
            {
              v22 = v28;
              if (*v28 == 41)
              {
                v29 = v26;
                if ((*(v26 + 24) & 2) == 0)
                {
                  v30 = operator new(0x18uLL);
                  v29 = v26;
                  v31 = *(v26 + 56);
                  v32 = *(v31 + 8);
                  *v30 = &unk_28521A450;
                  v30[1] = v32;
                  *(v30 + 4) = v19;
                  *(v31 + 8) = v30;
                  *(v26 + 56) = v30;
                }

                --*(v29 + 36);
                return v22 + 1;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      goto LABEL_45;
    }
  }

  else if (v4 != 41)
  {
    if (v4 == 46)
    {
      v5 = a1;
      v6 = a2;
      v7 = operator new(0x10uLL);
      v8 = *(v5 + 56);
      v9 = *(v8 + 8);
      *v7 = &unk_28521A1C8;
      v7[1] = v9;
      *(v8 + 8) = v7;
      *(v5 + 56) = v7;
      return v6 + 1;
    }

    if (v4 - 42 < 2)
    {
LABEL_73:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

LABEL_45:
    v22 = a2;
    v25 = v4;
    goto LABEL_46;
  }

  return v3;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_167;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = (v5 == 94 ? a2 + 2 : a2 + 1);
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_167;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      v9 = v7;
LABEL_13:
      if (v9 != a3)
      {
        if (*v9 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
          ++v9;
        }

        if (v9 != a3 && *v9 == 93)
        {
          return v9 + 1;
        }
      }

LABEL_167:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    v11 = a3 - 1;
    while (1)
    {
      v9 = v7;
      v12 = v7;
      if (v7 == a3)
      {
        goto LABEL_22;
      }

      v13 = *v7;
      v12 = v7;
      if (v13 == 93)
      {
        goto LABEL_22;
      }

      v14 = (v7 + 1);
      __p[0] = 0;
      __p[1] = 0;
      v58 = 0;
      v12 = v7;
      if ((v7 + 1) == a3 || v13 != 91)
      {
        goto LABEL_67;
      }

      v15 = *v14;
      if (v15 != 46)
      {
        if (v15 == 58)
        {
          if (&a3[-v7 - 2] < 2)
          {
            goto LABEL_165;
          }

          v20 = 1;
          v21 = v9 + 3;
          if (v9[2] == 58)
          {
            goto LABEL_44;
          }

          do
          {
            do
            {
              if (v21 == v11)
              {
                goto LABEL_165;
              }

              v21 = &v14[++v20 + 1];
            }

            while (v14[v20] != 58);
LABEL_44:
            ;
          }

          while (*v21 != 93);
          if (!(v14 - a3 + v20))
          {
            goto LABEL_165;
          }

          v22 = *(a1 + 24);
          v23 = v20 - 1;
          memset(__dst, 170, sizeof(__dst));
          if (v20 - 1 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v54 = v22;
          v53 = v8;
          if (v20 >= 0x18)
          {
            v33 = a1;
            if ((v23 | 7) == 0x17)
            {
              v34 = 25;
            }

            else
            {
              v34 = (v23 | 7) + 1;
            }

            v24 = operator new(v34);
            *&__dst[8] = v20 - 1;
            *&__dst[16] = v34 | 0x8000000000000000;
            *__dst = v24;
            a1 = v33;
          }

          else
          {
            __dst[23] = v20 - 1;
            v24 = __dst;
            if (v20 == 1)
            {
LABEL_85:
              v24[v20 - 1] = 0;
              v35 = __dst[23];
              if (__dst[23] >= 0)
              {
                v36 = __dst;
              }

              else
              {
                v36 = *__dst;
              }

              if (__dst[23] < 0)
              {
                v35 = *&__dst[8];
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), v36, &v36[v35]);
              if (__dst[23] >= 0)
              {
                v37 = __dst;
              }

              else
              {
                v37 = *__dst;
              }

              classname = std::__get_classname(v37, v54 & 1);
              v8 = v53;
              if ((__dst[23] & 0x80000000) != 0)
              {
                v39 = classname;
                operator delete(*__dst);
                classname = v39;
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v40 = 0;
              v53[40] |= classname;
              v7 = &v14[v20 + 2];
              v12 = v9;
              if ((SHIBYTE(v58) & 0x80000000) == 0)
              {
                goto LABEL_135;
              }

              goto LABEL_153;
            }
          }

          memmove(v24, v9 + 2, v20 - 1);
          goto LABEL_85;
        }

        if (v15 == 61)
        {
          if (&a3[-v7 - 2] < 2)
          {
            goto LABEL_165;
          }

          v16 = (v7 + 3);
          v17 = (v7 + 2);
          if (*(v7 + 2) == 61)
          {
            goto LABEL_35;
          }

          do
          {
            do
            {
              if (v16 == v11)
              {
LABEL_165:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              ++v17;
              ++v16;
            }

            while (*(v16 - 1) != 61);
LABEL_35:
            ;
          }

          while (*v16 != 93);
          if (a3 == v17)
          {
            goto LABEL_165;
          }

          memset(__dst, 170, sizeof(__dst));
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__dst, a1, (v7 + 2), v17);
          v18 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) != 0)
          {
            v18 = *&__dst[8];
            if (!*&__dst[8])
            {
LABEL_168:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            memset(__s, 170, sizeof(__s));
            v19 = *__dst;
          }

          else
          {
            if (!__dst[23])
            {
              goto LABEL_168;
            }

            v19 = __dst;
            memset(__s, 170, sizeof(__s));
          }

          std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__s, a1, v19, &v19[v18]);
          v41 = HIBYTE(__s[2]);
          if (SHIBYTE(__s[2]) < 0)
          {
            v41 = __s[1];
          }

          if (v41)
          {
            v42 = *(v8 + 18);
            if (v42 >= *(v8 + 19))
            {
              v46 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v8 + 136, __s);
            }

            else
            {
              if (SHIBYTE(__s[2]) < 0)
              {
                std::string::__init_copy_ctor_external(*(v8 + 18), __s[0], __s[1]);
              }

              else
              {
                v43 = *__s;
                *(v42 + 16) = __s[2];
                *v42 = v43;
              }

              v46 = (v42 + 24);
              *(v8 + 18) = v42 + 24;
            }

            *(v8 + 18) = v46;
          }

          else
          {
            v44 = __dst[23];
            if (__dst[23] < 0)
            {
              v44 = *&__dst[8];
            }

            if (v44 == 2)
            {
              v52 = __dst;
              if (__dst[23] < 0)
              {
                v52 = *__dst;
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, *v52, v52[1]);
            }

            else
            {
              if (v44 != 1)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              v45 = __dst;
              if (__dst[23] < 0)
              {
                v45 = *__dst;
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, *v45);
            }
          }

          if (SHIBYTE(__s[2]) < 0)
          {
            operator delete(__s[0]);
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          v40 = 0;
          v7 = (v17 + 2);
          v12 = v9;
          if ((SHIBYTE(v58) & 0x80000000) == 0)
          {
LABEL_135:
            if ((v40 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          goto LABEL_153;
        }

        v12 = v7;
LABEL_67:
        v7 = *(a1 + 24) & 0x1F0;
        v29 = 0;
        goto LABEL_70;
      }

      if (&a3[-v7 - 2] < 2)
      {
        goto LABEL_166;
      }

      v25 = (v7 + 3);
      v26 = (v7 + 2);
      if (*(v7 + 2) != 46)
      {
        break;
      }

LABEL_54:
      if (*v25 != 93)
      {
        goto LABEL_52;
      }

      if (a3 == v26)
      {
LABEL_166:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
      }

      std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__dst, a1, (v7 + 2), v26);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *__dst;
      v58 = *&__dst[16];
      v27 = *&__dst[8];
      if (__dst[23] >= 0)
      {
        v28 = (v58 >> 56);
      }

      else
      {
        v28 = __p[1];
      }

      if ((v28 - 1) >= 2)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v12 = v26 + 2;
      v7 = *(a1 + 24) & 0x1F0;
      v29 = __dst[23];
      if (__dst[23] >= 0)
      {
        v27 = v58 >> 56;
      }

      if (v27)
      {
        if (v12 == a3)
        {
          goto LABEL_117;
        }

        goto LABEL_116;
      }

LABEL_70:
      if ((v7 | 0x40) == 0x40)
      {
        v30 = *v12;
        if (v30 == 92)
        {
          if (v7)
          {
            v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v12 + 1, a3, __p);
          }

          else
          {
            v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v12 + 1, a3, __p, v8);
          }

          v12 = v31;
          if (v31 == a3)
          {
            goto LABEL_117;
          }

          goto LABEL_116;
        }
      }

      else
      {
        LOBYTE(v30) = *v12;
      }

      if (v29 < 0)
      {
        v32 = __p[0];
        __p[1] = 1;
        *__p[0] = v30;
        v32[1] = 0;
        if (++v12 == a3)
        {
          goto LABEL_117;
        }
      }

      else
      {
        HIBYTE(v58) = 1;
        LOWORD(__p[0]) = v30;
        if (++v12 == a3)
        {
          goto LABEL_117;
        }
      }

LABEL_116:
      v47 = *v12;
      if (v47 != 93)
      {
        v49 = (v12 + 1);
        if (v12 + 1 != a3 && v47 == 45)
        {
          v50 = *v49;
          if (v50 != 93)
          {
            memset(__dst, 0, sizeof(__dst));
            v12 += 2;
            if (v49 + 1 != a3 && v50 == 91 && *v12 == 46)
            {
              v51 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v49 + 2, a3, __dst);
              goto LABEL_156;
            }

            if ((v7 | 0x40) == 0x40 && v50 == 92)
            {
              if (v7)
              {
                v51 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v12, a3, __dst);
              }

              else
              {
                v51 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v12, a3, __dst, v8);
              }

LABEL_156:
              v12 = v51;
            }

            else
            {
              __dst[23] = 1;
              *__dst = v50;
            }

            *__s = *__p;
            __s[2] = v58;
            __p[1] = 0;
            v58 = 0;
            __p[0] = 0;
            *v55 = *__dst;
            v56 = *&__dst[16];
            memset(__dst, 0, sizeof(__dst));
            std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v8, __s, v55);
            if (SHIBYTE(v56) < 0)
            {
              operator delete(v55[0]);
              if (SHIBYTE(__s[2]) < 0)
              {
                goto LABEL_162;
              }

LABEL_159:
              if ((__dst[23] & 0x80000000) == 0)
              {
                goto LABEL_134;
              }

LABEL_163:
              operator delete(*__dst);
              v40 = 1;
              if ((SHIBYTE(v58) & 0x80000000) == 0)
              {
                goto LABEL_135;
              }
            }

            else
            {
              if ((SHIBYTE(__s[2]) & 0x80000000) == 0)
              {
                goto LABEL_159;
              }

LABEL_162:
              operator delete(__s[0]);
              if ((__dst[23] & 0x80000000) != 0)
              {
                goto LABEL_163;
              }

LABEL_134:
              v40 = 1;
              if ((SHIBYTE(v58) & 0x80000000) == 0)
              {
                goto LABEL_135;
              }
            }

LABEL_153:
            operator delete(__p[0]);
            if ((v40 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }
      }

LABEL_117:
      if (SHIBYTE(v58) < 0)
      {
        if (__p[1])
        {
          if (__p[1] == 1)
          {
            v48 = __p[0];
            goto LABEL_124;
          }

          v48 = __p[0];
LABEL_133:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, *v48, *(v48 + 1));
          goto LABEL_134;
        }

        operator delete(__p[0]);
      }

      else if (HIBYTE(v58))
      {
        v48 = __p;
        if (HIBYTE(v58) == 1)
        {
LABEL_124:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, *v48);
          goto LABEL_134;
        }

        goto LABEL_133;
      }

LABEL_22:
      v7 = v12;
LABEL_23:
      if (v9 == v7)
      {
        goto LABEL_13;
      }
    }

    do
    {
LABEL_52:
      if (v25 == v11)
      {
        goto LABEL_166;
      }

      ++v26;
      ++v25;
    }

    while (*(v25 - 1) != 46);
    goto LABEL_54;
  }

  return a2;
}

void sub_240169178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 81) < 0)
  {
    operator delete(*(v32 - 104));
    if (a25 < 0)
    {
LABEL_5:
      operator delete(__p);
      _Unwind_Resume(a1);
    }
  }

  else if (a25 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

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
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

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
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_98;
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

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
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

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, char *__src, char *a3, uint64_t a4)
{
  if (a3 - __src < 2 || a3 - 1 == __src)
  {
    goto LABEL_15;
  }

  v5 = __src + 1;
  v6 = __src;
  if (*__src != 46)
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

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v10, a1, __src, v6);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

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

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

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
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
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

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
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

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
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

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
            return a2 + 1;
          }

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

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
            return a2 + 1;
          }

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

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
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

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
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

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
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

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
    return a2 + 1;
  }
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    __dst[23] = a4 - __src;
    v9 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v9, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v4 | 7) + 1;
  }

  v9 = operator new(v10);
  *&__dst[8] = v4;
  *&__dst[16] = v10 | 0x8000000000000000;
  *__dst = v9;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v11 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v11 = __dst;
  }

  std::__get_collation_name(&v18, v11);
  *a1 = *&v18.__r_.__value_.__l.__data_;
  v12 = v18.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v18.__r_.__value_.__l + 2);
  v13 = HIBYTE(v12);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 8);
  }

  if (v13)
  {
    goto LABEL_17;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v11 = *__dst;
    if (*&__dst[8] < 3uLL)
    {
LABEL_25:
      (*(**(a2 + 16) + 32))(&v18);
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = v18;
      if (*(a1 + 23) < 0)
      {
        v15 = *(a1 + 8);
        if (v15 == 1 || v15 == 12)
        {
          if (__dst != a1)
          {
            if (__dst[23] >= 0)
            {
              v16 = __dst;
            }

            else
            {
              v16 = *__dst;
            }

            if (__dst[23] >= 0)
            {
              v17 = __dst[23];
            }

            else
            {
              v17 = *&__dst[8];
            }

            std::string::__assign_no_alias<false>(a1, v16, v17);
          }
        }

        else
        {
          **a1 = 0;
          *(a1 + 8) = 0;
        }
      }

      else
      {
        v14 = *(a1 + 23);
        if (v14 == 1 || v14 == 12)
        {
          if (__dst != a1)
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__assign_no_alias<true>(a1, *__dst, *&__dst[8]);
            }

            else
            {
              *a1 = *__dst;
              *(a1 + 16) = *&__dst[16];
            }
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 23) = 0;
        }
      }

LABEL_17:
      if ((__dst[23] & 0x80000000) == 0)
      {
        return;
      }

      v11 = *__dst;
    }

LABEL_19:
    operator delete(v11);
    return;
  }

  if (__dst[23] < 3)
  {
    goto LABEL_25;
  }
}

void sub_24016A184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_20;
  }

  v7 = a2 + 1;
  v6 = *a2;
  if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
    result = a2 + 1;
    goto LABEL_21;
  }

  result = a2;
  if (v7 == a3)
  {
    goto LABEL_9;
  }

  v10 = *a2;
  if (v10 != 92)
  {
    result = a2;
    if (v10 != 46)
    {
LABEL_20:
      result = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v11 = *v7;
  if ((v11 - 36) > 0x3A || ((1 << (v11 - 36)) & 0x580000000000441) == 0)
  {
    goto LABEL_20;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v11);
  result = a2 + 2;
  if (a2 + 2 == a2)
  {
LABEL_9:
    if (*result != 46)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = result;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    *v14 = &unk_28521A600;
    v14[1] = v16;
    *(v15 + 8) = v14;
    *(a1 + 56) = v14;
    result = v13 + 1;
  }

LABEL_21:
  if (a2 == a3 || result != a2)
  {
    return result;
  }

  if (a2 + 1 == a3)
  {
    return a2;
  }

  if (*result != 92)
  {
    return a2;
  }

  v17 = a2[1];
  if (v17 == 40)
  {
    result = a2 + 2;
  }

  if (result != a2)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v20 = *(a1 + 28);
    }

    else
    {
      v18 = result;
      v19 = operator new(0x18uLL);
      result = v18;
      v20 = *(a1 + 28) + 1;
      *(a1 + 28) = v20;
      v21 = *(a1 + 56);
      v22 = *(v21 + 8);
      *v19 = &unk_28521A408;
      v19[1] = v22;
      *(v19 + 4) = v20;
      *(v21 + 8) = v19;
      *(a1 + 56) = v19;
    }

    do
    {
      if (result == a3)
      {
        goto LABEL_53;
      }

      v23 = result;
      v24 = *(a1 + 56);
      v25 = *(a1 + 28);
      v26 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
      if (v23 == v26)
      {
        break;
      }

      result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v26, a3, v24, (v25 + 1), (*(a1 + 28) + 1));
    }

    while (v23 != result);
    if (v23 == a3)
    {
      result = a3;
    }

    else
    {
      if (v23 + 1 == a3 || *v23 != 92)
      {
        goto LABEL_53;
      }

      if (v23[1] == 41)
      {
        result = v23 + 2;
      }

      else
      {
        result = v23;
      }
    }

    if (result != v23)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v27 = result;
        v28 = operator new(0x18uLL);
        result = v27;
        v29 = *(a1 + 56);
        v30 = *(v29 + 8);
        *v28 = &unk_28521A450;
        v28[1] = v30;
        *(v28 + 4) = v20;
        *(v29 + 8) = v28;
        *(a1 + 56) = v28;
      }

      return result;
    }

LABEL_53:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v17 & 0xF8) != 0x30 && (v17 & 0xFE) != 0x38)
  {
    return a2;
  }

  result = a2;
  if ((v17 - 49) <= 8)
  {
    if ((v17 - 48) > *(a1 + 28))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v17 - 48);
    return a2 + 2;
  }

  return result;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a2);
    if (v8 != a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v10 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_6;
      }

      LOBYTE(v9) = 41;
LABEL_38:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v9);
      v12 = a2 + 1;
      goto LABEL_29;
    }

LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_6:
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a3);
  v12 = v11;
  if (v11 != a2)
  {
    goto LABEL_12;
  }

  if (*v11 != 46)
  {
LABEL_10:
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
LABEL_11:
    v12 = v8;
LABEL_12:
    if (v12 != a2)
    {
      goto LABEL_29;
    }

LABEL_13:
    if (v12 == a3)
    {
      goto LABEL_29;
    }

    v16 = *v12;
    switch(v16)
    {
      case '$':
        v17 = operator new(0x18uLL);
        v18 = (this->__flags_ & 0x5F0) == 1024;
        v19 = this->__end_;
        v17->__first_ = v19->__first_;
        v20 = &unk_28521A0F0;
        break;
      case '(':
        if ((this->__flags_ & 2) != 0)
        {
          v22 = this->__marked_count_;
        }

        else
        {
          v21 = operator new(0x18uLL);
          v22 = this->__marked_count_ + 1;
          this->__marked_count_ = v22;
          v23 = this->__end_;
          first = v23->__first_;
          v21->__vftable = &unk_28521A408;
          v21->__first_ = first;
          LODWORD(v21[1].__vftable) = v22;
          v23->__first_ = v21;
          this->__end_ = v21;
        }

        ++this->__open_count_;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(this, v12 + 1, a3);
        if (v25 == a3 || (v12 = v25, *v25 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((this->__flags_ & 2) == 0)
        {
          v26 = operator new(0x18uLL);
          v27 = this->__end_;
          v28 = v27->__first_;
          v26->__vftable = &unk_28521A450;
          v26->__first_ = v28;
          LODWORD(v26[1].__vftable) = v22;
          v27->__first_ = v26;
          this->__end_ = v26;
        }

        --this->__open_count_;
        goto LABEL_28;
      case '^':
        v17 = operator new(0x18uLL);
        v18 = (this->__flags_ & 0x5F0) == 1024;
        v19 = this->__end_;
        v17->__first_ = v19->__first_;
        v20 = &unk_28521A0A8;
        break;
      default:
        goto LABEL_29;
    }

    v17->__vftable = v20;
    LOBYTE(v17[1].__vftable) = v18;
    v19->__first_ = v17;
    this->__end_ = v17;
LABEL_28:
    ++v12;
    goto LABEL_29;
  }

  v13 = operator new(0x10uLL);
  v14 = this->__end_;
  v15 = v14->__first_;
  v13->__vftable = &unk_28521A600;
  v13->__first_ = v15;
  v14->__first_ = v13;
  this->__end_ = v13;
  if (++v12 == a2)
  {
    goto LABEL_13;
  }

LABEL_29:
  if (v12 == a2)
  {
    return a2;
  }

  v29 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(this, v12, a3, end, marked_count + 1, v29);
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

void *Capabilities::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_28521A648;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

uint64_t Capabilities::isCMHandDetectionSupported(Capabilities *this)
{
  capabilities::abs::supportsCMHandDetection(this);
  v1 = MEMORY[0x277CC1C38];

  return [v1 isCallHandednessAvailable];
}

void std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024016B924)
  {
    if (((v2 & 0x800000024016B924 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024016B924))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024016B924 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7910]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}