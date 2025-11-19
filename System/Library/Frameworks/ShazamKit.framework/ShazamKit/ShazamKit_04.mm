unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<void> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_230FE3AF0;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v13, *(v7 + v12)), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_230FE3AF0;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v9[v19], *&v9[v19], 8uLL), v13), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 > v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] <= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,unsigned long *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(a1, a4, v8, v11--);
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
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(a1, a4, v8, a1);
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
            v24 = v23 > v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
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
          v25 = (v18 - a1 + 8) >> 3;
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

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
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
          v8 = (result + 8 * v13);
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

__n128 std::__function::__func<shazam::pairwise::compare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::pairwise::MergeMode,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0,std::allocator<shazam::pairwise::compare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::pairwise::MergeMode,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0>,void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C5C50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<shazam::pairwise::compare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::pairwise::MergeMode,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0,std::allocator<shazam::pairwise::compare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::pairwise::MergeMode,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0>,void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    shazam::pairwise::intersectingMerge(a2, *(a1 + 8));
  }

  else if (!v2)
  {
    std::vector<shazam::TrackingResult>::push_back[abi:ne200100](*(a1 + 8), a2);
  }
}

uint64_t std::__function::__func<shazam::pairwise::compare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::pairwise::MergeMode,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0,std::allocator<shazam::pairwise::compare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::pairwise::MergeMode,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0>,void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 shazam::StaticCPUSearcherFactory::StaticCPUSearcherFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = &unk_2845C4A50;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 24) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = *(a2 + 32);
  *(a1 + 40) = result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = 0;
  return result;
}

void shazam::StaticCPUSearcherFactory::make_searcher(atomic_ullong *this)
{
  atomic_fetch_add(this + 10, 1uLL);
  v1 = this[8];
  std::make_unique[abi:ne200100]<shazam::StaticCPUSearcher,shazam::CPUDatabases const&,shazam::Timer const&,unsigned long const&,unsigned long const&,BOOL const&,0>();
}

void sub_230FBE760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  shazam::CPUDatabases::~CPUDatabases(&a9);
  MEMORY[0x231921F20](v10, v9);
  _Unwind_Resume(a1);
}

uint64_t shazam::ShazamKitHeaderIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  shazam::ShazamKitHeader::validate(a1, a2);
  v8 = 1342177284;
  v9 = a1;
  v10 = a2;
  v6 = *(a3 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v8);
}

void shazam::io::pack(uint64_t a1@<X0>, std::vector<char> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  shazam::io::pack(a2, a1);
}

void sub_230FBE91C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *shazam::io::pack@<X0>(shazam::io *this@<X0>, std::vector<char> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  return shazam::io::pack(a2, this);
}

void sub_230FBE96C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *shazam::io::addShazamKitHeader(std::vector<char> *this)
{
  begin = this->__begin_;
  v3 = this->__end_ - this->__begin_;
  if (v3 > 0xFFFFFFFFFFFFFFF3)
  {
    this->__end_ = &begin[v3 + 12];
  }

  else
  {
    std::vector<char>::__append(this, 0xCuLL);
    begin = this->__begin_;
  }

  v4 = &begin[v3];
  *v4 = 0x225802580;
  *(v4 + 2) = 12;
  return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<char *>>,std::reverse_iterator<std::__wrap_iter<char *>>>(this->__end_, this->__end_, this->__end_ - 12, this->__end_ - 12, this->__begin_, this->__begin_, v6);
}

void shazam::io::pack(std::vector<char> *a1, uint64_t a2)
{
  v36 = 0;
  v37 = a1;
  v38 = 1;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v34 = 0;
  v35 = 0;
  *&v32[0] = &v34;
  BYTE8(v32[0]) = 0;
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  shazam::LegacyFatSigInfo::LegacyFatSigInfo(v32, *(a2 + 16));
  shazam::LegacyFatSigInfo::set_audio_sample_length(v32, *(a2 + 8));
  shazam::LegacyFatSigInfo::set_stream_pos(v32, *a2);
  v6 = HIDWORD(v33) & 0x1FFFF | (*(a2 + 20) << 19) | 0x40000;
  *(v32 + 4) = 0x8FACADE99;
  HIDWORD(v33) = v6;
  HIDWORD(v32[0]) = 1115701264;
  a1->__end_ = a1->__begin_;
  std::vector<char>::reserve(a1, 0x44uLL);
  begin = a1->__begin_;
  v8 = a1->__end_ - a1->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFCFLL)
  {
    a1->__end_ = &begin[v8 + 48];
  }

  else
  {
    std::vector<char>::__append(a1, 0x30uLL);
    begin = a1->__begin_;
  }

  v9 = &begin[v8];
  v10 = v32[0];
  v11 = v33;
  *(v9 + 1) = v32[1];
  *(v9 + 2) = v11;
  *v9 = v10;
  v12 = a1->__begin_;
  v13 = a1->__end_ - a1->__begin_;
  if (v13 > 0xFFFFFFFFFFFFFFF7)
  {
    a1->__end_ = &v12[v13 + 8];
  }

  else
  {
    std::vector<char>::__append(a1, 8uLL);
    v12 = a1->__begin_;
  }

  *&v12[v13] = 0x840000000;
  v14 = v34;
  if (v35 != v34)
  {
    v15 = 0;
    do
    {
      v16 = (v14 + 24 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = a1->__begin_;
      v20 = a1->__end_ - a1->__begin_;
      if (v20 > 0xFFFFFFFFFFFFFFF7)
      {
        a1->__end_ = &v19[v20 + 8];
      }

      else
      {
        std::vector<char>::__append(a1, 8uLL);
        v19 = a1->__begin_;
      }

      *&v19[v20] = (v15 + 1610809408) | ((v17 - v18) << 32);
      shazam::io::write_unaligned<shazam::spectral_peak_compact_t>(a1, v34 + 24 * v15);
      v14 = v34;
      v21 = *(v34 + 24 * v15 + 8) - *(v34 + 24 * v15);
      v22 = ((v21 + 3) & 0xFFFFFFFC) - v21;
      if (v22)
      {
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        end = a1->__end_;
        do
        {
          value = a1->__end_cap_.__value_;
          if (end >= value)
          {
            v26 = a1->__begin_;
            v27 = (end - a1->__begin_);
            v28 = (v27 + 1);
            if ((v27 + 1) < 0)
            {
              std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
            }

            v29 = value - v26;
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              operator new();
            }

            v31 = end - a1->__begin_;
            *v27 = 0;
            end = v27 + 1;
            memcpy(0, v26, v31);
            a1->__begin_ = 0;
            a1->__end_ = v27 + 1;
            a1->__end_cap_.__value_ = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *end++ = 0;
          }

          a1->__end_ = end;
          --v23;
        }

        while (v23);
        v14 = v34;
      }

      ++v15;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v35 - v14) >> 3));
  }

  *(a1->__begin_ + 1) = shazam::crc32(0, a1->__begin_ + 8, (a1->__end_ - a1->__begin_ - 8));
  *&v32[0] = &v34;
  if (v38 == 1)
  {
    shazam::io::addShazamKitHeader(v37);
  }
}

void sub_230FBEE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  a9 = &a16;
  gsl::final_action<shazam::io::pack(std::vector<char> &,shazam::basic_signature_t const&)::$_0>::~final_action(&a19);
  _Unwind_Resume(a1);
}

char *shazam::io::pack(std::vector<char> *a1, shazam::freebird_signature *this)
{
  v27 = a1;
  v28 = 1;
  feature_size = shazam::freebird_signature::get_feature_size(this);
  a1->__end_ = a1->__begin_;
  std::vector<char>::reserve(a1, feature_size + 48);
  *v26 = 718889720;
  *&v26[4] = 0;
  *&v26[20] = 0;
  v5 = ((*(this + 2) - *this) >> 5);
  *&v26[12] = *(this + 6);
  *&v26[16] = v5;
  shazam::freebird_header::set_raw_sample_rate(v26, *(this + 8));
  shazam::freebird_header::set_sample_length_samples(v26, *(this + 5));
  begin = a1->__begin_;
  v7 = a1->__end_ - a1->__begin_;
  if (v7 > 0xFFFFFFFFFFFFFFE3)
  {
    a1->__end_ = &begin[v7 + 28];
  }

  else
  {
    std::vector<char>::__append(a1, 0x1CuLL);
    begin = a1->__begin_;
  }

  v8 = &begin[v7];
  v9 = *v26;
  *(v8 + 12) = *&v26[12];
  *v8 = v9;
  v10 = a1->__begin_;
  v11 = a1->__end_ - a1->__begin_;
  if (v11 > 0xFFFFFFFFFFFFFFF7)
  {
    a1->__end_ = &v10[v11 + 8];
  }

  else
  {
    std::vector<char>::__append(a1, 8uLL);
    v10 = a1->__begin_;
  }

  *&v10[v11] = (feature_size << 32) + 0x840000000;
  v12 = *this;
  v13 = *(this + 1);
  if (*this != v13)
  {
    do
    {
      v14 = shazam::freebird_tensor::get_feature_size(v12);
      v15 = a1->__begin_;
      v16 = a1->__end_ - a1->__begin_;
      if (v16 > 0xFFFFFFFFFFFFFFF7)
      {
        a1->__end_ = &v15[v16 + 8];
      }

      else
      {
        std::vector<char>::__append(a1, 8uLL);
        v15 = a1->__begin_;
      }

      *&v15[v16] = (v14 << 32) - 0x79FFB0000;
      v17 = *v12;
      v18 = *(v12 + 1);
      v20 = *(v12 + 1);
      v19 = *(v12 + 2);
      v21 = *(v12 + 1);
      v22 = a1->__begin_;
      v23 = a1->__end_ - a1->__begin_;
      if (v23 > 0xFFFFFFFFFFFFFFF7)
      {
        a1->__end_ = &v22[v23 + 8];
      }

      else
      {
        std::vector<char>::__append(a1, 8uLL);
        v22 = a1->__begin_;
      }

      *&v22[v23] = (v17 & 0x3FFF | ((v18 & 0x3FFF) << 14) | (v21 << 28)) + ((v19 - v20) << 30);
      v24 = (v12 + 8);
      shazam::io::write_unaligned<shazam::spectral_peak_compact_t>(a1, v12 + 8);
      v12 = (v12 + 32);
    }

    while (v24 + 12 != v13);
  }

  *(a1->__begin_ + 2) = LODWORD(a1->__end_) - a1->__begin_;
  result = shazam::crc32(0, a1->__begin_ + 8, (a1->__end_ - a1->__begin_ - 8));
  *(a1->__begin_ + 1) = result;
  if (v28 == 1)
  {
    return shazam::io::addShazamKitHeader(v27);
  }

  return result;
}

void sub_230FBF138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  gsl::final_action<shazam::io::pack(std::vector<char> &,shazam::freebird_signature const&)::$_0>::~final_action(va);
  _Unwind_Resume(a1);
}

void std::vector<char>::reserve(std::vector<char> *this, std::vector<char>::size_type __n)
{
  if (this->__end_cap_.__value_ - this->__begin_ < __n)
  {
    if ((__n & 0x8000000000000000) == 0)
    {
      v2 = this->__end_ - this->__begin_;
      operator new();
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }
}

std::vector<char> *shazam::io::write_unaligned<shazam::spectral_peak_compact_t>(std::vector<char> *this, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    v5 = this;
    begin = this->__begin_;
    v7 = this->__end_ - this->__begin_;
    v8 = v4 - v3;
    v9 = v7 + v4 - v3;
    if (v7 >= v9)
    {
      if (v7 > v9)
      {
        this->__end_ = &begin[v9];
      }
    }

    else
    {
      std::vector<char>::__append(this, v8);
      begin = v5->__begin_;
      v3 = *a2;
    }

    return memcpy(&begin[v7], v3, v8);
  }

  return this;
}

uint64_t gsl::final_action<shazam::io::pack(std::vector<char> &,shazam::basic_signature_t const&)::$_0>::~final_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    shazam::io::addShazamKitHeader(*a1);
  }

  return a1;
}

uint64_t gsl::final_action<shazam::io::pack(std::vector<char> &,shazam::freebird_signature const&)::$_0>::~final_action(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    shazam::io::addShazamKitHeader(*a1);
  }

  return a1;
}

void shazam::io::coalesce(uint64_t a1@<X0>, shazam::freebird_signature *a2@<X1>, std::vector<char> *a3@<X8>)
{
  memset(&v20, 0, sizeof(v20));
  shazam::io::pack(&v20, a1);
  memset(&__p, 0, sizeof(__p));
  shazam::io::pack(&__p, a2);
  v5 = __p.__end_ - __p.__begin_ + v20.__end_ - v20.__begin_;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  a3->__begin_ = 0;
  std::vector<char>::reserve(a3, v5 + 44);
  begin = a3->__begin_;
  v7 = a3->__end_ - a3->__begin_;
  if (v7 > 0xFFFFFFFFFFFFFFEBLL)
  {
    a3->__end_ = &begin[v7 + 20];
  }

  else
  {
    std::vector<char>::__append(a3, 0x14uLL);
    begin = a3->__begin_;
  }

  v8 = &begin[v7];
  *v8 = xmmword_230FE31C0;
  *(v8 + 4) = 2;
  v9 = a3->__begin_;
  v10 = a3->__end_ - a3->__begin_;
  if (v10 > 0xFFFFFFFFFFFFFFF7)
  {
    a3->__end_ = &v9[v10 + 8];
  }

  else
  {
    std::vector<char>::__append(a3, 8uLL);
    v9 = a3->__begin_;
  }

  *&v9[v10] = (v5 << 32) + 0x1840000000;
  v12 = v20.__begin_;
  end = v20.__end_;
  v13 = a3->__begin_;
  v14 = a3->__end_ - a3->__begin_;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    a3->__end_ = &v13[v14 + 8];
  }

  else
  {
    std::vector<char>::__append(a3, 8uLL);
    v13 = a3->__begin_;
  }

  *&v13[v14] = ((end - v12) << 32) | 0x60050001;
  shazam::io::write_unaligned<shazam::spectral_peak_compact_t>(a3, &v20);
  v16 = __p.__begin_;
  v15 = __p.__end_;
  v17 = a3->__begin_;
  v18 = a3->__end_ - a3->__begin_;
  if (v18 > 0xFFFFFFFFFFFFFFF7)
  {
    a3->__end_ = &v17[v18 + 8];
  }

  else
  {
    std::vector<char>::__append(a3, 8uLL);
    v17 = a3->__begin_;
  }

  *&v17[v18] = ((v15 - v16) << 32) | 0x60050001;
  shazam::io::write_unaligned<shazam::spectral_peak_compact_t>(a3, &__p);
  *(a3->__begin_ + 2) = LODWORD(a3->__end_) - a3->__begin_;
  *(a3->__begin_ + 1) = shazam::crc32(0, a3->__begin_ + 8, (a3->__end_ - a3->__begin_ - 8));
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v20.__begin_)
  {
    v20.__end_ = v20.__begin_;
    operator delete(v20.__begin_);
  }
}

void sub_230FBF540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

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

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<char *>>,std::reverse_iterator<std::__wrap_iter<char *>>>@<X0>(char *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v7 = a6;
  if (a2 != a4)
  {
    if (a4 == a6)
    {
      *a7 = result;
      a7[1] = a2;
      v7 = a4;
      goto LABEL_17;
    }

    if (a2 - 1 == a4)
    {
      v10 = a2 - 1;
      v11 = *(a2 - 1);
      do
      {
        v12 = *--a4;
        *v10-- = v12;
        --a2;
      }

      while (a4 != a6);
      *v10 = v11;
    }

    else
    {
      if (a4 - 1 == a6)
      {
        v14 = a6 + 1;
        v13 = *a6;
        v15 = a6;
        if (a6 + 1 != a2)
        {
          v15 = a2 - 1;
          v16 = a6;
          do
          {
            v17 = *v14++;
            *v16++ = v17;
          }

          while (v14 != a2);
        }

        *(a2 - 1) = v13;
        result = a5;
        goto LABEL_16;
      }

      result = std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<char *>>>(result, a2, a3, a4, a5, a6);
    }

    v15 = a2;
LABEL_16:
    *a7 = result;
    a7[1] = v15;
    goto LABEL_17;
  }

  *a7 = a5;
  a7[1] = a6;
LABEL_17:
  a7[2] = a5;
  a7[3] = v7;
  return result;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<char *>>>(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, char *a6)
{
  v6 = a2 - a4;
  if (a2 - a4 == a4 - a6)
  {
    result = a3;
    if (a2 != a4 && a4 != a6)
    {
      v8 = a2 - 1;
      v9 = a4 - 1;
      v10 = a4 - 1;
      do
      {
        v11 = *v8;
        v12 = v8 == a4;
        *v8-- = *v9;
        *v10-- = v11;
        if (v12)
        {
          break;
        }

        v12 = v9 == a6;
        v9 = v10;
      }

      while (!v12);
    }
  }

  else
  {
    v13 = a4 - a6;
    v14 = a2 - a4;
    do
    {
      v15 = v14;
      v14 = v13;
      v13 = v15 % v13;
    }

    while (v13);
    v16 = &a2[-v14];
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = &v16[-v6];
      v20 = v16;
      do
      {
        v21 = v19;
        *(v20 - 1) = *(v19 - 1);
        v22 = v19 - a6;
        if (v6 >= v22)
        {
          v19 = &a4[v22];
        }

        else
        {
          v19 = &v21[-v6];
        }

        v20 = v21;
      }

      while (v19 != v16);
      *(v21 - 1) = v17;
    }

    while (v16 != a2);
    return &a2[-(a4 - a6)];
  }

  return result;
}

void std::vector<shazam::anonymous namespace::compacted_peaks>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_230FBFA88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a20);
  a28 = v29 - 144;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a28);
  if (a2 == 3)
  {
    [v28 ConvertSystemError:__cxa_begin_catch(a1) toError:a10];
    __cxa_end_catch();
  }

  else
  {
    v32 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v28 ConvertException:v32 toError:a10];
    }

    else
    {
      [v28 FillUnknownError:a10];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x230FBFA34);
}

void sub_230FBFB78(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

uint64_t shazam::SumoSigInfo::get_raw_sample_rate(shazam::SumoSigInfo *this)
{
  v1 = &dword_230FE4074;
  v2 = 32;
  while (*(v1 - 1) != (*(this + 13) & 0xF))
  {
    v1 += 2;
    v2 -= 8;
    if (!v2)
    {
      return 0;
    }
  }

  return *v1;
}

std::runtime_error *inference_error::inference_error(std::runtime_error *a1, const std::string *a2, void *a3)
{
  v5 = a3;
  std::runtime_error::runtime_error(a1, a2);
  a1->__vftable = &unk_2845C5CD0;
  a1[1].__vftable = v5;
  return a1;
}

uint64_t CoreMLFeatureModel::CoreMLFeatureModel(uint64_t a1, void *a2, __int128 *a3, __int128 *a4, int a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a6;
  v41 = a7;
  v40 = a8;
  *(a1 + 24) = 0u;
  *a1 = &unk_2845C5CF8;
  *(a1 + 8) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if (!v16)
  {
    v16 = objc_opt_new();
  }

  v17 = MEMORY[0x277CBFF20];
  if (a5)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = ___ZN18CoreMLFeatureModelC2EP5NSURLN6shazam3dsp10TensorSpecES4_bP20MLModelConfigurationP8NSObjectU13block_pointerFvS1_P7NSErrorE_block_invoke;
    v44[3] = &unk_2788F82E0;
    v48 = a1;
    v18 = v41;
    v45 = v41;
    v19 = v40;
    v47 = v40;
    v46 = v15;
    v20 = a3[1];
    v49 = *a3;
    v50 = v20;
    v21 = a3[3];
    v51 = a3[2];
    v52 = v21;
    v22 = a4[1];
    v53 = *a4;
    v54 = v22;
    v23 = a4[3];
    v55 = a4[2];
    v56 = v23;
    [v17 loadContentsOfURL:v46 configuration:v16 completionHandler:v44];

    v24 = v45;
  }

  else
  {
    v43 = 0;
    v25 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v15 configuration:v16 error:&v43];
    v26 = v43;
    v27 = *(a1 + 8);
    *(a1 + 8) = v25;

    if (v26 || (v28 = *(a1 + 8)) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&v42, "failed to create coreml wrapper");
      inference_error::inference_error(exception, &v42, v26);
    }

    v29 = [v28 modelDescription];
    v30 = [v29 metadata];
    v24 = [v30 valueForKey:*MEMORY[0x277CBFEA8]];

    v31 = [MEMORY[0x277CCA980] decimalNumberWithString:v24];
    *(a1 + 16) = [v31 intValue];
    v32 = *a3;
    v33 = a3[1];
    v34 = a3[3];
    *(a1 + 56) = a3[2];
    *(a1 + 72) = v34;
    *(a1 + 24) = v32;
    *(a1 + 40) = v33;
    v35 = *a4;
    v36 = a4[1];
    v37 = a4[3];
    *(a1 + 120) = a4[2];
    *(a1 + 136) = v37;
    *(a1 + 88) = v35;
    *(a1 + 104) = v36;
    *(a1 + 152) = 1;

    v19 = v40;
    v18 = v41;
  }

  return a1;
}

void ___ZN18CoreMLFeatureModelC2EP5NSURLN6shazam3dsp10TensorSpecES4_bP20MLModelConfigurationP8NSObjectU13block_pointerFvS1_P7NSErrorE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  objc_storeStrong((v7 + 8), a2);
  if (v6 || (v10 = *(v7 + 8)) == 0)
  {
    objc_storeStrong((v7 + 160), a3);
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 40), v6);
    }
  }

  else
  {
    v11 = [v10 modelDescription];
    v12 = [v11 metadata];
    v13 = [v12 valueForKey:*MEMORY[0x277CBFEA8]];

    v14 = [MEMORY[0x277CCA980] decimalNumberWithString:v13];
    *(v7 + 16) = [v14 intValue];
    *(v7 + 152) = 1;
    v15 = *(a1 + 64);
    v16 = *(a1 + 80);
    v17 = *(a1 + 96);
    *(v7 + 72) = *(a1 + 112);
    *(v7 + 56) = v17;
    *(v7 + 40) = v16;
    *(v7 + 24) = v15;
    v18 = *(a1 + 128);
    v19 = *(a1 + 144);
    v20 = *(a1 + 160);
    *(v7 + 136) = *(a1 + 176);
    *(v7 + 120) = v20;
    *(v7 + 104) = v19;
    *(v7 + 88) = v18;
    v21 = *(a1 + 48);
    if (v21)
    {
      (*(v21 + 16))(v21, *(a1 + 40), 0);
    }
  }
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void inference_error::~inference_error(std::runtime_error *this)
{

  std::runtime_error::~runtime_error(this);
}

{

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x231921F20);
}

void CoreMLFeatureModel::~CoreMLFeatureModel(id *this)
{
}

{

  JUMPOUT(0x231921F20);
}

uint64_t CoreMLFeatureModel::version(void **this)
{
  if (this[20])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v6, "failed to create coreml wrapper");
    inference_error::inference_error(exception, &v6, this[20]);
  }

  if ((this[19] & 1) == 0)
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    v5 = std::generic_category();
    MEMORY[0x231921D20](v4, 4294967193, v5);
    __cxa_throw(v4, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return *(this + 8);
}

void CoreMLFeatureModel::runInference(gsl::details *a1@<X0>, unint64_t a2@<X1>, const void *a3@<X2>, const void **a4@<X8>)
{
  v4 = a1;
  v67[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 20))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v65, "failed to create coreml wrapper");
    inference_error::inference_error(exception, &v65, *(v4 + 20));
  }

  if ((*(a1 + 152) & 1) == 0)
  {
    v46 = __cxa_allocate_exception(0x20uLL);
    v47 = std::generic_category();
    MEMORY[0x231921D30](v46, 4294967193, v47, "Model not ready");
    __cxa_throw(v46, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  if (a2 >= 0x3FFFFFFFFFFFFFFFLL)
  {
LABEL_30:
    gsl::details::terminate(a1);
  }

  v8 = *(a1 + 9);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = 4 * a2;
  v11 = 4 * a2 / v8;
  if (*(v4 + 8))
  {
    v12 = 0;
    do
    {
      if (v12 == *(v4 + 10))
      {
        [MEMORY[0x277CCABB0] numberWithInt:v11];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithInt:*(v4 + v12 + 4)];
      }
      v13 = ;
      [v9 addObject:v13];

      ++v12;
    }

    while (v12 < *(v4 + 8));
  }

  v64 = 0;
  v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v9 dataType:65568 error:&v64];
  v15 = v64;
  v60 = v14;
  if (v15)
  {
    v56 = v15;
    v48 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v65, "failed to allocate input tensor");
    inference_error::inference_error(v48, &v65, v56);
  }

  v16 = v14;
  memcpy([v14 dataPointer], a3, v10);
  v17 = [MEMORY[0x277CCACA8] stringWithCString:*(v4 + 3) encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v66 = v17;
  v67[0] = v14;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];

  v59 = v18;
  v63 = 0;
  v19 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v18 error:&v63];
  v20 = v63;
  v58 = v19;
  if (v20)
  {
    v57 = v20;
    v49 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v65, "failed to create feature provider");
    inference_error::inference_error(v49, &v65, v57);
  }

  v21 = *(v4 + 1);
  v62 = 0;
  v22 = [v21 predictionFromFeatures:v19 error:&v62];
  v55 = v62;
  if (v55)
  {
    v50 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v65, "failed to predict");
    inference_error::inference_error(v50, &v65, v55);
  }

  if (!v22)
  {
    v51 = __cxa_allocate_exception(0x20uLL);
    v52 = std::generic_category();
    MEMORY[0x231921D30](v51, 4294967195, v52, "Output was null");
    __cxa_throw(v51, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v23 = [MEMORY[0x277CCACA8] stringWithCString:*(v4 + 11) encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v24 = [v22 featureValueForName:v23];
  v25 = [v24 multiArrayValue];

  v61 = v25;
  if (!v25)
  {
    v53 = __cxa_allocate_exception(0x20uLL);
    v54 = std::generic_category();
    MEMORY[0x231921D30](v53, 4294967194, v54, "Failed to find feature in output");
    __cxa_throw(v53, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v26 = v25;
  v27 = [v25 dataPointer];
  v28 = v11;
  v29 = gsl::make_span<shazam::spectral_peak_compact_t const>(v27, ((*(v4 + 17) >> 2) * v11));
  v31 = v30;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<float>::reserve(a4, (*(v4 + 17) >> 2) * v28);
  v32 = v31 + 4 * v29;
  v65.__r_.__value_.__r.__words[0] = v31;
  v65.__r_.__value_.__l.__size_ = v32;
  v65.__r_.__value_.__r.__words[2] = v31;
  while (v65.__r_.__value_.__r.__words[2] != v32)
  {
    v33 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v65);
    v35 = a4[1];
    v34 = a4[2];
    if (v35 >= v34)
    {
      v37 = *a4;
      v38 = v35 - *a4;
      v39 = v38 >> 2;
      v40 = (v38 >> 2) + 1;
      if (v40 >> 62)
      {
        std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
      }

      v41 = v34 - v37;
      if (v41 >> 1 > v40)
      {
        v40 = v41 >> 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v42 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a4, v42);
      }

      *(4 * v39) = *v33;
      v36 = 4 * v39 + 4;
      memcpy(0, v37, v38);
      v43 = *a4;
      *a4 = 0;
      a4[1] = v36;
      a4[2] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v35 = *v33;
      v36 = (v35 + 4);
    }

    a4[1] = v36;
    a1 = gsl::details::span_iterator<float>::operator++(&v65);
    if (*&v65.__r_.__value_.__l.__data_ != __PAIR128__(v32, v31))
    {
      goto LABEL_30;
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t shazam::MultiSigHeaderIterator(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  if (a1 <= 0x2B)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, error_code, v16);
    goto LABEL_16;
  }

  v4 = shazam::reinterpret_safer<shazam::multisig_info const*,0>(&v25);
  subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v25, 0x14uLL, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v6;
  v8 = gsl::span<char const,18446744073709551615ul>::make_subspan(&v25, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
  if (v25 != *(v4 + 8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v17 = shazam::make_error_code(0x87);
    MEMORY[0x231921D00](exception, v17, v18);
LABEL_16:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v10 = *(v4 + 4);
  v11 = shazam::crc32(0, v9, v8);
  if (v10 != -87368039 && v11 != v10)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v20 = shazam::make_error_code(0x84);
    MEMORY[0x231921D00](exception, v20, v21);
    goto LABEL_16;
  }

  v22 = 1342177286;
  v23 = v25;
  if (v25 == -1 || (v24 = v26) == 0 && v25)
  {
    gsl::details::terminate(v11);
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, &v22);
  return shazam::iterate_headers<shazam::fp_data_header_extern_new>(subspan, v7, a3);
}

uint64_t shazam::reinterpret_safer<shazam::multisig_info const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x13uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::crc32(shazam *this, unsigned __int8 *a2, const char *a3)
{
  _W8 = ~this;
  if ((a2 & 7) != 0 && a3)
  {
    v4 = a2 + 1;
    do
    {
      v6 = *a2++;
      _W9 = v6;
      __asm { CRC32B          W8, W8, W9 }

      v11 = a3 - 1;
      if ((v4 & 7) == 0)
      {
        break;
      }

      ++v4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v11 = a3;
  }

  if (v11 >= 8)
  {
    do
    {
      v13 = *a2;
      a2 += 8;
      _X10 = v13;
      __asm { CRC32X          W8, W8, X10 }

      v11 -= 8;
    }

    while (v11 > 7);
  }

  for (; v11; --v11)
  {
    v15 = *a2++;
    _W10 = v15;
    __asm { CRC32B          W8, W8, W10 }
  }

  return ~_W8;
}

void shazam::windows::blackmanHarris(shazam::windows *this@<X0>, void *a2@<X8>)
{
  v3 = std::vector<float>::vector[abi:ne200100](a2, this);
  if (this)
  {
    *v4.i32 = (this - 1);
    v25 = vdupq_n_s64(this - 1);
    v5 = (this + 1) & 0xFFFFFFFFFFFFFFFELL;
    v6 = vdup_lane_s32(v4, 0);
    v7 = xmmword_230FE3AF0;
    v8 = (*v3 + 4);
    v24 = vdup_n_s32(0x40C90FDBu);
    v9 = vdup_n_s32(0x41490FDBu);
    v10 = vdup_n_s32(0x4196CBE4u);
    v11 = vdup_n_s32(0xBEFA0126);
    v12 = vdup_n_s32(0x3EB7AE14u);
    v13 = vdup_n_s32(0x3E10ABB4u);
    v14 = vdup_n_s32(0xBC3F5D79);
    v23 = vdupq_n_s64(2uLL);
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v25, v7));
      v35 = v7;
      v15 = vcvt_f32_f64(vcvtq_f64_u64(v7));
      v16 = vdiv_f32(vmul_f32(v15, v24), v6);
      v29 = v16.f32[0];
      v32 = cosf(v16.f32[1]);
      v17.f32[0] = cosf(v29);
      v17.f32[1] = v32;
      v33 = v17;
      v18 = vdiv_f32(vmul_f32(v15, v9), v6);
      v27 = v18.f32[0];
      v30 = cosf(v18.f32[1]);
      v19.f32[0] = cosf(v27);
      v19.f32[1] = v30;
      v31 = v19;
      v20 = vdiv_f32(vmul_f32(v15, v10), v6);
      v26 = v20.f32[0];
      v28 = cosf(v20.f32[1]);
      v21.f32[0] = cosf(v26);
      v21.f32[1] = v28;
      v22 = vmla_f32(vmla_f32(vmla_f32(v12, v11, v33), v13, v31), v14, v21);
      if (v34.i8[0])
      {
        *(v8 - 1) = v22.i32[0];
      }

      if (v34.i8[4])
      {
        *v8 = v22.i32[1];
      }

      v7 = vaddq_s64(v35, v23);
      v8 += 2;
      v5 -= 2;
    }

    while (v5);
  }
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_230FC17D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t shazam::targetFP(unsigned int *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = a1 + 6;
  do
  {
    v6 = a1[v2 + 2];
    if (v6)
    {
      for (i = 0; i != 4; ++i)
      {
        v8 = *(v5 + i);
        v9 = v8 == 0;
        v10 = v6 * v8;
        if (!v9)
        {
          ++v4;
        }

        v3 += v10;
      }
    }

    ++v2;
    ++v5;
  }

  while (v2 != 4);
  return v3 * a2 / *a1 / v4;
}

__n128 shazam::reframe_matrix@<Q0>(__int128 *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, uint8x8_t a6@<D3>)
{
  v6 = 0;
  *&a5 = a3;
  v7 = truncf(a3 / *a1);
  v8 = roundf(a2 / v7);
  v9 = sqrtf(v8);
  v10 = *a1;
  v11 = a1[1];
  v12 = vcvtas_u32_f32(v8 / roundf(v9));
  v18 = *(a1 + 4);
  v13 = vdup_n_s16(llroundf(v9));
  do
  {
    v14 = v17 + v6;
    if (*(v17 + v6 + 8))
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 2) = v15;
    a6.i32[0] = *(v14 + 6);
    a6 = vuzp1_s8(vbic_s8(v13, vceqz_s16(*&vmovl_u8(a6))), *&a5);
    *(v14 + 6) = a6.i32[0];
    v6 += 4;
  }

  while (v6 != 16);
  LODWORD(v17[0]) = vcvtps_u32_f32(*&a5 / v7);
  DWORD1(v17[0]) = v17[0];
  *(a4 + 32) = v18;
  result = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = result;
  return result;
}

__n128 shazam::intensify_matrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, uint8x8_t a4@<D1>)
{
  v4 = 0;
  if (*&a3 <= 12.0)
  {
    v5 = *&a3;
  }

  else
  {
    v5 = 12.0;
  }

  v6 = *&a3 < 8.0;
  LODWORD(a3) = 1.5;
  if (!v6)
  {
    *&a3 = ((12.0 - v5) * 0.125) + 1.0;
  }

  do
  {
    v7 = a1 + v4;
    *(v7 + 8) = (*&a3 * *(a1 + v4 + 8));
    a4.i32[0] = *(a1 + v4 + 24);
    a4 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4))), *&a3))), *&a3);
    *(v7 + 24) = a4.i32[0];
    v4 += 4;
  }

  while (v4 != 16);
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

float shazam::FreqLogTable::at(shazam::FreqLogTable *this)
{
  if (this)
  {
    return log(vcvtd_n_f64_u32(this, 6uLL));
  }

  else
  {
    return -4.1589;
  }
}

void (***shazam::signature_category(shazam *this))(shazam::_anonymous_namespace_::signature_category_impl *__hidden this)
{
  {
    shazam::signature_category();
  }

  return &shazam::signature_category(void)::instance;
}

uint64_t shazam::make_error_code(shazam *a1)
{
  v1 = a1;
  shazam::signature_category(a1);
  return v1;
}

{
  v1 = a1;
  shazam::sigx_category(a1);
  return v1;
}

void shazam::anonymous namespace::signature_category_impl::~signature_category_impl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x231921F20);
}

_BYTE *shazam::anonymous namespace::signature_category_impl::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 199)
  {
    if (a1 > 300)
    {
      if (a1 <= 302)
      {
        if (a1 == 301)
        {
          v3 = "Invalid - No peaks in signature";
        }

        else
        {
          v3 = "Invalid - Sig header has 0 length";
        }

        return std::string::basic_string[abi:ne200100]<0>(a2, v3);
      }

      switch(a1)
      {
        case 303:
          v3 = "Invalid - First peak and last peak less than 0.5 seconds apart";
          return std::string::basic_string[abi:ne200100]<0>(a2, v3);
        case 304:
          v3 = "Invalid - Over max length";
          return std::string::basic_string[abi:ne200100]<0>(a2, v3);
        case 400:
          v3 = "Invalid - Peak Density is too high";
          return std::string::basic_string[abi:ne200100]<0>(a2, v3);
      }
    }

    else
    {
      if (a1 <= 201)
      {
        if (a1 == 200)
        {
          v3 = "Invalid - Out of order peaks";
        }

        else
        {
          v3 = "Invalid - Peaks not sorted by time";
        }

        return std::string::basic_string[abi:ne200100]<0>(a2, v3);
      }

      switch(a1)
      {
        case 202:
          v3 = "Invalid - Duplicate peak found";
          return std::string::basic_string[abi:ne200100]<0>(a2, v3);
        case 203:
          v3 = "Invalid - Sig header length less than last peak time";
          return std::string::basic_string[abi:ne200100]<0>(a2, v3);
        case 300:
          v3 = "Invalid - No audio in signature";
          return std::string::basic_string[abi:ne200100]<0>(a2, v3);
      }
    }

LABEL_22:
    v3 = "unknown";
    return std::string::basic_string[abi:ne200100]<0>(a2, v3);
  }

  switch(a1)
  {
    case 100:
      v3 = "Unknown Error";
      break;
    case 101:
      v3 = "Invalid - Zero byte sig";
      break;
    case 102:
      v3 = "Invalid - Could not parse binary sig data";
      break;
    case 103:
      v3 = "Invalid - Magic key doesn't match expected";
      break;
    case 104:
      v3 = "Invalid - Sumo sig info block has the wrong size";
      break;
    case 105:
      v3 = "Invalid - Sig smaller than smallest possible sig";
      break;
    case 106:
      v3 = "Invalid - Unable to dump legacy sig";
      break;
    case 107:
      v3 = "Invalid - Unable to dump sumo sig";
      break;
    case 108:
      v3 = "Invalid - Unable to dump banded sig";
      break;
    case 109:
      v3 = "Invalid - Number of Bands not equal between rv and bands";
      break;
    case 110:
      v3 = "Invalid - Wrong number of bands.";
      break;
    case 111:
      v3 = "Invalid - Size in start header not found";
      break;
    case 112:
      v3 = "Invalid - Fp data header pkt size incorrect";
      break;
    case 113:
      v3 = "Invalid - Leftover bytes smaller than EXT_HEADER_TYPE";
      break;
    case 114:
      v3 = "Invalid - Malformed header chain";
      break;
    case 115:
      v3 = "Invalid - no header to extract sumo peaks from";
      break;
    case 116:
      v3 = "Invalid - Can only extract sumo peaks from a sumo signature";
      break;
    case 117:
    case 118:
    case 127:
      goto LABEL_22;
    case 119:
      v3 = "Invalid - Unpacked sig has no header to extract peaks from";
      break;
    case 120:
      v3 = "Invalid - Payload type of sumo doesn't match sig header";
      break;
    case 121:
      v3 = "Invalid - Unknown header error";
      break;
    case 122:
      v3 = "Invalid - Legacy sig info missing";
      break;
    case 123:
      v3 = "Invalid - Legacy sig info size mismatch";
      break;
    case 124:
      v3 = "Invalid - Error decompressing signature, could not get header of each band";
      break;
    case 125:
      v3 = "Invalid - Could not get ancient sig fp data header";
      break;
    case 126:
      v3 = "Error when reducing density of the signature";
      break;
    case 128:
      v3 = "Error when calculating time curvature: negative value";
      break;
    case 129:
      v3 = "Error when filling sumo patch: patch size must be 5";
      break;
    case 130:
      v3 = "Error when filling sumo patch: invalid position into patch";
      break;
    case 131:
      v3 = "Error when decoding sumo peaks: sumo peak too small";
      break;
    case 132:
      v3 = "Invalid - CRC";
      break;
    default:
      if (a1)
      {
        goto LABEL_22;
      }

      v3 = "Success";
      break;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void shazam::signature_category()
{
  {
  }
}

uint64_t shazam::dsp::detail::early_downsample_count(shazam::dsp::detail *this, float a2, float a3, int a4)
{
  v5 = 0;
  if (this >= 1 && (this & 1) == 0)
  {
    v5 = 0;
    do
    {
      v6 = this;
      ++v5;
      LODWORD(this) = this >> 1;
    }

    while ((v6 & 2) == 0);
  }

  v7 = (ceilf(log2f(a2 / a3)) + -1.0);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 - 1;
  v9 = v5 - a4;
  if (v5 < a4)
  {
    v9 = -1;
  }

  if (v9 + 1 < v8)
  {
    return (v9 + 1);
  }

  else
  {
    return v8;
  }
}

uint64_t shazam::ccp::checksum(shazam::ccp *this, unint64_t a2)
{
  if ((a2 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Checksum Alignment Error");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = 0;
  if (a2)
  {
    v3 = a2 >> 2;
    do
    {
      v4 = *this;
      this = (this + 4);
      v2 = (v4 + v2);
      --v3;
    }

    while (v3);
  }

  return v2;
}

gsl::details *shazam::ccp::validateFirstClusterCmdPkt@<X0>(gsl::details *a1@<X0>, gsl::details **a2@<X8>)
{
  if (*a1 <= 0x1FuLL || (subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(a1, 0x20uLL, 0xFFFFFFFFFFFFFFFFLL), v20[0] = subspan, v20[1] = v5, *a1 <= 0xAFuLL))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x6C);
    MEMORY[0x231921D00](exception, error_code, v15);
    goto LABEL_12;
  }

  v6 = subspan;
  v7 = shazam::reinterpret_safer<shazam::ClusterCmdPkt const*,0>(a1);
  v8 = *(v7 + 5);
  if (v6 < v8 || (v9 = v7, v10 = *v7, v6 < v10) || !v10)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = shazam::make_error_code(0x7B);
    MEMORY[0x231921D00](exception, v16, v17);
    goto LABEL_12;
  }

  if ((*(v7 + 6) ^ v8) != 0x789ABC13)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v18 = shazam::make_error_code(0x67);
    MEMORY[0x231921D00](exception, v18, v19);
LABEL_12:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  result = gsl::span<char const,18446744073709551615ul>::make_subspan(v20, 0, v8);
  *a2 = result;
  a2[1] = v12;
  a2[2] = v9;
  return result;
}

uint64_t shazam::reinterpret_safer<shazam::ClusterCmdPkt const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x1FuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void *shazam::ccp::validateNextClusterCmdPkt(void *result, int *a2, uint64_t a3, unint64_t a4)
{
  if (result[1] - a2 + *result <= 0x1FuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x71);
    MEMORY[0x231921D00](exception, error_code, v7);
    goto LABEL_11;
  }

  if (*a2 + a3 > a4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = shazam::make_error_code(0x130);
    MEMORY[0x231921D00](exception, v8, v9);
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v4 = a2[5];
  if (a4 - a3 != v4 || (a2[6] ^ v4) != 2023406611)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = shazam::make_error_code(0x67);
    MEMORY[0x231921D00](exception, v11, v12);
    goto LABEL_11;
  }

  return result;
}

float shazam::ccp::validateChecksum(int32x4_t *a1, shazam::ccp *this, unint64_t a3)
{
  v3 = a1->i32[0];
  if (this + v3 > a3 || &a1[2] > a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x130);
    MEMORY[0x231921D00](exception, error_code, v9);
    goto LABEL_8;
  }

  v5 = shazam::ccp::checksum(this, v3);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(a1[1], *a1)));
  if (LODWORD(result) + v5 != 2 * a1[1].i32[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = shazam::make_error_code(0x84);
    MEMORY[0x231921D00](exception, v10, v11);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void shazam::ClusterCmdPktIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  ClusterCmdPkt = shazam::ccp::validateFirstClusterCmdPkt(&v28, v27);
  v5 = v27[0];
  v6 = v27[1];
  v7 = v27[2];
  LODWORD(__p) = 1342177280;
  v25 = 32;
  v26 = v29;
  if (!v29)
  {
    goto LABEL_28;
  }

  v23 = a3;
  v8 = *(a3 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, &__p);
  v9 = v7[1].u32[1];
  v10 = v7->i32[3];
  v11 = v10 >= 0 && v7->i32[0] >= v9;
  v12 = !v11;
  v13 = v12 ? v7[1].u32[1] : 0;
  std::vector<char>::vector[abi:ne200100](&__p, v13);
  v14 = 0;
  v15 = __p;
  v16 = v12 ? __p : v6;
  v17 = v6;
  while (1)
  {
    shazam::ccp::validateChecksum(v7, v17, v5 + v6);
    if (v12)
    {
      memcpy(&v15[v14], v17, v7->i32[0]);
    }

    v21 = v7->i32[0];
    v14 += v21;
    if (v14 >= v9)
    {
      break;
    }

    v7 = (v17 + v21);
    v17 = (v17 + v21 + 32);
    shazam::ccp::validateNextClusterCmdPkt(&v28, v7->i32, v14, v9);
  }

  if (v10 < 0)
  {
    v9 = shazam::Unobfuscate(v16, v9, v18, v19, v20);
  }

  ClusterCmdPkt = gsl::make_span<shazam::spectral_peak_compact_t const>(v16, v9);
  if (ClusterCmdPkt == -1 || !v22 && ClusterCmdPkt)
  {
LABEL_28:
    gsl::details::terminate(ClusterCmdPkt);
  }

  shazam::iterate_headers<shazam::fp_data_header_extern_legacy>(ClusterCmdPkt, v22, v23);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_230FC2580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t shazam::iterate_headers<shazam::fp_data_header_extern_legacy>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = shazam::reinterpret_safer<shazam::fp_data_header_extern_legacy const*,0>(&v35);
  if (*(v4 + 4) != 0x40000000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x6F);
    MEMORY[0x231921D00](exception, error_code, v24);
    goto LABEL_21;
  }

  v5 = v4;
  v6 = *(v4 + 8);
  if (v35 < v6)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    v30 = shazam::make_error_code(0x70);
    MEMORY[0x231921D00](exception, v30, v31);
    goto LABEL_21;
  }

  if (v6 <= 0x18)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v25 = shazam::make_error_code(0x71);
    MEMORY[0x231921D00](exception, v25, v26);
    goto LABEL_21;
  }

  v7 = v35 - v6;
  if (v7)
  {
    if (v7 > 7 || (v35 & 7) != 0)
    {
      goto LABEL_9;
    }
  }

  v32 = 0x40000000;
  subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v35, 0x18uLL, 0xFFFFFFFFFFFFFFFFLL);
  v34 = v9;
  v10 = *(a3 + 24);
  if (!v10)
  {
LABEL_18:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v10 + 48))(v10, &v32);
  v12 = *(v5 + 8);
  v13 = 24;
  if (v12 >= 0x19)
  {
    while (v12 - v13 > 0x17)
    {
      v14 = v36 + v13;
      v15 = v13 + 24;
      v16 = *(v36 + v13 + 8);
      if (v12 - (v13 + 24) < v16)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        v19 = shazam::make_error_code(0x70);
        MEMORY[0x231921D00](exception, v19, v20);
        goto LABEL_21;
      }

      v32 = *(v14 + 4);
      subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v35, v13 + 24, v16);
      v34 = v17;
      v18 = *(a3 + 24);
      if (!v18)
      {
        goto LABEL_18;
      }

      result = (*(*v18 + 48))(v18, &v32);
      v13 = v15 + ((*(v14 + 8) + 3) & 0xFFFFFFFC);
      v12 = *(v5 + 8);
      if (v13 >= v12)
      {
        goto LABEL_16;
      }
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v21 = shazam::make_error_code(0x71);
    MEMORY[0x231921D00](exception, v21, v22);
LABEL_21:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

LABEL_16:
  if (v13 != v12)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v27 = shazam::make_error_code(0x72);
    MEMORY[0x231921D00](exception, v27, v28);
    goto LABEL_21;
  }

  return result;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_230FC2920(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

uint64_t shazam::reinterpret_safer<shazam::fp_data_header_extern_legacy const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x17uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::SHZ_FFT::SHZ_FFT(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  *a1 = v5;
  std::vector<float>::vector[abi:ne200100]((a1 + 8), 0x840uLL);
  *(a1 + 32) = *(a1 + 8);
  shazam::hann_window::hann_window(a1 + 40, a2, 1);
  __space = *(a1 + 16) - *(a1 + 8);
  std::align(0x20uLL, 0x800uLL, (a1 + 32), &__space);
  return a1;
}

void sub_230FC2AEC(_Unwind_Exception *exception_object)
{
  v4 = v3;
  v6 = *(v4 + 8);
  if (v6)
  {
    v1[6] = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  v8 = *v1;
  *v1 = 0;
  if (v8)
  {
    (*(*v8 + 48))(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_230FC2C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    shazam::SHZ_FFT::SHZ_FFT(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t shazam::SHZ_FFT::complexform(uint64_t a1, float *a2)
{
  v3.n128_f32[0] = shazam::hann_window::half_window((a1 + 40), a2, *(a1 + 32), 1);
  v4 = *(a1 + 32);
  v5 = ***a1;

  return v5(v3);
}

void sub_230FC2D8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void shazam::sig_stream::create(shazam::sig_stream *this@<X0>, shazam::exclusion_zone *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = this;
  v7 = shazam::exclusion_zone::exclusion_zone_width(a2);
  v8 = shazam::exclusion_zone::num_stft_frames(v7, v5);
  v9 = shazam::exclusion_zone::slice_max_buff_width(v7, v5);
  shazam::AlignedRingBuffer<float>::create(a3, v8, &v32);
  if (v37 != 1)
  {
    *a4 = v32;
    *(a4 + 160) = 0;
    return;
  }

  shazam::AlignedRingBuffer<std::complex<float>>::create(1u, 2, &v26);
  if (v31)
  {
    v10 = v9 * a3;
    v11 = (4 * v10) & 0x3FFFFFFF0;
    v12 = malloc_type_aligned_alloc(0x10uLL, v11 + 16, 0xB425FBCFuLL);
    v13 = v12;
    if (v12)
    {
      bzero(v12, v11 + 16);
      v23 = *v33;
      v24 = v34;
      v25 = v32;
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v14 = v36;
      v21 = v26;
      v22 = v35;
      v20 = *__p;
      v15 = v28;
      v16 = v29;
      __p[1] = 0;
      v28 = 0;
      __p[0] = 0;
      v17 = v30;
      bzero(v13, v11 + 16);
      *a4 = v7;
      *(a4 + 8) = v13;
      *(a4 + 16) = shazam::aligned_free;
      *(a4 + 24) = v10;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = -1;
      *(a4 + 56) = v25;
      *(a4 + 64) = v23;
      *(a4 + 80) = v24;
      *(a4 + 88) = v22;
      *(a4 + 96) = 0;
      *(a4 + 100) = v14;
      *(a4 + 104) = v21;
      *(a4 + 112) = v20;
      *(a4 + 128) = v15;
      *(a4 + 136) = v16;
      *(a4 + 144) = 0;
      *(a4 + 148) = v17;
      v18 = 1;
      *(a4 + 152) = a3;
      goto LABEL_9;
    }

    v18 = 0;
    v19 = 512;
  }

  else
  {
    v18 = 0;
    v19 = v26;
  }

  *a4 = v19;
LABEL_9:
  *(a4 + 160) = v18;
  if (v31 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v37)
  {
    if (v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }
  }
}

void sub_230FC2FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if ((a24 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    if (a26)
    {
      operator delete(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void shazam::AlignedRingBuffer<float>::create(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<float>::vector[abi:ne200100](__p, (a2 * a1 + 3));
  __ptr = __p[0];
  v9 = __p[1] - __p[0];
  v6 = std::align(0x10uLL, 4uLL, &__ptr, &v9);
  if (v6)
  {
    v7 = v12;
    *a3 = a1 | (a2 << 32);
    *(a3 + 8) = *__p;
    *(a3 + 24) = v7;
    *(a3 + 32) = v6;
    *(a3 + 40) = 0xFFFFFFFF00000000;
    *(a3 + 48) = 1;
  }

  else
  {
    *a3 = 512;
    v8 = __p[0];
    *(a3 + 48) = 0;
    if (v8)
    {
      __p[1] = v8;
      operator delete(v8);
    }
  }
}

void sub_230FC30B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::AlignedRingBuffer<std::complex<float>>::create(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::vector<std::complex<float>>::vector[abi:ne200100](__p, (a2 * a1 + 1));
  __ptr = __p[0];
  v9 = __p[1] - __p[0];
  v6 = std::align(0x10uLL, 8uLL, &__ptr, &v9);
  if (v6)
  {
    v7 = v12;
    *a3 = a1 | (a2 << 32);
    *(a3 + 8) = *__p;
    *(a3 + 24) = v7;
    *(a3 + 32) = v6;
    *(a3 + 40) = 0xFFFFFFFF00000000;
    *(a3 + 48) = 1;
  }

  else
  {
    *a3 = 512;
    v8 = __p[0];
    *(a3 + 48) = 0;
    if (v8)
    {
      __p[1] = v8;
      operator delete(v8);
    }
  }
}

void sub_230FC3194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::sig_stream::reset(shazam::sig_stream *this)
{
  *(this + 4) = 0;
  *(this + 6) = -1;
  bzero(*(this + 1), ((4 * *(this + 3)) & 0xFFFFFFFFFFFFFFF0) + 16);
  *(this + 24) = 0;
  *(this + 36) = 0;
  *(this + 5) = 0;
}

uint64_t shazam::sig_stream::checkpoint(shazam::sig_stream *this)
{
  if (*(this + 6) != -1)
  {
    return 501;
  }

  result = 0;
  *(this + 6) = *(this + 4);
  *(this + 25) = *(this + 24);
  *(this + 37) = *(this + 36);
  return result;
}

uint64_t shazam::sig_stream::rewind(shazam::sig_stream *this)
{
  v1 = *(this + 6);
  if (v1 == -1)
  {
    return 502;
  }

  *(this + 24) = *(this + 25);
  *(this + 25) = -1;
  *(this + 36) = *(this + 37);
  *(this + 37) = -1;
  if (v1 >= 7)
  {
    *(this + 4) = v1 - 7;
    LODWORD(v1) = 7;
    goto LABEL_6;
  }

  *(this + 4) = 0;
  if (v1 >= 1)
  {
LABEL_6:
    v4 = 0;
    v5 = -v1;
    do
    {
      shazam::sig_stream::push_frame_max(this, (*(this + 11) + 4 * (v5 + *(this + 24) + *(this + 15)) % *(this + 15) * *(this + 14)), v4);
      ++*(this + 4);
      ++v4;
      ++v5;
    }

    while (v5);
  }

  result = 0;
  *(this + 6) = -1;
  return result;
}

uint64_t shazam::sig_stream::push_frame_max(uint64_t this, float *a2, int a3)
{
  v3 = 0;
  v4 = *(this + 152);
  v5 = *(this + 32);
  v6 = *(this + 24) / v4;
  v7 = v5 + v6;
  v8 = *(this + 8);
  v9 = (v8 + 4 * (v5 + v6) % v6 * v4);
  if (v4 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(this + 152);
  }

  v11 = v10;
  do
  {
    v12 = *a2++;
    v9[v3++] = v12;
    --v11;
  }

  while (v11);
  v13 = 0;
  v14 = *v9;
  v15 = (v4 - 3) + 1;
  do
  {
    v16 = &v9[v13++];
    v17 = v9[v13];
    if (v14 <= v17)
    {
      v14 = v9[v13];
    }

    if (v14 <= v16[2])
    {
      v14 = v16[2];
    }

    *v16 = v14;
    v14 = v17;
    --v15;
  }

  while (v15);
  v18 = 0;
  v19 = (v7 - 3) % v6;
  v20 = (v7 - 6) % v6;
  v21 = v8 + 4 * (v7 - 1) % v6 * v4;
  v22 = v8 + 4 * v19 * v4;
  v23 = v8 + 4 * v20 * v4;
  do
  {
    if (a3 >= 1)
    {
      v24 = *(v21 + 4 * v18);
      if (v24 <= v9[v18])
      {
        v24 = v9[v18];
      }

      *(v21 + 4 * v18) = v24;
      if (a3 >= 3)
      {
        if (*(v22 + 4 * v18) > v24)
        {
          v24 = *(v22 + 4 * v18);
        }

        *(v22 + 4 * v18) = v24;
        if (a3 >= 6)
        {
          if (*(v23 + 4 * v18) > v24)
          {
            v24 = *(v23 + 4 * v18);
          }

          *(v23 + 4 * v18) = v24;
        }
      }
    }

    ++v18;
    --v10;
  }

  while (v10);
  return this;
}

unint64_t shazam::sig_stream::find_peaks(shazam::sig_stream *this, const float *a2, unint64_t *a3)
{
  v3 = *(this + 38);
  v4 = (v3 - 10);
  v5 = *a3;
  if (*a3 >= v4)
  {
    return 0;
  }

  v6 = *this;
  v7 = v6 >> 1;
  v8 = -3 - (v6 >> 1);
  v9 = *(this + 4);
  v10 = *(this + 1);
  v11 = v10 + 4 * (*(this + 3) / v3 + v8 + v9) % (*(this + 3) / v3) * v3;
  v12 = v9 + (-7 - (v6 >> 1));
  v13 = v9 + (1 - (v6 >> 1));
  while (1)
  {
    v14 = a2[v5];
    if (v14 >= 0.015625)
    {
      v15 = v11 + 4 * v5;
      v16 = v15 - 4;
      if (v14 >= *(v15 - 4))
      {
        v17 = 0;
        v18 = *(v15 - 12);
        if (v18 <= *(v15 + 4))
        {
          v18 = *(v15 + 4);
        }

        v19 = 3;
        do
        {
          if (v18 <= *(v16 + 4 * v19))
          {
            v18 = *(v16 + 4 * v19);
          }

          if (v18 <= *(v15 + 4 * ~v19))
          {
            v18 = *(v15 + 4 * ~v19);
          }

          v19 += 3;
          v17 += 3;
        }

        while (v17 < 7);
        if (v14 > v18)
        {
          v20 = *(this + 3) / v3;
          if (v18 <= *(v10 + 4 * (v12 + v20) % v20 * v3 + 4 * v5 - 4))
          {
            v18 = *(v10 + 4 * (v12 + v20) % v20 * v3 + 4 * v5 - 4);
          }

          if (v18 <= *(v10 + 4 * (v13 + v20) % v20 * v3 + 4 * v5 - 4))
          {
            v18 = *(v10 + 4 * (v13 + v20) % v20 * v3 + 4 * v5 - 4);
          }

          if (v6 >= 0x10)
          {
            v21 = v10 - 4 + 4 * v5;
            v22 = v20 + v9;
            v23 = 7;
            do
            {
              v24 = v22 + (v8 - v23);
              if (v18 <= *(v21 + 4 * (v22 + (v23 + v8)) % v20 * v3))
              {
                v18 = *(v21 + 4 * (v22 + (v23 + v8)) % v20 * v3);
              }

              if (v18 <= *(v21 + 4 * v24 % v20 * v3))
              {
                v18 = *(v21 + 4 * v24 % v20 * v3);
              }

              v23 = (v23 + 7);
            }

            while (v23 < v7);
          }

          if (v5 < (v3 - 2) && v14 > v18)
          {
            break;
          }
        }
      }
    }

    *a3 = ++v5;
    if (v5 >= v4)
    {
      return 0;
    }
  }

  *a3 = v5 + 1;
  return v9 - v7 - *(this + 5);
}

void shazam::sig_stream::stream_flow(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  *(a1 + 24) = v5 + 1;
  shazam::sig_stream::push_frame_max(a1, (*(a1 + 11) + 4 * (*(a1 + 15) + v5) % *(a1 + 15) * *(a1 + 14)), 6);
  v6 = *(a1 + 4);
  if (v6 >= (*a1 >> 1))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 11);
    v10 = *(a1 + 14);
    v9 = *(a1 + 15);
    v27 = 10;
    v11 = *(a1 + 38);
    if ((v11 - 21) <= 0xFFFFFFF4)
    {
      v12 = (v8 + 4 * (v9 + v7 + ~(v4 >> 1)) % v9 * v10);
      do
      {
        peaks = shazam::sig_stream::find_peaks(a1, v12, &v27);
        if ((v14 & 0x100000000) != 0)
        {
          v15 = v14;
          v17 = *(a2 + 8);
          v16 = *(a2 + 16);
          if (v17 >= v16)
          {
            v19 = (v17 - *a2) >> 3;
            if ((v19 + 1) >> 61)
            {
              std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
            }

            v20 = v16 - *a2;
            v21 = v20 >> 2;
            if (v20 >> 2 <= (v19 + 1))
            {
              v21 = v19 + 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a2, v22);
            }

            v23 = shazam::spectral_peak_t::spectral_peak_t((8 * v19), peaks, v15, v12, 22);
            v18 = v23 + 8;
            v24 = *(a2 + 8) - *a2;
            v25 = v23 - v24;
            memcpy(v23 - v24, *a2, v24);
            v26 = *a2;
            *a2 = v25;
            *(a2 + 8) = v18;
            *(a2 + 16) = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            shazam::spectral_peak_t::spectral_peak_t(*(a2 + 8), peaks, v14, v12, 22);
            v18 = (v17 + 8);
            *(a2 + 8) = v17 + 8;
          }

          *(a2 + 8) = v18;
          v11 = *(a1 + 38);
        }
      }

      while (v27 < (v11 - 10));
      v6 = *(a1 + 4);
    }
  }

  *(a1 + 4) = v6 + 1;
}

void *std::vector<std::complex<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_230FC3900(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t *shazam::flatten_and_sort@<X0>(char ***a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v4;
      v7 = v4[1];
      v4 += 3;
      v6 += (v7 - v8) >> 3;
    }

    while (v4 != v5);
  }

  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(a2, v6);
  v10 = *a1;
  v9 = a1[1];
  while (v10 != v9)
  {
    std::vector<shazam::spectral_peak_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<shazam::spectral_peak_t const*>,std::__wrap_iter<shazam::spectral_peak_t const*>>(a2, *(a2 + 8), *v10, v10[1], (v10[1] - *v10) >> 3);
    v10 += 3;
  }

  v11 = *(a2 + 8);
  v12 = 126 - 2 * __clz((v11->i64 - *a2) >> 3);
  if (v11 == *a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(*a2, v11, &v15, v13, 1);
}

void sub_230FC3A80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<shazam::spectral_peak_t>::__insert_with_size[abi:ne200100]<std::__wrap_iter<shazam::spectral_peak_t const*>,std::__wrap_iter<shazam::spectral_peak_t const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t *shazam::hann_window::hann_window(uint64_t *a1, unint64_t a2, int a3)
{
  std::vector<float>::vector[abi:ne200100](a1, a2 + 2)[3] = a2;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (a3 == 1)
  {
    v7 = a2 + 1;
  }

  if (a2 != -1)
  {
    v8 = 0;
    *v6.i32 = v7;
    v9 = vdupq_n_s64(a2);
    v10 = xmmword_230FE3AF0;
    v27 = vdupq_n_s64(4uLL);
    v28 = vdupq_n_s32(0x40C90FDBu);
    v11 = *a1;
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = vdupq_lane_s32(v6, 0);
    v29 = v9;
    v13 = xmmword_230FE40E0;
    do
    {
      v32 = v13;
      v33 = v10;
      v14 = vcgeq_u64(v9, v10);
      v15 = vmovn_s64(v14);
      v30 = vuzp1_s16(v15, *v14.i8).u8[0];
      v31 = vorrq_s8(vdupq_n_s64(v8), xmmword_230FE40E0);
      v16 = v8 + 1;
      v14.i64[0] = v8;
      v14.i64[1] = v8 + 1;
      v37 = vdivq_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v14)), vcvtq_f64_u64(v31)), v28), v26);
      v34 = cosf(v37.f32[1]);
      v17.f32[0] = cosf(v37.f32[0]);
      v17.f32[1] = v34;
      v35 = v17;
      v18 = cosf(v37.f32[2]);
      v19 = v35;
      v19.f32[2] = v18;
      v36 = v19;
      v20 = cosf(v37.f32[3]);
      v21 = v36;
      v21.f32[3] = v20;
      v22.i64[0] = 0x3F0000003F000000;
      v22.i64[1] = 0x3F0000003F000000;
      v23.i64[0] = 0xBF000000BF000000;
      v23.i64[1] = 0xBF000000BF000000;
      v24 = vmlaq_f32(v22, v23, v21);
      if (v30)
      {
        *(v11 + 4 * v8) = v24.i32[0];
      }

      if (vuzp1_s16(v15, *&v24).i8[2])
      {
        *(v11 + 4 * v8 + 4) = v24.i32[1];
      }

      v9 = v29;
      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v29, *&v32))).i32[1])
      {
        *(v11 + 4 * v31.i64[0]) = v24.i32[2];
        *(v11 + 4 * v31.i64[1]) = v24.i32[3];
      }

      v13 = vaddq_s64(v32, v27);
      v10 = vaddq_s64(v33, v27);
      v8 += 4;
    }

    while (v16 - 1 != v12);
  }

  return a1;
}

float shazam::hann_window::half_window(shazam::hann_window *this, float *a2, float *a3, uint64_t a4)
{
  v4 = ((*(this + 1) - *this) >> 2) - a4;
  if (v4 >= *(this + 3))
  {
    v4 = *(this + 3);
  }

  if (v4)
  {
    v5 = (*this + 4 * a4);
    do
    {
      v6 = *a2++;
      v7 = v6;
      v8 = *v5++;
      result = v7 * v8;
      *a3++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

float32x2_t shazam::hann_window::half_window(float **a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a1;
    do
    {
      v5 = *v4++;
      v6 = v5;
      v7 = *a2++;
      result = vmul_n_f32(v7, v6);
      *a3++ = result;
      v3 = (v3 - 1);
    }

    while (v3);
  }

  return result;
}

gsl::details *preProcess@<X0>(unint64_t *a1@<X0>, gsl::details *a2@<X8>)
{
  v4 = a1[1];
  v5 = v4 + 4 * *a1;
  v20 = v4;
  v21 = v5;
  v22 = v4;
  v19[0] = v4;
  v19[1] = v5;
  v19[2] = v5;
  result = std::vector<float>::vector[abi:ne200100]<gsl::details::span_iterator<float const>,0>(a2, &v20, v19);
  v7 = a1[1];
  v8 = v7 + 4 * *a1;
  v20 = v7;
  v21 = v8;
  v22 = v7;
  v9 = 0.0;
  while (v22 != v8)
  {
    v9 = v9 + *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
    result = gsl::details::span_iterator<float>::operator++(&v20);
    if (v20 != v7 || v21 != v8)
    {
      gsl::details::terminate(result);
    }
  }

  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = 0.0;
  if (*a2 != v12)
  {
    v14 = v9 / *a1;
    v15 = *a2;
    do
    {
      *v15 = *v15 - v14;
      ++v15;
    }

    while (v15 != v12);
    if (v11 != v12)
    {
      v13 = 0.0;
      v16 = v11;
      do
      {
        v17 = *v16++;
        v13 = v13 + (v17 * v17);
      }

      while (v16 != v12);
    }
  }

  v18 = sqrtf(v13 / (v12 - v11));
  if (v18 < 0.00000001)
  {
    v18 = 0.00000001;
  }

  for (; v11 != v12; ++v11)
  {
    *v11 = *v11 / v18;
  }

  return result;
}

void shazam::dsp::CrepeFramer::CrepeFramer(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4, int a5, char a6)
{
  *a1 = a3;
  *(a1 + 16) = 9600;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = a6;
  v7 = -1;
  if (a5)
  {
    v7 = 24 * (a2 / a3);
  }

  *(a1 + 8) = v7;
  operator new();
}

void sub_230FC4128(_Unwind_Exception *a1)
{
  v4 = v2[7];
  v2[7] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v2[4];
  if (v5)
  {
    v2[5] = v5;
    operator delete(v5);
  }

  std::unique_ptr<shazam::dsp::cascade_buf>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void *shazam::dsp::CrepeFramer::reset(shazam::dsp::CrepeFramer *this)
{
  shazam::dsp::cascade_buf::reset(*(this + 3));
  result = shazam::dsp::cascade_buf::set_read_point(*(this + 3), 0, *(this + 4), 0);
  *(this + 5) = *(this + 4);
  *(this + 8) = 0;
  return result;
}

void shazam::dsp::CrepeFramer::flow(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v41[0] = a2;
  v41[1] = a3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = a1 + 8;
    if (0x8E38E38E38E38E39 * ((*(a1 + 5) - *(a1 + 4)) >> 4) < *(a1 + 1))
    {
      std::vector<shazam::dsp::CrepeFramer::timeframe>::resize(v6, v5);
    }

    *(a1 + 8) = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; i += v11)
    {
      v8 = *(a1 + 3);
      subspan = gsl::span<float,18446744073709551615ul>::make_subspan(v41, i, (v3 - i));
      v11 = shazam::dsp::cascade_buf::flow(v8, subspan, v10);
      if (v12)
      {
        v40 = v11;
        v13 = *(a1 + 3);
        v42 = a1[4];
        v14 = v13[6];
        if (v13[7] == v14)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v15 = v3;
        v16 = *v14;
        while (1)
        {
          v17 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(v13 + 9, &v42);
          if (!v17)
          {
LABEL_36:
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v18 = *(v17 + 3);
          v19 = v16 - v18;
          if (v16 < v18)
          {
            v19 = 0;
          }

          if (v19 < 0x400)
          {
            break;
          }

          v20 = v13[3];
          if (v13[4] == v20)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          if (!*v20)
          {
            goto LABEL_35;
          }

          v21 = (*v20 + 4 * (((v20[2] >> 1) - 1) & v18));
          v57[0] = 1024;
          v57[1] = v21;
          if (*(a1 + 72) == 1)
          {
            v17 = preProcess(v57, &v55);
          }

          else
          {
            *&v43 = v21;
            *(&v43 + 1) = v21 + 256;
            *&v44 = v21;
            v52 = v21;
            v53 = v21 + 256;
            v54 = (v21 + 256);
            v17 = std::vector<float>::vector[abi:ne200100]<gsl::details::span_iterator<float const>,0>(&v55, &v43, &v52);
          }

          if (v56 - v55 == -4 || (v17 = *(a1 + 7), !v55) && v56)
          {
LABEL_35:
            gsl::details::terminate(v17);
          }

          (*(*v17 + 16))(&v52);
          v22 = *(a1 + 4);
          v23 = *(a1 + 1);
          if (0x8E38E38E38E38E39 * ((*(a1 + 5) - v22) >> 4) >= v23)
          {
            v30 = (v22 + 144 * (v18 / *a1 % v23));
            v31 = v52;
            v32 = v52[4];
            v34 = v52[1];
            v33 = v52[2];
            v30[3] = v52[3];
            v30[4] = v32;
            v30[1] = v34;
            v30[2] = v33;
            v35 = v31[8];
            v37 = v31[5];
            v36 = v31[6];
            v30[7] = v31[7];
            v30[8] = v35;
            v30[5] = v37;
            v30[6] = v36;
            *v30 = *v31;
          }

          else
          {
            v43 = *v52;
            v24 = v52[4];
            v26 = v52[1];
            v25 = v52[2];
            v46 = v52[3];
            v47 = v24;
            v44 = v26;
            v45 = v25;
            v27 = v52[8];
            v29 = v52[5];
            v28 = v52[6];
            v50 = v52[7];
            v51 = v27;
            v48 = v29;
            v49 = v28;
            std::vector<shazam::dsp::CrepeFramer::timeframe>::push_back[abi:ne200100]((a1 + 8), &v43);
          }

          shazam::dsp::cascade_buf::set_read_point(*(a1 + 3), 0, a1[4], v18 + *a1);
          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }

          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          v38 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(v13 + 9, &v42);
          if (!v38)
          {
            goto LABEL_36;
          }

          if (v18 == v38[3])
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Read offset not updated correctly");
            __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
          }
        }

        v3 = v15;
        v11 = v40;
      }
    }
  }
}

void sub_230FC4514(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<shazam::dsp::CrepeFramer::timeframe>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<shazam::dsp::CrepeFramer::timeframe>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 144 * a2;
  }
}

unint64_t shazam::dsp::CrepeFramer::flush(shazam::dsp::CrepeFramer *this)
{
  MEMORY[0x28223BE20](this);
  if (*(v1 + 8))
  {
    return 0;
  }

  v3 = v1;
  v43 = (v1 + 8);
  *(v1 + 8) = 0x8E38E38E38E38E39 * ((*(v1 + 5) - *(v1 + 4)) >> 4);
  v4 = *(v1 + 3);
  v44 = *v1;
  v41 = v1[4];
  bzero(v50, 0x1000uLL);
  v5 = v4[14];
  if (v5)
  {
    memcpy(v50, (*v4[3] + 4 * (((*(v4[3] + 16) >> 1) - 1) & (*v4[6] - v5))), 4 * v5);
  }

  v48 = 0;
  __p = 0;
  v49 = 0;
  std::vector<float>::reserve(&__p, 0x200uLL);
  bzero(__dst, 0x1000uLL);
  if (v4[4] == v4[3])
  {
    v2 = -1;
    goto LABEL_55;
  }

  v6 = 0;
  v2 = -1;
  v7 = 1024;
  do
  {
    v45 = v41 | (v6 << 32);
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(v4 + 9, &v45);
    if (v8)
    {
      v9 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(v4 + 9, &v45);
      if (!v9)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v10 = v9[3];
    }

    else
    {
      v10 = 0;
    }

    v42 = v7;
    v11 = v4[6];
    if (v6 >= (v4[7] - v11) >> 3)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = v4;
    v13 = (0x400 / v44) >> 1;
    v14 = *(v11 + 8 * v6);
    if (v14 >= v10)
    {
      v15 = v14 - v10;
    }

    else
    {
      v15 = 0;
    }

    if (v6 && v8 && v15 > 0x400)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Invalid read offset");
      exception->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(exception, off_2788F7B98, MEMORY[0x277D825F8]);
    }

    while (v13 > 0)
    {
      if (!v8)
      {
        goto LABEL_48;
      }

LABEL_22:
      bzero(__dst, 0x1000uLL);
      if (v15 >= 0x400)
      {
        v16 = 1024;
      }

      else
      {
        v16 = v15;
      }

      memcpy(__dst, (*(v12[3] + 24 * v6) + 4 * (((*(v12[3] + 24 * v6 + 16) >> 1) - 1) & v10)), 4 * v16);
      if (v15 <= 0x3FF)
      {
        v17 = (v16 + v10) & 0x3FF;
        if (v17 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = (v16 + v10) & 0x3FF;
        }

        memcpy(&__dst[v16], &v50[v17], 4096 - 4 * v18);
      }

      v65[0] = 1024;
      v65[1] = __dst;
      if (*(v3 + 72) == 1)
      {
        v19 = preProcess(v65, &v63);
      }

      else
      {
        *&v51 = __dst;
        *(&v51 + 1) = &__p;
        *&v52 = __dst;
        v60 = __dst;
        p_p = &__p;
        v62 = &__p;
        v19 = std::vector<float>::vector[abi:ne200100]<gsl::details::span_iterator<float const>,0>(&v63, &v51, &v60);
      }

      if (v64 - v63 == -4 || (v19 = *(v3 + 7), !v63) && v64)
      {
        gsl::details::terminate(v19);
      }

      (*(*v19 + 16))(&v60);
      v20 = *(v3 + 4);
      v21 = *(v3 + 1);
      if (0x8E38E38E38E38E39 * ((*(v3 + 5) - v20) >> 4) >= v21)
      {
        v2 = v10 / *v3 % v21;
        v29 = (v20 + 144 * v2);
        v28 = v60;
        v30 = *(v60 + 4);
        v32 = *(v60 + 1);
        v31 = *(v60 + 2);
        v29[3] = *(v60 + 3);
        v29[4] = v30;
        v29[1] = v32;
        v29[2] = v31;
        v33 = *(v28 + 8);
        v35 = *(v28 + 5);
        v34 = *(v28 + 6);
        v29[7] = *(v28 + 7);
        v29[8] = v33;
        v29[5] = v35;
        v29[6] = v34;
        *v29 = *v28;
LABEL_40:
        p_p = v28;
        operator delete(v28);
        goto LABEL_41;
      }

      v51 = *v60;
      v22 = *(v60 + 3);
      v24 = *(v60 + 1);
      v23 = *(v60 + 2);
      v55 = *(v60 + 4);
      v54 = v22;
      v52 = v24;
      v53 = v23;
      v25 = *(v60 + 7);
      v27 = *(v60 + 5);
      v26 = *(v60 + 6);
      v59 = *(v60 + 8);
      v58 = v25;
      v56 = v27;
      v57 = v26;
      std::vector<shazam::dsp::CrepeFramer::timeframe>::push_back[abi:ne200100](v43, &v51);
      v2 = -1 - 0x71C71C71C71C71C7 * ((*(v3 + 5) - *(v3 + 4)) >> 4);
      v28 = v60;
      if (v60)
      {
        goto LABEL_40;
      }

LABEL_41:
      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      --v13;
      v10 += v44;
      if (v14 >= v10)
      {
        v15 = v14 - v10;
      }

      else
      {
        v15 = 0;
      }
    }

    if (v8 && !v6 && v15)
    {
      goto LABEL_22;
    }

LABEL_48:
    v4 = v12;
    if (v6 < (v12[1] - *v12) >> 3)
    {
      shazam::resample_stream::resample_stream(&v51, *(*v12 + 8 * v6));
      shazam::resample_stream::stream_flow(&v51);
      v36 = __p;
      v37 = v48;
      v38 = __p;
      if (__p != v48)
      {
        do
        {
          *v38 = *v38 * 1.4142;
          ++v38;
        }

        while (v38 != v37);
      }

      bzero(v50, 0x1000uLL);
      memcpy(v50, v36, v37 - v36);
      v48 = v36;
      shazam::resample_stream::~resample_stream(&v51);
    }

    v44 >>= 1;
    v7 = v42 / 2;
    ++v6;
  }

  while (v6 < 0xAAAAAAAAAAAAAAABLL * ((v12[4] - v12[3]) >> 3));
LABEL_55:
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  return v2;
}

void sub_230FC4B34(_Unwind_Exception *a1)
{
  v2 = STACK[0x1028];
  if (STACK[0x1028])
  {
    STACK[0x1030] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

char *shazam::dsp::CrepeFramer::generate@<X0>(shazam::dsp::CrepeFramer *this@<X0>, uint64_t a2@<X8>)
{
  v4 = shazam::dsp::CrepeFramer::flush(this);
  SamplesWritten = shazam::dsp::cascade_buf::getSamplesWritten(*(this + 3), 0);
  v6 = *(this + 1);
  v7 = SamplesWritten / *this;
  if (v4 == -1)
  {
    v4 = v7 % v6;
  }

  if (v7 >= v6)
  {
    v11 = (v4 + 1) % v6;
    v12 = (v4 + 1 + v6) % v6;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v13 = *(this + 4);
    v14 = (v13 + 144 * v11);
    if (v11 >= v12)
    {
      std::vector<shazam::dsp::CrepeFramer::timeframe>::__insert_with_size[abi:ne200100]<std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>,std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>>(a2, 0, v14, *(this + 5), 0x8E38E38E38E38E39 * ((*(this + 5) - v14) >> 4));
      return std::vector<shazam::dsp::CrepeFramer::timeframe>::__insert_with_size[abi:ne200100]<std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>,std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>>(a2, *(a2 + 8), *(this + 4), (*(this + 4) + 144 * v12), v12);
    }

    else
    {
      return std::vector<shazam::dsp::CrepeFramer::timeframe>::__insert_with_size[abi:ne200100]<std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>,std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>>(a2, 0, v14, (v13 + 144 * v12), 0x8E38E38E38E38E39 * ((144 * v12 - 144 * v11) >> 4));
    }
  }

  else
  {
    v8 = *(this + 4);
    v9 = *(this + 5);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;

    return std::vector<shazam::dsp::CrepeFramer::timeframe>::__init_with_size[abi:ne200100]<std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>,std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>>(a2, v8, v9, 0x8E38E38E38E38E39 * ((v9 - v8) >> 4));
  }
}

void sub_230FC4D28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

gsl::details *gsl::span<float,18446744073709551615ul>::make_subspan(gsl::details *a1, unint64_t a2, gsl::details *this)
{
  v3 = *a1 - a2;
  if (*a1 < a2)
  {
    goto LABEL_6;
  }

  if (this == -1)
  {
    this = (*a1 - a2);
    if (v3 != -1)
    {
      goto LABEL_4;
    }

LABEL_6:
    gsl::details::terminate(a1);
  }

  if (v3 < this)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = *(a1 + 1) + 4 * a2;
  return this;
}

gsl::details *std::vector<float>::vector[abi:ne200100]<gsl::details::span_iterator<float const>,0>(gsl::details *a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (*a3 != *a2 || a3[1] != a2[1])
  {
    gsl::details::terminate(a1);
  }

  v5 = (a3[2] - a2[2]) >> 2;
  v9 = *a2;
  v10 = a2[2];
  v7 = *a3;
  v8 = a3[2];
  std::vector<float>::__init_with_size[abi:ne200100]<gsl::details::span_iterator<float const>,gsl::details::span_iterator<float const>>(a1, &v9, &v7, v5);
  return a1;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<gsl::details::span_iterator<float const>,gsl::details::span_iterator<float const>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FC4EC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<float>::__construct_at_end<gsl::details::span_iterator<float const>,gsl::details::span_iterator<float const>>(gsl::details *a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a1 + 1);
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *a3;
  v7 = *(a3 + 2);
  result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<float>,gsl::details::span_iterator<float const>,gsl::details::span_iterator<float const>,float *>(a1, &v8, &v6, v4);
  *(a1 + 1) = result;
  return result;
}

_DWORD *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<float>,gsl::details::span_iterator<float const>,gsl::details::span_iterator<float const>,float *>(gsl::details *a1, gsl::details *a2, void *a3, _DWORD *a4)
{
  if (*a2 != *a3)
  {
LABEL_5:
    gsl::details::terminate(a1);
  }

  while (1)
  {
    if (*(a2 + 1) != a3[1])
    {
      goto LABEL_5;
    }

    if (*(a2 + 2) == a3[2])
    {
      return a4;
    }

    *a4++ = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
    a1 = gsl::details::span_iterator<float>::operator++(a2);
    if (*a2 != *a3)
    {
      goto LABEL_5;
    }
  }
}

uint64_t *std::unique_ptr<shazam::dsp::cascade_buf>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v2 + 72);
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = (v2 + 24);
    std::vector<shazam::static_aligned_dual_buffer<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = v2;
    std::vector<std::unique_ptr<shazam::resample_stream>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x231921F20](v2, 0x10B0C40FA719F4DLL);
  }

  return result;
}

void std::vector<shazam::dsp::CrepeFramer::timeframe>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 144 * ((144 * a2 - 144) / 0x90) + 144;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x1C71C71C71C71C7)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xE38E38E38E38E3)
    {
      v9 = 0x1C71C71C71C71C7;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::CrepeFramer::timeframe>>(a1, v9);
    }

    v11 = 144 * v6;
    v12 = 144 * ((144 * a2 - 144) / 0x90) + 144;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::CrepeFramer::timeframe>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::vector<shazam::dsp::CrepeFramer::timeframe>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xE38E38E38E38E3)
    {
      v16 = 0x1C71C71C71C71C7;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::CrepeFramer::timeframe>>(a1, v16);
    }

    v17 = 144 * v13;
    *v17 = *a2;
    v18 = a2[1];
    v19 = a2[2];
    v20 = a2[4];
    *(v17 + 48) = a2[3];
    *(v17 + 64) = v20;
    *(v17 + 16) = v18;
    *(v17 + 32) = v19;
    v21 = a2[5];
    v22 = a2[6];
    v23 = a2[8];
    *(v17 + 112) = a2[7];
    *(v17 + 128) = v23;
    *(v17 + 80) = v21;
    *(v17 + 96) = v22;
    v12 = 144 * v13 + 144;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy((v17 - v24), *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[4];
    v4[3] = a2[3];
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    v9 = a2[5];
    v10 = a2[6];
    v11 = a2[8];
    v4[7] = a2[7];
    v4[8] = v11;
    v4[5] = v9;
    v4[6] = v10;
    v12 = (v4 + 9);
  }

  *(a1 + 8) = v12;
}

uint64_t std::vector<shazam::dsp::CrepeFramer::timeframe>::__init_with_size[abi:ne200100]<std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>,std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<shazam::dsp::CrepeFramer::timeframe>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FC54D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<shazam::dsp::CrepeFramer::timeframe>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::CrepeFramer::timeframe>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

char *std::vector<shazam::dsp::CrepeFramer::timeframe>::__insert_with_size[abi:ne200100]<std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>,std::__wrap_iter<shazam::dsp::CrepeFramer::timeframe const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v8) >> 4)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0x8E38E38E38E38E39 * ((v8 - __dst) >> 4)) >= a5)
      {
        v25 = 9 * a5;
        v26 = &__dst[144 * a5];
        v27 = &v8[-144 * a5];
        v28 = a1[1];
        while (v27 < v8)
        {
          *v28 = *v27;
          v29 = *(v27 + 1);
          v30 = *(v27 + 2);
          v31 = *(v27 + 4);
          v28[3] = *(v27 + 3);
          v28[4] = v31;
          v28[1] = v29;
          v28[2] = v30;
          v32 = *(v27 + 5);
          v33 = *(v27 + 6);
          v34 = *(v27 + 8);
          v28[7] = *(v27 + 7);
          v28[8] = v34;
          v28[5] = v32;
          v28[6] = v33;
          v27 += 144;
          v28 += 9;
        }

        a1[1] = v28;
        if (v8 != v26)
        {
          memmove(&__dst[144 * a5], __dst, v8 - v26);
        }

        v44 = 16 * v25;
        v45 = v5;
        v46 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          *v18 = *v16;
          v19 = *(v16 + 1);
          v20 = *(v16 + 2);
          v21 = *(v16 + 4);
          *(v18 + 3) = *(v16 + 3);
          *(v18 + 4) = v21;
          *(v18 + 1) = v19;
          *(v18 + 2) = v20;
          v22 = *(v16 + 5);
          v23 = *(v16 + 6);
          v24 = *(v16 + 8);
          *(v18 + 7) = *(v16 + 7);
          *(v18 + 8) = v24;
          *(v18 + 5) = v22;
          *(v18 + 6) = v23;
          v16 += 144;
          v18 += 144;
          v17 += 144;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v35 = &__dst[144 * a5];
        v36 = &v17[-144 * a5];
        v37 = v17;
        while (v36 < v8)
        {
          *v37 = *v36;
          v38 = *(v36 + 1);
          v39 = *(v36 + 2);
          v40 = *(v36 + 4);
          *(v37 + 3) = *(v36 + 3);
          *(v37 + 4) = v40;
          *(v37 + 1) = v38;
          *(v37 + 2) = v39;
          v41 = *(v36 + 5);
          v42 = *(v36 + 6);
          v43 = *(v36 + 8);
          *(v37 + 7) = *(v36 + 7);
          *(v37 + 8) = v43;
          *(v37 + 5) = v41;
          *(v37 + 6) = v42;
          v36 += 144;
          v37 += 144;
        }

        a1[1] = v37;
        if (v18 != v35)
        {
          memmove(&__dst[144 * a5], __dst, v17 - v35);
        }

        v45 = v5;
        v46 = v6;
        v44 = v15;
      }

      memmove(v45, v46, v44);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x71C71C71C71C71C7 * (&v8[-*a1] >> 4);
    if (v11 > 0x1C71C71C71C71C7)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v10;
    v13 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 4);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0xE38E38E38E38E3)
    {
      v14 = 0x1C71C71C71C71C7;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::dsp::CrepeFramer::timeframe>>(a1, v14);
    }

    v47 = 16 * (v12 >> 4);
    v48 = (v47 + 144 * a5);
    v49 = 144 * a5;
    v50 = v47;
    do
    {
      *v50 = *v6;
      v51 = v6[1];
      v52 = v6[2];
      v53 = v6[4];
      v50[3] = v6[3];
      v50[4] = v53;
      v50[1] = v51;
      v50[2] = v52;
      v54 = v6[5];
      v55 = v6[6];
      v56 = v6[8];
      v50[7] = v6[7];
      v50[8] = v56;
      v50[5] = v54;
      v50[6] = v55;
      v50 += 9;
      v6 += 9;
      v49 -= 144;
    }

    while (v49);
    memcpy(v48, v5, a1[1] - v5);
    v57 = *a1;
    v58 = &v48[a1[1] - v5];
    a1[1] = v5;
    v59 = v5 - v57;
    v60 = (v47 - (v5 - v57));
    memcpy(v60, v57, v59);
    v61 = *a1;
    *a1 = v60;
    a1[1] = v58;
    a1[2] = 0;
    if (v61)
    {
      operator delete(v61);
    }

    return v47;
  }

  return v5;
}

void sub_230FC59D8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 2)
  {
    v6 = __cxa_begin_catch(a1);
    [v4 convertException:v6 toError:v3 code:v6[4]];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(a1);
    }

    [v4 convertException:__cxa_begin_catch(a1) toError:v3 code:4294967196];
    __cxa_end_catch();
  }

  JUMPOUT(0x230FC59B8);
}

void sub_230FC5F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  v38 = v34;

  a31 = &a13;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a2 == 2)
  {
    v41 = __cxa_begin_catch(a1);
    [v33 convertException:v41 toError:v32 code:v41[4]];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(a1);
    }

    [v33 convertException:__cxa_begin_catch(a1) toError:v32 code:4294967196];
    __cxa_end_catch();
  }

  JUMPOUT(0x230FC5F40);
}

uint64_t shazam::unobfuscate(uint64_t this, unint64_t *a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  *a4 = a3;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *a4;
      v8 = 73;
      do
      {
        if (v7 >= 0)
        {
          v7 *= 2;
        }

        else
        {
          v7 = (2 * v7) ^ 0x1B;
        }

        --v8;
      }

      while (v8);
      v9 = 73;
      v10 = v7;
      do
      {
        if (v10 >= 0)
        {
          v10 *= 2;
        }

        else
        {
          v10 = (2 * v10) ^ 0x1B;
        }

        --v9;
      }

      while (v9);
      *a4 = v10;
      v11 = v6 ^ v7;
      v12 = *(this + 8 * v5);
      *(this + 8 * v5) = v11 ^ ((v12 << ((v10 & 0x1Fu) + 1)) | (v12 >> (v10 & 0x1F ^ 0x3F)));
      v5 = (v5 + 1);
      v6 = v12;
    }

    while (v5 != a2);
  }

  return this;
}

char *shazam::Unobfuscate(shazam *this, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2;
  v8 = 0;
  shazam::unobfuscate(this, (a2 >> 3), 0x57F8FEF4AB2432FFLL, &v8, a5);
  v5 -= 8;
  memmove(this, this + 8, v5);
  return v5;
}

uint64_t shazam::find_last_peak_tick(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = v1[1];
    if (*v1 != v4)
    {
      v5 = *(v4 - 8);
      if (result <= v5)
      {
        result = v5;
      }

      else
      {
        result = result;
      }
    }

    v1 += 3;
  }

  while (v1 != v2);
  return result;
}

unint64_t shazam::match_single_peak@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, unsigned int a6@<W5>, unint64_t *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>)
{
  v10 = *a3;
  v11 = (a10 + 1.0) * (*a3 >> 14);
  v12 = llroundf((v11 + a4) - a5);
  v13 = *a7;
  if (*a7 < result)
  {
    while (v12 > (*(a2 + 4 * v13) >> 14))
    {
      *a7 = ++v13;
      if (result == v13)
      {
        goto LABEL_12;
      }
    }
  }

  v14 = result - v13;
  if (result > v13)
  {
    v15 = ((v10 & 0x3FFF) / (a9 + 1.0));
    v16 = v12 + a6;
    v17 = (a2 + 4 * v13);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v16 <= (v19 >> 14))
      {
        break;
      }

      v20 = (v18 & 0x3FFF) - v15;
      if (v20 < 0)
      {
        v20 = v15 - (v18 & 0x3FFF);
      }

      if (v20 <= 0xF)
      {
        *a8 = ((v18 >> 14) - a4);
        *(a8 + 4) = (v18 & 0x3FFF);
        *(a8 + 8) = v11;
        *(a8 + 12) = v15;
        v21 = 1;
        goto LABEL_13;
      }

      --v14;
    }

    while (v14);
  }

LABEL_12:
  v21 = 0;
  *a8 = 0;
LABEL_13:
  *(a8 + 16) = v21;
  return result;
}

void shazam::match_peaks(unint64_t a1, uint64_t a2, int **a3, int a4, uint64_t a5, unsigned int a6, float a7, float a8)
{
  v32 = 0;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    v12 = a4;
    v17 = (2 * a6) | 1;
    do
    {
      shazam::match_single_peak(a1, a2, v8, v12, a6, v17, &v32, &v30, a7, a8);
      if (v31 == 1)
      {
        v19 = *(a5 + 8);
        v18 = *(a5 + 16);
        if (v19 >= v18)
        {
          v21 = (v19 - *a5) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
          }

          v23 = v18 - *a5;
          if (v23 >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(a5, v24);
          }

          v25 = (16 * v21);
          *v25 = v30;
          v20 = 16 * v21 + 16;
          v26 = *(a5 + 8) - *a5;
          v27 = 16 * v21 - v26;
          memcpy(v25 - v26, *a5, v26);
          v28 = *a5;
          *a5 = v27;
          *(a5 + 8) = v20;
          *(a5 + 16) = 0;
          if (v28)
          {
            operator delete(v28);
          }

          v12 = a4;
        }

        else
        {
          *v19 = v30;
          v20 = (v19 + 1);
        }

        *(a5 + 8) = v20;
      }

      ++v8;
    }

    while (v8 != v9);
  }
}

float shazam::thresholdLerp(float *a1, float a2)
{
  if (a2 >= 15.0)
  {
    return a1[15];
  }

  if (a2 <= 1.0)
  {
    return *a1;
  }

  return ((a2 - a2) * a1[a2 + 1]) + ((1.0 - (a2 - a2)) * a1[a2]);
}

void (***shazam::sigx_category(shazam *this))(shazam::_anonymous_namespace_::sigx_category_impl *__hidden this)
{
  {
    shazam::sigx_category();
  }

  return &shazam::sigx_category(void)::instance;
}

void shazam::anonymous namespace::sigx_category_impl::~sigx_category_impl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x231921F20);
}

_BYTE *shazam::anonymous namespace::sigx_category_impl::message@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 500:
      v4 = "Unknown SigX Error";
      goto LABEL_23;
    case 501:
      v4 = "Can't checkpoint a signature stream that has already been checkpointed. Must call rewind() before.";
      goto LABEL_23;
    case 502:
      v4 = "Can't rewind() a signature stream that hasn't been checkpointed. Must call checkpoint() before.";
      goto LABEL_23;
    case 503:
      v4 = "Can't checkpoint a fft stream that has already been checkpointed. Must call rewind() before.";
      goto LABEL_23;
    case 504:
      v4 = "Can't rewind() a fft stream that hasn't been checkpointed. Must call checkpoint() before.";
      goto LABEL_23;
    case 505:
      v4 = "Unknown pipeline error - could not construct pipeline";
      goto LABEL_23;
    case 506:
      v4 = "Unallocated buffer for visualize received";
      goto LABEL_23;
    case 507:
      v4 = "Invalid last_n value";
      goto LABEL_23;
    case 508:
    case 509:
    case 510:
    case 511:
    case 516:
    case 518:
    case 519:
    case 520:
    case 521:
      goto LABEL_5;
    case 512:
      v4 = "Error - Aligned Buffer is not actually aligned";
      goto LABEL_23;
    case 513:
      v4 = "Error - count flowed into fft stream not equal to SHZ_SIGX_FFT_STEPSIZE";
      goto LABEL_23;
    case 514:
      v4 = "Error - sample count after resample less than SHZ_SIGX_FFT_STEPSIZE";
      goto LABEL_23;
    case 515:
      v4 = "Error - internal sample rate is not 16k";
      goto LABEL_23;
    case 517:
      v4 = "Error - resample function not set correctly";
      goto LABEL_23;
    case 522:
      v4 = "Error - ring buffer not a power of 2";
      goto LABEL_23;
    default:
      if (a1)
      {
LABEL_5:
        std::string::basic_string[abi:ne200100]<0>(&__p, "Not a SigX Error: ");
        std::ostringstream::basic_ostringstream[abi:ne200100](&v7, &__p, 16);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        MEMORY[0x231921DA0](&v7, a1);
        std::stringbuf::str();
        v7 = *MEMORY[0x277D82828];
        *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
        v8 = MEMORY[0x277D82878] + 16;
        if (v10 < 0)
        {
          operator delete(v9[7].__locale_);
        }

        v8 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v9);
        std::ostream::~ostream();
        return MEMORY[0x231921E90](&v11);
      }

      else
      {
        v4 = "Success";
LABEL_23:

        return std::string::basic_string[abi:ne200100]<0>(a2, v4);
      }
  }
}

void sub_230FC6A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[20] = 0;
  v6 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v7 = *(MEMORY[0x277D82828] + 16);
  v8 = *(MEMORY[0x277D82828] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 1);
  v10 = MEMORY[0x277D828A0] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[14] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), a2, a3 | 0x10);
  return a1;
}

void sub_230FC6BD4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x231921E90](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x231921E40](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_230FC6CA8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void shazam::sigx_category()
{
  {
  }
}

uint32x2_t shazam::SpectralOutput::enable(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint32x2_t result)
{
  if (a2 - 1 <= 0x3FF && a3 >= 8)
  {
    v6 = vadd_s32(__PAIR64__(a2, a3), -1);
    result = vcgt_u32(veor_s8(__PAIR64__(a2, a3), v6), v6);
    if (result.i8[4] & 1) != 0 && (result.i8[0])
    {
      v7 = 0x400u / a2;
      if ((v7 ^ (v7 - 1)) > v7 - 1 && (((a3 >> 3) - 1) ^ (a3 >> 3)) > (a3 >> 3) - 1)
      {
        v10 = __clz(v7);
        v11 = 31 - v10;
        v12 = 31 - __clz(a3 >> 3);
        shazam::SpectralOutput::disable(a1);
        *a1 = 0x800000;
        v13 = *(a1 + 80);
        if (v13)
        {
          bzero(v13, 4 * *(a1 + 16) * *(a1 + 76));
        }

        *(a1 + 72) = 0x100000000;
        *(a1 + 80) = 0;
        *(a1 + 88) = v11;
        *(a1 + 24) = ~(-1 << v12);
        *(a1 + 4) = 0x80000000 >> v10;
        *(a1 + 8) = 0x400u >> v11;
        *(a1 + 16) = (1 << (v10 - 21));
        std::function<void ()(float const*,unsigned long)>::operator=((a1 + 40), a4);
        v14 = 4 * *(a1 + 16);
        operator new[]();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::range_error::range_error[abi:ne200100](exception, "shazam::log2 is only defined for powers of 2");
      __cxa_throw(exception, off_2788F7B88, MEMORY[0x277D825E0]);
    }
  }

  return result;
}

uint64_t shazam::SpectralOutput::disable(shazam::SpectralOutput *this)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_2845C5E28;
  v4[3] = v4;
  std::__function::__value_func<void ()(float const*,unsigned long)>::swap[abi:ne200100](v4, this + 5);
  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](v4);
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    result = MEMORY[0x231921F00](result, 0x1000C8052888210);
  }

  *(this + 10) = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void shazam::SpectralOutput::reset(shazam::SpectralOutput *this)
{
  *this = 0x800000;
  v2 = *(this + 10);
  if (v2)
  {
    bzero(v2, 4 * *(this + 2) * *(this + 19));
  }
}

void *std::function<void ()(float const*,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(float const*,unsigned long)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(float const*,unsigned long)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t shazam::SpectralOutput::process_frame(shazam::SpectralOutput *this, const float *a2)
{
  shazam::SpectralOutput::decimate_magfft(this, a2);
  v3 = *(this + 4);
  v4 = *(this + 2);

  return std::function<void ()(float const*,unsigned long)>::operator()(this + 40, v3, v4);
}

void shazam::SpectralOutput::decimate_magfft(shazam::SpectralOutput *this, const float *a2)
{
  v2 = *(this + 2);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = *(this + 1);
    v7 = *(this + 22);
    v8 = *(this + 4);
    do
    {
      if (v6 < 1)
      {
        v11 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        do
        {
          v10 = v10 + logf(a2[v9++] + 1.0);
        }

        while (v6 != v9);
        v11 = (v10 * 1477.3);
      }

      v12 = v11 >> v7;
      v13 = v12;
      v14 = *this;
      if (*this < v12)
      {
        *this = v13;
        v14 = v12;
      }

      *(v8 + 4 * v5++) = v13 / v14;
      a2 += v6;
    }

    while (v5 != v2);
  }
}

uint64_t std::function<void ()(float const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

uint64_t std::__function::__value_func<void ()(float const*,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *std::__function::__value_func<void ()(float const*,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_230FC76AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<shazam::SpectralOutput::disable(void)::$_0,std::allocator<shazam::SpectralOutput::disable(void)::$_0>,void ()(float const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t shazam::freebird_signature::get_feature_size(shazam::freebird_signature *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    result = result + *(v1 + 16) - *(v1 + 8) + 16;
    v1 += 32;
  }

  while (v1 != v2);
  return result;
}

uint64_t shazam::freebird_header::get_raw_sample_rate(shazam::freebird_header *this)
{
  v1 = &dword_231002600;
  v2 = 32;
  while (*(v1 - 1) != ((*(this + 4) >> 8) & 0xF))
  {
    v1 += 2;
    v2 -= 8;
    if (!v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t shazam::freebird_header::set_sample_length_samples(uint64_t this, uint64_t a2)
{
  *(this + 20) = a2;
  *(this + 18) = WORD2(a2);
  return this;
}

uint64_t shazam::freebird_header::set_raw_sample_rate(uint64_t this, int a2)
{
  v2 = 32;
  for (i = &dword_231002600; *i != a2; i += 2)
  {
    v2 -= 8;
    if (!v2)
    {
      return this;
    }
  }

  *(this + 16) = *(this + 16) & 0xFFFFF0FF | ((*(i - 1) & 0xF) << 8);
  return this;
}

uint64_t anonymous namespace::find_packed_sig_type(unint64_t a1, uint64_t a2)
{
  if (result == 1342177284)
  {
    shazam::ShazamKitHeader::validate(a1, a2);
    v5 = shazam::ShazamKitHeader::pop(a1, a2);
  }

  if (result == 1342177284)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x79);
    MEMORY[0x231921D00](exception, error_code, v9);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::packed_signature_view::packed_signature_view(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  return a1;
}

void shazam::packed_signature_view::headers(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = shazam::reinterpret_safer<unsigned int const*,0>(a1);
  if (v6 && *v6 == 629155200)
  {
    shazam::ShazamKitHeaderIterator(*a1, *(a1 + 8), a2);
    v5 = shazam::ShazamKitHeader::pop(*a1, *(a1 + 8));
    v4 = v7;
  }

  v8 = *(a1 + 16);
  if (v8 <= 1342177282)
  {
    if (v8 == 1342177280)
    {

      shazam::ClusterCmdPktIterator(v5, v4, a2);
    }

    else
    {
      if (v8 != 1342177282)
      {
        goto LABEL_25;
      }

      shazam::FatHeaderIterator(v5, v4, a2);
    }
  }

  else
  {
    switch(v8)
    {
      case 1342177283:

        shazam::SumoHeaderIterator(v5, v4, a2);
        break;
      case 1342177285:

        shazam::FreebirdHeaderIterator(v5, v4, a2);
        break;
      case 1342177286:

        shazam::MultiSigHeaderIterator(v5, v4, a2);
        return;
      default:
LABEL_25:
        exception = __cxa_allocate_exception(0x20uLL);
        error_code = shazam::make_error_code(0x66);
        MEMORY[0x231921D00](exception, error_code, v11);
        __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }
}

_DWORD *shazam::packed_signature_view::is_shazamkit(shazam::packed_signature_view *this)
{
  result = shazam::reinterpret_safer<unsigned int const*,0>(this);
  if (result)
  {
    return (*result == 629155200);
  }

  return result;
}

uint64_t shazam::reinterpret_safer<unsigned int const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 3uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

uint64_t shazam::get_version(shazam *this, const shazam::packed_signature_view *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  LOBYTE(v7) = 0;
  v8 = 0;
  v9[0] = &unk_2845C5EA8;
  v9[1] = &v7;
  v9[3] = v9;
  shazam::packed_signature_view::headers(this, v9);
  std::__function::__value_func<void ()(shazam::signature_header)>::~__value_func[abi:ne200100](v9);
  if (v8 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x66);
    MEMORY[0x231921D00](exception, error_code, v6);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  result = v7;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_230FC7E44(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x230FC7E38);
}

uint64_t shazam::get_siginfo@<X0>(shazam *this@<X0>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 13) = 0;
  v8 = 0;
  v9[0] = &unk_2845C49F8;
  v9[1] = a2;
  v9[2] = &v8;
  v9[3] = v9;
  shazam::packed_signature_view::headers(this, v9);
  result = std::__function::__value_func<void ()(shazam::signature_header)>::~__value_func[abi:ne200100](v9);
  if (v8 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x66);
    MEMORY[0x231921D00](exception, error_code, v7);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::type_from_magic_key(unint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  if (a1 <= 0xF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, error_code, v7);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v2 = 1342177282;
  v3 = *shazam::reinterpret_safer<unsigned int const*,0>(v8);
  if (v3 <= 199615768)
  {
    if (v3 == -889313920)
    {
      return v2;
    }

    if (v3 == -78890026)
    {
      return 1342177286;
    }

    return 1342177280;
  }

  if (v3 == 199615769)
  {
    return 1342177283;
  }

  if (v3 == 629155200)
  {
    return 1342177284;
  }

  if (v3 != 718889720)
  {
    return 1342177280;
  }

  return 1342177285;
}

uint64_t std::__function::__func<shazam::get_version(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::get_version(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2845C5EA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<shazam::get_version(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::get_version(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 > 1342177282)
  {
    if (v3 == 1342177283)
    {
      result = shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>((a2 + 8));
      v4 = (result + 8);
      goto LABEL_11;
    }

    if (v3 != 1342177285)
    {
      return result;
    }

    result = shazam::reinterpret_safer<shazam::freebird_header const*,0>((a2 + 8));
  }

  else if (v3 == 1342177281)
  {
    result = shazam::reinterpret_safer<shazam::legacy_sig_info const*,0>((a2 + 8));
  }

  else
  {
    if (v3 != 1342177282)
    {
      return result;
    }

    result = shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>((a2 + 8));
  }

  v4 = (result + 12);
LABEL_11:
  v5 = *(v2 + 8);
  *v5 = *v4;
  *(v5 + 4) = 1;
  return result;
}

uint64_t std::__function::__func<shazam::get_version(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::get_version(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t shazam::reinterpret_safer<shazam::freebird_header const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0x1BuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

__n128 std::__function::__func<shazam::get_siginfo(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::get_siginfo(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C49F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

int *std::__function::__func<shazam::get_siginfo(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::get_siginfo(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::operator()(int *result, uint64_t a2)
{
  v2 = result;
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2 > 1342177282)
  {
    if (v3 == 1342177283)
    {
      v10 = shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>((a2 + 8));
      result = shazam::signature_info::signature_info(v21, v10);
      v7 = *(v2 + 1);
      v8 = *v21;
      v9 = *&v21[3];
      goto LABEL_13;
    }

    if (v3 == 1342177285)
    {
      v5 = shazam::reinterpret_safer<shazam::freebird_header const*,0>((a2 + 8));
      shazam::signature_info::convert(v5, v21);
      if (v22 != 1)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        error_code = shazam::make_error_code(v21[0]);
        MEMORY[0x231921D00](exception, error_code, v17);
        __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v3 == 1342177281)
    {
      v6 = shazam::reinterpret_safer<shazam::legacy_sig_info const*,0>((a2 + 8));
      shazam::signature_info::convert(v6, v21);
      if (v22 != 1)
      {
        v18 = __cxa_allocate_exception(0x20uLL);
        v19 = shazam::make_error_code(v21[0]);
        MEMORY[0x231921D00](v18, v19, v20);
        __cxa_throw(v18, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }

      goto LABEL_11;
    }

    if (v3 == 1342177282)
    {
      v4 = shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>((a2 + 8));
      shazam::signature_info::convert(v4, v21);
      if (v22 != 1)
      {
        v12 = __cxa_allocate_exception(0x20uLL);
        v13 = shazam::make_error_code(v21[0]);
        MEMORY[0x231921D00](v12, v13, v14);
        __cxa_throw(v12, MEMORY[0x277D82718], MEMORY[0x277D82650]);
      }

LABEL_11:
      result = tl::expected<shazam::signature_info,shazam::sig_error>::value<shazam::signature_info,(void *)0>(v21);
      v7 = *(v2 + 1);
      v8 = *result;
      v9 = *(result + 3);
LABEL_13:
      *(v7 + 12) = v9;
      *v7 = v8;
      **(v2 + 2) = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<shazam::get_siginfo(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::get_siginfo(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_230FC87EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a12 = &a23;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 3)
  {
    [v24 ConvertSystemError:__cxa_begin_catch(a1) toError:v23];
    __cxa_end_catch();
  }

  else
  {
    v27 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v24 ConvertException:v27 toError:v23];
    }

    else
    {
      [v24 FillUnknownError:v23];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x230FC87B8);
}

void sub_230FC8B24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 3)
  {
    [a10 ConvertSystemError:__cxa_begin_catch(a1) toError:a11];
    __cxa_end_catch();
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [a10 ConvertException:v14 toError:a11];
    }

    else
    {
      [a10 FillUnknownError:a11];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x230FC8AF0);
}

void shazam::crop<(shazam::signature_density)2147483647>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::resize(&v18, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3));
  v8 = *(a1 + 32);
  if (*(a1 + 40) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = gsl::make_span<std::vector<shazam::lmfp<(shazam::fp_type)0>>>((v8 + v9));
      shazam::crop_band<shazam::spectral_peak_t>(v11, v12, (v18 + v9), a2, a3);
      ++v10;
      v8 = *(a1 + 32);
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v8) >> 3));
  }

  shazam::cropped_info(a1, a2, a3, &v16);
  DWORD2(v17) = shazam::find_last_peak_tick(&v18);
  v15 = 0;
  v14 = 0uLL;
  std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(&v14, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
  v13 = v17;
  *a4 = v16;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  *(a4 + 48) = v15;
  v14 = 0uLL;
  v15 = 0;
  v21 = &v14;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v21);
  *&v16 = &v18;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_230FC9110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t shazam::Tracker::Tracker(uint64_t a1, int a2, int a3, char a4, float a5)
{
  *a1 = a2;
  *(a1 + 4) = a2;
  *(a1 + 12) = a5;
  v6 = (a1 + 12);
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  v7 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 44) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = 50;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<shazam::signature_header_type>::resize((a1 + 16), a3);
  std::vector<float>::assign(v7, (*(a1 + 24) - *(a1 + 16)) >> 2, v6, v8);
  *(*(a1 + 16) + 4 * (*a1 % *(a1 + 8))) = 0;
  return a1;
}

{
  return shazam::Tracker::Tracker(a1, a2, a3, a4, a5);
}

void sub_230FC91F8(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 128) = v6;
    operator delete(v6);
  }

  shazam::Tracker::Tracker(v3, v2, v1);
  _Unwind_Resume(a1);
}

_DWORD *shazam::Tracker::resetWeights(shazam::Tracker *this, int16x4_t a2)
{
  v3 = (this + 16);
  result = std::vector<float>::assign(this + 2, (*(this + 3) - *(this + 2)) >> 2, this + 3, a2);
  *(*v3 + 4 * (*this % *(this + 2))) = 0;
  return result;
}

_DWORD *shazam::Tracker::resetTime(_DWORD *this)
{
  v1 = this[1];
  *this = v1;
  this[10] = v1;
  return this;
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_230FE3AF0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_230FE40E0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_230FE3AF0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_230FE40E0)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

uint64_t shazam::Tracker::isTracking(int *a1, int a2)
{
  v2 = a2 / 125;
  a1[10] = a2 / 125;
  v3 = *a1;
  if (a2 / 125 == v3)
  {
    return 1;
  }

  v4 = v2;
  v5 = v2 - v3;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  if (v6 <= 1)
  {
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
  }

  else
  {
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
    if (v8 != v7)
    {
      v9 = a1[2];
      if (v8 - v7 < v6)
      {
        v6 = v8 - v7;
      }

      if (v6 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v6;
      }

      v11 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = xmmword_230FE40E0;
      v14 = xmmword_230FE3AF0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v12, v14));
        if (vuzp1_s16(v16, *v12.i8).u8[0])
        {
          v7[v4 % v9] = 0.0;
        }

        if (vuzp1_s16(v16, *&v12).i8[2])
        {
          v7[(v4 + 1) % v9] = 0.0;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
        {
          v7[(v4 + 2) % v9] = 0.0;
          v7[(v4 + 3) % v9] = 0.0;
        }

        v13 = vaddq_s64(v13, v15);
        v14 = vaddq_s64(v14, v15);
        v4 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }

  v17 = 0.0;
  if (v7 != v8)
  {
    v18 = v7;
    do
    {
      v19 = *v18++;
      v17 = v17 + v19;
    }

    while (v18 != v8);
  }

  if (v17 >= *(a1 + 3))
  {
    *a1 = v2;
    v7[v2 % a1[2]] = 0.0;
    return 1;
  }

  return 0;
}

uint64_t shazam::Tracker::addMatch(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 40) % *(result + 8);
  *(*(result + 16) + 4 * v4) = *a2 + *(*(result + 16) + 4 * v4);
  ++*(result + 68);
  if (*(result + 72) == 1)
  {
    std::vector<shazam::PeakMatch>::push_back[abi:ne200100](result + 88, a2);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchLess &,std::__wrap_iter<shazam::PeakMatch *>>(*(v3 + 88), *(v3 + 96), &v36, (*(v3 + 96) - *(v3 + 88)) >> 4);
    std::vector<shazam::PeakMatch>::push_back[abi:ne200100](v3 + 120, a2);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchGreater &,std::__wrap_iter<shazam::PeakMatch *>>(*(v3 + 120), *(v3 + 128), &v36, (*(v3 + 128) - *(v3 + 120)) >> 4);
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = *(v3 + 80);
    v8 = (v6 - v5) >> 4;
    if (v8 > v7)
    {
      if (v8 >= 2)
      {
        v9 = 0;
        v36 = *v5;
        v10 = v5;
        do
        {
          v11 = &v10[v9 + 1];
          v12 = (2 * v9) | 1;
          v13 = 2 * v9 + 2;
          if (v13 < v8)
          {
            v14 = *(v11 + 12);
            v15 = *(v11 + 28);
            v11 += 16 * (v14 < v15);
            if (v14 < v15)
            {
              v12 = v13;
            }
          }

          *v10 = *v11;
          v10 = v11;
          v9 = v12;
        }

        while (v12 <= ((v8 - 2) >> 1));
        v16 = (v6 - 16);
        if (v11 == v16)
        {
          *v11 = v36;
        }

        else
        {
          *v11 = *v16;
          *v16 = v36;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchLess &,std::__wrap_iter<shazam::PeakMatch *>>(v5, v11 + 16, &v35, (v11 + 16 - v5) >> 4);
        }

        v6 = *(v3 + 96);
        v7 = *(v3 + 80);
      }

      *(v3 + 96) = v6 - 16;
    }

    result = *(v3 + 120);
    v17 = *(v3 + 128);
    v18 = (v17 - result) >> 4;
    if (v18 > v7)
    {
      if (v18 >= 2)
      {
        v19 = 0;
        v36 = *result;
        v20 = result;
        do
        {
          v21 = &v20[v19 + 1];
          v22 = (2 * v19) | 1;
          v23 = 2 * v19 + 2;
          if (v23 < v18)
          {
            v24 = *(v21 + 28);
            v25 = *(v21 + 12);
            v21 += 16 * (v24 < v25);
            if (v24 < v25)
            {
              v22 = v23;
            }
          }

          *v20 = *v21;
          v20 = v21;
          v19 = v22;
        }

        while (v22 <= ((v18 - 2) >> 1));
        v26 = (v17 - 16);
        if (v21 == v26)
        {
          *v21 = v36;
        }

        else
        {
          *v21 = *v26;
          *v26 = v36;
          result = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchGreater &,std::__wrap_iter<shazam::PeakMatch *>>(result, v21 + 16, &v35, (v21 + 16 - result) >> 4);
        }

        v17 = *(v3 + 128);
      }

      *(v3 + 128) = v17 - 16;
    }
  }

  if (*(v3 + 64) == 1)
  {
    v28 = *(v3 + 52);
    v27 = *(v3 + 56);
    v30 = *(v3 + 44);
    v29 = *(v3 + 48);
  }

  else
  {
    v29 = *(a2 + 12);
    LODWORD(v31) = v29;
    *(&v31 + 1) = *(a2 + 4);
    DWORD1(v31) = v29;
    *(v3 + 44) = v31;
    *(v3 + 60) = 0;
    *(v3 + 64) = 1;
    v27 = HIDWORD(v31);
    v28 = DWORD2(v31);
    v30 = v29;
  }

  v32 = *(a2 + 4);
  if (*(a2 + 8) < v32)
  {
    v32 = *(a2 + 8);
  }

  if (v28 >= v32)
  {
    v28 = v32;
  }

  *(v3 + 52) = v28;
  v33 = *(a2 + 4);
  if (v33 <= *(a2 + 8))
  {
    v33 = *(a2 + 8);
  }

  if (v33 > v27)
  {
    v27 = v33;
  }

  *(v3 + 56) = v27;
  v34 = *(a2 + 12);
  if (v34 >= v30)
  {
    v34 = v30;
  }

  *(v3 + 44) = v34;
  if (v29 <= *(a2 + 12))
  {
    v29 = *(a2 + 12);
  }

  *(v3 + 48) = v29;
  return result;
}

uint64_t shazam::weightedPeakDensityCrossOver(uint64_t *a1, float a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  v4 = v3 >> 4;
  v5 = (v3 >> 4) - 1;
  if ((v3 >> 4) <= 11)
  {
    v6 = 11;
  }

  else
  {
    v6 = v3 >> 4;
  }

  v7 = (v6 - 11);
  if (v7 < v4)
  {
    v8 = (a2 * 125.0);
    v9 = (v3 >> 4);
    v10 = (v3 >> 4) - 2;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = v9--;
      v14 = 0.0;
      if (v13 >= 2)
      {
        v15 = *(v2 + 16 * v9 + 12);
        v16 = v10;
        v17 = v4;
        do
        {
          v18 = v2 + 16 * v16;
          v19 = *(v18 + 12);
          v20 = v15 - v19;
          if (v15 - v19 < 0)
          {
            v20 = v19 - v15;
          }

          if (v20 > v8)
          {
            break;
          }

          if (v15 != v19)
          {
            v14 = v14 + *v18;
          }

          --v17;
          --v16;
        }

        while (v17 > 1);
      }

      v21 = v14 - v11;
      if (v21 > v12)
      {
        v5 = v9;
        v12 = v21;
      }

      LODWORD(v4) = v4 - 1;
      --v10;
      v11 = v14;
    }

    while (v9 > v7);
  }

  v22 = (v2 + 16 * v5);
  result = *v22;
  v24 = v22[1];
  return result;
}

void shazam::Tracker::check_queue(shazam::Tracker *this)
{
  __p = 0;
  v34 = 0;
  v35 = 0;
  v2 = *(this + 11);
  for (i = *(this + 12); v2 != i; *(this + 12) = i)
  {
    std::vector<shazam::PeakMatch>::push_back[abi:ne200100](&__p, v2);
    v2 = *(this + 11);
    v4 = *(this + 12);
    v5 = (v4 - v2) >> 4;
    if (v5 >= 2)
    {
      v6 = 0;
      v31 = *v2;
      v7 = v2;
      do
      {
        v8 = &v7[v6 + 1];
        v9 = (2 * v6) | 1;
        v10 = 2 * v6 + 2;
        if (v10 < v5)
        {
          v11 = *(v8 + 12);
          v12 = *(v8 + 28);
          v8 += 16 * (v11 < v12);
          if (v11 < v12)
          {
            v9 = v10;
          }
        }

        *v7 = *v8;
        v7 = v8;
        v6 = v9;
      }

      while (v9 <= ((v5 - 2) >> 1));
      v13 = (v4 - 16);
      if (v8 == v4 - 16)
      {
        *v8 = v31;
      }

      else
      {
        *v8 = *v13;
        *v13 = v31;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchLess &,std::__wrap_iter<shazam::PeakMatch *>>(v2, v8 + 16, &v37, (v8 + 16 - v2) >> 4);
      }

      v2 = *(this + 11);
      v4 = *(this + 12);
    }

    i = (v4 - 16);
  }

  v31 = 0uLL;
  v32 = 0;
  v14 = *(this + 15);
  if (v14 == *(this + 16))
  {
    v26 = 0;
  }

  else
  {
    do
    {
      std::vector<shazam::PeakMatch>::push_back[abi:ne200100](&v31, v14);
      v14 = *(this + 15);
      v15 = *(this + 16);
      v16 = (v15 - v14) >> 4;
      if (v16 >= 2)
      {
        v17 = 0;
        v37 = *v14;
        v18 = v14;
        do
        {
          v19 = &v18[v17 + 1];
          v20 = (2 * v17) | 1;
          v21 = 2 * v17 + 2;
          if (v21 < v16)
          {
            v22 = *(v19 + 28);
            v23 = *(v19 + 12);
            v19 += 16 * (v22 < v23);
            if (v22 < v23)
            {
              v20 = v21;
            }
          }

          *v18 = *v19;
          v18 = v19;
          v17 = v20;
        }

        while (v20 <= ((v16 - 2) >> 1));
        v24 = (v15 - 16);
        if (v19 == v15 - 16)
        {
          *v19 = v37;
        }

        else
        {
          *v19 = *v24;
          *v24 = v37;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchGreater &,std::__wrap_iter<shazam::PeakMatch *>>(v14, v19 + 16, &v36, (v19 + 16 - v14) >> 4);
        }

        v14 = *(this + 15);
        v15 = *(this + 16);
      }

      v25 = (v15 - 16);
      *(this + 16) = v25;
    }

    while (v14 != v25);
    v26 = v31;
  }

  v27 = shazam::weightedPeakDensityCrossOver(&__p, 5.0);
  *(this + 11) = v28;
  *(this + 13) = HIDWORD(v27);
  v29 = shazam::weightedPeakDensityCrossOver(&v31, 2.0);
  *(this + 12) = v30;
  *(this + 14) = HIDWORD(v29);
  if (v26)
  {
    *(&v31 + 1) = v26;
    operator delete(v26);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_230FC9CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<shazam::PeakMatch>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 shazam::Tracker::getAlignment@<Q0>(shazam::Tracker *this@<X0>, uint64_t *a2@<X1>, int a3@<W2>, __n128 *a4@<X8>)
{
  if (*(this + 64) == 1)
  {
    if (*(this + 72) == 1)
    {
      shazam::Tracker::check_queue(this);
    }

    v9 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      while (*v9 < *(this + 11))
      {
        v9 += 8;
        if (v9 == v8)
        {
          goto LABEL_16;
        }
      }
    }

    if (v9 == v8)
    {
LABEL_16:
      v11 = 0.0;
    }

    else
    {
      v10 = 0;
      do
      {
        if (*v9 >= *(this + 12))
        {
          break;
        }

        if (!a3 || *(v9 + 4) <= 0xDACu)
        {
          ++v10;
        }

        v9 += 8;
      }

      while (v9 != v8);
      v11 = v10;
    }

    v12 = *(this + 17) / v11;
    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    *(this + 15) = v12;
  }

  result = *(this + 44);
  *a4 = result;
  a4[1].n128_u64[0] = *(this + 60);
  return result;
}

const void **shazam::time_freqs::time_freqs(const void **a1, float a2, uint64_t a3, uint64_t **a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a4;
  v7 = a4[1];
  if (*a4 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *a4;
    do
    {
      v12 = *v10;
      v11 = v10[1];
      v10 += 3;
      v9 += (v11 - v12) >> 3;
    }

    while (v10 != v7);
  }

  std::vector<shazam::time_freq>::reserve(a1, v9);
  memset(v46, 0, sizeof(v46));
  v13 = 0xAAAAAAAAAAAAAAABLL * (v7 - v8);
  memset(v45, 0, sizeof(v45));
  if (v8 != v7)
  {
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v7 - v8);
    }

    v15 = *a4 + 1;
    v16 = v46;
    v17 = v45;
    do
    {
      v18 = *v15;
      *v16++ = *(v15 - 1);
      *v17++ = v18;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  if (v9)
  {
    v19 = 0;
    v20 = 1.0;
    v21 = a2 + 1.0;
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v7 - v8);
    }

    v43 = v8;
    v44 = v7;
    do
    {
      if (v8 != v7)
      {
        v23 = 0;
        v24 = -1;
        do
        {
          v25 = *(v46 + v23);
          if (v25 != *(v45 + v23))
          {
            v26 = *v25;
            if (v26 < v24)
            {
              v24 = v26;
              v19 = v23;
            }
          }

          ++v23;
        }

        while (v22 != v23);
      }

      v27 = *(v46 + v19);
      LOWORD(v20) = *(v27 + 4);
      v20 = (LODWORD(v20) * 0.24997) / v21;
      v28 = v20;
      v30 = a1[1];
      v29 = a1[2];
      if (v30 >= v29)
      {
        v32 = *a1;
        v33 = v30 - *a1;
        v34 = v33 >> 3;
        v35 = (v33 >> 3) + 1;
        if (v35 >> 61)
        {
          std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
        }

        v36 = v29 - v32;
        if (v36 >> 2 > v35)
        {
          v35 = v36 >> 2;
        }

        v37 = v36 >= 0x7FFFFFFFFFFFFFF8;
        v38 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v37)
        {
          v38 = v35;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::time_freq>>(a1, v38);
        }

        v39 = 8 * v34;
        *v39 = *v27;
        *(v39 + 4) = v28;
        v31 = 8 * v34 + 8;
        v40 = (v39 - 8 * (v33 >> 3));
        memcpy(v40, v32, v33);
        v41 = *a1;
        *a1 = v40;
        a1[1] = v31;
        a1[2] = 0;
        if (v41)
        {
          operator delete(v41);
        }

        v8 = v43;
      }

      else
      {
        *v30 = *v27;
        *(v30 + 2) = v28;
        v31 = (v30 + 8);
      }

      a1[1] = v31;
      *(v46 + v19) = v27 + 8;
      --v9;
      v7 = v44;
    }

    while (v9);
  }

  return a1;
}

void sub_230FCA118(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<shazam::time_freq>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::time_freq>>(result, a2);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchLess &,std::__wrap_iter<shazam::PeakMatch *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *(a2 - 4);
    if (*(v6 + 12) < v7)
    {
      v9 = *(a2 - 16);
      v8 = a2 - 16;
      v11 = v9;
      v12 = *(v8 + 8);
      do
      {
        v10 = v8;
        v8 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (*(v6 + 12) < v7);
      *v8 = v11;
      *(v8 + 8) = v12;
      *(v8 + 12) = v7;
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Tracker::ComparePeakMatchGreater &,std::__wrap_iter<shazam::PeakMatch *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *(a2 - 4);
    if (v7 < *(v6 + 12))
    {
      v9 = *(a2 - 16);
      v8 = a2 - 16;
      v11 = v9;
      v12 = *(v8 + 8);
      do
      {
        v10 = v8;
        v8 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (v7 < *(v6 + 12));
      *v8 = v11;
      *(v8 + 8) = v12;
      *(v8 + 12) = v7;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::time_freq>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void shazam::Tracker::Tracker(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 96) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 24) = v6;

    operator delete(v6);
  }
}

_BYTE *shazam::SignatureTracker::SignatureTracker(_BYTE *a1, uint64_t a2, void *a3)
{
  *a1 = *(a2 + 20);
  shazam::time_freqs::time_freqs(a1 + 8, 0.0);
  a1[32] = a3[1] - *a3 == 72;
  return a1;
}

void shazam::SignatureTracker::track(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v9 = HIDWORD(a4);
  v10 = *(a2 + 24);
  v11 = *(*(a1 + 16) - 8);
  if (v10 < SHIDWORD(a4) || v11 < a4)
  {
    goto LABEL_6;
  }

  shazam::SignatureTracker::track_internal(a1, a2, a3, a4, a5, a6, &v29);
  if (BYTE4(v30) != 1)
  {
    v18 = 0.0;
    if (*(a6 + 17))
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v18 = (v29.n128_u32[1] - v29.n128_u32[0]) / 125.0;
  if ((*(a6 + 17) & 1) == 0)
  {
LABEL_12:
    shazam::SignatureTracker::track_internal(a1, a2, a3, a4, 0, a6, &v27);
    v19 = 0.0;
    if (BYTE4(v28) == 1)
    {
      v19 = (v27.n128_u32[1] - v27.n128_u32[0]) / 125.0;
    }

    if (v18 >= v19)
    {
      v19 = v18;
    }

    if (v19 >= 1.0)
    {
      if (v18 != v19)
      {
        *a7 = v27;
        v20 = v28;
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v21 = (*a6 * 1.5) * 125.0;
    v22 = (v21 + v9);
    v23 = (v21 + a4);
    if (v22 < v10 && v23 < v11)
    {
      shazam::SignatureTracker::track_internal(a1, a2, a3, v23 | (v22 << 32), a5, a6, &v25);
      if (BYTE4(v26) == 1 && ((v25.n128_u32[1] - v25.n128_u32[0]) / 125.0) > 1.0)
      {
        *a7 = v25;
        v20 = v26;
        goto LABEL_28;
      }
    }

LABEL_6:
    a7->n128_u8[0] = 0;
    a7[1].n128_u8[4] = 0;
    return;
  }

  if (v18 < 1.0)
  {
    goto LABEL_6;
  }

LABEL_18:
  *a7 = v29;
  v20 = v30;
LABEL_28:
  a7[1].n128_u64[0] = v20;
}

void shazam::SignatureTracker::track_internal(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  *&v93 = a4;
  *(&v93 + 1) = a5;
  shazam::sig_alignment::setZeroPadding(&v93, *(a2 + 20), *a1);
  LODWORD(v10) = HIDWORD(v93);
  v86 = a3;
  shazam::time_freqs::time_freqs(&v91, v10);
  v11 = -v93 & (v93 >> 31);
  v12 = v91;
  v13 = v92;
  if (v92 != v91)
  {
    v14 = (v92 - v91) >> 3;
    do
    {
      v15 = v14 >> 1;
      v16 = &v12[2 * (v14 >> 1)];
      v18 = *v16;
      v17 = (v16 + 2);
      v14 += ~(v14 >> 1);
      if (v18 < DWORD1(v93) + v11)
      {
        v12 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    v13 = v12;
  }

  shazam::Tracker::Tracker(v99, (*v13 + v11) / 125, *a6, *(a6 + 18), *(a6 + 4));
  v19 = *(a6 + 8);
  v20 = v93 + v11 - v19;
  if (v93 + v11 < v19)
  {
    v20 = 0;
  }

  v22 = *(a1 + 1);
  v21 = *(a1 + 2);
  v88 = a1;
  if (v21 == v22)
  {
    v22 = *(a1 + 2);
  }

  else
  {
    v23 = (v21 - v22) >> 3;
    do
    {
      v24 = v23 >> 1;
      v25 = &v22[8 * (v23 >> 1)];
      v27 = *v25;
      v26 = (v25 + 2);
      v23 += ~(v23 >> 1);
      if (v27 < v20)
      {
        v22 = v26;
      }

      else
      {
        v23 = v24;
      }
    }

    while (v23);
  }

  v28 = v92;
  v89 = v93;
  v90 = v19;
  if (v13 != v92)
  {
    for (i = v13; i != v28; i += 2)
    {
      if (!shazam::Tracker::isTracking(v99, *i))
      {
        break;
      }

      v30 = v90;
      v31 = shazam::sig_alignment::lowerBoundTime(&v89, *i);
      if (v22 == v21)
      {
LABEL_25:
        v22 = v21;
      }

      else
      {
        v32 = v22;
        v33 = v22;
        while (*v33 < v31 - v90)
        {
          v33 += 8;
          v22 += 8;
          v32 += 8;
          if (v33 == v21)
          {
            goto LABEL_25;
          }
        }

        v34 = v33;
        if (v33 != v21)
        {
          while (*v34 < v31 - v90 + 2 * v30 + 1)
          {
            v34 += 8;
            v32 += 8;
            if (v34 == v21)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_28;
        }
      }

      v33 = v22;
LABEL_27:
      v34 = v21;
      v32 = v21;
LABEL_28:
      v35 = *(a6 + 12);
      LOBYTE(v94) = 0;
      v98 = 0;
      if (v22 == v32)
      {
LABEL_34:
        v38 = 0;
      }

      else
      {
        while (1)
        {
          v36 = *(v33 + 2) - *(i + 2);
          v37 = (v36 & 0x80000000) == 0 ? *(v33 + 2) - *(i + 2) : *(i + 2) - *(v33 + 2);
          if (v37 <= 0xF)
          {
            break;
          }

          v33 += 8;
          if (v33 == v34)
          {
            goto LABEL_34;
          }
        }

        v39 = (1.0 - v35) + (shazam::_chanw[v36 + 15] * v35);
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        v40 = *v33;
        v41 = *i;
        v94 = v39;
        v95 = v40;
        v96 = v40;
        v97 = v41;
        v38 = 1;
        v98 = 1;
      }

      v42 = v94;
      if (v33 != v34)
      {
        v43 = *(i + 2);
        v44 = v96;
        do
        {
          v45 = *(v33 + 2) - v43;
          if (v45 >= 0)
          {
            v46 = *(v33 + 2) - v43;
          }

          else
          {
            v46 = v43 - *(v33 + 2);
          }

          if (v46 <= 0xF)
          {
            v47 = (1.0 - v35) + (shazam::_chanw[v45 + 15] * v35);
            if (v47 < 0.0)
            {
              v47 = 0.0;
            }

            if (v42 < v47)
            {
              v42 = v47;
            }

            v48 = *v33;
            if (v44 < *v33)
            {
              v96 = *v33;
              v44 = v48;
            }
          }

          v33 += 8;
        }

        while (v33 != v34);
      }

      v94 = v42;
      if (v38)
      {
        shazam::Tracker::addMatch(v99, &v94);
      }
    }
  }

  if (*(a6 + 16) == 1)
  {
    if (v88[32])
    {
LABEL_60:
      v49 = 1;
      goto LABEL_108;
    }
  }

  else
  {
    v50 = v88;
    if (SDWORD1(v93) >= 1)
    {
      shazam::Tracker::resetTime(v99);
      shazam::Tracker::resetWeights(v99, v51);
      v52 = *(v88 + 1);
      v53 = *(v88 + 2);
      if (v53 != v52)
      {
        v54 = (v53 - v52) >> 3;
        v53 = *(v88 + 1);
        do
        {
          v55 = v54 >> 1;
          v56 = &v53[8 * (v54 >> 1)];
          v58 = *v56;
          v57 = (v56 + 2);
          v54 += ~(v54 >> 1);
          if (v58 < (v19 + v11 + v93))
          {
            v53 = v57;
          }

          else
          {
            v54 = v55;
          }
        }

        while (v54);
      }

      v59 = v91;
      v89 = v93;
      v90 = v19;
      if (v13 != v91)
      {
        v60 = v13;
        do
        {
          v61 = *(v60 - 2);
          v60 -= 2;
          if (!shazam::Tracker::isTracking(v99, v61))
          {
            break;
          }

          v62 = ~(2 * v90);
          v63 = shazam::sig_alignment::lowerBoundTime(&v89, *v60);
          while (v53 != v52)
          {
            v64 = *(v53 - 2);
            v53 -= 8;
            if (v64 <= v90 + v63)
            {
              v53 += 8;
              goto LABEL_76;
            }
          }

          v53 = v52;
LABEL_76:
          v65 = v53;
          while (v65 != v52)
          {
            v66 = *(v65 - 2);
            v65 -= 8;
            if (v66 <= v90 + v63 + v62)
            {
              v67 = v65 + 8;
              goto LABEL_81;
            }
          }

          v67 = v52;
LABEL_81:
          v68 = *(a6 + 12);
          v69 = v53;
          while (v69 != v67)
          {
            v70 = v69 - 8;
            v71 = *(v69 - 2);
            v72 = *(v13 - 2);
            v73 = v71 - v72;
            if (v71 - v72 >= 0)
            {
              v74 = v71 - v72;
            }

            else
            {
              v74 = v72 - v71;
            }

            v69 = v70;
            if (v74 <= 0xF)
            {
              v75 = (1.0 - v68) + (shazam::_chanw[v73 + 15] * v68);
              v78 = *v70;
              v76 = (v70 + 8);
              v77 = v78;
              v79 = *v60;
              if (v75 < 0.0)
              {
                v75 = 0.0;
              }

              v95 = v77;
              v97 = v79;
              v98 = 1;
              v80 = v77;
              do
              {
                v81 = *(v76 - 2);
                v76 -= 2;
                v82 = v81 - v72;
                if (v82 >= 0)
                {
                  v83 = v82;
                }

                else
                {
                  v83 = -v82;
                }

                if (v83 <= 0xF)
                {
                  v84 = (1.0 - v68) + (shazam::_chanw[v82 + 15] * v68);
                  if (v84 < 0.0)
                  {
                    v84 = 0.0;
                  }

                  if (v75 < v84)
                  {
                    v75 = v84;
                  }

                  if (v80 < *v76)
                  {
                    v77 = *v76;
                  }

                  if (v80 <= *v76)
                  {
                    v80 = *v76;
                  }
                }
              }

              while (v76 != v67);
              v96 = v77;
              v94 = v75;
              shazam::Tracker::addMatch(v99, &v94);
              break;
            }
          }

          v13 = v60;
        }

        while (v60 != v59);
      }

      v50 = v88;
    }

    if (v50[32])
    {
      goto LABEL_60;
    }
  }

  v49 = v86[1] - *v86 == 72;
LABEL_108:
  shazam::Tracker::getAlignment(v99, &v91, v49, a7);
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  v85 = *MEMORY[0x277D85DE8];
}

void sub_230FCAB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::Tracker::~Tracker(shazam::Tracker *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

uint64_t shazam::StaticCPUSearcher::StaticCPUSearcher(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, char a6)
{
  *a1 = &unk_2845C4A78;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 24) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 40) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  shazam::CPUSearcher::CPUSearcher(a1 + 56, a3, a4, a5, a6);
  return a1;
}

void shazam::StaticCPUSearcher::~StaticCPUSearcher(shazam::StaticCPUSearcher *this)
{
  shazam::StaticCPUSearcher::~StaticCPUSearcher(this);

  JUMPOUT(0x231921F20);
}

{
  *this = &unk_2845C4A78;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v9 = (this + 136);
  std::vector<shazam::Result>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  shazam::virtual_array<char>::~virtual_array(this + 80);
  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t shazam::virtual_array<char>::~virtual_array(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      munmap(v2, *(a1 + 8));
    }
  }

  return a1;
}

void shazam::parse_ancient_peaks(int **a1@<X0>, uint64_t **a2@<X1>, int a3@<W2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = **a1;
  if (v7 != 1610809345 && v7 != 1610809348)
  {
    goto LABEL_53;
  }

  v12 = a1[1] - v6;
  if (v12 >= 2)
  {
    v13 = v12 - 1;
    v14 = v6 + 1;
    while (*v14 - 1 == *(v14 - 1))
    {
      ++v14;
      if (!--v13)
      {
        goto LABEL_10;
      }
    }

LABEL_53:
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x7D);
    MEMORY[0x231921D00](exception, error_code, v48);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

LABEL_10:
  v15 = *a2;
  v16 = a2[1];
  if (*a2 == v16)
  {
    v17 = 0;
    v18 = 1.0;
  }

  else
  {
    v17 = 0;
    v18 = 1.0;
    do
    {
      v19 = v15[1];
      for (i = *v15; i != v19; i += 16)
      {
        if (v18 <= *(i + 12))
        {
          v18 = *(i + 12);
        }
      }

      v21 = (v19 - *v15) >> 4;
      if (v17 <= v21)
      {
        v17 = v21;
      }

      v15 += 3;
    }

    while (v15 != v16);
  }

  __p = 0;
  v56 = 0;
  v57 = 0;
  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&__p, v17);
  std::vector<std::vector<shazam::spectral_peak_t>>::vector[abi:ne200100](a5, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  v22 = *a2;
  if (a2[1] != *a2)
  {
    v23 = 0;
    if (a3 == 0x7FFFFFFF)
    {
      v24 = -1;
    }

    else
    {
      v24 = a3;
    }

    v25 = 256;
    if (a4 == 15)
    {
      v25 = 211;
    }

    v49 = v25;
    v50 = v24;
    v26 = 1073700000.0 / v18;
    do
    {
      v27 = __p;
      v56 = __p;
      v28 = &v22[3 * v23];
      v29 = *v28;
      v30 = v28[1];
      v31 = __p;
      if (*v28 != v30)
      {
        do
        {
          v32 = logf(v26 * v29[3]);
          v33 = *v29;
          LODWORD(v5) = vcvts_n_s32_f32(v29[1], 6uLL);
          v34 = fmaxf(v32 * 1477.3, 0.0);
          if (v27 >= v57)
          {
            v35 = (v27 - __p) >> 3;
            if ((v35 + 1) >> 61)
            {
              std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
            }

            v36 = (v57 - __p) >> 2;
            if (v36 <= v35 + 1)
            {
              v36 = v35 + 1;
            }

            if (v57 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v37 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v37 = v36;
            }

            if (v37)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(&__p, v37);
            }

            v38 = (8 * v35);
            *v38 = (v5 << 32) | (v34 << 48) | v33;
            v27 = (8 * v35 + 8);
            v39 = v38 - (v56 - __p);
            memcpy(v39, __p, v56 - __p);
            v40 = __p;
            __p = v39;
            v56 = v27;
            v57 = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            v27->i64[0] = (v5 << 32) | (v34 << 48) | v33;
            v27 = (v27 + 8);
          }

          v56 = v27;
          v29 += 4;
        }

        while (v29 != v30);
        v31 = __p;
      }

      v41 = 126 - 2 * __clz((v27 - v31) >> 3);
      if (v27 == v31)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(v31, v27, &v58, v42, 1);
      v43 = *a5 + 24 * v23;
      v52.i64[0] = 0;
      v52.i64[1] = v43;
      v53 = v50;
      v54 = v49;
      v45 = __p;
      v44 = v56;
      if (__p != v56)
      {
        do
        {
          shazam::density_filter<shazam::spectral_peak_t>::operator<<(&v52, v45);
          v45 += 2;
        }

        while (v45 != v44);
      }

      shazam::density_filter<shazam::spectral_peak_t>::flush(&v52);
      ++v23;
      v22 = *a2;
    }

    while (v23 < 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }
}

uint64_t shazam::exclusion_zone::num_stft_frames(shazam::exclusion_zone *this, int a2)
{
  v2 = (this * 1.5 + 1.0);
  if (a2)
  {
    LOBYTE(v2) = ((this - 1 + (((this - 1) & 0x8000u) >> 15)) >> 1) + 5;
  }

  return v2;
}

uint64_t shazam::exclusion_zone::slice_max_buff_width(uint64_t this, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ((this + 1) * 1.5 + 14.0 + -1.0);
  }

  return this;
}

uint64_t shazam::exclusion_zone::exclusion_zone_width(shazam::exclusion_zone *this)
{
  if (this)
  {
    return 21;
  }

  else
  {
    return 91;
  }
}

uint64_t shazam::cropped_info@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result;
  v5 = *(result + 16) / 125.0;
  v6 = (v5 * a2);
  v7 = *(result + 8);
  if (v7 < v6)
  {
    v13 = *(result + 16) / 125.0;
    std::to_string(&v28, 8 * a2);
    std::to_string(&v27, (8 * *(v4 + 8)) / v13);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v15 = std::string::append(&v23, "ms) started after the end of the signature (");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v27;
    }

    else
    {
      v17 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v25, "ms).");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v26);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(result + 20) == 15)
  {
    v8 = a3 + 30;
  }

  else
  {
    v8 = a3;
  }

  v9 = __CFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
    v10 = -1;
  }

  v11 = vcvtps_u32_f32(v5 * v10);
  if (v7 >= v11)
  {
    v7 = v11;
  }

  v12 = *(result + 16);
  *a4 = *result;
  *(a4 + 16) = v12;
  *(a4 + 8) = v7 - v6;
  if (*result)
  {
    *a4 = *result + a2;
  }

  return result;
}

void sub_230FCB49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      if (*(v37 - 73) < 0)
      {
        operator delete(*(v37 - 96));
      }

      if (*(v37 - 49) < 0)
      {
        operator delete(*(v37 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

void shazam::CPUDatabaseBuilder::CPUDatabaseBuilder(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<shazam::SearchPlan>::__init_with_size[abi:ne200100]<shazam::SearchPlan const*,shazam::SearchPlan const*>(a1, a2, a2 + 32 * a3, a3);
  _ZNSt3__115allocate_sharedB8ne200100IN6shazam12SongDataBaseENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_230FCB5D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void shazam::CPUDatabaseBuilder::add(uint64_t a1, shazam::signature_info *this, uint64_t a3, uint64_t a4)
{
  SampleLength = shazam::signature_info::getSampleLength(this);
  if (*(a1 + 100) == 1)
  {
    v9 = *(a1 + 96);
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = (SampleLength * 125.0);
    if (*(a1 + 88) >= v10)
    {
      v9 = 1;
    }

    else
    {
      v11 = vcvtps_u32_f32((v10 - *(a1 + 92)) / *(a1 + 92));
      v9 = v11 + 1;
      if (v11 == -1)
      {
        return;
      }
    }
  }

  v12 = 0;
  v13 = a3 | (a4 << 32);
  do
  {
    shazam::crop<(shazam::signature_density)16>(this, *(a1 + 92) * v12, *(a1 + 88), v16);
    v14 = *(a1 + 92) * v12;
    v15 = shazam::signature_info::getSampleLength(this);
    shazam::CPUDatabaseBuilder::addSigSegment(a1, v16, v13, 8 * v14, v15);
    v18 = &v17;
    std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v18);
    ++v12;
  }

  while (v9 != v12);
}

void sub_230FCB730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void shazam::CPUDatabaseBuilder::addSigSegment(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = a1 + 10;
  if ((a1[10] + *(a2 + 24)) >> 32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Max landmark limit reached, manifest overflow!");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = *a1;
  if (a1[1] != *a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v11 + v13;
      v16 = *(v11 + v13 + 28);
      v17 = a1[7];
      if (v16 == 12)
      {
        v20 = *(v15 + 8);
        shazam::link_bands<(AlgoType)12>(&v20, (a2 + 32), *(a2 + 24), v15, 0x3E8uLL, &__p);
        shazam::detail::writeLMFPData<(AlgoType)1>(&__p, (v17 + v12), v5);
      }

      else
      {
        if (v16 != 1)
        {
          std::terminate();
        }

        v20 = *(v11 + v13 + 8);
        shazam::link_bands<(AlgoType)1>(&v20, (a2 + 32), *(a2 + 24), v15, 0x3E8uLL, &__p);
        shazam::detail::writeLMFPData<(AlgoType)1>(&__p, (v17 + v12), v5);
      }

      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      ++v14;
      v11 = *a1;
      v13 += 32;
      v12 += 24;
    }

    while (v14 < (a1[1] - *a1) >> 5);
  }

  shazam::peaksToTFPeaks<std::vector<std::vector<shazam::spectral_peak_t>>>((a2 + 32), (v11 + 24), &__p);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3);
  if (v18 > *(*a1 + 24))
  {
    LOBYTE(v18) = *(*a1 + 24);
  }

  shazam::CPUDatabaseBuilder::addData(a1, a3, *(a2 + 20), v18, *(a2 + 24), &__p, a4, a5);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void shazam::CPUDatabaseBuilder::addData(uint64_t *a1, uint64_t a2, char a3, char a4, int a5, uint64_t a6, uint64_t a7, float a8)
{
  v15 = a1[5];
  v16 = v15[1] - *v15;
  std::vector<shazam::peak_tf>::resize(v15, ((*(a6 + 8) - *a6) >> 2) + (v16 >> 2));
  v17 = *(a6 + 8);
  if (*a6 != v17)
  {
    memcpy((*a1[5] + v16), *a6, v17 - *a6);
  }

  v18 = a1[5];
  v19 = ((v18[1] - *v18) >> 2) - 1;
  v21 = v18[4];
  v20 = v18[5];
  if (v21 >= v20)
  {
    v23 = v18[3];
    v24 = v21 - v23;
    v25 = (v21 - v23) >> 2;
    v26 = v25 + 1;
    if ((v25 + 1) >> 62)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v27 = v20 - v23;
    if (v27 >> 1 > v26)
    {
      v26 = v27 >> 1;
    }

    v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
    v29 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v29 = v26;
    }

    if (v29)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>((v18 + 3), v29);
    }

    v30 = (v21 - v23) >> 2;
    v31 = (4 * v25);
    v32 = (4 * v25 - 4 * v30);
    *v31 = v19;
    v22 = v31 + 1;
    memcpy(v32, v23, v24);
    v33 = v18[3];
    v18[3] = v32;
    v18[4] = v22;
    v18[5] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v21 = v19;
    v22 = v21 + 4;
  }

  v18[4] = v22;
  a1[10] += (a5 + 1750);
  v34 = a1[3];
  v36 = *(v34 + 8);
  v35 = *(v34 + 16);
  if (v36 >= v35)
  {
    v38 = *v34;
    v39 = v36 - *v34;
    v40 = v39 >> 3;
    v41 = (v39 >> 3) + 1;
    if (v41 >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v42 = v35 - v38;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    v28 = v42 >= 0x7FFFFFFFFFFFFFF8;
    v43 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v43 = v41;
    }

    if (v43)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a1[3], v43);
    }

    *(8 * v40) = a2;
    v37 = 8 * v40 + 8;
    memcpy(0, v38, v39);
    v44 = *v34;
    *v34 = 0;
    *(v34 + 8) = v37;
    *(v34 + 16) = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v36 = a2;
    v37 = (v36 + 1);
  }

  *(v34 + 8) = v37;
  v45 = a1[3];
  v47 = v45[4];
  v46 = v45[5];
  if (v47 >= v46)
  {
    v49 = v45[3];
    v50 = v47 - v49;
    v51 = (v47 - v49) >> 2;
    v52 = v51 + 1;
    if ((v51 + 1) >> 62)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v53 = v46 - v49;
    if (v53 >> 1 > v52)
    {
      v52 = v53 >> 1;
    }

    v28 = v53 >= 0x7FFFFFFFFFFFFFFCLL;
    v54 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v54 = v52;
    }

    if (v54)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>((v45 + 3), v54);
    }

    v55 = (v47 - v49) >> 2;
    v56 = (4 * v51);
    v57 = (4 * v51 - 4 * v55);
    *v56 = a8;
    v48 = v56 + 1;
    memcpy(v57, v49, v50);
    v58 = v45[3];
    v45[3] = v57;
    v45[4] = v48;
    v45[5] = 0;
    if (v58)
    {
      operator delete(v58);
    }
  }

  else
  {
    *v47 = a8;
    v48 = v47 + 1;
  }

  v45[4] = v48;
  v59 = a1[3];
  v61 = v59[16];
  v60 = v59[17];
  if (v61 >= v60)
  {
    v63 = v59[15];
    v64 = (v61 - v63);
    v65 = v61 - v63 + 1;
    if (v65 < 0)
    {
      goto LABEL_72;
    }

    v66 = v60 - v63;
    if (2 * v66 > v65)
    {
      v65 = 2 * v66;
    }

    if (v66 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v67 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = v65;
    }

    if (v67)
    {
      operator new();
    }

    v68 = v61 - v63;
    *v64 = a3;
    v62 = v64 + 1;
    memcpy(0, v63, v68);
    v59[15] = 0;
    v59[16] = v64 + 1;
    v59[17] = 0;
    if (v63)
    {
      operator delete(v63);
    }
  }

  else
  {
    *v61 = a3;
    v62 = v61 + 1;
  }

  v59[16] = v62;
  v69 = a1[3];
  v71 = v69[7];
  v70 = v69[8];
  if (v71 < v70)
  {
    *v71 = a4;
    v72 = v71 + 1;
    goto LABEL_60;
  }

  v73 = v69[6];
  v74 = (v71 - v73);
  v75 = v71 - v73 + 1;
  if (v75 < 0)
  {
LABEL_72:
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v76 = v70 - v73;
  if (2 * v76 > v75)
  {
    v75 = 2 * v76;
  }

  if (v76 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v77 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v77 = v75;
  }

  if (v77)
  {
    operator new();
  }

  v78 = v71 - v73;
  *v74 = a4;
  v72 = v74 + 1;
  memcpy(0, v73, v78);
  v69[6] = 0;
  v69[7] = v74 + 1;
  v69[8] = 0;
  if (v73)
  {
    operator delete(v73);
  }

LABEL_60:
  v69[7] = v72;
  v79 = a1[3];
  v81 = v79[13];
  v80 = v79[14];
  if (v81 >= v80)
  {
    v83 = v79[12];
    v84 = v81 - v83;
    v85 = (v81 - v83) >> 3;
    v86 = v85 + 1;
    if ((v85 + 1) >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v87 = v80 - v83;
    if (v87 >> 2 > v86)
    {
      v86 = v87 >> 2;
    }

    v28 = v87 >= 0x7FFFFFFFFFFFFFF8;
    v88 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v88 = v86;
    }

    if (v88)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>((v79 + 12), v88);
    }

    v89 = (v81 - v83) >> 3;
    v90 = (8 * v85);
    v91 = (8 * v85 - 8 * v89);
    *v90 = a7;
    v82 = v90 + 1;
    memcpy(v91, v83, v84);
    v92 = v79[12];
    v79[12] = v91;
    v79[13] = v82;
    v79[14] = 0;
    if (v92)
    {
      operator delete(v92);
    }
  }

  else
  {
    *v81 = a7;
    v82 = v81 + 8;
  }

  v79[13] = v82;
  v93 = a1[3];
  v95 = a1[10];
  std::vector<unsigned int>::push_back[abi:ne200100]((v93 + 72), &v95);
}

void std::vector<shazam::peak_tf>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<shazam::peak_tf>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a1, v12);
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

const void **shazam::detail::writeLMFPData<(AlgoType)1>(const void **result, std::vector<char> *this, _DWORD *a3)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    v7 = result;
    begin = this->__begin_;
    v9 = this->__end_ - this->__begin_;
    v10 = v5 - v4;
    v11 = v9 + v5 - v4;
    if (v9 >= v11)
    {
      if (v9 > v11)
      {
        this->__end_ = &begin[v11];
      }
    }

    else
    {
      std::vector<char>::__append(this, v10);
      begin = this->__begin_;
      v4 = *v7;
    }

    result = memcpy(&begin[v9], v4, v10);
    v12 = v7[1] - *v7;
    if (v12)
    {
      v13 = v12 >> 3;
      v14 = *a3 + 1750;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v15 = &this->__begin_[v9 + 4];
      do
      {
        *v15 += v14;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void shazam::link_bands<(AlgoType)1>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __p[240] = *MEMORY[0x277D85DE8];
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(v72, a5);
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  shazam::matrix_for<(AlgoType)1,(void *)0>(a4, a3, &v76);
  shazam::algo<(AlgoType)1>::tzones_for (v74);
  v9 = a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v58 = a6;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&v79, 0x64uLL);
    v11 = *a2;
    v10 = a2[1];
    if (v10 != *a2)
    {
      v12 = 0;
      do
      {
        v13 = *(&v76 + v12 + 2);
        if (v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14(__p, v11 + 24 * v12);
            shazam::chooseAnchors(__p, *(&v76 + v12 + 2), &v76, &v79);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            shazam::chooseAnchors((v11 + 24 * v12), v13, &v76, &v79);
          }

          v11 = *v9;
          v10 = v9[1];
          if (v10 != *v9)
          {
            v15 = 0;
            v59 = 4 * v12;
            v62 = &v77 + 4 * v12 + 8;
            v60 = v12;
            do
            {
              v64 = v15;
              v70 = v62[v15];
              if (v62[v15])
              {
                if (v75 == 1)
                {
                  v16 = v15;
                  LODWORD(__p[0]) = v59 + v15;
                  if (std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v74, __p))
                  {
                    v17 = std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v74, __p);
                    if (!v17)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v68 = *(v17 + 20);
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v11 = *v9;
                  v70 = v62[v64];
                }

                else
                {
                  v68 = 0;
                  v16 = v15;
                }

                v67 = (v11 + 24 * v16);
                v18 = *v67;
                bzero(__p, 0x780uLL);
                v19 = v79;
                v66 = v80;
                if (v79 != v80)
                {
                  if (HIDWORD(v68))
                  {
                    v20 = v68 == 0;
                  }

                  else
                  {
                    v20 = 1;
                  }

                  v21 = v20;
                  v65 = v21;
                  do
                  {
                    v22 = *v19 + 8;
                    if (v65)
                    {
                      v23 = *v19 + 197;
                    }

                    else
                    {
                      v22 = *v19 + v68;
                      v23 = v22 + HIDWORD(v68);
                    }

                    v24 = v67[1];
                    if (v24 == v18)
                    {
                      v18 = v67[1];
                      v31 = v18;
                    }

                    else
                    {
                      v25 = (v24 - v18) >> 3;
                      do
                      {
                        v26 = v25 >> 1;
                        v27 = &v18[8 * (v25 >> 1)];
                        v29 = *v27;
                        v28 = (v27 + 2);
                        v25 += ~(v25 >> 1);
                        if (v29 < v22)
                        {
                          v18 = v28;
                        }

                        else
                        {
                          v25 = v26;
                        }
                      }

                      while (v25);
                      if (v24 == v18)
                      {
                        v31 = v67[1];
                      }

                      else
                      {
                        v30 = (v24 - v18) >> 3;
                        v31 = v18;
                        do
                        {
                          v32 = v30 >> 1;
                          v33 = (v31 + 8 * (v30 >> 1));
                          v35 = *v33;
                          v34 = v33 + 2;
                          v30 += ~(v30 >> 1);
                          if (v35 < v23)
                          {
                            v31 = v34;
                          }

                          else
                          {
                            v30 = v32;
                          }
                        }

                        while (v30);
                      }

                      v24 = v18;
                    }

                    v36 = (v31 - v24) >> 3;
                    gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>::span<18446744073709551615ul,0>(&v82, v18, v31);
                    if (v36 <= v70)
                    {
                      v36 = v82;
                      v37 = v83;
                    }

                    else
                    {
                      if (v31 != v24)
                      {
                        memmove(__p, v18, v31 - v24);
                      }

                      v37 = __p;
                      v38 = 126 - 2 * __clz(v36);
                      if (v31 == v24)
                      {
                        v39 = 0;
                      }

                      else
                      {
                        v39 = v38;
                      }

                      v40 = std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(__p, &__p[v36], v39, 1);
                      if (v31 - v24 == -8)
                      {
LABEL_86:
                        gsl::details::terminate(v40);
                      }
                    }

                    v69 = v19;
                    v41 = *v19;
                    v42 = WORD2(*v19);
                    v43 = 0;
                    v44 = shazam::FreqLogTable::at(WORD2(*v19));
                    v45 = &v37[v36];
                    v82 = v37;
                    v83 = v45;
                    v84 = v37;
                    LODWORD(v46) = 2 * (((v44 + -3.46573591) * 3103.75977) & 0x3FFF);
                    v71 = v41 << 32;
                    while (v84 != v45)
                    {
                      v47 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v82);
                      v46 = v46 & 0x7FFF | ((((v44 - shazam::FreqLogTable::at(*(v47 + 2))) * 151.569275) & 0x3FFu) << 15) | (((sqrtf(((v42 * 7.8125) * 0.015625) * (*v47 - v41)) / 830.36) * 120.0) << 25);
                      v48 = v42 - *(v47 + 2);
                      if (v48 < 0)
                      {
                        v48 = *(v47 + 2) - v42;
                      }

                      if (v48 >= 0x101)
                      {
                        v49 = v72[1];
                        if (v72[1] >= v73)
                        {
                          v51 = (v72[1] - v72[0]) >> 3;
                          if ((v51 + 1) >> 61)
                          {
                            std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
                          }

                          v52 = (v73 - v72[0]) >> 2;
                          if (v52 <= v51 + 1)
                          {
                            v52 = v51 + 1;
                          }

                          if (v73 - v72[0] >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v53 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v53 = v52;
                          }

                          if (v53)
                          {
                            std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(v72, v53);
                          }

                          v54 = (8 * v51);
                          *v54 = v71 | v46;
                          v50 = (8 * v51 + 8);
                          v55 = v54 - (v72[1] - v72[0]);
                          memcpy(v55, v72[0], v72[1] - v72[0]);
                          v56 = v72[0];
                          v72[0] = v55;
                          v72[1] = v50;
                          v73 = 0;
                          if (v56)
                          {
                            operator delete(v56);
                          }
                        }

                        else
                        {
                          *v72[1] = v71 | v46;
                          v50 = v49 + 8;
                        }

                        v72[1] = v50;
                        if (v70 == ++v43)
                        {
                          break;
                        }
                      }

                      v40 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v82);
                      if (v82 != v37 || v83 != v45)
                      {
                        goto LABEL_86;
                      }
                    }

                    v19 = v69 + 2;
                  }

                  while (v69 + 2 != v66);
                  v11 = *a2;
                }

                v9 = a2;
                v10 = a2[1];
                v12 = v60;
              }

              v15 = v64 + 1;
            }

            while (v64 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
          }
        }

        ++v12;
      }

      while (v12 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
    }

    a6 = v58;
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }
  }

  if (v75 == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v74);
  }

  *a6 = *v72;
  *(a6 + 16) = v73;
  v57 = *MEMORY[0x277D85DE8];
}