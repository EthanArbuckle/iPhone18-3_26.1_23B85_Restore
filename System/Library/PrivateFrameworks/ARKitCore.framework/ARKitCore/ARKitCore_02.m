void sub_1C2538664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, void *a47, uint64_t a48, char a49, void *a50)
{
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&a46, a47);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(&a49, a50);
  _Unwind_Resume(a1);
}

void *ARPlaneUpdateQueue::insert(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v20 = a2;
  *(&v20 + 1) = a3;
  result = std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>((a1 + 6), &v20);
  if (a1 + 7 == result)
  {
    v7 = *(a4 + 8);
    v8 = *(a4 + 10);
    v9 = *(a4 + 11);
    v17[10] = *(a4 + 9);
    v17[11] = v8;
    v17[12] = v9;
    v10 = *(a4 + 4);
    v11 = *(a4 + 6);
    v12 = *(a4 + 7);
    v17[6] = *(a4 + 5);
    v17[7] = v11;
    v17[8] = v12;
    v17[9] = v7;
    v13 = *a4;
    v14 = *(a4 + 1);
    v17[0] = v20;
    v17[1] = v13;
    v15 = *(a4 + 2);
    v16 = *(a4 + 3);
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = v16;
    v17[5] = v10;
    std::set<std::array<unsigned char,16ul>>::set[abi:ne200100](v18, (a4 + 24));
    v19 = a4[27];
    std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::push_back(a1, v17);

    std::__tree<std::array<unsigned char,16ul>>::destroy(v18, v18[1]);
    return std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>((a1 + 6), &v20);
  }

  return result;
}

void sub_1C2538944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ARTexturedPlane>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ARTexturedPlane>::push_back[abi:ne200100](uint64_t *a1, id *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ARTexturedPlane>::__emplace_back_slow_path<ARTexturedPlane const&>(a1, a2);
  }

  else
  {
    std::vector<ARTexturedPlane>::__construct_one_at_end[abi:ne200100]<ARTexturedPlane const&>(a1, a2);
    result = v3 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>(uint64_t a1, unsigned __int8 *a2)
{
  result = *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__construct_node<std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>();
  }

  return result;
}

void sub_1C2538D10(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    std::__tree<std::array<unsigned char,16ul>>::destroy(a2 + 240, *(a2 + 248));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::push_back(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = 2 * (v4 - v5) + ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x11)) + 240 * (v7 % 0x11);
  *v8 = *a2;
  v9 = *(a2 + 128);
  v11 = *(a2 + 80);
  v10 = *(a2 + 96);
  *(v8 + 112) = *(a2 + 112);
  *(v8 + 128) = v9;
  *(v8 + 80) = v11;
  *(v8 + 96) = v10;
  v12 = *(a2 + 192);
  v14 = *(a2 + 144);
  v13 = *(a2 + 160);
  *(v8 + 176) = *(a2 + 176);
  *(v8 + 192) = v12;
  *(v8 + 144) = v14;
  *(v8 + 160) = v13;
  v15 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = *(a2 + 64);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 64) = v17;
  *(v8 + 16) = v15;
  *(v8 + 32) = v16;
  *(v8 + 208) = *(a2 + 208);
  v18 = (a2 + 216);
  v19 = *(a2 + 216);
  *(v8 + 216) = v19;
  v20 = v8 + 216;
  v21 = *(a2 + 224);
  *(v8 + 224) = v21;
  if (v21)
  {
    *(v19 + 16) = v20;
    *(a2 + 208) = v18;
    *v18 = 0;
    *(a2 + 224) = 0;
  }

  else
  {
    *(v8 + 208) = v20;
  }

  v22 = *(a2 + 232);
  *(a2 + 232) = 0;
  *(v8 + 232) = v22;
  ++v3[5];
  return result;
}

void *std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x11;
  v3 = v1 - 17;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v10);
}

void sub_1C2539038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::array<unsigned char,16ul>>::__erase_unique<std::array<unsigned char,16ul>>(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = std::__tree<std::array<unsigned char,16ul>>::find<std::array<unsigned char,16ul>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::array<unsigned char,16ul>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::array<unsigned char,16ul>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::pop_front(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x11uLL)) + 240 * (a1[2].i64[0] % 0x11uLL);

  std::__tree<std::array<unsigned char,16ul>>::destroy(v2 + 208, *(v2 + 216));
  a1[2] = vaddq_s64(a1[2], xmmword_1C25C9490);

  return std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x11)
  {
    a2 = 1;
  }

  if (v2 < 0x22)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 17;
  }

  return v4 ^ 1u;
}

id std::vector<ARTexturedPlane>::__construct_one_at_end[abi:ne200100]<ARTexturedPlane const&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 3);
  *(v4 + 32) = *(a2 + 2);
  *(v4 + 48) = v7;
  *v4 = v5;
  *(v4 + 16) = v6;
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = *(a2 + 7);
  *(v4 + 96) = *(a2 + 6);
  *(v4 + 112) = v10;
  *(v4 + 64) = v8;
  *(v4 + 80) = v9;
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v13 = *(a2 + 11);
  *(v4 + 160) = *(a2 + 10);
  *(v4 + 176) = v13;
  *(v4 + 128) = v11;
  *(v4 + 144) = v12;
  std::set<std::array<unsigned char,16ul>>::set[abi:ne200100]((v4 + 192), (a2 + 24));
  result = a2[27];
  *(v4 + 216) = result;
  *(a1 + 8) = v4 + 224;
  return result;
}

uint64_t std::vector<ARTexturedPlane>::__emplace_back_slow_path<ARTexturedPlane const&>(uint64_t *a1, id *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v26 = a1;
  if (v6)
  {
    std::allocator<ARTexturedPlane>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 224 * v2;
  v23 = 0;
  v24 = v7;
  v25 = v7;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 2);
  *(v7 + 48) = v10;
  v11 = *(a2 + 7);
  v13 = *(a2 + 4);
  v12 = *(a2 + 5);
  *(v7 + 96) = *(a2 + 6);
  *(v7 + 112) = v11;
  *(v7 + 64) = v13;
  *(v7 + 80) = v12;
  v14 = *(a2 + 11);
  v16 = *(a2 + 8);
  v15 = *(a2 + 9);
  *(v7 + 160) = *(a2 + 10);
  *(v7 + 176) = v14;
  *(v7 + 128) = v16;
  *(v7 + 144) = v15;
  *v7 = v8;
  *(v7 + 16) = v9;
  std::set<std::array<unsigned char,16ul>>::set[abi:ne200100]((v7 + 192), (a2 + 24));
  *(v7 + 216) = a2[27];
  *&v25 = v25 + 224;
  v17 = a1[1];
  v18 = v24 + *a1 - v17;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ARTexturedPlane>,ARTexturedPlane*>(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  v20 = a1[2];
  v22 = v25;
  *(a1 + 1) = v25;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v23 = v19;
  v24 = v19;
  std::__split_buffer<ARTexturedPlane>::~__split_buffer(&v23);
  return v22;
}

void sub_1C25397B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ARTexturedPlane>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ARTexturedPlane>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ARTexturedPlane>,ARTexturedPlane*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v23 = a4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  if (a2 != a3)
  {
    v4 = 0;
    do
    {
      v5 = a4 + v4;
      v6 = *(a2 + v4);
      v7 = *(a2 + v4 + 16);
      v8 = *(a2 + v4 + 48);
      *(v5 + 32) = *(a2 + v4 + 32);
      *(v5 + 48) = v8;
      *v5 = v6;
      *(v5 + 16) = v7;
      v9 = *(a2 + v4 + 64);
      v10 = *(a2 + v4 + 80);
      v11 = *(a2 + v4 + 112);
      *(v5 + 96) = *(a2 + v4 + 96);
      *(v5 + 112) = v11;
      *(v5 + 64) = v9;
      *(v5 + 80) = v10;
      v12 = *(a2 + v4 + 128);
      v13 = *(a2 + v4 + 144);
      v14 = *(a2 + v4 + 176);
      *(v5 + 160) = *(a2 + v4 + 160);
      *(v5 + 176) = v14;
      *(v5 + 128) = v12;
      *(v5 + 144) = v13;
      *(v5 + 192) = *(a2 + v4 + 192);
      v15 = (a2 + v4 + 200);
      v16 = *v15;
      *(a4 + v4 + 200) = *v15;
      v17 = a4 + v4 + 200;
      v18 = *(a2 + v4 + 208);
      *(v5 + 208) = v18;
      if (v18)
      {
        *(v16 + 16) = v17;
        *(a2 + v4 + 192) = v15;
        *v15 = 0;
        *(a2 + v4 + 208) = 0;
      }

      else
      {
        *(v5 + 192) = v17;
      }

      v19 = *(a2 + v4 + 216);
      *(a2 + v4 + 216) = 0;
      *(a4 + v4 + 216) = v19;
      v4 += 224;
    }

    while (a2 + v4 != a3);
    v24 = a4 + v4;
  }

  v22 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<ARTexturedPlane>,ARTexturedPlane*,ARTexturedPlane*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ARTexturedPlane>,ARTexturedPlane*>>::~__exception_guard_exceptions[abi:ne200100](v21);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ARTexturedPlane>,ARTexturedPlane*,ARTexturedPlane*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 192;
    do
    {

      std::__tree<std::array<unsigned char,16ul>>::destroy(v4, *(v4 + 8));
      v5 = v4 + 32;
      v4 += 224;
    }

    while (v5 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ARTexturedPlane>,ARTexturedPlane*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ARTexturedPlane>,std::reverse_iterator<ARTexturedPlane*>,std::reverse_iterator<ARTexturedPlane*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ARTexturedPlane>,std::reverse_iterator<ARTexturedPlane*>,std::reverse_iterator<ARTexturedPlane*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      std::__tree<std::array<unsigned char,16ul>>::destroy(v6 - 32, *(v6 - 24));
      v6 -= 224;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<ARTexturedPlane>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;

    std::__tree<std::array<unsigned char,16ul>>::destroy(i - 32, *(i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<std::pair<std::array<unsigned char,16ul>,ARTexturedPlane>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x11];
    v7 = *v6 + 240 * (v5 % 0x11);
    v8 = v2[(a1[5] + v5) / 0x11] + 240 * ((a1[5] + v5) % 0x11);
    if (v7 != v8)
    {
      do
      {

        std::__tree<std::array<unsigned char,16ul>>::destroy(v7 + 208, *(v7 + 216));
        v7 += 240;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 8;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 17;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<void const**>::~__split_buffer(a1);
}

void std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::destroy(a1, a2[1]);
    std::__tree<std::array<unsigned char,16ul>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E817BBC0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void *std::__tree<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,std::set<std::array<unsigned char,16ul>>>>>::find<std::array<unsigned char,16ul>>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  do
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v3 + v6 + 32);
      v8 = a2[v6];
      if (v7 != v8)
      {
        break;
      }

      if (++v6 == 16)
      {
        v5 = v3;
        goto LABEL_10;
      }
    }

    if (v7 >= v8)
    {
      v5 = v3;
    }

    v3 += v7 < v8;
LABEL_10:
    v3 = *v3;
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  for (i = 32; i != 48; ++i)
  {
    v10 = *a2;
    v11 = *(v5 + i);
    if (v10 != v11)
    {
      break;
    }

    ++a2;
  }

  if (v10 < v11)
  {
    return v2;
  }

  return v5;
}

void *std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<std::array<unsigned char,16ul>,ARTexturedPlane>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *> *,long>>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_hint_unique_key_args<std::array<unsigned char,16ul>,std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_hint_unique_key_args<std::array<unsigned char,16ul>,std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>(void *a1, void *a2, unsigned __int8 *a3)
{
  result = *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__construct_node<std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(void *a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  if (a1 + 1 == a2)
  {
LABEL_7:
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
    }

    else
    {
      if (v8)
      {
        v9 = *a2;
        do
        {
          v10 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        v16 = a2;
        do
        {
          v10 = v16[2];
          v17 = *v10 == v16;
          v16 = v10;
        }

        while (v17);
      }

      v18 = 0;
      while (1)
      {
        v19 = *(v10 + v18 + 32);
        v20 = a5[v18];
        if (v19 != v20)
        {
          break;
        }

        if (++v18 == 16)
        {
          return std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
        }
      }

      if (v19 >= v20)
      {
        return std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
      }
    }

    if (v8)
    {
      *a3 = v10;
      return v10 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v5 = 0;
  while (1)
  {
    v6 = a5[v5];
    v7 = *(a2 + v5 + 32);
    if (v6 != v7)
    {
      break;
    }

    if (++v5 == 16)
    {
      goto LABEL_12;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_7;
  }

LABEL_12:
  v11 = 0;
  while (1)
  {
    v12 = *(a2 + v11 + 32);
    v13 = a5[v11];
    if (v12 != v13)
    {
      break;
    }

    if (++v11 == 16)
    {
      goto LABEL_21;
    }
  }

  if (v12 >= v13)
  {
LABEL_21:
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      a4 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v21 = a2;
    do
    {
      a4 = v21[2];
      v17 = *a4 == v21;
      v21 = a4;
    }

    while (!v17);
  }

  if (a4 != a1 + 1)
  {
    v22 = 0;
    while (1)
    {
      v23 = a5[v22];
      v24 = *(a4 + v22 + 32);
      if (v23 != v24)
      {
        break;
      }

      if (++v22 == 16)
      {
        return std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
      }
    }

    if (v23 >= v24)
    {
      return std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__find_equal<std::array<unsigned char,16ul>>(a1, a3, a5);
    }
  }

  if (v14)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t **std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__tree_node<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v22 = result;
    v23 = v8;
    v24 = v8;
    if (v8)
    {
      v23 = std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 2) = *(v9 + 2);
          v10 = *(v9 + 10);
          v12 = *(v9 + 7);
          v11 = *(v9 + 8);
          *(v8 + 9) = *(v9 + 9);
          *(v8 + 10) = v10;
          *(v8 + 7) = v12;
          *(v8 + 8) = v11;
          v13 = *(v9 + 14);
          v15 = *(v9 + 11);
          v14 = *(v9 + 12);
          *(v8 + 13) = *(v9 + 13);
          *(v8 + 14) = v13;
          *(v8 + 11) = v15;
          *(v8 + 12) = v14;
          v16 = *(v9 + 3);
          v17 = *(v9 + 4);
          v18 = *(v9 + 6);
          *(v8 + 5) = *(v9 + 5);
          *(v8 + 6) = v18;
          *(v8 + 3) = v16;
          *(v8 + 4) = v17;
          v19 = v8;
          if (v8 != v9)
          {
            std::__tree<std::array<unsigned char,16ul>>::__assign_multi<std::__tree_const_iterator<std::array<unsigned char,16ul>,std::__tree_node<std::array<unsigned char,16ul>,void *> *,long>>(v8 + 30, v9[30], v9 + 31);
            v19 = v24;
          }

          objc_storeStrong(v8 + 33, v9[33]);
          std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__node_insert_multi(v5, v19);
          v8 = v23;
          v24 = v23;
          if (v23)
          {
            v23 = std::__tree<std::array<unsigned char,16ul>>::_DetachedTreeCache::__detach_next(v23);
          }

          v20 = v9[1];
          if (v20)
          {
            do
            {
              a2 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v21 = *a2 == v9;
              v9 = a2;
            }

            while (!v21);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v22);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_multi<std::pair<std::array<unsigned char,16ul> const,ARTexturedPlane> const&>();
  }

  return result;
}

void sub_1C253A220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (2)
    {
      while (2)
      {
        v3 = v4;
        v5 = 32;
        while (1)
        {
          v6 = *(a2 + v5);
          v7 = *(v3 + v5);
          if (v6 != v7)
          {
            break;
          }

          if (++v5 == 48)
          {
            goto LABEL_9;
          }
        }

        if (v6 < v7)
        {
          v4 = *v3;
          v8 = v3;
          if (*v3)
          {
            continue;
          }

          goto LABEL_12;
        }

        break;
      }

LABEL_9:
      v4 = v3[1];
      if (v4)
      {
        continue;
      }

      break;
    }

    v8 = v3 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_12:
  std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__insert_node_at(a1, v3, v8, a2);
  return a2;
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t createUUID(void)
{
  v2[2] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  [v0 getUUIDBytes:v2];

  return v2[0];
}

uint64_t toUUID(const __CFUUID *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:a1];
  [v1 getUUIDBytes:v3];

  return v3[0];
}

id ARCreateTexture(uint64_t a1)
{
  v1 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:81 width:a1 height:a1 mipmapped:0];
  [v1 setUsage:5];
  v2 = +[ARSharedGPUDevice sharedInstance];
  v3 = [v2 device];

  v4 = [v3 newTextureWithDescriptor:v1];
  [v4 setLabel:@"com.apple.arkit.planetexture"];

  return v4;
}

void sub_1C253A640(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void convert(float32x4_t *a1@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  *v3.i64 = ARVisionToRenderingCoordinateTransform();
  v40 = v3;
  v41 = v4;
  v42 = v5;
  v43 = v6;
  CV3DPlaneDetectionPlaneTransformationToWorld();
  v7 = 0;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  do
  {
    *(&v44 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v48 + v7))), v41, *(&v48 + v7), 1), v42, *(&v48 + v7), 2), v43, *(&v48 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v36 = v44;
  v38 = v45;
  v32 = v47;
  v34 = v46;
  *&v12 = ARRenderingToVisionCoordinateTransform();
  v13 = 0;
  v48 = v12;
  v49 = v14;
  v50 = v15;
  v51 = v16;
  do
  {
    *(&v44 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v48 + v13))), v38, *(&v48 + v13), 1), v34, *(&v48 + v13), 2), v32, *(&v48 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  v37 = v45;
  v39 = v44;
  v33 = v47;
  v35 = v46;
  CV3DPlaneDetectionPlaneExtentAlignedBoundingBox();
  v17 = CV3DPlaneDetectionAlignedBoundingBoxMin();
  v18 = CV3DPlaneDetectionAlignedBoundingBoxMax();
  a1[12].i64[1] = 0;
  a1[12].i64[0] = &a1[12].i64[1];
  a1[13].i64[0] = 0;
  a1[13].i64[1] = 0;
  v19 = CV3DPlaneDetectionPlaneCopyUUID();
  a1->i64[0] = toUUID(v19);
  a1->i64[1] = v20;
  CFRelease(v19);
  a1[1].i64[0] = CV3DPlaneDetectionPlaneAge();
  v21 = vaddq_f32(v43, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v40, *v18), v41, v18[1]), 0, v42));
  v22 = vaddq_f32(v43, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v40, *v17), v41, v17[1]), 0, v42));
  a1[6] = vmaxnmq_f32(v21, v22);
  a1[7] = vminnmq_f32(v21, v22);
  a1[2] = v39;
  a1[3] = v37;
  a1[4] = v35;
  a1[5] = v33;
  if (CV3DPlaneDetectionPlaneExtentOrientedBoundingBox())
  {
    v23 = vaddq_f32(v43, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v44.f32[2]), v41, *&v44.u32[2], 1), 0, v42));
    v24 = vaddq_f32(v43, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v45.f32[0]), v41, *v45.f32, 1), 0, v42));
    v25 = vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v45.f32[2]), v41, *&v45.u32[2], 1), 0, v42);
    a1[8] = vaddq_f32(v43, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v44.f32[0]), v41, *v44.f32, 1), 0, v42));
    a1[9] = v23;
    a1[10] = v24;
    a1[11] = vaddq_f32(v43, v25);
  }

  v26 = CV3DPlaneDetectionPlaneMergedIds();
  v27 = v26;
  if (v26)
  {
    Count = CFArrayGetCount(v26);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v27, i);
        *&v48 = toUUID(ValueAtIndex);
        *(&v48 + 1) = v31;
        std::__tree<std::array<unsigned char,16ul>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::array<unsigned char,16ul> const&>(&a1[12], &v48);
      }
    }

    CFRelease(v27);
  }
}

void convert(const CV3DPlaneDetectionPlaneList *a1@<X0>, void *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (a1)
  {
    v3 = CV3DPlaneDetectionPlaneListLength();
    if (v3)
    {
      v4 = 0;
      do
      {
        if (CV3DPlaneDetectionPlaneAtIndex())
        {
          v5 = CV3DPlaneDetectionPlaneCopyUUID();
          convert(v22);
          v21[0] = toUUID(v5);
          v21[1] = v6;
          v7 = std::__tree<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::__map_value_compare<std::array<unsigned char,16ul>,std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>,std::less<std::array<unsigned char,16ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,16ul>,ARTexturedPlane>>>::__emplace_unique_key_args<std::array<unsigned char,16ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,16ul> const&>,std::tuple<>>(a2, v21);
          v9 = v22[10];
          v8 = v22[11];
          v10 = v22[9];
          v11 = v22[7];
          *(v7 + 176) = v22[8];
          *(v7 + 192) = v10;
          *(v7 + 208) = v9;
          *(v7 + 224) = v8;
          v12 = v22[5];
          *(v7 + 112) = v22[4];
          *(v7 + 128) = v12;
          *(v7 + 144) = v22[6];
          *(v7 + 160) = v11;
          v13 = v22[1];
          v15 = v22[2];
          v14 = v22[3];
          *(v7 + 48) = v22[0];
          *(v7 + 64) = v13;
          *(v7 + 80) = v15;
          *(v7 + 96) = v14;
          v16 = v7 + 248;
          std::__tree<std::array<unsigned char,16ul>>::destroy(v7 + 240, *(v7 + 248));
          v17 = v24;
          *(v7 + 240) = v23;
          *(v7 + 248) = v17;
          v18 = v25;
          *(v7 + 256) = v25;
          if (v18)
          {
            v17[2] = v16;
            v23 = &v24;
            v24 = 0;
            v25 = 0;
          }

          else
          {
            *(v7 + 240) = v16;
          }

          v19 = v26;
          v26 = 0;
          v20 = *(v7 + 264);
          *(v7 + 264) = v19;

          std::__tree<std::array<unsigned char,16ul>>::destroy(&v23, v24);
          CFRelease(v5);
        }

        ++v4;
      }

      while (v3 != v4);
    }
  }
}

id convertToMesh(const ARTexturedPlane *a1)
{
  v1 = [[ARMeshPrimitive alloc] initAsPlaneWithTransform:a1[3].var5 min:*&a1->var4.__tree_.__end_node_.__left_ max:*&a1->var5 texture:*&a1[1].var0.var0[8], *&a1[1].var4.__tree_.__begin_node_, *a1[2].var0.var0, *&a1[1].var4.__tree_.__size_];

  return v1;
}

id convertToMeshes(const ARTexturedPlane **a1)
{
  v2 = objc_opt_new();
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = convertToMesh(v3);
    [v2 addObject:v5];

    v3 += 4;
  }

  return v2;
}

double randomPlanePointInWorldCoordinates(const ARTexturedPlane *a1)
{
  v2 = *a1[2].var0.var0 + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (*&a1[1].var4.__tree_.__size_ - *a1[2].var0.var0));
  *&result = vaddq_f32(*&a1[1].var4.__tree_.__begin_node_, vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(*&a1->var4.__tree_.__end_node_.__left_, v2), 0, *&a1->var5), *(&a1[1].var0 + 8), *&a1[2].var0.var0[8] + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (*&a1[1].var5 - *&a1[2].var0.var0[8])))).u64[0];
  return result;
}

double convert@<D0>(const ARTexturedPlane *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  p_var1 = &a1[2].var1;
  p_end_node = &a1[2].var4.__tree_.__end_node_;
  v5 = -3;
  do
  {
    v6 = *&p_end_node->__left_;
    p_end_node += 2;
    if (*&v6 > *&p_var1[2 * v2])
    {
      v2 = v5 + 4;
    }
  }

  while (!__CFADD__(v5++, 1));
  v8 = 0;
  v9 = (v2 + 2) & 3;
  if (v2 + 2 <= 0)
  {
    v9 = -(-(v2 + 2) & 3);
  }

  v10 = (v2 + 3) & 3;
  if (v2 + 3 <= 0)
  {
    v10 = -(-(v2 + 3) & 3);
  }

  v11 = *&p_var1[2 * v10];
  v12 = vsubq_f32(*&p_var1[2 * v2], v11);
  v13 = vmulq_f32(v12, v12);
  v14 = vsubq_f32(*&p_var1[2 * v9], v11);
  v15 = vmulq_f32(v14, v14);
  v16 = vaddq_f32(*&a1[2].var1, *&a1[2].var4.__tree_.__end_node_.__left_);
  v17 = vadd_f32(vzip1_s32(*v13.i8, *v15.i8), vzip2_s32(*v13.i8, *v15.i8));
  v18 = vextq_s8(v13, v13, 8uLL);
  *v15.i8 = vadd_f32(vzip1_s32(*v18.i8, *&vextq_s8(v15, v15, 8uLL)), v17);
  *v18.i8 = vsqrt_f32(*v15.i8);
  v19 = vrsqrte_f32(v15.u32[0]);
  v20 = vmul_f32(v19, vrsqrts_f32(v15.u32[0], vmul_f32(v19, v19)));
  v21 = vmulq_n_f32(v12, vmul_f32(v20, vrsqrts_f32(v15.u32[0], vmul_f32(v20, v20))).f32[0]);
  *v12.f32 = vrsqrte_f32(v15.u32[1]);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v15.u32[1], vmul_f32(*v12.f32, *v12.f32)));
  v22 = vmulq_n_f32(v14, vmul_f32(*v12.f32, vrsqrts_f32(v15.u32[1], vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v23 = *&v18.i32[1];
  if (*v18.i32 < *&v18.i32[1])
  {
    v23 = *v18.i32;
  }

  v24 = *MEMORY[0x1E69E9B18];
  v25 = *(MEMORY[0x1E69E9B18] + 16);
  v26 = *(MEMORY[0x1E69E9B18] + 32);
  v27 = *(MEMORY[0x1E69E9B18] + 48);
  v28 = v27;
  v28.f32[1] = v23 * 0.5;
  v21.i32[3] = HIDWORD(*MEMORY[0x1E69E9B18]);
  v22.i32[3] = v26.i32[3];
  v29 = vaddq_f32(vaddq_f32(v16, *&a1[2].var5), *(&a1[3].var0 + 8));
  v30 = *&a1->var4.__tree_.__end_node_.__left_;
  v31 = *&a1->var5;
  v32 = *(&a1[1].var0 + 8);
  v33 = *&a1[1].var4.__tree_.__begin_node_;
  v46 = *MEMORY[0x1E69E9B18];
  v47 = v25;
  v48 = v26;
  v49 = v28;
  do
  {
    *(&v50 + v8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v46 + v8))), v25, *(&v46 + v8), 1), v22, *(&v46 + v8), 2), v27, *(&v46 + v8), 3);
    v8 += 16;
  }

  while (v8 != 64);
  v34 = 0;
  __asm { FMOV            V17.4S, #0.25 }

  v39 = vmulq_f32(v29, _Q17);
  v39.i32[3] = v27.i32[3];
  v46 = v50;
  v47 = v51;
  v48 = v52;
  v49 = v53;
  do
  {
    *(&v50 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v46 + v34))), v25, *(&v46 + v34), 1), v26, *(&v46 + v34), 2), v39, *(&v46 + v34), 3);
    v34 += 16;
  }

  while (v34 != 64);
  v40 = 0;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  v49 = v53;
  do
  {
    *(&v50 + v40) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v46 + v40))), v31, *(&v46 + v40), 1), v32, *(&v46 + v40), 2), v33, *(&v46 + v40), 3);
    v40 += 16;
  }

  while (v40 != 64);
  v41 = v51;
  v42 = v52;
  v43 = v53;
  *a2 = v50;
  a2[1] = v41;
  a2[2] = v42;
  a2[3] = v43;
  v44 = vzip1q_s32(v18, v18);
  *&v44.i32[1] = v23;
  a2[4] = v44;
  return *v44.i64;
}

uint64_t ARIsBoxInViewFrustum(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, float32x4_t a14, float32x4_t a15, float32x4_t a16, float32x4_t a17, float32x4_t a18, float32x4_t a19, float32x4_t a20, unint64_t a21)
{
  if (fabsf(a5.f32[0]) != INFINITY || (v21 = vmvn_s8(vceq_f32(vabs_f32(vext_s8(*a5.f32, *&vextq_s8(a5, a5, 8uLL), 4uLL)), vneg_f32(0x7F0000007FLL))), (v21.i8[0] & 1) != 0) || (v21.i8[4] & 1) != 0)
  {
    v35 = vaddq_f32(a5, a5);
    v36 = vnegq_f32(a5);
    v23 = 100;
    while (1)
    {
      v24.f32[0] = rand();
      v42 = v24;
      v41 = rand();
      v25 = rand();
      v26 = v42;
      v26.f32[1] = v41;
      v26.f32[2] = v25;
      v27.i64[0] = 0x3000000030000000;
      v27.i64[1] = 0x3000000030000000;
      v28 = vmlaq_f32(v36, v35, vmulq_f32(v26, v27));
      v27.i64[0] = 0x3F0000003F000000;
      v27.i64[1] = 0x3F0000003F000000;
      v29 = vmulq_f32(v28, v27);
      v30 = vaddq_f32(a4, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, v29.f32[0]), a2, *v29.f32, 1), a3, v29, 2));
      v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a14, v30.f32[0]), a15, *v30.f32, 1), a16, v30, 2), a17, v30, 3);
      v32 = vdivq_f32(v31, vdupq_laneq_s32(v31, 3));
      if (v32.f32[2] < 0.0)
      {
        v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a18, v32.f32[0]), a19, *v32.f32, 1), a20, v32, 2);
        *v34.f32 = vdiv_f32(*v33.i8, vdup_laneq_s32(v33, 2));
        v34.i64[1] = v34.i64[0];
        v33.i32[0] = vmovn_s32(vcgtq_f32(a21, v34)).u32[0];
        v33.i32[1] = vmovn_s32(vcgeq_f32(v34, a21)).i32[1];
        if (vminv_u16(*v33.i8))
        {
          break;
        }
      }

      if (!--v23)
      {
        return 0;
      }
    }
  }

  return 1;
}

double ARRandomBoxPointInWorldCoordinates(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5.f32[0] = rand();
  v13 = v5;
  v12 = rand();
  v6 = rand();
  v7 = v13;
  v7.f32[1] = v12;
  v7.f32[2] = v6;
  v8.i64[0] = 0x3000000030000000;
  v8.i64[1] = 0x3000000030000000;
  v9 = vmlaq_f32(vnegq_f32(a5), vaddq_f32(a5, a5), vmulq_f32(v7, v8));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v10 = vmulq_f32(v9, v8);
  *&result = vaddq_f32(a4, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, v10.f32[0]), a2, *v10.f32, 1), a3, v10, 2)).u64[0];
  return result;
}

void sub_1C253C368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_21()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_21()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

void ARNoiseModel::~ARNoiseModel(ARNoiseModel *this)
{
  v3 = (this + 24);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

float std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    do
    {
      do
      {
        v7 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v8 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v9 = (v8 * v8) + (v7 * v7);
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrtf((logf((v8 * v8) + (v7 * v7)) * -2.0) / v9);
    *(a1 + 8) = v8 * v10;
    *(a1 + 12) = 1;
    v5 = v7 * v10;
  }

  return *a3 + (v5 * a3[1]);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void arkit::gaussianKernel(arkit *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  if (this <= 0)
  {
    arkit::gaussianKernel();
  }

  v3 = this;
  if ((this & 1) == 0)
  {
    arkit::gaussianKernel();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2 == 0.0)
  {
    v13 = 1065353216;
    std::vector<float>::push_back[abi:ne200100](a3, &v13);
  }

  else
  {
    v5 = a2 * 6.28318531;
    v6 = 1.0 / sqrtf(v5);
    v7 = a2 + a2;
    v8 = -((this - 1) >> 1);
    v9 = 0.0;
    do
    {
      v12 = v6 * expf(-(v8 * v8) / v7);
      std::vector<float>::push_back[abi:ne200100](a3, &v12);
      v10 = *(a3 + 8);
      v9 = v9 + *(v10 - 1);
      ++v8;
      --v3;
    }

    while (v3);
    for (i = *a3; i != v10; ++i)
    {
      *i = *i / v9;
    }
  }
}

void sub_1C253CA38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void arkit::unflatten(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = HIDWORD(a3);
  v5 = LODWORD(a3);
  if (LODWORD(a3) * HIDWORD(a3) != (a1[1] - *a1) >> 2)
  {
    arkit::unflatten();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (HIDWORD(a3))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
      std::vector<std::vector<float>>::push_back[abi:ne200100](a2, &__p);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      v9 = v5;
      v10 = v7;
      if (v5)
      {
        do
        {
          std::vector<float>::push_back[abi:ne200100]((*a2 + 24 * v8), (*a1 + 4 * v10++));
          --v9;
        }

        while (v9);
      }

      ++v8;
      v7 += v5;
    }

    while (v8 != v4);
  }
}

void sub_1C253CC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::vector<double>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void arkit::unflatten(void *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = a3.n128_u32[0];
  v5 = a3.n128_u32[1];
  if (a3.n128_u32[0] * a3.n128_u32[1] * a3.n128_u32[2] != (a1[1] - *a1) >> 2)
  {
    arkit::unflatten();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a3.n128_u32[2])
  {
    v14 = 0;
    v7 = 0;
    v13 = a3.n128_u32[2];
    do
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](a2, &__p);
      p_p = &__p;
      std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&p_p);
      if (v5)
      {
        v8 = 0;
        v9 = v14;
        do
        {
          v10 = *a2 + 24 * v7;
          __p = 0;
          v16 = 0;
          v17 = 0;
          std::vector<std::vector<float>>::push_back[abi:ne200100](v10, &__p);
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }

          v11 = v4;
          v12 = v9;
          if (v4)
          {
            do
            {
              std::vector<float>::push_back[abi:ne200100]((*(*a2 + 24 * v7) + 24 * v8), (*a1 + 4 * v12++));
              --v11;
            }

            while (v11);
          }

          ++v8;
          v9 += v4;
        }

        while (v8 != v5);
      }

      ++v7;
      v14 += v5 * v4;
    }

    while (v7 != v13);
  }
}

void sub_1C253CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void **p_p)
{
  p_p = &__p;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::vector<std::vector<float>>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void arkit::sum(float ***a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 >= 2)
  {
    arkit::sum();
  }

  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v6 = *a1;
    v5 = a1[1];
    while (v6 != v5)
    {
      v24[0] = 0;
      std::vector<float>::push_back[abi:ne200100](a3, v24);
      v7 = *v6;
      v8 = v6[1];
      if (*v6 != v8)
      {
        v9 = *(a3 + 8);
        v10 = *(v9 - 4);
        do
        {
          v11 = *v7++;
          v10 = v11 + v10;
          *(v9 - 4) = v10;
        }

        while (v7 != v8);
      }

      v6 += 3;
    }
  }

  else
  {
    v12 = (*a1)[1] - **a1;
    v24[1] = 0;
    std::vector<float>::vector[abi:ne200100](a3, v12);
    v13 = *a1;
    v14 = (*a1)[1] - **a1;
    if (v14)
    {
      v15 = 0;
      v16 = v14 >> 2;
      v17 = a1[1];
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 - v13);
      v19 = *a3;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      if (v16 <= 1)
      {
        v16 = 1;
      }

      do
      {
        if (v17 != v13)
        {
          v20 = v19[v15];
          v21 = v18;
          v22 = v13;
          do
          {
            v23 = *v22;
            v22 += 3;
            v20 = v23[v15] + v20;
            v19[v15] = v20;
            --v21;
          }

          while (v21);
        }

        ++v15;
      }

      while (v15 != v16);
    }
  }
}

void sub_1C253D19C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void arkit::normalizeL1(float **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v5 = 0.0;
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v5 = v5 + v7;
    }

    while (v6 != v4);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    while (v3 != v4)
    {
      v8 = *v3 / v5;
      std::vector<float>::push_back[abi:ne200100](a2, &v8);
      ++v3;
    }
  }
}

void sub_1C253D24C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void arkit::mixtureKernel(arkit *this@<X2>, uint64_t *a2@<X0>, void *a3@<X1>, uint64_t a4@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      arkit::gaussianKernel(this, *(*a3 + 4 * v8), &__p);
      v10 = __p;
      v11 = v19;
      if (__p != v19)
      {
        v12 = *a2;
        v13 = __p;
        do
        {
          *v13 = *v13 * sqrtf(*(v12 + 4 * v8));
          ++v13;
        }

        while (v13 != v11);
      }

      v14 = (v11 - v10) >> 2;
      if (v14 > v9)
      {
        v9 = v14;
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](&v20, &__p);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      ++v8;
    }

    while (v8 < (a2[1] - *a2) >> 2);
    v15 = v20;
    v16 = v21;
    while (v15 != v16)
    {
      while (1)
      {
        v17 = *v15;
        if (v9 <= v15[1] - *v15)
        {
          break;
        }

        LODWORD(__p) = 0;
        std::vector<float>::insert(v15, v17, &__p);
        LODWORD(__p) = 0;
        std::vector<float>::push_back[abi:ne200100](v15, &__p);
      }

      v15 += 3;
    }
  }

  arkit::sum(&v20, 0, &__p);
  arkit::normalizeL1(&__p, a4);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  __p = &v20;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C253D3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, char *a10, uint64_t a11, char a12)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  __p = &a12;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

char *std::vector<float>::insert(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<float>::emplace_back<float>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1C253D5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void arkit::mixtureKernels(uint64_t *a1@<X0>, void *a2@<X1>, arkit *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v16, *(v5 + v9), *(v5 + v9 + 8), (*(v5 + v9 + 8) - *(v5 + v9)) >> 2);
      v11 = (*a2 + v9);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v13, *v11, v11[1], (v11[1] - *v11) >> 2);
      arkit::mixtureKernel(a3, &v16, &v13, __p);
      std::vector<std::vector<float>>::push_back[abi:ne200100](a4, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      ++v10;
      v5 = *a1;
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v10);
  }
}

void arkit::unflattenParams(char **a1, void *a2, uint64_t *a3, uint64_t *a4, char **a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v9 = (v8 - *a1) >> 2;
  v10 = (a2[1] - *a2) >> 2;
  if (v10 % v9)
  {
    arkit::unflattenParams();
  }

  v14 = v10 / v9;
  v15 = a3[1];
  v16 = *a3;
  v17 = v15 - *a3;
  v18 = v17 >> 2;
  if ((v17 >> 2) / v9 % v14)
  {
    arkit::unflattenParams();
  }

  if (v18 / v14 % v9)
  {
    arkit::unflattenParams();
  }

  if (v17 != a4[1] - *a4)
  {
    arkit::unflattenParams();
  }

  v22 = v18 / v9 / v14;
  if (a5 != a1)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a5, *a1, v8, v9);
    v16 = *a3;
    v15 = a3[1];
    v18 = (v15 - *a3) >> 2;
  }

  v29 = 0;
  v30 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v16, v15, v18);
  v23.n128_u64[0] = __PAIR64__(v14, v22);
  v23.n128_u32[2] = v9;
  v24 = v23;
  arkit::unflatten(&__p, &v31, v23);
  std::vector<std::vector<std::vector<float>>>::__vdeallocate(a7);
  *a7 = v31;
  *(a7 + 16) = v32;
  v32 = 0;
  v31 = 0uLL;
  v33 = &v31;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v25, *a4, a4[1], (a4[1] - *a4) >> 2);
  arkit::unflatten(&v25, &v31, v24);
  std::vector<std::vector<std::vector<float>>>::__vdeallocate(a8);
  *a8 = v31;
  *(a8 + 16) = v32;
  v32 = 0;
  v31 = 0uLL;
  v33 = &v31;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  arkit::unflatten(a2, &v31, COERCE_DOUBLE(__PAIR64__(v9, v14)));
  std::vector<std::vector<float>>::__vdeallocate(a6);
  *a6 = v31;
  a6[2] = v32;
  v32 = 0;
  v31 = 0uLL;
  v33 = &v31;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_1C253D9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void arkit::loadParams(int a1, char **a2, uint64_t *a3, uint64_t a4, uint64_t a5, void **a6)
{
  v27 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:
      *__dst = xmmword_1C25C94C4;
      *&__dst[16] = unk_1C25C94D4;
      *&__dst[32] = xmmword_1C25C94E4;
      *&__dst[48] = unk_1C25C94F4;
      *&__dst[64] = 1107321277;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25C9598;
      *&__dst[160] = xmmword_1C25C95A8;
      *&__dst[176] = unk_1C25C95B8;
      *&__dst[188] = unk_1C25C95C4;
      *&__dst[80] = unk_1C25C9558;
      *&__dst[96] = xmmword_1C25C9568;
      *&__dst[112] = unk_1C25C9578;
      *&__dst[128] = xmmword_1C25C9588;
      *&__dst[16] = unk_1C25C9518;
      *&__dst[32] = xmmword_1C25C9528;
      *&__dst[48] = unk_1C25C9538;
      *&__dst[64] = xmmword_1C25C9548;
      *__dst = xmmword_1C25C9508;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25C95D4, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25C99D0, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25C9DCC;
      *&__dst[16] = unk_1C25C9DDC;
      *&__dst[32] = xmmword_1C25C9DEC;
      *&__dst[48] = unk_1C25C9DFC;
      *&__dst[64] = 1059106455;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 1:
      *__dst = xmmword_1C25C9E10;
      *&__dst[16] = unk_1C25C9E20;
      *&__dst[32] = xmmword_1C25C9E30;
      *&__dst[48] = unk_1C25C9E40;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25C9EE0;
      *&__dst[160] = xmmword_1C25C9EF0;
      *&__dst[176] = unk_1C25C9F00;
      *&__dst[80] = unk_1C25C9EA0;
      *&__dst[96] = xmmword_1C25C9EB0;
      *&__dst[112] = unk_1C25C9EC0;
      *&__dst[128] = xmmword_1C25C9ED0;
      *__dst = xmmword_1C25C9E50;
      *&__dst[16] = unk_1C25C9E60;
      *&__dst[32] = xmmword_1C25C9E70;
      *&__dst[48] = unk_1C25C9E80;
      *&__dst[64] = xmmword_1C25C9E90;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25C9F10, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25CA2D0, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25CA690;
      *&__dst[16] = unk_1C25CA6A0;
      *&__dst[32] = xmmword_1C25CA6B0;
      *&__dst[48] = unk_1C25CA6C0;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 2:
      *__dst = xmmword_1C25D6520;
      *&__dst[16] = unk_1C25D6530;
      *&__dst[32] = xmmword_1C25D6540;
      *&__dst[48] = unk_1C25D6550;
      *&__dst[64] = 1106318384;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25D65F4;
      *&__dst[160] = xmmword_1C25D6604;
      *&__dst[176] = unk_1C25D6614;
      *&__dst[188] = unk_1C25D6620;
      *&__dst[80] = unk_1C25D65B4;
      *&__dst[96] = xmmword_1C25D65C4;
      *&__dst[112] = unk_1C25D65D4;
      *&__dst[128] = xmmword_1C25D65E4;
      *&__dst[16] = unk_1C25D6574;
      *&__dst[32] = xmmword_1C25D6584;
      *&__dst[48] = unk_1C25D6594;
      *&__dst[64] = xmmword_1C25D65A4;
      *__dst = xmmword_1C25D6564;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25D6630, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25D6A2C, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25D6E28;
      *&__dst[16] = unk_1C25D6E38;
      *&__dst[32] = xmmword_1C25D6E48;
      *&__dst[48] = unk_1C25D6E58;
      *&__dst[64] = 1058765256;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 3:
      *__dst = xmmword_1C25D6E6C;
      *&__dst[16] = unk_1C25D6E7C;
      *&__dst[32] = xmmword_1C25D6E8C;
      *&__dst[48] = unk_1C25D6E9C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25D6F3C;
      *&__dst[160] = xmmword_1C25D6F4C;
      *&__dst[176] = unk_1C25D6F5C;
      *&__dst[80] = unk_1C25D6EFC;
      *&__dst[96] = xmmword_1C25D6F0C;
      *&__dst[112] = unk_1C25D6F1C;
      *&__dst[128] = xmmword_1C25D6F2C;
      *__dst = xmmword_1C25D6EAC;
      *&__dst[16] = unk_1C25D6EBC;
      *&__dst[32] = xmmword_1C25D6ECC;
      *&__dst[48] = unk_1C25D6EDC;
      *&__dst[64] = xmmword_1C25D6EEC;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25D6F6C, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25D732C, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25D76EC;
      *&__dst[16] = unk_1C25D76FC;
      *&__dst[32] = xmmword_1C25D770C;
      *&__dst[48] = unk_1C25D771C;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 4:
      *&__dst[16] = unk_1C25CFA8C;
      *&__dst[32] = xmmword_1C25CFA9C;
      *&__dst[48] = unk_1C25CFAAC;
      *&__dst[64] = 0x42048AD641D8840ALL;
      *__dst = xmmword_1C25CFA7C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25CFB74;
      *&__dst[192] = xmmword_1C25CFB84;
      *&__dst[112] = unk_1C25CFB34;
      *&__dst[128] = xmmword_1C25CFB44;
      *&__dst[144] = unk_1C25CFB54;
      *&__dst[160] = xmmword_1C25CFB64;
      *&__dst[48] = unk_1C25CFAF4;
      *&__dst[64] = xmmword_1C25CFB04;
      *&__dst[80] = unk_1C25CFB14;
      *&__dst[96] = xmmword_1C25CFB24;
      *__dst = xmmword_1C25CFAC4;
      *&__dst[208] = 0x382BF76A391C3CE2;
      *&__dst[16] = unk_1C25CFAD4;
      *&__dst[32] = xmmword_1C25CFAE4;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25CFB9C, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25CFFD4, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25D041C;
      *&__dst[32] = xmmword_1C25D042C;
      *&__dst[48] = unk_1C25D043C;
      *&__dst[64] = 0x3F27AA8B3F22E968;
      *__dst = xmmword_1C25D040C;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 5:
      *&__dst[16] = unk_1C25CF0B4;
      *&__dst[32] = xmmword_1C25CF0C4;
      *&__dst[48] = unk_1C25CF0D4;
      *&__dst[64] = 0x41EEE0B641DD5DB7;
      *__dst = xmmword_1C25CF0A4;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25CF19C;
      *&__dst[192] = xmmword_1C25CF1AC;
      *&__dst[112] = unk_1C25CF15C;
      *&__dst[128] = xmmword_1C25CF16C;
      *&__dst[144] = unk_1C25CF17C;
      *&__dst[160] = xmmword_1C25CF18C;
      *&__dst[48] = unk_1C25CF11C;
      *&__dst[64] = xmmword_1C25CF12C;
      *&__dst[80] = unk_1C25CF13C;
      *&__dst[96] = xmmword_1C25CF14C;
      *__dst = xmmword_1C25CF0EC;
      *&__dst[208] = 0x39A7C5AC3A20B1BCLL;
      *&__dst[16] = unk_1C25CF0FC;
      *&__dst[32] = xmmword_1C25CF10C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25CF1C4, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25CF5FC, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25CFA44;
      *&__dst[32] = xmmword_1C25CFA54;
      *&__dst[48] = unk_1C25CFA64;
      *&__dst[64] = 0x3F2754B03F234DCFLL;
      *__dst = xmmword_1C25CFA34;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 6:
      *&__dst[48] = unk_1C25D0E5C;
      *&__dst[64] = xmmword_1C25D0E6C;
      *__dst = xmmword_1C25D0E2C;
      *&__dst[80] = 0x4203DBAA41E1A20FLL;
      *&__dst[16] = unk_1C25D0E3C;
      *&__dst[32] = xmmword_1C25D0E4C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[88], 0x16uLL);
      memcpy(__dst, &unk_1C25D0E84, 0x108uLL);
      v21 = 0;
      v22 = 0;
      v20 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[264], 0x42uLL);
      memcpy(__dst, &unk_1C25D0F8C, sizeof(__dst));
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &v27, 0x14AuLL);
      memcpy(__dst, &unk_1C25D14B4, sizeof(__dst));
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &v27, 0x14AuLL);
      *&__dst[48] = unk_1C25D1A0C;
      *&__dst[64] = xmmword_1C25D1A1C;
      *__dst = xmmword_1C25D19DC;
      *&__dst[80] = 0x3F2B11E83F2A2D73;
      *&__dst[16] = unk_1C25D19EC;
      *&__dst[32] = xmmword_1C25D19FC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[88], 0x16uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 7:
      *&__dst[16] = unk_1C25D0464;
      *&__dst[32] = xmmword_1C25D0474;
      *&__dst[48] = unk_1C25D0484;
      *&__dst[64] = 0x41FDBD4641CDA493;
      *__dst = xmmword_1C25D0454;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25D054C;
      *&__dst[192] = xmmword_1C25D055C;
      *&__dst[112] = unk_1C25D050C;
      *&__dst[128] = xmmword_1C25D051C;
      *&__dst[144] = unk_1C25D052C;
      *&__dst[160] = xmmword_1C25D053C;
      *&__dst[48] = unk_1C25D04CC;
      *&__dst[64] = xmmword_1C25D04DC;
      *&__dst[80] = unk_1C25D04EC;
      *&__dst[96] = xmmword_1C25D04FC;
      *__dst = xmmword_1C25D049C;
      *&__dst[208] = 0x36EAE18B38F776C5;
      *&__dst[16] = unk_1C25D04AC;
      *&__dst[32] = xmmword_1C25D04BC;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25D0574, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25D09AC, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25D0DF4;
      *&__dst[32] = xmmword_1C25D0E04;
      *&__dst[48] = unk_1C25D0E14;
      *&__dst[64] = 0x3F2A95EA3F25CDC4;
      *__dst = xmmword_1C25D0DE4;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 8:
      *&__dst[16] = unk_1C25D24A8;
      *&__dst[32] = xmmword_1C25D24B8;
      *&__dst[48] = unk_1C25D24C8;
      *&__dst[64] = 0x41F0537541E02DC3;
      *__dst = xmmword_1C25D2498;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25D2590;
      *&__dst[192] = xmmword_1C25D25A0;
      *&__dst[112] = unk_1C25D2550;
      *&__dst[128] = xmmword_1C25D2560;
      *&__dst[144] = unk_1C25D2570;
      *&__dst[160] = xmmword_1C25D2580;
      *&__dst[48] = unk_1C25D2510;
      *&__dst[64] = xmmword_1C25D2520;
      *&__dst[80] = unk_1C25D2530;
      *&__dst[96] = xmmword_1C25D2540;
      *__dst = xmmword_1C25D24E0;
      *&__dst[208] = 0x389B3073388637BDLL;
      *&__dst[16] = unk_1C25D24F0;
      *&__dst[32] = xmmword_1C25D2500;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25D25B8, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25D29F0, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25D2E38;
      *&__dst[32] = xmmword_1C25D2E48;
      *&__dst[48] = unk_1C25D2E58;
      *&__dst[64] = 0x3F2731C23F211740;
      *__dst = xmmword_1C25D2E28;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 9:
      *&__dst[16] = unk_1C25D1A44;
      *&__dst[32] = xmmword_1C25D1A54;
      *&__dst[48] = unk_1C25D1A64;
      *&__dst[60] = unk_1C25D1A70;
      *__dst = xmmword_1C25D1A34;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[76], 0x13uLL);
      *&__dst[176] = unk_1C25D1B30;
      *&__dst[192] = xmmword_1C25D1B40;
      *&__dst[208] = unk_1C25D1B50;
      *&__dst[112] = unk_1C25D1AF0;
      *&__dst[128] = xmmword_1C25D1B00;
      *&__dst[144] = unk_1C25D1B10;
      *&__dst[160] = xmmword_1C25D1B20;
      *&__dst[48] = unk_1C25D1AB0;
      *&__dst[64] = xmmword_1C25D1AC0;
      *&__dst[80] = unk_1C25D1AD0;
      *&__dst[96] = xmmword_1C25D1AE0;
      *__dst = xmmword_1C25D1A80;
      *&__dst[16] = unk_1C25D1A90;
      *&__dst[32] = xmmword_1C25D1AA0;
      *&__dst[224] = 981548204;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[228], 0x39uLL);
      memcpy(__dst, &unk_1C25D1B64, 0x474uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1140], 0x11DuLL);
      memcpy(__dst, &unk_1C25D1FD8, 0x474uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1140], 0x11DuLL);
      *&__dst[16] = unk_1C25D245C;
      *&__dst[32] = xmmword_1C25D246C;
      *&__dst[48] = unk_1C25D247C;
      *&__dst[60] = unk_1C25D2488;
      *__dst = xmmword_1C25D244C;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[76], 0x13uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 10:
      *__dst = xmmword_1C25D3848;
      *&__dst[16] = unk_1C25D3858;
      *&__dst[32] = xmmword_1C25D3868;
      *&__dst[48] = unk_1C25D3878;
      *&__dst[64] = 1106552048;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25D391C;
      *&__dst[160] = xmmword_1C25D392C;
      *&__dst[176] = unk_1C25D393C;
      *&__dst[188] = unk_1C25D3948;
      *&__dst[80] = unk_1C25D38DC;
      *&__dst[96] = xmmword_1C25D38EC;
      *&__dst[112] = unk_1C25D38FC;
      *&__dst[128] = xmmword_1C25D390C;
      *&__dst[16] = unk_1C25D389C;
      *&__dst[32] = xmmword_1C25D38AC;
      *&__dst[48] = unk_1C25D38BC;
      *&__dst[64] = xmmword_1C25D38CC;
      *__dst = xmmword_1C25D388C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25D3958, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25D3D54, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25D4150;
      *&__dst[16] = unk_1C25D4160;
      *&__dst[32] = xmmword_1C25D4170;
      *&__dst[48] = unk_1C25D4180;
      *&__dst[64] = 1059864650;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 11:
      *&__dst[16] = unk_1C25D2E80;
      *&__dst[32] = xmmword_1C25D2E90;
      *&__dst[48] = unk_1C25D2EA0;
      *&__dst[64] = 0x41F0C6B541DD6B4DLL;
      *__dst = xmmword_1C25D2E70;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25D2F68;
      *&__dst[192] = xmmword_1C25D2F78;
      *&__dst[112] = unk_1C25D2F28;
      *&__dst[128] = xmmword_1C25D2F38;
      *&__dst[144] = unk_1C25D2F48;
      *&__dst[160] = xmmword_1C25D2F58;
      *&__dst[48] = unk_1C25D2EE8;
      *&__dst[64] = xmmword_1C25D2EF8;
      *&__dst[80] = unk_1C25D2F08;
      *&__dst[96] = xmmword_1C25D2F18;
      *__dst = xmmword_1C25D2EB8;
      *&__dst[208] = 0x360637BD3827C5ACLL;
      *&__dst[16] = unk_1C25D2EC8;
      *&__dst[32] = xmmword_1C25D2ED8;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25D2F90, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25D33C8, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25D3810;
      *&__dst[32] = xmmword_1C25D3820;
      *&__dst[48] = unk_1C25D3830;
      *&__dst[64] = 0x3F2799703F26BD3CLL;
      *__dst = xmmword_1C25D3800;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 12:
      *&__dst[16] = unk_1C25D7F70;
      *&__dst[32] = xmmword_1C25D7F80;
      *&__dst[48] = unk_1C25D7F90;
      *&__dst[60] = unk_1C25D7F9C;
      *__dst = xmmword_1C25D7F60;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[76], 0x13uLL);
      *&__dst[176] = unk_1C25D805C;
      *&__dst[192] = xmmword_1C25D806C;
      *&__dst[208] = unk_1C25D807C;
      *&__dst[112] = unk_1C25D801C;
      *&__dst[128] = xmmword_1C25D802C;
      *&__dst[144] = unk_1C25D803C;
      *&__dst[160] = xmmword_1C25D804C;
      *&__dst[48] = unk_1C25D7FDC;
      *&__dst[64] = xmmword_1C25D7FEC;
      *&__dst[80] = unk_1C25D7FFC;
      *&__dst[96] = xmmword_1C25D800C;
      *__dst = xmmword_1C25D7FAC;
      *&__dst[16] = unk_1C25D7FBC;
      *&__dst[32] = xmmword_1C25D7FCC;
      *&__dst[224] = 966265636;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[228], 0x39uLL);
      memcpy(__dst, &unk_1C25D8090, 0x474uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1140], 0x11DuLL);
      memcpy(__dst, &unk_1C25D8504, 0x474uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1140], 0x11DuLL);
      *&__dst[16] = unk_1C25D8988;
      *&__dst[32] = xmmword_1C25D8998;
      *&__dst[48] = unk_1C25D89A8;
      *&__dst[60] = unk_1C25D89B4;
      *__dst = xmmword_1C25D8978;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[76], 0x13uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 13:
      *&__dst[16] = unk_1C25D89D4;
      *&__dst[32] = xmmword_1C25D89E4;
      *&__dst[48] = unk_1C25D89F4;
      *&__dst[60] = unk_1C25D8A00;
      *__dst = xmmword_1C25D89C4;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[76], 0x13uLL);
      *&__dst[176] = unk_1C25D8AC0;
      *&__dst[192] = xmmword_1C25D8AD0;
      *&__dst[208] = unk_1C25D8AE0;
      *&__dst[112] = unk_1C25D8A80;
      *&__dst[128] = xmmword_1C25D8A90;
      *&__dst[144] = unk_1C25D8AA0;
      *&__dst[160] = xmmword_1C25D8AB0;
      *&__dst[48] = unk_1C25D8A40;
      *&__dst[64] = xmmword_1C25D8A50;
      *&__dst[80] = unk_1C25D8A60;
      *&__dst[96] = xmmword_1C25D8A70;
      *__dst = xmmword_1C25D8A10;
      *&__dst[16] = unk_1C25D8A20;
      *&__dst[32] = xmmword_1C25D8A30;
      *&__dst[224] = 964336659;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[228], 0x39uLL);
      memcpy(__dst, &unk_1C25D8AF4, 0x474uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1140], 0x11DuLL);
      memcpy(__dst, &unk_1C25D8F68, 0x474uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1140], 0x11DuLL);
      *&__dst[16] = unk_1C25D93EC;
      *&__dst[32] = xmmword_1C25D93FC;
      *&__dst[48] = unk_1C25D940C;
      *&__dst[60] = unk_1C25D9418;
      *__dst = xmmword_1C25D93DC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[76], 0x13uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 14:
      *__dst = xmmword_1C25D4194;
      *&__dst[16] = unk_1C25D41A4;
      *&__dst[32] = xmmword_1C25D41B4;
      *&__dst[48] = unk_1C25D41C4;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25D4264;
      *&__dst[160] = xmmword_1C25D4274;
      *&__dst[176] = unk_1C25D4284;
      *&__dst[80] = unk_1C25D4224;
      *&__dst[96] = xmmword_1C25D4234;
      *&__dst[112] = unk_1C25D4244;
      *&__dst[128] = xmmword_1C25D4254;
      *__dst = xmmword_1C25D41D4;
      *&__dst[16] = unk_1C25D41E4;
      *&__dst[32] = xmmword_1C25D41F4;
      *&__dst[48] = unk_1C25D4204;
      *&__dst[64] = xmmword_1C25D4214;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25D4294, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25D4654, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25D4A14;
      *&__dst[16] = unk_1C25D4A24;
      *&__dst[32] = xmmword_1C25D4A34;
      *&__dst[48] = unk_1C25D4A44;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 15:
      *__dst = xmmword_1C25D4A54;
      *&__dst[16] = unk_1C25D4A64;
      *&__dst[32] = xmmword_1C25D4A74;
      *&__dst[48] = unk_1C25D4A84;
      *&__dst[64] = 1107695405;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25D4B28;
      *&__dst[160] = xmmword_1C25D4B38;
      *&__dst[176] = unk_1C25D4B48;
      *&__dst[188] = unk_1C25D4B54;
      *&__dst[80] = unk_1C25D4AE8;
      *&__dst[96] = xmmword_1C25D4AF8;
      *&__dst[112] = unk_1C25D4B08;
      *&__dst[128] = xmmword_1C25D4B18;
      *&__dst[16] = unk_1C25D4AA8;
      *&__dst[32] = xmmword_1C25D4AB8;
      *&__dst[48] = unk_1C25D4AC8;
      *&__dst[64] = xmmword_1C25D4AD8;
      *__dst = xmmword_1C25D4A98;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25D4B64, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25D4F60, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25D535C;
      *&__dst[16] = unk_1C25D536C;
      *&__dst[32] = xmmword_1C25D537C;
      *&__dst[48] = unk_1C25D538C;
      *&__dst[64] = 1050791868;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 16:
      *__dst = xmmword_1C25D4194;
      *&__dst[16] = unk_1C25D41A4;
      *&__dst[32] = xmmword_1C25D41B4;
      *&__dst[48] = unk_1C25D41C4;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25D4264;
      *&__dst[160] = xmmword_1C25D4274;
      *&__dst[176] = unk_1C25D4284;
      *&__dst[80] = unk_1C25D4224;
      *&__dst[96] = xmmword_1C25D4234;
      *&__dst[112] = unk_1C25D4244;
      *&__dst[128] = xmmword_1C25D4254;
      *__dst = xmmword_1C25D41D4;
      *&__dst[16] = unk_1C25D41E4;
      *&__dst[32] = xmmword_1C25D41F4;
      *&__dst[48] = unk_1C25D4204;
      *&__dst[64] = xmmword_1C25D4214;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25D4294, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25D4654, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25D4A14;
      *&__dst[16] = unk_1C25D4A24;
      *&__dst[32] = xmmword_1C25D4A34;
      *&__dst[48] = unk_1C25D4A44;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 17:
      *__dst = xmmword_1C25D5C60;
      *&__dst[16] = unk_1C25D5C70;
      *&__dst[32] = xmmword_1C25D5C80;
      *&__dst[48] = unk_1C25D5C90;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25D5D30;
      *&__dst[160] = xmmword_1C25D5D40;
      *&__dst[176] = unk_1C25D5D50;
      *&__dst[80] = unk_1C25D5CF0;
      *&__dst[96] = xmmword_1C25D5D00;
      *&__dst[112] = unk_1C25D5D10;
      *&__dst[128] = xmmword_1C25D5D20;
      *__dst = xmmword_1C25D5CA0;
      *&__dst[16] = unk_1C25D5CB0;
      *&__dst[32] = xmmword_1C25D5CC0;
      *&__dst[48] = unk_1C25D5CD0;
      *&__dst[64] = xmmword_1C25D5CE0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25D5D60, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25D6120, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25D64E0;
      *&__dst[16] = unk_1C25D64F0;
      *&__dst[32] = xmmword_1C25D6500;
      *&__dst[48] = unk_1C25D6510;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 18:
      *__dst = xmmword_1C25D53A0;
      *&__dst[16] = unk_1C25D53B0;
      *&__dst[32] = xmmword_1C25D53C0;
      *&__dst[48] = unk_1C25D53D0;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25D5470;
      *&__dst[160] = xmmword_1C25D5480;
      *&__dst[176] = unk_1C25D5490;
      *&__dst[80] = unk_1C25D5430;
      *&__dst[96] = xmmword_1C25D5440;
      *&__dst[112] = unk_1C25D5450;
      *&__dst[128] = xmmword_1C25D5460;
      *__dst = xmmword_1C25D53E0;
      *&__dst[16] = unk_1C25D53F0;
      *&__dst[32] = xmmword_1C25D5400;
      *&__dst[48] = unk_1C25D5410;
      *&__dst[64] = xmmword_1C25D5420;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25D54A0, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25D5860, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25D5C20;
      *&__dst[16] = unk_1C25D5C30;
      *&__dst[32] = xmmword_1C25D5C40;
      *&__dst[48] = unk_1C25D5C50;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 19:
      *__dst = xmmword_1C25E7174;
      *&__dst[16] = unk_1C25E7184;
      *&__dst[32] = xmmword_1C25E7194;
      *&__dst[48] = 0x41FF189341DFACC5;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[56], 0xEuLL);
      *&__dst[112] = unk_1C25E721C;
      *&__dst[128] = xmmword_1C25E722C;
      *&__dst[144] = unk_1C25E723C;
      *&__dst[48] = unk_1C25E71DC;
      *&__dst[64] = xmmword_1C25E71EC;
      *&__dst[80] = unk_1C25E71FC;
      *&__dst[96] = xmmword_1C25E720C;
      *__dst = xmmword_1C25E71AC;
      *&__dst[160] = 0x39BBB1F238BAA583;
      *&__dst[16] = unk_1C25E71BC;
      *&__dst[32] = xmmword_1C25E71CC;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[168], 0x2AuLL);
      memcpy(__dst, &unk_1C25E7254, 0x348uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[840], 0xD2uLL);
      memcpy(__dst, &unk_1C25E759C, 0x348uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[840], 0xD2uLL);
      *__dst = xmmword_1C25E78E4;
      *&__dst[16] = unk_1C25E78F4;
      *&__dst[32] = xmmword_1C25E7904;
      *&__dst[48] = 0x3EBE4B883EB90DBFLL;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[56], 0xEuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 20:
      *__dst = xmmword_1C25E791C;
      *&__dst[16] = unk_1C25E792C;
      *&__dst[32] = xmmword_1C25E793C;
      *&__dst[44] = *(&xmmword_1C25E793C + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E79C8;
      *&__dst[128] = xmmword_1C25E79D8;
      *&__dst[144] = unk_1C25E79E8;
      *&__dst[160] = xmmword_1C25E79F8;
      *&__dst[48] = unk_1C25E7988;
      *&__dst[64] = xmmword_1C25E7998;
      *&__dst[80] = unk_1C25E79A8;
      *&__dst[96] = xmmword_1C25E79B8;
      *__dst = xmmword_1C25E7958;
      *&__dst[16] = unk_1C25E7968;
      *&__dst[32] = xmmword_1C25E7978;
      *&__dst[176] = 984649170;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E7A0C, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E7D90, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E8114;
      *&__dst[16] = unk_1C25E8124;
      *&__dst[32] = xmmword_1C25E8134;
      *&__dst[44] = *(&xmmword_1C25E8134 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 21:
      *__dst = xmmword_1C25CD54C;
      *&__dst[16] = unk_1C25CD55C;
      *&__dst[32] = xmmword_1C25CD56C;
      *&__dst[48] = unk_1C25CD57C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25CD61C;
      *&__dst[160] = xmmword_1C25CD62C;
      *&__dst[176] = unk_1C25CD63C;
      *&__dst[80] = unk_1C25CD5DC;
      *&__dst[96] = xmmword_1C25CD5EC;
      *&__dst[112] = unk_1C25CD5FC;
      *&__dst[128] = xmmword_1C25CD60C;
      *__dst = xmmword_1C25CD58C;
      *&__dst[16] = unk_1C25CD59C;
      *&__dst[32] = xmmword_1C25CD5AC;
      *&__dst[48] = unk_1C25CD5BC;
      *&__dst[64] = xmmword_1C25CD5CC;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25CD64C, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25CDA0C, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25CDDCC;
      *&__dst[16] = unk_1C25CDDDC;
      *&__dst[32] = xmmword_1C25CDDEC;
      *&__dst[48] = unk_1C25CDDFC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 22:
      *__dst = xmmword_1C25CCC8C;
      *&__dst[16] = unk_1C25CCC9C;
      *&__dst[32] = xmmword_1C25CCCAC;
      *&__dst[48] = unk_1C25CCCBC;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25CCD5C;
      *&__dst[160] = xmmword_1C25CCD6C;
      *&__dst[176] = unk_1C25CCD7C;
      *&__dst[80] = unk_1C25CCD1C;
      *&__dst[96] = xmmword_1C25CCD2C;
      *&__dst[112] = unk_1C25CCD3C;
      *&__dst[128] = xmmword_1C25CCD4C;
      *__dst = xmmword_1C25CCCCC;
      *&__dst[16] = unk_1C25CCCDC;
      *&__dst[32] = xmmword_1C25CCCEC;
      *&__dst[48] = unk_1C25CCCFC;
      *&__dst[64] = xmmword_1C25CCD0C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25CCD8C, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25CD14C, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25CD50C;
      *&__dst[16] = unk_1C25CD51C;
      *&__dst[32] = xmmword_1C25CD52C;
      *&__dst[48] = unk_1C25CD53C;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 23:
      *__dst = xmmword_1C25CE7E4;
      *&__dst[16] = unk_1C25CE7F4;
      *&__dst[32] = xmmword_1C25CE804;
      *&__dst[48] = unk_1C25CE814;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25CE8B4;
      *&__dst[160] = xmmword_1C25CE8C4;
      *&__dst[176] = unk_1C25CE8D4;
      *&__dst[80] = unk_1C25CE874;
      *&__dst[96] = xmmword_1C25CE884;
      *&__dst[112] = unk_1C25CE894;
      *&__dst[128] = xmmword_1C25CE8A4;
      *__dst = xmmword_1C25CE824;
      *&__dst[16] = unk_1C25CE834;
      *&__dst[32] = xmmword_1C25CE844;
      *&__dst[48] = unk_1C25CE854;
      *&__dst[64] = xmmword_1C25CE864;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25CE8E4, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25CECA4, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25CF064;
      *&__dst[16] = unk_1C25CF074;
      *&__dst[32] = xmmword_1C25CF084;
      *&__dst[48] = unk_1C25CF094;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 24:
      *&__dst[16] = unk_1C25CDE1C;
      *&__dst[32] = xmmword_1C25CDE2C;
      *&__dst[48] = unk_1C25CDE3C;
      *&__dst[64] = 0x41F0831241EF45A2;
      *__dst = xmmword_1C25CDE0C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25CDF04;
      *&__dst[192] = xmmword_1C25CDF14;
      *&__dst[112] = unk_1C25CDEC4;
      *&__dst[128] = xmmword_1C25CDED4;
      *&__dst[144] = unk_1C25CDEE4;
      *&__dst[160] = xmmword_1C25CDEF4;
      *&__dst[48] = unk_1C25CDE84;
      *&__dst[64] = xmmword_1C25CDE94;
      *&__dst[80] = unk_1C25CDEA4;
      *&__dst[96] = xmmword_1C25CDEB4;
      *__dst = xmmword_1C25CDE54;
      *&__dst[208] = 0x3A288AF93705D7F6;
      *&__dst[16] = unk_1C25CDE64;
      *&__dst[32] = xmmword_1C25CDE74;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25CDF2C, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25CE364, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25CE7AC;
      *&__dst[32] = xmmword_1C25CE7BC;
      *&__dst[48] = unk_1C25CE7CC;
      *&__dst[64] = 0x3F2C26573F297785;
      *__dst = xmmword_1C25CE79C;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 25:
      *&__dst[16] = unk_1C25CB02C;
      *&__dst[32] = xmmword_1C25CB03C;
      *&__dst[48] = unk_1C25CB04C;
      *&__dst[64] = 0x420B90CD41F6113ELL;
      *__dst = xmmword_1C25CB01C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25CB114;
      *&__dst[192] = xmmword_1C25CB124;
      *&__dst[112] = unk_1C25CB0D4;
      *&__dst[128] = xmmword_1C25CB0E4;
      *&__dst[144] = unk_1C25CB0F4;
      *&__dst[160] = xmmword_1C25CB104;
      *&__dst[48] = unk_1C25CB094;
      *&__dst[64] = xmmword_1C25CB0A4;
      *&__dst[80] = unk_1C25CB0B4;
      *&__dst[96] = xmmword_1C25CB0C4;
      *__dst = xmmword_1C25CB064;
      *&__dst[208] = 0x3928D21C394C78EALL;
      *&__dst[16] = unk_1C25CB074;
      *&__dst[32] = xmmword_1C25CB084;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25CB13C, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25CB574, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25CB9BC;
      *&__dst[32] = xmmword_1C25CB9CC;
      *&__dst[48] = unk_1C25CB9DC;
      *&__dst[64] = 0x3F2879D53F2547F1;
      *__dst = xmmword_1C25CB9AC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 26:
      *__dst = xmmword_1C25CA6D0;
      *&__dst[16] = unk_1C25CA6E0;
      *&__dst[32] = xmmword_1C25CA6F0;
      *&__dst[48] = unk_1C25CA700;
      *&__dst[64] = 1107628358;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25CA7A4;
      *&__dst[160] = xmmword_1C25CA7B4;
      *&__dst[176] = unk_1C25CA7C4;
      *&__dst[188] = unk_1C25CA7D0;
      *&__dst[80] = unk_1C25CA764;
      *&__dst[96] = xmmword_1C25CA774;
      *&__dst[112] = unk_1C25CA784;
      *&__dst[128] = xmmword_1C25CA794;
      *&__dst[16] = unk_1C25CA724;
      *&__dst[32] = xmmword_1C25CA734;
      *&__dst[48] = unk_1C25CA744;
      *&__dst[64] = xmmword_1C25CA754;
      *__dst = xmmword_1C25CA714;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25CA7E0, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25CABDC, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25CAFD8;
      *&__dst[16] = unk_1C25CAFE8;
      *&__dst[32] = xmmword_1C25CAFF8;
      *&__dst[48] = unk_1C25CB008;
      *&__dst[64] = 1059764423;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 27:
      *__dst = xmmword_1C25CC3CC;
      *&__dst[16] = unk_1C25CC3DC;
      *&__dst[32] = xmmword_1C25CC3EC;
      *&__dst[48] = unk_1C25CC3FC;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25CC49C;
      *&__dst[160] = xmmword_1C25CC4AC;
      *&__dst[176] = unk_1C25CC4BC;
      *&__dst[80] = unk_1C25CC45C;
      *&__dst[96] = xmmword_1C25CC46C;
      *&__dst[112] = unk_1C25CC47C;
      *&__dst[128] = xmmword_1C25CC48C;
      *__dst = xmmword_1C25CC40C;
      *&__dst[16] = unk_1C25CC41C;
      *&__dst[32] = xmmword_1C25CC42C;
      *&__dst[48] = unk_1C25CC43C;
      *&__dst[64] = xmmword_1C25CC44C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25CC4CC, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25CC88C, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25CCC4C;
      *&__dst[16] = unk_1C25CCC5C;
      *&__dst[32] = xmmword_1C25CCC6C;
      *&__dst[48] = unk_1C25CCC7C;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 28:
      *&__dst[16] = unk_1C25CBA04;
      *&__dst[32] = xmmword_1C25CBA14;
      *&__dst[48] = unk_1C25CBA24;
      *&__dst[64] = 0x41FDA7F941E7D63FLL;
      *__dst = xmmword_1C25CB9F4;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25CBAEC;
      *&__dst[192] = xmmword_1C25CBAFC;
      *&__dst[112] = unk_1C25CBAAC;
      *&__dst[128] = xmmword_1C25CBABC;
      *&__dst[144] = unk_1C25CBACC;
      *&__dst[160] = xmmword_1C25CBADC;
      *&__dst[48] = unk_1C25CBA6C;
      *&__dst[64] = xmmword_1C25CBA7C;
      *&__dst[80] = unk_1C25CBA8C;
      *&__dst[96] = xmmword_1C25CBA9C;
      *__dst = xmmword_1C25CBA3C;
      *&__dst[208] = 0x380A697B358637BDLL;
      *&__dst[16] = unk_1C25CBA4C;
      *&__dst[32] = xmmword_1C25CBA5C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25CBB14, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25CBF4C, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25CC394;
      *&__dst[32] = xmmword_1C25CC3A4;
      *&__dst[48] = unk_1C25CC3B4;
      *&__dst[64] = 0x3F2936D63F26466BLL;
      *__dst = xmmword_1C25CC384;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 29:
      *__dst = xmmword_1C25D772C;
      *&__dst[16] = unk_1C25D773C;
      *&__dst[32] = xmmword_1C25D774C;
      *&__dst[44] = *(&xmmword_1C25D774C + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25D77D8;
      *&__dst[128] = xmmword_1C25D77E8;
      *&__dst[144] = unk_1C25D77F8;
      *&__dst[160] = xmmword_1C25D7808;
      *&__dst[48] = unk_1C25D7798;
      *&__dst[64] = xmmword_1C25D77A8;
      *&__dst[80] = unk_1C25D77B8;
      *&__dst[96] = xmmword_1C25D77C8;
      *__dst = xmmword_1C25D7768;
      *&__dst[16] = unk_1C25D7778;
      *&__dst[32] = xmmword_1C25D7788;
      *&__dst[176] = 974499625;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25D781C, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25D7BA0, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25D7F24;
      *&__dst[16] = unk_1C25D7F34;
      *&__dst[32] = xmmword_1C25D7F44;
      *&__dst[44] = *(&xmmword_1C25D7F44 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 30:
      *&__dst[16] = unk_1C25D9438;
      *&__dst[32] = xmmword_1C25D9448;
      *&__dst[48] = unk_1C25D9458;
      *&__dst[64] = 0x420394AC41EFBA84;
      *__dst = xmmword_1C25D9428;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25D9520;
      *&__dst[192] = xmmword_1C25D9530;
      *&__dst[112] = unk_1C25D94E0;
      *&__dst[128] = xmmword_1C25D94F0;
      *&__dst[144] = unk_1C25D9500;
      *&__dst[160] = xmmword_1C25D9510;
      *&__dst[48] = unk_1C25D94A0;
      *&__dst[64] = xmmword_1C25D94B0;
      *&__dst[80] = unk_1C25D94C0;
      *&__dst[96] = xmmword_1C25D94D0;
      *__dst = xmmword_1C25D9470;
      *&__dst[208] = 0x3955E8D5390A697BLL;
      *&__dst[16] = unk_1C25D9480;
      *&__dst[32] = xmmword_1C25D9490;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25D9548, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25D9980, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25D9DC8;
      *&__dst[32] = xmmword_1C25D9DD8;
      *&__dst[48] = unk_1C25D9DE8;
      *&__dst[64] = 0x3F210E343F19E27ALL;
      *__dst = xmmword_1C25D9DB8;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 31:
      *&__dst[16] = unk_1C25D9E10;
      *&__dst[32] = xmmword_1C25D9E20;
      *&__dst[48] = unk_1C25D9E30;
      *&__dst[60] = unk_1C25D9E3C;
      *__dst = xmmword_1C25D9E00;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[76], 0x13uLL);
      *&__dst[176] = unk_1C25D9EFC;
      *&__dst[192] = xmmword_1C25D9F0C;
      *&__dst[208] = unk_1C25D9F1C;
      *&__dst[112] = unk_1C25D9EBC;
      *&__dst[128] = xmmword_1C25D9ECC;
      *&__dst[144] = unk_1C25D9EDC;
      *&__dst[160] = xmmword_1C25D9EEC;
      *&__dst[48] = unk_1C25D9E7C;
      *&__dst[64] = xmmword_1C25D9E8C;
      *&__dst[80] = unk_1C25D9E9C;
      *&__dst[96] = xmmword_1C25D9EAC;
      *__dst = xmmword_1C25D9E4C;
      *&__dst[16] = unk_1C25D9E5C;
      *&__dst[32] = xmmword_1C25D9E6C;
      *&__dst[224] = 929751435;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[228], 0x39uLL);
      memcpy(__dst, &unk_1C25D9F30, 0x474uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1140], 0x11DuLL);
      memcpy(__dst, &unk_1C25DA3A4, 0x474uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1140], 0x11DuLL);
      *&__dst[16] = unk_1C25DA828;
      *&__dst[32] = xmmword_1C25DA838;
      *&__dst[48] = unk_1C25DA848;
      *&__dst[60] = unk_1C25DA854;
      *__dst = xmmword_1C25DA818;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[76], 0x13uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 32:
      *__dst = xmmword_1C25DA864;
      *&__dst[16] = unk_1C25DA874;
      *&__dst[32] = xmmword_1C25DA884;
      *&__dst[44] = *(&xmmword_1C25DA884 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25DA910;
      *&__dst[128] = xmmword_1C25DA920;
      *&__dst[144] = unk_1C25DA930;
      *&__dst[160] = xmmword_1C25DA940;
      *&__dst[48] = unk_1C25DA8D0;
      *&__dst[64] = xmmword_1C25DA8E0;
      *&__dst[80] = unk_1C25DA8F0;
      *&__dst[96] = xmmword_1C25DA900;
      *__dst = xmmword_1C25DA8A0;
      *&__dst[16] = unk_1C25DA8B0;
      *&__dst[32] = xmmword_1C25DA8C0;
      *&__dst[176] = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25DA954, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25DACD8, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25DB05C;
      *&__dst[16] = unk_1C25DB06C;
      *&__dst[32] = xmmword_1C25DB07C;
      *&__dst[44] = *(&xmmword_1C25DB07C + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 33:
      *&__dst[16] = unk_1C25DB0A8;
      *&__dst[32] = xmmword_1C25DB0B8;
      *&__dst[48] = unk_1C25DB0C8;
      *&__dst[64] = 0x42004EF741F0AF74;
      *__dst = xmmword_1C25DB098;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25DB190;
      *&__dst[192] = xmmword_1C25DB1A0;
      *&__dst[112] = unk_1C25DB150;
      *&__dst[128] = xmmword_1C25DB160;
      *&__dst[144] = unk_1C25DB170;
      *&__dst[160] = xmmword_1C25DB180;
      *&__dst[48] = unk_1C25DB110;
      *&__dst[64] = xmmword_1C25DB120;
      *&__dst[80] = unk_1C25DB130;
      *&__dst[96] = xmmword_1C25DB140;
      *__dst = xmmword_1C25DB0E0;
      *&__dst[208] = 0x37E27E0F3855E8D5;
      *&__dst[16] = unk_1C25DB0F0;
      *&__dst[32] = xmmword_1C25DB100;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25DB1B8, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25DB5F0, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25DBA38;
      *&__dst[32] = xmmword_1C25DBA48;
      *&__dst[48] = unk_1C25DBA58;
      *&__dst[64] = 0x3F2DAFE23F2C5B3ALL;
      *__dst = xmmword_1C25DBA28;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 34:
      *&__dst[16] = unk_1C25DBA80;
      *&__dst[32] = xmmword_1C25DBA90;
      *&__dst[48] = unk_1C25DBAA0;
      *&__dst[64] = 0x4200033741E8DB70;
      *__dst = xmmword_1C25DBA70;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[72], 0x12uLL);
      *&__dst[176] = unk_1C25DBB68;
      *&__dst[192] = xmmword_1C25DBB78;
      *&__dst[112] = unk_1C25DBB28;
      *&__dst[128] = xmmword_1C25DBB38;
      *&__dst[144] = unk_1C25DBB48;
      *&__dst[160] = xmmword_1C25DBB58;
      *&__dst[48] = unk_1C25DBAE8;
      *&__dst[64] = xmmword_1C25DBAF8;
      *&__dst[80] = unk_1C25DBB08;
      *&__dst[96] = xmmword_1C25DBB18;
      *__dst = xmmword_1C25DBAB8;
      *&__dst[208] = 0x38BAA583390205FFLL;
      *&__dst[16] = unk_1C25DBAC8;
      *&__dst[32] = xmmword_1C25DBAD8;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[216], 0x36uLL);
      memcpy(__dst, &unk_1C25DBB90, 0x438uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1080], 0x10EuLL);
      memcpy(__dst, &unk_1C25DBFC8, 0x438uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1080], 0x10EuLL);
      *&__dst[16] = unk_1C25DC410;
      *&__dst[32] = xmmword_1C25DC420;
      *&__dst[48] = unk_1C25DC430;
      *&__dst[64] = 0x3F31BB283F2DFA01;
      *__dst = xmmword_1C25DC400;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[72], 0x12uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 35:
      *__dst = xmmword_1C25DE630;
      *&__dst[16] = unk_1C25DE640;
      *&__dst[32] = xmmword_1C25DE650;
      *&__dst[48] = unk_1C25DE660;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25DE700;
      *&__dst[160] = xmmword_1C25DE710;
      *&__dst[176] = unk_1C25DE720;
      *&__dst[80] = unk_1C25DE6C0;
      *&__dst[96] = xmmword_1C25DE6D0;
      *&__dst[112] = unk_1C25DE6E0;
      *&__dst[128] = xmmword_1C25DE6F0;
      *__dst = xmmword_1C25DE670;
      *&__dst[16] = unk_1C25DE680;
      *&__dst[32] = xmmword_1C25DE690;
      *&__dst[48] = unk_1C25DE6A0;
      *&__dst[64] = xmmword_1C25DE6B0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25DE730, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25DEAF0, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25DEEB0;
      *&__dst[16] = unk_1C25DEEC0;
      *&__dst[32] = xmmword_1C25DEED0;
      *&__dst[48] = unk_1C25DEEE0;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 36:
      *__dst = xmmword_1C25DEEF0;
      *&__dst[16] = unk_1C25DEF00;
      *&__dst[32] = xmmword_1C25DEF10;
      *&__dst[48] = unk_1C25DEF20;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25DEFC0;
      *&__dst[160] = xmmword_1C25DEFD0;
      *&__dst[176] = unk_1C25DEFE0;
      *&__dst[80] = unk_1C25DEF80;
      *&__dst[96] = xmmword_1C25DEF90;
      *&__dst[112] = unk_1C25DEFA0;
      *&__dst[128] = xmmword_1C25DEFB0;
      *__dst = xmmword_1C25DEF30;
      *&__dst[16] = unk_1C25DEF40;
      *&__dst[32] = xmmword_1C25DEF50;
      *&__dst[48] = unk_1C25DEF60;
      *&__dst[64] = xmmword_1C25DEF70;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25DEFF0, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25DF3B0, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25DF770;
      *&__dst[16] = unk_1C25DF780;
      *&__dst[32] = xmmword_1C25DF790;
      *&__dst[48] = unk_1C25DF7A0;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 37:
      *__dst = xmmword_1C25DF7B0;
      *&__dst[16] = unk_1C25DF7C0;
      *&__dst[32] = xmmword_1C25DF7D0;
      *&__dst[44] = *(&xmmword_1C25DF7D0 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25DF85C;
      *&__dst[128] = xmmword_1C25DF86C;
      *&__dst[144] = unk_1C25DF87C;
      *&__dst[160] = xmmword_1C25DF88C;
      *&__dst[48] = unk_1C25DF81C;
      *&__dst[64] = xmmword_1C25DF82C;
      *&__dst[80] = unk_1C25DF83C;
      *&__dst[96] = xmmword_1C25DF84C;
      *__dst = xmmword_1C25DF7EC;
      *&__dst[16] = unk_1C25DF7FC;
      *&__dst[32] = xmmword_1C25DF80C;
      *&__dst[176] = 1001742066;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25DF8A0, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25DFC24, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25DFFA8;
      *&__dst[16] = unk_1C25DFFB8;
      *&__dst[32] = xmmword_1C25DFFC8;
      *&__dst[44] = *(&xmmword_1C25DFFC8 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 38:
      *__dst = xmmword_1C25DFFE4;
      *&__dst[16] = unk_1C25DFFF4;
      *&__dst[32] = xmmword_1C25E0004;
      *&__dst[48] = unk_1C25E0014;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25E00B4;
      *&__dst[160] = xmmword_1C25E00C4;
      *&__dst[176] = unk_1C25E00D4;
      *&__dst[80] = unk_1C25E0074;
      *&__dst[96] = xmmword_1C25E0084;
      *&__dst[112] = unk_1C25E0094;
      *&__dst[128] = xmmword_1C25E00A4;
      *__dst = xmmword_1C25E0024;
      *&__dst[16] = unk_1C25E0034;
      *&__dst[32] = xmmword_1C25E0044;
      *&__dst[48] = unk_1C25E0054;
      *&__dst[64] = xmmword_1C25E0064;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25E00E4, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25E04A4, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25E0864;
      *&__dst[16] = unk_1C25E0874;
      *&__dst[32] = xmmword_1C25E0884;
      *&__dst[48] = unk_1C25E0894;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 39:
      *__dst = xmmword_1C25E08A4;
      *&__dst[16] = unk_1C25E08B4;
      *&__dst[32] = xmmword_1C25E08C4;
      *&__dst[48] = unk_1C25E08D4;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25E0974;
      *&__dst[160] = xmmword_1C25E0984;
      *&__dst[176] = unk_1C25E0994;
      *&__dst[80] = unk_1C25E0934;
      *&__dst[96] = xmmword_1C25E0944;
      *&__dst[112] = unk_1C25E0954;
      *&__dst[128] = xmmword_1C25E0964;
      *__dst = xmmword_1C25E08E4;
      *&__dst[16] = unk_1C25E08F4;
      *&__dst[32] = xmmword_1C25E0904;
      *&__dst[48] = unk_1C25E0914;
      *&__dst[64] = xmmword_1C25E0924;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25E09A4, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25E0D64, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25E1124;
      *&__dst[16] = unk_1C25E1134;
      *&__dst[32] = xmmword_1C25E1144;
      *&__dst[48] = unk_1C25E1154;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 40:
      *__dst = xmmword_1C25E23CC;
      *&__dst[16] = unk_1C25E23DC;
      *&__dst[32] = xmmword_1C25E23EC;
      *&__dst[48] = 0x4204750141F0E75ELL;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[56], 0xEuLL);
      *&__dst[112] = unk_1C25E2474;
      *&__dst[128] = xmmword_1C25E2484;
      *&__dst[144] = unk_1C25E2494;
      *&__dst[48] = unk_1C25E2434;
      *&__dst[64] = xmmword_1C25E2444;
      *&__dst[80] = unk_1C25E2454;
      *&__dst[96] = xmmword_1C25E2464;
      *__dst = xmmword_1C25E2404;
      *&__dst[160] = 0x3C2A10E03AC7C0F4;
      *&__dst[16] = unk_1C25E2414;
      *&__dst[32] = xmmword_1C25E2424;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[168], 0x2AuLL);
      memcpy(__dst, &unk_1C25E24AC, 0x348uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[840], 0xD2uLL);
      memcpy(__dst, &unk_1C25E27F4, 0x348uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[840], 0xD2uLL);
      *__dst = xmmword_1C25E2B3C;
      *&__dst[16] = unk_1C25E2B4C;
      *&__dst[32] = xmmword_1C25E2B5C;
      *&__dst[48] = 0x3E7AD7D83E6BD33DLL;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[56], 0xEuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 41:
      *__dst = xmmword_1C25E2B74;
      *&__dst[16] = unk_1C25E2B84;
      *&__dst[32] = xmmword_1C25E2B94;
      *&__dst[44] = *(&xmmword_1C25E2B94 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E11D4;
      *&__dst[128] = xmmword_1C25E11E4;
      *&__dst[144] = unk_1C25E11F4;
      *&__dst[160] = xmmword_1C25E1204;
      *&__dst[48] = unk_1C25E1194;
      *&__dst[64] = xmmword_1C25E11A4;
      *&__dst[80] = unk_1C25E11B4;
      *&__dst[96] = xmmword_1C25E11C4;
      *__dst = xmmword_1C25E1164;
      *&__dst[16] = unk_1C25E1174;
      *&__dst[32] = xmmword_1C25E1184;
      *&__dst[176] = 986478826;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E2C64, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E2FE8, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E336C;
      *&__dst[16] = unk_1C25E337C;
      *&__dst[32] = xmmword_1C25E338C;
      *&__dst[44] = *(&xmmword_1C25E338C + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 42:
      *__dst = xmmword_1C25E1218;
      *&__dst[16] = unk_1C25E1228;
      *&__dst[32] = xmmword_1C25E1238;
      *&__dst[44] = *(&xmmword_1C25E1238 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E12C4;
      *&__dst[128] = xmmword_1C25E12D4;
      *&__dst[144] = unk_1C25E12E4;
      *&__dst[160] = xmmword_1C25E12F4;
      *&__dst[48] = unk_1C25E1284;
      *&__dst[64] = xmmword_1C25E1294;
      *&__dst[80] = unk_1C25E12A4;
      *&__dst[96] = xmmword_1C25E12B4;
      *__dst = xmmword_1C25E1254;
      *&__dst[16] = unk_1C25E1264;
      *&__dst[32] = xmmword_1C25E1274;
      *&__dst[176] = 910775196;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E1308, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E168C, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E1A10;
      *&__dst[16] = unk_1C25E1A20;
      *&__dst[32] = xmmword_1C25E1A30;
      *&__dst[44] = *(&xmmword_1C25E1A30 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 43:
      *__dst = xmmword_1C25E1B0C;
      *&__dst[16] = unk_1C25E1B1C;
      *&__dst[32] = xmmword_1C25E1B2C;
      *&__dst[48] = unk_1C25E1B3C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25E1ADC;
      *&__dst[160] = xmmword_1C25E1AEC;
      *&__dst[176] = unk_1C25E1AFC;
      *&__dst[80] = unk_1C25E1A9C;
      *&__dst[96] = xmmword_1C25E1AAC;
      *&__dst[112] = unk_1C25E1ABC;
      *&__dst[128] = xmmword_1C25E1ACC;
      *__dst = xmmword_1C25E1A4C;
      *&__dst[16] = unk_1C25E1A5C;
      *&__dst[32] = xmmword_1C25E1A6C;
      *&__dst[48] = unk_1C25E1A7C;
      *&__dst[64] = xmmword_1C25E1A8C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25E1C0C, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25E1FCC, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25E238C;
      *&__dst[16] = unk_1C25E239C;
      *&__dst[32] = xmmword_1C25E23AC;
      *&__dst[48] = unk_1C25E23BC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 44:
      *__dst = xmmword_1C25E1B0C;
      *&__dst[16] = unk_1C25E1B1C;
      *&__dst[32] = xmmword_1C25E1B2C;
      *&__dst[48] = unk_1C25E1B3C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25E1BDC;
      *&__dst[160] = xmmword_1C25E1BEC;
      *&__dst[176] = unk_1C25E1BFC;
      *&__dst[80] = unk_1C25E1B9C;
      *&__dst[96] = xmmword_1C25E1BAC;
      *&__dst[112] = unk_1C25E1BBC;
      *&__dst[128] = xmmword_1C25E1BCC;
      *__dst = xmmword_1C25E1B4C;
      *&__dst[16] = unk_1C25E1B5C;
      *&__dst[32] = xmmword_1C25E1B6C;
      *&__dst[48] = unk_1C25E1B7C;
      *&__dst[64] = xmmword_1C25E1B8C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25E1C0C, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25E1FCC, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25E238C;
      *&__dst[16] = unk_1C25E239C;
      *&__dst[32] = xmmword_1C25E23AC;
      *&__dst[48] = unk_1C25E23BC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 45:
    case 54:
      *__dst = xmmword_1C25E23CC;
      *&__dst[16] = unk_1C25E23DC;
      *&__dst[32] = xmmword_1C25E23EC;
      *&__dst[48] = 0x4204750141F0E75ELL;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[56], 0xEuLL);
      *&__dst[112] = unk_1C25E2474;
      *&__dst[128] = xmmword_1C25E2484;
      *&__dst[144] = unk_1C25E2494;
      *&__dst[48] = unk_1C25E2434;
      *&__dst[64] = xmmword_1C25E2444;
      *&__dst[80] = unk_1C25E2454;
      *&__dst[96] = xmmword_1C25E2464;
      *__dst = xmmword_1C25E2404;
      *&__dst[160] = 0x3C2A10E03AC7C0F4;
      *&__dst[16] = unk_1C25E2414;
      *&__dst[32] = xmmword_1C25E2424;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[168], 0x2AuLL);
      memcpy(__dst, &unk_1C25E24AC, 0x348uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[840], 0xD2uLL);
      memcpy(__dst, &unk_1C25E27F4, 0x348uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[840], 0xD2uLL);
      *__dst = xmmword_1C25E2B3C;
      *&__dst[16] = unk_1C25E2B4C;
      *&__dst[32] = xmmword_1C25E2B5C;
      *&__dst[48] = 0x3E7AD7D83E6BD33DLL;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[56], 0xEuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 46:
    case 55:
      *__dst = xmmword_1C25E2B74;
      *&__dst[16] = unk_1C25E2B84;
      *&__dst[32] = xmmword_1C25E2B94;
      *&__dst[44] = *(&xmmword_1C25E2B94 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E2C20;
      *&__dst[128] = xmmword_1C25E2C30;
      *&__dst[144] = unk_1C25E2C40;
      *&__dst[160] = xmmword_1C25E2C50;
      *&__dst[48] = unk_1C25E2BE0;
      *&__dst[64] = xmmword_1C25E2BF0;
      *&__dst[80] = unk_1C25E2C00;
      *&__dst[96] = xmmword_1C25E2C10;
      *__dst = xmmword_1C25E2BB0;
      *&__dst[16] = unk_1C25E2BC0;
      *&__dst[32] = xmmword_1C25E2BD0;
      *&__dst[176] = 991517359;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E2C64, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E2FE8, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E336C;
      *&__dst[16] = unk_1C25E337C;
      *&__dst[32] = xmmword_1C25E338C;
      *&__dst[44] = *(&xmmword_1C25E338C + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 47:
    case 56:
      *__dst = xmmword_1C25E33A8;
      *&__dst[16] = unk_1C25E33B8;
      *&__dst[32] = xmmword_1C25E33C8;
      *&__dst[48] = 0x41FF12A441E0E33ALL;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[56], 0xEuLL);
      *&__dst[112] = unk_1C25E3450;
      *&__dst[128] = xmmword_1C25E3460;
      *&__dst[144] = unk_1C25E3470;
      *&__dst[48] = unk_1C25E3410;
      *&__dst[64] = xmmword_1C25E3420;
      *&__dst[80] = unk_1C25E3430;
      *&__dst[96] = xmmword_1C25E3440;
      *__dst = xmmword_1C25E33E0;
      *&__dst[160] = 0x36C9539C38C9539CLL;
      *&__dst[16] = unk_1C25E33F0;
      *&__dst[32] = xmmword_1C25E3400;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[168], 0x2AuLL);
      memcpy(__dst, &unk_1C25E3488, 0x348uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[840], 0xD2uLL);
      memcpy(__dst, &unk_1C25E37D0, 0x348uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[840], 0xD2uLL);
      *__dst = xmmword_1C25E3B18;
      *&__dst[16] = unk_1C25E3B28;
      *&__dst[32] = xmmword_1C25E3B38;
      *&__dst[48] = 0x3E92DA983E8708ABLL;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[56], 0xEuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 48:
    case 57:
      *__dst = xmmword_1C25E3B50;
      *&__dst[16] = unk_1C25E3B60;
      *&__dst[32] = xmmword_1C25E3B70;
      *&__dst[48] = unk_1C25E3B80;
      *&__dst[64] = 1107541042;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25E3C24;
      *&__dst[160] = xmmword_1C25E3C34;
      *&__dst[176] = unk_1C25E3C44;
      *&__dst[188] = unk_1C25E3C50;
      *&__dst[80] = unk_1C25E3BE4;
      *&__dst[96] = xmmword_1C25E3BF4;
      *&__dst[112] = unk_1C25E3C04;
      *&__dst[128] = xmmword_1C25E3C14;
      *&__dst[16] = unk_1C25E3BA4;
      *&__dst[32] = xmmword_1C25E3BB4;
      *&__dst[48] = unk_1C25E3BC4;
      *&__dst[64] = xmmword_1C25E3BD4;
      *__dst = xmmword_1C25E3B94;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25E3C60, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25E405C, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25E4458;
      *&__dst[16] = unk_1C25E4468;
      *&__dst[32] = xmmword_1C25E4478;
      *&__dst[48] = unk_1C25E4488;
      *&__dst[64] = 1051758571;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 49:
    case 58:
      *__dst = xmmword_1C25E449C;
      *&__dst[16] = unk_1C25E44AC;
      *&__dst[32] = xmmword_1C25E44BC;
      *&__dst[44] = *(&xmmword_1C25E44BC + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E4548;
      *&__dst[128] = xmmword_1C25E4558;
      *&__dst[144] = unk_1C25E4568;
      *&__dst[160] = xmmword_1C25E4578;
      *&__dst[48] = unk_1C25E4508;
      *&__dst[64] = xmmword_1C25E4518;
      *&__dst[80] = unk_1C25E4528;
      *&__dst[96] = xmmword_1C25E4538;
      *__dst = xmmword_1C25E44D8;
      *&__dst[16] = unk_1C25E44E8;
      *&__dst[32] = xmmword_1C25E44F8;
      *&__dst[176] = 1008605961;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E458C, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E4910, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E4C94;
      *&__dst[16] = unk_1C25E4CA4;
      *&__dst[32] = xmmword_1C25E4CB4;
      *&__dst[44] = *(&xmmword_1C25E4CB4 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 50:
      *__dst = xmmword_1C25DCD08;
      *&__dst[16] = unk_1C25DCD18;
      *&__dst[32] = xmmword_1C25DCD28;
      *&__dst[44] = *(&xmmword_1C25DCD28 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25DCDB4;
      *&__dst[128] = xmmword_1C25DCDC4;
      *&__dst[144] = unk_1C25DCDD4;
      *&__dst[160] = xmmword_1C25DCDE4;
      *&__dst[48] = unk_1C25DCD74;
      *&__dst[64] = xmmword_1C25DCD84;
      *&__dst[80] = unk_1C25DCD94;
      *&__dst[96] = xmmword_1C25DCDA4;
      *__dst = xmmword_1C25DCD44;
      *&__dst[16] = unk_1C25DCD54;
      *&__dst[32] = xmmword_1C25DCD64;
      *&__dst[176] = 949557140;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25DCDF8, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25DD17C, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25DD500;
      *&__dst[16] = unk_1C25DD510;
      *&__dst[32] = xmmword_1C25DD520;
      *&__dst[44] = *(&xmmword_1C25DD520 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 51:
      *__dst = xmmword_1C25DC448;
      *&__dst[16] = unk_1C25DC458;
      *&__dst[32] = xmmword_1C25DC468;
      *&__dst[48] = unk_1C25DC478;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25DC518;
      *&__dst[160] = xmmword_1C25DC528;
      *&__dst[176] = unk_1C25DC538;
      *&__dst[80] = unk_1C25DC4D8;
      *&__dst[96] = xmmword_1C25DC4E8;
      *&__dst[112] = unk_1C25DC4F8;
      *&__dst[128] = xmmword_1C25DC508;
      *__dst = xmmword_1C25DC488;
      *&__dst[16] = unk_1C25DC498;
      *&__dst[32] = xmmword_1C25DC4A8;
      *&__dst[48] = unk_1C25DC4B8;
      *&__dst[64] = xmmword_1C25DC4C8;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25DC548, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25DC908, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25DCCC8;
      *&__dst[16] = unk_1C25DCCD8;
      *&__dst[32] = xmmword_1C25DCCE8;
      *&__dst[48] = unk_1C25DCCF8;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 52:
      *__dst = xmmword_1C25DD53C;
      *&__dst[16] = unk_1C25DD54C;
      *&__dst[32] = xmmword_1C25DD55C;
      *&__dst[48] = unk_1C25DD56C;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[64], 0x10uLL);
      *&__dst[144] = unk_1C25DD60C;
      *&__dst[160] = xmmword_1C25DD61C;
      *&__dst[176] = unk_1C25DD62C;
      *&__dst[80] = unk_1C25DD5CC;
      *&__dst[96] = xmmword_1C25DD5DC;
      *&__dst[112] = unk_1C25DD5EC;
      *&__dst[128] = xmmword_1C25DD5FC;
      *__dst = xmmword_1C25DD57C;
      *&__dst[16] = unk_1C25DD58C;
      *&__dst[32] = xmmword_1C25DD59C;
      *&__dst[48] = unk_1C25DD5AC;
      *&__dst[64] = xmmword_1C25DD5BC;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[192], 0x30uLL);
      memcpy(__dst, &unk_1C25DD63C, 0x3C0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[960], 0xF0uLL);
      memcpy(__dst, &unk_1C25DD9FC, 0x3C0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[960], 0xF0uLL);
      *__dst = xmmword_1C25DDDBC;
      *&__dst[16] = unk_1C25DDDCC;
      *&__dst[32] = xmmword_1C25DDDDC;
      *&__dst[48] = unk_1C25DDDEC;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[64], 0x10uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 53:
      *__dst = xmmword_1C25DDDFC;
      *&__dst[16] = unk_1C25DDE0C;
      *&__dst[32] = xmmword_1C25DDE1C;
      *&__dst[44] = *(&xmmword_1C25DDE1C + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25DDEA8;
      *&__dst[128] = xmmword_1C25DDEB8;
      *&__dst[144] = unk_1C25DDEC8;
      *&__dst[160] = xmmword_1C25DDED8;
      *&__dst[48] = unk_1C25DDE68;
      *&__dst[64] = xmmword_1C25DDE78;
      *&__dst[80] = unk_1C25DDE88;
      *&__dst[96] = xmmword_1C25DDE98;
      *__dst = xmmword_1C25DDE38;
      *&__dst[16] = unk_1C25DDE48;
      *&__dst[32] = xmmword_1C25DDE58;
      *&__dst[176] = 944604505;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25DDEEC, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25DE270, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25DE5F4;
      *&__dst[16] = unk_1C25DE604;
      *&__dst[32] = xmmword_1C25DE614;
      *&__dst[44] = *(&xmmword_1C25DE614 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 59:
      *__dst = xmmword_1C25E4CD0;
      *&__dst[16] = unk_1C25E4CE0;
      *&__dst[32] = xmmword_1C25E4CF0;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[48], 0xCuLL);
      *&__dst[80] = unk_1C25E4D50;
      *&__dst[96] = xmmword_1C25E4D60;
      *&__dst[112] = unk_1C25E4D70;
      *&__dst[128] = xmmword_1C25E4D80;
      *&__dst[16] = unk_1C25E4D10;
      *&__dst[32] = xmmword_1C25E4D20;
      *&__dst[48] = unk_1C25E4D30;
      *&__dst[64] = xmmword_1C25E4D40;
      *__dst = xmmword_1C25E4D00;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[144], 0x24uLL);
      memcpy(__dst, &unk_1C25E4D90, 0x2D0uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[720], 0xB4uLL);
      memcpy(__dst, &unk_1C25E5060, 0x2D0uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[720], 0xB4uLL);
      *__dst = xmmword_1C25E5330;
      *&__dst[16] = unk_1C25E5340;
      *&__dst[32] = xmmword_1C25E5350;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[48], 0xCuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 60:
      *__dst = xmmword_1C25E5360;
      *&__dst[16] = unk_1C25E5370;
      *&__dst[32] = xmmword_1C25E5380;
      *&__dst[48] = 1106905750;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[52], 0xDuLL);
      *&__dst[112] = unk_1C25E5404;
      *&__dst[128] = xmmword_1C25E5414;
      *&__dst[140] = *(&xmmword_1C25E5414 + 12);
      *&__dst[48] = unk_1C25E53C4;
      *&__dst[64] = xmmword_1C25E53D4;
      *&__dst[80] = unk_1C25E53E4;
      *&__dst[96] = xmmword_1C25E53F4;
      *__dst = xmmword_1C25E5394;
      *&__dst[16] = unk_1C25E53A4;
      *&__dst[32] = xmmword_1C25E53B4;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[156], 0x27uLL);
      memcpy(__dst, &unk_1C25E5430, 0x30CuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[780], 0xC3uLL);
      memcpy(__dst, &unk_1C25E573C, 0x30CuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[780], 0xC3uLL);
      *__dst = xmmword_1C25E5A48;
      *&__dst[16] = unk_1C25E5A58;
      *&__dst[32] = xmmword_1C25E5A68;
      *&__dst[48] = 1049737453;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[52], 0xDuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 61:
      *__dst = xmmword_1C25E5A7C;
      *&__dst[16] = unk_1C25E5A8C;
      *&__dst[32] = xmmword_1C25E5A9C;
      *&__dst[44] = *(&xmmword_1C25E5A9C + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E5B28;
      *&__dst[128] = xmmword_1C25E5B38;
      *&__dst[144] = unk_1C25E5B48;
      *&__dst[160] = xmmword_1C25E5B58;
      *&__dst[48] = unk_1C25E5AE8;
      *&__dst[64] = xmmword_1C25E5AF8;
      *&__dst[80] = unk_1C25E5B08;
      *&__dst[96] = xmmword_1C25E5B18;
      *__dst = xmmword_1C25E5AB8;
      *&__dst[16] = unk_1C25E5AC8;
      *&__dst[32] = xmmword_1C25E5AD8;
      *&__dst[176] = 936490775;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E5B6C, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E5EF0, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E6274;
      *&__dst[16] = unk_1C25E6284;
      *&__dst[32] = xmmword_1C25E6294;
      *&__dst[44] = *(&xmmword_1C25E6294 + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 62:
      *__dst = xmmword_1C25E62B0;
      *&__dst[16] = unk_1C25E62C0;
      *&__dst[32] = xmmword_1C25E62D0;
      *&__dst[48] = 1103650039;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[52], 0xDuLL);
      *&__dst[112] = unk_1C25E6354;
      *&__dst[128] = xmmword_1C25E6364;
      *&__dst[140] = *(&xmmword_1C25E6364 + 12);
      *&__dst[48] = unk_1C25E6314;
      *&__dst[64] = xmmword_1C25E6324;
      *&__dst[80] = unk_1C25E6334;
      *&__dst[96] = xmmword_1C25E6344;
      *__dst = xmmword_1C25E62E4;
      *&__dst[16] = unk_1C25E62F4;
      *&__dst[32] = xmmword_1C25E6304;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[156], 0x27uLL);
      memcpy(__dst, &unk_1C25E6380, 0x30CuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[780], 0xC3uLL);
      memcpy(__dst, &unk_1C25E668C, 0x30CuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[780], 0xC3uLL);
      *__dst = xmmword_1C25E6998;
      *&__dst[16] = unk_1C25E69A8;
      *&__dst[32] = xmmword_1C25E69B8;
      *&__dst[48] = 1051218311;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[52], 0xDuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 63:
      *__dst = xmmword_1C25E69CC;
      *&__dst[16] = unk_1C25E69DC;
      *&__dst[32] = xmmword_1C25E69EC;
      *&__dst[48] = 0x41C16A6841B9EA9BLL;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[56], 0xEuLL);
      *&__dst[112] = unk_1C25E6A74;
      *&__dst[128] = xmmword_1C25E6A84;
      *&__dst[144] = unk_1C25E6A94;
      *&__dst[48] = unk_1C25E6A34;
      *&__dst[64] = xmmword_1C25E6A44;
      *&__dst[80] = unk_1C25E6A54;
      *&__dst[96] = xmmword_1C25E6A64;
      *__dst = xmmword_1C25E6A04;
      *&__dst[16] = unk_1C25E6A14;
      *&__dst[32] = xmmword_1C25E6A24;
      *&__dst[160] = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[168], 0x2AuLL);
      memcpy(__dst, &unk_1C25E6AAC, 0x348uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[840], 0xD2uLL);
      memcpy(__dst, &unk_1C25E6DF4, 0x348uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[840], 0xD2uLL);
      *__dst = xmmword_1C25E713C;
      *&__dst[16] = unk_1C25E714C;
      *&__dst[32] = xmmword_1C25E715C;
      *&__dst[48] = 0x3EADDA8C3EA2B9D4;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[56], 0xEuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 64:
      *__dst = xmmword_1C25E8150;
      *&__dst[16] = unk_1C25E8160;
      *&__dst[32] = xmmword_1C25E8170;
      *&__dst[48] = 1108299798;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[52], 0xDuLL);
      *&__dst[112] = unk_1C25E81F4;
      *&__dst[128] = xmmword_1C25E8204;
      *&__dst[140] = *(&xmmword_1C25E8204 + 12);
      *&__dst[48] = unk_1C25E81B4;
      *&__dst[64] = xmmword_1C25E81C4;
      *&__dst[80] = unk_1C25E81D4;
      *&__dst[96] = xmmword_1C25E81E4;
      *__dst = xmmword_1C25E8184;
      *&__dst[16] = unk_1C25E8194;
      *&__dst[32] = xmmword_1C25E81A4;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[156], 0x27uLL);
      memcpy(__dst, &unk_1C25E8220, 0x30CuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[780], 0xC3uLL);
      memcpy(__dst, &unk_1C25E852C, 0x30CuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[780], 0xC3uLL);
      *__dst = xmmword_1C25E8838;
      *&__dst[16] = unk_1C25E8848;
      *&__dst[32] = xmmword_1C25E8858;
      *&__dst[48] = 1050384047;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[52], 0xDuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 65:
      *__dst = xmmword_1C25E886C;
      *&__dst[16] = unk_1C25E887C;
      *&__dst[32] = xmmword_1C25E888C;
      *&__dst[48] = 0x4204202B41F0C020;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[56], 0xEuLL);
      *&__dst[112] = unk_1C25E8914;
      *&__dst[128] = xmmword_1C25E8924;
      *&__dst[144] = unk_1C25E8934;
      *&__dst[48] = unk_1C25E88D4;
      *&__dst[64] = xmmword_1C25E88E4;
      *&__dst[80] = unk_1C25E88F4;
      *&__dst[96] = xmmword_1C25E8904;
      *__dst = xmmword_1C25E88A4;
      *&__dst[160] = 0x3716FEB5360637BDLL;
      *&__dst[16] = unk_1C25E88B4;
      *&__dst[32] = xmmword_1C25E88C4;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[168], 0x2AuLL);
      memcpy(__dst, &unk_1C25E894C, 0x348uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[840], 0xD2uLL);
      memcpy(__dst, &unk_1C25E8C94, 0x348uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[840], 0xD2uLL);
      *__dst = xmmword_1C25E8FDC;
      *&__dst[16] = unk_1C25E8FEC;
      *&__dst[32] = xmmword_1C25E8FFC;
      *&__dst[48] = 0x3E87D71B3E77E308;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[56], 0xEuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 66:
      *__dst = xmmword_1C25E9014;
      *&__dst[16] = unk_1C25E9024;
      *&__dst[32] = xmmword_1C25E9034;
      *&__dst[44] = *(&xmmword_1C25E9034 + 12);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[60], 0xFuLL);
      *&__dst[112] = unk_1C25E90C0;
      *&__dst[128] = xmmword_1C25E90D0;
      *&__dst[144] = unk_1C25E90E0;
      *&__dst[160] = xmmword_1C25E90F0;
      *&__dst[48] = unk_1C25E9080;
      *&__dst[64] = xmmword_1C25E9090;
      *&__dst[80] = unk_1C25E90A0;
      *&__dst[96] = xmmword_1C25E90B0;
      *__dst = xmmword_1C25E9050;
      *&__dst[16] = unk_1C25E9060;
      *&__dst[32] = xmmword_1C25E9070;
      *&__dst[176] = 964994326;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[180], 0x2DuLL);
      memcpy(__dst, &unk_1C25E9104, 0x384uLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[900], 0xE1uLL);
      memcpy(__dst, &unk_1C25E9488, 0x384uLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[900], 0xE1uLL);
      *__dst = xmmword_1C25E980C;
      *&__dst[16] = unk_1C25E981C;
      *&__dst[32] = xmmword_1C25E982C;
      *&__dst[44] = *(&xmmword_1C25E982C + 12);
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[60], 0xFuLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 67:
      *__dst = xmmword_1C25E9848;
      *&__dst[16] = unk_1C25E9858;
      *&__dst[32] = xmmword_1C25E9868;
      *&__dst[48] = unk_1C25E9878;
      *&__dst[64] = 1107585920;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25E991C;
      *&__dst[160] = xmmword_1C25E992C;
      *&__dst[176] = unk_1C25E993C;
      *&__dst[188] = unk_1C25E9948;
      *&__dst[80] = unk_1C25E98DC;
      *&__dst[96] = xmmword_1C25E98EC;
      *&__dst[112] = unk_1C25E98FC;
      *&__dst[128] = xmmword_1C25E990C;
      *&__dst[16] = unk_1C25E989C;
      *&__dst[32] = xmmword_1C25E98AC;
      *&__dst[48] = unk_1C25E98BC;
      *&__dst[64] = xmmword_1C25E98CC;
      *__dst = xmmword_1C25E988C;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25E9958, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25E9D54, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25EA150;
      *&__dst[16] = unk_1C25EA160;
      *&__dst[32] = xmmword_1C25EA170;
      *&__dst[48] = unk_1C25EA180;
      *&__dst[64] = 1052594043;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    case 68:
      *__dst = xmmword_1C25EA194;
      *&__dst[16] = unk_1C25EA1A4;
      *&__dst[32] = xmmword_1C25EA1B4;
      *&__dst[48] = unk_1C25EA1C4;
      *&__dst[64] = 1107151090;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v23, __dst, &__dst[68], 0x11uLL);
      *&__dst[144] = unk_1C25EA268;
      *&__dst[160] = xmmword_1C25EA278;
      *&__dst[176] = unk_1C25EA288;
      *&__dst[188] = unk_1C25EA294;
      *&__dst[80] = unk_1C25EA228;
      *&__dst[96] = xmmword_1C25EA238;
      *&__dst[112] = unk_1C25EA248;
      *&__dst[128] = xmmword_1C25EA258;
      *&__dst[16] = unk_1C25EA1E8;
      *&__dst[32] = xmmword_1C25EA1F8;
      *&__dst[48] = unk_1C25EA208;
      *&__dst[64] = xmmword_1C25EA218;
      *__dst = xmmword_1C25EA1D8;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v20, __dst, &__dst[204], 0x33uLL);
      memcpy(__dst, &unk_1C25EA2A4, 0x3FCuLL);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v17, __dst, &__dst[1020], 0xFFuLL);
      memcpy(__dst, &unk_1C25EA6A0, 0x3FCuLL);
      v15 = 0;
      v16 = 0;
      v14 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, __dst, &__dst[1020], 0xFFuLL);
      *__dst = xmmword_1C25EAA9C;
      *&__dst[16] = unk_1C25EAAAC;
      *&__dst[32] = xmmword_1C25EAABC;
      *&__dst[48] = unk_1C25EAACC;
      *&__dst[64] = 1052644911;
      v12 = 0;
      v13 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, __dst, &__dst[68], 0x11uLL);
      if (&__p != a6)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a6, __p, v12, (v12 - __p) >> 2);
      }

      break;
    default:
      arkit::loadParams();
  }

  arkit::unflattenParams(&v23, &v20, &v17, &v14, a2, a3, a4, a5);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_1C2543D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

float **arkit::sampleSignalToNoise(float **result, _DWORD *a2, _DWORD *a3, float *a4, float *a5, float a6)
{
  v6 = *result;
  v7 = result[1];
  if (*result == v7)
  {
    v9 = 0;
    v8 = 0;
    v12 = INFINITY;
    v11 = -INFINITY;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -INFINITY;
    v12 = INFINITY;
    do
    {
      v13 = *v6++;
      v14 = v13 - a6;
      v15 = (v13 - a6) <= 0.0;
      if ((v13 - a6) >= 0.0 && (v13 - a6) < v12)
      {
        v12 = v14;
        v8 = v10;
      }

      if (v15 && v14 > v11)
      {
        v11 = v14;
        v9 = v10;
      }

      ++v10;
    }

    while (v6 != v7);
  }

  if (v11 == -INFINITY)
  {
    v9 = v8;
  }

  v16 = v12 == INFINITY;
  if (v12 == INFINITY)
  {
    v8 = v9;
  }

  v17 = v11 == -INFINITY;
  v18 = -v11;
  v19 = v12 - v11;
  v20 = v18 / v19;
  v21 = v12 / v19;
  if (v17)
  {
    v16 = 1;
  }

  if (v16)
  {
    v20 = 0.5;
  }

  *a4 = v20;
  if (v16)
  {
    v22 = 0.5;
  }

  else
  {
    v22 = v21;
  }

  *a5 = v22;
  *a3 = v9;
  *a2 = v8;
  return result;
}

void arkit::gaussianMixtureKernels(int a1@<W0>, arkit *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v33 = 0;
  v34 = 0;
  v35 = 0;
  arkit::loadParams(a1, &v39, v38, v37, v36, &v33);
  v31 = 0;
  v32 = 0;
  arkit::sampleSignalToNoise(&v39, &v32 + 1, &v32, &v31 + 1, &v31, a4);
  v7 = SHIDWORD(v32);
  arkit::mixtureKernels(&v37[0][3 * SHIDWORD(v32)], &v36[0][3 * SHIDWORD(v32)], a2, v30);
  v8 = v32;
  arkit::mixtureKernels(&v37[0][3 * v32], &v36[0][3 * v32], a2, v29);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v26, *(v38[0] + 24 * v7), *(v38[0] + 24 * v7 + 8), (*(v38[0] + 24 * v7 + 8) - *(v38[0] + 24 * v7)) >> 2);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v23, *(v38[0] + 24 * v8), *(v38[0] + 24 * v8 + 8), (*(v38[0] + 24 * v8 + 8) - *(v38[0] + 24 * v8)) >> 2);
  v9 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v10 = v31;
  do
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
    std::vector<std::vector<float>>::push_back[abi:ne200100](&v20, &__p);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (a2)
    {
      v11 = 0;
      do
      {
        *&__p = (*&v10 * *(v29[0][3 * v9] + v11)) + (*(&v10 + 1) * *(*(v30[0] + 24 * v9) + v11));
        std::vector<float>::push_back[abi:ne200100]((v20 + 24 * v9), &__p);
        v11 += 4;
      }

      while (4 * a2 != v11);
    }

    *&__p = (*&v10 * *(v23 + v9)) + (*(&v10 + 1) * *(v26 + v9));
    std::vector<float>::push_back[abi:ne200100](&v17, &__p);
    ++v9;
  }

  while (v9 != 3);
  v12 = *(v33 + v7);
  v13 = *(v33 + v8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, v17, v18, (v18 - v17) >> 2);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a3 + 24, v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
  *(a3 + 48) = (*&v10 * v13) + (*(&v10 + 1) * v12);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v17 = &v20;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  v26 = v29;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v26);
  v29[0] = v30;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v29);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v33 = v36;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v33);
  v36[0] = v37;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v36);
  v37[0] = v38;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](v37);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_1C2545144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char **a21, char **a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t *a33, uint64_t a34, uint64_t a35)
{
  v38 = *v35;
  if (*v35)
  {
    *(v35 + 8) = v38;
    operator delete(v38);
  }

  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  a21 = &a24;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = &a27;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  a32 = &a35;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a32);
  a35 = v36 - 184;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a35);
  *(v36 - 184) = v36 - 160;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100]((v36 - 184));
  v39 = *(v36 - 136);
  if (v39)
  {
    *(v36 - 128) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::allocator<std::vector<std::vector<float>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1C254553C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::vector<double>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C25456C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

float std::__split_buffer<float>::emplace_back<float>(void *a1, float *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 4;
  return result;
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C25458F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t arkit::ChromaFilter::ycbcr2xyz@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = xmmword_1C25EAAF4;
  v4[1] = unk_1C25EAB04;
  v4[2] = xmmword_1C25EAB14;
  v3[0] = v4;
  v3[1] = a1;
  *a2 = 0;
  *(a2 + 8) = 0;
  return cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,1u,false>>(a2, v3);
}

BOOL arkit::ChromaFilter::xyz2uvl(float32x2_t *a1, float32x2_t *a2, double a3, double a4)
{
  _D0 = *a1;
  _S1 = 15.0;
  __asm { FMLA            S2, S1, V0.S[1] }

  *&a4 = _S2 + (a1[1].f32[0] * 3.0);
  if (*&a4 > 0.0)
  {
    *a2 = vdiv_f32(vmul_f32(_D0, 0x40C0000040800000), vdup_lane_s32(*&a4, 0));
    a2[1].i32[0] = _D0.i32[1];
  }

  return *&a4 > 0.0;
}

uint64_t arkit::ChromaFilter::uvl2ind(uint64_t a1)
{
  result = 0;
  if (*a1 >= 0.15 && *a1 <= 0.65)
  {
    result = 0;
    v3.i32[0] = *(a1 + 4);
    if (v3.f32[0] >= 0.15 && v3.f32[0] <= 0.65)
    {
      v4 = *(a1 + 8);
      if (v4 >= 0.0 && v4 <= 1.0)
      {
        v3.i32[1] = *a1;
        v6 = vadd_f32(v3, vdup_n_s32(0xBE19999A));
        v7 = fmin((ceilf(v4 * 50.0) + 1.0), 50.0);
        __asm { FMOV            V2.2S, #1.0 }

        v13 = vmul_s32(vcvt_u32_f32(vadd_f32(vrndp_f32(vmul_f32(v6, vdup_n_s32(0x42C80000u))), _D2)), 0x466F45D012740A5);
        return veor_s8(v13, vdup_lane_s32(v13, 1)).u32[0] ^ (83492791 * v7);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t arkit::ChromaFilter::filter()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v41 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1C25EAB24, sizeof(__dst));
  std::unordered_set<unsigned int>::unordered_set(v38, __dst, 1372);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 2);
  LOBYTE(__dst[0]) = 0;
  std::vector<BOOL>::vector(v5, v6);
  v36 = 0;
  v37 = 0;
  v8 = *v2;
  v7 = v2[1];
  if (v7 == *v2)
  {
    return std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::~__hash_table(v38);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  _S8 = 15.0;
  do
  {
    v14 = *(v8 + v9);
    if (v14 >= v3[2])
    {
      goto LABEL_18;
    }

    v15 = *(v8 + v9 + 4);
    if (v15 < 0.0)
    {
      goto LABEL_18;
    }

    if (v14 < 0.0 || v15 >= v3[3])
    {
      goto LABEL_18;
    }

    arkit::ImageViewYUV::at(v3, v14, v15, v35);
    LOBYTE(v17) = v35[0];
    LOBYTE(v18) = v35[1];
    LOBYTE(v19) = v35[2];
    *&v36 = v17 / 255.0;
    *(&v36 + 1) = v18 / 255.0;
    *&v37 = v19 / 255.0;
    HIDWORD(v37) = 1065353216;
    __dst[0] = xmmword_1C25EAAF4;
    __dst[1] = unk_1C25EAB04;
    __dst[2] = xmmword_1C25EAB14;
    v39[0] = __dst;
    v39[1] = &v36;
    v33 = 0;
    v34 = 0.0;
    cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,1u,false>>(&v33, v39);
    _V0.S[1] = v33.i32[1];
    __asm { FMLA            S2, S8, V0.S[1] }

    *v26.i32 = _S2 + (v34 * 3.0);
    if (*v26.i32 <= 0.0)
    {
      v28 = (*v5 + 8 * (v10 >> 6));
      v29 = 1 << v10;
LABEL_14:
      v30 = *v28 & ~v29;
      goto LABEL_15;
    }

    *&__dst[0] = vdiv_f32(vmul_f32(v33, 0x40C0000040800000), vdup_lane_s32(v26, 0));
    DWORD2(__dst[0]) = v33.i32[1];
    LODWORD(v39[0]) = arkit::ChromaFilter::uvl2ind(__dst);
    v27 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v38, v39);
    v28 = (*v5 + 8 * (v10 >> 6));
    v29 = 1 << v10;
    if (!v27)
    {
      goto LABEL_14;
    }

    v30 = *v28 | v29;
LABEL_15:
    *v28 = v30;
    if ((v30 & v29) != 0)
    {
      ++v12;
    }

    ++v11;
    v8 = *v2;
    v7 = v2[1];
LABEL_18:
    ++v10;
    v9 += 12;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) > v10);
  if (v11 > 2 * v12)
  {
    v31 = v5[1];
    if (v31 >= 1)
    {
      *&__dst[0] = *v5;
      DWORD2(__dst[0]) = 0;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(__dst, v31);
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::~__hash_table(v38);
}

void sub_1C2546DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*v6)
  {
    operator delete(*v6);
  }

  std::__hash_table<std::__hash_value_type<std::string_view,unsigned long>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,unsigned long>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,unsigned long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t arkit::ImageViewYUV::at@<X0>(arkit::ImageViewYUV *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(this + 2) <= a2 || *(this + 3) <= a3)
  {
    arkit::ImageViewYUV::at();
  }

  v4 = 0;
  v5 = *(this + 1);
  v35 = a2 | (a3 << 32);
  v36 = v5;
  do
  {
    v6 = *(&v35 + v4);
    v7 = *(&v36 + v4);
    v8 = v6 >= v7 || v4 == 4;
    v4 += 4;
  }

  while (!v8);
  if (v6 >= v7)
  {
    arkit::ImageViewYUV::at();
  }

  if (*(this + 10) <= a2 >> 1 || (v9 = a3 >> 1, *(this + 11) <= v9))
  {
    arkit::ImageViewYUV::at();
  }

  v10 = 0;
  v11 = *(this + 3);
  v12 = *this;
  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = a2 >> 1;
  v16 = *(this + 5);
  v35 = v15 | (v9 << 32);
  v36 = v16;
  do
  {
    v17 = *(&v35 + v10);
    v18 = *(&v36 + v10);
    v19 = v17 >= v18 || v10 == 4;
    v10 += 4;
  }

  while (!v19);
  if (v17 >= v18)
  {
    arkit::ImageViewYUV::at();
  }

  if (*(this + 18) <= v15 || *(this + 19) <= v9)
  {
    arkit::ImageViewYUV::at();
  }

  v20 = 0;
  v21 = *(this + 7);
  v22 = *(this + 4);
  v23 = *(this + 12);
  v24 = *(this + 13);
  v35 = v15 | (v9 << 32);
  v36 = *(this + 9);
  do
  {
    v25 = *(&v35 + v20);
    v26 = *(&v36 + v20);
    v27 = v25 >= v26 || v20 == 4;
    v20 += 4;
  }

  while (!v27);
  if (v25 >= v26)
  {
    arkit::ImageViewYUV::at();
  }

  v28 = v21 + v22;
  v29 = v11 + v12;
  v30 = v13 * a2 + v14 * a3;
  v31 = *(this + 11);
  v32 = *(this + 8);
  v34 = *(this + 20);
  result = *(this + 21);
  *a4 = *(v29 + v30);
  a4[1] = *(v28 + (v23 * v15 + v24 * v9));
  a4[2] = *(v31 + v32 + (v34 * v15 + result * v9));
  return result;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a1, v2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,1u,false>>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v11 = 0;
    v10 = 0;
    result = cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,1u,false>>(&v10);
    *v2 = v10;
    *(v2 + 8) = v11;
  }

  else
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      v7 = 0.0;
      v8 = v4;
      do
      {
        v9 = *v8++;
        v7 = v7 + (*(v3 + v6) * v9);
        v6 += 12;
      }

      while (v6 != 48);
      *(result + 4 * i) = v7;
      v3 += 4;
    }
  }

  return result;
}

uint64_t std::unordered_set<unsigned int>::unordered_set(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void arkit::FaceLightOptimizer::compute(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  if ((v5 - *a1) >> 5 >= ((a2[1] - *a2) >> 3))
  {
    v7 = (a2[1] - *a2) >> 3;
  }

  else
  {
    v7 = (v5 - *a1) >> 5;
  }

  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  v28[0] = 0;
  v28[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v28, v7);
  v29 = v7;
  v25[0] = 0;
  v25[1] = 0;
  v9 = cva::MatrixData<float,0ul,0ul,false>::allocate(v25, (v8 * v7));
  v26 = v7;
  v27 = v8;
  v24 = v8;
  if (v7 >= 1)
  {
    v10 = 0;
    v21 = "matrixmixin.h";
    v22 = "(row < mixed().rows()) || cva::detail::assertMessage(Index out of bounds.)";
    v20 = "row";
    while (1)
    {
      if (v10 >= v29)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v11 = *a1 + 32 * *(*a2 + 8 * v10);
      *(v28[0] + v10) = *v11;
      v12 = v26;
      if (v10 >= v26)
      {
        break;
      }

      v13 = v27;
      v14 = v25[0];
      if (v27 != *(v11 + 24))
      {
        cva::Logger::instance(v9);
        v9 = cva::Logger::logInCategory();
        if (v13 != *(v11 + 24))
        {
          v19 = 163;
          v20 = "assert_equal_size";
          v21 = "matrixfun.h";
          v22 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)";
LABEL_28:
          __assert_rtn(v20, v21, v19, v22);
        }
      }

      if (v13)
      {
        v15 = &v14[4 * v10];
      }

      else
      {
        v15 = 0;
      }

      v16 = &v14[4 * v10 + 4 * v13 * v12];
      if (!v13)
      {
        v16 = 0;
      }

      if (v15 != v16)
      {
        v17 = *(v11 + 8);
        do
        {
          v18 = *v17++;
          *v15 = v18;
          v15 += 4 * v12;
        }

        while (v15 != v16);
      }

      if (++v10 == (v7 & 0x7FFFFFFF))
      {
        goto LABEL_22;
      }
    }

    v19 = 1063;
    goto LABEL_28;
  }

LABEL_22:
  if (v24 <= v7)
  {
    arkit::FaceLightOptimizer::solveQuadratic(v28, v25, 1);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 64) = 0;
  free(v25[0]);
  free(v28[0]);
}

void sub_1C2547B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  free(a20);
  free(a29);
  free(a32);
  free(*(v32 - 152));
  free(*(v32 - 128));
  _Unwind_Resume(a1);
}

void arkit::FaceLightOptimizer::solveQuadratic(uint64_t a1, uint64_t a2, int a3)
{
  v75 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    arkit::FaceLightOptimizer::solveQuadratic();
  }

  v7 = *(a2 + 20);
  v8 = v6 + 14;
  v9 = (v7 * (v6 + 14));
  v65[0] = 0;
  v65[1] = 0;
  v10 = cva::MatrixData<float,0ul,0ul,false>::allocate(v65, v9);
  v66 = v8;
  v67 = v7;
  v11 = *(a2 + 16);
  v12 = v8 - v11;
  if (v8 < v11)
  {
    v14 = "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)";
    v15 = 2252;
    v16 = "matrixmixin.h";
    v10 = "assert_in_bounds";
  }

  else
  {
    v13 = v65[0];
    if (v7 == *(a2 + 20) || (cva::Logger::instance(v10), cva::Logger::logInCategory(), v14 = "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)", v15 = 163, v16 = "matrixfun.h", v10 = "assert_equal_size", v11 == *(a2 + 16)) && v7 == *(a2 + 20))
    {
      if (v11 * v7)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0;
      }

      if (v11 * v7)
      {
        v18 = &v13[v9];
      }

      else
      {
        v18 = 0;
      }

      v19 = v7;
      if (v17 != v18)
      {
        v20 = 0;
        v21 = *a2;
        do
        {
          v22 = *v21++;
          *v17 = v22;
          if (v20 + 1 >= v11)
          {
            v23 = v12;
          }

          else
          {
            v23 = 0;
          }

          v17 += v23 + 1;
          if (v20 + 1 < v11)
          {
            ++v20;
          }

          else
          {
            v20 = 0;
          }
        }

        while (v17 != v18);
        v19 = *(a2 + 20);
      }

      v24 = 0;
      for (i = 0; i != 14; ++i)
      {
        if (v19)
        {
          v26 = 0;
          v27 = v24;
          do
          {
            v10 = arkit::kFLEDarkCoefficients(v10);
            v28 = *(a2 + 16) + i;
            if (v66 <= v28 || v26 >= v67)
            {
              __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
            }

            *(v65[0] + v28 + v66 * v26++) = *&v10[v27];
            v19 = *(a2 + 20);
            v27 += 4;
          }

          while (v19 > v26);
        }

        v24 += 4 * v7;
      }

      v30 = (*(a1 + 16) + 14);
      v63[0] = 0;
      v63[1] = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(v63, v30);
      v64 = v30;
      v31 = *(a1 + 16);
      if (v30 < v31)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2252, "((row + nRows <= mixed().rows()) && (col + nCols <= mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v32 = v63[0];
      if (v31)
      {
        v33 = *a1;
        v34 = 4 * v31;
        do
        {
          v35 = *v33++;
          *v32++ = v35;
          v34 -= 4;
        }

        while (v34);
        v32 = v63[0];
      }

      v36 = 0;
      v37 = 4 * (v30 - v31);
      v38 = &v32[v31];
      do
      {
        if (v37 == v36)
        {
          __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
        }

        v38[v36 / 4] = 0;
        v36 += 4;
      }

      while (v36 != 56);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v57 = v65;
      if (v67)
      {
        v39 = v67 * v67;
        if (!v65[0])
        {
          v68 = 0;
          v69 = 0;
          cva::MatrixData<float,0ul,0ul,false>::allocate(&v68, v39);
          LODWORD(v70) = *(v57 + 5);
          HIDWORD(v70) = v67;
          v72 = &v57;
          v73 = v65;
          if (*(v57 + 4) != v66)
          {
            __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
          }

          v74 = 1065353216;
          cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(&v68, v71);
          v41 = v60;
          v42 = v61;
          v60 = v68;
          v61 = v69;
          v68 = v41;
          v69 = v42;
          v62 = v70;
          v70 = 0;
          free(v41);
LABEL_47:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v56[0] = v63;
          if (v64 != v66)
          {
            goto LABEL_52;
          }

          if (v67)
          {
            if (!v63[0] || !v65[0])
            {
              v68 = 0;
              v69 = 0;
              cva::MatrixData<float,0ul,0ul,false>::allocate(&v68, v67);
              LODWORD(v70) = v67;
              v72 = v56;
              v73 = v65;
              if (*(v56[0] + 16) != v66)
              {
                __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
              }

              v74 = 1065353216;
              cva::assign<false,false,cva::Matrix<float,1u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,1u,false> const>,cva::Matrix<float,0u,0u,false>>(&v68, v71);
              v44 = v57;
              v45 = v58;
              v57 = v68;
              v58 = v69;
              v68 = v44;
              v69 = v45;
              v59 = v70;
              LODWORD(v70) = 0;
              free(v44);
LABEL_57:
              v56[0] = 0;
              v56[1] = 0;
              v54 = 0;
              v55 = 0;
              v53[0] = 0;
              v53[1] = 0;
              v51 = 0;
              v52 = 0;
              v50[0] = 0;
              v50[1] = 0;
              v48 = 0;
              v49 = 0;
              v46 = 0;
              v47 = 0;
              if (v7)
              {
                LODWORD(v56[0]) = v7;
                HIDWORD(v56[0]) = v7;
                operator new[]();
              }

              if (a3)
              {
                v50[0] = 0x6400000000;
                operator new[]();
              }

              thirdparty::quadprogpp::solve_quadprog(v56, &v54, v53, &v51, v50, &v48, &v46);
            }

            v59 = v67;
            cva::MatrixData<float,0ul,0ul,false>::reserve(&v57, v67);
            v43 = *(v56[0] + 16);
            v72 = v56;
            v73 = v65;
            if (v43 != v66)
            {
LABEL_52:
              __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
            }
          }

          else
          {
            v72 = v56;
            v73 = v65;
          }

          v74 = 1065353216;
          cva::assign<false,false,cva::Matrix<float,1u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,1u,false> const>,cva::Matrix<float,0u,0u,false>>(&v57, v71);
          goto LABEL_57;
        }

        LODWORD(v62) = v67;
        HIDWORD(v62) = v67;
        cva::MatrixData<float,0ul,0ul,false>::reserve(&v60, v39);
        v40 = v57;
      }

      else
      {
        v40 = v65;
      }

      v72 = &v57;
      v73 = v65;
      if (*(v40 + 4) != v66)
      {
        __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v74 = 1065353216;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(&v60, v71);
      goto LABEL_47;
    }
  }

  __assert_rtn(v10, v16, v15, v14);
}

void sub_1C2548920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *a30)
{
  free(v30[9]);
  free(*v30);
  free(v30[3]);
  free(v30[6]);
  _Unwind_Resume(a1);
}

void arkit::FaceLightOptimizer::inlierSet(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>, float a5@<S0>)
{
  if (a5 < 0.0)
  {
    arkit::FaceLightOptimizer::inlierSet();
  }

  v7 = *(a2 + 16);
  arkit::FaceLightOptimizer::penaltyFunction(a1, a2, a3, &v18);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v7 >= 1)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      if (i >= v19)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2283, "(i < mixed().elements()) || cva::detail::assertMessage(Index out of bounds!)");
      }

      if (*(v18 + i) < a5)
      {
        v10 = a4[2];
        if (v8 >= v10)
        {
          v11 = *a4;
          v12 = v8 - *a4;
          v13 = v12 >> 3;
          v14 = (v12 >> 3) + 1;
          if (v14 >> 61)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v15 = v10 - v11;
          if (v15 >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(a4, v16);
          }

          *(8 * v13) = i;
          v8 = (8 * v13 + 8);
          memcpy(0, v11, v12);
          v17 = *a4;
          *a4 = 0;
          a4[1] = v8;
          a4[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8++ = i;
        }

        a4[1] = v8;
      }
    }
  }

  free(v18);
}

void sub_1C2548BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  free(a10);
  _Unwind_Resume(a1);
}

float arkit::FaceLightOptimizer::computeConfidence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  arkit::FaceLightOptimizer::penaltyFunction(a1, a2, a3, &v9);
  v3 = 0.0;
  if (v10)
  {
    v4 = v10;
    v5 = v9;
    do
    {
      v6 = *v5++;
      v3 = v3 + (v6 * v6);
      --v4;
    }

    while (v4);
  }

  v7 = 1.0 / ((v3 / v10) + 1.0);
  free(v9);
  return v7;
}

void arkit::FaceLightOptimizer::solveLinear(uint64_t a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) != a2[4])
  {
    arkit::FaceLightOptimizer::solveLinear();
  }

  v25 = 869711765;
  v8 = a2[5];
  v22 = 0;
  v23 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v22, v8);
  v24 = v8;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(v15, a2, 3, 0);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(v15, &v25, v19);
  if (v21 != *(a1 + 16))
  {
    goto LABEL_18;
  }

  if (v20 == v24)
  {
    v30 = v19;
    v31 = a1;
LABEL_8:
    v32 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v22, &v29);
    goto LABEL_11;
  }

  if (v19[0] != v22 && *a1 != v22)
  {
    v24 = v20;
    cva::MatrixData<float,0ul,0ul,false>::reserve(&v22, v20);
    v9 = *(a1 + 16);
    v30 = v19;
    v31 = a1;
    if (v21 == v9)
    {
      goto LABEL_8;
    }

LABEL_18:
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v26 = 0;
  v27 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v26, v20);
  v28 = v20;
  v30 = v19;
  v31 = a1;
  if (v21 != *(a1 + 16))
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v32 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(&v26, &v29);
  v10 = v22;
  v11 = v23;
  v22 = v26;
  v23 = v27;
  v26 = v10;
  v27 = v11;
  v24 = v28;
  v28 = 0;
  free(v10);
LABEL_11:
  free(v19[0]);
  free(v18);
  free(*(&v16 + 1));
  free(v15[0]);
  v12 = 0.0;
  if (a3)
  {
    *v15 = 0u;
    v16 = 0u;
    v17 = 0;
    if (v24 != 9)
    {
      __assert_rtn("MatrixData", "matrixdata.h", 96, "(size == sz) || cva::detail::assertMessage(Matrix data size mismatch.)");
    }

    v13 = 0;
    v14 = v22;
    do
    {
      *(v15 + v13) = *&v14[v13];
      v13 += 4;
    }

    while (v13 != 36);
    v12 = arkit::FaceLightOptimizer::computeConfidence(v15, a1, a2);
  }

  v29 = v12;
  std::pair<cva::Matrix<float,9u,1u,false>,float>::pair[abi:ne200100]<cva::Matrix<float,0u,1u,false> &,float const&,0>(a4, &v22, &v29);
  free(v22);
}

void sub_1C2548F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  free(*(v23 - 112));
  free(a20);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(&a9);
  free(a23);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(_DWORD *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a1 + 6;
  v6 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(a1);
  v12[0] = v6;
  v12[1] = v7;
  v8 = *a2;
  v13 = v12;
  v14 = v8;
  if (a1[10] != HIDWORD(v6))
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
  }

  v16[0] = &v15;
  v16[1] = &v13;
  v11 = a1;
  if (a1[5] != v6)
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
  }

  v9 = (a1[4] * a1[11]);
  *a3 = 0;
  *(a3 + 8) = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(a3, v9);
  v10 = a1[4];
  *(a3 + 16) = v15[5];
  *(a3 + 20) = v10;
  v18 = v16;
  v19 = &v11;
  if (*v13 != a1[5])
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v20 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(a3, v17);
}

void arkit::FaceLightOptimizer::penaltyFunction(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (v6 != *(a3 + 16))
  {
    arkit::FaceLightOptimizer::penaltyFunction();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v6;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v6);
  if (*(a3 + 20) != 9)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v9 = *(a3 + 16);
  v33[0] = 0;
  v33[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v33, v9);
  v10 = *(a3 + 20);
  v34 = *(a3 + 16);
  v36 = a3;
  v37 = a1;
  if (v10 != 9)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v38 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,9u,1u,false>>(v33, &v35);
  v12 = v34;
  if (v34 != *(a2 + 16))
  {
    cva::Logger::instance(v11);
    cva::Logger::logInCategory();
    v12 = v34;
    if (v34 != *(a2 + 16))
    {
      __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }
  }

  if (v12 == *(a4 + 16))
  {
    goto LABEL_7;
  }

  if (v33[0] != *a4 && *a2 != *a4)
  {
    *(a4 + 16) = v12;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a4, v12);
    v12 = v34;
    if (*(a4 + 16) != v34)
    {
      cva::Logger::instance(v21);
      cva::Logger::logInCategory();
      v12 = *(a4 + 16);
      if (v12 != v34)
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

LABEL_7:
    if (v12)
    {
      v13 = *a4;
      v14 = v12;
      v15 = *a2;
      v16 = v33[0];
      v17 = 4 * v14;
      do
      {
        v18 = *v16++;
        v19 = v18;
        v20 = *v15++;
        *v13++ = (v19 - v20) / (v20 + 0.01);
        v17 -= 4;
      }

      while (v17);
    }

    goto LABEL_21;
  }

  v35 = 0;
  v36 = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(&v35, v12);
  v22 = v34;
  v23 = v35;
  if (v34)
  {
    v24 = *a2;
    v25 = v33[0];
    v26 = 4 * v34;
    do
    {
      v27 = *v25++;
      v28 = v27;
      v29 = *v24++;
      *v23++ = (v28 - v29) / (v29 + 0.01);
      v26 -= 4;
    }

    while (v26);
    v23 = v35;
  }

  v30 = *a4;
  v31 = *(a4 + 8);
  v32 = v36;
  *a4 = v23;
  *(a4 + 8) = v32;
  v35 = v30;
  v36 = v31;
  *(a4 + 16) = v22;
  LODWORD(v37) = 0;
  free(v30);
LABEL_21:
  free(v33[0]);
}

void sub_1C25493C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  free(a13);
  free(*v13);
  _Unwind_Resume(a1);
}

float std::pair<cva::Matrix<float,9u,1u,false>,float>::pair[abi:ne200100]<cva::Matrix<float,0u,1u,false> &,float const&,0>(uint64_t a1, uint64_t *a2, float *a3)
{
  v3 = *(a2 + 4);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v3 != 9)
  {
    std::pair<cva::Matrix<float,9u,1u,false>,float>::pair[abi:ne200100]<cva::Matrix<float,0u,1u,false> &,float const&,0>();
  }

  if (*(a2 + 4) != 9)
  {
    std::pair<cva::Matrix<float,9u,1u,false>,float>::pair[abi:ne200100]<cva::Matrix<float,0u,1u,false> &,float const&,0>();
  }

  v4 = 0;
  v5 = *a2;
  do
  {
    *(a1 + v4) = *(v5 + v4);
    v4 += 4;
  }

  while (v4 != 36);
  result = *a3;
  *(a1 + 36) = *a3;
  return result;
}

void **cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(void **a1)
{
  free(a1[6]);
  free(a1[3]);
  free(*a1);
  return a1;
}

uint64_t cva::MatrixData<float,0ul,0ul,false>::allocate(void **a1, uint64_t a2)
{
  if (*a1)
  {
    cva::MatrixData<float,0ul,0ul,false>::allocate();
  }

  v3 = (4 * a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  a1[1] = (v3 >> 2);
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  v5 = memptr;
  *a1 = memptr;
  if (!v5)
  {
    cva::MatrixData<float,0ul,0ul,false>::allocate();
  }

  return result;
}

void cva::MatrixData<float,0ul,0ul,false>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      *a1 = 0;

      cva::MatrixData<float,0ul,0ul,false>::allocate(a1, a2);
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = **(a2 + 8);
  if (*v5 == *a1 || *v4 == *a1)
  {
    v8 = (*(v4 + 20) * *(v5 + 20));
    v14 = 0;
    v15 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v14, v8);
    v9 = *(*(a2 + 16) + 20);
    LODWORD(v16) = *(**(a2 + 8) + 20);
    HIDWORD(v16) = v9;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(&v14, a2);
    v10 = *a1;
    v11 = *(a1 + 8);
    v12 = v15;
    *a1 = v14;
    *(a1 + 8) = v12;
    v14 = v10;
    v15 = v11;
    *(a1 + 16) = v16;
    v16 = 0;
    free(v10);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v6 != *(v5 + 20) || (v7 = *(a1 + 20), v7 != *(v4 + 20)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v6 = *(a1 + 16);
      v5 = **(a2 + 8);
      if (v6 != *(v5 + 20) || (v4 = *(a2 + 16), v7 = *(v4 + 20), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v5 + 16) * v6 && v7 * *(v4 + 16))
    {
      cva::VecLib<float>::gemm();
    }

    if (v6 * v7)
    {
      v13 = *a1;

      bzero(v13, 4 * (v6 * v7));
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,1u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,1u,false> const>,cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = **(a2 + 8);
  if (*v5 == *a1 || *v4 == *a1)
  {
    v7 = *(v4 + 20);
    v12 = 0;
    v13 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v12, v7);
    v14 = *(*(a2 + 16) + 20);
    cva::assign<false,false,cva::Matrix<float,1u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,1u,false> const>,cva::Matrix<float,0u,0u,false>>(&v12, a2);
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = v13;
    *a1 = v12;
    *(a1 + 8) = v10;
    v12 = v8;
    v13 = v9;
    *(a1 + 16) = v14;
    v14 = 0;
    free(v8);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v6 != *(v4 + 20))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v6 = *(a1 + 16);
      v4 = *(a2 + 16);
      if (v6 != *(v4 + 20))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }

      v5 = **(a2 + 8);
    }

    if (*(v5 + 16) && v6 * *(v4 + 16))
    {
      cva::VecLib<float>::gemm();
    }

    if (v6)
    {
      v11 = *a1;

      bzero(v11, 4 * v6);
    }
  }
}

uint64_t thirdparty::quadprogpp::Matrix<double>::~Matrix(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*v2 || (MEMORY[0x1C691A770](*v2, 0x1000C8000313F17), *(a1 + 8)))
    {
      MEMORY[0x1C691A770]();
    }
  }

  return a1;
}

uint64_t cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::Matrix<float,0u,0u,false> const&>(a1, a2, a3, a4);
  return a1;
}

void sub_1C2549978(_Unwind_Exception *a1)
{
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::Matrix<float,0u,0u,false> const&>(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 72) = v5;
  *(a1 + 76) = v6;
  if (!(v5 | v6))
  {
    *(a1 + 80) = 1;
LABEL_8:
    v7 = *(a1 + 48);
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    free(v7);
    v8 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v8);
    v9 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;

    free(v9);
    return;
  }

  if (a4 && fabsf((v5 - v6)) >= ((v6 + v5) * 0.1))
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<float,0u,0u,false>>(a1, a2, a3);
  }

  else
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::Matrix<float,0u,0u,false>>(a1, a2, a3);
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    goto LABEL_8;
  }
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (*(a2 + 20) * *(a2 + 16));
  __dst[0] = 0;
  __dst[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(__dst, v6);
  if (v6)
  {
    memcpy(__dst[0], *a2, 4 * v6);
  }

  __dst[2] = *(a2 + 16);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, __dst, a3);
  free(__dst[0]);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<float,0u,0u,false>>(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a3;
  v47 = *MEMORY[0x1E69E9840];
  if (a2[5] >= a2[4])
  {
    v40 = a2;
    v43 = a2;
    v44 = &v40;
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>>(a1, &v43, a3 != 0);
    if (*(a1 + 80) != 1)
    {
      return;
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = *(a1 + 48);
      v14 = 4 * v12;
      do
      {
        *v13 = sqrtf(*v13);
        ++v13;
        v14 -= 4;
      }

      while (v14);
    }

    if ((v3 & 2) == 0)
    {
      return;
    }

    v33 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(a1);
    v34 = v15;
    v35 = &v33;
    v36 = 925353388;
    v37 = a1;
    if (*(a1 + 20) != v33)
    {
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
    }

    v38 = &v35;
    v39 = &v37;
    if (*(a1 + 16) != a2[4])
    {
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
    }

    v16 = HIDWORD(v33);
    if (__PAIR64__(a2[5], HIDWORD(v33)) == *(a1 + 40))
    {
      v44 = &v38;
      v45 = a2;
LABEL_30:
      v46 = 1065353216;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(a1 + 24, &v43);
      return;
    }

    v20 = *(a1 + 24);
    if (*v15 == v20)
    {
      v21 = a2[5];
    }

    else
    {
      v21 = a2[5];
      if (*a1 != v20 && *a2 != v20)
      {
        *(a1 + 40) = HIDWORD(v33);
        *(a1 + 44) = v21;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 24, (v21 * v16));
        v22 = a2[4];
        v23 = *(*v39 + 4);
        v44 = &v38;
        v45 = a2;
        if (v23 != v22)
        {
          cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
        }

        goto LABEL_30;
      }
    }

    v40 = 0;
    v41 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v40, (v21 * HIDWORD(v33)));
    v30 = a2[4];
    v29 = a2[5];
    LODWORD(v42) = *(*v38 + 1);
    HIDWORD(v42) = v29;
    v44 = &v38;
    v45 = a2;
    if (*(*v39 + 4) != v30)
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v46 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(&v40, &v43);
    v26 = *(a1 + 24);
    v31 = *(a1 + 32);
    v32 = v41;
    *(a1 + 24) = v40;
    *(a1 + 32) = v32;
    v40 = v26;
    v41 = v31;
    *(a1 + 40) = v42;
LABEL_36:
    v42 = 0;
    free(v26);
    return;
  }

  v40 = a2;
  v43 = &v40;
  v44 = a2;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>(a1, &v43, 2 * (a3 != 0));
  if (*(a1 + 80) == 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = 4 * v6;
      do
      {
        *v7 = sqrtf(*v7);
        ++v7;
        v8 -= 4;
      }

      while (v8);
    }

    if (v3)
    {
      v37 = a1 + 24;
      v9 = cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(a1);
      v33 = v9;
      v34 = v10;
      v35 = &v33;
      v36 = 925353388;
      if (*(a1 + 40) != HIDWORD(v9))
      {
        cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
      }

      v38 = &v37;
      v39 = &v35;
      if (a2[5] != *(a1 + 44))
      {
        cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
      }

      v11 = a2[4];
      if (v11 == *(a1 + 16) && *(a1 + 20) == v9)
      {
        v44 = a2;
        v45 = &v38;
LABEL_25:
        v46 = 1065353216;
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(a1, &v43);
        return;
      }

      v17 = *a1;
      if (*a2 != *a1 && *(a1 + 24) != v17 && *v10 != v17)
      {
        *(a1 + 16) = v11;
        *(a1 + 20) = v9;
        cva::MatrixData<float,0ul,0ul,false>::reserve(a1, (v11 * v9));
        v18 = a2[5];
        v19 = *(*v38 + 5);
        v44 = a2;
        v45 = &v38;
        if (v18 != v19)
        {
          cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse();
        }

        goto LABEL_25;
      }

      v40 = 0;
      v41 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v40, (v11 * v9));
      v24 = **v39;
      v25 = a2[5];
      LODWORD(v42) = a2[4];
      HIDWORD(v42) = v24;
      v44 = a2;
      v45 = &v38;
      if (v25 != *(*v38 + 5))
      {
        __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }

      v46 = 1065353216;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(&v40, &v43);
      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = v41;
      *a1 = v40;
      *(a1 + 8) = v28;
      v40 = v26;
      v41 = v27;
      *(a1 + 16) = v42;
      goto LABEL_36;
    }
  }
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 64) = v7;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 48, v7);
  if (a3)
  {
    *(a1 + 16) = v5;
    *(a1 + 20) = v7;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a1, v7 * v5);
    if ((a3 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v8);
    if ((a3 & 2) != 0)
    {
LABEL_6:
      *(a1 + 40) = v7;
      *(a1 + 44) = v6;
      cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 24, v7 * v6);
      goto LABEL_9;
    }
  }

  v9 = *(a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  free(v9);
LABEL_9:
  v14 = 0;
  v13 = 0;
  cva::vecLib::gesvd<float>();
  v11[0] = 0;
  v11[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v11, 0.0);
  v12 = 0.0;
  v10 = cva::vecLib::gesvd<float>();
  if (v13 < 0)
  {
    __assert_rtn("decomposeDirect", "matrixsvd.h", 439, "(info >= 0) || cva::detail::assertMessage(gesvd() compute SVD failed!)");
  }

  if (v13)
  {
    cva::Logger::instance(v10);
    cva::Logger::logInCategory();
  }

  free(v11[0]);
  *(a1 + 80) = v13 == 0;
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>(uint64_t a1, uint64_t **a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = (a2 + 1);
  v7 = (*(a2[1] + 5) * *(**a2 + 20));
  v12[0] = 0;
  v12[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v12, v7);
  v8 = *a2;
  v9 = **a2;
  v10 = *v6;
  v13 = *(v9 + 20);
  v11 = *(v10 + 16);
  v14 = *(v10 + 20);
  v16 = v8;
  v17 = v10;
  if (*(v9 + 16) != v11)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v18 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(v12, v15);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v12, a3);
  free(v12[0]);
}

uint64_t cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S(_DWORD *a1)
{
  v2 = a1[18];
  LODWORD(v1) = a1[19];
  if (v1 >= v2)
  {
    v1 = v2;
  }

  else
  {
    v1 = v1;
  }

  if (v1 > a1[16])
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::S();
  }

  return v1 | (v1 << 32);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>>(uint64_t a1, void **a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2 + 1;
  v7 = (*(*a2[1] + 16) * *(*a2 + 4));
  v12[0] = 0;
  v12[1] = 0;
  cva::MatrixData<float,0ul,0ul,false>::allocate(v12, v7);
  v8 = *a2;
  v9 = *v6;
  v10 = **v6;
  v14 = *(v10 + 16);
  v11 = v8[5];
  v13 = v8[4];
  v16 = v8;
  v17 = v9;
  if (v11 != *(v10 + 20))
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v18 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(v12, v15);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v12, a3);
  free(v12[0]);
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*v4 == *a1)
  {
    v12 = (***(*(a2 + 16) + 8) * *(v4 + 16));
    v17 = 0;
    v18 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v17, v12);
    v13 = ***(*(a2 + 16) + 8);
    LODWORD(v19) = *(*(a2 + 8) + 16);
    HIDWORD(v19) = v13;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>>(&v17, a2);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = v18;
    *a1 = v17;
    *(a1 + 8) = v16;
    v17 = v14;
    v18 = v15;
    *(a1 + 16) = v19;
    v19 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 16);
    if (v5 != *(v4 + 16) || (v6 = *(a1 + 20), v7 = *(a2 + 16), v6 != **v7[1]))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v5 != *(v4 + 16) || (v7 = *(a2 + 16), v6 = **v7[1], *(a1 + 20) != v6))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v5)
    {
      v8 = (v6 * *(**v7 + 20));
      if (v8)
      {
        v17 = 0;
        v18 = 0;
        cva::MatrixData<float,0ul,0ul,false>::allocate(&v17, v8);
        v9 = **v7[1];
        LODWORD(v19) = *(**v7 + 20);
        HIDWORD(v19) = v9;
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(&v17, v7);
        cva::VecLib<float>::gemm();
      }
    }

    v10 = v5 * v6;
    if (v10)
    {
      v11 = *a1;

      bzero(v11, 4 * v10);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(cva::Logger *a1, uint64_t **a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != *(v6 + 20) || (v7 = *(a1 + 5), v8 = a2[1], v9 = *v8, v7 != **v8))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != *(v6 + 20) || (v8 = a2[1], v9 = *v8, v7 = **v8, *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v31 = v8;
  if (v7 >= v9[1])
  {
    v7 = v9[1];
  }

  if (v7 > *(v6 + 16))
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v28[0] = v4;
  v28[1] = v7;
  v29 = v5;
  v30 = 0;
  v23 = &v31;
  v27 = &v23;
  v32[0] = v28;
  v32[1] = &v24;
  v10 = *a1;
  v25 = v4;
  v26 = v7;
  v19[0] = v4;
  v19[1] = v7;
  v20 = v10;
  v21 = v4;
  v22 = 0;
  cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v19, v32);
  v11 = *(*v5 + 16);
  v12 = *(a1 + 5) - v11;
  if (*(a1 + 5) > v11)
  {
    v13 = *(a1 + 4);
    v14 = *a1 + 4 * v13 * v11;
    v15 = v13 * v12;
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v14 + 4 * v15);
    if (v16)
    {
      v18 = 0;
    }

    if (v17 != v18)
    {
      bzero(v17, ((v18 - v17 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }
}

uint64_t cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) - 4 * *(a1 + 20);
  if (***(*a2 + 8) == v4 || **(****(a2[1] + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = *(a1 + 4);
    v21[0] = 0;
    v21[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v21, (v6 * v5));
    v22 = v5;
    v23 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(v21, a2);
    v8 = *a1;
    if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
    {
      cva::Logger::instance(v7);
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v10 = *(a1 + 16);
    v11 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 8) + 4 * (v10 * v9);
    if (v11)
    {
      v13 = 0;
    }

    v14 = v21[0];
    if (v12 != v13)
    {
      v15 = 0;
      v16 = v10 - v8;
      v17 = v21[0];
      do
      {
        v18 = *v17++;
        *v12 = v18;
        if (v15 + 1 >= v8)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v12 += v19 + 1;
        if (v15 + 1 < v8)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v12 != v13);
    }

    free(v14);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(cva::Logger *a1, void *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2[1];
    v11 = *a1;
    v12 = 4 * v7;
    do
    {
      if (v4 <= v9 || v5[1] <= HIDWORD(v9))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v13 = v5[5] + HIDWORD(v9);
      v14 = **(v5 + 1);
      v15 = *(v14 + 16);
      if (v15 <= v13 || (v16 = v5[4] + v9, v16 >= *(v14 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v17 = *(*v14 + 4 * (v13 + v15 * v16));
      *v11++ = v17 * cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(v10, v8, HIDWORD(v8));
      v18 = (v9 + 1);
      v4 = *v5;
      if (*v5 <= v18)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v18;
      }

      v19 = (v8 + 1);
      if (*(v10 + 4) <= v19)
      {
        v8 = (v8 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v8 = v8 & 0xFFFFFFFF00000000 | v19;
      }

      v12 -= 4;
    }

    while (v12);
  }
}

void cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *a1;
    v5 = *a2;
    if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  v8 = *(a1 + 16);
  if (v6 * v4)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 8) + 4 * (v8 * v6);
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1];
    v16 = v8 - v4;
    v17 = v4;
    do
    {
      if (v17 <= v13 || v5[1] <= HIDWORD(v13))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v18 = v5[5] + HIDWORD(v13);
      v19 = **(v5 + 1);
      v20 = *(v19 + 16);
      if (v20 <= v18 || (v21 = v5[4] + v13, v21 >= *(v19 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v22 = *(*v19 + 4 * (v18 + v20 * v21));
      *v9 = v22 * cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(v15, v12, HIDWORD(v12));
      v23 = (v13 + 1);
      v17 = *v5;
      if (*v5 <= v23)
      {
        v13 = (v13 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v13 = v13 & 0xFFFFFFFF00000000 | v23;
      }

      v24 = (v12 + 1);
      if (*(v15 + 4) <= v24)
      {
        v12 = (v12 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFF00000000 | v24;
      }

      if (v14 + 1 >= v4)
      {
        v25 = v16;
      }

      else
      {
        v25 = 0;
      }

      v9 += v25 + 1;
      if (v14 + 1 < v4)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    while (v9 != v11);
  }
}

float cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 4) <= a2 || *(a1 + 8) <= a3)
  {
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v3 = ***(a1 + 16);
  v4 = *(*v3 + 4);
  if (**v3 < v4)
  {
    v4 = **v3;
  }

  v5 = a3 % v4;
  v6 = *(*v3 + 8);
  if (*(v6 + 16) <= v5)
  {
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v7 = *(*v6 + 4 * v5);
  v8 = fabsf(v7);
  result = 1.0 / v7;
  if (v8 < v3[2])
  {
    return 0.0;
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = **(a2 + 16);
  if (*v4 == *a1 || *v5 == *a1)
  {
    v8 = (*(v5 + 16) * *(v4 + 16));
    v14 = 0;
    v15 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v14, v8);
    v9 = *(**(a2 + 16) + 16);
    LODWORD(v16) = *(*(a2 + 8) + 16);
    HIDWORD(v16) = v9;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(&v14, a2);
    v10 = *a1;
    v11 = *(a1 + 8);
    v12 = v15;
    *a1 = v14;
    *(a1 + 8) = v12;
    v14 = v10;
    v15 = v11;
    *(a1 + 16) = v16;
    v16 = 0;
    free(v10);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v6 != *(v4 + 16) || (v7 = *(a1 + 20), v7 != *(v5 + 16)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v6 = *(a1 + 16);
      v4 = *(a2 + 8);
      if (v6 != *(v4 + 16) || (v5 = **(a2 + 16), v7 = *(v5 + 16), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    if (*(v4 + 20) * v6 && v7 * *(v5 + 20))
    {
      cva::VecLib<float>::gemm();
    }

    if (v6 * v7)
    {
      v13 = *a1;

      bzero(v13, 4 * (v6 * v7));
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*v4 == *a1)
  {
    v12 = (*(v4 + 20) * *(***(a2 + 8) + 4));
    v17 = 0;
    v18 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v17, v12);
    v13 = *(*(a2 + 16) + 20);
    LODWORD(v19) = *(***(a2 + 8) + 4);
    HIDWORD(v19) = v13;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>,cva::Matrix<float,0u,0u,false>>(&v17, a2);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = v18;
    *a1 = v17;
    *(a1 + 8) = v16;
    v17 = v14;
    v18 = v15;
    *(a1 + 16) = v19;
    v19 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 8);
    if (v5 != *(**v6 + 4) || (v7 = *(a1 + 20), v7 != *(v4 + 20)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v6 = *(a2 + 8);
      if (v5 != *(**v6 + 4) || (v4 = *(a2 + 16), v7 = *(v4 + 20), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    v8 = (*(*v6[1] + 16) * v5);
    if (v8 && v7 * *(v4 + 16))
    {
      v17 = 0;
      v18 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v17, v8);
      v9 = *(*v6[1] + 16);
      LODWORD(v19) = *(**v6 + 4);
      HIDWORD(v19) = v9;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>(&v17, v6);
      cva::VecLib<float>::gemm();
    }

    v10 = v5 * v7;
    if (v10)
    {
      v11 = *a1;

      bzero(v11, 4 * v10);
    }
  }
}

uint64_t cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>>(cva::Logger *a1, uint64_t a2)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = **a2;
  if (v4 != v6[1] || (v7 = *(a1 + 5), v8 = *(a2 + 8), v9 = *v8, v7 != *(*v8 + 16)))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    v6 = **a2;
    if (v4 != v6[1] || (v8 = *(a2 + 8), v9 = *v8, v7 = *(*v8 + 16), *(a1 + 5) != v7))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v34 = v5;
  v10 = *v6;
  if (*v6 >= v4)
  {
    v10 = v4;
  }

  if (v10 > *(v9 + 20))
  {
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>();
  }

  v31[0] = v10;
  v31[1] = v7;
  v32 = v8;
  v33 = 0;
  v28 = v10;
  v29 = v7;
  v30 = &v34;
  v35[0] = v31;
  v35[1] = &v27;
  v11 = *a1;
  v23[0] = v10;
  v23[1] = v7;
  v24 = v11;
  v25 = v4;
  v26 = 0;
  result = cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v23, v35);
  v13 = *(*v8 + 20);
  v14 = *(a1 + 4);
  if (v14 > v13)
  {
    v15 = v14 - v13;
    v16 = *(a1 + 5);
    v17 = v16 * (v14 - v13);
    v18 = v17 == 0;
    if (v17)
    {
      v19 = (*a1 + 4 * v13);
    }

    else
    {
      v19 = 0;
    }

    v20 = *a1 + 4 * v13 + 4 * v16 * v14;
    if (v18)
    {
      v20 = 0;
    }

    if (v19 != v20)
    {
      v21 = 0;
      do
      {
        *v19 = 0;
        if (v21 + 1 >= v15)
        {
          v22 = v13;
        }

        else
        {
          v22 = 0;
        }

        v19 += v22 + 1;
        if (v21 + 1 < v15)
        {
          ++v21;
        }

        else
        {
          v21 = 0;
        }
      }

      while (v19 != v20);
    }
  }

  return result;
}

uint64_t cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8) - 4 * *(a1 + 20);
  if (***(*a2 + 8) == v4 || **(***(a2[1] + 16) + 8) == v4)
  {
    v5 = *a1;
    v6 = *(a1 + 4);
    v21[0] = 0;
    v21[1] = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(v21, (v6 * v5));
    v22 = v5;
    v23 = v6;
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v21, a2);
    v8 = *a1;
    if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
    {
      cva::Logger::instance(v7);
      cva::Logger::logInCategory();
      v8 = *a1;
      if (*a1 != v22 || (v9 = *(a1 + 4), v9 != v23))
      {
        __assert_rtn("assert_equal_size", "matrixfun.h", 163, "(lhs.rows() == rhs.rows() && lhs.columns() == rhs.columns()) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
      }
    }

    v10 = *(a1 + 16);
    v11 = v8 * v9 == 0;
    if (v8 * v9)
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 8) + 4 * (v10 * v9);
    if (v11)
    {
      v13 = 0;
    }

    v14 = v21[0];
    if (v12 != v13)
    {
      v15 = 0;
      v16 = v10 - v8;
      v17 = v21[0];
      do
      {
        v18 = *v17++;
        *v12 = v18;
        if (v15 + 1 >= v8)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v12 += v19 + 1;
        if (v15 + 1 < v8)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v12 != v13);
    }

    free(v14);
  }

  else
  {
    cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(a1, a2);
  }

  return a1;
}

void cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(cva::Logger *a1, void *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *(a1 + 4);
    v5 = *a2;
    if (v4 != **a2 || (v6 = *(a1 + 5), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2[1];
    v11 = *a1;
    v12 = 4 * v7;
    do
    {
      if (v4 <= v9 || v5[1] <= HIDWORD(v9))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v13 = v5[5] + HIDWORD(v9);
      v14 = **(v5 + 1);
      v15 = *(v14 + 16);
      if (v15 <= v13 || (v16 = v5[4] + v9, v16 >= *(v14 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v17 = *(*v14 + 4 * (v13 + v15 * v16));
      *v11++ = v17 * cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(v10, v8, HIDWORD(v8));
      v18 = (v9 + 1);
      v4 = *v5;
      if (*v5 <= v18)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = v9 & 0xFFFFFFFF00000000 | v18;
      }

      v19 = (v8 + 1);
      if (*(v10 + 4) <= v19)
      {
        v8 = (v8 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v8 = v8 & 0xFFFFFFFF00000000 | v19;
      }

      v12 -= 4;
    }

    while (v12);
  }
}

void cva::detail::assignNoAlias<cva::MatrixRef<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
  {
    cva::Logger::instance(a1);
    cva::Logger::logInCategory();
    v4 = *a1;
    v5 = *a2;
    if (*a1 != **a2 || (v6 = *(a1 + 4), v6 != v5[1]))
    {
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
    }
  }

  v7 = v6 * v4;
  v8 = *(a1 + 16);
  if (v6 * v4)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 8) + 4 * (v8 * v6);
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2[1];
    v16 = v8 - v4;
    v17 = v4;
    do
    {
      if (v17 <= v13 || v5[1] <= HIDWORD(v13))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v18 = v5[5] + HIDWORD(v13);
      v19 = **(v5 + 1);
      v20 = *(v19 + 16);
      if (v20 <= v18 || (v21 = v5[4] + v13, v21 >= *(v19 + 20)))
      {
        cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
      }

      v22 = *(*v19 + 4 * (v18 + v20 * v21));
      *v9 = v22 * cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(v15, v12, HIDWORD(v12));
      v23 = (v13 + 1);
      v17 = *v5;
      if (*v5 <= v23)
      {
        v13 = (v13 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v13 = v13 & 0xFFFFFFFF00000000 | v23;
      }

      v24 = (v12 + 1);
      if (*(v15 + 4) <= v24)
      {
        v12 = (v12 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFF00000000 | v24;
      }

      if (v14 + 1 >= v4)
      {
        v25 = v16;
      }

      else
      {
        v25 = 0;
      }

      v9 += v25 + 1;
      if (v14 + 1 < v4)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    while (v9 != v11);
  }
}

float cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 4) <= a2 || *(a1 + 8) <= a3)
  {
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v3 = **(a1 + 16);
  v4 = *(*v3 + 4);
  if (**v3 < v4)
  {
    v4 = **v3;
  }

  v5 = a2 % v4;
  v6 = *(*v3 + 8);
  if (*(v6 + 16) <= v5)
  {
    cva::detail::assignNoAlias<cva::Matrix<float,0u,0u,false>,cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixTransposeExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const> const>,0u,1u>,cva::detail::MulOp>>();
  }

  v7 = *(*v6 + 4 * v5);
  v8 = fabsf(v7);
  result = 1.0 / v7;
  if (v8 < v3[2])
  {
    return 0.0;
  }

  return result;
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(uint64_t a1, uint64_t a2)
{
  v4 = **(a2 + 16);
  if (*v4 == *a1)
  {
    v12 = (*(v4 + 16) * *(***(a2 + 8) + 20));
    v17 = 0;
    v18 = 0;
    cva::MatrixData<float,0ul,0ul,false>::allocate(&v17, v12);
    v13 = *(**(a2 + 16) + 16);
    LODWORD(v19) = *(***(a2 + 8) + 20);
    HIDWORD(v19) = v13;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>>(&v17, a2);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = v18;
    *a1 = v17;
    *(a1 + 8) = v16;
    v17 = v14;
    v18 = v15;
    *(a1 + 16) = v19;
    v19 = 0;
    free(v14);
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 8);
    if (v5 != *(**v6 + 20) || (v7 = *(a1 + 20), v7 != *(v4 + 16)))
    {
      cva::Logger::instance(a1);
      cva::Logger::logInCategory();
      v5 = *(a1 + 16);
      v6 = *(a2 + 8);
      if (v5 != *(**v6 + 20) || (v4 = **(a2 + 16), v7 = *(v4 + 16), *(a1 + 20) != v7))
      {
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>();
      }
    }

    v8 = (**v6[1] * v5);
    if (v8 && v7 * *(v4 + 20))
    {
      v17 = 0;
      v18 = 0;
      cva::MatrixData<float,0ul,0ul,false>::allocate(&v17, v8);
      v9 = **v6[1];
      LODWORD(v19) = *(**v6 + 20);
      HIDWORD(v19) = v9;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>>(&v17, v6);
      cva::VecLib<float>::gemm();
    }

    v10 = v5 * v7;
    if (v10)
    {
      v11 = *a1;

      bzero(v11, 4 * v10);
    }
  }
}