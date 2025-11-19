void sub_18F786378(_Unwind_Exception *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&STACK[0x298]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json((v1 - 128));
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<float const&,float,0>(uint64_t a1, float *a2)
{
  *(a1 + 8) = 0;
  v3 = *a2;
  *a1 = 7;
  *(a1 + 8) = v3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(uint64_t a1, uint64_t a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(void *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_18F7870E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (v9 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v10 = *a1;
            v11 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_266;
          }

LABEL_322:
          __assert_rtn("dump", "serializer.hpp", 363, "false");
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1]);
        v11 = ***a1;
LABEL_159:

        return v11();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v61 = a2[1];
          v63 = *v61;
          v62 = v61[1];
          if (v63 != v62 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v63, 0, a4, a5);
              (***a1)();
              v63 += 16;
              v64 = a2[1];
              v62 = v64[1];
            }

            while (v63 != v62 - 16);
            v63 = *v64;
          }

          if (v63 == v62)
          {
            __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v62 - 16, 0, a4, a5);
          goto LABEL_142;
        }

        v34[1]();
        v35 = a5 + a4;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_296;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_296:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v92 = a2[1];
        v94 = *v92;
        v93 = v92[1];
        if (v94 != v93 - 16)
        {
          do
          {
            v95 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v95 = *v36;
            }

            ((**a1)[1])(*a1, v95, (a5 + a4));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v94, 1, a4, (a5 + a4));
            ((**a1)[1])(*a1, ",\n", 2);
            v94 += 16;
            v96 = a2[1];
            v93 = v96[1];
          }

          while (v94 != v93 - 16);
          v94 = *v96;
        }

        if (v94 == v93)
        {
          __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
        }

        v97 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v97 = *v36;
        }

        ((**a1)[1])(*a1, v97, (a5 + a4));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, (a5 + a4));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a5);
LABEL_142:
        v11 = ***a1;
        goto LABEL_159;
      }

      v49 = v34[1];
      goto LABEL_52;
    }

    if (*a2)
    {
      v13 = *a1;
      v14 = **a1;
      if (!a2[1][2])
      {
        v49 = v14[1];
LABEL_52:

        return v49();
      }

      if (!a3)
      {
        (*v14)();
        v52 = a2[1];
        v53 = *v52;
        if (v52[2] != 1)
        {
          v54 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v53 + 4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v53 + 7, 0, a4, a5);
            (***a1)();
            v55 = v53[1];
            v56 = v53;
            if (v55)
            {
              do
              {
                v53 = v55;
                v55 = *v55;
              }

              while (v55);
            }

            else
            {
              do
              {
                v53 = v56[2];
                v57 = *v53 == v56;
                v56 = v53;
              }

              while (!v57);
            }

            ++v54;
            v52 = a2[1];
          }

          while (v54 < v52[2] - 1);
        }

        v58 = v52 + 1;
        if (v53 == v58)
        {
          __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
        }

        v59 = v53[1];
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          v98 = v53;
          do
          {
            v60 = v98[2];
            v57 = *v60 == v98;
            v98 = v60;
          }

          while (!v57);
        }

        if (v60 != v58)
        {
          __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v53 + 4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v53 + 7, 0, a4, a5);
        goto LABEL_158;
      }

      v14[1]();
      v15 = a5 + a4;
      v16 = a1 + 76;
      v17 = *(a1 + 631);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = a1[77];
        if (v18 < v15)
        {
          goto LABEL_294;
        }
      }

      else if (v15 > v17)
      {
        v18 = *(a1 + 631);
LABEL_294:
        std::string::resize((a1 + 76), 2 * v18, 32);
      }

      v83 = a2[1];
      v84 = *v83;
      if (v83[2] == 1)
      {
        v85 = *v83;
      }

      else
      {
        v86 = 0;
        do
        {
          v87 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v87 = *v16;
          }

          ((**a1)[1])(*a1, v87, (a5 + a4));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v84 + 4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v84 + 7, 1, a4, (a5 + a4));
          ((**a1)[1])(*a1, ",\n", 2);
          v88 = v84[1];
          if (v88)
          {
            do
            {
              v85 = v88;
              v88 = *v88;
            }

            while (v88);
          }

          else
          {
            do
            {
              v85 = v84[2];
              v57 = *v85 == v84;
              v84 = v85;
            }

            while (!v57);
          }

          ++v86;
          v83 = a2[1];
          v84 = v85;
        }

        while (v86 < v83[2] - 1);
      }

      v89 = v83 + 1;
      if (v85 == v89)
      {
        __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
      }

      v90 = v85[1];
      if (v90)
      {
        do
        {
          v91 = v90;
          v90 = *v90;
        }

        while (v90);
      }

      else
      {
        v99 = v85;
        do
        {
          v91 = v99[2];
          v57 = *v91 == v99;
          v99 = v91;
        }

        while (!v57);
      }

      if (v91 != v89)
      {
        __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
      }

      v100 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v100 = *v16;
      }

      ((**a1)[1])(*a1, v100, (a5 + a4));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v85 + 4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v85 + 7, 1, a4, (a5 + a4));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v101 = *v16;
      }

      v76 = (**a1)[1];
LABEL_157:
      v76();
LABEL_158:
      v11 = ***a1;
      goto LABEL_159;
    }

    goto LABEL_43;
  }

  if (*a2 <= 6u)
  {
    if (v9 == 5)
    {
      v19 = a2[1];
      if (v19)
      {
        v23 = a1 + 2;
        if ((v19 & 0x8000000000000000) != 0)
        {
          *v23 = 45;
          v19 = -v19;
          v65 = 1;
          if (v19 >= 0xA)
          {
            v66 = v19;
            while (1)
            {
              if (v66 <= 0x63)
              {
                ++v65;
                goto LABEL_199;
              }

              if (v66 <= 0x3E7)
              {
                v65 += 2;
                goto LABEL_199;
              }

              if (v66 >> 4 <= 0x270)
              {
                break;
              }

              v65 += 4;
              v22 = v66 >= 0x186A0;
              v66 /= 0x2710uLL;
              if (!v22)
              {
                goto LABEL_199;
              }
            }

            v65 += 3;
          }
        }

        else
        {
          if (v19 < 0xA)
          {
            goto LABEL_31;
          }

          v65 = 1;
          v67 = a2[1];
          while (v67 > 0x63)
          {
            if (v67 <= 0x3E7)
            {
              v65 += 2;
              goto LABEL_200;
            }

            if (v67 >> 4 <= 0x270)
            {
              v65 += 3;
              goto LABEL_200;
            }

            v65 += 4;
            v22 = v67 >= 0x186A0;
            v67 /= 0x2710uLL;
            if (!v22)
            {
              goto LABEL_200;
            }
          }
        }

LABEL_199:
        ++v65;
LABEL_200:
        if (v65 < 0x3F)
        {
          v24 = &v23[v65];
          if (v19 >= 0x64)
          {
            do
            {
              v103 = v19 / 0x64;
              *(v24 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v19 % 0x64];
              v24 -= 2;
              v139 = v19 >> 4;
              v19 /= 0x64uLL;
            }

            while (v139 > 0x270);
            goto LABEL_205;
          }

          goto LABEL_204;
        }

LABEL_288:
        __assert_rtn("dump_integer", "serializer.hpp", 726, "n_chars < number_buffer.size() - 1");
      }
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_322;
      }

      v19 = a2[1];
      if (v19)
      {
        if (v19 >= 0xA)
        {
          v20 = 1;
          v21 = a2[1];
          while (1)
          {
            if (v21 <= 0x63)
            {
              ++v20;
              goto LABEL_168;
            }

            if (v21 <= 0x3E7)
            {
              v20 += 2;
              goto LABEL_168;
            }

            if (v21 >> 4 <= 0x270)
            {
              break;
            }

            v20 += 4;
            v22 = v21 >= 0x186A0;
            v21 /= 0x2710uLL;
            if (!v22)
            {
              goto LABEL_168;
            }
          }

          v20 += 3;
LABEL_168:
          if (v20 < 0x3F)
          {
            v24 = a1 + v20 + 16;
            if (v19 >= 0x64)
            {
              do
              {
                v103 = v19 / 0x64;
                *(v24 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v19 % 0x64];
                v24 -= 2;
                v104 = v19 >> 4;
                v19 /= 0x64uLL;
              }

              while (v104 > 0x270);
              goto LABEL_205;
            }

LABEL_204:
            v103 = v19;
LABEL_205:
            if (v103 >= 0xA)
            {
              *(v24 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[v103];
LABEL_209:
              v140 = *a1;
LABEL_265:
              v11 = (*v140)[1];
              goto LABEL_266;
            }

            LOBYTE(v19) = v103;
LABEL_208:
            *(v24 - 1) = v19 | 0x30;
            goto LABEL_209;
          }

          goto LABEL_288;
        }

LABEL_31:
        v24 = a1 + 17;
        goto LABEL_208;
      }
    }

    v41 = *a1;
    v42 = ***a1;
    goto LABEL_58;
  }

  if (v9 == 7)
  {
    v39 = *(a2 + 1);
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_43:
      v40 = *a1;
      v11 = (**a1)[1];
      goto LABEL_266;
    }

    v47 = a2[1];
    if ((*&v39 & 0x8000000000000000) != 0)
    {
      v39 = -v39;
      v48 = a1 + 17;
      *(a1 + 16) = 45;
    }

    else
    {
      v48 = a1 + 2;
    }

    if (v39 == 0.0)
    {
      *v48 = 11824;
      v48[2] = 48;
LABEL_264:
      v140 = *a1;
      goto LABEL_265;
    }

    if ((a1 + 10) - v48 <= 16)
    {
      __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
    }

    if (v39 <= 0.0)
    {
      __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
    }

    v169 = (a1 + 10) - v48;
    v77 = *&v39 & 0xFFFFFFFFFFFFFLL;
    if (*&v39 >> 52)
    {
      v81 = (*&v39 >> 52) - 1075;
      v79 = 2 * (v77 | 0x10000000000000);
      v80 = (2 * (*&v39 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
      v78 = (*&v39 >> 52) - 1076;
      v82 = (*&v39 >> 52) - 1076;
      if (*&v39 >> 53 && !v77)
      {
        v82 = (*&v39 >> 52) - 1077;
        v77 = 0x10000000000000;
        v102 = 0x3FFFFFFFFFFFFFLL;
        goto LABEL_176;
      }

      v77 |= 0x10000000000000uLL;
    }

    else
    {
      v78 = 4294966221;
      v79 = 2 * *&v39;
      v80 = (2 * (*&v39 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v81 = 4294966222;
      v82 = -1075;
    }

    v102 = v79 - 1;
LABEL_176:
    v105 = nlohmann::detail::dtoa_impl::diyfp::normalize(v80, v78);
    v107 = v106;
    v108 = v82 - v106;
    if (v82 - v106 < 0)
    {
      v167 = "delta >= 0";
      v168 = 162;
    }

    else
    {
      v109 = v102 << v108;
      if ((v102 << v108) >> v108 == v102)
      {
        v110 = v105;
        v111 = nlohmann::detail::dtoa_impl::diyfp::normalize(v77, v81);
        if (v107 != v112)
        {
          __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
        }

        if (v107 <= -1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
        }

        if (v107 >= 1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
        }

        v113 = 78913 * (-61 - v107) / 0x40000;
        if (v107 < -61)
        {
          ++v113;
        }

        if (v113 <= -315)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
        }

        v114 = ((v113 + 307 + (((v113 + 307) >> 28) & 7)) << 16) >> 19;
        if (v114 >= 0x4F)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
        }

        v115 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v114);
        v116 = v115[1];
        if (v116 + v107 <= -125)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
        }

        if (v116 + v107 >= -95)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
        }

        v117 = *v115;
        v118 = v115[1];
        v119 = nlohmann::detail::dtoa_impl::diyfp::mul(v111, v107, *v115);
        v121 = v120;
        v122 = nlohmann::detail::dtoa_impl::diyfp::mul(v109, v107, v117);
        v124 = v123;
        v125 = nlohmann::detail::dtoa_impl::diyfp::mul(v110, v107, v117);
        v127 = v126;
        if (v126 <= -61)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
        }

        if (v126 >= -31)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
        }

        v128 = v125 - 1;
        v129 = nlohmann::detail::dtoa_impl::diyfp::sub(v125 - 1, v126, v122 + 1, v124);
        v130 = nlohmann::detail::dtoa_impl::diyfp::sub(v128, v127, v119, v121);
        v131 = -v127;
        v132 = v128 >> -v127;
        if (!v132)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
        }

        v133 = v130;
        v134 = HIDWORD(v116);
        v135 = (1 << v131) - 1;
        v136 = v135 & v128;
        if (v132 <= 0x3B9AC9FF)
        {
          if (v132 <= 0x5F5E0FF)
          {
            if (v132 <= 0x98967F)
            {
              if (v132 <= 0xF423F)
              {
                v141 = v132 >> 5;
                v142 = v132 >> 4;
                if (v132 <= 9)
                {
                  v143 = 1;
                }

                else
                {
                  v143 = 10;
                }

                if (v132 <= 9)
                {
                  v144 = 1;
                }

                else
                {
                  v144 = 2;
                }

                if (v132 <= 0x63)
                {
                  v145 = v144;
                }

                else
                {
                  v145 = 3;
                }

                if (v132 <= 0x63)
                {
                  v146 = v143;
                }

                else
                {
                  v146 = 100;
                }

                if (v132 <= 0x3E7)
                {
                  v147 = v145;
                }

                else
                {
                  v147 = 4;
                }

                if (v132 <= 0x3E7)
                {
                  v148 = v146;
                }

                else
                {
                  v148 = 1000;
                }

                if (v142 <= 0x270)
                {
                  v149 = v147;
                }

                else
                {
                  v149 = 5;
                }

                if (v142 <= 0x270)
                {
                  v150 = v148;
                }

                else
                {
                  v150 = 10000;
                }

                if (v141 <= 0xC34)
                {
                  v138 = v149;
                }

                else
                {
                  v138 = 6;
                }

                if (v141 > 0xC34)
                {
                  v137 = 100000;
                }

                else
                {
                  v137 = v150;
                }
              }

              else
              {
                v137 = 1000000;
                v138 = 7;
              }
            }

            else
            {
              v137 = 10000000;
              v138 = 8;
            }
          }

          else
          {
            v137 = 100000000;
            v138 = 9;
          }
        }

        else
        {
          v137 = 1000000000;
          v138 = 10;
        }

        v151 = 0;
        v152 = -v138;
        v153 = v138 - 1;
        do
        {
          v154 = v132 / v137;
          if (v132 / v137 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
          }

          v132 = v132 % v137;
          v155 = v151 + 1;
          v48[v151] = v154 | 0x30;
          if ((v132 << v131) + v136 <= v129)
          {
            nlohmann::detail::dtoa_impl::grisu2_round(v48, (v151 + 1), v133, v129, (v132 << v131) + v136, v137 << v131);
            LODWORD(v159) = v155;
            goto LABEL_253;
          }

          v137 /= 0xAu;
          --v153;
          ++v151;
        }

        while (v152 + v155);
        if (v136 <= v129)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
        }

        v156 = -1;
        do
        {
          if (v136 >= 0x199999999999999ALL)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
          }

          v157 = (10 * v136) >> v131;
          if (v157 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
          }

          v48[v155] = v157 | 0x30;
          v136 = (10 * v136) & v135;
          v158 = 5 * v129;
          v159 = (v155 + 1);
          v129 *= 10;
          v133 *= 10;
          ++v156;
          ++v155;
        }

        while (v136 > 2 * v158);
        v153 = ~v156;
        nlohmann::detail::dtoa_impl::grisu2_round(v48, v159, v133, v129, v136, 1 << v131);
LABEL_253:
        if (v159 >= 18)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
        }

        if (v169 <= 0x15)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
        }

        if (v169 == 22)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
        }

        v160 = v153 - v134;
        v161 = v153 - v134 + v159;
        if (v153 - v134 < 0 || v161 > 15)
        {
          if ((v161 - 16) >= 0xFFFFFFF1)
          {
            if ((v160 & 0x80000000) == 0)
            {
              __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
            }

            v162 = &v48[v161];
            memmove(v162 + 1, v162, v159 - v161);
            *v162 = 46;
          }

          else if (v161 != 0 && v161 < 0xFFFFFFFD)
          {
            if (v159 != 1)
            {
              memmove(v48 + 2, v48 + 1, v159 - 1);
              v48[1] = 46;
              v48 += v159;
            }

            v48[1] = 101;
            if (v161 <= -999)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
            }

            if (v161 >= 1001)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
            }

            v163 = v161 - 1;
            if (v161 >= 1)
            {
              v164 = 43;
            }

            else
            {
              v164 = 45;
            }

            if (v163 < 0)
            {
              v163 = 1 - v161;
            }

            v48[2] = v164;
            if (v163 > 9)
            {
              if (v163 > 0x63)
              {
                v48[3] = v163 / 0x64u + 48;
                LOBYTE(v163) = v163 % 0x64u;
                v166 = v163 / 0xAu;
                v165 = v48 + 5;
                v48[4] = (v163 / 0xAu) | 0x30;
              }

              else
              {
                v166 = v163 / 0xAu;
                v165 = v48 + 4;
                v48[3] = (v163 / 0xAu) | 0x30;
              }

              LOBYTE(v163) = v163 - 10 * v166;
            }

            else
            {
              v165 = v48 + 4;
              v48[3] = 48;
            }

            *v165 = v163 | 0x30;
          }

          else
          {
            memmove(&v48[-v161 + 2], v48, v159);
            *v48 = 11824;
            memset(v48 + 2, 48, -v161);
          }
        }

        else
        {
          memset(&v48[v159], 48, v160);
          *&v48[v161] = 12334;
        }

        goto LABEL_264;
      }

      v167 = "((x.f << delta) >> delta) == x.f";
      v168 = 163;
    }

    __assert_rtn("normalize_to", "to_chars.hpp", v168, v167);
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      goto LABEL_322;
    }

    v12 = *a1;
    v11 = (**a1)[1];
LABEL_266:

    return v11();
  }

  v26 = *a1;
  v27 = (**a1)[1];
  if (a3)
  {
    v27();
    v28 = (a5 + a4);
    v29 = a1 + 76;
    v30 = *(a1 + 631);
    if ((v30 & 0x80000000) != 0)
    {
      v68 = a1[77];
      if (v68 >= v28)
      {
        v31 = *a1;
LABEL_94:
        v32 = *v29;
        goto LABEL_95;
      }
    }

    else
    {
      if (v28 <= v30)
      {
        v31 = *a1;
        v32 = a1 + 76;
LABEL_95:
        ((*v31)[1])(v31, v32, v28);
        ((**a1)[1])(*a1, "bytes: [", 10);
        v69 = *a2[1];
        v70 = a2[1][1];
        v71 = *a2[1];
        if (v71 != v70)
        {
          for (; v71 != v70 - 1; v70 = a2[1][1])
          {
            v72 = *v71++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v72);
            ((**a1)[1])(*a1, ", ", 2);
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v70 - 1));
        }

        ((**a1)[1])(*a1, "],\n", 3);
        v73 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v73 = *v29;
        }

        ((**a1)[1])(*a1, v73, v28);
        ((**a1)[1])(*a1, "subtype: ", 11);
        v74 = a2[1];
        if (*(v74 + 25) == 1)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v74 + 24));
        }

        else
        {
          ((**a1)[1])(*a1, "null", 4);
        }

        (***a1)(*a1, 10);
        if (*(a1 + 631) < 0)
        {
          v75 = *v29;
        }

        v76 = (**a1)[1];
        goto LABEL_157;
      }

      v68 = *(a1 + 631);
    }

    std::string::resize((a1 + 76), 2 * v68, 32);
    v31 = *a1;
    v32 = a1 + 76;
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v27();
  v43 = *a2[1];
  v44 = a2[1][1];
  v45 = *a2[1];
  if (v45 != v44)
  {
    while (v45 != v44 - 1)
    {
      v46 = *v45++;
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v46);
      (***a1)(*a1, 44);
      v44 = a2[1][1];
    }

    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v44 - 1));
  }

  ((**a1)[1])(*a1, "],subtype:", 12);
  v51 = a2[1];
  if (*(v51 + 25) != 1)
  {
    v11 = (**a1)[1];
    goto LABEL_266;
  }

  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v51 + 24));
  v42 = ***a1;
LABEL_58:

  return v42();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    if (v12)
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    if (v7)
    {
      v6 = v15 & 0x3F | (v6 << 6);
    }

    else
    {
      v6 = (0xFFu >> nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]) & v15;
    }

    v16 = 16 * v7 + nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15] + 256;
    if (v16 >= 0x190)
    {
      __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
    }

    v7 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v16];
    if (v7 == 1)
    {
      v18 = v5[158];
      if ((v18 - 1) >= 2)
      {
        if (!v18)
        {
          v42 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v35, v9);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, "invalid UTF-8 byte at index ", &v35);
          v27 = std::string::append(&v36, ": 0x", 4uLL);
          v28 = *&v27->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          if (v42 >= 0)
          {
            v29 = __str;
          }

          else
          {
            v29 = *__str;
          }

          if (v42 >= 0)
          {
            v30 = v42;
          }

          else
          {
            v30 = v41;
          }

          v31 = std::string::append(&v37, v29, v30);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v39 = v31->__r_.__value_.__r.__words[2];
          v38 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(exception, 316, &v38);
        }

        __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
      }

      v9 -= v10 != 0;
      if (v18 == 1)
      {
        v19 = v13 + v11;
        v8 = v11 + 3;
        *v19 = -16401;
        *(v19 + 2) = -67;
        if ((v11 - 497) > 0xC)
        {
          v7 = 0;
          v10 = 0;
          v11 += 3;
          goto LABEL_46;
        }

        v21 = *(**v5 + 8);
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v7)
    {
      if (v6 <= 11)
      {
        switch(v6)
        {
          case 8:
            v17 = 25180;
            goto LABEL_41;
          case 9:
            v17 = 29788;
            goto LABEL_41;
          case 10:
            v17 = 28252;
            goto LABEL_41;
        }
      }

      else if (v6 > 33)
      {
        if (v6 == 34)
        {
          v17 = 8796;
          goto LABEL_41;
        }

        if (v6 == 92)
        {
          v17 = 23644;
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 == 12)
        {
          v17 = 26204;
          goto LABEL_41;
        }

        if (v6 == 13)
        {
          v17 = 29276;
LABEL_41:
          *(v13 + v8) = v17;
          v11 = v8 + 2;
          goto LABEL_42;
        }
      }

      if (v6 > 0x1F)
      {
        if ((v2 & 0x80u) == 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v23 + v9);
      }

      else
      {
        result = snprintf((v13 + v8), 7uLL, "\\u%04x", v6);
        v11 = v8 + 6;
      }

LABEL_42:
      if ((v11 - 500) <= 0xC)
      {
        v21 = *(**v5 + 8);
LABEL_44:
        result = v21();
        v7 = 0;
        v11 = 0;
        v10 = 0;
        v8 = 0;
        goto LABEL_46;
      }

LABEL_45:
      v7 = 0;
      v10 = 0;
      v8 = v11;
      goto LABEL_46;
    }

    if ((v2 & 0x80u) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *(v13 + v8++) = *(v20 + v9);
    ++v10;
LABEL_46:
    ++v9;
    v2 = *(a2 + 23);
    v12 = v2 >> 63;
    v22 = a2[1];
    if ((v2 & 0x80000000) == 0)
    {
      v22 = *(a2 + 23);
    }
  }

  while (v9 < v22);
  if (v7)
  {
    v25 = v5[158];
    switch(v25)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v11);
        v24 = *(**v5 + 8);
        break;
      case 2:
        v24 = *(**v5 + 8);
        break;
      case 0:
        v42 = 3;
        *__str = 0;
        v33 = *a2;
        if ((v2 & 0x80000000) == 0)
        {
          v33 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v33 + v22 - 1));
        v34 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(v34, 316, &v38);
      default:
        __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
    }

LABEL_57:

    return v24();
  }

  else if (v8)
  {
    v24 = *(**v5 + 8);
    goto LABEL_57;
  }

  return result;
}

void sub_18F789390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (*(v37 - 81) < 0)
      {
        operator delete(*(v37 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  if (a2 < 0xA)
  {
    v2 = 1;
LABEL_8:
    v5 = a2 | 0x30;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
    v2 = 3;
    a2 = (41 * a2) >> 12;
    goto LABEL_8;
  }

  v4 = &nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[a2];
  *(a1 + 17) = v4[1];
  v5 = *v4;
  v2 = 2;
LABEL_9:
  *(a1 + 16) = v5;
  return (*(**a1 + 8))(*a1, a1 + 2, v2);
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::sub(unint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a2 != a4)
  {
    v6 = "x.e == y.e";
    v7 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v7, v6);
  }

  v4 = a1 >= a3;
  result = a1 - a3;
  if (!v4)
  {
    v6 = "x.f >= y.f";
    v7 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
  }

  if (a3 > a4)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
  }

  if (a4 < a5)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
  }

  if (!a6)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0336B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t ADTSAudioStream::HandleDiscontinuity(ADTSAudioStream *this)
{
  *(this + 59) = 0;
  *(this + 332) = 1;
  *(this + 344) = 0;
  *(this + 356) = 0;
  *(this + 373) = 0;
  return 0;
}

uint64_t ADTSAudioStream::GeneratePackets(uint64_t a1)
{
  v2 = *(a1 + 236);
  if (v2 <= 282)
  {
    if (v2 > 275)
    {
      if (v2 == 276)
      {
        goto LABEL_139;
      }

      if (v2 == 280)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v2 == -1)
      {
        return 0;
      }

      if (!v2)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if (v2 <= 313)
  {
    if (v2 == 283)
    {
      v11 = *(a1 + 8);
      v12 = *(v11 + 120);
      goto LABEL_42;
    }

    if (v2 == 300)
    {
      v5 = *(a1 + 256);
      v6 = *(a1 + 8);
      v7 = *(a1 + 264);
      goto LABEL_67;
    }

    goto LABEL_20;
  }

  if (v2 == 314)
  {
    v9 = *(a1 + 8);
    LODWORD(v10) = *(v9 + 120);
    goto LABEL_94;
  }

  if (v2 == 328)
  {
    goto LABEL_253;
  }

  if (v2 != 419)
  {
LABEL_20:
    result = 0;
    v13 = -1;
    goto LABEL_266;
  }

  LODWORD(v3) = *(a1 + 256);
  v4 = *(a1 + 264);
LABEL_197:
  v153[0] = v3;
  StreamBuffer::Copy((*(a1 + 8) + 72), v153, v4);
  v120 = v153[0];
  v121 = *(a1 + 256);
  *(a1 + 264) += v153[0];
  v122 = v121 - v120;
  *(a1 + 256) = v122;
  if (v122)
  {
    result = 0;
    v13 = 419;
    goto LABEL_266;
  }

  if (!*(a1 + 200))
  {
    *(a1 + 200) = 1;
    CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), 1);
  }

  v123 = *(a1 + 352);
  v124 = *(a1 + 192);
  v124->mStartOffset = v123;
  v125 = *(a1 + 340);
  v124->mVariableFramesInPacket = 0;
  v124->mDataByteSize = v125 - v123;
  AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v125, 1u, *(a1 + 288), v124, 1);
  ++*(a1 + 184);
LABEL_21:
  while (1)
  {
    v14 = *(a1 + 400);
    if (v14)
    {
      break;
    }

LABEL_23:
    v11 = *(a1 + 8);
    v16 = *(v11 + 88);
    v15 = *(v11 + 96);
    v17 = v16 + *(v11 + 80);
    v12 = v17 - v15;
    v19 = v15 < v16 || v17 <= v15 || v17 == v15;
    if (v19)
    {
      result = 0;
      v13 = 280;
      goto LABEL_266;
    }

    if (*(a1 + 356) == 1)
    {
      v20 = *(a1 + 360);
      v21 = *(a1 + 352) - v20;
      *(a1 + 256) = v21;
      if (v21 > v12)
      {
        *(a1 + 272) = v15;
        v22 = *(v11 + 128);
        v23 = *(v11 + 72);
        if (v23 == v22)
        {
          if (v12)
          {
            v24 = &v23[(v15 - v16)];
          }

          else
          {
            v24 = 0;
          }

          memmove(v22, v24, v12);
          v25 = (*(a1 + 352) - *(a1 + 360));
          v11 = *(a1 + 8);
          if (*(v11 + 124) < v25)
          {
            *(v11 + 124) = v25;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v11 + 128), v25);
            v11 = *(a1 + 8);
          }

          *(v11 + 120) = v12;
          *(v11 + 96) = *(v11 + 88) + *(v11 + 80);
        }

        else
        {
          if (*(v11 + 124) < v21)
          {
            *(v11 + 124) = v21;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v11 + 128), v21);
            v11 = *(a1 + 8);
          }

          v12 = 0;
          *(v11 + 120) = 0;
        }

LABEL_42:
        v26 = *(a1 + 256) - v12;
        v27 = *(v11 + 88);
        v28 = *(v11 + 96);
        v29 = v27 + *(v11 + 80);
        if (v29 <= v28 || v28 < v27)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29 - v28;
        }

        if (v26 <= v31)
        {
          v26 = v31;
        }

        v153[0] = v26;
        v32 = v26 + v12;
        if (*(v11 + 124) < v32)
        {
          *(v11 + 124) = v32;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v11 + 128), v32);
          v11 = *(a1 + 8);
        }

        StreamBuffer::Copy((v11 + 72), v153, (*(v11 + 128) + *(v11 + 120)));
        v11 = *(a1 + 8);
        v12 = *(v11 + 120) + v153[0];
        *(v11 + 120) = v12;
        if (v12 < *(a1 + 256))
        {
          result = 0;
          v13 = 283;
          goto LABEL_266;
        }

        v15 = *(a1 + 272);
        v33 = *(v11 + 128);
        *(v11 + 88) = v15;
        *(v11 + 96) = v15;
        *(v11 + 72) = v33;
        *(v11 + 80) = v12;
        v20 = *(a1 + 360);
        v17 = v15 + v12;
        v16 = v15;
      }

      v34 = 0;
      if (v15 >= v16 && v15 < v17 && v12 != 0)
      {
        v34 = (*(v11 + 72) + (v15 - v16));
      }

      memcpy((a1 + 364 + v20), v34, *(a1 + 352) - v20);
      if (*(a1 + 364) == 255 && *(a1 + 365) >= 0xF0u)
      {
        v36 = ADTSAudioStream::ParseADTSPacket(a1, *(a1 + 352), a1 + 364, v153, 0);
        *(a1 + 356) = v36;
        v37 = size;
        v38 = *(a1 + 352);
        if (v38 > size)
        {
          return 1885563711;
        }

        *(a1 + 340) = size;
        if (v36)
        {
          if (*(a1 + 284) < v37)
          {
            *(a1 + 284) = v37;
            CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v37, 0);
            v38 = *(a1 + 352);
          }

          memcpy(*(a1 + 288), (a1 + 364), v38);
          v6 = *(a1 + 8);
          v39 = *(a1 + 352);
          *(v6 + 96) += (v39 - *(a1 + 360));
          v5 = *(a1 + 340) - v39;
          *(a1 + 256) = v5;
          v7 = (*(a1 + 288) + v39);
          *(a1 + 264) = v7;
LABEL_67:
          v153[0] = v5;
          StreamBuffer::Copy((v6 + 72), v153, v7);
          v40 = v153[0];
          v41 = *(a1 + 256);
          *(a1 + 264) += v153[0];
          v42 = v41 - v40;
          *(a1 + 256) = v42;
          if (v42)
          {
            result = 0;
            v13 = 300;
            goto LABEL_266;
          }

          v43 = *(a1 + 352);
          v44 = *(a1 + 192);
          v44->mStartOffset = v43;
          v45 = *(a1 + 340);
          v44->mVariableFramesInPacket = 0;
          v44->mDataByteSize = v45 - v43;
          AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v45, 1u, *(a1 + 288), v44, 1);
          ++*(a1 + 184);
        }
      }

      *(a1 + 360) = 0;
      *(a1 + 356) = 0;
    }

    if (*(a1 + 373) == 1)
    {
      v46 = *(a1 + 376);
      v47 = 10 - v46;
      *(a1 + 256) = v47;
      v9 = *(a1 + 8);
      v49 = *(v9 + 88);
      v48 = *(v9 + 96);
      v50 = v49 + *(v9 + 80);
      v52 = v48 < v49 || v50 <= v48;
      v53 = v50 - v48;
      if (v52)
      {
        v10 = 0;
      }

      else
      {
        v10 = v53;
      }

      if (v10 < v47)
      {
        *(a1 + 272) = v48;
        v54 = *(v9 + 128);
        v55 = *(v9 + 72);
        if (v55 == v54)
        {
          if (v53)
          {
            v56 = v52;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            v57 = 0;
          }

          else
          {
            v57 = &v55[(v48 - v49)];
          }

          memmove(v54, v57, v10);
          v58 = (10 - *(a1 + 376));
          v9 = *(a1 + 8);
          if (*(v9 + 124) < v58)
          {
            *(v9 + 124) = v58;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v9 + 128), v58);
            v9 = *(a1 + 8);
          }

          *(v9 + 120) = v10;
          *(v9 + 96) = *(v9 + 88) + *(v9 + 80);
        }

        else
        {
          if (*(v9 + 124) < v47)
          {
            *(v9 + 124) = v47;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v9 + 128), v47);
            v9 = *(a1 + 8);
          }

          LODWORD(v10) = 0;
          *(v9 + 120) = 0;
        }

LABEL_94:
        v59 = *(a1 + 256) - v10;
        v60 = *(v9 + 88);
        v61 = *(v9 + 96);
        v62 = v60 + *(v9 + 80);
        if (v62 <= v61 || v61 < v60)
        {
          v64 = 0;
        }

        else
        {
          v64 = v62 - v61;
        }

        if (v59 <= v64)
        {
          v59 = v64;
        }

        v153[0] = v59;
        v65 = v59 + v10;
        if (*(v9 + 124) < v65)
        {
          *(v9 + 124) = v65;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v9 + 128), v65);
          v9 = *(a1 + 8);
        }

        StreamBuffer::Copy((v9 + 72), v153, (*(v9 + 128) + *(v9 + 120)));
        v9 = *(a1 + 8);
        v53 = *(v9 + 120) + v153[0];
        *(v9 + 120) = v53;
        if (v53 < *(a1 + 256))
        {
          result = 0;
          v13 = 314;
          goto LABEL_266;
        }

        v48 = *(a1 + 272);
        v66 = *(v9 + 128);
        *(v9 + 88) = v48;
        *(v9 + 96) = v48;
        *(v9 + 72) = v66;
        *(v9 + 80) = v53;
        v46 = *(a1 + 376);
        v50 = v48 + v53;
        v49 = v48;
      }

      v67 = 0;
      v68 = (a1 + 380);
      if (v48 >= v49 && v48 < v50 && v53)
      {
        v67 = (*(v9 + 72) + (v48 - v49));
      }

      memcpy((a1 + 380 + v46), v67, 10 - v46);
      if (*v68 != 17481 || *(a1 + 382) != 51)
      {
        if (*v68 != 16724 || *(a1 + 382) != 71)
        {
LABEL_155:
          *(a1 + 376) = 0;
          *(a1 + 373) = 0;
          goto LABEL_156;
        }

LABEL_132:
        v81 = ID3Size(0xAu, (a1 + 380), (a1 + 396));
        *(a1 + 392) = v81;
        v82 = *(a1 + 376);
        v83 = v81 - v82;
        if (v81 > v82)
        {
          while (1)
          {
            *(a1 + 256) = v83;
            if (!v83)
            {
              break;
            }

LABEL_253:
            v142 = *(a1 + 8);
            v144 = *(v142 + 88);
            v143 = *(v142 + 96);
            v145 = v144 + *(v142 + 80);
            v146 = v143 < v144 || v145 <= v143;
            if (v146 || (v147 = v145 - v143, v145 == v143))
            {
              result = 0;
              v13 = 328;
              goto LABEL_266;
            }

            v148 = *(a1 + 256);
            v149 = v143 + v148;
            v150 = v148 >= v147;
            v151 = v148 - v147;
            if (v150)
            {
              v149 = v145;
            }

            if (v150)
            {
              v83 = v151;
            }

            else
            {
              v83 = 0;
            }

            *(v142 + 96) = v149;
          }
        }

        goto LABEL_155;
      }

      v71 = *(a1 + 376);
      *(a1 + 404) = -v71;
      v72 = *(a1 + 8);
      *(a1 + 408) = *(v72 + 88) - v71;
      if (*(a1 + 416) < 0)
      {
        v73 = 0;
        v74 = *(v72 + 48);
        v75 = *(v72 + 56) - v74;
        if (v75)
        {
          v76 = 0;
          v77 = v75 >> 2;
          v78 = 1;
          do
          {
            v19 = *(v74 + 4 * v76) == 1768174437;
            v73 = v19;
            v76 = v78++;
          }

          while (!v19 && v77 > v76);
        }

        *(a1 + 416) = v73;
        if (!v73)
        {
          goto LABEL_132;
        }
      }

      else if (!*(a1 + 416))
      {
        goto LABEL_132;
      }

      v153[0] = 0;
      v80 = *(v72 + 24);
      if (v80)
      {
        v80(*(v72 + 40), *(v72 + 8), 1768174437, v153);
      }

      goto LABEL_132;
    }

LABEL_156:
    *(a1 + 348) = 0;
    v96 = *(a1 + 8);
    v97 = *(v96 + 88);
    v98 = *(v96 + 96);
    v99 = v97 + *(v96 + 80);
    v100 = v98 < v97 || v99 <= v98;
    v101 = v100;
    if (v100 || v99 == v98)
    {
      v102 = 0;
    }

    else
    {
      v102 = (*(v96 + 72) + (v98 - v97));
    }

    v103 = 0;
    v104 = 0;
    if (v101)
    {
      v105 = *(v96 + 80);
    }

    else
    {
      v105 = v98 - v97;
    }

    if (v101)
    {
      v106 = 0;
    }

    else
    {
      v106 = v99 - v98;
    }

    v152 = 0;
    if (*(a1 + 332))
    {
      v107 = 0;
    }

    else
    {
      v107 = 3;
    }

    *(a1 + 344) = 0;
    *(a1 + 400) = 0;
    while (ADTSAudioStream::ScanForSyncWord(a1, v106, v102, &v152 + 1, v153, 0, v107, &v152))
    {
      v108 = *(a1 + 348);
      v104 = HIDWORD(v152);
      if (!v108)
      {
        v103 = HIDWORD(v152);
      }

      v109 = size;
      if (v106 - HIDWORD(v152) >= size)
      {
        *(a1 + 348) = v108 + 1;
        v110 = v104 + v109;
        v104 = v110;
      }

      else
      {
        *(a1 + 344) = 1;
        *(a1 + 336) = v104 + v105;
        *(a1 + 340) = v109;
        v110 = v104 + v109;
      }

      HIDWORD(v152) = v110;
      if (*(a1 + 332) == 1)
      {
        *(a1 + 332) = 0;
        v107 = 3;
      }
    }

    *(a1 + 400) = v152;
    v111 = *(a1 + 348);
    if (v111)
    {
      if (*(a1 + 200) < v111)
      {
        v112 = (1 << -__clz(v111 - 1));
        *(a1 + 200) = v112;
        CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems((a1 + 192), v112);
      }

      v113 = 0;
      HIDWORD(v152) = v103;
      while (ADTSAudioStream::ScanForSyncWord(a1, v106, v102, &v152 + 1, v153, 0, 1, &v152))
      {
        v114 = HIDWORD(v152);
        v115 = size;
        if (v106 - HIDWORD(v152) >= size)
        {
          v116 = *(a1 + 352);
          v117 = *(a1 + 192) + 16 * v113;
          *v117 = (v116 + HIDWORD(v152));
          *(v117 + 8) = 0;
          *(v117 + 12) = v115 - v116;
        }

        HIDWORD(v152) = v114 + v115;
        ++v113;
      }

      AudioFileStreamWrapper::CallPacketsProc(*(a1 + 8), v104, *(a1 + 348), v102, *(a1 + 192), 1);
      *(a1 + 184) += *(a1 + 348);
    }

    v118 = *(a1 + 8);
    v119 = *(v118 + 96) + v104;
    *(v118 + 96) = v119;
    if (*(a1 + 344) == 1)
    {
      v3 = *(a1 + 340);
      if (*(a1 + 284) < v3)
      {
        *(a1 + 284) = v3;
        CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 288), v3, 0);
        LODWORD(v3) = *(a1 + 340);
      }

      *(a1 + 256) = v3;
      v4 = *(a1 + 288);
      *(a1 + 264) = v4;
      goto LABEL_197;
    }

    v126 = 0;
    v127 = *(v118 + 88);
    v128 = v127 + *(v118 + 80);
    v130 = v119 < v127 || v128 <= v119;
    v131 = v128 - v119;
    if (v130)
    {
      v132 = 0;
    }

    else
    {
      v132 = v131;
    }

    if (!v130 && v131)
    {
      v126 = (*(v118 + 72) + (v119 - v127));
    }

    if (!v132)
    {
      goto LABEL_224;
    }

    if (v132 != 1)
    {
      if (v132 <= *(a1 + 352) - 1)
      {
        v137 = 0;
        if (*v126 == 255)
        {
          v137 = v126[1] > 0xEFu;
        }

        *(a1 + 356) = v137;
      }

      else
      {
LABEL_224:
        v137 = 0;
        *(a1 + 356) = 0;
      }

      if (v132 == 2)
      {
        v138 = *v126;
        v139 = 68;
        if (v138 == 73)
        {
          goto LABEL_232;
        }

        v136 = 0;
        if (v138 == 84)
        {
          v139 = 65;
LABEL_232:
          v140 = v126[1] == v139;
LABEL_233:
          v136 = v140;
        }
      }

      else
      {
        if ((v132 - 3) > 6)
        {
          *(a1 + 373) = 0;
          if (!v137)
          {
            goto LABEL_248;
          }

LABEL_246:
          *(a1 + 360) = v132;
          bzero((a1 + 364), *(a1 + 352));
          memcpy((a1 + 364), v126, v132);
          if ((*(a1 + 373) & 1) == 0)
          {
            goto LABEL_248;
          }

LABEL_247:
          *(a1 + 376) = v132;
          *(a1 + 388) = 0;
          *(a1 + 380) = 0;
          memcpy((a1 + 380), v126, v132);
          goto LABEL_248;
        }

        v141 = *v126;
        if (v141 == 84)
        {
          v136 = 0;
          if (v126[1] == 65)
          {
            v140 = v126[2] == 71;
            goto LABEL_233;
          }
        }

        else
        {
          v136 = 0;
          if (v141 == 73)
          {
            if (v126[1] != 68 || (v136 = 1, v126[2] != 51))
            {
              v136 = 0;
            }
          }
        }
      }

      *(a1 + 373) = v136;
      if (v137)
      {
        goto LABEL_246;
      }

      goto LABEL_237;
    }

    v133 = *v126;
    *(a1 + 356) = v133 == 255;
    v134 = *v126;
    v136 = v134 == 73 || v134 == 84;
    *(a1 + 373) = v136;
    if (v133 == 255)
    {
      goto LABEL_246;
    }

LABEL_237:
    if (v136)
    {
      goto LABEL_247;
    }

LABEL_248:
    *(v118 + 96) = *(v118 + 88) + *(v118 + 80);
  }

  *(a1 + 256) = v14;
LABEL_139:
  while (1)
  {
    v84 = *(a1 + 8);
    v86 = *(v84 + 88);
    v85 = *(v84 + 96);
    v87 = v86 + *(v84 + 80);
    v88 = v87 - v85;
    v89 = v85 < v86 || v87 <= v85;
    if (v89 || v87 == v85)
    {
      break;
    }

    v91 = *(a1 + 256);
    v92 = v85 + v91;
    v93 = v91 >= v88;
    v94 = v91 - v88;
    if (v93)
    {
      v92 = v87;
    }

    if (v93)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    *(v84 + 96) = v92;
    *(a1 + 256) = v95;
    if (!v95)
    {
      *(a1 + 400) = 0;
      goto LABEL_23;
    }
  }

  result = 0;
  v13 = 276;
LABEL_266:
  *(a1 + 236) = v13;
  return result;
}

BOOL ADTSAudioStream::ParseADTSPacket(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, int a5)
{
  if (a2 <= 6)
  {
    return 0;
  }

  v23 = v5;
  v24 = v6;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 48) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 8) = 1633772320;
  *(a4 + 20) = 1024;
  *&v21 = a3;
  *(&v21 + 1) = 8 * a2;
  v22 = a3;
  if (CABitStreamReader::ReadBits(&v21, 0xCu) != 4095)
  {
    return 0;
  }

  *(a4 + 46) = CABitStreamReader::ReadBits(&v21, 1u);
  Bits = CABitStreamReader::ReadBits(&v21, 2u);
  *(a4 + 47) = Bits;
  if (Bits)
  {
    return 0;
  }

  v12 = CABitStreamReader::ReadBits(&v21, 1u);
  *(a4 + 48) = v12;
  v13 = CABitStreamReader::ReadBits(&v21, 2u);
  *(a4 + 49) = v13;
  v14 = CABitStreamReader::ReadBits(&v21, 4u);
  *(a4 + 51) = v14;
  *a4 = gAACSampleRates[v14];
  *(a4 + 50) = CABitStreamReader::ReadBits(&v21, 1u);
  v15 = CABitStreamReader::ReadBits(&v21, 3u);
  *(a4 + 53) = v15;
  *(a4 + 52) = CABitStreamReader::ReadBits(&v21, 2u);
  CABitStreamReader::ReadBits(&v21, 2u);
  v16 = CABitStreamReader::ReadBits(&v21, 0xDu);
  *(a4 + 44) = v16;
  if (v16 < 7u)
  {
    return 0;
  }

  CABitStreamReader::ReadBits(&v21, 0xBu);
  if (CABitStreamReader::ReadBits(&v21, 2u))
  {
    return 0;
  }

  v17 = v13;
  if (v15)
  {
    if (v15 == 7)
    {
      v18 = 8;
    }

    else
    {
      v18 = v15;
    }

    *(a4 + 28) = v18;
    *(a4 + 40) = gAACChannelConfigToLayoutTag[v15];
  }

  else if (a5)
  {
    if (!v12)
    {
      CABitStreamReader::ReadBits(&v21, 0x10u);
    }

    CABitStreamReader::ReadBits(&v21, BYTE12(v22) & 7);
    v20[0] = v21;
    v20[1] = v22;
    ParseADTSChannelConfig(v20, (a4 + 28), (a4 + 40));
    v17 = *(a4 + 49);
  }

  if (!v17)
  {
    v17 = 1;
    *(a4 + 49) = 1;
  }

  v19 = *(a1 + 417);
  if (v19 == -1)
  {
    *(a1 + 417) = *(a4 + 46);
    *(a1 + 418) = *(a4 + 47);
    *(a1 + 420) = v17;
    *(a1 + 421) = *(a4 + 50);
    return 1;
  }

  return v19 == *(a4 + 46) && *(a1 + 418) == *(a4 + 47) && *(a1 + 420) == v17 && *(a1 + 419) == *(a4 + 48) && *(a1 + 421) == *(a4 + 50) && *(a1 + 422) == *(a4 + 51) && *(a1 + 423) == *(a4 + 52) && *(a1 + 424) == *(a4 + 53);
}

uint64_t ADTSAudioStream::ScanForSyncWord(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6, char a7, _DWORD *a8)
{
  v8 = a2;
  v9 = *a4;
  *a8 = 0;
  if (v9 > a2 - *(a1 + 352))
  {
    result = 0;
    goto LABEL_41;
  }

  v33 = a4;
  while (1)
  {
    v16 = (a3 + v9);
    if (*v16 == 255 && v16[1] >= 0xF0u)
    {
      if (ADTSAudioStream::ParseADTSPacket(a1, v8 - v9, a3 + v9, a5, a6))
      {
        result = 1;
        v8 = v9;
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (a7)
    {
      break;
    }

LABEL_38:
    v27 = v9++ < v8 - *(a1 + 352);
    if (!v27)
    {
LABEL_39:
      result = 0;
      goto LABEL_40;
    }
  }

  v17 = *v16 == 17481 && v16[2] == 51;
  if (v17)
  {
    v19 = v8 - v9;
    if ((v8 - v9) < 0xA)
    {
      goto LABEL_39;
    }

    v20 = *(a1 + 8);
    v21 = v16 - *(v20 + 72);
    *(a1 + 404) = v21;
    *(a1 + 408) = *(v20 + 88) + v21;
    if ((a7 & 2) != 0)
    {
      LODWORD(v22) = *(a1 + 416);
      if ((v22 & 0x80000000) != 0)
      {
        v23 = *(v20 + 48);
        v22 = *(v20 + 56) - v23;
        if (v22)
        {
          v24 = 0;
          v25 = v22 >> 2;
          v26 = 1;
          do
          {
            v17 = *(v23 + 4 * v24) == 1768174437;
            LODWORD(v22) = v17;
            v24 = v26++;
            v27 = !v17 && v25 > v24;
          }

          while (v27);
        }

        *(a1 + 416) = v22;
      }

      if (v22)
      {
        v35 = 0;
        v28 = *(v20 + 24);
        if (v28)
        {
          v28(*(v20 + 40), *(v20 + 8), 1768174437, &v35);
        }
      }
    }
  }

  else
  {
    if (*v16 != 16724 || v16[2] != 71)
    {
      goto LABEL_38;
    }

    v19 = v8 - v9;
    if ((v8 - v9) < 0xA)
    {
      goto LABEL_39;
    }
  }

  v29 = ID3Size(0xAu, (a3 + v9), &v34);
  if (!v29)
  {
    v31 = 2;
    goto LABEL_37;
  }

  v30 = v29;
  if (v19 >= v29)
  {
    v31 = v29 - 1;
LABEL_37:
    v9 += v31;
    goto LABEL_38;
  }

  result = 0;
  *a8 = v9 - v8 + v30;
LABEL_40:
  a4 = v33;
LABEL_41:
  *a4 = v8;
  return result;
}

uint64_t ADTSAudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 236);
  if (v4 <= 77)
  {
    if (v4 == -1)
    {
      return 0;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v4 == 95)
  {
    v6 = *(a1 + 8);
    LODWORD(v7) = *(v6 + 120);
    goto LABEL_52;
  }

  if (v4 != 78)
  {
LABEL_7:
    v5 = 0;
LABEL_96:
    v42 = -1;
LABEL_97:
    *(a1 + 236) = v42;
    return v5;
  }

  while (1)
  {
LABEL_10:
    v8 = *(a1 + 8);
    v10 = *(v8 + 88);
    v9 = *(v8 + 96);
    v11 = v10 + *(v8 + 80);
    v12 = v9 < v10 || v11 <= v9;
    if (v12 || v11 == v9)
    {
      v5 = 0;
      v42 = 78;
      goto LABEL_97;
    }

    v13 = 0;
    *(a1 + 425) = 0;
    *(a1 + 428) = 0u;
    *(a1 + 444) = 0u;
    *(a1 + 460) = 0u;
    *(a1 + 472) = 0u;
    v14 = *(v8 + 88);
    v15 = *(v8 + 96);
    v16 = v14 + *(v8 + 80);
    v18 = v15 < v14 || v16 <= v15;
    v19 = v16 - v15;
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    if (!v18 && v19)
    {
      v13 = *(v8 + 72) + (v15 - v14);
    }

    v21 = ADTSAudioStream::ScanForSyncWord(a1, v20, v13, (a1 + 428), a1 + 432, 1, 0, &outPropertyData);
    *(a1 + 425) = v21;
    v22 = *(a1 + 476);
    *(a1 + 256) = v22;
    v6 = *(a1 + 8);
    v23 = *(v6 + 88);
    v24 = *(v6 + 96);
    v25 = v23 + *(v6 + 80);
    v26 = v24 < v23 || v25 <= v24;
    v27 = v26;
    v28 = v25 - v24;
    v7 = v27 ? 0 : v28;
    if (v7 < v22)
    {
      break;
    }

    if (v21)
    {
      goto LABEL_68;
    }

LABEL_64:
    *(v6 + 96) = v25;
  }

  *(a1 + 272) = v24;
  v29 = *(v6 + 128);
  v30 = *(v6 + 72);
  if (v30 == v29)
  {
    if (v28)
    {
      v31 = v27;
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
      v32 = &v30[(v24 - v23)];
    }

    memmove(v29, v32, v7);
    v33 = *(a1 + 476);
    v6 = *(a1 + 8);
    if (*(v6 + 124) < v33)
    {
      *(v6 + 124) = v33;
      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v33);
      v6 = *(a1 + 8);
    }

    *(v6 + 120) = v7;
    *(v6 + 96) = *(v6 + 88) + *(v6 + 80);
  }

  else
  {
    if (*(v6 + 124) < v22)
    {
      *(v6 + 124) = v22;
      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v22);
      v6 = *(a1 + 8);
    }

    LODWORD(v7) = 0;
    *(v6 + 120) = 0;
  }

LABEL_52:
  v34 = *(a1 + 256) - v7;
  v35 = *(v6 + 88);
  v36 = *(v6 + 96);
  v37 = v35 + *(v6 + 80);
  if (v37 <= v36 || v36 < v35)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37 - v36;
  }

  if (v34 <= v39)
  {
    v34 = v39;
  }

  LODWORD(outPropertyData) = v34;
  v40 = v34 + v7;
  if (*(v6 + 124) < v40)
  {
    *(v6 + 124) = v40;
    CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v40);
    v6 = *(a1 + 8);
  }

  StreamBuffer::Copy((v6 + 72), &outPropertyData, (*(v6 + 128) + *(v6 + 120)));
  v6 = *(a1 + 8);
  v28 = *(v6 + 120) + outPropertyData;
  *(v6 + 120) = v28;
  if (v28 < *(a1 + 256))
  {
    v5 = 0;
    v42 = 95;
    goto LABEL_97;
  }

  v23 = *(a1 + 272);
  v41 = *(v6 + 128);
  *(v6 + 88) = v23;
  *(v6 + 96) = v23;
  *(v6 + 72) = v41;
  *(v6 + 80) = v28;
  v25 = v23 + v28;
  if ((*(a1 + 425) & 1) == 0)
  {
    goto LABEL_64;
  }

  v24 = v23;
LABEL_68:
  v43 = 0;
  v44 = v24 >= v23 && v24 < v25;
  v45 = !v44;
  if (v44 && v28)
  {
    v43 = (*(v6 + 72) + (v24 - v23));
  }

  outPropertyData = 0;
  LOWORD(v86) = 0;
  HIDWORD(v86) = 0;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v28;
  }

  if (!ADTSHeader::Deserialize(&outPropertyData, v43, v46))
  {
    if ((outPropertyData & 0x1000) != 0)
    {
      v47 = 7;
    }

    else
    {
      v47 = 9;
    }

    *(a1 + 352) = v47;
  }

  (*(*a1 + 56))(a1, a1 + 432);
  v48 = *(a1 + 8);
  v49 = *(v48 + 96) + *(a1 + 428);
  *(a1 + 104) = v49;
  *(v48 + 96) = v49;
  *(a1 + 128) = 0;
  v50 = *(v48 + 88);
  v51 = v50 + *(v48 + 80);
  if (v51 <= v49 || v49 < v50)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51 - v49;
  }

  if (v53 < *(a1 + 476))
  {
    v5 = 2003334207;
    goto LABEL_96;
  }

  v89 = 0;
  v54 = OpenCodecComponent(0x61616320u, &v89, 0x61646563u);
  if (v54)
  {
    v5 = v54;
    goto LABEL_96;
  }

  ioPropertyDataSize = 32;
  v56 = &v43[*(a1 + 428)];
  __dst[0] = 0;
  if (v56[2] > 0x3Fu)
  {
    v57 = 0;
  }

  else
  {
    CADeprecated::CAAutoFree<unsigned char>::alloc(__dst, *(a1 + 476), 0);
    v57 = __dst[0];
    memcpy(__dst[0], &v43[*(a1 + 428)], *(a1 + 476));
    v57[2] |= 0x40u;
    v56 = v57;
  }

  LODWORD(outPropertyData) = *(a1 + 476);
  v86 = v56;
  LODWORD(size) = 0;
  v88 = 0;
  Property = AudioCodecGetProperty(v89, 0x6D327364u, &ioPropertyDataSize, &outPropertyData);
  if (Property)
  {
    AudioComponentInstanceDispose(v89);
    v59 = 15;
  }

  else
  {
    v59 = 0;
  }

  if (v57)
  {
    free(v57);
  }

  if (Property)
  {
    v60 = 1;
    goto LABEL_109;
  }

  v61 = size;
  if (!size)
  {
    v5 = 2003334207;
    AudioComponentInstanceDispose(v89);
    goto LABEL_96;
  }

  *(a1 + 128) = size;
  CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), v61, 0);
  v88 = *(a1 + 120);
  if (AudioCodecGetProperty(v89, 0x6D327364u, &ioPropertyDataSize, &outPropertyData))
  {
    *(a1 + 128) = 0;
    v62 = *(a1 + 120);
    if (v62)
    {
      free(v62);
      *(a1 + 120) = 0;
    }

    v60 = 1;
    goto LABEL_116;
  }

  outWritable = 0;
  v79 = 0;
  if (AudioCodecGetPropertyInfo(v89, 0x6163666Cu, &ioPropertyDataSize, &outWritable) || ioPropertyDataSize < 0x30)
  {
    goto LABEL_156;
  }

  std::vector<unsigned char>::vector[abi:ne200100](__dst, ioPropertyDataSize);
  v80 = __dst[0];
  *__dst[0] = *(a1 + 128);
  v80[1] = *(a1 + 120);
  v81 = AudioCodecGetProperty(v89, 0x6163666Cu, &ioPropertyDataSize, v80);
  if (v81)
  {
    AudioComponentInstanceDispose(v89);
    v79 = 0;
    v59 = 15;
  }

  else
  {
    (*(*a1 + 64))(a1, ioPropertyDataSize, __dst[0]);
    v59 = 0;
    v79 = 1;
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (!v81)
  {
LABEL_156:
    AudioComponentInstanceDispose(v89);
    if (size)
    {
      v59 = 0;
      *(a1 + 128) = size;
    }

    else
    {
      *(a1 + 236) = -1;
      v59 = 1;
    }
  }

  v60 = v79 == 0;
LABEL_109:
  if (v59 == 1)
  {
    return 2003334207;
  }

LABEL_116:
  v63 = *(a1 + 8);
  LODWORD(outPropertyData) = 1;
  if ((*(v63 + 104) & 1) == 0)
  {
    *(v63 + 104) = 1;
    v64 = *(v63 + 24);
    if (v64)
    {
      v64(*(v63 + 40), *(v63 + 8), 1717988724, &outPropertyData);
      v63 = *(a1 + 8);
    }
  }

  if (*(a1 + 128))
  {
    LODWORD(outPropertyData) = 1;
    *(v63 + 108) = 1;
    v65 = *(v63 + 24);
    if (v65)
    {
      v65(*(v63 + 40), *(v63 + 8), 1835493731, &outPropertyData);
      v63 = *(a1 + 8);
    }
  }

  if (!v60)
  {
    LODWORD(outPropertyData) = 1;
    *(v63 + 108) = 1;
    v66 = *(v63 + 24);
    if (v66)
    {
      v66(*(v63 + 40), *(v63 + 8), 1718383476, &outPropertyData);
      v63 = *(a1 + 8);
    }
  }

  LODWORD(outPropertyData) = 1;
  if ((*(v63 + 105) & 1) == 0)
  {
    *(v63 + 105) = 1;
    v67 = *(v63 + 24);
    if (v67)
    {
      v67(*(v63 + 40), *(v63 + 8), 1684434292, &outPropertyData);
      v63 = *(a1 + 8);
    }
  }

  LODWORD(outPropertyData) = 1;
  v68 = *(v63 + 24);
  if (v68)
  {
    v68(*(v63 + 40), *(v63 + 8), 1685022310, &outPropertyData);
    v63 = *(a1 + 8);
  }

  LODWORD(outPropertyData) = 1;
  if (!*(v63 + 112))
  {
    *(v63 + 112) = 1;
    v69 = *(v63 + 24);
    if (v69)
    {
      v69(*(v63 + 40), *(v63 + 8), 1919247481, &outPropertyData);
    }
  }

  v70 = 0;
  *a2 = a1;
  *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
  *(a2 + 16) = 0;
  v71 = *(a1 + 8);
  v72 = *(v71 + 88);
  v73 = *(v71 + 96);
  v74 = v72 + *(v71 + 80);
  v75 = v73 < v72 || v74 <= v73;
  v76 = v75;
  v77 = v74 - v73;
  if (!v75 && v77)
  {
    v70 = *(v71 + 72) + (v73 - v72);
  }

  v5 = 0;
  *(a2 + 32) = v70;
  if (v76)
  {
    v78 = 0;
  }

  else
  {
    v78 = v77;
  }

  *(a2 + 24) = v78;
  return v5;
}

void sub_18F78B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADTSAudioStream::GetProperty(ADTSAudioStream *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 > 1768174432)
  {
    if (a2 == 1768174433)
    {
      Property = 561211770;
      if (a3 && *a3 == 8)
      {
        Property = 0;
        *__dst = *(this + 51);
      }

      return Property;
    }

    if (a2 != 1835493731)
    {
      if (a2 != 1768174437)
      {
        goto LABEL_41;
      }

      Property = 561211770;
      if (!a3 || *a3 != 4)
      {
        return Property;
      }

      Property = 0;
      v11 = *(this + 101);
      goto LABEL_21;
    }

    v18 = *(this + 1);
    v19 = *(v18 + 136);
    if (v19)
    {
      AudioFormatGetProperty(0x78686D63u, 0xCu, v19, a3, __dst);
      return 0;
    }

    if (*(this + 177))
    {
      return 1685348671;
    }

    if (*(v18 + 112))
    {
      Property = 1970170687;
    }

    else
    {
      Property = 1836020325;
    }

    if (*(v18 + 108) != 1)
    {
      return Property;
    }

    v20 = *a3;
    if (v20 != *(this + 32))
    {
      return 561211770;
    }

    v21 = *(this + 15);
LABEL_63:
    memcpy(__dst, v21, v20);
    return 0;
  }

  switch(a2)
  {
    case 1668112752:
      v12 = *(this + 1);
      v13 = *(v12 + 136);
      if (v13)
      {
        if (*a3 != *(this + 36))
        {
          return 561211770;
        }

        ioPropertyDataSize[0] = 32;
        Property = AudioFormatGetProperty(0x7868636Cu, 0xCu, v13, ioPropertyDataSize, &outPropertyData);
        if (Property)
        {
          return Property;
        }

        v11 = **(*(this + 1) + 136);
LABEL_21:
        *__dst = v11;
        return Property;
      }

      if (*(this + 177))
      {
        return 1685348671;
      }

      if (*(v12 + 112))
      {
        Property = 1970170687;
      }

      else
      {
        Property = 1836020325;
      }

      if (*(v12 + 109) != 1)
      {
        return Property;
      }

      v20 = *a3;
      if (v20 != *(this + 36))
      {
        return 561211770;
      }

      v21 = *(this + 17);
      goto LABEL_63;
    case 1684434292:
      v14 = *(this + 1);
      v15 = *(v14 + 136);
      if (v15)
      {
        v38 = 0;
        outPropertyData = 0u;
        v37 = 0u;
        v16 = AudioFormatGetProperty(0x78686173u, 0xCu, v15, a3, &outPropertyData);
        if (*a3 == 40)
        {
          Property = v16;
          if (!v16)
          {
            v17 = v37;
            *__dst = outPropertyData;
            *(__dst + 1) = v17;
            __dst[4] = v38;
          }

          return Property;
        }

        return 561211770;
      }

      if ((*(this + 177) & 1) == 0)
      {
        if (*(v14 + 112))
        {
          Property = 1970170687;
        }

        else
        {
          Property = 1836020325;
        }

        if (*(v14 + 105) != 1)
        {
          return Property;
        }

        if (*a3 != 40)
        {
          return 561211770;
        }

        Property = 0;
        v23 = *(this + 24);
        v24 = *(this + 40);
        __dst[4] = *(this + 7);
        *__dst = v23;
        *(__dst + 1) = v24;
        return Property;
      }

      return 1685348671;
    case 1718383476:
      v7 = *(*(this + 1) + 136);
      if (v7)
      {
        Property = 1836020325;
        v9 = bswap32(*v7);
        if (v9 <= 1902207330)
        {
          if (v9 <= 1885430114)
          {
            if (v9 != 1633772320)
            {
              if (v9 != 1633772392)
              {
                v10 = 1633772400;
                goto LABEL_67;
              }

LABEL_74:
              outSize = 2;
              v25 = 1633772392;
              v26 = 96;
LABEL_75:
              if (v26 <= *a3)
              {
                *ioPropertyDataSize = 0;
                v27 = OpenCodecComponent(v25, ioPropertyDataSize, 0x61646563u);
                if (v27)
                {
                  return v27;
                }

                outPropertyDataSize = 88;
                AudioFormatGetPropertyInfo(0x78686D63u, 0xCu, *(*(this + 1) + 136), &outPropertyDataSize);
                v28 = malloc_type_calloc(1uLL, outPropertyDataSize, 0x100004077774924uLL);
                AudioFormatGetProperty(0x78686D63u, 0xCu, *(*(this + 1) + 136), &outPropertyDataSize, v28);
                outWritable = 0;
                PropertyInfo = AudioCodecGetPropertyInfo(*ioPropertyDataSize, 0x6163666Cu, &outSize, &outWritable);
                if (PropertyInfo)
                {
                  Property = PropertyInfo;
                  AudioComponentInstanceDispose(*ioPropertyDataSize);
                }

                else
                {
                  std::vector<unsigned char>::vector[abi:ne200100](&outPropertyData, outSize);
                  v30 = outPropertyData;
                  *outPropertyData = outPropertyDataSize;
                  v30[1] = v28;
                  Property = AudioCodecGetProperty(*ioPropertyDataSize, 0x6163666Cu, &outSize, v30);
                  if (!Property)
                  {
                    v31 = outSize;
                    *a3 = outSize;
                    memcpy(__dst, outPropertyData, v31);
                  }

                  AudioComponentInstanceDispose(*ioPropertyDataSize);
                  if (outPropertyData)
                  {
                    *(&outPropertyData + 1) = outPropertyData;
                    operator delete(outPropertyData);
                  }
                }

                return Property;
              }

              return 561211770;
            }

            goto LABEL_72;
          }

          if (v9 == 1885430115)
          {
            goto LABEL_72;
          }

          if (v9 == 1885430632)
          {
            goto LABEL_74;
          }

          v10 = 1885430640;
LABEL_67:
          if (v9 != v10)
          {
            return Property;
          }

          goto LABEL_73;
        }

        if (v9 <= 2053202274)
        {
          if (v9 == 1902207331)
          {
            goto LABEL_72;
          }

          if (v9 == 1902207848)
          {
            goto LABEL_74;
          }

          v10 = 1902207856;
          goto LABEL_67;
        }

        switch(v9)
        {
          case 2053202800:
LABEL_73:
            outSize = 3;
            v25 = 1633772400;
            v26 = 144;
            goto LABEL_75;
          case 2053202792:
            goto LABEL_74;
          case 2053202275:
LABEL_72:
            v25 = 1633772320;
            outSize = 1;
            v26 = 48;
            goto LABEL_75;
        }

        return Property;
      }

      a2 = 1718383476;
      break;
  }

LABEL_41:

  return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
}

void sub_18F78B6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADTSAudioStream::GetPropertyInfo(ADTSAudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  switch(a2)
  {
    case 1768174433:
      if (!a3)
      {
        goto LABEL_14;
      }

      v6 = 8;
LABEL_13:
      *a3 = v6;
LABEL_14:
      if (a4)
      {
        result = 0;
        *a4 = 0;
        return result;
      }

      return 0;
    case 1835493731:
      v7 = *(this + 1);
      v8 = *(v7 + 136);
      if (v8)
      {
        outPropertyDataSize = 0;
        result = AudioFormatGetPropertyInfo(0x78686D63u, 0xCu, v8, &outPropertyDataSize);
        if (!a3 || result)
        {
          return result;
        }

        v10 = outPropertyDataSize;
      }

      else
      {
        if (*(this + 177))
        {
          return 1685348671;
        }

        if (*(v7 + 112))
        {
          result = 1970170687;
        }

        else
        {
          result = 1836020325;
        }

        if (a4)
        {
          *a4 = 0;
          v7 = *(this + 1);
        }

        if (*(v7 + 108) != 1)
        {
          return result;
        }

        if (!a3)
        {
          return 0;
        }

        result = 0;
        v10 = *(this + 32);
      }

      *a3 = v10;
      return result;
    case 1768174437:
      if (!a3)
      {
        goto LABEL_14;
      }

      v6 = 4;
      goto LABEL_13;
  }

  return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
}

void ADTSAudioStream::~ADTSAudioStream(ADTSAudioStream *this)
{
  AudioFileStreamObject::~AudioFileStreamObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t DSPGraph::Exception::what(DSPGraph::Exception *this)
{
  result = this + 72;
  if (*(this + 95) < 0)
  {
    return *result;
  }

  return result;
}

void sub_18F78BAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _CAInitDefaultDeferredLog(void)
{
  if (gDefaultDeferredLogOnce[0] != -1)
  {
    dispatch_once(gDefaultDeferredLogOnce, &__block_literal_global_4895);
  }
}

BOOL CAShouldEmitRateLimitedRTErrorLog(void)
{
  v0 = mach_absolute_time();
  if (v0 <= gLastRateLimitedRTLogHostTime + 24000000)
  {
    return atomic_fetch_add(&gMessageCount, 1u) + 1 < 0x1A;
  }

  gMessageCount = 0;
  gLastRateLimitedRTLogHostTime = v0;
  return 1;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned int>>::clear[abi:ne200100](uint64_t *a1)
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

uint64_t VBAP::delaunayTriangulation(uint64_t a1, void *a2, char **a3, uint64_t *a4)
{
  v197 = *MEMORY[0x1E69E9840];
  v7 = (a2[1] - *a2) >> 2;
  v8 = (v7 / 3);
  std::vector<double>::vector[abi:ne200100](v181, v8);
  std::vector<double>::vector[abi:ne200100](v180, v8);
  v175 = a1;
  std::vector<double>::vector[abi:ne200100](v179, v8);
  v16 = v7 / 3;
  v17 = v181[0];
  v18 = v180[0];
  v19 = v179[0];
  __src = (v7 / 3) - 1;
  if ((v7 / 3) >= 1)
  {
    v20 = (*a2 + 8);
    v21 = (v7 / 3) & 0x7FFFFFFF;
    v22 = v181[0];
    v23 = v180[0];
    v24 = v179[0];
    do
    {
      *v22++ = *(v20 - 2);
      *v23++ = *(v20 - 1);
      v25 = *v20;
      v20 += 3;
      v9 = v25;
      *v24++ = v25;
      --v21;
    }

    while (v21);
  }

  if (CDelaunayTriangles3D::check_coplanar(v17, v18, v19, v16, v9, v10, v11, v12, v13, v14, v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 768;
      *&buf[18] = 2080;
      *&buf[20] = "delaunayTriangulation";
      *&buf[28] = 1024;
      *&buf[30] = 768;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: Delaunay Triangulation Error: Convex hull could not be created. Check for overlapping speakers. ", buf, 0x22u);
    }

    v28 = 4294967246;
    goto LABEL_163;
  }

  v29 = a3[1];
  v30 = (v29 - *a3) >> 2;
  v31 = 2 * v16 - 4;
  v165 = v31;
  v161 = v30 / 3;
  if (v30 / 3 != v31)
  {
    std::vector<int>::resize((a1 + 224), (3 * v31));
    v32 = *(a1 + 224);
    v33 = *(a1 + 232) - v32;
    if (v33 >= 1)
    {
      bzero(v32, v33);
    }

    std::__list_imp<ID3FrameInfo>::clear((a1 + 176));
    v34 = a1 + 200;
    v35 = *(a1 + 216);
    if (v35 <= v16)
    {
      if (v35 < v16)
      {
        operator new();
      }
    }

    else
    {
      if (v16 <= v35 >> 1)
      {
        v37 = *(a1 + 208);
        if (v16)
        {
          v38 = v16 + 1;
          do
          {
            v37 = v37[1];
            --v38;
          }

          while (v38 > 1);
        }
      }

      else
      {
        v36 = v35 - v16;
        if (v36 < 1)
        {
          v39 = v16 - v35 + 1;
          v37 = (a1 + 200);
          do
          {
            v37 = v37[1];
            --v39;
          }

          while (v39 > 1);
        }

        else
        {
          v37 = (a1 + 200);
          do
          {
            v37 = *v37;
            --v36;
          }

          while (v36);
        }
      }

      std::list<int>::erase(a1 + 200, v37, (a1 + 200));
    }

    v40 = *(a1 + 208);
    if (v40 != v34)
    {
      v41 = 0;
      do
      {
        *(v40 + 16) = v41;
        v40 = *(v40 + 8);
        ++v41;
      }

      while (v40 != v34);
    }

    if (__src < 2)
    {
      v47 = 1;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = (*v18 - v18[1]) * (*v18 - v18[1]) + (*v17 - v17[1]) * (*v17 - v17[1]) + (*v19 - v19[1]) * (*v19 - v19[1]);
      do
      {
        v45 = *v19 - v19[v42 + 2];
        v46 = (*v18 - v18[v42 + 2]) * (*v18 - v18[v42 + 2]) + (*v17 - v17[v42 + 2]) * (*v17 - v17[v42 + 2]) + v45 * v45;
        ++v42;
        if (v46 < v44)
        {
          v43 = v42;
          v44 = v46;
        }
      }

      while (__src - 1 != v42);
      v47 = v43 + 1;
    }

    *buf = 0;
    *&buf[4] = v47;
    operator new();
  }

  if ((a1 + 224) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 224), *a3, v29, v30);
  }

  v48 = a1;
  if (*a1 != 1 || *(a1 + 304) < 2uLL)
  {
    goto LABEL_102;
  }

  memset(buf, 0, 24);
  v187 = 0;
  v186 = 0;
  v188 = 0;
  v49 = *(a1 + 224);
  v50 = *(a1 + 232);
  LODWORD(__p[0]) = 0;
  if ((v50 - v49) <= 8)
  {
    goto LABEL_100;
  }

  v158 = (a1 + 224);
  v51 = 0;
  v52 = 0;
  LODWORD(v53) = 0;
  do
  {
    v54 = 0;
    v183 = 0;
    v55 = 3 * v53;
    v56 = ((v48[8] - v48[7]) >> 2) / 3uLL;
    v57 = 3;
    do
    {
      v58 = *(v49 + 4 * v55);
      if (v58 >= v56)
      {
        *(v184 + v54++) = v58;
      }

      else
      {
        v183 = *(v49 + 4 * v55);
      }

      ++v55;
      --v57;
    }

    while (v57);
    if (v54 == 2)
    {
      std::vector<unsigned int>::push_back[abi:ne200100](buf, &v183);
      if (HIDWORD(v184[0]) >= LODWORD(v184[0]))
      {
        v59 = LODWORD(v184[0]);
      }

      else
      {
        v59 = HIDWORD(v184[0]);
      }

      if (LODWORD(v184[0]) <= HIDWORD(v184[0]))
      {
        v60 = HIDWORD(v184[0]);
      }

      else
      {
        v60 = LODWORD(v184[0]);
      }

      v61 = v52;
      v62 = v52 >> 3;
      if (((v52 >> 3) + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      if (v52 >> 3 != -1)
      {
        if (!(((v52 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v62) = v59 | (v60 << 32);
      v52 = 8 * v62 + 8;
      memcpy(0, 0, v61);
      v51 = 0;
      v48 = a1;
      std::vector<unsigned int>::push_back[abi:ne200100](&v186, __p);
      LODWORD(v53) = __p[0];
      v49 = *(a1 + 224);
      v50 = *(a1 + 232);
    }

    v53 = (v53 + 1);
    LODWORD(__p[0]) = v53;
  }

  while (v53 < ((v50 - v49) >> 2) / 3uLL);
  v63 = v186;
  if (!v52)
  {
    goto LABEL_97;
  }

  v64 = 0;
  v65 = 0;
  v156 = *buf;
  v157 = v186;
  v159 = v187;
  v160 = *&buf[8];
  do
  {
    v66 = v64;
    v168 = v65++;
    v64 = v65;
    v67 = (v52 - v51) >> 3;
    if (v67 <= v65)
    {
      continue;
    }

    v68 = *buf;
    v63 = v186;
    v163 = v65;
    v164 = v52;
    v67 = (v52 - v51) >> 3;
    v162 = v65;
    v69 = v65;
    v167 = v67;
    while (1)
    {
      v26.f64[0] = *(v51 + 8 * v66);
      v70 = vceq_s32(*&v26.f64[0], *(v51 + 8 * v64));
      if (v70.i32[0] & v70.i32[1])
      {
        break;
      }

LABEL_78:
      v64 = ++v69;
      if (v67 <= v69)
      {
        v64 = v163;
        v52 = v164;
        goto LABEL_95;
      }
    }

    __srca = v51;
    v71 = *(v68 + 4 * v66);
    v72 = v181[0];
    v176 = *(v181[0] + v71);
    v73 = v180[0];
    v169 = v180[0][v71];
    v74 = v179[0];
    v27.f64[0] = v179[0][v71];
    v174 = v27;
    v75 = *(v68 + 4 * v64);
    v27.f64[0] = *(v181[0] + v75);
    v173 = v27;
    v27.f64[0] = v180[0][v75];
    v172 = v27;
    v76 = v179[0][v75];
    LODWORD(v75) = LODWORD(v26.f64[0]);
    v26.f64[0] = *(v181[0] + LODWORD(v26.f64[0]));
    v170 = v26;
    v26.f64[0] = v180[0][v75];
    v171 = v26;
    v77 = v179[0][v75];
    v184[1] = 0;
    v184[0] = 0;
    *&v185 = 0;
    v79 = *(a1 + 224);
    v78 = *(a1 + 232);
    v80 = v78 - v79;
    if (v78 != v79)
    {
      if (!((v80 >> 2) >> 62))
      {
        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v80 >> 2);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v81.f64[0] = v176;
    v82.f64[0] = v77;
    v81.f64[1] = v169;
    v83.f64[0] = v172.f64[0];
    v84.f64[0] = v76;
    v83.f64[1] = v76;
    v85.f64[0] = v171.f64[0];
    v85.f64[1] = v77;
    v82.f64[1] = v170.f64[0];
    v84.f64[1] = v173.f64[0];
    v86 = vmulq_f64(v174, vmlaq_f64(vmulq_f64(v170, vnegq_f64(v172)), v171, v173)).f64[0] + vaddvq_f64(vmulq_f64(v81, vmlaq_f64(vmulq_f64(v85, vnegq_f64(v84)), v82, v83)));
    v87 = v168;
    if (v86 >= 0.0)
    {
      v88 = v168;
    }

    else
    {
      v88 = v69;
    }

    if (v86 >= 0.0)
    {
      v87 = v69;
    }

    *(4 * (3 * *&v63[4 * v66])) = *(v68 + 4 * v88);
    *(4 * (3 * *&v63[4 * v66] + 1)) = *(v68 + 4 * v87);
    v51 = __srca;
    v89 = (__srca + 8 * v64);
    *(4 * (3 * *&v63[4 * v66] + 2)) = *v89;
    *(4 * (3 * *&v63[4 * v64])) = *(v68 + 4 * v87);
    *(4 * (3 * *&v63[4 * v64] + 1)) = *(v68 + 4 * v88);
    *(4 * (3 * *&v63[4 * v64] + 2)) = v89[1];
    memset(__p, 0, sizeof(__p));
    if (!CDelaunayTriangles3D::is_origin_inside_hull(v72, v73, v74, v184, __p, *&v86))
    {
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      operator delete(0);
      v67 = v167;
      goto LABEL_78;
    }

    v90 = *v158;
    if (*v158)
    {
      *(a1 + 232) = v90;
      operator delete(v90);
      *v158 = 0;
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
    }

    *&v26.f64[1] = v184[1];
    *(a1 + 224) = *v184;
    *(a1 + 240) = 0;
    *&v185 = 0;
    v184[0] = 0;
    v184[1] = 0;
    v91 = v89 + 2;
    if (v89 + 2 == v164)
    {
      v52 = __srca + 8 * v64;
    }

    else
    {
      do
      {
        v92 = v91[1];
        *(v91 - 2) = *v91;
        *(v91 - 1) = v92;
        v91 += 2;
      }

      while (v91 != v164);
      v52 = (v91 - 2);
    }

    v93 = v156 + 4 * v64;
    v94 = v160 - (v93 + 4);
    if (v160 != v93 + 4)
    {
      memmove((v156 + 4 * v64), (v93 + 4), v160 - (v93 + 4));
    }

    v160 -= 4;
    *&buf[8] = v93 + v94;
    v95 = &v157[4 * v64];
    v96 = v159 - (v95 + 4);
    if (v159 != v95 + 4)
    {
      memmove(&v157[4 * v64], v95 + 4, v159 - (v95 + 4));
    }

    v159 -= 4;
    v187 = &v95[v96];
    v64 = v163;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v184[0])
    {
      operator delete(v184[0]);
    }

    v67 = (v52 - __srca) >> 3;
LABEL_95:
    v65 = v162;
  }

  while (v67 > v64);
LABEL_97:
  if (v63)
  {
    v187 = v63;
    operator delete(v63);
  }

  v48 = a1;
LABEL_100:
  if (*buf)
  {
    operator delete(*buf);
  }

LABEL_102:
  v97 = v48[29] - v48[28];
  v98 = (v97 >> 1) + (v97 >> 2);
  v99 = v48;
  v100 = v48[32];
  v101 = v99[31];
  v102 = v100 - v101;
  if (v98 <= v102)
  {
    if (v98 < v102)
    {
      v100 = &v101[v98];
      *(a1 + 256) = v100;
    }
  }

  else
  {
    v103 = v98 - v102;
    v104 = v99[33];
    if (v103 > (v104 - v100) >> 3)
    {
      if (!(v98 >> 61))
      {
        v105 = v104 - v101;
        if (v105 >> 2 > v98)
        {
          v98 = v105 >> 2;
        }

        if (v105 >= 0x7FFFFFFFFFFFFFF8)
        {
          v106 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v106 = v98;
        }

        std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v106);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(v100, 8 * v103);
    v100 += v103;
    v99[32] = v100;
  }

  vDSP_vclrD(v101, 1, v100 - v101);
  v115 = v175[28];
  v114 = v175[29];
  v116 = 0.0;
  if ((v114 - v115) >= 9)
  {
    v117 = 1;
    v118 = 8;
    v119 = 2;
    do
    {
      v120 = *(v115 + 4 * (v119 - 2));
      v121.f64[0] = *(v181[0] + v120);
      v121.f64[1] = v180[0][v120];
      v107.f64[0] = v179[0][v120];
      v122 = *(v115 + 4 * (v119 - 1));
      v108.f64[0] = *(v181[0] + v122);
      v111.f64[0] = v180[0][v122];
      *&v109 = v179[0][v122];
      v123 = *(v115 + 4 * v119);
      v110.f64[0] = *(v181[0] + v123);
      v113.f64[0] = v180[0][v123];
      *&v112 = v179[0][v123];
      v124.f64[0] = v111.f64[0];
      *&v124.f64[1] = v109;
      *&v125.f64[0] = v112;
      v125.f64[1] = v110.f64[0];
      *&v126.f64[0] = v109;
      v126.f64[1] = v108.f64[0];
      v127.f64[0] = v113.f64[0];
      *&v127.f64[1] = v112;
      if (fabs(vmulq_f64(v107, vmlaq_f64(vmulq_f64(v110, vnegq_f64(v111)), v113, v108)).f64[0] + vaddvq_f64(vmulq_f64(v121, vmlaq_f64(vmulq_f64(v127, vnegq_f64(v126)), v125, v124)))) > 0.00000011920929)
      {
        v108.f64[1] = v111.f64[0];
        v110.f64[1] = v180[0][v123];
        *buf = v121;
        *&buf[16] = v107;
        *&buf[32] = v108;
        v194 = v109;
        v195 = v110;
        v196 = v112;
        __invert_d3();
        v128 = v187;
        v107 = v189;
        v108 = v191;
        *&v109 = v188;
        v110.f64[0] = v190;
        v111.f64[0] = v192;
        v129 = v175[31];
        *(v129 + 8 * (v118 - 8)) = v186;
        *(v129 + 8 * (v118 - 7)) = v107.f64[0];
        *(v129 + 8 * (v118 - 6)) = v108.f64[0];
        *(v129 + 8 * (v118 - 5)) = v128;
        *(v129 + 8 * (v118 - 4)) = v107.f64[1];
        *(v129 + 8 * (v118 - 3)) = v108.f64[1];
        *(v129 + 8 * (v118 - 2)) = v109;
        *(v129 + 8 * (v118 - 1)) = v110.f64[0];
        *(v129 + 8 * v118) = v111.f64[0];
        v115 = v175[28];
        v114 = v175[29];
      }

      v130 = ((v114 - v115) >> 2) / 3uLL;
      v131 = v130 > v117++;
      v118 += 9;
      v119 += 3;
    }

    while (v131);
    v116 = v130 * 0.125;
  }

  v132 = vcvtmd_s64_f64(log(v116) / 1.38629436);
  if (v132 >= 6)
  {
    v132 = 6;
  }

  if (v161 != v165 || (v133 = v132 & ~(v132 >> 31), v134 = (8 << (2 * (v132 & ~(v132 >> 31)))), v136 = *a4, v135 = a4[1], 0xAAAAAAAAAAAAAAABLL * ((v135 - *a4) >> 3) != v134))
  {
    v147 = v175[34];
    v146 = v175[35];
    if (v146 != v147)
    {
      do
      {
        v146 -= 3;
        std::__list_imp<ID3FrameInfo>::clear(v146);
      }

      while (v146 != v147);
      v115 = v175[28];
      v114 = v175[29];
    }

    v175[35] = v147;
    log((((v114 - v115) >> 2) / 3uLL) * 0.125);
    operator new();
  }

  v137 = v175;
  v138 = (v175 + 34);
  if (v175 + 34 != a4)
  {
    v139 = v175[36];
    v140 = v175[34];
    if (0xAAAAAAAAAAAAAAABLL * ((v139 - v140) >> 3) < v134)
    {
      if (v140)
      {
        v141 = v175[35];
        v142 = v175[34];
        if (v141 != v140)
        {
          do
          {
            v141 -= 3;
            std::__list_imp<ID3FrameInfo>::clear(v141);
          }

          while (v141 != v140);
          v142 = *v138;
        }

        v175[35] = v140;
        operator delete(v142);
        v139 = 0;
        *v138 = 0;
        v175[35] = 0;
        v175[36] = 0;
      }

      v143 = 0xAAAAAAAAAAAAAAABLL * (v139 >> 3);
      v144 = 2 * v143;
      if (2 * v143 <= v134)
      {
        v144 = v134;
      }

      if (v143 >= 0x555555555555555)
      {
        v145 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v145 = v144;
      }

      if (v145 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::allocator<std::list<int>>::allocate_at_least[abi:ne200100](v145);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v148 = v175[35];
    v149 = v148 - v140;
    if (0xAAAAAAAAAAAAAAABLL * (v148 - v140) >= v134)
    {
      if (v136 == v135)
      {
        v152 = v175;
      }

      else
      {
        v153 = *a4;
        do
        {
          if (v136 != v140)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v140, v136[1], v153);
          }

          v136 += 3;
          v140 += 3;
          v153 += 24;
        }

        while (v136 != v135);
        v152 = v175;
        v148 = v175[35];
      }

      while (v148 != v140)
      {
        v148 -= 3;
        std::__list_imp<ID3FrameInfo>::clear(v148);
      }

      v152[35] = v140;
    }

    else
    {
      if (v148 == v140)
      {
        v150 = *a4;
        v152 = v175;
      }

      else
      {
        v150 = v136 + v149;
        v151 = *a4;
        do
        {
          if (v136 != v140)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v140, v136[1], v151);
          }

          v136 += 3;
          v140 += 3;
          v151 += 24;
          v149 -= 24;
        }

        while (v149);
        v152 = v175;
        v148 = v175[35];
      }

      v152[35] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::list<int>>,std::list<int>*,std::list<int>*,std::list<int>*>(v150, v135, v148);
    }

    v137 = v152;
  }

  v28 = 0;
  *(v137 + 74) = v133;
LABEL_163:
  if (v179[0])
  {
    v179[1] = v179[0];
    operator delete(v179[0]);
  }

  if (v180[0])
  {
    v180[1] = v180[0];
    operator delete(v180[0]);
  }

  if (v181[0])
  {
    v181[1] = v181[0];
    operator delete(v181[0]);
  }

  v154 = *MEMORY[0x1E69E9840];
  return v28;
}

void sub_18F78DFB0(_Unwind_Exception *a1)
{
  *(v1 + 280) = v2;
  v4 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_18F78DFBC(_Unwind_Exception *a1)
{
  *(v2 + 280) = v1;
  v4 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_18F78E010(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x18F78E118);
}

void sub_18F78E03C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v2 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_18F78E048(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x18F78E118);
}

void sub_18F78E05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x2D0])
  {
    operator delete(STACK[0x2D0]);
  }

  if (STACK[0x330])
  {
    operator delete(STACK[0x330]);
  }

  if (!a71)
  {
    v72 = STACK[0x208];
    if (STACK[0x208])
    {
      STACK[0x210] = v72;
      operator delete(v72);
    }

    v73 = STACK[0x220];
    if (STACK[0x220])
    {
      STACK[0x228] = v73;
      operator delete(v73);
    }

    v74 = STACK[0x238];
    if (STACK[0x238])
    {
      STACK[0x240] = v74;
      operator delete(v74);
    }

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x18F78E0E4);
}

void sub_18F78E068(_Unwind_Exception *a1)
{
  v2 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_18F78E074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    operator delete(v71);
  }

  if (STACK[0x330])
  {
    operator delete(STACK[0x330]);
  }

  if (a71)
  {
    JUMPOUT(0x18F78E0E4);
  }

  JUMPOUT(0x18F78E0E8);
}

void sub_18F78E080()
{
  if (STACK[0x250])
  {
    operator delete(STACK[0x250]);
  }

  operator delete(v0);
  JUMPOUT(0x18F78E098);
}

void sub_18F78E0CC()
{
  std::__list_imp<ID3FrameInfo>::clear(&STACK[0x2D0]);
  std::__list_imp<ID3FrameInfo>::clear(&STACK[0x330]);
  JUMPOUT(0x18F78E0E0);
}

void VBAP::calculateVirtualLoudspeakersPolygon(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v110 = a1 + 19;
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](a1 + 19);
  v7 = *a2;
  if ((a2[1] - *a2) >= 9)
  {
    LODWORD(v8) = 0;
    do
    {
      v9 = (3 * v8);
      LODWORD(v121) = roundf(*(v7 + 4 * v9) * 100000.0);
      HIDWORD(v121) = roundf(*(v7 + 4 * (v9 + 1)) * 100000.0);
      *&v6 = roundf(*(v7 + 4 * (v9 + 2)) * 100000.0);
      v122 = v6;
      if (v8)
      {
        if (v125 != v124)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0xAAAAAAAAAAAAAAABLL * (v125 - v124);
          while (1)
          {
            v13 = 0;
            v14 = v124[3 * v10];
            *&v6 = *v14;
            v119 = *v14;
            v120 = *(v14 + 2);
            do
            {
              LODWORD(v6) = *(&v119 + v13);
              v15 = *(&v121 + v13);
              v16 = *&v6 != v15 || v13 == 8;
              v13 += 4;
            }

            while (!v16);
            if (*&v6 == v15)
            {
              break;
            }

            if (v12 - 1 == v10)
            {
              std::vector<std::vector<float>>::resize(&v124, v11 + 2);
              v10 = v11 + 1;
              std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(&v121, &v123, &v124[3 * v10]);
              std::vector<std::vector<unsigned int>>::resize(v110, v11 + 2);
              break;
            }

            v10 = ++v11;
            if (v12 <= v11)
            {
              goto LABEL_19;
            }
          }

          std::__copy_impl::operator()[abi:ne200100]<int *,int *,std::back_insert_iterator<std::vector<unsigned int>>>((a1[28] + 4 * v9), (a1[28] + 4 * v9 + 12), a1[19] + 24 * v10);
        }
      }

      else
      {
        std::vector<std::vector<float>>::resize(&v124, 1uLL);
        std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(&v121, &v123, v124);
        std::vector<std::vector<unsigned int>>::resize(v110, 1uLL);
        std::__copy_impl::operator()[abi:ne200100]<int *,int *,std::back_insert_iterator<std::vector<unsigned int>>>((a1[28] + 4 * v9), (a1[28] + 12), a1[19]);
      }

LABEL_19:
      v8 = (v8 + 1);
      v7 = *a2;
    }

    while (v8 < ((a2[1] - *a2) >> 2) / 3uLL);
  }

  v17 = a1[19];
  v18 = a1[20];
  if (v17 == v18)
  {
    v19 = a4;
    v20 = a3;
  }

  else
  {
    v19 = a4;
    v20 = a3;
    do
    {
      v22 = *v17;
      v21 = *(v17 + 8);
      if (*v17 != v21)
      {
        v23 = *(v17 + 8);
        v24 = v23;
        do
        {
          v25 = v22 + 4;
          if (v22 + 4 != v23)
          {
            v24 = v22 + 4;
            while (*v24 != *v22)
            {
              v24 += 4;
              if (v24 == v23)
              {
                v24 = v23;
                break;
              }
            }

            if (v23 != v24)
            {
              for (i = v24 + 4; i != v23; i += 4)
              {
                if (*i != *v22)
                {
                  *v24 = *i;
                  v24 += 4;
                }
              }
            }
          }

          v23 = v24;
          v22 += 4;
        }

        while (v25 != v24);
        if (v21 != v24)
        {
          *(v17 + 8) = v24;
        }
      }

      v17 += 24;
    }

    while (v17 != v18);
  }

  if (v110 != v19)
  {
    v27 = v18 - *v110;
    v28 = v19[2];
    v29 = *v19;
    if (v28 - *v19 < v27)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 3);
      if (v29)
      {
        std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v19);
        operator delete(*v19);
        v28 = 0;
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
      }

      if (v30 <= 0xAAAAAAAAAAAAAAALL)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
        v32 = 2 * v31;
        if (2 * v31 <= v30)
        {
          v32 = v30;
        }

        if (v31 >= 0x555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v33 = v32;
        }

        if (v33 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](v33);
        }
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v34 = v19[1] - v29;
    if (v34 >= v27)
    {
      std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(*v110, v18, v29);
      v37 = v36;
      v38 = v19[1];
      if (v38 != v36)
      {
        v39 = v19[1];
        do
        {
          v41 = *(v39 - 24);
          v39 -= 24;
          v40 = v41;
          if (v41)
          {
            *(v38 - 16) = v40;
            operator delete(v40);
          }

          v38 = v39;
        }

        while (v39 != v37);
      }

      v19[1] = v37;
    }

    else
    {
      v35 = std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(*v110, (*v110 + v34), v29);
      v19[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(v19, v35, v18, v19[1]);
    }
  }

  if (&v124 == v20)
  {
    v50 = v20[1];
  }

  else
  {
    v42 = v125;
    v43 = v125 - v124;
    v44 = v20[2];
    v45 = *v20;
    if (v44 - *v20 < (v125 - v124))
    {
      v46 = 0xAAAAAAAAAAAAAAABLL * (v43 >> 3);
      if (v45)
      {
        std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v20);
        operator delete(*v20);
        v44 = 0;
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
      }

      if (v46 <= 0xAAAAAAAAAAAAAAALL)
      {
        v47 = 0xAAAAAAAAAAAAAAABLL * (v44 >> 3);
        v48 = 2 * v47;
        if (2 * v47 <= v46)
        {
          v48 = v46;
        }

        if (v47 >= 0x555555555555555)
        {
          v49 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v49 = v48;
        }

        if (v49 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v49);
        }
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v51 = v20[1] - v45;
    if (v51 >= v43)
    {
      std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(v124, v125, v45);
      v50 = v103;
      v104 = v20[1];
      if (v104 != v103)
      {
        v105 = v20[1];
        do
        {
          v107 = *(v105 - 3);
          v105 -= 3;
          v106 = v107;
          if (v107)
          {
            *(v104 - 16) = v106;
            operator delete(v106);
          }

          v104 = v105;
        }

        while (v105 != v50);
      }
    }

    else
    {
      v52 = std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(v124, (v124 + v51), v45);
      v50 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(v20, v52, v42, v20[1]);
    }

    v20[1] = v50;
  }

  v53 = *v20;
  if (v50 != *v20)
  {
    v54 = 0;
    v55 = 1;
    do
    {
      MEMORY[0x193AE08B0](*(v53 + 24 * v54), 1, &kVbapEpsilon, *(v53 + 24 * v54), 1, 3);
      v54 = v55;
      v53 = *v20;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v20[1] - *v20) >> 3) > v55++);
  }

  v58 = a1[19];
  v57 = a1[20];
  if (v58 == v57)
  {
    v57 = a1[19];
  }

  else
  {
    v59 = v124;
    do
    {
      if (v58[1] - *v58 > 0xFuLL)
      {
        v58 += 3;
        v59 += 3;
      }

      else
      {
        if (v58 + 3 == v57)
        {
          v62 = v58;
        }

        else
        {
          v60 = v58;
          do
          {
            v61 = *v60;
            if (*v60)
            {
              v60[1] = v61;
              operator delete(v61);
              *v60 = 0;
              v60[1] = 0;
              v60[2] = 0;
            }

            v62 = v60 + 3;
            v6 = *(v60 + 3);
            *v60 = v6;
            v60[2] = v60[5];
            v60[4] = 0;
            v60[5] = 0;
            v60[3] = 0;
            v63 = v60 + 6;
            v60 += 3;
          }

          while (v63 != v57);
          v57 = a1[20];
        }

        if (v57 != v62)
        {
          v64 = v57;
          do
          {
            v66 = *(v64 - 3);
            v64 -= 3;
            v65 = v66;
            if (v66)
            {
              *(v57 - 2) = v65;
              operator delete(v65);
            }

            v57 = v64;
          }

          while (v64 != v62);
        }

        a1[20] = v62;
        v67 = v125;
        if (v59 + 3 == v125)
        {
          v70 = v59;
        }

        else
        {
          v68 = v59;
          do
          {
            v69 = *v68;
            if (*v68)
            {
              v68[1] = v69;
              operator delete(v69);
              *v68 = 0;
              v68[1] = 0;
              v68[2] = 0;
            }

            v70 = v68 + 3;
            v6 = *(v68 + 3);
            *v68 = v6;
            v68[2] = v68[5];
            v68[4] = 0;
            v68[5] = 0;
            v68[3] = 0;
            v71 = v68 + 6;
            v68 += 3;
          }

          while (v71 != v67);
          v67 = v125;
        }

        if (v67 != v70)
        {
          v72 = v67;
          do
          {
            v74 = *(v72 - 3);
            v72 -= 3;
            v73 = v74;
            if (v74)
            {
              *(v67 - 2) = v73;
              operator delete(v73);
            }

            v67 = v72;
          }

          while (v72 != v70);
        }

        v125 = v70;
        v57 = a1[20];
      }
    }

    while (v58 != v57);
    v58 = *v110;
  }

  LODWORD(__B) = 0;
  std::vector<float>::resize(a1 + 10, v57 - v58, &__B, *&v6);
  v75 = 0xAAAAAAAAAAAAAAABLL * ((a1[20] - a1[19]) >> 3);
  LODWORD(__B) = 0;
  std::vector<float>::resize(a1 + 13, v75, &__B, v76);
  v77 = a1[19];
  if (a1[20] != v77)
  {
    v78 = 0;
    do
    {
      v79 = (v77 + 24 * v78);
      v80 = *v79;
      v81 = v79[1];
      v82 = a1[10];
      v83 = v81 - v80;
      if (v83)
      {
        v84 = v83 >> 2;
        v85 = a1[7];
        v86 = v84;
        v87 = 3 * v78;
        v88 = (v82 + 12 * v78);
        v89 = *v88;
        v90 = v88[1];
        v91 = v88[2];
        if (v84 <= 1)
        {
          v84 = 1;
        }

        do
        {
          v92 = *v80++;
          v89 = (*(v85 + 4 * (3 * v92)) / v86) + v89;
          *v88 = v89;
          v90 = v90 + (*(v85 + 4 * (3 * v92 + 1)) / v86);
          v88[1] = v90;
          v91 = v91 + (*(v85 + 4 * (3 * v92 + 2)) / v86);
          v88[2] = v91;
          --v84;
        }

        while (v84);
      }

      else
      {
        v87 = 3 * v78;
      }

      __C = 0.0;
      vDSP_dotpr(v124[3 * v78], 1, (v82 + 4 * v87), 1, &__C, 3uLL);
      if (fabsf(__C * 0.00001) <= 0.00001)
      {
        v96 = 0;
        *(a1[13] + 4 * v78) = 1065353216;
        v97 = v124[3 * v78];
        v98 = a1[10] + 4 * v87;
        do
        {
          *&v117[v96] = *(v98 + v96) - (*&v97[v96] / 100000.0);
          v116[v96 / 4] = *(v98 + v96) + (*&v97[v96] / 100000.0);
          v96 += 4;
        }

        while (v96 != 12);
        VBAP::lineUnitSphereIntersection(v117, v116, &__B, v93);
        for (j = 0; j != 3; ++j)
        {
          vDSP_meanv((a1[7] + j * 4), 3, &__A[j], ((a1[8] - a1[7]) >> 2) / 3uLL);
        }

        v111 = 0.0;
        v112 = 0.0;
        vDSP_distancesq(__A, 1, &__B, 1, &v112, 3uLL);
        vDSP_distancesq(__A, 1, v115, 1, &v111, 3uLL);
        v100 = a1[10] + 4 * v87;
        p_B = &__B;
        if (v111 > v112)
        {
          p_B = v115;
        }

        v102 = *(p_B + 2);
        *v100 = *p_B;
        *(v100 + 8) = v102;
      }

      else
      {
        LODWORD(__B) = 0;
        vDSP_dotpr((a1[10] + 4 * v87), 1, (a1[10] + 4 * v87), 1, &__B, 3uLL);
        v94 = sqrtf(*&__B);
        *(a1[13] + 4 * v78) = v94;
        v95 = 1.0 / v94;
        *&__B = v95;
        if (__C < 0.0)
        {
          *&__B = -v95;
        }

        MEMORY[0x193AE08B0](a1[10] + 4 * v87, 1, &__B, a1[10] + 4 * v87, 1, 3);
      }

      ++v78;
      v77 = a1[19];
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[20] - v77) >> 3) > v78);
  }

  __B = &v124;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__B);
}

void sub_18F78EB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 + 8) = v27;
  a16 = &a27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v13);
        }

        *(4 * v10) = *v5;
        v6 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void VBAP::lineUnitSphereIntersection(VBAP *this, const float *a2, const float *a3, float *a4)
{
  __C = 0.0;
  v12 = 0;
  MEMORY[0x193AE08D0](this, 1, a2, 1, __B, 1, 3);
  vDSP_dotpr(__B, 1, __B, 1, &__C, 3uLL);
  vDSP_dotpr(this, 1, __B, 1, &v12 + 1, 3uLL);
  *(&v12 + 1) = *(&v12 + 1) + *(&v12 + 1);
  vDSP_dotpr(this, 1, this, 1, &v12, 3uLL);
  *&v12 = *&v12 + -1.0;
  v7 = (*&v12 * (__C * -4.0)) + (*(&v12 + 1) * *(&v12 + 1));
  if (v7 >= 0.0)
  {
    v8 = sqrtf(v7);
    *&v9 = -(*(&v12 + 1) - v8) / (__C + __C);
    *(&v9 + 1) = -(*(&v12 + 1) + v8) / (__C + __C);
    v10 = 1.0 - *&v9;
    v11 = 1.0 - *(&v9 + 1);
    MEMORY[0x193AE08A0](this, 1, &v11, a2, 1, &v9 + 4, a3 + 3, 1, 3, v9);
    MEMORY[0x193AE08A0](this, 1, &v10, a2, 1, &v9, a3, 1, 3);
  }
}

void sub_18F78EF20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void std::vector<std::vector<unsigned int>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void std::__copy_impl::operator()[abi:ne200100]<int *,int *,std::back_insert_iterator<std::vector<unsigned int>>>(int *a1, int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *v5;
      v8 = *(a3 + 16);
      if (v6 >= v8)
      {
        v9 = *a3;
        v10 = v6 - *a3;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v14);
        }

        *(4 * v11) = v7;
        v6 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned int> *,std::vector<unsigned int> *,std::vector<unsigned int> *>(char **a1, char **a2, char **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, *v4, v4[1], (v4[1] - *v4) >> 2);
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
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
  }

  return a1;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::list<int>>,std::list<int>*,std::list<int>*,std::list<int>*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a1;
  v4 = 0;
  v5 = a3 - 3;
  v6 = a3;
  do
  {
    *v6 = v6;
    v6[1] = v6;
    v6[2] = 0;
    if (*(v3 + 8) != v3)
    {
      operator new();
    }

    v3 += 24;
    v6 += 3;
    v4 -= 24;
    v5 += 3;
  }

  while (v3 != a2);
  return v6;
}

void sub_18F78F6E8(_Unwind_Exception *a1)
{
  std::__list_imp<ID3FrameInfo>::clear(v3);
  if (v3 != v2)
  {
    do
    {
      std::__list_imp<ID3FrameInfo>::clear(v1);
      v1 -= 3;
      v4 += 24;
    }

    while (v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  for (i = result[1]; a2 != a3 && i != result; i = i[1])
  {
    *(i + 4) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == result)
  {
    if (a2 != a3)
    {
      operator new();
    }
  }

  else
  {

    return std::list<int>::erase(result, i, result);
  }

  return result;
}

void sub_18F78F86C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void std::allocator<std::list<int>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::list<int>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

BOOL VBAP::find_duplicate_vertex(VBAP *this, const float *a2, const float *a3, const float *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v10 < 2)
  {
    result = 0;
  }

  else
  {
    v11 = 2;
    v12 = 1;
    do
    {
      MEMORY[0x193AE08B0](this, 1, this + 4 * v12, v9, 1, v12);
      MEMORY[0x193AE0890](a2, 1, &a2[v12], v9, 1, v9, 1, v12);
      MEMORY[0x193AE0890](a3, 1, &a3[v12], v9, 1, v9, 1, v12);
      HIDWORD(v16) = 0;
      vDSP_maxv(v9, 1, &v16 + 1, v12);
      result = *(&v16 + 1) > 1.0;
      v12 = v11++;
    }

    while (*(&v16 + 1) <= 1.0 && v12 < a4);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void VBAP::~VBAP(VBAP *this)
{
  v10 = (this + 272);
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  std::__list_imp<ID3FrameInfo>::clear(this + 25);
  std::__list_imp<ID3FrameInfo>::clear(this + 22);
  v10 = (this + 152);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }
}

uint64_t acv2::BlockCopyConverter::GetPropertyInfo(acv2::BlockCopyConverter *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  result = 1886547824;
  if (a2 <= 1836016242)
  {
    if (a2 != 1667850867 && a2 != 1668244083)
    {
      v6 = 1835623027;
      goto LABEL_11;
    }
  }

  else if (a2 > 2020175986)
  {
    if (a2 != 2020569203)
    {
      v5 = 28787;
      goto LABEL_10;
    }
  }

  else if (a2 != 1836016243)
  {
    v5 = 25203;
LABEL_10:
    v6 = v5 | 0x78690000;
LABEL_11:
    if (a2 != v6)
    {
      return result;
    }
  }

  if (a3)
  {
    *a3 = 4;
  }

  result = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

uint64_t ___ZL13AUPBEnableSPIv_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  AUPBEnableSPI(void)::isAppleInternal = result;
  return result;
}

uint64_t AUPBAddServerListener(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v4 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v4 addNewServerListener:a1 withUserData:a2];
}

uint64_t AUPBRemoveServerListener(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v4 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v4 removeServerListener:a1 withUserData:a2];
}

uint64_t AUPBUnregisterAU(uint64_t a1, uint64_t a2)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v3 = +[AUPBServer sharedInstance];

  return [(AUPBServer *)v3 unregisterAU:a2];
}

uint64_t AUPBAddPropertyListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v10 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v10 addPropertyListener:a4 onServer:a1 block:a2 property:a3 withUserData:a5];
}

uint64_t AUPBRemovePropertyListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v10 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v10 removePropertyListener:a4 onServer:a1 block:a2 property:a3 withUserData:a5];
}

uint64_t AUPBCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v8 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v8 copyPBProperty:a3 onServer:a1 block:a2 intoValue:a4];
}

uint64_t AUPBSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v8 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v8 setPBProperty:a3 onServer:a1 block:a2 value:a4];
}

uint64_t RemoteAudioUnitGetPropertyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal == 1)
  {
    return [+[AUPBClientManager sharedInstance](AUPBClientManager getAUPropertyInfo:"getAUPropertyInfo:onServer:audioUnit:scope:element:intoDataSize:writeable:" onServer:a3 audioUnit:a1 scope:a2 element:a4 intoDataSize:a5 writeable:a6, a7];
  }

  else
  {
    return 561145191;
  }
}

uint64_t RemoteAudioUnitGetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a6;
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal == 1)
  {
    return [+[AUPBClientManager sharedInstance](AUPBClientManager getAUProperty:"getAUProperty:onServer:audioUnit:scope:element:copiedIntoBufer:withSize:" onServer:a3 audioUnit:a1 scope:a2 element:a4 copiedIntoBufer:a5 withSize:&v14, a7];
  }

  else
  {
    return 561145191;
  }
}

uint64_t RemoteAudioUnitSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  LODWORD(v15) = a7;
  return [+[AUPBClientManager sharedInstance](AUPBClientManager setAUProperty:"setAUProperty:onServer:audioUnit:scope:element:withValue:size:" onServer:a3 audioUnit:a1 scope:a2 element:a4 withValue:a5 size:a6, v15];
}

uint64_t RemoteAudioUnitGetParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v12 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v12 getAUParameter:a3 onServer:a1 audioUnit:a2 scope:a4 element:a5 copiedIntoValue:a6];
}

uint64_t RemoteAudioUnitSetParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v12 = +[AUPBClientManager sharedInstance];
  *&v13 = a6;

  return [(AUPBClientManager *)v12 setAUParameter:a3 onServer:a1 audioUnit:a2 scope:a4 element:a5 value:v13];
}

uint64_t RemoteAudioUnitGetPropertySerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v12 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v12 getSerialAUProperty:a3 onServer:a1 audioUnit:a2 scope:a4 element:a5 inData:a6];
}

uint64_t RemoteAudioUnitSetPropertySerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AUPBEnableSPI(void)::onceToken != -1)
  {
    dispatch_once(&AUPBEnableSPI(void)::onceToken, &__block_literal_global_4943);
  }

  if (AUPBEnableSPI(void)::isAppleInternal != 1)
  {
    return 561145191;
  }

  v12 = +[AUPBClientManager sharedInstance];

  return [(AUPBClientManager *)v12 setSerialAUProperty:a3 onServer:a1 audioUnit:a2 scope:a4 element:a5 toData:a6];
}

uint64_t DSPGraph::CalculationBox::setProperty(uint64_t this, int a2, unsigned int a3, unsigned int a4, int a5, double *a6)
{
  if (a2 <= 1718367025)
  {
    if (a2 >= 0xA)
    {
      goto LABEL_71;
    }

LABEL_19:
    if (a3 != 1 || *(this + 776) != 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v27, "setProperty");
      std::to_string(&v23, a3);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, "CalculationBox can't set property in scope ", &v23);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, &v24, " with property ID ");
      std::to_string(&v22, a2);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v22;
      }

      else
      {
        v14 = v22.__r_.__value_.__r.__words[0];
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v22.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v25, v14, size);
      v26 = *v16;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      DSPGraph::ThrowException(-10866, &v28, 343, &v27, &v26);
    }

    if (*(this + 824) <= a4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v27, "setProperty");
      std::to_string(&v23, a4);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, "CalculationBox can't set input scope element ", &v23);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v25, &v24, " with property ID ");
      std::to_string(&v22, a2);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v22;
      }

      else
      {
        v17 = v22.__r_.__value_.__r.__words[0];
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v22.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v25, v17, v18);
      v26 = *v19;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      DSPGraph::ThrowException(-10877, &v28, 338, &v27, &v26);
    }

    v9 = this + 16 * a4 + 792;
    if (a2 > 1718367025)
    {
      if (a2 <= 1936274995)
      {
        if (a2 > 1936273463)
        {
          if (a2 != 1936273464)
          {
            if (a2 != 1936273718)
            {
              if (a2 != 1936274226)
              {
                return this;
              }

LABEL_33:
              if (a5 != 4)
              {
                return 561211770;
              }

              v10 = 0;
              *&v11 = *a6;
LABEL_67:
              *v9 = v11;
              goto LABEL_68;
            }

LABEL_45:
            if (a5 != 2)
            {
              return 561211770;
            }

            v10 = 0;
            *&v11 = *a6;
            goto LABEL_67;
          }

LABEL_63:
          if (a5 == 1)
          {
            v10 = 0;
            *&v11 = *a6;
            goto LABEL_67;
          }

          return 561211770;
        }

        if (a2 != 1718367026)
        {
          if (a2 != 1718367796)
          {
            return this;
          }

LABEL_49:
          if (a5 != 8)
          {
            return 561211770;
          }

          v12 = *a6;
LABEL_62:
          *v9 = v12;
          v10 = 1;
LABEL_68:
          this = 0;
          *(v9 + 8) = v10;
          return this;
        }

LABEL_60:
        if (a5 != 4)
        {
          return 561211770;
        }

        v12 = *a6;
        goto LABEL_62;
      }

      if (a2 <= 1969828149)
      {
        if (a2 != 1936274996)
        {
          if (a2 != 1969827896)
          {
            return this;
          }

LABEL_56:
          if (a5 == 1)
          {
            v10 = 0;
            *&v11 = *a6;
            goto LABEL_67;
          }

          return 561211770;
        }

LABEL_58:
        if (a5 == 8)
        {
          v10 = 0;
          v11 = *a6;
          goto LABEL_67;
        }

        return 561211770;
      }

      if (a2 != 1969828150)
      {
        if (a2 != 1969828658)
        {
          if (a2 != 1969829428)
          {
            return this;
          }

          goto LABEL_58;
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (a2 <= 4)
      {
        if (a2 > 1)
        {
          if (a2 != 2)
          {
            if (a2 != 3)
            {
              goto LABEL_56;
            }

            goto LABEL_58;
          }

          goto LABEL_33;
        }

        if (a2)
        {
          goto LABEL_45;
        }

        goto LABEL_63;
      }

      if (a2 > 6)
      {
        if (a2 == 7)
        {
          goto LABEL_58;
        }

        if (a2 != 8)
        {
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      if (a2 != 5)
      {
LABEL_52:
        if (a5 != 4)
        {
          return 561211770;
        }

        v10 = 0;
        *&v11 = *a6;
        goto LABEL_67;
      }
    }

    if (a5 == 2)
    {
      v10 = 0;
      *&v11 = *a6;
      goto LABEL_67;
    }

    return 561211770;
  }

  if (a2 > 1936274995)
  {
    if (a2 <= 1969828149)
    {
      if (a2 == 1936274996)
      {
        goto LABEL_19;
      }

      v8 = 12344;
    }

    else
    {
      if (a2 == 1969828150 || a2 == 1969829428)
      {
        goto LABEL_19;
      }

      v8 = 13106;
    }

    v7 = v8 | 0x75690000;
  }

  else if (a2 <= 1936273463)
  {
    if (a2 == 1718367026)
    {
      goto LABEL_19;
    }

    v7 = 1718367796;
  }

  else
  {
    if (a2 == 1936273464 || a2 == 1936273718)
    {
      goto LABEL_19;
    }

    v7 = 1936274226;
  }

  if (a2 == v7)
  {
    goto LABEL_19;
  }

LABEL_71:

  return DSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
}

void sub_18F790BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (*(v34 - 17) < 0)
  {
    operator delete(*(v34 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::CalculationBox::getProperty(DSPGraph::CalculationBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  v8 = a4;
  v9 = a3;
  v37 = *MEMORY[0x1E69E9840];
  if (a2 > 1718367025)
  {
    if (a2 > 1936274995)
    {
      if (a2 <= 1969828149)
      {
        if (a2 == 1936274996)
        {
          goto LABEL_19;
        }

        v12 = 12344;
      }

      else
      {
        if (a2 == 1969828150 || a2 == 1969829428)
        {
          goto LABEL_19;
        }

        v12 = 13106;
      }

      v11 = v12 | 0x75690000;
    }

    else if (a2 <= 1936273463)
    {
      if (a2 == 1718367026)
      {
        goto LABEL_19;
      }

      v11 = 1718367796;
    }

    else
    {
      if (a2 == 1936273464 || a2 == 1936273718)
      {
        goto LABEL_19;
      }

      v11 = 1936274226;
    }

    if (a2 != v11)
    {
LABEL_29:
      v17 = *MEMORY[0x1E69E9840];

      return DSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
    }
  }

  else if (a2 >= 0xA)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (a3 != 2)
  {
    if (a3 == 1 && *(this + 194) == 1)
    {
      if (*(this + 103) <= a4)
      {
        std::string::basic_string[abi:ne200100]<0>(&v35, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v34, "getProperty");
        std::to_string(&v30, v8);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, "CalculationBox can't get input scope element ", &v30);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v32, &v31, " with property ID ");
        std::to_string(&v29, a2);
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v29;
        }

        else
        {
          v21 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v29.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v32, v21, size);
        v33 = *v23;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        DSPGraph::ThrowException(-10877, &v35, 282, &v34, &v33);
      }

      v13 = *MEMORY[0x1E69E9840];
      v14 = this + 16 * a4 + 792;

      return DSPGraph::CalculationBox::getValueAsProperty(v14, a2, a5, a6);
    }

LABEL_32:
    std::string::basic_string[abi:ne200100]<0>(&v35, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v34, "getProperty");
    std::to_string(&v30, v9);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, "CalculationBox can't get property in scope ", &v30);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v32, &v31, " with property ID ");
    std::to_string(&v29, a2);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v29;
    }

    else
    {
      v18 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v29.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v32, v18, v19);
    v33 = *v20;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10866, &v35, 295, &v34, &v33);
  }

  if (*(this + 195) != 1)
  {
    goto LABEL_32;
  }

  DSPGraph::CalculationBox::calculate(&v35, this, a4);
  if ((v36 & 1) == 0)
  {
    v24 = v35;
    std::string::basic_string[abi:ne200100]<0>(&v34, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v33, "getProperty");
    std::to_string(&v29, v8);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, "CalculationBox can't get output scope element ", &v29);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, &v30, " with property ID ");
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v28;
    }

    else
    {
      v25 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v28.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v31, v25, v26);
    v32 = *v27;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(v24, &v34, 289, &v33, &v32);
  }

  result = DSPGraph::CalculationBox::getValueAsProperty(&v35, a2, a5, a6);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F791110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 81) < 0)
  {
    operator delete(*(v45 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::CalculationBox::getValueAsProperty(uint64_t result, int a2, int *a3, double *a4)
{
  if (a2 > 1718367025)
  {
    if (a2 <= 1936274995)
    {
      if (a2 > 1936273463)
      {
        if (a2 != 1936273464)
        {
          if (a2 != 1936273718)
          {
            if (a2 != 1936274226)
            {
              return result;
            }

LABEL_12:
            if (*a3 < 4)
            {
              return 561211770;
            }

            v6 = *(result + 8);
            if (v6 == -1)
            {
              std::__throw_bad_variant_access[abi:ne200100]();
            }

            v22 = &v21;
            v7 = (off_1F032D370[v6])(&v22, result);
            goto LABEL_41;
          }

          goto LABEL_29;
        }

LABEL_55:
        if (*a3)
        {
          v19 = *(result + 8);
          if (v19 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v22 = &v21;
          v15 = (off_1F032D350[v19])(&v22, result);
          goto LABEL_58;
        }

        return 561211770;
      }

      if (a2 != 1718367026)
      {
        if (a2 != 1718367796)
        {
          return result;
        }

LABEL_34:
        if (*a3 >= 8)
        {
          v12 = *(result + 8);
          if (v12 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v22 = &v21;
          *a4 = (off_1F032D3D0[v12])(&v22, result);
          goto LABEL_54;
        }

        return 561211770;
      }

LABEL_47:
      if (*a3 < 4)
      {
        return 561211770;
      }

      DSPGraph::CalculationBox::Value::operator float<float>(result);
      *a4 = v16;
LABEL_49:
      v17 = 4;
LABEL_63:
      result = 0;
      *a3 = v17;
      return result;
    }

    if (a2 <= 1969828149)
    {
      if (a2 != 1936274996)
      {
        if (a2 != 1969827896)
        {
          return result;
        }

        goto LABEL_44;
      }

LABEL_50:
      if (*a3 >= 8)
      {
        v18 = *(result + 8);
        if (v18 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v22 = &v21;
        v9 = (off_1F032D380[v18])(&v22, result);
LABEL_53:
        *a4 = v9;
LABEL_54:
        v17 = 8;
        goto LABEL_63;
      }

      return 561211770;
    }

    if (a2 != 1969828150)
    {
      if (a2 != 1969828658)
      {
        if (a2 != 1969829428)
        {
          return result;
        }

        goto LABEL_24;
      }

LABEL_38:
      if (*a3 < 4)
      {
        return 561211770;
      }

      v13 = *(result + 8);
      if (v13 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v22 = &v21;
      v7 = (off_1F032D3B0[v13])(&v22, result);
LABEL_41:
      *a4 = v7;
      goto LABEL_49;
    }

LABEL_59:
    if (*a3 < 2)
    {
      return 561211770;
    }

    v20 = *(result + 8);
    if (v20 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = &v21;
    v11 = (off_1F032D3A0[v20])(&v22, result);
    goto LABEL_62;
  }

  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
LABEL_44:
          if (*a3)
          {
            v14 = *(result + 8);
            if (v14 == -1)
            {
              std::__throw_bad_variant_access[abi:ne200100]();
            }

            v22 = &v21;
            v15 = (off_1F032D390[v14])(&v22, result);
LABEL_58:
            *a4 = v15;
            v17 = 1;
            goto LABEL_63;
          }

          return 561211770;
        }

        goto LABEL_50;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

LABEL_29:
      if (*a3 < 2)
      {
        return 561211770;
      }

      v10 = *(result + 8);
      if (v10 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v22 = &v21;
      v11 = (off_1F032D360[v10])(&v22, result);
LABEL_62:
      *a4 = v11;
      v17 = 2;
      goto LABEL_63;
    }

    goto LABEL_55;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      goto LABEL_38;
    }

    goto LABEL_59;
  }

  if (a2 != 7)
  {
    if (a2 != 8)
    {
      if (a2 != 9)
      {
        return result;
      }

      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_24:
  if (*a3 >= 8)
  {
    v8 = *(result + 8);
    if (v8 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = &v21;
    v9 = (off_1F032D3C0[v8])(&v22, result);
    goto LABEL_53;
  }

  return 561211770;
}

uint64_t DSPGraph::CalculationBox::Value::operator*(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == -1 || v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v6;
  return (*(&off_1F032D238[2 * v2] + v3))(&v7, a1, a2);
}

uint64_t DSPGraph::CalculationBox::Value::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == -1 || v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v6;
  return (*(&off_1F032D298[2 * v2] + v3))(&v7, a1, a2);
}

uint64_t DSPGraph::CalculationBox::Value::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == -1 || v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v6;
  return (*(&off_1F032D278[2 * v2] + v3))(&v7, a1, a2);
}

uint64_t DSPGraph::CalculationBox::Value::operator>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == -1 || v3 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v7 = &v6;
  return (*(&off_1F032D2B8[2 * v2] + v3))(&v7, a1, a2);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul,1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<DSPGraph::CalculationBox::Value::operator/(DSPGraph::CalculationBox::Value const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,long long,double> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,long long,double> const>(uint64_t a1, double *a2, double *a3)
{
  v3 = *a2;
  if (*a3 == 0.0)
  {
    if (v3 <= 0.0)
    {
      if (v3 >= 0.0)
      {
        *&result = NAN;
      }

      else
      {
        *&result = -1.79769313e308;
      }
    }

    else
    {
      *&result = 1.79769313e308;
    }
  }

  else
  {
    *&result = v3 / *a3;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul,0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<DSPGraph::CalculationBox::Value::operator/(DSPGraph::CalculationBox::Value const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,long long,double> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,long long,double> const>(uint64_t a1, double *a2, uint64_t *a3)
{
  *a2;
  *a2;
  result = *a2 / *a3;
  if (*a3)
  {
    v4 = *a2 / *a3;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul,1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<DSPGraph::CalculationBox::Value::operator/(DSPGraph::CalculationBox::Value const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,long long,double> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,long long,double> const>(uint64_t a1, uint64_t *a2, double *a3)
{
  v3 = *a3;
  v4 = 0x7FEFFFFFFFFFFFFFLL;
  v5 = 0xFFEFFFFFFFFFFFFFLL;
  if (!*a2)
  {
    v5 = 0x7FF8000000000000;
  }

  if (*a2 <= 0)
  {
    v4 = v5;
  }

  if (v3 == 0.0)
  {
    return v4;
  }

  else
  {
    *&result = *a2 / v3;
  }

  return result;
}

unint64_t DSPGraph::CalculationBox::getPropertyInfo(DSPGraph::CalculationBox *this, int a2, int a3)
{
  v3 = 1;
  if (a2 > 1718367025)
  {
    if (a2 > 1936274995)
    {
      if (a2 <= 1969828149)
      {
        if (a2 == 1936274996)
        {
          goto LABEL_34;
        }

        if (a2 == 1969827896)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (a2 == 1969828150)
      {
        goto LABEL_34;
      }

      if (a2 == 1969828658)
      {
        goto LABEL_30;
      }

      v4 = 1969829428;
    }

    else
    {
      if (a2 > 1936273463)
      {
        if (a2 == 1936273464)
        {
          goto LABEL_35;
        }

        if (a2 == 1936273718)
        {
          goto LABEL_34;
        }

        if (a2 != 1936274226)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      if (a2 == 1718367026)
      {
        goto LABEL_30;
      }

      v4 = 1718367796;
    }

    if (a2 != v4)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          goto LABEL_30;
        }

        if (a2 != 9)
        {
LABEL_33:
          PropertyInfo = DSPGraph::Box::getPropertyInfo(this, a2, a3);
          v6 = PropertyInfo;
          v7 = PropertyInfo & 0xFFFFFFFF00000000;
          return v7 | v6;
        }
      }

LABEL_28:
      v3 = 8;
      goto LABEL_35;
    }

    if (a2 == 5)
    {
      goto LABEL_34;
    }

LABEL_30:
    v3 = 4;
    goto LABEL_35;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_35;
    }

    if (a2 == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (a2 == 2)
  {
    goto LABEL_30;
  }

  if (a2 == 3)
  {
LABEL_34:
    v3 = 2;
  }

LABEL_35:
  v6 = -10866;
  if (a3 == 2)
  {
    v7 = 0;
    if (*(this + 195) == 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = -10866;
    }
  }

  else if (a3 == 1)
  {
    v8 = *(this + 194);
    v9 = v8 == 1;
    if (v8 == 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = -10866;
    }

    if (v9)
    {
      v7 = 0x100000000;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 | v6;
}

double DSPGraph::CalculationBox::desc@<D0>(DSPGraph::CalculationBox *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 193);
  *a2 = 1668183148;
  *(a2 + 4) = v2;
  *&result = 1633841016;
  *(a2 + 8) = 1633841016;
  *(a2 + 16) = 0;
  return result;
}

uint64_t DSPGraph::CalculationBox::getParameterInfo@<X0>(uint64_t this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    if (a2 == 2)
    {
      if (!*(this + 780))
      {
        *(a4 + 48) = 0;
        strcpy(a4, "output parameter");
        *(a4 + 17) = unk_18F916229;
        *(a4 + 18) = unk_18F91622A;
        *(a4 + 20) = unk_18F91622C;
        *(a4 + 24) = unk_18F916230;
        *(a4 + 32) = xmmword_18F916238;
        *(a4 + 56) = 0;
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 80) = 26;
        *(a4 + 84) = -2.84809454e-306;
        v6 = 0x4000000000000000;
        goto LABEL_12;
      }
    }

    else if (a2 == 1 && !*(this + 776))
    {
      *(a4 + 48) = 0;
      strcpy(a4, "input parameter");
      *(a4 + 16) = *algn_18F9161F0;
      *(a4 + 32) = xmmword_18F916200;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 26;
      *(a4 + 84) = -2.84809454e-306;
      v6 = 0xC000000000000000;
LABEL_12:
      *(a4 + 92) = v6;
      v4 = 1;
      goto LABEL_10;
    }

    v4 = 0;
    v5 = -10866;
    goto LABEL_9;
  }

  v4 = 0;
  v5 = 1869640255;
LABEL_9:
  *a4 = v5;
LABEL_10:
  *(a4 + 104) = v4;
  return this;
}

uint64_t DSPGraph::CalculationBox::getParameterList@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 2)
  {
    if (!*(this + 780))
    {
      v5 = 0;
      v3 = &v5;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      v4 = &v5;
      return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, v4, (v3 + 1), 1uLL);
    }

LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return this;
  }

  if (a2 != 1 || *(this + 776))
  {
    goto LABEL_6;
  }

  v6 = 0;
  v3 = &v6;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v4 = &v6;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, v4, (v3 + 1), 1uLL);
}

void boost::container::throw_bad_alloc(boost::container *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F032D318;
  exception[1] = "boost::container::bad_alloc thrown";
}

void boost::container::bad_alloc::~bad_alloc(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

uint64_t MP4BoxParser_TimeToSample::Init(MP4BoxParser **this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (!v2)
  {
    if (*(this + 5) != 1937011827)
    {
      v2 = 4294967294;
      goto LABEL_12;
    }

    v3 = (*(*this + 3))(this);
    v4 = (*(*this + 3))(this);
    v5 = this[3];
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (!v6 || v7 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v2 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }

      v16 = 136315394;
      v17 = "MP4_BoxParser_TimeToSample.cpp";
      v18 = 1024;
      v19 = 83;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  TimeToSample box too small to contain its entry count";
LABEL_9:
      _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v10, &v16, 0x12u);
      goto LABEL_10;
    }

    v13 = v4;
    DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, this + 60);
    if (!DataSourceBytes)
    {
      v15 = bswap32(*(this + 15));
      *(this + 15) = v15;
      if (this[3] - v13 - 4 >= 8 * v15)
      {
        v2 = 0;
        goto LABEL_12;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v16 = 136315394;
      v17 = "MP4_BoxParser_TimeToSample.cpp";
      v18 = 1024;
      v19 = 92;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  TimeToSample box too small to contain its entries";
      goto LABEL_9;
    }

    v2 = DataSourceBytes;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "MP4_BoxParser_TimeToSample.cpp";
      v18 = 1024;
      v19 = 86;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Can't read TimeToSample box entry count", &v16, 0x12u);
    }
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

void MP4BoxParser_TimeToSample::~MP4BoxParser_TimeToSample(MP4BoxParser_TimeToSample *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t std::__function::__func<MP4BoxParser_TimeToSample::GetTotalSampleDuration(void)::$_0,std::allocator<MP4BoxParser_TimeToSample::GetTotalSampleDuration(void)::$_0>,void ()(void const*)>::operator()(uint64_t result, int8x8_t **a2)
{
  v2 = *(*(result + 8) + 60);
  if (v2)
  {
    v3 = *a2;
    v4 = *(result + 16);
    v5 = *v4;
    do
    {
      v6 = *v3++;
      v7 = vrev32_s8(v6);
      v5 += vmul_lane_s32(v7, v7, 1).u32[0];
      --v2;
    }

    while (v2);
    *v4 = v5;
  }

  return result;
}

__n128 std::__function::__func<MP4BoxParser_TimeToSample::GetTotalSampleDuration(void)::$_0,std::allocator<MP4BoxParser_TimeToSample::GetTotalSampleDuration(void)::$_0>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F032D420;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ID3CallbackProc(_DWORD *a1, int a2, unsigned int a3, int a4, void **a5, unsigned int *a6)
{
  if (a2)
  {
    return 0;
  }

  v8 = a1[2];
  if (a4 + a3 > v8)
  {
    return 4294967272;
  }

  result = 0;
  *a5 = (*a1 + a3);
  *a6 = v8 - a3;
  return result;
}

uint64_t AudioFormatProperty_ID3TagToDictionary(unsigned __int8 *a1, int a2, __CFDictionary **a3)
{
  v32 = 0;
  v4 = 2003329396;
  v30 = a1;
  v31 = a2;
  if (!ID3ParserOpen(&v30, ID3CallbackProc, &v32))
  {
    v29 = 0;
    v28 = 4;
    if (!ID3ParserGetProperty(v32, 0, 0, 1717792372, &v28, &v29))
    {
      *bytes = 0;
      cf = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v21 = 257;
      v19 = 0;
      v28 = 4;
      ID3ParserGetProperty(v32, 0, 0, 1953916274, &v28, &v19);
      if (v19 == 2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      v24 = 0;
      if (v29)
      {
        v6 = 0;
        v7 = *MEMORY[0x1E695E480];
        do
        {
          v28 = 12;
          v25 = v6;
          if (!ID3ParserGetProperty(v32, 8, &v24, 1718185574, &v28, &v26))
          {
            v8 = bswap32(v26);
            *bytes = v8;
            if (v19 == 2)
            {
              *bytes = v8 >> 8;
            }

            v9 = CFStringCreateWithBytes(v7, bytes, v5, 0x201u, 0);
            if (v9)
            {
              v28 = 8;
              v25 = v6;
              if (!ID3ParserGetProperty(v32, 4, &v27, 1717854580, &v28, &cf))
              {
                v10 = CFGetTypeID(cf);
                if (v10 == CFDictionaryGetTypeID())
                {
                  v16 = 0;
                  v17 = cf;
                  v18 = 0;
                  CACFDictionary::GetString(&v17, @"identifier", &v16);
                  if (v16)
                  {
                    v15 = 0;
                    if (CACFDictionary::GetDictionary(&Mutable, v9, &v15))
                    {
                      v13 = v15;
                      v14 = 256;
                      CACFDictionary::AddDictionary(&v13, v16, cf);
                    }

                    else
                    {
                      v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      v14 = 257;
                      if (CACFDictionary::AddDictionary(&v13, v16, cf))
                      {
                        CACFDictionary::AddDictionary(&Mutable, v9, v13);
                      }
                    }

                    CACFDictionary::~CACFDictionary(&v13);
                  }

                  CACFDictionary::~CACFDictionary(&v17);
                }

                else
                {
                  CACFDictionary::AddCFType(&Mutable, v9, cf);
                }

                CFRelease(cf);
                cf = 0;
              }

              CFRelease(v9);
            }
          }

          ++v6;
        }

        while (v6 < v29);
      }

      if (CACFDictionary::Size(&Mutable))
      {
        if (Mutable)
        {
          CFRetain(Mutable);
          v11 = Mutable;
        }

        else
        {
          v11 = 0;
        }

        v4 = 0;
        *a3 = v11;
      }

      CACFDictionary::~CACFDictionary(&Mutable);
    }

    ID3ParserClose();
  }

  return v4;
}

void sub_18F792888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  CACFDictionary::~CACFDictionary(va2);
  _Unwind_Resume(a1);
}

void SetAllowedClassesForAUAudioUnitHostXPCInterface(void *a1)
{
  v4 = a1;
  v1 = [v4 classesForSelector:sel_propertiesChanged_ argumentIndex:0 ofReply:0];
  v2 = [v1 mutableCopy];

  v3 = objc_opt_self();
  [v2 addObject:v3];

  [v2 addObject:objc_opt_class()];
  [v4 setClasses:v2 forSelector:sel_propertiesChanged_ argumentIndex:0 ofReply:0];
  if (getAVSpeechSynthesisMarkerClass() && getAVSpeechSynthesisProviderRequestClass())
  {
    [v2 addObject:getAVSpeechSynthesisMarkerClass()];
    [v2 addObject:getAVSpeechSynthesisProviderRequestClass()];
    [v4 setClasses:v2 forSelector:sel_speechSynthesisMetadataAvailable_speechRequest_ argumentIndex:0 ofReply:0];
  }
}

id getAVSpeechSynthesisMarkerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSpeechSynthesisMarkerClass(void)::softClass;
  v7 = getAVSpeechSynthesisMarkerClass(void)::softClass;
  if (!getAVSpeechSynthesisMarkerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL31getAVSpeechSynthesisMarkerClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL31getAVSpeechSynthesisMarkerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F792CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSpeechSynthesisProviderRequestClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVSpeechSynthesisProviderRequestClass(void)::softClass;
  v7 = getAVSpeechSynthesisProviderRequestClass(void)::softClass;
  if (!getAVSpeechSynthesisProviderRequestClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL40getAVSpeechSynthesisProviderRequestClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL40getAVSpeechSynthesisProviderRequestClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F792D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL40getAVSpeechSynthesisProviderRequestClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechSynthesisProviderRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechSynthesisProviderRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSpeechSynthesisProviderRequestClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:67 description:{@"Unable to find class %s", "AVSpeechSynthesisProviderRequest"}];

    __break(1u);
  }
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke_5085(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL31getAVSpeechSynthesisMarkerClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechSynthesisMarker");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechSynthesisMarkerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSpeechSynthesisMarkerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:69 description:{@"Unable to find class %s", "AVSpeechSynthesisMarker"}];

    __break(1u);
  }
}

void sub_18F7934EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id CreateAUAudioUnitXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034EEB0];
  ConfigureAUAudioUnitXPCInterface(v0);
  objc_claimAutoreleasedReturnValue();

  return v0;
}

id ConfigureAUAudioUnitXPCInterface(void *a1)
{
  v1 = a1;
  v2 = [v1 classesForSelector:sel_valueForProperty_propagateError_reply_ argumentIndex:1 ofReply:1];
  v3 = [v2 mutableCopy];

  v4 = objc_opt_self();
  [v3 addObject:v4];

  v5 = objc_opt_self();
  [v3 addObject:v5];

  [v1 setXPCType:MEMORY[0x1E69E9E80] forSelector:sel_createRenderPipe_formats_maxFrames_midiOutSizeHint_resources_reply_ argumentIndex:4 ofReply:0];
  v6 = [v3 mutableCopy];
  v7 = objc_opt_self();
  [v6 addObject:v7];

  v8 = objc_opt_self();
  [v6 addObject:v8];

  v9 = objc_opt_self();
  [v6 addObject:v9];

  [v1 setClasses:v6 forSelector:sel_valueForProperty_propagateError_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v6 forSelector:sel_setValue_forProperty_propagateError_reply_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v6 forSelector:sel_valueForKey_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v6 forSelector:sel_setValue_forKey_reply_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = [v10 setWithObjects:{v11, v12, v13, 0}];

  [v1 setClasses:v14 forSelector:sel_valueForProperty_propagateError_reply_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v14 forSelector:sel_valueForKey_reply_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v14 forSelector:sel_setValue_forProperty_propagateError_reply_ argumentIndex:1 ofReply:0];
  [v1 setClasses:v14 forSelector:sel_setValue_forProperty_propagateError_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v14 forSelector:sel_setValue_forKey_reply_ argumentIndex:1 ofReply:0];
  [v1 setClasses:v14 forSelector:sel_setValue_forKey_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v14 forSelector:sel_setBusFormat_scope_format_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v14 forSelector:sel_setBusCount_scope_reply_ argumentIndex:1 ofReply:1];

  v15 = [v3 mutableCopy];
  v16 = objc_opt_self();
  [v15 addObject:v16];

  [v1 setClasses:v15 forSelector:sel_open_instanceUUID_reply_ argumentIndex:3 ofReply:1];
  [v1 setClasses:v15 forSelector:sel_open_instanceUUID_reply_ argumentIndex:4 ofReply:1];
  [v1 setClasses:v15 forSelector:sel_getBusses_reply_ argumentIndex:1 ofReply:1];

  v17 = [v3 mutableCopy];
  v18 = objc_opt_self();
  [v17 addObject:v18];

  v19 = objc_opt_self();
  [v17 addObject:v19];

  v20 = objc_opt_self();
  [v17 addObject:v20];

  v21 = objc_opt_self();
  [v17 addObject:v21];

  [v1 setClasses:v17 forSelector:sel_getParameterTree_ argumentIndex:1 ofReply:1];
  v22 = [MEMORY[0x1E696AAE8] mainBundle];
  v23 = [v22 infoDictionary];
  v24 = [v23 objectForKeyedSubscript:@"AUAudioUnitViewsSupported"];

  if (v24 && (v25 = [v24 BOOLValue], v24, !v25))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Not supporting AUAudioUnitViews in this audio unit interface.", buf, 2u);
    }
  }

  else
  {
    v26 = [v3 mutableCopy];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v27 = getAUAudioUnitViewConfigurationClass(void)::softClass;
    v50 = getAUAudioUnitViewConfigurationClass(void)::softClass;
    if (!getAUAudioUnitViewConfigurationClass(void)::softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = ___ZL36getAUAudioUnitViewConfigurationClassv_block_invoke;
      v45 = &unk_1E72C2B68;
      v46 = &v47;
      ___ZL36getAUAudioUnitViewConfigurationClassv_block_invoke(buf);
      v27 = v48[3];
    }

    v28 = v27;
    _Block_object_dispose(&v47, 8);
    [v26 addObject:v27];
    [v1 setClasses:v26 forSelector:sel_supportedViewConfigurations_reply_ argumentIndex:0 ofReply:0];
    [v1 setClasses:v26 forSelector:sel_selectViewConfiguration_reply_ argumentIndex:0 ofReply:0];
  }

  v29 = [v3 mutableCopy];
  v30 = objc_opt_self();
  [v29 addObject:v30];

  [v1 setClasses:v29 forSelector:sel_loadUserPresets_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v29 forSelector:sel_saveUserPreset_state_reply_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v29 forSelector:sel_presetStateFor_reply_ argumentIndex:0 ofReply:0];

  v31 = [v3 mutableCopy];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v32 = getAVAudioFormatClass(void)::softClass;
  v50 = getAVAudioFormatClass(void)::softClass;
  if (!getAVAudioFormatClass(void)::softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL21getAVAudioFormatClassv_block_invoke_5114;
    v45 = &unk_1E72C2B68;
    v46 = &v47;
    ___ZL21getAVAudioFormatClassv_block_invoke_5114(buf);
    v32 = v48[3];
  }

  v33 = v32;
  _Block_object_dispose(&v47, 8);
  [v31 addObject:v32];
  [v1 setClasses:v31 forSelector:sel_setBusFormat_scope_format_reply_ argumentIndex:2 ofReply:0];

  v34 = [v3 mutableCopy];
  v35 = objc_opt_self();
  [v34 addObject:v35];

  v36 = objc_opt_self();
  [v34 addObject:v36];

  [v1 setClasses:v34 forSelector:sel_profileStateForCable_channel_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v34 forSelector:sel_enableProfile_cable_onChannel_reply_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v34 forSelector:sel_disableProfile_cable_onChannel_reply_ argumentIndex:0 ofReply:0];

  [v1 setXPCType:MEMORY[0x1E69E9E80] forSelector:sel_updateWorkgroupMirror_reply_ argumentIndex:0 ofReply:0];
  v37 = [v3 mutableCopy];
  AVSpeechSynthesisProviderRequestClass = getAVSpeechSynthesisProviderRequestClass();
  if (AVSpeechSynthesisProviderRequestClass)
  {
    [v37 addObject:AVSpeechSynthesisProviderRequestClass];
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v39 = getAVSpeechSynthesisProviderVoiceClass(void)::softClass;
  v50 = getAVSpeechSynthesisProviderVoiceClass(void)::softClass;
  if (!getAVSpeechSynthesisProviderVoiceClass(void)::softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = ___ZL38getAVSpeechSynthesisProviderVoiceClassv_block_invoke;
    v45 = &unk_1E72C2B68;
    v46 = &v47;
    ___ZL38getAVSpeechSynthesisProviderVoiceClassv_block_invoke(buf);
    v39 = v48[3];
  }

  v40 = v39;
  _Block_object_dispose(&v47, 8);
  if (v39)
  {
    [v37 addObject:v39];
  }

  [v1 setClasses:v37 forSelector:sel_synthesizeSpeechRequest_reply_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v37 forSelector:sel_getSpeechVoices_ argumentIndex:1 ofReply:1];

  return v1;
}

void sub_18F794260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL36getAUAudioUnitViewConfigurationClassv_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_5127;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E72C0F50;
    v10 = 0;
    CoreAudioKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAudioKitLibrary()"];
    [v4 handleFailureInFunction:v5 file:@"AUAudioUnit_Internal.h" lineNumber:359 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("AUAudioUnitViewConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAUAudioUnitViewConfigurationClass()_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"AUAudioUnit_Internal.h" lineNumber:362 description:{@"Unable to find class %s", "AUAudioUnitViewConfiguration"}];

LABEL_10:
    __break(1u);
  }

  getAUAudioUnitViewConfigurationClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL21getAVAudioFormatClassv_block_invoke_5114(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFormat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFormatClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioFormatClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "AVAudioFormat"}];

    __break(1u);
  }
}

void ___ZL38getAVSpeechSynthesisProviderVoiceClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVSpeechSynthesisProviderVoice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVSpeechSynthesisProviderVoiceClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSpeechSynthesisProviderVoiceClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:68 description:{@"Unable to find class %s", "AVSpeechSynthesisProviderVoice"}];

    __break(1u);
  }
}

uint64_t ___ZL23CoreAudioKitLibraryCorePPc_block_invoke_5127(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAudioKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CA::ADMBuilder::Impl::parse_object(const unsigned __int8 **this, char *__s1, const unsigned __int8 **a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = *(*this + 7);
  v8 = *(v6 - 16);
  v7 = *(v6 - 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!strcmp(__s1, "audioPackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioObjectIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioObjectLabel"))
  {
    CA::ADMBuilder::Impl::label_from_attributes(buf, a3);
    std::vector<CA::ADMLabel>::push_back[abi:ne200100]((v8 + 192), buf);
    if (SBYTE7(v51) < 0)
    {
      operator delete(__p[0]);
    }

    if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    operator new();
  }

  if (!strcmp(__s1, "audioComplementaryObjectGroupLabel"))
  {
    CA::ADMBuilder::Impl::label_from_attributes(buf, a3);
    std::vector<CA::ADMLabel>::push_back[abi:ne200100]((v8 + 216), buf);
    if (SBYTE7(v51) < 0)
    {
      operator delete(__p[0]);
    }

    if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    operator new();
  }

  if (!strcmp(__s1, "audioComplementaryObjectIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioTrackUIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioObjectInteraction"))
  {
    CA::ADMBuilder::Impl::parse_interaction(buf, this, a3);
    v14 = *(*(*this + 7) - 16);
    v15 = (v14 + 288);
    v16 = v51;
    if (*(v14 + 372) == 1)
    {
      *(v14 + 320) = *__p;
      *(v14 + 336) = v16;
      *(v14 + 352) = v52;
      *(v14 + 368) = v53;
      v17 = *&buf[16];
      *v15 = *buf;
      *(v14 + 304) = v17;
    }

    else
    {
      *(v14 + 320) = *__p;
      *(v14 + 336) = v16;
      *(v14 + 352) = v52;
      *(v14 + 368) = v53;
      v22 = *&buf[16];
      *v15 = *buf;
      *(v14 + 304) = v22;
      *(v14 + 372) = 1;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear((this + 100));
    v13 = 33;
    goto LABEL_125;
  }

  if (!strcmp(__s1, "gain"))
  {
    if ((*(v8 + 384) & 1) == 0)
    {
      *(v8 + 384) = 1;
    }

    *(v8 + 376) = 0;
    if (a3)
    {
      v18 = *a3;
      if (*a3)
      {
        v19 = a3 + 2;
        do
        {
          if (!strcmp(v18, "gainUnit"))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, *(v19 - 1));
            v20 = CA::ADMBuilder::Impl::parse_gain_unit(this, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v20 >= 0x100u)
            {
              *(v8 + 380) = v20;
            }
          }

          v21 = *v19;
          v19 += 2;
          v18 = v21;
        }

        while (v21);
      }
    }

    operator new();
  }

  if (!strcmp(__s1, "headLocked"))
  {
    operator new();
  }

  v9 = strcmp(__s1, "positionOffset");
  if (!v9)
  {
    this[76] = 0;
    if (a3)
    {
      v9 = *a3;
      if (*a3)
      {
        v23 = 0;
        v24 = 0;
        v25 = a3 + 2;
        while (1)
        {
          v26 = *(v25 - 1);
          if (!strcmp(v9, "coordinate"))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, v26);
            v27 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(this + 100, buf);
            v28 = v27;
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v28)
            {
              if (!strcmp(v26, "azimuth"))
              {
                v24 = 0;
                *(v8 + 392) = 0;
                v23 = 1;
                *(v8 + 396) = 1;
                v35 = (v8 + 392);
LABEL_80:
                this[76] = v35;
                goto LABEL_81;
              }

              if (!strcmp(v26, "elevation"))
              {
                v24 = 0;
                *(v8 + 400) = 0;
                v23 = 1;
                *(v8 + 404) = 1;
                v35 = (v8 + 400);
                goto LABEL_80;
              }

              v29 = strcmp(v26, "distance");
              if (!v29)
              {
                v24 = 0;
                *(v8 + 408) = 0;
                v23 = 1;
                *(v8 + 412) = 1;
                v35 = (v8 + 408);
                goto LABEL_80;
              }

              v30 = *v26;
              if (v30 == 90)
              {
                if (!v26[1])
                {
                  *(v8 + 408) = 0;
                  v24 = 1;
                  *(v8 + 412) = 1;
                  v31 = (v8 + 408);
                  goto LABEL_93;
                }
              }

              else if (v30 == 89)
              {
                if (!v26[1])
                {
                  *(v8 + 400) = 0;
                  v24 = 1;
                  *(v8 + 404) = 1;
                  v31 = (v8 + 400);
                  goto LABEL_93;
                }
              }

              else if (v30 == 88 && !v26[1])
              {
                *(v8 + 392) = 0;
                v24 = 1;
                *(v8 + 396) = 1;
                v31 = (v8 + 392);
LABEL_93:
                this[76] = v31;
                v23 = 1;
                goto LABEL_81;
              }

              v37 = CA::ADMBuilder::Impl::log(v29);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v48, v8, "");
                v38 = &v48;
                if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v38 = v48.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "ADMBuilderParseObject.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 100;
                *&buf[18] = 2080;
                *&buf[20] = v38;
                _os_log_impl(&dword_18F5DF000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown coordinate given for position offset of object '%s'", buf, 0x1Cu);
                if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v48.__r_.__value_.__l.__data_);
                }
              }

              v34 = -66593;
            }

            else
            {
              v32 = CA::ADMBuilder::Impl::log(v27);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v48, v8, "");
                v33 = &v48;
                if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v33 = v48.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "ADMBuilderParseObject.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 106;
                *&buf[18] = 2080;
                *&buf[20] = v33;
                _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple coordinates for position offset of object '%s'", buf, 0x1Cu);
                if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v48.__r_.__value_.__l.__data_);
                }
              }

              v34 = -66589;
            }

            *(this + 158) = v34;
          }

LABEL_81:
          v36 = *v25;
          v25 += 2;
          v9 = v36;
          if (!v36)
          {
            goto LABEL_96;
          }
        }
      }
    }

    v24 = 0;
    v23 = 0;
LABEL_96:
    if (*(this + 158))
    {
      goto LABEL_124;
    }

    if (!this[76])
    {
      v42 = CA::ADMBuilder::Impl::log(v9);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v48, v8, "");
        v43 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v48 : v48.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "ADMBuilderParseObject.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 115;
        *&buf[18] = 2080;
        *&buf[20] = v43;
        _os_log_impl(&dword_18F5DF000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing coordinate for position offset of object '%s'", buf, 0x1Cu);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }
      }

      v41 = -66592;
      goto LABEL_123;
    }

    if (v23)
    {
      if (*(v8 + 417) == 1)
      {
        if (v23 != 1 || *(v8 + 416) != v24)
        {
          v39 = CA::ADMBuilder::Impl::log(v9);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v48, v8, "");
            v40 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v48 : v48.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseObject.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 123;
            *&buf[18] = 2080;
            *&buf[20] = v40;
            _os_log_impl(&dword_18F5DF000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems for position offset of object '%s'", buf, 0x1Cu);
            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
            }
          }

          v41 = -66603;
LABEL_123:
          *(this + 158) = v41;
LABEL_124:
          v13 = 1;
          goto LABEL_125;
        }
      }

      else
      {
        *(v8 + 416) = v24 | 0x100;
        if (*(this + 158) || !this[76])
        {
          goto LABEL_124;
        }
      }

      operator new();
    }

    v44 = CA::ADMBuilder::Impl::log(v9);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v48, v8, "");
      v45 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v48 : v48.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "ADMBuilderParseObject.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 132;
      *&buf[18] = 2080;
      *&buf[20] = v45;
      _os_log_impl(&dword_18F5DF000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d Ambiguous coordinate system for position offset of object '%s'", buf, 0x1Cu);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }
    }

    v41 = -66597;
    goto LABEL_123;
  }

  if (!strcmp(__s1, "mute"))
  {
    operator new();
  }

  if (strcmp(__s1, "alternativeValueSet"))
  {
    goto LABEL_124;
  }

  buf[0] = 0;
  buf[24] = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  __p[1] = 0;
  *&v51 = 0;
  __p[0] = 0;
  BYTE8(v51) = 0;
  if (a3)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = a3 + 2;
      do
      {
        if (!strcmp(v10, "alternativeValueSetID"))
        {
          std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(buf, *(v11 - 1));
        }

        v12 = *v11;
        v11 += 2;
        v10 = v12;
      }

      while (v12);
    }
  }

  std::vector<CA::ADMAlternativeValueSet>::emplace_back<CA::ADMAlternativeValueSet>((v8 + 424), buf);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear((this + 105));
  CA::ADMAlternativeValueSet::~ADMAlternativeValueSet(buf);
  v13 = 36;
LABEL_125:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v46 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_18F7954EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CA::ADMLabel>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x492492492492492)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x249249249249249)
    {
      v11 = 0x492492492492492;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 56 * v8;
    *v12 = 0;
    *(v12 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      *v12 = *a2;
      *(56 * v8 + 0x10) = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(56 * v8 + 0x18) = 1;
    }

    v13 = *(a2 + 6);
    v14 = a2[2];
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    v15 = *a1;
    v16 = a1[1];
    v17 = v12 - (v16 - *a1);
    *(56 * v8 + 0x20) = v14;
    *(56 * v8 + 0x30) = v13;
    v7 = v12 + 56;
    v25 = (v12 + 56);
    if (v16 != v15)
    {
      v18 = 0;
      do
      {
        v19 = -8 * ((v16 - v15) >> 3) + 56 * v8 + v18;
        v20 = (v15 + v18);
        *v19 = 0;
        *(v19 + 24) = 0;
        if (*(v15 + v18 + 24) == 1)
        {
          v21 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v21;
          *(v20 + 1) = 0;
          *(v20 + 2) = 0;
          *v20 = 0;
          *(v19 + 24) = 1;
        }

        v22 = v20[2];
        *(v19 + 48) = *(v20 + 6);
        *(v19 + 32) = v22;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 4) = 0;
        v18 += 56;
      }

      while (v15 + v18 != v16);
      do
      {
        std::allocator_traits<std::allocator<CA::ADMLabel>>::destroy[abi:ne200100]<CA::ADMLabel,void,0>(v15);
        v15 += 56;
      }

      while (v15 != v16);
    }

    v23 = *a1;
    *a1 = v17;
    *&v24 = v23;
    *(&v24 + 1) = a1[2];
    *(a1 + 1) = v25;
    while (v24 != v23)
    {
      *&v24 = v24 - 56;
      v26 = v24;
      std::allocator_traits<std::allocator<CA::ADMLabel>>::destroy[abi:ne200100]<CA::ADMLabel,void,0>(v24);
      v24 = v26;
    }

    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v5 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v5;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(v3 + 24) = 1;
    }

    v6 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 32) = v6;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    v7 = v3 + 56;
  }

  a1[1] = v7;
}

void std::vector<CA::ADMAlternativeValueSet>::emplace_back<CA::ADMAlternativeValueSet>(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 6);
    v14 = v13 + 1;
    if (v13 + 1 > 0x155555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 6);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xAAAAAAAAAAAAAALL)
    {
      v16 = 0x155555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x155555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = 192 * v13;
    *v17 = 0;
    *(v17 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      *v17 = *a2;
      *(192 * v13 + 0x10) = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(192 * v13 + 0x18) = 1;
    }

    *(192 * v13 + 0x20) = a2[2];
    *(192 * v13 + 0x30) = *(a2 + 6);
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *(192 * v13 + 0x88) = *(a2 + 136);
    *(192 * v13 + 0x98) = *(a2 + 152);
    *(192 * v13 + 0xA8) = *(a2 + 168);
    *(192 * v13 + 0xB8) = *(a2 + 92);
    *(192 * v13 + 0x48) = *(a2 + 72);
    *(192 * v13 + 0x58) = *(a2 + 88);
    *(192 * v13 + 0x68) = *(a2 + 104);
    *(192 * v13 + 0x78) = *(a2 + 120);
    v18 = *a1;
    v19 = a1[1];
    v20 = v17 - (v19 - *a1);
    *(192 * v13 + 0x38) = *(a2 + 56);
    v12 = v17 + 192;
    v32 = (v17 + 192);
    if (v19 != v18)
    {
      v21 = 0;
      do
      {
        v22 = (v18 + v21);
        v23 = -64 * ((v19 - v18) >> 6) + 192 * v13 + v21;
        *v23 = 0;
        *(v23 + 24) = 0;
        if (*(v18 + v21 + 24) == 1)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          *(v22 + 1) = 0;
          *(v22 + 2) = 0;
          *v22 = 0;
          *(v23 + 24) = 1;
        }

        *(v23 + 32) = 0;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        *(v23 + 32) = v22[2];
        *(v23 + 48) = *(v22 + 6);
        *(v22 + 5) = 0;
        *(v22 + 6) = 0;
        *(v22 + 4) = 0;
        v25 = *(v22 + 88);
        v26 = *(v22 + 104);
        v27 = *(v22 + 120);
        *(v23 + 72) = *(v22 + 72);
        *(v23 + 120) = v27;
        *(v23 + 104) = v26;
        *(v23 + 88) = v25;
        v28 = *(v22 + 152);
        v29 = *(v22 + 168);
        v30 = *(v22 + 92);
        *(v23 + 136) = *(v22 + 136);
        *(v23 + 184) = v30;
        *(v23 + 168) = v29;
        *(v23 + 152) = v28;
        *(v23 + 56) = *(v22 + 56);
        v21 += 192;
      }

      while (v18 + v21 != v19);
      do
      {
        std::__destroy_at[abi:ne200100]<CA::ADMAlternativeValueSet,0>(v18);
        v18 += 192;
      }

      while (v18 != v19);
    }

    v31 = *a1;
    *a1 = v20;
    *(a1 + 1) = v32;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v5 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v5;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(v3 + 24) = 1;
    }

    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    v6 = *(a2 + 88);
    v7 = *(a2 + 104);
    v8 = *(a2 + 120);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 120) = v8;
    *(v3 + 104) = v7;
    *(v3 + 88) = v6;
    v9 = *(a2 + 152);
    v10 = *(a2 + 168);
    v11 = *(a2 + 92);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 184) = v11;
    *(v3 + 168) = v10;
    *(v3 + 152) = v9;
    *(v3 + 56) = *(a2 + 56);
    v12 = v3 + 192;
  }

  a1[1] = v12;
}

void CA::ADMAlternativeValueSet::~ADMAlternativeValueSet(void **this)
{
  v2 = this + 4;
  std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__destroy_at[abi:ne200100]<CA::ADMAlternativeValueSet,0>(uint64_t a1)
{
  v3 = (a1 + 32);
  std::vector<CA::ADMLabel>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::allocator_traits<std::allocator<CA::ADMLabel>>::destroy[abi:ne200100]<CA::ADMLabel,void,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t CA::ADMBuilder::Impl::parse_object_interaction(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v5 = *(*(*this + 56) - 16);
  if ((*(v5 + 372) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return CA::ADMBuilder::Impl::parse_interaction_subelement(this, v5, v5 + 288, __s1, a3);
}

uint64_t CA::ADMBuilder::Impl::parse_object_alternative_value_set(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(*this + 56);
  v7 = *(*(v6 - 16) + 432);
  if (!strcmp(__s1, "audioObjectLabel"))
  {
    CA::ADMBuilder::Impl::label_from_attributes(buf, a3);
    std::vector<CA::ADMLabel>::push_back[abi:ne200100]((v7 - 160), buf);
    if (SBYTE7(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if (buf[24] == 1 && (buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    operator new();
  }

  if (strcmp(__s1, "audioObjectInteraction"))
  {
    if (!strcmp(__s1, "gain"))
    {
      if ((*(v7 - 40) & 1) == 0)
      {
        *(v7 - 40) = 1;
      }

      *(v7 - 48) = 0;
      if (a3)
      {
        v10 = *a3;
        if (*a3)
        {
          v11 = a3 + 2;
          do
          {
            if (!strcmp(v10, "gainUnit"))
            {
              std::string::basic_string[abi:ne200100]<0>(buf, *(v11 - 1));
              v12 = CA::ADMBuilder::Impl::parse_gain_unit(this, buf);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v12 >= 0x100u)
              {
                *(v7 - 44) = v12;
              }
            }

            v13 = *v11;
            v11 += 2;
            v10 = v13;
          }

          while (v13);
        }
      }

      operator new();
    }

    if (!strcmp(__s1, "headLocked"))
    {
      operator new();
    }

    v8 = strcmp(__s1, "positionOffset");
    if (v8)
    {
      if (!strcmp(__s1, "mute"))
      {
        operator new();
      }

      goto LABEL_99;
    }

    *(this + 76) = 0;
    if (a3)
    {
      v8 = *a3;
      if (*a3)
      {
        v15 = 0;
        v16 = 0;
        v17 = a3 + 2;
        while (1)
        {
          v18 = *(v17 - 1);
          if (!strcmp(v8, "coordinate"))
          {
            break;
          }

LABEL_57:
          v28 = *v17;
          v17 += 2;
          v8 = v28;
          if (!v28)
          {
            goto LABEL_71;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(buf, v18);
        v19 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(this + 105, buf);
        v20 = v19;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (v20)
          {
            goto LABEL_37;
          }
        }

        else if (v19)
        {
LABEL_37:
          if (!strcmp(v18, "azimuth"))
          {
            v16 = 0;
            *(v7 - 32) = 0;
            v15 = 1;
            *(v7 - 28) = 1;
            v27 = v7 - 32;
LABEL_56:
            *(this + 76) = v27;
            goto LABEL_57;
          }

          if (!strcmp(v18, "elevation"))
          {
            v16 = 0;
            *(v7 - 24) = 0;
            v15 = 1;
            *(v7 - 20) = 1;
            v27 = v7 - 24;
            goto LABEL_56;
          }

          v21 = strcmp(v18, "distance");
          if (!v21)
          {
            v16 = 0;
            *(v7 - 16) = 0;
            v15 = 1;
            *(v7 - 12) = 1;
            v27 = v7 - 16;
            goto LABEL_56;
          }

          v22 = *v18;
          if (v22 == 90)
          {
            if (!v18[1])
            {
              *(v7 - 16) = 0;
              v16 = 1;
              *(v7 - 12) = 1;
              v23 = v7 - 16;
              goto LABEL_69;
            }
          }

          else if (v22 == 89)
          {
            if (!v18[1])
            {
              *(v7 - 24) = 0;
              v16 = 1;
              *(v7 - 20) = 1;
              v23 = v7 - 24;
              goto LABEL_69;
            }
          }

          else if (v22 == 88 && !v18[1])
          {
            *(v7 - 32) = 0;
            v16 = 1;
            *(v7 - 28) = 1;
            v23 = v7 - 32;
LABEL_69:
            *(this + 76) = v23;
            v15 = 1;
            goto LABEL_57;
          }

          v29 = CA::ADMBuilder::Impl::log(v21);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v40, *(v6 - 16), "");
            v30 = &v40;
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v30 = v40.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseObject.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 246;
            *&buf[18] = 2080;
            *&buf[20] = v30;
            _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown coordinate given for position offset of object '%s'", buf, 0x1Cu);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          v26 = -66593;
          goto LABEL_52;
        }

        v24 = CA::ADMBuilder::Impl::log(v19);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v40, *(v6 - 16), "");
          v25 = &v40;
          if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = v40.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "ADMBuilderParseObject.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 252;
          *&buf[18] = 2080;
          *&buf[20] = v25;
          _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple coordinates for position offset of object '%s'", buf, 0x1Cu);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }
        }

        v26 = -66589;
LABEL_52:
        *(this + 158) = v26;
        goto LABEL_57;
      }
    }

    v16 = 0;
    v15 = 0;
LABEL_71:
    if (*(this + 158))
    {
      goto LABEL_99;
    }

    if (!*(this + 76))
    {
      v35 = CA::ADMBuilder::Impl::log(v8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v40, *(v6 - 16), "");
        v36 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "ADMBuilderParseObject.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 261;
        *&buf[18] = 2080;
        *&buf[20] = v36;
        _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing coordinate for position offset of object '%s'", buf, 0x1Cu);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }
      }

      v34 = -66592;
      goto LABEL_98;
    }

    if (v15)
    {
      v31 = *(v6 - 16);
      if (*(v31 + 417) == 1)
      {
        if (v15 != 1 || *(v31 + 416) != v16)
        {
          v32 = CA::ADMBuilder::Impl::log(v8);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v40, *(v6 - 16), "");
            v33 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseObject.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 269;
            *&buf[18] = 2080;
            *&buf[20] = v33;
            _os_log_impl(&dword_18F5DF000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Conflicting coordinate systems for position offset of object '%s'", buf, 0x1Cu);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          v34 = -66603;
LABEL_98:
          *(this + 158) = v34;
LABEL_99:
          result = 1;
          goto LABEL_100;
        }
      }

      else
      {
        *(v31 + 416) = v16 | 0x100;
        if (*(this + 158) || !*(this + 76))
        {
          goto LABEL_99;
        }
      }

      operator new();
    }

    v37 = CA::ADMBuilder::Impl::log(v8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v40, *(v6 - 16), "");
      v38 = (v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v40 : v40.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "ADMBuilderParseObject.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 278;
      *&buf[18] = 2080;
      *&buf[20] = v38;
      _os_log_impl(&dword_18F5DF000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Ambiguous coordinate system for position offset of object '%s'", buf, 0x1Cu);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    v34 = -66597;
    goto LABEL_98;
  }

  CA::ADMBuilder::Impl::parse_interaction(buf, this, a3);
  v9 = (v7 - 136);
  if (*(v7 - 52) == 1)
  {
    *(v7 - 104) = *__p;
    *(v7 - 88) = v43;
    *(v7 - 72) = v44;
    *(v7 - 56) = v45;
    *v9 = *buf;
    *(v7 - 120) = *&buf[16];
  }

  else
  {
    *(v7 - 104) = *__p;
    *(v7 - 88) = v43;
    *(v7 - 72) = v44;
    *(v7 - 56) = v45;
    *v9 = *buf;
    *(v7 - 120) = *&buf[16];
    *(v7 - 52) = 1;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(this + 800);
  result = 38;
LABEL_100:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7965E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::ADMBuilder::Impl::parse_object_alternative_value_set_interaction(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v5 = *(*(*this + 56) - 16);
  v6 = *(v5 + 432);
  if ((*(v6 - 52) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return CA::ADMBuilder::Impl::parse_interaction_subelement(this, v5, v6 - 136, __s1, a3);
}

uint64_t AudioConverterAPI::isOOP(AudioConverterAPI *this, unsigned int *a2, _DWORD *a3)
{
  if (!a2)
  {
    v6 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v6 + 88, 16);
    if (message)
    {
      v8 = message;
      *_os_log_pack_fill() = 0;
LABEL_10:
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v8);
    }

    return 4294967246;
  }

  if (!a3)
  {
    v9 = _os_log_pack_size();
    v10 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (v10)
    {
      v8 = v10;
      v11 = _os_log_pack_fill();
      *v11 = 67109120;
      v11[1] = 1869574207;
      goto LABEL_10;
    }

    return 4294967246;
  }

  if (*a2 < 4)
  {
    return 561211770;
  }

  v5 = (*(*this + 104))(this);
  result = 0;
  *a3 = v5;
  return result;
}

void AudioConverterAPI::isOOPPropertyInfo(AudioConverterAPI *this, unsigned int *a2, unsigned __int8 *a3)
{
  if (a2)
  {
    *a2 = 4;
  }

  if (a3)
  {
    *a3 = 0;
  }
}