uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_literal(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != *(a1 + 16))
  {
    __assert_rtn("scan_literal", "lexer.hpp", 1222, "char_traits<char_type>::to_char_type(current) == literal_text[0]");
  }

  v6 = a2 + 1;
  v7 = a3 - 1;
  while (1)
  {
    v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v9 = *v6++;
    if (v9 != v8)
    {
      break;
    }

    if (!--v7)
    {
      return a4;
    }
  }

  *(a1 + 96) = "invalid literal";
  return 14;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  std::vector<unsigned char>::push_back[abi:ne200100](v1, &v3);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 56);
    if (*(result + 48) == v3)
    {
      __assert_rtn("unget", "lexer.hpp", 1314, "not token_string.empty()");
    }

    *(result + 56) = v3 - 1;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != 117)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 162, "current == 'u'");
  }

  LODWORD(v2) = 0;
  v3 = 0;
  v8 = xmmword_23726C440;
  do
  {
    v4 = *(&v8 + v3);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v5 = *(a1 + 16);
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      if ((v5 - 65) > 5)
      {
        if ((v5 - 97) > 5)
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v5 - 87;
      }

      else
      {
        v6 = v5 - 55;
      }
    }

    v2 = ((v6 << v4) + v2);
    v3 += 4;
  }

  while (v3 != 16);
  if (v2 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(std::string *a1, _DWORD *a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    __assert_rtn("next_byte_in_range", "lexer.hpp", 209, "ranges.size() == 2 or ranges.size() == 4 or ranges.size() == 6");
  }

  std::string::push_back(a1 + 3, a1->__r_.__value_.__s.__data_[16]);
  v6 = &a2[a3];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v7 = a1->__r_.__value_.__r.__words[2];
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back(a1 + 3, v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  a1[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
  return result;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(uint64_t a1)
{
  v2 = a1 + 8;
  v5 = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(*(a1 + 120), (*(a1 + 16) - *(a1 + 8)) >> 3, 0);
  std::vector<BOOL>::push_back((a1 + 32), &v5);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a1, 1u);
  v4 = v3;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](v2, &v4);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(*(a1 + 120), ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v52, (a1 + 136));
    v3 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
    v4 = *v3;
    *v3 = v52[0];
    v52[0] = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = v53;
    v53 = v5;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v52);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v53, v52[0]);
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 == v6)
  {
    __assert_rtn("end_object", "json_sax.hpp", 450, "not ref_stack.empty()");
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    __assert_rtn("end_object", "json_sax.hpp", 451, "not keep_stack.empty()");
  }

  v9 = v6 - 8;
  *(a1 + 16) = v6 - 8;
  *(a1 + 40) = v8 - 1;
  if (v7 == v6 - 8)
  {
    return;
  }

  v10 = *(v6 - 16);
  if (!v10)
  {
    return;
  }

  v11 = *v10;
  if ((v11 - 1) > 1)
  {
    return;
  }

  if (*v10)
  {
    if (v11 == 2)
    {
      v13 = 0;
      v12 = **(v10 + 1);
      v14 = 0x8000000000000000;
    }

    else if (v11 == 1)
    {
      v12 = 0;
      v13 = **(v10 + 1);
      v14 = 0x8000000000000000;
    }

    else
    {
      v14 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  while (1)
  {
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v51, *(v9 - 8));
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v51);
    if (v10 != v51[0])
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v55, "cannot compare iterators of different containers");
      nlohmann::detail::invalid_iterator::create(exception, 212, &v55);
    }

    v17 = *v10;
    if (v17 == 1)
    {
      if (v13 == v51[1])
      {
        return;
      }
    }

    else if (v17 == 2)
    {
      if (v12 == v51[2])
      {
        return;
      }
    }

    else if (v14 == v51[4])
    {
      return;
    }

    v18 = *v10;
    if (v18 == 2)
    {
      v19 = v12;
      if (v12 == *(*(v10 + 1) + 8))
      {
        __assert_rtn("operator->", "iter_impl.hpp", 291, "m_it.array_iterator != m_object->m_value.array->end()");
      }

      goto LABEL_39;
    }

    if (v18 == 1)
    {
      if (v13 == (*(v10 + 1) + 8))
      {
        __assert_rtn("operator->", "iter_impl.hpp", 285, "m_it.object_iterator != m_object->m_value.object->end()");
      }

      v19 = (v13 + 7);
LABEL_39:
      v20 = *v19;
      goto LABEL_41;
    }

    v20 = *v10;
    if (v14)
    {
      v43 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v51, "cannot get value");
      nlohmann::detail::invalid_iterator::create(v43, 214, v51);
    }

LABEL_41:
    if (v20 == 9)
    {
      break;
    }

    if (v18 == 2)
    {
      v12 += 16;
    }

    else if (v18 == 1)
    {
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v13 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13;
          v13 = v13[2];
        }

        while (*v13 != v16);
      }
    }

    else
    {
      ++v14;
    }

    v9 = *(a1 + 16);
  }

  v21 = *(a1 + 16);
  v22 = *(v21 - 8);
  if (v10 != v22)
  {
    v44 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v55, "iterator does not fit current value");
    nlohmann::detail::invalid_iterator::create(v44, 202, &v55);
  }

  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(v51, *(v21 - 8));
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(v51);
  v23 = *v22;
  if ((v23 - 3) >= 6)
  {
    if (v23 == 1)
    {
      v36 = *(v22 + 1);
      v37 = v13[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        v39 = v13;
        do
        {
          v38 = v39[2];
          v40 = *v38 == v39;
          v39 = v38;
        }

        while (!v40);
      }

      if (*v36 == v13)
      {
        *v36 = v38;
      }

      v41 = v36[1];
      --v36[2];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v41, v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13 + 56);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v13 + 8, *(v13 + 56));
      if (*(v13 + 55) < 0)
      {
        operator delete(v13[4]);
      }

      operator delete(v13);
    }

    else
    {
      if (v23 != 2)
      {
        v46 = __cxa_allocate_exception(0x20uLL);
        v47 = v22;
        v48 = v46;
        v49 = *v47;
        if (v49 > 9)
        {
          v50 = "number";
        }

        else
        {
          v50 = off_278A289F8[v49];
        }

        std::string::basic_string[abi:ne200100]<0>(&v54, v50);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v55, "cannot use erase() with ", &v54);
        nlohmann::detail::type_error::create(v48, 307, &v55);
      }

      v27 = *(v22 + 1);
      v28 = v12 + 16;
      v29 = *(v27 + 8);
      if (v12 + 16 != v29)
      {
        do
        {
          v55.__r_.__value_.__s.__data_[0] = *v28;
          v30 = v55.__r_.__value_.__s.__data_[0];
          v55.__r_.__value_.__l.__size_ = *(v28 + 1);
          size = v55.__r_.__value_.__l.__size_;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
          *v28 = 0;
          *(v28 + 1) = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v55);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v55);
          v33 = *(v28 - 16);
          v32 = v28 - 16;
          *v32 = v30;
          v55.__r_.__value_.__s.__data_[0] = v33;
          v34 = *(v32 + 1);
          *(v32 + 1) = size;
          v55.__r_.__value_.__l.__size_ = v34;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v55);
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v55.__r_.__value_.__l.__size_, v33);
          v28 = v32 + 32;
        }

        while (v28 != v29);
        v12 = v28 - 16;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](v27, v12);
    }
  }

  else
  {
    if (v14)
    {
      v45 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v55, "iterator out of range");
      nlohmann::detail::invalid_iterator::create(v45, 205, &v55);
    }

    if (v23 == 8)
    {
      v25 = (v22 + 8);
      v24 = *(v22 + 1);
      v35 = *v24;
      if (*v24)
      {
        *(v24 + 1) = v35;
        v26 = v35;
LABEL_57:
        operator delete(v26);
        v24 = *v25;
      }

LABEL_58:
      operator delete(v24);
      *v25 = 0;
    }

    else if (v23 == 3)
    {
      v25 = (v22 + 8);
      v24 = *(v22 + 1);
      if (v24[23] < 0)
      {
        v26 = *v24;
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    *v22 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
  }
}

void sub_237212E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_237212FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a12);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(uint64_t a1)
{
  v2 = a1 + 8;
  v5 = std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(*(a1 + 120), (*(a1 + 16) - *(a1 + 8)) >> 3, 2);
  std::vector<BOOL>::push_back((a1 + 32), &v5);
  nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a1, 2u);
  v4 = v3;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](v2, &v4);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(*(a1 + 120), ((v2 - *(a1 + 8)) >> 3) - 1, 3) & 1) == 0)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v11, (a1 + 136));
    v4 = *(*(a1 + 16) - 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    v5 = *v4;
    *v4 = v11[0];
    v11[0] = v5;
    v6 = *(v4 + 8);
    *(v4 + 8) = v12;
    v12 = v6;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v11);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v12, v11[0]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 == v7)
  {
    __assert_rtn("end_array", "json_sax.hpp", 502, "not ref_stack.empty()");
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    __assert_rtn("end_array", "json_sax.hpp", 503, "not keep_stack.empty()");
  }

  *(a1 + 16) = v7 - 8;
  *(a1 + 40) = v9 - 1;
  if (v8 == v7 - 8)
  {
    v3 = 1;
  }

  if ((v3 & 1) == 0)
  {
    v10 = *(v7 - 16);
    if (*v10 == 2)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](*(v10 + 8), (*(*(v10 + 8) + 8) - 16));
    }
  }
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(unsigned __int8 **a1, double a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v27[0] = 7;
    v28 = *&a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    if (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1[15], (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v7 = v27[0];
        v25[0] = v27[0];
        v8 = v25;
        v9 = v28;
        v26 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v27[0] = 0;
        v28 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v10 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *v10;
        *v10 = v7;
        v25[0] = v11;
        v12 = *(v10 + 1);
        *(v10 + 1) = v9;
        v26 = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
        v13 = v25;
        goto LABEL_14;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = *v5;
        if (v6 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v27);
          goto LABEL_15;
        }

        if (v6 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
            a1[8] = v15;
            if (((v16 >> v15) & 1) == 0)
            {
              goto LABEL_15;
            }

            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v17 = v27[0];
            v23[0] = v27[0];
            v8 = v23;
            v18 = v28;
            v24 = v28;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v27[0] = 0;
            v28 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v19 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v11 = *v19;
            *v19 = v17;
            v23[0] = v11;
            v20 = *(v19 + 1);
            *(v19 + 1) = v18;
            v24 = v20;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
            v13 = v23;
LABEL_14:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
            goto LABEL_15;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
  }
}

void sub_237213410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(unsigned __int8 **a1, unsigned __int8 a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v27[0] = 4;
    v28 = a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    if (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1[15], (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v7 = v27[0];
        v25[0] = v27[0];
        v8 = v25;
        v9 = v28;
        v26 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v27[0] = 0;
        v28 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v10 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *v10;
        *v10 = v7;
        v25[0] = v11;
        v12 = *(v10 + 1);
        *(v10 + 1) = v9;
        v26 = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
        v13 = v25;
        goto LABEL_14;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = *v5;
        if (v6 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v27);
          goto LABEL_15;
        }

        if (v6 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
            a1[8] = v15;
            if (((v16 >> v15) & 1) == 0)
            {
              goto LABEL_15;
            }

            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v17 = v27[0];
            v23[0] = v27[0];
            v8 = v23;
            v18 = v28;
            v24 = v28;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v27[0] = 0;
            v28 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v19 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v11 = *v19;
            *v19 = v17;
            v23[0] = v11;
            v20 = *(v19 + 1);
            *(v19 + 1) = v18;
            v24 = v20;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
            v13 = v23;
LABEL_14:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
            goto LABEL_15;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
  }
}

void sub_237213688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(unsigned __int8 **a1)
{
  v1 = a1[5];
  if (!v1)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v1 - 1)))
  {
    v26[0] = 0;
    v27 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
    if (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1[15], (a1[2] - a1[1]) >> 3, 5))
    {
      v3 = a1[2];
      if (a1[1] == v3)
      {
        v6 = v26[0];
        v24[0] = v26[0];
        v7 = v24;
        v8 = v27;
        v25 = v27;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
        v26[0] = 0;
        v27 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
        v9 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
        v10 = *v9;
        *v9 = v6;
        v24[0] = v10;
        v11 = *(v9 + 1);
        *(v9 + 1) = v8;
        v25 = v11;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
        v12 = v24;
        goto LABEL_14;
      }

      v4 = *(v3 - 1);
      if (v4)
      {
        v5 = *v4;
        if (v5 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v4 + 1), v26);
          goto LABEL_15;
        }

        if (v5 == 1)
        {
          v13 = a1[8];
          if (v13)
          {
            v14 = v13 - 1;
            v15 = *&a1[7][(v14 >> 3) & 0x1FFFFFFFFFFFFFF8];
            a1[8] = v14;
            if (((v15 >> v14) & 1) == 0)
            {
              goto LABEL_15;
            }

            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v16 = v26[0];
            v22[0] = v26[0];
            v7 = v22;
            v17 = v27;
            v23 = v27;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
            v26[0] = 0;
            v27 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
            v18 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v22);
            v10 = *v18;
            *v18 = v16;
            v22[0] = v10;
            v19 = *(v18 + 1);
            *(v18 + 1) = v17;
            v23 = v19;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            v12 = v22;
LABEL_14:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v12);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v7 + 1, v10);
            goto LABEL_15;
          }

          v20 = "not key_keep_stack.empty()";
          v21 = 615;
        }

        else
        {
          v20 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v21 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v21, v20);
      }
    }

LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v26[0]);
  }
}

void sub_2372138F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(unsigned __int8 **a1, uint64_t *a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v27[0] = 5;
    v28 = a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    if (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1[15], (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v7 = v27[0];
        v25[0] = v27[0];
        v8 = v25;
        v9 = v28;
        v26 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v27[0] = 0;
        v28 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v10 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *v10;
        *v10 = v7;
        v25[0] = v11;
        v12 = *(v10 + 1);
        *(v10 + 1) = v9;
        v26 = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
        v13 = v25;
        goto LABEL_14;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = *v5;
        if (v6 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v27);
          goto LABEL_15;
        }

        if (v6 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
            a1[8] = v15;
            if (((v16 >> v15) & 1) == 0)
            {
              goto LABEL_15;
            }

            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v17 = v27[0];
            v23[0] = v27[0];
            v8 = v23;
            v18 = v28;
            v24 = v28;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v27[0] = 0;
            v28 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v19 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v11 = *v19;
            *v19 = v17;
            v23[0] = v11;
            v20 = *(v19 + 1);
            *(v19 + 1) = v18;
            v24 = v20;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
            v13 = v23;
LABEL_14:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
            goto LABEL_15;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
  }
}

void sub_237213B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(uint64_t result)
{
  v1 = *(result + 40);
  if (!v1)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*(*(result + 32) + (((v1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v1 - 1)))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string&,std::string,0>(v2);
  }

  return result;
}

void sub_237213DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(unsigned __int8 **a1, uint64_t *a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v27[0] = 6;
    v28 = a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    if (std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(a1[15], (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v7 = v27[0];
        v25[0] = v27[0];
        v8 = v25;
        v9 = v28;
        v26 = v28;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
        v27[0] = 0;
        v28 = 0;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v10 = *a1;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25);
        v11 = *v10;
        *v10 = v7;
        v25[0] = v11;
        v12 = *(v10 + 1);
        *(v10 + 1) = v9;
        v26 = v12;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
        v13 = v25;
        goto LABEL_14;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        v6 = *v5;
        if (v6 == 2)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v27);
          goto LABEL_15;
        }

        if (v6 == 1)
        {
          v14 = a1[8];
          if (v14)
          {
            v15 = v14 - 1;
            v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
            a1[8] = v15;
            if (((v16 >> v15) & 1) == 0)
            {
              goto LABEL_15;
            }

            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v17 = v27[0];
            v23[0] = v27[0];
            v8 = v23;
            v18 = v28;
            v24 = v28;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
            v27[0] = 0;
            v28 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v19 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
            v11 = *v19;
            *v19 = v17;
            v23[0] = v11;
            v20 = *(v19 + 1);
            *(v19 + 1) = v18;
            v24 = v20;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
            v13 = v23;
LABEL_14:
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
            goto LABEL_15;
          }

          v21 = "not key_keep_stack.empty()";
          v22 = 615;
        }

        else
        {
          v21 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
          v22 = 603;
        }

        __assert_rtn("handle_value", "json_sax.hpp", v22, v21);
      }
    }

LABEL_15:
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v27);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v28, v27[0]);
  }
}

void sub_237214040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::operator()(uint64_t a1, int a2, char a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          operator new();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v5 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      operator new();
    }

    if (v4 == 2)
    {
      operator new();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v5 = a2[8];
LABEL_19:
    *(a1 + 1) = v5;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

uint64_t nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(unsigned __int8 **a1, unsigned __int8 a2)
{
  v2 = a1[5];
  if (!v2)
  {
    __assert_rtn("handle_value", "json_sax.hpp", 568, "not keep_stack.empty()");
  }

  if ((*&a1[4][((v2 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v2 - 1)))
  {
    v28[0] = a2;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::json_value(&v29, a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
    v4 = a1[2];
    if (a1[1] == v4)
    {
      v8 = v28[0];
      v26[0] = v28[0];
      v9 = v29;
      v27 = v29;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
      v28[0] = 0;
      v29 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
      v10 = *a1;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
      v11 = *v10;
      *v10 = v8;
      v26[0] = v11;
      v12 = *(v10 + 1);
      *(v10 + 1) = v9;
      v27 = v12;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v10);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v27, v11);
      goto LABEL_14;
    }

    v5 = *(v4 - 1);
    if (v5)
    {
      v6 = *v5;
      if (v6 == 2)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](*(v5 + 1), v28);
LABEL_14:
        v7 = 1;
LABEL_16:
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v29, v28[0]);
        return v7;
      }

      if (v6 == 1)
      {
        v13 = a1[8];
        if (v13)
        {
          v14 = v13 - 1;
          v15 = *&a1[7][(v14 >> 3) & 0x1FFFFFFFFFFFFFF8];
          a1[8] = v14;
          if ((v15 >> v14))
          {
            if (!a1[10])
            {
              __assert_rtn("handle_value", "json_sax.hpp", 624, "object_element");
            }

            v16 = v28[0];
            v24[0] = v28[0];
            v17 = v29;
            v25 = v29;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v28);
            v28[0] = 0;
            v29 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
            v18 = a1[10];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
            v19 = *v18;
            *v18 = v16;
            v24[0] = v19;
            v20 = *(v18 + 1);
            *(v18 + 1) = v17;
            v25 = v20;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v25, v19);
            goto LABEL_14;
          }

          goto LABEL_15;
        }

        v22 = "not key_keep_stack.empty()";
        v23 = 615;
      }

      else
      {
        v22 = "ref_stack.back()->is_array() or ref_stack.back()->is_object()";
        v23 = 603;
      }

      __assert_rtn("handle_value", "json_sax.hpp", v23, v22);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  return 0;
}

void sub_2372146FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::iter_impl(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x8000000000000000;
  if (!a2)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::set_end(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_end", "iter_impl.hpp", 211, "m_object != nullptr");
  }

  v2 = *v1;
  if (v2 == 2)
  {
    result[2] = *(*(v1 + 1) + 8);
  }

  else if (v2 == 1)
  {
    result[1] = (*(v1 + 1) + 8);
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

void nlohmann::detail::invalid_iterator::create(nlohmann::detail::exception *a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "invalid_iterator");
  nlohmann::detail::exception::name(&v14, __p, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a1, a2, v11);
  *a1 = &unk_284A48CA0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2372149B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<std::map<unsigned short,unsigned short>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(v2 + 8));

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t MIDI::ControlState::get_control_or_RPN(MIDI::ControlState *this, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    v3 = *(this + 18);
    if (v3)
    {
      v7 = *(v3 + 8);
      v5 = v3 + 8;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_14;
      }

      v8 = v5;
      do
      {
        v9 = *(v6 + 26);
        v10 = v9 >= a2;
        v11 = v9 < a2;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && *(v8 + 26) <= a2)
      {
        LOWORD(v3) = *(v8 + 28);
      }

      else
      {
LABEL_14:
        LOWORD(v3) = 0;
      }
    }
  }

  else
  {
    v2 = *(this + a2 + 12);
    LODWORD(v3) = v2 & ~(v2 >> 31);
    if (a2 <= 0x1F && ((*(this + (a2 >> 3)) >> (a2 & 7)) & 1) != 0)
    {
      v4 = *(this + a2 + 44);
      LODWORD(v3) = v4 & ~(v4 >> 31) | (v3 << 7);
    }

    else
    {
      LOWORD(v3) = v3 << 7;
    }
  }

  return v3;
}

uint64_t MIDI::ControlState::interpret_control(MIDI::ControlState *this, unint64_t a2, int a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  if ((a2 - 96) > 5)
  {
    if (a2 != 6)
    {
      if (a2 != 38)
      {
        if (a2 > 0x1F)
        {
          if (a2 > 0x3F || ((*(this + ((a2 >> 3) & 3)) >> (a2 & 7)) & 1) == 0)
          {
            v12 = a3 << 7;
            v11 = a2;
            goto LABEL_35;
          }

          v11 = a2 & 0x1F;
          v12 = MIDI::ControlState::get_control_or_RPN(this, v11) & 0x3F80 | a3;
        }

        else
        {
          v12 = a3 << 7;
          v11 = a2;
        }

        v16 = this + 12;
        *(this + v11 + 12) = v12 >> 7;
LABEL_37:
        if ((*(this + (v11 >> 3)) >> (v11 & 7)))
        {
          result = 0;
          v16[v11 + 32] = v12 & 0x7F;
          goto LABEL_50;
        }

LABEL_47:
        result = 0;
        goto LABEL_50;
      }

      if ((*this & 0x40) == 0)
      {
        result = 0;
        v11 = 38;
LABEL_7:
        LOWORD(v12) = a3 << 7;
        *(this + v11 + 12) = a3;
        goto LABEL_50;
      }
    }
  }

  else
  {
    v8 = 1 << (a2 - 96);
    if ((v8 & 3) == 0)
    {
      if ((v8 & 0xC) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      *(this + 2) = v9;
      result = 1;
      v11 = a2;
      goto LABEL_7;
    }
  }

  v13 = *(this + 2);
  if (v13 == 1)
  {
    v11 = *(this + 112) & ~(*(this + 112) >> 31) | ((*(this + 113) & ~(*(this + 113) >> 31)) << 7) | 0x4000;
  }

  else if (v13 == 2)
  {
    v11 = *(this + 110) & ~(*(this + 110) >> 31) | ((*(this + 111) & ~(*(this + 111) >> 31)) << 7) | 0xFFFF8000;
  }

  else
  {
    v11 = a2;
  }

  switch(a2)
  {
    case '&':
      v12 = MIDI::ControlState::get_control_or_RPN(this, v11) & 0x3F80 | a3;
      break;
      control_or_RPN = MIDI::ControlState::get_control_or_RPN(this, v11);
      if (control_or_RPN >= 0x3FFF)
      {
        v12 = control_or_RPN;
      }

      else
      {
        v12 = control_or_RPN + 1;
      }

      break;
    case 'a':
      v14 = MIDI::ControlState::get_control_or_RPN(this, v11);
      if (v14)
      {
        v12 = v14 - 1;
      }

      else
      {
        v12 = 0;
      }

      break;
    default:
      v12 = a3 << 7;
      break;
  }

LABEL_35:
  if (v11 < 0x80)
  {
    v16 = this + 12;
    *(this + v11 + 12) = v12 >> 7;
    if (v11 > 0x1F)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v17 = *(this + 18);
  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = *(v17 + 8);
  if (!v18)
  {
LABEL_48:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v19 = v18;
      v20 = *(v18 + 13);
      if (v20 <= v11)
      {
        break;
      }

      v18 = *v19;
      if (!*v19)
      {
        goto LABEL_48;
      }
    }

    if (v20 >= v11)
    {
      break;
    }

    v18 = v19[1];
    if (!v18)
    {
      goto LABEL_48;
    }
  }

  result = 0;
  *(v19 + 14) = v12;
LABEL_50:
  *a4 = v11;
  *a5 = v12;
  return result;
}

uint64_t MIDI::Packetizer::add(MIDI::Packetizer *this, uint64_t a2, int a3)
{
  v19 = a3;
  result = *(this + 7);
  v5 = this + 1088;
  v6 = a3 & 0xF0000000;
  v7 = *(this + 17);
  if (result)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(result + 8);
    v10 = v9 >= 2;
    v11 = v9 - 2;
    if (v10 && *(result + 12) >> 28 == 3)
    {
      v12 = *(result + 12 + 4 * v11);
      if (v12 >> 28 == 3)
      {
        v13 = (v12 >> 20) & 0xF;
      }

      else
      {
        v13 = 255;
      }

      if (v13)
      {
        v14 = v13 == 3;
      }

      else
      {
        v14 = 1;
      }

      v15 = v14;
      v16 = 1;
LABEL_24:
      v17 = v6 == 805306368;
      if ((a3 & 0xF0E00000) != 0x30000000 && ((v17 ^ v16) & 1) == 0 && *result == a2 && (v15 & 1) == 0)
      {
LABEL_28:
        v18 = *(result + 8);
        if (result + 4 * v18 + 16 <= v5)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_23:
    v16 = 0;
    v15 = 0;
    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_31;
  }

  if (result)
  {
    goto LABEL_23;
  }

  if (v6 != 805306368)
  {
    goto LABEL_28;
  }

LABEL_30:
  result += 4 * *(result + 8) + 12;
LABEL_31:
  if (result + 16 <= v5)
  {
    LODWORD(v18) = 0;
    *(this + 17) = v7 + 1;
    *result = a2;
    *(result + 8) = 0;
LABEL_34:
    *(result + 4 * v18 + 12) = a3;
    *(result + 8) = v18 + 1;
    goto LABEL_35;
  }

LABEL_32:
  result = MIDI::PacketizerBase<MIDI::EventList>::begin_new_packet(this, a2, &v19, 1);
LABEL_35:
  *(this + 7) = result;
  return result;
}

uint64_t MIDI::PacketizerBase<MIDI::EventList>::begin_new_packet(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v8 = (a1 + 64);
  if (*(a1 + 68))
  {
    v20 = (a1 + 64);
    (**a1)(a1 + 8, &v20);
    *(a1 + 68) = 0;
    v9 = a1 + 72;
    if (!a4)
    {
      return v9;
    }

    if (a4 <= 251)
    {
      *(a1 + 68) = 1;
      *(a1 + 72) = a2;
      *(a1 + 80) = 0;
      v13 = (a1 + 84);
      v14 = (4 * a4) >> 2;
      if (v14 <= 1)
      {
        v18 = 0;
        if (!v14)
        {
LABEL_17:
          *(a1 + 80) = v18 + a4;
          return v9;
        }

        if (v14 == 1)
        {
LABEL_16:
          *v13 = *a3;
          v18 = *(a1 + 80);
          goto LABEL_17;
        }
      }

      else
      {
        switch(v14)
        {
          case 2:
LABEL_13:
            v17 = *a3++;
            *v13++ = v17;
            goto LABEL_16;
          case 3:
LABEL_12:
            v16 = *a3++;
            *v13++ = v16;
            goto LABEL_13;
          case 4:
            v15 = *a3++;
            v13 = (a1 + 88);
            *(a1 + 84) = v15;
            goto LABEL_12;
        }
      }

      memmove(v13, a3, 4 * a4);
      v18 = 0;
      goto LABEL_17;
    }
  }

  v10 = *v8;
  v11 = malloc_type_malloc(4 * a4 + 20, 0xC3A25D3EuLL);
  v12 = v11;
  *v11 = v10;
  *(v11 + 1) = 1;
  *(v11 + 1) = a2;
  *(v11 + 4) = a4;
  if (a3 != &a3[a4])
  {
    memmove(v11 + 20, a3, 4 * a4);
  }

  v20 = v12;
  (**a1)(a1 + 8, &v20);
  MIDI::packet_list_deleter(v12);
  v9 = a1 + 72;
  *(a1 + 56) = a1 + 72;
  *(a1 + 68) = 0;
  return v9;
}

uint64_t *MIDI::ChannelState::clear(MIDI::ChannelState *this)
{
  if (*(this + 1) == 1)
  {
    v2 = *(this + 17);
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
  }

  *(this + 116) = 0u;
  *(this + 100) = 0u;
  *(this + 84) = 0u;
  *(this + 68) = 0u;
  *(this + 52) = 0u;
  *(this + 36) = 0u;
  *(this + 20) = 0u;
  *(this + 4) = 0u;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(this + 10) = v3;
  *(this + 11) = v3;
  *(this + 12) = v3;
  *(this + 13) = v3;
  *(this + 14) = v3;
  *(this + 15) = v3;
  *(this + 16) = v3;
  *(this + 17) = v3;
  *(this + 76) = 0;
  result = *(this + 55);
  if (result)
  {
    result = std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::erase(result, *result, result + 1);
    *&v3 = -1;
    *(&v3 + 1) = -1;
  }

  *(this + 404) = v3;
  *(this + 420) = v3;
  *(this + 372) = v3;
  *(this + 388) = v3;
  *(this + 340) = v3;
  *(this + 356) = v3;
  *(this + 308) = v3;
  *(this + 324) = v3;
  *(this + 1) = -1;
  *(this + 144) = -1;
  return result;
}

MIDI::StreamState *MIDI::StreamState::StreamState(MIDI::StreamState *this, char a2)
{
  v4 = -7168;
  do
  {
    v5 = this + v4;
    *(v5 + 7304) = 0uLL;
    *(v5 + 915) = 0;
    *(v5 + 1866) = -1;
    *(v5 + 1868) = 0;
    *(v5 + 951) = 0;
    v4 += 448;
  }

  while (v4);
  v6 = 0;
  v7 = 0;
  v19 = (a2 & 3) != 0;
  v20 = a2 & 3;
  do
  {
    v8 = this + v6;
    v8[300] = v7;
    *(v8 + 76) = 0;
    v9 = *(this + v6 + 440);
    if (v9)
    {
      std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::erase(v9, *v9, (v9 + 8));
      v10 = *(v8 + 55) != 0;
      *&v11 = -1;
      *(&v11 + 1) = -1;
      *(v8 + 308) = v11;
      *(v8 + 324) = v11;
      *(v8 + 340) = v11;
      *(v8 + 356) = v11;
      *(v8 + 372) = v11;
      *(v8 + 388) = v11;
      *(v8 + 404) = v11;
      *(v8 + 420) = v11;
      if (v10 != (a2 & 1))
      {
        if (a2)
        {
          goto LABEL_9;
        }

        std::unique_ptr<std::map<unsigned short,unsigned short>>::reset[abi:ne200100](v8 + 55, 0);
      }
    }

    else
    {
      *&v12 = -1;
      *(&v12 + 1) = -1;
      *(v8 + 404) = v12;
      *(v8 + 420) = v12;
      *(v8 + 372) = v12;
      *(v8 + 388) = v12;
      *(v8 + 340) = v12;
      *(v8 + 356) = v12;
      *(v8 + 308) = v12;
      *(v8 + 324) = v12;
      if (a2)
      {
LABEL_9:
        operator new();
      }
    }

    v13 = this + v6;
    *(this + v6 + 1) = v19;
    if (v20)
    {
      v14 = *(v13 + 17);
      v15 = *(v13 + 18);
      v16 = v15 - v14;
      if ((v15 - v14) > 0x7F)
      {
        if (v16 == 128)
        {
          goto LABEL_18;
        }

        v17 = v14 + 128;
      }

      else
      {
        if (*(this + v6 + 152) - v15 < (128 - v16))
        {
          operator new();
        }

        bzero(*(v13 + 18), 128 - v16);
        v17 = v15 + 128 - v16;
      }

      *(v13 + 18) = v17;
    }

LABEL_18:
    MIDI::ChannelState::clear((this + v6));
    ++v7;
    v6 += 448;
  }

  while (v7 != 16);
  return this;
}

void sub_23721546C(_Unwind_Exception *a1)
{
  v3 = (v1 + 6720);
  v4 = -7168;
  do
  {
    MIDI::ChannelState::~ChannelState(v3);
    v3 = (v5 - 448);
    v4 += 448;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void MIDI::ChannelState::~ChannelState(MIDI::ChannelState *this)
{
  std::unique_ptr<std::map<unsigned short,unsigned short>>::reset[abi:ne200100](this + 55, 0);
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }
}

uint64_t *MIDI::StreamState::clear(MIDI::StreamState *this)
{
  v2 = 7168;
  do
  {
    result = MIDI::ChannelState::clear(this);
    this = (this + 448);
    v2 -= 448;
  }

  while (v2);
  return result;
}

uint64_t MIDI::StreamState::update_with_v1_packets(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    for (i = 4 * a3; i; i -= 4)
    {
      v6 = *a2;
      if ((HIWORD(*a2) & 0xF0u) - 128 <= 0x6F)
      {
        v7 = v4 + 448 * ((v6 >> 16) & 0xF);
        v8 = (v6 >> 8) & 0x7F;
        v9 = BYTE2(v6) >> 4;
        if (v9 <= 0xA)
        {
          switch(v9)
          {
            case 8u:
              goto LABEL_22;
            case 9u:
              if (!*a2)
              {
LABEL_22:
                if (*(v7 + 1) == 1)
                {
                  *(*(v7 + 136) + *a2) = 0;
                }

                v10 = v7 + 4;
                v11 = *(v7 + 4 + v8);
                if (v11)
                {
                  *(v10 + v8) = v11 - 1;
                }

                break;
              }

              if (*(v7 + 1) == 1)
              {
                *(*(v7 + 136) + *a2) = v8;
              }

              ++*(v7 + v8 + 4);
              break;
            case 0xAu:
              *(v7 + v8 + 160) = v6;
              break;
          }
        }

        else if ((BYTE2(v6) >> 4) > 0xCu)
        {
          if (v9 == 13)
          {
            *(v7 + 2) = v8;
          }

          else if (v9 == 14)
          {
            *(v7 + 288) = (*a2 >> 8) & 0x7F | (*a2 << 7);
          }
        }

        else if (v9 == 11)
        {
          result = MIDI::ControlState::interpret_control((v7 + 296), v8, *a2, &v13, &v12);
        }

        else if (v9 == 12)
        {
          *(v7 + 3) = v8;
        }
      }

      ++a2;
    }
  }

  return result;
}

uint64_t *MIDI::StreamState::reset(MIDI::StreamState *this, MIDI::Packetizer *a2)
{
  v3 = 0;
  v4 = this + 160;
  do
  {
    v5 = 0;
    v6 = (this + v3);
    v7 = this + v3 + 4;
    do
    {
      if (v7[v5])
      {
        v8 = v7[v5] + 1;
        do
        {
          MIDI::Packetizer::add(a2, 0, ((*v6 << 16) | 0x80000) + (v5 << 8) + 536870976);
          --v8;
        }

        while (v8 > 1);
      }

      ++v5;
    }

    while (v5 != 128);
    v9 = 0;
    v10 = 0x20000000;
    do
    {
      if ((v4[v9] & 0x80000000) == 0)
      {
        MIDI::Packetizer::add(a2, 0, v10 + ((*v6 << 16) | 0xA0000));
      }

      ++v9;
      v10 += 256;
    }

    while (v9 != 128);
    if (*(v6 + 372) >= 1)
    {
      MIDI::Packetizer::add(a2, 0, (*(v6 + 300) << 16) | 0x200B4000);
    }

    if ((*(v6 + 2) & 0x80000000) == 0)
    {
      MIDI::Packetizer::add(a2, 0, (*v6 << 16) | 0x200D0000);
    }

    if (*(v6 + 144) != -1)
    {
      MIDI::Packetizer::add(a2, 0, (*v6 << 16) | 0x200E0040);
    }

    result = MIDI::ChannelState::clear(v6);
    v3 += 448;
    v4 += 448;
  }

  while (v3 != 7168);
  return result;
}

uint64_t MIDI::StreamState::chase(uint64_t this, MIDI::Packetizer *a2)
{
  v3 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 + 1088;
  v5 = (this + 435);
  v40 = this;
  v6 = this + 160;
  do
  {
    v42 = v3;
    v7 = (v40 + v3);
    v8 = *(v40 + v3 + 2);
    if ((v8 & 0x80000000) == 0)
    {
      this = MIDI::Packetizer::add(a2, 0, (*v7 << 16) | (v8 << 8) | 0x200D0000u);
    }

    v9 = *(v7 + 144);
    if (v9 != 0xFFFF)
    {
      this = MIDI::Packetizer::add(a2, 0, ((v9 & 0x7F) << 8) | (*v7 << 16) | (v9 >> 7) | 0x200E0000);
    }

    v10 = 32512;
    v41 = v5;
    for (i = 128; i > 0x78; --i)
    {
      v13 = *v5--;
      v12 = v13;
      if ((v13 & 0x80000000) == 0)
      {
        this = MIDI::Packetizer::add(a2, 0, (v10 + v12) | (v7[300] << 16) | 0x200B0000u);
      }

      v10 -= 256;
    }

    v14 = 0;
    do
    {
      switch(v14)
      {
        case 6:
          continue;
        case 96:
          goto LABEL_16;
        case 38:
          if ((v7[296] & 0x40) == 0)
          {
            v14 = 38;
            continue;
          }

LABEL_16:
          v14 = 101;
          continue;
      }

      v15 = v7[v14 + 308];
      if ((v15 & 0x80000000) == 0)
      {
        this = MIDI::Packetizer::add(a2, 0, v15 | (v14 << 8) | (v7[300] << 16) | 0x200B0000u);
      }
    }

    while (v14++ < 119);
    v17 = *(v7 + 55);
    if (v17)
    {
      v20 = *v17;
      v19 = v17 + 1;
      v18 = v20;
      if (v20 != v19)
      {
        this = *(a2 + 7);
        while (1)
        {
          v21 = *(v18 + 13);
          v22 = *(v18 + 14);
          v23 = (v21 & 0x4000) != 0 ? 25856 : 25344;
          v24 = (v7[300] << 16) | 0xB0000;
          v25 = v23 & 0xFFFFFF80 | (v21 >> 7) & 0x7F | v24 | 0x20000000;
          v43 = v25;
          v44 = (v23 & 0xFFFFFF80 | v21 & 0x7F | v24) + 536870656;
          v45 = v24 | (v22 >> 7) | 0x20000600;
          v46 = (v24 & 0xFFFFFF80 | v22 & 0x7F) + 536880640;
          v26 = *(a2 + 17);
          if (!this || !v26)
          {
            break;
          }

          v27 = *(this + 8);
          if (v27 < 2 || *(this + 12) >> 28 != 3)
          {
            goto LABEL_33;
          }

LABEL_35:
          this += 4 * v27 + 12;
LABEL_36:
          if (this + 28 <= v4)
          {
            LODWORD(v28) = 0;
            *(a2 + 17) = v26 + 1;
            *this = 0;
            *(this + 8) = 0;
LABEL_40:
            v29 = (this + 4 * v28);
            v29[3] = v25;
            v29[4] = v44;
            v29[5] = v45;
            v29[6] = v46;
            *(this + 8) = v28 + 4;
            goto LABEL_41;
          }

LABEL_39:
          this = MIDI::PacketizerBase<MIDI::EventList>::begin_new_packet(a2, 0, &v43, 4);
LABEL_41:
          *(a2 + 7) = this;
          v30 = v18[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v18[2];
              v32 = *v31 == v18;
              v18 = v31;
            }

            while (!v32);
          }

          v18 = v31;
          if (v31 == v19)
          {
            goto LABEL_47;
          }
        }

        if (!v26)
        {
          goto LABEL_36;
        }

        if (!this)
        {
          goto LABEL_38;
        }

LABEL_33:
        if (!*this)
        {
LABEL_38:
          v28 = *(this + 8);
          if (this + 4 * v28 + 28 <= v4)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v27 = *(this + 8);
        goto LABEL_35;
      }
    }

LABEL_47:
    v33 = v7[3];
    if ((v33 & 0x80000000) == 0)
    {
      this = MIDI::Packetizer::add(a2, 0, (*v7 << 16) | (v33 << 8) | 0x200C0000u);
    }

    if (v7[1] == 1)
    {
      v34 = 0;
      v35 = 0x20000000;
      do
      {
        v36 = *(*(v7 + 17) + v34);
        if (v36 >= 1)
        {
          this = MIDI::Packetizer::add(a2, 0, v35 + ((*v7 << 16) | 0x90000u) + v36);
        }

        ++v34;
        v35 += 256;
      }

      while (v34 != 128);
    }

    v37 = 0;
    v38 = 0x20000000;
    do
    {
      v39 = *(v6 + v37);
      if ((v39 & 0x80000000) == 0)
      {
        this = MIDI::Packetizer::add(a2, 0, v38 + v39 + ((*v7 << 16) | 0xA0000u));
      }

      ++v37;
      v38 += 256;
    }

    while (v37 != 128);
    v3 = v42 + 448;
    v5 = v41 + 448;
    v6 += 448;
  }

  while (v42 != 6720);
  return this;
}

uint64_t MIDIObject::RemoveProperty(MIDIObject *this, const __CFString *a2)
{
  result = *(this + 3);
  if (result)
  {
    result = CFDictionaryContainsKey(result, a2);
    if (result)
    {
      CFDictionaryRemoveValue(*(this + 3), a2);
      return 1;
    }
  }

  return result;
}

uint64_t MIDIObject::SetProperty(MIDIObject *this, const __CFString *key, const void *a3)
{
  if (a3)
  {
    v6 = *(this + 3);
    if (!v6)
    {
      goto LABEL_10;
    }

    Value = CFDictionaryGetValue(v6, key);
    if (Value && CFEqual(Value, a3))
    {
      return 0;
    }

    Mutable = *(this + 3);
    if (!Mutable)
    {
LABEL_10:
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (*(this + 32) == 1)
      {
        v11 = *(this + 3);
        if (v11)
        {
          CFRelease(v11);
        }
      }

      *(this + 3) = Mutable;
      *(this + 33) = 1;
    }

    CFDictionarySetValue(Mutable, key, a3);
    return 1;
  }

  else
  {
    v9 = *(*this + 48);

    return v9();
  }
}

uint64_t MIDIObject::GetProperty(MIDIObject *this, const __CFString *key, const void **a3, int a4)
{
  v7 = *(this + 3);
  if (v7 && (Value = CFDictionaryGetValue(v7, key)) != 0)
  {
    *a3 = Value;
    CFRetain(Value);
    return 0;
  }

  else
  {
    v10 = *(this + 2);
    if (v10)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *a3 = 0;
      return 4294956461;
    }

    else
    {
      v12 = *(*v10 + 32);

      return v12();
    }
  }
}

void MIDIObject::MIDIObject(MIDIObject *this, MIDIObject *a2, const __CFString *a3)
{
  BaseOpaqueObject::BaseOpaqueObject(this);
  *v6 = &unk_284A46EC0;
  *(v6 + 16) = a2;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0;
  if (a3)
  {
    MIDIObject::SetProperty(this, kMIDIPropertyName, a3);
  }
}

void sub_237215E78(_Unwind_Exception *a1)
{
  XCFObject<__CFDictionary const*>::~XCFObject(v2);
  BaseOpaqueObject::~BaseOpaqueObject(v1);
  _Unwind_Resume(a1);
}

uint64_t XCFObject<__CFDictionary const*>::~XCFObject(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void MIDIObject::~MIDIObject(MIDIObject *this)
{
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

CFMutableDictionaryRef MIDIObject::ToDictionary(CFDictionaryRef theDict)
{
  if (theDict)
  {
    return CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    return CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }
}

void MIDIObject::FromDictionary(MIDIObject *this, CFDictionaryRef theDict)
{
  if (*(this + 32) == 1)
  {
    v4 = *(this + 3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  *(this + 3) = 0;
  *(this + 33) = 0;
  if (CFDictionaryGetCount(theDict) >= 1)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (*(this + 32) == 1)
    {
      v6 = *(this + 3);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(this + 3) = MutableCopy;
    *(this + 33) = 1;
  }
}

uint64_t MIDIObject::SetProperty(MIDIObject *this, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = (*(*this + 40))(this, a2, v5);
  CFRelease(v5);
  return v6;
}

uint64_t MIDIObject::GetIntegerProperty(MIDIObject *this, const __CFString *a2, int *a3)
{
  cf = 0;
  *a3 = 0;
  v4 = (*(*this + 32))(this, a2, &cf);
  if (!v4)
  {
    v5 = CFGetTypeID(cf);
    TypeID = CFNumberGetTypeID();
    v7 = cf;
    if (v5 == TypeID)
    {
      CFNumberGetValue(cf, kCFNumberSInt32Type, a3);
      v4 = 0;
      v7 = cf;
    }

    else
    {
      v4 = 4294956460;
    }

    CFRelease(v7);
  }

  return v4;
}

uint64_t MIDIObject::GetStringProperty(MIDIObject *this, const __CFString *a2, const __CFString **a3)
{
  cf = 0;
  v4 = (*(*this + 32))(this, a2, &cf, 1);
  if (!v4)
  {
    v5 = CFGetTypeID(cf);
    TypeID = CFStringGetTypeID();
    v7 = cf;
    if (v5 == TypeID)
    {
      v4 = 0;
    }

    else
    {
      CFRelease(cf);
      v7 = 0;
      v4 = 4294956460;
    }

    *a3 = v7;
  }

  return v4;
}

uint64_t MIDIObject::GetIntegerOrDataProperty(MIDIObject *this, const __CFString *a2, const __CFData **a3, int *a4)
{
  cf = 0;
  result = (*(*this + 32))(this, a2, &cf, 1);
  if (!result)
  {
    v7 = CFGetTypeID(cf);
    TypeID = CFDataGetTypeID();
    v9 = cf;
    if (v7 != TypeID)
    {
      v10 = CFGetTypeID(cf);
      v11 = CFNumberGetTypeID();
      v12 = cf;
      if (v10 != v11)
      {
        CFRelease(cf);
        return 4294956460;
      }

      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v12);
      valuePtr = bswap32(valuePtr);
      if (a3)
      {
        *a3 = CFDataCreate(0, &valuePtr, 4);
      }

      if (a4)
      {
        *a4 = valuePtr;
      }

      return 0;
    }

    if (a3)
    {
      *a3 = cf;
      if (!a4)
      {
        return 0;
      }
    }

    else
    {
      CFRelease(cf);
      if (!a4)
      {
        return 0;
      }
    }

    BytePtr = CFDataGetBytePtr(v9);
    result = 0;
    *a4 = bswap32(*BytePtr);
  }

  return result;
}

CFTypeRef DictGetAndDelete(__CFDictionary *a1, const __CFString *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = CFRetain(result);
    CFDictionaryRemoveValue(a1, a2);
    return v5;
  }

  return result;
}

void midi::ci::message::message(midi::ci::message *this, char a2, unsigned int a3, unsigned int a4, char a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = 13;
  v7 = a2;
  v8 = 2;
  v9 = a3 & 0x7F;
  v10 = (a3 >> 7) & 0x7F;
  v11 = (a3 >> 14) & 0x7F;
  v12 = (a3 >> 21) & 0x7F;
  v13 = a4 & 0x7F;
  v14 = (a4 >> 7) & 0x7F;
  v15 = (a4 >> 14) & 0x7F;
  v16 = (a4 >> 21) & 0x7F;
  operator new();
}

void midi::ci::message::make_with_payload_size(midi::ci::message *this, uint64_t a2, char a3, unsigned int a4, unsigned int a5, char a6)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = 8257536;
  *(this + 1) = 0;
  v11 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<unsigned char>::reserve(this + 1, a2 + 12);
  __src[0] = a6;
  __src[1] = 13;
  __src[2] = a3;
  __src[3] = 2;
  __src[4] = a4 & 0x7F;
  __src[5] = (a4 >> 7) & 0x7F;
  __src[6] = (a4 >> 14) & 0x7F;
  __src[7] = (a4 >> 21) & 0x7F;
  __src[8] = a5 & 0x7F;
  __src[9] = (a5 >> 7) & 0x7F;
  __src[10] = (a5 >> 14) & 0x7F;
  __src[11] = (a5 >> 21) & 0x7F;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v11, *(this + 2), __src, &v13, 12);
}

void sub_2372165F4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *midi::ci::profile_inquiry_reply_view::make_profiles(void *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v3 = *(*a2 + 8);
  v4 = *(*a2 + 16) - v3;
  v5 = a3 + 1;
  if (v4 <= a3 + 1)
  {
    __assert_rtn("make_profiles", "capability_inquiry.cpp", 173, "sx.data.size() > pos + 1");
  }

  v6 = *(v3 + a3) | (*(v3 + v5) << 7);
  if (v4 <= v6 + 4 * v6 + v5)
  {
    __assert_rtn("make_profiles", "capability_inquiry.cpp", 176, "sx.data.size() > pos + 1 + num_profiles * sizeof(profile_id)");
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<midi::ci::profile_id>>(v6);
  }

  return this;
}

void sub_237216828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void UMPStream::FunctionBlock::serialize(UMPStream::FunctionBlock *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = *(this + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(v14, "object", &v12);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,std::string const&>(&v15, "name", this + 72);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v16, "id", this + 96);
  v11 = *(this + 25);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(&v17, "direction", &v11);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v18, "first_group", this + 104);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v19, "groups_spanned", this + 105);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v20, "max_sysex8_stream", this + 106);
  v10 = *(this + 27);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(&v21, "midi1_info", &v10);
  v9 = *(this + 28);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(&v22, "ui_hint", &v9);
  applesauce::CF::TypeRef::TypeRef(v23, "enabled");
  if (*(this + 64))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v23[1] = *v4;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(&v24, "owner", this + 29);
  v8 = 1;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,UMPCIObjectType>(&v25, "type", &v8);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v26, "timestamp", this + 7);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(v27, "owner_client_ref", this + 13);
  v13[0] = v14;
  v13[1] = 14;
  v5 = 0;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v13);
  do
  {
    v6 = *&v27[v5 + 8];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *&v27[v5];
    if (v7)
    {
      CFRelease(v7);
    }

    v5 -= 16;
  }

  while (v5 != -224);
}

void sub_237216AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = -224;
  v17 = v14;
  do
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v17);
    v17 = (v18 - 16);
    v16 += 16;
  }

  while (v16);
  _Unwind_Resume(a1);
}

void UMPStream::FunctionBlock::deserialize(std::string *this@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::string,std::string const&>(&__str, *a2, __p);
  if (LOBYTE(__str.length) == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, __p);
  }

  else
  {
    LOBYTE(__str.isa) = 0;
    LOBYTE(__str.length) = 0;
  }

  if (v60 < 0)
  {
    operator delete(__p[0]);
  }

  if (LOBYTE(__str.length) == 1)
  {
    std::string::operator=(this + 3, &__str);
    if ((__str.length & 1) != 0 && SHIBYTE(__str.data) < 0)
    {
      operator delete(__str.isa);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "id");
  if (!*a2)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v48, "Could not construct");
  }

  v6 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v6 && (v7 = applesauce::CF::convert_as<unsigned int,0>(v6), (v7 & 0x100000000) != 0))
  {
    v8 = v7;
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  operator delete(__str.isa);
  if ((v9 & 1) == 0)
  {
LABEL_18:
    this[4].__r_.__value_.__s.__data_[0] = v8;
  }

LABEL_19:
  std::string::basic_string[abi:ne200100]<0>(&__str, "direction");
  if (!*a2)
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v49, "Could not construct");
  }

  v10 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v10)
  {
    v11 = applesauce::CF::convert_as<int,0>(v10);
    v12 = v11;
    if ((v11 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v13 = 0;
      v14 = v12;
      goto LABEL_27;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
  v13 = 1;
LABEL_27:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  operator delete(__str.isa);
  if ((v13 & 1) == 0)
  {
LABEL_29:
    HIDWORD(this[4].__r_.__value_.__r.__words[0]) = v14 | v12 & 0xFFFFFF00;
  }

LABEL_30:
  std::string::basic_string[abi:ne200100]<0>(&__str, "first_group");
  if (!*a2)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v50, "Could not construct");
  }

  v15 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v15 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v15 >= 0x100u)
  {
    this[4].__r_.__value_.__s.__data_[8] = v16;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "groups_spanned");
  if (!*a2)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v51, "Could not construct");
  }

  v17 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v17 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v17 >= 0x100u)
  {
    this[4].__r_.__value_.__s.__data_[9] = v18;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "max_sysex8_stream");
  if (!*a2)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v52, "Could not construct");
  }

  v19 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v19 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v19 >= 0x100u)
  {
    this[4].__r_.__value_.__s.__data_[10] = v20;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "midi1_info");
  if (!*a2)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v53, "Could not construct");
  }

  v21 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v21)
  {
    v22 = applesauce::CF::convert_as<int,0>(v21);
    v23 = v22;
    if ((v22 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v24 = 0;
      v25 = v23;
      goto LABEL_62;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = 0;
  v24 = 1;
LABEL_62:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v24)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  operator delete(__str.isa);
  if ((v24 & 1) == 0)
  {
LABEL_64:
    HIDWORD(this[4].__r_.__value_.__r.__words[1]) = v25 | v23 & 0xFFFFFF00;
  }

LABEL_65:
  std::string::basic_string[abi:ne200100]<0>(&__str, "ui_hint");
  if (!*a2)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v54, "Could not construct");
  }

  v26 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v26)
  {
    v27 = applesauce::CF::convert_as<int,0>(v26);
    v28 = v27;
    if ((v27 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v29 = 0;
      v30 = v28;
      goto LABEL_73;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = 0;
  v29 = 1;
LABEL_73:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v29)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  operator delete(__str.isa);
  if ((v29 & 1) == 0)
  {
LABEL_75:
    LODWORD(this[4].__r_.__value_.__r.__words[2]) = v30 | v28 & 0xFFFFFF00;
  }

LABEL_76:
  std::string::basic_string[abi:ne200100]<0>(&__str, "enabled");
  if (!*a2)
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v55, "Could not construct");
  }

  v31 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v31 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v31 >= 0x100u)
  {
    this[2].__r_.__value_.__s.__data_[16] = v32;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "owner");
  if (!*a2)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v56, "Could not construct");
  }

  v33 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v33)
  {
    v34 = applesauce::CF::convert_as<unsigned int,0>(v33);
    v35 = v34;
    if ((v34 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v36 = 0;
      v37 = v35;
      goto LABEL_92;
    }
  }

  else
  {
    v35 = 0;
  }

  v37 = 0;
  v36 = 1;
LABEL_92:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v36)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  operator delete(__str.isa);
  if ((v36 & 1) == 0)
  {
LABEL_94:
    HIDWORD(this[4].__r_.__value_.__r.__words[2]) = v37 | v35 & 0xFFFFFF00;
  }

LABEL_95:
  std::string::basic_string[abi:ne200100]<0>(&__str, "timestamp");
  if (!*a2)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v57, "Could not construct");
  }

  v38 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(*a2, &__str);
  v40 = v39;
  if (v39)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v41 = v38;
  }

  else
  {
    v41 = 0;
  }

  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if ((v40 & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  operator delete(__str.isa);
  if (v40)
  {
LABEL_101:
    this[2].__r_.__value_.__l.__size_ = v41 | v38 & 0xFFFFFFFFFFFFFF00;
  }

LABEL_102:
  std::string::basic_string[abi:ne200100]<0>(&__str, "owner_client_ref");
  if (!*a2)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v58, "Could not construct");
  }

  v42 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v42)
  {
    v43 = applesauce::CF::convert_as<unsigned int,0>(v42);
    v44 = v43;
    if ((v43 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v45 = 0;
      v46 = v44;
      goto LABEL_112;
    }
  }

  else
  {
    v44 = 0;
  }

  v46 = 0;
  v45 = 1;
LABEL_112:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v45)
    {
      return;
    }

    goto LABEL_114;
  }

  operator delete(__str.isa);
  if ((v45 & 1) == 0)
  {
LABEL_114:
    HIDWORD(this[2].__r_.__value_.__r.__words[0]) = v46 | v44 & 0xFFFFFF00;
  }
}

void sub_2372173FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  __cxa_free_exception(v22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(*v23);
  _Unwind_Resume(a1);
}

void UMPStream::FunctionBlock::~FunctionBlock(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x2383C8250);
}

{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

CFTypeRef ProcessInquiryTransaction::timeout(CFTypeRef *this, UMPCIServerContext *a2)
{
  ProcessInquiryTransaction::complete(this, 1);
  result = this[12];
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t ProcessInquiryTransaction::complete(CFTypeRef *this, UMPCIServerContext *a2)
{
  if (this[8])
  {
    this = CFRetain(this[8]);
  }

  v2 = SetupManager::instance(this);
  return SetupManager::AddNotification(v2);
}

void ProcessInquiryTransaction::~ProcessInquiryTransaction(ProcessInquiryTransaction *this)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 72);
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2383C8250);
}

{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 72);
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t MIDIClient::PrintObject(MIDIClient *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIClientRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIClient::~MIDIClient(const void **this)
{
  MIDIClient::~MIDIClient(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46FE0;
  v2 = SetupManager::instance(this);
LABEL_2:
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  while (v4 != v3)
  {
    v5 = *v4;
    if (*(*v4 + 7) == this)
    {
      v6 = v3 - (v4 + 1);
      if (v3 != v4 + 1)
      {
        memmove(v4, v4 + 1, v3 - (v4 + 1));
      }

      *(v2 + 16) = v4 + v6;
      MIDISetup::ObjectRemoved(*v2, v5);
      v8 = MIDIServer::defaultInstance(v7) + 13;
      v9 = (*(*v8 + 16))(v8);
      (*(*v5 + 8))(v5);
      if (v9)
      {
        (*(*v8 + 24))(v8);
      }

      goto LABEL_2;
    }

    ++v4;
  }

LABEL_10:
  v11 = *(v2 + 32);
  v10 = *(v2 + 40);
  while (v11 != v10)
  {
    v12 = *v11;
    if (*(*v11 + 7) == this)
    {
      v13 = v10 - (v11 + 1);
      if (v10 != v11 + 1)
      {
        memmove(v11, v11 + 1, v10 - (v11 + 1));
      }

      *(v2 + 40) = v11 + v13;
      MIDISetup::ObjectRemoved(*v2, v12);
      v15 = MIDIServer::defaultInstance(v14) + 13;
      v16 = (*(*v15 + 16))(v15);
      (*(*v12 + 8))(v12);
      if (v16)
      {
        (*(*v15 + 24))(v15);
      }

      goto LABEL_10;
    }

    ++v11;
  }

  _Block_release(this[7]);
  OwnedPtrVector<MIDIPort *>::~OwnedPtrVector(this + 8);
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void *OwnedPtrVector<MIDIPort *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_284A469F0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void OwnedPtrVector<MIDIPort *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<MIDIPort *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

uint64_t MIDIOutputPort::PrintObject(MIDIOutputPort *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIPortRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIOutputPort::~MIDIOutputPort(MIDIOutputPort *this)
{
  MIDIOutputPort::~MIDIOutputPort(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46B10;
  v2 = gScheduler;
  v4 = gScheduler + 24;
  v3 = *(gScheduler + 24);
  v12[5] = gScheduler + 24;
  v5 = (*(v3 + 16))(gScheduler + 24);
  v13 = v5;
  memset(&v12[1], 0, 24);
  v12[4] = v2;
  v12[0] = &unk_284A46DC0;
  v6 = *(v2 + 120);
  if (v6 != v2 + 128)
  {
    do
    {
      v7 = *(v6 + 8);
      v8 = v6;
      if (v7)
      {
        do
        {
          v9 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (!v10);
      }

      if (*(v6 + 48) == this)
      {
        FlushManagerBase::InspectEvent(v12, *(v6 + 56), *(v6 + 64));
        v11 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, *(v6 + 56));
        if (v11)
        {
          --*(v11 + 100);
        }

        std::__tree<std::__value_type<unsigned long long,ScheduledEvent>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,ScheduledEvent>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,ScheduledEvent>>>::erase((v2 + 120), v6);
      }

      v6 = v9;
    }

    while (v9 != (v2 + 128));
  }

  FlushManager::~FlushManager(v12);
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t MIDIInputPort::GetProperty(MIDIInputPort *this, const __CFString *cf1, const void **a3, int a4)
{
  if (CFEqual(cf1, kMIDIPropertyProtocolID))
  {
    *a3 = CFNumberCreate(0, kCFNumberSInt32Type, this + 56);
    return 0;
  }

  else
  {

    return MIDIObject::GetProperty(this, cf1, a3, a4);
  }
}

uint64_t MIDIInputPort::PrintObject(MIDIInputPort *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIPortRef", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIInputPort::~MIDIInputPort(MIDIInputPort *this)
{
  MIDIInputPort::~MIDIInputPort(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46C60;
  v2 = (this + 80);
  while (1)
  {
    v3 = *(this + 11);
    if (*(this + 10) == v3)
    {
      break;
    }

    MIDISource::DisconnectPort(*(v3 - 16), this);
  }

  _Block_release(*(this + 8));
  _Block_release(*(this + 9));
  v4 = v2;
  std::vector<MIDIInputPort::ConnectedSource>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void std::vector<MIDIInputPort::ConnectedSource>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ClientTable::ProcessQuit(ClientTable *this, ClientProcess *a2)
{
  v3 = this;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v5 + 8 * v6);
      if (*(*v8 + 48) == a2)
      {
        v9 = MIDIServer::defaultInstance(this) + 13;
        v10 = (*(*v9 + 16))(v9);
        this = OwnedPtrVector<MIDIClient *>::erase(v3, v8);
        if (v10)
        {
          this = (*(*v9 + 24))(v9);
        }

        v5 = *(v3 + 1);
        v4 = *(v3 + 2);
      }

      else
      {
        ++v7;
      }

      v6 = v7;
    }

    while (v7 < ((v4 - v5) >> 3));
  }

  v11 = MIDIServer::defaultInstance(this) + 13;
  v12 = (*(*v11 + 16))(v11);
  v14 = *(v3 + 5);
  v13 = *(v3 + 6);
  if (v14 != v13)
  {
    while (*v14 != a2)
    {
      v14 += 8;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  if (v14 != v13)
  {
    if (*v14)
    {
      (*(**v14 + 8))(*v14);
      v13 = *(v3 + 6);
    }

    v15 = v13 - (v14 + 8);
    if (v13 != v14 + 8)
    {
      memmove(v14, v14 + 8, v13 - (v14 + 8));
    }

    *(v3 + 6) = &v14[v15];
  }

LABEL_19:
  if (v12)
  {
    (*(*v11 + 24))(v11);
  }

  ClientTable::CheckActiveProcesses(v3);
}

void ClientTable::CheckActiveProcesses(ClientTable *this)
{
  v14 = *MEMORY[0x277D85DE8];
  active = ClientTable::AnyActiveProcesses(this);
  if (active)
  {
    if ((**(MIDIServer::defaultInstance(active, v3) + 264) & 1) == 0)
    {
      gClientTable();
      v4 = gClientTable(void)::clitbl;
      v5 = os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        *buf = 136315394;
        v11 = "MIDIClient.cpp";
        v12 = 1024;
        v13 = 144;
        _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClientTable::CheckActiveProcesses: starting MIDI drivers", buf, 0x12u);
      }

      MIDIServer::startMIDI(v5, v6);
    }
  }

  else
  {
    *(this + 8) = mach_absolute_time();
    gClientTable();
    v7 = gClientTable(void)::clitbl;
    if (os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "MIDIClient.cpp";
      v12 = 1024;
      v13 = 150;
      _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClientTable::CheckActiveProcesses: scheduling check for stopping MIDI drivers", buf, 0x12u);
    }

    v8 = dispatch_time(0, 60000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN11ClientTable20CheckActiveProcessesEv_block_invoke;
    block[3] = &__block_descriptor_tmp_1938;
    block[4] = this;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

void sub_2372185C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL ClientTable::AnyActiveProcesses(ClientTable *this)
{
  v18 = *MEMORY[0x277D85DE8];
  for (i = *(this + 5); i != *(this + 6); ++i)
  {
    v3 = *i;
    if ((*(*i + 13) & 1) == 0)
    {
      gClientTable();
      v7 = gClientTable(void)::clitbl;
      if (os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(v3 + 8);
        v9 = (*(this + 6) - *(this + 5)) >> 3;
        v10 = 136315906;
        v11 = "MIDIClient.cpp";
        v12 = 1024;
        v13 = 130;
        v14 = 1024;
        v15 = v8;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClientTable::AnyActiveProcesses() returning true due to pid %d for %d processes", &v10, 0x1Eu);
      }

      return 1;
    }
  }

  gClientTable();
  v4 = gClientTable(void)::clitbl;
  result = os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v6 = (*(this + 6) - *(this + 5)) >> 3;
    v10 = 136315650;
    v11 = "MIDIClient.cpp";
    v12 = 1024;
    v13 = 134;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClientTable::AnyActiveProcesses() returning false for %d processes", &v10, 0x18u);
    return 0;
  }

  return result;
}

void gClientTable(void)
{
  {
    gClientTable(void)::clitbl = os_log_create("com.apple.coremidi", "clitbl");
  }
}

void ___ZN11ClientTable20CheckActiveProcessesEv_block_invoke(MIDIServer *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4);
  v3 = MIDIServer::defaultInstance(a1, a2) + 16;
  v4 = (*(*v3 + 16))(v3);
  v5 = (mach_absolute_time() - *(v2 + 8)) * 0.0000000416666667;
  if (v5 < 59.0)
  {
    gClientTable();
    v6 = gClientTable(void)::clitbl;
    if (!os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v16 = "MIDIClient.cpp";
    v17 = 1024;
    v18 = 165;
    v19 = 2048;
    v20 = v5;
    v7 = "%25s:%-5d ClientTable::CheckActiveProcesses: waiting for a later message (only %.3f seconds elapsed)";
    v8 = v6;
    v9 = 28;
LABEL_7:
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, v7, buf, v9);
    goto LABEL_11;
  }

  active = ClientTable::AnyActiveProcesses(v2);
  gClientTable();
  v11 = gClientTable(void)::clitbl;
  if (active)
  {
    if (!os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    v16 = "MIDIClient.cpp";
    v17 = 1024;
    v18 = 171;
    v7 = "%25s:%-5d ClientTable::CheckActiveProcesses: there are active processes, not stopping MIDI drivers";
    v8 = v11;
    v9 = 18;
    goto LABEL_7;
  }

  if (os_log_type_enabled(gClientTable(void)::clitbl, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "MIDIClient.cpp";
    v17 = 1024;
    v18 = 167;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d [*] ClientTable::CheckActiveProcesses: no active processes for %.3f seconds, stopping MIDI drivers", buf, 0x1Cu);
  }

  Scheduler::FlushAllOutput(gScheduler);
  v14 = MIDIServer::defaultInstance(v12, v13);
  MIDIDriverMgr::StopMIDI(*(v14 + 264));
LABEL_11:
  if (v4)
  {
    (*(*v3 + 24))(v3);
  }
}

void sub_237218A2C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void MIDIClient::AddPort(MIDIClient *this, MIDIPort *a2)
{
  v4 = *(this + 10);
  v3 = *(this + 11);
  if (v4 >= v3)
  {
    v6 = *(this + 9);
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (v4 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    *(this + 9) = v14;
    *(this + 10) = v5;
    *(this + 11) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 8;
  }

  *(this + 10) = v5;
}

void MIDI::EventListDeliverer::create(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    std::terminate();
  }

  operator new();
}

void sub_237218CC0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIDIInputPort::ConnectedSource>,MIDIInputPort::ConnectedSource*>(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v6 + 1) = 0;
      *a4++ = v7;
      ++v6;
    }

    while (v6 != a3);
    do
    {
      v8 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      ++v5;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<MIDIInputPort::ConnectedSource>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    *(v2 - 8) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *MIDI::MIDI_1UP_Deliverer::MIDI_1UP_Deliverer(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::empty;
  *a1 = &unk_284A46378;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

uint64_t MIDI::MIDI_2_Deliverer::operator()(uint64_t a1, unsigned int *a2)
{
  v72[127] = *MEMORY[0x277D85DE8];
  v70 = *(a1 + 8);
  (*(v70 + 8))(v71, a1 + 16);
  v71[7] = 2;
  v71[6] = v72;
  v59 = a2;
  if (*a2)
  {
    v62 = 0;
    v4 = (a2 + 1);
    v5 = (a1 + 64);
    v6 = (a1 + 80);
    v7 = a1 + 97;
    do
    {
      v8 = v4 + 10;
      v9 = v4;
      v10 = *(v4 + 8);
      v60 = v8;
      v61 = v9;
      v65[0] = v8;
      v65[1] = v10;
      v65[2] = *v9;
      v65[3] = 0;
      while (1)
      {
        *v64 = 0;
        __src = 0uLL;
        if (!MIDI::LegacyPacketList::PacketReader::read(v65, v64, &__src))
        {
          break;
        }

        v11 = *v64;
        v12 = __src;
        if (__src >> 28 == 2)
        {
          v66[0] = 0;
          v66[1] = 0;
          v13 = BYTE3(__src) & 0xF;
          v14 = BYTE3(__src) & 0xF | 0x40;
          v15 = BYTE2(__src);
          v16 = *(a1 + 96);
          v17 = BYTE2(__src) >> 4;
          if (v16)
          {
            goto LABEL_43;
          }

          v18 = *v5;
          if ((*v5 & 0xFF0000) != 0)
          {
            if (((v18 ^ __src) & 0xF0000) != 0)
            {
              v16 = 1;
              *(a1 + 96) = 1;
              goto LABEL_43;
            }

            if (v17 != 11)
            {
              v16 = (v18 & 0xDF00) != 0 || v17 != 12;
LABEL_43:
              v24 = *v5;
              v25 = BYTE2(*v5);
              if (BYTE2(*v5) && v16)
              {
                *(a1 + 96) = 1;
                v69 = 0;
                v67 = v24 & 0xFF00 | (v25 << 16) & 0x80FFFFFF | ((BYTE3(v12) & 0xF | 0x40) << 24);
                v26 = v24 << 25;
                if (v24 >= 0x41u)
                {
                  v27 = (v24 & 0x3F) << 19;
                  if (v27)
                  {
                    do
                    {
                      v26 |= v27;
                      v28 = v27 > 0x3F;
                      v27 >>= 6;
                    }

                    while (v28);
                  }
                }

                v68 = v26;
                MIDI::Packetizer::add(&v70, v11, &v67);
                *v5 = 0;
                v69 = 0;
                v29 = *v6;
                if (BYTE2(*v6))
                {
                  v67 = *v6 & 0xFF00 | (BYTE2(*v6) << 16) | (v14 << 24);
                  v30 = v29;
                  v31 = v29 << 25;
                  v32 = v30 >= 0x41;
                  v33 = (v30 & 0x3F) << 19;
                  if (v32 && v33 != 0)
                  {
                    do
                    {
                      v31 |= v33;
                      v28 = v33 > 0x3F;
                      v33 >>= 6;
                    }

                    while (v28);
                  }

                  v68 = v31;
                  MIDI::Packetizer::add(&v70, v11, &v67);
                  *v6 = 0;
                }

                *(v7 + (v13 << 7) + 8 * ((v12 >> 16) & 0xF)) = 0;
              }

              goto LABEL_56;
            }

            v20 = BYTE1(v18);
            v16 = 1;
            if (v20 > 98)
            {
              switch(v20)
              {
                case 'c':
                  v21 = __src & 0xFF00;
                  v19 = (a1 + 80);
                  v22 = 25088;
                  break;
                case 'd':
                  v21 = __src & 0xFF00;
                  v19 = (a1 + 80);
                  v22 = 25856;
                  break;
                case 'e':
                  v21 = __src & 0xFF00;
                  v19 = (a1 + 80);
                  v22 = 25600;
                  break;
                default:
                  goto LABEL_43;
              }
            }

            else
            {
              if (!v20)
              {
                v19 = (a1 + 80);
                if ((__src & 0xFF00) != 0x2000)
                {
                  goto LABEL_42;
                }

                goto LABEL_14;
              }

              if (v20 == 32)
              {
                v19 = (a1 + 80);
                if ((__src & 0xFF00) != 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_14;
              }

              if (v20 != 98)
              {
                goto LABEL_43;
              }

              v21 = __src & 0xFF00;
              v19 = (a1 + 80);
              v22 = 25344;
            }

            if (v21 != v22)
            {
              v19 = (a1 + 80);
              if ((__src & 0xF0DF00) != 0xB00600)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            v16 = 1;
            if (v17 != 11 || (__src & 0xF00000) != 0xB00000)
            {
              goto LABEL_43;
            }

            v19 = (a1 + 64);
            if (BYTE1(__src) - 98 >= 4)
            {
              v19 = (a1 + 64);
              if (BYTE1(__src))
              {
                v19 = (a1 + 64);
                if (BYTE1(__src) != 32)
                {
LABEL_42:
                  v16 = 1;
                  goto LABEL_43;
                }
              }
            }
          }

LABEL_14:
          *v19 = __src;
LABEL_56:
          v35 = (v12 >> 8) & 0x7F;
          v36 = v12 & 0x7F;
          if (BYTE2(v12) >> 4 <= 0xAu)
          {
            if (v17 != 8)
            {
              if (v17 != 9)
              {
                if (v17 != 10)
                {
                  goto LABEL_90;
                }

                LODWORD(v66[0]) = (BYTE2(v12) << 16) | (v14 << 24) | (v35 << 8);
                v39 = v12 << 25;
                if (v36 >= 0x41)
                {
                  v40 = (v12 & 0x3F) << 19;
                  if (v40)
                  {
                    do
                    {
                      v39 |= v40;
                      v28 = v40 > 0x3F;
                      v40 >>= 6;
                    }

                    while (v28);
                  }
                }

                goto LABEL_89;
              }

              if ((v12 & 0x7F) == 0)
              {
                v15 = BYTE2(v12) - 16;
                v36 = 64;
              }
            }

            LODWORD(v66[0]) = (v14 << 24) | (v15 << 16) | (v35 << 8);
            v48 = v36 << 9;
            if (v36 >= 0x41)
            {
              v49 = 8 * (v36 & 0x3F);
              if (v49)
              {
                do
                {
                  v48 |= v49;
                  v28 = v49 > 0x3F;
                  v49 >>= 6;
                }

                while (v28);
              }
            }

            v39 = v48 << 16;
LABEL_89:
            HIDWORD(v66[0]) = v39;
            goto LABEL_90;
          }

          if (BYTE2(v12) >> 4 > 0xCu)
          {
            if (v17 != 13)
            {
              if (v17 != 14)
              {
                goto LABEL_90;
              }

              LODWORD(v66[0]) = (v14 << 24) | (BYTE2(v12) << 16);
              v41 = v35 | (v36 << 7);
              v39 = v41 << 18;
              if (v41 > 0x2000)
              {
                for (i = 32 * (v41 & 0x1FFF); i; i >>= 13)
                {
                  v39 |= i;
                }
              }

              goto LABEL_89;
            }

            LODWORD(v66[0]) = (v14 << 24) | (BYTE2(v12) << 16);
            v46 = v12 >> 8 << 25;
            if (v35 >= 0x41)
            {
              v47 = ((v12 >> 8) & 0x3F) << 19;
              if (v47)
              {
                do
                {
                  v46 |= v47;
                  v28 = v47 > 0x3F;
                  v47 >>= 6;
                }

                while (v28);
              }
            }

            HIDWORD(v66[0]) = v46;
LABEL_90:
            MIDI::Packetizer::add(&v70, v11, v66);
          }

          else
          {
            if (v17 != 11)
            {
              v37 = (v7 + (v13 << 7) + 8 * (WORD1(v12) & 0xF));
              if (*v37 == 1)
              {
                v38 = *(a1 + 96) ^ 1;
              }

              else
              {
                v38 = 0;
              }

              v51 = (v35 << 24) | (v37[2] << 8) | v37[3];
              LODWORD(v66[0]) = (v14 << 24) | (BYTE2(v12) << 16) | v38;
              HIDWORD(v66[0]) = v51;
              *v37 = 0;
              goto LABEL_96;
            }

            v43 = (v12 >> 16) & 0xF;
            v44 = (v7 + (v13 << 7) + 8 * v43);
            if (((v12 >> 8) & 0x7F) > 0x61)
            {
              if (((v12 >> 8) & 0x7F) > 0x63)
              {
                if (v35 == 100)
                {
                  v56 = 1;
                  goto LABEL_118;
                }

                if (v35 != 101)
                {
                  goto LABEL_120;
                }

                v50 = 1;
              }

              else
              {
                if (v35 == 98)
                {
                  v56 = 2;
LABEL_118:
                  v44[1] = v56;
                  v44[5] = v36;
                  goto LABEL_119;
                }

                v50 = 2;
              }

              v44[1] = v50;
              v44[4] = v36;
            }

            else
            {
              if (((v12 >> 8) & 0x7F) > 0x1F)
              {
                if (v35 != 32)
                {
                  if (v35 != 38)
                  {
                    goto LABEL_120;
                  }

                  v45 = v12 & 0x7F;
LABEL_100:
                  v44[7] = v45;
                  if ((*(a1 + 96) & 1) != 0 || !v44[1])
                  {
LABEL_120:
                    LODWORD(v66[0]) = (BYTE2(v12) << 16) | (v14 << 24) | (v35 << 8);
                    v39 = v12 << 25;
                    if (v36 >= 0x41)
                    {
                      v57 = (v12 & 0x3F) << 19;
                      if (v57)
                      {
                        do
                        {
                          v39 |= v57;
                          v28 = v57 > 0x3F;
                          v57 >>= 6;
                        }

                        while (v28);
                      }
                    }

                    goto LABEL_89;
                  }

                  if (v44[1] == 1)
                  {
                    v52 = 32;
                  }

                  else
                  {
                    v52 = 48;
                  }

                  LODWORD(v66[0]) = (v14 << 24) | ((v52 | v43) << 16) | (v44[4] << 8) | v44[5];
                  v53 = v44[7] | (v44[6] << 7);
                  v54 = v53 << 18;
                  if (v53 > 0x2000)
                  {
                    for (j = 32 * (v53 & 0x1FFF); j; j >>= 13)
                    {
                      v54 |= j;
                    }
                  }

                  HIDWORD(v66[0]) = v54;
LABEL_96:
                  *v5 = 0u;
                  *(a1 + 80) = 0u;
                  goto LABEL_90;
                }

                v44[3] = v36;
              }

              else
              {
                if (v35)
                {
                  if (v35 != 6)
                  {
                    goto LABEL_120;
                  }

                  v45 = 0;
                  v44[6] = v36;
                  goto LABEL_100;
                }

                v44[2] = v36;
              }

              *v44 = 1;
            }

LABEL_119:
            if (*(a1 + 96))
            {
              goto LABEL_120;
            }
          }
        }

        else
        {
          MIDI::Packetizer::add(&v70, *v64, &__src);
        }
      }

      ++v62;
      v4 = (v60 + *(v61 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v62 < *v59);
  }

  return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v70);
}

uint64_t MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 68) = 0;
  *(a1 + 56) = a1 + 72;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

uint64_t MIDI::LegacyPacketList::PacketReader::read(uint64_t *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (*a1 + v4);
  v7 = *v6;
  if (*v6 < -16)
  {
LABEL_3:
    v8 = 2;
    if ((v7 & 0xE0) != 0xC0)
    {
      v8 = 3;
    }

    v9 = v8 + v4;
    v10 = v9 <= v3;
    if (v9 <= v3)
    {
      v11 = v6[1] & 0x7F;
      if ((v7 & 0xE0) == 0xC0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6[2] & 0x7F;
      }

      *a3 = v12 | (v7 << 16) | (v11 << 8) | 0x20000000;
      *a2 = a1[2];
      v3 = v9;
    }

    goto LABEL_20;
  }

  while (2)
  {
    if (v7 < 0xF1)
    {
      v16 = v7 == 240;
      if (v7 == 240)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16)
      {
        a1[3] = ++v4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = (v4 < v3) | v19;
        if (v4 < v3 && (v19 & 1) == 0)
        {
          v22 = *(v5 + v4);
          if ((v22 & 0x80000000) == 0)
          {
            if (v18 == 6)
            {
              goto LABEL_43;
            }

            v21 = 0;
            a1[3] = ++v4;
            ++v20;
            goto LABEL_42;
          }

          if (v22 == -9)
          {
            a1[3] = ++v4;
          }

          if (v17 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = 3;
          }

          v21 = 1;
        }

        if (v18 == 6)
        {
LABEL_43:
          v23 = bswap32(v28);
          *a3 = (v17 << 20) | (v20 << 16) | (v27[0] << 8) | v27[1] | 0x30000000;
          a3[1] = v23;
          *a2 = a1[2];
          return 1;
        }

        LOBYTE(v22) = 0;
LABEL_42:
        v27[v18++] = v22;
        v19 = v21;
      }
    }

    if (v7 == 247)
    {
      *a3 = 808452096;
      *a2 = a1[2];
      v24 = v4 + 1;
      goto LABEL_53;
    }

    if ((0x22B1uLL >> (v7 + 16)))
    {
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        a1[3] = v13 + 1;
        if (v13 + 1 >= v3)
        {
          return 0;
        }

        v14 = *(v5 + 1 + v13++);
      }

      while ((v14 & 0x80000000) == 0);
      v7 = v14;
      v6 = (v5 + v4);
      if (v7 > -17)
      {
        continue;
      }

      goto LABEL_3;
    }

    break;
  }

  v24 = v4 + MIDI::_gMessageSize[v7 - 240];
  if (v24 > v3)
  {
    v10 = 0;
LABEL_20:
    a1[3] = v3;
    return v10;
  }

  if ((0xDD40uLL >> (v7 + 16)))
  {
    v25 = 0;
    goto LABEL_51;
  }

  v25 = v6[1] & 0x7F;
  if (v7 != 242)
  {
LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

  v26 = v6[2] & 0x7F;
LABEL_52:
  *a3 = (v7 << 16) | (v25 << 8) | v26 | 0x10000000;
  *a2 = a1[2];
LABEL_53:
  a1[3] = v24;
  return 1;
}

_DWORD *MIDI::Packetizer::add(_DWORD *result, uint64_t a2, char *__src)
{
  v3 = result;
  v4 = *__src;
  v5 = MIDI::UniversalPacket::word_sizes[v4 >> 28];
  v6 = *(result + 7);
  if (MIDI::UniversalPacket::word_sizes[v4 >> 28])
  {
    v7 = (result + 272);
    v8 = v4 & 0xF0000000;
    v9 = result[17];
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      if (!v6)
      {
        if (v8 != 805306368)
        {
          goto LABEL_31;
        }

LABEL_33:
        v6 += v6[2] + 3;
LABEL_34:
        if (&v6[v5 + 3] <= v7)
        {
          LODWORD(v19) = 0;
          result[17] = v9 + 1;
          *v6 = a2;
          v6[2] = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v11 = v6[2];
      v12 = v11 >= 2;
      v13 = v11 - 2;
      if (v12 && v6[3] >> 28 == 3)
      {
        v14 = v6[v13 + 3];
        if (v14 >> 28 == 3)
        {
          v15 = (v14 >> 20) & 0xF;
        }

        else
        {
          v15 = 255;
        }

        if (v15)
        {
          v16 = v15 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        v18 = 1;
LABEL_27:
        if ((v4 & 0xF0E00000) != 0x30000000 && (((v8 == 805306368) ^ v18) & 1) == 0 && *v6 == a2 && (v17 & 1) == 0)
        {
LABEL_31:
          v19 = v6[2];
          if (&v6[v19 + 3 + v5] <= v7)
          {
LABEL_37:
            result = &v6[v19 + 3];
            if (v5 > 2)
            {
              if (v5 != 3)
              {
                if (v5 != 4)
                {
LABEL_49:
                  result = memmove(result, __src, 4 * v5);
                  goto LABEL_47;
                }

                v20 = *__src;
                __src += 4;
                *result = v20;
                result = &v6[v19 + 4];
              }

              v21 = *__src;
              __src += 4;
              *result++ = v21;
            }

            else
            {
              if (v5 == 1)
              {
LABEL_46:
                *result = *__src;
LABEL_47:
                v6[2] += v5;
                goto LABEL_48;
              }

              if (v5 != 2)
              {
                goto LABEL_49;
              }
            }

            v22 = *__src;
            __src += 4;
            *result++ = v22;
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
LABEL_35:
    result = MIDI::PacketizerBase<MIDI::EventList>::begin_new_packet(result, a2, __src, v5);
    v6 = result;
  }

LABEL_48:
  *(v3 + 7) = v6;
  return result;
}

uint64_t MIDI::MIDI_2_Deliverer::operator()(uint64_t a1, _DWORD *a2)
{
  v91[127] = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    v89 = a2;
    return (**(a1 + 8))(a1 + 16, &v89);
  }

  if (*a2 != 1)
  {
    std::terminate();
  }

  v89 = *(a1 + 8);
  (*(v89 + 1))(v90, a1 + 16);
  v90[7] = 2;
  v90[6] = v91;
  if (!a2[1])
  {
    v4 = 0;
    goto LABEL_130;
  }

  v4 = 0;
  v78 = 0;
  v75 = a2;
  v5 = a2 + 2;
  v6 = (a1 + 64);
  v7 = (a1 + 80);
  v8 = a1 + 97;
  do
  {
    v9 = v5 + 3;
    v10 = v5;
    v11 = v5[2];
    v76 = v9;
    v77 = v10;
    v81 = v9;
    v82 = v11;
    v83 = *v10;
    v84 = 0;
    while (1)
    {
      *v80 = 0;
      __src = 0uLL;
      if (!MIDI::EventList::PacketReader::read(&v81, v80, &__src))
      {
        break;
      }

      v4 = *v80;
      v12 = __src;
      if (__src >> 28 == 2)
      {
        v85[0] = 0;
        v85[1] = 0;
        v13 = BYTE3(__src) & 0xF;
        v14 = BYTE3(__src) & 0xF | 0x40;
        v15 = BYTE2(__src);
        v16 = *(a1 + 96);
        v17 = BYTE2(__src) >> 4;
        if (v16)
        {
          goto LABEL_45;
        }

        v18 = *v6;
        if ((*v6 & 0xFF0000) != 0)
        {
          if (((v18 ^ __src) & 0xF0000) != 0)
          {
            v16 = 1;
            *(a1 + 96) = 1;
            goto LABEL_45;
          }

          if (v17 != 11)
          {
            v16 = (v18 & 0xDF00) != 0 || v17 != 12;
LABEL_45:
            v24 = *v6;
            v25 = BYTE2(*v6);
            if (BYTE2(*v6) && v16)
            {
              *(a1 + 96) = 1;
              v88 = 0;
              v86 = v24 & 0xFF00 | (v25 << 16) & 0x80FFFFFF | ((BYTE3(v12) & 0xF | 0x40) << 24);
              v26 = v24 << 25;
              if (v24 >= 0x41u)
              {
                v27 = (v24 & 0x3F) << 19;
                if (v27)
                {
                  do
                  {
                    v26 |= v27;
                    v28 = v27 > 0x3F;
                    v27 >>= 6;
                  }

                  while (v28);
                }
              }

              v87 = v26;
              MIDI::Packetizer::add(&v89, v4, &v86);
              *v6 = 0;
              v88 = 0;
              v29 = *v7;
              if (BYTE2(*v7))
              {
                v86 = *v7 & 0xFF00 | (BYTE2(*v7) << 16) | (v14 << 24);
                v30 = v29;
                v31 = v29 << 25;
                v32 = v30 >= 0x41;
                v33 = (v30 & 0x3F) << 19;
                if (v32 && v33 != 0)
                {
                  do
                  {
                    v31 |= v33;
                    v28 = v33 > 0x3F;
                    v33 >>= 6;
                  }

                  while (v28);
                }

                v87 = v31;
                MIDI::Packetizer::add(&v89, v4, &v86);
                *v7 = 0;
              }

              *(v8 + (v13 << 7) + 8 * ((v12 >> 16) & 0xF)) = 0;
            }

            goto LABEL_58;
          }

          v20 = BYTE1(v18);
          v16 = 1;
          if (v20 > 98)
          {
            switch(v20)
            {
              case 'c':
                v21 = __src & 0xFF00;
                v19 = (a1 + 80);
                v22 = 25088;
                break;
              case 'd':
                v21 = __src & 0xFF00;
                v19 = (a1 + 80);
                v22 = 25856;
                break;
              case 'e':
                v21 = __src & 0xFF00;
                v19 = (a1 + 80);
                v22 = 25600;
                break;
              default:
                goto LABEL_45;
            }
          }

          else
          {
            if (!v20)
            {
              v19 = (a1 + 80);
              if ((__src & 0xFF00) != 0x2000)
              {
                goto LABEL_44;
              }

              goto LABEL_16;
            }

            if (v20 == 32)
            {
              v19 = (a1 + 80);
              if ((__src & 0xFF00) != 0)
              {
                goto LABEL_44;
              }

              goto LABEL_16;
            }

            if (v20 != 98)
            {
              goto LABEL_45;
            }

            v21 = __src & 0xFF00;
            v19 = (a1 + 80);
            v22 = 25344;
          }

          if (v21 != v22)
          {
            v19 = (a1 + 80);
            if ((__src & 0xF0DF00) != 0xB00600)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          v16 = 1;
          if (v17 != 11 || (__src & 0xF00000) != 0xB00000)
          {
            goto LABEL_45;
          }

          v19 = (a1 + 64);
          if (BYTE1(__src) - 98 >= 4)
          {
            v19 = (a1 + 64);
            if (BYTE1(__src))
            {
              v19 = (a1 + 64);
              if (BYTE1(__src) != 32)
              {
LABEL_44:
                v16 = 1;
                goto LABEL_45;
              }
            }
          }
        }

LABEL_16:
        *v19 = __src;
LABEL_58:
        v35 = (v12 >> 8) & 0x7F;
        v36 = v12 & 0x7F;
        if (BYTE2(v12) >> 4 <= 0xAu)
        {
          if (v17 != 8)
          {
            if (v17 != 9)
            {
              if (v17 != 10)
              {
                goto LABEL_92;
              }

              LODWORD(v85[0]) = (BYTE2(v12) << 16) | (v14 << 24) | (v35 << 8);
              v39 = v12 << 25;
              if (v36 >= 0x41)
              {
                v40 = (v12 & 0x3F) << 19;
                if (v40)
                {
                  do
                  {
                    v39 |= v40;
                    v28 = v40 > 0x3F;
                    v40 >>= 6;
                  }

                  while (v28);
                }
              }

              goto LABEL_91;
            }

            if ((v12 & 0x7F) == 0)
            {
              v15 = BYTE2(v12) - 16;
              v36 = 64;
            }
          }

          LODWORD(v85[0]) = (v14 << 24) | (v15 << 16) | (v35 << 8);
          v48 = v36 << 9;
          if (v36 >= 0x41)
          {
            v49 = 8 * (v36 & 0x3F);
            if (v49)
            {
              do
              {
                v48 |= v49;
                v28 = v49 > 0x3F;
                v49 >>= 6;
              }

              while (v28);
            }
          }

          v39 = v48 << 16;
LABEL_91:
          HIDWORD(v85[0]) = v39;
          goto LABEL_92;
        }

        if (BYTE2(v12) >> 4 > 0xCu)
        {
          if (v17 != 13)
          {
            if (v17 != 14)
            {
              goto LABEL_92;
            }

            LODWORD(v85[0]) = (v14 << 24) | (BYTE2(v12) << 16);
            v41 = v35 | (v36 << 7);
            v39 = v41 << 18;
            if (v41 > 0x2000)
            {
              for (i = 32 * (v41 & 0x1FFF); i; i >>= 13)
              {
                v39 |= i;
              }
            }

            goto LABEL_91;
          }

          LODWORD(v85[0]) = (v14 << 24) | (BYTE2(v12) << 16);
          v46 = v12 >> 8 << 25;
          if (v35 >= 0x41)
          {
            v47 = ((v12 >> 8) & 0x3F) << 19;
            if (v47)
            {
              do
              {
                v46 |= v47;
                v28 = v47 > 0x3F;
                v47 >>= 6;
              }

              while (v28);
            }
          }

          HIDWORD(v85[0]) = v46;
LABEL_92:
          MIDI::Packetizer::add(&v89, v4, v85);
        }

        else
        {
          if (v17 != 11)
          {
            v37 = (v8 + (v13 << 7) + 8 * (WORD1(v12) & 0xF));
            if (*v37 == 1)
            {
              v38 = *(a1 + 96) ^ 1;
            }

            else
            {
              v38 = 0;
            }

            v51 = (v35 << 24) | (v37[2] << 8) | v37[3];
            LODWORD(v85[0]) = (v14 << 24) | (BYTE2(v12) << 16) | v38;
            HIDWORD(v85[0]) = v51;
            *v37 = 0;
            goto LABEL_98;
          }

          v43 = (v12 >> 16) & 0xF;
          v44 = (v8 + (v13 << 7) + 8 * v43);
          if (((v12 >> 8) & 0x7F) > 0x61)
          {
            if (((v12 >> 8) & 0x7F) > 0x63)
            {
              if (v35 == 100)
              {
                v56 = 1;
                goto LABEL_120;
              }

              if (v35 != 101)
              {
                goto LABEL_122;
              }

              v50 = 1;
            }

            else
            {
              if (v35 == 98)
              {
                v56 = 2;
LABEL_120:
                v44[1] = v56;
                v44[5] = v36;
                goto LABEL_121;
              }

              v50 = 2;
            }

            v44[1] = v50;
            v44[4] = v36;
          }

          else
          {
            if (((v12 >> 8) & 0x7F) > 0x1F)
            {
              if (v35 != 32)
              {
                if (v35 != 38)
                {
                  goto LABEL_122;
                }

                v45 = v12 & 0x7F;
LABEL_102:
                v44[7] = v45;
                if ((*(a1 + 96) & 1) != 0 || !v44[1])
                {
LABEL_122:
                  LODWORD(v85[0]) = (BYTE2(v12) << 16) | (v14 << 24) | (v35 << 8);
                  v39 = v12 << 25;
                  if (v36 >= 0x41)
                  {
                    v57 = (v12 & 0x3F) << 19;
                    if (v57)
                    {
                      do
                      {
                        v39 |= v57;
                        v28 = v57 > 0x3F;
                        v57 >>= 6;
                      }

                      while (v28);
                    }
                  }

                  goto LABEL_91;
                }

                if (v44[1] == 1)
                {
                  v52 = 32;
                }

                else
                {
                  v52 = 48;
                }

                LODWORD(v85[0]) = (v14 << 24) | ((v52 | v43) << 16) | (v44[4] << 8) | v44[5];
                v53 = v44[7] | (v44[6] << 7);
                v54 = v53 << 18;
                if (v53 > 0x2000)
                {
                  for (j = 32 * (v53 & 0x1FFF); j; j >>= 13)
                  {
                    v54 |= j;
                  }
                }

                HIDWORD(v85[0]) = v54;
LABEL_98:
                *v6 = 0u;
                *(a1 + 80) = 0u;
                goto LABEL_92;
              }

              v44[3] = v36;
            }

            else
            {
              if (v35)
              {
                if (v35 != 6)
                {
                  goto LABEL_122;
                }

                v45 = 0;
                v44[6] = v36;
                goto LABEL_102;
              }

              v44[2] = v36;
            }

            *v44 = 1;
          }

LABEL_121:
          if (*(a1 + 96))
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
        MIDI::Packetizer::add(&v89, *v80, &__src);
      }
    }

    ++v78;
    v5 = &v76[*(v77 + 2)];
  }

  while (v78 < v75[1]);
LABEL_130:
  v59 = *(a1 + 64);
  v60 = v59 >> 28;
  if (v59 >> 28)
  {
    v61 = v60 == 15;
  }

  else
  {
    v61 = 1;
  }

  v62 = v61 || (v59 & 0xFF0000) == 0;
  if (!v62 && (BYTE1(v59) | 0x20) == 0x26)
  {
    LODWORD(v74) = BYTE3(v59) & 0xF;
    if (v60 == 15)
    {
      v74 = 255;
    }

    else
    {
      v74 = v74;
    }

    *(a1 + (v74 << 7) + 8 * ((v59 >> 16) & 0xF) + 97) = 0;
    *(a1 + 96) = 1;
  }

  if (BYTE2(v59))
  {
    v82 = 0;
    v63 = v59 & 0xF000000 | 0x40000000;
    if (v60 == 15)
    {
      v63 = -16777216;
    }

    if (v60)
    {
      v64 = v63;
    }

    else
    {
      v64 = -16777216;
    }

    LODWORD(v81) = v64 | v59 & 0xFF00 | (BYTE2(v59) << 16);
    v65 = v59;
    v66 = v59 << 25;
    if (v65 >= 0x41)
    {
      v67 = (v65 & 0x3F) << 19;
      if (v67)
      {
        do
        {
          v66 |= v67;
          v28 = v67 > 0x3F;
          v67 >>= 6;
        }

        while (v28);
      }
    }

    HIDWORD(v81) = v66;
    MIDI::Packetizer::add(&v89, v4, &v81);
    *(a1 + 64) = 0;
  }

  v68 = *(a1 + 80);
  if (BYTE2(v68))
  {
    v82 = 0;
    if (v68 >> 28)
    {
      v69 = v68 >> 28 == 15;
    }

    else
    {
      v69 = 1;
    }

    v70 = v68 & 0xF000000 | 0x40000000;
    if (v69)
    {
      v70 = -16777216;
    }

    LODWORD(v81) = v70 | v68 & 0xFF00 | (BYTE2(v68) << 16);
    v71 = v68;
    v72 = v68 << 25;
    if (v71 >= 0x41)
    {
      v73 = (v71 & 0x3F) << 19;
      if (v73)
      {
        do
        {
          v72 |= v73;
          v28 = v73 > 0x3F;
          v73 >>= 6;
        }

        while (v28);
      }
    }

    HIDWORD(v81) = v72;
    MIDI::Packetizer::add(&v89, v4, &v81);
    *(a1 + 80) = 0;
  }

  return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v89);
}

void sub_23721A2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(va);
  _Unwind_Resume(a1);
}

void MIDI::MIDI_2_Deliverer::~MIDI_2_Deliverer(MIDI::MIDI_2_Deliverer *this)
{
  *this = &unk_284A463A8;
  (*(*(this + 1) + 24))(this + 16);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A463A8;
  (*(*(this + 1) + 24))(this + 16);
}

uint64_t MIDI::MIDI_1UP_Deliverer::operator()(uint64_t a1, unsigned int *a2)
{
  v9[127] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  (*(v5 + 8))(v6, a1 + 16);
  v7 = v5;
  (*(v5 + 8))(v8, v6);
  v8[7] = 1;
  v8[6] = v9;
  v4 = &v7;
  MIDI::LegacyPacketList::traverse<MIDI::MIDIPacketList_to_MIDIEventList(MIDIPacketList const*,caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>)::{lambda(MIDIPacket const*)#1}>(a2, &v4);
  MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v7);
  return (*(v5 + 24))(v6);
}

void sub_23721A488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *MIDI::LegacyPacketList::traverse<MIDI::MIDIPacketList_to_MIDIEventList(MIDIPacketList const*,caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>)::{lambda(MIDIPacket const*)#1}>(unsigned int *result, _DWORD **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 1);
    do
    {
      v6 = *(v5 + 8);
      v9[0] = v5 + 10;
      v9[1] = v6;
      v9[2] = *v5;
      v9[3] = 0;
      while (1)
      {
        __src[1] = 0;
        *v8 = 0;
        __src[0] = 0;
        result = MIDI::LegacyPacketList::PacketReader::read(v9, v8, __src);
        if (!result)
        {
          break;
        }

        MIDI::Packetizer::add(*a2, *v8, __src);
      }

      v5 = (v5 + 10 + *(v5 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t MIDI::MIDI_1UP_Deliverer::operator()(uint64_t a1, _DWORD *a2)
{
  v37[127] = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    v35 = *(a1 + 8);
    (*(v35 + 1))(v36, a1 + 16);
    v36[7] = 1;
    v36[6] = v37;
    if (!a2[1])
    {
      return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v35);
    }

    v4 = 0;
    v5 = a2 + 2;
    v25 = a1 + 64;
    while (1)
    {
      v27 = v4;
      v6 = v5[2];
      v31[0] = v5 + 3;
      v31[1] = v6;
      v31[2] = *v5;
      v31[3] = 0;
      while (1)
      {
        __src[1] = 0;
        *v30 = 0;
        __src[0] = 0;
        if (!MIDI::EventList::PacketReader::read(v31, v30, __src))
        {
          break;
        }

        v7 = *v30;
        if (((1 << (LODWORD(__src[0]) >> 28)) & 0xA02F) != 0)
        {
          MIDI::Packetizer::add(&v35, *v30, __src);
        }

        else if (LODWORD(__src[0]) >> 28 == 4)
        {
          v8 = HIBYTE(LODWORD(__src[0])) & 0xF | 0x20;
          v9 = HIDWORD(__src[0]);
          v10 = BYTE2(__src[0]) >> 4;
          if (v10 > 0xB)
          {
            switch(v10)
            {
              case 0xCu:
                if (__src[0])
                {
                  v34 = 0;
                  v33 = 0;
                  v23 = BYTE2(__src[0]) << 16;
                  v24 = HIDWORD(__src[0]);
                  v32 = (v23 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (HIDWORD(__src[0]) >> 8) & 0x7F;
                  MIDI::Packetizer::add(&v35, *v30, &v32);
                  v34 = 0;
                  v33 = 0;
                  v32 = (v23 - 0x100000) | (v8 << 24) | v24 & 0x7F | 0x2000;
                  MIDI::Packetizer::add(&v35, v7, &v32);
                  v22 = v8 << 24;
                  v9 = v24;
                }

                else
                {
                  v22 = v8 << 24;
                  v23 = BYTE2(__src[0]) << 16;
                }

                v34 = 0;
                v33 = 0;
                v32 = HIWORD(v9) & 0x7F00 | v22 | v23;
                MIDI::Packetizer::add(&v35, v7, &v32);
                break;
              case 0xDu:
                v34 = 0;
                v33 = 0;
                v32 = (BYTE2(__src[0]) << 16) | (v8 << 24) | (HIDWORD(__src[0]) >> 25 << 8);
                MIDI::Packetizer::add(&v35, *v30, &v32);
                break;
              case 0xEu:
                v34 = 0;
                v33 = 0;
                v32 = (HIDWORD(__src[0]) >> 10) & 0x7F00 | (BYTE2(__src[0]) << 16) | (v8 << 24) | (HIDWORD(__src[0]) >> 25);
                MIDI::Packetizer::add(&v35, *v30, &v32);
                break;
            }
          }

          else if (v10 - 8 >= 4)
          {
            v28 = HIDWORD(__src[0]);
            if (v10 - 2 < 2)
            {
              v12 = (LODWORD(__src[0]) >> 16) & 0xF;
              v13 = (v25 + 48 * (HIBYTE(LODWORD(__src[0])) & 0xF) + 3 * v12);
              v14 = (LODWORD(__src[0]) >> 8) & 0x7F;
              v15 = __src[0] & 0x7F;
              if ((__src[0] & 0x100000) != 0)
              {
                v16 = 2;
              }

              else
              {
                v16 = 1;
              }

              if (v16 != *v13 || v14 != v13[1])
              {
                v17 = v12 | 0xB0;
LABEL_29:
                if ((__src[0] & 0x100000) != 0)
                {
                  v19 = 25344;
                }

                else
                {
                  v19 = 25856;
                }

                v34 = 0;
                v33 = 0;
                v18 = (v8 << 24) | (v17 << 16);
                v20 = BYTE1(__src[0]) & 0x7F;
                v32 = v18 | v19 | v14;
                MIDI::Packetizer::add(&v35, *v30, &v32);
                v34 = 0;
                v33 = 0;
                v32 = (v19 + v18 + v15 - 256);
                MIDI::Packetizer::add(&v35, v7, &v32);
                *v13 = v16;
                v13[1] = v20;
                v13[2] = v15;
                goto LABEL_33;
              }

              v17 = v12 | 0xB0;
              if (v15 != v13[2])
              {
                goto LABEL_29;
              }

              v18 = (v8 << 24) | (v17 << 16);
LABEL_33:
              v34 = 0;
              v33 = 0;
              v32 = v18 | (v28 >> 25) | 0x600;
              MIDI::Packetizer::add(&v35, v7, &v32);
              v21 = (v28 >> 18) & 0x7F;
              if (v21)
              {
                v34 = 0;
                v33 = 0;
                v32 = v21 | v18 | 0x2600u;
                MIDI::Packetizer::add(&v35, v7, &v32);
              }
            }
          }

          else
          {
            v11 = v10 == 9;
            if (HIDWORD(__src[0]) >> 25)
            {
              v11 = HIDWORD(__src[0]) >> 25;
            }

            v34 = 0;
            v33 = 0;
            v32 = v11 | (BYTE2(__src[0]) << 16) | (v8 << 24) | __src[0] & 0x7F00;
            MIDI::Packetizer::add(&v35, *v30, &v32);
          }
        }
      }

      v5 += v5[2] + 3;
      v4 = v27 + 1;
      if ((v27 + 1) >= a2[1])
      {
        return MIDI::PacketizerBase<MIDI::EventList>::~PacketizerBase(&v35);
      }
    }
  }

  if (*a2 != 1)
  {
    std::terminate();
  }

  v35 = a2;
  return (**(a1 + 8))(a1 + 16, &v35);
}

void MIDI::MIDI_1UP_Deliverer::~MIDI_1UP_Deliverer(MIDI::MIDI_1UP_Deliverer *this)
{
  *this = &unk_284A46378;
  (*(*(this + 1) + 24))(this + 16);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46378;
  (*(*(this + 1) + 24))(this + 16);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_1>(caulk::inplace_function_detail::wrapper<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_1>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_1>(caulk::inplace_function_detail::wrapper<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_1>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_0>(caulk::inplace_function_detail::wrapper<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_0>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_0>(caulk::inplace_function_detail::wrapper<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_0>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *MIDIInputPort::RemoveConnectedSource(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[10];
  v4 = result[11];
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      v3 += 2;
      if (v3 == v4)
      {
        return result;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 2;
      if (v3 + 2 != v4)
      {
        do
        {
          v7 = *v6;
          if (*v6 != a2)
          {
            v8 = v6[1];
            v6[1] = 0;
            result = v3[1];
            *v3 = v7;
            v3[1] = v8;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            v3 += 2;
          }

          v6 += 2;
        }

        while (v6 != v4);
        v4 = v2[11];
      }
    }
  }

  if (v3 != v4)
  {
    while (v4 != v3)
    {
      result = *(v4 - 1);
      *(v4 - 1) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v4 -= 2;
    }

    v2[11] = v3;
  }

  return result;
}

uint64_t MIDIInputPort::DeliverPacketsToInputPort(uint64_t this, const MIDI::EventList *a2, unsigned int a3)
{
  v3 = *(this + 48);
  if (v3)
  {
    v4 = *(v3 + 48);
    if (v4)
    {
      return ClientProcess::DeliverPacketsToClient(v4, *(this + 8), a3, a2);
    }
  }

  for (i = *(this + 80); i != *(this + 88); i += 2)
  {
    if (*(*i + 2) == a3)
    {
      return (*(*i[1] + 16))(i[1], a2);
    }
  }

  return this;
}

uint64_t *std::unique_ptr<MIDIDriverKitPluginRegistrar>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    MIDIClientDispose(*(v2 + 24));
    std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100]((v2 + 16), 0);
    std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100]((v2 + 8), 0);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

void DriverIOThread::Run(DriverIOThread *this)
{
  *(this + 18) = CFRunLoopGetCurrent();
  v1 = *MEMORY[0x277CBF058];
  while (1)
  {
      ;
    }

    sleep(1u);
  }
}

uint64_t DriverIOThread::Start(DriverIOThread *this)
{
  CADeprecated::CAPThread::SetTimeConstraints(this, 0, 6000, 12000, 1);

  return CADeprecated::CAPThread::Start(this);
}

void MIDIDriverMgr::StopMIDI(MIDIDriverMgr *this)
{
  v15 = *MEMORY[0x277D85DE8];
  gDriverTable();
  v2 = gDriverTable(void)::drvtbl;
  v3 = os_log_type_enabled(gDriverTable(void)::drvtbl, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    v4 = *this;
    v9 = 136315650;
    v10 = "DriverTable.cpp";
    v11 = 1024;
    v12 = 164;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d StopMIDI: (already running: %d)\n", &v9, 0x18u);
  }

  if (*this == 1)
  {
    v5 = *(this + 2);
    v6 = *(this + 3);
    while (v5 != v6)
    {
      v7 = *v5++;
      v3 = (*(*v7 + 96))(v7);
    }

    *this = 0;
    if (*SetupManager::instance(v3))
    {
      MIDISetup::SetMIDIRunning(*this, v8);
    }
  }
}

void gDriverTable(void)
{
  {
    gDriverTable(void)::drvtbl = os_log_create("com.apple.coremidi", "drvtbl");
  }
}

void MIDIDriverMgr::GetDriverDeviceList(MIDIDriverMgr *this, MIDIDriverPlugin *a2)
{
  v3 = *SetupManager::instance(this);
  if (v3)
  {
    MIDISetup::GetDriverDevices(v3, this);
  }

  operator new();
}

uint64_t CADeprecated::XThread::Stop(CADeprecated::XThread *this)
{
  v2 = *(this + 123);
  *(this + 123) = 0;
    ;
  }

  if (v2)
  {
    v5 = *(*this + 8);

    return v5(this);
  }

  return result;
}

void CreateMIDITimerThread()
{
  if (!gMIDITimerThread)
  {
    operator new();
  }
}

void MIDITimerTaskCreate()
{
  if (!gMIDITimerThread)
  {
    CreateMIDITimerThread();
  }

  operator new();
}

uint64_t MIDITimerTaskDispose(uint64_t a1)
{
  v2 = gMIDITimerThread;
  v3 = gMIDITimerThread + 144;
  v4 = (*(*(gMIDITimerThread + 144) + 16))(gMIDITimerThread + 144);
  v6 = *(v2 + 288);
  v5 = *(v2 + 296);
  if (v6 != v5)
  {
    while (*v6 != a1)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(v2 + 296);
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v7 = v5 - (v6 + 8);
    if (v5 != v6 + 8)
    {
      memmove(v6, v6 + 8, v5 - (v6 + 8));
    }

    *(v2 + 296) = &v6[v7];
  }

  *(v2 + 312) = 1;
  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  v8 = *(*a1 + 8);

  return v8(a1);
}

void gCIMsgEmitter(void)
{
  {
    gCIMsgEmitter(void)::ciemit = os_log_create("com.apple.coremidi", "ciemit");
  }
}

void std::__function::__func<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_1,std::allocator<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_1>,void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, int *a2, unsigned int *a3, const void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  if (!v4)
  {
    v7 = *(a1 + 8);
    v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v5);
    if (v8)
    {
      v9 = v8;
      if ((*(*v8 + 96))(v8) == 2)
      {
        v10 = v9[40] - v9[38];
        v11 = (v10 >> 3);
        if ((v10 >> 3))
        {
          v12 = 0;
          v13 = v9[26];
          while (1)
          {
            v14 = *(v9 + 19);
            v15 = *(v9 + 20);
            if (v14 != v15)
            {
              while (*(*v14 + 96) != v12)
              {
                if (++v14 == v15)
                {
                  goto LABEL_16;
                }
              }
            }

            if (v14 != v15)
            {
              v16 = *v14;
              if (v16)
              {
                v17 = *(v16 + 104);
                v18 = MIDICI::DeviceManager::sendDiscoveryInquiryMessage(v7, v13, v17, *(v16 + 96));
                if (v18)
                {
                  break;
                }
              }
            }

LABEL_16:
            if (++v12 >= v11)
            {
              goto LABEL_2;
            }
          }

          gMIDICIDeviceManagerLog();
          v19 = gMIDICIDeviceManagerLog(void)::logCat;
          if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
          {
            *buf = 136316162;
            v21 = "CIDeviceManager.cpp";
            v22 = 1024;
            v23 = 261;
            v24 = 1024;
            v25 = v13;
            v26 = 1024;
            v27 = v17;
            v28 = 1024;
            v29 = v18;
            _os_log_impl(&dword_2371C2000, v19, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to send MIDI-CI discovery inquiry to destination %ud, block %ud with error: %d", buf, 0x24u);
          }
        }
      }
    }
  }

LABEL_2:
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_23721B78C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t MIDICI::DeviceManager::sendDiscoveryInquiryMessage(MIDICI::DeviceManager *this, uint64_t a2, unsigned int a3, char a4)
{
  midi::ci::discovery::make_discovery_message(&v9, 112, *(this + 24), 0xFFFFFFFu, &kAppleDeviceIdentity, 28, 0x4000u, a4);
  v7 = MIDICI::DeviceManager::sendMessage(this, a2, a3, &v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_23721B840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gMIDICIDeviceManagerLog(void)
{
  {
    gMIDICIDeviceManagerLog(void)::logCat = os_log_create("com.apple.coremidi", "server-ci-manager");
  }
}

uint64_t MIDICI::DeviceManager::sendMessage(MIDICI::DeviceManager *this, uint64_t a2, unsigned int a3, const midi::sysex7 *a4)
{
  if (!a2)
  {
    return 4294956464;
  }

  v8 = 3;
  if ((*a4 & 0xFF0000) != 0)
  {
    v8 = 1;
  }

  if (*a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  std::vector<unsigned char>::vector[abi:ne200100](&__p, ((2 * (((v9 + *(a4 + 2) - *(a4 + 1)) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF8) + 28);
  v10 = __p;
  v24[0] = __p;
  v24[1] = v26 - __p;
  *__p = 1;
  v24[2] = v10 + 2;
  v10[4] = 0;
  if (a3 >= 0x10)
  {
    __assert_rtn("set_group", "universal_packet.h", 414, "c < 16");
  }

  v11 = *a4;
  v12 = 3;
  if ((*a4 & 0xFF0000) != 0)
  {
    v12 = 1;
  }

  if (!v11)
  {
    v12 = 0;
  }

  v13 = (v12 + *(a4 + 2) - *(a4 + 1)) >= 7;
  v14 = 806354944;
  if (!v13)
  {
    v14 = 805306368;
  }

  v27 = v14 | (a3 << 24);
  v28 = 0;
  midi::sysex7_packet::add_payload_byte(&v27, BYTE2(v11) & 0x7F);
  if (*a4)
  {
    midi::sysex7_packet::add_payload_byte(&v27, BYTE1(*a4) & 0x7F);
    midi::sysex7_packet::add_payload_byte(&v27, *a4 & 0x7F);
  }

  v17 = a4 + 8;
  v15 = *(a4 + 1);
  v16 = *(v17 + 1);
  if (v15 == v16)
  {
    LODWORD(v20) = v27;
  }

  else
  {
    v18 = a3 << 24;
    v19 = &v16[~v15];
    do
    {
      midi::sysex7_packet::add_payload_byte(&v27, *v15);
      LODWORD(v20) = v27;
      if ((v27 & 0xF0000) == 0x60000)
      {
        SysexMessageToEventList<[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2>(unsigned char,midi::sysex7 const&,[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2)::{lambda(midi::data_message const&)#1}::operator()(v24, &v27);
        if (v19 >= 7)
        {
          v21 = 807403520;
        }

        else
        {
          v21 = 808452096;
        }

        v20 = v21 | v18;
        v27 = v20;
        v28 = 0;
      }

      ++v15;
      --v19;
    }

    while (v15 != v16);
  }

  if ((v20 & 0xF0000) != 0)
  {
    SysexMessageToEventList<[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2>(unsigned char,midi::sysex7 const&,[MIDICIMutableDevice receiveMessageViaSource:error:]::$_2)::{lambda(midi::data_message const&)#1}::operator()(v24, &v27);
  }

  v22 = (*(*this + 408))(*(*this + 404), a2, v24[0]);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v22;
}

void sub_23721BADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_1,std::allocator<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_1>,void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48620;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_0,std::allocator<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_0>,void ()(unsigned int,MIDIEventList const*)>::operator()(uint64_t a1, unsigned int *a2, const MIDIEventList **a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v44 = *(a1 + 8);
  std::mutex::lock((v44 + 4));
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v47 = v3;
    v9 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v3);
    if (v9)
    {
      if (MIDIEndpoint::GetPairedEndpoint(v9))
      {
        v10 = v44[14];
        if (!v10)
        {
          goto LABEL_20;
        }

        v11 = v44 + 14;
        do
        {
          v12 = *(v10 + 32);
          v13 = v12 >= v3;
          v14 = v12 < v3;
          if (v13)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * v14);
        }

        while (v10);
        if (v11 == v44 + 14 || *(v11 + 8) > v3)
        {
LABEL_20:
          operator new();
        }

        *buf = &v47;
        v15 = std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v44 + 13), v3);
        MIDICI::SysexCollector::feed(v15[5], v4);
        v41 = v4;
        v16 = v44[1];
        v43 = v44[2];
        if (v16 != v43)
        {
          v42 = v47;
          words = v4->packet[0].words;
          do
          {
            v45 = v16;
            v17 = *v16;
            if (*(*v16 + 200) == 2 && *(v17 + 72) == v42)
            {
              numPackets = v41->numPackets;
              if (numPackets)
              {
                v18 = words;
                v19 = &words[v41->packet[0].wordCount];
              }

              else
              {
                v18 = 0;
                v19 = 0;
              }

              while (1)
              {
                if (v18 == v19)
                {
                  if (numPackets < 2)
                  {
                    break;
                  }

                  --numPackets;
                  v18 = v19 + 3;
                  v19 += v19[2] + 3;
                }

                if (v18 == v19)
                {
                  break;
                }

                v20 = MIDI::UniversalPacket::word_sizes[*v18 >> 28];
                if (MIDI::UniversalPacket::word_sizes[*v18 >> 28])
                {
                  v21 = 0;
                  v22 = *(v17 + 216);
                  v23 = 4 * v20;
                  do
                  {
                    v24 = *(v17 + 224);
                    if (v22 >= v24)
                    {
                      v25 = *(v17 + 208);
                      v26 = v22 - v25;
                      v27 = (v22 - v25) >> 2;
                      v28 = v27 + 1;
                      if ((v27 + 1) >> 62)
                      {
                        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
                      }

                      v29 = v24 - v25;
                      if (v29 >> 1 > v28)
                      {
                        v28 = v29 >> 1;
                      }

                      if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v30 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v30 = v28;
                      }

                      if (v30)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v30);
                      }

                      v31 = (v22 - v25) >> 2;
                      v32 = (4 * v27);
                      v33 = (4 * v27 - 4 * v31);
                      *v32 = v18[v21 / 4];
                      v22 = (v32 + 1);
                      memcpy(v33, v25, v26);
                      v34 = *(v17 + 208);
                      *(v17 + 208) = v33;
                      *(v17 + 216) = v22;
                      *(v17 + 224) = 0;
                      if (v34)
                      {
                        operator delete(v34);
                      }
                    }

                    else
                    {
                      *v22 = v18[v21 / 4];
                      v22 += 4;
                    }

                    *(v17 + 216) = v22;
                    v21 += 4;
                  }

                  while (v23 != v21);
                  v20 = MIDI::UniversalPacket::word_sizes[*v18 >> 28];
                }

                v18 += v20;
              }
            }

            v16 = v45 + 1;
          }

          while (v45 + 1 != v43);
        }

        goto LABEL_66;
      }

      gMIDICIDeviceManagerLog();
      v35 = gMIDICIDeviceManagerLog(void)::logCat;
      if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
      {
        goto LABEL_66;
      }

      *buf = 136315394;
      *&buf[4] = "CIDeviceManager.cpp";
      v49 = 1024;
      v50 = 838;
      v36 = "%25s:%-5d ERROR: Failed to find UMP destination for source..";
    }

    else
    {
      gMIDICIDeviceManagerLog();
      v35 = gMIDICIDeviceManagerLog(void)::logCat;
      if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
      {
        goto LABEL_66;
      }

      *buf = 136315394;
      *&buf[4] = "CIDeviceManager.cpp";
      v49 = 1024;
      v50 = 831;
      v36 = "%25s:%-5d ERROR: Failed to dereference source";
    }

    _os_log_impl(&dword_2371C2000, v35, OS_LOG_TYPE_INFO, v36, buf, 0x12u);
    goto LABEL_66;
  }

  mach_absolute_time();
  v6 = __udivti3();
  v7 = v44[21];
  v8 = v44[22];
  if (v7 != v8)
  {
    while ((v6 - *(*v7 + 8)) <= 0xB2DFA03F)
    {
      if (++v7 == v8)
      {
        v7 = v44[22];
        goto LABEL_62;
      }
    }

    (*(**v7 + 24))(*v7, *v44);
  }

  if (v7 != v8)
  {
    for (i = v7 + 1; i != v8; ++i)
    {
      v38 = *i;
      if ((v6 - *(*i + 8)) <= 0xB2DFA03F)
      {
        *i = 0;
        v39 = *v7;
        *v7 = v38;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }

        ++v7;
      }

      else
      {
        (*(*v38 + 24))(v38, *v44);
      }
    }
  }

LABEL_62:
  std::vector<std::unique_ptr<InternalCITransaction>>::erase((v44 + 21), v7, v44[22]);
LABEL_66:

  std::mutex::unlock((v44 + 4));
}

void sub_23721C158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<MIDICI::SysexCollector>::reset[abi:ne200100](va, 0);
  std::mutex::unlock((a7 + 32));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<InternalCITransaction>>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4 = 0;
        v9 = *v7;
        *v7 = v8;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        ++v4;
        ++v7;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v11 = *--v6;
      v10 = v11;
      *v6 = 0;
      if (v11)
      {
        (*(*v10 + 8))(v10);
      }
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t *std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__function::__func<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0,std::allocator<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0>,void ()(unsigned char,midi::sysex7 const&)>::operator()(uint64_t a1, unsigned __int8 *a2, sysex7 *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  if (*a3 != 8257536)
  {
    return;
  }

  v4 = *(a3 + 1);
  if ((*(a3 + 2) - v4) < 0xC || *(v4 + 1) != 13)
  {
    return;
  }

  *v85 = *a2;
  v6 = *(a1 + 8);
  midi::universal_sysex::message_view::message_view(v88, a3);
  v86 = v6;
  if (*a3 != 8257536 || (v9 = *(a3 + 1), v8 = *(a3 + 2), (v8 - v9) < 0xC) || *(v9 + 1) != 13)
  {
    __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
  }

  v10 = *v88;
  v11 = *(*v88 + 8);
  v12 = *(*v88 + 16);
  if ((v12 - v11) <= 7)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  if ((v12 - v11) <= 0xB)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  v13 = *(v11 + 4) | (*(v11 + 5) << 7) | (*(v11 + 6) << 14) | (*(v11 + 7) << 21);
  if (v13 == (*(v11 + 8) | (*(v11 + 9) << 7) | (*(v11 + 10) << 14) | (*(v11 + 11) << 21)))
  {
    return;
  }

  if (!*(v11 + 3) || (*(v11 + 3) & 0x70) != 0)
  {
    *buf = "MIDI-CI version not supported!";
    *&buf[8] = 30;
    midi::ci::make_nak_message(v88, v11, v12, 0, buf, v7);
    MIDICI::DeviceManager::sendMessage(v6, *(a1 + 20), *v85, v88);
    v20 = *&v88[8];
    if (!*&v88[8])
    {
      return;
    }

    goto LABEL_19;
  }

  v84 = *(v11 + 8) | (*(v11 + 9) << 7) | (*(v11 + 10) << 14) | (*(v11 + 11) << 21);
  if (v13 != *(v6 + 96))
  {
    v81 = *(v6 + 96);
    v82 = *(a1 + 16);
    DeviceWithMUID = MIDICI::DeviceManager::getDeviceWithMUID(*(v6 + 8), *(v6 + 16), v13, v82, *(a1 + 20));
    if (v84 == 0xFFFFFFF)
    {
      *v88 = v6;
      *&v88[8] = v82;
      *&v88[16] = 8257536;
      v90 = 0;
      v91 = 0;
      v89 = 0;
      v22 = DeviceWithMUID;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v89, v9, v8, v8 - v9);
      v83 = v22;
      v23 = *(v6 + 8);
      v24 = *(v86 + 2);
      if (v23 != v24)
      {
        v25 = *v88;
        v26 = *&v88[8];
        do
        {
          v27 = *v23;
          v28 = *(*v23 + 72);
          if (v26 != v28)
          {
            v29 = *(v27 + 76);
            if (v28)
            {
              v30 = v29 == 0;
            }

            else
            {
              v30 = 1;
            }

            if (v30 || (v31 = std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*v25 + 56), v28, v29, *(v27 + 168))) == 0)
            {
              v32 = 0;
            }

            else
            {
              v32 = *(v31 + 104);
            }

            MIDICI::DeviceManager::sendMessage(v25, *(v27 + 76), v32, &v88[16]);
          }

          ++v23;
        }

        while (v23 != v24);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      v33 = v86;
      v34 = v83;
      if (!v83)
      {
        if (*a3 != 8257536)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (!DeviceWithMUID)
      {
LABEL_46:
        v39 = *(a3 + 1);
        v40 = 28;
        if (v39[3] > 1u)
        {
          v40 = 30;
        }

        if (*(a3 + 2) - v39 >= v40 && v39[1] == 13 && v39[2] == 113)
        {
          midi::universal_sysex::message_view::message_view(buf, a3);
          if (*a3 != 8257536 || (v41 = *(a3 + 1), (*(a3 + 2) - v41) < 0xC) || *(v41 + 1) != 13)
          {
            __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
          }

          if (v84 == v81)
          {
            v42.var0 = *buf;
            MIDICI::DeviceManager::handleDiscoveryReply(v86, 0, *(a1 + 16), *(a1 + 20), v42, v85[0]);
            return;
          }

          goto LABEL_58;
        }

LABEL_56:
        if (v84 == 0xFFFFFFF || v13 == 0xFFFFFFF)
        {
          return;
        }

LABEL_58:
        *buf = a1 + 16;
        std::__tree<std::__value_type<unsigned int,MIDICI::SourceState>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,MIDICI::SourceState>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,MIDICI::SourceState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v86 + 104, *(a1 + 16));
        operator new();
      }

      v34 = DeviceWithMUID;
      uint28 = midi::sysex7::make_uint28(v11, v12, 8);
      v33 = v6;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (v36 != v37)
      {
        while (*(*v36 + 64) != uint28)
        {
          if (++v36 == v37)
          {
            goto LABEL_67;
          }
        }
      }

      if (v36 != v37)
      {
        v43 = *v36;
        if (*v36)
        {
          v44 = 0;
          v45 = *(a1 + 16);
          if (v45 && *(a1 + 20))
          {
            v46 = std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*v86 + 56), v45, *(a1 + 20), *(v43 + 168));
            if (v46)
            {
              v44 = *(v46 + 104);
            }

            else
            {
              v44 = 0;
            }
          }

          MIDICI::DeviceManager::sendMessage(v86, *(v43 + 76), v44, a3);
        }
      }
    }

LABEL_67:
    if (*a3 == 8257536)
    {
      v47 = *(a3 + 1);
      v48 = 28;
      if (v47[3] > 1u)
      {
        v48 = 30;
      }

      if (*(a3 + 2) - v47 >= v48 && v47[1] == 13 && v47[2] == 113)
      {
        midi::universal_sysex::message_view::message_view(buf, a3);
        if (*a3 != 8257536 || (v49 = *(a3 + 1), (*(a3 + 2) - v49) < 0xC) || *(v49 + 1) != 13)
        {
          __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
        }

        v50.var0 = *buf;
        MIDICI::DeviceManager::handleDiscoveryReply(v33, v34, *(a1 + 16), *(a1 + 20), v50, v85[0]);
        return;
      }
    }

    if (midi::ci::as<midi::ci::discovery_inquiry_view>(a3))
    {
      if (MIDICI::DeviceManager::isDiscoveryFromServer(v33, v10))
      {
        gMIDICIDeviceManagerLog();
        v17 = gMIDICIDeviceManagerLog(void)::logCat;
        if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 136315394;
        *&buf[4] = "CIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 965;
        v18 = "%25s:%-5d INFO: Received inquiry from self, ignoring..";
      }

      else
      {
        v54 = 0;
        v55 = *(a1 + 16);
        if (v55 && *(a1 + 20))
        {
          v56 = std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*v33 + 56), v55, *(a1 + 20), *(v34 + 168));
          if (v56)
          {
            v54 = *(v56 + 104);
          }

          else
          {
            v54 = 0;
          }
        }

        if (!MIDICI::DeviceManager::sendDiscoveryReply(v33, *(a1 + 20), v54, *v85))
        {
          return;
        }

        gMIDICIDeviceManagerLog();
        v17 = gMIDICIDeviceManagerLog(void)::logCat;
        if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 136315394;
        *&buf[4] = "CIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 975;
        v18 = "%25s:%-5d ERROR: Failed to send discovery reply message..";
      }

LABEL_100:
      v19 = buf;
      goto LABEL_101;
    }

    if (midi::universal_sysex::is_identity_request(a3, v51))
    {
      if (v84 != v81)
      {
        return;
      }

      if (!MIDICI::DeviceManager::sendIdentityReplyMessage(v86, *(a1 + 20), *v85))
      {
        return;
      }

      gMIDICIDeviceManagerLog();
      v17 = gMIDICIDeviceManagerLog(void)::logCat;
      if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 136315394;
      *&buf[4] = "CIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 981;
      v18 = "%25s:%-5d ERROR: Failed to send identity reply message..";
      goto LABEL_100;
    }

    v52 = midi::ci::as<midi::ci::endpoint_information_reply_view>(a3);
    if (v53)
    {
      MIDICI::DeviceManager::handleEndpointInformationReply(v34, v52);
      return;
    }

    v57 = midi::ci::as<midi::ci::invalidate_muid_view>(a3);
    if (v58)
    {
      v59 = midi::sysex7::make_uint28(*(v57 + 8), *(v57 + 16), 12);
      MIDICI::DeviceManager::handleInvalidateMUID(v33, v34, v59);
      return;
    }

    v60 = midi::ci::as<midi::ci::profile_inquiry_reply_view>(a3);
    if (v61)
    {
      MIDICI::DeviceManager::handleProfileInquiryReply(v34, v60);
      return;
    }

    v62 = midi::ci::as<midi::ci::profile_id_view>(a3);
    if (v63)
    {
      v64.var0 = v62;
      MIDICI::DeviceManager::handleProfileIDViewChange(v33, v34, v64);
      return;
    }

    v65 = midi::ci::as<midi::ci::property_exchange_capabilities_view>(a3);
    if ((v66 & 1) == 0)
    {
      *buf = midi::ci::as<midi::ci::get_property_data_view>(a3);
      buf[8] = v69;
      if (v69)
      {
        if (v84 == v81)
        {
          MIDICI::Device::handleGetProperty(*(v34 + 176), buf);
        }
      }

      else
      {
        v74 = midi::ci::as<midi::ci::profile_details_reply_view>(a3);
        if (v75)
        {
          if (v84 == v81)
          {
            MIDICI::DeviceManager::handleProfileDetailsReply(v86, v34, v74);
          }
        }

        else
        {
          v76 = midi::ci::as<midi::ci::midi_message_report_reply_view>(a3);
          if (v77)
          {
            if (v84 == v81 || v84 == 0xFFFFFFF)
            {
              MIDICI::DeviceManager::handleProcessInquiryReportReply(v86, v34, v76);
            }
          }

          else
          {
            v78 = midi::ci::as<midi::ci::midi_message_report_end_view>(a3);
            if ((v79 & 1) != 0 && (v84 == v81 || v84 == 0xFFFFFFF))
            {
              v80 = midi::sysex7::make_uint28(*(v78 + 8), *(v78 + 16), 4);
              MIDICI::DeviceManager::handleProcessInquiryReportEnded(v86, v34, v80);
            }
          }
        }
      }

      return;
    }

    v67 = *(v65 + 8);
    *(v34 + 170) = v67[12];
    if (v67[3] < 2u)
    {
      v68 = 0;
    }

    else
    {
      v68 = v67[13];
    }

    *(v34 + 171) = v68;
    if (v67[3] < 2u)
    {
      v70 = 0;
    }

    else
    {
      v70 = v67[14];
    }

    *(v34 + 172) = v70;
    if (v84 != v81)
    {
      return;
    }

    MIDICI::Device::makeGetResourceListInquiryMessage(buf, v34, *(v86 + 24));
    v71 = 0;
    v72 = *(v34 + 72);
    if (v72 && *(v34 + 76))
    {
      v73 = std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*v86 + 56), v72, *(v34 + 76), *(v34 + 168));
      if (v73)
      {
        v71 = *(v73 + 104);
      }

      else
      {
        v71 = 0;
      }
    }

    MIDICI::DeviceManager::sendMessage(v86, *(v34 + 76), v71, buf);
    v20 = *&buf[8];
    if (!*&buf[8])
    {
      return;
    }

LABEL_19:
    operator delete(v20);
    return;
  }

  isDiscoveryFromServer = MIDICI::DeviceManager::isDiscoveryFromServer(v6, *v88);
  v16 = *(v6 + 160);
  if (isDiscoveryFromServer)
  {
    *(v6 + 160) = 0;
    if (v16)
    {
      MEMORY[0x2383C8250](v16, 0x1000C40504FFAC1);
    }

    gMIDICIDeviceManagerLog();
    v17 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *v88 = 136315394;
      *&v88[4] = "CIDeviceManager.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 876;
      v18 = "%25s:%-5d INFO: Received inquiry from self, ignoring..";
      v19 = v88;
LABEL_101:
      _os_log_impl(&dword_2371C2000, v17, OS_LOG_TYPE_INFO, v18, v19, 0x12u);
    }
  }

  else
  {
    if (!v16)
    {
      operator new();
    }

    v38 = *(a1 + 20) | (*v85 << 32);
    *v88 = &unk_284A48830;
    *&v88[8] = v6;
    *&v88[16] = v38;
    v89 = v88;
    *&v88[21] = 0;
    v88[23] = 0;
    MIDICI::CIRetrier::attempt(v16, v88, v15);
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v88);
  }
}

void sub_23721CED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIDICI::DeviceManager::isDiscoveryFromServer(uint64_t a1, sysex7 *a2)
{
  if (*a2 != 8257536)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  v4 = 28;
  if (v3[3] > 1u)
  {
    v4 = 29;
  }

  if (*(a2 + 2) - v3 < v4 || v3[1] != 13 || v3[2] != 112)
  {
    return 0;
  }

  midi::universal_sysex::message_view::message_view(&device_identity, a2);
  if (*a2 != 8257536 || (v6 = *(a2 + 1), (*(a2 + 2) - v6) < 0xC) || *(v6 + 1) != 13)
  {
    __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
  }

  v7 = *(device_identity + 8);
  v8 = *(device_identity + 16);
  if ((v8 - v7) <= 7)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  if ((v7[4] | (v7[5] << 7) | (v7[6] << 14) | (v7[7] << 21)) != *(a1 + 96))
  {
    return 0;
  }

  device_identity = midi::sysex7::make_device_identity(v7, v8);
  v13 = v9;
  return device_identity == 0x1000100110000 && v9 == 2;
}

unint64_t *MIDICI::CIRetrier::attempt(unint64_t *result, uint64_t a2, __n128 a3)
{
  v4 = result;
  a3.n128_u64[0] = *result;
  if (*result <= 0.0 || (result = std::chrono::steady_clock::now().__d_.__rep_, a3.n128_f64[0] = ((result - v4[1]) / 1000000) * 0.001, a3.n128_f64[0] >= *v4))
  {
    if (*(v4 + 5) < *(v4 + 4))
    {
      v6 = *(v4 + 5);
      v5 = *(a2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v5 + 48))(v5, &v6, a3);
      ++*(v4 + 5);
      result = std::chrono::steady_clock::now().__d_.__rep_;
      v4[1] = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t MIDICI::DeviceManager::getDeviceWithMUID(MIDICI::DeviceManager *this, MIDICI::DeviceManager *a2, int a3, int a4, int a5)
{
  if (this != a2)
  {
    while (1)
    {
      v5 = *this;
      if (*(*this + 64) == a3 && *(v5 + 72) == a4 && *(v5 + 76) == a5)
      {
        break;
      }

      this = (this + 8);
      if (this == a2)
      {
        return 0;
      }
    }
  }

  if (this == a2)
  {
    return 0;
  }

  else
  {
    return *this;
  }
}

uint64_t midi::sysex7::make_uint28(midi::sysex7 *this, uint64_t a2, uint64_t a3)
{
  if (a3 + 3 >= (a2 - this))
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  return *(this + a3) | (*(this + a3 + 1) << 7) | (*(this + a3 + 2) << 14) | (*(this + a3 + 3) << 21);
}

void MIDICI::DeviceManager::handleDiscoveryReply(MIDICI::DeviceManager *this, const MIDICI::Device *a2, unsigned int a3, uint64_t a4, discovery_reply_view a5, char a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v15 = *(a5.var0 + 1);
    if (*(v15 + 3) < 2u || (v16 = *(v15 + 29), v16 == 127))
    {
      v17 = a3;
      v18 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a3);
      if (v18)
      {
        v19 = v18;
        if (MIDIEndpoint::IsPartOfUMPDevice(v18))
        {
          if (MIDIEndpoint::IsPartOfPhantomEntity(*(v19 + 9)))
          {
            v20 = *(a5.var0 + 1);
            if (*(v20 + 3) < 2u || (v16 = *(v20 + 28), v16 == 127) || !*(v20 + 28))
            {
              LOBYTE(v16) = 127;
              if (a3)
              {
                if (a4)
                {
                  v21 = std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*this + 88), a3, a4, a6);
                  if (v21)
                  {
                    LOBYTE(v16) = *(v21 + 96);
                  }
                }
              }
            }

            goto LABEL_35;
          }
        }
      }

      LOBYTE(v16) = 127;
    }

    else
    {
      v17 = a3;
    }

    v23 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v17);
    if (v23)
    {
      if (MIDIEndpoint::IsPartOfLegacyDevice(v23))
      {
        v24 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v17);
        if (v24)
        {
          memset(buf, 0, 24);
          memset(__p, 0, sizeof(__p));
          MIDIEndpoint::GetDeviceTopology(v24, buf, __p);
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          if (*buf)
          {
            operator delete(*buf);
          }
        }
      }
    }

LABEL_35:
    if (a3 && a4)
    {
      std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*this + 56), a3, a4, v16);
    }

    operator new();
  }

  if (*(a2 + 18) != a3 || *(a2 + 19) != a4)
  {
    goto LABEL_6;
  }

  v11 = *(a5.var0 + 1);
  if (*(a5.var0 + 2) - v11 <= 7uLL)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  if (*(a2 + 16) != (v11[4] | (v11[5] << 7) | (v11[6] << 14) | (v11[7] << 21)))
  {
LABEL_6:
    v12 = 0;
    if (a3 && a4)
    {
      v13 = std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(*(*this + 56), a3, a4, *(a2 + 168));
      if (v13)
      {
        v12 = *(v13 + 104);
      }

      else
      {
        v12 = 0;
      }
    }

    if (MIDICI::DeviceManager::sendInvalidateMUIDMessage(this, a4, v12, *(a2 + 16)))
    {
      gMIDICIDeviceManagerLog();
      v22 = gMIDICIDeviceManagerLog(void)::logCat;
      if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "CIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 538;
        _os_log_impl(&dword_2371C2000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to send invalidate MUID message..", buf, 0x12u);
      }
    }
  }
}

void sub_23721DAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIDICI::SourceState::shouldSendDiscoveryRequest(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v6 = *(a1 + 16);
  v4 = a1 + 16;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 == v4 || *(v7 + 32) > a2)
  {
LABEL_9:
    operator new();
  }

  v16 = &v15;
  v11 = std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 - 8, v15)[5];
  v13 = *(a3 + 24);
  if (v13)
  {
    if (v13 == a3)
    {
      v18 = v17;
      v12.n128_f64[0] = (*(*v13 + 24))(v13, v17);
    }

    else
    {
      v18 = (*(*v13 + 16))(v13);
    }
  }

  else
  {
    v18 = 0;
  }

  MIDICI::CIRetrier::attempt(v11, v17, v12);
  return std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v17);
}

uint64_t midi::ci::as<midi::ci::discovery_inquiry_view>(sysex7 *a1)
{
  if (*a1 != 8257536)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = 28;
  if (v2[3] > 1u)
  {
    v3 = 29;
  }

  if (*(a1 + 2) - v2 < v3 || v2[1] != 13 || v2[2] != 112)
  {
    return 0;
  }

  midi::universal_sysex::message_view::message_view(&v6, a1);
  if (*a1 != 8257536 || (v4 = *(a1 + 1), (*(a1 + 2) - v4) < 0xC) || *(v4 + 1) != 13)
  {
    __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
  }

  return 1;
}

uint64_t MIDICI::DeviceManager::sendDiscoveryReply(MIDICI::DeviceManager *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  midi::ci::message::make_with_payload_size(v9, 18, 113, *(this + 24), a4, 127);
  midi::sysex7::add_device_identity(v9, &kAppleDeviceIdentity);
  LOBYTE(__src) = 0;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &__src + 1, 1);
  __src = 0x10000;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &v13, 4);
  LOBYTE(__src) = 0;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &__src + 1, 1);
  LOBYTE(__src) = 127;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, __dst, &__src, &__src + 1, 1);
  v7 = MIDICI::DeviceManager::sendMessage(this, a2, a3, v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_23721DF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL midi::universal_sysex::is_identity_request(midi::universal_sysex *this, const midi::sysex7 *a2)
{
  v2 = *this;
  if ((*this | 0x10000) == 0x7F0000 && (v3 = *(this + 1), v4 = *(this + 2) - v3, v4 >= 2) && (*(v3 + 1) | (v2 >> 8)) == 0x7E06 && (v2 | 0x10000) == 0x7F0000 && v4 != 2)
  {
    return *(v3 + 2) == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MIDICI::DeviceManager::sendIdentityReplyMessage(MIDICI::DeviceManager *this, uint64_t a2, unsigned int a3)
{
  midi::universal_sysex::identity_reply::identity_reply(&v12, &kAppleDeviceIdentity);
  v9 = v12;
  v10 = v13;
  v11 = v14;
  v6 = v13;
  v7 = MIDICI::DeviceManager::sendMessage(this, a2, a3, &v9);
  if (v6)
  {
    operator delete(v6);
  }

  return v7;
}

void sub_23721E08C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t midi::ci::as<midi::ci::endpoint_information_reply_view>(sysex7 *a1)
{
  if (*a1 == 8257536 && (v2 = *(a1 + 1), v3 = *(a1 + 2) - v2, v3 >= 0xF) && v3 >= (v2[13] | (v2[14] << 7)) + 15 && v2[1] == 13 && v2[2] == 115)
  {
    midi::universal_sysex::message_view::message_view(&v8, a1);
    if (*a1 != 8257536 || (v4 = *(a1 + 1), (*(a1 + 2) - v4) < 0xC) || *(v4 + 1) != 13)
    {
      __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
    }

    v5 = v8 & 0xFFFFFFFFFFFFFF00;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void MIDICI::DeviceManager::handleEndpointInformationReply(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(v2 + 12))
  {
    v3 = *(a2 + 16);
    v4 = v3 - v2;
    if ((v3 - v2) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v3 - v2;
    if (v3 != v2)
    {
      memmove(&__dst, (v2 + 15), v4);
    }

    __dst.__r_.__value_.__s.__data_[v4] = 0;
    std::string::operator=(a1 + 5, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23721E270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIDICI::DeviceManager::handleInvalidateMUID(MIDICI::DeviceManager *this, MIDICI::Device *a2, int a3)
{
  if (*(this + 24) == a3)
  {

    MIDICI::DeviceManager::handleInvalidateManagerMUID(this, 0, 0);
  }

  else if (a2 && *(a2 + 16) == a3)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
    if (v5 != v4)
    {
      while (*v5 != a2)
      {
        if (++v5 == v4)
        {
          v5 = *(this + 2);
          break;
        }
      }
    }

    if (v4 != v5)
    {
      v6 = v5 + 1;
      if (v5 + 1 != v4)
      {
        do
        {
          v5 = v6;
          v7 = v6 - 1;
          v8 = *v6;
          *v6++ = 0;
          std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](v7, v8);
        }

        while (v6 != v4);
        v4 = *(this + 2);
      }

      while (v4 != v5)
      {
        std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](--v4, 0);
      }

      *(this + 2) = v5;
    }
  }
}

uint64_t midi::ci::as<midi::ci::profile_inquiry_reply_view>(sysex7 *a1)
{
  if (*a1 != 8257536)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a1 + 2) - v2;
  if (v3 < 0x10)
  {
    return 0;
  }

  if (v2[1] != 13)
  {
    return 0;
  }

  if (v2[2] != 33)
  {
    return 0;
  }

  v4 = 5 * (v2[12] | (v2[13] << 7));
  if (v3 < v4 + 16 || v3 < 5 * (v2[v4 + 14] | (v2[v4 + 15] << 7)) + v4 + 16)
  {
    return 0;
  }

  midi::universal_sysex::message_view::message_view(&v7, a1);
  if (*a1 != 8257536 || (v6 = *(a1 + 1), (*(a1 + 2) - v6) < 0xC) || *(v6 + 1) != 13)
  {
    __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
  }

  return v7;
}

void MIDICI::DeviceManager::handleProfileInquiryReply(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (a1)
  {
    v5 = *(a1 + 144);
    for (i = *(a1 + 152); i != v5; std::unique_ptr<MIDICI::Profile>::reset[abi:ne200100](i, 0))
    {
      --i;
    }

    *(a1 + 152) = v5;
    midi::ci::profile_inquiry_reply_view::make_profiles(v10, &v11, 12);
    v6 = v10[0];
    if (v10[0] != v10[1])
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if ((*(a2 + 16) - v7) <= 0xD)
    {
      __assert_rtn("make_uint14", "sysex.h", 232, "data_pos + 1 < data.size()");
    }

    midi::ci::profile_inquiry_reply_view::make_profiles(v9, &v11, 5 * (*(v7 + 12) | (*(v7 + 13) << 7)) + 14);
    if (v9[0] != v9[1])
    {
      operator new();
    }

    if (v9[0])
    {
      operator delete(v9[0]);
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    gMIDICIDeviceManagerLog();
    v8 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "CIDeviceManager.cpp";
      v14 = 1024;
      v15 = 632;
      _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to handleProfileInquiryReply for null device", buf, 0x12u);
    }
  }
}

void MIDICI::DeviceManager::handleProfileIDViewChange(MIDICI::DeviceManager *this, MIDICI::Device *a2, profile_id_view a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a3.var0 + 1);
    v4 = *(a3.var0 + 2);
    v5 = *(v3 + 12) | (*(v3 + 13) << 8);
    v30 = HIBYTE(*(v3 + 13));
    __s2 = v5;
    if ((v4 - v3) >= 3)
    {
      v8 = *(v3 + 2);
      if ((v8 - 36) < 2)
      {
        v10 = MIDICI::Device::profile(*(a2 + 18), *(a2 + 19), &__s2, 5uLL);
        if (v10)
        {
          *(v10 + 116) = v8 == 36;
          v11 = *this;
          v12 = *(v10 + 8);
          v26 = 0;
          UMPCIServerContext::sendNotificationForObject(v11, 1, v12, &v26);
          if (v26)
          {
            CFRelease(v26);
          }
        }
      }

      else if (v8 == 39)
      {
        v14 = *(a2 + 18);
        v13 = *(a2 + 19);
        if (v14 != v13)
        {
          while (1)
          {
            v15 = *(*v14 + 88);
            if (*(*v14 + 96) - v15 == 5)
            {
              v16 = *v15;
              v17 = *(v15 + 4);
              if (v16 == __s2 && v17 == v30)
              {
                break;
              }
            }

            if (++v14 == v13)
            {
              return;
            }
          }
        }

        if (v14 != v13)
        {
          v19 = v14 + 1;
          v20 = *(*v14 + 8);
          if (v14 + 1 != v13)
          {
            do
            {
              v14 = v19;
              v21 = v19 - 1;
              v22 = *v19;
              *v19++ = 0;
              std::unique_ptr<MIDICI::Profile>::reset[abi:ne200100](v21, v22);
            }

            while (v19 != v13);
            v13 = *(a2 + 19);
          }

          while (v13 != v14)
          {
            std::unique_ptr<MIDICI::Profile>::reset[abi:ne200100](--v13, 0);
          }

          *(a2 + 19) = v14;
          v23 = *this;
          v28 = 0;
          UMPCIServerContext::sendNotificationForObject(v23, 2, v20, &v28);
          if (v28)
          {
            CFRelease(v28);
          }

          v24 = *this;
          v25 = *(a2 + 2);
          v27 = 0;
          UMPCIServerContext::sendNotificationForObject(v24, 1, v25, &v27);
          if (v27)
          {
            CFRelease(v27);
          }
        }
      }

      else if (v8 == 38)
      {
        operator new();
      }
    }
  }

  else
  {
    gMIDICIDeviceManagerLog();
    v9 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "CIDeviceManager.cpp";
      v33 = 1024;
      v34 = 595;
      _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to handleProfileIDViewChange for null device", buf, 0x12u);
    }
  }
}

void sub_23721EA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t midi::ci::as<midi::ci::property_exchange_capabilities_view>(sysex7 *a1)
{
  if (*a1 == 8257536 && (v2 = *(a1 + 1), v3 = *(a1 + 2) - v2, v3 >= 0xD) && v2[1] == 13 && (v2[2] & 0xFE) == 0x30 && ((v4 = v2[3], v3 <= 0xE) ? (v5 = v4 > 1) : (v5 = 0), !v5))
  {
    midi::universal_sysex::message_view::message_view(&v10, a1);
    if (*a1 != 8257536 || (v6 = *(a1 + 1), (*(a1 + 2) - v6) < 0xC) || *(v6 + 1) != 13)
    {
      __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
    }

    v7 = v10 & 0xFFFFFFFFFFFFFF00;
    v8 = v10;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t midi::ci::as<midi::ci::profile_details_reply_view>(sysex7 *a1)
{
  if (*a1 == 8257536 && (v2 = *(a1 + 1), v3 = *(a1 + 2) - v2, v3 >= 0x14) && v3 >= (v2[18] | (v2[19] << 7)) + 20 && v2[1] == 13 && v2[2] == 41)
  {
    midi::universal_sysex::message_view::message_view(&v8, a1);
    if (*a1 != 8257536 || (v4 = *(a1 + 1), (*(a1 + 2) - v4) < 0xC) || *(v4 + 1) != 13)
    {
      __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
    }

    v5 = v8 & 0xFFFFFFFFFFFFFF00;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void MIDICI::DeviceManager::handleProfileDetailsReply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    gMIDICIDeviceManagerLog();
    v17 = gMIDICIDeviceManagerLog(void)::logCat;
    if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315394;
    v29 = "CIDeviceManager.cpp";
    v30 = 1024;
    v31 = 693;
    v16 = "%25s:%-5d ERROR: Failed to handleProfileDetailsReply for null device";
    v18 = v17;
    v19 = 18;
    goto LABEL_23;
  }

  v27[0] = &unk_284A48698;
  v27[1] = a3;
  v27[3] = v27;
  v5 = a1[21];
  v6 = a1[22];
  v34 = buf;
  std::__function::__func<MIDICI::DeviceManager::handleProfileDetailsReply(MIDICI::Device *,midi::ci::profile_details_reply_view,unsigned int)::$_0,std::allocator<MIDICI::DeviceManager::handleProfileDetailsReply(MIDICI::Device *,midi::ci::profile_details_reply_view,unsigned int)::$_0>,BOOL ()(ProfileDetailsTransaction *)>::__clone(v27, buf);
  if (v5 != v6)
  {
    while (1)
    {
      if ((*(**v5 + 16))(*v5, 1))
      {
        v26 = *v5;
        if (!v34)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v34 + 48))(v34, &v26))
        {
          break;
        }
      }

      if (++v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  std::__function::__value_func<BOOL ()(ProfileDetailsTransaction *)>::~__value_func[abi:ne200100](buf);
  if (v5 == a1[22])
  {
    std::__function::__value_func<BOOL ()(ProfileDetailsTransaction *)>::~__value_func[abi:ne200100](v27);
    goto LABEL_18;
  }

  v7 = *v5;
  std::__function::__value_func<BOOL ()(ProfileDetailsTransaction *)>::~__value_func[abi:ne200100](v27);
  if (!v7)
  {
LABEL_18:
    gMIDICIDeviceManagerLog();
    v9 = gMIDICIDeviceManagerLog(void)::logCat;
    if (!os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v20 = *(a3 + 8);
    v21 = *(a3 + 16) - v20;
    if (v21 <= 7)
    {
      __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
    }

    if (v21 <= 0xB)
    {
      __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
    }

    v22 = v20[4] | (v20[5] << 7) | (v20[6] << 14) | (v20[7] << 21);
    v23 = v20[8] | (v20[9] << 7);
    v24 = v20[10];
    v25 = v20[11];
    *buf = 136315906;
    v29 = "CIDeviceManager.cpp";
    v30 = 1024;
    v31 = 709;
    v32 = 1024;
    v33 = v22;
    LOWORD(v34) = 1024;
    *(&v34 + 2) = v23 | (v24 << 14) | (v25 << 21);
    v16 = "%25s:%-5d ERROR: Failed to find Profile Details transaction between %ud -> %ud";
    goto LABEL_22;
  }

  v8 = *(a3 + 8);
  if (*(a3 + 16) - v8 <= 0x13uLL)
  {
    __assert_rtn("make_uint14", "sysex.h", 232, "data_pos + 1 < data.size()");
  }

  ProfileDetailsTransaction::complete(v7, 0, v8 + 20, v8[18] | (v8[19] << 7));
  MIDICI::DeviceManager::removeTransaction(a1, v7);
  gMIDICIDeviceManagerLog();
  v9 = gMIDICIDeviceManagerLog(void)::logCat;
  if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
  {
    v10 = *(a3 + 8);
    v11 = *(a3 + 16) - v10;
    if (v11 <= 7)
    {
      __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
    }

    if (v11 <= 0xB)
    {
      __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
    }

    v12 = v10[4] | (v10[5] << 7) | (v10[6] << 14) | (v10[7] << 21);
    v13 = v10[8] | (v10[9] << 7);
    v14 = v10[10];
    v15 = v10[11];
    *buf = 136315906;
    v29 = "CIDeviceManager.cpp";
    v30 = 1024;
    v31 = 718;
    v32 = 1024;
    v33 = v12;
    LOWORD(v34) = 1024;
    *(&v34 + 2) = v13 | (v14 << 14) | (v15 << 21);
    v16 = "%25s:%-5d Completed Profile Details transaction between %ud -> %ud";
LABEL_22:
    v18 = v9;
    v19 = 30;
LABEL_23:
    _os_log_impl(&dword_2371C2000, v18, OS_LOG_TYPE_INFO, v16, buf, v19);
  }
}

void sub_23721F0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(ProfileDetailsTransaction *)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(ProfileDetailsTransaction *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t midi::ci::as<midi::ci::midi_message_report_reply_view>(sysex7 *a1)
{
  if (*a1 == 8257536 && (v2 = *(a1 + 1), (*(a1 + 2) - v2) >= 0x10) && *(v2 + 1) == 13 && *(v2 + 2) == 67)
  {
    midi::universal_sysex::message_view::message_view(&v7, a1);
    if (*a1 != 8257536 || (v3 = *(a1 + 1), (*(a1 + 2) - v3) < 0xC) || *(v3 + 1) != 13)
    {
      __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
    }

    v4 = v7 & 0xFFFFFFFFFFFFFF00;
    v5 = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void MIDICI::DeviceManager::handleProcessInquiryReportReply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(a2 + 200) = 2;
    v9[0] = &unk_284A48758;
    v9[1] = a3;
    v9[3] = v9;
    FirstTransaction = MIDICI::DeviceManager::findFirstTransactionMatching<ProcessInquiryTransaction>(a1, v9);
    std::__function::__value_func<BOOL ()(ProcessInquiryTransaction *)>::~__value_func[abi:ne200100](v9);
    if (FirstTransaction)
    {
      v5 = *(a3 + 8);
      v6 = v5[12];
      v7 = v5[14];
      LOBYTE(v5) = v5[15];
      FirstTransaction[5] = v6 & 0x7F;
      FirstTransaction[6] = v7 & 0x7F;
      FirstTransaction[7] = v5 & 0x7F;
    }
  }

  else
  {
    gMIDICIDeviceManagerLog();
    v8 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "CIDeviceManager.cpp";
      v12 = 1024;
      v13 = 757;
      _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to handleProfileDetailsReply for null device", buf, 0x12u);
    }
  }
}

unint64_t midi::ci::as<midi::ci::midi_message_report_end_view>(sysex7 *a1)
{
  if (*a1 == 8257536 && __PAIR64__(*(*(a1 + 1) + 2), *(*(a1 + 1) + 1)) == 0x440000000DLL)
  {
    midi::universal_sysex::message_view::message_view(&v6, a1);
    if (*a1 != 8257536 || (v2 = *(a1 + 1), (*(a1 + 2) - v2) < 0xC) || *(v2 + 1) != 13)
    {
      __assert_rtn("capability_inquiry_view", "capability_inquiry.h", 2486, "validate(sx)");
    }

    v3 = v6 & 0xFFFFFFFFFFFFFF00;
    v4 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void MIDICI::DeviceManager::handleProcessInquiryReportEnded(MIDICI::DeviceManager *this, MIDICI::Device *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a2 + 26);
    v5 = *(a2 + 27);
    *(a2 + 27) = v4;
    *(a2 + 50) = 0;
    v14 = &unk_284A487A0;
    v15 = a3;
    v16 = &v14;
    FirstTransaction = MIDICI::DeviceManager::findFirstTransactionMatching<ProcessInquiryTransaction>(this, &v14);
    std::__function::__value_func<BOOL ()(ProcessInquiryTransaction *)>::~__value_func[abi:ne200100](&v14);
    if (FirstTransaction)
    {
      v7 = CFDataCreate(0, v4, v5 - v4);
      v8 = v7;
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        applesauce::CF::construct_error(exception);
      }

      *buf = v7;
      v9 = CFGetTypeID(v7);
      if (v9 != CFDataGetTypeID())
      {
        v13 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v13, "Could not construct");
      }

      v10 = *(FirstTransaction + 64);
      *(FirstTransaction + 64) = v8;
      if (v10)
      {
        CFRelease(v10);
      }

      ProcessInquiryTransaction::complete(FirstTransaction, 0);
      MIDICI::DeviceManager::removeTransaction(this, FirstTransaction);
    }
  }

  else
  {
    gMIDICIDeviceManagerLog();
    v11 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "CIDeviceManager.cpp";
      v18 = 1024;
      v19 = 778;
      _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to handleProfileDetailsReply for null device", buf, 0x12u);
    }
  }
}

void sub_23721F5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

uint64_t MIDICI::DeviceManager::findFirstTransactionMatching<ProcessInquiryTransaction>(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v9 = v8;
      (*(*v5 + 24))(v5, v8);
    }

    else
    {
      v9 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v3 != v4)
  {
    while (1)
    {
      if ((*(**v3 + 16))(*v3, 2))
      {
        v7 = *v3;
        if (!v9)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v9 + 48))(v9, &v7))
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  std::__function::__value_func<BOOL ()(ProcessInquiryTransaction *)>::~__value_func[abi:ne200100](v8);
  if (v3 == *(a1 + 176))
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t std::__function::__value_func<BOOL ()(ProcessInquiryTransaction *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *MIDICI::DeviceManager::removeTransaction(uint64_t *result, uint64_t a2)
{
  v2 = result[21];
  v4 = result[22];
  v3 = (result + 21);
  if (v2 != v4)
  {
    v6 = result;
    while (*v2 != a2)
    {
      if (++v2 == v4)
      {
        return result;
      }
    }

    if (v2 != v4)
    {
      v7 = v2 + 1;
      if (v2 + 1 != v4)
      {
        do
        {
          v8 = *v7;
          if (*v7 != a2)
          {
            *v7 = 0;
            result = *v2;
            *v2 = v8;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v2;
          }

          ++v7;
        }

        while (v7 != v4);
        v4 = v6[22];
      }
    }
  }

  if (v4 != v2)
  {

    return std::vector<std::unique_ptr<InternalCITransaction>>::erase(v3, v2, v4);
  }

  return result;
}

uint64_t std::__function::__func<MIDICI::DeviceManager::handleProcessInquiryReportEnded(MIDICI::Device *,unsigned int,unsigned int)::$_0,std::allocator<MIDICI::DeviceManager::handleProcessInquiryReportEnded(MIDICI::Device *,unsigned int,unsigned int)::$_0>,BOOL ()(ProcessInquiryTransaction *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284A487A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL std::__function::__func<MIDICI::DeviceManager::handleProcessInquiryReportReply(MIDICI::Device *,midi::ci::midi_message_report_reply_view,unsigned int)::$_0,std::allocator<MIDICI::DeviceManager::handleProcessInquiryReportReply(MIDICI::Device *,midi::ci::midi_message_report_reply_view,unsigned int)::$_0>,BOOL ()(ProcessInquiryTransaction *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8);
  if (*(*(a1 + 8) + 16) - v2 <= 7uLL)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  return *(*a2 + 28) == (v2[4] | (v2[5] << 7) | (v2[6] << 14) | (v2[7] << 21));
}

uint64_t std::__function::__func<MIDICI::DeviceManager::handleProcessInquiryReportReply(MIDICI::Device *,midi::ci::midi_message_report_reply_view,unsigned int)::$_0,std::allocator<MIDICI::DeviceManager::handleProcessInquiryReportReply(MIDICI::Device *,midi::ci::midi_message_report_reply_view,unsigned int)::$_0>,BOOL ()(ProcessInquiryTransaction *)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_284A48758;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(ProfileDetailsTransaction *)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL std::__function::__func<MIDICI::DeviceManager::handleProfileDetailsReply(MIDICI::Device *,midi::ci::profile_details_reply_view,unsigned int)::$_0,std::allocator<MIDICI::DeviceManager::handleProfileDetailsReply(MIDICI::Device *,midi::ci::profile_details_reply_view,unsigned int)::$_0>,BOOL ()(ProfileDetailsTransaction *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 8) + 8);
  if ((*(*(a1 + 8) + 16) - v2) <= 7)
  {
    __assert_rtn("make_uint28", "sysex.h", 249, "data_pos + 3 < data.size()");
  }

  v3 = *a2;
  if (*(*a2 + 28) == (*(v2 + 4) | (*(v2 + 5) << 7) | (*(v2 + 6) << 14) | (*(v2 + 7) << 21)) && ((v4 = *(v3 + 37), v5 = *(v3 + 33), v6 = *(v2 + 13), *(v2 + 12) == v5) ? (v7 = (((v5 | (v4 << 32)) >> 8) & 0xFFFFFF) == (v6 & 0xFFFFFF)) : (v7 = 0), v7 ? (v8 = HIBYTE(v6) == v4) : (v8 = 0), v8))
  {
    return *(v3 + 32) == *(v2 + 17);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIDICI::DeviceManager::handleProfileDetailsReply(MIDICI::Device *,midi::ci::profile_details_reply_view,unsigned int)::$_0,std::allocator<MIDICI::DeviceManager::handleProfileDetailsReply(MIDICI::Device *,midi::ci::profile_details_reply_view,unsigned int)::$_0>,BOOL ()(ProfileDetailsTransaction *)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_284A48698;
  a2[1] = *(result + 8);
  return result;
}

uint64_t *std::unique_ptr<MIDICI::Profile>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    *v2 = &unk_284A46EC0;
    XCFObject<__CFDictionary const*>::~XCFObject(v2 + 24);
    BaseOpaqueObject::~BaseOpaqueObject(v2);
    MEMORY[0x2383C8250]();
  }

  return a1;
}

void MIDICI::DeviceManager::handleInvalidateManagerMUID(unsigned int *a1, uint64_t a2, __int16 a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = MUIDGenerator::instance(a1);
  v7 = MUIDGenerator::operator()(v6);
  gMIDICIDeviceManagerLog();
  v8 = gMIDICIDeviceManagerLog(void)::logCat;
  if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
  {
    *v13 = 136315650;
    *&v13[4] = "CIDeviceManager.cpp";
    *&v13[12] = 1024;
    *&v13[14] = 559;
    *&v13[18] = 1024;
    *&v13[20] = v7;
    _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Received a message from myself, generating new MUID: %u", v13, 0x18u);
  }

  if ((a2 & 0x100000000) != 0 && (a3 & 0x100) != 0 && !MIDICI::DeviceManager::sendInvalidateMUIDMessage(a1, a2, a3, a1[24]))
  {
    gMIDICIDeviceManagerLog();
    v9 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      v10 = a1[24];
      *v13 = 136315650;
      *&v13[4] = "CIDeviceManager.cpp";
      *&v13[12] = 1024;
      *&v13[14] = 563;
      *&v13[18] = 1024;
      *&v13[20] = v10;
      _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Asking the device to invalidate its MUID: %u", v13, 0x18u);
    }
  }

  a1[24] = v7;
  v11 = *a1;
  global_queue = dispatch_get_global_queue(0, 0);
  *v13 = MEMORY[0x277D85DD0];
  *&v13[8] = 0x40000000;
  *&v13[16] = ___ZN18UMPCIServerContext27sendMUIDChangedNotificationEj_block_invoke;
  v14 = &__block_descriptor_tmp_2044;
  v15 = v11;
  v16 = v7;
  dispatch_async(global_queue, v13);
}

MIDICI::Device *std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](MIDICI::Device **a1, MIDICI::Device *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MIDICI::Device::~Device(result);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t MIDICI::DeviceManager::sendInvalidateMUIDMessage(MIDICI::DeviceManager *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  midi::ci::message::make_with_payload_size(v10, 4, 126, *(this + 24), 0xFFFFFFFu, 127);
  if (a4 >> 28)
  {
    __assert_rtn("add_uint28", "sysex.h", 238, "value <= uint28_max");
  }

  __src[0] = a4 & 0x7F;
  __src[1] = (a4 >> 7) & 0x7F;
  __src[2] = (a4 >> 14) & 0x7F;
  __src[3] = a4 >> 21;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, __p[1], __src, &v13, 4);
  v8 = MIDICI::DeviceManager::sendMessage(this, a2, a3, v10);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_2372200A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::__function::__func<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#2},std::allocator<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  gMIDICIDeviceManagerLog();
  v5 = gMIDICIDeviceManagerLog(void)::logCat;
  if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 16);
    v12 = 136315906;
    v13 = "CIDeviceManager.cpp";
    v14 = 1024;
    v15 = 948;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v3;
    _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Failed to find cached device with MUID: %d, sending discovery inquiry (attempt %d)..", &v12, 0x1Eu);
  }

  gMIDICIDeviceManagerLog();
  v7 = gMIDICIDeviceManagerLog(void)::logCat;
  if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 20);
    v12 = 136315650;
    v13 = "CIDeviceManager.cpp";
    v14 = 1024;
    v15 = 949;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Source EndpointRef: %d", &v12, 0x18u);
  }

  gMIDICIDeviceManagerLog();
  v9 = gMIDICIDeviceManagerLog(void)::logCat;
  if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 24);
    v12 = 136315650;
    v13 = "CIDeviceManager.cpp";
    v14 = 1024;
    v15 = 950;
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&dword_2371C2000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Destination EndpointRef: %d", &v12, 0x18u);
  }

  if (MIDICI::DeviceManager::sendDiscoveryInquiry(v4, *(a1 + 20), *(a1 + 24), *(a1 + 28)))
  {
    gMIDICIDeviceManagerLog();
    v11 = gMIDICIDeviceManagerLog(void)::logCat;
    if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "CIDeviceManager.cpp";
      v14 = 1024;
      v15 = 955;
      _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d ERROR: Failed to send discovery inquiry message..", &v12, 0x12u);
    }
  }
}

uint64_t MIDICI::DeviceManager::sendDiscoveryInquiry(MIDICI::DeviceManager *this, int a2, uint64_t a3, int a4)
{
  v8 = a3;
  v9 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a3);
  if (v9 && MIDIEndpoint::IsPartOfLegacyDevice(v9))
  {
    v10 = UMPCI_OutputPathIDForDeviceDestination(a3);

    return MIDICI::DeviceManager::sendDiscoveryInquiryMessage(this, a3, 0, v10);
  }

  else
  {
    result = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v8);
    if (result)
    {
      v12 = result;
      result = MIDIEndpoint::IsPartOfUMPDevice(result);
      if (result)
      {
        result = MIDIEndpoint::IsPartOfPhantomEntity(*(v12 + 72));
        if (result)
        {
          v13 = *this;
          v20 = a3;
          v21 = a2;
          v14 = *(v13 + 24);
          if (!v14)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          result = (*(*v14 + 48))(v14, &v21, &v20);
          if (result)
          {
            v15 = result;
            for (i = 0; ; ++i)
            {
              v17 = *(v15 + 152);
              v18 = *(v15 + 160);
              if (i >= ((v18 - v17) >> 3))
              {
                break;
              }

              if (v17 != v18)
              {
                while (*(*v17 + 96) != i)
                {
                  if (++v17 == v18)
                  {
                    goto LABEL_21;
                  }
                }
              }

              if (v17 != v18)
              {
                v19 = *v17;
                if (v19)
                {
                  if (*(v19 + 104) == a4)
                  {
                    result = MIDICI::DeviceManager::sendDiscoveryInquiryMessage(this, a3, 0, *(v19 + 96));
                    if (result)
                    {
                      return result;
                    }
                  }
                }
              }

LABEL_21:
              ;
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t UMPCI_OutputPathIDForDeviceDestination(unsigned int a1)
{
  v2 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a1);
  if (!v2)
  {
    return 0;
  }

  memset(v9, 0, sizeof(v9));
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (MIDIEndpoint::GetDeviceTopology(v2, v9, &__p))
  {
    v3 = __p;
    if (__p != v7)
    {
      while (*v3 != a1)
      {
        v3 += 4;
        if (v3 == v7)
        {
          v3 = v7;
          break;
        }
      }
    }

    if (v7 == v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v3 - __p) >> 2;
    }

    if (!__p)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_15;
    }
  }

  operator delete(__p);
LABEL_15:
  if (v9[0])
  {
    operator delete(v9[0]);
  }

  return v4;
}

void sub_237220684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#2},std::allocator<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A48878;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 29) = 0;
  *(a2 + 31) = 0;
  return result;
}

uint64_t UMPCIManager<MIDICI::Device>::addPairWithoutCheck(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = *a2;
    v14 = v9;
    v15 = (8 * v9);
    *a2 = 0;
    v16 = &v15[-v14];
    *v15 = v13;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a2 = 0;
    *v5 = v3;
    v6 = v5 + 8;
  }

  a1[2] = v6;
  return v3;
}

uint64_t std::function<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(uint64_t a1, int a2, int a3, char a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

void std::__function::__func<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#1},std::allocator<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  gMIDICIDeviceManagerLog();
  v5 = gMIDICIDeviceManagerLog(void)::logCat;
  if (os_log_type_enabled(gMIDICIDeviceManagerLog(void)::logCat, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "CIDeviceManager.cpp";
    v8 = 1024;
    v9 = 888;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d NOTICE: Suspected MUID collision, attempt %d to invalidate server MUID..", &v6, 0x18u);
  }

  MIDICI::DeviceManager::handleInvalidateManagerMUID(v4, *(a1 + 16) | 0x100000000, *(a1 + 20) | 0x100);
}

__n128 std::__function::__func<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#1},std::allocator<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0::operator() const(unsigned char,midi::sysex7 const&)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A48830;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

__n128 std::__function::__func<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0,std::allocator<MIDICI::DeviceManager::processBackground(unsigned int,MIDIEventList const*)::$_0>,void ()(unsigned char,midi::sysex7 const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A487E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_0,std::allocator<MIDICI::DeviceManager::DeviceManager(UMPCIServerContext &)::$_0>,void ()(unsigned int,MIDIEventList const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A485D8;
  a2[1] = v2;
  return result;
}

void MIDICI::DeviceManager::setMIDIRunning(MIDICI::DeviceManager *this, int a2)
{
  if (a2)
  {
    v3 = *(this + 16);
    v4 = this + 136;
    if (v3 != this + 136)
    {
      do
      {
        v5 = UMPCI_OutputPathIDForDeviceDestination(*(v3 + 7));
        MIDICI::DeviceManager::sendDiscoveryInquiryMessage(this, *(v3 + 7), 0, v5);
        v6 = *(v3 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v3 + 2);
            v8 = *v7 == v3;
            v3 = v7;
          }

          while (!v8);
        }

        v3 = v7;
      }

      while (v7 != v4);
    }

    std::__tree<std::__value_type<__CFString const*,unsigned int>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned int>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned int>>>::destroy(*(this + 17));
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 16) = v4;
  }
}

MIDICI::Device **std::vector<std::unique_ptr<MIDICI::Device>>::erase(uint64_t a1, MIDICI::Device **a2, MIDICI::Device **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4++ = 0;
        std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](v7++, v8);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](--v6, 0);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void std::default_delete<ProcessInquiryTransaction>::operator()[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2383C8250);
}

uint64_t std::__function::__func<MIDICI::DeviceManager::performProcessInquiry(applesauce::CF::DictionaryRef const&,applesauce::CF::ObjectRef<__CFDictionary *>)::$_0,std::allocator<MIDICI::DeviceManager::performProcessInquiry(applesauce::CF::DictionaryRef const&,applesauce::CF::ObjectRef<__CFDictionary *>)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 64) != *(result + 16))
    {
      if (++v2 == v3)
      {
        return result;
      }
    }
  }

  if (v2 != v3)
  {
    v4 = *v2;
    if (v4)
    {
      *(v4 + 216) = *(v4 + 208);
      *(v4 + 200) = 0;
    }
  }

  return result;
}

__n128 std::__function::__func<MIDICI::DeviceManager::performProcessInquiry(applesauce::CF::DictionaryRef const&,applesauce::CF::ObjectRef<__CFDictionary *>)::$_0,std::allocator<MIDICI::DeviceManager::performProcessInquiry(applesauce::CF::DictionaryRef const&,applesauce::CF::ObjectRef<__CFDictionary *>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A486E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t MIDIProcessXPC::GetObjectTree(MIDIProcessXPC *this, int *a2)
{
  v3 = *(this + 58);
  swix::encode_message::encode_message(&v20, 190206369);
  xpc_dictionary_set_BOOL(xdict, "isBigEndian", 0);
  v4 = *(v3 + 8);
  if (!v4)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(&v18, v4, &v20);
  v5 = swix::decode_message::decode<int>(object, ".error");
  if (v5)
  {
    LODWORD(v15) = v5;
    v16 = 0;
  }

  else
  {
    v6 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(&v17, object, "data");
    v7 = v17;
    v8 = xpc_null_create();
    v17 = v8;
    xpc_release(v6);
    xpc_release(v8);
    swix::result<swix::data>::result(&v15, v7);
    xpc_release(v7);
  }

  xpc_release(object);
  xpc_release(xdict);
  if (v16 == 1)
  {
    *a2 = 0;
  }

  else
  {
    v9 = v15;
    *a2 = v15;
    if (v9)
    {
      return 0;
    }
  }

  v11 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v11 = xpc_null_create();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v11);
  length = xpc_data_get_length(v11);
  applesauce::CF::make_DataRef(&v18, bytes_ptr, length);
  v10 = v18;
  xpc_release(v11);
  if (v16)
  {
    xpc_release(v15);
  }

  return v10;
}

void sub_237221028(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  v15 = v14;
  xpc_release(v15);
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237220F6CLL);
}