int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 <= v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::deque<int>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<int *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<int *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<AnimCodec::ArithmeticContext>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      memset_pattern16(*(a1 + 8), &unk_21C2A4E10, 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    memset_pattern16(v11, &unk_21C2A4E10, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t AnimCodec::AnimEncoder::compress(uint64_t a1, AnimCodec *this, int *a3, uint64_t a4, uint64_t a5, int *a6, AnimCodec::StaticAdjacencyInformation *a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t *a12, _DWORD *a13)
{
  v13 = 2;
  if (a5 && a6 && a9)
  {
    v14 = a5;
    if (4 * a5 * a6 * a9 + 1024 >= a11 && HIDWORD(a11) == 0)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      memset(&__p, 0, sizeof(__p));
      v18 = AnimCodec::ComputeAdjacencyInfo(this, a3, a6, a7, a8, v21, a7);
      if (!v18)
      {
        v18 = AnimCodec::ComputeTraversalOrder(v21, &__p);
        if (!v18)
        {
          v18 = AnimCodec::AnimEncoder::compress(a1, a4, v21, &__p, v14, a9, a10, a11, a12, a13);
        }
      }

      v13 = v18;
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v21);
    }

    else
    {
      return 1;
    }
  }

  return v13;
}

uint64_t AnimCodec::AnimEncoder::compress(uint64_t a1, uint64_t a2, AnimCodec::StaticAdjacencyInformation *a3, void *a4, int a5, int a6, uint64_t a7, unint64_t a8, uint64_t *a9, _DWORD *a10)
{
  v15[0] = a7;
  v15[1] = a8;
  *a7 = 179426549;
  *(a7 + 8) = 1;
  *(a7 + 16) = a6;
  *(a7 + 20) = *a10;
  *(a7 + 21) = a10[1];
  *(a7 + 22) = 0;
  v16 = 24;
  result = AnimCodec::AnimEncoder::compress(a1, a2, a3, a4, a5, a6, v15);
  if (!result)
  {
    v12 = v16;
    *a9 = v16;
    if (v12 <= a8)
    {
      v13 = v15[0];
      *(v15[0] + 12) = v12;
      v14 = AnimCodec::ComputeCRC32(v13 + 8, (*a9 - 8));
      result = 0;
      *(v13 + 4) = v14;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AnimCodec::AnimEncoder::compress(uint64_t a1, uint64_t a2, AnimCodec::StaticAdjacencyInformation *a3, void *a4, int a5, int a6, uint64_t a7)
{
  v7 = a7;
  v12 = *(a7 + 16);
  v13 = *(a7 + 8) - v12;
  v14 = *a7 + v12;
  v80 = v13;
  v81 = v14;
  AnimCodec::ArithmeticEncoder::start(&v80);
  v15 = *(a3 + 4) - *(a3 + 3);
  if ((v15 >> 2) < 1)
  {
    return 2;
  }

  v60 = v15 >> 2;
  v79 = 0x8000;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  __p = 0;
  v68 = 0;
  v69 = 0;
  std::vector<AnimCodec::ArithmeticContext>::resize(&v76, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v73, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v70, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&__p, 31 * a5);
  memset(&v66, 0, sizeof(v66));
  memset(&v65, 0, sizeof(v65));
  memset(&v64, 0, sizeof(v64));
  std::vector<float>::resize(&v66, a5);
  std::vector<float>::resize(&v65, a5);
  std::vector<float>::resize(&v64, a5);
  if (a6 < 1)
  {
LABEL_41:
    v55 = 0;
    *(v7 + 16) += AnimCodec::ArithmeticEncoder::stop(&v80);
  }

  else
  {
    v16 = 0;
    v61 = (v15 >> 2) & 0x7FFFFFFF;
    v62 = a3;
    v17 = a5;
    v57 = a6;
    v58 = v7;
LABEL_4:
    v59 = v16;
    v18 = 0;
    v19 = 1;
LABEL_5:
    v20 = v19;
    v21 = *(*a4 + 4 * v18);
    if (a5 >= 1)
    {
      begin = v66.__begin_;
      v23 = v65.__begin_;
      v24 = (a2 + 4 * v21 * a5);
      v25 = v17;
      do
      {
        v26 = *v24++;
        *begin++ = v26;
        *v23++ = 0;
        --v25;
      }

      while (v25);
    }

    started = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(a3, v21);
    v28 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(a3, v21);
    if (v28 <= started)
    {
      goto LABEL_21;
    }

    v29 = 0;
    v30 = *(a3 + 6);
    v31 = v65.__begin_;
    v32 = started;
    while (1)
    {
      v33 = *(v30 + 4 * v32);
      if (v33 < 0)
      {
        goto LABEL_17;
      }

      if (v33 >= v60)
      {
        break;
      }

      if (a5 >= 1)
      {
        v34 = 4 * (v33 * a5);
        v35 = v17;
        v36 = v31;
        do
        {
          *v36++ += *(a2 + v34);
          v34 += 4;
          --v35;
        }

        while (v35);
      }

      ++v29;
      ++v32;
      if (v29 == v28 - started)
      {
        v29 = v28 - started;
LABEL_17:
        if (v29 >= 2)
        {
          if (a5 >= 1)
          {
            v37 = v65.__begin_;
            v38 = v17;
            do
            {
              *v37 = (*v37 + (v29 >> 1)) / v29;
              ++v37;
              --v38;
            }

            while (v38);
            goto LABEL_21;
          }

LABEL_25:
          v19 = 1;
          goto LABEL_26;
        }

LABEL_21:
        if (a5 < 1)
        {
          goto LABEL_25;
        }

        v39 = v66.__begin_;
        v40 = v65.__begin_;
        v19 = 1;
        v41 = v17;
        v42 = v64.__begin_;
        do
        {
          v44 = *v39++;
          v43 = v44;
          v45 = *v40++;
          v46 = v43 - v45;
          *v42++ = v46;
          v19 &= v46 == 0;
          --v41;
        }

        while (v41);
LABEL_26:
        AnimCodec::ArithmeticEncoder::encode(&v80, (v20 ^ v19) & 1, &v79);
        if ((v19 & 1) == 0 && a5 >= 1)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = v64.__begin_[v48];
            v51 = v70 + v47;
            if (v50)
            {
              AnimCodec::ArithmeticEncoder::encode(&v80, 1, v51);
              v52 = v76 + v47;
              if ((v50 & 0x80000000) != 0)
              {
                AnimCodec::ArithmeticEncoder::encode(&v80, 0, v52);
                v50 = -v50;
              }

              else
              {
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, v52);
              }

              if (v50 > 0x1F)
              {
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 4);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 12);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 28);
                AnimCodec::ArithmeticEncoder::encode(&v80, 1, __p + v49 + 60);
                AnimCodec::ArithmeticEncoder::encodeExpGolomb(&v80, v50 - 32, 6, v73 + v47);
                goto LABEL_38;
              }

              v54 = v50 - 1;
              AnimCodec::ArithmeticEncoder::encode(&v80, (v50 - 1) & 1, __p + v49);
              AnimCodec::ArithmeticEncoder::encode(&v80, (v54 >> 1) & 1, __p + 2 * (v54 & 1) + v49 + 2);
              AnimCodec::ArithmeticEncoder::encode(&v80, (v54 >> 2) & 1, __p + 2 * (v54 & 3) + v49 + 6);
              AnimCodec::ArithmeticEncoder::encode(&v80, (v54 >> 3) & 1, __p + 2 * (v54 & 7) + v49 + 14);
              v53 = (v50 - 1) >> 4;
              v51 = __p + 2 * ((v50 - 1) & 0xF) + v49 + 30;
            }

            else
            {
              v53 = 0;
            }

            AnimCodec::ArithmeticEncoder::encode(&v80, v53, v51);
LABEL_38:
            v49 += 62;
            v47 += 2;
            ++v48;
          }

          while (62 * a5 != v49);
        }

        ++v18;
        a3 = v62;
        v17 = a5;
        if (v18 == v61)
        {
          v7 = v58;
          v16 = v59 + 1;
          a2 += 4 * v60 * a5;
          if (v59 + 1 == v57)
          {
            goto LABEL_41;
          }

          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }

    v55 = 2;
  }

  if (v64.__begin_)
  {
    v64.__end_ = v64.__begin_;
    operator delete(v64.__begin_);
  }

  if (v65.__begin_)
  {
    v65.__end_ = v65.__begin_;
    operator delete(v65.__begin_);
  }

  if (v66.__begin_)
  {
    v66.__end_ = v66.__begin_;
    operator delete(v66.__begin_);
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  return v55;
}

uint64_t AnimCodec::ArithmeticEncoder::encode(uint64_t result, int a2, _WORD *a3)
{
  v3 = *a3;
  v4 = *(result + 28);
  v5 = (v4 * v3) >> 16;
  if (a2)
  {
    *(result + 24) += v5;
    v5 = v4 - v5;
    v6 = v3 - *(result + 2 * (v3 >> 8) + 48);
  }

  else
  {
    v6 = *(result + 2 * (~v3 >> 8) + 48) + v3;
  }

  *(result + 28) = v5;
  *a3 = v6;
  if (v5 <= 0x4000)
  {
    v7 = *(result + 24);
    v8 = *(result + 40);
    while (1)
    {
      v7 *= 2;
      v5 *= 2;
      *(result + 24) = v7;
      *(result + 28) = v5;
      *(result + 40) = ++v8;
      if (v8 == 8)
      {
        break;
      }

LABEL_17:
      if (v5 > 0x4000)
      {
        return result;
      }
    }

    if (HIBYTE(v7))
    {
      v10 = *(result + 8) + *(result + 16);
      ++*(v10 - 1);
      v11 = *(result + 16);
      if (*(result + 44))
      {
        do
        {
          *(*(result + 8) + v11) = 0;
          v12 = *(result + 44);
          v11 = *(result + 16) + 1;
          *(result + 16) = v11;
          *(result + 44) = --v12;
        }

        while (v12);
      }
    }

    else
    {
      v9 = *(result + 44);
      if ((v7 + v5) >> 24)
      {
        *(result + 44) = v9 + 1;
LABEL_16:
        v8 = 0;
        v7 = v7;
        *(result + 24) = v7;
        *(result + 40) = 0;
        goto LABEL_17;
      }

      v11 = *(result + 16);
      if (v9)
      {
        do
        {
          *(*(result + 8) + v11) = -1;
          v13 = *(result + 44);
          v11 = *(result + 16) + 1;
          *(result + 16) = v11;
          *(result + 44) = --v13;
        }

        while (v13);
      }
    }

    *(*(result + 8) + v11) = *(result + 26);
    ++*(result + 16);
    LOWORD(v7) = *(result + 24);
    v5 = *(result + 28);
    goto LABEL_16;
  }

  return result;
}

uint64_t AnimCodec::ArithmeticEncoder::encodeExpGolomb(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  v5 = a3;
  v6 = a2;
  for (i = 1 << a3; v6 >= 1 << v5; i = 1 << v5)
  {
    AnimCodec::ArithmeticEncoder::encode(a1, 1, a4);
    ++v5;
    v6 -= i;
  }

  result = AnimCodec::ArithmeticEncoder::encode(a1, 0, a4);
  if (v5)
  {
    v10 = v5 - 1;
    do
    {
      v11 = 0x8000;
      result = AnimCodec::ArithmeticEncoder::encode(a1, (v6 >> v10--) & 1, &v11);
    }

    while (v10 != -1);
  }

  return result;
}

unint64_t AnimCodec::ArithmeticEncoder::stop(AnimCodec::ArithmeticEncoder *this)
{
  v1 = 0;
  v2 = *(this + 10);
  v3 = *(this + 6);
  do
  {
    if ((v3 | ((2 << v1) - 1)) > *(this + 7) - 1)
    {
      break;
    }

    ++v1;
  }

  while (v1 != 16);
  v4 = v3 | ~(-1 << v1);
  *(this + 6) = v4;
  if (v2 <= 7)
  {
    v5 = v2 - 8;
    do
    {
      v4 = (2 * v4) | 1;
    }

    while (!__CFADD__(v5++, 1));
    *(this + 6) = v4;
    *(this + 10) = 8;
  }

  if (HIBYTE(v4))
  {
    v7 = *(this + 1) + *(this + 2);
    ++*(v7 - 1);
    if (*(this + 11))
    {
      v8 = *(this + 2);
      do
      {
        *(*(this + 1) + v8) = 0;
        v9 = *(this + 11);
        v8 = *(this + 2) + 1;
        *(this + 2) = v8;
        *(this + 11) = --v9;
      }

      while (v9);
    }
  }

  else if (*(this + 11))
  {
    v10 = *(this + 2);
    do
    {
      *(*(this + 1) + v10) = -1;
      v11 = *(this + 11);
      v10 = *(this + 2) + 1;
      *(this + 2) = v10;
      *(this + 11) = --v11;
    }

    while (v11);
  }

  *(*(this + 1) + *(this + 2)) = *(this + 13);
  v12 = *(this + 1);
  v13 = *(this + 2) + 1;
  *(this + 2) = v13;
  *(v12 + v13) = BYTE1(*(this + 6));
  v14 = *(this + 2) + 1;
  *(this + 2) = v14;
  if (v2 >= 1)
  {
    *(*(this + 1) + v14) = *(this + 6);
    v14 = *(this + 2) + 1;
    *(this + 2) = v14;
  }

  if (v14 >= 2)
  {
    v15 = *(this + 1) - 1;
    while (*(v15 + v14) == 255)
    {
      *(this + 2) = --v14;
      if (v14 <= 1)
      {
        return 1;
      }
    }
  }

  return v14;
}

uint64_t AnimCodec::ArithmeticEncoder::start(uint64_t this)
{
  v1 = 0;
  *&v2 = 0xFFFF00000000;
  *(&v2 + 1) = 0xFFFF00000000;
  *(this + 24) = v2;
  *(this + 16) = 0;
  *(this + 40) = 0;
  v3 = 0x217u;
  do
  {
    *(this + v1 * 2 + 48) = word_21C2A4E28[v1];
    *(this + v3 * 2) = word_21C2A4E28[v3 - 280];
    --v3;
    ++v1;
  }

  while (v1 != 256);
  return this;
}

void *AnimCodec::ArithmeticDecoder::start(AnimCodec::ArithmeticDecoder *this)
{
  *&v1 = 0xFFFF000000000000;
  *(&v1 + 1) = 0xFFFF000000000000;
  *(this + 24) = v1;
  *(this + 5) = 16;
  v2 = *this;
  if (*this < 1)
  {
    v4 = -16777216;
    goto LABEL_7;
  }

  v3 = *(this + 1);
  v4 = *v3 << 24;
  *(this + 8) = v4;
  if (v2 == 1)
  {
LABEL_7:
    v5 = v4 | 0xFF0000;
    goto LABEL_8;
  }

  v5 = v4 | (v3[1] << 16);
  *(this + 8) = v5;
  if (v2 <= 2)
  {
LABEL_8:
    v6 = v5 | 0xFF00;
    goto LABEL_9;
  }

  v6 = v5 | (v3[2] << 8);
  *(this + 8) = v6;
  if (v2 == 3)
  {
LABEL_9:
    v7 = 255;
    goto LABEL_10;
  }

  v7 = v3[3];
LABEL_10:
  *(this + 8) = v7 | v6;
  *(this + 2) = 3;
  return memcpy(this + 48, &unk_21C2A5028, 0x400uLL);
}

uint64_t AnimCodec::ComputeCRC32(uint64_t this, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this;
  LODWORD(this) = -1;
  do
  {
    v3 = *v2++;
    this = (dword_21C2A5428[v3 ^ BYTE3(this)] ^ (this << 8));
    --a2;
  }

  while (a2);
  return this;
}

void C3DShapeMeshCreationInitProfile_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "profilePath.points";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DSceneSourceGetFileFormat_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: unabled to create a read stream at %@", &v2, 0xCu);
}

void C3DSceneSourceCreateSceneAtIndex_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to load %@ - unknown file format.", &v3, 0xCu);
}

void C3D::CopyTextureComputePass::execute(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. renderStartIndex is not taken into account in this pass", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Type mismatch", a5, a6, a7, a8, 2u);
}

void SCNMTLComputeCommandEncoder::_bindPendingTextures(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "firstIndexOfRange == UINT_MAX";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __CopyParticles_cold_1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "dstParticles != srcParticles";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void __CopyParticles_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "invLifeSpanArray";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DParticleSystemInstancePushRendererElements_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "sequence->count + count <= sequence->allocatedCount";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Not enough space allocated", a1);
}

void C3DParticleSystemInstancePushRendererElements_cold_2(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "sequence->count + count <= sequence->allocatedCount";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not enough space allocated", &v3);
}

void C3DGetColorMatchingComputeKernelParameters_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DGetColorMatchingComputeKernelParameters_cold_2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DGetColorMatchingComputeKernelParameters_cold_3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __C3DGetColorMatchingComputeKernelParameters_block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "trcOther == trc";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unsupported conversion info - different TRCs for input components", buf, 0xCu);
}

void _C3DGeometryCFFinalize_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "!geometry->_trackedNodes || !CFSetGetCount(geometry->_trackedNodes)";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. No node should be tracked anymore by the geometry %@", &v2, 0x16u);
}

void _loadBindInfos_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Could not deserialize the property %@ in the serialized effect %@", &v3, 0x16u);
}

void loadMDLAssetWithURL_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"MDLAssetLoadingOption getMDLAssetLoadingOptionDefaultUSDColorSpace()") description:{@"SCNModelIOPrivate.mm", 42, @"%s", dlerror()}];
  __break(1u);
}

void anonymous namespace::add_corners(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "positionAttribute";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void ___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *ModelIOLibrary()") description:{@"SCNModelIOPrivate.mm", 41, @"%s", *a1}];
  __break(1u);
}

void C3D::SSAORaytracePass::execute(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No camera set for tone mapping pass", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No point of view set for tone mapping pass", v1, 2u);
}

void C3DMeshElementGetContent_cold_1(unsigned __int8 a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "channel >= 0 && channel < channelCount";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Mesh element has %d channels but channel %d was requested", &v3, 0x18u);
}

void __readIndexInBuffer_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "false";
  v4 = 2080;
  v5 = "__readIndexInBuffer";
  v6 = 2048;
  v7 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. %s - unsupported index size (%ld)", &v2, 0x20u);
}

void C3DIndicesContentArrayEnumeratePrimitives_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unexpected vertex count", buf, 2u);
}

void _C3DCreateFlattenedGeometryFromNodeHierarchy_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "componentsCount!=0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. __AllocateNewSource - componentsCount is zero", a1);
}

void __CreateAndDispatchRendererElements_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "element";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void _finalizeSplit_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "oldIndexToNewIndex[sourceIndex]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. inconsistency in _finalizeSplit", a1);
}

void _finalizeSplit_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "w == dataLength";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _createSubSource - inconsistent data length", a1);
}

void C3DMeshCreateByMergingMeshes_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Unsupported element type in C3DMeshCreateByMergingMeshes", a1);
}

void C3DMeshSubdivide_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DMeshSubdivide inconsistency", buf, 2u);
}

void C3DMeshSubdivide_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "D!=-1 && E!=-1 && F !=-1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. inconsistency (2) in C3DMeshSubdivide", a1);
}

void __C3DWarmupGeometryVRAMResourcesForEngineContext_block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: WARNING: NULL data in mesh source (warming geometry)", buf, 2u);
}

void C3DMeshUnifyNormals_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: target mesh has a different number of vertices (%d != %d)", v3, 0xEu);
}

void C3DAdjustZRangeOfProjectionInfos_cold_2(os_log_t log, float a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "shortestPosition <= farthestPosition";
  v5 = 2048;
  v6 = a3;
  v7 = 2048;
  v8 = a2;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. We badly computed zFar (%f) and zNear (%f) in this scene", &v3, 0x20u);
}

void __MergeRendererElementsSharingSameMaterial_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "material == elt->material";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. different material!!!!", a1);
}

void C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1_0(unsigned __int8 *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid bytes per index (%d)", v3, 8u);
}

void __ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "ctx->_currentIndicesContent.indicesOffset == 0 && ctx->_currentIndicesContent.indicesStride == 1";
  v3 = 2080;
  v4 = "__ProcessTriangleRange_Mask_Ind16VrtFloat3CullBack";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Update %s to support mesh element channels", &v1, 0x16u);
}

void __ProcessTriangleRange_Ind16VrtFloat3CullBack_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "ctx->_currentIndicesContent.indicesOffset == 0 && ctx->_currentIndicesContent.indicesStride == 1";
  v3 = 2080;
  v4 = "__ProcessTriangleRange_Ind16VrtFloat3CullBack";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Update %s to support mesh element channels", &v1, 0x16u);
}

void SCNMTLComputeCommandEncoder::endEncoding(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "_encoder != nil";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "_ptr != NULL";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Dereferencing null pointer", &v3);
}

void C3DNodeIterateTree_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "node";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DNodeIterateTree : null node", &v1, 0xCu);
}

void C3DNodeIterateTree_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "callbacks";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DNodeIterateTree : no callbacks", &v1, 0xCu);
}

void C3DCreateCopy_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: object %@ doesn't conform to the copying protocol", &v2, 0xCu);
}

void C3DRemoveSceneRef_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: invalid ref count for entity %@", &v2, 0xCu);
}

void C3D::ShadowMapPass::ShadowMapPass(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ShadowMapPass::setup() - Light missing from light node", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. ShadowMapPass::setup() - Light doesn't cast shadow", a5, a6, a7, a8, 2u);
}

void _createConstraintFromDefinition(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "jointDef->bodyA";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void SCNMTLComputeCommandEncoder::dispatchOnGrid1D(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_computePipelineState";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void SCNMTLBlitCommandEncoder::beginEncoding(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void C3D::FinalPass::setup(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void C3D::FinalPass::_createCustomTechniquePassesIfNeeded(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void C3D::FinalPass::_createCustomTechniquePassesIfNeeded(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Error: Unsupported draw instruction kC3DFXDrawMetalCustom", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Error: Unsupported draw instruction kC3DFXDrawGeometry", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Error: C3DEngineContextRenderTechnique - unknown draw instruction", v4);
}

void C3D::FinalPass::_setupTechniquePassCommonData(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Unreachable code: Invalid render buffer type for attachment type", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Unreachable code: Invalid render buffer type for attachment id", v4);
}

{
  OUTLINED_FUNCTION_0_3(a1, a2);
  OUTLINED_FUNCTION_2_1(&dword_21BEF7000, v2, v3, "Unreachable code: Invalid semantic for attachment id", v4);
}

void C3D::FinalPass::_setupTechniquePassCommonData(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "attachmentID < fboDesc->colorsDescriptionCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. attachementID out of bounds", a1);
}

{
  *a1 = 136315138;
  *a2 = "inputIndex < passOutput.size()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Render target not found", a1);
}

{
  *a1 = 136315138;
  *a2 = "param.name";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DAnimationClusterCreateWithAnimationGroup_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "!isnan(t)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. bad time", buf, 0xCu);
}

void _getAnimations_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "CFGetTypeID(animation) == C3DKeyframedAnimationGetTypeID()";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unexpected animation class", buf, 0xCu);
}

void C3DCullingSystemUpdateBoundingBox_cold_2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: invalid spatial handle (%d) given", v2, 8u);
}

void C3DMeshSourceCreateDeltaSource_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Morph: target vertex count do not match base vertex count (%d != %d)", v3, 0xEu);
}

void C3DMeshSourceCreateCopyWithComponentsBaseType_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DMeshSourceCreateCopyWithComponentsBaseType: unsupported type", buf, 2u);
}

void C3DMeshSourceCreateCopyWithBaseType_cold_1(__int16 a1, __int16 a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = C3DBaseTypeStringDescription(a1);
  v7 = 2112;
  v8 = C3DBaseTypeStringDescription(a2);
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Conversion from %@ to %@ to is not supported", &v5, 0x16u);
}

void _C3DMeshSourceInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DMeshSourceInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[]()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __CreateProbeArrayResourceIfNeeded_block_invoke_cold_1(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "C3DLightGetProbeType(light) == kC3DLightProbeTypeRadiance";
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __CreateProbeArrayResourceIfNeeded_block_invoke_cold_2(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "probeIndex != (uint32_t)kProbeSliceIndexInvalid";
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _C3DAnimationManagerApplyStack_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "manager";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void _C3DAnimationManagerApplyStack_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "stackItem->_modelValueItem";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DAnimationManagerAddAnimationPlayerForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to assign animation with keypath %@", &v3, 0xCu);
}

void __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: C3DAnimationManagerRemoveAllAnimationsForObject - null animation for key %@", &v2, 0xCu);
}

void C3DAnimationManagerAddBinding_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  v3 = v0;
  _os_log_error_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_ERROR, "Error: Binding: Unable to resolve destination keypath: %@(%@)", v2, 0x16u);
}

void C3DAnimationManagerAddBinding_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  C3DEntityGetName(a1);
  OUTLINED_FUNCTION_1_3();
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Binding: Unable to resolve destination keypath: %@(%@)", v5, 0x16u);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_15(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: _C3DKeyframeControllerFlattenKeyframeData unexpected value", buf, 2u);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_16(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "CFGetTypeID(value) == CFNumberGetTypeID()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _C3DKeyframeControllerFlattenKeyframeData bad value type", a1);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_19(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "CFGetTypeID(value) == CFBooleanGetTypeID()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _C3DKeyframeControllerFlattenKeyframeData bad value type", a1);
}

void _C3DKeyframeControllerInitWithPropertyList_cold_22(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: _C3DKeyframeControllerCreateKeyframeArray unknown key type", buf, 2u);
}

void C3D::RenderGraph::addDependency()
{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 244, "_renderGraph->size() > n1");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 245, "_renderGraph->size() > n2");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 250, "n1Port == kPartialDependencyPort || node1.pass->descriptor().inputCount() > n1Port");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 251, "n2Port == kPartialDependencyPort || node2.pass->descriptor().outputCount() > n2Port");
}

{
  OUTLINED_FUNCTION_8_0();
  (*v0)();
  OUTLINED_FUNCTION_8_0();
  (*v1)();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Can't add dependency %s on %s\n", v4, v5, v6, v7, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 277, "b->identifier() != kInvalidPass");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 276, "a->identifier() != kInvalidPass");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 283, "(*_renderGraph).size() > n1");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 284, "(*_renderGraph).size() > n2");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 312, "b->identifier() != kInvalidPass");
}

{
  __assert_rtn("addDependency", "C3DRenderGraph.mm", 311, "a->identifier() != kInvalidPass");
}

void C3D::RenderGraph::removeInvalidPasses(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: Pass %s is not linked to the rendering graph and will be ignored check it's input/output");
}

void C3D::RenderGraph::sort()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_8_0();
  (*v0)();
  OUTLINED_FUNCTION_8_0();
  (*v1)();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: ** Cycle detected ** involving pass %s and input pass %s", v4, v5, v6, v7, 2u);
}

{
  __assert_rtn("sort", "C3DRenderGraph.mm", 1968, "_renderGraph->size() < 32767");
}

void C3D::RenderGraph::resolvePartialCompatibility(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: ReadWrite pass %s can't be the present on first stage since it will load it's input.");
}

void C3D::RenderGraph::resolvePartialCompatibility(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid pass", a1);
}

{
  *a1 = 136315138;
  *a2 = "strlen(inputParam.name) != 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Can't dispatch input to output with multiple output without a named input.", a1);
}

{
  *a1 = 136315138;
  *a2 = "inputParam.type == outputParam->type";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Can't dispatchToOutput to output of different type", a1);
}

void C3D::RenderGraph::validate(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: ReadWrite pass %s must have compatible input/output.");
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: Invalid output parameter for pass %s");
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1, a2);
  v4 = (*v3)(v2);
  OUTLINED_FUNCTION_10_0(v4, 4.8149e-34);
  OUTLINED_FUNCTION_7(&dword_21BEF7000, v5, v6, "Error: Invalid input parameter for pass %s");
}

void C3D::RenderGraph::validate(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Unresolved dependency", a1);
}

{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid pass parameter", a1);
}

{
  *a1 = 136315138;
  *a2 = "false";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Incompatible passes", a1);
}

void C3D::RenderGraph::allocateResources(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "node.resource().outputCount() == node.descriptor().outputCount()";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Pass output resources should be allocated", a1);
}

{
  *a1 = 136315138;
  *a2 = "resDestination == outputRes";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. node output resource should match destination node input resource", a1);
}

{
  *a1 = 136315138;
  *a2 = "inputRes";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "res->usedCount >= 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid used count for pass internal resource", a1);
}

{
  *a1 = 136315138;
  *a2 = "res->poolSubBuffer.buffer";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid resource, buffer is NULL", a1);
}

{
  *a1 = 136315138;
  *a2 = "res->texture";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid resource, texture is NULL", a1);
}

void C3D::RenderGraph::allocateResources()
{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: ", v2, v3, v4, v5, v6);
}

void C3D::__setupRenderEncoder()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: Multi-viewport rendering is lacking a multiple output vertex streams generator", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(&dword_21BEF7000, v0, v1, "Unreachable code: Layered rendering is lacking a multiple output vertex streams generator", v2, v3, v4, v5, v6);
}

void C3D::__setupRenderEncoder(uint64_t a1, unsigned __int16 *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  v6 = (*v5)();
  v7 = *a2;
  v8 = 136315650;
  v9 = "simd_all(viewport != -1)";
  v10 = 2080;
  v11 = v6;
  v12 = 1024;
  v13 = v7;
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s has specific viewport but it's not specified for index : %d", &v8, 0x1Cu);
}

void C3D::__renderSlice(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 1;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid buffer type: %hhu", buf, 8u);
}

void C3D::__renderSlice(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "output.textureDesc.sampleCount != 1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid sample count", a1);
}

{
  *a1 = 136315138;
  *a2 = "nextInput.textureDesc.sampleCount != 1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Invalid sample count", a1);
}

void SCNMTLRenderCommandEncoder::useCommandEncoder(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void C3D::RenderGraph::execute(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "outputResource->type == output.type";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Mismatch between resource type and resource description type, forgot useInternally ?", a1);
}

{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3D::RenderGraph::createResource(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Texture pool allocator failed, texture is NULL", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only color attachement can use drawable texture", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Texture pool allocator failed, texture is NULL", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Depth resolved texture must have sample count 0 or 1", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Depth resolve texture type must not be multisampled", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Buffer pool allocator failed, buffer is NULL", a5, a6, a7, a8, 2u);
}

void C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. NULL allocator", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Array capacity inconsistency", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Array capacity inconsistency", a5, a6, a7, a8, 2u);
}

void C3D::RenderGraph::logDependencyInputMismatch()
{
  OUTLINED_FUNCTION_9_0();
  C3D::ResourceTypeDescription(*v1);
  C3D::ResourceTypeDescription(*v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Types mismatch %s <-> %s", v4, v5, v6, v7, 2u);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLTextureTypeToString(v1);
  SCNMTLTextureTypeToString(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture type mismatch %@ <-> %@", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLTextureTypeToString(v1);
  SCNMTLTextureTypeToString(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture type mismatch %@ <-> %@", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLStorageModeToString(*v1);
  SCNMTLStorageModeToString(*v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture storage mode mismatch %@ <-> %@", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLCPUCacheModeToString(*v1);
  SCNMTLCPUCacheModeToString(*v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture CPU cache mode mismatch %@ <-> %@", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_9_0();
  SCNMTLPixelFormatToString(*v1);
  SCNMTLPixelFormatToString(*v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_0(&dword_21BEF7000, v2, v3, "Error: Texture pixel format mismatch %@ <-> %@", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void VMAllocateChunk()
{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 158, "!chunk->next");
}

{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 171, "chunk->data");
}

{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 159, "n");
}

{
  __assert_rtn("VMAllocateChunk", "C3DScratchAllocator.cpp", 157, "chunk");
}

void VMAllocateChunk(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: vm_allocate failed allocating %zu bytes", &v2, 0xCu);
}

void _fillVertexDescriptor()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _fillVertexDescriptor(__int16 a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = C3DBaseTypeStringDescription(a1);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: format %@ not convertible to MTLVertexFormat", &v3, 0xCu);
}

void _C3DTimingFunctionInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DTimingFunctionInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DFXTechniqueGetPassAtIndex_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 136315650;
  v5 = "index < technique->_count";
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DFXTechniqueGetPassAtIndex index %ld is out of bounds (%ld)", &v4, 0x20u);
}

void C3DFXTechniqueDeclareSymbol_cold_4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CFDictionaryGetValue(technique->_parameterStorage->parameters, symbolName) == 0";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Cannot declare twice the same symbol (%@)", &v2, 0x16u);
}

void C3DFXTechniqueCreateBySequencingTechniques_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "sourcePass->_inputCount == dstPass->_inputCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. unexpected pass inputs in merge", a1);
}

void C3DFXTechniqueCreateBySequencingTechniques_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "!dstPass->_customInitializeBlock";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _customInitializeBlock not nil", a1);
}

void C3DFXTechniqueCreateBySequencingTechniques_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "!dstPass->_customExecuteBlock";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _customExecuteBlock not nil", a1);
}

void C3DAnimationStackAppendAnimationNode_cold_6(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "animationCluster->_keyframes->_valueSize[index] == C3DSizeOfBaseType(target->_baseType)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unexpected size", buf, 0xCu);
}

void _applyCIFilter_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "texture";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void _applyCIFilter_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "image";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void __fillMeshElementInfo(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unsupported indices stride", &v1, 0xCu);
}

void C3DCreateImageWithTexture_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 pixelFormat];
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Unexpected pixel format %lu", &v3, 0xCu);
}

void SCNSampleCountForAntialiasingMode_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unexpected antialiasing mode (%d)", v2, 8u);
}

void C3DImageGetSize_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCopyCGImage_cold_2(CGImageSource *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 138412802;
  v6 = a1;
  v7 = 1024;
  StatusAtIndex = CGImageSourceGetStatusAtIndex(a1, 0);
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Failed to create image from image source %@ (status: %d) (%@)", &v5, 0x1Cu);
}

void C3DImageCopyCGImage_cold_3(CGImageSource *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  StatusAtIndex = CGImageSourceGetStatusAtIndex(a1, 0);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to create image from image source %@ (status: %d)", &v3, 0x12u);
}

void C3DImageCopyCGImage_cold_4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCreateVerticalStripCubemapWithImage_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __ImageResize_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DImageCopyUSDZEmbeddedData_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCopyUSDZEmbeddedData_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageCacheBitmap_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DImageEnumerateCubeMapFacePixelBuffers_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Cannot support rotation layout for compressed texture", buf, 2u);
}

void C3DImageEnumerateCubeMapFacePixelBuffers_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DImageEnumerateTexture3DSlicePixelBuffers_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DImageInitWithPropertyList_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DImageCopyPropertyList_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SCNMTLBlitCommandEncoder::copyTextureToTexture(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. slice count must match to copy", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. width must match to copy", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. height must match to copy", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. depth must match to copy", a5, a6, a7, a8, 2u);
}

void _C3DTextureSamplerInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DTextureSamplerInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DBezierCurveGeometryCreateCopy_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "object";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3D::FloorPass::setup(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "floor";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void btMatrix3x3::getIdentity()
{
  {
    btMatrix3x3::getIdentity(void)::identityMatrix = xmmword_21C27F910;
    unk_27CDD67A0 = xmmword_21C27F8C0;
    xmmword_27CDD67B0 = xmmword_21C27F600;
  }
}

void _createKTXDataRepresentation_cold_1(void *a1)
{
  SCNMTLTextureTypeToString([a1 textureType]);
  [a1 textureType];
  OUTLINED_FUNCTION_0_8(&dword_21BEF7000, v2, v3, "Error: Unsupported texture type %@ (%u) in KTX encoder", v4, v5, v6, v7, 2u);
}

void C3DRendererElementStateBindProgramRendererElement_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "CFArrayGetCount(shaderModifiers)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unoptimal : don't keep empty arrays", buf, 0xCu);
}

void __FillProgramObjectLocations_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "nextFreeIndex < bufferCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. fillProgramLocation: index out of bounds", buf, 0xCu);
}

void __FillProgramObjectLocations_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: __FillProgramObjectLocations uniform index out of bounds", buf, 2u);
}

void C3DRendererContextCreateTextureWithImage_cold_8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  URL = C3DImageGetURL(a1);
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Cannot load image %@.", &v3, 0xCu);
}

void C3DRendererContextSetLight_cold_2(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "lightIndex < C3D_MAX_LIGHTS";
  v4 = 1024;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Wrong light index %d", &v2, 0x12u);
}

void __SetupCommonProfileEffectProperty_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __SetupCommonProfileEffectProperty_cold_3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __SetupCommonProfileEffectProperty_cold_4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DRendererContextBindMeshElement_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DRendererContextSetGLContext_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "context";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DParticleManagerComputeTechniqueForSystem_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: ParticleSystem shaders missing : %@", &v2, 0xCu);
}

void _willExecuteParticleSystemPass_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "cullingContext";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void _executeParticleSystemPass_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CFGetTypeID(instance) == C3DParticleSystemInstanceGetTypeID()";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. ParticleSystemInstance: wrong instance stored in rendererElement", &v1, 0xCu);
}

void C3DConvertBatch_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "dst.count == src.count";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. src and dst count must be equal", &v1, 0xCu);
}

void C3DConvertGetReadToFloat4Function_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "srcType < kC3DBaseTypeCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. unknown type", &v1, 0xCu);
}

void C3DFramebufferDescriptionSetSampleCount_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "description->colorsDescription[i].renderToTexture == false";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. can't render to texture if multisampled", buf, 0xCu);
}

void _processRendererElement(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Hidden nodes should have been removed from the pipeline already", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Fully transparents objects should have been removed from the pipeline already", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void _processRendererElement(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: C3DEngineContextRenderTechnique - unknown draw instruction", a1);
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "vertices.type == kC3DBaseTypeVector3";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed.  - Only vector3 type is supported.", buf, 0xCu);
}

void ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "positions.type == kC3DBaseTypeVector3";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed.  - Only vector3 type is supported.", buf, 0xCu);
}

void C3DResourceManagerMakeImageResident_cold_4(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Failed to load texture named %@ : %@", &v4, 0x16u);
}

void __HandleVRAMResourcesRemovalFromCommands_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "textureProxy";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DEnginePipelineSyncNodeAttribute_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported node attribute '%@'", &v2, 0xCu);
}

void C3DRendererContextSetTypedBytesUniformAtLocation_cold_3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: C3DRendererContextSetValueUniformAtLocation not implemented for this type (%d) yet", v2, 8u);
}

void _SCNStartCollectingPerformanceStatisticsForPid_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0_9(v0, v1, &dword_21BEF7000);
    __cxa_guard_release(&_MergedGlobals);
  }
}

void _SCNStopCollectingPerformanceStatisticsForPid_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_0_9(v0, v1, &dword_21BEF7000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void SCNSetShaderCollectionEnabled_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unable to create the shader cache folder at %@ (%@)", &v4, 0x16u);
}

void _C3DInitNumberArrayWithPropertyList_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DInitNumberArrayWithPropertyList_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DInitNumberArrayWithPropertyList_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeForCFNumberType_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertToPlatformIndependentData_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DConvertToPlatformIndependentData - archiving pointers makes no sense", buf, 2u);
}

void C3DConvertToPlatformIndependentData_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertFromPlatformIndependentData_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertFromPlatformIndependentData_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DConvertFromPlatformIndependentData_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeGetComponentType_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeGetCompoundType_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_10()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeGetCompoundType_cold_11()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3DBaseTypeFromDescription_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DBaseTypeFromDescription_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DAddBaseType_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DAddBaseType_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSubBaseType_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSubBaseType_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DCreateCStringFromStringWithEncoding_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DStringNamed_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DDictionaryNamed_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DJsonNamed_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DDataFromMTLBuffer_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DDeduceSphericalHarmonicsOrderFromDataLength_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1_2();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Spherical Harmonics Data seems malformed: order(%d) !=> length(%zu)", v2, 0x1Cu);
}

void _computeNeighbourIndexes_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "tetrahedronIndexes";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _computeNeighbourIndexes - missing tetrahedron", a1);
}

void _computeNeighbourIndexes_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "_tetrahedrons[tetraderonIndex].neighbourIndexes[otherTetraderonFaceIndex] == -1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. overwrite a neighbour index", a1);
}

void C3DLightProbesBeginQueries_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "vCount <=2";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. _faceHasEdgeSharedWithMoreThanTwoOtherOpenFace", a1);
}

void C3DLightProbesBeginQueries_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: tetrahedrisation: index out of bounds", buf, 2u);
}

void C3DLightProbesBeginQueries_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "validTetraCount <= (uint32_t)indexToRecycle";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. validTetraCount > indexToRecycle", a1);
}

void C3DLightProbesBeginQueries_cold_5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "tetrahedronIsValid[indexValid]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. will make an invalid tetrahedron valid", a1);
}

void _C3DEffectCommonProfileCopyPropertyList_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "key";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

void _C3DEffectCommonProfileCopyPropertyList_cold_6(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "imageID < INT_MAX";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Too many objects", a1);
}

void vmesh::InterpolateNormals()
{
  __assert_rtn("InterpolateNormals", "VMesh.cpp", 495, "neighbor.a >= 0 && neighbor.a < int32_t(normals.size())");
}

{
  __assert_rtn("InterpolateNormals", "VMesh.cpp", 496, "neighbor.b >= 0 && neighbor.b < int32_t(normals.size())");
}

void vmesh::TriangleMesh::loadBaseMeshFromVectors()
{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 515, "uvVec.size() == pointCountInVec");
}

{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 520, "normalVec.size() == pointCountInVec");
}

{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 532, "(idxVec.size() % 3) == 0");
}

{
  __assert_rtn("loadBaseMeshFromVectors", "VMesh.cpp", 512, "pointVec.size() > 0");
}

void __C3DSubdivisionOsdGPURefine(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error.", a5, a6, a7, a8, 2u);
}

void __C3DSubdivisionOsdGPUCreateSynchronizeCoarsePositionsPipeline(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Internal consistency error.", a5, a6, a7, a8, 2u);
}

void C3DSubdivisionOsdGPURuntimeDataCreateWithData(id *a1)
{
  [*a1 status];
  [*a1 error];
  [*a1 logs];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __C3DSubdivisionOsdGPURuntimeDataDecodeRefiner()
{
  __assert_rtn("__C3DSubdivisionOsdGPURuntimeDataDecodeEvaluatorInput", "C3DGeometryOpenSubdivSupport_Metal.mm", 684, "srcLength == sizeof(OpenSubdiv::Osd::BufferDescriptor)");
}

{
  __assert_rtn("__C3DSubdivisionOsdGPURuntimeDataDecodeEvaluatorInput", "C3DGeometryOpenSubdivSupport_Metal.mm", 685, "dstLength == sizeof(OpenSubdiv::Osd::BufferDescriptor)");
}

void __C3DGeometryOpenSubdivGetGPUContext_block_invoke_cold_1(uint64_t a1)
{
  C3DEntityGetName(*(a1 + 40));
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = 12;
  v4 = 1024;
  v5 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: OSD_MAX_VALENCE is set to %d and current mesh has a max valence of %d", v3, 0xEu);
}

void C3DSubdivisionOsdGPUDraw_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "__C3DSubdivisionOsdGPUHasPatchOfType(osdRuntimeData, c3dPatchType)";
  v3 = 2080;
  v4 = "C3DSubdivisionOsdGPUDraw";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. %s called but there's no patch to draw.", &v1, 0x16u);
}

void C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_cold_1(void *a1)
{
  [a1 format];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_cold_1(void *a1)
{
  [a1 status];
  [a1 error];
  [a1 logs];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void C3DEdgeArrayCreateFromMeshElement_cold_3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 136315650;
  v5 = "edgeCount == edges->_count";
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3;
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. memory smasher found in C3DEdgeArrayCreateFromMeshElement (%ld != %ld)", &v4, 0x20u);
}

void C3DTriangulationInfoCreateFromMeshElement_cold_4(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "edgeIndexesPerFaceCounter[j] <= 2";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DTriangulationInfoCreateFromMeshElement - edge out of bounds", buf, 0xCu);
}

void _addLightsInFrustum(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "shadowMapName";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "C3DLightGetType(light) == kC3DLightTypeProbe";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Wrong light type", a1);
}

{
  *a1 = 136315138;
  *a2 = "outData->parameters.probe.index >= 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Slice index should have been attributed already", a1);
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DLightGetProbeType(lights[i]) == kC3DLightProbeTypeRadiance";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Wrong probe type", a1);
}

void __append(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ctx.packedIndices.data[fl - 1] == li";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. first light was not of the same index", a1);
}

{
  *a1 = 136315138;
  *a2 = "pl != 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. end index should be set already", a1);
}

{
  *a1 = 136315138;
  *a2 = "ctx.packedIndices.data[pl - 1] == li";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. previous light was not of the same index", a1);
}

{
  *a1 = 136315138;
  *a2 = "ctx.nextIndex[i] <= newIndicesCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. nextIndex out of range", a1);
}

void __addFroxelLightIndicesInBuffer(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "ctx.nextIndex[i] <= indicesCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. nextIndex out of range", a1);
}

void __compactLightIndices()
{
  __assert_rtn("__compactLightIndices", "SCNMTLClusterSystem.mm", 1452, "clusterCellSize == sizeof(simd_ushort2)");
}

{
  __assert_rtn("__compactLightIndices", "SCNMTLClusterSystem.mm", 1474, "clusterCellSize == sizeof(simd_ushort2)");
}

void __compactLightIndices(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "count > 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Should be non empty", a1);
}

void SCNMTLClusterSystem::compute(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "i < lightRange.y";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. range overflow", a1);
}

void btQuaternion::getIdentity()
{
  {
    btQuaternion::getIdentity(void)::identityQuat = xmmword_21C27F610;
  }
}

void C3DAnimationSetup_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DSimpleAnimationEvaluate_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DSimpleAnimationInitWithPropertyList_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DSimpleAnimationInitWithPropertyList_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DLightInitWithPropertyList_cold_5()
{
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _C3DLightInitWithPropertyList_cold_6()
{
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DProjectionInfosUnproject_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: error in C3DProjectionInfosUnproject", buf, 2u);
}

void _C3DCameraInitWithPropertyList_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DCameraInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DNodeRemoveFromParentNode_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "prevChild";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void _C3DNodeCFFinalize_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: inconsistency in scene graph found in C3DNode finalize", buf, 2u);
}

void __BuildSemanticInfosForData_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "semantic > currentSemantic";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Mesh sources are not sorted correctly", a1);
}

void __BuildSemanticInfosForData_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "data->sourcesSemanticInfos[semantic].index == -1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Mesh sources with same semantic non contiguous", a1);
}

void __BuildSemanticInfosForData_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "semantic != kC3DMeshSourceSemanticPosition || data->sourcesSemanticInfos[semantic].count == 0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. No double position sources allowed", a1);
}

void _C3DMeshFinalizeDeserialization_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DMeshFinalizeDeserialization_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DMeshFinalizeDeserialization_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __DeserializePrimarySource_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DSourceAccessorGetSource(accessor) == (C3DGenericSourceRef) primarySource";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. This accessor doesn't point back to the primary source", a1);
}

void __DeserializePrimarySource_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __DeserializePrimarySource_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DMeshHasSourcesWithSemantic_cold_1(uint64_t a1)
{
  v2 = scn_default_log();
  OUTLINED_FUNCTION_6_2(v2);
  *a1 = 136315138;
  *(a1 + 4) = "__meshDataForDataKind";
  OUTLINED_FUNCTION_4_3(&dword_21BEF7000, v3, v4, "Unreachable code: Internal consistency error in %s");
  __break(1u);
}

void C3DMeshGetChannelForSourceWithSemanticAtIndex_cold_1(char a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 136315650;
  v6 = "sourceIndex != kCFNotFound";
  v7 = 2112;
  v8 = C3DMeshSourceSemanticToSemanticString(a1);
  v9 = 1024;
  v10 = a2;
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Could not find source with semantic %@ at index %d", &v5, 0x1Cu);
}

void __C3DMeshFixAccessorLinks_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: __C3DMeshCopy - unable to resolve interleaved mesh", buf, 2u);
}

void _C3DMeshCopyPropertyList_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "sourceID <= INT_MAX";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Too many objects in the library", a1);
}

void _C3DMeshCopyPropertyList_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DGenericSourceIsPrimary(primarySource)";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. This source should be a primary one", a1);
}

void _C3DMeshCopyPropertyList_cold_4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "source";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3D::flattenedNodesForSelectedNodes(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void _C3DMaterialInitWithPropertyList_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DMaterialInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DSceneNodeWasAdded_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "player != NULL";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. There should only be valid audio sources in this array", buf, 0xCu);
}

void C3DSceneSetLayerRootNode_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_2_11();
  _os_log_fault_impl(&dword_21BEF7000, v0, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Only %d layers are available, but layer %d requested", v1, 0x18u);
}

void _C3DSceneInitWithPropertyList_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DSceneInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _deserializeHierarchy_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Library could not remap the ID %@", &v2, 0xCu);
}

void C3D::PassDescriptor::inputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::PassDescriptor::outputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::PassResource::inputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::PassResource::outputAtIndex()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void C3D::Pass::addDependency()
{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DLightingSystemGetLightingSetProgramHashCodes_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "((rInd > 0) && (rInd <= pipelineData->_runtimeLightsCount)) || (rInd == kDefaultRuntimeIndex)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Invalid runtime light index", buf, 0xCu);
}

void C3DLightingSystemGetLightingSetDesc_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Invalid runtime light index", buf, 2u);
}

void _copyAnimations_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _findClone_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _C3DToCAFillMode_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CABasicAnimationToC3DAnimation_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CAKeyframeAnimationToC3DAnimation_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _CAAnimationToC3DAnimation_cold_1()
{
  v0 = objc_opt_class();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void _CAAnimationToC3DAnimation_cold_2()
{
  v0 = objc_opt_class();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void _C3DAnimationToCAAnimation_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SCNAddAnimation_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3D::RenderProbePass::RenderProbePass(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "C3DNodeGetLight(_drawNodesParameters.pointOfView)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void SCNStandardConstants::_setPropertyFlags(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "*texcoord_io_index < kSCNTexcoordCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. too many io texcoord needed", &v1, 0xCu);
}

void C3DLibraryGetRemappedID_cold_2(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: library does not contain an entry %d with kind %d", v3, 0xEu);
}

void _C3DFloorInitWithPropertyList_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DFloorInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3D::SmartPtr<__C3DArray *,C3D::detail::CFRetainFct,C3D::detail::CFReleaseFct>::operator __C3DArray *(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_ptr != NULL";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Dereferencing null pointer", &v1, 0xCu);
}

void C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass_cold_1(int *a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: C3DProgramHashCodeStoreRegisterProgramForRendererElement - index out of capacity (%d > %d)", v4, 0xEu);
}

void C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "programIndex < 0xffffffff";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DProgramHashCodeStoreRegisterProgramForRendererElement - programIndex out of uint32_t. will crash soon", &v1, 0xCu);
}

void ___Z34C3DSubdivGetGPUPrimvarDataTypeHashPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _Z68C3DSubdivCPUPrimvarDataCopyCrossNormalizedDataAtIndexToBufferAtIndexIDv2_fEvRNSt3__16vectorI16C3DSubdivCPUDataIT_ENS1_9allocatorIS5_EEEES9_iPfi_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DGeometryInitSubdivTopologyInfoIfNeeded()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  __assert_rtn("C3DGeometryInitSubdivTopologyInfoIfNeeded", "C3DGeometryOpenSubdivSupportInternal.cpp", 771, "(int32_t)vertexCountPerFaceCurrentIndex == topologyInfo->topologyDescriptor.numFaces");
}

{
  __assert_rtn("C3DGeometryInitSubdivTopologyInfoIfNeeded", "C3DGeometryOpenSubdivSupportInternal.cpp", 812, "vertIndicesPerFaceCurrentIndex == topologyInfo->totalIndexCount");
}

void C3DSubdivInitCPUPrimvarContext(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "currentIndex == topologyInfo->totalIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Error while building face-varying channel.", a1);
}

void ___Z30C3DSubdivInitCPUPrimvarContextP26C3DSubdivCPUPrimvarContextPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_8_1();
  _os_log_fault_impl(&dword_21BEF7000, v0, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Semantic %d can not be a primvar", v1, 0x12u);
}

void C3DSubdivSourceGetPrimvarDataType()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_8_1();
  _os_log_fault_impl(&dword_21BEF7000, v0, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Semantic %d can not be a primvar", v1, 0x12u);
}

void __C3DSubdivFeedCPUPrimvar()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void C3DSubdivInitGPUPrimvarDescriptor(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "overallVertexIndex == topologyInfo->totalIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Error while building face-varying channel.", a1);
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  C3DMeshSourceSemanticToSemanticString(a1);
  OUTLINED_FUNCTION_2_7();
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid GPU primvar semantic '%@'", v3, 0xCu);
}

void ___Z33C3DSubdivInitGPUPrimvarDescriptorP29C3DSubdivGPUPrimvarDescriptorPK26C3DGeometrySubdivisionInfoP9__C3DMesh_block_invoke_cold_2(uint8_t *a1)
{
  v2 = scn_default_log();
  os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  *a1 = 0;
  _os_log_error_impl(&dword_21BEF7000, v2, OS_LOG_TYPE_ERROR, "Unreachable code: Internal consistency error", a1, 2u);
  __break(1u);
}

void C3DSubdivComputeElementToFaceRangeTable(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "subdividedElementIndexForFace < subdividedElementCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Internal consistency error", a1);
}

void C3DSubdivComputeElementToPatchRangeTable(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Internal consistency error - Unexpected element type", buf, 2u);
}

void C3DSubdivCreateMesh()
{
  __assert_rtn("C3DSubdivCreateMesh", "C3DGeometryOpenSubdivSupportInternal.cpp", 1733, "faceVertexIndices.size() == 4");
}

{
  __assert_rtn("C3DSubdivCreateMesh", "C3DGeometryOpenSubdivSupportInternal.cpp", 1753, "faceVertexIndices.size() == 4");
}

void C3DSubdivCreateMesh(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexBufferIndex == indexBufferIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Internal consistency error", a1);
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>()
{
  __assert_rtn("assignSmoothMaskForVertex", "catmarkScheme.h", 182, "vertex.GetNumFaces() == vertex.GetNumEdges()");
}

{
  __assert_rtn("CombineVertexVertexMasks", "scheme.h", 289, "this->AreFaceWeightsForFaceCenters() == dst.AreFaceWeightsForFaceCenters()");
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _computeJointMatrices_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "joint";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DSkinFillJointWeightsBuffers_cold_1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "count == dstJoints.count && (!dstWeights.ptr || (count == dstWeights.count))";
  v3 = 2080;
  v4 = "C3DSkinFillJointWeightsBuffers";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. inconsistency in %s", &v1, 0x16u);
}

void _C3DSkinInitWithPropertyList_cold_3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinInitWithPropertyList_cold_4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinInitWithPropertyList_cold_5()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinInitWithPropertyList_cold_6()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinCopyPropertyList_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: A vertex weight index does not fit on an int", buf, 2u);
}

void _C3DSkinFinalizeDeserialization_cold_4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinFinalizeDeserialization_cold_5()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSkinFinalizeDeserialization_cold_6()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _C3DSourceAccessorInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DSourceAccessorInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void _C3DSourceAccessorFinalizeDeserialization_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Accessor deserialization: Could not remap the ID for source %d", v2, 8u);
}

void _C3DSourceAccessorFinalizeDeserialization_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Accessor deserialization: Could not remap the ID for source %d", v1, 8u);
}

void _C3DGenericSourceInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DGenericSourceInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DGenericSourceCreateDeserializedDataWithAccessors_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "C3DSourceAccessorGetSource(accessor) == (C3DGenericSourceRef) genericsource";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. This accessor doesn't point back to the primary source", buf, 0xCu);
}

void _C3DAnimationGroupCopyPropertyList_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: _C3DAnimationChannelCopyPropertyList - no target path", buf, 2u);
}

void C3D::SSAOUpSamplePass::execute(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No camera set for tone mapping pass", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: No point of view set for tone mapping pass", v1, 2u);
}

void C3D::ScenePass::setup(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "previousFilterPass";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3D::ScenePass::_shouldPushNodeToVisible(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Top level filtered node must have a filter", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Not enough space allocated", a5, a6, a7, a8, 2u);
}

void C3DIOFinalizeLoadScene_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: __OptimizeMesh:bytesPerIndex != 1, 2, or 4 during conversion, this should not happen !!", buf, 2u);
}

void _C3DIOCreateSceneWithData_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Error loading the unzipped data: %@", &v3, 0xCu);
}

void _C3DCreatePropertyListFromScene_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: can't serize plist :%@", &v2, 0xCu);
}

void C3DEntityInitWithPropertyList_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "C3DEntityInitWithPropertyList";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: invalid propertylist in %s", &v1, 0xCu);
}

void C3DDynamicBatchingSystemSetMaxBatchSize_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "dynamicBatchingSystem->_currentBatchInstancesCount == 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Can't change max batch size while in batch", &v1, 0xCu);
}

void C3DMorphUpdateCPUMeshIncrementally_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "element";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DMorphConvertToSparse_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "channels[i] == channels[0]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. It doesn't make sense to call C3DMeshElementCreateIntervalList for sources with different channels", a1);
}

void C3DMorphConvertToSparse_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "C3DMeshGetElementsCount(targetMesh) == 1";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. sparse target should only contain 1 mesh element", a1);
}

void C3DMorphConvertToSparse_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "morph->_calculationMode == kC3DMorpherCalculationModeAdditive";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. sparse targets should be in additive mode", a1);
}

void C3DMorphGetIndexOfTargetWithName_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "name";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __evaluateRuntimeWeightsForInBetween_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Internal consistency error. There should be %d runtime morph target weights, but we the current morph weight index is %d.", v3, 0xEu);
}

void _C3DMorpherPrepareMorphedMesh_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_C3DMorpherPrepareMorphedMesh";
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: %s should never be called when using the new deformer pipeline", &v1, 0xCu);
}

void C3DFXContextSetup_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __C3DFXContextSetup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void C3DEngineContextRenderSubTechnique_cold_5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "pass->_drawInstruction != kC3DFXDrawScene";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. sub techniques of type draw scene is not supported", a1);
}

void __C3DEngineContextRenderPassInstance_cold_6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __C3DEngineContextRenderPassInstance_cold_9()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __appendTechnique_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "scene";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __appendTechnique_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "pipeline";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void __appendTechnique_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "store";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DEngineContextRenderMainTechnique_cold_2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "engineContext";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DEngineContextRenderMainTechnique_cold_3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "passInstance";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3D::CustomPass::name(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_fxPass";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Override custom pass name if it doesn't have any fxPass", &v1, 0xCu);
}

void C3D::CustomPass::execute(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_fxPass";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Override custom pass execute if it doesn't have any fxPass", &v1, 0xCu);
}

void SCNMTLTexturePool::allocate(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Could not create texture with descriptor : %@", &v2, 0xCu);
}

void SCNMTLTexturePool::allocateWithStagingBuffer(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "(tex.pixelFormat == MTLPixelFormatR16Uint) || (tex.pixelFormat == MTLPixelFormatRG16Uint) || (tex.pixelFormat == MTLPixelFormatRGBA16Uint)";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only uint16 format are supported for the compute path of the copy buffer to texture", &v3);
}

void SCNMTLTexturePool::free(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Wrong texture given to the cache %@", &v2, 0xCu);
}

void SCNMTLComputeCommandEncoder::dispatchOnGrid3D(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "_computePipelineState";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void __ReplaceCodeWithModifiers_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Invalid shader modifier : no code provided", buf, 2u);
}

void C3DExecuteProgressBlocks_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "progress == nil || (progress == [NSProgress currentProgress])";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Progress not current.", buf, 0xCu);
}

void C3DExecuteProgressBlocks_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "progress.fractionCompleted <= 1.0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Progress fraction is greater than 1.0", buf, 0xCu);
}

void C3DProgramHashCodeCreate_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "programHashCode->_desc.effectSlotsHash[i] <= ((1 << (kC3DEffectSlotHashIndexMax + 1)) - 1)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. effect slot hash out of bounds", buf, 0xCu);
}

void C3DResourceManagerRegistryReleaseContext_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "retainCount >= 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DResourceManagerRegistryReleaseContext invalid retainCount", &v1, 0xCu);
}

void C3DTransactionAllowImmediate_cold_1(id *a1, id **a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  ObjCWrapper = C3DEntityGetObjCWrapper(a1);
  v6 = C3DEntityGetObjCWrapper(*a2);
  v7 = 138412546;
  v8 = ObjCWrapper;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Scene %@ is modified within a rendering callback of another scene (%@). This is not allowed and may lead to crash", &v7, 0x16u);
}

void CPP3DAudioContext::Init(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "mainMixerNode";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void CPP3DAudioEngine::GetAVEngine(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Error starting the audio engine: %@", &v4, 0xCu);
}

void __UnifyModifierVaryings_cold_1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "modifier";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DIOCopyURLForInitialURL_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Unable to resolve URL %@", buf, 0xCu);
}

void C3DShapeBuildConnectedComponents_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "boundaryCount > 1";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. realloc has an allocation size of 0 bytes", buf, 0xCu);
}

void C3DShapeTriangulationGetNewTriangle_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "triangulation->triangleCount < triangulation->maxTriangleCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Cannot produce any additional triangle.", &v1, 0xCu);
}

void C3DOffsetBuild_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "bestSplitEvents";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

void C3DRenderBufferGetSlotForOutputBufferType_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: C3DRenderBufferGetSlotForOutputBufferType : unsupported type %d", v2, 8u);
}

void SCNCopyValueFromObjCValue_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: unexpected value (%@)", &v2, 0xCu);
}

void SCNCopyValueFromObjCProperty_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: unexpected returned value for property %@ of object %@", &v3, 0x16u);
}

void SCNObject_resolveInstanceMethod_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: can't generate implementation for property of type %d", v2, 8u);
}

void __analyseUniformDeclaration_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: syntax error in the uniform declaration : %@", &v2, 0xCu);
}

void C3DConstraintManagerSetConstraintsForKey_cold_5(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "path";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void C3DModelPathResolverRegisterProperty_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CFDictionaryGetCountOfKey(_currentClassRegistry, propertyName) == 0";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Cannot register twice the same propertyName : %@", &v2, 0x16u);
}

void __C3DTransformTree::remove()
{
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __C3DTransformTree::remove(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "firstChild.index != kC3DTransformIndexInvalid";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "lastChild.index != kC3DTransformIndexInvalid";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "lastChild.level == firstChild.level";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "lastChild.index >= firstChild.index";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "firstChildToRemainAfterDeletion != INT32_MAX";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "_handles[ node->_transformHandle ].level == l";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

{
  *a1 = 136315138;
  *a2 = "_handles[ node->_transformHandle ].index >= minIndexToDestroyPerLevel[ l ]";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Null argument", a1);
}

void C3DTransformLevel::moveData(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. can't move negative number of data", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. overflow !", a5, a6, a7, a8, 2u);
}

void __C3DTransformTree::_findFirstChildInRange(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void computeFilterPos(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "start != index";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

{
  *buf = 136315138;
  *a2 = "end != index - 1";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", buf, 0xCu);
}

void getCandelaValue(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, 2u);
}

void _C3DAnimationEventsTriggerEventsWithTimeChanges_cold_3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "index < events->_eventCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. _C3DAnimationEventsTriggerEventAtIndex - index out of bounds", buf, 0xCu);
}

void C3DIndexStoreGetOrderedIndexForKey_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "alignedIndex >= 0 && alignedIndex < bufferLength";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DIndexStoreGetOrderedIndexForKey index out of bounds", buf, 0xCu);
}

void _pipelineDescriptorForPipelineDesc_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_15();
}

void _pipelineDescriptorForPipelineDesc_cold_2()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_15();
}

void _pipelineDescriptorForPipelineDesc_cold_3()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _pipelineDescriptorForPipelineDesc_cold_4()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void C3DMeshBuildRenderableData_cold_2()
{
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void C3DMeshBuildRenderableData_cold_3(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "__C3DMeshElementCreateRenderablePrimitiveTypeCopy";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: %s - Invalid polygon edge count (%u)", &v2, 0x12u);
}

void C3DMeshBuildRenderableData_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Inconsistent index count after triangulation.", buf, 2u);
}

void __C3DMeshDeindex(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexBufferWriteOffset == headerLength";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Deindexing failed - Polygon edge counts inconsistency", a1);
}

{
  *a1 = 136315138;
  *a2 = "value == sourceInfo.dataVectorCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Deindexer failed - Hash value inconsistency", a1);
}

{
  *a1 = 136315138;
  *a2 = "overallVertexIndex == (CFIndex)effectiveIndexCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. Deindexing failed - Vertex count inconsistency", a1);
}

void __C3DMeshDeindex()
{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __C3DMeshDeindex(unsigned __int8 a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Requested channel (%d) does not exist in element (%p)", v3, 0x12u);
}

void __writeIndexInBuffer()
{
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __readIndexInBuffer()
{
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

void C3D::ConvertCubeComputePass::compile(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "computeFunction";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", &v3);
}

void __allocateChunk()
{
  __assert_rtn("__allocateChunk", "C3DStackAllocator.cpp", 43, "chunk->data");
}

{
  __assert_rtn("__allocateChunk", "C3DStackAllocator.cpp", 39, "n");
}

{
  __assert_rtn("__allocateChunk", "C3DStackAllocator.cpp", 38, "chunk");
}

void C3DStackAllocatorAllocateAligned_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "allocator->_framesCount > 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. You have to push frames before allocating memory.", &v1, 0xCu);
}

void C3DStackAllocatorPopFrame_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "allocator->_framesCount > 0";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. C3DStackAllocator: You cannot pop frames without pushing first.", &v1, 0xCu);
}

void C3DCullingContextForcePushGeometryRenderableElementsToVisible_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "sequence->count + count <= sequence->allocatedCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Not enough space allocated", buf, 0xCu);
}

void C3DCullingContextInitialize_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "passInstance->_cullingData[eye] == NULL";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. leaking culling data", buf, 0xCu);
}

void C3DFXPassSetupWithPropertyList_cold_3(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 4;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: too many blend states: max render target is %d", v1, 8u);
}

void C3DFXPassInitialize_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to load program %@ %@", &v4, 0x16u);
}

void C3DFXPassInitialize_cold_6(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "input->_semantic != kC3DFXSemanticNone";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. attributes should have a semantic", buf, 0xCu);
}

void ____arrayOfC3DModifiersFromDictionary_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __AddToFreeList_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "(freeSpan->start.index + freeSpan->count) <= page->capacity";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. page overflow", buf, 0xCu);
}

void __AllocateNewSpanInPage_cold_1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "spanSize <= page->freeMaxSpan";
  v4 = 1024;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. wrong page selected for span size %d", &v2, 0x12u);
}

void __AllocateNewSpan_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0x10000;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: RendererElementStore does not support span of more than %d elements", v1, 8u);
}

void fillPositions(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "vertexCount == CFIndex(baseMesh.pointCount())";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Morph target has a vertex count different from the base geometry", &v1, 0xCu);
}

void C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "C3DMeshElementGetIndicesChannelCount(creaseElement) == 1";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Found crease element with more than 1 channel", &v1, 0xCu);
}

void C3DShaderAddStandardUniform_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CFDictionaryGetValue(dic, uniformName) == NULL";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. uniform %@ already set", &v2, 0x16u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x282114778](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}