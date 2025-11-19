void sub_240EA80FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    v29 = a1;
    operator delete(__p);
    a1 = v29;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x245CD2AC0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v83[130] = *MEMORY[0x277D85DE8];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    memset(v83, 170, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v81 = v10;
    v82 = 0;
    if (v10 < 1075)
    {
      v83[0] = v10 + 316;
      if ((v10 + 316) < 0x401)
      {
        v11 = &v83[2];
      }

      else
      {
        v11 = operator new(v10 + 316);
      }
    }

    else
    {
      v81 = 1074;
      v82 = v10 - 1074;
      v83[0] = 1390;
      v11 = operator new(0x56EuLL);
    }

    v83[1] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v12;
    *v79 = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v81, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v8, &v78, v9);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v13 = *(&v78 + 1);
    v14 = v79[1];
    if (*(&v78 + 1) == v79[1])
    {
      ++v79[1];
      *v14 = 46;
      v15 = v79[0];
      v16 = v79[1] - 1;
      if (v79[0] != v79[1] - 1)
      {
        if (v79[0] + 1 == v16)
        {
          v18 = *v79[0];
          *v79[0] = *(v79[0] + 1);
          v15[1] = v18;
        }

        else
        {
          v17 = *(v79[1] - 1);
          memmove(v79[0] + 1, v79[0], v16 - v79[0]);
          *v15 = v17;
        }
      }

      v13 = v79[0];
      *(&v78 + 1) = v79[0]++;
      if ((BYTE1(v5) - 17) > 1u)
      {
LABEL_29:
        if ((v5 & 0x40) != 0)
        {
          v37 = *a1;
          if ((*(a1 + 40) & 1) == 0)
          {
            MEMORY[0x245CD2A30](&v80);
            v38 = (a1 + 32);
            if (*(a1 + 40) == 1)
            {
              std::locale::operator=(v38, &v80);
            }

            else
            {
              std::locale::locale(v38, &v80);
              *(a1 + 40) = 1;
            }

            std::locale::~locale(&v80);
          }

          std::locale::locale(&v77, (a1 + 32));
          v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v81, &v78, &v77, v5, a3);
          std::locale::~locale(&v77);
          goto LABEL_74;
        }

        v23 = v79[1];
        v24 = v83[1];
        v25 = v79[1] - v83[1];
        v26 = v82;
        if (v79[1] + v82 - v83[1] < v5 >> 32)
        {
          v27 = *a1;
          if ((v5 & 7) == 4)
          {
            if (v83[1] != v78)
            {
              v28 = *v83[1];
              v29 = *(v27 + 32);
              if (!v29 || (v31 = *v29, v30 = v29[1], v29[1] = v30 + 1, v30 < v31))
              {
                v32 = *v27;
                v33 = *(v27 + 16);
                *(v27 + 16) = v33 + 1;
                *(v32 + v33) = v28;
                if (*(v27 + 16) == *(v27 + 8))
                {
                  v34 = v27;
                  (*(v27 + 24))(v27, 2);
                  v27 = v34;
                }
              }

              ++v24;
              v23 = v79[1];
            }

            v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
            if (!v26)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
            if (!v82)
            {
LABEL_39:
              v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
              v40 = v36;
LABEL_74:
              if (v83[0] >= 0x401uLL)
              {
                operator delete(v83[1]);
              }

              v56 = *MEMORY[0x277D85DE8];
              return v40;
            }
          }

          v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v79[0], v26);
          goto LABEL_70;
        }

        if (v82)
        {
          v39 = v79[0];
          if (v79[0] != v79[1])
          {
            v40 = *a1;
            v41 = v79[0] - v83[1];
            v42 = *(*a1 + 32);
            if (v42)
            {
              v43 = *v42;
              v44 = v42[1];
              if (*v42 - v44 >= v41)
              {
                v45 = v79[0] - v83[1];
              }

              else
              {
                v45 = (*v42 - v44);
              }

              v46 = &v41[v44];
              v42[1] = &v41[v44];
              if (v43 <= v44 || !v45)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v45 = v79[0] - v83[1];
            }

            v62 = *(v40 + 16);
            do
            {
              v63 = *(v40 + 8) - v62;
              if (v63 < (v45 + 1))
              {
                (*(v40 + 24))(v40, v45 + 2);
                v62 = *(v40 + 16);
                v63 = *(v40 + 8) - v62;
              }

              if (v63 >= v45)
              {
                v64 = v45;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                memmove((*v40 + v62), v24, v64);
                v62 = *(v40 + 16);
              }

              v62 += v64;
              *(v40 + 16) = v62;
              v24 += v64;
              v53 = v45 > v63;
              v45 -= v64;
            }

            while (v53);
            v42 = *(v40 + 32);
            if (!v42)
            {
              goto LABEL_115;
            }

            v43 = *v42;
            v46 = v42[1];
LABEL_108:
            v65 = &v46[v26];
            v42[1] = &v46[v26];
            v66 = v43 >= v46;
            v67 = v43 - v46;
            if (v67 == 0 || !v66)
            {
              v70 = v23 - v39;
              goto LABEL_124;
            }

            if (v67 < v26)
            {
              v26 = v67;
            }

            v62 = *(v40 + 16);
            do
            {
LABEL_115:
              v68 = *(v40 + 8) - v62;
              if (v68 < v26 + 1)
              {
                (*(v40 + 24))(v40, v26 + 2);
                v62 = *(v40 + 16);
                v68 = *(v40 + 8) - v62;
              }

              if (v68 >= v26)
              {
                v69 = v26;
              }

              else
              {
                v69 = v68;
              }

              if (v69)
              {
                memset((*v40 + v62), 48, v69);
                v62 = *(v40 + 16);
              }

              v62 += v69;
              *(v40 + 16) = v62;
              v53 = v26 > v68;
              v26 -= v69;
            }

            while (v53);
            v42 = *(v40 + 32);
            v70 = v23 - v39;
            if (!v42)
            {
              do
              {
LABEL_133:
                v73 = *(v40 + 8) - v62;
                if (v73 < v70 + 1)
                {
                  (*(v40 + 24))(v40, v70 + 2);
                  v62 = *(v40 + 16);
                  v73 = *(v40 + 8) - v62;
                }

                if (v73 >= v70)
                {
                  v74 = v70;
                }

                else
                {
                  v74 = v73;
                }

                if (v74)
                {
                  memmove((*v40 + v62), v39, v74);
                  v62 = *(v40 + 16);
                }

                v62 += v74;
                *(v40 + 16) = v62;
                v39 += v74;
                v53 = v70 > v73;
                v70 -= v74;
              }

              while (v53);
              goto LABEL_74;
            }

            v43 = *v42;
            v65 = v42[1];
LABEL_124:
            v71 = v43 - v65;
            if (v43 - v65 >= v70)
            {
              v71 = v70;
            }

            v42[1] = &v65[v70];
            if (v43 <= v65 || v71 == 0)
            {
              goto LABEL_74;
            }

            v62 = *(v40 + 16);
            v70 = v71;
            goto LABEL_133;
          }
        }

        v40 = *a1;
        v47 = *(*a1 + 32);
        if (!v47 || ((v48 = *v47, v49 = v47[1], *v47 - v49 >= v25) ? (v50 = v79[1] - v83[1]) : (v50 = (*v47 - v49)), (v51 = &v25[v49], v47[1] = &v25[v49], v48 > v49) && (v25 = v50) != 0))
        {
          v52 = *(v40 + 16);
          do
          {
            v54 = *(v40 + 8) - v52;
            if (v54 < (v25 + 1))
            {
              (*(v40 + 24))(v40, v25 + 2);
              v52 = *(v40 + 16);
              v54 = *(v40 + 8) - v52;
            }

            if (v54 >= v25)
            {
              v55 = v25;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              memmove((*v40 + v52), v24, v55);
              v52 = *(v40 + 16);
            }

            v52 += v55;
            *(v40 + 16) = v52;
            v24 += v55;
            v53 = v25 > v54;
            v25 -= v55;
          }

          while (v53);
          v47 = *(v40 + 32);
          if (!v47)
          {
            do
            {
LABEL_88:
              v60 = *(v40 + 8) - v52;
              if (v60 < v26 + 1)
              {
                (*(v40 + 24))(v40, v26 + 2);
                v52 = *(v40 + 16);
                v60 = *(v40 + 8) - v52;
              }

              if (v60 >= v26)
              {
                v61 = v26;
              }

              else
              {
                v61 = v60;
              }

              if (v61)
              {
                memset((*v40 + v52), 48, v61);
                v52 = *(v40 + 16);
              }

              v52 += v61;
              *(v40 + 16) = v52;
              v53 = v26 > v60;
              v26 -= v61;
            }

            while (v53);
            goto LABEL_74;
          }

          v48 = *v47;
          v51 = v47[1];
        }

        v58 = v48 - v51;
        if (v48 - v51 >= v26)
        {
          v58 = v26;
        }

        v47[1] = &v51[v26];
        if (v48 <= v51 || v58 == 0)
        {
          goto LABEL_74;
        }

        v52 = *(v40 + 16);
        v26 = v58;
        goto LABEL_88;
      }
    }

    else if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_29;
    }

    if (a3 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v19 = 6;
    }

    if (v79[0] == v79[1])
    {
      v20 = v78 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v79[0] + ~v13;
    if (v22 < v21)
    {
      v82 += v21 - v22;
    }

    goto LABEL_29;
  }

  v75 = *a1;
  v76 = *MEMORY[0x277D85DE8];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v75, a2, a3, a4 < 0.0, 0);
}

void sub_240EA89E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 <= 14)
  {
    if (a5 > 11)
    {
      if (a5 == 12)
      {
        if (a3)
        {
          v24 = *a1;
        }

        else
        {
          v24 = 0xFFFFFFFFLL;
        }

        return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v24, v8, a6);
      }

      else if (a5 == 13)
      {
        v10 = *a1;
        *a6 = v8;
        result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
        *(a6 + 24) = result;
        v12 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v12;
          v13 = result - v8 - 2;
          if (v13 < 4)
          {
LABEL_19:
            *(a6 + 16) = result;
          }

          else
          {
            if (v13 >= 6)
            {
              v13 = 6;
            }

            v14 = -v13;
            while (*(result + v14) != 101)
            {
              if (++v14 == -3)
              {
                goto LABEL_19;
              }
            }

            *(a6 + 16) = result + v14;
          }
        }

        else
        {
          *(a6 + 8) = result;
          *(a6 + 16) = v12;
        }
      }

      else
      {
        v30 = *a1;
        *a6 = v8;
        result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
        *(a6 + 24) = result;
        v31 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v31;
          v32 = result - v8 - 2;
          if (v32 < 4)
          {
LABEL_68:
            v31 = result;
          }

          else
          {
            if (v32 >= 6)
            {
              v32 = 6;
            }

            v33 = -v32;
            while (*(result + v33) != 101)
            {
              if (++v33 == -3)
              {
                goto LABEL_68;
              }
            }

            v31 = (result + v33);
          }
        }

        else
        {
          *(a6 + 8) = result;
        }

        *(a6 + 16) = v31;
        *v31 = 69;
      }

      return result;
    }

    if (!a5)
    {
      if (a3)
      {
        v22 = *a1;
        a1[1] = 0;
        *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
        *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
        *a6 = v8;
        result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
        *(a6 + 24) = result;
        v18 = v8 + 1;
        if (v8 + 1 != result)
        {
          v19 = result - v18;
          if (result - v18 >= 4)
          {
            v23 = 6;
            if (v19 < 6)
            {
              v23 = result - v18;
            }

            v21 = -v23;
            while (*(result + v21) != 101)
            {
              if (++v21 == -3)
              {
                goto LABEL_57;
              }
            }

LABEL_89:
            v46 = result + v21;
            if (*v18 != 46)
            {
              v18 = result;
            }

            *(a6 + 8) = v18;
            *(a6 + 16) = v46;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_72;
      }

      *a6 = v8;
      v36 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
      v37 = v36;
      *(a6 + 24) = v36;
      v38 = v36 - v8;
      if (v36 - v8 < 4)
      {
LABEL_81:
        v40 = v36;
      }

      else
      {
        if (v38 >= 6)
        {
          v38 = 6;
        }

        v39 = -v38;
        while (*(v36 + v39) != 101)
        {
          if (++v39 == -3)
          {
            goto LABEL_81;
          }
        }

        v40 = v36 + v39;
      }

      *(a6 + 16) = v40;
      result = memchr(v8 + 1, 46, v40 - (v8 + 1));
      if (result)
      {
        v47 = result;
      }

      else
      {
        v47 = v40;
      }

      if (v47 == v40)
      {
        v47 = v37;
      }

      *(a6 + 8) = v47;
      return result;
    }

    if (a3)
    {
      v34 = *a1;
      *a6 = v8;
      v35 = (a6 + 24);
      if (v34 != -1)
      {
        result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_84:
        *v35 = result;
        v43 = v8[1];
        v42 = v8 + 1;
        if (v43 == 46)
        {
          v44 = result - 2;
          v45 = memchr((result - 6), 112, 4uLL);
          result = v42;
          if (v45)
          {
            v42 = v45;
          }

          else
          {
            v42 = v44;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v42;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v35 = (a6 + 24);
      v41 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_84;
  }

  if ((a5 - 15) < 2)
  {
    v15 = *a1;
    *a6 = v8;
    result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
    *(a6 + 16) = result;
    *(a6 + 24) = result;
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *(a6 + 8) = result - v16;
    return result;
  }

  if (a5 == 17)
  {
    v17 = *a1;
    a1[1] = 0;
    *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
    *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
    *a6 = v8;
    result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v20 = 6;
        if (v19 < 6)
        {
          v20 = result - v18;
        }

        v21 = -v20;
        while (*(result + v21) != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

LABEL_57:
      *(a6 + 16) = result;
      v28 = result;
      result = memchr(v18, 46, v19);
      if (result)
      {
        v29 = result;
      }

      else
      {
        v29 = v28;
      }

      *(a6 + 8) = v29;
      return result;
    }

LABEL_72:
    *(a6 + 8) = result;
    *(a6 + 16) = result;
    return result;
  }

  v25 = *a1;
  a1[1] = 0;
  *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v8;
  result = MEMORY[0x245CD2AF0](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
  *(a6 + 24) = result;
  v18 = v8 + 1;
  if (v8 + 1 == result)
  {
    goto LABEL_72;
  }

  v19 = result - v18;
  if (result - v18 < 4)
  {
    goto LABEL_57;
  }

  v26 = 6;
  if (v19 < 6)
  {
    v26 = result - v18;
  }

  v27 = -v26;
  while (*(result + v27) != 101)
  {
    if (++v27 == -3)
    {
      goto LABEL_57;
    }
  }

  if (*v18 != 46)
  {
    v18 = result;
  }

  *(a6 + 8) = v18;
  *(a6 + 16) = result + v27;
  *(result + v27) = 69;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x245CD2AF0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *a2, size_t a3, uint64_t *a4)
{
  v6 = *a4;
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v9 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    v10 = 0;
    v11 = a2;
    if (a3 && v9)
    {
      v12 = v9 & 0x7FFFFFFF;
      if (*a2 < 0)
      {
        v14 = a2;
      }

      else
      {
        v13 = 0;
        v11 = &a2[v12];
        v14 = &a2[v12 - 1];
        while (1)
        {
          if (a3 - 1 == v13)
          {
            v10 = a3;
            v11 = &a2[a3];
            goto LABEL_18;
          }

          if (v12 - 1 == v13)
          {
            break;
          }

          v15 = a2[++v13];
          if (v15 < 0)
          {
            v12 = v12 - v13 + 1;
            v14 = &a2[v13 - 1];
            goto LABEL_14;
          }
        }

        if ((*v11 & 0x80000000) == 0)
        {
          v10 = v9 & 0x7FFFFFFF;
          goto LABEL_18;
        }

        v12 = 1;
      }

LABEL_14:
      v10 = v14 - a2 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v14, &a2[a3], v12, 0);
    }

LABEL_18:
    v17 = v11 - a2;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v17, v6, v8, v9, v10);
  }

  return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v6, v8, v7);
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v15[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    *v15 = v7;
    *v13 = v7;
    *&v13[16] = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v13, 170, 19);
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13[19];
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v13, 170, 21);
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 10);
    goto LABEL_19;
  }

  *&v13[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8);
LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v10 = a3;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v15, a7, a1, a9);
  v87 = v10;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x245CD2A30](v93);
    v20 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v20, v93);
    }

    else
    {
      std::locale::locale(v20, v93);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v93);
  }

  std::locale::locale(&v90, (a2 + 32));
  v21 = std::locale::use_facet(&v90, MEMORY[0x277D826C0]);
  v22 = v19 - v15;
  std::locale::~locale(&v90);
  memset(v93, 170, sizeof(v93));
  (v21->__vftable[1].__on_zero_shared)(v93, v21);
  if ((SHIBYTE(v93[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v93[0].__locale_;
    v24 = v93[1].__locale_;
    if (v93[1].__locale_ && v22 > *v93[0].__locale_)
    {
      v86 = v21;
      v25 = v93[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v93[0].__locale_);
LABEL_67:
    v47 = v19;
    v48 = HIDWORD(v10);
    v49 = *a2;
    if ((v12 & 7) == 4)
    {
      v50 = v15 - v9;
      v51 = *(v49 + 32);
      v52 = v15 - v9;
      if (!v51 || ((v54 = *v51, v53 = v51[1], *v51 - v53 >= v50) ? (v52 = v15 - v9) : (v52 = *v51 - v53), (v51[1] = v53 + v50, v54 > v53) ? (v55 = v52 == 0) : (v55 = 1), !v55))
      {
        v63 = *(v49 + 16);
        do
        {
          v65 = *(v49 + 8) - v63;
          if (v65 < v52 + 1)
          {
            (*(v49 + 24))(v49, v52 + 2);
            v63 = *(v49 + 16);
            v65 = *(v49 + 8) - v63;
          }

          if (v65 >= v52)
          {
            v66 = v52;
          }

          else
          {
            v66 = v65;
          }

          if (v66)
          {
            memmove((*v49 + v63), v9, v66);
            v63 = *(v49 + 16);
          }

          v63 += v66;
          *(v49 + 16) = v63;
          v9 += v66;
          v64 = v52 > v65;
          v52 -= v66;
        }

        while (v64);
      }

      LODWORD(v10) = v87;
      v56 = a4;
      v57 = v87 & 0xF8 | 3;
      if (v48 >= v50)
      {
        v58 = v50;
      }

      else
      {
        v58 = v48;
      }

      v48 = (v48 - v58);
      v49 = *a2;
      v59 = 48;
    }

    else
    {
      v56 = a4;
      v59 = BYTE4(a4);
      v57 = v10;
      v15 = v9;
    }

    v60 = v48 << 32;
    v61 = v56 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32);
    if ((v10 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47, v49, v10 & 0xFFFF0700 | v60 | v57, v61, std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47 - v15, v49, v60 | v10 & 0xFFFFFF00 | v57, v61, v47 - v15);
    }
  }

  if (!HIBYTE(v93[2].__locale_) || v22 <= SLOBYTE(v93[0].__locale_))
  {
    goto LABEL_67;
  }

  v86 = v21;
  locale = v93;
  v25 = v93[0].__locale_;
  v24 = v93[1].__locale_;
LABEL_26:
  v85 = *a2;
  v90.__locale_ = 0;
  v91 = 0;
  v92 = 0;
  v26 = v24 + v25;
  if (SHIBYTE(v93[2].__locale_) >= 0)
  {
    v27 = v93 + SHIBYTE(v93[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v22 - v28;
  if (v22 <= v28)
  {
    v68 = 0;
    v67 = v29 + v30;
    v69 = v86;
    goto LABEL_99;
  }

  v84 = v19;
  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v92);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v91 != v34)
      {
        v40 = v90.__locale_;
        v34 = v91;
        goto LABEL_56;
      }

      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v33 = v90.__locale_;
      v89 = locale;
      if (v34 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v38 = 0;
      v37 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v39 = operator new(v37);
      v40 = v39;
      if (v34)
      {
        memmove(v39, v33, v34);
      }

      if (!v38)
      {
        operator delete(v33);
      }

      v90.__locale_ = v40;
      v92 = v37 | 0x8000000000000000;
      locale = v89;
LABEL_56:
      v91 = v34 + 1;
      v42 = v40 + v34;
      *v42 = v29;
      v42[1] = 0;
      if (locale != v31)
      {
        goto LABEL_57;
      }

LABEL_31:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v92) == 22)
    {
      v89 = locale;
      v33 = &v90;
      v34 = 22;
LABEL_38:
      if (v34 + 1 > 2 * v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 2 * v34;
      }

      if ((v35 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v35 | 7) + 1;
      }

      if (v35 >= 0x17)
      {
        v37 = v36;
      }

      else
      {
        v37 = 23;
      }

      v38 = v34 == 22;
      goto LABEL_48;
    }

    HIBYTE(v92) = (HIBYTE(v92) + 1) & 0x7F;
    v41 = &v90 + v32;
    *v41 = v29;
    v41[1] = 0;
    if (locale == v31)
    {
      goto LABEL_31;
    }

LABEL_57:
    v43 = (locale + 1);
    v44 = (locale + 1);
    do
    {
      v45 = *v44++;
      v29 = v45;
      if (v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43 == v31;
      }

      v43 = v44;
    }

    while (!v46);
    locale = (v44 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_95:
  v67 = v29 + v30;
  if (SHIBYTE(v92) < 0)
  {
    v72 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v19) = v84;
    v69 = v86;
    if (v91 == v72)
    {
      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v71 = v90.__locale_;
      v70 = v86;
      if (v72 >= 0x3FFFFFFFFFFFFFF3)
      {
        v77 = 0;
        v76 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
LABEL_103:
        if (v72 + 1 > 2 * v72)
        {
          v74 = v72 + 1;
        }

        else
        {
          v74 = 2 * v72;
        }

        if ((v74 | 7) == 0x17)
        {
          v75 = 25;
        }

        else
        {
          v75 = (v74 | 7) + 1;
        }

        if (v74 >= 0x17)
        {
          v76 = v75;
        }

        else
        {
          v76 = 23;
        }

        v77 = v72 == 22;
      }

      v78 = v76;
      v79 = operator new(v76);
      v73 = v79;
      if (v72)
      {
        memmove(v79, v71, v72);
      }

      if (!v77)
      {
        operator delete(v71);
      }

      v90.__locale_ = v73;
      v92 = v78 | 0x8000000000000000;
      v69 = v70;
    }

    else
    {
      v73 = v90.__locale_;
      v72 = v91;
    }

    v91 = v72 + 1;
  }

  else
  {
    v68 = HIBYTE(v92);
    LODWORD(v19) = v84;
    v69 = v86;
    if (HIBYTE(v92) == 22)
    {
      v70 = v86;
      v71 = &v90;
      v72 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v72 = v68;
    HIBYTE(v92) = (v68 + 1) & 0x7F;
    v73 = &v90;
  }

  v80 = v73 + v72;
  *v80 = v67;
  v80[1] = 0;
  v81 = (v69->__vftable[1].~facet_0)(v69);
  result = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v85, v9, v15, v19, &v90, v81, v87, a4);
  if (SHIBYTE(v92) < 0)
  {
    v82 = result;
    operator delete(v90.__locale_);
    result = v82;
  }

  if (SHIBYTE(v93[2].__locale_) < 0)
  {
    v83 = result;
    operator delete(v93[0].__locale_);
    return v83;
  }

  return result;
}

void sub_240EA99FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void *mipc::router::Client::Client(void *a1, char *a2, dispatch_object_t *a3, uint64_t *a4)
{
  global_queue = *a3;
  if (*a3)
  {
    object = *a3;
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    object = global_queue;
    if (!global_queue)
    {
      goto LABEL_5;
    }
  }

  dispatch_retain(global_queue);
LABEL_5:
  v8 = *a4;
  if (*a4)
  {
    v9 = a4[1];
    v11 = v8;
    v12 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    __p = operator new(0x28uLL);
    v15 = xmmword_240EDF7E0;
    strcpy(__p, "com.apple.telephony.control-msg.xpc");
    abb::link::XpcClientLink::create();
    v9 = v17;
    v11 = v16;
    v12 = v17;
    v16 = 0;
    v17 = 0;
    operator delete(__p);
  }

  abb::router::Client::Client(a1, a2, &object, &v11);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2852C8BE0;
  return a1;
}

void sub_240EA9E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if (v17)
    {
LABEL_6:
      dispatch_release(v17);
      _Unwind_Resume(a1);
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void *mipc::router::SyncClient::SyncClient(void *a1, char *a2, uint64_t *a3)
{
  if (*a3)
  {
    v4 = a3[1];
    v7 = *a3;
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = a2;
    __p = operator new(0x28uLL);
    v10 = xmmword_240EDF7E0;
    strcpy(__p, "com.apple.telephony.control-msg.xpc");
    abb::link::XpcClientLink::create();
    v4 = v12;
    v7 = v11;
    v8 = v12;
    v11 = 0;
    v12 = 0;
    operator delete(__p);
    a2 = v5;
  }

  abb::router::SyncClient::SyncClient(a1, a2, &v7);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  *a1 = &unk_2852C8C00;
  return a1;
}

void sub_240EAA01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void mipc::router::Client::~Client(mipc::router::Client *this)
{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void mipc::router::SyncClient::~SyncClient(mipc::router::SyncClient *this)
{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void abb::router::Client::~Client(abb::router::Client *this)
{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2852C8C50;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void abb::router::Gateway::~Gateway(void **this)
{
  *this = &unk_2852C8C98;
  if (*(this + 503) < 0)
  {
    operator delete(this[60]);
  }

  v2 = this[59];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = this[59];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = this[58];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[56];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this[48];
    v7 = this[49];
    if (v7 != v6)
    {
      goto LABEL_12;
    }

LABEL_66:
    v7 = v6;
    this[52] = 0;
    v14 = 0;
    goto LABEL_20;
  }

  v6 = this[48];
  v7 = this[49];
  if (v7 == v6)
  {
    goto LABEL_66;
  }

LABEL_12:
  v8 = this[51];
  v9 = &v6[v8 / 0x1E];
  v10 = v6[(this[52] + v8) / 0x1E] + 136 * ((this[52] + v8) % 0x1E);
  if (*v9 + 136 * (v8 % 0x1E) != v10)
  {
    v11 = (*v9 + 136 * (v8 % 0x1E));
    do
    {
      v12 = *v11;
      v11 += 17;
      (*v12)();
      if (v11 - *v9 == 4080)
      {
        v13 = v9[1];
        ++v9;
        v11 = v13;
      }
    }

    while (v11 != v10);
    v6 = this[48];
    v7 = this[49];
  }

  this[52] = 0;
  v14 = v7 - v6;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v6);
      v7 = this[49];
      v6 = (this[48] + 8);
      this[48] = v6;
      v14 = v7 - v6;
    }

    while (v14 > 2);
  }

LABEL_20:
  if (v14 == 1)
  {
    v15 = 15;
    goto LABEL_24;
  }

  if (v14 == 2)
  {
    v15 = 30;
LABEL_24:
    this[51] = v15;
  }

  if (v6 != v7)
  {
    do
    {
      v16 = *v6++;
      operator delete(v16);
    }

    while (v6 != v7);
    v18 = this[48];
    v17 = this[49];
    if (v17 != v18)
    {
      this[49] = &v17[(v18 - v17 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  v19 = this[47];
  if (v19)
  {
    operator delete(v19);
  }

  v20 = this[46];
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(this[42]);
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(this[39]);
  if (*(this + 296) == 1)
  {
    v21 = this[36];
    if (v21)
    {
      dispatch_group_leave(v21);
      v22 = this[36];
      if (v22)
      {
        dispatch_release(v22);
      }
    }
  }

  v23 = this[34];
  if (v23 == (this + 31))
  {
    (*(*v23 + 32))(v23);
    v24 = this[30];
    if (v24 != (this + 27))
    {
      goto LABEL_42;
    }

LABEL_50:
    (*(*v24 + 32))(v24);
    v25 = this[26];
    if (v25 != (this + 23))
    {
      goto LABEL_45;
    }

LABEL_51:
    (*(*v25 + 32))(v25);
    v26 = this[21];
    if (!v26)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v23)
  {
    (*(*v23 + 40))(v23);
  }

  v24 = this[30];
  if (v24 == (this + 27))
  {
    goto LABEL_50;
  }

LABEL_42:
  if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v25 = this[26];
  if (v25 == (this + 23))
  {
    goto LABEL_51;
  }

LABEL_45:
  if (v25)
  {
    (*(*v25 + 40))(v25);
  }

  v26 = this[21];
  if (v26)
  {
LABEL_52:
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }

LABEL_54:
  v27 = this[19];
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    if ((*(this + 95) & 0x80000000) == 0)
    {
LABEL_57:
      if ((*(this + 71) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_69;
    }
  }

  else if ((*(this + 95) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(this[9]);
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_58:
    MEMORY[0x245CD26D0](this + 5);
    v28 = this[4];
    if (!v28)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_69:
  operator delete(this[6]);
  MEMORY[0x245CD26D0](this + 5);
  v28 = this[4];
  if (v28)
  {
LABEL_59:
    dispatch_release(v28);
  }

LABEL_60:
  v29 = this[3];
  if (v29)
  {
    dispatch_release(v29);
  }

  v30 = this[2];
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }
}

{
  abb::router::Gateway::~Gateway(this);

  operator delete(v1);
}

uint64_t std::function<void ()(xpc::dict)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void abb::router::Gateway::create(uint64_t a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x1F8uLL);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a1, *(a1 + 8));
  }

  else
  {
    v6 = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  v5 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v5;
  v10 = *(a1 + 80);
  abb::router::Gateway::Gateway(v4, &v6);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abb::router::Gateway>::shared_ptr[abi:ne200100]<abb::router::Gateway,std::shared_ptr<abb::router::Gateway> ctu::SharedSynchronizable<abb::router::Gateway>::make_shared_ptr<abb::router::Gateway>(abb::router::Gateway*)::{lambda(abb::router::Gateway*)#1},0>(a2, v4);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v6.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_240EAAB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Gateway::Gateway(uint64_t a1, const char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::OsLogContext::OsLogContext(__p, a2, "gateway");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("RouterGateway", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v5);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 32) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CD26C0](a1 + 40, v15);
  MEMORY[0x245CD26D0](v15);
  ctu::OsLogContext::~OsLogContext(__p);
  *a1 = &unk_2852C8C98;
  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *v2, *(v2 + 1));
  }

  else
  {
    v6 = *v2;
    *(a1 + 64) = *(v2 + 2);
    *(a1 + 48) = v6;
  }

  if (v2[47] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(v2 + 3), *(v2 + 4));
  }

  else
  {
    v7 = *(v2 + 24);
    *(a1 + 88) = *(v2 + 5);
    *(a1 + 72) = v7;
  }

  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v10 = *(v2 + 5);
  *(a1 + 144) = 0;
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 96) = v8;
  *(a1 + 152) = 0;
  abb::router::TimerService::create((a1 + 160));
  *(a1 + 176) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1 + 312;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  v11 = *(a1 + 96);
  *(a1 + 424) = 0;
  *(a1 + 432) = v11;
  v14 = 3;
  LOWORD(__p[0]) = *"Ind";
  WORD1(__p[0]) = str_2[2];
  std::allocate_shared[abi:ne200100]<abb::router::Metrics,std::allocator<abb::router::Metrics>,std::string,abb::router::MetricConfig const&,0>((a1 + 440), __p, (a1 + 128));
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = 3;
  LOWORD(__p[0]) = *"Req";
  WORD1(__p[0]) = str[2];
  std::allocate_shared[abi:ne200100]<abb::router::Metrics,std::allocator<abb::router::Metrics>,std::string,abb::router::MetricConfig const&,0>((a1 + 456), __p, (a1 + 128));
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return a1;
}

void sub_240EAADF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 71) < 0)
  {
    operator delete(*v15);
    MEMORY[0x245CD26D0](v14 + 40);
    ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable((v14 + 8));
    _Unwind_Resume(a1);
  }

  MEMORY[0x245CD26D0](v14 + 40);
  ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable((v14 + 8));
  _Unwind_Resume(a1);
}

void abb::router::Gateway::registerTransport(uint64_t a1, __int128 *a2)
{
  v5 = a1;
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router7GatewayEE20execute_wrapped_syncIZNS3_17registerTransportENSt3__110shared_ptrINS2_9TransportEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  block[3] = &__block_descriptor_tmp_61;
  block[4] = a1 + 8;
  block[5] = &v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
    v4 = *(&v6 + 1);
    if (!*(&v6 + 1))
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v2, block);
    v4 = *(&v6 + 1);
    if (!*(&v6 + 1))
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }
}

void abb::router::Gateway::init(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::init(dispatch::group_session)::$_0>(abb::router::Gateway::init(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::init(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::init(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::start(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::start(dispatch::group_session)::$_0>(abb::router::Gateway::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::stop(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::stop(dispatch::group_session)::$_0>(abb::router::Gateway::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::abort(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::abort(dispatch::group_session)::$_0>(abb::router::Gateway::abort(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::abort(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::abort(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::shutdown(dispatch::group_session)::$_0>(abb::router::Gateway::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::sleep(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::sleep(dispatch::group_session)::$_0>(abb::router::Gateway::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::wakeup(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::wakeup(dispatch::group_session)::$_0>(abb::router::Gateway::wakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::wakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::wakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Gateway::statedump(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::statedump(dispatch::group_session)::$_0>(abb::router::Gateway::statedump(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::statedump(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::statedump(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t abb::router::Gateway::registerErrorHandler(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>(abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EABB18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t abb::router::Gateway::registerMetricSummaryHandler(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EABD6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t abb::router::Gateway::registerMetricStreamHandler(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EABFC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::router::Gateway::addUserClient(uint64_t a1, int a2, __int128 *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router7GatewayEE20execute_wrapped_syncIZNS3_13addUserClientEjNSt3__110shared_ptrINS2_25GatewayClientDelegateBaseEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  block[3] = &__block_descriptor_tmp_63;
  block[4] = a1 + 8;
  block[5] = &v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
    v5 = *(&v8 + 1);
    if (!*(&v8 + 1))
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v3, block);
    v5 = *(&v8 + 1);
    if (!*(&v8 + 1))
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

void abb::router::Gateway::removeUserClient(abb::router::Gateway *this, int a2, char a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = this;
  v10[2] = a2;
  *(v10 + 12) = a3;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0>(abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void abb::router::Gateway::regClientIndications(void *a1, NSObject **a2, int a3, void *a4, void *a5)
{
  v6 = a4 + 1;
  v7 = a4[1];
  v28 = *a4;
  v29 = v7;
  v30 = a4[2];
  if (v30)
  {
    v7[2] = &v29;
    *a4 = v6;
    *v6 = 0;
    a4[2] = 0;
  }

  else
  {
    v28 = &v29;
  }

  v8 = a5 + 1;
  v9 = a5[1];
  v31 = *a5;
  v32 = v9;
  v33 = a5[2];
  if (v33)
  {
    v9[2] = &v32;
    *a5 = v8;
    *v8 = 0;
    a5[2] = 0;
    v10 = *a2;
    group = v10;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = &v32;
    v10 = *a2;
    group = v10;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  dispatch_retain(v10);
  if (group)
  {
    dispatch_group_enter(group);
  }

LABEL_10:
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x48uLL);
  v16 = v15;
  *v15 = a1;
  v15[2] = a3;
  v17 = v29;
  *(v15 + 2) = v28;
  *(v15 + 3) = v17;
  v18 = (v15 + 6);
  v19 = v30;
  *(v15 + 4) = v30;
  if (v19)
  {
    v17[2] = v18;
    v28 = &v29;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    *(v15 + 2) = v18;
  }

  v21 = v31;
  v20 = v32;
  *(v15 + 6) = v32;
  v22 = (v15 + 12);
  *(v15 + 5) = v21;
  v23 = v33;
  *(v15 + 7) = v33;
  if (v23)
  {
    v20[2] = v22;
    v31 = &v32;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    *(v15 + 5) = v22;
  }

  *(v15 + 8) = group;
  group = 0;
  v24 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v16;
  v25[1] = v12;
  v25[2] = v14;
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0>(abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0,std::default_delete<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__tree<unsigned int>::destroy(&v31, v32);
  std::__tree<unsigned int>::destroy(&v28, v29);
}

void abb::router::Gateway::sendMessage(void *a1, uint64_t a2)
{
  abb::router::Message::Message(v11, a2);
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x90uLL);
  *v7 = a1;
  abb::router::Message::Message((v7 + 1), v11);
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::sendMessage(abb::router::Message)::$_0>(abb::router::Gateway::sendMessage(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::sendMessage(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::sendMessage(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  abb::router::Message::~Message(v11);
}

void abb::router::Gateway::messageTimeout(void *a1, uint64_t a2)
{
  abb::router::Message::Message(v11, a2);
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x90uLL);
  *v7 = a1;
  abb::router::Message::Message((v7 + 1), v11);
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::messageTimeout(abb::router::Message)::$_0>(abb::router::Gateway::messageTimeout(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::messageTimeout(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::messageTimeout(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  abb::router::Message::~Message(v11);
}

void abb::router::Gateway::updateFlowControl(void *a1, uint64_t a2, uint64_t a3)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13[0] = 0;
  v14 = 0;
  if (*(a3 + 136) == 1)
  {
    abb::router::Message::Message(v13, a3);
    v14 = 1;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0xA0uLL);
  v9 = v8;
  *v8 = v12;
  v8[16] = 0;
  v8[152] = 0;
  if (v14 == 1)
  {
    abb::router::Message::Message((v8 + 16), v13);
    v9[152] = 1;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0>(abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0,std::default_delete<abb::router::Gateway::updateFlowControl(unsigned long,std::optional<abb::router::Message const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v14 != 1)
    {
      return;
    }

LABEL_11:
    abb::router::Message::~Message(v13);
    return;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (v14 == 1)
  {
    goto LABEL_11;
  }
}

void sub_240EAC7B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (*(v28 + 152) == 1)
  {
    abb::router::Message::~Message(v29);
    __clang_call_terminate(a1);
  }

  __clang_call_terminate(a1);
}

void abb::router::Gateway::registerTransport_sync(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(a1 + 152);
  *(a1 + 144) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void abb::router::Gateway::notifyReady_sync(abb::router::Gateway *this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMipcRouterServerReadyNotification", 0, 0, 1u);
}

void abb::router::Gateway::init_sync(uint64_t a1)
{
  if (*(a1 + 176) - 1 >= 9)
  {
    v6 = v1;
    v7 = v2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Initializing gateway", v5, 2u);
    }

    abb::router::Gateway::setStatus_sync(a1, 1u);
  }
}

void abb::router::Gateway::setStatus_sync(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 176);
  *(a1 + 176) = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 0xA)
    {
      v5 = "(unknown)";
      if (a2 > 0xA)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = off_278CBAF60[v3];
      if (a2 > 0xA)
      {
LABEL_4:
        v6 = "(unknown)";
LABEL_7:
        v8 = 136315394;
        v9 = v5;
        v10 = 2080;
        v11 = v6;
        _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Gateway status changing from %s -> %s", &v8, 0x16u);
        goto LABEL_8;
      }
    }

    v6 = off_278CBAF60[a2];
    goto LABEL_7;
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

void abb::router::Gateway::start_sync(uint64_t a1, dispatch_object_t *a2)
{
  v4 = *(a1 + 176);
  if (v4 <= 0xA)
  {
    if (((1 << v4) & 0x7AC) != 0)
    {
      return;
    }

    if (*(a1 + 176))
    {
      if (v4 == 4)
      {
        v5 = *a2;
        v27 = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v5);
          abb::router::Gateway::trackPendingActions_sync(a1, 2, &v27);
          dispatch_group_leave(v5);

          dispatch_release(v5);
        }

        else
        {
          abb::router::Gateway::trackPendingActions_sync(a1, 2, &v27);
        }

        return;
      }
    }

    else
    {
      v6 = *a2;
      if (*a2)
      {
        dispatch_retain(*a2);
        dispatch_group_enter(v6);
        if (*(a1 + 176) - 1 < 9)
        {
          goto LABEL_15;
        }
      }

      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Initializing gateway", v23, 2u);
      }

      abb::router::Gateway::setStatus_sync(a1, 1u);
      if (v6)
      {
LABEL_15:
        dispatch_group_leave(v6);
        dispatch_release(v6);
      }
    }
  }

  v8 = *(a1 + 96);
  v25[0] = 0;
  v26 = 0;
  abb::router::Gateway::updateFlowControl_sync(a1, v8, v25);
  if (v26 == 1)
  {
    abb::router::Message::~Message(v25);
  }

  v9 = abb::router::Gateway::openTransport_sync(a1);
  v10 = *(a1 + 40);
  if (v9)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23[0]) = 0;
      _os_log_impl(&dword_240E91000, v10, OS_LOG_TYPE_DEFAULT, "#I Starting gateway", v23, 2u);
    }

    abb::router::Gateway::setStatus_sync(a1, 2u);
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23[0]) = 0;
      _os_log_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEFAULT, "#I Preparing gateway open request", v23, 2u);
    }

    *(a1 + 424) = 0;
    v12 = dispatch_group_create();
    v13 = v12;
    if (v12)
    {
      dispatch_retain(v12);
      dispatch_group_enter(v13);
      dispatch_release(v13);
      v14 = *(a1 + 360);
      group = v13;
      dispatch_retain(v13);
      dispatch_group_enter(v13);
    }

    else
    {
      v14 = *(a1 + 360);
      group = 0;
    }

    (*(*v14 + 72))(v14, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    v15 = *(a1 + 16);
    if (!v15 || (v16 = *(a1 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v17;
    p_shared_weak_owners = &v17->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v18);
    }

    v23[0] = a1;
    v23[1] = v16;
    v23[2] = v18;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v20 = *a2;
    v23[3] = v20;
    if (v20)
    {
      dispatch_retain(v20);
      dispatch_group_enter(v20);
    }

    v21 = *(a1 + 24);
    v22 = operator new(0x20uLL);
    *v22 = a1;
    v22[1] = v16;
    v22[2] = v18;
    v22[3] = v20;
    dispatch_group_notify_f(v13, v21, v22, dispatch::detail::group_notify<abb::router::Gateway::start_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::start_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    std::__shared_weak_count::__release_weak(v18);
    if (v13)
    {
      dispatch_group_leave(v13);
      dispatch_release(v13);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23[0]) = 0;
      _os_log_error_impl(&dword_240E91000, v10, OS_LOG_TYPE_ERROR, "Starting gateway failed due to transport error", v23, 2u);
    }

    abb::router::Gateway::setStatus_sync(a1, 0xAu);
  }
}

void sub_240EACE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, dispatch_group_t group, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0::~$_0(&a9);
  std::__shared_weak_count::__release_weak(v32);
  if (v31)
  {
    dispatch_group_leave(v31);
    dispatch_release(v31);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void abb::router::Gateway::trackPendingActions_sync(uint64_t a1, char a2, NSObject **a3)
{
  if (*(a1 + 296) != 1 || (v6 = *(a1 + 40), !os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    v7 = *a3;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *v10 = 0;
  _os_log_error_impl(&dword_240E91000, v6, OS_LOG_TYPE_ERROR, "Very unusual to have more than 1 pending action from server", v10, 2u);
  v7 = *a3;
  if (v7)
  {
LABEL_4:
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

LABEL_5:
  v8 = *(a1 + 296);
  *(a1 + 280) = a2;
  if (v8 == 1)
  {
    v9 = *(a1 + 288);
    *(a1 + 288) = v7;
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }
  }

  else
  {
    *(a1 + 288) = v7;
    *(a1 + 296) = 1;
  }
}

void abb::router::Gateway::updateFlowControl_sync(uint64_t a1, void *a2, char *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 432);
  if (a3[136] != 1)
  {
    goto LABEL_61;
  }

  v7 = *(a1 + 424) + 1;
  *(a1 + 432) = v7;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a3);
    v9 = a3 + 112;
    if (a3[135] < 0)
    {
      v9 = *v9;
    }

    *buf = 134218242;
    *&buf[4] = v7;
    v56 = 2080;
    v57 = v9;
    _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Skip queue to send this message; use temporary flow-control [%zu]; %s", buf, 0x16u);
  }

  v10 = (a1 + 408);
  v11 = *(a1 + 408);
  if (!v11)
  {
    v13 = *(a1 + 384);
    v12 = *(a1 + 392);
    v14 = 30 * ((v12 - v13) >> 3) - 1;
    if (v12 == v13)
    {
      v14 = 0;
    }

    if ((v14 - *(a1 + 416)) >= 0x1E)
    {
      *(a1 + 408) = 30;
      *buf = *(v12 - 1);
      *(a1 + 392) = v12 - 8;
      std::__split_buffer<abb::router::Message *>::emplace_front<abb::router::Message *>(a1 + 376, buf);
LABEL_55:
      v11 = v10->i64[0];
      goto LABEL_56;
    }

    v15 = *(a1 + 400);
    v16 = *(a1 + 376);
    if (v12 - v13 < (v15 - v16))
    {
      if (v13 == v16)
      {
        *buf = operator new(0xFF0uLL);
        std::__split_buffer<abb::router::Message *>::emplace_back<abb::router::Message *&>((a1 + 376), buf);
        v44 = *(a1 + 392);
        *buf = *(v44 - 8);
        *(a1 + 392) = v44 - 8;
      }

      else
      {
        *buf = operator new(0xFF0uLL);
      }

      std::__split_buffer<abb::router::Message *>::emplace_front<abb::router::Message *>(a1 + 376, buf);
      if (*(a1 + 392) - *(a1 + 384) == 8)
      {
        v10->i64[0] = 15;
      }

      else
      {
        v10->i64[0] += 30;
      }

      goto LABEL_55;
    }

    if (v15 == v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v15 - v16) >> 2;
    }

    if (v17 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = operator new(8 * v17);
    v19 = operator new(0xFF0uLL);
    v20 = v19;
    v54 = v5;
    if (v17)
    {
      v21 = &v18[8 * v17];
      *v18 = v19;
      v22 = v18 + 8;
      if (v13 != v12)
      {
LABEL_20:
        v23 = v18;
        while (1)
        {
          if (v22 == v21)
          {
            if (v23 <= v18)
            {
              if (v22 == v18)
              {
                v27 = 1;
              }

              else
              {
                v27 = (v22 - v18) >> 2;
              }

              if (v27 >> 61)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v28 = operator new(8 * v27);
              v29 = v28;
              v30 = v27 >> 2;
              v24 = &v28[8 * (v27 >> 2)];
              v32 = v22 - v23;
              v31 = v22 == v23;
              v22 = v24;
              if (!v31)
              {
                v22 = &v24[v32];
                v33 = v32 - 8;
                if (v33 < 0x18 || (v34 = 8 * v30, (&v28[8 * v30] - v23) < 0x20))
                {
                  v35 = &v28[8 * (v27 >> 2)];
                  v36 = v23;
                  goto LABEL_36;
                }

                v38 = (v33 >> 3) + 1;
                v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
                v35 = &v24[v39];
                v36 = &v23[v39];
                v40 = (v23 + 16);
                v41 = &v28[v34 + 16];
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
                if (v38 != (v38 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_36:
                    v37 = *v36;
                    v36 += 8;
                    *v35 = v37;
                    v35 += 8;
                  }

                  while (v35 != v22);
                }
              }

              v21 = &v28[8 * v27];
              if (v18)
              {
                operator delete(v18);
              }

              v18 = v29;
              goto LABEL_22;
            }

            v26 = (((v23 - v18) >> 3) + 1 + ((((v23 - v18) >> 3) + 1) >> 63)) >> 1;
            v24 = &v23[-8 * v26];
            if (v22 != v23)
            {
              memmove(&v23[-8 * v26], v23, v22 - v23);
            }

            v22 = &v24[v22 - v23];
          }

          else
          {
            v24 = v23;
          }

LABEL_22:
          v25 = *v13;
          v13 += 8;
          *v22 = v25;
          v22 += 8;
          v23 = v24;
          if (v13 == *(a1 + 392))
          {
            goto LABEL_50;
          }
        }
      }
    }

    else
    {
      v45 = operator new(8uLL);
      v21 = v45 + 8;
      operator delete(v18);
      v13 = *(a1 + 384);
      v46 = *(a1 + 392);
      v18 = v45;
      *v45 = v20;
      v22 = v45 + 8;
      if (v13 != v46)
      {
        goto LABEL_20;
      }
    }

    v24 = v18;
LABEL_50:
    v47 = *(a1 + 376);
    *(a1 + 376) = v18;
    *(a1 + 384) = v24;
    *(a1 + 392) = v22;
    *(a1 + 400) = v21;
    if (v22 - v24 == 8)
    {
      v48 = 15;
      v10 = (a1 + 408);
      v5 = v54;
    }

    else
    {
      v10 = (a1 + 408);
      v5 = v54;
      v48 = *(a1 + 408) + 30;
    }

    v10->i64[0] = v48;
    if (v47)
    {
      operator delete(v47);
    }

    goto LABEL_55;
  }

LABEL_56:
  v49 = *(a1 + 384);
  v50 = (v49 + 8 * (v11 / 0x1E));
  v51 = *v50 + 136 * (v11 % 0x1E);
  if (*(a1 + 392) == v49)
  {
    v51 = 0;
  }

  if (v51 == *v50)
  {
    v51 = *(v50 - 1) + 4080;
  }

  abb::router::Message::Message(v51 - 136, a3);
  *v10 = vaddq_s64(*v10, xmmword_240EDF870);
  abb::router::Gateway::trySendingMessage_sync(a1);
LABEL_61:
  v52 = *(a1 + 40);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v5;
    v56 = 2048;
    v57 = a2;
    _os_log_impl(&dword_240E91000, v52, OS_LOG_TYPE_DEFAULT, "#I Update flow-control from %zu -> %zu", buf, 0x16u);
  }

  *(a1 + 432) = a2;
  v53 = *MEMORY[0x277D85DE8];
}

void sub_240EAD474(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_240EAD4A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abb::router::Gateway::openTransport_sync(abb::router::Gateway *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!*(this + 18))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempting to start router server without a valid transport");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Opening router transport", buf, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v3;
  v27 = v3;
  v4 = *(this + 2);
  if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = operator new(0x20uLL);
  *v8 = &unk_2852C8FD8;
  v8[1] = this;
  v8[2] = v5;
  v8[3] = v7;
  *(&v27 + 1) = v8;
  v9 = *(this + 18);
  v10 = operator new(0x20uLL);
  *v10 = &unk_2852C8FD8;
  v10[1] = this;
  v10[2] = v5;
  v10[3] = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = v10;
  v11 = *(this + 3);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = (*(*v9 + 16))(v9, v24, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
    v13 = *(this + 5);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_22:
    if (v14)
    {
      *v22 = 0;
      _os_log_impl(&dword_240E91000, v13, OS_LOG_TYPE_DEFAULT, "#I Failed to open router transport", v22, 2u);
    }

    v16 = operator new(0x20uLL);
    v20 = v16;
    v21 = xmmword_240EDF880;
    strcpy(v16, "Failed to open router transport");
    abb::router::Gateway::reportError_sync(this, 0, &v20);
    operator delete(v16);
    v15 = *(&v27 + 1);
    if (*(&v27 + 1) != buf)
    {
      goto LABEL_19;
    }

LABEL_25:
    (*(*v15 + 32))(v15);
    goto LABEL_26;
  }

  if (v25)
  {
    (*(*v25 + 40))();
  }

  v13 = *(this + 5);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v14)
  {
    *v22 = 0;
    _os_log_impl(&dword_240E91000, v13, OS_LOG_TYPE_DEFAULT, "#I Router transport is open", v22, 2u);
  }

  v15 = *(&v27 + 1);
  if (*(&v27 + 1) == buf)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_240EAD870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  operator delete(v19);
  std::function<void ()(unsigned char const*,unsigned long)>::~function(&a19);
  _Unwind_Resume(a1);
}

void sub_240EAD8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::function<void ()(unsigned char const*,unsigned long)>::~function(&a15);
  std::function<void ()(unsigned char const*,unsigned long)>::~function(&a19);
  _Unwind_Resume(a1);
}

void sub_240EAD8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<void ()(unsigned char const*,unsigned long)>::~function(va);
  _Unwind_Resume(a1);
}

void abb::router::Gateway::abort_sync(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 176);
  v3 = v2 > 0xA;
  v4 = (1 << v2) & 0x463;
  if (v3 || v4 == 0)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Aborting gateway", buf, 2u);
    }

    abb::router::Gateway::setStatus_sync(a1, 5u);
    abb::router::Gateway::closeTransport_sync(a1);
    v9 = *a2;
    v10 = v9;
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(v9);
    }

    abb::router::Gateway::stop_sync(a1, &v10);
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }
  }
}

void sub_240EAD9E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL abb::router::Gateway::closeTransport_sync(abb::router::Gateway *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEBUG, "#D Closing router transport", buf, 2u);
    v3 = *(this + 18);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(this + 18);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if ((*(*v3 + 40))(v3))
  {
    v4 = (*(**(this + 18) + 24))(*(this + 18));
    v5 = *(this + 5);
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Router transport is closed", v8, 2u);
        return 1;
      }

      return 1;
    }

    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v9 = 0;
      _os_log_error_impl(&dword_240E91000, v5, OS_LOG_TYPE_ERROR, "Failed to close router transport", v9, 2u);
      return 0;
    }

    return result;
  }

LABEL_10:
  v7 = *(this + 5);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    return 1;
  }

  *v10 = 0;
  _os_log_debug_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEBUG, "#D Router transport is already closed", v10, 2u);
  return 1;
}

void abb::router::Gateway::stop_sync(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 176);
  if (v3 > 0xA)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x453) != 0)
  {
    return;
  }

  if (((1 << v3) & 0x384) != 0)
  {
    v44 = *a2;
    v4 = v44;
    if (v44)
    {
      dispatch_retain(v44);
      dispatch_group_enter(v44);
      abb::router::Gateway::trackPendingActions_sync(a1, 4, &v44);
      dispatch_group_leave(v4);

      dispatch_release(v4);
    }

    else
    {
      abb::router::Gateway::trackPendingActions_sync(a1, 4, &v44);
    }

    return;
  }

  if (v3 != 5)
  {
LABEL_9:
    v5 = a2;
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Stopping gateway", &v33, 2u);
    }

    abb::router::Gateway::setStatus_sync(a1, 4u);
    a2 = v5;
  }

  v7 = a2;
  v8 = dispatch_group_create();
  v9 = operator new(0x38uLL);
  v10 = v9;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_2852C8F88;
  v9[3] = v8;
  v11 = (v9 + 3);
  if (!v8)
  {
    v9[4] = 0;
    v9[5] = 0;
    v9[6] = 0;
    v42 = (v9 + 3);
    v43 = v9;
    v12 = *(a1 + 304);
    v13 = (a1 + 312);
    if (v12 != (a1 + 312))
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  dispatch_retain(v8);
  v10[1].__shared_owners_ = 0;
  v10[1].__shared_weak_owners_ = 0;
  v10[2].__vftable = 0;
  dispatch_release(v8);
  v42 = v11;
  v43 = v10;
  v12 = *(a1 + 304);
  v13 = (a1 + 312);
  if (v12 != (a1 + 312))
  {
    do
    {
LABEL_31:
      v27 = v12[5];
      (*(*v27 + 16))(__p, v27);
      ctu::TrackedGroup::fork(&group, v11, __p);
      (*(*v27 + 80))(v27, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v40 < 0)
      {
        operator delete(__p[0]);
        v28 = v12[1];
        if (v28)
        {
          do
          {
LABEL_38:
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
          goto LABEL_30;
        }
      }

      else
      {
        v28 = v12[1];
        if (v28)
        {
          goto LABEL_38;
        }
      }

      do
      {
        v29 = v12[2];
        v30 = *v29 == v12;
        v12 = v29;
      }

      while (!v30);
LABEL_30:
      v12 = v29;
    }

    while (v29 != v13);
  }

LABEL_17:
  abb::router::Gateway::trySendingMessage_sync(a1);
  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_240E91000, v14, OS_LOG_TYPE_DEFAULT, "#I Notified all clients to stop", &v33, 2u);
  }

  v15 = *(a1 + 16);
  if (!v15 || (v16 = *(a1 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  p_shared_weak_owners = &v17->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v20 = v7;
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
    v20 = v7;
  }

  v21 = v42;
  v33 = a1;
  v34 = v16;
  v35 = v18;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v22 = *v20;
  v36 = v22;
  if (v22)
  {
    dispatch_retain(v22);
    dispatch_group_enter(v22);
  }

  v23 = v43;
  v37 = v21;
  v38 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *v21;
  v25 = *(a1 + 24);
  v26 = operator new(0x30uLL);
  *v26 = a1;
  v26[1] = v16;
  v34 = 0;
  v35 = 0;
  v26[2] = v18;
  v26[3] = v22;
  v36 = 0;
  v26[4] = v21;
  v26[5] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v45 = 0;
    dispatch_group_notify_f(v24, v25, v26, dispatch::detail::group_notify<abb::router::Gateway::stop_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::stop_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v45);
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  else
  {
    v45 = 0;
    dispatch_group_notify_f(v24, v25, v26, dispatch::detail::group_notify<abb::router::Gateway::stop_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::stop_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    std::unique_ptr<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::start_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v45);
  }

  v31 = v36;
  if (v36)
  {
    dispatch_group_leave(v36);
    dispatch_release(v31);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  std::__shared_weak_count::__release_weak(v18);
  v32 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }
}

void sub_240EAE0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, dispatch_group_t group, char a22)
{
  abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::~$_0(&a9);
  std::__shared_weak_count::__release_weak(v22);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

__int128 *ctu::TrackedGroup::fork(NSObject **a1, uint64_t a2, uint64_t *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v40[0] = a3[1];
  *(v40 + 7) = *(a3 + 15);
  v6 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *object = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = dispatch_group_create();
  v8 = v7;
  *a1 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v8);
    dispatch_release(v8);
  }

  v9 = operator new(0x30uLL);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_2852C8E98;
  v9[3] = v5;
  v9[4] = v40[0];
  *(v9 + 39) = *(v40 + 7);
  *(v9 + 47) = v6;
  v40[0] = 0;
  *(v40 + 7) = 0;
  *&v36 = v9 + 3;
  *(&v36 + 1) = v9;
  v10 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v10);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v12 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v41 = v9 + 3;
  v42 = v9;
  atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  v43 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  v47 = 0;
  v44 = 0;
  v45 = 0;
  object[0] = 0;
  object[1] = 0;
  *(&v39 + 1) = 0;
  v13 = operator new(0x48uLL);
  *v13 = v9 + 3;
  v13[1] = v9;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v10;
  v14 = v47;
  if (v47)
  {
    if (v47 == v46)
    {
      v13[8] = v13 + 5;
      (*(*v14 + 24))(v14);
    }

    else
    {
      v13[8] = v47;
      v47 = 0;
    }
  }

  else
  {
    v13[8] = 0;
  }

  v44 = 0;
  v45 = 0;
  v15 = v47;
  v47 = 0;
  if (v15 == v46)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  dispatch_group_notify_f(v8, v12, v13, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(&v41);
  if (v12)
  {
    dispatch_release(v12);
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16 < v17)
  {
    *v16 = v36;
    v18 = *(&v36 + 1);
    *(v16 + 1) = *(&v36 + 1);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = v16 + 16;
    goto LABEL_36;
  }

  v20 = *(a2 + 8);
  v21 = v16 - v20;
  v22 = (v16 - v20) >> 4;
  v23 = v22 + 1;
  if ((v22 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v24 = v17 - v20;
  if (v24 >> 3 > v23)
  {
    v23 = v24 >> 3;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF0)
  {
    v25 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = operator new(16 * v25);
    v27 = &v26[16 * v22];
    v28 = &v26[16 * v25];
    v29 = *(&v36 + 1);
    *v27 = v36;
    v30 = v29;
    if (!v29)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v27 = (16 * v22);
  v28 = 0;
  v35 = *(&v36 + 1);
  *(16 * v22) = v36;
  v30 = v35;
  if (v35)
  {
LABEL_33:
    atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    v20 = *(a2 + 8);
    v21 = *(a2 + 16) - v20;
    v22 = v21 >> 4;
  }

LABEL_34:
  v19 = v27 + 16;
  v31 = &v27[-16 * v22];
  memcpy(v31, v20, v21);
  *(a2 + 8) = v31;
  *(a2 + 16) = v19;
  *(a2 + 24) = v28;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_36:
  *(a2 + 16) = v19;
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v36 + 1) + 16))(*(&v36 + 1));
    std::__shared_weak_count::__release_weak(*(&v36 + 1));
    v32 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_43;
    }
  }

  if (object[0])
  {
    v41 = object[1];
    *&v36 = object[0];
    (*(*v32 + 48))(v32, &v41, &v36);
  }

LABEL_43:
  if (object[1])
  {
    os_release(object[1]);
  }

  result = *(&v39 + 1);
  object[1] = 0;
  *(&v39 + 1) = 0;
  if (result == &v38)
  {
    (*(*result + 32))(result);
    result = *(&v39 + 1);
    object[0] = 0;
    if (*(&v39 + 1) != &v38)
    {
      goto LABEL_48;
    }

LABEL_51:
    result = (*(*result + 32))(result);
    goto LABEL_52;
  }

  if (!result)
  {
    goto LABEL_52;
  }

  (*(*result + 40))(result);
  result = *(&v39 + 1);
  object[0] = 0;
  if (*(&v39 + 1) == &v38)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_52:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EAE688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Gateway::trySendingMessage_sync(abb::router::Gateway *this)
{
  v38 = 0;
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 176);
  v3 = 1;
  if (v2 <= 0xA)
  {
    if (((1 << v2) & 0x471) != 0)
    {
      v3 = 0;
      v38 = 1;
    }

    else if (((1 << v2) & 0x102) != 0)
    {
      goto LABEL_48;
    }
  }

  if (!*(this + 52))
  {
    v34 = *(this + 5);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_240E91000, v34, OS_LOG_TYPE_DEBUG, "#D Pending queue is empty; nothing to send", buf, 2u);
      v36 = *MEMORY[0x277D85DE8];
      return;
    }

    goto LABEL_48;
  }

  v37 = *(this + 52);
  v4 = 0;
  v5 = (this + 408);
  v6 = (this + 312);
  while ((v38 & 1) != 0 || *(this + 53) < *(this + 54))
  {
    v8 = *(*(this + 48) + 8 * (*(this + 51) / 0x1EuLL)) + 136 * (*(this + 51) % 0x1EuLL);
    v9 = *(v8 + 8);
    v10 = *v9;
    v11 = *(*v9 + 13);
    if (v3)
    {
      v12 = *(this + 18);
      *buf = *(v8 + 8);
      v13 = *(v8 + 16);
      *&buf[8] = v13;
      if (v13)
      {
        v14 = 1;
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        v10 = *v9;
        v9 = *(v8 + 8);
        v15 = *(v8 + 16);
        v43 = v9;
        v44 = v15;
        if (v15)
        {
          v14 = 0;
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v15 = 0;
        v43 = v9;
        v44 = 0;
        v14 = 1;
      }

      v16 = (*(*v12 + 32))(v12, v10, v9[1] - *v9, 0);
      if ((v14 & 1) != 0 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v18 = *&buf[8];
        if (*&buf[8])
        {
LABEL_19:
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }
        }
      }

      else
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v18 = *&buf[8];
        if (*&buf[8])
        {
          goto LABEL_19;
        }
      }

      v19 = *(this + 5);
      if (v16)
      {
        abb::router::Message::Message(v42, v8);
        v20 = v42;
        abb::router::LOG_WITH_MESSAGE_PAYLOAD(v19, "Sent request to transport", v42);
      }

      else
      {
        abb::router::Message::Message(v41, v8);
        v20 = v41;
        abb::router::LOG_WITH_MESSAGE_PAYLOAD(v19, "Failed to send request to transport", v41);
      }

      abb::router::Message::~Message(v20);
      v17 = *v6;
      if (!*v6)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    v16 = 0;
    v17 = *v6;
    if (!*v6)
    {
      goto LABEL_33;
    }

LABEL_26:
    v21 = (this + 312);
    do
    {
      v22 = *(v17 + 8);
      v23 = v22 >= v11;
      v24 = v22 < v11;
      if (v23)
      {
        v21 = v17;
      }

      v17 = *&v17[8 * v24];
    }

    while (v17);
    if (v21 != v6 && *(v21 + 8) <= v11)
    {
      v27 = v21[5];
      abb::router::Message::Message(v40, v8);
      v26 = v40;
      (*(*v27 + 48))(v27, v40, v16 ^ 1u);
      goto LABEL_36;
    }

LABEL_33:
    if (*(this + 88) == v11)
    {
      v25 = *(this + 45);
      abb::router::Message::Message(v39, v8);
      v26 = v39;
      (*(*v25 + 48))(v25, v39, v16 ^ 1u);
LABEL_36:
      abb::router::Message::~Message(v26);
    }

    if (v16)
    {
      ++*(this + 53);
    }

    (**(*(*(this + 48) + 8 * (*(this + 51) / 0x1EuLL)) + 136 * (*(this + 51) % 0x1EuLL)))();
    v28 = vaddq_s64(*v5, xmmword_240EDF890);
    *v5 = v28;
    if (v28.i64[0] >= 0x3CuLL)
    {
      operator delete(**(this + 48));
      *(this + 48) += 8;
      v7 = *(this + 52);
      *(this + 51) -= 30;
      ++v4;
      if (!v7)
      {
        break;
      }
    }

    else
    {
      ++v4;
      if (!v28.i64[1])
      {
        break;
      }
    }
  }

  std::deque<abb::router::Message>::shrink_to_fit(this + 47);
  v29 = *(this + 5);
  if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
LABEL_48:
    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v30 = *(this + 53);
  v31 = *(this + 54);
  v32 = "";
  if (v38)
  {
    v32 = "skipped";
  }

  *buf = 134219010;
  *&buf[4] = v4;
  *&buf[12] = 2048;
  *&buf[14] = v37;
  v46 = 2048;
  v47 = v30;
  v48 = 2048;
  v49 = v31;
  v50 = 2080;
  v51 = v32;
  _os_log_impl(&dword_240E91000, v29, OS_LOG_TYPE_DEFAULT, "#I Sent %zu of %zu messages from queue; pending-confirmation [%zu]; flow-control [%zu] %s", buf, 0x34u);
  v33 = *MEMORY[0x277D85DE8];
}

void sub_240EAECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

void sub_240EAECEC(_Unwind_Exception *a1)
{
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v1 - 176);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v1 - 160);
  _Unwind_Resume(a1);
}

void *abb::router::Gateway::stop_sync(dispatch::group_session)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[3];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void abb::router::Gateway::shutdown_sync(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 176);
  if (v3 > 8)
  {
    goto LABEL_12;
  }

  v4 = 1 << v3;
  if ((v4 & 0x1B0) != 0)
  {
    v5 = *a2;
    v24 = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
      abb::router::Gateway::trackPendingActions_sync(a1, 0, &v24);
      dispatch_group_leave(v5);

      dispatch_release(v5);
    }

    else
    {
      abb::router::Gateway::trackPendingActions_sync(a1, 0, &v24);
    }

    return;
  }

  if ((v4 & 3) != 0)
  {

    abb::router::Gateway::setStatus_sync(a1, 0);
  }

  else
  {
LABEL_12:
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Shutting gateway", v22, 2u);
    }

    v8 = dispatch_group_create();
    v9 = v8;
    v23 = v8;
    if (v8)
    {
      dispatch_retain(v8);
      dispatch_group_enter(v9);
    }

    abb::router::Gateway::stop_sync(a1, &v23);
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }

    v10 = *(a1 + 16);
    if (!v10 || (v11 = *(a1 + 8), (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    p_shared_weak_owners = &v12->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = a2;
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v13);
      v15 = a2;
    }

    v22[0] = a1;
    v22[1] = v11;
    v22[2] = v13;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v16 = *v15;
    v22[3] = v16;
    if (v16)
    {
      dispatch_retain(v16);
      dispatch_group_enter(v16);
    }

    v17 = *(a1 + 24);
    v18 = operator new(0x20uLL);
    *v18 = a1;
    v18[1] = v11;
    v18[2] = v13;
    v18[3] = v16;
    dispatch_group_notify_f(v9, v17, v18, dispatch::detail::group_notify<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v19 = *a2;
    v20 = *(a1 + 24);
    v21 = operator new(0x18uLL);
    *v21 = a1;
    v21[1] = v11;
    v21[2] = v13;
    dispatch_group_notify_f(v19, v20, v21, dispatch::detail::group_notify<abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_1>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::shutdown_sync(dispatch::group_session)::$_1 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    std::__shared_weak_count::__release_weak(v13);
    if (v9)
    {
      dispatch_release(v9);
    }
  }
}

void sub_240EAF05C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void abb::router::Gateway::sleep_sync(uint64_t a1, dispatch_object_t *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 176);
  if (v2 > 0xA)
  {
    goto LABEL_9;
  }

  if (((1 << v2) & 0x5F3) != 0)
  {
LABEL_3:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v2 != 2)
  {
LABEL_9:
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v9, OS_LOG_TYPE_DEFAULT, "#I Sleeping gateway", buf, 2u);
    }

    abb::router::Gateway::setStatus_sync(a1, 7u);
    v10 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
      dispatch_group_enter(v10);
    }

    v11 = *(a1 + 472);
    *(a1 + 472) = v10;
    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }

    v12 = dispatch_group_create();
    v13 = operator new(0x38uLL);
    v14 = v13;
    v13->__shared_owners_ = 0;
    v13->__shared_weak_owners_ = 0;
    v13->__vftable = &unk_2852C8F88;
    v13[1].__vftable = v12;
    v15 = &v13[1];
    if (v12)
    {
      dispatch_retain(v12);
      v14[1].__shared_owners_ = 0;
      v14[1].__shared_weak_owners_ = 0;
      v14[2].__vftable = 0;
      dispatch_release(v12);
      v71 = v15;
      v72 = v14;
      v16 = *(a1 + 304);
      v58 = a1;
      v17 = (a1 + 312);
      if (v16 != (a1 + 312))
      {
        goto LABEL_22;
      }

      goto LABEL_76;
    }

    v13[1].__shared_owners_ = 0;
    v13[1].__shared_weak_owners_ = 0;
    v13[2].__vftable = 0;
    v71 = &v13[1];
    v72 = v13;
    v16 = *(a1 + 304);
    v58 = a1;
    v17 = (a1 + 312);
    if (v16 == (a1 + 312))
    {
LABEL_76:
      v42 = *(v58 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240E91000, v42, OS_LOG_TYPE_DEFAULT, "#I Notified all clients to sleep", buf, 2u);
      }

      v43 = *(v58 + 16);
      if (!v43 || (v44 = *(v58 + 8), (v45 = std::__shared_weak_count::lock(v43)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v46 = v45;
      atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v45->__on_zero_shared)(v45);
        std::__shared_weak_count::__release_weak(v46);
      }

      v70.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      v47 = *(v58 + 160);
      v76 = 29285;
      v75 = *"leep timer";
      v48 = *(v58 + 24);
      if (v48)
      {
        dispatch_retain(*(v58 + 24));
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN3abb6router7Gateway10sleep_syncEN8dispatch13group_sessionE_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_2;
      aBlock[4] = v58;
      aBlock[5] = v44;
      v60 = v46;
      atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v49 = v71;
      v61 = v71;
      v62 = v72;
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = _Block_copy(aBlock);
      *buf = 0x7320726574756F52;
      *&v79 = v75;
      WORD4(v79) = v76;
      BYTE10(v79) = 0;
      *(&v79 + 11) = 0;
      HIBYTE(v79) = 18;
      v75 = 0;
      v76 = 0;
      object[0] = v48;
      v74[0] = v50;
      (*(*v47 + 16))(&v70, v47, buf, 0, 10000000, 0, object, v74);
      if (v74[0])
      {
        _Block_release(v74[0]);
      }

      if (object[0])
      {
        dispatch_release(object[0]);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(*buf);
      }

      *buf = v58;
      *&v79 = v44;
      *(&v79 + 1) = v46;
      atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v51 = v70.__r_.__value_.__r.__words[0];
      v70.__r_.__value_.__r.__words[0] = 0;
      v80 = v51;
      v52 = *v49;
      v53 = *(v58 + 24);
      v54 = operator new(0x20uLL);
      *v54 = v58;
      v54[1] = v44;
      v54[2] = v46;
      v54[3] = v51;
      dispatch_group_notify_f(v52, v53, v54, dispatch::detail::group_notify<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
      v55 = v70.__r_.__value_.__r.__words[0];
      v70.__r_.__value_.__r.__words[0] = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      v56 = v62;
      if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_weak(v60);
      }

      std::__shared_weak_count::__release_weak(v46);
      v57 = v72;
      if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v57->__on_zero_shared)(v57);
        std::__shared_weak_count::__release_weak(v57);
      }

      goto LABEL_3;
    }

    while (1)
    {
LABEL_22:
      (*(*v16[5] + 16))(v68);
      v18 = v69;
      if ((v69 & 0x80u) == 0)
      {
        v19 = v69;
      }

      else
      {
        v19 = v68[1];
      }

      v20 = v19 + 1;
      if (v19 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v20 < 0x17)
      {
        memset(&v70, 0, sizeof(v70));
        v22 = &v70;
        *(&v70.__r_.__value_.__s + 23) = v19 + 1;
        if (!v19)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if ((v20 | 7) == 0x17)
        {
          v21 = 25;
        }

        else
        {
          v21 = (v20 | 7) + 1;
        }

        v22 = operator new(v21);
        v70.__r_.__value_.__l.__size_ = v19 + 1;
        v70.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
        v70.__r_.__value_.__r.__words[0] = v22;
      }

      if (v18 >= 0)
      {
        v23 = v68;
      }

      else
      {
        v23 = v68[0];
      }

      memmove(v22, v23, v19);
LABEL_36:
      *&v22[v19] = 46;
      v24 = *(v16 + 8);
      object[1] = 0;
      object[2] = 6;
      object[0] = v24;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v82[14] = v25;
      v82[15] = v25;
      v82[12] = v25;
      v82[13] = v25;
      v82[10] = v25;
      v82[11] = v25;
      v82[8] = v25;
      v82[9] = v25;
      v82[6] = v25;
      v82[7] = v25;
      v82[4] = v25;
      v82[5] = v25;
      v82[2] = v25;
      v82[3] = v25;
      v82[0] = v25;
      v82[1] = v25;
      *buf = v82;
      v79 = xmmword_240EDCC50;
      v80 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v81 = 0;
      __p = v82;
      v74[0] = 1;
      v74[1] = object;
      v74[2] = 6;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "{:#04x}", 7, v74);
      v26 = *(&v79 + 1);
      if (*(&v79 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v27 = __p;
      if (*(&v79 + 1) >= 0x17uLL)
      {
        if ((*(&v79 + 1) | 7) == 0x17)
        {
          v38 = 25;
        }

        else
        {
          v38 = (*(&v79 + 1) | 7) + 1;
        }

        p_dst = operator new(v38);
        v66 = v26;
        v67 = v38 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v67) = BYTE8(v79);
        p_dst = &__dst;
        if (!*(&v79 + 1))
        {
          LOBYTE(__dst) = 0;
          v29 = __p;
          if (__p == v82)
          {
            goto LABEL_41;
          }

LABEL_40:
          operator delete(v29);
          goto LABEL_41;
        }
      }

      memmove(p_dst, v27, v26);
      *(p_dst + v26) = 0;
      v29 = __p;
      if (__p != v82)
      {
        goto LABEL_40;
      }

LABEL_41:
      if (v67 >= 0)
      {
        v30 = &__dst;
      }

      else
      {
        v30 = __dst;
      }

      if (v67 >= 0)
      {
        v31 = HIBYTE(v67);
      }

      else
      {
        v31 = v66;
      }

      v32 = std::string::append(&v70, v30, v31);
      v33 = v32->__r_.__value_.__r.__words[0];
      size = v32->__r_.__value_.__l.__size_;
      v35 = v32->__r_.__value_.__r.__words[2];
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(__dst);
        if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_49:
          if ((v69 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_60;
        }
      }

      else if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      operator delete(v70.__r_.__value_.__l.__data_);
      if ((v69 & 0x80000000) == 0)
      {
LABEL_50:
        v36 = v16[5];
        v37 = v71;
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        goto LABEL_51;
      }

LABEL_60:
      operator delete(v68[0]);
      v36 = v16[5];
      v37 = v71;
      if ((v35 & 0x8000000000000000) != 0)
      {
LABEL_61:
        std::string::__init_copy_ctor_external(&v63, v33, size);
        goto LABEL_62;
      }

LABEL_51:
      v63.__r_.__value_.__r.__words[0] = v33;
      v63.__r_.__value_.__l.__size_ = size;
      v63.__r_.__value_.__r.__words[2] = v35;
LABEL_62:
      ctu::TrackedGroup::fork(&group, v37, &v63);
      (*(*v36 + 56))(v36, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
        if ((v35 & 0x8000000000000000) == 0)
        {
LABEL_67:
          v39 = v16[1];
          if (v39)
          {
            goto LABEL_71;
          }

          goto LABEL_73;
        }
      }

      else if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      operator delete(v33);
      v39 = v16[1];
      if (v39)
      {
        do
        {
LABEL_71:
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
        goto LABEL_21;
      }

      do
      {
LABEL_73:
        v40 = v16[2];
        v41 = *v40 == v16;
        v16 = v40;
      }

      while (!v41);
LABEL_21:
      v16 = v40;
      if (v40 == v17)
      {
        goto LABEL_76;
      }
    }
  }

  v4 = *a2;
  v73 = v4;
  if (!v4)
  {
    abb::router::Gateway::trackPendingActions_sync(a1, 7, &v73);
    goto LABEL_3;
  }

  dispatch_retain(v4);
  dispatch_group_enter(v4);
  abb::router::Gateway::trackPendingActions_sync(a1, 7, &v73);
  dispatch_group_leave(v4);
  v6 = *MEMORY[0x277D85DE8];

  dispatch_release(v4);
}

void sub_240EAF98C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN3abb6router7Gateway10sleep_syncEN8dispatch13group_sessionE_block_invoke(void *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (!v2)
  {
    goto LABEL_67;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v55 = v4;
  if (!v4)
  {
    goto LABEL_67;
  }

  if (!a1[5])
  {
    goto LABEL_65;
  }

  if ((*(v3 + 503) & 0x80000000) == 0)
  {
    *(v3 + 480) = 0;
    *(v3 + 503) = 0;
    if (*(v3 + 472))
    {
      goto LABEL_6;
    }

LABEL_40:
    v29 = v4;
    v30 = *(v3 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v30, OS_LOG_TYPE_DEFAULT, "#I Sleep session is already released", buf, 2u);
    }

    v4 = v29;
    goto LABEL_65;
  }

  **(v3 + 480) = 0;
  *(v3 + 488) = 0;
  if (!*(v3 + 472))
  {
    goto LABEL_40;
  }

LABEL_6:
  __p[0] = 0;
  __p[1] = 0;
  v53 = 0;
  v5 = a1[7];
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 == v7)
  {
    memset(&v51, 0, sizeof(v51));
  }

  else
  {
    do
    {
      v8 = v6[1];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        v51.__r_.__value_.__l.__size_ = v9;
        if (v9)
        {
          v10 = v9;
          v11 = *v6;
          v51.__r_.__value_.__r.__words[0] = v11;
          if (v11)
          {
            v12 = __p[1];
            if (__p[1] >= v53)
            {
              v15 = __p[0];
              v16 = __p[1] - __p[0];
              v17 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) + 1;
              if (v17 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v53 - __p[0]) >> 3) > v17)
              {
                v17 = 0x5555555555555556 * ((v53 - __p[0]) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v53 - __p[0]) >> 3) >= 0x555555555555555)
              {
                v18 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v18 = v17;
              }

              v58 = __p;
              if (v18)
              {
                if (v18 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v19 = operator new(24 * v18);
              }

              else
              {
                v19 = 0;
              }

              v20 = &v19[8 * (v16 >> 3)];
              *buf = v19;
              *&buf[8] = v20;
              v21 = &v19[24 * v18];
              *&buf[16] = v20;
              v57 = v21;
              if (*(v11 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(v20, *v11, *(v11 + 8));
                v20 = *&buf[8];
                v23 = *&buf[16];
                v15 = __p[0];
                v21 = v57;
                v16 = __p[1] - __p[0];
              }

              else
              {
                v22 = *v11;
                v20->__r_.__value_.__r.__words[2] = *(v11 + 16);
                *&v20->__r_.__value_.__l.__data_ = v22;
                v23 = &v19[8 * (v16 >> 3)];
              }

              v14 = v23 + 24;
              v24 = v20 - v16;
              memcpy(v20 - v16, v15, v16);
              v25 = __p[0];
              __p[0] = v24;
              __p[1] = v14;
              v53 = v21;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              if (*(v11 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(__p[1], *v11, *(v11 + 8));
              }

              else
              {
                v13 = *v11;
                *(__p[1] + 2) = *(v11 + 16);
                *v12 = v13;
              }

              v14 = v12 + 24;
            }

            __p[1] = v14;
          }

          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      v6 += 2;
    }

    while (v6 != v7);
    v26 = __p[1];
    v27 = __p[0];
    memset(&v51, 0, sizeof(v51));
    if (__p[0] != __p[1])
    {
      if (__p[0] != &v51)
      {
        if (*(__p[0] + 23) < 0)
        {
          std::string::__assign_no_alias<true>(&v51, *__p[0], *(__p[0] + 1));
        }

        else
        {
          v28 = *__p[0];
          v51.__r_.__value_.__r.__words[2] = *(__p[0] + 2);
          *&v51.__r_.__value_.__l.__data_ = v28;
        }
      }

      if (",")
      {
        for (i = v27 + 24; i != v26; i += 24)
        {
          buf[23] = 1;
          memmove(buf, ",", 1uLL);
          buf[1] = 0;
          if (buf[23] >= 0)
          {
            v49 = buf;
          }

          else
          {
            v49 = *buf;
          }

          if (buf[23] >= 0)
          {
            v50 = buf[23];
          }

          else
          {
            v50 = *&buf[8];
          }

          std::string::append(&v51, v49, v50);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v46 = i[23];
          if (v46 >= 0)
          {
            v47 = i;
          }

          else
          {
            v47 = *i;
          }

          if (v46 >= 0)
          {
            v48 = i[23];
          }

          else
          {
            v48 = *(i + 1);
          }

          std::string::append(&v51, v47, v48);
        }
      }

      else
      {
        for (j = v27 + 24; j != v26; j += 24)
        {
          v41 = *(j + 1);
          v42 = j[23];
          if (v42 >= 0)
          {
            v43 = j;
          }

          else
          {
            v43 = *j;
          }

          if (v42 >= 0)
          {
            v44 = j[23];
          }

          else
          {
            v44 = *(j + 1);
          }

          std::string::append(&v51, v43, v44);
        }
      }
    }
  }

  v31 = (v3 + 480);
  if (*(v3 + 503) < 0)
  {
    operator delete(*v31);
  }

  *v31 = *&v51.__r_.__value_.__l.__data_;
  *(v3 + 496) = *(&v51.__r_.__value_.__l + 2);
  v32 = *(v3 + 40);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v3 + 503) < 0)
    {
      v31 = *v31;
    }

    *buf = 134218242;
    *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
    *&buf[12] = 2080;
    *&buf[14] = v31;
    _os_log_impl(&dword_240E91000, v32, OS_LOG_TYPE_DEFAULT, "#I Router sleep timeout; %zd clients failed to ack: %s", buf, 0x16u);
  }

  v33 = *(v3 + 472);
  *(v3 + 472) = 0;
  if (v33)
  {
    dispatch_group_leave(v33);
    dispatch_release(v33);
  }

  abb::router::Gateway::setStatus_sync(v3, 0xAu);
  abb::router::Gateway::handlePendingActions_sync(v3);
  v34 = __p[0];
  if (__p[0])
  {
    v35 = __p[1];
    v36 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v37 = *(v35 - 1);
        v35 -= 3;
        if (v37 < 0)
        {
          operator delete(*v35);
        }
      }

      while (v35 != v34);
      v36 = __p[0];
    }

    __p[1] = v34;
    operator delete(v36);
  }

  v4 = v55;
  if (v55)
  {
LABEL_65:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v38);
    }
  }

LABEL_67:
  v39 = *MEMORY[0x277D85DE8];
}

void sub_240EB019C(_Unwind_Exception *__p, uint64_t a2, int a3, __int16 a4, char a5, char a6, uint64_t a7, char a8, void *__pa, uint64_t a10, uint64_t a11, char a12, void **a13, std::__split_buffer<std::string> *a14, uint64_t a15, uint64_t a16, char a17)
{
  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a13);
    std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a17);
    _Unwind_Resume(__p);
  }

  operator delete(__pa);
  std::vector<std::string>::~vector[abi:ne200100](&a13);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a17);
  _Unwind_Resume(__p);
}

void abb::router::Gateway::handlePendingActions_sync(abb::router::Gateway *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 296) != 1)
  {
    goto LABEL_39;
  }

  v2 = *(this + 280);
  v3 = *(this + 36);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = v3;
  LOBYTE(v14) = v2;
  if (v3 && (dispatch_retain(v3), dispatch_group_enter(v3), (*(this + 296) & 1) == 0))
  {
    v6 = *(this + 5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(this + 36);
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = *(this + 36);
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    *(this + 296) = 0;
    v6 = *(this + 5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      if (v2 > 3)
      {
        goto LABEL_9;
      }

LABEL_23:
      if (v2)
      {
        if (v2 != 2)
        {
          goto LABEL_28;
        }

        v13 = v3;
        if (v3)
        {
          dispatch_retain(v3);
          dispatch_group_enter(v3);
        }

        abb::router::Gateway::start_sync(this, &v13);
      }

      else
      {
        v9 = v3;
        if (v3)
        {
          dispatch_retain(v3);
          dispatch_group_enter(v3);
        }

        abb::router::Gateway::shutdown_sync(this, &v9);
      }

      goto LABEL_36;
    }
  }

  if (v2 > 0xA)
  {
    v7 = "(unknown)";
  }

  else
  {
    v7 = off_278CBAF60[v2];
  }

  *buf = 136315138;
  v17 = v7;
  _os_log_impl(&dword_240E91000, v6, OS_LOG_TYPE_DEFAULT, "#I Handling pending action for %s", buf, 0xCu);
  if (v2 <= 3)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ((v2 - 4) < 2)
  {
    v12 = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    abb::router::Gateway::stop_sync(this, &v12);
  }

  else
  {
    if (v2 != 7)
    {
      if (v2 == 9)
      {
        v10 = v3;
        if (v3)
        {
          dispatch_retain(v3);
          dispatch_group_enter(v3);
        }

        abb::router::Gateway::wakeup_sync(this, &v10);
        goto LABEL_36;
      }

LABEL_28:
      if (!v3)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v11 = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    abb::router::Gateway::sleep_sync(this, &v11);
  }

LABEL_36:
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
LABEL_38:
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_240EB0528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
  }

  std::pair<abb::router::Gateway::Status,dispatch::group_session>::~pair(&a15);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3abb6router7GatewayEEE56c47_ZTSKNSt3__110shared_ptrIN3ctu12TrackedGroupEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3abb6router7GatewayEEE56c47_ZTSKNSt3__110shared_ptrIN3ctu12TrackedGroupEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

uint64_t abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void abb::router::Gateway::wakeup_sync(uint64_t a1, NSObject **a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 176);
  if (v4 <= 6)
  {
    goto LABEL_2;
  }

  if (v4 == 10)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Previous gateway sleep session failed for some reason", buf, 2u);
    }

    v9 = (a1 + 480);
    memset(&__dst, 170, sizeof(__dst));
    if (*(a1 + 503) < 0)
    {
      v9 = *v9;
    }

    v33[1] = 0xAAAAAAAAAAAAAAAALL;
    v33[2] = 12;
    v33[0] = v9;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[14] = v10;
    v38[15] = v10;
    v38[13] = v10;
    v38[12] = v10;
    v38[11] = v10;
    v38[10] = v10;
    v38[9] = v10;
    v38[8] = v10;
    v38[7] = v10;
    v38[6] = v10;
    v38[5] = v10;
    v38[4] = v10;
    v38[3] = v10;
    v38[2] = v10;
    v38[1] = v10;
    v38[0] = v10;
    *buf = v38;
    v35 = xmmword_240EDCC50;
    v36 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v37 = 0;
    __src = v38;
    v32[0] = 1;
    v32[1] = v33;
    v32[2] = 12;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "AP sleep is blocked by clients: {}", 34, v32);
    v11 = *(&v35 + 1);
    if (*(&v35 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = __src;
    if (*(&v35 + 1) >= 0x17uLL)
    {
      if ((*(&v35 + 1) | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (*(&v35 + 1) | 7) + 1;
      }

      p_dst = operator new(v14);
      __dst.__r_.__value_.__l.__size_ = v11;
      __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = BYTE8(v35);
      p_dst = &__dst;
      if (!*(&v35 + 1))
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, v12, v11);
LABEL_23:
    p_dst->__r_.__value_.__s.__data_[v11] = 0;
    if (__src != v38)
    {
      operator delete(__src);
    }

    v15 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = __dst;
    }

    abb::router::Gateway::reportError_sync(a1, 2, &v29);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v15 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_33;
  }

  if (v4 == 9)
  {
LABEL_2:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v4 != 7)
  {
LABEL_33:
    if (*(a1 + 503) < 0)
    {
      **(a1 + 480) = 0;
      *(a1 + 488) = 0;
      v16 = *(a1 + 40);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(a1 + 480) = 0;
      *(a1 + 503) = 0;
      v16 = *(a1 + 40);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:
        abb::router::Gateway::setStatus_sync(a1, 9u);
        v17 = dispatch_group_create();
        v18 = v17;
        v19 = *(a1 + 360);
        group = v17;
        if (v17)
        {
          dispatch_retain(v17);
          dispatch_group_enter(v18);
        }

        (*(*v19 + 64))(v19, &group);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        v20 = *(a1 + 16);
        if (!v20 || (v21 = *(a1 + 8), (v22 = std::__shared_weak_count::lock(v20)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v23 = v22;
        p_shared_weak_owners = &v22->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v23);
        }

        *buf = a1;
        *&v35 = v21;
        *(&v35 + 1) = v23;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v25 = *a2;
        v36 = v25;
        if (v25)
        {
          dispatch_retain(v25);
          dispatch_group_enter(v25);
        }

        v26 = *(a1 + 24);
        v27 = operator new(0x20uLL);
        *v27 = a1;
        v27[1] = v21;
        v27[2] = v23;
        v27[3] = v25;
        dispatch_group_notify_f(v18, v26, v27, dispatch::detail::group_notify<abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::Gateway::wakeup_sync(dispatch::group_session)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
        std::__shared_weak_count::__release_weak(v23);
        if (v18)
        {
          dispatch_release(v18);
        }

        goto LABEL_2;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_240E91000, v16, OS_LOG_TYPE_DEFAULT, "#I Wakingup gateway", buf, 2u);
    goto LABEL_36;
  }

  v6 = *a2;
  v31 = v6;
  if (!v6)
  {
    abb::router::Gateway::trackPendingActions_sync(a1, 9, &v31);
    goto LABEL_2;
  }

  dispatch_retain(v6);
  dispatch_group_enter(v6);
  abb::router::Gateway::trackPendingActions_sync(a1, 9, &v31);
  dispatch_group_leave(v6);
  v7 = *MEMORY[0x277D85DE8];

  dispatch_release(v6);
}

void sub_240EB0B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0::~$_0(&a25);
  std::__shared_weak_count::__release_weak(v26);
  if (!v25)
  {
    JUMPOUT(0x240EB0BDCLL);
  }

  dispatch_release(v25);
  _Unwind_Resume(a1);
}

BOOL abb::router::Gateway::reportError_sync(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 208);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = a1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    v4 = a1;
    v5 = *(a1 + 208);
    if (!v5)
    {
LABEL_7:
      v15 = v5;
      goto LABEL_9;
    }
  }

  else
  {
    __p = *a3;
    v5 = v3;
  }

  if (v5 != v4 + 184)
  {
    v5 = (*(*v5 + 16))(v5);
    goto LABEL_7;
  }

  v15 = v14;
  (*(*v5 + 24))(v5, v14);
LABEL_9:
  global_queue = dispatch_get_global_queue(0, 0);
  v8 = operator new(0x40uLL);
  *v8 = a2;
  *(v8 + 8) = __p;
  memset(&__p, 0, sizeof(__p));
  v9 = v15;
  if (v15)
  {
    if (v15 == v14)
    {
      *(v8 + 7) = v8 + 32;
      (*(*v9 + 24))(v9);
    }

    else
    {
      *(v8 + 7) = v15;
      v15 = 0;
    }
  }

  else
  {
    *(v8 + 7) = 0;
  }

  dispatch_async_f(global_queue, v8, dispatch::async<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0,std::default_delete<abb::router::Gateway::reportError_sync(abb::router::Error,std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  if (v15)
  {
    (*(*v15 + 40))();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  result = v3 != 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EB0E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Gateway::statedump_sync(uint64_t a1, NSObject **a2)
{
  v4 = *(a1 + 440);
  if (v4)
  {
    v5 = *a2;
    v17 = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
      v4 = *(a1 + 440);
    }

    abb::router::Metrics::exportSummary(v4, &object);
    abb::router::Gateway::reportMetricSummary_sync(a1, &v17, &object);
    xpc_release(object);
    object = 0;
    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
    }
  }

  v6 = *(a1 + 456);
  if (v6)
  {
    v7 = *a2;
    v15 = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(v7);
      v6 = *(a1 + 456);
    }

    abb::router::Metrics::exportSummary(v6, &v14);
    abb::router::Gateway::reportMetricSummary_sync(a1, &v15, &v14);
    xpc_release(v14);
    v14 = 0;
    if (v7)
    {
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }
  }

  v8 = *(a1 + 440);
  if (v8)
  {
    *(v8 + 40) = 0;
    *(v8 + 72) = 0;
    std::__tree<unsigned int>::destroy(v8 + 48, *(v8 + 56));
    *(v8 + 48) = v8 + 56;
    *(v8 + 64) = 0;
    *(v8 + 56) = 0;
    std::__tree<unsigned int>::destroy(v8 + 80, *(v8 + 88));
    *(v8 + 80) = v8 + 88;
    *(v8 + 88) = 0;
    v10 = *(v8 + 112);
    v9 = (v8 + 112);
    *(v9 - 2) = 0;
    std::__tree<unsigned int>::destroy((v9 - 1), v10);
    *v9 = 0;
    v9[1] = 0;
    *(v9 - 1) = v9;
  }

  v11 = *(a1 + 456);
  if (v11)
  {
    *(v11 + 40) = 0;
    *(v11 + 72) = 0;
    std::__tree<unsigned int>::destroy(v11 + 48, *(v11 + 56));
    *(v11 + 48) = v11 + 56;
    *(v11 + 64) = 0;
    *(v11 + 56) = 0;
    std::__tree<unsigned int>::destroy(v11 + 80, *(v11 + 88));
    *(v11 + 80) = v11 + 88;
    *(v11 + 88) = 0;
    v13 = *(v11 + 112);
    v12 = (v11 + 112);
    *(v12 - 2) = 0;
    std::__tree<unsigned int>::destroy((v12 - 1), v13);
    *v12 = 0;
    v12[1] = 0;
    *(v12 - 1) = v12;
  }
}

void sub_240EB102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11)
{
  xpc_release(object);
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  _Unwind_Resume(a1);
}

BOOL abb::router::Gateway::reportMetricSummary_sync(uint64_t a1, NSObject **a2, void **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 240);
  if (!v3)
  {
    goto LABEL_24;
  }

  v6 = *a2;
  object[0] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
  }

  v7 = *a3;
  object[1] = v7;
  if (v7)
  {
    xpc_retain(v7);
    v8 = *(a1 + 240);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    object[1] = xpc_null_create();
    v8 = *(a1 + 240);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 == a1 + 216)
  {
    v20 = v19;
    (*(*v8 + 24))(v8, v19);
    goto LABEL_12;
  }

  v8 = (*(*v8 + 16))(v8);
LABEL_10:
  v20 = v8;
LABEL_12:
  global_queue = dispatch_get_global_queue(0, 0);
  v10 = operator new(0x30uLL);
  v11 = *object;
  object[0] = 0;
  *v10 = v11;
  object[1] = xpc_null_create();
  v12 = v20;
  if (v20)
  {
    if (v20 == v19)
    {
      v10[5] = v10 + 2;
      (*(*v12 + 24))(v12);
    }

    else
    {
      v10[5] = v20;
      v20 = 0;
    }
  }

  else
  {
    v10[5] = 0;
  }

  v16 = 0;
  v17 = 0;
  dispatch_async_f(global_queue, v10, dispatch::async<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v16);
  std::unique_ptr<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricSummary_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v17);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v13);
  }

  xpc_release(object[1]);
  object[1] = 0;
  if (object[0])
  {
    dispatch_group_leave(object[0]);
    if (object[0])
    {
      dispatch_release(object[0]);
    }
  }

LABEL_24:
  result = v3 != 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EB12F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Gateway::resetMetric_sync(abb::router::Gateway *this)
{
  v2 = *(this + 55);
  if (v2)
  {
    *(v2 + 40) = 0;
    *(v2 + 72) = 0;
    std::__tree<unsigned int>::destroy(v2 + 48, *(v2 + 56));
    *(v2 + 48) = v2 + 56;
    *(v2 + 64) = 0;
    *(v2 + 56) = 0;
    std::__tree<unsigned int>::destroy(v2 + 80, *(v2 + 88));
    *(v2 + 80) = v2 + 88;
    *(v2 + 88) = 0;
    v4 = *(v2 + 112);
    v3 = (v2 + 112);
    *(v3 - 2) = 0;
    std::__tree<unsigned int>::destroy((v3 - 1), v4);
    *v3 = 0;
    v3[1] = 0;
    *(v3 - 1) = v3;
  }

  v5 = *(this + 57);
  if (v5)
  {
    *(v5 + 40) = 0;
    *(v5 + 72) = 0;
    std::__tree<unsigned int>::destroy(v5 + 48, *(v5 + 56));
    *(v5 + 48) = v5 + 56;
    *(v5 + 64) = 0;
    *(v5 + 56) = 0;
    std::__tree<unsigned int>::destroy(v5 + 80, *(v5 + 88));
    *(v5 + 80) = v5 + 88;
    *(v5 + 88) = 0;
    v7 = *(v5 + 112);
    v6 = (v5 + 112);
    *(v6 - 2) = 0;
    std::__tree<unsigned int>::destroy((v6 - 1), v7);
    *v6 = 0;
    v6[1] = 0;
    *(v6 - 1) = v6;
  }
}

uint64_t std::function<void ()(unsigned char const*,unsigned long)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void abb::router::Gateway::sendMessage_sync(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 176);
    if (v24 > 0xA)
    {
      v25 = "(unknown)";
    }

    else
    {
      v25 = off_278CBAF60[v24];
    }

    abb::router::Message::generatePrintString(a2);
    v26 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v26 = *v26;
    }

    *v27 = 136315394;
    *&v27[4] = v25;
    *&v27[12] = 2080;
    *&v27[14] = v26;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Queuing message to be sent in order [%s]; %s", v27, 0x16u);
  }

  v5 = *(a1 + 384);
  v6 = *(a1 + 392);
  v7 = 30 * ((v6 - v5) >> 3) - 1;
  if (v6 == v5)
  {
    v7 = 0;
  }

  if (v7 == *(a1 + 416) + *(a1 + 408))
  {
    std::deque<abb::router::Message>::__add_back_capacity(a1 + 376);
    v5 = *(a1 + 384);
    v6 = *(a1 + 392);
  }

  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 416) + *(a1 + 408);
    v9 = *(v5 + 8 * (v8 / 0x1E)) + 136 * (v8 % 0x1E);
  }

  abb::router::Message::Message(v9, a2);
  ++*(a1 + 416);
  v10 = *(a1 + 456);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *v11;
    v14 = *(*v11 + 10);
    *v27 = v11;
    *&v27[8] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v11;
    }

    v15 = abb::router::Metrics::recordMessage(v10, v14, v11[1] - v13);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12, v15);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  v16 = *(a1 + 16);
  if (!v16 || (v17 = *(a1 + 8), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  v20 = operator new(8uLL);
  *v20 = a1;
  v21 = *(a1 + 24);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v20;
  v22[1] = v17;
  v22[2] = v19;
  dispatch_async_f(v21, v22, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0>(abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::sendMessage_sync(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_240EB1778(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::LOG_WITH_MESSAGE_PAYLOAD(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a3 + 83) == 1)
  {
    v6 = *(a3 + 82);
    v7 = os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v11 = *(a3 + 8);
  if (!v11)
  {
    *(a3 + 82) = 256;
    if (!os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

LABEL_12:
    abb::router::Message::generatePrintString(a3);
    v16 = (a3 + 112);
    if (*(a3 + 135) < 0)
    {
      v16 = *v16;
      abb::router::Message::generatePrintString(a3);
      v17 = (a3 + 88);
      if ((*(a3 + 111) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      abb::router::Message::generatePrintString(a3);
      v17 = (a3 + 88);
      if ((*(a3 + 111) & 0x80000000) == 0)
      {
LABEL_14:
        v19 = 136315650;
        v20 = a2;
        v21 = 2080;
        v22 = v16;
        v23 = 2080;
        v24 = v17;
        v10 = "%s; %s %s";
        goto LABEL_15;
      }
    }

    v17 = *v17;
    goto LABEL_14;
  }

  v12 = *v11;
  v13 = *(v12 + 10);
  v14 = *(v12 + 9);
  IsSensitive = mipc::sdk_prop::msgIsSensitive();
  *(a3 + 82) = IsSensitive;
  *(a3 + 83) = 1;
  v7 = os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
  if (!IsSensitive)
  {
LABEL_9:
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_3:
  if (v7)
  {
    abb::router::Message::generatePrintString(a3);
    v8 = (a3 + 112);
    if (*(a3 + 135) < 0)
    {
      v8 = *v8;
      abb::router::Message::generatePrintString(a3);
      v9 = (a3 + 88);
      if ((*(a3 + 111) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      abb::router::Message::generatePrintString(a3);
      v9 = (a3 + 88);
      if ((*(a3 + 111) & 0x80000000) == 0)
      {
LABEL_6:
        v19 = 136315651;
        v20 = a2;
        v21 = 2080;
        v22 = v8;
        v23 = 2085;
        v24 = v9;
        v10 = "%s; %s %{sensitive}s";
LABEL_15:
        _os_log_impl(&dword_240E91000, a1, OS_LOG_TYPE_DEFAULT, v10, &v19, 0x20u);
        goto LABEL_16;
      }
    }

    v9 = *v9;
    goto LABEL_6;
  }

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
}

void std::deque<abb::router::Message>::shrink_to_fit(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x1E)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 30;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 30 * (v5 - v4) - 1;
    }

    if (v6 - (v3 + v2) >= 0x1E)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  std::__split_buffer<abb::router::Message *>::shrink_to_fit(v7);
}

void abb::router::Gateway::handleMessage_sync(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = a1;
  v9 = *(a1 + 24);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0>(abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::handleMessage_sync(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = *(**(a2 + 8) + 9) & 3;
    if (v11 != 2)
    {
      goto LABEL_5;
    }

LABEL_13:
    v18 = *(a1 + 40);
    abb::router::Message::Message(v32, a2);
    abb::router::LOG_WITH_MESSAGE_PAYLOAD(v18, "Received confirmation from transport", v32);
    abb::router::Message::~Message(v32);
    v19 = HIBYTE(*(**(a2 + 8) + 12));
    if (*(a1 + 352) == v19)
    {
      v20 = *(a1 + 360);
      abb::router::Message::Message(v31, a2);
      v21 = v31;
      (*(*v20 + 32))(v20, v31);
    }

    else
    {
      v23 = *(a1 + 312);
      if (!v23)
      {
        goto LABEL_26;
      }

      v24 = a1 + 312;
      do
      {
        v25 = *(v23 + 32);
        v26 = v25 >= v19;
        v27 = v25 < v19;
        if (v26)
        {
          v24 = v23;
        }

        v23 = *(v23 + 8 * v27);
      }

      while (v23);
      if (v24 == a1 + 312 || *(v24 + 32) > v19)
      {
        goto LABEL_26;
      }

      v29 = *(v24 + 40);
      abb::router::Message::Message(v30, a2);
      v21 = v30;
      (*(*v29 + 32))(v29, v30);
    }

    abb::router::Message::~Message(v21);
LABEL_26:
    --*(a1 + 424);
    goto LABEL_27;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  v11 = *(**(a2 + 8) + 9) & 3;
  if (v11 == 2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v11 == 3)
  {
    abb::router::Message::Message(v33, a2);
    abb::router::Gateway::handleIndication_sync(a1, v33);
    abb::router::Message::~Message(v33);
    v12 = *(a1 + 440);
    if (v12)
    {
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      v15 = *v13;
      v16 = *(*v13 + 10);
      *buf = v13;
      v35 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *v13;
      }

      v17 = abb::router::Metrics::recordMessage(v12, v16, v13[1] - v15);
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14, v17);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  else
  {
    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_240E91000, v22, OS_LOG_TYPE_ERROR, "Received invalid message type [%u] from transport", buf, 8u);
    }
  }

LABEL_27:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_240EB1E50(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Gateway::handleIndication_sync(void *a1, uint64_t a2)
{
  v4 = a1[5];
  abb::router::Message::Message(v31, a2);
  abb::router::LOG_WITH_MESSAGE_PAYLOAD(v4, "Received indication from transport", v31);
  abb::router::Message::~Message(v31);
  v5 = a1[42];
  if (v5)
  {
    v6 = *(**(a2 + 8) + 10);
    v7 = a1 + 42;
    while (1)
    {
      while (1)
      {
        v8 = *(v5 + 32);
        if (v8 <= v6)
        {
          break;
        }

        v7 = v5;
        v5 = *v5;
        if (!v5)
        {
          return;
        }
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v5 + 8);
      if (!v5)
      {
        return;
      }
    }

    v9 = *v5;
    v10 = v5;
    if (*v5)
    {
      v10 = v5;
      do
      {
        v11 = *(v9 + 32);
        v12 = v11 >= v6;
        v13 = v11 < v6;
        if (v12)
        {
          v10 = v9;
        }

        v9 = *(v9 + 8 * v13);
      }

      while (v9);
    }

    for (i = *(v5 + 8); i; i = *(i + 8 * v17))
    {
      v15 = *(i + 32);
      v16 = v15 > v6;
      v17 = v15 <= v6;
      if (v16)
      {
        v7 = i;
      }
    }

    if (v10 != v7)
    {
      do
      {
        while (((*(*v10[5] + 24))(v10[5]) & 1) != 0)
        {
          v18 = v10[1];
          v19 = v10;
          if (v18)
          {
            do
            {
              v20 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v20 = v19[2];
              v21 = *v20 == v19;
              v19 = v20;
            }

            while (!v21);
          }

          v22 = v10[5];
          abb::router::Message::Message(v29, a2);
          (*(*v22 + 40))(v22, v29);
          abb::router::Message::~Message(v29);
          v10 = v20;
          if (v20 == v7)
          {
            return;
          }
        }

        v23 = a1[5];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_240E91000, v23, OS_LOG_TYPE_DEBUG, "#D Removing invalid client", buf, 2u);
          v24 = v10[1];
          v25 = v10;
          if (!v24)
          {
            do
            {
LABEL_34:
              v26 = v25[2];
              v21 = *v26 == v25;
              v25 = v26;
            }

            while (!v21);
            goto LABEL_36;
          }
        }

        else
        {
          v24 = v10[1];
          v25 = v10;
          if (!v24)
          {
            goto LABEL_34;
          }
        }

        do
        {
          v26 = v24;
          v24 = *v24;
        }

        while (v24);
LABEL_36:
        if (a1[41] == v10)
        {
          a1[41] = v26;
        }

        v27 = a1[42];
        --a1[43];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v27, v10);
        v28 = v10[6];
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        operator delete(v10);
        v10 = v26;
      }

      while (v26 != v7);
    }
  }
}

void sub_240EB2144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<abb::router::Gateway::Status,dispatch::group_session>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

BOOL abb::router::Gateway::reportMetricStream_sync(uint64_t a1, NSObject **a2, void **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 272);
  if (!v3)
  {
    goto LABEL_24;
  }

  v6 = *a2;
  object[0] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
  }

  v7 = *a3;
  object[1] = v7;
  if (v7)
  {
    xpc_retain(v7);
    v8 = *(a1 + 272);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    object[1] = xpc_null_create();
    v8 = *(a1 + 272);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 == a1 + 248)
  {
    v20 = v19;
    (*(*v8 + 24))(v8, v19);
    goto LABEL_12;
  }

  v8 = (*(*v8 + 16))(v8);
LABEL_10:
  v20 = v8;
LABEL_12:
  global_queue = dispatch_get_global_queue(0, 0);
  v10 = operator new(0x30uLL);
  v11 = *object;
  object[0] = 0;
  *v10 = v11;
  object[1] = xpc_null_create();
  v12 = v20;
  if (v20)
  {
    if (v20 == v19)
    {
      v10[5] = v10 + 2;
      (*(*v12 + 24))(v12);
    }

    else
    {
      v10[5] = v20;
      v20 = 0;
    }
  }

  else
  {
    v10[5] = 0;
  }

  v16 = 0;
  v17 = 0;
  dispatch_async_f(global_queue, v10, dispatch::async<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v16);
  std::unique_ptr<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0,std::default_delete<abb::router::Gateway::reportMetricStream_sync(dispatch::group_session,xpc::dict)::$_0>>::~unique_ptr[abi:ne200100](&v17);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v13);
  }

  xpc_release(object[1]);
  object[1] = 0;
  if (object[0])
  {
    dispatch_group_leave(object[0]);
    if (object[0])
    {
      dispatch_release(object[0]);
    }
  }

LABEL_24:
  result = v3 != 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EB23F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::pair<unsigned int,std::shared_ptr<abb::router::GatewayAgentDelegateBase>>::~pair(uint64_t result)
{
  v1 = *(result + 16);
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

uint64_t std::optional<std::pair<abb::router::Gateway::Status,dispatch::group_session>>::~optional(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = result;
      dispatch_group_leave(v1);
      result = v2;
      if (*(v2 + 8))
      {
        dispatch_release(*(v2 + 8));
        return v2;
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C8E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (a1)
  {
    v1 = ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(a1);

    operator delete(v1);
  }
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  v2 = a1[8];
  if (v2 && a1[3])
  {
    v3 = a1[4];
    v12 = a1[3];
    v13 = v3;
    (*(*v2 + 48))(v2, &v13, &v12);
  }

  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1 + 5;
  a1[4] = 0;
  v6 = a1[8];
  a1[8] = 0;
  if (v6 == a1 + 5)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
LABEL_9:
      if (v7)
      {
        (*(*v7 + 40))(v7);
        v8 = a1[2];
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      v8 = a1[2];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  a1[3] = 0;
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  dispatch_group_leave(v8);
  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_17:
  v10 = a1[1];
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void ctu::os::signpost_interval::~signpost_interval(ctu::os::signpost_interval *this)
{
  v2 = *(this + 5);
  if (v2 && *this)
  {
    v3 = *(this + 1);
    v8 = *this;
    v9 = v3;
    (*(*v2 + 48))(v2, &v9, &v8);
  }

  v4 = *(this + 1);
  if (v4)
  {
    os_release(v4);
  }

  v5 = this + 16;
  *(this + 1) = 0;
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 == (this + 16))
  {
    (*(*v6 + 32))(v6);
    v7 = *(this + 5);
    *this = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    return;
  }

  if (!v6)
  {
    *this = 0;
    return;
  }

  (*(*v6 + 40))(v6);
  v7 = *(this + 5);
  *this = 0;
  if (v7 == v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
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
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::function<void ()(abb::router::Error,std::string const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t std::deque<abb::router::Message>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x1E];
    v6 = v2[(*(a1 + 40) + v4) / 0x1E] + 136 * ((*(a1 + 40) + v4) % 0x1E);
    if (*v5 + 136 * (v4 % 0x1E) != v6)
    {
      v7 = (*v5 + 136 * (v4 % 0x1E));
      do
      {
        v8 = *v7;
        v7 += 17;
        (*v8)();
        if (v7 - *v5 == 4080)
        {
          v9 = v5[1];
          ++v5;
          v7 = v9;
        }
      }

      while (v7 != v6);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 15;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 30;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<abb::router::Gateway>::shared_ptr[abi:ne200100]<abb::router::Gateway,std::shared_ptr<abb::router::Gateway> ctu::SharedSynchronizable<abb::router::Gateway>::make_shared_ptr<abb::router::Gateway>(abb::router::Gateway*)::{lambda(abb::router::Gateway*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2852C8EE8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_240EB2CEC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<abb::router::Gateway> ctu::SharedSynchronizable<abb::router::Gateway>::make_shared_ptr<abb::router::Gateway>(abb::router::Gateway*)::{lambda(abb::router::Gateway*)#1}::operator() const(abb::router::Gateway*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<abb::router::Gateway *,std::shared_ptr<abb::router::Gateway> ctu::SharedSynchronizable<abb::router::Gateway>::make_shared_ptr<abb::router::Gateway>(abb::router::Gateway*)::{lambda(abb::router::Gateway *)#1},std::allocator<abb::router::Gateway>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::router::Gateway *,std::shared_ptr<abb::router::Gateway> ctu::SharedSynchronizable<abb::router::Gateway>::make_shared_ptr<abb::router::Gateway>(abb::router::Gateway*)::{lambda(abb::router::Gateway *)#1},std::allocator<abb::router::Gateway>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abb6router7GatewayEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abb6router7GatewayEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abb6router7GatewayEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abb6router7GatewayEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<abb::router::Gateway> ctu::SharedSynchronizable<abb::router::Gateway>::make_shared_ptr<abb::router::Gateway>(abb::router::Gateway*)::{lambda(abb::router::Gateway*)#1}::operator() const(abb::router::Gateway*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::allocate_shared[abi:ne200100]<abb::router::Metrics,std::allocator<abb::router::Metrics>,std::string,abb::router::MetricConfig const&,0>(void *a1, uint64_t a2, __int128 *a3)
{
  v6 = operator new(0xE0uLL);
  v7 = v6;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = &unk_2852C8F38;
  v8 = v6 + 24;
  v10 = *a2;
  v9 = *(a2 + 8);
  *v13 = *(a2 + 16);
  *&v13[3] = *(a2 + 19);
  v11 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = *a3;
  if (v11 < 0)
  {
    std::string::__init_copy_ctor_external(v6 + 1, v10, v9);
  }

  else
  {
    *(v6 + 3) = v10;
    *(v6 + 4) = v9;
    *(v6 + 10) = *v13;
    *(v6 + 43) = *&v13[3];
    v6[47] = v11;
  }

  v7[10].__d_.__rep_ = 0;
  *&v7[6].__d_.__rep_ = v12;
  v7[11].__d_.__rep_ = 0;
  v7[12].__d_.__rep_ = 0;
  v7[8].__d_.__rep_ = 0;
  v7[9].__d_.__rep_ = &v7[10];
  v7[14].__d_.__rep_ = 0;
  v7[13].__d_.__rep_ = &v7[14];
  v7[18].__d_.__rep_ = 0;
  v7[17].__d_.__rep_ = 0;
  v7[15].__d_.__rep_ = 0;
  v7[16].__d_.__rep_ = &v7[17];
  v7[22].__d_.__rep_ = 0;
  v7[21].__d_.__rep_ = 0;
  v7[20].__d_.__rep_ = &v7[21];
  v7[23].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7[27].__d_.__rep_ = 0;
  if (v11 < 0)
  {
    operator delete(v10);
  }

  *a1 = v8;
  a1[1] = v7;
}

void sub_240EB2F28(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<abb::router::Metrics>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C8F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZNK3ctu20SharedSynchronizableIN3abb6router7GatewayEE20execute_wrapped_syncIZNS3_17registerTransportENSt3__110shared_ptrINS2_9TransportEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 152);
  *(v2 + 144) = v3;
  *(v2 + 152) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::init(dispatch::group_session)::$_0>(abb::router::Gateway::init(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::init(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::init(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    dispatch_retain(v2[1]);
    dispatch_group_enter(v3);
  }

  if (*(v4 + 176) - 1 >= 9)
  {
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240E91000, v5, OS_LOG_TYPE_DEFAULT, "#I Initializing gateway", buf, 2u);
    }

    abb::router::Gateway::setStatus_sync(v4, 1u);
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMipcRouterServerReadyNotification", 0, 0, 1u);
  v7 = v2[1];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v2[1];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  operator delete(v2);
  v9 = *(a1 + 2);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_240EB31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::start(dispatch::group_session)::$_0>(abb::router::Gateway::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::start_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB32B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::stop(dispatch::group_session)::$_0>(abb::router::Gateway::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::stop_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB33DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::abort(dispatch::group_session)::$_0>(abb::router::Gateway::abort(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::abort(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::abort(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::abort_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB3500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::shutdown(dispatch::group_session)::$_0>(abb::router::Gateway::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::shutdown_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB3624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::sleep(dispatch::group_session)::$_0>(abb::router::Gateway::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::sleep_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB3748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::wakeup(dispatch::group_session)::$_0>(abb::router::Gateway::wakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::wakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::wakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::wakeup_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB386C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::statedump(dispatch::group_session)::$_0>(abb::router::Gateway::statedump(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::statedump(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::statedump(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::statedump_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EB3990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>(abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*a1)->__vftable;
  p_shared_owners = &(*a1)->__shared_owners_;
  shared_owners = (*a1)[1].__shared_owners_;
  if (!shared_owners)
  {
    goto LABEL_4;
  }

  if (shared_owners != p_shared_owners)
  {
    shared_owners = (*(*shared_owners + 16))(shared_owners);
LABEL_4:
    v15 = shared_owners;
    goto LABEL_6;
  }

  v15 = v14;
  (*(*shared_owners + 24))(shared_owners, v14);
LABEL_6:
  p_get_deleter = &v3[4].__get_deleter;
  if (&v3[4].__get_deleter == v14)
  {
    goto LABEL_15;
  }

  v7 = v15;
  v8 = v3[5].~__shared_weak_count_0;
  if (v15 != v14)
  {
    if (v8 != p_get_deleter)
    {
      v15 = v3[5].~__shared_weak_count_0;
      v3[5].~__shared_weak_count_0 = v7;
      v9 = v8;
      if (v8 == v14)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    (*(*v8 + 24))(v3[5].~__shared_weak_count_0, v14);
    (*(*v3[5].~__shared_weak_count_0 + 32))(v3[5].~__shared_weak_count_0);
    v3[5].~__shared_weak_count_0 = v15;
    v15 = v14;
LABEL_15:
    v9 = v15;
    if (v15 == v14)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (v8 == p_get_deleter)
  {
    memset(v16, 170, 24);
    (*(*v15 + 24))(v15, v16);
    (*(*v15 + 32))(v15);
    v15 = 0;
    (*(*v3[5].~__shared_weak_count_0 + 24))(v3[5].~__shared_weak_count_0, v14);
    (*(*v3[5].~__shared_weak_count_0 + 32))(v3[5].~__shared_weak_count_0);
    v3[5].~__shared_weak_count_0 = 0;
    v15 = v14;
    (*(v16[0] + 24))(v16, &v3[4].__get_deleter);
    (*(v16[0] + 32))(v16);
    v3[5].~__shared_weak_count_0 = p_get_deleter;
    v9 = v15;
    if (v15 == v14)
    {
      goto LABEL_24;
    }
  }

  else
  {
    (*(*v15 + 24))(v15, &v3[4].__get_deleter);
    (*(*v15 + 32))(v15);
    v15 = v3[5].~__shared_weak_count_0;
    v10 = v15;
    v3[5].~__shared_weak_count_0 = p_get_deleter;
    v9 = v10;
    if (v10 == v14)
    {
LABEL_24:
      (*(*v9 + 32))(v9);
      v11 = v2[1].__shared_owners_;
      if (v11 == p_shared_owners)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }
  }

LABEL_16:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  v11 = v2[1].__shared_owners_;
  if (v11 == p_shared_owners)
  {
LABEL_25:
    (*(*v11 + 32))(v11);
    operator delete(v2);
    v12 = a1[2];
    if (!v12)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_19:
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12)
  {
LABEL_26:
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

LABEL_28:
  operator delete(a1);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_240EB3E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3 == v1 + 1)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*a1)->__vftable;
  p_shared_owners = &(*a1)->__shared_owners_;
  shared_owners = (*a1)[1].__shared_owners_;
  if (!shared_owners)
  {
    goto LABEL_4;
  }

  if (shared_owners != p_shared_owners)
  {
    shared_owners = (*(*shared_owners + 16))(shared_owners);
LABEL_4:
    v10 = shared_owners;
    goto LABEL_6;
  }

  v10 = v9;
  (*(*shared_owners + 24))(shared_owners, v9);
LABEL_6:
  std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](v9, &v3[5].__on_zero_shared);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
    v6 = v2[1].__shared_owners_;
    if (v6 != p_shared_owners)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(*v6 + 32))(v6);
    operator delete(v2);
    v7 = a1[2];
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v10)
  {
    (*(*v10 + 40))();
  }

  v6 = v2[1].__shared_owners_;
  if (v6 == p_shared_owners)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7)
  {
LABEL_16:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_18:
  operator delete(a1);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_240EB4108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3 == v1 + 1)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EB444C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 440);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v2[4];
  if (!v5)
  {
LABEL_5:
    v16 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v5 != v2 + 1)
  {
    v5 = (*(*v5 + 16))(v5);
    goto LABEL_5;
  }

  v16 = v15;
  (*(*v5 + 24))(v5, v15);
  v5 = v16;
  if (!v16)
  {
LABEL_10:
    v18 = v5;
    goto LABEL_12;
  }

LABEL_8:
  if (v5 != v15)
  {
    v5 = (*(*v5 + 16))(v5);
    goto LABEL_10;
  }

  v18 = v17;
  (*(*v5 + 24))(v5, v17);
LABEL_12:
  std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](v17, (v4 + 168));
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    v6 = v16;
    if (v16 != v15)
    {
LABEL_16:
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

LABEL_18:
      v7 = *(v3 + 456);
      if (!v7)
      {
        goto LABEL_38;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    v6 = v16;
    if (v16 != v15)
    {
      goto LABEL_16;
    }
  }

  (*(*v6 + 32))(v6);
  v7 = *(v3 + 456);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_19:
  v8 = v2[4];
  if (!v8)
  {
    goto LABEL_22;
  }

  if (v8 != v2 + 1)
  {
    v8 = (*(*v8 + 16))(v8);
LABEL_22:
    v14 = v8;
    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v14 = v13;
  (*(*v8 + 24))(v8, v13);
  v8 = v14;
  if (!v14)
  {
LABEL_30:
    v18 = v8;
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v13)
  {
    v8 = (*(*v8 + 16))(v8);
    goto LABEL_30;
  }

  v18 = v17;
  (*(*v8 + 24))(v8, v17);
LABEL_32:
  std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](v17, (v7 + 168));
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    v9 = v14;
    if (v14 != v13)
    {
LABEL_36:
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

LABEL_38:
      v10 = v2[4];
      if (v10 != v2 + 1)
      {
        goto LABEL_39;
      }

LABEL_45:
      (*(*v10 + 32))(v10);
      operator delete(v2);
      v11 = a1[2];
      if (!v11)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    v9 = v14;
    if (v14 != v13)
    {
      goto LABEL_36;
    }
  }

  (*(*v9 + 32))(v9);
  v10 = v2[4];
  if (v10 == v2 + 1)
  {
    goto LABEL_45;
  }

LABEL_39:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11)
  {
LABEL_46:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_48:
  operator delete(a1);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_240EB4934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  std::function<void ()(xpc::dict)>::~function(va2);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EB4964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableIN3abb6router7GatewayEE20execute_wrapped_syncIZNS3_13addUserClientEjNSt3__110shared_ptrINS2_25GatewayClientDelegateBaseEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke(uint64_t a1)
{
  group[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 312);
    v5 = v1[2];
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_5:
    v7 = (v2 + 312);
    v8 = (v2 + 312);
LABEL_11:
    v10 = operator new(0x38uLL);
    v10[8] = v5;
    *(v10 + 5) = *(v1 + 2);
    v11 = *(v1 + 3);
    *(v10 + 6) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v8;
    *v7 = v10;
    v12 = **(v2 + 304);
    if (v12)
    {
      *(v2 + 304) = v12;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 312), v10);
    ++*(v2 + 320);
    goto LABEL_16;
  }

  v6 = v1[2];
  LODWORD(group[0]) = 67109120;
  HIDWORD(group[0]) = v6;
  _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Adding user client; Client=0x%02x", group, 8u);
  v4 = *(v2 + 312);
  v5 = v1[2];
  if (!v4)
  {
    goto LABEL_5;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v8 = v4;
      v9 = *(v4 + 32);
      if (v5 >= v9)
      {
        break;
      }

      v4 = *v8;
      v7 = v8;
      if (!*v8)
      {
        goto LABEL_11;
      }
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = v8[1];
    if (!v4)
    {
      v7 = v8 + 1;
      goto LABEL_11;
    }
  }

LABEL_16:
  if (*(v2 + 176) == 3)
  {
    v13 = *(v1 + 2);
    group[0] = 0;
    (*(*v13 + 72))(v13, group);
    if (group[0])
    {
      dispatch_group_leave(group[0]);
      if (group[0])
      {
        dispatch_release(group[0]);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_240EB4B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0>(abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Gateway::removeUserClient(unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shared_owners = v1->__shared_owners_;
    if (BYTE4(v1->__shared_owners_))
    {
      v5 = "with";
    }

    else
    {
      v5 = "with no";
    }

    *buf = 136315394;
    v23 = v5;
    v24 = 1024;
    v25 = shared_owners;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Removing user client %s indications; Client=0x%02x", buf, 0x12u);
  }

  on_zero_shared_weak = v2[7].__on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    v7 = v1->__shared_owners_;
    p_on_zero_shared_weak = &v2[7].__on_zero_shared_weak;
    v9 = v2[7].__on_zero_shared_weak;
    do
    {
      v10 = *(v9 + 8);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        p_on_zero_shared_weak = v9;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
    if (p_on_zero_shared_weak != &v2[7].__on_zero_shared_weak && v7 >= *(p_on_zero_shared_weak + 8))
    {
      v13 = p_on_zero_shared_weak[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        v15 = p_on_zero_shared_weak;
        do
        {
          v14 = v15[2];
          v16 = *v14 == v15;
          v15 = v14;
        }

        while (!v16);
      }

      if (v2[7].__get_deleter == p_on_zero_shared_weak)
      {
        v2[7].__get_deleter = v14;
      }

      --v2[8].~__shared_weak_count;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(on_zero_shared_weak, p_on_zero_shared_weak);
      v17 = p_on_zero_shared_weak[6];
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      operator delete(p_on_zero_shared_weak);
    }
  }

  (*(*v2[9].~__shared_weak_count + 104))(v2[9].~__shared_weak_count, LODWORD(v1->__shared_owners_), BYTE4(v1->__shared_owners_));
  operator delete(v1);
  v18 = a1;
  if (a1)
  {
    v19 = a1[2];
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v18 = a1;
    }

    operator delete(v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_240EB4DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Gateway>::execute_wrapped<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0>(abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0,std::default_delete<abb::router::Gateway::regClientIndications(dispatch::group_session,unsigned int,std::set<unsigned int>,std::set<unsigned int>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v63 = *a1;
  v2 = (*a1)->__vftable;
  if ((*a1)[1].__shared_owners_)
  {
    v3 = 1;
    if (LOBYTE(v2[4].__on_zero_shared) != 3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = v1[2].__shared_owners_ != 0;
    if (LOBYTE(v2[4].__on_zero_shared) != 3)
    {
      goto LABEL_12;
    }
  }

  v4 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    shared_owners = v1->__shared_owners_;
    *buf = 67109120;
    *&buf[4] = shared_owners;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Registering new client after gateway is started; Client=0x%02x", buf, 8u);
  }

  v6 = v2[9].~__shared_weak_count;
  shared_weak_owners = v1[2].__shared_weak_owners_;
  group = shared_weak_owners;
  if (shared_weak_owners)
  {
    dispatch_retain(shared_weak_owners);
    dispatch_group_enter(group);
  }

  (*(*v6 + 96))(v6, &group, LODWORD(v1->__shared_owners_), v3);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_12:
  if (!v3)
  {
LABEL_117:
    v57 = v1[2].__shared_weak_owners_;
    if (v57)
    {
      dispatch_group_leave(v57);
      v58 = v1[2].__shared_weak_owners_;
      if (v58)
      {
        dispatch_release(v58);
      }
    }

    std::__tree<unsigned int>::destroy(&v1[1].__shared_weak_owners_, &v1[2].~__shared_weak_count);
    std::__tree<unsigned int>::destroy(&v1->__shared_weak_owners_, &v1[1].~__shared_weak_count);
    operator delete(v1);
    goto LABEL_121;
  }

  *buf = 0;
  v68 = 0;
  v8 = v1->__shared_owners_;
  if (v8 == LODWORD(v2[8].__on_zero_shared_weak))
  {
    v9 = v2[9].~__shared_weak_count;
    v10 = v2[9].~__shared_weak_count_0;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  on_zero_shared_weak = v2[7].__on_zero_shared_weak;
  if (!on_zero_shared_weak)
  {
    goto LABEL_113;
  }

  p_on_zero_shared_weak = &v2[7].__on_zero_shared_weak;
  do
  {
    v39 = *(on_zero_shared_weak + 8);
    v22 = v39 >= v8;
    v40 = v39 < v8;
    if (v22)
    {
      p_on_zero_shared_weak = on_zero_shared_weak;
    }

    on_zero_shared_weak = *(on_zero_shared_weak + v40);
  }

  while (on_zero_shared_weak);
  if (p_on_zero_shared_weak == &v2[7].__on_zero_shared_weak || v8 < *(p_on_zero_shared_weak + 8))
  {
    goto LABEL_113;
  }

  v9 = p_on_zero_shared_weak[5];
  v10 = p_on_zero_shared_weak[6];
  if (v10)
  {
LABEL_15:
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_16:
  *buf = v9;
  v68 = v10;
  if (((*(*v9 + 24))(v9) & 1) == 0)
  {
    goto LABEL_113;
  }

  v11 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v41 = v1->__shared_owners_;
    *v65 = 67109120;
    v66 = v41;
    _os_log_debug_impl(&dword_240E91000, v11, OS_LOG_TYPE_DEBUG, "#D Removing previous indications registered for client; Client=0x%02x", v65, 8u);
    v12 = v1->__shared_weak_owners_;
    v13 = &v1[1];
    if (v12 == &v1[1])
    {
      goto LABEL_91;
    }
  }

  else
  {
    v12 = v1->__shared_weak_owners_;
    v13 = &v1[1];
    if (v12 == &v1[1])
    {
      goto LABEL_91;
    }
  }

  on_zero_shared = v2[8].__on_zero_shared;
  if (!on_zero_shared)
  {
    do
    {
      v35 = v12->__shared_owners_;
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = v35->__vftable;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v12->__shared_weak_owners_;
          v27 = *v36 == v12;
          v12 = v36;
        }

        while (!v27);
      }

      v12 = v36;
    }

    while (v36 != v13);
    goto LABEL_91;
  }

  p_on_zero_shared = &v2[8].__on_zero_shared;
LABEL_21:
  v16 = HIDWORD(v12[1].__vftable);
  v17 = &v2[8].__on_zero_shared;
  while (1)
  {
    while (1)
    {
      v18 = *(on_zero_shared + 32);
      if (v16 >= v18)
      {
        break;
      }

      v17 = on_zero_shared;
      on_zero_shared = *on_zero_shared;
      if (!on_zero_shared)
      {
        goto LABEL_38;
      }
    }

    if (v18 >= v16)
    {
      break;
    }

    on_zero_shared = *(on_zero_shared + 8);
    if (!on_zero_shared)
    {
      goto LABEL_38;
    }
  }

  v19 = *on_zero_shared;
  v20 = on_zero_shared;
  if (*on_zero_shared)
  {
    v20 = on_zero_shared;
    do
    {
      v21 = *(v19 + 32);
      v22 = v21 >= v16;
      v23 = v21 < v16;
      if (v22)
      {
        v20 = v19;
      }

      v19 = *(v19 + 8 * v23);
    }

    while (v19);
  }

  for (i = *(on_zero_shared + 8); i; i = *(i + 8 * (v16 >= *(i + 32))))
  {
    if (v16 < *(i + 32))
    {
      v17 = i;
    }
  }

  if (v20 != v17)
  {
    while (((*(*v20[5] + 24))(v20[5]) & 1) != 0)
    {
      v28 = v20[1];
      if (v20[5] == *buf)
      {
        v32 = v20;
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v32[2];
            v27 = *v29 == v32;
            v32 = v29;
          }

          while (!v27);
        }

LABEL_67:
        if (v2[8].~__shared_weak_count_0 == v20)
        {
          v2[8].~__shared_weak_count_0 = v29;
        }

        v33 = v2[8].__on_zero_shared;
        --v2[8].__get_deleter;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v33, v20);
        v34 = v20[6];
        if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v34->__on_zero_shared)(v34);
          std::__shared_weak_count::__release_weak(v34);
        }

        operator delete(v20);
        goto LABEL_47;
      }

      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v20[2];
          v27 = *v29 == v20;
          v20 = v29;
        }

        while (!v27);
      }

LABEL_47:
      v20 = v29;
      if (v29 == v17)
      {
        goto LABEL_38;
      }
    }

    v30 = v20[1];
    v31 = v20;
    if (v30)
    {
      do
      {
        v29 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v29 = v31[2];
        v27 = *v29 == v31;
        v31 = v29;
      }

      while (!v27);
    }

    goto LABEL_67;
  }

  while (1)
  {
LABEL_38:
    v25 = v12->__shared_owners_;
    if (v25)
    {
      do
      {
        v26 = v25;
        v25 = v25->__vftable;
      }

      while (v25);
    }

    else
    {
      do
      {
        v26 = v12->__shared_weak_owners_;
        v27 = *v26 == v12;
        v12 = v26;
      }

      while (!v27);
    }

    if (v26 == v13)
    {
      break;
    }

    on_zero_shared = *p_on_zero_shared;
    v12 = v26;
    if (*p_on_zero_shared)
    {
      goto LABEL_21;
    }
  }

LABEL_91:
  v42 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = v1->__shared_owners_;
    *v65 = 67109120;
    v66 = v43;
    _os_log_impl(&dword_240E91000, v42, OS_LOG_TYPE_DEFAULT, "#I Registering new set of indications for client; Client=0x%02x", v65, 8u);
  }

  v44 = v1[1].__shared_weak_owners_;
  v45 = &v1[2].__vftable;
  if (v44 != v45)
  {
    v46 = &v2[8].__on_zero_shared;
    while (1)
    {
      v47 = operator new(0x38uLL);
      v48 = *(v44 + 7);
      v47[8] = v48;
      v49 = v68;
      *(v47 + 5) = *buf;
      *(v47 + 6) = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = *v46;
      v51 = &v2[8].__on_zero_shared;
      v52 = &v2[8].__on_zero_shared;
      if (*v46)
      {
        break;
      }

LABEL_99:
      *v47 = 0;
      *(v47 + 1) = 0;
      *(v47 + 2) = v51;
      *v52 = v47;
      v53 = *v2[8].~__shared_weak_count_0;
      if (v53)
      {
        goto LABEL_100;
      }

LABEL_101:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[8].__on_zero_shared, v47);
      ++v2[8].__get_deleter;
      v54 = v44[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v44[2];
          v27 = *v55 == v44;
          v44 = v55;
        }

        while (!v27);
      }

      v44 = v55;
      if (v55 == v45)
      {
        goto LABEL_113;
      }
    }

    do
    {
      while (1)
      {
        v51 = v50;
        if (v48 >= *(v50 + 8))
        {
          break;
        }

        v50 = *v50;
        v52 = v51;
        if (!*v51)
        {
          goto LABEL_99;
        }
      }

      v50 = v50[1];
    }

    while (v50);
    *v47 = 0;
    *(v47 + 1) = 0;
    *(v47 + 2) = v51;
    v51[1] = v47;
    v53 = *v2[8].~__shared_weak_count_0;
    if (!v53)
    {
      goto LABEL_101;
    }

LABEL_100:
    v2[8].~__shared_weak_count_0 = v53;
    goto LABEL_101;
  }

LABEL_113:
  v56 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  v1 = v63;
  if (v63)
  {
    goto LABEL_117;
  }

LABEL_121:
  v59 = a1;
  if (a1)
  {
    v60 = a1[2];
    if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
      v59 = a1;
    }

    operator delete(v59);
  }

  v61 = *MEMORY[0x277D85DE8];
}