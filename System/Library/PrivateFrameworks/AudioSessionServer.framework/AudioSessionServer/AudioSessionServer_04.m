char *boost::movelib::detail_adaptive::merge_blocks_bufferless<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(_DWORD *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a2;
  v8 = a6 + a5;
  v9 = &a2[4 * a4];
  v38 = &v9[4 * (a6 + a5) * a3];
  if (a6 + a5)
  {
    v36 = a6 + a5;
    v11 = 0;
    v12 = &a1[a5];
    if (a6)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }

    if (v13 + 1 < v8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = a6 + a5;
    }

    v15 = 4 * a3;
    v16 = 1;
    v17 = &a2[4 * a4];
    v18 = a1;
    do
    {
      v40 = v11;
      v19 = boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v18, v17, a3, v13, v14);
      if (v14 <= v19 + 2)
      {
        v20 = v19 + 2;
      }

      else
      {
        v20 = v14;
      }

      if (v20 >= v8)
      {
        v21 = v8;
      }

      else
      {
        v21 = v20;
      }

      v22 = v19 * a3;
      if (a7 && v16)
      {
        v16 = *v38 >= *(v17 + 4 * v22);
      }

      if (v22)
      {
        if (a3)
        {
          v23 = 0;
          v24 = v17 + v15 * v19;
          do
          {
            v25 = *(v17 + v23);
            *(v17 + v23) = *(v24 + v23);
            *(v24 + v23) = v25;
            v23 += 4;
          }

          while (v15 != v23);
        }

        v26 = &v18[v19];
        v27 = *v26;
        *v26 = *v18;
        *v18 = v27;
        v28 = v18;
        if (v12 == v26 || (v28 = v26, v12 == v18))
        {
          v12 = v28;
        }
      }

      v11 = v40 + v16;
      v17 += v15;
      ++v18;
      v13 -= v13 != 0;
      v14 = v21 - (v20 != 0);
      --v8;
    }

    while (v8);
    v41 = 1;
    if (v11)
    {
      v29 = a1;
      v30 = 4 * (v40 + v16);
      v31 = a2;
      do
      {
        v32 = v12 == &a1[v36] || *v29 < *v12;
        v33 = v9;
        if (v32 != v41)
        {
          v33 = boost::movelib::detail_adaptive::partial_merge_bufferless<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v31, v9, &v9[v15], &v41);
        }

        ++v29;
        v9 += v15;
        v31 = v33;
        v30 -= 4;
      }

      while (v30);
      if (v41)
      {
        v7 = v33;
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      v7 = a2;
    }
  }

  else
  {
    v41 = 1;
  }

  return boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v7, v38, &v38[4 * a7], (v38 - v7) >> 2, a7);
}

uint64_t boost::movelib::detail_adaptive::combine_params<unsigned long *,boost::movelib::detail_adaptive::less,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7, unint64_t *a8, unint64_t *a9, char a10)
{
  v10 = a3 / a4;
  *a8 = a3 % a4;
  v11 = (a2 - a3 % a4) % a4;
  *a9 = v11;
  v12 = a2 - (v11 + *a8);
  v13 = v12 / a4;
  if (v12 % a4)
  {
    boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
  }

  *a6 = v10;
  v14 = v13 - v10;
  *a7 = v14;
  if (v13 < *a6)
  {
    boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
  }

  if (a10)
  {
    v15 = result + 8 * v14 + 8 * *a6;
    v16 = v15 - result;
    if (v15 != result)
    {
      v17 = 0;
      v18 = v16 >> 3;
      v19 = vdupq_n_s64(v18 - 1);
      v20 = (v18 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = xmmword_241782A30;
      v22 = vdupq_n_s64(2uLL);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v19, v21));
        if (v23.i8[0])
        {
          *(result + 8 * v17) = v17;
        }

        if (v23.i8[4])
        {
          *(result + 8 * v17 + 8) = v17 + 1;
        }

        v17 += 2;
        v21 = vaddq_s64(v21, v22);
      }

      while (v20 != v17);
    }
  }

  return result;
}

uint64_t boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned long *,boost::movelib::detail_adaptive::less,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>(unsigned int *a1, int *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v8 = a3;
  v9 = a2;
  v10 = &a1[2 * a5];
  v84 = a8;
  v85 = a8;
  v11 = &a2[a4];
  v83 = v11;
  v12 = a6 + a5;
  v66 = &v11[(a6 + a5) * a3];
  if (!(a6 + a5))
  {
    goto LABEL_74;
  }

  v68 = a8;
  if (a6)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0;
  }

  if (v13 + 1 < v12)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = a6 + a5;
  }

  v70 = &a1[2 * v12];
  v64 = a5;
  v65 = 4 * a3;
  v15 = 1;
  v62 = a1;
  v63 = a6;
  v16 = a6;
  v17 = v11;
  v18 = a1;
  while (1)
  {
    v73 = a5;
    v75 = v15;
    v19 = v10;
    v20 = boost::movelib::detail_adaptive::find_next_block<unsigned long *,boost::movelib::detail_adaptive::less,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v18, v11, v8, v13, v14);
    v15 = v75;
    v10 = v19;
    v21 = v20;
    if (v14 <= v20 + 2)
    {
      v14 = v20 + 2;
    }

    v22 = v14 >= v12 ? v12 : v14;
    v23 = v83;
    v24 = v84;
    v25 = &v83[v21 * v8];
    v11 = &v83[v8];
    v26 = v85;
    v27 = &v17[v8];
    v74 = v12;
    if (!v16)
    {
      if (!a7)
      {
        if (v75)
        {
          a8 = v68;
          goto LABEL_67;
        }

        v28 = &v18[2 * v21];
        if (v19 == v70)
        {
          v29 = 1;
          goto LABEL_35;
        }

LABEL_18:
        v29 = *v28 < *v19;
        if (((v75 ^ v29) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }

      if (*v66 < *v25)
      {
        break;
      }
    }

    v28 = &v18[2 * v21];
    if (v19 != v70)
    {
      goto LABEL_18;
    }

    v29 = 1;
    if (v75)
    {
LABEL_21:
      if (v85 != v84)
      {
        do
        {
          v30 = *v26++;
          *v9++ = v30;
        }

        while (v26 != v24);
        v84 = v68;
        v85 = v68;
        if (v9 != v17)
        {
          boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
        }
      }

      v85 = v68;
      v24 = v68;
      if (v21 * v8)
      {
        if (a3)
        {
          v31 = v65;
          v32 = v65 * v21;
          v33 = v23;
          v24 = v68;
          do
          {
            *v24++ = *(v33 + v32);
            *(v33 + v32) = *v33;
            ++v33;
            v31 -= 4;
          }

          while (v31);
        }

        v34 = *v28;
        *v28 = *v18;
        *v18 = v34;
        v35 = v18;
        if (v19 == v28 || (v35 = v28, v19 == v18))
        {
          v10 = v35;
        }
      }

      v84 = v24;
      v26 = v68;
      v36 = v73;
      goto LABEL_56;
    }

LABEL_35:
    v69 = v28;
    v71 = v29;
    v37 = v22;
    v38 = v9;
    v39 = v17;
    v40 = v11;
    v41 = v25;
    v42 = v27;
    v23 = boost::movelib::detail_adaptive::op_partial_merge_and_save<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(v38, v39, &v83, v11, v25, &v85, &v84, v75 & 1);
    v27 = v42;
    v44 = v84;
    v43 = v85;
    if (v84 != v85 && v84 - v85 != v42 - v23)
    {
      boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
    }

    if (v85 == v84)
    {
      v85 = v68;
      v48 = v83;
      v11 = v40;
      v49 = (&v41[a3] + v83 - v40);
      v10 = v19;
      v22 = v37;
      v24 = v68;
      if (v83 == v49)
      {
        v36 = v73;
        v29 = v71;
      }

      else
      {
        v29 = v71;
        if (v83 != v40)
        {
          v24 = v68;
          do
          {
            *v24++ = *v49;
            v50 = *v48++;
            *v49++ = v50;
          }

          while (v48 != v40);
        }

        v51 = *v69;
        *v69 = *v18;
        *v18 = v51;
        v52 = v18;
        if (v19 == v69 || (v52 = v69, v19 == v18))
        {
          v10 = v52;
        }

        v36 = v73;
      }

      v84 = v24;
      v26 = v68;
      v12 = v74;
      v47 = v75;
    }

    else
    {
      v10 = v19;
      v11 = v40;
      v22 = v37;
      if (v21)
      {
        v45 = *v69;
        *v69 = *v18;
        *v18 = v45;
        v46 = v18;
        v47 = v75;
        v36 = v73;
        v29 = v71;
        if (v19 == v69 || (v46 = v69, v19 == v18))
        {
          v24 = v44;
          v26 = v43;
          v10 = v46;
        }

        else
        {
          v24 = v44;
          v26 = v43;
        }

        v12 = v74;
      }

      else
      {
        v24 = v84;
        v26 = v85;
        v36 = v73;
        v12 = v74;
        v47 = v75;
        v29 = v71;
      }
    }

    v15 = v47 ^ (v43 == v44);
LABEL_56:
    if (v36)
    {
      v53 = !v29;
    }

    else
    {
      v53 = 1;
    }

    if (v16)
    {
      v54 = v29;
    }

    else
    {
      v54 = 1;
    }

    if (v53 == 1 && v54)
    {
      boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
    }

    a5 = v36 - v29;
    v16 -= !v29;
    v83 = v11;
    v18 += 2;
    v13 -= v13 != 0;
    v14 = v22 - (v14 != 0);
    v9 = v23;
    v17 = v27;
    --v12;
    v8 = a3;
    if (!v12)
    {
      v9 = v23;
      v17 = v27;
      goto LABEL_66;
    }
  }

  v27 = v17;
  v23 = v9;
LABEL_66:
  v11 = v27;
  a8 = v68;
  if ((v15 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_67:
  v27 = v9;
  v11 = v17;
  v23 = v9;
LABEL_68:
  if (v26 == v24)
  {
    v9 = v27;
    a6 = v63;
    a5 = v64;
  }

  else
  {
    a6 = v63;
    a5 = v64;
    do
    {
      v55 = *v26++;
      *v23++ = v55;
    }

    while (v26 != v24);
    v9 = v27;
  }

  a1 = v62;
LABEL_74:
  v56 = v11;
  if (a7)
  {
    v57 = v66;
    v58 = 4 * a7;
    v59 = a8;
    do
    {
      v60 = *v57++;
      *v59++ = v60;
      v58 -= 4;
    }

    while (v58);
  }

  v84 = &a8[a7];
  v85 = a8;
  v82 = v84;
  v79 = v10;
  v80 = &a1[2 * a6 + 2 * a5];
  v78 = v66;
  v76 = &v66[a7];
  v77 = a8;
  boost::movelib::detail_adaptive::op_merge_blocks_with_irreg<boost::movelib::reverse_iterator<unsigned long *>,boost::movelib::inverse<boost::movelib::detail_adaptive::less>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(&v80, &v79, 0, &v78, &v82, &v77, &v76, v8, &v81, v12, 0, v12, 0, 1u);
  v84 = v82;
  if ((v81 - v56) != (v82 - v85))
  {
    boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>();
  }

  return boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>(v9, v56, v81, v85, v82);
}

uint64_t boost::movelib::detail_adaptive::initialize_keys<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(uint64_t a1, uint64_t a2)
{
  result = boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort(a1, a2);
  if (a1 != a2)
  {
    for (i = (a1 + 4); i != a2; ++i)
    {
      v6 = *(i - 1);
      v7 = *i;
      if (v6 >= v7)
      {
        boost::movelib::detail_adaptive::initialize_keys<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
      }
    }
  }

  return result;
}

uint64_t boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort(uint64_t a1, uint64_t a2)
{
  boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::make_heap(a1, a2);
  result = boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort_heap(a1, a2);
  if (a1 != a2)
  {
    for (i = (a1 + 4); i != a2; ++i)
    {
      v7 = *(i - 1);
      v6 = *i;
      if (v6 < v7)
      {
        boost::movelib::heap_sort_helper<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort();
      }
    }
  }

  return result;
}

uint64_t boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::make_heap(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result) >> 2;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = (v2 >> 1) - 1;
    do
    {
      v5 = *(v3 + 4 * v4);
      result = boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::adjust_heap(v3, v4--, v2, &v5);
    }

    while (v4 != -1);
  }

  return result;
}

uint64_t boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::sort_heap(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result) >> 2;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = (a2 - 4);
    do
    {
      v5 = *v4;
      *v4-- = *v3;
      result = boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::adjust_heap(v3, 0, --v2, &v5);
    }

    while (v2 > 1);
  }

  return result;
}

uint64_t boost::movelib::heap_sort_helper<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>::adjust_heap(uint64_t result, unint64_t a2, unint64_t a3, unsigned int *a4)
{
  v4 = 2 * a2;
  v5 = 2 * a2 + 2;
  if (v5 >= a3)
  {
    v7 = a2;
  }

  else
  {
    v6 = a2;
    do
    {
      if (*(result + 4 * v5) < *(result + 4 * v5 - 4))
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = v5;
      }

      *(result + 4 * v6) = *(result + 4 * v7);
      v4 = 2 * v7;
      v5 = 2 * v7 + 2;
      v6 = v7;
    }

    while (v5 < a3);
  }

  if (v5 == a3)
  {
    v8 = v4 | 1;
    *(result + 4 * v7) = *(result + 4 * v8);
    v7 = v8;
  }

  if (v7 > a2)
  {
    while (1)
    {
      v9 = (v7 - 1) >> 1;
      v10 = *(result + 4 * v9);
      if (v10 >= *a4)
      {
        break;
      }

      *(result + 4 * v7) = v10;
      v7 = (v7 - 1) >> 1;
      if (v9 <= a2)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = v7;
LABEL_16:
  *(result + 4 * v9) = *a4;
  return result;
}

unint64_t boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a4 > a5)
  {
    boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>();
  }

  v5 = 0;
  if (a4 < a5)
  {
    v6 = (a2 + 4 * a4 * a3);
    do
    {
      v7 = *(a2 + 4 * v5 * a3);
      if (*v6 < v7 || v7 >= *v6 && *(a1 + 4 * a4) < *(a1 + 4 * v5))
      {
        v5 = a4;
      }

      v6 += a3;
      ++a4;
    }

    while (a5 != a4);
  }

  return v5;
}

int *boost::movelib::detail_adaptive::op_partial_merge_and_save<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int *a5, int **a6, int **a7, int a8)
{
  if (a8)
  {

    return boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    *&v12[1] = v8;
    v13 = v9;
    v11 = v12;
    return boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(a1, a2, a3, a4, a5, a6, a7, &v11);
  }
}

uint64_t *boost::movelib::detail_adaptive::op_merge_blocks_with_irreg<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unsigned int **a7@<X6>, uint64_t a8@<X7>, unsigned int **a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v50 = result;
  v14 = a10;
  if (a10)
  {
    v49 = -a8;
    v18 = *result;
    do
    {
      v56[0] = v18;
      v55 = *a4;
      v19 = boost::movelib::detail_adaptive::find_next_block<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(v56, a3, &v55, a8, a11, a12);
      v20 = v19;
      if (a12 <= v19 + 2)
      {
        v21 = v19 + 2;
      }

      else
      {
        v21 = a12;
      }

      if (v21 >= v14)
      {
        v22 = v14;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*a4 + 4 * v49);
      v24 = (*a4 - 4 * v19 * a8);
      v56[0] = v24;
      if (v19)
      {
        v25 = *a6;
        v53 = v23;
        v54 = v25;
        v52 = *a7;
        result = boost::movelib::detail_adaptive::op_partial_merge_and_swap<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(a5, &v54, a4, &v53, v56, &v52, a14, &v55);
        i = v55;
        *a7 = v55;
        v27 = *a4;
        if (*a4 == i)
        {
          v34 = &v24[v49];
          v35 = v56[0];
          for (i = *a4; v35 != v34; *i = v36)
          {
            v37 = *--v35;
            v36 = v37;
            v38 = *--i;
            *v35 = v38;
          }
        }

        else if (v27 != v23)
        {
          v28 = v56[0] - 1;
          do
          {
            *--i = *v28;
            v29 = *(v27 - 4);
            v27 -= 4;
            *v28-- = v29;
          }

          while (v27 != v23);
        }
      }

      else
      {
        v30 = *a6;
        v53 = v23;
        v54 = v30;
        v52 = *a7;
        result = boost::movelib::detail_adaptive::op_partial_merge<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(a5, &v54, a4, &v53, &v52, a14, &v55);
        v31 = v55;
        *a7 = v55;
        v32 = *a4;
        i = v23;
        if (*a4 != v31)
        {
          i = v31;
          while (v32 != v23)
          {
            v33 = *(v32 - 4);
            v32 -= 4;
            *--i = v33;
          }
        }
      }

      *a7 = i;
      if (v23 != v56[0])
      {
        v39 = *v50;
        v40 = *v50 - 4 * v20;
        v41 = *(v40 - 4);
        *(v40 - 4) = *(*v50 - 4);
        *(v39 - 4) = v41;
        if (v40 == *a2 || (v42 = *a2 == v39, v39 = v40, v42))
        {
          *a2 = v39;
        }
      }

      *a4 = v23;
      v18 = (*v50 - 4);
      *v50 = v18;
      a11 -= a11 != 0;
      a12 = v22 - (v21 != 0);
      --v14;
    }

    while (v14);
  }

  *a9 = *a7;
  return result;
}

int *boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int *a5, int **a6, int **a7)
{
  v29 = a5;
  v13 = *a6;
  v14 = *a7;
  v15 = *a3;
  v27 = *a3;
  if (v13 == v14)
  {
    v16 = a1;
    if (a1 != a2)
    {
      v16 = a1;
      do
      {
        if (*a5 < *v16)
        {
          break;
        }

        ++v16;
      }

      while (v16 != a2);
    }

    v28 = (v13 + v16 - a1);
    if (v15 == a5)
    {
      v14 = boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(v16, a2, &v27, a4, &v28);
      v15 = v27;
      v13 = v28;
      a1 = a2;
      goto LABEL_23;
    }

    v14 = boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(v16, a2, &v27, a4, &v29, &v28);
    v15 = v27;
    v13 = v28;
    a1 = a2;
  }

  else
  {
    if (a2 - a1 != v14 - v13)
    {
      boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>();
    }

    if (v15 == a5)
    {
LABEL_23:
      if (v15 != a4 && v13 != v14)
      {
        do
        {
          v24 = a1 + 1;
          while (1)
          {
            a1 = v24;
            v25 = *v15;
            v26 = *v13;
            if (*v15 >= *v13)
            {
              break;
            }

            ++v15;
            *(a1 - 1) = v25;
            v24 = a1 + 1;
            if (v15 == a4)
            {
              goto LABEL_28;
            }
          }

          ++v13;
          *(a1 - 1) = v26;
        }

        while (v13 != v14);
      }

      goto LABEL_28;
    }
  }

  if (v15 != a4 && v13 != v14)
  {
    v18 = v29;
    do
    {
      v19 = a1;
      while (1)
      {
        v20 = *v13;
        if (*v18 >= *v13)
        {
          break;
        }

        *v19++ = *v18;
        v21 = *v15++;
        *v18++ = v21;
        if (v15 == a4)
        {
          a1 = v19;
          goto LABEL_28;
        }
      }

      ++v13;
      *v19 = v20;
      a1 = v19 + 1;
    }

    while (v13 != v14);
    a1 = v19 + 1;
  }

LABEL_28:
  *a6 = v13;
  *a7 = v14;
  *a3 = v15;
  return a1;
}

int *boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int *a5, int **a6, int **a7, uint64_t *a8)
{
  v32 = a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a3;
  v30 = *a3;
  if (v14 == v15)
  {
    v17 = a1;
    if (a1 != a2)
    {
      v17 = a1;
      do
      {
        if (*v17 >= *a5)
        {
          break;
        }

        ++v17;
      }

      while (v17 != a2);
    }

    v31 = (v14 + v17 - a1);
    if (v16 == a5)
    {
      v29 = *a8;
      v15 = boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(v17, a2, &v30, a4, &v31);
      v16 = v30;
      v14 = v31;
      a1 = a2;
      goto LABEL_23;
    }

    v28 = *a8;
    v15 = boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(v17, a2, &v30, a4, &v32, &v31);
    v16 = v30;
    v14 = v31;
    a1 = a2;
  }

  else
  {
    if (a2 - a1 != v15 - v14)
    {
      boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>();
    }

    if (v16 == a5)
    {
LABEL_23:
      if (v16 != a4 && v14 != v15)
      {
        do
        {
          v25 = a1 + 1;
          while (1)
          {
            a1 = v25;
            v26 = *v14;
            v27 = *v16;
            if (*v14 < *v16)
            {
              break;
            }

            ++v16;
            *(a1 - 1) = v27;
            v25 = a1 + 1;
            if (v16 == a4)
            {
              goto LABEL_28;
            }
          }

          ++v14;
          *(a1 - 1) = v26;
        }

        while (v14 != v15);
      }

      goto LABEL_28;
    }
  }

  if (v16 != a4 && v14 != v15)
  {
    v19 = v32;
    do
    {
      v20 = a1;
      while (1)
      {
        v21 = *v14;
        if (*v14 < *v19)
        {
          break;
        }

        *v20++ = *v19;
        v22 = *v16++;
        *v19++ = v22;
        if (v16 == a4)
        {
          a1 = v20;
          goto LABEL_28;
        }
      }

      ++v14;
      *v20 = v21;
      a1 = v20 + 1;
    }

    while (v14 != v15);
    a1 = v20 + 1;
  }

LABEL_28:
  *a6 = v14;
  *a7 = v15;
  *a3 = v16;
  return a1;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int **a5, int **a6)
{
  result = *a6;
  if (a1 != a2)
  {
    v8 = *a3;
    if (*a3 != a4)
    {
      v9 = *a5;
      *result = *a1;
      v10 = result + 1;
      *a1 = *v9;
      v11 = a1 + 1;
      v13 = *v8;
      v12 = v8 + 1;
      *v9 = v13;
      v14 = v9 + 1;
      while (v11 != a2)
      {
        if (v12 == a4)
        {
          v18 = 0;
          do
          {
            v19 = &v11[v18 + 1];
            result[v18] = v11[v18];
            ++v18;
          }

          while (v19 != a2);
          v10 = &result[v18];
          break;
        }

        if (*v14 >= *result)
        {
          v15 = result++;
          v16 = v11;
          v17 = v10;
        }

        else
        {
          v15 = v12++;
          v16 = v14++;
          *v10 = *v11;
          v17 = v11;
        }

        *v17 = *v16;
        *v16 = *v15;
        ++v11;
        ++v10;
      }

      *a3 = v12;
      *a6 = result;
      result = v10;
      *a5 = v14;
    }
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int **a5)
{
  result = *a5;
  if (a1 != a2)
  {
    v7 = *a3;
    if (*a3 != a4)
    {
      *result = *a1;
      v8 = result + 1;
      v10 = *v7;
      v9 = v7 + 1;
      *a1 = v10;
      v11 = a1 + 1;
      if (v11 != a2)
      {
        while (v9 != a4)
        {
          v12 = *v9 >= *result;
          v13 = &v9[*v9 < *result];
          v14 = &result[v12];
          *v8++ = *v11;
          if (v12)
          {
            v9 = result;
          }

          *v11++ = *v9;
          result += v12;
          v9 = v13;
          if (v11 == a2)
          {
            goto LABEL_14;
          }
        }

        v15 = 0;
        do
        {
          v16 = &v11[v15 + 1];
          result[v15] = v11[v15];
          ++v15;
        }

        while (v16 != a2);
        v8 = &result[v15];
      }

      v13 = v9;
      v14 = result;
LABEL_14:
      *a3 = v13;
      *a5 = v14;
      return v8;
    }
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int **a5, int **a6)
{
  result = *a6;
  if (a1 != a2)
  {
    v8 = *a3;
    if (*a3 != a4)
    {
      v9 = *a5;
      *result = *a1;
      v10 = result + 1;
      *a1 = *v9;
      v11 = a1 + 1;
      v13 = *v8;
      v12 = v8 + 1;
      *v9 = v13;
      v14 = v9 + 1;
      while (v11 != a2)
      {
        if (v12 == a4)
        {
          v18 = 0;
          do
          {
            v19 = &v11[v18 + 1];
            result[v18] = v11[v18];
            ++v18;
          }

          while (v19 != a2);
          v10 = &result[v18];
          break;
        }

        if (*result >= *v14)
        {
          v15 = v12++;
          v16 = v14++;
          *v10 = *v11;
          v17 = v11;
        }

        else
        {
          v15 = result++;
          v16 = v11;
          v17 = v10;
        }

        *v17 = *v16;
        *v16 = *v15;
        ++v11;
        ++v10;
      }

      *a3 = v12;
      *a6 = result;
      result = v10;
      *a5 = v14;
    }
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(int *a1, int *a2, int **a3, int *a4, int **a5)
{
  result = *a5;
  if (a1 != a2)
  {
    v7 = *a3;
    if (*a3 != a4)
    {
      *result = *a1;
      v8 = result + 1;
      v10 = *v7;
      v9 = v7 + 1;
      *a1 = v10;
      v11 = a1 + 1;
      if (v11 != a2)
      {
        while (v9 != a4)
        {
          v12 = *result >= *v9;
          v13 = &v9[v12];
          v14 = &result[*result < *v9];
          *v8++ = *v11;
          if (!v12)
          {
            v9 = result;
          }

          *v11++ = *v9;
          result = v14;
          v9 = v13;
          if (v11 == a2)
          {
            goto LABEL_13;
          }
        }

        v15 = 0;
        do
        {
          v16 = &v11[v15 + 1];
          result[v15] = v11[v15];
          ++v15;
        }

        while (v16 != a2);
        v8 = &result[v15];
      }

      v13 = v9;
      v14 = result;
LABEL_13:
      *a3 = v13;
      *a5 = v14;
      return v8;
    }
  }

  return result;
}

unint64_t boost::movelib::detail_adaptive::find_next_block<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a5 > a6)
  {
    boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>();
  }

  if (a5 >= a6)
  {
    return 0;
  }

  result = 0;
  v8 = *a1;
  v9 = (*a3 - 4 * a5 * a4 - 4);
  v10 = (v8 - 4 * a5 - 4);
  do
  {
    v11 = *(*a3 + 4 * ~(result * a4));
    if (v11 < *v9 || *v9 >= v11 && *(v8 + 4 * ~result) < *v10)
    {
      result = a5;
    }

    v9 -= a4;
    ++a5;
    --v10;
  }

  while (a6 != a5);
  return result;
}

uint64_t *boost::movelib::detail_adaptive::op_partial_merge_and_swap<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unsigned int **a5@<X4>, unsigned int **a6@<X5>, int a7@<W7>, unsigned int **a8@<X8>)
{
  v8 = *a2;
  v9 = *a4;
  v10 = *a6;
  v11 = *result;
  v12 = *a3;
  v14 = *a3 == *a4 || v8 == v11;
  if (a7)
  {
    if (!v14)
    {
      v15 = *a5;
      do
      {
        v16 = v15 - 1;
        --v10;
        v17 = v11;
        while (1)
        {
          v19 = *(v17 - 4);
          v17 -= 4;
          v18 = v19;
          if (v19 < *v16)
          {
            break;
          }

          *v10-- = v18;
          v11 = v17;
          if (v17 == v8)
          {
            goto LABEL_24;
          }
        }

        *v10 = *v16;
        v20 = *(v12 - 4);
        v12 -= 4;
        *v16 = v20;
        --v15;
      }

      while (v12 != v9);
LABEL_25:
      *a5 = v16;
      *result = v11;
      *a3 = v12;
    }
  }

  else if (!v14)
  {
    v15 = *a5;
    while (2)
    {
      v16 = v15 - 1;
      --v10;
      v17 = v11;
      while (1)
      {
        v22 = *(v17 - 4);
        v17 -= 4;
        v21 = v22;
        if (*v16 >= v22)
        {
          break;
        }

        *v10-- = v21;
        v11 = v17;
        if (v17 == v8)
        {
LABEL_24:
          ++v10;
          v16 = v15;
          v11 = v17;
          goto LABEL_25;
        }
      }

      *v10 = *v16;
      v23 = *(v12 - 4);
      v12 -= 4;
      *v16 = v23;
      --v15;
      if (v12 != v9)
      {
        continue;
      }

      goto LABEL_25;
    }
  }

  *a8 = v10;
  return result;
}

uint64_t *boost::movelib::detail_adaptive::op_partial_merge<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unsigned int **a5@<X4>, int a6@<W6>, unsigned int **a7@<X8>)
{
  v7 = *a2;
  v8 = *a4;
  v9 = *a5;
  v10 = *result;
  v11 = *a3;
  v13 = *a3 == *a4 || v7 == v10;
  if (a6)
  {
    if (!v13)
    {
      do
      {
        v14 = v9 - 1;
        v15 = v10;
        while (1)
        {
          v9 = v14;
          v17 = *(v15 - 4);
          v15 -= 4;
          v16 = v17;
          v18 = *(v11 - 4);
          if (v17 < v18)
          {
            break;
          }

          *v9 = v16;
          v14 = v9 - 1;
          v10 = v15;
          if (v15 == v7)
          {
            goto LABEL_22;
          }
        }

        v11 -= 4;
        *v9 = v18;
      }

      while (v11 != v8);
    }
  }

  else if (!v13)
  {
    while (2)
    {
      v19 = v9 - 1;
      v15 = v10;
      while (1)
      {
        v9 = v19;
        v21 = *(v15 - 4);
        v15 -= 4;
        v20 = v21;
        v22 = *(v11 - 4);
        if (v22 >= v21)
        {
          break;
        }

        *v9 = v20;
        v19 = v9 - 1;
        v10 = v15;
        if (v15 == v7)
        {
LABEL_22:
          v10 = v15;
          goto LABEL_23;
        }
      }

      v11 -= 4;
      *v9 = v22;
      if (v11 != v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
  *result = v10;
  *a3 = v11;
  *a7 = v9;
  return result;
}

int *boost::movelib::detail_adaptive::op_partial_merge_and_save<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int *a5, int **a6, int **a7, int a8)
{
  if (a8)
  {

    return boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    *&v12[1] = v8;
    v13 = v9;
    v11 = v12;
    return boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(a1, a2, a3, a4, a5, a6, a7, &v11);
  }
}

unsigned int **boost::movelib::detail_adaptive::op_merge_blocks_with_irreg<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>@<X0>(unsigned int **result@<X0>, uint64_t *a2@<X1>, unsigned __int8 a3@<W2>, int **a4@<X3>, unsigned int **a5@<X4>, unsigned int **a6@<X5>, int **a7@<X6>, uint64_t a8@<X7>, int **a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, char a13, int a14, unsigned __int8 a15)
{
  v55 = result;
  v15 = a10;
  if (a10)
  {
    v54 = -a8;
    v19 = *result;
    do
    {
      v61[0] = v19;
      v60 = *a4;
      v20 = boost::movelib::detail_adaptive::find_next_block<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(v61, a3, &v60, a8, a11, a12);
      v21 = v20;
      if (a12 <= v20 + 2)
      {
        v22 = v20 + 2;
      }

      else
      {
        v22 = a12;
      }

      if (v22 >= v15)
      {
        v23 = v15;
      }

      else
      {
        v23 = v22;
      }

      v24 = &(*a4)[v54];
      v25 = &(*a4)[-(v20 * a8)];
      v61[0] = v25;
      if (v20)
      {
        v26 = *a6;
        v58 = v24;
        v59 = v26;
        v57 = *a7;
        result = boost::movelib::detail_adaptive::op_partial_merge_and_swap<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(a5, &v59, a4, &v58, v61, &v57, a13, a15, &v60);
        i = v60;
        *a7 = v60;
        v28 = *a4;
        if (*a4 == i)
        {
          v39 = &v25[v54];
          v40 = v61[0];
          for (i = *a4; v40 != v39; *i = v41)
          {
            v42 = *--v40;
            v41 = v42;
            v43 = *--i;
            *v40 = v43;
          }
        }

        else if (v28 != v24)
        {
          v29 = v61[0] - 1;
          do
          {
            v31 = *--i;
            v30 = v31;
            *i = *v29;
            v32 = *--v28;
            *v29-- = v32;
            *v28 = v30;
          }

          while (v28 != v24);
        }
      }

      else
      {
        v33 = *a6;
        v58 = v24;
        v59 = v33;
        v57 = *a7;
        result = boost::movelib::detail_adaptive::op_partial_merge<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(a5, &v59, a4, &v58, &v57, a15, &v60);
        v34 = v60;
        *a7 = v60;
        v35 = *a4;
        i = v24;
        if (*a4 != v34)
        {
          i = v34;
          while (v35 != v24)
          {
            v37 = *--v35;
            v36 = v37;
            v38 = *--i;
            *v35 = v38;
            *i = v36;
          }
        }
      }

      *a7 = i;
      if (v24 != v61[0])
      {
        v44 = *v55;
        v45 = &(*v55)[-v21];
        v46 = *(v45 - 4);
        *(v45 - 4) = *(*v55 - 1);
        *(v44 - 4) = v46;
        if (v45 == *a2 || (v47 = *a2 == v44, v44 = v45, v47))
        {
          *a2 = v44;
        }
      }

      *a4 = v24;
      v19 = *v55 - 1;
      *v55 = v19;
      a11 -= a11 != 0;
      a12 = v23 - (v22 != 0);
      --v15;
    }

    while (v15);
  }

  *a9 = *a7;
  return result;
}

char *boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op,unsigned int *,unsigned int *>(char *result, char *a2, char *a3, char *a4, char *a5)
{
  if (a3 - a2 != a5 - a4)
  {
    boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>();
  }

  while (a5 != a4)
  {
    if (a2 == result)
    {
      do
      {
        v12 = *(a5 - 1);
        a5 -= 4;
        v11 = v12;
        v13 = *(a3 - 1);
        a3 -= 4;
        *a5 = v13;
        *a3 = v11;
      }

      while (a5 != a4);
      if (a3 != result)
      {
        boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>();
      }

      return result;
    }

    v5 = *(a5 - 1);
    v6 = *(a2 - 1);
    v8 = *(a3 - 1);
    a3 -= 4;
    v7 = v8;
    v9 = v5 >= v6;
    if (v5 <= v6)
    {
      v5 = *(a2 - 1);
    }

    if (v9)
    {
      v10 = a5;
    }

    else
    {
      v10 = a2;
    }

    if (v9)
    {
      a5 -= 4;
    }

    if (!v9)
    {
      a2 -= 4;
    }

    *a3 = v5;
    *(v10 - 1) = v7;
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int *a5, int **a6, int **a7)
{
  v28 = a5;
  v13 = *a6;
  v14 = *a7;
  v15 = *a3;
  v26 = *a3;
  if (v13 == v14)
  {
    v16 = a1;
    if (a1 != a2)
    {
      v16 = a1;
      do
      {
        if (*a5 < *v16)
        {
          break;
        }

        ++v16;
      }

      while (v16 != a2);
    }

    v27 = (v13 + v16 - a1);
    if (v15 == a5)
    {
      v14 = boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(v16, a2, &v26, a4, &v27);
      v15 = v26;
      v13 = v27;
      a1 = a2;
      goto LABEL_23;
    }

    v14 = boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(v16, a2, &v26, a4, &v28, &v27);
    v15 = v26;
    v13 = v27;
    a1 = a2;
  }

  else
  {
    if (a2 - a1 != v14 - v13)
    {
      boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>();
    }

    if (v15 == a5)
    {
LABEL_23:
      if (v15 != a4 && v13 != v14)
      {
        do
        {
          v24 = a1 + 1;
          while (1)
          {
            a1 = v24;
            v25 = *(v24 - 1);
            if (*v15 >= *v13)
            {
              break;
            }

            *(a1 - 1) = *v15;
            *v15++ = v25;
            v24 = a1 + 1;
            if (v15 == a4)
            {
              goto LABEL_28;
            }
          }

          *(a1 - 1) = *v13;
          *v13++ = v25;
        }

        while (v13 != v14);
      }

      goto LABEL_28;
    }
  }

  if (v15 != a4 && v13 != v14)
  {
    v18 = v28;
    do
    {
      v19 = a1;
      while (*v18 < *v13)
      {
        v20 = *v19;
        *v19++ = *v18;
        *v18++ = *v15;
        *v15++ = v20;
        if (v15 == a4)
        {
          a1 = v19;
          goto LABEL_28;
        }
      }

      v21 = *v19;
      *v19 = *v13;
      a1 = v19 + 1;
      *v13++ = v21;
    }

    while (v13 != v14);
    a1 = v19 + 1;
  }

LABEL_28:
  *a6 = v13;
  *a7 = v14;
  *a3 = v15;
  return a1;
}

int *boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int *a5, int **a6, int **a7, uint64_t *a8)
{
  v31 = a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a3;
  v29 = *a3;
  if (v14 == v15)
  {
    v17 = a1;
    if (a1 != a2)
    {
      v17 = a1;
      do
      {
        if (*v17 >= *a5)
        {
          break;
        }

        ++v17;
      }

      while (v17 != a2);
    }

    v30 = (v14 + v17 - a1);
    if (v16 == a5)
    {
      v28 = *a8;
      v15 = boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(v17, a2, &v29, a4, &v30);
      v16 = v29;
      v14 = v30;
      a1 = a2;
      goto LABEL_23;
    }

    v27 = *a8;
    v15 = boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(v17, a2, &v29, a4, &v31, &v30);
    v16 = v29;
    v14 = v30;
    a1 = a2;
  }

  else
  {
    if (a2 - a1 != v15 - v14)
    {
      boost::movelib::detail_adaptive::op_partial_merge_and_save_impl<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op>();
    }

    if (v16 == a5)
    {
LABEL_23:
      if (v16 != a4 && v14 != v15)
      {
        do
        {
          v25 = a1 + 1;
          while (1)
          {
            a1 = v25;
            v26 = *(v25 - 1);
            if (*v14 < *v16)
            {
              break;
            }

            *(a1 - 1) = *v16;
            *v16++ = v26;
            v25 = a1 + 1;
            if (v16 == a4)
            {
              goto LABEL_28;
            }
          }

          *(a1 - 1) = *v14;
          *v14++ = v26;
        }

        while (v14 != v15);
      }

      goto LABEL_28;
    }
  }

  if (v16 != a4 && v14 != v15)
  {
    v19 = v31;
    do
    {
      v20 = a1;
      while (*v14 >= *v19)
      {
        v21 = *v20;
        *v20++ = *v19;
        *v19++ = *v16;
        *v16++ = v21;
        if (v16 == a4)
        {
          a1 = v20;
          goto LABEL_28;
        }
      }

      v22 = *v20;
      *v20 = *v14;
      a1 = v20 + 1;
      *v14++ = v22;
    }

    while (v14 != v15);
    a1 = v20 + 1;
  }

LABEL_28:
  *a6 = v14;
  *a7 = v15;
  *a3 = v16;
  return a1;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int **a5, int **a6)
{
  result = *a6;
  if (a1 != a2)
  {
    v8 = *a3;
    if (*a3 != a4)
    {
      v9 = *a5;
      v10 = *result;
      *result = *a1;
      v11 = result + 1;
      *a1 = *v9;
      v12 = a1 + 1;
      *v9 = *v8;
      v13 = v9 + 1;
      *v8 = v10;
      v14 = v8 + 1;
      while (v12 != a2)
      {
        if (v14 == a4)
        {
          v16 = 0;
          do
          {
            v17 = v12[v16];
            v12[v16] = result[v16];
            v18 = &v12[v16 + 1];
            result[v16++] = v17;
          }

          while (v18 != a2);
          v11 = &result[v16];
          break;
        }

        v15 = *v11;
        if (*v13 >= *result)
        {
          *v11 = *v12;
          *v12 = *result;
          *result++ = v15;
        }

        else
        {
          *v11 = *v12;
          *v12 = *v13;
          *v13++ = *v14;
          *v14++ = v15;
        }

        ++v12;
        ++v11;
      }

      *a3 = v14;
      *a6 = result;
      result = v11;
      *a5 = v13;
    }
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int **a5)
{
  result = *a5;
  if (a1 != a2)
  {
    v7 = *a3;
    if (*a3 != a4)
    {
      v8 = *result;
      *result = *a1;
      v9 = result + 1;
      *a1 = *v7;
      v10 = a1 + 1;
      *v7 = v8;
      v11 = v7 + 1;
      while (v10 != a2)
      {
        if (v11 == a4)
        {
          v16 = 0;
          do
          {
            v17 = v10[v16];
            v10[v16] = result[v16];
            v18 = &v10[v16 + 1];
            result[v16++] = v17;
          }

          while (v18 != a2);
          v9 = &result[v16];
          break;
        }

        v12 = *v11 >= *result;
        v13 = *v11 < *result;
        v14 = *v9;
        *v9++ = *v10;
        if (v12)
        {
          v15 = result;
        }

        else
        {
          v15 = v11;
        }

        v11 += v13;
        result += v12;
        *v10++ = *v15;
        *v15 = v14;
      }

      *a3 = v11;
      *a5 = result;
      return v9;
    }
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_and_swap_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int **a5, int **a6)
{
  result = *a6;
  if (a1 != a2)
  {
    v8 = *a3;
    if (*a3 != a4)
    {
      v9 = *a5;
      v10 = *result;
      *result = *a1;
      v11 = result + 1;
      *a1 = *v9;
      v12 = a1 + 1;
      *v9 = *v8;
      v13 = v9 + 1;
      *v8 = v10;
      v14 = v8 + 1;
      while (v12 != a2)
      {
        if (v14 == a4)
        {
          v16 = 0;
          do
          {
            v17 = v12[v16];
            v12[v16] = result[v16];
            v18 = &v12[v16 + 1];
            result[v16++] = v17;
          }

          while (v18 != a2);
          v11 = &result[v16];
          break;
        }

        v15 = *v11;
        if (*result >= *v13)
        {
          *v11 = *v12;
          *v12 = *v13;
          *v13++ = *v14;
          *v14++ = v15;
        }

        else
        {
          *v11 = *v12;
          *v12 = *result;
          *result++ = v15;
        }

        ++v12;
        ++v11;
      }

      *a3 = v14;
      *a6 = result;
      result = v11;
      *a5 = v13;
    }
  }

  return result;
}

int *boost::movelib::detail_adaptive::op_buffered_partial_merge_to_range1_and_buffer<unsigned int *,unsigned int *,unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(int *a1, int *a2, int **a3, int *a4, int **a5)
{
  result = *a5;
  if (a1 != a2)
  {
    v7 = *a3;
    if (*a3 != a4)
    {
      v8 = *result;
      *result = *a1;
      v9 = result + 1;
      *a1 = *v7;
      v10 = a1 + 1;
      *v7 = v8;
      v11 = v7 + 1;
      while (v10 != a2)
      {
        if (v11 == a4)
        {
          v16 = 0;
          do
          {
            v17 = v10[v16];
            v10[v16] = result[v16];
            v18 = &v10[v16 + 1];
            result[v16++] = v17;
          }

          while (v18 != a2);
          v9 = &result[v16];
          break;
        }

        v12 = *result >= *v11;
        v13 = *result < *v11;
        v14 = *v9;
        *v9++ = *v10;
        if (v12)
        {
          v15 = v11;
        }

        else
        {
          v15 = result;
        }

        v11 += v12;
        result += v13;
        *v10++ = *v15;
        *v15 = v14;
      }

      *a3 = v11;
      *a5 = result;
      return v9;
    }
  }

  return result;
}

void *boost::movelib::detail_adaptive::op_partial_merge_and_swap<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _DWORD **a3@<X2>, uint64_t *a4@<X3>, unsigned int **a5@<X4>, int **a6@<X5>, char a7@<W6>, int a8@<W7>, int **a9@<X8>)
{
  v14 = a7;
  v13 = *a2;
  v9 = *a4;
  v11 = *a6;
  v12 = v9;
  if (a8)
  {
    return boost::movelib::detail_adaptive::op_partial_merge_and_swap_impl<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>(a1, &v13, a3, &v12, a5, &v11, a9);
  }

  else
  {
    return boost::movelib::detail_adaptive::op_partial_merge_and_swap_impl<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::antistable<boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>,boost::movelib::swap_op>(a1, &v13, a3, &v12, a5, &v11, a9);
  }
}

unsigned int **boost::movelib::detail_adaptive::op_partial_merge<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unsigned int **a5@<X4>, int a6@<W6>, unsigned int **a7@<X8>)
{
  v7 = *a2;
  v8 = *a4;
  v9 = *a5;
  v10 = *result;
  v11 = *a3;
  v13 = *a3 == *a4 || v7 == v10;
  if (a6)
  {
    if (!v13)
    {
      do
      {
        v14 = v9 - 1;
        v15 = v10;
        while (1)
        {
          v9 = v14;
          v17 = *--v15;
          v16 = v17;
          v18 = *(v11 - 4);
          v19 = *v9;
          if (v17 < v18)
          {
            break;
          }

          *v9 = v16;
          v14 = v9 - 1;
          *v15 = v19;
          v10 = v15;
          if (v15 == v7)
          {
            goto LABEL_22;
          }
        }

        *v9 = v18;
        *(v11 - 4) = v19;
        v11 -= 4;
      }

      while (v11 != v8);
    }
  }

  else if (!v13)
  {
    while (2)
    {
      v20 = v9 - 1;
      v15 = v10;
      while (1)
      {
        v9 = v20;
        v22 = *--v15;
        v21 = v22;
        v23 = *(v11 - 4);
        v24 = *v9;
        if (v23 >= v22)
        {
          break;
        }

        *v9 = v21;
        v20 = v9 - 1;
        *v15 = v24;
        v10 = v15;
        if (v15 == v7)
        {
LABEL_22:
          v10 = v15;
          goto LABEL_23;
        }
      }

      *v9 = v23;
      *(v11 - 4) = v24;
      v11 -= 4;
      if (v11 != v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
  *result = v10;
  *a3 = v11;
  *a7 = v9;
  return result;
}

void *boost::movelib::detail_adaptive::op_partial_merge_and_swap_impl<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::swap_op>@<X0>(void *result@<X0>, void *a2@<X1>, _DWORD **a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, int **a6@<X5>, int **a7@<X8>)
{
  v7 = *a3;
  if (*a3 != *a4)
  {
    v8 = *result;
    if (*a2 != *result)
    {
      v9 = *a5;
      do
      {
        v10 = v9 - 1;
        v11 = v8;
        while (1)
        {
          v13 = *--v11;
          v12 = v13;
          if (v13 < *v10)
          {
            break;
          }

          v14 = *a6 - 1;
          v15 = *v14;
          *a6 = v14;
          *v14 = v12;
          *v11 = v15;
          v8 = v11;
          if (v11 == *a2)
          {
            v8 = v11;
            v10 = v9;
            goto LABEL_9;
          }
        }

        v16 = *a6 - 1;
        v17 = *v16;
        *v16 = *v10;
        v18 = *--v7;
        *a6 = v16;
        *v10 = v18;
        *v7 = v17;
        v9 = v10;
      }

      while (v7 != *a4);
LABEL_9:
      *a5 = v10;
      *result = v8;
      *a3 = v7;
    }
  }

  *a7 = *a6;
  return result;
}

void *boost::movelib::detail_adaptive::op_partial_merge_and_swap_impl<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::antistable<boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>,boost::movelib::swap_op>@<X0>(void *result@<X0>, void *a2@<X1>, _DWORD **a3@<X2>, void *a4@<X3>, unsigned int **a5@<X4>, int **a6@<X5>, int **a7@<X8>)
{
  v7 = *a3;
  if (*a3 != *a4)
  {
    v8 = *result;
    if (*a2 != *result)
    {
      v9 = *a5;
      do
      {
        v10 = v9 - 1;
        v11 = v8;
        while (1)
        {
          v13 = *--v11;
          v12 = v13;
          if (*v10 >= v13)
          {
            break;
          }

          v14 = *a6 - 1;
          v15 = *v14;
          *a6 = v14;
          *v14 = v12;
          *v11 = v15;
          v8 = v11;
          if (v11 == *a2)
          {
            v8 = v11;
            v10 = v9;
            goto LABEL_9;
          }
        }

        v16 = *a6 - 1;
        v17 = *v16;
        *v16 = *v10;
        v18 = *--v7;
        *a6 = v16;
        *v10 = v18;
        *v7 = v17;
        v9 = v10;
      }

      while (v7 != *a4);
LABEL_9:
      *a5 = v10;
      *result = v8;
      *a3 = v7;
    }
  }

  *a7 = *a6;
  return result;
}

char *boost::movelib::detail_adaptive::partial_merge_bufferless<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(char *a1, char *a2, char *a3, char *a4)
{
  if (*a4 != 1)
  {
    return boost::movelib::detail_adaptive::partial_merge_bufferless_impl<unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(a1, a2, a3, a4);
  }

  return boost::movelib::detail_adaptive::partial_merge_bufferless_impl<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(a1, a2, a3, a4);
}

char *boost::movelib::detail_adaptive::partial_merge_bufferless_impl<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(char *result, char *a2, char *a3, char *a4)
{
  if (a2 != a3)
  {
    v5 = *a4;
    if (result == a2 || *a2 >= *(a2 - 1))
    {
LABEL_17:
      *a4 = v5 ^ 1;
      return a2;
    }

    v7 = a2;
LABEL_5:
    if (a2 != a3)
    {
      v8 = (a3 - a2) >> 2;
      v7 = a2;
      do
      {
        v9 = v8 >> 1;
        v10 = &v7[4 * (v8 >> 1)];
        v12 = *v10;
        v11 = v10 + 4;
        v8 += ~(v8 >> 1);
        if (v12 < *result)
        {
          v7 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    result = boost::movelib::rotate_gcd<unsigned int *>(result, a2, v7);
    if (v7 != a3)
    {
      v13 = result + 4;
      while (v13 != v7)
      {
        v14 = *v13;
        v13 += 4;
        if (*v7 < v14)
        {
          result = v13 - 4;
          a2 = v7;
          goto LABEL_5;
        }
      }

      a2 = v7;
      goto LABEL_17;
    }
  }

  return result;
}

char *boost::movelib::detail_adaptive::partial_merge_bufferless_impl<unsigned int *,boost::movelib::antistable<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(char *result, char *a2, char *a3, char *a4)
{
  if (a2 != a3)
  {
    v5 = *a4;
    if (result == a2 || *(a2 - 1) < *a2)
    {
LABEL_17:
      *a4 = v5 ^ 1;
      return a2;
    }

    v7 = a2;
LABEL_5:
    if (a2 != a3)
    {
      v8 = (a3 - a2) >> 2;
      v7 = a2;
      do
      {
        v9 = v8 >> 1;
        v10 = &v7[4 * (v8 >> 1)];
        v12 = *v10;
        v11 = v10 + 4;
        v8 += ~(v8 >> 1);
        if (*result >= v12)
        {
          v7 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    result = boost::movelib::rotate_gcd<unsigned int *>(result, a2, v7);
    if (v7 != a3)
    {
      v13 = result + 4;
      while (v13 != v7)
      {
        v14 = *v13;
        v13 += 4;
        if (v14 >= *v7)
        {
          result = v13 - 4;
          a2 = v7;
          goto LABEL_5;
        }
      }

      a2 = v7;
      goto LABEL_17;
    }
  }

  return result;
}

unint64_t boost::movelib::detail_adaptive::find_next_block<unsigned long *,boost::movelib::detail_adaptive::less,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a4 > a5)
  {
    boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>();
  }

  v5 = 0;
  if (a4 < a5)
  {
    v6 = (a2 + 4 * a4 * a3);
    do
    {
      v7 = *(a2 + 4 * v5 * a3);
      if (*v6 < v7 || v7 >= *v6 && *(a1 + 8 * a4) < *(a1 + 8 * v5))
      {
        v5 = a4;
      }

      v6 += a3;
      ++a4;
    }

    while (a5 != a4);
  }

  return v5;
}

unsigned int **boost::movelib::detail_adaptive::op_merge_blocks_with_irreg<boost::movelib::reverse_iterator<unsigned long *>,boost::movelib::inverse<boost::movelib::detail_adaptive::less>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unsigned int **a7@<X6>, uint64_t a8@<X7>, unsigned int **a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v14 = a10;
  if (a10)
  {
    v18 = -a8;
    v19 = *result;
    v20 = *a4;
    v44 = result;
    while (1)
    {
      v55 = v20;
      v56[0] = v19;
      v21 = boost::movelib::detail_adaptive::find_next_block<boost::movelib::reverse_iterator<unsigned long *>,boost::movelib::inverse<boost::movelib::detail_adaptive::less>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(v56, a3, &v55, a8, a11, a12);
      v22 = v21;
      v23 = v21 + 2;
      if (a12 > v21 + 2)
      {
        v23 = a12;
      }

      v50 = v23;
      if (v23 >= v14)
      {
        v24 = v14;
      }

      else
      {
        v24 = v23;
      }

      v20 = (*a4 + 4 * v18);
      v25 = (*a4 - 4 * v21 * a8);
      v56[0] = v25;
      if (v21)
      {
        v26 = *a6;
        v53 = v20;
        v54 = v26;
        v52 = *a7;
        boost::movelib::detail_adaptive::op_partial_merge_and_swap<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(a5, &v54, a4, &v53, v56, &v52, a14, &v55);
        i = v55;
        *a7 = v55;
        v28 = *a4;
        if (*a4 == i)
        {
          v35 = &v25[v18];
          v36 = v56[0];
          result = v44;
          for (i = *a4; v36 != v35; *i = v37)
          {
            v38 = *--v36;
            v37 = v38;
            v39 = *--i;
            *v36 = v39;
          }
        }

        else
        {
          result = v44;
          if (v28 != v20)
          {
            v29 = v56[0] - 1;
            do
            {
              *--i = *v29;
              v30 = *(v28 - 4);
              v28 -= 4;
              *v29-- = v30;
            }

            while (v28 != v20);
          }
        }
      }

      else
      {
        v31 = *a6;
        v53 = v20;
        v54 = v31;
        v52 = *a7;
        boost::movelib::detail_adaptive::op_partial_merge<boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>,boost::movelib::move_op>(a5, &v54, a4, &v53, &v52, a14, &v55);
        v32 = v55;
        *a7 = v55;
        v33 = *a4;
        i = v20;
        result = v44;
        if (*a4 != v32)
        {
          i = v32;
          while (v33 != v20)
          {
            v34 = *(v33 - 4);
            v33 -= 4;
            *--i = v34;
          }
        }
      }

      *a7 = i;
      v40 = *result;
      if (v20 == v56[0])
      {
        goto LABEL_26;
      }

      v41 = &v40[-2 * v22];
      v42 = *(v41 - 1);
      *(v41 - 1) = *(v40 - 1);
      *(v40 - 1) = v42;
      if (v41 == *a2)
      {
        break;
      }

      if (*a2 == v40)
      {
        goto LABEL_25;
      }

LABEL_26:
      *a4 = v20;
      v19 = v40 - 2;
      *result = v19;
      a11 -= a11 != 0;
      a12 = v24 - (v50 != 0);
      if (!--v14)
      {
        goto LABEL_27;
      }
    }

    v41 = v40;
LABEL_25:
    *a2 = v41;
    v40 = *result;
    goto LABEL_26;
  }

LABEL_27:
  *a9 = *a7;
  return result;
}

unint64_t boost::movelib::detail_adaptive::find_next_block<boost::movelib::reverse_iterator<unsigned long *>,boost::movelib::inverse<boost::movelib::detail_adaptive::less>,boost::movelib::reverse_iterator<unsigned int *>,boost::movelib::inverse<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a5 > a6)
  {
    boost::movelib::detail_adaptive::find_next_block<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>();
  }

  if (a5 >= a6)
  {
    return 0;
  }

  result = 0;
  v8 = *a1;
  v9 = (*a3 - 4 * a5 * a4 - 4);
  v10 = (v8 - 8 * a5 - 8);
  do
  {
    v11 = *(*a3 + 4 * ~(result * a4));
    if (v11 < *v9 || *v9 >= v11 && *(v8 + 8 * ~result) < *v10)
    {
      result = a5;
    }

    v9 -= a4;
    ++a5;
    --v10;
  }

  while (a6 != a5);
  return result;
}

char *boost::movelib::detail_adaptive::stable_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (*(a4 + 8))
  {
    boost::movelib::detail_adaptive::stable_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>();
  }

  v5 = (a2 - a1) >> 2;
  if (v5 >= (a3 - a2) >> 2)
  {
    v5 = (a3 - a2) >> 2;
  }

  v6 = *(a4 + 16);
  if (v6 >= v5)
  {
    result = boost::movelib::op_buffered_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>(a1, a2, a3, a4);
    if (*(a4 + 8))
    {
      *(a4 + 8) = 0;
    }
  }

  else
  {
    v7 = *a4;

    return boost::movelib::merge_adaptive_ONlogN<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *>(a1, a2, a3, v7, v6);
  }

  return result;
}

char *boost::movelib::merge_adaptive_ONlogN<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *>(char *result, char *a2, char *a3, char *a4, char *a5)
{
  if (result != a2 && a2 != a3)
  {
    v8 = result;
    if (a5)
    {
      v9[0] = a4;
      v9[1] = 0;
      v9[2] = a5;
      boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>::initialize_until(v9, a5, result);
      return boost::movelib::merge_adaptive_ONlogN_recursive<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v8, a2, a3, (a2 - v8) >> 2, (a3 - a2) >> 2, v9[0], a5);
    }

    else
    {

      return boost::movelib::merge_bufferless_ONlogN_recursive<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(result, a2, a3, (a2 - result) >> 2, (a3 - a2) >> 2);
    }
  }

  return result;
}

char *boost::movelib::merge_adaptive_ONlogN_recursive<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(char *result, char *a2, char *a3, unint64_t a4, unint64_t a5, char *a6, unint64_t a7)
{
  if (a4)
  {
    v7 = a5;
    if (a5)
    {
      v9 = a4;
      v10 = result;
      while (1)
      {
        if (v9 <= a7 || v7 <= a7)
        {
          v30[0] = a6;
          v30[1] = a6;
          v30[2] = &a6[4 * a7];
          return boost::movelib::op_buffered_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,boost::movelib::range_xbuf<unsigned int *,unsigned long,boost::movelib::move_op>>(v10, a2, a3, v30);
        }

        if (v7 + v9 == 2)
        {
          break;
        }

        if (v7 + v9 <= 0xF)
        {

          return boost::movelib::merge_bufferless_ON2<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v10, a2, a3);
        }

        v29 = v10;
        if (v9 <= v7)
        {
          v19 = v7 >> 1;
          v14 = &a2[4 * (v7 >> 1)];
          if (a2 == v10)
          {
            v12 = v10;
          }

          else
          {
            v20 = (a2 - v10) >> 2;
            v12 = v10;
            do
            {
              v21 = v20 >> 1;
              v22 = &v12[4 * (v20 >> 1)];
              v24 = *v22;
              v23 = v22 + 4;
              v20 += ~(v20 >> 1);
              if (*v14 >= v24)
              {
                v12 = v23;
              }

              else
              {
                v20 = v21;
              }
            }

            while (v20);
          }

          v11 = (v12 - v10) >> 2;
        }

        else
        {
          v11 = v9 >> 1;
          v12 = &v10[4 * (v9 >> 1)];
          if (a2 == a3)
          {
            v14 = a2;
          }

          else
          {
            v13 = (a3 - a2) >> 2;
            v14 = a2;
            do
            {
              v15 = v13 >> 1;
              v16 = &v14[4 * (v13 >> 1)];
              v18 = *v16;
              v17 = v16 + 4;
              v13 += ~(v13 >> 1);
              if (v18 < *v12)
              {
                v14 = v17;
              }

              else
              {
                v13 = v15;
              }
            }

            while (v13);
          }

          v19 = (v14 - a2) >> 2;
        }

        v9 -= v11;
        v10 = boost::movelib::rotate_adaptive<unsigned int *,unsigned int *>(v12, a2, v14, v9, v19, a6, a7);
        result = boost::movelib::merge_adaptive_ONlogN_recursive<unsigned int *,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v29, v12, v10, v11, v19, a6, a7);
        v7 -= v19;
        if (v9)
        {
          v25 = v7 == 0;
        }

        else
        {
          v25 = 1;
        }

        a2 = v14;
        if (v25)
        {
          return result;
        }
      }

      v26 = *v10;
      if (*a2 < *v10)
      {
        *v10 = *a2;
        *a2 = v26;
      }
    }
  }

  return result;
}

char *boost::movelib::rotate_adaptive<unsigned int *,unsigned int *>(char *result, char *a2, char *a3, unint64_t a4, unint64_t a5, int *a6, unint64_t a7)
{
  if (a4 <= a5 || a5 > a7)
  {
    if (a4 <= a7)
    {
      if (a4)
      {
        v13 = a6;
        if (result != a2)
        {
          v13 = a6;
          v14 = result;
          do
          {
            v15 = *v14;
            v14 += 4;
            *v13++ = v15;
          }

          while (v14 != a2);
        }

        while (a2 != a3)
        {
          v16 = *a2;
          a2 += 4;
          *result = v16;
          result += 4;
        }

        if (v13 != a6)
        {
          v17 = result;
          do
          {
            v18 = *a6++;
            *v17 = v18;
            v17 += 4;
          }

          while (a6 != v13);
        }
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return boost::movelib::rotate_gcd<unsigned int *>(result, a2, a3);
    }
  }

  else if (a5)
  {
    v7 = a6;
    if (a2 != a3)
    {
      v7 = a6;
      v8 = a2;
      do
      {
        v9 = *v8;
        v8 += 4;
        *v7++ = v9;
      }

      while (v8 != a3);
    }

    if (a2 != result)
    {
      v10 = a3 - 4;
      do
      {
        v11 = *(a2 - 1);
        a2 -= 4;
        *v10 = v11;
        v10 -= 4;
      }

      while (a2 != result);
    }

    for (; a6 != v7; result += 4)
    {
      v12 = *a6++;
      *result = v12;
    }
  }

  return result;
}

char *boost::movelib::op_buffered_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,boost::movelib::range_xbuf<unsigned int *,unsigned long,boost::movelib::move_op>>(char *result, char *a2, char *a3, char **a4)
{
  if (result != a2 && a2 != a3)
  {
    v6 = *(a2 - 1);
    if (*a2 < v6)
    {
      v8 = result;
      if (a2 - result <= (a3 - a2))
      {
        v17 = (a2 - result) >> 2;
        do
        {
          v18 = v17 >> 1;
          v19 = &v8[v17 >> 1];
          v21 = *v19;
          v20 = v19 + 1;
          v17 += ~(v17 >> 1);
          if (*a2 >= v21)
          {
            v8 = v20;
          }

          else
          {
            v17 = v18;
          }
        }

        while (v17);
        boost::movelib::range_xbuf<unsigned int *,unsigned long,boost::movelib::move_op>::move_assign<unsigned int *>(a4, v8, (a2 - v8) >> 2);
        v22 = *a4;
        v23 = a4[1];

        return boost::movelib::op_merge_with_right_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,unsigned int *,boost::movelib::move_op>(v22, v23, v8, a2, a3);
      }

      else
      {
        v9 = (a3 - a2) >> 2;
        v10 = a2;
        do
        {
          v11 = v9 >> 1;
          v12 = (v10 + 4 * (v9 >> 1));
          v14 = *v12;
          v13 = v12 + 1;
          v9 += ~(v9 >> 1);
          if (v14 < v6)
          {
            v10 = v13;
          }

          else
          {
            v9 = v11;
          }
        }

        while (v9);
        boost::movelib::range_xbuf<unsigned int *,unsigned long,boost::movelib::move_op>::move_assign<unsigned int *>(a4, a2, (v10 - a2) >> 2);
        v15 = *a4;
        v16 = a4[1];

        return boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>(v8, a2, v10, v15, v16);
      }
    }
  }

  return result;
}

uint64_t boost::movelib::range_xbuf<unsigned int *,unsigned long,boost::movelib::move_op>::move_assign<unsigned int *>(uint64_t result, int *a2, unint64_t a3)
{
  v3 = *result;
  if (a3 > (*(result + 16) - *result) >> 2)
  {
    boost::movelib::range_xbuf<unsigned int *,unsigned long,boost::movelib::move_op>::move_assign<unsigned int *>();
  }

  if (a3)
  {
    v4 = 4 * a3;
    do
    {
      v5 = *a2++;
      *v3++ = v5;
      v4 -= 4;
    }

    while (v4);
  }

  *(result + 8) = v3;
  return result;
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int const&>>(uint64_t *a1@<X0>, char *a2@<X1>, const char *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::new_allocator<unsigned int>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 61)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(4 * v11);
  boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int const&>>(a1, v14, v13, a2, a3, a4);
  *a5 = &a2[*a1 - v10];
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int const&>>(uint64_t a1, char *__dst, uint64_t a3, char *__src, uint64_t a5, _DWORD *a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int *,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int const&>>(a1, *a1, __src, (*a1 + 4 * *(a1 + 8)), __dst, a5, a6);
  if (v10)
  {
    operator delete(*a1);
  }

  v11 = *(a1 + 8) + a5;
  *a1 = __dst;
  *(a1 + 8) = v11;
  *(a1 + 16) = a3;
}

void sub_241758E88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

id avas::server::AudioApplicationInfo::GetAudioAppCallbackQueue(avas::server::AudioApplicationInfo *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio.AudioAppCallbackQueue");
    avas::CreateFixedPriorityDispatchQueue(__p, QOS_CLASS_USER_INTERACTIVE, &avas::server::AudioApplicationInfo::GetAudioAppCallbackQueue(void)::callbackQueue);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v1 = applesauce::dispatch::v1::queue::operator*(&avas::server::AudioApplicationInfo::GetAudioAppCallbackQueue(void)::callbackQueue);

  return v1;
}

void sub_241758F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void avas::server::AudioApplicationInfo::GetProperty(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a3 == 1634744890)
  {
    if (![(NSString *)v7 isEqualToString:@"InputMute"])
    {
      os_unfair_lock_lock((a1 + 16));
      avas::server::AudioAppInfoImpl::GetPropertyAudioApp((a1 + 24), v8, a4);
      goto LABEL_10;
    }

    v9 = avas::server::AudioApplicationInfo::PrivateInputMuted(a1);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v9) & 1];
    *a4 = v9;
    *(a4 + 8) = v10;
  }

  else
  {
    if (a3 == 1836595770)
    {
      os_unfair_lock_lock((a1 + 16));
      avas::server::AudioAppInfoImpl::GetPropertyMX((a1 + 24), v8, a4);
LABEL_10:
      os_unfair_lock_unlock((a1 + 16));
      goto LABEL_11;
    }

    v11 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "AudioApplicationInfo.mm";
      v15 = 1024;
      v16 = 93;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d error property domain not recognized: %d", &v13, 0x18u);
    }

    *a4 = -50;
    *(a4 + 8) = 0;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

unint64_t avas::server::AudioApplicationInfo::PrivateInputMuted(avas::server::AudioApplicationInfo *this)
{
  v1 = this;
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0;
  {
    if (this)
    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
  {
    os_unfair_lock_lock(v1 + 4);
    avas::server::AudioAppInfoImpl::GetPropertyAudioApp(v1 + 3, &cfstr_Inputmute.isa, buf);
    os_unfair_lock_unlock(v1 + 4);
    v2 = [*&buf[8] BOOLValue];
    v3 = *buf;
  }

  else
  {
    v4 = *avas::server::forbid_acq::SystemController::Instance(this);
    if (v4)
    {
      os_unfair_lock_lock(v1 + 4);
      v5 = *(v1 + 56);
      v11 = *(v1 + 40);
      v12 = v5;
      v6 = *(v1 + 72);
      os_unfair_lock_unlock(v1 + 4);
      if ((v6 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      *buf = v11;
      *&buf[16] = v12;
      v3 = [v4 getInputMute:buf outMuteValue:&v10];

      v2 = v10;
    }

    else
    {
      v7 = *avas::server::gSessionServerLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AudioApplicationInfo.mm";
        *&buf[12] = 1024;
        *&buf[14] = 270;
        _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error - invalid MXSystemController", buf, 0x12u);
      }

      v2 = 0;
      v3 = -50;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3 | (v2 << 32);
}

uint64_t avas::server::AudioApplicationInfo::SetProperty(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 isEqualToString:@"InputMute"])
  {
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      v12 = avas::server::AudioApplicationInfo::SetInputMuted(a1, [v10 BOOLValue], v9);
    }

    else
    {
      v12 = 4294967246;
    }
  }

  else
  {
    os_unfair_lock_lock(a1 + 4);
    v12 = avas::server::AudioAppInfoImpl::SetProperty(&a1[6], v7, v8);
    os_unfair_lock_unlock(a1 + 4);
  }

  return v12;
}

void sub_241759444(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v4 + 4);

  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioApplicationInfo::SetInputMuted(avas::server::AudioApplicationInfo *this, uint64_t a2, NSDictionary *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *avas::server::forbid_acq::SystemController::Instance(v5);
  v7 = v6;
  if (!v6)
  {
    v9 = 2003329396;
    v10 = *avas::server::gSessionServerLog(0);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AudioApplicationInfo.mm";
    *&buf[12] = 1024;
    *&buf[14] = 287;
    *&buf[18] = 2112;
    *&buf[20] = @"Failed to get the MXSystemController instance";
    v11 = "%25s:%-5d %@";
    v12 = v10;
    v13 = 28;
LABEL_11:
    _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_12;
  }

  {
    if (v6)
    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled)
  {
    v8 = avas::server::GetAudioControlQueue(v6);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN4avas6server20AudioApplicationInfo13SetInputMutedEbP12NSDictionary_block_invoke;
    v21[3] = &__block_descriptor_41_e5_v8__0l;
    v21[4] = this;
    v22 = a2;
    avas::server::DispatchBlock(v8, v21, 1, "SetInputMuted", "AudioApplicationInfo.mm", 348, 0, 0);

    v9 = 0;
    goto LABEL_12;
  }

  os_unfair_lock_lock(this + 4);
  v14 = *(this + 56);
  v23 = *(this + 40);
  v24 = v14;
  v15 = *(this + 72);
  v16 = *(this + 19);
  os_unfair_lock_unlock(this + 4);
  if ((v15 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *buf = v23;
  *&buf[16] = v24;
  v17 = [v7 setInputMute:buf muteValue:a2];
  v9 = v17;
  if (v17)
  {
    v18 = *avas::server::gSessionServerLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AudioApplicationInfo.mm";
      *&buf[12] = 1024;
      *&buf[14] = 298;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      *&buf[24] = 1024;
      *&buf[26] = v9;
      v11 = "%25s:%-5d Error - failed to set inputMuted, pid: %d, err: %d";
      v12 = v18;
      v13 = 30;
      goto LABEL_11;
    }
  }

LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_241759734(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioApplicationInfo::UpdateProperty(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a3;
  v10 = a2;
  os_unfair_lock_lock((a1 + 16));
  updated = avas::server::AudioAppInfoImpl::UpdateProperty((a1 + 24), v10, v9, a4, a5, 0);

  os_unfair_lock_unlock((a1 + 16));
  return updated;
}

uint64_t avas::server::AudioApplicationInfo::UpdateProperty(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6)
{
  v11 = a6;
  v12 = a3;
  v13 = a2;
  os_unfair_lock_lock((a1 + 16));
  updated = avas::server::AudioAppInfoImpl::UpdateProperty((a1 + 24), v13, v12, a4, a5, v11);

  os_unfair_lock_unlock((a1 + 16));
  return updated;
}

void avas::server::AudioApplicationInfo::HandleSessionInputMuteChange(avas::server::AudioApplicationInfo *this, uint64_t a2, int a3, int a4)
{
  os_unfair_lock_lock(this + 4);
  avas::server::AudioAppInfoImpl::HandleSessionInputMuteChange(this + 3, a2, a3, a4);

  os_unfair_lock_unlock(this + 4);
}

uint64_t avas::server::AudioApplicationInfo::UpdateSessionPlayStates(avas::server::AudioApplicationInfo *this, uint64_t a2, int a3)
{
  os_unfair_lock_lock(this + 4);
  updated = avas::server::AudioAppInfoImpl::UpdateSessionPlayStates(this + 3, a2, a3);
  os_unfair_lock_unlock(this + 4);
  return updated;
}

uint64_t avas::server::AudioApplicationInfo::RemoveSession(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 4);
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = avas::server::AudioAppInfoImpl::RemoveSession(&a1[6], &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  os_unfair_lock_unlock(a1 + 4);
  return v5;
}

void sub_241759A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_lock_unlock(v10 + 4);
  _Unwind_Resume(a1);
}

void avas::server::AudioApplicationInfo::FindAudioAppClient(os_unfair_lock_s *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 4);
  avas::server::AudioAppInfoImpl::FindAudioAppClient(&this[6], a2, a3);

  os_unfair_lock_unlock(this + 4);
}

void avas::server::AudioApplicationInfo::GetPrimaryClient(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 4);
  v4 = *&this[42]._os_unfair_lock_opaque;
  *a2 = *&this[40]._os_unfair_lock_opaque;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 4);
}

BOOL avas::server::AudioApplicationInfo::SetPrimaryClient(os_unfair_lock_s *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock(a1 + 4);
  v6 = avas::server::AudioAppInfoImpl::SetPrimaryClient(&a1[6], a2, v5);

  os_unfair_lock_unlock(a1 + 4);
  return v6;
}

void avas::server::AudioApplicationInfo::AddProxyAudioApp(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = a3;
  os_unfair_lock_lock(a1 + 4);
  avas::server::AudioAppInfoImpl::AddProxyAudioApp(&a1[6], a2, v7, a4);

  os_unfair_lock_unlock(a1 + 4);
}

void avas::server::AudioApplicationInfo::AddDelegateAudioApp(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = a3;
  os_unfair_lock_lock(a1 + 4);
  avas::server::AudioAppInfoImpl::AddDelegateAudioApp(&a1[6], a2, v7, a4);

  os_unfair_lock_unlock(a1 + 4);
}

void avas::server::AudioApplicationInfo::GetSessions(avas::server::AudioApplicationInfo *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 4);
  avas::server::AudioAppInfoImpl::GetSessions(this + 3, a2);

  os_unfair_lock_unlock(this + 4);
}

BOOL avas::server::AudioApplicationInfo::HandleXPCConnectionInvalidated(os_unfair_lock_s *this, NSXPCConnection *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 4);
  v4 = avas::server::AudioAppInfoImpl::HandleXPCConnectionInvalidated(&this[6], v3);

  os_unfair_lock_unlock(this + 4);
  return v4;
}

BOOL avas::server::AudioApplicationInfo::HasStrongClientOwner(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  HasStrongClientOwner = avas::server::AudioAppInfoImpl::HasStrongClientOwner(&this[6]);
  os_unfair_lock_unlock(this + 4);
  return HasStrongClientOwner;
}

void *avas::server::forbid_acq::SystemController::Instance(avas::server::forbid_acq::SystemController *this)
{
  {
    avas::server::forbid_acq::SystemController::SystemController(&avas::server::forbid_acq::SystemController::Instance(void)::sInstance);
  }

  return &avas::server::forbid_acq::SystemController::Instance(void)::sInstance;
}

void ___ZN4avas6server20AudioApplicationInfo13SetInputMutedEbP12NSDictionary_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = "MUTED";
  }

  else
  {
    v3 = "UNMUTED";
  }

  v4 = *avas::server::gSessionServerLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "AudioApplicationInfo.mm";
    *&buf[12] = 1024;
    *&buf[14] = 308;
    *&buf[18] = 2080;
    *&buf[20] = v3;
    v43 = 2080;
    v44 = v3;
    v45 = 2080;
    v46 = avas::server::AudioApplicationInfo::DebugString(v2);
    _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioApp input mute explicitly set %s, new sessions will be created %s (app: %s)", buf, 0x30u);
  }

  os_unfair_lock_lock((v2 + 16));
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  avas::server::AudioAppInfoImpl::SetProperty(v2 + 24, @"NewSessionsShouldBeInputMuted", v5);

  os_unfair_lock_unlock((v2 + 16));
  LOBYTE(v37.val[0]) = 0;
  v38 = 0;
  v35 = 0uLL;
  v36 = 0;
  os_unfair_lock_lock((v2 + 16));
  avas::server::AudioAppInfoImpl::GetSessions((v2 + 24), buf);
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__vdeallocate(&v35);
  v35 = *buf;
  v36 = *&buf[16];
  memset(buf, 0, 24);
  __p = buf;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v35 == *(&v35 + 1))
  {
    v19 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (v2 + 88);
      if (*(v2 + 111) < 0)
      {
        v20 = *v20;
      }

      *buf = 136315906;
      *&buf[4] = "AudioApplicationInfo.mm";
      *&buf[12] = 1024;
      *&buf[14] = 319;
      *&buf[18] = 2080;
      *&buf[20] = v3;
      v43 = 2080;
      v44 = v20;
      _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioApp has no sessions, updating cached input mute state to: %s (app: %s)", buf, 0x26u);
    }

    v21 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    avas::server::AudioAppInfoImpl::UpdateInputMuteState((v2 + 24), v21, 0);

    goto LABEL_36;
  }

  v38 = *(v2 + 72);
  v7 = *(v2 + 56);
  *v37.val = *(v2 + 40);
  *&v37.val[4] = v7;
  if ((v38 & 1) == 0)
  {
    v22 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioApplicationInfo.mm";
      *&buf[12] = 1024;
      *&buf[14] = 327;
      _os_log_impl(&dword_241701000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get audit token for source process identity", buf, 0x12u);
    }

LABEL_36:
    os_unfair_lock_unlock((v2 + 16));
    goto LABEL_43;
  }

  os_unfair_lock_unlock((v2 + 16));
  __p = 0;
  v33 = 0;
  v34 = 0;
  v10 = *(&v35 + 1);
  v9 = v35;
  v39[0] = &__p;
  for (v39[1] = 0; v9 != v10; v9 += 2)
  {
    if (*v9)
    {
      v11 = v9[1];
      v40 = *v9;
      v41 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(buf, &v40);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      v12 = *buf;
      if (!*buf)
      {
        v29 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v29 process:? delegate:?];
      }

      v13 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      v14 = (*(*v12 + 16))(v12);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(buf);
    }

    else
    {
      v14 = 0;
    }

    LODWORD(v40) = v14;
    v8 = std::insert_iterator<boost::container::flat_set<unsigned int,std::less<unsigned int>,void>>::operator=[abi:ne200100](v39, &v40);
  }

  v15 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "AudioApplicationInfo.mm";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    *&buf[18] = 2080;
    *&buf[20] = v3;
    v43 = 2048;
    v44 = v33;
    _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioApp-wide input mute (%s) on %zu sessions", buf, 0x26u);
  }

  std::shared_ptr<avas::server::AudioApplicationInfo>::shared_ptr[abi:ne200100]<avas::server::AudioApplicationInfo,0>(&v30, v2);
  v16 = avas::server::require_acq::MuteAudioSessions(&v30, *(a1 + 40), &__p, &v37);
  v17 = v31;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v16)
  {
    v18 = *avas::server::gSessionServerLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioApplicationInfo.mm";
      *&buf[12] = 1024;
      *&buf[14] = 339;
      _os_log_impl(&dword_241701000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update mute state for audio sessions", buf, 0x12u);
    }
  }

  else
  {
    os_unfair_lock_lock((v2 + 16));
    IsAnySessionConsideredForInputMuteState = avas::server::AudioAppInfoImpl::IsAnySessionConsideredForInputMuteState((v2 + 24));
    os_unfair_lock_unlock((v2 + 16));
    if ((IsAnySessionConsideredForInputMuteState & 1) == 0)
    {
      v25 = *avas::server::gSessionServerLog(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = avas::server::AudioApplicationInfo::DebugString(v2);
        *buf = 136315650;
        *&buf[4] = "AudioApplicationInfo.mm";
        *&buf[12] = 1024;
        *&buf[14] = 345;
        *&buf[18] = 2080;
        *&buf[20] = v26;
        _os_log_impl(&dword_241701000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No sessions in app currently considered for mute state, updating cached AudioApp input mute (%s)", buf, 0x1Cu);
      }

      os_unfair_lock_lock((v2 + 16));
      v27 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
      avas::server::AudioAppInfoImpl::UpdateInputMuteState((v2 + 24), v27, 0);

      os_unfair_lock_unlock((v2 + 16));
    }
  }

  if (v34)
  {
    operator delete(__p);
  }

LABEL_43:
  *buf = &v35;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](buf);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_24175A468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29)
{
  os_unfair_lock_unlock(v29 + 4);
  if (a14)
  {
    operator delete(__p);
  }

  a29 = &a15;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

avas::server::forbid_acq::SystemController *avas::server::forbid_acq::SystemController::SystemController(avas::server::forbid_acq::SystemController *this)
{
  *this = 0;
  v2 = [objc_alloc(MEMORY[0x277D26E68]) initWithPID:getpid()];
  v3 = *this;
  *this = v2;

  return this;
}

void std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::insert_iterator<boost::container::flat_set<unsigned int,std::less<unsigned int>,void>>::operator=[abi:ne200100](uint64_t a1, unsigned int *a2)
{
  v3 = *a1;
  v7 = *(a1 + 8);
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique(v3, &v7, a2, &v6);
  v4 = v6;
  *(a1 + 8) = v6;
  if (!v4)
  {
    __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
  }

  *(a1 + 8) = v4 + 4;
  return a1;
}

void boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique(uint64_t *a1@<X0>, unsigned int **a2@<X1>, unsigned int *a3@<X2>, void **a4@<X8>)
{
  v5 = *a1;
  if (*a1 > *a2)
  {
    goto LABEL_25;
  }

  v7 = a1[1];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (*a2 > v5 + 4 * v7)
  {
LABEL_25:
    boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique();
  }

  v15 = *a2;
  __src = 0;
  if (boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_insert_unique_prepare(a1, &v15, a3, &__src))
  {
    v10 = __src;
    v11 = *a1;
    if (*a1 > __src)
    {
      goto LABEL_26;
    }

    v12 = a1[1];
    if (!v11 && v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = (v11 + 4 * v12);
    if (__src > v13)
    {
LABEL_26:
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
    }

    v14 = a1[2];
    if (v14 < v12)
    {
      boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
    }

    if (v14 == v12)
    {
      boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(a1, __src, 1, a3, a4);
    }

    else
    {
      if (v13 == __src)
      {
        *v13 = *a3;
        a1[1] = v12 + 1;
      }

      else
      {
        *v13 = *(v13 - 1);
        a1[1] = v12 + 1;
        if (v13 - 1 != v10)
        {
          memmove(v10 + 1, v10, (v13 - 1) - v10);
        }

        *v10 = *a3;
      }

      *a4 = v10;
    }
  }

  else
  {
    if (!*a1 && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }

    *a4 = __src;
  }
}

BOOL boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_insert_unique_prepare(uint64_t *a1, unsigned int **a2, unsigned int *a3, unsigned int **a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v7 = (v4 + 4 * v5);
  v8 = *a2;
  if (*a2 != v7)
  {
    if (!v8)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 >= *v8)
    {
      v14 = *a2;
LABEL_16:
      v13 = v7;
      return boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::priv_insert_unique_prepare(a1, &v14, &v13, a3, a4);
    }
  }

  *a4 = v8;
  v9 = *a2;
  if (*a2 == v4)
  {
    return 1;
  }

  if (!v9)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v11 = *(v9 - 1);
  v7 = v9 - 1;
  v10 = v11;
  if (v11 < *a3)
  {
    return 1;
  }

  if (*a3 < v10)
  {
    v14 = v4;
    goto LABEL_16;
  }

  result = 0;
  *a4 = v7;
  return result;
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(uint64_t *a1@<X0>, char *a2@<X1>, const char *a3@<X2>, _DWORD *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::new_allocator<unsigned int>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 61)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(4 * v11);
  boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(a1, v14, v13, a2, a3, a4);
  *a5 = &a2[*a1 - v10];
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(uint64_t a1, char *__dst, uint64_t a3, char *__src, uint64_t a5, _DWORD *a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int *,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(a1, *a1, __src, (*a1 + 4 * *(a1 + 8)), __dst, a5, a6);
  if (v10)
  {
    operator delete(*a1);
  }

  v11 = *(a1 + 8) + a5;
  *a1 = __dst;
  *(a1 + 8) = v11;
  *(a1 + 16) = a3;
}

void sub_24175AA88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
}

void avas::server::mx::MXObjectBase::~MXObjectBase(avas::server::mx::MXObjectBase *this)
{
  *this = &unk_28535AE60;
  v2 = *(this + 3);
  if (v2)
  {
    CFRetain(*(this + 3));
    v3 = *(this + 3);
    *(this + 3) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN4avas6server2mx12MXObjectBaseD2Ev_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v2;
    dispatch_async(v4, block);

    v5 = *(this + 3);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }
}

{
  avas::server::mx::MXObjectBase::~MXObjectBase(this);

  JUMPOUT(0x245CEEB60);
}

avas::server *avas::server::mx::MXObjectBase::DeactivateMXSession(avas::server *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  avas::server::ForbidAudioControlQueue(a1);
  v4 = *(a2 + 24);
  v5 = (*(a2 + 16) << 63) >> 63;
  v6 = *(a1 + 2);
  v7 = MXSessionEndInterruption_WithSecTaskAndStatus();
  v8 = v7;
  if (v7)
  {
    v9 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "MXObjectBase.mm";
      v14 = 1024;
      v15 = 536;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionEndInterruption failed with code: %d", &v12, 0x18u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void OpaqueObjectMgr::OpaqueObjectMgr(OpaqueObjectMgr *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 850045863;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  atomic_store((getpid() & 0x3FFFF) << 12, this + 28);
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::remove(uint64_t a1, unsigned int a2)
{
  v18 = (a1 + 48);
  v19 = 1;
  std::mutex::lock((a1 + 48));
  v4 = atomic_load((a1 + 8));
  if (v4)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v4, a2);
    if (SlotForKey)
    {
      v7 = v6;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v4 + 8 * HIDWORD(SlotForKey) + 16));
      if (v6)
      {
        v8 = atomic_load((a1 + 16));
        if (v8 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v9 = atomic_load((a1 + 16));
          }

          while (v9 > 0);
        }

        if (atomic_load(v7))
        {
          std::mutex::unlock(v18);
          v19 = 0;
          while (atomic_load(v7))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v18);
          v4 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(v7);
        v13 = *a1 - 1;
        *a1 = v13;
        if (v4)
        {
          v14 = 16 * v13;
          v15 = *(v4 + 8);
          if (v14 / v15 <= 2 && v15 >= 9)
          {
            caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(a1, v15 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
  }

  if (v19 == 1)
  {
    std::mutex::unlock(v18);
  }
}

void sub_24175AFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

void BaseOpaqueObject::~BaseOpaqueObject(BaseOpaqueObject *this)
{
  *this = &unk_28535AEE8;
  v2 = *(this + 2);
  if (v2)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::remove(OpaqueObjectMgr::sInstance, v2);
    *(this + 2) = 0;
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    v6 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v6 process:? delegate:?];
  }

  v3 = atomic_load((a1 + 8));
  if (v3)
  {
    v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(v3);
    MEMORY[0x245CEEB60](v4, 0x1060C402CF69088);
  }

  std::mutex::~mutex((a1 + 48));
  v7 = (a1 + 24);
  std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (!atomic_load(result))
    {

      JUMPOUT(0x245CEEB60);
    }

    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release();
  }

  return result;
}

void std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(result);

    JUMPOUT(0x245CEEB60);
  }

  return result;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(unint64_t *a1, unsigned int a2)
{
  v3 = a1 + 1;
  v4 = atomic_load(a1 + 1);
  v5 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::create(a1, a2);
  v6 = v5;
  if (v4)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::copyAllElementsTo(v4, v5);
    atomic_store(v6, v3);
    v8 = a1[4];
    v7 = a1[5];
    if (v8 >= v7)
    {
      v10 = a1[3];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      v23[4] = a1 + 3;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::server::ObjectDescription>>>((a1 + 3), v16);
      }

      v17 = (v8 - v10) >> 3;
      v18 = (8 * v12);
      v19 = (8 * v12 - 8 * v17);
      *v18 = v4;
      v9 = v18 + 1;
      memcpy(v19, v10, v11);
      v20 = a1[3];
      a1[3] = v19;
      a1[4] = v9;
      v21 = a1[5];
      a1[5] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::~__split_buffer(v23);
    }

    else
    {
      *v8 = v4;
      v9 = v8 + 1;
    }

    a1[4] = v9;
  }

  else
  {
    atomic_store(v5, v3);
  }

  return v6;
}

char *caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::create(uint64_t a1, unsigned int a2)
{
  result = operator new(8 * (a2 - 1) + 24);
  *result = a1;
  *(result + 2) = a2;
  *(result + 2) = 0;
  v5 = (result + 16);
  if (a2)
  {
    v6 = a2 + 1;
    do
    {
      atomic_store(0, v5++);
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::copyAllElementsTo(unint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = (result + 16);
    v5 = a2 + 16;
    do
    {
      v6 = *v4;
      if (*v4 + 1 >= 2)
      {
        result = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(a2, *(v6 + 4));
        if ((result & 1) == 0)
        {
          atomic_fetch_add(v6, 0x10000u);
          atomic_store(v6, (v5 + 8 * HIDWORD(result)));
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(v5, (v4 - 8));
  }

  return result;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (!v2)
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
LABEL_5:
    std::__throw_system_error(11, "unique_lock::lock: already locked");
    std::__call_once_proxy[abi:ne200100]<std::tuple<OpaqueObjectMgrInstance(void)::$_0 &&>>();
  }

  if (*(a1 + 8) == 1)
  {
    goto LABEL_5;
  }

  std::mutex::lock(v2);
  *(a1 + 8) = 1;
}

caulk::log_category *caulk::log_category::log_category(caulk::log_category *this, const char *subsystem, const char *category)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = os_log_create(subsystem, category);
  v5 = *this;
  *this = v4;

  return this;
}

void avas::server::ProcessInfo::processName(avas::server::ProcessInfo *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 47);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(this + 47))
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(this + 1);
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      memset(&v7, 0, sizeof(v7));
    }

    v6 = audit_token_to_pid(&v7);
    caulk::platform::process_name(v6);
    if (*(this + 47) < 0)
    {
      operator delete(*(this + 3));
    }

    *(this + 24) = *v7.val;
    *(this + 5) = *&v7.val[4];
    if ((*(this + 47) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*(this + 4))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
    return;
  }

LABEL_12:
  std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
}

avas::server::mx::MXObjectIndependent *avas::server::mx::MXObjectIndependent::MXObjectIndependent(avas::server::mx::MXObjectIndependent *this, uint64_t a2, const avas::server::SessionCreationDescription *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28535AF18;
  IndependentSession = avas::server::mx::MXObjectIndependent::CreateIndependentSession(this, a3);
  cf = IndependentSession;
  avas::server::mx::MXObjectBase::SetMXSessionRef(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  avas::server::SessionCreationDescription::BuildStringRepresentation(a3, &v13);
  avas::server::mx::MXObjectBase::SetCoreSessionID(this, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v13;
  }

  v7 = avas::server::mx::MXObjectBase::buildClientNameString(this, &__p);
  avas::server::mx::MXObjectBase::SetClientName(this, v7);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  avas::server::mx::MXObjectBase::SetClientPID(this, *(a3 + 9));
  v9 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "MXObjectIndependent.mm";
    v17 = 1024;
    v18 = 31;
    v19 = 2048;
    v20 = IndependentSession;
    _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d subsession of type 'independent' created with ref %p", buf, 0x1Cu);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_24175B954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::mx::MXObjectIndependent::CreateIndependentSession(avas::server::mx::MXObjectIndependent *this, const avas::server::SessionCreationDescription *a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v2 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v2;
  v15 = *(a2 + 8);
  if ((v15 & 1) == 0)
  {
    avas::server::mx::MXObjectBase::CreateMXSessionRef();
  }

  v3 = *MEMORY[0x277D270E0];
  v23[0] = v3;
  v24[0] = &unk_28535D248;
  v4 = *MEMORY[0x277D270D0];
  v23[1] = v4;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:32];
  v24[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v7 = MXSessionCreateWithOptions();
  v8 = v7;
  if (v7)
  {
    v12 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "MXObjectIndependent.mm";
      v19 = 1024;
      v20 = 53;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionCreate for independent session failed: %d", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Failed to create independent session");
  }

  v9 = v16;

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_24175BBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  __cxa_free_exception(v11);

  _Unwind_Resume(a1);
}

void avas::server::mx::MXObjectIndependent::~MXObjectIndependent(avas::server::mx::MXObjectIndependent *this)
{
  avas::server::mx::MXObjectBase::~MXObjectBase(this);

  JUMPOUT(0x245CEEB60);
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::iterator_proxy::~iterator_proxy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::iterator_proxy::~iterator_proxy(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

const __CFBoolean *applesauce::CF::details::treat_as_BOOL_for_convert_as<double>(const __CFBoolean *result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      *&result = CFBooleanGetValue(v1);
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

const __CFBoolean *applesauce::CF::details::treat_as_BOOL_for_convert_as<long long>(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return CFBooleanGetValue(v1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[32],char [32],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[32]>();
}

uint64_t nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_ref<unsigned long const&,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  v3 = *a2;
  *a1 = 6;
  *(a1 + 8) = v3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  *(a1 + 16) = a1;
  *(a1 + 24) = 1;
  return a1;
}

uint64_t avas::server::mx::MXObjectStub::GetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [v5 setObject:&unk_28535D260 forKey:{*(*(&v13 + 1) + 8 * v9++), v13}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = v5;
    *a3 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEC10];
}

uint64_t avas::server::mx::MXObjectStub::SetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v14 + 1) + 8 * v9);
          v19 = &unk_28535D260;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          [v5 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    v11 = v5;
    *a3 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return 561145203;
}

uint64_t avas::server::mx::MXObjectStub::SetMXProperties_Legacy(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a3)
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v14 + 1) + 8 * v9);
          v19 = &unk_28535D260;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:{1, v14}];
          [v5 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    v11 = v5;
    *a3 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return 561145203;
}

void avas::server::mx::MXObjectStub::~MXObjectStub(avas::server::mx::MXObjectStub *this)
{
  avas::server::mx::IBehaviorUnit::~IBehaviorUnit(this);

  JUMPOUT(0x245CEEB60);
}

BOOL avas::server::PickableRoute::ValidateDictionary(avas::server::PickableRoute *this, NSDictionary *a2)
{
  v2 = this;
  v3 = v2;
  v6 = 0;
  if (v2)
  {
    v4 = [(avas::server::PickableRoute *)v2 valueForKey:*MEMORY[0x277D273C8]];
    if (v4)
    {
      v5 = [(avas::server::PickableRoute *)v3 valueForKey:*MEMORY[0x277D27390]];

      if (v5)
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

avas::server::PickableRoute *avas::server::PickableRoute::PickableRoute(avas::server::PickableRoute *this, NSDictionary *a2)
{
  v3 = a2;
  *this = v3;
  if (!avas::server::PickableRoute::ValidateDictionary(v3, v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "bad input dictionary");
  }

  return this;
}

void sub_24175C604(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);

  _Unwind_Resume(a1);
}

void sub_24175C6A0(void *a1)
{
  MEMORY[0x245CEEB60](v2, 0x80C40B8603338);
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x24175C678);
}

uint64_t avas::server::PickableRoute::WasCurrentlyPickedRouted(id *this)
{
  v1 = [*this objectForKey:*MEMORY[0x277D273C0]];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t avas::server::PickableRoute::IsPreferredExternalRoute(id *this)
{
  v1 = [*this objectForKey:*MEMORY[0x277D273A0]];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t avas::server::PickableRoute::IsActivePreferredExternalRoute(id *this)
{
  v1 = [*this objectForKey:*MEMORY[0x277D273B0]];
  v2 = [v1 BOOLValue];

  return v2;
}

id avas::server::GetPickableRoutesFromMX(std::__shared_weak_count **this, avas::server::AudioSessionInfoAccessor *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  avas::server::ForbidAudioControlQueue(this);
  v3 = *this;
  if (!*this)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v4 = this[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3[5].~__shared_weak_count_0 + 64))(&cf);
  v5 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v5)
  {
    v6 = objc_opt_new();
    goto LABEL_32;
  }

  v7 = *this;
  if (!*this)
  {
    v24 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v24 process:? delegate:?];
  }

  v8 = this[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::mx::MXAccessor::GetMXProperty(v7[5].__vftable, *MEMORY[0x277D271A8], &cf);
  v9 = cf;
  v10 = v27;
  v27 = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  strcpy(v29, "get_pickable_routes");
  v11 = v10;
  cf = 0;
  v27 = 0;
  v28 = 0;
  v12 = avas::server::TranslateCMSessionErrorCode(v29, &cf, 125, v9);
  v13 = v12;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(cf);
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_19:
    v15 = *this;
    if (!*this)
    {
      v25 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v25 process:? delegate:?];
    }

    v16 = this[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::mx::MXAccessor::GetMXProperty(v15[5].__vftable, *MEMORY[0x277D271B0], &cf);
    v17 = cf;
    v18 = v27;
    v27 = 0;

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v14 = v18;
    cf = 0;
    v27 = 0;
    v28 = 0;
    v19 = avas::server::TranslateCMSessionErrorCode(v29, &cf, 131, v17);
    v20 = v19;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(cf);
      if (v20)
      {
        goto LABEL_26;
      }
    }

    else if (v19)
    {
LABEL_26:
      v6 = objc_opt_new();
LABEL_30:

      goto LABEL_31;
    }

    v21 = CMSessionMgrCopyPickableRoutesForCategoryAndMode();
    v6 = 0;
    cf = 0;
    v27 = 0;
    v28 = 0;
    avas::server::TranslateCMSessionErrorCode(v29, &cf, 140, v21);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(cf);
    }

    goto LABEL_30;
  }

  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_17:
  v6 = objc_opt_new();
  v14 = v11;
LABEL_31:

LABEL_32:
  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_24175CAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void avas::server::GetCurrentlyPickedRoute(avas::server *this@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = this;
  if ([(avas::server *)v4 countByEnumeratingWithState:&v10 objects:v20 count:16])
  {
    *v11;
    *v11;
    avas::server::PickableRoute::MakeUnique(**(&v10 + 1), v5);
  }

  v7 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(avas::server *)v4 count];
    *buf = 136315650;
    v15 = "AS_RouteUtilities.mm";
    v16 = 1024;
    v17 = 160;
    v18 = 1024;
    LODWORD(v19) = v8;
    _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find the picked route. Looked in %u possible routes.", buf, 0x18u);
  }

  *a2 = 0;
  v9 = *MEMORY[0x277D85DE8];
}

void sub_24175CDC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void avas::server::FindMatchingPickableRoute(avas::server *this@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = this;
  if ([(avas::server *)v5 countByEnumeratingWithState:&v8 objects:v12 count:16])
  {
    *v9;
    *v9;
    avas::server::PickableRoute::MakeUnique(**(&v8 + 1), v6);
  }

  *a2 = 0;
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t avas::server::RoutesAreEquivalent(id *this, id *a2, const avas::server::PickableRoute *a3)
{
  v5 = *MEMORY[0x277D273C8];
  v6 = [*this objectForKey:*MEMORY[0x277D273C8]];
  v7 = [*a2 objectForKey:v5];
  if ([v6 isEqualToString:v7])
  {
    v8 = *MEMORY[0x277D27390];
    v9 = [*this objectForKey:*MEMORY[0x277D27390]];
    v10 = [*a2 objectForKey:v8];
    v11 = [v9 isEqualToString:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t avas::server::InterruptionIsResumable(id *this, const avas::server::PickableRoute *a2, NSArray *a3)
{
  v4 = a2;
  avas::server::GetCurrentlyPickedRoute(v4, &v9);
  if (v9 && (avas::server::RoutesAreEquivalent(this, v9, v5) & 1) != 0)
  {
    goto LABEL_7;
  }

  if (!avas::server::PickableRoute::IsPreferredExternalRoute(this))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  avas::server::FindMatchingPickableRoute(v4, &v8);
  if (!v8 || (avas::server::PickableRoute::IsActivePreferredExternalRoute(v8) & 1) == 0)
  {
    std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](&v8);
    goto LABEL_9;
  }

  std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](&v8);
LABEL_7:
  v6 = 1;
LABEL_10:
  std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](&v9);

  return v6;
}

void sub_24175D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, id *a10)
{
  std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<avas::server::PickableRoute>::~unique_ptr[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

void sub_24175D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_24175D9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v17 = v16;

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_24175DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_24175E19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_24175EB18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24175EE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v17 = v16;

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a13);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<opaqueCMSession *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_24175F224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, id a22)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  avas::server::SessionCreationDescription::~SessionCreationDescription(&a22);
  _Unwind_Resume(a1);
}

void sub_24175F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a9);
  applesauce::CF::ObjectRef<opaqueCMSession *>::~ObjectRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_24175F8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a16);
  _Unwind_Resume(a1);
}

void sub_24175FC20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  os_unfair_lock_unlock(v3);

  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_24175FD1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  os_unfair_lock_unlock(v3);

  _Unwind_Resume(a1);
}

void sub_24175FDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2417602C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_24176039C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_241760760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, os_unfair_lock_s *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a16);
  _Unwind_Resume(a1);
}

void avas::server::SessionCreationDescription::~SessionCreationDescription(id *this)
{
  v2 = this[15];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[13];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t avas::server::RemoveMXNotificationListener(avas::server *this, const audit_token_t *a2, audit_token_t *a3, NSString *a4)
{
  v5 = this;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v13, v5, a2, 1);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = avas::server::AudioSessionInfo::RemoveMXNotificationListener(v7, v6);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = 561210739;
    v10 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "AudioSessionServerImpCommon.mm";
      v17 = 1024;
      v18 = 239;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v13);

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_241760B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);

  _Unwind_Resume(a1);
}

void avas::server::forbid_acq::PrivateSetPropertyMX(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  strcpy(v9, "set_property");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(&__p);
}

void sub_241761028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose((v15 - 192), 8);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va);

  _Unwind_Resume(a1);
}

uint64_t ___ZN4avas6server10forbid_acq20PrivateSetPropertyMXENSt3__110shared_ptrIKNS0_21ConstAudioSessionInfoEEEjRKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEP8NSStringPU25objcproto14NSSecureCoding11objc_object_block_invoke(uint64_t a1, uint64_t a2, NSString *a3)
{
  result = avas::server::require_acq::AudioSessionServerUpdatePhoneCallDummyPlayerState(*(a1 + 48), *(a1 + 32), a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t avas::server::forbid_acq::SetPropertyMX(uint64_t a1, const audit_token_t *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v26, a1, a2, 1);
  v9 = v26;
  if (v26)
  {
    v10 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v9, a1, __p);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v11 = v26;
    if (!v26)
    {
      v21 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v21 process:? delegate:?];
    }

    v12 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (*(**(*(v11 + 15) + 8) + 64))(cf);
    v14 = *cf;
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v14)
    {
      if (v26)
      {
        v23[0] = v26;
        v23[1] = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::forbid_acq::PrivateSetPropertyMX(v23, a1, __p, v7, v8);
      }

      v22 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v22 process:? delegate:?];
    }

    v15 = 2003329396;
    v17 = *avas::server::gSessionServerLog(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = __p;
      if (v25 < 0)
      {
        v18 = __p[0];
      }

      *cf = 136315650;
      *&cf[4] = "AudioSessionServerImpCommon.mm";
      v29 = 1024;
      v30 = 398;
      v31 = 2080;
      v32 = v18;
      _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get MXSessionRef for session: %s", cf, 0x1Cu);
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v15 = 561210739;
    v16 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136315650;
      *&cf[4] = "AudioSessionServerImpCommon.mm";
      v29 = 1024;
      v30 = 392;
      v31 = 1024;
      LODWORD(v32) = a1;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", cf, 0x18u);
    }
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_241761478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void AudioSession::GetCMSessionErrorString(AudioSession *this@<X0>, uint64_t a2@<X8>)
{
  if (this > -15681)
  {
    if (this <= -12986)
    {
      if (this > -12989)
      {
        if (this == -12988)
        {
          v3 = "Missing entitlement";
        }

        else if (this == -12987)
        {
          v3 = "Operation ignored";
        }

        else
        {
          v3 = "Not routable";
        }

LABEL_44:

        std::string::basic_string[abi:ne200100]<0>(a2, v3);
        return;
      }

      if (this == -15680)
      {
        v3 = "Memory Allocation Failed";
        goto LABEL_44;
      }

      if (this == -12989)
      {
        v3 = "Operation denied. Siri is recording";
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    if (this <= -12983)
    {
      if (this == -12985)
      {
        v3 = "Operation denied. Cannot interrupt others";
        goto LABEL_44;
      }

      if (this != -12984)
      {
        v3 = "Insufficient priority";
        goto LABEL_44;
      }

LABEL_34:
      v3 = "Unrecognized property";
      goto LABEL_44;
    }

    if (this == -12982)
    {
      v3 = "Allocation failed";
      goto LABEL_44;
    }

    if (this != -12981)
    {
      if (this == -12980)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }

LABEL_35:
    v3 = "Invalid parameter";
    goto LABEL_44;
  }

  if (this <= -15687)
  {
    if (this <= -16982)
    {
      if (this == -16983)
      {
        v3 = "Operation denied. IO currently running";
        goto LABEL_44;
      }

      if (this == -16982)
      {
        v3 = "Budget not available";
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    if (this == -16981)
    {
      v3 = "Operation denied. Cannot start recording";
      goto LABEL_44;
    }

    if (this != -16980)
    {
      if (this == -15687)
      {
        v3 = "Operation Failed";
        goto LABEL_44;
      }

      goto LABEL_47;
    }

LABEL_36:
    v3 = "Operation denied. Cannot start playing";
    goto LABEL_44;
  }

  if (this <= -15685)
  {
    if (this != -15686)
    {
      v3 = "Operation Denied";
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  switch(this)
  {
    case 0xFFFFC2BC:
      goto LABEL_34;
    case 0xFFFFC2BE:
LABEL_25:
      v3 = "Missing required parameter";
      goto LABEL_44;
    case 0xFFFFC2BF:
      goto LABEL_35;
  }

LABEL_47:
  std::to_string(&v6, this);
  v4 = std::string::insert(&v6, 0, "Unknown error code: ", 0x14uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v4->__r_.__value_.__l + 2);
  *a2 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_2417617C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[22],char [22],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[22]>();
}

void std::__shared_ptr_emplace<avas::server::SpatialManager::create(AVAudioNotificationRouter *,objc_object  {objcproto29InjectableSpatialBehaviorUnit}*)::SharedPtrSubclass,std::allocator<objc_object  {objcproto29InjectableSpatialBehaviorUnit}*>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void std::__shared_ptr_emplace<avas::server::SpatialManager::create(AVAudioNotificationRouter *,objc_object  {objcproto29InjectableSpatialBehaviorUnit}*)::SharedPtrSubclass,std::allocator<objc_object  {objcproto29InjectableSpatialBehaviorUnit}*>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<avas::server::StubbedSpatialManagerImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

uint64_t avas::server::StubbedSpatialManagerImpl::copySession(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = MEMORY[0x277CBEC10];
  }

  return MEMORY[0x277CBEC10];
}

void avas::server::StubbedBehaviorUnit::~StubbedBehaviorUnit(avas::server::StubbedBehaviorUnit *this)
{
  avas::server::mx::IBehaviorUnit::~IBehaviorUnit(this);

  JUMPOUT(0x245CEEB60);
}

void avas::server::AudioSessionRemoteClientManager::AddProxyClient(os_unfair_lock_s *this, const avas::server::SessionCreationDescription *a2, NSXPCConnection *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  a3;
  os_unfair_lock_lock(this);
  std::allocate_shared[abi:ne200100]<avas::server::AudioSessionRemoteClient,std::allocator<avas::server::AudioSessionRemoteClient>,avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,0>();
}

void sub_241761C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  os_unfair_lock_unlock(v10);

  _Unwind_Resume(a1);
}

void avas::server::AudioSessionRemoteClientManager::GetRemoteClients(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  os_unfair_lock_lock(this);
  v4 = *&this[6]._os_unfair_lock_opaque;
  v5 = *&this[8]._os_unfair_lock_opaque;
  for (i = a2; v4 != v5; v4 += 2)
  {
    v6 = v4[1];
    v7 = *v4;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::back_insert_iterator<std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>>::operator=[abi:ne200100](&i, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  os_unfair_lock_unlock(this);
}

void sub_241761D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  os_unfair_lock_unlock(v11);
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void avas::server::AudioSessionRemoteClientManager::RemoveProxyClient(avas::server::AudioSessionRemoteClientManager *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
LABEL_12:
    v4 = v5;
    goto LABEL_13;
  }

  while (1)
  {
    v7 = *v4;
    v6 = v4[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v7 + 8) != a2 || *(v7 + 168) != 1886550137)
    {
      v8 = 0;
      if (!v6)
      {
        goto LABEL_10;
      }

LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      goto LABEL_10;
    }

    v8 = 1;
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v8)
    {
      break;
    }

    v4 += 2;
    if (v4 == v5)
    {
      goto LABEL_12;
    }
  }

  if (v4 != v5)
  {
    v9 = v4 + 2;
    if (v4 + 2 != v5)
    {
      while (1)
      {
        v11 = *v9;
        v10 = v9[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v11 + 8) == a2 && *(v11 + 168) == 1886550137)
        {
          break;
        }

        v12 = 0;
        if (v10)
        {
          goto LABEL_25;
        }

LABEL_26:
        if ((v12 & 1) == 0)
        {
          v13 = *v9;
          *v9 = 0;
          v9[1] = 0;
          v14 = v4[1];
          *v4 = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          v4 += 2;
        }

        v9 += 2;
        if (v9 == v5)
        {
          goto LABEL_13;
        }
      }

      v12 = 1;
      if (!v10)
      {
        goto LABEL_26;
      }

LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      goto LABEL_26;
    }
  }

LABEL_13:
  std::vector<std::shared_ptr<avas::server::AudioSessionRemoteClient>>::erase(this + 24, v4, *(this + 4));

  os_unfair_lock_unlock(this);
}

void avas::server::AudioSessionRemoteClientManager::GetProxySessionIDs(os_unfair_lock_s *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  os_unfair_lock_lock(this);
  v4 = *&this[6]._os_unfair_lock_opaque;
  v5 = *&this[8]._os_unfair_lock_opaque;
  if (v4 != v5)
  {
    v6 = *(*&this[2]._os_unfair_lock_opaque + 8);
    do
    {
      v7 = *v4;
      v8 = v4[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 8);
      if (v9 != v6)
      {
        v11 = a2[1];
        v10 = a2[2];
        if (v11 >= v10)
        {
          v13 = *a2;
          v14 = v11 - *a2;
          v15 = v14 >> 2;
          v16 = (v14 >> 2) + 1;
          if (v16 >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v17 = v10 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a2, v19);
          }

          *(4 * v15) = v9;
          v12 = 4 * v15 + 4;
          memcpy(0, v13, v14);
          v20 = *a2;
          *a2 = 0;
          a2[1] = v12;
          a2[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v9;
          v12 = (v11 + 4);
        }

        a2[1] = v12;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  os_unfair_lock_unlock(this);
}

void sub_241762050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_t lock)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  os_unfair_lock_unlock(lock);
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

BOOL avas::server::AudioSessionRemoteClientManager::SessionIDBelongsToProxyClient(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this);
  v4 = *&this[6]._os_unfair_lock_opaque;
  v5 = *&this[8]._os_unfair_lock_opaque;
  if (v4 != v5)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v7 + 8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (v8 == a2)
        {
          goto LABEL_8;
        }
      }

      else if (*(v7 + 8) == a2)
      {
        goto LABEL_8;
      }

      v4 += 2;
    }

    while (v4 != v5);
    v4 = v5;
LABEL_8:
    v5 = *&this[8]._os_unfair_lock_opaque;
  }

  v9 = v4 != v5 && *(*&this[2]._os_unfair_lock_opaque + 8) != a2;
  os_unfair_lock_unlock(this);
  return v9;
}

uint64_t *std::back_insert_iterator<std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>>::operator=[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v18[4] = *a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(v4, v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v7 = 16 * v8 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    v18[0] = v15;
    v18[1] = v15;
    *(v4 + 8) = v7;
    v18[2] = v15;
    v16 = *(v4 + 16);
    *(v4 + 16) = 0;
    v18[3] = v16;
    std::__split_buffer<std::weak_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(v18);
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(v4 + 8) = v7;
  return a1;
}

uint64_t std::vector<std::shared_ptr<avas::server::AudioSessionRemoteClient>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::server::AudioSessionRemoteClient> *,std::shared_ptr<avas::server::AudioSessionRemoteClient> *,std::shared_ptr<avas::server::AudioSessionRemoteClient> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<avas::server::AudioSessionRemoteClient> *,std::shared_ptr<avas::server::AudioSessionRemoteClient> *,std::shared_ptr<avas::server::AudioSessionRemoteClient> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__shared_ptr_emplace<avas::server::AudioSessionRemoteClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void avas::server::AudioSessionRemoteClient::~AudioSessionRemoteClient(avas::server::AudioSessionRemoteClient *this)
{
  avas::server::AudioSessionRemoteClient::~AudioSessionRemoteClient(this);

  JUMPOUT(0x245CEEB60);
}

{
  *this = &unk_28535B168;
  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  std::mutex::~mutex((this + 104));
  std::mutex::~mutex((this + 40));
  std::__list_imp<NSDictionary * {__strong}>::clear(this + 2);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t avas::server::AudioSessionRemoteClient::PrintObject(avas::server::AudioSessionRemoteClient *this, __sFILE *a2)
{
  v2 = this + 272;
  if (*(this + 295) < 0)
  {
    v2 = *v2;
  }

  return fprintf(a2, "<ASRemoteClient@%p %s>", this, v2);
}

avas::server::mx::MXObjectSecure *avas::server::mx::MXObjectSecure::MXObjectSecure(avas::server::mx::MXObjectSecure *this, uint64_t a2, const avas::server::SessionCreationDescription *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28535B198;
  SecureSession = avas::server::mx::MXObjectSecure::CreateSecureSession(this, a3);
  cf = SecureSession;
  avas::server::mx::MXObjectBase::SetMXSessionRef(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  avas::server::SessionCreationDescription::BuildStringRepresentation(a3, &v13);
  avas::server::mx::MXObjectBase::SetCoreSessionID(this, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v13;
  }

  v7 = avas::server::mx::MXObjectBase::buildClientNameString(this, &__p);
  avas::server::mx::MXObjectBase::SetClientName(this, v7);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  avas::server::mx::MXObjectBase::SetClientPID(this, *(a3 + 9));
  v9 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "MXObjectSecure.mm";
    v17 = 1024;
    v18 = 43;
    v19 = 2048;
    v20 = SecureSession;
    _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d subsession created with ref %p", buf, 0x1Cu);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2417626DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::mx::MXObjectSecure::CreateSecureSession(avas::server::mx::MXObjectSecure *this, const avas::server::SessionCreationDescription *a2)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v2 = *(a2 + 1);
  v17[0] = *a2;
  v17[1] = v2;
  v18 = *(a2 + 8);
  if ((v18 & 1) == 0)
  {
    avas::server::mx::MXObjectBase::CreateMXSessionRef();
  }

  v4 = *MEMORY[0x277D270E0];
  v26[0] = v4;
  v27[0] = &unk_28535D290;
  v5 = *MEMORY[0x277D270D0];
  v26[1] = v5;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:32];
  v27[1] = v6;
  v7 = *MEMORY[0x277D270D8];
  v26[2] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a2 + 16)];
  v27[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v10 = MXSessionCreateWithOptions();
  v11 = v10;
  if (v10)
  {
    v15 = *avas::server::gSessionServerLog(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "MXObjectSecure.mm";
      v22 = 1024;
      v23 = 62;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionCreate failed: %d", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Failed to create secure session");
  }

  v12 = v19;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_241762970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  __cxa_free_exception(v11);

  _Unwind_Resume(a1);
}

avas::server *avas::server::mx::MXObjectSecure::DeactivateMXSession(avas::server *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  avas::server::ForbidAudioControlQueue(a1);
  v2 = *(a1 + 2);
  v3 = MXSessionEndInterruption_WithSecTaskAndStatus();
  v4 = v3;
  if (v3)
  {
    v5 = *avas::server::gSessionServerLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "MXObjectSecure.mm";
      v10 = 1024;
      v11 = 78;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_241701000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionEndInterruption for secure session failed with code: %d", &v8, 0x18u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void avas::server::mx::MXObjectSecure::~MXObjectSecure(avas::server::mx::MXObjectSecure *this)
{
  avas::server::mx::MXObjectBase::~MXObjectBase(this);

  JUMPOUT(0x245CEEB60);
}

avas::server::AudioAppInfoImpl *avas::server::AudioAppInfoImpl::GetAlertTypeFromContextOrDefaultTo(avas::server::AudioAppInfoImpl *this, void *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 valueForKey:@"AlertType"];

    if (v6)
    {
      v7 = [v5 valueForKey:@"AlertType"];
      v8 = v7;
      if (v7)
      {
        this = [v7 intValue];
      }
    }
  }

  return this;
}

void ___ZN4avas6server16AudioAppInfoImpl27DeferPropertyChangeCallbackEONSt3__16vectorINS2_10shared_ptrINS0_20AudioAppRemoteClientEEENS2_9allocatorIS6_EEEEPK8NSStringP12NSDictionaryb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 48);
      if (v5)
      {
        avas::server::AudioAppRemoteClient::DeferPropertyChangeCallback(v5, *(a1 + 32), *(a1 + 40), *(a1 + 64));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_ea8_48c59_ZTSNSt3__18weak_ptrIN4avas6server20AudioAppRemoteClientEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c59_ZTSNSt3__18weak_ptrIN4avas6server20AudioAppRemoteClientEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL avas::server::AudioAppInfoImpl::SetPrimaryClient(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = avas::server::ProcessIdentity::operator==(a1 + 16, a2 + 56);
    if (v7)
    {
      if (!*(a1 + 136))
      {
        std::allocate_shared[abi:ne200100]<avas::server::AudioAppRemoteClient,std::allocator<avas::server::AudioAppRemoteClient>,AVAudioApplicationType,NSXPCConnection * {__strong}&,avas::server::ProcessIdentity const&,NSString * const {__strong}&,NSString * const {__strong},avas::server::ProcessIdentity const&,0>();
      }

      v8 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a2 + 92);
        *buf = 136315650;
        *&buf[4] = "AudioApplicationInfoImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 714;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - valid primary client already present on audio app instance (pid:%d)", buf, 0x18u);
      }
    }

    else
    {
      v13 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 52);
        v15 = *(a2 + 92);
        *buf = 136315906;
        *&buf[4] = "AudioApplicationInfoImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 708;
        v18 = 1024;
        v19 = v14;
        v20 = 1024;
        v21 = v15;
        _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - source process mismatch: existing pid:%d, explicitly-created pid: %d", buf, 0x1Eu);
      }
    }

    goto LABEL_12;
  }

  v10 = *avas::server::gSessionServerLog(0);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = *(a2 + 92);
    *buf = 136315650;
    *&buf[4] = "AudioApplicationInfoImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 702;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - expected an XPC connection for an explicitly created audio app instance (pid: %d)", buf, 0x18u);
LABEL_12:
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241762F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void avas::server::AudioAppInfoImpl::AddDelegateAudioApp(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = avas::server::ProcessIdentity::operator==(a2 + 56, a1 + 16);
  if (v8)
  {
    *buf = 1684825972;
    std::allocate_shared[abi:ne200100]<avas::server::AudioAppRemoteClient,std::allocator<avas::server::AudioAppRemoteClient>,AVAudioApplicationType,NSXPCConnection * {__strong}&,avas::server::ProcessIdentity const&,NSString * const {__strong}&,NSString * const {__strong},avas::server::ProcessIdentity const&,0>();
  }

  v9 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a2 + 92);
    v11 = *(a1 + 52);
    *buf = 136315906;
    *&buf[4] = "AudioApplicationInfoImpl.mm";
    v14 = 1024;
    v15 = 757;
    v16 = 1024;
    v17 = v10;
    v18 = 1024;
    v19 = v11;
    _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - delegate source process (pid:%d) doesn't match this source process (pid:%d)", buf, 0x1Eu);
  }

  *a4 = 0;
  a4[1] = 0;

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241763184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void *a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void avas::AudioAppState::getPropertyMX(id *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = [this[1] objectForKey:a2];
  if (v4)
  {
    v7 = v4;
    v5 = v4;
    v4 = v7;
    v6 = 0;
  }

  else
  {
    v6 = -50;
  }

  *a3 = v6;
  *(a3 + 8) = v4;
}

uint64_t avas::server::AudioAppInfoImpl::UpdateProperty(id *a1, void *a2, void *a3, int a4, int a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (a4 == 1836595770)
  {
    v14 = avas::AudioAppState::setPropertyMX((a1 + 19), v11, v12);
LABEL_7:
    updated = v14;
    goto LABEL_10;
  }

  if (![v11 isEqualToString:@"InputMute"])
  {
    v14 = avas::AudioAppState::setPropertyApp(a1 + 19, v11, v12);
    goto LABEL_7;
  }

  v16 = v12;
  if (v16)
  {
    avas::server::AudioAppInfoImpl::GetAlertTypeFromContextOrDefaultTo(2, v13, v15);
    updated = avas::server::AudioAppInfoImpl::UpdateInputMuteState(a1, v16, a5);
  }

  else
  {
    updated = 4294967246;
  }

LABEL_10:
  return updated;
}

uint64_t avas::AudioAppState::setPropertyMX(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 8) setValue:v6 forKey:v5];
  [*(a1 + 24) addObject:v5];

  return 0;
}

avas::server *avas::server::AudioAppInfoImpl::UpdateInputMuteState(id *this, NSNumber *a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  avas::AudioAppState::getPropertyApp(this + 19, &cfstr_Inputmute.isa, &v24);
  v6 = v25;
  v7 = v6;
  if (v6)
  {
    v8 = [(NSNumber *)v5 BOOLValue];
    v6 = [v7 BOOLValue];
    v9 = v8 ^ v6;
  }

  else
  {
    v9 = 1;
  }

  v10 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NSNumber *)v5 BOOLValue];
    v12 = "YES";
    if (v9)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v14 = "UNMUTED";
    if (v11)
    {
      v14 = "MUTED";
    }

    if (!a3)
    {
      v12 = "NO";
    }

    v15 = this + 8;
    if (*(this + 87) < 0)
    {
      v15 = *v15;
    }

    *buf = 136316418;
    v27 = "AudioApplicationInfoImpl.mm";
    v28 = 1024;
    v29 = 334;
    v30 = 2080;
    v31 = v13;
    v32 = 2080;
    *v33 = v14;
    *&v33[8] = 2080;
    *&v33[10] = v12;
    v34 = 2080;
    v35 = v15;
    _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d audio app input mute state has changed: %s, new value: %s (forceNotification: %s) (app: %s)", buf, 0x3Au);
  }

  if ((v9 | a3) == 1)
  {
    v16 = avas::AudioAppState::setPropertyApp(this + 19, @"InputMute", v5);
    v17 = v16;
    if (v16)
    {
      v18 = *avas::server::gSessionServerLog(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [(NSNumber *)v5 BOOLValue];
        v20 = "MUTED";
        if (!v19)
        {
          v20 = "UNMUTED";
        }

        v21 = this + 8;
        if (*(this + 87) < 0)
        {
          v21 = *v21;
        }

        *buf = 136316162;
        v27 = "AudioApplicationInfoImpl.mm";
        v28 = 1024;
        v29 = 343;
        v30 = 2080;
        v31 = v20;
        v32 = 1024;
        *v33 = v17;
        *&v33[4] = 2080;
        *&v33[6] = v21;
        _os_log_impl(&dword_241701000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update AudioApp input mute state: %s, err: %d, {%s}", buf, 0x2Cu);
      }
    }

    avas::server::AudioAppInfoImpl::IssueInputMuteNotification(this, v5);
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t avas::server::AudioAppInfoImpl::UpdateSessionPlayStates(avas::server::AudioAppSessionStates **this, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  avas::server::AudioAppSessionStates::IsAnySessionRecording(this + 11);
  avas::server::AudioAppSessionStates::UpdateSessionRecordingState((this + 11), a2, a3, &v21);
  if (v22)
  {
    v7 = caulk::expected<std::optional<avas::server::AudioAppSessionStates::AudioAppState>,NSError * {__strong}>::value(&v21);
    v8 = *v7;
    if ((*v7 & 0x10000) != 0)
    {
      v15 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = avas::server::AudioAppSessionStates::DebugString((this + 11));
        v17 = v16;
        v18 = this + 8;
        if (*(this + 87) < 0)
        {
          v18 = *v18;
        }

        *buf = 136316418;
        v24 = "AudioApplicationInfoImpl.mm";
        v25 = 1024;
        v26 = 405;
        v27 = 1024;
        v28 = a2;
        v29 = 1024;
        *v30 = a3;
        *&v30[4] = 2112;
        *&v30[6] = v16;
        *&v30[14] = 2080;
        *&v30[16] = v18;
        _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully updated session 0x%x to isSessionRecording: %d, new state: %@ (app: %s)", buf, 0x32u);
      }

      if ((v8 & 0x100) == 0)
      {
        v12 = 0;
        goto LABEL_20;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithBool:v8 & 1];
      avas::server::AudioAppInfoImpl::UpdateInputMuteState(this, v9, 0);
    }

    else
    {
      v9 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_DEFAULT))
      {
        v10 = this + 8;
        if (*(this + 87) < 0)
        {
          v10 = *v10;
        }

        v11 = avas::server::AudioAppSessionStates::DebugString((this + 11));
        *buf = 136316418;
        v24 = "AudioApplicationInfoImpl.mm";
        v25 = 1024;
        v26 = 395;
        v27 = 1024;
        v28 = a2;
        v29 = 1024;
        *v30 = a3;
        *&v30[4] = 2080;
        *&v30[6] = v10;
        *&v30[14] = 2112;
        *&v30[16] = v11;
        _os_log_impl(&dword_241701000, &v9->super.super, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully updated session 0x%x to isSessionRecording: %d\n\tapp: %s\n%@", buf, 0x32u);
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = 2003329396;
    v9 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      v13 = this + 8;
      if (*(this + 87) < 0)
      {
        v13 = *v13;
      }

      *buf = 136316162;
      v24 = "AudioApplicationInfoImpl.mm";
      v25 = 1024;
      v26 = 388;
      v27 = 1024;
      v28 = a2;
      v29 = 2112;
      *v30 = v21;
      *&v30[8] = 2080;
      *&v30[10] = v13;
      v14 = v21;
      _os_log_impl(&dword_241701000, &v9->super.super, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update AudioApp recording state for session 0x%x, error: %@. (app: %s)", buf, 0x2Cu);
    }
  }

LABEL_20:
  if ((v22 & 1) == 0)
  {
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2417639F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

BOOL avas::server::AudioAppInfoImpl::HandleXPCConnectionInvalidated(avas::server::AudioAppInfoImpl *this, NSXPCConnection *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(this + 17);
  v5 = v3;
  v6 = v5;
  v7 = *(this + 14);
  if (v7 == (this + 120))
  {

LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v22 = *(this + 16);
  v23 = v4;
  do
  {
    v8 = avas::server::AudioAppRemoteClient::GetXPCConnection(*(v7 + 5));
    v9 = v8 == v6;

    if (v9)
    {
      v14 = *avas::server::gSessionServerLog(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v7 + 5);
        v16 = (v15 + 176);
        if (*(v15 + 199) < 0)
        {
          v16 = *v16;
        }

        *buf = 136315906;
        v25 = "AudioApplicationInfoImpl.mm";
        v26 = 1024;
        v27 = 453;
        v28 = 2112;
        v29 = v6;
        v30 = 2080;
        v31 = v16;
        _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing audio app client due to invalidated xpc connection: %@ { %s }", buf, 0x26u);
      }

      if (*(v7 + 5) == *(this + 17))
      {
        v17 = *(this + 18);
        *(this + 17) = 0;
        *(this + 18) = 0;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      v12 = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(this + 14, v7);
    }

    else
    {
      v11 = *(v7 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v7 + 2);
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }
    }

    v7 = v12;
  }

  while (v12 != (this + 120));
  v18 = *(this + 16);

  if (v22 == v18 || v23 == 0)
  {
    goto LABEL_22;
  }

  v19 = *(this + 17) == 0;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t avas::server::AudioAppInfoImpl::FindAudioAppClient@<X0>(avas::server::AudioAppInfoImpl *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(this + 15);
  result = this + 120;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = result;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != result && *(v6 + 32) <= a2)
  {
    v11 = *(v6 + 40);
    v10 = *(v6 + 48);
    *a3 = v11;
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void avas::server::AudioAppInfoImpl::HandleSessionInputMuteChange(id *this, uint64_t a2, int a3, int a4)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if ((a3 & 1) == 0)
    {
      v7 = *avas::server::gSessionServerLog(this);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = this + 8;
        if (*(this + 87) < 0)
        {
          v8 = *v8;
        }

        *buf = 136315906;
        v41 = "AudioApplicationInfoImpl.mm";
        v42 = 1024;
        v43 = 537;
        v44 = 1024;
        *v45 = a2;
        *&v45[4] = 2080;
        *&v45[6] = v8;
        _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session 0x%x explicitly-set unmuted, new sessions in audio app will be created UNMUTED (app: %s)", buf, 0x22u);
      }

      avas::AudioAppState::setPropertyApp(this + 19, @"NewSessionsShouldBeInputMuted", MEMORY[0x277CBEC28]);
    }

    avas::server::AudioAppSessionStates::UpdateSessionIsConsideredForInputMuteState((this + 11), a2, 1, &v38);
    if ((v39 & 1) == 0)
    {
      v10 = *avas::server::gSessionServerLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = this + 8;
        if (*(this + 87) < 0)
        {
          v11 = *v11;
        }

        *buf = 136316162;
        v41 = "AudioApplicationInfoImpl.mm";
        v42 = 1024;
        v43 = 547;
        v44 = 1024;
        *v45 = a2;
        *&v45[4] = 2112;
        *&v45[6] = v38;
        *&v45[14] = 2080;
        *&v45[16] = v11;
        v12 = v38;
        _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update isConsideredInAudioAppMute=YES state for session 0x%x,\t\t\t\t\t\t\terror: %@. (app: %s)", buf, 0x2Cu);
      }

      if ((v39 & 1) == 0)
      {
      }
    }
  }

  avas::server::AudioAppSessionStates::UpdateSessionInputMuteState((this + 11), a2, a3, &v38);
  if (v39)
  {
    v14 = caulk::expected<std::optional<avas::server::AudioAppSessionStates::AudioAppState>,NSError * {__strong}>::value(&v38);
    v15 = *v14;
    if ((*v14 & 0x10000) == 0)
    {
      avas::AudioAppState::getPropertyApp(this + 19, &cfstr_Inputmute.isa, v37);
      v17 = *avas::server::gSessionServerLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = this + 8;
        if (*(this + 87) < 0)
        {
          v18 = *v18;
        }

        v19 = avas::server::AudioAppSessionStates::DebugString((this + 11));
        *buf = 136316162;
        v41 = "AudioApplicationInfoImpl.mm";
        v42 = 1024;
        v43 = 560;
        v44 = 1024;
        *v45 = a2;
        *&v45[4] = 2080;
        *&v45[6] = v18;
        *&v45[14] = 2112;
        *&v45[16] = v19;
        _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioApp input mute state unchanged by session 0x%x change\n\tapp: %s\n%@", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    if ((v15 & 0x100) == 0)
    {
      v25 = *avas::server::gSessionServerLog(v14);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136315394;
      v41 = "AudioApplicationInfoImpl.mm";
      v42 = 1024;
      v43 = 567;
      v26 = "%25s:%-5d Error - AudioApp input mute state should never be nullopt after successful mute update";
      v27 = v25;
      v28 = 18;
      goto LABEL_42;
    }

    v29 = *avas::server::gSessionServerLog(v14);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = this + 8;
      if (*(this + 87) < 0)
      {
        v30 = *v30;
      }

      v31 = avas::server::AudioAppSessionStates::DebugString((this + 11));
      *buf = 136316162;
      v41 = "AudioApplicationInfoImpl.mm";
      v42 = 1024;
      v43 = 572;
      v44 = 1024;
      *v45 = a2;
      *&v45[4] = 2080;
      *&v45[6] = v30;
      *&v45[14] = 2112;
      *&v45[16] = v31;
      _os_log_impl(&dword_241701000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully updated session 0x%x mute state\n\tapp: %s\n%@", buf, 0x2Cu);
    }

    v32 = [MEMORY[0x277CCABB0] numberWithBool:v15 & 1];
    updated = avas::server::AudioAppInfoImpl::UpdateInputMuteState(this, v32, 0);

    if (updated)
    {
      v35 = *avas::server::gSessionServerLog(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = this + 8;
        if (*(this + 87) < 0)
        {
          v36 = *v36;
        }

        *buf = 136315650;
        v41 = "AudioApplicationInfoImpl.mm";
        v42 = 1024;
        v43 = 576;
        v44 = 2080;
        *v45 = v36;
        v26 = "%25s:%-5d Failed to update input mute state {%s}";
        v27 = v35;
        v28 = 28;
LABEL_42:
        _os_log_impl(&dword_241701000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
      }
    }
  }

  else
  {
    v20 = *avas::server::gSessionServerLog(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v38 description];
      v22 = v21;
      v23 = this + 8;
      if (*(this + 87) < 0)
      {
        v23 = *v23;
      }

      *buf = 136315906;
      v41 = "AudioApplicationInfoImpl.mm";
      v42 = 1024;
      v43 = 552;
      v44 = 2112;
      *v45 = v21;
      *&v45[8] = 2080;
      *&v45[10] = v23;
      _os_log_impl(&dword_241701000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - %@ {%s}", buf, 0x26u);
    }
  }

LABEL_27:
  if ((v39 & 1) == 0)
  {
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_241764268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if ((a12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioAppInfoImpl::RemoveSession(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = (*(**a2 + 16))();
  v4 = v3;
  avas::server::AudioAppSessionStates::RemoveSession((a1 + 88), v3, &v32);
  v6 = v33;
  if (v33)
  {
    v7 = caulk::expected<std::optional<avas::server::AudioAppSessionStates::AudioAppState>,NSError * {__strong}>::value(&v32);
    v8 = *v7;
    if ((*v7 & 0x10000) != 0)
    {
      if ((v8 & 0x100) != 0)
      {
        v21 = *avas::server::gSessionServerLog(v7);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = "UNMUTED";
          *buf = 136315906;
          v35 = "AudioApplicationInfoImpl.mm";
          v37 = 680;
          v36 = 1024;
          if (v8)
          {
            v22 = "MUTED";
          }

          v38 = 1024;
          v39 = v4;
          v40 = 2080;
          v41 = v22;
          _os_log_impl(&dword_241701000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully removed session 0x%x from AudioApp, new input mute state: %s", buf, 0x22u);
        }

        v23 = [MEMORY[0x277CCABB0] numberWithBool:v8 & 1];
        updated = avas::server::AudioAppInfoImpl::UpdateInputMuteState(a1, v23, 0);

        if (updated)
        {
          v26 = *avas::server::gSessionServerLog(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = avas::server::AudioAppSessionStates::DebugString((a1 + 88));
            v28 = v27;
            v29 = (a1 + 64);
            if (*(a1 + 87) < 0)
            {
              v29 = *v29;
            }

            *buf = 136316162;
            v35 = "AudioApplicationInfoImpl.mm";
            v36 = 1024;
            v37 = 685;
            v38 = 1024;
            v39 = updated;
            v40 = 2112;
            v41 = v27;
            v42 = 2080;
            v43 = v29;
            _os_log_impl(&dword_241701000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update input mute state, err: %d, state: %@ {%s}", buf, 0x2Cu);
          }
        }
      }

      else
      {
        avas::AudioAppState::getPropertyApp((a1 + 152), &cfstr_Inputmute.isa, &v30);
        v17 = *avas::server::gSessionServerLog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v31 BOOLValue];
          v19 = "MUTED";
          if (!v18)
          {
            v19 = "UNMUTED";
          }

          v20 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v20 = *v20;
          }

          *buf = 136316162;
          v35 = "AudioApplicationInfoImpl.mm";
          v36 = 1024;
          v37 = 677;
          v38 = 1024;
          v39 = v4;
          v40 = 2080;
          v41 = v19;
          v42 = 2080;
          v43 = v20;
          _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully removed session 0x%x from AudioApp, no remaining sessions so AudioApp input mute state remains: %s (app: %s)", buf, 0x2Cu);
        }
      }
    }

    else
    {
      v9 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (a1 + 64);
        if (*(a1 + 87) < 0)
        {
          v10 = *v10;
        }

        *buf = 136316162;
        v35 = "AudioApplicationInfoImpl.mm";
        v36 = 1024;
        v37 = 690;
        v38 = 1024;
        v39 = v4;
        v40 = 2080;
        v41 = "input mute";
        v42 = 2080;
        v43 = v10;
        _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully removed session 0x%x from AudioApp, %s state unchanged (app: %s)", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v11 = *avas::server::gSessionServerLog(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = (a1 + 64);
      if (*(a1 + 87) < 0)
      {
        v12 = *v12;
      }

      *buf = 136316162;
      v35 = "AudioApplicationInfoImpl.mm";
      v36 = 1024;
      v37 = 659;
      v38 = 1024;
      v39 = v4;
      v40 = 2112;
      v41 = v32;
      v42 = 2080;
      v43 = v12;
      v13 = v32;
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to remove session 0x%x from AudioApp, error: %@. (app: %s)", buf, 0x2Cu);
    }
  }

  if ((v33 & 1) == 0)
  {
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_241764778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if ((a12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void avas::server::AudioAppInfoImpl::AddProxyAudioApp(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = avas::server::ProcessIdentity::operator==(a2 + 56, a1 + 16);
  if (v8)
  {
    *buf = 1886547832;
    std::allocate_shared[abi:ne200100]<avas::server::AudioAppRemoteClient,std::allocator<avas::server::AudioAppRemoteClient>,AVAudioApplicationType,NSXPCConnection * {__strong}&,avas::server::ProcessIdentity const&,NSString * const {__strong}&,decltype(nullptr),avas::server::ProcessIdentity const&,0>();
  }

  v9 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a2 + 92);
    v11 = *(a1 + 52);
    *buf = 136315906;
    *&buf[4] = "AudioApplicationInfoImpl.mm";
    v14 = 1024;
    v15 = 736;
    v16 = 1024;
    v17 = v10;
    v18 = 1024;
    v19 = v11;
    _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - proxy source process (pid:%d) doesn't match this source process (pid:%d)", buf, 0x1Eu);
  }

  *a4 = 0;
  a4[1] = 0;

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241764A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void ___ZN4avas6server20DefaultAudioAppStateEv_block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"InputMute";
  v3[1] = @"NewSessionsShouldBeInputMuted";
  v4[0] = MEMORY[0x277CBEC28];
  v4[1] = MEMORY[0x277CBEC28];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = avas::server::DefaultAudioAppState(void)::sDefaultState;
  avas::server::DefaultAudioAppState(void)::sDefaultState = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void ___ZN4avas6server14DefaultMXStateEv_block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D27310];
  v4 = v0;
  v5[0] = MEMORY[0x277CBEC28];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = avas::server::DefaultMXState(void)::sDefaultState;
  avas::server::DefaultMXState(void)::sDefaultState = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

void ___ZN4avas6serverL24PrivateApplyMXPropertiesENSt3__110shared_ptrINS0_16AudioSessionInfoEEEP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectENS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 40);
      if (v5)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        obj = *(a1 + 32);
        v6 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
        if (v6)
        {
          v8 = *v25;
          *&v7 = 136315650;
          v19 = v7;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v25 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v24 + 1) + 8 * i);
              v11 = [*(a1 + 32) valueForKey:{v10, v19}];
              v12 = (*(*v5 + 16))(v5);
              avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v5, v12, __p);
              (*(**(*(v5 + 15) + 8) + 64))(cf);
              if (*cf)
              {
                CFRelease(*cf);
                v21[0] = v5;
                v21[1] = v4;
                atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
                avas::server::forbid_acq::PrivateSetPropertyMX(v21, v12, __p, v10, v11);
              }

              v13 = *avas::server::gSessionServerLog(0);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = __p;
                if (v23 < 0)
                {
                  v14 = __p[0];
                }

                *cf = v19;
                *&cf[4] = "AudioApplicationInfoImpl.mm";
                v29 = 1024;
                v30 = 55;
                v31 = 2080;
                v32 = v14;
                _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get MXSessionRef for session: %s", cf, 0x1Cu);
              }

              if (v23 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v6 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
          }

          while (v6);

          obj = *avas::server::gSessionServerLog(v15);
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            v16 = (*(**(a1 + 56) + 88))(*(a1 + 56));
            v17 = (a1 + 72);
            if (*(a1 + 95) < 0)
            {
              v17 = *v17;
            }

            *cf = 136315906;
            *&cf[4] = "AudioApplicationInfoImpl.mm";
            v29 = 1024;
            v30 = 69;
            v31 = 2080;
            v32 = v16;
            v33 = 2080;
            v34 = v17;
            _os_log_impl(&dword_241701000, obj, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - failed to apply MX properties to newly-created session (%s) (app:%s)", cf, 0x26u);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_ea8_40c55_ZTSNSt3__18weak_ptrIN4avas6server16AudioSessionInfoEEE56c58_ZTSNSt3__110shared_ptrIN4avas6server16AudioSessionInfoEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 64);
  a1[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  a1[2].__r_.__value_.__r.__words[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v4 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_241765170(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c55_ZTSNSt3__18weak_ptrIN4avas6server16AudioSessionInfoEEE56c58_ZTSNSt3__110shared_ptrIN4avas6server16AudioSessionInfoEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN4avas6serverL25PrivateApplyAppPropertiesENSt3__18weak_ptrINS0_20AudioApplicationInfoEEENS1_10shared_ptrINS0_16AudioSessionInfoEEEP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectENS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(a1 + 56);
        if (v5)
        {
          v5 = std::__shared_weak_count::lock(v5);
          v6 = v5;
          if (v5)
          {
            v7 = *(a1 + 48);
            if (v7)
            {
              if (*(v7 + 80))
              {
                v22 = *(a1 + 48);
                v23 = v5;
                atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(v24, &v22);
                if (v23)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
                }

                v20 = v4;
                v21 = v3;
                atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
                v8 = avas::server::require_acq::MuteSessionInput(&v20, v24, 1, 0);
                v9 = v21;
                if (v21)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                }

                if (v8)
                {
                  v10 = *avas::server::gSessionServerLog(v9);
                  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
                  {
                    v11 = *(a1 + 88);
                    v12 = (a1 + 64);
                    if (*(a1 + 87) < 0)
                    {
                      v12 = *v12;
                    }

                    *buf = 136315906;
                    v26 = "AudioApplicationInfoImpl.mm";
                    v27 = 1024;
                    v28 = 125;
                    v29 = 1024;
                    v30 = v11;
                    v31 = 2080;
                    v32 = v12;
                    _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to apply input mute to session 0x%x, (app:%s)", buf, 0x22u);
                  }
                }

                avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(v24);
              }

              else
              {
                v17 = *avas::server::gSessionServerLog(v5);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  v18 = *(a1 + 88);
                  v19 = (a1 + 64);
                  if (*(a1 + 87) < 0)
                  {
                    v19 = *v19;
                  }

                  *buf = 136315906;
                  v26 = "AudioApplicationInfoImpl.mm";
                  v27 = 1024;
                  v28 = 117;
                  v29 = 1024;
                  v30 = v18;
                  v31 = 2080;
                  v32 = v19;
                  _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot apply input mute to session 0x%x, audit token invalid (app: %s)", buf, 0x22u);
                }
              }

LABEL_27:
              std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_28:
              std::__shared_weak_count::__release_shared[abi:ne200100](v3);
              goto LABEL_29;
            }
          }
        }

        else
        {
          v6 = 0;
        }

        v14 = *avas::server::gSessionServerLog(v5);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 88);
          *buf = 136315650;
          v26 = "AudioApplicationInfoImpl.mm";
          v27 = 1024;
          v28 = 111;
          v29 = 1024;
          v30 = v15;
          _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - session instance expired (0x%x)", buf, 0x18u);
        }

        if (!v6)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v13 = *avas::server::gSessionServerLog(v2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "AudioApplicationInfoImpl.mm";
    v27 = 1024;
    v28 = 106;
    _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - AVAudioApp instance expired", buf, 0x12u);
  }

  if (v3)
  {
    goto LABEL_28;
  }

LABEL_29:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_241765520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c59_ZTSNSt3__18weak_ptrIN4avas6server20AudioApplicationInfoEEE48c55_ZTSNSt3__18weak_ptrIN4avas6server16AudioSessionInfoEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
  }
}

void sub_241765608(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c59_ZTSNSt3__18weak_ptrIN4avas6server20AudioApplicationInfoEEE48c55_ZTSNSt3__18weak_ptrIN4avas6server16AudioSessionInfoEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void *std::__shared_ptr_emplace<avas::server::AudioAppRemoteClient>::__shared_ptr_emplace[abi:ne200100]<AVAudioApplicationType,NSXPCConnection * {__strong}&,avas::server::ProcessIdentity const&,NSString * const {__strong}&,NSString * const {__strong},avas::server::ProcessIdentity const&,std::allocator<avas::server::AudioAppRemoteClient>,0>(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B300;
  avas::server::AudioAppRemoteClient::AudioAppRemoteClient(a1 + 3, *a2, *a3, a4, *a5, *a6);
  return a1;
}

void std::__shared_ptr_emplace<avas::server::AudioAppRemoteClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<avas::server::AudioAppRemoteClient>>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__shared_ptr_emplace<avas::server::AudioAppRemoteClient>::__shared_ptr_emplace[abi:ne200100]<AVAudioApplicationType,NSXPCConnection * {__strong}&,avas::server::ProcessIdentity const&,NSString * const {__strong}&,decltype(nullptr),avas::server::ProcessIdentity const&,std::allocator<avas::server::AudioAppRemoteClient>,0>(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B300;
  avas::server::AudioAppRemoteClient::AudioAppRemoteClient(a1 + 3, *a2, *a3, a4, *a5, 0);
  return a1;
}

void avas::server::BTPresentationTimePoll::Impl::start(atomic_uchar *this)
{
  v1 = 1;
  atomic_compare_exchange_strong(this + 32, &v1, 0);
  if (v1 == 1)
  {
    v2 = *(this + 1);
    v3[0] = *this;
    v3[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      avas::server::BTPresentationTimePoll::dispatch(v3, 0);

      std::__shared_weak_count::__release_weak(v2);
    }

    else
    {
      avas::server::BTPresentationTimePoll::dispatch(v3, 0);
    }
  }
}

void avas::server::BTPresentationTimePoll::dispatch(void *a1, unsigned int a2)
{
  v3 = dispatch_time(0, 1000000 * a2);
  v4 = dispatch_get_global_queue(33, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3321888768;
  v6[2] = ___ZN4avas6server22BTPresentationTimePoll8dispatchENSt3__18weak_ptrINS1_4ImplEEEj_block_invoke;
  v6[3] = &__block_descriptor_48_ea8_32c66_ZTSNSt3__18weak_ptrIN4avas6server22BTPresentationTimePoll4ImplEEE_e5_v8__0l;
  v5 = a1[1];
  v6[4] = *a1;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_after(v3, v4, v6);

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void ___ZN4avas6server22BTPresentationTimePoll8dispatchENSt3__18weak_ptrINS1_4ImplEEEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = atomic_load(v5 + 32);
        if ((v6 & 1) == 0)
        {
          avas::server::BTPresentationTimePoll::Impl::process(v5);
          v7[0] = v5;
          v7[1] = v4;
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          avas::server::BTPresentationTimePoll::dispatch(v7, 500);
          std::__shared_weak_count::__release_weak(v4);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void avas::server::BTPresentationTimePoll::Impl::process(avas::server::BTPresentationTimePoll::Impl *this)
{
  v18 = *MEMORY[0x277D85DE8];
  *&inAddress.mSelector = *"tptbbolg";
  inAddress.mElement = 0;
  ioDataSize = 40;
  PropertyData = AudioObjectGetPropertyData(*(this + 4), &inAddress, 0, 0, &ioDataSize, outData);
  if (PropertyData)
  {
    v3 = PropertyData;
    v4 = *avas::server::gSessionServerLog(PropertyData);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 4);
      *buf = 136315906;
      v11 = "BTPresentationTimePoll.mm";
      v12 = 1024;
      v13 = 56;
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get AccessoryCurrentAudioTimeStamp (device ID: %u, err: %d)", buf, 0x1Eu);
    }
  }

  else
  {
    (*(*(this + 3) + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __copy_helper_block_ea8_32c66_ZTSNSt3__18weak_ptrIN4avas6server22BTPresentationTimePoll4ImplEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c66_ZTSNSt3__18weak_ptrIN4avas6server22BTPresentationTimePoll4ImplEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<avas::server::BTPresentationTimePoll::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void std::__destroy_at[abi:ne200100]<avas::server::BTPresentationTimePoll::Impl,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void avas::server::AudioAppRemoteClient::AudioAppRemoteClient(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a5;
  v23 = a6;
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *a1 = &unk_28535B3A0;
  *(a1 + 16) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a1 + 88;
  *(a1 + 96) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 112) = v21;
  v11 = *(a4 + 32);
  v12 = *(a4 + 16);
  *(a1 + 120) = *a4;
  *(a1 + 136) = v12;
  *(a1 + 152) = v11;
  *(a1 + 160) = v23;
  v13 = v22;
  *(a1 + 168) = v13;
  v14 = *(a1 + 80);
  v15 = *(a1 + 160);
  v16 = *(a1 + 8);
  v17 = v13;
  v18 = v15;
  v26[0] = 0;
  v27 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v26);
  if (v17)
  {
    v19 = v17;
    v20 = [v17 UTF8String];
  }

  else
  {
    v20 = "?";
  }

  v24.__r_.__value_.__r.__words[0] = v20;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v25);
}

void sub_2417664C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, std::mutex *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a28);

  std::__list_imp<NSDictionary * {__strong}>::clear(a9);
  std::mutex::~mutex(a10);
  BaseOpaqueObject::~BaseOpaqueObject(v28);

  _Unwind_Resume(a1);
}

id avas::server::AudioAppRemoteClient::GetXPCConnection(avas::server::AudioAppRemoteClient *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 14);
  std::mutex::unlock((this + 16));

  return v2;
}

id avas::server::AudioAppRemoteClient::GetDeferredMessages(avas::server::AudioAppRemoteClient *this)
{
  std::mutex::lock((this + 16));
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = *(this + 12); i != (this + 88); i = *(i + 8))
  {
    v4 = *(i + 16);
    [v2 addObject:v4];
  }

  std::__list_imp<NSDictionary * {__strong}>::clear(this + 11);
  std::mutex::unlock((this + 16));

  return v2;
}

void avas::server::AudioAppRemoteClient::DeferPropertyChangeCallback(avas::server::AudioAppRemoteClient *this, NSString *a2, NSDictionary *a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  std::mutex::lock((this + 16));
  if (*(this + 14))
  {
    v10 = this + 88;
    v11 = *(this + 13);
    if (a4)
    {
      v12 = *(this + 12);
      v13 = v7;
      if (v12 == v10)
      {
LABEL_7:

        if (v12 != v10)
        {
          v16 = *v12;
          v15 = *(v12 + 1);
          *(v16 + 8) = v15;
          *v15 = v16;
          --*(this + 13);

          operator delete(v12);
        }
      }

      else
      {
        do
        {
          v14 = [*(v12 + 2) objectForKey:v13];

          if (v14)
          {
            goto LABEL_7;
          }

          v12 = *(v12 + 1);
        }

        while (v12 != v10);
      }
    }

    v17 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (this + 176);
      if (*(this + 199) < 0)
      {
        v18 = *v18;
      }

      *buf = 136316162;
      v24 = "AudioApplicationInfoRemoteClient.mm";
      v25 = 1024;
      v26 = 90;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 2080;
      v32 = v18;
      _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d dispatching %@, payload: %@ to audio app client {%s}", buf, 0x30u);
    }

    if (v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    v21 = v7;
    v22 = v19;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  std::mutex::unlock((this + 16));

  v20 = *MEMORY[0x277D85DE8];
}

void sub_241766928(_Unwind_Exception *a1)
{
  std::mutex::unlock((v3 + 16));

  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioAppRemoteClient::PrintObject(avas::server::AudioAppRemoteClient *this, __sFILE *a2)
{
  v2 = this + 176;
  if (*(this + 199) < 0)
  {
    v2 = *v2;
  }

  return fprintf(a2, "<AudioAppRemoteClient { %s }>", v2);
}

void avas::server::AudioAppRemoteClient::~AudioAppRemoteClient(avas::server::AudioAppRemoteClient *this)
{
  *this = &unk_28535B3A0;
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  std::__list_imp<NSDictionary * {__strong}>::clear(this + 11);
  std::mutex::~mutex((this + 16));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  *this = &unk_28535B3A0;
  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  std::__list_imp<NSDictionary * {__strong}>::clear(this + 11);
  std::mutex::~mutex((this + 16));
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x245CEEB60);
}

void ___ZN4avas6server20LegacySessionManager8InstanceEv_block_invoke()
{
  objc_initWeak(&location, qword_281338E70);
  objc_copyWeak(&v0, &location);
  avas::SetInProcessNotificationCenterServerFactory();
  objc_destroyWeak(&v0);
  objc_destroyWeak(&location);
}

void sub_241766BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

id ___ZN4avas6server20LegacySessionManager8InstanceEv_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

void avas::server::LegacySessionManager::LegacySessionManager(avas::server::LegacySessionManager *this, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(this + 2) = 0;
  *this = &unk_28535B3F0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = this + 48;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  *(this + 16) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  *(this + 19) = 0;
  *(this + 18) = 0;
  *(this + 30) = 0;
  *(this + 17) = this + 144;
  *(this + 20) = 850045863;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 212) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 29) = this + 240;
  *(this + 35) = 0;
  *(this + 34) = 0;
  *(this + 33) = this + 272;
  *(this + 72) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  operator new();
}

void sub_241766F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::unique_ptr<caulk::synchronized<avas::server::DeviceTimeObserver,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::DeviceTimeObserver>>>::reset[abi:ne200100](v13, 0);
  caulk::synchronized<avas::server::LegacySessionManager::MicrophoneInjectionManager,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::LegacySessionManager::MicrophoneInjectionManager>>::~synchronized(v18 - 16);
  std::mutex::~mutex(v17);
  std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>>>::destroy(v16, *(v12 + 144));
  std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::destroy(v15, *(v12 + 120));
  v20 = *(v12 + 96);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::destroy(v14, *v11);
  caulk::synchronized<avas::server::SessionCollection,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::SessionCollection>>::~synchronized(a10);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::DumpDebugState(avas::server::LegacySessionManager *this, __sFILE *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    os_unfair_lock_lock(this + 2);
    fprintf(a2, "There are %u sessions\n", *(this + 14) + *(this + 8));
    avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(buf, *(this + 2), this + 24, *(this + 5), this + 48);
    avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v29, this + 24, this + 24, this + 48, this + 48);
    v18 = *buf;
    v19 = *&buf[16];
    v20 = v36;
    v21 = v37;
    v22 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v39;
    v24 = v40;
    v25 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v42;
    v27 = v43;
    v28 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v29[0];
    v17 = v29[2];
    v4 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v5;
    v15 = v4;
    v7 = 0;
    while (v18 != v16 || v19 != v17)
    {
      v8 = (*(*v21 + 88))(v21);
      fprintf(a2, "%u: %s\n", ++v7, v8);
      (*(*v21 + 96))(v33);
      v9 = v33[0];
      v10 = v33[1];
      while (v9 != v10)
      {
        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        fprintf(a2, "\t%s\n", v11);
        v9 += 24;
      }

      v34 = v33;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
      avas::server::SessionCollection::SessionPresentingIterator::operator++(&v18);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    os_unfair_lock_unlock(this + 2);
  }

  else
  {
    v12 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 129;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d State dump file null", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24176733C(_Unwind_Exception *a1)
{
  avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator((v2 - 208));
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator(avas::server::SessionCollection::SessionPresentingIterator *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

BOOL avas::server::LegacySessionManager::SessionIDIsValid(avas::server::LegacySessionManager *this, int a2)
{
  avas::server::LegacySessionManager::FindSession(this, a2, &v4);
  v2 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

void avas::server::LegacySessionManager::CreateProxySession(os_unfair_lock_s *this, const avas::server::SessionCreationDescription *a2, NSXPCConnection *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(this + 72);
  if (*(a2 + 10) == 1886550137)
  {
    v7 = *(a2 + 12);
    v6 = *(a2 + 13);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v8 = *(v7 + 96);
      if (v8)
      {
        v9 = *(v7 + 104);
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        avas::server::AudioSessionRemoteClientManager::AddProxyClient(v8, a2, v5);
      }

      v12 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v12 process:? delegate:?];
    }

    v11 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v11 process:? delegate:?];
  }

  v10 = _os_crash();
  [AVAudioSessionRemoteXPCClient initWithServer:v10 process:? delegate:?];
}

void sub_24176770C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  os_unfair_lock_unlock(v27 + 72);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::FindSessionsForConnection(os_unfair_lock_s *this@<X0>, NSXPCConnection *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  os_unfair_lock_lock(this + 2);
  v6 = *&this[4]._os_unfair_lock_opaque;
  v7 = v5;
  if (v6 != &this[6])
  {
    do
    {
      v8 = *(v6 + 5);
      v9 = *(v6 + 6);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(&v15 + 1) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *(&v15 + 1) = 0;
      }

      *&v15 = v8;
      (*(*v8 + 72))(&v13);
      if (*(v13 + 176) == v7)
      {
        std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::push_back[abi:ne200100](a3, &v15);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != &this[6]);
  }

  os_unfair_lock_unlock(this + 2);
}

void sub_241767904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  os_unfair_lock_unlock(v12 + 2);
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

BOOL avas::server::LegacySessionManager::RemoveSession(os_unfair_lock_s *this, uint64_t a2, const avas::server::ProcessIdentity *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = this + 2;
  v7 = this + 4;
  os_unfair_lock_lock(this + 2);
  v13[0] = v6;
  v13[1] = v7;
  v8 = objc_opt_new();
  v9 = avas::server::LegacySessionManager::PrivateRemoveSession(this, v13, a2, a3, v8);
  v10 = *avas::server::gSessionServerLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "ServerSessionManager.mm";
    v16 = 1024;
    v17 = 439;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RemoveSession summary: %@", buf, 0x1Cu);
  }

  os_unfair_lock_unlock(v6);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL avas::server::LegacySessionManager::PrivateRemoveSession(os_unfair_lock_t *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v122 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v98 = a1;
  v99 = a3;
  v10 = a1[37];
  if (v10)
  {
    os_unfair_lock_lock(a1[37]);
    avas::server::DeviceTimeObserver::removeSession(&v10[2], a3);
    os_unfair_lock_unlock(v10);
  }

  v110 = 0uLL;
  v111 = 0;
  location = 0;
  v11 = *(a2 + 8);
  v12 = *v11;
  buf[0] = 0;
  buf[4] = 0;
  v13 = avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(a1, v12, (v11 + 8), a3, a4, buf);
  v14 = v13;
  v15 = *(a2 + 8) + 8;
  v95 = v15 != v13;
  if (v15 == v13)
  {
    v94 = 0;
    v92 = 0;
  }

  else
  {
    v17 = v13[5];
    v16 = v13[6];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(v17);
    v19 = *(v17 + 96);
    if (!v19)
    {
      v86 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v86 process:? delegate:?];
    }

    v97 = v16;
    v20 = *(v17 + 104);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::AudioSessionRemoteClientManager::GetRemoteClient(v19, v99, &v107);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v107)
    {
      SessionType = *(v107 + 168);
    }

    v22 = *avas::server::gSessionServerLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v17, v99, v115);
      v104[0] = 0;
      v105 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v104);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v104);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__p);
    }

    v96 = (*(*v17 + 32))(v17);
    v23 = MEMORY[0x277CCACA8];
    v24 = bswap32(SessionType);
    *&v115[1] = v24;
    if ((v24 - 32) > 0x5E || ((v24 >> 8) - 32) > 0x5E || ((v24 << 8 >> 24) - 32) > 0x5E || ((v24 >> 24) - 32) > 0x5E)
    {
      std::to_string(buf, SessionType);
    }

    else
    {
      strcpy(&v115[5], "'");
      v115[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(buf, v115);
    }

    if (buf[23] >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    v26 = [v23 stringWithUTF8String:v25];
    v27 = [v23 stringWithFormat:@"removed: %@ (mxRef: %llx)", v26, v96];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", v99];
    [v9 setValue:v27 forKey:v28];

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v29 = *(v17 + 96);
    if (!v29)
    {
      v87 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v87 process:? delegate:?];
    }

    v30 = *(v17 + 104);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = avas::server::AudioSessionRemoteClientManager::SessionIDBelongsToProxyClient(v29, v99);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v93)
    {
      v31 = *(v17 + 96);
      if (!v31)
      {
        v88 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v88 process:? delegate:?];
      }

      v32 = *(v17 + 104);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionRemoteClientManager::RemoveProxyClient(v31, v99);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(*(a2 + 8), v14);
      v92 = 0;
      v91 = 0u;
    }

    else
    {
      v33 = *(v17 + 96);
      if (!v33)
      {
        v89 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v89 process:? delegate:?];
      }

      v34 = *(v17 + 104);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionRemoteClientManager::GetProxySessionIDs(v33, buf);
      v91 = *buf;
      memset(buf, 0, 24);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      avas::server::AudioSessionInfo::GetSiblingSessions(v17, buf);
      std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__vdeallocate(&v110);
      v110 = *buf;
      v111 = *&buf[16];
      memset(buf, 0, 24);
      *v115 = buf;
      std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](v115);
      avas::server::LegacySessionManager::RemoveSessionFromMicrophoneInjectionModeMap(a1, v99, buf);
      v92 = buf[16];
      v90 = *&buf[8];
      objc_storeWeak(&location, *(v17 + 112));
      v103[0] = v17;
      v103[1] = v97;
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::LegacySessionManager::PrivateRemoveSessionFromApplication(a1, v35, v103);
      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
      }

      BindingType = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(*(a2 + 8), v14);
      v37 = *(a2 + 8);
      v38 = *(v37 + 24);
      if (v38 == (v37 + 32))
      {
        v40 = 0;
        v39 = 0;
      }

      else
      {
        v39 = 0;
        v40 = 0;
        v41 = v99;
        do
        {
          BindingType = (*(*v38[5] + 40))(v38[5], v41);
          if (BindingType)
          {
            BindingType = avas::server::IONodeSessionInfo::GetBindingType(v38[5]);
            if (BindingType == 1651733091)
            {
              v42 = *avas::server::gSessionServerLog(BindingType);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = *(v38 + 8);
                *buf = 136315906;
                *&buf[4] = "ServerSessionManager.mm";
                *&buf[12] = 1024;
                *&buf[14] = 515;
                *&buf[18] = 1024;
                *&buf[20] = v43;
                *&buf[24] = 1024;
                *&buf[26] = v99;
                _os_log_impl(&dword_241701000, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidating but not removing IONodeSession (0x%x) since source session (0x%x) being removed", buf, 0x1Eu);
              }

              v44 = (*(*v38[5] + 32))(v38[5]);
              avas::server::IONodeSessionInfo::SetInvalidated(v38[5]);
              v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalidated: 'node::bsrc' (mxRef: %llx)", v44];
              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", *(v38 + 8)];
              [v9 setValue:v45 forKey:v46];

              ++v39;
              v41 = v99;
            }

            else
            {
              ++v40;
            }
          }

          v47 = v38[1];
          if (v47)
          {
            do
            {
              v48 = v47;
              v47 = *v47;
            }

            while (v47);
          }

          else
          {
            do
            {
              v48 = v38[2];
              v49 = *v48 == v38;
              v38 = v48;
            }

            while (!v49);
          }

          v38 = v48;
        }

        while (v48 != (*(a2 + 8) + 32));
      }

      v50 = *avas::server::gSessionServerLog(BindingType);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = "ServerSessionManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 531;
        *&buf[18] = 1024;
        *&buf[20] = v99;
        *&buf[24] = 2048;
        *&buf[26] = (*(&v110 + 1) - v110) >> 4;
        *&buf[34] = 2048;
        *&buf[36] = v40;
        v113 = 2048;
        v114 = v39;
        _os_log_impl(&dword_241701000, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session 0x%x being removed has %zu siblings, %zu weakNodes, %zu strongNodes", buf, 0x36u);
      }
    }

    v51 = v108;
    if (v108)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
    }

    if (v97)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v97);
    }

    v52 = v91;
    v94 = v91;
    if (v93)
    {
      v95 = 1;
      goto LABEL_105;
    }

    if (v91 != *(&v91 + 1))
    {
      do
      {
        v53 = *v52;
        v54 = *(a2 + 8);
        v57 = *(v54 + 8);
        v55 = v54 + 8;
        v56 = v57;
        if (!v57)
        {
          goto LABEL_81;
        }

        v58 = v55;
        do
        {
          v59 = *(v56 + 32);
          v60 = v59 >= v53;
          v61 = v59 < v53;
          if (v60)
          {
            v58 = v56;
          }

          v56 = *(v56 + 8 * v61);
        }

        while (v56);
        if (v58 != v55 && *(v58 + 32) <= v53)
        {
          v63 = MEMORY[0x277CCACA8];
          strcpy(v115, "'prxy'");
          std::string::basic_string[abi:ne200100]<0>(buf, v115);
          if (buf[23] >= 0)
          {
            v64 = buf;
          }

          else
          {
            v64 = *buf;
          }

          v65 = [v63 stringWithUTF8String:v64];
          v66 = [v63 stringWithFormat:@"removed: %@ (mxRef: %llx)", v65, v96];
          v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", v53];
          [v9 setValue:v66 forKey:v67];

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v51 = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(*(a2 + 8), v58);
        }

        else
        {
LABEL_81:
          v62 = *avas::server::gSessionServerLog(v51);
          v51 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
          if (v51)
          {
            *buf = 136315650;
            *&buf[4] = "ServerSessionManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 541;
            *&buf[18] = 1024;
            *&buf[20] = v53;
            _os_log_impl(&dword_241701000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning - failed to find proxy session 0x%x to remove", buf, 0x18u);
          }
        }

        ++v52;
      }

      while (v52 != *(&v91 + 1));
    }
  }

  v69 = *(&v110 + 1);
  v68 = v110;
  for (i = v9; v68 != v69; v68 += 2)
  {
    v71 = v68[1];
    if (v71)
    {
      v72 = *v68;
      atomic_fetch_add_explicit(&v71->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v73 = std::__shared_weak_count::lock(v71);
      if (v73)
      {
        v74 = v73;
        if (v72)
        {
          v75 = (*(*v72 + 16))(v72);
          v76 = (*(*v72 + 80))(v72);
          v77 = *v76;
          v78 = *(v76 + 16);
          *&buf[32] = *(v76 + 32);
          *buf = v77;
          *&buf[16] = v78;
          v79 = *avas::server::gSessionServerLog(v76);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *v115 = 136315906;
            *&v115[4] = "ServerSessionManager.mm";
            v116 = 1024;
            v117 = 567;
            v118 = 1024;
            v119 = v75;
            v120 = 1024;
            v121 = v99;
            _os_log_impl(&dword_241701000, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing sibling session 0x%x, because its source session 0x%x is being removed", v115, 0x1Eu);
          }

          avas::server::LegacySessionManager::PrivateRemoveSession(v98, a2, v75, buf, i);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      std::__shared_weak_count::__release_weak(v71);
    }
  }

  v80 = v92;
  if (!v90)
  {
    v80 = 0;
  }

  if (v80 == 1)
  {
    v81 = objc_loadWeakRetained(&location);
    v82 = v81 == 0;

    if (!v82)
    {
      v83 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN4avas6server20LegacySessionManager20PrivateRemoveSessionERN5caulk10sync_guardINS0_17SessionCollectionENS2_4mach11unfair_lockEEEjRKNS0_15ProcessIdentityEP19NSMutableDictionary_block_invoke;
      block[3] = &unk_278CEAF48;
      objc_copyWeak(&v101, &location);
      v102 = v99;
      dispatch_async(v83, block);

      objc_destroyWeak(&v101);
    }
  }

LABEL_105:
  objc_destroyWeak(&location);
  if (v94)
  {
    operator delete(v94);
  }

  *buf = &v110;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](buf);

  v84 = *MEMORY[0x277D85DE8];
  return v95;
}