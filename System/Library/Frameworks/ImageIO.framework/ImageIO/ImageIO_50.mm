void sub_186167D88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if ((*a3)(*(a2 - 1), *a1))
      {
        v9 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v9;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(a1, v14, a3, v15, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13]);

        std::__merge_move_assign[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),XMP_Node **,XMP_Node **,std::__wrap_iter<XMP_Node **>>(a5, &a5[v13], &a5[v13], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(a1, v14, a3, v15, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(a1, a2, a3);
    }
  }
}

uint64_t std::__insertion_sort[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = *v8;
        v8 = v5;
        result = (*a3)(*v5, v9);
        if (result)
        {
          v10 = *v8;
          v11 = v7;
          while (1)
          {
            *(v4 + v11 + 8) = *(v4 + v11);
            if (!v11)
            {
              break;
            }

            result = (*a3)(v10, *(v4 + v11 - 8));
            v11 -= 8;
            if ((result & 1) == 0)
            {
              v12 = (v4 + v11 + 8);
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          *v12 = v10;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      result = (*a3)(*(a2 - 1), *result);
      if (result)
      {
        *a5 = *(a2 - 1);
        v10 = *v9;
      }

      else
      {
        *a5 = *v9;
        v10 = *(a2 - 1);
      }

      a5[1] = v10;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>,std::__wrap_iter<XMP_Node **>>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t std::__merge_move_assign[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),XMP_Node **,XMP_Node **,std::__wrap_iter<XMP_Node **>>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(*a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8;
      }

      v11 = (v11 + v13);
      if (result)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      v15 = 0;
      v16 = -a5;
      while (((*a4)(*a2, a1[v15 / 8]) & 1) == 0)
      {
        v15 += 8;
        if (__CFADD__(v16++, 1))
        {
          return;
        }
      }

      v18 = -v16;
      v43 = a8;
      v44 = a7;
      v42 = v10;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          v40 = a1[v15 / 8];
          a1[v15 / 8] = *a2;
          *a2 = v40;
          return;
        }

        v26 = v18 / 2;
        v27 = &a1[v18 / 2];
        v20 = a2;
        if (a2 != a3)
        {
          v41 = v18 / 2;
          v46 = *a4;
          v28 = (a3 - a2) >> 3;
          v20 = a2;
          do
          {
            v29 = &v20[8 * (v28 >> 1)];
            v31 = *v29;
            v30 = v29 + 8;
            v32 = v46(v31, v27[v15 / 8]);
            if (v32)
            {
              v28 += ~(v28 >> 1);
            }

            else
            {
              v28 >>= 1;
            }

            if (v32)
            {
              v20 = v30;
            }
          }

          while (v28);
          v26 = v41;
        }

        v19 = (v20 - a2) >> 3;
        v21 = &v27[v15 / 8];
      }

      else
      {
        v19 = v10 / 2;
        v20 = &a2[v10 / 2];
        v21 = a2;
        if (a2 - a1 != v15)
        {
          v22 = (a2 - a1 - v15) >> 3;
          v21 = &a1[v15 / 8];
          do
          {
            v23 = &v21[8 * (v22 >> 1)];
            v25 = *v23;
            v24 = (v23 + 1);
            if ((*a4)(*v20, v25))
            {
              v22 >>= 1;
            }

            else
            {
              v21 = v24;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
        }

        v26 = (v21 - a1 - v15) >> 3;
      }

      a5 = -(v26 + v16);
      v33 = a2;
      v34 = v26;
      v35 = std::__rotate[abi:fe200100]<std::_ClassicAlgPolicy,std::__wrap_iter<XMP_Node **>,std::__wrap_iter<XMP_Node **>>(v21, v33, v20);
      v36 = v34;
      v37 = v35;
      if (v36 + v19 >= v42 - (v36 + v19) - v16)
      {
        v39 = v36;
        a7 = v44;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(v35, v20, a3, a4, a5, v42 - v19, v44, v43);
        v20 = v21;
        a8 = v43;
        a5 = v39;
        a3 = v37;
        a1 = (a1 + v15);
      }

      else
      {
        v38 = v21;
        a8 = v43;
        a7 = v44;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(&a1[v15 / 8], v38, v35, a4, v36, v19, v44, v43);
        a1 = v37;
        v19 = v42 - v19;
      }

      a2 = v20;
      v10 = v19;
      if (!v19)
      {
        return;
      }
    }

    std::__buffered_inplace_merge[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(a1, a2, a3, a4, a5, v10, a7);
  }
}

uint64_t *std::__insertion_sort_move[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        result = (*a4)(*v6, v11);
        v12 = v9;
        if (result)
        {
          v10[1] = *v10;
          v12 = a3;
          if (v10 != a3)
          {
            v13 = v8;
            while (1)
            {
              v12 = (a3 + v13);
              result = (*a4)(*v6, *(a3 + v13 - 8));
              if (!result)
              {
                break;
              }

              *v12 = *(v12 - 1);
              v13 -= 8;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }
        }

        v14 = *v6++;
        *v12 = v14;
        v8 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t std::__merge_move_construct[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>,std::__wrap_iter<XMP_Node **>>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(*a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(XMP_Node *,XMP_Node *),std::__wrap_iter<XMP_Node **>>(uint64_t *__dst, uint64_t *a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v15 = -__src;
      v16 = __src;
      v17 = __dst;
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        v15 -= 8;
      }

      while (v17 != a2);
      while (v10 != a3)
      {
        v19 = (*a4)(*v10, *v7);
        if (v19)
        {
          v20 = v10;
        }

        else
        {
          v20 = v7;
        }

        if (v19)
        {
          v21 = 8;
        }

        else
        {
          v21 = 0;
        }

        v10 = (v10 + v21);
        if (v19)
        {
          v22 = 0;
        }

        else
        {
          v22 = 8;
        }

        v7 = (v7 + v22);
        *v11++ = *v20;
        if (v16 == v7)
        {
          return;
        }
      }

      memmove(v11, v7, -(v7 + v15));
    }
  }

  else
  {
    v12 = __src;
    if (a2 != a3)
    {
      v12 = __src;
      v13 = a2;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a3);
    }

    v23 = a4;
    std::__half_inplace_merge[abi:fe200100]<std::_ClassicAlgPolicy,std::__invert<BOOL (*&)(XMP_Node *,XMP_Node *)>,std::reverse_iterator<XMP_Node **>,std::reverse_iterator<XMP_Node **>,std::reverse_iterator<std::__wrap_iter<XMP_Node **>>,std::reverse_iterator<std::__wrap_iter<XMP_Node **>>,std::reverse_iterator<std::__wrap_iter<XMP_Node **>>>(v12, v12, __src, __src, a2, a2, v11, v11, a3, a3, &v23);
  }
}

char *std::__rotate[abi:fe200100]<std::_ClassicAlgPolicy,std::__wrap_iter<XMP_Node **>,std::__wrap_iter<XMP_Node **>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:fe200100]<std::_ClassicAlgPolicy,std::__wrap_iter<XMP_Node **>>(__src, a2, a3);
    }
  }

  return v4;
}

void std::__half_inplace_merge[abi:fe200100]<std::_ClassicAlgPolicy,std::__invert<BOOL (*&)(XMP_Node *,XMP_Node *)>,std::reverse_iterator<XMP_Node **>,std::reverse_iterator<XMP_Node **>,std::reverse_iterator<std::__wrap_iter<XMP_Node **>>,std::reverse_iterator<std::__wrap_iter<XMP_Node **>>,std::reverse_iterator<std::__wrap_iter<XMP_Node **>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (***a11)(void, void))
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = (**a11)(*(v14 - 8), *(a6 - 8));
      if (v16)
      {
        v17 = a6;
      }

      else
      {
        v17 = v14;
      }

      if (v16)
      {
        a6 -= 8;
      }

      else
      {
        v14 -= 8;
      }

      *(a10 - 8) = *(v17 - 8);
      a10 -= 8;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v18 = -8;
      do
      {
        v19 = *(v14 - 8);
        v14 -= 8;
        *(a10 + v18) = v19;
        v18 -= 8;
      }

      while (v14 != a4);
    }
  }
}

char *std::__rotate_gcd[abi:fe200100]<std::_ClassicAlgPolicy,std::__wrap_iter<XMP_Node **>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void *AdobeXMPCore_Int::INodeIterator_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x634E6F6465497420)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634E6F6465497420, a3, exception);
      }

      return (this + *(*this - 136));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634E6F6465497420, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::INodeIterator_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INodeIterator_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186169018(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186168FFCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INodeIterator_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INodeIterator_v1,AdobeXMPCore::INodeIterator_v1*,AdobeXMPCore::INodeIterator_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E6F6465497420, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186169554(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186169538);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void *AdobeXMPCore_Int::INode_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x634E6F6465202020)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634E6F6465202020, a3, exception);
      }

      return (this + *(*this - 544));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634E6F6465202020, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::INode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::INode_v1*,AdobeXMPCore::INode_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186169C00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186169BE4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::INode_v1,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616A36C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616A350);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::IPath_v1 *,AdobeXMPCore::IPath_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6350617468202020, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616A85C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616A840);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::INodeIterator_v1 *,AdobeXMPCore::INodeIterator_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634E6F6465497420, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616ABF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616ABDCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  *a1 = 0;
  v12 = (a2 + (a5 >> 1));
  if (a5)
  {
    v11 = *(*v12 + a4);
  }

  return v11(v12, a8, a9, a10, a11);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::INode_v1*,AdobeXMPCore::INode_v1,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v15 = 0;
  v16 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  v10(&v15, v11, a7, a8, a9, a10);
  if (v15)
  {
    v12 = (*(*&v15[*(*v15 - 56)] + 16))(&v15[*(*v15 - 56)]);
    (*(*v12 + 40))(v12);
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v13 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  return v13;
}

void sub_18616B1EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616B1D0);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::INode_I::insertQualifier(AdobeXMPCore_Int::INode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 544);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v6);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::INode_v1::InsertQualifier, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INode_I.cpp", 109, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void sub_18616B434(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::INode_I::replaceQualifier(AdobeXMPCore_Int::INode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 544);
  AdobeXMPCore::INode_v1::MakeShared(a2, a2, &v8);
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::INode_v1*,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::INode_v1::ReplaceQualifier, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/INode_I.cpp", 114, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616B66C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::INode_v1*,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18616B7F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616B7D8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INode_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::INode_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::INode_v1,BOOL,BOOL>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::INode_v1*,AdobeXMPCore::INode_v1,BOOL,BOOL>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_18616C628(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616C60CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::ISimpleNode_v1 *,AdobeXMPCore::ISimpleNode_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x63536D6C4E6F6465, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616C9CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616C9B0);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::IStructureNode_v1 *,AdobeXMPCore::IStructureNode_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x635374724E6F6465, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616CD68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616CD4CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::IArrayNode_v1 *,AdobeXMPCore::IArrayNode_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634172724E6F6465, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616D104(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616D0E8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::INode_v1,AdobeXMPCore::IMetadata_v1 *,AdobeXMPCore::IMetadata_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x634D657461646174, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18616D4A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18616D484);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

std::string *SplitNameAndValue(uint64_t a1, uint64_t a2, std::string *a3)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (*v4 != 91 || (v6 = &v4[v5], v4[v5 - 1] != 93))
  {
    SplitNameAndValue();
  }

  if (v5 < 6 || (v10 = *(v6 - 2), v8 = (v6 - 2), v9 = v10, v10 != 34) && v9 != 39)
  {
    SplitNameAndValue();
  }

  v11 = 0;
  if (v4[1] == 63)
  {
    v12 = v4 + 2;
  }

  else
  {
    v12 = v4 + 1;
  }

  do
  {
    v13 = v12[++v11];
  }

  while (v13 != 61);
  MEMORY[0x186602530](a2, v12, v11);
  if (v12[v11 + 1] != v9)
  {
    SplitNameAndValue();
  }

  v14 = &v12[v11 + 2];
  std::string::erase(a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::reserve(a3, &v4[v5] - v12 - v11 - 4);
  for (i = v14; i < v8; ++i)
  {
    if (*i == v9 && *(i + 1) == v9)
    {
      std::string::append(a3, v14, i + 1 - v14);
      v14 = i + 2;
      ++i;
    }
  }

  return std::string::append(a3, v14, i - v14);
}

uint64_t DeleteSubtree(char *__dst)
{
  v2 = *__dst;
  v3 = *(*__dst + 64);
  if ((*(*__dst + 8) & 0x20) != 0)
  {
    v6 = *(v3 + 104);
    if (v6 == __dst)
    {
      goto LABEL_29;
    }

    v7 = v6 - (__dst + 8);
    if (v6 != __dst + 8)
    {
      memmove(__dst, __dst + 8, v6 - (__dst + 8));
    }

    *(v3 + 104) = &__dst[v7];
    v8 = *(v3 + 8);
    if ((v8 & 0x10) == 0)
    {
LABEL_30:
      DeleteSubtree();
    }

    if (*(v3 + 96) == &__dst[v7])
    {
      v8 &= ~0x10u;
      *(v3 + 8) = v8;
    }

    v9 = (v2 + 16);
    v10 = *(v2 + 39);
    if (v10 < 0)
    {
      if (*(v2 + 24) == 8 && **v9 == 0x676E616C3A6C6D78)
      {
LABEL_23:
        if ((v8 & 0x40) == 0)
        {
          DeleteSubtree();
        }

        v11 = v8 & 0xFFFFFFBF;
LABEL_25:
        *(v3 + 8) = v11;
        goto LABEL_26;
      }

      if (*(v2 + 24) != 8)
      {
        goto LABEL_26;
      }

      v9 = *v9;
    }

    else
    {
      if (v10 != 8)
      {
        goto LABEL_26;
      }

      if (*v9 == 0x676E616C3A6C6D78)
      {
        goto LABEL_23;
      }
    }

    if (*v9 != 0x657079743A666472)
    {
      goto LABEL_26;
    }

    if ((v8 & 0x80) == 0)
    {
      DeleteSubtree();
    }

    v11 = v8 & 0xFFFFFF7F;
    goto LABEL_25;
  }

  v4 = *(v3 + 80);
  if (v4 == __dst)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = v4 - (__dst + 8);
  if (v4 != __dst + 8)
  {
    memmove(__dst, __dst + 8, v4 - (__dst + 8));
  }

  *(v3 + 80) = &__dst[v5];
LABEL_26:
  v12 = *(*v2 + 8);

  return v12(v2);
}

uint64_t FindQualifierNode(uint64_t result, char *__s, int a3, void *a4)
{
  v19 = 0;
  if (*__s == 63)
  {
    FindQualifierNode();
  }

  v5 = result;
  v7 = *(result + 96);
  v8 = *(result + 104) - v7;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 3;
    v11 = *(result + 96);
    do
    {
      if (v10 == v9)
      {
        __break(1u);
        return result;
      }

      v12 = *(v7 + 8 * v9);
      if (*(v12 + 64) != v5)
      {
        FindQualifierNode();
      }

      v13 = (v12 + 16);
      result = strlen(__s);
      v14 = *(v12 + 39);
      if (v14 < 0)
      {
        if (result != *(v12 + 24))
        {
          goto LABEL_13;
        }

        if (result == -1)
        {
          std::string::__throw_out_of_range[abi:fe200100]();
        }

        v13 = *v13;
      }

      else if (result != v14)
      {
        goto LABEL_13;
      }

      result = memcmp(v13, __s, result);
      if (!result)
      {
        v19 = v12;
        if (a4)
        {
          *a4 = v11;
          v15 = a3;
          goto LABEL_19;
        }

        v16 = v12 == 0;
        v15 = a3;
LABEL_23:
        if (v16 && v15 != 0)
        {
          FindQualifierNode();
        }

        return v12;
      }

LABEL_13:
      ++v9;
      v11 += 8;
    }

    while (v10 != v9);
  }

  v15 = a3;
  if (a3)
  {
    operator new();
  }

LABEL_19:
  v12 = v19;
  v16 = v19 == 0;
  if (!a4 || !v19)
  {
    goto LABEL_23;
  }

  if (v19 != **a4)
  {
    FindQualifierNode();
  }

  return v12;
}

uint64_t LookupFieldSelector(const XMP_Node *a1, const char *__s, const char *a3)
{
  v3 = *(a1 + 9);
  v4 = *(a1 + 10) - v3;
  if (v4)
  {
    v8 = 0;
    v22 = v4 >> 3;
    while (1)
    {
      v9 = *(v3 + 8 * v8);
      if (*(v9 + 64) != a1)
      {
        LookupFieldSelector();
      }

      if ((*(v9 + 9) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 102;
        exception[1] = "Field selector must be used on array of struct";
        *(exception + 16) = 0;
      }

      v10 = *(v9 + 72);
      v11 = *(v9 + 80) - v10;
      if (v11)
      {
        break;
      }

LABEL_23:
      if (++v8 == v22)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v12 = v11 >> 3;
    while (1)
    {
      v13 = *v10;
      if (*(*v10 + 64) != v9)
      {
        LookupFieldSelector();
      }

      v14 = (v13 + 16);
      v15 = strlen(__s);
      v16 = *(v13 + 39);
      if (v16 < 0)
      {
        if (v15 != *(v13 + 24))
        {
          goto LABEL_22;
        }

        if (v15 == -1)
        {
          std::string::__throw_out_of_range[abi:fe200100]();
        }

        v14 = *v14;
      }

      else if (v15 != v16)
      {
        goto LABEL_22;
      }

      if (!memcmp(v14, __s, v15))
      {
        v17 = (v13 + 40);
        v18 = strlen(a3);
        v19 = *(v13 + 63);
        if (v19 < 0)
        {
          if (v18 == *(v13 + 48))
          {
            if (v18 == -1)
            {
              std::string::__throw_out_of_range[abi:fe200100]();
            }

            v17 = *v17;
LABEL_21:
            if (!memcmp(v17, a3, v18))
            {
              return v8;
            }
          }
        }

        else if (v18 == v19)
        {
          goto LABEL_21;
        }
      }

LABEL_22:
      ++v10;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t LookupLangItem(uint64_t a1, const void **a2)
{
  if ((*(a1 + 9) & 2) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Language item must be used on array";
    *(exception + 16) = 0;
  }

  v3 = *(a1 + 72);
  v4 = *(a1 + 80) - v3;
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    if (v7 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    do
    {
      v10 = *(v3 + 8 * v5);
      if (v10[8] != a1)
      {
        LookupLangItem();
      }

      v11 = v10[12];
      if (v11 == v10[13])
      {
        goto LABEL_24;
      }

      v12 = *v11;
      v13 = (*v11 + 16);
      v14 = *(v12 + 39);
      if (v14 < 0)
      {
        if (*(v12 + 24) != 8)
        {
          goto LABEL_24;
        }

        v13 = *v13;
      }

      else if (v14 != 8)
      {
        goto LABEL_24;
      }

      if (*v13 == 0x676E616C3A6C6D78)
      {
        v15 = *(v12 + 63);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v12 + 48);
        }

        if (v15 == v8)
        {
          v19 = *(v12 + 40);
          v17 = v12 + 40;
          v18 = v19;
          v20 = (v16 >= 0 ? v17 : v18);
          if (!memcmp(v20, v9, v8))
          {
            return v5;
          }
        }
      }

LABEL_24:
      ++v5;
    }

    while (v6 != v5);
  }

  return 0xFFFFFFFFLL;
}

void *CloneOffspring(void *result, XMP_Node *a2, int a3)
{
  v5 = result;
  v7 = result[9];
  v6 = result[10];
  v8 = result[13] - result[12];
  if (v8)
  {
    v9 = v8 >> 3;
    result = std::vector<_MPEntry *>::reserve(a2 + 12, v8 >> 3);
    v10 = 0;
    do
    {
      v11 = v5[12];
      if (v10 >= (v5[13] - v11) >> 3)
      {
        goto LABEL_24;
      }

      v12 = *(v11 + 8 * v10);
      if (!a3)
      {
        goto LABEL_10;
      }

      if ((*(v12 + 63) & 0x8000000000000000) != 0)
      {
        if (*(v12 + 48))
        {
          goto LABEL_10;
        }
      }

      else if (*(v12 + 63))
      {
        goto LABEL_10;
      }

      if (*(v12 + 72) != *(v12 + 80))
      {
LABEL_10:
        operator new();
      }
    }

    while (v9 != ++v10);
  }

  if (v6 != v7)
  {
    v13 = (v6 - v7) >> 3;
    result = std::vector<_MPEntry *>::reserve(a2 + 9, v13);
    v14 = 0;
    while (1)
    {
      v15 = v5[9];
      if (v14 >= (v5[10] - v15) >> 3)
      {
        break;
      }

      v16 = *(v15 + 8 * v14);
      if (!a3)
      {
        goto LABEL_21;
      }

      if ((*(v16 + 63) & 0x8000000000000000) != 0)
      {
        if (*(v16 + 48))
        {
          goto LABEL_21;
        }
      }

      else if (*(v16 + 63))
      {
        goto LABEL_21;
      }

      if (*(v16 + 72) != *(v16 + 80))
      {
LABEL_21:
        operator new();
      }

      if (v13 == ++v14)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
  }

  return result;
}

void CloneSubtree(const XMP_Node *a1, XMP_Node *a2)
{
  v3 = *(a1 + 2);
  if (*(a2 + 8))
  {
    if (v3 < 0)
    {
      CloneSubtree();
    }

    if (*(a2 + 9))
    {
      v4 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v4 = *v4;
      }

      if (FindChildNode(a2, v4, 0, 0))
      {
        CloneSubtree();
      }
    }
  }

  else
  {
    if ((v3 & 0x80000000) == 0)
    {
      CloneSubtree();
    }

    v5 = a1 + 16;
    if (*(a1 + 39) < 0)
    {
      v5 = *v5;
    }

    if (FindSchemaNode(a2, v5, 0, 0))
    {
      CloneSubtree();
    }
  }

  operator new();
}

void *DeleteEmptySchema(void *result)
{
  if ((result[1] & 0x80000000) != 0)
  {
    v1 = result;
    if (result[9] == result[10])
    {
      v2 = result[8];
      v4 = *(v2 + 72);
      v3 = *(v2 + 80);
      if (v3 == v4)
      {
LABEL_10:
        DeleteEmptySchema();
      }

      v5 = v3 - v4;
      if (v5 <= 1)
      {
        v5 = 1;
      }

      v6 = *(v2 + 72);
      while (*v6 != result)
      {
        ++v6;
        ++v4;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      if (*v4 != result)
      {
        DeleteEmptySchema();
      }

      v7 = v3 - v4;
      if (v7)
      {
        v8 = v7 - 8;
        if (v6 + 1 != v3)
        {
          result = memmove(v6, v6 + 1, v7 - 8);
        }

        *(v2 + 80) = v6 + v8;
        if (v1)
        {
          v9 = *(*v1 + 8);

          return v9(v1);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unsigned __int8 *NormalizeLangValue(unsigned __int8 *result)
{
  if (result[23] < 0)
  {
    result = *result;
  }

  while (1)
  {
    v1 = *result;
    if (!*result || v1 == 45)
    {
      break;
    }

    if ((v1 - 65) <= 0x19)
    {
      *result = v1 | 0x20;
    }

    ++result;
  }

  v2 = v1 == 45;
  if (v1 == 45)
  {
    v3 = result + 1;
  }

  else
  {
    v3 = result;
  }

  v4 = 2;
  for (i = v3; ; ++i)
  {
    v6 = *i;
    if (!*i || v6 == 45)
    {
      break;
    }

    if ((v6 - 65) <= 0x19)
    {
      *i = v6 | 0x20;
    }

    --v4;
  }

  if (!v4)
  {
    v7 = *v3;
    if ((v7 - 97) <= 0x19)
    {
      *v3 = v7 - 32;
    }

    v8 = &result[v2];
    v9 = v8[1];
    if ((v9 - 97) <= 0x19)
    {
      v8[1] = v9 - 32;
    }
  }

  if (*i == 45)
  {
    ++i;
  }

  while (1)
  {
    v10 = *i;
    if (!*i)
    {
      break;
    }

    do
    {
      if (v10 == 45)
      {
        break;
      }

      if ((v10 - 65) <= 0x19)
      {
        *i = v10 | 0x20;
      }

      v11 = *++i;
      v10 = v11;
    }

    while (v11);
    if (v10 == 45)
    {
      ++i;
    }
  }

  return result;
}

std::string *NormalizeLangArray(std::string *result)
{
  if ((result->__r_.__value_.__s.__data_[9] & 0x10) == 0)
  {
    NormalizeLangArray();
  }

  data = result[3].__r_.__value_.__l.__data_;
  v2 = result[3].__r_.__value_.__l.__size_ - data;
  if (!v2)
  {
    return result;
  }

  v3 = 0;
  v4 = v2 >> 3;
  if ((v2 >> 3) <= 1)
  {
    v4 = 1;
  }

  while (1)
  {
    v5 = data[v3];
    v6 = *(v5 + 96);
    if (v6 == *(v5 + 104))
    {
      goto LABEL_34;
    }

    v7 = *v6;
    v8 = (v7 + 16);
    v9 = *(v7 + 39);
    if (v9 < 0)
    {
      if (*(v7 + 24) != 8)
      {
        goto LABEL_34;
      }

      v8 = *v8;
    }

    else if (v9 != 8)
    {
      goto LABEL_34;
    }

    if (*v8 != 0x676E616C3A6C6D78)
    {
      goto LABEL_34;
    }

    v10 = (v7 + 40);
    v11 = *(v7 + 63);
    if (v11 < 0)
    {
      break;
    }

    if (v11 == 9)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v4 == ++v3)
    {
      return result;
    }
  }

  if (*(v7 + 48) != 9)
  {
    goto LABEL_21;
  }

  v10 = *v10;
LABEL_17:
  v12 = *v10;
  v13 = *(v10 + 8);
  if (v12 != 0x6C75616665642D78 || v13 != 116)
  {
    goto LABEL_21;
  }

  if (!v3)
  {
    goto LABEL_26;
  }

  v15 = *data;
  *data = v5;
  v16 = result[3].__r_.__value_.__l.__data_;
  if (v3 >= (result[3].__r_.__value_.__l.__size_ - v16) >> 3)
  {
    goto LABEL_33;
  }

  *&v16[8 * v3] = v15;
LABEL_26:
  if (v2 == 16)
  {
    v17 = result[3].__r_.__value_.__l.__data_;
    if (result[3].__r_.__value_.__l.__size_ - v17 > 8)
    {
      v18 = (v17[1] + 40);
      v19 = (*v17 + 40);

      return std::string::operator=(v18, v19);
    }

LABEL_33:
    __break(1u);
LABEL_34:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 203;
    exception[1] = "AltText array items must have an xml:lang qualifier";
    *(exception + 16) = 0;
  }

  return result;
}

std::string *DetectAltText(std::string *result)
{
  v1 = result->__r_.__value_.__r.__words[1];
  if ((v1 & 0x800) == 0)
  {
    DetectAltText();
  }

  data = result[3].__r_.__value_.__l.__data_;
  size = result[3].__r_.__value_.__l.__size_;
  v4 = (size - data) >> 3;
  v5 = 0;
  if (size != data)
  {
    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = (size - data) >> 3;
    }

    while ((*(*&data[8 * v5] + 8) & 0x1F40) == 0x40)
    {
      if (v6 == ++v5)
      {
        v5 = v6;
        break;
      }
    }
  }

  if (size != data && v5 == v4)
  {
    LODWORD(result->__r_.__value_.__r.__words[1]) = v1 | 0x1000;

    return NormalizeLangArray(result);
  }

  return result;
}

void SplitNameAndValue()
{
  __assert_rtn("SplitNameAndValue", "XMPCore_Impl.cpp", 247, "(*partBegin == '[') && (*(valueEnd+1) == ']')");
}

{
  __assert_rtn("SplitNameAndValue", "XMPCore_Impl.cpp", 260, "*(partEnd+1) == quote");
}

{
  __assert_rtn("SplitNameAndValue", "XMPCore_Impl.cpp", 248, "(selStep.size() >= 6) && ((quote == '') || (quote == '\\''))");
}

void DeleteSubtree()
{
  __assert_rtn("DeleteSubtree", "XMPCore_Impl.cpp", 474, "rootParent->options & kXMP_PropHasType");
}

{
  __assert_rtn("DeleteSubtree", "XMPCore_Impl.cpp", 471, "rootParent->options & kXMP_PropHasLang");
}

{
  __assert_rtn("DeleteSubtree", "XMPCore_Impl.cpp", 467, "rootParent->options & kXMP_PropHasQualifiers");
}

void FindSchemaNode()
{
  __assert_rtn("FindSchemaNode", "XMPCore_Impl.cpp", 780, "xmpTree->parent == 0");
}

{
  __assert_rtn("FindSchemaNode", "XMPCore_Impl.cpp", 784, "currSchema->parent == xmpTree");
}

{
  __assert_rtn("FindSchemaNode", "XMPCore_Impl.cpp", 822, "(ptrPos == 0) || (schemaNode == 0) || (schemaNode == **ptrPos)");
}

{
  __assert_rtn("FindSchemaNode", "XMPCore_Impl.cpp", 823, "(schemaNode != 0) || (! createNodes)");
}

void FindChildNode()
{
  __assert_rtn("FindChildNode", "XMPCore_Impl.cpp", 859, "currChild->parent == parent");
}

{
  __assert_rtn("FindChildNode", "XMPCore_Impl.cpp", 873, "(ptrPos == 0) || (childNode == 0) || (childNode == **ptrPos)");
}

{
  __assert_rtn("FindChildNode", "XMPCore_Impl.cpp", 874, "(childNode != 0) || (! createNodes)");
}

void FindQualifierNode()
{
  __assert_rtn("FindQualifierNode", "XMPCore_Impl.cpp", 901, "currQual->parent == parent");
}

{
  __assert_rtn("FindQualifierNode", "XMPCore_Impl.cpp", 936, "(ptrPos == 0) || (qualNode == 0) || (qualNode == **ptrPos)");
}

{
  __assert_rtn("FindQualifierNode", "XMPCore_Impl.cpp", 937, "(qualNode != 0) || (! createNodes)");
}

{
  __assert_rtn("FindQualifierNode", "XMPCore_Impl.cpp", 897, "*qualName != '?'");
}

void LookupFieldSelector()
{
  __assert_rtn("LookupFieldSelector", "XMPCore_Impl.cpp", 958, "currItem->parent == arrayNode");
}

{
  __assert_rtn("LookupFieldSelector", "XMPCore_Impl.cpp", 967, "currField->parent == currItem");
}

void FollowXPathStep()
{
  __assert_rtn("FollowXPathStep", "XMPCore_Impl.cpp", 359, "*qualStep == '?'");
}

{
  __assert_rtn("FindIndexedItem", "XMPCore_Impl.cpp", 202, "(chLim >= 2) && (indexStep[0] == '[') && (indexStep[chLim] == ']')");
}

{
  __assert_rtn("FollowXPathStep", "XMPCore_Impl.cpp", 396, "(stepNum == 2) && (nextStep.step == [?xml:lang=\\x-default\\])");
}

{
  __assert_rtn("FollowXPathStep", "XMPCore_Impl.cpp", 423, "(nextNode != 0) || (! createNodes)");
}

{
  __assert_rtn("FollowXPathStep", "XMPCore_Impl.cpp", 422, "(ptrPos == 0) || (nextNode == 0) || (nextNode == **ptrPos)");
}

{
  __assert_rtn("FollowXPathStep", "XMPCore_Impl.cpp", 395, "parentNode->options & kXMP_PropArrayIsAltText");
}

{
  __assert_rtn("FindIndexedItem", "XMPCore_Impl.cpp", 205, "('0' <= indexStep[chNum]) && (indexStep[chNum] <= '9')");
}

{
  __assert_rtn("FollowXPathStep", "XMPCore_Impl.cpp", 350, "(kXMP_StructFieldStep <= stepKind) && (stepKind <= kXMP_FieldSelectorStep)");
}

void CloneSubtree()
{
  __assert_rtn("CloneSubtree", "XMPCore_Impl.cpp", 1195, "! (origRoot->options & ((XMP_OptionBits)0x80000000UL))");
}

{
  __assert_rtn("CloneSubtree", "XMPCore_Impl.cpp", 1197, "::FindChildNode(const_cast<XMP_Node*>(cloneParent), origRoot->name.c_str(), false, 0) == 0");
}

{
  __assert_rtn("CloneSubtree", "XMPCore_Impl.cpp", 1193, "FindSchemaNode(const_cast<XMP_Node*>(cloneParent), origRoot->name.c_str(), false, 0) == 0");
}

{
  __assert_rtn("CloneSubtree", "XMPCore_Impl.cpp", 1192, "origRoot->options & ((XMP_OptionBits)0x80000000UL)");
}

void DeleteEmptySchema()
{
  __assert_rtn("DeleteEmptySchema", "XMPCore_Impl.cpp", 1299, "*schemaPos == schemaNode");
}

{
  __assert_rtn("DeleteEmptySchema", "XMPCore_Impl.cpp", 1296, "schemaNum < schemaLim");
}

void MoveExplicitAliases(XMP_Node *a1, char a2, XMPMeta::ErrorCallbackInfo *a3)
{
  *(a1 + 2) ^= 0x20000u;
  v3 = *(a1 + 9);
  if (*(a1 + 10) == v3)
  {
    return;
  }

  v6 = 0;
  do
  {
    v7 = *(v3 + 8 * v6);
    v9 = *(v7 + 9);
    v8 = *(v7 + 10);
    if (v8 == v9)
    {
      goto LABEL_46;
    }

    v48 = v6;
    v10 = 0;
    do
    {
      v11 = *(v9 + 8 * v10);
      v12 = *(v11 + 2);
      if ((v12 & 0x10000) == 0)
      {
        ++v10;
        continue;
      }

      *(v11 + 2) = v12 & 0xFFFEFFFF;
      v13 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v11 + 16);
      if (sRegisteredAliasMap + 8 == v13)
      {
        goto LABEL_56;
      }

      v14 = v13;
      v15 = *(v13 + 56);
      if ((*(v13 + 64) - v15) <= 0x20)
      {
        goto LABEL_55;
      }

      v16 = *(v13 + 56);
      if (*(v15 + 23) < 0)
      {
        v16 = *v15;
      }

      v17 = *(v15 + 56);
      SchemaNode = FindSchemaNode(a1, v16, 1, 0);
      v19 = SchemaNode;
      v20 = *(SchemaNode + 8);
      if ((v20 & 0x8000) != 0)
      {
        *(SchemaNode + 8) = v20 & 0xFFFF7FFF;
      }

      v21 = *(v14 + 56);
      if ((*(v14 + 64) - v21) <= 0x20)
      {
        goto LABEL_55;
      }

      v22 = (v21 + 32);
      if (*(v21 + 55) < 0)
      {
        v22 = *v22;
      }

      ChildNode = FindChildNode(SchemaNode, v22, 0, 0);
      v50 = ChildNode;
      v24 = *(v14 + 56);
      v25 = *(v14 + 64) - v24;
      if (!ChildNode)
      {
        if (v25 != 64)
        {
          operator new();
        }

        v30 = *(v7 + 9);
        v29 = *(v7 + 10);
        if (v10 >= (v29 - v30) >> 3)
        {
          goto LABEL_55;
        }

        v31 = (v30 + 8 * v10);
        v32 = *v31;
        v51 = *v31;
        if (v29 == v31)
        {
          goto LABEL_55;
        }

        v33 = v30 + 8 * v10;
        v34 = v29 - v33 - 8;
        if (v29 != (v33 + 8))
        {
          memmove((v30 + 8 * v10), (v33 + 8), v29 - v33 - 8);
        }

        *(v7 + 10) = &v34[v33];
        std::string::operator=((v32 + 16), (v24 + 32));
        *(v32 + 64) = v19;
        std::vector<IIO_Writer *>::push_back[abi:fe200100](v19 + 72, &v51);
        goto LABEL_42;
      }

      v26 = ChildNode;
      if (v25 == 64)
      {
        if ((a2 & 4) != 0)
        {
          v27 = v11;
          v28 = v26;
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if ((v17 & 0x1000) != 0)
      {
        v36 = LookupLangItem(ChildNode, xdefaultName);
        v26 = v50;
        if (v36 == -1)
        {
          goto LABEL_41;
        }

        v37 = *(v50 + 9);
        if (v36 >= ((*(v50 + 10) - v37) >> 3))
        {
          goto LABEL_55;
        }

        v35 = (v37 + 8 * v36);
      }

      else
      {
        v35 = *(ChildNode + 72);
        if (v35 == *(ChildNode + 80))
        {
          goto LABEL_41;
        }
      }

      v28 = *v35;
      if (*v35)
      {
        if ((a2 & 4) != 0)
        {
          v27 = v11;
LABEL_36:
          CompareAliasedSubtrees(v27, v28, a3, 1);
        }

LABEL_37:
        v38 = *(v7 + 9);
        v39 = *(v7 + 10);
        if (v39 == v38 + 8 * v10)
        {
          goto LABEL_55;
        }

        v40 = v38 + 8 * v10;
        v41 = v39 - (v40 + 8);
        if (v39 != v40 + 8)
        {
          memmove((v38 + 8 * v10), (v40 + 8), v39 - (v40 + 8));
        }

        *(v7 + 10) = v40 + v41;
        (*(*v11 + 8))(v11);
        goto LABEL_42;
      }

LABEL_41:
      TransplantArrayItemAlias(v7, v10, v26, a3);
LABEL_42:
      v9 = *(v7 + 9);
      v8 = *(v7 + 10);
    }

    while (v10 < (v8 - v9) >> 3);
    v6 = v48;
    if (v8 != v9)
    {
      v6 = v48 + 1;
      v42 = *(a1 + 10);
      goto LABEL_53;
    }

LABEL_46:
    v44 = *(a1 + 9);
    v43 = *(a1 + 10);
    if (v6 >= (v43 - v44) >> 3)
    {
      goto LABEL_55;
    }

    v45 = *(v44 + 8 * v6);
    if (v45)
    {
      (*(*v45 + 8))(v45);
      v44 = *(a1 + 9);
      v43 = *(a1 + 10);
    }

    if (v43 == v44 + 8 * v6)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      MoveExplicitAliases();
    }

    v46 = v44 + 8 * v6;
    v47 = v43 - (v46 + 8);
    if (v43 != v46 + 8)
    {
      memmove((v44 + 8 * v6), (v46 + 8), v43 - (v46 + 8));
    }

    v42 = v46 + v47;
    *(a1 + 10) = v46 + v47;
LABEL_53:
    v3 = *(a1 + 9);
  }

  while (v6 < (v42 - v3) >> 3);
}

void TransplantArrayItemAlias(XMP_Node *a1, unint64_t a2, XMP_Node *a3, XMPMeta::ErrorCallbackInfo *a4)
{
  v5 = *(a1 + 9);
  v4 = *(a1 + 10);
  if (a2 >= (v4 - v5) >> 3)
  {
    goto LABEL_13;
  }

  v8 = *(v5 + 8 * a2);
  v15 = v8;
  if ((*(a3 + 9) & 0x10) != 0)
  {
    v9 = *(v8 + 8);
    if ((v9 & 0x40) != 0)
    {
      v14[0] = 203;
      v14[1] = "Alias to x-default already has a language qualifier";
      v14[2] = 0;
      GenericErrorCallback::NotifyClient(a4, 1, v14, 0);
      v9 = *(v8 + 8);
    }

    *(v8 + 8) = v9 | 0x50;
    operator new();
  }

  if (v4 == v5 + 8 * a2)
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    v10 = v5 + 8 * a2;
    v11 = v4 - (v10 + 8);
    if (v4 != v10 + 8)
    {
      memmove(v10, (v10 + 8), v4 - (v10 + 8));
    }

    *(a1 + 10) = v10 + v11;
    MEMORY[0x186602520](v8 + 16, "[]");
    *(v8 + 64) = a3;
    v12 = (a3 + 72);
    v13 = *(a3 + 9);
    if (v13 == *(a3 + 10))
    {
      std::vector<IIO_Writer *>::push_back[abi:fe200100](v12, &v15);
    }

    else
    {
      std::vector<XMP_Node *>::insert(v12, v13, &v15);
    }
  }
}

uint64_t CompareAliasedSubtrees(XMP_Node *a1, XMP_Node *a2, XMPMeta::ErrorCallbackInfo *a3, char a4)
{
  v8 = *(a1 + 63);
  if (v8 >= 0)
  {
    v9 = *(a1 + 63);
  }

  else
  {
    v9 = *(a1 + 6);
  }

  v10 = *(a2 + 63);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 6);
  }

  if (v9 != v10 || (v8 >= 0 ? (v12 = a1 + 40) : (v12 = *(a1 + 5)), v11 >= 0 ? (v13 = a2 + 40) : (v13 = *(a2 + 5)), (result = memcmp(v12, v13, v9), result) || *(a1 + 10) - *(a1 + 9) != *(a2 + 10) - *(a2 + 9)))
  {
    v34 = "Mismatch between alias and base nodes";
    v35 = 0;
    v33 = 203;
    result = GenericErrorCallback::NotifyClient(a3, 1, &v33, 0);
  }

  if ((a4 & 1) == 0)
  {
    v15 = *(a1 + 39);
    if (v15 >= 0)
    {
      v16 = *(a1 + 39);
    }

    else
    {
      v16 = *(a1 + 3);
    }

    v17 = *(a2 + 39);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 3);
    }

    if (v16 != v17 || (v15 >= 0 ? (v19 = a1 + 16) : (v19 = *(a1 + 2)), v18 >= 0 ? (v20 = a2 + 16) : (v20 = *(a2 + 2)), (result = memcmp(v19, v20, v16), result) || *(a1 + 2) != *(a2 + 2) || *(a1 + 13) - *(a1 + 12) != *(a2 + 13) - *(a2 + 12)))
    {
      v34 = "Mismatch between alias and base nodes";
      v35 = 0;
      v33 = 203;
      result = GenericErrorCallback::NotifyClient(a3, 1, &v33, 0);
    }
  }

  v21 = *(a1 + 10) - *(a1 + 9);
  if (v21)
  {
    v22 = 0;
    v23 = v21 >> 3;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    do
    {
      v25 = *(a1 + 9);
      if (v22 >= (*(a1 + 10) - v25) >> 3)
      {
        goto LABEL_48;
      }

      v26 = *(a2 + 9);
      if (v22 >= (*(a2 + 10) - v26) >> 3)
      {
        goto LABEL_48;
      }

      result = CompareAliasedSubtrees(*(v25 + 8 * v22), *(v26 + 8 * v22), a3, 0);
    }

    while (v24 != ++v22);
  }

  v27 = *(a1 + 13) - *(a1 + 12);
  if (v27)
  {
    v28 = 0;
    v29 = v27 >> 3;
    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    while (1)
    {
      v31 = *(a1 + 12);
      if (v28 >= (*(a1 + 13) - v31) >> 3)
      {
        break;
      }

      v32 = *(a2 + 12);
      if (v28 >= (*(a2 + 13) - v32) >> 3)
      {
        break;
      }

      result = CompareAliasedSubtrees(*(v31 + 8 * v28), *(v32 + 8 * v28), a3, 0);
      if (v30 == ++v28)
      {
        return result;
      }
    }

LABEL_48:
    __break(1u);
  }

  return result;
}

uint64_t *PickBestRoot(const XML_Node *a1, unsigned int a2)
{
  v5 = *(a1 + 16);
  result = (a1 + 128);
  v4 = v5;
  v6 = result + 1;
  v7 = result[1];
  v8 = v7 - v5;
  if (v7 == v5)
  {
LABEL_30:
    if ((a2 & 1) == 0)
    {
      v20 = result;
      v19 = a2;
      goto LABEL_32;
    }

    v22 = (v7 - v4) >> 3;
  }

  else
  {
    do
    {
      v9 = 0;
      if ((v8 >> 3) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 >> 3;
      }

      while (1)
      {
        if ((v7 - v4) >> 3 == v9)
        {
          goto LABEL_62;
        }

        v11 = *(v4 + 8 * v9);
        if (*(v11 + 8) == 1)
        {
          break;
        }

LABEL_26:
        if (v10 == ++v9)
        {
          goto LABEL_30;
        }
      }

      v12 = (v11 + 40);
      v13 = *(v11 + 63);
      if ((v13 & 0x80000000) == 0)
      {
        if (v13 != 9)
        {
          goto LABEL_26;
        }

        if (*v12 == 0x74656D706D783A78 && *(v11 + 48) == 97)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      if (*(v11 + 48) != 9 || (**v12 == 0x74656D706D783A78 ? (v15 = *(*v12 + 8) == 97) : (v15 = 0), !v15))
      {
        if (*(v11 + 48) != 9)
        {
          goto LABEL_26;
        }

        v12 = *v12;
LABEL_22:
        v16 = *v12;
        v17 = v12[8];
        if (v16 == 0x74656D7061783A78 && v17 == 97)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

LABEL_28:
      a2 = 0;
      v19 = 0;
      v21 = *(v11 + 128);
      v20 = v11 + 128;
      v4 = v21;
      v6 = (v20 + 8);
      v7 = *(v20 + 8);
      result = v20;
      v8 = v7 - v21;
    }

    while (v7 != v21);
LABEL_32:
    v22 = (v7 - v4) >> 3;
    if (v7 != v4)
    {
      v23 = 0;
      if (v22 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = (v7 - v4) >> 3;
      }

      do
      {
        result = *(v4 + 8 * v23);
        if (*(result + 8) == 1)
        {
          v25 = (result + 5);
          v26 = *(result + 63);
          if (v26 < 0)
          {
            if (result[6] != 7)
            {
              goto LABEL_49;
            }

            v25 = *v25;
          }

          else if (v26 != 7)
          {
            goto LABEL_49;
          }

          v27 = bswap32(*v25);
          v28 = 1919182394;
          if (v27 == 1919182394 && (v27 = bswap32(*(v25 + 3)), v28 = 978469958, v27 == 978469958))
          {
            v29 = 0;
          }

          else if (v27 < v28)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            return result;
          }
        }

LABEL_49:
        ++v23;
      }

      while (v24 != v23);
    }

    result = v20;
    a2 = v19;
  }

  if (v7 == v4)
  {
    return 0;
  }

  v30 = 0;
  if (v22 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v22;
  }

  v32 = *result;
  v33 = (*v6 - *result) >> 3;
  while (v33 > v30)
  {
    result = PickBestRoot(*(v32 + 8 * v30), a2);
    if (result)
    {
      return result;
    }

    if (v31 == ++v30)
    {
      return 0;
    }
  }

LABEL_62:
  __break(1u);
  return result;
}

void XMPMeta::ProcessXMLBuffer()
{
  __assert_rtn("ProcessXMLBuffer", "XMPMeta-Parse.cpp", 1151, "! lastClientCall");
}

{
  __assert_rtn("ProcessXMLBuffer", "XMPMeta-Parse.cpp", 1170, "! lastClientCall");
}

void ProcessUTF8Portion()
{
  __assert_rtn("ProcessUTF8Portion", "XMPMeta-Parse.cpp", 1000, "*spanEnd == '&'");
}

{
  __assert_rtn("ProcessUTF8Portion", "XMPMeta-Parse.cpp", 1024, "spanEnd == bufEnd");
}

BOOL PSD_CheckFormat(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1347634208)
  {
    PSD_CheckFormat();
  }

  (*(*a3 + 16))(a3, 0, 0);
  v4 = (*(*a3 + 24))(a3);
  result = 0;
  if (v4 >= 34)
  {
    v6 = 0;
    (**a3)(a3, &v6, 4, 1);
    result = 0;
    if (v6 == 1397768760)
    {
      v7 = 0;
      (**a3)(a3, &v7, 2, 1);
      return ((bswap32(v7) >> 16) - 1) < 2u;
    }
  }

  return result;
}

void PSD_MetaHandler::PSD_MetaHandler(PSD_MetaHandler *this, XMPFiles *a2)
{
  XMPFileHandler::XMPFileHandler(this);
  *v3 = &unk_1EF4FD138;
  *(v3 + 8) = a2;
  *(v3 + 96) = 0;
  *(v3 + 104) = &unk_1EF50DFF0;
  *(v3 + 120) = 0;
  *(v3 + 152) = 0;
  *(v3 + 144) = 0;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = v3 + 144;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 16) = 8831;
  *(v3 + 20) = 0;
}

void PSD_MetaHandler::~PSD_MetaHandler(PSD_MetaHandler *this)
{
  *this = &unk_1EF4FD138;
  v2 = *(this + 23);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    (*(*v3 + 248))(v3);
  }

  PSIR_FileWriter::~PSIR_FileWriter((this + 104));

  XMPFileHandler::~XMPFileHandler(this);
}

{
  PSD_MetaHandler::~PSD_MetaHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t PSD_MetaHandler::CacheFileData(PSD_MetaHandler *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 21) == 1)
  {
    PSD_MetaHandler::CacheFileData();
  }

  v2 = *(this + 1);
  v3 = v2[29];
  v4 = v2[34];
  if (v4 && v4(v2[35]))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 12;
    exception[1] = "PSD_MetaHandler::CacheFileData - User abort";
    *(exception + 16) = 0;
  }

  v15 = 0;
  *v16 = 0;
  *&v16[14] = 0;
  *&v16[8] = 0;
  (*(*v3 + 16))(v3, 0, 0);
  result = (**v3)(v3, &v15, 30, 0);
  if (result == 30)
  {
    *(this + 25) = vrev64_s32(vrev32_s8(*&v16[6]));
    v6 = bswap32(*&v16[18]) + 30;
    if (v6 > (*(*v3 + 24))(v3))
    {
      v11 = __cxa_allocate_exception(0x18uLL);
      *v11 = 208;
      v11[1] = "Invalid PSD chunk length";
      *(v11 + 16) = 0;
    }

    result = (*(*v3 + 16))(v3, v6, 0);
    if (result == v6)
    {
      v7 = (*(*v3 + 24))(v3);
      result = (*(*v3 + 16))(v3, 0, 1);
      if (v7 - result >= 4)
      {
        LODWORD(v12) = 0;
        (**v3)(v3, &v12, 4, 1);
        v8 = bswap32(v12);
        PSIR_FileWriter::ParseFileResources(this + 13, v3, v8);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        result = PSIR_FileWriter::GetImgRsrc(this + 104, 0x424u, &v12);
        v9 = HIDWORD(v12);
        if (((v8 >= HIDWORD(v12)) & result) == 1)
        {
          *(this + 4) = v14;
          *(this + 10) = v9;
          *(this + 11) = 0;
          *(this + 24) = 257;
          result = MEMORY[0x186602530](this + 56, v13);
          *(this + 21) = 1;
        }
      }
    }
  }

  return result;
}

void PSD_MetaHandler::ProcessXMP(PSD_MetaHandler *this)
{
  *(this + 22) = 1;
  v1 = *(this + 1);
  if (v1)
  {
    if ((*(v1 + 240) & 2) == 0)
    {
      operator new();
    }
  }

  operator new();
}

void PSD_MetaHandler::UpdateFile(PSD_MetaHandler *this, int a2)
{
  if (a2)
  {
    PSD_MetaHandler::UpdateFile();
  }

  v3 = *(this + 10);
  if (*(this + 4) == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 4);
  }

  if (v3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  ExportPhotoData(1347634208, this + 80, *(this + 24), *(this + 23), this + 104);
  if (v4 != 0 && v5 != 0)
  {
    v6 = 576;
  }

  else
  {
    v6 = 64;
  }

  v7 = this + 56;
  TXMPMeta<std::string>::SerializeToBuffer(this + 80, this + 56, v6, v5);
  if (v4 != 0 && v5 != 0)
  {
    v8 = *(this + 79);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(this + 8);
    }

    v9 = v8 <= v5;
  }

  else
  {
    v9 = 0;
  }

  IsLegacyChanged = PSIR_FileWriter::IsLegacyChanged((this + 104));
  v11 = *(this + 1);
  if (!IsLegacyChanged && v9)
  {
    v12 = *(v11 + 288);
    LODWORD(v13) = *(this + 79);
    if ((v13 & 0x80000000) != 0)
    {
      v15 = *(this + 8);
      v14 = *(this + 10);
      if (v15 >= v14)
      {
        v18 = *(v11 + 232);
LABEL_30:
        v20 = *(this + 8);
        v19 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      v14 = *(this + 10);
      if (v14 <= v13)
      {
        v18 = *(v11 + 232);
        goto LABEL_28;
      }

      v15 = *(this + 79);
    }

    std::string::append((this + 56), v14 - v15, 32);
    LODWORD(v13) = *(this + 79);
    v18 = *(*(this + 1) + 232);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    v19 = 0;
    v20 = v13;
LABEL_31:
    if (v20 != v5)
    {
      PSD_MetaHandler::UpdateFile();
    }

    if (v12)
    {
      if (v19)
      {
        v13 = *(this + 8);
      }

      else
      {
        v13 = v13;
      }

      XMP_ProgressTracker::BeginWork(v12, v13);
    }

    (*(*v18 + 16))(v18, v4, 0);
    v21 = *(this + 79);
    if (v21 < 0)
    {
      v7 = *(this + 7);
      v21 = *(this + 8);
    }

    (*(*v18 + 8))(v18, v7, v21);
    if (v12)
    {
      XMP_ProgressTracker::WorkComplete(v12, v22, v23, v24);
    }

    goto LABEL_41;
  }

  v16 = *(v11 + 232);
  v17 = (*(*v16 + 40))(v16);
  if (*(this + 96) == 1)
  {
    __assert_rtn("UpdateFile", "PSD_Handler.cpp", 336, "! this->skipReconcile");
  }

  *(this + 96) = 1;
  (*(*this + 80))(this, v17);
  *(this + 96) = 0;
  (*(*v16 + 48))(v16);
LABEL_41:
  *(this + 23) = 0;
}

void sub_186170704(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 96) = 0;
  (*(*v2 + 56))(v2);
  __cxa_rethrow();
}

void PSD_MetaHandler::WriteTempFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4[29];
  v6 = v4[34];
  v7 = v4[35];
  v8 = v4[36];
  v9 = (*(*v5 + 24))(v5);
  if (v9)
  {
    v10 = v9;
    if ((*(a1 + 96) & 1) == 0)
    {
      ExportPhotoData(1246774599, a1 + 80, *(a1 + 192), *(a1 + 184), a1 + 104);
      TXMPMeta<std::string>::SerializeToBuffer(a1 + 80, a1 + 56, 64, 0);
    }

    v11 = (a1 + 56);
    TXMPMeta<std::string>::SerializeToBuffer(a1 + 80, a1 + 56, 64, 0);
    *(a1 + 32) = -1;
    v12 = *(a1 + 79);
    if (v12 < 0)
    {
      v12 = *(a1 + 64);
    }

    *(a1 + 40) = v12;
    FillPacketInfo((a1 + 56), a1 + 32);
    v13 = *(a1 + 79);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v11 = *(a1 + 56);
      v13 = *(a1 + 64);
    }

    PSIR_FileWriter::SetImgRsrc((a1 + 104), 0x424u, v11, v13);
    (*(*v5 + 16))(v5, 26, 0);
    v21 = 0;
    (**v5)(v5, &v21, 4, 0);
    v14 = bswap32(v21);
    (*(*v5 + 16))(v5, v14, 1);
    v20 = 0;
    (**v5)(v5, &v20, 4, 0);
    v20 = bswap32(v20);
    v15 = v14 + v20 + 34;
    v16 = v10 - v15;
    if (v8)
    {
      XMP_ProgressTracker::BeginWork(v8, (v14 + 30.0) + v16);
    }

    (*(*v5 + 16))(v5, 0, 0);
    (*(*a2 + 32))(a2, 0);
    XIO::Copy(v5, a2);
    (*(*v5 + 16))(v5, 4, 1);
    (*(*a2 + 8))(a2, &v21, 4);
    XIO::Copy(v5, a2);
    PSIR_FileWriter::UpdateFileResources(a1 + 104, v5, a2, v6, v7, v8);
    (*(*v5 + 16))(v5, v15, 0);
    (*(*a2 + 16))(a2, 0, 2);
    XIO::Copy(v5, a2);
    *(a1 + 23) = 0;
    if (v8)
    {
      XMP_ProgressTracker::WorkComplete(v8, v17, v18, v19);
    }
  }
}

void PSD_MetaHandler::UpdateFile()
{
  __assert_rtn("UpdateFile", "PSD_Handler.cpp", 319, "this->xmpPacket.size() == (size_t)oldPacketLength");
}

{
  __assert_rtn("UpdateFile", "PSD_Handler.cpp", 273, "! doSafeUpdate");
}

uint64_t AdobeXMPCore_Int::IErrorNotifier_I::GetErrorNotifier(AdobeXMPCore_Int::IErrorNotifier_I *this)
{
  if (AdobeXMPCore_Int::sErrorNotifier(void)::onceToken != -1)
  {
    AdobeXMPCore_Int::IErrorNotifier_I::GetErrorNotifier();
  }

  return *AdobeXMPCore_Int::gErrorNotifier;
}

uint64_t AdobeXMPCore_Int::IErrorNotifier_I::SetErrorNotifier(uint64_t a1)
{
  if (AdobeXMPCore_Int::sErrorNotifier(void)::onceToken != -1)
  {
    AdobeXMPCore_Int::IErrorNotifier_I::GetErrorNotifier();
  }

  v2 = *AdobeXMPCore_Int::gErrorNotifier;
  if (a1)
  {
    *AdobeXMPCore_Int::gErrorNotifier = a1;
  }

  else
  {
    if (AdobeXMPCore_Int::sDefaultErrorNotifier(void)::onceToken != -1)
    {
      AdobeXMPCore_Int::IErrorNotifier_I::SetErrorNotifier();
    }

    v3 = AdobeXMPCore_Int::gDefaultErrorNotifier;
    if (AdobeXMPCore_Int::gDefaultErrorNotifier)
    {
      v3 = AdobeXMPCore_Int::gDefaultErrorNotifier + *(*AdobeXMPCore_Int::gDefaultErrorNotifier - 48);
    }

    *AdobeXMPCore_Int::gErrorNotifier = v3;
  }

  return v2;
}

uint64_t AdobeXMPCommon::IErrorNotifier_v1::notify(AdobeXMPCommon::IErrorNotifier_v1 *this, const AdobeXMPCommon::IError_v1 *a2, unsigned int *a3)
{
  *a3 = 0;
  AdobeXMPCommon::IError_v1::MakeShared(a2, &v7);
  v6 = v7;
  v4 = (**this)(this, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v6 + 1));
  }

  return v4;
}

void sub_186170E64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_begin_catch(a1);
  *v10 = 1;
  __cxa_end_catch();
  JUMPOUT(0x186170E50);
}

unsigned __int8 *FillPacketInfo(unsigned __int8 *result, uint64_t a2)
{
  v2 = result[23];
  if (v2 >= 0)
  {
    v3 = result;
  }

  else
  {
    v3 = *result;
  }

  if (v2 >= 0)
  {
    v4 = result[23];
  }

  else
  {
    v4 = *(result + 2);
  }

  if (!v4)
  {
    return result;
  }

  v6 = v4 - 1;
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  v8 = *v3;
  if (v4 <= 3)
  {
    if (!*v3)
    {
      goto LABEL_21;
    }

    if (v3[1])
    {
      if (*v3 != -2)
      {
        if (*v3 == -257)
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_31;
      }

LABEL_21:
      v7 = 2;
      goto LABEL_31;
    }

LABEL_30:
    v7 = 3;
    goto LABEL_31;
  }

  v9 = v3[1];
  if (v8 == 255)
  {
    if (v9 != 254)
    {
      goto LABEL_26;
    }

LABEL_28:
    if (!v3[2] && !v3[3])
    {
      v7 = 5;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v8 == 254)
  {
    if (v9 == 255)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_31;
  }

  if (*v3)
  {
    if (v3[1])
    {
LABEL_9:
      v7 = 0;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v3[1])
  {
    goto LABEL_21;
  }

  if (v3[2] != 254)
  {
    if (!v3[2])
    {
      if (v3[3])
      {
        v7 = 4;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_31;
    }

LABEL_26:
    v7 = 1;
    goto LABEL_31;
  }

  if (v3[3] == 255)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

LABEL_31:
  v10 = 0;
  *(a2 + 16) = v7;
  v11 = v7 & 6;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  while (1)
  {
    v13 = v10;
    v14 = v6 + v10;
    if (!(v6 + v10))
    {
      break;
    }

    --v10;
    if (v3[v14] == 60)
    {
      result = &v3[v14];
      goto LABEL_38;
    }
  }

  result = v3;
  if (*v3 != 60)
  {
    return result;
  }

LABEL_38:
  if (1 - v13 >= 18 * v12)
  {
    result = memcmp(result, kPacketTrailiers[v12 >> 1], 13 * v12);
    if (!result)
    {
      *(a2 + 18) = 1;
      if (v3[16 * v12 - 1 + v4 - v12 + v13] == 119)
      {
        *(a2 + 17) = 1;
      }

      if (v4 + v13 - 1 >= v12)
      {
        v15 = 0;
        while (v3[v6 + v13 + v15] != 62)
        {
          v16 = v6 - v12 + v13 + v15;
          v15 -= v12;
          if (v16 < v12)
          {
            return result;
          }
        }

        *(a2 + 12) = -(v12 + v15);
      }
    }
  }

  return result;
}

uint64_t XMPFileHandler::GetFileModDate(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v6 = "Base implementation of GetFileModDate only for typical embedding handlers";
    goto LABEL_12;
  }

  v2 = *(a1 + 8);
  v3 = (v2 + 368);
  if (*(v2 + 391) < 0)
  {
    if (!*(v2 + 376))
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v6 = "GetFileModDate cannot be used with client-provided I/O";
LABEL_12:
      exception[1] = v6;
      *(exception + 16) = 0;
    }

    v3 = *v3;
  }

  else if (!*(v2 + 391))
  {
    goto LABEL_11;
  }

  return Host_IO::GetModifyDate(v3, a2);
}

void XMPFileHandler::FillMetadataFiles(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v6 = "Base implementation of FillMetadataFiles only for typical embedding handlers";
    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 368);
  if (*(v3 + 391) < 0)
  {
    if (!*(v3 + 376))
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v6 = "FillMetadataFiles cannot be used with client-provided I/O";
LABEL_12:
      exception[1] = v6;
      *(exception + 16) = 0;
    }

    v4 = *v4;
  }

  else if (!*(v3 + 391))
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v4);
  std::vector<std::string>::push_back[abi:fe200100](a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186171230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void XMPFileHandler::FillAssociatedResources(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v6 = "GetAssociatedResources is not implemented for this file format";
    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 368);
  if (*(v3 + 391) < 0)
  {
    if (!*(v3 + 376))
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v6 = "GetAssociatedResources cannot be used with client-provided I/O";
LABEL_12:
      exception[1] = v6;
      *(exception + 16) = 0;
    }

    v4 = *v4;
  }

  else if (!*(v3 + 391))
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v4);
  std::vector<std::string>::push_back[abi:fe200100](a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186171448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPFileHandler::IsMetadataWritable(XMPFileHandler *this)
{
  if ((*(this + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v5 = "IsMetadataWritable is not implemented for this file format";
    goto LABEL_10;
  }

  v1 = *(this + 1);
  v2 = (v1 + 368);
  if (*(v1 + 391) < 0)
  {
    if (!*(v1 + 376))
    {
LABEL_9:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v5 = "IsMetadataWritable cannot be used with client-provided I/O";
LABEL_10:
      exception[1] = v5;
      *(exception + 16) = 0;
    }

    v2 = *v2;
  }

  else if (!*(v1 + 391))
  {
    goto LABEL_9;
  }

  return Host_IO::Writable(v2, 0);
}

void sub_186171500(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1861714ACLL);
}

void XMPFileHandler::ProcessXMP(XMPFileHandler *this)
{
  if (*(this + 21) == 1 && (*(this + 22) & 1) == 0)
  {
    if ((*(this + 16) & 0x10) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      exception[1] = "Reconciling file handlers must implement ProcessXMP";
      *(exception + 16) = 0;
    }

    TXMPUtils<std::string>::RemoveProperties(this + 80, 0, 0, 1);
    v2 = *(this + 79);
    if (v2 < 0)
    {
      v3 = *(this + 7);
      v2 = *(this + 8);
    }

    else
    {
      v3 = this + 56;
    }

    TXMPMeta<std::string>::ParseFromBuffer(this + 80, v3, v2, 0);
    *(this + 22) = 1;
  }
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::ClientDOMParserWrapperImpl(void *a1)
{
  v2 = (a1 + 2);
  *a1 = off_1EF4FE838;
  a1[6] = &off_1EF4FE980;
  a1[2] = &off_1EF4FE160;
  a1[13] = &unk_1EF4FE558;
  *(a1 + unk_1EF4FE078 + 16) = off_1EF4FE2B8;
  *(a1 + *(a1[2] - 312) + 16) = &off_1EF4FE400;
  *(a1 + *(a1[2] - 320) + 16) = &unk_1EF4FE558;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl((a1 + 6), off_1EF4FD9F0);
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = off_1EF4FF0C8;
  AdobeXMPCore_Int::DOMParserImpl::DOMParserImpl(v2, off_1EF4FD928);
}

void sub_186171A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl(v18, off_1EF4FD928);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v16, off_1EF4FDA08);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v17, off_1EF4FD9F0);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::ParseAsNode(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = 0;
  v8 = 0;
  v5 = (*(**(this + 1) + 56))(*(this + 1), a2, a3, this + *(*this - 72), AdobeXMPCore_Int::ReportErrorAndContinueABISafe, &v9, &v8);
  if (!v9)
  {
    if (!v8)
    {
      (**&v5[*(*v5 - 56)])(&v5[*(*v5 - 56)]);
      std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a4, v5);
    }

    v10 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  AdobeXMPCommon::IError_v1::MakeShared(v9, &v10);
  v7 = v10;
  (*(*(v9 + *(*v9 - 56)) + 8))(v9 + *(*v9 - 56));
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = v7;
}

void sub_186171DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 48)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  *(this + *(*this - 72)) = a2[4];
  *(this + *(*this - 80)) = a2[5];
  *(this + *(*this - 88)) = a2[6];
  *(this + *(*this - 96)) = a2[7];
  *(this + *(*this - 104)) = a2[8];
  *(this + *(*this - 112)) = a2[9];
  *(this + *(*this - 120)) = a2[10];
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 32))(v4);
    *(this + 1) = 0;
  }
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this)
{
  AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl((v2 + 16), off_1EF4FD928);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 104), off_1EF4FDA08);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 48), off_1EF4FD9F0);
}

{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(void *a1)
{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this)
{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::ClientDOMParserWrapperImpl::ValidateValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(**(a1 + 8) + 80))(*(a1 + 8), a2, a3, a4, &v8, &v7);
  if (v8)
  {
    AdobeXMPCommon::IError_v1::MakeShared(v8, &v9);
    v6 = v9;
    (*(*(v8 + *(*v8 - 56)) + 8))(v8 + *(*v8 - 56));
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = v6;
  }

  if (v7)
  {
    v9 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_186172560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL ReconcileUtils::IsASCII(ReconcileUtils *this, char *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - 1;
  do
  {
    v4 = *this;
    this = (this + 1);
    v3 = v4;
    v5 = v4 >= 0;
    v7 = v2-- != 0;
  }

  while ((v3 & 0x80000000) == 0 && v7);
  return v5;
}

uint64_t ReconcileUtils::IsUTF8(ReconcileUtils *this, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = (this + a2);
    do
    {
      v3 = *this;
      if (v3 < 0)
      {
        v5 = 0;
        v6 = -5;
        v4 = this;
        do
        {
          v7 = v5;
          v4 = (v4 + 1);
          LOBYTE(v3) = 2 * v3;
          ++v6;
          --v5;
        }

        while ((v3 & 0x80) != 0);
        v8 = 0;
        if (v6 < 0xFFFFFFFFFFFFFFFDLL || v4 > v2)
        {
          return v8;
        }

        v9 = this + 1;
        while (v7)
        {
          v10 = *v9++;
          ++v7;
          if ((v10 & 0xC0) != 0x80)
          {
            return 0;
          }
        }
      }

      else
      {
        v4 = (this + 1);
      }

      this = v4;
    }

    while (v4 < v2);
  }

  return 1;
}

void ReconcileUtils::UTF8ToLocal(const UInt8 *a1, CFIndex a2, std::string *this)
{
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (!a2)
  {
LABEL_5:

    JUMPOUT(0x186602530);
  }

  v6 = 0;
  while ((a1[v6] & 0x80000000) == 0)
  {
    if (a2 == ++v6)
    {
      goto LABEL_5;
    }
  }

  SystemEncoding = CFStringGetSystemEncoding();

  ReconcileUtils::IOSConvertEncoding(0x8000100u, SystemEncoding, a1, a2, this);
}

void ReconcileUtils::IOSConvertEncoding(CFStringEncoding a1, CFStringEncoding a2, const UInt8 *a3, CFIndex a4, std::string *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 != -1 && a2 != -1)
  {
    if (CFStringIsEncodingAvailable(a1))
    {
      if (CFStringIsEncodingAvailable(a2))
      {
        v10 = CFStringCreateWithBytesNoCopy(0, a3, a4, a1, 0, *MEMORY[0x1E695E498]);
        if (v10)
        {
          v11 = v10;
          Length = CFStringGetLength(v10);
          if (Length >= 1)
          {
            v13 = Length;
            v14 = 0;
            do
            {
              bzero(buffer, 0x3E8uLL);
              __n = 0;
              v21.location = v14;
              v21.length = v13;
              Bytes = CFStringGetBytes(v11, v21, a2, 0, 0, buffer, 1000, &__n);
              if (!Bytes)
              {
                break;
              }

              v16 = Bytes;
              std::string::append(a5, buffer, __n);
              v14 += v16;
              v17 = v13 <= v16;
              v13 -= v16;
            }

            while (!v17);
          }

          CFRelease(v11);
        }
      }
    }
  }
}

void ReconcileUtils::LocalToUTF8(const UInt8 *a1, CFIndex a2, std::string *this)
{
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (!a2)
  {
LABEL_5:

    JUMPOUT(0x186602530);
  }

  v6 = 0;
  while ((a1[v6] & 0x80000000) == 0)
  {
    if (a2 == ++v6)
    {
      goto LABEL_5;
    }
  }

  SystemEncoding = CFStringGetSystemEncoding();

  ReconcileUtils::IOSConvertEncoding(SystemEncoding, 0x8000100u, a1, a2, this);
}

uint64_t XMLParserAdapter::NotifyClient(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = *(a1 + 232);
  if (result)
  {
    return GenericErrorCallback::NotifyClient(result, a2, a3, 0);
  }

  return result;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = 0;
  v10 = 0;
  v11 = 0;
  a1(&v10, a5, a6, a7);
  v7 = (*(*&v10[*(*v10 - 56)] + 16))(&v10[*(*v10 - 56)]);
  (*(*v7 + 40))(v7);
  v8 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

char *AdobeXMPCore_Int::CoreObjectFactoryImpl::CreateArrayNode(AdobeXMPCore_Int::CoreObjectFactoryImpl *this, int a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, const AdobeXMPCommon::IError_v1 **a7)
{
  switch(a2)
  {
    case 1:
      v9 = AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode;
      v10 = a7;
      v11 = 50;
      return AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(v9, v10, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", v11, a3, a4, a5, a6);
    case 4:
      v9 = AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode;
      v10 = a7;
      v11 = 55;
      return AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(v9, v10, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", v11, a3, a4, a5, a6);
    case 2:
      v9 = AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode;
      v10 = a7;
      v11 = 45;
      return AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(v9, v10, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", v11, a3, a4, a5, a6);
  }

  return 0;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v11 = 0;
  v12 = 0;
  a1(&v11, a5, a6, a7, a8);
  v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
  (*(*v8 + 40))(v8);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IMetadata_v1,AdobeXMPCore::IMetadata_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCore::INameSpacePrefixMap_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v11 = 0;
  v12 = 0;
  a1(&v11, a5, a6, a7, a8);
  v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
  (*(*v8 + 40))(v8);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a2 = 0;
  v13 = 0;
  v14 = 0;
  a1(&v13, a5, a6, a7, a8, a9, a10);
  v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
  (*(*v10 + 40))(v10);
  v11 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::ISimpleNode_v1,AdobeXMPCore::ISimpleNode_v1*,char const*,unsigned long long,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a2 = 0;
  v13 = 0;
  v14 = 0;
  a1(&v13, a5, a6, a7, a8, a9, a10);
  v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
  (*(*v10 + 40))(v10);
  v11 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::IStructureNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v11 = 0;
  v12 = 0;
  a1(&v11, a5, a6, a7, a8);
  v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
  (*(*v8 + 40))(v8);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::ICoreConfigurationManager_v1,AdobeXMPCore::ICoreConfigurationManager_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IDOMImplementationRegistry_v1,AdobeXMPCore::IDOMImplementationRegistry_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1 const,AdobeXMPCore::INameSpacePrefixMap_v1 const*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::CoreObjectFactoryImpl::ParsePath(AdobeXMPCore_Int::CoreObjectFactoryImpl *this, AdobeXMPCore::INameSpacePrefixMap_v1 *a2, uint64_t a3, const AdobeXMPCore::INameSpacePrefixMap_v1 *a4, const AdobeXMPCommon::IError_v1 **a5)
{
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(a4, a2, &v11);
  v10 = v11;
  v8 = AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*,char const*,unsigned long long,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(AdobeXMPCore::IPath_v1::ParsePath, a5, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", 122, a2, a3, &v10);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v10 + 1));
  }

  return v8;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*,char const*,unsigned long long,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = 0;
  v10 = 0;
  v11 = 0;
  a1(&v10, a5, a6, a7);
  v7 = (*(*&v10[*(*v10 - 56)] + 16))(&v10[*(*v10 - 56)]);
  (*(*v7 + 40))(v7);
  v8 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

uint64_t AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore_Int::IError_I,AdobeXMPCommon::IError_v1 *,AdobeXMPCommon::IError_v1::eErrorDomain,unsigned int,AdobeXMPCommon::IError_v1::eErrorSeverity>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = 0;
  v10 = 0;
  v11 = 0;
  a1(&v10, a5, a6, a7);
  v7 = (*(*v10 + 16))(v10);
  (*(*v7 + 40))(v7);
  if (v10)
  {
    v8 = v10 + *(*v10 - 304);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = 0;
  v9 = 0;
  v10 = 0;
  a1(&v9, a5, a6);
  v6 = (*(*&v9[*(*v9 - 56)] + 16))(&v9[*(*v9 - 56)]);
  (*(*v6 + 40))(v6);
  v7 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  return v7;
}

void AdobeXMPCore_Int::CoreObjectFactoryImpl::ConvertXMPMetatoIMetadata(int a1, AdobeXMPCore_Int::IMetadataConverterUtils_I *this, void *a3)
{
  *a3 = 0;
  v3[0] = 0;
  v3[1] = 0;
  AdobeXMPCore_Int::IMetadataConverterUtils_I::convertXMPMetatoIMetadata(this, v3);
}

void AdobeXMPCore_Int::CoreObjectFactoryImpl::ConvertIMetadatatoXMPMeta(AdobeXMPCore_Int::CoreObjectFactoryImpl *this, AdobeXMPCore::IMetadata_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v3[0] = 0;
  v3[1] = 0;
  AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(a2, v3);
}

void AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,unsigned long long>(void *a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(v1);
  OUTLINED_FUNCTION_2_18();
  v6 = (*(v5 + 200))(v4);
  v7 = OUTLINED_FUNCTION_1_21(v6);
  v9 = OUTLINED_FUNCTION_0_37(v7, *(v8 - 56));
  (*(v10 + 16))(v9);
  OUTLINED_FUNCTION_0_0();
  (*(v11 + 40))();
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCommon::IConfigurationManager_v1,unsigned int,BOOL,AdobeXMPCommon::IErrorNotifier_v1 *>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return a4(v8, a8);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCommon::IConfigurationManager_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IConfigurationManager_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

void *AdobeXMPCore_Int::IConfigurationManager_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6E436F6E664D6772)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E436F6E664D6772, a3, exception);
      }

      return (this + *(*this - 128));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6E436F6E664D6772, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IConfigurationManager_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void XMPMeta::SerializeToBuffer(uint64_t a1, std::string *this, unsigned int a3, unsigned int a4, const char *a5, char *a6, int a7)
{
  v180 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v19 = "XMP_Enforce failed: (rdfString != 0) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta-Serialize.cpp at line 1212";
    goto LABEL_378;
  }

  if (!a5 || (v8 = a6) == 0)
  {
    XMPMeta::SerializeToBuffer();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if ((a3 & 7) != 0)
  {
    if ((a3 & 2) != 0)
    {
      if ((a3 & 4) != 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Can't use both _XMP_UTF16_Bit and _XMP_UTF32_Bit";
        goto LABEL_378;
      }

      v14 = 2;
    }

    else
    {
      if ((a3 & 4) == 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Can't use _XMP_LittleEndian_Bit by itself";
        goto LABEL_378;
      }

      v14 = 4;
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = " ";
  if ((a3 & 0x800) != 0)
  {
    v8 = "";
  }

  else
  {
    if (*a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "\n";
    }

    v17 = "   ";
    if ((a3 & 0x40) != 0)
    {
      v17 = " ";
    }

    if (!*v8)
    {
      v8 = v17;
    }

    v15 = v16;
  }

  v164 = a3 & 7;
  if ((a3 & 0x200) == 0)
  {
    if ((a3 & 0x20) != 0)
    {
      if ((a3 & 0x110) != 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Inconsistent options for read-only packet";
        goto LABEL_378;
      }
    }

    else if ((a3 & 0x10) != 0)
    {
      if ((a3 & 0x100) != 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Inconsistent options for non-packet serialize";
        goto LABEL_378;
      }
    }

    else
    {
      if ((a3 & 0x1000) == 0)
      {
        if (a4)
        {
          if (a4 >> 28)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 103;
            v19 = "Outrageously large padding size";
LABEL_378:
            exception[1] = v19;
            *(exception + 16) = 0;
          }

          if ((a3 & 0x100) == 0)
          {
            goto LABEL_372;
          }
        }

        else
        {
          a4 = v14 << 11;
          if ((a3 & 0x100) == 0)
          {
LABEL_372:
            v163 = a4;
            goto LABEL_38;
          }
        }

        if (((*(*a1 + 112))(a1, "http://ns.adobe.com/xap/1.0/", "Thumbnails") & 1) == 0)
        {
          a4 += 10000 * v14;
        }

        goto LABEL_372;
      }

      if ((a3 & 0x2000) != 0)
      {
LABEL_383:
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Inconsistent options for x:xmpmeta serialize";
        goto LABEL_378;
      }
    }

    v163 = 0;
    goto LABEL_38;
  }

  if ((a3 & 0x110) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v19 = "Inconsistent options for exact size serialize";
    goto LABEL_378;
  }

  v163 = a4;
  if (((v14 - 1) & a4) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v19 = "Exact size must be a multiple of the Unicode element";
    goto LABEL_378;
  }

LABEL_38:
  v167 = a3;
  v166 = v15;
  memset(&v168, 0, sizeof(v168));
  v20 = strlen(v8);
  v21 = 6 * a7 * v20 + 326;
  v22 = *(a1 + 296);
  v23 = *(a1 + 304) - v22;
  if (v23)
  {
    v24 = v20;
    v25 = v23 >> 3;
    v26 = *(a1 + 263);
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(a1 + 248);
    }

    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = v26 + 2 * (a7 + 2) * v20 + 47;
    do
    {
      v29 = *v22++;
      v21 += v28 + EstimateRDFSize(v29, a7 + 2, v24);
      --v27;
    }

    while (v27);
  }

  memset(&v173, 0, sizeof(v173));
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  v30 = v167;
  std::string::reserve(&v173, v21 + (v21 >> 2));
  std::string::append(&v173, "<rdf:RDF xmlns:rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#>");
  std::string::append(&v173, v166);
  if ((v167 & 0x40) != 0)
  {
    StartOuterRDFDescription(a1 + 224, &v173, v166, v8, a7);
    v43 = *(a1 + 304) - *(a1 + 296);
    if (!v43)
    {
      goto LABEL_69;
    }

    v44 = 0;
    v45 = v43 >> 3;
    v46 = 1;
    do
    {
      v47 = *(a1 + 296);
      if (v44 >= (*(a1 + 304) - v47) >> 3)
      {
        goto LABEL_382;
      }

      SerializeCompactRDFAttrProps(*(v47 + 8 * v44), &v173, v166, v8, a7 + 3);
      v46 &= v48;
      ++v44;
    }

    while (v45 != v44);
    if ((v46 & 1) == 0)
    {
      std::string::append(&v173, ">");
      std::string::append(&v173, v166);
      v49 = *(a1 + 304) - *(a1 + 296);
      if (v49)
      {
        v50 = 0;
        v51 = v49 >> 3;
        do
        {
          v52 = *(a1 + 296);
          if (v50 >= (*(a1 + 304) - v52) >> 3)
          {
            goto LABEL_382;
          }

          SerializeCompactRDFElemProps(*(v52 + 8 * v50++), &v173, v166, v8, a7 + 3);
        }

        while (v51 != v50);
      }

      if (a7 < -1)
      {
        v42 = "</rdf:Description>";
        v30 = v167;
      }

      else
      {
        v53 = a7 + 3;
        v42 = "</rdf:Description>";
        v30 = v167;
        do
        {
          std::string::append(&v173, v8);
          --v53;
        }

        while (v53 > 1);
      }
    }

    else
    {
LABEL_69:
      v42 = "/>";
    }
  }

  else
  {
    StartOuterRDFDescription(a1 + 224, &v173, v166, v8, a7);
    if (*(a1 + 304) == *(a1 + 296))
    {
      v42 = "/>";
    }

    else
    {
      std::string::append(&v173, ">");
      std::string::append(&v173, v166);
      v31 = *(a1 + 304) - *(a1 + 296);
      if (v31)
      {
        v32 = 0;
        v33 = v31 >> 3;
        if (v33 <= 1)
        {
          v33 = 1;
        }

        v165 = v33;
        while (1)
        {
          v34 = *(a1 + 296);
          if (v32 >= (*(a1 + 304) - v34) >> 3)
          {
            goto LABEL_382;
          }

          v35 = *(v34 + 8 * v32);
          v36 = *(v35 + 80) - *(v35 + 72);
          if (v36)
          {
            break;
          }

LABEL_59:
          ++v32;
          v30 = v167;
          if (v32 == v165)
          {
            goto LABEL_60;
          }
        }

        v37 = 0;
        v38 = v36 >> 3;
        if (v38 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        while (1)
        {
          v40 = *(v35 + 72);
          if (v37 >= (*(v35 + 80) - v40) >> 3)
          {
            goto LABEL_382;
          }

          SerializeCanonicalRDFProperty(*(v40 + 8 * v37++), &v173, v166, v8, (a7 + 3), (v167 >> 7) & 1, 0);
          if (v39 == v37)
          {
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      if (a7 < -1)
      {
        v42 = "</rdf:Description>";
      }

      else
      {
        v41 = a7 + 3;
        v42 = "</rdf:Description>";
        do
        {
          std::string::append(&v173, v8);
          --v41;
        }

        while (v41 > 1);
      }
    }
  }

  std::string::append(&v173, v42);
  std::string::append(&v173, v166);
  if ((a7 & 0x80000000) == 0)
  {
    v54 = a7 + 2;
    do
    {
      std::string::append(&v173, v8);
      --v54;
    }

    while (v54 > 1);
  }

  std::string::append(&v173, "</rdf:RDF>");
  v55 = a7 + 1;
  if ((v30 & 0x10) == 0)
  {
    if (a7 >= 1)
    {
      v56 = a7 + 1;
      do
      {
        std::string::append(this, v8);
        --v56;
      }

      while (v56 > 1);
    }

    std::string::append(this, "<?xpacket begin=﻿ id=W5M0MpCehiHzreSzNTczkc9d?>");
    std::string::append(this, v166);
  }

  if ((v30 & 0x1000) != 0)
  {
    goto LABEL_122;
  }

  if (a7 >= 1)
  {
    v57 = a7 + 1;
    do
    {
      std::string::append(this, v8);
      --v57;
    }

    while (v57 > 1);
  }

  std::string::append(this, "<x:xmpmeta xmlns:x=adobe:ns:meta/ x:xmptk=");
  std::string::append(this, "XMP Core 6.0.0");
  memset(&v172, 0, sizeof(v172));
  *v178 = 0;
  v179 = 0;
  if ((v30 & 0x2000) != 0)
  {
    memset(&v177, 0, sizeof(v177));
    MD5Init(&v177);
    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v173;
    }

    else
    {
      v58 = v173.__r_.__value_.__r.__words[0];
    }

    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v173.__r_.__value_.__r.__words[1];
    }

    MD5Update(&v177, v58, v59);
    MD5Final(v178, &v177);
    v60 = 0;
    v176 = 0;
    *__s = 0u;
    v175 = 0u;
    v61 = v178;
    do
    {
      v62 = *v61++;
      v63 = &__s[v60];
      *v63 = a0123456789abcd[v62 >> 4];
      v63[1] = a0123456789abcd[v62 & 0xF];
      v60 += 2;
    }

    while (v60 != 32);
    LOBYTE(v176) = 0;
    std::string::append(&v172, __s);
    std::string::append(this, " rdfhash=");
    if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v172.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v172.__r_.__value_.__l.__size_;
    }

    v170 = 0;
    v171 = 0;
    __p = 0;
    std::string::basic_string[abi:fe200100](&__p, size + 1);
    if (v171 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (size)
    {
      if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v172;
      }

      else
      {
        v66 = v172.__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v66, size);
    }

    *&p_p[size] = 34;
    if (v171 >= 0)
    {
      v67 = &__p;
    }

    else
    {
      v67 = __p;
    }

    if (v171 >= 0)
    {
      v68 = HIBYTE(v171);
    }

    else
    {
      v68 = v170;
    }

    std::string::append(this, v67, v68);
    if (SHIBYTE(v171) < 0)
    {
      operator delete(__p);
    }

    std::string::append(this, " merged=0");
  }

  std::string::append(this, ">");
  std::string::append(this, v166);
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
    if ((a7 & 0x80000000) == 0)
    {
LABEL_123:
      v69 = a7 + 2;
      do
      {
        std::string::append(this, v8);
        --v69;
      }

      while (v69 > 1);
    }
  }

  else
  {
LABEL_122:
    if ((a7 & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v173;
  }

  else
  {
    v70 = v173.__r_.__value_.__r.__words[0];
  }

  if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v173.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v70, v71);
  std::string::append(this, v166);
  if ((v30 & 0x1000) == 0)
  {
    if (a7 >= 1)
    {
      v72 = a7 + 1;
      do
      {
        std::string::append(this, v8);
        --v72;
      }

      while (v72 > 1);
    }

    std::string::append(this, "</x:xmpmeta>");
    std::string::append(this, v166);
  }

  std::string::erase(&v168, 0, 0xFFFFFFFFFFFFFFFFLL);
  if ((v30 & 0x10) == 0)
  {
    v73 = strlen(v8);
    std::string::reserve(&v168, v73 * a7 + 19);
    if (a7 >= 1)
    {
      do
      {
        std::string::append(&v168, v8);
        --v55;
      }

      while (v55 > 1);
    }

    std::string::append(&v168, "<?xpacket end=w?>");
    if ((v30 & 0x20) != 0)
    {
      v74 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v74 = v168.__r_.__value_.__l.__size_;
      }

      if (v74 <= 3)
      {
        goto LABEL_382;
      }

      v75 = &v168;
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v168.__r_.__value_.__r.__words[0];
      }

      v75->__r_.__value_.__s.__data_[v74 - 4] = 114;
    }
  }

  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  v76 = v163;
  if (v164)
  {
    memset(&v177, 0, 24);
    memset(__s, 0, sizeof(__s));
    *&v175 = 0;
    if ((v30 & 2) != 0)
    {
      memset(&v173, 0, sizeof(v173));
      std::string::basic_string[abi:fe200100]<0>(&v173, "  ");
      if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = &v173;
      }

      else
      {
        v82 = v173.__r_.__value_.__r.__words[0];
      }

      v82->__r_.__value_.__s.__data_[0] = 0;
      v83 = *v177.count;
      v84 = *v177.state;
      *v177.state = *&this->__r_.__value_.__l.__data_;
      *v177.count = *(&this->__r_.__value_.__l + 2);
      v85 = *v177.count;
      *&this->__r_.__value_.__l.__data_ = v84;
      this->__r_.__value_.__r.__words[2] = v83;
      if (v85 >= 0)
      {
        v86 = &v177;
      }

      else
      {
        v86 = *v177.state;
      }

      if (v85 >= 0)
      {
        v87 = HIBYTE(v85);
      }

      else
      {
        v87 = *&v177.state[2];
      }

      ToUTF16(v86, v87);
      v88 = *v177.count;
      v89 = *v177.state;
      *v177.state = *&v168.__r_.__value_.__l.__data_;
      v90 = v168.__r_.__value_.__r.__words[2];
      *v177.count = *(&v168.__r_.__value_.__l + 2);
      *&v168.__r_.__value_.__l.__data_ = v89;
      v168.__r_.__value_.__r.__words[2] = v88;
      if (v90 >= 0)
      {
        v91 = &v177;
      }

      else
      {
        v91 = *v177.state;
      }

      if (v90 >= 0)
      {
        v92 = HIBYTE(v90);
      }

      else
      {
        v92 = *&v177.state[2];
      }

      ToUTF16(v91, v92);
      if ((v30 & 0x200) != 0)
      {
        v93 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v93 & 0x8000000000000000) != 0)
        {
          v93 = this->__r_.__value_.__l.__size_;
        }

        v94 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
        if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v94 = v168.__r_.__value_.__l.__size_;
        }

        v95 = v94 + v93;
        if (v95 > v163)
        {
          v161 = __cxa_allocate_exception(0x18uLL);
          *v161 = 107;
          v161[1] = "Can't fit into specified packet size";
          *(v161 + 16) = 0;
        }

        v76 = v163 - v95;
      }

      MEMORY[0x186602520](&v177, v166);
      if ((v177.count[1] & 0x80000000) == 0)
      {
        v96 = &v177;
      }

      else
      {
        v96 = *v177.state;
      }

      if ((v177.count[1] & 0x80000000) == 0)
      {
        v97 = HIBYTE(v177.count[1]);
      }

      else
      {
        v97 = *&v177.state[2];
      }

      ToUTF16(v96, v97);
      v98 = BYTE7(v175);
      if (SBYTE7(v175) < 0)
      {
        v98 = *&__s[8];
      }

      if (v98 <= v76)
      {
        v109 = v76 - v98;
        for (i = v98 + 200; i <= v109; v109 = (v109 - i))
        {
          for (j = 101; j > 1; --j)
          {
            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v112 = &v173;
            }

            else
            {
              v112 = v173.__r_.__value_.__r.__words[0];
            }

            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v113 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v113 = v173.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v112, v113);
          }

          if ((SBYTE7(v175) & 0x80u) == 0)
          {
            v114 = __s;
          }

          else
          {
            v114 = *__s;
          }

          if ((SBYTE7(v175) & 0x80u) == 0)
          {
            v115 = BYTE7(v175);
          }

          else
          {
            v115 = *&__s[8];
          }

          std::string::append(this, v114, v115);
        }

        if (v109 >= 2)
        {
          v116 = (v109 >> 1) + 1;
          do
          {
            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v117 = &v173;
            }

            else
            {
              v117 = v173.__r_.__value_.__r.__words[0];
            }

            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v118 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v118 = v173.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v117, v118);
            --v116;
          }

          while (v116 > 1);
        }

        if ((SBYTE7(v175) & 0x80u) == 0)
        {
          v119 = __s;
        }

        else
        {
          v119 = *__s;
        }

        if ((SBYTE7(v175) & 0x80u) == 0)
        {
          v120 = BYTE7(v175);
        }

        else
        {
          v120 = *&__s[8];
        }

        std::string::append(this, v119, v120);
      }

      else if (v76 >= 2)
      {
        v99 = (v76 >> 1) + 1;
        do
        {
          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v100 = &v173;
          }

          else
          {
            v100 = v173.__r_.__value_.__r.__words[0];
          }

          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v101 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v101 = v173.__r_.__value_.__l.__size_;
          }

          std::string::append(this, v100, v101);
          --v99;
        }

        while (v99 > 1);
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &v168;
      }

      else
      {
        v121 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v122 = v168.__r_.__value_.__l.__size_;
      }

      goto LABEL_360;
    }

    memset(&v173, 0, sizeof(v173));
    std::string::basic_string[abi:fe200100]<0>(&v173, "    ");
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v173.__r_.__value_.__l.__size_ < 2)
      {
        goto LABEL_382;
      }

      v77 = v173.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v173.__r_.__value_.__r.__words[2]) <= 1u)
      {
        goto LABEL_382;
      }

      v77 = &v173;
    }

    v77->__r_.__value_.__s.__data_[2] = 0;
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v173.__r_.__value_.__l.__size_)
      {
        goto LABEL_382;
      }

      v123 = v173.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v173.__r_.__value_.__s + 23))
      {
        goto LABEL_382;
      }

      v123 = &v173;
    }

    v123->__r_.__value_.__s.__data_[1] = 0;
    v124 = v173.__r_.__value_.__r.__words[0];
    v125 = &v173;
    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v124 = &v173;
    }

    v124->__r_.__value_.__s.__data_[0] = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_284;
    }

    if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v125 = v173.__r_.__value_.__r.__words[0];
    }

    v125->__r_.__value_.__s.__data_[0] = 32;
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v173.__r_.__value_.__l.__size_ < 3)
      {
        goto LABEL_382;
      }

      v126 = v173.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v173.__r_.__value_.__r.__words[2]) <= 2u)
      {
        goto LABEL_382;
      }

      v126 = &v173;
    }

    v126->__r_.__value_.__s.__data_[3] = 0;
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v173.__r_.__value_.__l.__size_ < 2)
      {
        goto LABEL_382;
      }

      v127 = v173.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v173.__r_.__value_.__r.__words[2]) <= 1u)
      {
        goto LABEL_382;
      }

      v127 = &v173;
    }

    v127->__r_.__value_.__s.__data_[2] = 0;
    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v173.__r_.__value_.__l.__size_)
      {
        v128 = v173.__r_.__value_.__r.__words[0];
        goto LABEL_283;
      }
    }

    else if (*(&v173.__r_.__value_.__s + 23))
    {
      v128 = &v173;
LABEL_283:
      v128->__r_.__value_.__s.__data_[1] = 0;
LABEL_284:
      v129 = *v177.count;
      v130 = *v177.state;
      *v177.state = *&this->__r_.__value_.__l.__data_;
      *v177.count = *(&this->__r_.__value_.__l + 2);
      v131 = *v177.count;
      *&this->__r_.__value_.__l.__data_ = v130;
      this->__r_.__value_.__r.__words[2] = v129;
      if (v131 >= 0)
      {
        v132 = &v177;
      }

      else
      {
        v132 = *v177.state;
      }

      if (v131 >= 0)
      {
        v133 = HIBYTE(v131);
      }

      else
      {
        v133 = *&v177.state[2];
      }

      ToUTF32(v132, v133);
      v134 = *v177.count;
      v135 = *v177.state;
      *v177.state = *&v168.__r_.__value_.__l.__data_;
      v136 = v168.__r_.__value_.__r.__words[2];
      *v177.count = *(&v168.__r_.__value_.__l + 2);
      *&v168.__r_.__value_.__l.__data_ = v135;
      v168.__r_.__value_.__r.__words[2] = v134;
      if (v136 >= 0)
      {
        v137 = &v177;
      }

      else
      {
        v137 = *v177.state;
      }

      if (v136 >= 0)
      {
        v138 = HIBYTE(v136);
      }

      else
      {
        v138 = *&v177.state[2];
      }

      ToUTF32(v137, v138);
      if ((v30 & 0x200) != 0)
      {
        v139 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v139 & 0x8000000000000000) != 0)
        {
          v139 = this->__r_.__value_.__l.__size_;
        }

        v140 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
        if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v140 = v168.__r_.__value_.__l.__size_;
        }

        v141 = v140 + v139;
        if (v141 > v163)
        {
          v162 = __cxa_allocate_exception(0x18uLL);
          *v162 = 107;
          v162[1] = "Can't fit into specified packet size";
          *(v162 + 16) = 0;
        }

        v76 = v163 - v141;
      }

      MEMORY[0x186602520](&v177, v166);
      if ((v177.count[1] & 0x80000000) == 0)
      {
        v142 = &v177;
      }

      else
      {
        v142 = *v177.state;
      }

      if ((v177.count[1] & 0x80000000) == 0)
      {
        v143 = HIBYTE(v177.count[1]);
      }

      else
      {
        v143 = *&v177.state[2];
      }

      ToUTF32(v142, v143);
      v144 = BYTE7(v175);
      if (SBYTE7(v175) < 0)
      {
        v144 = *&__s[8];
      }

      if (v144 <= v76)
      {
        v148 = v76 - v144;
        for (k = v144 + 400; k <= v148; v148 = (v148 - k))
        {
          for (m = 101; m > 1; --m)
          {
            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v151 = &v173;
            }

            else
            {
              v151 = v173.__r_.__value_.__r.__words[0];
            }

            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v152 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v152 = v173.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v151, v152);
          }

          if ((SBYTE7(v175) & 0x80u) == 0)
          {
            v153 = __s;
          }

          else
          {
            v153 = *__s;
          }

          if ((SBYTE7(v175) & 0x80u) == 0)
          {
            v154 = BYTE7(v175);
          }

          else
          {
            v154 = *&__s[8];
          }

          std::string::append(this, v153, v154);
        }

        if (v148 >= 4)
        {
          v155 = (v148 >> 2) + 1;
          do
          {
            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v156 = &v173;
            }

            else
            {
              v156 = v173.__r_.__value_.__r.__words[0];
            }

            if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v157 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v157 = v173.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v156, v157);
            --v155;
          }

          while (v155 > 1);
        }

        if ((SBYTE7(v175) & 0x80u) == 0)
        {
          v158 = __s;
        }

        else
        {
          v158 = *__s;
        }

        if ((SBYTE7(v175) & 0x80u) == 0)
        {
          v159 = BYTE7(v175);
        }

        else
        {
          v159 = *&__s[8];
        }

        std::string::append(this, v158, v159);
      }

      else if (v76 >= 4)
      {
        v145 = (v76 >> 2) + 1;
        do
        {
          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v146 = &v173;
          }

          else
          {
            v146 = v173.__r_.__value_.__r.__words[0];
          }

          if ((v173.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v147 = HIBYTE(v173.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v147 = v173.__r_.__value_.__l.__size_;
          }

          std::string::append(this, v146, v147);
          --v145;
        }

        while (v145 > 1);
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &v168;
      }

      else
      {
        v121 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v122 = v168.__r_.__value_.__l.__size_;
      }

LABEL_360:
      std::string::append(this, v121, v122);
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v175) < 0)
      {
        operator delete(*__s);
      }

      if (SHIBYTE(v177.count[1]) < 0)
      {
        operator delete(*v177.state);
      }

      goto LABEL_366;
    }

LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  if ((v30 & 0x200) != 0)
  {
    v78 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v78 & 0x8000000000000000) != 0)
    {
      v78 = this->__r_.__value_.__l.__size_;
    }

    v79 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
    if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = v168.__r_.__value_.__l.__size_;
    }

    v80 = v79 + v78;
    if (v80 > v163)
    {
      v160 = __cxa_allocate_exception(0x18uLL);
      *v160 = 107;
      v160[1] = "Can't fit into specified packet size";
      *(v160 + 16) = 0;
    }

    v76 = v163 - v80;
  }

  v81 = strlen(v166);
  if (v81 <= v76)
  {
    v102 = v76 - v81;
    v103 = v81 + 100;
    if (v81 + 100 <= v102)
    {
      v104 = v76 - 2 * v81 - 100;
      v105 = -100 - v81;
      do
      {
        v106 = v104;
        std::string::append(this, 0x64uLL, 32);
        std::string::append(this, v166);
        v104 = v106 + v105;
      }

      while (v103 <= v106);
      v102 = v106;
    }

    std::string::append(this, v102, 32);
    std::string::append(this, v166);
  }

  else
  {
    std::string::append(this, v76, 32);
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v168;
  }

  else
  {
    v107 = v168.__r_.__value_.__r.__words[0];
  }

  if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v108 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v108 = v168.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v107, v108);
LABEL_366:
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }
}

void sub_18617623C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 233) < 0)
  {
    operator delete(*(v39 - 256));
  }

  if (*(v39 - 185) < 0)
  {
    operator delete(*(v39 - 208));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t EstimateRDFSize(const XMP_Node *a1, unsigned int a2, unint64_t a3)
{
  LODWORD(v4) = a2;
  v6 = *(a1 + 39);
  if (v6 < 0)
  {
    v6 = *(a1 + 3);
  }

  v7 = 2 * (v6 + a2 * a3) + 8;
  v9 = *(a1 + 12);
  v8 = *(a1 + 13);
  if (v9 != v8)
  {
    v10 = v8 - v9;
    v7 += 2 * a3 * (a2 + 1 + (a2 + 2)) + 64;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      v12 = *v9++;
      v7 += EstimateRDFSize(v12, v4, a3);
      --v11;
    }

    while (v11);
    LODWORD(v4) = v4 + 2;
  }

  v13 = *(a1 + 2);
  if ((v13 & 0x100) != 0)
  {
    v4 = (v4 + 1);
    v7 += 2 * a3 * v4 + 38;
  }

  else if ((v13 & 0x200) != 0)
  {
    v7 += 2 * a3 * (v4 + 1) + 20 * ((*(a1 + 10) - *(a1 + 9)) >> 3) + 22;
    LODWORD(v4) = v4 + 2;
  }

  else if ((v13 & 0x80000000) == 0)
  {
    v14 = *(a1 + 63);
    if (v14 < 0)
    {
      v14 = *(a1 + 6);
    }

    v7 += v14;
  }

  v16 = a1 + 72;
  v15 = *(a1 + 9);
  v17 = *(v16 + 1) - v15;
  if (v17)
  {
    v18 = v17 >> 3;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      v20 = *v15++;
      v7 += EstimateRDFSize(v20, v4 + 1, a3);
      --v19;
    }

    while (v19);
  }

  return v7;
}

void StartOuterRDFDescription(uint64_t a1, std::string *this, const std::string::value_type *a3, std::string::value_type *__s, int a5)
{
  if (a5 >= -1)
  {
    v10 = a5 + 3;
    do
    {
      std::string::append(this, __s);
      --v10;
    }

    while (v10 > 1);
  }

  std::string::append(this, "<rdf:Description rdf:about=");
  std::string::push_back(this, 34);
  v11 = *(a1 + 39);
  if (v11 >= 0)
  {
    v12 = (a1 + 16);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 39);
  }

  else
  {
    v13 = *(a1 + 24);
  }

  std::string::append(this, v12, v13);
  std::string::push_back(this, 34);
  memset(&v18, 0, sizeof(v18));
  std::string::reserve(&v18, 0x190uLL);
  MEMORY[0x186602520](&v18, ":xml:rdf:");
  v14 = *(a1 + 80) - *(a1 + 72);
  if (v14)
  {
    v15 = 0;
    v16 = v14 >> 3;
    while (1)
    {
      v17 = *(a1 + 72);
      if (v15 >= (*(a1 + 80) - v17) >> 3)
      {
        break;
      }

      DeclareUsedNamespaces(*(v17 + 8 * v15++), &v18, this, a3, __s, (a5 + 4));
      if (v16 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1861765F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SerializeCompactRDFAttrProps(uint64_t a1, std::string *a2, const std::string::value_type *a3, const std::string::value_type *a4, int a5)
{
  v5 = *(a1 + 80) - *(a1 + 72);
  if (v5)
  {
    v10 = 0;
    v11 = v5 >> 3;
    v12 = a5 + 1;
    while (1)
    {
      v13 = *(a1 + 72);
      if (v10 >= (*(a1 + 80) - v13) >> 3)
      {
        break;
      }

      v14 = *(v13 + 8 * v10);
      if (CanBeRDFAttrProp(v14))
      {
        std::string::append(a2, a3);
        v15 = v12;
        if (a5 >= 1)
        {
          do
          {
            std::string::append(a2, a4);
            --v15;
          }

          while (v15 > 1);
        }

        v18 = *(v14 + 2);
        v17 = v14 + 16;
        v16 = v18;
        v19 = v17[23];
        if (v19 >= 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = v16;
        }

        if (v19 >= 0)
        {
          v21 = *(v17 + 23);
        }

        else
        {
          v21 = *(v17 + 1);
        }

        std::string::append(a2, v20, v21);
        std::string::append(a2, "=");
        AppendNodeValue(a2, (v17 + 24), 1);
        std::string::push_back(a2, 34);
      }

      if (++v10 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

std::string *SerializeCompactRDFElemProps(std::string *result, std::string *a2, const std::string::value_type *a3, std::string::value_type *a4, int a5)
{
  v5 = result[3].__r_.__value_.__l.__size_ - result[3].__r_.__value_.__r.__words[0];
  if (!v5)
  {
    return result;
  }

  v6 = a5;
  v9 = result;
  v10 = 0;
  v60 = v5 >> 3;
  v62 = a5 + 1;
  v54 = a5 + 2;
  v56 = result;
  do
  {
    data = v9[3].__r_.__value_.__l.__data_;
    if (v10 >= (v9[3].__r_.__value_.__l.__size_ - data) >> 3)
    {
      goto LABEL_98;
    }

    v12 = *&data[8 * v10];
    result = CanBeRDFAttrProp(v12);
    if (result)
    {
      goto LABEL_90;
    }

    v13 = (v12 + 16);
    if (*(v12 + 39) < 0)
    {
      v13 = *v13;
    }

    v58 = *(v12 + 8);
    if (*v13 == 91)
    {
      v13 = "rdf:li";
    }

    __s = v13;
    if (v6 >= 1)
    {
      v14 = v62;
      do
      {
        std::string::append(a2, a4);
        --v14;
      }

      while (v14 > 1);
    }

    v59 = v10;
    std::string::push_back(a2, 60);
    std::string::append(a2, __s);
    v15 = *(v12 + 104) - *(v12 + 96);
    if (!v15)
    {
      v18 = 0;
      goto LABEL_50;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v15 >> 3;
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    do
    {
      v21 = *(v12 + 96);
      if (v17 >= (*(v12 + 104) - v21) >> 3)
      {
        goto LABEL_98;
      }

      v22 = *(v21 + 8 * v17);
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, *(v22 + 16), *(v22 + 24));
      }

      else
      {
        *&v63.__r_.__value_.__l.__data_ = *v23;
        v63.__r_.__value_.__r.__words[2] = *(v22 + 32);
      }

      v24 = IsRDFAttrQualifier(&v63.__r_.__value_.__l.__data_);
      v25 = v24;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
        if (!v25)
        {
LABEL_26:
          v16 = 1;
          goto LABEL_43;
        }
      }

      else if (!v24)
      {
        goto LABEL_26;
      }

      v26 = *(v22 + 39);
      if (v26 < 0)
      {
        if (*(v22 + 24) == 12)
        {
          v27 = *v23;
LABEL_29:
          v28 = *v27;
          v29 = *(v27 + 2);
          v31 = v28 == 0x6F7365723A666472 && v29 == 1701016181;
          v18 |= v31;
        }
      }

      else
      {
        v27 = (v22 + 16);
        if (v26 == 12)
        {
          goto LABEL_29;
        }
      }

      std::string::push_back(a2, 32);
      v32 = *(v22 + 39);
      if (v32 >= 0)
      {
        v33 = (v22 + 16);
      }

      else
      {
        v33 = *(v22 + 16);
      }

      if (v32 >= 0)
      {
        v34 = *(v22 + 39);
      }

      else
      {
        v34 = *(v22 + 24);
      }

      std::string::append(a2, v33, v34);
      std::string::append(a2, "=");
      AppendNodeValue(a2, v22 + 40, 1);
      std::string::push_back(a2, 34);
LABEL_43:
      ++v17;
    }

    while (v20 != v17);
    v6 = a5;
    if (v16)
    {
      std::string::append(a2, " rdf:parseType=Resource>");
      v35 = a3;
      std::string::append(a2, a3);
      SerializeCanonicalRDFProperty(v12, a2, a3, a4, v62, 0, 1);
      v36 = (*(v12 + 104) - *(v12 + 96)) >> 3;
      v37 = (*(v12 + 8) >> 6) & 1;
      v9 = v56;
      v10 = v59;
      if (v36 <= v37)
      {
        goto LABEL_69;
      }

      while (1)
      {
        v38 = *(v12 + 96);
        if (v37 >= (*(v12 + 104) - v38) >> 3)
        {
          break;
        }

        SerializeCanonicalRDFProperty(*(v38 + 8 * v37++), a2, a3, a4, v62, 0, 0);
        if (v36 == v37)
        {
          goto LABEL_69;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      SerializeCompactRDFElemProps();
    }

LABEL_50:
    v39 = (v58 & 0x1F00);
    if ((v58 & 0x1F00) == 0)
    {
      if ((*(v12 + 8) & 2) != 0)
      {
        std::string::append(a2, " rdf:resource=");
        AppendNodeValue(a2, v12 + 40, 1);
        v49 = a2;
        v50 = "/>";
LABEL_87:
        std::string::append(v49, v50);
        v35 = a3;
        goto LABEL_88;
      }

      v47 = *(v12 + 63);
      v9 = v56;
      v35 = a3;
      v10 = v59;
      if (v47 < 0)
      {
        v47 = *(v12 + 48);
      }

      if (!v47)
      {
        std::string::append(a2, "/>");
        goto LABEL_89;
      }

      std::string::push_back(a2, 62);
      AppendNodeValue(a2, v12 + 40, 0);
LABEL_72:
      std::string::append(a2, "</");
      std::string::append(a2, __s);
      std::string::push_back(a2, 62);
      goto LABEL_89;
    }

    if ((v58 & 0x200) != 0)
    {
      std::string::push_back(a2, 62);
      v35 = a3;
      std::string::append(a2, a3);
      EmitRDFArrayTag(v39, a2, a3, a4, v62, (*(v12 + 80) - *(v12 + 72)) >> 3, 1);
      if ((*(v12 + 9) & 0x10) != 0)
      {
        NormalizeLangArray(v12);
      }

      SerializeCompactRDFElemProps(v12, a2, a3, a4, v54);
      EmitRDFArrayTag(v39, a2, a3, a4, v62, (*(v12 + 80) - *(v12 + 72)) >> 3, 0);
      v9 = v56;
      v10 = v59;
LABEL_69:
      if (v6 >= 1)
      {
        v48 = v62;
        do
        {
          std::string::append(a2, a4);
          --v48;
        }

        while (v48 > 1);
      }

      goto LABEL_72;
    }

    if ((v58 & 0x100) == 0)
    {
      goto LABEL_99;
    }

    v41 = *(v12 + 72);
    v40 = *(v12 + 80);
    if (v40 == v41)
    {
LABEL_86:
      v49 = a2;
      v50 = " rdf:parseType=Resource/>";
      goto LABEL_87;
    }

    LOBYTE(v42) = 0;
    v43 = 0;
    v44 = (v40 - v41) >> 3;
    v45 = *(v12 + 72);
    while (1)
    {
      v46 = CanBeRDFAttrProp(*v45);
      if (!v46)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_74;
      }

LABEL_59:
      v42 = !v46;
      ++v45;
      v43 = v46;
      if (!--v44)
      {
        goto LABEL_75;
      }
    }

    if (!v43)
    {
      goto LABEL_59;
    }

LABEL_74:
    LOBYTE(v46) = 1;
    v42 = 1;
LABEL_75:
    if ((v18 & v42) == 1)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 202;
      exception[1] = "Can't mix rdf:resource qualifier and element fields";
      *(exception + 16) = 0;
    }

    v6 = a5;
    if (v40 == v41)
    {
      goto LABEL_86;
    }

    if (v42)
    {
      v9 = v56;
      v35 = a3;
      v10 = v59;
      if (v46)
      {
        std::string::push_back(a2, 62);
        std::string::append(a2, a3);
        if (a5 < 0)
        {
          std::string::append(a2, "<rdf:Description");
          SerializeCompactRDFAttrProps(v12, a2, a3, a4, v54);
          std::string::append(a2, ">");
          std::string::append(a2, a3);
          SerializeCompactRDFElemProps(v12, a2, a3, a4, v62);
        }

        else
        {
          v51 = v54;
          do
          {
            std::string::append(a2, a4);
            --v51;
          }

          while (v51 > 1);
          std::string::append(a2, "<rdf:Description");
          SerializeCompactRDFAttrProps(v12, a2, a3, a4, v54);
          std::string::append(a2, ">");
          std::string::append(a2, a3);
          SerializeCompactRDFElemProps(v12, a2, a3, a4, v62);
          if ((a5 & 0x80000000) == 0)
          {
            v52 = v54;
            do
            {
              std::string::append(a2, a4);
              --v52;
            }

            while (v52 > 1);
          }
        }

        std::string::append(a2, "</rdf:Description>");
        std::string::append(a2, a3);
      }

      else
      {
        std::string::append(a2, " rdf:parseType=Resource>");
        std::string::append(a2, a3);
        SerializeCompactRDFElemProps(v12, a2, a3, a4, v62);
      }

      goto LABEL_69;
    }

    v35 = a3;
    SerializeCompactRDFAttrProps(v12, a2, a3, a4, v62);
    std::string::append(a2, "/>");
LABEL_88:
    v9 = v56;
    v10 = v59;
LABEL_89:
    result = std::string::append(a2, v35);
LABEL_90:
    ++v10;
  }

  while (v10 != v60);
  return result;
}

void DeclareUsedNamespaces(uint64_t a1, std::string *a2, std::string *a3, const std::string::value_type *a4, const std::string::value_type *a5, uint64_t a6)
{
  v12 = *(a1 + 8);
  if (v12 < 0)
  {
    v18 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v18 = *v18;
    }

    v19 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v19 = *v19;
    }

    DeclareOneNamespace(v18, v19, a2, a3, a4, a5, a6);
  }

  else if ((v12 & 0x100) != 0)
  {
    v13 = *(a1 + 80) - *(a1 + 72);
    if (v13)
    {
      v14 = 0;
      v15 = v13 >> 3;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      do
      {
        v17 = *(a1 + 72);
        if (v14 >= (*(a1 + 80) - v17) >> 3)
        {
          goto LABEL_28;
        }

        DeclareElemNamespace((*(v17 + 8 * v14++) + 16), a2, a3, a4, a5, a6);
      }

      while (v16 != v14);
    }
  }

  v20 = *(a1 + 80) - *(a1 + 72);
  if (v20)
  {
    v21 = 0;
    v22 = v20 >> 3;
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    do
    {
      v24 = *(a1 + 72);
      if (v21 >= (*(a1 + 80) - v24) >> 3)
      {
        goto LABEL_28;
      }

      DeclareUsedNamespaces(*(v24 + 8 * v21++), a2, a3, a4, a5, a6);
    }

    while (v23 != v21);
  }

  v25 = *(a1 + 104) - *(a1 + 96);
  if (v25)
  {
    v26 = 0;
    v27 = v25 >> 3;
    if (v27 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    while (1)
    {
      v29 = *(a1 + 96);
      if (v26 >= (*(a1 + 104) - v29) >> 3)
      {
        break;
      }

      v30 = *(v29 + 8 * v26);
      DeclareElemNamespace((v30 + 16), a2, a3, a4, a5, a6);
      DeclareUsedNamespaces(v30, a2, a3, a4, a5, a6);
      if (v28 == ++v26)
      {
        return;
      }
    }

LABEL_28:
    __break(1u);
  }
}

void DeclareOneNamespace(const std::string::value_type *a1, const std::string::value_type *a2, std::string *a3, std::string *a4, const std::string::value_type *a5, const std::string::value_type *a6, int a7)
{
  memset(&v32, 0, sizeof(v32));
  std::string::basic_string[abi:fe200100]<0>(&v32, ":");
  std::string::append(&v32, a1);
  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = a3->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  v14 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v32;
  }

  else
  {
    v15 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v32.__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    v28 = a2;
    v29 = a1;
    if (size >= v16)
    {
      v22 = &size[v13];
      v23 = v15->__r_.__value_.__s.__data_[0];
      v24 = v13;
      do
      {
        v25 = &size[-v16];
        if (v25 == -1)
        {
          break;
        }

        v26 = memchr(v24, v23, (v25 + 1));
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if (!memcmp(v26, v15, v16))
        {
          if (v27 != v22 && &v27[-v13] != -1)
          {
            goto LABEL_33;
          }

          break;
        }

        v24 = v27 + 1;
        size = (v22 - (v27 + 1));
      }

      while (size >= v16);
    }

    std::string::append(a4, a5);
    if (a7 >= 1)
    {
      v17 = a7 + 1;
      do
      {
        std::string::append(a4, a6);
        --v17;
      }

      while (v17 > 1);
    }

    std::string::append(a4, "xmlns:");
    std::string::append(a4, v29);
    v18 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = a4->__r_.__value_.__l.__size_;
    }

    if (!v18)
    {
      __break(1u);
      return;
    }

    if (v19 >= 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = a4->__r_.__value_.__r.__words[0];
    }

    v21 = v20 + v18;
    if (*(v21 - 1) == 58)
    {
      *(v21 - 1) = 61;
    }

    else
    {
      std::string::push_back(a4, 61);
    }

    std::string::push_back(a4, 34);
    std::string::append(a4, v28);
    std::string::push_back(a4, 34);
    std::string::append(a3, v29);
    v14 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

LABEL_33:
  if (v14 < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_186177234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DeclareElemNamespace(const std::string *a1, std::string *a2, std::string *a3, const std::string::value_type *a4, const std::string::value_type *a5, int a6)
{
  v12 = std::string::find(a1, 58, 0);
  if (v12 != -1)
  {
    memset(&v17, 0, sizeof(v17));
    std::string::basic_string(&v17, a1, 0, v12 + 1, &v16);
    v16 = 0;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v17;
    }

    else
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    if ((XMP_NamespaceTable::GetURI(sRegisteredNamespaces, v13, &v16, 0) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 7;
      exception[1] = "XMP_Enforce failed: (nsFound) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta-Serialize.cpp at line 191";
      *(exception + 16) = 0;
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v17;
    }

    else
    {
      v14 = v17.__r_.__value_.__r.__words[0];
    }

    DeclareOneNamespace(v14, v16, a2, a3, a4, a5, a6);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

void sub_186177388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CanBeRDFAttrProp(const XMP_Node *a1)
{
  v1 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v1 = *v1;
  }

  if (*v1 == 91 || *(a1 + 12) != *(a1 + 13))
  {
    return 0;
  }

  if ((*(a1 + 2) & 2) != 0)
  {
    return 0;
  }

  return (*(a1 + 2) & 0x1F00) == 0;
}

std::string *AppendNodeValue(std::string *this, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 >= 1)
  {
    v6 = this;
    v7 = &v4[v3];
    do
    {
      v8 = 0;
      while (1)
      {
        v9 = v4[v8];
        if (v9 == 34 && a3 != 0)
        {
          std::string::append(v6, v4, v8);
          v13 = v6;
          v14 = "&quot;";
LABEL_34:
          this = std::string::append(v13, v14);
          goto LABEL_35;
        }

        if (v9 < 0x20u)
        {
          break;
        }

        v11 = v4[v8];
        if (v11 <= 0x3E && ((1 << v9) & 0x5000004000000000) != 0)
        {
          std::string::append(v6, v4, v8);
          switch(v11)
          {
            case '<':
              v13 = v6;
              v14 = "&lt;";
              break;
            case '>':
              v13 = v6;
              v14 = "&gt;";
              break;
            case '&':
              v13 = v6;
              v14 = "&amp;";
              break;
            default:
              AppendNodeValue();
          }

          goto LABEL_34;
        }

        if (&v4[++v8] >= v7)
        {
          this = std::string::append(v6, v4, v8);
          v4 += v8;
          goto LABEL_36;
        }
      }

      std::string::append(v6, v4, v8);
      if (v9 - 9 >= 2 && v9 != 13)
      {
        AppendNodeValue();
      }

      v18 = 0;
      v17 = 0;
      strcpy(__s, "&#xn;");
      __s[3] = a0123456789abcd[v9];
      this = std::string::append(v6, __s, 5uLL);
LABEL_35:
      v4 += v8 + 1;
LABEL_36:
      ;
    }

    while (v4 < v7);
  }

  return this;
}

BOOL IsRDFAttrQualifier(const void **a1)
{
  v2 = *(a1 + 23);
  v3 = "xml:lang";
  v4 = 1;
  v5 = 1u;
  do
  {
    v6 = strlen(v3);
    v7 = v6;
    if ((v2 & 0x80) != 0)
    {
      if (v6 != a1[1])
      {
        goto LABEL_9;
      }

      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:fe200100]();
      }

      v8 = *a1;
    }

    else
    {
      v8 = a1;
      if (v7 != v2)
      {
        goto LABEL_9;
      }
    }

    if (!memcmp(v8, v3, v7))
    {
      return v4;
    }

LABEL_9:
    v3 = sAttrQualifiers[v5];
    v4 = *v3 != 0;
    ++v5;
  }

  while (v5 != 6);
  return v4;
}

std::string *SerializeCanonicalRDFProperty(uint64_t a1, std::string *a2, const std::string::value_type *a3, std::string::value_type *a4, uint64_t a5, unsigned int a6, char a7)
{
  v7 = a5;
  v12 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v12 = *v12;
  }

  if (a7)
  {
    v13 = "rdf:value";
  }

  else if (*v12 == 91)
  {
    v13 = "rdf:li";
  }

  else
  {
    v13 = v12;
  }

  v91 = *(a1 + 8);
  if (a5 >= 1)
  {
    v14 = a5 + 1;
    do
    {
      std::string::append(a2, a4);
      --v14;
    }

    while (v14 > 1);
  }

  std::string::push_back(a2, 60);
  v92 = v13;
  std::string::append(a2, v13);
  v15 = *(a1 + 104) - *(a1 + 96);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_54;
  }

  v89 = v7;
  v90 = a3;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v15 >> 3;
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  do
  {
    v21 = *(a1 + 96);
    if (v18 >= (*(a1 + 104) - v21) >> 3)
    {
      goto LABEL_158;
    }

    v22 = *(v21 + 8 * v18);
    v23 = (v22 + 16);
    if (*(v22 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v96, *(v22 + 16), *(v22 + 24));
    }

    else
    {
      *&v96.__r_.__value_.__l.__data_ = *v23;
      v96.__r_.__value_.__r.__words[2] = *(v22 + 32);
    }

    v24 = IsRDFAttrQualifier(&v96.__r_.__value_.__l.__data_);
    v25 = v24;
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
      if (!v25)
      {
LABEL_25:
        v16 = 1;
        goto LABEL_43;
      }
    }

    else if (!v24)
    {
      goto LABEL_25;
    }

    v26 = *(v22 + 39);
    if (v26 < 0)
    {
      if (*(v22 + 24) != 12)
      {
        goto LABEL_35;
      }

      v27 = *v23;
    }

    else
    {
      v27 = (v22 + 16);
      if (v26 != 12)
      {
        goto LABEL_35;
      }
    }

    v28 = *v27;
    v29 = *(v27 + 2);
    v31 = v28 == 0x6F7365723A666472 && v29 == 1701016181;
    v17 |= v31;
LABEL_35:
    if ((a7 & 1) == 0)
    {
      std::string::push_back(a2, 32);
      v32 = *(v22 + 39);
      if (v32 >= 0)
      {
        v33 = (v22 + 16);
      }

      else
      {
        v33 = *(v22 + 16);
      }

      if (v32 >= 0)
      {
        v34 = *(v22 + 39);
      }

      else
      {
        v34 = *(v22 + 24);
      }

      std::string::append(a2, v33, v34);
      std::string::append(a2, "=");
      AppendNodeValue(a2, v22 + 40, 1);
      std::string::push_back(a2, 34);
    }

LABEL_43:
    ++v18;
  }

  while (v20 != v18);
  a3 = v90;
  if (v16)
  {
    v7 = v89;
    if ((a7 & 1) == 0)
    {
      if ((v17 & 1) == 0)
      {
        if (a6)
        {
          std::string::push_back(a2, 62);
          std::string::append(a2, v90);
          if ((v89 & 0x80000000) != 0)
          {
            v36 = "<rdf:Description>";
          }

          else
          {
            v35 = v89 + 2;
            v36 = "<rdf:Description>";
            do
            {
              std::string::append(a2, a4);
              --v35;
            }

            while (v35 > 1);
          }

          LODWORD(v7) = v89 + 1;
        }

        else
        {
          v36 = " rdf:parseType=Resource>";
        }

        std::string::append(a2, v36);
        std::string::append(a2, v90);
        SerializeCanonicalRDFProperty(a1, a2, v90, a4, (v7 + 1), a6, 1);
        v67 = *(a1 + 104) - *(a1 + 96);
        if (v67)
        {
          v68 = 0;
          v69 = v67 >> 3;
          if (v69 <= 1)
          {
            v70 = 1;
          }

          else
          {
            v70 = v69;
          }

          v71 = v7;
          while (1)
          {
            v72 = *(a1 + 96);
            if (v68 >= (*(a1 + 104) - v72) >> 3)
            {
              goto LABEL_158;
            }

            v73 = *(v72 + 8 * v68);
            if (*(v73 + 39) < 0)
            {
              std::string::__init_copy_ctor_external(&v95, *(v73 + 16), *(v73 + 24));
            }

            else
            {
              v95 = *(v73 + 16);
            }

            v74 = IsRDFAttrQualifier(&v95.__r_.__value_.__l.__data_);
            v75 = v74;
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              break;
            }

            if (!v74)
            {
              goto LABEL_122;
            }

LABEL_123:
            ++v68;
            LODWORD(v7) = v71;
            if (v70 == v68)
            {
              goto LABEL_127;
            }
          }

          operator delete(v95.__r_.__value_.__l.__data_);
          if (v75)
          {
            goto LABEL_123;
          }

LABEL_122:
          SerializeCanonicalRDFProperty(v73, a2, v90, a4, (v71 + 1), a6, 0);
          goto LABEL_123;
        }

LABEL_127:
        if (a6)
        {
          v76 = v7 - 1;
          if (v7 >= 1)
          {
            v77 = v7 + 1;
            do
            {
              std::string::append(a2, a4);
              --v77;
            }

            while (v77 > 1);
          }

          goto LABEL_131;
        }

        goto LABEL_132;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 202;
      v88 = "Can't mix rdf:resource and general qualifiers";
LABEL_162:
      exception[1] = v88;
      *(exception + 16) = 0;
    }
  }

  else
  {
    v7 = v89;
  }

LABEL_54:
  v37 = (v91 & 0x1F00);
  if ((v91 & 0x1F00) == 0)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      std::string::append(a2, " rdf:resource=");
      AppendNodeValue(a2, a1 + 40, 1);
      v64 = "/>";
      goto LABEL_99;
    }

    v56 = *(a1 + 63);
    if (v56 < 0)
    {
      v56 = *(a1 + 48);
    }

    v57 = v92;
    if (!v56)
    {
      goto LABEL_97;
    }

    std::string::push_back(a2, 62);
    AppendNodeValue(a2, a1 + 40, 0);
    goto LABEL_136;
  }

  if ((v91 & 0x200) != 0)
  {
    std::string::push_back(a2, 62);
    std::string::append(a2, a3);
    EmitRDFArrayTag(v37, a2, a3, a4, v7 + 1, (*(a1 + 80) - *(a1 + 72)) >> 3, 1);
    if ((*(a1 + 9) & 0x10) != 0)
    {
      NormalizeLangArray(a1);
    }

    v58 = *(a1 + 80);
    v59 = v58 - *(a1 + 72);
    if (v59)
    {
      v60 = 0;
      if ((v59 >> 3) <= 1)
      {
        v61 = 1;
      }

      else
      {
        v61 = v59 >> 3;
      }

      do
      {
        v62 = *(a1 + 72);
        if (v60 >= (*(a1 + 80) - v62) >> 3)
        {
          goto LABEL_158;
        }

        SerializeCanonicalRDFProperty(*(v62 + 8 * v60++), a2, a3, a4, (v7 + 2), a6, 0);
      }

      while (v61 != v60);
      v58 = *(a1 + 72);
      v63 = *(a1 + 80);
    }

    else
    {
      v63 = *(a1 + 80);
    }

    EmitRDFArrayTag(v37, a2, a3, a4, v7 + 1, (v63 - v58) >> 3, 0);
    goto LABEL_132;
  }

  if ((v17 & 1) == 0)
  {
    v57 = v92;
    if ((v91 & 0x100) == 0)
    {
      SerializeCanonicalRDFProperty();
    }

    if (*(a1 + 80) == *(a1 + 72))
    {
      if ((a6 & 1) == 0)
      {
        v64 = " rdf:parseType=Resource/>";
        goto LABEL_99;
      }

      std::string::push_back(a2, 62);
      std::string::append(a2, a3);
      if ((v7 & 0x80000000) == 0)
      {
        v80 = v7 + 2;
        do
        {
          std::string::append(a2, a4);
          --v80;
        }

        while (v80 > 1);
      }

      std::string::append(a2, "<rdf:Description/>");
      std::string::append(a2, a3);
    }

    else
    {
      if (a6)
      {
        std::string::push_back(a2, 62);
        std::string::append(a2, a3);
        if ((v7 & 0x80000000) != 0)
        {
          v66 = "<rdf:Description>";
        }

        else
        {
          v65 = v7 + 2;
          v66 = "<rdf:Description>";
          do
          {
            std::string::append(a2, a4);
            --v65;
          }

          while (v65 > 1);
        }

        LODWORD(v7) = v7 + 1;
      }

      else
      {
        v66 = " rdf:parseType=Resource>";
      }

      std::string::append(a2, v66);
      std::string::append(a2, a3);
      v81 = *(a1 + 80) - *(a1 + 72);
      if (v81)
      {
        v82 = 0;
        v83 = v81 >> 3;
        if (v83 <= 1)
        {
          v84 = 1;
        }

        else
        {
          v84 = v83;
        }

        while (1)
        {
          v85 = *(a1 + 72);
          if (v82 >= (*(a1 + 80) - v85) >> 3)
          {
            break;
          }

          SerializeCanonicalRDFProperty(*(v85 + 8 * v82++), a2, a3, a4, (v7 + 1), a6, 0);
          if (v84 == v82)
          {
            goto LABEL_153;
          }
        }

LABEL_158:
        __break(1u);
LABEL_159:
        SerializeCanonicalRDFProperty();
      }

LABEL_153:
      if (a6)
      {
        v76 = v7 - 1;
        if (v7 >= 1)
        {
          v86 = v7 + 1;
          do
          {
            std::string::append(a2, a4);
            --v86;
          }

          while (v86 > 1);
        }

LABEL_131:
        std::string::append(a2, "</rdf:Description>");
        std::string::append(a2, a3);
        LODWORD(v7) = v76;
      }

LABEL_132:
      v57 = v92;
    }

    if (v7 >= 1)
    {
      v78 = v7 + 1;
      do
      {
        std::string::append(a2, a4);
        --v78;
      }

      while (v78 > 1);
    }

LABEL_136:
    std::string::append(a2, "</");
    std::string::append(a2, v57);
    std::string::push_back(a2, 62);
    return std::string::append(a2, a3);
  }

  if ((v91 & 0x100) == 0)
  {
    goto LABEL_159;
  }

  v38 = *(a1 + 80) - *(a1 + 72);
  if (v38)
  {
    v39 = 0;
    v40 = v38 >> 3;
    if (v40 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = v7 + 2;
    while (1)
    {
      v43 = *(a1 + 72);
      if (v39 >= (*(a1 + 80) - v43) >> 3)
      {
        goto LABEL_158;
      }

      v44 = *(v43 + 8 * v39);
      if (!CanBeRDFAttrProp(v44))
      {
        break;
      }

      std::string::append(a2, a3);
      v45 = v7;
      if ((v7 & 0x80000000) == 0)
      {
        v46 = v42;
        do
        {
          std::string::append(a2, a4);
          --v46;
        }

        while (v46 > 1);
      }

      std::string::push_back(a2, 32);
      v47 = *(v44 + 39);
      if (v47 >= 0)
      {
        v48 = (v44 + 16);
      }

      else
      {
        v48 = *(v44 + 16);
      }

      if (v47 >= 0)
      {
        v49 = *(v44 + 39);
      }

      else
      {
        v49 = *(v44 + 24);
      }

      std::string::append(a2, v48, v49);
      std::string::append(a2, "=");
      v52 = *(v44 + 40);
      v51 = v44 + 40;
      v50 = v52;
      v53 = *(v51 + 23);
      if (v53 >= 0)
      {
        v54 = v51;
      }

      else
      {
        v54 = v50;
      }

      if (v53 >= 0)
      {
        v55 = *(v51 + 23);
      }

      else
      {
        v55 = *(v51 + 8);
      }

      std::string::append(a2, v54, v55);
      std::string::push_back(a2, 34);
      ++v39;
      v7 = v45;
      if (v39 == v41)
      {
        goto LABEL_97;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 202;
    v88 = "Can't mix rdf:resource and complex fields";
    goto LABEL_162;
  }

LABEL_97:
  v64 = "/>";
LABEL_99:
  std::string::append(a2, v64);
  return std::string::append(a2, a3);
}

std::string *EmitRDFArrayTag(std::string *result, std::string *this, const std::string::value_type *a3, std::string::value_type *__s, int a5, int a6, int a7)
{
  v12 = result;
  if (a6 || a7)
  {
    if (a5 >= 1)
    {
      v13 = a5 + 1;
      do
      {
        std::string::append(this, __s);
        --v13;
      }

      while (v13 > 1);
    }

    if (a7)
    {
      v14 = "<rdf:";
    }

    else
    {
      v14 = "</rdf:";
    }

    std::string::append(this, v14);
    v15 = "Seq";
    if ((v12 & 0x400) == 0)
    {
      v15 = "Bag";
    }

    if ((v12 & 0x800) != 0)
    {
      v16 = "Alt";
    }

    else
    {
      v16 = v15;
    }

    std::string::append(this, v16);
    if (!a6 && (a7 & 1) != 0)
    {
      std::string::push_back(this, 47);
    }

    std::string::push_back(this, 62);

    return std::string::append(this, a3);
  }

  return result;
}

void AppendNodeValue()
{
  __assert_rtn("AppendNodeValue", "XMPMeta-Serialize.cpp", 334, "ch == '&'");
}

{
  __assert_rtn("AppendNodeValue", "XMPMeta-Serialize.cpp", 318, "(ch == ((char)0x09)) || (ch == ((char)0x0A)) || (ch == ((char)0x0D))");
}

void SerializeCanonicalRDFProperty()
{
  __assert_rtn("SerializeCanonicalRDFProperty", "XMPMeta-Serialize.cpp", 596, "propForm & kXMP_PropValueIsStruct");
}

{
  __assert_rtn("SerializeCanonicalRDFProperty", "XMPMeta-Serialize.cpp", 637, "propForm & kXMP_PropValueIsStruct");
}

uint64_t DumpClearString(uint64_t result, uint64_t (*a2)(uint64_t, unsigned __int8 *, uint64_t), uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v19 = 0;
  v20 = 0;
  v4 = *(result + 23);
  v5 = v4;
  v6 = result + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *result + *(result + 8);
  }

  if (v5 >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v8 < v7)
  {
    result = 0;
    v10 = v8;
    do
    {
      do
      {
        if (*v10 <= 31 && (*v10 - 9) > 1u)
        {
          break;
        }

        ++v10;
      }

      while (v10 < v7);
      if (v8 != v10)
      {
        result = a2(a3, v8, (v10 - v8));
      }

      if (result)
      {
        break;
      }

      if (v10 >= v7)
      {
LABEL_32:
        result = 0;
      }

      else
      {
        v12 = v7 - v10;
        v13 = 1;
        while (1)
        {
          if (*v10 > 31 || *v10 - 9 < 2)
          {
            if (v13)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }

          v15 = (v13 & 1) != 0 ? 60 : 32;
          v17 = v15;
          result = a2(a3, &v17, 1);
          if (result)
          {
            break;
          }

          snprintf(__str, 0x14uLL, "%.2X", *v10);
          v16 = strlen(__str);
          result = a2(a3, __str, v16);
          if (result)
          {
            return result;
          }

          v13 = 0;
          ++v10;
          if (!--v12)
          {
            goto LABEL_34;
          }
        }

        if (v13)
        {
          goto LABEL_35;
        }

LABEL_34:
        result = a2(a3, ">", 1);
        if (result)
        {
          return result;
        }
      }

LABEL_35:
      v8 = v10;
    }

    while (v10 < v7);
  }

  return result;
}

void XMP_NamespaceTable::XMP_NamespaceTable(XMP_NamespaceTable *this, const XMP_NamespaceTable *a2)
{
  *this = &unk_1EF4FD088;
  XMP_ReadWriteLock::XMP_ReadWriteLock((this + 8));
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 28) = 0;
  *(this + 27) = this + 224;
  *(this + 29) = 0;
  *(this + 32) = 0;
  v4 = (a2 + 8);
  XMP_ReadWriteLock::Acquire((a2 + 8), 0);
  if (this != a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 27, *(a2 + 27), a2 + 28);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 30, *(a2 + 30), a2 + 31);
  }

  XMP_AutoLock::~XMP_AutoLock(&v4);
}

void sub_18617841C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *v5);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2, *v4);
  XMP_ReadWriteLock::~XMP_ReadWriteLock(v1);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::string>::pair[abi:fe200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1861784D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:fe200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:fe200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:fe200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
}

void sub_186178824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:fe200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_186178974(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::string>::pair[abi:fe200100]<std::string,std::string,0>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_186178A08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void XMP_ReadWriteLock::Acquire()
{
  __assert_rtn("Acquire", "XMP_LibUtils.cpp", 92, "! this->beingWritten");
}

{
  __assert_rtn("Acquire", "XMP_LibUtils.cpp", 88, "this->lockCount == 0");
}

uint64_t AdobeXMPCommon::IError_v1::MakeShared@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return this;
}

void AdobeXMPCommon::IErrorProxy::~IErrorProxy(AdobeXMPCommon::IErrorProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCommon::IErrorProxy::GetNextError@<X0>(AdobeXMPCommon::IErrorProxy *this@<X0>, void *a2@<X8>)
{
  v6 = 0;
  v3 = (*(**(this + 1) + 256))(*(this + 1), &v6);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v6, exception);
  }

  return AdobeXMPCommon::IError_v1::MakeShared(v3, a2);
}

uint64_t AdobeXMPCommon::IErrorProxy::SetNextError@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = 0;
  v4 = *(a1 + 8);
  if (*a2)
  {
    v5 = (*(**a2 + 200))(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v4 + 264))(v4, v5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return AdobeXMPCommon::IError_v1::MakeShared(v6, a3);
}

uint64_t AdobeXMPCommon::IErrorProxy::GetInterfacePointer(AdobeXMPCommon::IErrorProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void virtual thunk toAdobeXMPCommon::IErrorProxy::~IErrorProxy(AdobeXMPCommon::IErrorProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t virtual thunk toAdobeXMPCommon::IErrorProxy::GetInterfacePointer(AdobeXMPCommon::IErrorProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + *(*this - 32) + 8);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void AdobeXMPCommon::IErrorProxy::~IErrorProxy(AdobeXMPCommon::IErrorProxy *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 304)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  v3 = *(this + 1) + *(**(this + 1) - 56);
  (*(*v3 + 8))(v3);
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v7 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  result = v3(v4, &v7);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v7, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1::eErrorDomain,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v7 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  result = v3(v4, &v7);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v7, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1::eErrorSeverity,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v7 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  LODWORD(result) = v3(v4, &v7);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v7, exception);
  }

  return result;
}

double AdobeXMPCommon::CallConstSafeFunctionReturningPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **)@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a2;
  v10 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v4 = *(*v6 + a2);
  }

  v7 = v4(v6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  AdobeXMPCommon::IUTF8String_v1::MakeShared(v7, &v11);
  result = *&v11;
  *a4 = v11;
  return result;
}

double AdobeXMPCommon::CallConstSafeFunctionReturningPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,unsigned long long>@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void *, uint64_t, AdobeXMPCommon::IError_v1 **)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v5 = a2;
  v11 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v7 + a2);
  }

  v8 = v5(v7, a4, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  AdobeXMPCommon::IUTF8String_v1::MakeShared(v8, &v12);
  result = *&v12;
  *a5 = v12;
  return result;
}

void std::shared_ptr<AdobeXMPCommon::IError_v1>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IErrorProxy,0>(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 304);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  operator new();
}

void sub_186179B34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<AdobeXMPCommon::IErrorProxy *,std::shared_ptr<AdobeXMPCommon::IError_v1>::__shared_ptr_default_delete<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IErrorProxy>,std::allocator<AdobeXMPCommon::IErrorProxy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IErrorProxy *,std::shared_ptr<AdobeXMPCommon::IError_v1>::__shared_ptr_default_delete<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IErrorProxy>,std::allocator<AdobeXMPCommon::IErrorProxy>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IErrorProxy *,std::shared_ptr<AdobeXMPCommon::IError_v1>::__shared_ptr_default_delete<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IErrorProxy>,std::allocator<AdobeXMPCommon::IErrorProxy>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *AdobeXMPCore_Int::IPath_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6350617468202020)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6350617468202020, a3, exception);
      }

      return (this + *(*this - 200));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6350617468202020, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IPath_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::IPath_I::registerNameSpacePrefixMap(AdobeXMPCore_Int::IPath_I *this, const AdobeXMPCore::INameSpacePrefixMap_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 200);
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(a2, a2, &v9);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::INameSpacePrefixMap_v1 const*,AdobeXMPCore::INameSpacePrefixMap_v1 const,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(a3, this + v5, AdobeXMPCore::IPath_v1::RegisterNameSpacePrefixMap, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IPath_I.cpp", 54, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_186179FC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::INameSpacePrefixMap_v1 const*,AdobeXMPCore::INameSpacePrefixMap_v1 const,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E5350724D6170, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617A148(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617A12CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IPath_I::serialize(AdobeXMPCore_Int::IPath_I *this, const AdobeXMPCore::INameSpacePrefixMap_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 200);
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(a2, a2, &v9);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(a3, this + v5, AdobeXMPCore::IPath_v1::Serialize, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IPath_I.cpp", 59, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_18617A3A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617A528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617A50CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::IPath_I::appendPathSegment(AdobeXMPCore_Int::IPath_I *this, const AdobeXMPCore::IPathSegment_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 200);
  AdobeXMPCore::IPathSegment_v1::MakeShared(a2, a2, &v7);
  v6 = v7;
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IPath_v1,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> const&>(a3, this + v5, AdobeXMPCore::IPath_v1::AppendPathSegment, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IPath_I.cpp", 64, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v6 + 1));
  }
}

void sub_18617A778(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IPath_v1,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPathSegment_v1 const*,AdobeXMPCore::IPathSegment_v1 const,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6350617468536567, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617AAB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617AA9CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}