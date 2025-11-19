uint64_t boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sqrt_expr_evaluator_pss3<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4, double a5, double a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2, a3, a4, a5, a6));
  v39 = v9;
  v40 = v10;
  v14 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, a2 + 130, a3 + 130, v11, v12, v13));
  v37 = v14;
  v38 = v15;
  if ((v9 < 0.0 || v14 < 0.0) && (v9 > 0.0 || v14 > 0.0))
  {
    boost::polygon::detail::extended_int<64ul>::mul(v35, a2, a2);
    boost::polygon::detail::extended_int<64ul>::mul(__src, v35, a3);
    boost::polygon::detail::extended_int<64ul>::mul(v33, a2 + 65, (a2 + 65));
    boost::polygon::detail::extended_int<64ul>::mul(v34, v33, (a3 + 65));
    boost::polygon::detail::extended_int<64ul>::add(&__dst, __src, v34);
    boost::polygon::detail::extended_int<64ul>::mul(v32, a2 + 130, (a2 + 130));
    boost::polygon::detail::extended_int<64ul>::dif (v44, &__dst, v32);
    boost::polygon::detail::extended_int<64ul>::mul(v29, a2 + 195, (a2 + 195));
    boost::polygon::detail::extended_int<64ul>::mul(v30, v29, a3);
    boost::polygon::detail::extended_int<64ul>::mul(v31, v30, (a3 + 65));
    boost::polygon::detail::extended_int<64ul>::dif (v46, v44, v31);
    v44[0] = 1;
    v44[64] = 1;
    boost::polygon::detail::extended_int<64ul>::mul(v34, a2, (a2 + 65));
    boost::polygon::detail::extended_int<64ul>::mul(v33, a2 + 130, (a2 + 195));
    boost::polygon::detail::extended_int<64ul>::dif (v35, v34, v33);
    __dst = 2;
    v43 = 1;
    boost::polygon::detail::extended_int<64ul>::mul(__src, v35, &__dst);
    memcpy(v47, __src, sizeof(v47));
    memcpy(v45, a3 + 195, sizeof(v45));
    *&v20 = COERCE_DOUBLE(boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval2(a1, v46, v44, v17, v18, v19));
    v22 = v21;
    v23 = *&v20;
    v24 = COERCE_DOUBLE(boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator-(&v39, &v37));
    v26 = v22 - v25;
    v27 = frexp(v23 / v24, v42);
    v42[0] += v26;
    result = *&v27;
  }

  else
  {
    result = boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>::operator+(&v39, &v37);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

double boost::polygon::detail::operator+<boost::polygon::detail::robust_fpt<double>>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v10 = *a2;
  v11 = v4;
  v5 = boost::polygon::detail::robust_fpt<double>::operator+(&v11, &v10);
  v6 = a1[1];
  v8 = a2[1];
  v9 = v6;
  boost::polygon::detail::robust_fpt<double>::operator+(&v9, &v8);
  return v5;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss()
{
  v0 = MEMORY[0x28223BE20]();
  v84 = v4;
  v80 = v5;
  v82 = v6;
  v8 = v7;
  v83 = v0;
  v109 = *MEMORY[0x277D85DE8];
  v9 = v1[2];
  v10 = *v1;
  v11 = v9 - v10;
  if (v9 > v10)
  {
    v12 = 1;
LABEL_3:
    v103[0] = v11;
    goto LABEL_6;
  }

  if (v11 < 0)
  {
    v11 = v10 - v9;
    v12 = -1;
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  v104 = v12;
  v13 = v2[2];
  v14 = *v2;
  v15 = v13 - v14;
  if (v13 > v14)
  {
    v16 = 1;
LABEL_8:
    v105 = v15;
    goto LABEL_11;
  }

  if (v15 < 0)
  {
    v15 = v14 - v13;
    v16 = -1;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_11:
  v106 = v16;
  v17 = v3[2];
  v18 = *v3;
  v19 = v17 - v18;
  if (v17 > v18)
  {
    v20 = 1;
LABEL_13:
    v107 = v19;
    goto LABEL_16;
  }

  if (v19 < 0)
  {
    v19 = v18 - v17;
    v20 = -1;
    goto LABEL_13;
  }

  v20 = 0;
LABEL_16:
  v108 = v20;
  v21 = v1[3];
  v22 = v1[1];
  v23 = v21 - v22;
  if (v21 > v22)
  {
    v24 = 1;
LABEL_18:
    v97[0] = v23;
    goto LABEL_21;
  }

  if (v23 < 0)
  {
    v23 = v22 - v21;
    v24 = -1;
    goto LABEL_18;
  }

  v24 = 0;
LABEL_21:
  v98 = v24;
  v25 = v2[3];
  v26 = v2[1];
  v27 = v25 - v26;
  if (v25 > v26)
  {
    v28 = 1;
LABEL_23:
    v99 = v27;
    goto LABEL_26;
  }

  if (v27 < 0)
  {
    v27 = v26 - v25;
    v28 = -1;
    goto LABEL_23;
  }

  v28 = 0;
LABEL_26:
  v100 = v28;
  v29 = v3[3];
  v30 = v3[1];
  v31 = v29 - v30;
  if (v29 <= v30)
  {
    if ((v31 & 0x8000000000000000) == 0)
    {
      v32 = 0;
      goto LABEL_31;
    }

    v31 = v30 - v29;
    v32 = -1;
  }

  else
  {
    v32 = 1;
  }

  v101 = v31;
LABEL_31:
  v102 = v32;
  v33 = v21 * v10 - v22 * v9;
  if (v33 < 1)
  {
    if (v33 < 0)
    {
      v91[0] = -v33;
      if (-v33 >> 32)
      {
        v34 = -2;
      }

      else
      {
        v34 = -1;
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v91[0] = v33;
    if (HIDWORD(v33))
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }
  }

  v92 = v34;
  v35 = v25 * v14 - v26 * v13;
  if (v35 < 1)
  {
    if (v35 < 0)
    {
      v93 = -v35;
      if (-v35 >> 32)
      {
        v36 = -2;
      }

      else
      {
        v36 = -1;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v93 = v35;
    if (HIDWORD(v35))
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }
  }

  v94 = v36;
  v37 = v29 * v18 - v30 * v17;
  if (v37 < 1)
  {
    if (v37 < 0)
    {
      v95 = -v37;
      if (-v37 >> 32)
      {
        v38 = -2;
      }

      else
      {
        v38 = -1;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v95 = v37;
    if (HIDWORD(v37))
    {
      v38 = 2;
    }

    else
    {
      v38 = 1;
    }
  }

  v39 = 0;
  v96 = v38;
  do
  {
    boost::polygon::detail::extended_int<64ul>::mul(__dst, (v103 + v39), v103 + v39);
    boost::polygon::detail::extended_int<64ul>::mul(v86, (v97 + v39), v97 + v39);
    boost::polygon::detail::extended_int<64ul>::add(__src, __dst, v86);
    memcpy(&v88[v39 / 4], __src, 0x104uLL);
    v39 += 260;
  }

  while (v39 != 780);
  v40 = 0;
  v41 = -1;
  v42 = 1;
  do
  {
    v43 = v41;
    if (v40 == 130)
    {
      v44 = 0;
    }

    else
    {
      v44 = v42;
    }

    v45 = 65 * v44;
    if (!(v40 * 4))
    {
      v43 = 2;
    }

    v46 = 65 * v43;
    boost::polygon::detail::extended_int<64ul>::mul(v86, v103 + 65 * v44, v97 + 260 * v43);
    boost::polygon::detail::extended_int<64ul>::mul(v85, v103 + v46, v97 + 4 * v45);
    boost::polygon::detail::extended_int<64ul>::dif (__dst, v86, v85);
    memcpy(&__src[v40], __dst, 0x104uLL);
    ++v41;
    v40 += 65;
    ++v42;
  }

  while (v40 != 195);
  v50 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v83, __src, v88, v47, v48, v49);
  v52 = ldexp(*&v50, v51);
  if (v80)
  {
    v53 = 0;
    v54 = -1;
    v55 = 1;
    do
    {
      v56 = v54;
      if (v53 == 130)
      {
        v57 = 0;
      }

      else
      {
        v57 = v55;
      }

      v58 = 65 * v57;
      if (!(v53 * 4))
      {
        v56 = 2;
      }

      v59 = 65 * v56;
      boost::polygon::detail::extended_int<64ul>::mul(v86, v97 + 65 * v57, v91 + 260 * v56);
      boost::polygon::detail::extended_int<64ul>::mul(v85, v97 + v59, v91 + 4 * v58);
      boost::polygon::detail::extended_int<64ul>::dif (__dst, v86, v85);
      memcpy(&__src[v53], __dst, 0x104uLL);
      ++v54;
      v53 += 65;
      ++v55;
    }

    while (v53 != 195);
    v63 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v83, __src, v88, v60, v61, v62);
    *(v8 + 8) = ldexp(*&v63, v64) / v52;
  }

  if ((v82 & 1) != 0 || v84)
  {
    v81 = v8;
    v65 = 0;
    v90[64] = 0;
    v66 = -1;
    v67 = 1;
    do
    {
      v68 = v66;
      if (v65 == 130)
      {
        v69 = 0;
      }

      else
      {
        v69 = v67;
      }

      v70 = 65 * v69;
      if (!(v65 * 4))
      {
        v68 = 2;
      }

      v71 = 65 * v68;
      boost::polygon::detail::extended_int<64ul>::mul(v86, v103 + 65 * v69, v91 + 260 * v68);
      boost::polygon::detail::extended_int<64ul>::mul(v85, v103 + v71, v91 + 4 * v70);
      boost::polygon::detail::extended_int<64ul>::dif (__dst, v86, v85);
      memcpy(&__src[v65], __dst, 0x104uLL);
      if (v84)
      {
        boost::polygon::detail::extended_int<64ul>::mul(v86, &__src[v65], v97 + v65 * 4);
        boost::polygon::detail::extended_int<64ul>::add(__dst, v90, v86);
        memcpy(v90, __dst, sizeof(v90));
      }

      ++v66;
      v65 += 65;
      ++v67;
    }

    while (v65 != 195);
    if (v82)
    {
      v75 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v83, __src, v88, v72, v73, v74);
      v72 = ldexp(*&v75, v76) / v52;
      *v81 = v72;
    }

    if (v84)
    {
      v88[195] = 1;
      v88[259] = 1;
      v77 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(v83, __src, v88, v72, v73, v74);
      *(v81 + 16) = ldexp(*&v77, v78) / v52;
    }
  }

  v79 = *MEMORY[0x277D85DE8];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v7 = *(a2 - 8);
    v5 = (a2 - 8);
    v6 = v7;
    v8 = (result + 8 * v4);
    v9 = *v8;
    v10 = *(v7 + 32);
    v11 = *(*v8 + 32);
    v12 = *(v7 + 24) < *(*v8 + 24);
    if (v10 != v11)
    {
      v12 = v10 < v11;
    }

    if (v12)
    {
      do
      {
        *v5 = v9;
        v5 = v8;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v8 = (result + 8 * v4);
        v9 = *v8;
        v13 = *(*v8 + 32);
        v14 = *(v6 + 24) < *(*v8 + 24);
        if (v10 != v13)
        {
          v14 = v10 < v13;
        }
      }

      while (v14);
      *v5 = v6;
    }
  }

  return result;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = a1[4];
  v14 = a1[5];
  if (v13 >= v14)
  {
    v16 = a1[3];
    v17 = (v13 - v16) >> 5;
    v18 = v17 + 1;
    if ((v17 + 1) >> 59)
    {
      std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
    }

    v19 = v14 - v16;
    if (v19 >> 4 > v18)
    {
      v18 = v19 >> 4;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFE0)
    {
      v20 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>((a1 + 3), v20);
    }

    v21 = (32 * v17);
    *v21 = v12;
    v21[1] = v11;
    v21[2] = 0;
    v21[3] = 0;
    v15 = 32 * v17 + 32;
    v22 = a1[3];
    v23 = a1[4] - v22;
    v24 = 32 * v17 - v23;
    memcpy(v21 - v23, v22, v23);
    v25 = a1[3];
    a1[3] = v24;
    a1[4] = v15;
    a1[5] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v13 = v12;
    v13[1] = v11;
    v15 = (v13 + 4);
    v13[2] = 0;
    v13[3] = 0;
  }

  a1[4] = v15;
  v26 = v15 - 32;
  a5[1] = v26;
  a6[1] = v26;
  v27 = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3);
  v34 = 0u;
  v35 = 0u;
  if (boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    v28 = v27 | 2;
  }

  else
  {
    v28 = v27;
  }

  v36 = 0;
  v37 = v28;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v34);
  v29 = a1[7];
  *(v29 - 48) = *a1 + 24 * *(a2 + 16);
  v29 -= 48;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = v28;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v34);
  v30 = a1[7];
  *(v30 - 6) = *a1 + 24 * *(a3 + 16);
  v30 -= 6;
  *(v29 + 16) = v30;
  v30[1] = v26;
  v30[2] = v29;
  a5[4] = v29;
  *(v29 + 24) = a5;
  v31 = a5[2];
  *(v31 + 24) = a6;
  a6[4] = v31;
  v32 = a6[2];
  *(v32 + 24) = v30;
  v30[4] = v32;
  return v29;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = v4[1];
      v8 = *(v7 + 32);
      v9 = *(*v4 + 32);
      v10 = *(v7 + 24) < *(*v4 + 24);
      if (v8 != v9)
      {
        v10 = v8 < v9;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v4 = (v4 + v12);
      if (!v11)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

BOOL boost::polygon::voronoi_diagram_traits<double>::vertex_equality_predicate_type::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v3 = 0x8000000000000000 - *a2;
  }

  if (v4 >= 0)
  {
    v4 = 0x8000000000000000 - v4;
  }

  if (v3 - v4 <= 0x80)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 > v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 - v3 > 0x80;
  }

  if (v6)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a3[1];
  if (v8 >= 0)
  {
    v8 = 0x8000000000000000 - v8;
  }

  v10 = 0x8000000000000000 - v9;
  if (v9 < 0)
  {
    v10 = a3[1];
  }

  if (v8 - v10 <= 0x80)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v8 > v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10 - v8 > 0x80;
  }

  return !v12;
}

void boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::remove_edge(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v3 = *(v2[4] + 16);
  if (v3 != v2)
  {
    v4 = a2[1];
    v5 = *(v2[4] + 16);
    do
    {
      v5[1] = v4;
      v5 = *(v5[4] + 16);
    }

    while (v5 != v2);
  }

  v6 = v2[3];
  v7 = *(v2[2] + 24);
  v8 = *(*(a2[4] + 16) + 16);
  *(v8 + 24) = v7;
  *(v7 + 32) = v8;
  v9 = v3[2];
  *(v6 + 32) = v9;
  *(v9 + 24) = v6;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::~voronoi_builder(uint64_t a1)
{
  std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy(a1 + 128, *(a1 + 136));
  std::__list_imp<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>::clear((a1 + 104));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

float64_t Decompose@<D0>(const simd_float4x4 *a1@<X0>, uint64_t a2@<X8>)
{
  TransformationMatrixFromMatrix(a1, v19);
  if (!WebCore::TransformationMatrix::decompose4(v19, &v9))
  {
    abort();
  }

  *&v3 = vcvt_f32_f64(v9);
  *&v4 = v10;
  *(&v3 + 1) = __PAIR64__(HIDWORD(v9.f64[1]), v4);
  *&v5 = vrev64_s32(vcvt_f32_f64(v11));
  *&v6 = v12;
  *(&v5 + 1) = __PAIR64__(HIDWORD(v11.f64[1]), v6);
  *a2 = v3;
  *(a2 + 16) = v5;
  *&v3 = vcvt_f32_f64(v15);
  *&v7 = v16;
  *(&v3 + 1) = __PAIR64__(HIDWORD(v15.f64[1]), v7);
  *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14);
  *(a2 + 48) = v3;
  result = v18.f64[0];
  *(a2 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v18);
  return result;
}

float64x2_t TransformationMatrixFromMatrix@<Q0>(const simd_float4x4 *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = a1->columns[1];
  v3 = a1->columns[2];
  v4 = a1->columns[3];
  v5 = vcvt_hight_f64_f32(a1->columns[0]);
  *a2 = vcvtq_f64_f32(*a1->columns[0].f32);
  a2[1] = v5;
  a2[2] = vcvtq_f64_f32(*v2.f32);
  a2[3] = vcvt_hight_f64_f32(v2);
  a2[4] = vcvtq_f64_f32(*v3.f32);
  a2[5] = vcvt_hight_f64_f32(v3);
  result = vcvtq_f64_f32(*v4.f32);
  a2[6] = result;
  a2[7] = vcvt_hight_f64_f32(v4);
  return result;
}

double Recompose(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v18 = vcvtq_f64_f32(*a1);
  v19 = *(&v1 + 2);
  v3 = vcvtq_f64_f32(*v2.i8);
  v20 = vextq_s8(v3, v3, 8uLL);
  v3.i64[0] = vextq_s8(v2, v2, 8uLL).u64[0];
  v4 = a1[2];
  v5 = a1[3];
  v21 = vcvtq_f64_f32(vzip1_s32(*v3.i8, *v4.i8));
  v3.i64[0] = vextq_s8(v4, v4, 8uLL).u64[0];
  v22 = vcvtq_f64_f32(vext_s8(*v4.i8, *v3.i8, 4uLL));
  v23 = vcvtq_f64_f32(vext_s8(*v3.i8, *v5.i8, 4uLL));
  v24 = vcvtq_f64_f32(vext_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL), 4uLL));
  v6 = a1[4];
  v25 = vcvtq_f64_f32(*v6.f32);
  v26 = vcvt_hight_f64_f32(v6);
  v8 = 0x3FF0000000000000;
  v9 = 0u;
  v10 = 0u;
  v11 = 0x3FF0000000000000;
  v12 = 0u;
  v13 = 0u;
  v14 = 0x3FF0000000000000;
  v15 = 0u;
  v16 = 0u;
  v17 = 0x3FF0000000000000;
  WebCore::TransformationMatrix::recompose4(&v8, &v18);
  return TransformationMatrixToMatrix(&v8);
}

double TransformationMatrixToMatrix(float64x2_t *a1)
{
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), a1[1]).u64[0];
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[2]), a1[3]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[4]), a1[5]);
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[6]), a1[7]);
  return result;
}

void Interpolate(const simd_float4x4 *a1, const simd_float4x4 *a2, float a3)
{
  TransformationMatrixFromMatrix(a1, v6);
  TransformationMatrixFromMatrix(a2, v5);
  WebCore::TransformationMatrix::blend(v5, v6, a3);
  TransformationMatrixToMatrix(v5);
}

double FLRubberbandValue(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (1.0 - 1.0 / (a4 * ((a1 - a2) / a3) + 1.0)) * a3;
}

double FLInverseRubberbandValue(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (-1.0 / ((a1 - a2) / a3 + -1.0) + -1.0) / a4 * a3;
}

double FLSpringConvertStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double FLSpringConvertMassStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double FLSpringConvertDampingRatioResponseToStiffnessDamping(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double FLSpringConvertMassStiffnessDampingToStiffnessDamping(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

double FLCompoundSpringMake@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  v27 = a5;
  v28 = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 16) = 0u;
  v9 = a1 + 16;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 336) = 1;
  v26 = 0.0;
  v25 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v26, &v25, 1.0, 0.5);
  FLSimpleSpringMake(v9, a4, 0.0, a4, v26, v25);
  FLSimpleSpringMake(&v21, a5, 0.0, a5, v26, v25);
  v10 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v10;
  v11 = v24;
  *(a1 + 112) = v23;
  *(a1 + 128) = v11;
  v19 = 0.0;
  v20 = 0.0;
  FLSpringConvertStiffnessDampingToDampingRatioResponse(&v20, &v19, a4, a5);
  FLSimpleSpringMake(&v21, v20, 0.0, v20, v26, v25);
  v12 = v22;
  *(a1 + 144) = v21;
  *(a1 + 160) = v12;
  v13 = v24;
  *(a1 + 176) = v23;
  *(a1 + 192) = v13;
  FLSimpleSpringMake(&v21, v19, 0.0, v19, v26, v25);
  v14 = v22;
  *(a1 + 208) = v21;
  *(a1 + 224) = v14;
  v15 = v24;
  *(a1 + 240) = v23;
  *(a1 + 256) = v15;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v28, &v27, v20, v19);
  FLSimpleSpringMake(&v21, a2, 0.0, a2, v26, v25);
  v16 = v22;
  *(a1 + 272) = v21;
  *(a1 + 288) = v16;
  result = *&v23;
  v18 = v24;
  *(a1 + 304) = v23;
  *(a1 + 320) = v18;
  return result;
}

void FLCompoundSpringMakeWithDampingRatioResponse(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  v8 = 0.0;
  v9 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v9, &v8, a4, a5);
  FLCompoundSpringMake(a1, a2, a3, v9, v8);
}

uint64_t FLCompoundSpringSetAnchorImmediately(uint64_t result, double a2)
{
  *(result + 312) = a2;
  *(result + 272) = a2;
  *(result + 280) = 0;
  return result;
}

void FLCompoundSpringSetAnchorWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 272) = a3;
    *(a1 + 280) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 296) = v7;
    *(a1 + 304) = v5;
    a3 = a2;
  }

  *(a1 + 312) = a3;
}

void FLCompoundSpringSetAnchorWithIntermediatePositionAndResponse(uint64_t a1, double a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    *(a1 + 312) = a2;
  }

  else
  {
    FLCompoundSpringSetAnchorWithResponse(a1, a2, a4);
    a2 = a3;
  }

  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
}

uint64_t FLCompoundSpringSetStiffnessImmediately(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

void FLCompoundSpringSetStiffnessWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
  }

  *(a1 + 56) = a2;
}

uint64_t FLCompoundSpringSetDampingImmediately(uint64_t result, double a2)
{
  *(result + 120) = a2;
  *(result + 80) = a2;
  *(result + 88) = 0;
  return result;
}

void FLCompoundSpringSetDampingWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 80) = a2;
    *(a1 + 88) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 104) = v7;
    *(a1 + 112) = v5;
  }

  *(a1 + 120) = a2;
}

uint64_t FLCompoundSpringSetDampingRatioImmediately(uint64_t result, double a2)
{
  *(result + 184) = a2;
  *(result + 144) = a2;
  *(result + 152) = 0;
  return result;
}

void FLCompoundSpringSetDampingRatioSmoothly(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 144) = a2;
    *(a1 + 152) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 168) = v7;
    *(a1 + 176) = v5;
  }

  *(a1 + 184) = a2;
}

uint64_t FLCompoundSpringSetResponseImmediately(uint64_t result, double a2)
{
  *(result + 248) = a2;
  *(result + 208) = a2;
  *(result + 216) = 0;
  return result;
}

void FLCompoundSpringSetResponseSmoothly(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 208) = a2;
    *(a1 + 216) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 232) = v7;
    *(a1 + 240) = v5;
  }

  *(a1 + 248) = a2;
}

double FLCompoundSpringStep@<D0>(void *__src@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  memcpy(a2, __src, 0x158uLL);
  if (*(a2 + 336) == 1)
  {
    v6 = *(__src + 10);
    __dst[0] = *(__src + 9);
    __dst[1] = v6;
    v7 = *(__src + 12);
    __dst[2] = *(__src + 11);
    __dst[3] = v7;
    FLSimpleSpringStep(__dst, (a2 + 9), a3);
    v8 = a2[14];
    v25 = a2[13];
    v26 = v8;
    v9 = a2[16];
    v27 = a2[15];
    v28 = v9;
    FLSimpleSpringStep(&v25, __dst, a3);
    v10 = __dst[1];
    a2[13] = __dst[0];
    a2[14] = v10;
    v11 = __dst[3];
    a2[15] = __dst[2];
    a2[16] = v11;
  }

  else
  {
    v12 = *(__src + 2);
    __dst[0] = *(__src + 1);
    __dst[1] = v12;
    v13 = *(__src + 4);
    __dst[2] = *(__src + 3);
    __dst[3] = v13;
    FLSimpleSpringStep(__dst, (a2 + 1), a3);
    v14 = a2[6];
    v25 = a2[5];
    v26 = v14;
    v15 = a2[8];
    v27 = a2[7];
    v28 = v15;
    FLSimpleSpringStep(&v25, __dst, a3);
    v16 = __dst[1];
    a2[5] = __dst[0];
    a2[6] = v16;
    v17 = __dst[3];
    a2[7] = __dst[2];
    a2[8] = v17;
  }

  v18 = a2[18];
  v25 = a2[17];
  v26 = v18;
  v19 = a2[20];
  v27 = a2[19];
  v28 = v19;
  FLSimpleSpringStep(&v25, __dst, a3);
  v20 = __dst[1];
  a2[17] = __dst[0];
  a2[18] = v20;
  v21 = __dst[3];
  a2[19] = __dst[2];
  a2[20] = v21;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memcpy(__dst, a2, 0x158uLL);
  _FLSimpleSpringFromCompoundSpring(__dst, &v25);
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  FLSimpleSpringStep(v23, __dst, a3);
  result = *__dst;
  *a2 = __dst[0];
  return result;
}

void _FLSimpleSpringFromCompoundSpring(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 272);
  if (*(a1 + 336) == 1)
  {
    FLSimpleSpringMakeWithDampingRatioResponse(a2, v2, v3, v4, *(a1 + 144), *(a1 + 208));
  }

  else
  {
    FLSimpleSpringMake(a2, v2, v3, v4, *(a1 + 16), *(a1 + 80));
  }
}

BOOL FLCompoundSpringIsStable(void *__src)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memcpy(v15, __src, 0x158uLL);
  _FLSimpleSpringFromCompoundSpring(v15, &v16);
  if (*(__src + 336) == 1)
  {
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    result = FLSimpleSpringIsStable(v15);
    if (result)
    {
      v3 = *(__src + 18);
      v15[0] = *(__src + 17);
      v15[1] = v3;
      v4 = *(__src + 20);
      v15[2] = *(__src + 19);
      v15[3] = v4;
      result = FLSimpleSpringIsStable(v15);
      if (result)
      {
        v5 = *(__src + 10);
        v15[0] = *(__src + 9);
        v15[1] = v5;
        v6 = *(__src + 12);
        v15[2] = *(__src + 11);
        v15[3] = v6;
        result = FLSimpleSpringIsStable(v15);
        if (result)
        {
          v7 = *(__src + 14);
          v15[0] = *(__src + 13);
          v15[1] = v7;
          v8 = *(__src + 15);
          v9 = *(__src + 16);
LABEL_10:
          v15[2] = v8;
          v15[3] = v9;
          return FLSimpleSpringIsStable(v15);
        }
      }
    }
  }

  else
  {
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    result = FLSimpleSpringIsStable(v15);
    if (result)
    {
      v10 = *(__src + 18);
      v15[0] = *(__src + 17);
      v15[1] = v10;
      v11 = *(__src + 20);
      v15[2] = *(__src + 19);
      v15[3] = v11;
      result = FLSimpleSpringIsStable(v15);
      if (result)
      {
        v12 = *(__src + 2);
        v15[0] = *(__src + 1);
        v15[1] = v12;
        v13 = *(__src + 4);
        v15[2] = *(__src + 3);
        v15[3] = v13;
        result = FLSimpleSpringIsStable(v15);
        if (result)
        {
          v14 = *(__src + 6);
          v15[0] = *(__src + 5);
          v15[1] = v14;
          v8 = *(__src + 7);
          v9 = *(__src + 8);
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

void FLSimpleSpringMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
}

double FLSimpleSpringMakeWithDampingRatioResponse@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v12 = 0;
  v13 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v13, &v12, a5, a6);
  v11 = v12;
  result = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = result;
  *(a1 + 32) = v11;
  *(a1 + 40) = a4;
  return result;
}

double FLSimpleSpringSetDampingRatioResponse(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, a2, a3);
  v5 = v6;
  result = v7;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  return result;
}

void FLSimpleSpringStep(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  if (vabdd_f64(*a1, v6) <= *(a1 + 48) && fabs(v5) <= *(a1 + 56))
  {
    v28 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v28;
    v29 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v29;
    return;
  }

  v7 = *a1 - v6;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  v10 = sqrt(*(a1 + 24));
  v11 = *(a1 + 32) * 0.5;
  v12 = -v11;
  v13 = exp(-(v11 * a3));
  v14 = v13;
  v15 = v5 + v11 * v7;
  if (v11 >= v10)
  {
    if (v11 <= v10)
    {
      v20 = v7 + v15 * a3;
      v27 = v20 * (v13 * v12) + v13 * v15;
      goto LABEL_10;
    }

    v22 = sqrt(v11 * v11 - v10 * v10);
    v23 = v22 * a3;
    v24 = v15 / v22;
    v25 = cosh(v23);
    v26 = sinh(v23);
    v20 = v24 * v26 + v7 * v25;
    v21 = v22 * (v24 * v25) + v7 * v26 * v22;
  }

  else
  {
    v16 = sqrt(v11 * v12 + v10 * v10);
    v17 = v16 * a3;
    v18 = v15 / v16;
    v19 = __sincos_stret(v17);
    v20 = v18 * v19.__sinval + v7 * v19.__cosval;
    v21 = v16 * (v18 * v19.__cosval) + -(v19.__sinval * v7) * v16;
  }

  v27 = v14 * v12 * v20 + v14 * v21;
LABEL_10:
  *a2 = v6 + v14 * v20;
  *(a2 + 8) = v27;
}

uint64_t type metadata accessor for DollHouse()
{
  result = qword_27DFAE638;
  if (!qword_27DFAE638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A8C6298()
{
  v1 = qword_27DFAE5C0;
  if (*(v0 + qword_27DFAE5C0))
  {
    v2 = *(v0 + qword_27DFAE5C0);
  }

  else
  {
    type metadata accessor for DebugDollHouseManager();
    v2 = swift_allocObject();
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = v0;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23A8C631C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_23A8C6374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_23A8C63CC()
{
  v1 = qword_27DFAE5D0;
  if (*(v0 + qword_27DFAE5D0))
  {
    v2 = *(v0 + qword_27DFAE5D0);
  }

  else
  {
    v3 = sub_23A8C65A4();
    v2 = sub_23A8CA0DC(v3, 0, 1, *(v0 + qword_27DFAE5B8));
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23A8C64E4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v9 = v3;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v10 = sub_23A93BFA4();
    a2(0);
    swift_allocObject();
    v6 = a3(v10);
    swift_unknownObjectRelease();
    v11 = *(v9 + v4);
    *(v9 + v4) = v6;
  }

  return v6;
}

uint64_t sub_23A8C65A4()
{
  v1 = qword_27DFAE5F0;
  if (*(v0 + qword_27DFAE5F0))
  {
    v2 = *(v0 + qword_27DFAE5F0);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v4 = sub_23A93BFA4();
    type metadata accessor for DollhouseMaterialFactory();
    swift_allocObject();
    v2 = sub_23A9008C0(v4);
    swift_unknownObjectRelease();
    *(v2 + 24) = &off_284D81C90;
    swift_unknownObjectWeakAssign();
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_23A8C6668()
{
  v1 = sub_23AA0C064();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + qword_27DFAE5F8) & 1) == 0)
  {
    v6 = sub_23A8C63CC();
    swift_beginAccess();
    v7 = *(v6 + 96);

    v8 = 0;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    v24 = (v2 + 40);
    v13 = &qword_27DFB0000;
    while (v11)
    {
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (v8 << 9) | (8 * v15);
      v17 = *(*(v7 + 56) + v16);
      v18 = v13[178];
      if (*(v17 + v18) != 1.0)
      {
        v19 = *(*(v7 + 56) + v16);

        sub_23AA0C044();
        v20 = v1;
        v21 = qword_27DFB0598;
        swift_beginAccess();
        v22 = v17 + v21;
        v1 = v20;
        (*v24)(v22, v5, v20);
        swift_endAccess();
        *(v17 + v18) = 1065353216;

        v13 = &qword_27DFB0000;
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v7 + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        v8 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_23A8C6884()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23A8C68AC();
}

void sub_23A8C68AC()
{
  *(v0 + qword_27DFAE5C0) = 0;
  *(v0 + qword_27DFAE5C8) = 1;
  *(v0 + qword_27DFAE5D0) = 0;
  *(v0 + qword_27DFAE5D8) = 0;
  *(v0 + qword_27DFAE5E0) = 0;
  *(v0 + qword_27DFAE5E8) = 0;
  *(v0 + qword_27DFAE5F0) = 0;
  *(v0 + qword_27DFAE5F8) = 1;
  *(v0 + qword_27DFAE600) = 0;
  *(v0 + qword_27DFAE608) = 0;
  *(v0 + qword_27DFAE610) = MEMORY[0x277D84F98];
  *(v0 + qword_27DFAE618) = 0;
  *(v0 + qword_27DFAE620) = 0;
  *(v0 + qword_27DFAE628) = 1065353216;
  v1 = (v0 + qword_27DFAE630);
  *v1 = 0;
  v1[1] = 0;
  sub_23AA0D9E4();
  __break(1u);
}

uint64_t sub_23A8C69D0(float a1)
{
  *(v1 + qword_27DFAE5C0) = 0;
  *(v1 + qword_27DFAE5C8) = 1;
  *(v1 + qword_27DFAE5D0) = 0;
  *(v1 + qword_27DFAE5D8) = 0;
  *(v1 + qword_27DFAE5E0) = 0;
  *(v1 + qword_27DFAE5E8) = 0;
  *(v1 + qword_27DFAE5F0) = 0;
  *(v1 + qword_27DFAE5F8) = 1;
  *(v1 + qword_27DFAE600) = 0;
  *(v1 + qword_27DFAE608) = 0;
  *(v1 + qword_27DFAE610) = MEMORY[0x277D84F98];
  *(v1 + qword_27DFAE618) = 0;
  *(v1 + qword_27DFAE620) = 0;
  *(v1 + qword_27DFAE628) = 1065353216;
  v2 = (v1 + qword_27DFAE630);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_27DFAE5B8) = a1;
  v3 = sub_23AA0C1A4();
  swift_retain_n();
  v4 = sub_23A8C63CC();
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;

  if (*(v4 + 72))
  {
    v6 = *(v4 + 80);
    sub_23AA0CAB4();

    sub_23AA0C214();
  }

  v7 = *(v3 + qword_27DFAE5D0);

  *(v7 + 24) = &off_284D81CA8;
  swift_unknownObjectWeakAssign();

  return v3;
}

uint64_t sub_23A8C6BA0()
{
  v1 = sub_23A8C63CC();
  v2 = qword_27DFAE608;
  *(v1 + 136) = *(v0 + qword_27DFAE608);

  v3 = *(v0 + v2);
  v4 = *(v0 + qword_27DFAE5D0);
  if (v3 > 1)
  {
    if (v3 != 2)
    {

      v5 = sub_23A8C64B0();
      v6 = type metadata accessor for DollHouseDebugNormalsMaterialFactory();
      v7 = &off_284D82450;
      goto LABEL_9;
    }

    v5 = sub_23A8C647C();
    v6 = type metadata accessor for DollhouseColorMaterialFactory();
    goto LABEL_7;
  }

  if (v3)
  {

    v5 = sub_23A8C6448();
    v6 = type metadata accessor for DollhouseDebugMaterialFactory();
LABEL_7:
    v7 = &off_284D824E0;
    goto LABEL_9;
  }

  v5 = sub_23A8C65A4();
  v6 = type metadata accessor for DollhouseMaterialFactory();
  v7 = &off_284D823C0;
LABEL_9:
  v10 = v6;
  v11 = v7;
  *&v9 = v5;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  sub_23A8CAA3C(&v9, v4 + 32);
  swift_endAccess();
}

uint64_t sub_23A8C6CB8(uint64_t a1)
{
  v3 = type metadata accessor for CapturedRoom(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE370 != -1)
  {
    swift_once();
  }

  v7 = sub_23A8CA2A0(a1);
  v8 = *(v1 + qword_27DFAE610);
  *(v1 + qword_27DFAE610) = v7;

  v9 = *(sub_23A8C6298() + 16);

  if ((v9 & 2) != 0)
  {
    v11 = *(v1 + qword_27DFAE5C0);
    sub_23A8CA90C(a1, v6);

    v12 = sub_23A9B7AF0(v6, 3);
    sub_23A9E37D0(v12);
    v14 = v13;

    sub_23A8CA970(v6);
    v15 = *(v11 + 32);
    *(v11 + 32) = v14;
  }

  return result;
}

void sub_23A8C6DFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v111 = *(v4 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v99 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v99 - v12;
  v114 = sub_23AA0C064();
  v14 = *(v114 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_27DFAE600) != 1)
  {
    v110 = v7;
    if (*(v2 + qword_27DFAE5F8) != 1)
    {
      return;
    }

    v31 = qword_27DFAE610;
    if (!*(*(v2 + qword_27DFAE610) + 16) || a1 == 0)
    {
      return;
    }

    v33 = *(a1 + qword_27DFC09F8);
    v107 = a1;

    sub_23AA0C9D4();
    v120 = v34;

    sub_23AA0C9D4();
    v119 = v35;

    v36 = COERCE_DOUBLE(vzip1_s32(v120.n128_u64[0], *&vextq_s8(v119, v119, 8uLL)));
    v37.n128_f32[0] = sqrtf(vaddv_f32(vmul_f32(*&v36, *&v36)));
    v120 = v37;
    v38 = COERCE_DOUBLE(vdiv_f32(*&v36, vdup_lane_s32(v37.n128_u64[0], 0)));
    if (v37.n128_f32[0] >= 0.01)
    {
      *&v39 = v38;
    }

    else
    {
      *&v39 = v36;
    }

    v40 = sub_23A8C63CC();
    swift_beginAccess();
    v41 = *(v40 + 96);

    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = sub_23A9EDB30(*(v41 + 16), 0);
      sub_23A9F41F0(&v121, (v43 + ((*(v111 + 80) + 32) & ~*(v111 + 80))), v42, v41);
      v45 = v44;
      sub_23A8CA904();
      if (v45 != v42)
      {
        __break(1u);
LABEL_23:

        return;
      }
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    v47 = v120;
    v122 = v43;
    v46.n128_u32[0] = 1008981770;
    v119.i64[0] = v2;
    if (v120.n128_f32[0] < 0.01)
    {
      goto LABEL_53;
    }

    v109 = v10;
    v48 = *(v2 + v31);
    v51 = *(v48 + 64);
    v50 = v48 + 64;
    v49 = v51;
    v52 = 1 << *(*(v2 + v31) + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & v49;
    v108 = qword_27DFAE5D0;
    v55 = (v52 + 63) >> 6;
    v115 = v111 + 16;
    v120.n128_u64[0] = v111 + 8;
    v104 = (v14 + 40);

    v57 = 0;
    v103 = v14;
    v102 = v56;
    v101 = v50;
    v100 = v55;
    while (1)
    {
LABEL_30:
      if (!v54)
      {
        while (1)
        {
          v58 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_67;
          }

          if (v58 >= v55)
          {
            break;
          }

          v54 = *(v50 + 8 * v58);
          ++v57;
          if (v54)
          {
            v57 = v58;
            goto LABEL_35;
          }
        }

        v43 = v122;
LABEL_53:
        v79 = *(v43 + 16);
        if (!v79)
        {
LABEL_64:

          return;
        }

        v120.n128_u64[0] = qword_27DFAE5D0;
        v118 = *(v111 + 16);
        v80 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v116 = v43;
        v81 = v43 + v80;
        v82 = v14;
        v83 = *(v111 + 72);
        v84 = (v111 + 8);
        v117 = (v82 + 40);
        v85 = v110;
        v118(v110, v81, v4, v46, v47);
        while (1)
        {
          v88 = *(v2 + v120.n128_u64[0]);
          swift_beginAccess();
          v89 = *(v88 + 96);
          if (!*(v89 + 16))
          {
            goto LABEL_56;
          }

          v90 = *(v88 + 96);

          v91 = sub_23A9EDD28(v85);
          if ((v92 & 1) == 0)
          {
            break;
          }

          v93 = *(*(v89 + 56) + 8 * v91);

          v94 = qword_27DFB0590;
          if (*(v93 + qword_27DFB0590) == 1.0)
          {

            goto LABEL_56;
          }

          v95 = v113;
          sub_23AA0C044();
          (*v84)(v110, v4);
          v96 = qword_27DFB0598;
          swift_beginAccess();
          v97 = v93 + v96;
          v2 = v119.i64[0];
          v98 = v95;
          v85 = v110;
          (*v117)(v97, v98, v114);
          swift_endAccess();
          *(v93 + v94) = 1065353216;

LABEL_57:
          v81 += v83;
          if (!--v79)
          {
            goto LABEL_64;
          }

          v118(v85, v81, v4, v86, v87);
        }

LABEL_56:
        (*v84)(v85, v4);
        goto LABEL_57;
      }

LABEL_35:
      v59 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v60 = (v57 << 9) | (8 * v59);
      if (vaddv_f32(vmul_f32(v39, *(*(v56 + 48) + v60))) > 0.4)
      {
        v61 = *(*(v56 + 56) + v60);
        v118 = *(v61 + 16);
        if (v118)
        {
          break;
        }
      }
    }

    v106 = v54;
    v112 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v117 = (v61 + v112);
    v62 = *(v111 + 72);
    v116 = *(v111 + 16);
    v105 = v61;

    v63 = 0;
    while (1)
    {
      v116(v13, v117 + v62 * v63, v4);
      v64 = *(v122 + 16);
      if (v64)
      {
        v65 = v122 + v112;
        sub_23A8C9E78(&qword_27DFAE8C8, MEMORY[0x277CC95F0]);
        v66 = 0;
        while ((sub_23AA0D084() & 1) == 0)
        {
          ++v66;
          v65 += v62;
          if (v64 == v66)
          {
            goto LABEL_38;
          }
        }

        v67 = v109;
        sub_23A9853F0(v66, v109);
        v68 = *v120.n128_u64[0];
        (*v120.n128_u64[0])(v67, v4);
        v2 = v119.i64[0];
        v69 = *(v119.i64[0] + v108);
        swift_beginAccess();
        v70 = *(v69 + 96);
        if (*(v70 + 16))
        {
          v71 = *(v69 + 96);

          v72 = sub_23A9EDD28(v13);
          if (v73)
          {
            v74 = *(*(v70 + 56) + 8 * v72);

            v75 = qword_27DFB0590;
            if (*(v74 + qword_27DFB0590) != 0.15)
            {
              v76 = v113;
              sub_23AA0C044();
              v68(v13, v4);
              v77 = qword_27DFB0598;
              swift_beginAccess();
              v78 = v76;
              v2 = v119.i64[0];
              (*v104)(v74 + v77, v78, v114);
              swift_endAccess();
              *(v74 + v75) = 1041865114;

              goto LABEL_39;
            }
          }

          else
          {
          }
        }

        v68(v13, v4);
      }

      else
      {
LABEL_38:
        (*v120.n128_u64[0])(v13, v4);
        v2 = v119.i64[0];
      }

LABEL_39:
      if (++v63 == v118)
      {

        v14 = v103;
        v56 = v102;
        v50 = v101;
        v55 = v100;
        v54 = v106;
        goto LABEL_30;
      }
    }
  }

  v17 = sub_23A8C63CC();
  swift_beginAccess();
  v18 = *(v17 + 96);

  v19 = 0;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v120.n128_u64[0] = v14 + 40;
  v24 = v113;
  while (v22)
  {
LABEL_10:
    v26 = (v19 << 9) | (8 * __clz(__rbit64(v22)));
    v27 = *(*(v18 + 56) + v26);
    v22 &= v22 - 1;
    v28 = qword_27DFB0590;
    if (*(v27 + qword_27DFB0590) != 0.15)
    {
      v29 = *(*(v18 + 56) + v26);

      sub_23AA0C044();
      v30 = qword_27DFB0598;
      swift_beginAccess();
      (*v120.n128_u64[0])(v27 + v30, v24, v114);
      swift_endAccess();
      *(v27 + v28) = 1041865114;
    }
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      goto LABEL_23;
    }

    v22 = *(v18 + 64 + 8 * v25);
    ++v19;
    if (v22)
    {
      v19 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_23A8C7878()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v34 - v3;
  v4 = sub_23AA0CBF4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_23AA0CD84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v15 = *(sub_23A8C63CC() + 80);
  v16 = sub_23A9FC870();

  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_23AA0D7F4();
  v18 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v41 = v14;
    v19 = 0;
    v39 = qword_27DFAE618;
    v44 = (v11 + 56);
    v45 = v16 & 0xC000000000000001;
    v38 = (v11 + 32);
    v35 = (v11 + 16);
    v37 = (v11 + 8);
    v34 = xmmword_23AA10FC0;
    v36 = v9;
    v40 = v18;
    do
    {
      if (v45)
      {
        v20 = MEMORY[0x23EE90360](v19, v16);
      }

      else
      {
        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = qword_27DFC0628;
      swift_beginAccess();
      sub_23A8CA9D8(v20 + v21, v47);
      v22 = v48;
      v23 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v23 + 8))(v46, v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
      if (swift_dynamicCast())
      {
        (*v44)(v9, 0, 1, v10);
        v24 = v41;
        (*v38)(v41, v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v43 + v39) green:*(v43 + v39) blue:*(v43 + v39) alpha:1.0];
        v26 = sub_23AA0CBB4();
        (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
        v27 = v25;
        sub_23AA0CBE4();
        sub_23AA0CC44();
        type metadata accessor for ScanEntity();
        sub_23A8C9E78(&qword_27DFAE8B0, type metadata accessor for ScanEntity);
        v28 = sub_23AA0CAD4();
        v30 = v29;
        v31 = sub_23AA0C4A4();
        if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v32 = swift_allocObject();
          *(v32 + 16) = v34;
          *(v32 + 56) = v10;
          *(v32 + 64) = MEMORY[0x277CDB298];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
          (*v35)(boxed_opaque_existential_1, v24, v10);
          v9 = v36;
          sub_23AA0C494();
        }

        v28(v47, 0);

        (*v37)(v24, v10);
        v18 = v40;
      }

      else
      {

        (*v44)(v9, 1, 1, v10);
        sub_23A8CA7EC(v9);
        __swift_destroy_boxed_opaque_existential_1(v47);
      }

      ++v19;
    }

    while (v18 != v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8C7E78(__n128 a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_23AA0CD84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = v37.n128_u64[0];
  *(&v11 + 1) = vextq_s8(*(v1 + qword_27DFAE630), *(v1 + qword_27DFAE630), 8uLL).u64[0];
  v33 = qword_27DFAE630;
  v34 = v1;
  *(v1 + qword_27DFAE630) = v11;
  v12 = *(sub_23A8C63CC() + 80);
  v13 = sub_23A9FC870();

  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_23AA0D7F4();
  v15 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v16 = 0;
    v36 = v13 & 0xC000000000000001;
    v17 = (v7 + 56);
    v32 = (v7 + 32);
    v30 = (v7 + 16);
    v31 = (v7 + 8);
    v29 = xmmword_23AA10FC0;
    v37.n128_u64[0] = v13;
    do
    {
      if (v36)
      {
        v18 = MEMORY[0x23EE90360](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = qword_27DFC0628;
      swift_beginAccess();
      sub_23A8CA9D8(v18 + v19, v39);
      v20 = v40;
      v21 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v21 + 8))(v38, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
      if (swift_dynamicCast())
      {
        (*v17)(v5, 0, 1, v6);
        (*v32)(v10, v5, v6);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v35 = *(v34 + v33);
        v22 = sub_23AA0CC84();
        sub_23AA0CB94();
        v22(v39, 0);
        type metadata accessor for ScanEntity();
        sub_23A8C9E78(&qword_27DFAE8B0, type metadata accessor for ScanEntity);
        v23 = sub_23AA0CAD4();
        v25 = v24;
        v26 = sub_23AA0C4A4();
        if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v27 = swift_allocObject();
          *(v27 + 16) = v29;
          *(v27 + 56) = v6;
          *(v27 + 64) = MEMORY[0x277CDB298];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
          (*v30)(boxed_opaque_existential_1, v10, v6);
          sub_23AA0C494();
        }

        v23(v39, 0);
        v13 = v37.n128_u64[0];

        (*v31)(v10, v6);
      }

      else
      {

        (*v17)(v5, 1, 1, v6);
        sub_23A8CA7EC(v5);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v13 = v37.n128_u64[0];
      }

      ++v16;
    }

    while (v15 != v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8C8364(__n128 a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_23AA0CD84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + qword_27DFAE630);
  *(&v11 + 1) = v37.n128_u64[0];
  v33 = qword_27DFAE630;
  v34 = v1;
  *(v1 + qword_27DFAE630) = v11;
  v12 = *(sub_23A8C63CC() + 80);
  v13 = sub_23A9FC870();

  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_23AA0D7F4();
  v15 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v16 = 0;
    v36 = v13 & 0xC000000000000001;
    v17 = (v7 + 56);
    v32 = (v7 + 32);
    v30 = (v7 + 16);
    v31 = (v7 + 8);
    v29 = xmmword_23AA10FC0;
    v37.n128_u64[0] = v13;
    do
    {
      if (v36)
      {
        v18 = MEMORY[0x23EE90360](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = qword_27DFC0628;
      swift_beginAccess();
      sub_23A8CA9D8(v18 + v19, v39);
      v20 = v40;
      v21 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v21 + 8))(v38, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
      if (swift_dynamicCast())
      {
        (*v17)(v5, 0, 1, v6);
        (*v32)(v10, v5, v6);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v35 = *(v34 + v33);
        v22 = sub_23AA0CC84();
        sub_23AA0CB94();
        v22(v39, 0);
        type metadata accessor for ScanEntity();
        sub_23A8C9E78(&qword_27DFAE8B0, type metadata accessor for ScanEntity);
        v23 = sub_23AA0CAD4();
        v25 = v24;
        v26 = sub_23AA0C4A4();
        if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v27 = swift_allocObject();
          *(v27 + 16) = v29;
          *(v27 + 56) = v6;
          *(v27 + 64) = MEMORY[0x277CDB298];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
          (*v30)(boxed_opaque_existential_1, v10, v6);
          sub_23AA0C494();
        }

        v23(v39, 0);
        v13 = v37.n128_u64[0];

        (*v31)(v10, v6);
      }

      else
      {

        (*v17)(v5, 1, 1, v6);
        sub_23A8CA7EC(v5);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v13 = v37.n128_u64[0];
      }

      ++v16;
    }

    while (v15 != v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8C884C()
{
  v1 = *(v0 + qword_27DFAE5C0);

  v2 = *(v0 + qword_27DFAE5D0);

  v3 = *(v0 + qword_27DFAE5D8);

  v4 = *(v0 + qword_27DFAE5E0);

  v5 = *(v0 + qword_27DFAE5E8);

  v6 = *(v0 + qword_27DFAE5F0);

  v7 = *(v0 + qword_27DFAE610);
}

uint64_t sub_23A8C88DC()
{
  v0 = sub_23AA0CAC4();
  v1 = *(v0 + qword_27DFAE5C0);

  v2 = *(v0 + qword_27DFAE5D0);

  v3 = *(v0 + qword_27DFAE5D8);

  v4 = *(v0 + qword_27DFAE5E0);

  v5 = *(v0 + qword_27DFAE5E8);

  v6 = *(v0 + qword_27DFAE5F0);

  v7 = *(v0 + qword_27DFAE610);

  return v0;
}

uint64_t sub_23A8C8974()
{
  sub_23A8C88DC();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A8C89BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C89DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for simd_rectangle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_23A8C8B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23A8C8BDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8BFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_rectangle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_23A8C8C9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8CBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23A8C8D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_23A8C8DB0()
{
  if (*(v0 + qword_27DFAE5C8))
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_23A8C8DDC()
{
  result = *(v0 + qword_27DFAE630);
  v2 = *(v0 + qword_27DFAE630 + 8);
  return result;
}

uint64_t sub_23A8C8DF4(uint64_t a1)
{
  v3 = sub_23AA0C0E4();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_23AA0D7F4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v47 = MEMORY[0x277D84F90];
    sub_23A975E10(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v40)
    {
      result = sub_23AA0D7A4();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = sub_23AA0D774();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v40 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v37 = v39 + 32;
      v38 = (v39 + 16);
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v34 = a1 + 56;
      v35 = v12;
      v32 = v1;
      v33 = a1 + 64;
      v36 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v44;
        v16 = v46;
        v41 = v45;
        v17 = sub_23A9886A4(v44, v45, v46, a1);
        (*v38)(v6, v17 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v3);

        v18 = v42;
        v47 = v42;
        v20 = *(v42 + 16);
        v19 = *(v42 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23A975E10(v19 > 1, v20 + 1, 1);
          v18 = v47;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v18;
        result = (*(v39 + 32))(v18 + v21 + *(v39 + 72) * v20, v6, v3);
        if (v40)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (sub_23AA0D7C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D8, &unk_23AA115D0);
          v13 = sub_23AA0D414();
          sub_23AA0D844();
          result = v13(v43, 0);
          if (v11 == v7)
          {
LABEL_34:
            sub_23A8CA9CC(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v22 = 1 << *(a1 + 32);
          if (v15 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v15 >> 6;
          v24 = *(v34 + 8 * (v15 >> 6));
          if (((v24 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v41)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v15 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v33 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                result = sub_23A8CA9CC(v15, v41, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            result = sub_23A8CA9CC(v15, v41, 0);
          }

LABEL_33:
          v31 = *(a1 + 36);
          v44 = v22;
          v45 = v31;
          v46 = 0;
          v7 = v36;
          if (v11 == v36)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8C9224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE878, &qword_23AA11588);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE880, &unk_23AA11590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v46 - v7;
  v63 = sub_23AA0C0E4();
  v56 = *(v63 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
  v10 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  v57 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAE890, &qword_23AA115A0);
    v14 = sub_23AA0DA44();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v57 + 64;
  v16 = 1 << *(v57 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v57 + 64);
  v19 = (v16 + 63) >> 6;
  v49 = v56 + 16;
  v61 = v56 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v47 = v19;
  v48 = v15;
  v50 = v14;
  while (v18)
  {
LABEL_15:
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v27 = v56;
    v26 = v57;
    v28 = *(v57 + 48);
    v59 = *(v56 + 72);
    v29 = v51;
    v30 = v63;
    (*(v56 + 16))(v51, v28 + v59 * v25, v63);
    v60 = *(*(v26 + 56) + 8 * v25);
    v31 = v53;
    *&v29[*(v53 + 48)] = v60;
    v32 = v29;
    v33 = v52;
    sub_23A8CA738(v32, v52);
    v34 = *(v31 + 48);
    v35 = *(v27 + 32);
    v36 = v55;
    v35(v55, v33, v30);
    v58 = *(v33 + v34);
    v37 = v54;
    v35(v54, v36, v30);
    v35(v62, v37, v30);
    v14 = v50;
    v38 = *(v50 + 40);
    sub_23A8C9E78(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);

    result = sub_23AA0D054();
    v39 = -1 << *(v14 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v20 + 8 * (v40 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v39) >> 6;
      while (++v41 != v43 || (v42 & 1) == 0)
      {
        v44 = v41 == v43;
        if (v41 == v43)
        {
          v41 = 0;
        }

        v42 |= v44;
        v45 = *(v20 + 8 * v41);
        if (v45 != -1)
        {
          v23 = __clz(__rbit64(~v45)) + (v41 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v40) & ~*(v20 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (v35)(*(v14 + 48) + v23 * v59, v62, v63);
    *(*(v14 + 56) + 8 * v23) = v58;
    ++*(v14 + 16);
    v19 = v47;
    v15 = v48;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23A8C972C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23AA0CB54();
}

uint64_t sub_23A8C9778()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23AA0CB44();
}

uint64_t sub_23A8C97D0()
{
  sub_23AA0DD14();
  v1 = *v0;
  swift_getWitnessTable();
  sub_23AA0CB44();
  return sub_23AA0DD54();
}

BOOL sub_23A8C9854(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23A8C98BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23AA0D134();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23A8C98FC(uint64_t a1, id *a2)
{
  result = sub_23AA0D114();
  *a2 = 0;
  return result;
}

uint64_t sub_23A8C9974(uint64_t a1, id *a2)
{
  v3 = sub_23AA0D124();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23A8C99F4@<X0>(uint64_t *a1@<X8>)
{
  sub_23AA0D134();
  v2 = sub_23AA0D104();

  *a1 = v2;
  return result;
}

void *sub_23A8C9A6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23A8C9A98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23A8C9B68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23A8C9B78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_23AA0CB34();
}

uint64_t sub_23A8C9BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23A8CA268(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23A8C9C28(uint64_t a1)
{
  v2 = sub_23A8C9E78(&qword_27DFAE970, type metadata accessor for Key);
  v3 = sub_23A8C9E78(&qword_27DFAE978, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A8C9CE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23AA0D104();

  *a2 = v5;
  return result;
}

uint64_t sub_23A8C9D2C(uint64_t a1)
{
  v2 = sub_23A8C9E78(&qword_27DFAE960, type metadata accessor for UIAccessibilityPriority);
  v3 = sub_23A8C9E78(&qword_27DFAE968, type metadata accessor for UIAccessibilityPriority);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A8C9E78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A8C9F50()
{
  v1 = *v0;
  v2 = sub_23AA0D134();
  v3 = MEMORY[0x23EE8FCD0](v2);

  return v3;
}

uint64_t sub_23A8C9F8C()
{
  v1 = *v0;
  sub_23AA0D134();
  sub_23AA0D1D4();
}

uint64_t sub_23A8C9FE0()
{
  v1 = *v0;
  sub_23AA0D134();
  sub_23AA0DD14();
  sub_23AA0D1D4();
  v2 = sub_23AA0DD54();

  return v2;
}

uint64_t sub_23A8CA054(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23AA0D134();
  v6 = v5;
  if (v4 == sub_23AA0D134() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23AA0DBD4();
  }

  return v9 & 1;
}

uint64_t sub_23A8CA0DC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v14[3] = type metadata accessor for DollhouseMaterialFactory();
  v14[4] = &off_284D823C0;
  v14[0] = a1;
  type metadata accessor for EntityManager();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 72) = 0;
  v9 = type metadata accessor for ScanContainer();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v8 + 80) = sub_23AA0C1A4();
  v12 = MEMORY[0x277D84F98];
  *(v8 + 96) = MEMORY[0x277D84F98];
  *(v8 + 104) = v12;
  *(v8 + 112) = sub_23A9DC410(MEMORY[0x277D84F90]);
  *(v8 + 120) = v12;
  *(v8 + 128) = v12;
  *(v8 + 136) = 0;
  *(v8 + 152) = 0x40A000003FC00000;
  sub_23A8CA9D8(v14, v8 + 32);
  *(v8 + 144) = a2;
  *(v8 + 88) = a3 & 1;
  *(v8 + 140) = a4;
  *(v8 + 156) = a4 * 1.5;
  sub_23A8E02B4();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v8;
}

uint64_t sub_23A8CA1F4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_23A8CA230(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_23A8CA268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_23A8CA2A0(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8CA90C(a1, v5);
  v37 = v5;
  v6 = sub_23A9B7AF0(v5, 3);
  v7 = sub_23A9888E0(v6);
  v8 = sub_23A988E44(v7);
  sub_23A989EB4(v6, 0, 1);
  v10 = v9;
  v11 = sub_23A98A108(v6, 0.000001);
  v12 = sub_23A98B0B0(v11, 0.07);

  v13 = sub_23A98B560(v12);
  v14 = sub_23A98C6E0(v13, v12);

  v15 = sub_23A98C8A0(v14, v12);

  v16 = sub_23A98C6E0(v15, v12);

  v17 = sub_23A98D6EC(v16, v10, v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D0, &qword_23AA115C8);
  result = sub_23AA0DA14();
  v19 = result;
  v20 = 0;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v17[8];
  v24 = (v21 + 63) >> 6;
  v38 = result + 64;
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_10:
      v28 = v25 | (v20 << 6);
      v29 = *(v17[6] + 8 * v28);
      v30 = *(v17[7] + 8 * v28);

      v32 = sub_23A8C8DF4(v31);

      *(v38 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(v19[6] + 8 * v28) = v29;
      *(v19[7] + 8 * v28) = v32;
      v33 = v19[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v19[2] = v35;
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v24)
      {

        sub_23A8CA970(v37);
        return v19;
      }

      v27 = v17[v20 + 8];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8CA57C(uint64_t a1, double a2)
{
  v3 = v2;
  sub_23A8C63CC();
  sub_23A8E086C(0, 1, a2);

  sub_23A8C6DFC(a1);
  v6 = sub_23A8C6298();
  v7 = *(v3 + qword_27DFAE5D0);
  swift_beginAccess();
  v8 = *(v7 + 96);
  swift_beginAccess();
  v9 = *(v7 + 104);
  v10 = *(v3 + qword_27DFAE610);
  v11 = *(v6 + 16);

  if ((v11 & 8) != 0)
  {
    sub_23A94948C(v8);
    v11 = *(v6 + 16);
  }

  if ((v11 & 8) != 0)
  {
    v12 = sub_23A8C9224(v8);

    sub_23A949E90(v12);
  }

  if (*(v6 + 16))
  {
    sub_23A94BFA4(v9);
  }

  v13 = *(v6 + 16);
  if (a1 && (v13 & 2) != 0)
  {

    sub_23A94857C(v14);

    v13 = *(v6 + 16);
  }

  if ((v13 & 4) != 0)
  {
    sub_23A948D08(v10);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23A8CA738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23A8CA7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23A8CA90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8CA970(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8CA9CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23A8CA9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23A8CAA3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void sub_23A8CAB08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_23A8CAE0C()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0460 = v2;
  *algn_27DFC0468 = v4;
}

void sub_23A8CAED8()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0470 = v2;
  *algn_27DFC0478 = v4;
}

void sub_23A8CAFA0()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0480 = v2;
  *algn_27DFC0488 = v4;
}

void sub_23A8CB068()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0490 = v2;
  *algn_27DFC0498 = v4;
}

void sub_23A8CB130()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC04A0 = v2;
  *algn_27DFC04A8 = v4;
}

char *sub_23A8CB1F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer;
  *&v4[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_previousAngle] = 0;
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  v11 = sub_23A93BFA4();
  v12 = [objc_allocWithZone(MEMORY[0x277CD9F10]) init];
  v13 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_metalLayer;
  *&v4[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_metalLayer] = v12;
  [v12 setOpaque_];
  [*&v4[v13] setDevice_];
  v14 = *&v4[v13];
  type metadata accessor for RenderTimer();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = sub_23A95499C(v11, v15);
  swift_unknownObjectRelease();

  *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer] = v16;
  v17 = 8;
  if (([v11 supportsTextureSampleCount_] & 1) == 0)
  {
    v17 = 4;
    if (![v11 supportsTextureSampleCount_])
    {
      v17 = 1;
    }
  }

  v18 = *&v5[v13];
  swift_unknownObjectRetain();
  v19 = v18;
  v20 = [v19 pixelFormat];
  type metadata accessor for GlyphRenderer();
  swift_allocObject();
  v21 = sub_23A9F8B30(v19, v11, v20, v17);
  v22 = *&v5[v10];
  *&v5[v10] = v21;

  v23 = *&v5[v10];
  if (v23)
  {
    *(*(v23 + 64) + 32) = 2;

    sub_23A9E6F04();
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v25 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_backgroundView;
  *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_backgroundView] = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = *&v5[v25];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 blackColor];
  v30 = [v29 colorWithAlphaComponent_];

  [v28 setBackgroundColor_];
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v32 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel;
  *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel] = v31;
  [v31 setNumberOfLines_];
  v33 = *&v5[v32];
  v34 = [v27 whiteColor];
  [v33 setTextColor_];

  [*&v5[v32] setTextAlignment_];
  [*&v5[v32] setLineBreakMode_];
  [*&v5[v32] setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = *&v5[v32];
  v36 = objc_opt_self();
  v37 = *MEMORY[0x277D76988];
  v38 = v35;
  v39 = [v36 preferredFontForTextStyle_];
  [v38 setFont_];

  v69.receiver = v5;
  v69.super_class = type metadata accessor for ARGlyphView();
  v40 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a1, a2, a3, a4);
  [v40 setAlpha_];
  v41 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_backgroundView;
  [v40 addSubview_];
  v42 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel;
  [v40 addSubview_];
  v43 = v40;
  v44 = [v43 layer];
  [v44 addSublayer_];

  *(*&v43[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer] + 88) = &off_284D81ED8;
  swift_unknownObjectWeakAssign();

  v45 = *MEMORY[0x277D768C8];
  v46 = *(MEMORY[0x277D768C8] + 8);
  v47 = *(MEMORY[0x277D768C8] + 16);
  v48 = *(MEMORY[0x277D768C8] + 24);
  v49 = *&v40[v41];
  sub_23AA08688(v43, v45, v46, v47, v48);

  v50 = [objc_opt_self() currentDevice];
  v51 = [v50 userInterfaceIdiom];

  v52 = qword_27DFAE340;
  v53 = *&v40[v42];
  if (v52 != -1)
  {
    swift_once();
  }

  if (v51 == 1)
  {
    v54 = 120.0;
  }

  else
  {
    v54 = 80.0;
  }

  v55 = sub_23AA0D104();
  [v53 setText_];

  v56 = [*&v40[v42] centerXAnchor];
  v57 = [v43 centerXAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  [v58 setActive_];
  v59 = [*&v40[v42] centerYAnchor];
  v60 = [v43 centerYAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:v54];

  [v61 setActive_];
  v62 = [*&v40[v42] trailingAnchor];
  v63 = [v43 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-24.0];

  [v64 setActive_];
  v65 = [*&v40[v42] leadingAnchor];
  v66 = [v43 leadingAnchor];

  v67 = [v65 constraintEqualToAnchor:v66 constant:24.0];
  [v67 setActive_];

  swift_unknownObjectRelease();
  return v43;
}

id sub_23A8CB990()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ARGlyphView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 setDisableActions_];
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  if (Height < Width)
  {
    Width = Height;
  }

  v4 = *&v0[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_metalLayer];
  [v4 setBounds_];
  v5 = objc_opt_self();
  v6 = [v5 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v5 mainScreen];
  [v9 scale];
  v11 = v10;

  [v4 setDrawableSize_];
  [v0 bounds];
  MidX = CGRectGetMidX(v17);
  [v0 bounds];
  [v4 setPosition_];
  return [v1 setDisableActions_];
}

char *sub_23A8CBC00(uint64_t a1, uint64_t (*a2)(char *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer];
    v5 = result;

    result = *(v4 + 32);
    if (!result)
    {
      __break(1u);
      return result;
    }

    [result invalidate];
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_23A8CBCA0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a3;
  v17 = sub_23A8CBFA8;
  v18 = v8;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_23A9AD0B8;
  v16 = &block_descriptor;
  v9 = _Block_copy(&v13);
  v10 = v3;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v17 = sub_23A8CC014;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_23A8CBE48;
  v16 = &block_descriptor_22;
  v12 = _Block_copy(&v13);
  sub_23A8CC044(a1);

  [v7 animateKeyframesWithDuration:4 delay:v9 options:v12 animations:1.0 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

uint64_t sub_23A8CBE48(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_23A8CBE9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A8CBF70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A8CBFD4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A8CC014()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_23A8CC044(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A8CC080(float a1, float a2, __n128 a3, float a4, float a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17)
{
  v21 = MEMORY[0x277D84F90];
  *(v17 + 48) = MEMORY[0x277D84F90];
  v22 = (v17 + 48);
  swift_beginAccess();
  *(v17 + 48) = v21;
  v23 = sub_23A9388A8(0, 1, 1, v21);
  *(v17 + 48) = v23;
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_23A9388A8((v24 > 1), v25 + 1, 1, v23);
  }

  DWORD1(v26) = 0;
  *(&v26 + 1) = 0;
  v28.i64[1] = a3.n128_i64[1];
  v27 = a1;
  *v28.i8 = vmul_n_f32(a3.n128_u32[0], a1);
  v29 = vtrn2q_s32(vzip1q_s32(0, v28), 0);
  *&v29.i32[1] = a1;
  *(v23 + 2) = v25 + 1;
  *&v23[16 * v25 + 32] = v29;
  *v22 = v23;
  v31 = *(v23 + 2);
  v30 = *(v23 + 3);
  if (v31 >= v30 >> 1)
  {
    v66 = v28.i64[0];
    v56 = sub_23A9388A8((v30 > 1), v31 + 1, 1, v23);
    v27 = a1;
    v28.i64[0] = v66;
    DWORD1(v26) = 0;
    *(&v26 + 1) = 0;
    v23 = v56;
  }

  v32 = v27 * a4;
  *&v33 = v27 * a4;
  *(&v33 + 1) = v27;
  *(&v33 + 1) = v28.u32[1];
  *(v23 + 2) = v31 + 1;
  *&v23[16 * v31 + 32] = v33;
  *v22 = v23;
  v35 = *(v23 + 2);
  v34 = *(v23 + 3);
  if (v35 >= v34 >> 1)
  {
    v62 = v27 * a4;
    v67 = v28.i64[0];
    v57 = sub_23A9388A8((v34 > 1), v35 + 1, 1, v23);
    v32 = v62;
    v28.i64[0] = v67;
    v27 = a1;
    DWORD1(v26) = 0;
    *(&v26 + 1) = 0;
    v23 = v57;
  }

  *&v26 = v27;
  v36 = v27 * a5;
  *&v37 = v27 * a5;
  *(&v37 + 1) = v27;
  *(&v37 + 1) = v28.u32[1];
  *(v23 + 2) = v35 + 1;
  *&v23[16 * v35 + 32] = v37;
  *v22 = v23;
  v39 = *(v23 + 2);
  v38 = *(v23 + 3);
  if (v39 >= v38 >> 1)
  {
    v76 = LODWORD(v27);
    v63 = v32;
    v68 = v28.i64[0];
    v61 = v27 * a5;
    v58 = sub_23A9388A8((v38 > 1), v39 + 1, 1, v23);
    v36 = v61;
    v32 = v63;
    v28.i64[0] = v68;
    v26 = v76;
    v23 = v58;
  }

  v40 = v26;
  *(&v40 + 1) = v36;
  DWORD2(v40) = v28.i32[1];
  *(v23 + 2) = v39 + 1;
  *&v23[16 * v39 + 32] = v40;
  *v22 = v23;
  v42 = *(v23 + 2);
  v41 = *(v23 + 3);
  if (v42 >= v41 >> 1)
  {
    v77 = v26;
    v64 = v32;
    v69 = v28.i64[0];
    v59 = sub_23A9388A8((v41 > 1), v42 + 1, 1, v23);
    v32 = v64;
    v28.i64[0] = v69;
    v26 = v77;
    v23 = v59;
  }

  v43 = v26;
  *(&v43 + 1) = v32;
  DWORD2(v43) = v28.i32[1];
  *(v23 + 2) = v42 + 1;
  *&v23[16 * v42 + 32] = v43;
  *v22 = v23;
  v45 = *(v23 + 2);
  v44 = *(v23 + 3);
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    v78 = v26;
    v70 = v28.i64[0];
    v60 = sub_23A9388A8((v44 > 1), v45 + 1, 1, v23);
    v28.i64[0] = v70;
    v26 = v78;
    v23 = v60;
  }

  *(&v26 + 4) = v28.i64[0];
  *(v23 + 2) = v46;
  *&v23[16 * v45 + 32] = v26;
  *(v17 + 48) = v23;
  swift_endAccess();
  *(v17 + 16) = v21;
  *(v17 + 24) = v21;
  v47 = (v17 + 16);
  *(v17 + 32) = v21;
  *(v17 + 44) = 1048576000;
  *(v17 + 40) = a2;

  v48 = 32;
  do
  {
    v75 = *&v23[v48];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v47 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_23A939408(0, *(v21 + 2) + 1, 1, v21);
      *v47 = v21;
    }

    v51 = *(v21 + 2);
    v50 = *(v21 + 3);
    if (v51 >= v50 >> 1)
    {
      v21 = sub_23A939408((v50 > 1), v51 + 1, 1, v21);
    }

    v52 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v75.f32[0]), a7, *v75.f32, 1), a8, v75, 2), a17);
    v52.i32[3] = 0;
    *(v21 + 2) = v51 + 1;
    v53 = &v21[32 * v51];
    v53[2] = v52;
    v53[3].f32[0] = a2;
    *v47 = v21;
    swift_endAccess();
    v48 += 16;
    --v46;
  }

  while (v46);

  sub_23A910DD0(0);
  v54 = a2 * 0.05;
  sub_23A910780(v54);
  sub_23A910A78(v54);
  return v17;
}

uint64_t sub_23A8CC4B4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_23A8CC530()
{
  type metadata accessor for FloorPlanManager();
  result = swift_allocObject();
  *(result + 16) = 0;
  v1 = MEMORY[0x277D84F98];
  *(result + 24) = MEMORY[0x277D84F98];
  *(result + 32) = v1;
  qword_27DFC04B0 = result;
  return result;
}

uint64_t sub_23A8CC56C(void *a1, unint64_t a2)
{
  v3 = v2;
  *&v149 = type metadata accessor for CapturedRoom.Object(0);
  v131 = *(v149 - 8);
  v6 = *(v131 + 64);
  MEMORY[0x28223BE20](v149);
  v8 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v130 - v10);
  v151 = sub_23AA0CE84();
  v133 = *(v151 - 8);
  v12 = *(v133 + 64);
  MEMORY[0x28223BE20](v151);
  v142 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v130 - v15;
  MEMORY[0x28223BE20](v17);
  v144 = &v130 - v18;
  MEMORY[0x28223BE20](v19);
  *&v143 = &v130 - v20;
  v153 = type metadata accessor for CapturedRoom.Surface(0);
  v132 = *(v153 - 8);
  v21 = *(v132 + 64);
  MEMORY[0x28223BE20](v153);
  v140 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v147 = (&v130 - v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v130 - v26;
  MEMORY[0x28223BE20](v28);
  v141 = (&v130 - v29);
  MEMORY[0x28223BE20](v30);
  v139 = &v130 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v130 - v33;
  v137 = a1;
  v35 = *a1;
  v36 = *(*a1 + 16);
  v146 = v16;
  v145 = v27;
  v148 = v8;
  v152 = v11;
  if (v36)
  {
    v37 = v132;
    v38 = v35 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    swift_beginAccess();
    v150 = *(v37 + 72);
    v138 = (v133 + 8);
    *&v39 = 136315138;
    v134 = v39;
    v136 = a2;
    v135 = v3;
    do
    {
      sub_23A8D52B8(v38, v34, type metadata accessor for CapturedRoom.Surface);
      if (*(*(v3 + 24) + 16))
      {
        v40 = *(v153 + 44);
        v41 = *(v3 + 24);

        v42 = &v34[v40];
        v11 = v152;
        sub_23A9EDD28(v42);
        v44 = v43;

        if (v44)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v45 = v143;
          sub_23AA0CE94();
          v46 = v139;
          sub_23A8D52B8(v34, v139, type metadata accessor for CapturedRoom.Surface);
          v47 = sub_23AA0CE54();
          v48 = sub_23AA0D494();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v158 = v50;
            *v49 = v134;
            v51 = *(v153 + 44);
            sub_23AA0C0E4();
            sub_23A8D5380();
            v52 = sub_23AA0DBB4();
            v54 = v53;
            sub_23A8D5320(v46, type metadata accessor for CapturedRoom.Surface);
            v55 = sub_23A9A65A4(v52, v54, &v158);
            v11 = v152;

            *(v49 + 4) = v55;
            _os_log_impl(&dword_23A8B4000, v47, v48, "Wall scanItem with UUID %s already exists", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            v56 = v50;
            a2 = v136;
            MEMORY[0x23EE91710](v56, -1, -1);
            v57 = v49;
            v3 = v135;
            MEMORY[0x23EE91710](v57, -1, -1);

            (*v138)(v143, v151);
          }

          else
          {

            sub_23A8D5320(v46, type metadata accessor for CapturedRoom.Surface);
            (*v138)(v45, v151);
          }

          v27 = v145;
          v8 = v148;
        }
      }

      sub_23A8CFC2C(v34, a2);
      sub_23A8D5320(v34, type metadata accessor for CapturedRoom.Surface);
      v38 += v150;
      --v36;
    }

    while (v36);
  }

  v58 = v137[5];
  v59 = *(v58 + 16);
  v60 = v147;
  if (v59)
  {
    v61 = v131;
    v62 = v58 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    swift_beginAccess();
    v63 = *(v61 + 72);
    v150 = (v133 + 8);
    *&v64 = 136315138;
    v143 = v64;
    do
    {
      sub_23A8D52B8(v62, v11, type metadata accessor for CapturedRoom.Object);
      if (*(*(v3 + 24) + 16))
      {
        v65 = *(v149 + 32);
        v66 = *(v3 + 24);

        sub_23A9EDD28(v11 + v65);
        LOBYTE(v65) = v67;

        if (v65)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v68 = v144;
          sub_23AA0CE94();
          sub_23A8D52B8(v152, v8, type metadata accessor for CapturedRoom.Object);
          v69 = sub_23AA0CE54();
          v70 = sub_23AA0D494();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v156 = v72;
            *v71 = v143;
            v73 = *(v149 + 32);
            sub_23AA0C0E4();
            sub_23A8D5380();
            v74 = sub_23AA0DBB4();
            v76 = v75;
            sub_23A8D5320(v148, type metadata accessor for CapturedRoom.Object);
            v77 = sub_23A9A65A4(v74, v76, &v156);

            *(v71 + 4) = v77;
            _os_log_impl(&dword_23A8B4000, v69, v70, "Object scanItem with UUID %s already exists", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x23EE91710](v72, -1, -1);
            v78 = v71;
            v8 = v148;
            MEMORY[0x23EE91710](v78, -1, -1);

            (*v150)(v144, v151);
          }

          else
          {

            sub_23A8D5320(v8, type metadata accessor for CapturedRoom.Object);
            (*v150)(v68, v151);
          }

          v60 = v147;
          v27 = v145;
          v11 = v152;
        }
      }

      sub_23A8D28A4(v11);
      sub_23A8D5320(v11, type metadata accessor for CapturedRoom.Object);
      v62 += v63;
      --v59;
    }

    while (v59);
  }

  v79 = v137;
  v80 = v137[1];
  v157 = v137[3];

  sub_23A911B78(v81);
  v82 = v79[2];

  sub_23A911B78(v83);
  v84 = *(v157 + 16);
  if (v84)
  {
    v85 = v132;
    v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v148 = v157;
    v87 = v157 + v86;
    swift_beginAccess();
    v88 = *(v85 + 72);
    v152 = (v133 + 8);
    *&v89 = 136315138;
    v149 = v89;
    v90 = v142;
    v91 = v141;
    v150 = v88;
    do
    {
      sub_23A8D52B8(v87, v91, type metadata accessor for CapturedRoom.Surface);
      if (*(*(v3 + 24) + 16))
      {
        v92 = *(v153 + 44);
        v93 = *(v3 + 24);

        sub_23A9EDD28(v91->i64 + v92);
        LOBYTE(v92) = v94;

        if (v92)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          sub_23AA0CE94();
          sub_23A8D52B8(v91, v27, type metadata accessor for CapturedRoom.Surface);
          v95 = v27;
          v96 = sub_23AA0CE54();
          v97 = sub_23AA0D494();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v155 = v99;
            *v98 = v149;
            v100 = *(v153 + 44);
            sub_23AA0C0E4();
            sub_23A8D5380();
            v101 = sub_23AA0DBB4();
            v103 = v102;
            sub_23A8D5320(v95, type metadata accessor for CapturedRoom.Surface);
            v104 = sub_23A9A65A4(v101, v103, &v155);

            *(v98 + 4) = v104;
            _os_log_impl(&dword_23A8B4000, v96, v97, "Opening scanItem with UUID %s already exists", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v99);
            v105 = v99;
            v88 = v150;
            MEMORY[0x23EE91710](v105, -1, -1);
            v106 = v98;
            v90 = v142;
            MEMORY[0x23EE91710](v106, -1, -1);
          }

          else
          {

            sub_23A8D5320(v95, type metadata accessor for CapturedRoom.Surface);
          }

          (v152->i64[0])(v146, v151);
          v27 = v95;
          v91 = v141;
        }
      }

      sub_23A8D1DEC(v91);
      sub_23A8D5320(v91, type metadata accessor for CapturedRoom.Surface);
      v87 += v88;
      --v84;
    }

    while (v84);

    v60 = v147;
  }

  else
  {

    v90 = v142;
  }

  v108 = v137[4];
  v109 = *(v108 + 16);
  if (v109)
  {
    v110 = v132;
    v111 = v108 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    swift_beginAccess();
    v112 = *(v110 + 72);
    v150 = (v133 + 8);
    *&v113 = 136315138;
    v149 = v113;
    v152 = v112;
    do
    {
      sub_23A8D52B8(v111, v60, type metadata accessor for CapturedRoom.Surface);
      if (*(*(v3 + 24) + 16))
      {
        v114 = *(v153 + 44);
        v115 = *(v3 + 24);

        sub_23A9EDD28(v60->i64 + v114);
        v117 = v116;

        if (v117)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          sub_23AA0CE94();
          v118 = v60;
          v119 = v140;
          sub_23A8D52B8(v118, v140, type metadata accessor for CapturedRoom.Surface);
          v120 = sub_23AA0CE54();
          v121 = sub_23AA0D494();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v154 = v123;
            *v122 = v149;
            v124 = *(v153 + 44);
            sub_23AA0C0E4();
            sub_23A8D5380();
            v125 = sub_23AA0DBB4();
            v127 = v126;
            sub_23A8D5320(v119, type metadata accessor for CapturedRoom.Surface);
            v128 = sub_23A9A65A4(v125, v127, &v154);

            *(v122 + 4) = v128;
            _os_log_impl(&dword_23A8B4000, v120, v121, "Floor scanItem with UUID %s already exists", v122, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v123);
            MEMORY[0x23EE91710](v123, -1, -1);
            v129 = v122;
            v90 = v142;
            MEMORY[0x23EE91710](v129, -1, -1);
          }

          else
          {

            sub_23A8D5320(v119, type metadata accessor for CapturedRoom.Surface);
          }

          (*v150)(v90, v151);
          v60 = v147;
          v112 = v152;
        }
      }

      sub_23A8D2348(v60);
      result = sub_23A8D5320(v60, type metadata accessor for CapturedRoom.Surface);
      v111 += v112;
      --v109;
    }

    while (v109);
  }

  return result;
}

uint64_t sub_23A8CD540(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v226 = &v213 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v233 = &v213 - v10;
  v262 = sub_23AA0C064();
  v284.i64[0] = *(v262 - 8);
  v11 = *(v284.i64[0] + 64);
  MEMORY[0x28223BE20](v262);
  v232 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_23AA0CE84();
  v283.i64[0] = *(v239 - 8);
  v13 = *(v283.i64[0] + 64);
  MEMORY[0x28223BE20](v239);
  v240 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v220 = &v213 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v231 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v230 = &v213 - v21;
  MEMORY[0x28223BE20](v22);
  v229 = &v213 - v23;
  MEMORY[0x28223BE20](v24);
  v279 = &v213 - v25;
  MEMORY[0x28223BE20](v26);
  v278 = &v213 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v228 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v263 = &v213 - v32;
  MEMORY[0x28223BE20](v33);
  v227 = &v213 - v34;
  MEMORY[0x28223BE20](v35);
  v264 = &v213 - v36;
  MEMORY[0x28223BE20](v37);
  v281 = &v213 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v277 = &v213 - v41;
  v276 = sub_23AA0C0E4();
  v42 = *(v276 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v276);
  v275 = &v213 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for CapturedRoom.Object(0);
  v45 = *(v242 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v242);
  v234 = (&v213 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for CapturedRoom.Surface(0);
  v217 = *(v48 - 8);
  v49 = *(v217 + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v215 = (&v213 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v51);
  v214 = (&v213 - v52);
  MEMORY[0x28223BE20](v53);
  v55 = &v213 - v54;
  v218 = a1;
  v56 = *(*a1 + 16);
  if (v56)
  {
    v57 = *a1 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    v58 = *(v217 + 72);
    do
    {
      sub_23A8D52B8(v57, v55, type metadata accessor for CapturedRoom.Surface);
      sub_23A8CFC2C(v55, a2);
      sub_23A8D5320(v55, type metadata accessor for CapturedRoom.Surface);
      v57 += v58;
      --v56;
    }

    while (v56);
  }

  v59 = v218[5];
  v60 = *(v59 + 16);
  v61 = v2;
  v62 = v234;
  if (v60)
  {
    v63 = v59 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    swift_beginAccess();
    v271 = 0;
    v261 = (v42 + 16);
    v64 = *(v45 + 72);
    v241 = (v284.i64[0] + 56);
    v235 = (v283.i64[0] + 8);
    v222 = (v42 + 8);
    v223 = (v284.i64[0] + 32);
    v65 = 0x27DFAE000;
    v66 = &OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText;
    v221 = xmmword_23AA11AE0;
    *(&v67 + 1) = 1065353216;
    v216 = xmmword_23AA11AF0;
    *&v67 = 136315138;
    v219 = v67;
    v213 = vdupq_n_s32(0x3F89999Au);
    v224 = v64;
    v225 = v2;
    while (1)
    {
      sub_23A8D52B8(v63, v62, type metadata accessor for CapturedRoom.Object);
      if (*(v65 + 1304) != -1)
      {
        swift_once();
      }

      v70 = v66[246];
      swift_beginAccess();
      if (v70[171] != 1)
      {
        goto LABEL_7;
      }

      swift_beginAccess();
      if (v70[41] == 1)
      {
        v71 = v62->u8[0];
        if (v71 == 15 || v71 == 2)
        {
          goto LABEL_7;
        }
      }

      swift_beginAccess();
      v72 = v70[40];
      v258 = v63;
      v259 = v60;
      if (v72)
      {
        v73 = v72 == 1 ? sub_23A8D4438() : sub_23A8D45D8();
        v74 = v73;
      }

      else
      {
        v74 = *(v62->i32 + *(v242 + 48));
      }

      v75 = v242;
      v76 = *(v242 + 32);
      v248 = *v261;
      v248(v275, v62 + v76, v276);
      sub_23A8D5194(v62 + *(v75 + 44), v277, &unk_27DFB0970, &qword_23AA14E00);
      LOBYTE(v287[0]) = v62->i8[0];
      v249 = sub_23A9E7514();
      v270 = v62[1];
      v77 = type metadata accessor for CapturedRoom.Surface.Curve(0);
      v265 = *(v77 - 8);
      v78 = *(v265 + 56);
      v274.i64[0] = v265 + 56;
      v273 = v78;
      v78(v281, 1, 1, v77);
      v79 = v62[2];
      v282 = v62[3];
      v283 = v79;
      v80 = v62[5];
      v280 = v62[4];
      v284 = v80;
      v246 = *(v62 + *(v75 + 52));
      v245 = sub_23A94EC08(v74);
      v247 = sub_23A94EA48(v74);
      v81 = type metadata accessor for ScanItemStrut();
      v82 = *(v81 - 8);
      v83 = *(v82 + 56);
      v84 = v82 + 56;
      v83(v278, 1, 1, v81);
      v268 = v83;
      v269 = v81;
      v267 = v84;
      v83(v279, 1, 1, v81);
      v85 = *(v61 + 24);
      v86 = *(v85 + 16);
      v257 = v76;
      if (v86)
      {

        v87 = sub_23A9EDD28(v62 + v76);
        if (v88)
        {
          v89 = *(*(v85 + 56) + 8 * v87);
        }

        else
        {
          v89 = 0;
        }

        v244 = v89;
      }

      else
      {
        v244 = 0;
      }

      v90 = type metadata accessor for ScanItem();
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      v93 = swift_allocObject();
      v94 = *v241;
      v250 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
      v95 = v262;
      v94(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v262);
      v236 = v94;
      v94(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v95);
      v272 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
      v96 = v273;
      v273(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, 1, 1, v77);
      v254 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = v221;
      v252 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
      v96(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v77);
      v253 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
      v98 = v268;
      v97 = v269;
      v268(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, 1, 1, v269);
      v260 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
      v98(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v97);
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
      v99 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      v100 = type metadata accessor for AnimationGraph();
      v255 = *(v100 - 8);
      v256 = v100;
      v237 = *(v255 + 56);
      v238 = v255 + 56;
      v237(v93 + v99, 1, 1);
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
      v101 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
      v243 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
      v251 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
      v96(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v77);
      v96(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v77);
      v98(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v97);
      v98(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v97);
      v102 = (v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
      *v102 = 0;
      v102[1] = 0;
      v266 = v77;
      v96(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v77);
      v98(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v97);
      v98(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v97);
      v248((v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid), v275, v276);
      sub_23A8D5194(v277, v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = 3;
      v103 = v249;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = v249;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v246;
      *(v93 + v101) = v245 | 0xC;
      v104 = v244;
      v105 = v244 ? *(v244 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) : 0;
      v106 = v105 | v247;
      if (v103 == 20)
      {
        break;
      }

      if (v103 == 18)
      {
        v107 = 16 * (v106 & 0xF);
LABEL_33:
        *(v93 + v243) = v107 | v106;
        goto LABEL_36;
      }

      *(v93 + v243) = v106;
      if (!v103)
      {
        v108.i64[0] = vmulq_f32(v270, v213).u64[0];
        v108.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.075, v270, 2));
        v270 = v108;
      }

LABEL_36:
      v109 = v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
      v110 = v282;
      *v109 = v283;
      *(v109 + 16) = v110;
      v111 = v284;
      *(v109 + 32) = v280;
      *(v109 + 48) = v111;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v270;
      sub_23A8D5194(v281, v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
      sub_23A8D5194(v278, v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D5194(v279, v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
      v112 = v271;
      v113 = sub_23A8DE3E8(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
      v114 = v112;
      if (v112)
      {
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v115 = v220;
        sub_23AA0CE94();
        v116 = v112;
        v117 = sub_23AA0CE54();
        v118 = sub_23AA0D494();

        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v271 = v114;
          v121 = v120;
          v287[0] = v120;
          *v119 = v219;
          swift_getErrorValue();
          v122 = sub_23AA0DC34();
          v124 = sub_23A9A65A4(v122, v123, v287);

          *(v119 + 4) = v124;
          _os_log_impl(&dword_23A8B4000, v117, v118, "Cannot compute ScanItemEdges: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v121);
          v125 = v121;
          v114 = v271;
          MEMORY[0x23EE91710](v125, -1, -1);
          MEMORY[0x23EE91710](v119, -1, -1);
        }

        (*v235)(v115, v239);
        v126 = v262;
        v127 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
      }

      else
      {
        v127 = v113;
        v126 = v262;
      }

      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v127;

      v128 = v232;
      sub_23AA0C044();
      (*v223)(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v128, v126);
      if (v104)
      {
        v129 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
        swift_beginAccess();
        v130 = v104 + v129;
        v131 = v233;
        sub_23A8D5194(v130, v233, &qword_27DFAEB30, &unk_23AA11B50);
      }

      else
      {
        v132 = v126;
        v131 = v233;
        v236(v233, 1, 1, v132);
      }

      v271 = 0;
      v133 = v250;
      swift_beginAccess();
      sub_23A8D5068(v131, v93 + v133, &qword_27DFAEB30, &unk_23AA11B50);
      swift_endAccess();
      if (v104)
      {
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
        v134 = (v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
        v135 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
        swift_beginAccess();
        v136 = v104 + v135;
        v137 = v227;
        sub_23A8D5194(v136, v227, &qword_27DFAEB38, &unk_23AA11B60);
        v138 = v266;
        if ((*(v265 + 48))(v137, 1, v266) != 1)
        {
          v139 = v137;
          v140 = v264;
          sub_23A8D5130(v139, v264);
          v273(v140, 0, 1, v138);
          goto LABEL_52;
        }
      }

      else
      {
        v141 = v284;
        v141.n128_u32[3] = 0;
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v141;
        v134 = (v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v270;
        v137 = v227;
        v138 = v266;
        v273(v227, 1, 1, v266);
      }

      sub_23A8D5194(v281, v264, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*(v265 + 48))(v137, 1, v138) != 1)
      {
        sub_23A8D50D0(v137, &qword_27DFAEB38, &unk_23AA11B60);
      }

LABEL_52:
      v142 = v260;
      v143 = v272;
      swift_beginAccess();
      sub_23A8D5068(v264, v93 + v143, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      if (v104)
      {
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
        v144 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
        v145 = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
      }

      else
      {
        v289.columns[1] = v282;
        v289.columns[0] = v283;
        v289.columns[2] = v280;
        v289.columns[3] = v284;
        *&v147 = simd_quaternion(v289);
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v147;

        v144 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
      }

      *(v93 + v144) = v146;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v134;
      v148 = v263;
      sub_23A8D5194(v93 + v272, v263, &qword_27DFAEB38, &unk_23AA11B60);
      v149 = v251;
      swift_beginAccess();
      sub_23A8D5068(v148, v93 + v149, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
      if (v104)
      {
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
        v150 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
        swift_beginAccess();
        v151 = v104 + v150;
        v152 = v228;
        sub_23A8D5194(v151, v228, &qword_27DFAEB38, &unk_23AA11B60);
      }

      else
      {
        v153 = (v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
        *v153 = 0;
        v153[1] = 0;
        v152 = v228;
        v273(v228, 1, 1, v266);
      }

      v154 = v240;
      v155 = v252;
      swift_beginAccess();
      sub_23A8D5068(v152, v93 + v155, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      if (v104)
      {
        v156 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
        swift_beginAccess();
        v157 = v104 + v156;
        v158 = v229;
        sub_23A8D5194(v157, v229, &unk_27DFAF020, &unk_23AA12300);
      }

      else
      {
        v158 = v229;
        v268(v229, 1, 1, v269);
      }

      v159 = v253;
      swift_beginAccess();
      sub_23A8D5068(v158, v93 + v159, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      if (v104)
      {
        v160 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
        swift_beginAccess();
        v161 = v104 + v160;
        v162 = v230;
        sub_23A8D5194(v161, v230, &unk_27DFAF020, &unk_23AA12300);
      }

      else
      {
        v162 = v230;
        v268(v230, 1, 1, v269);
      }

      swift_beginAccess();
      sub_23A8D5068(v162, v93 + v142, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      if (v104)
      {
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
        *(v93 + v254) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
        v163 = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

        v165 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
        v127 = v163;
      }

      else
      {
        v165 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
        v167 = (v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
        *v167 = 0;
        v167[1] = 0;
        v290.columns[1] = v282;
        v290.columns[0] = v283;
        v290.columns[2] = v280;
        v290.columns[3] = v284;
        *&v168 = simd_quaternion(v290);
        *(v93 + v254) = v168;
      }

      v166 = v271;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v127;
      v274.i64[0] = v165;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v93 + v165);
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
      v169 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
      v170 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges;
      v171 = *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
      v172 = v171[2];
      if (v127[2])
      {
        v286 = v127;
        if (!v172)
        {

          v176 = sub_23A8DE9A8(v283, v282, v284, *v270.i64);
LABEL_74:
          v285 = v176;
          goto LABEL_75;
        }

        v285 = v171;
      }

      else
      {
        if (!v172)
        {
          v177 = MEMORY[0x277D84F90];
          v286 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
          v176 = sub_23A9DC9E0(v177);
          goto LABEL_74;
        }

        *v173.i64 = MEMORY[0x23EE8FF80](v164);
        v286 = sub_23A8DE9A8(v173, v174, v175, *(v93 + v169));
        v285 = *(v93 + v170);
      }

LABEL_75:
      sub_23A8DED48(&v286, &v285);
      v178 = v166;
      if (v166)
      {
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        sub_23AA0CE94();
        v179 = v166;
        v180 = sub_23AA0CE54();
        v181 = sub_23AA0D494();

        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v287[0] = v183;
          *v182 = v219;
          swift_getErrorValue();
          v184 = sub_23AA0DC34();
          v186 = sub_23A9A65A4(v184, v185, v287);

          *(v182 + 4) = v186;
          _os_log_impl(&dword_23A8B4000, v180, v181, "%s", v182, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v183);
          MEMORY[0x23EE91710](v183, -1, -1);
          MEMORY[0x23EE91710](v182, -1, -1);

          (*v235)(v240, v239);
        }

        else
        {

          (*v235)(v154, v239);
        }

        v271 = 0;
      }

      else
      {
        v271 = 0;
      }

      v187 = v226;
      v188 = v285;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v286;
      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v188;
      v189 = v263;
      sub_23A8D5194(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v263, &qword_27DFAEB38, &unk_23AA11B60);
      v190 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
      swift_beginAccess();
      sub_23A8D5068(v189, v93 + v190, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      v191 = v231;
      sub_23A8D5194(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v231, &unk_27DFAF020, &unk_23AA12300);
      v192 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
      swift_beginAccess();
      sub_23A8D5068(v191, v93 + v192, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      sub_23A8D5194(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v191, &unk_27DFAF020, &unk_23AA12300);
      v193 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
      swift_beginAccess();
      sub_23A8D5068(v191, v93 + v193, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      v66 = &OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText;
      if (v104)
      {
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v104 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
        v194 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
        swift_beginAccess();
        v195 = v256;
        sub_23A8D5194(v104 + v194, v187, &unk_27DFAF030, &qword_23AA11B48);
        v65 = 0x27DFAE000;
      }

      else
      {
        *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
        v195 = v256;
        (v237)(v187, 1, 1, v256);
        v65 = 0x27DFAE000uLL;
      }

      v196 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      swift_beginAccess();
      sub_23A8D5068(v187, v93 + v196, &unk_27DFAF030, &qword_23AA11B48);
      swift_endAccess();
      v274 = *(v93 + v274.i64[0]);
      v291.columns[1] = v282;
      v291.columns[0] = v283;
      v291.columns[2] = v280;
      v291.columns[3] = v284;
      v292 = __invert_f4(v291);
      if (vmovn_s32(vcgtq_f32(vaddq_f32(*(&v292 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v292, *&v274), *(&v292 + 16), *&v274, 1), *(&v292 + 32), v274, 2)), vaddq_f32(*(&v292 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v292, *&v284), *(&v292 + 16), *&v284, 1), *(&v292 + 32), *&v284, 2)))).i8[2])
      {
        v197 = 0;
      }

      else
      {
        v197 = 3;
      }

      *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v197;
      swift_beginAccess();
      if (!(*(v255 + 48))(v93 + v196, 1, v195))
      {
        sub_23A93C6B4(*(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), *(v93 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
      }

      swift_endAccess();

      sub_23A8D50D0(v279, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v278, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v277, &unk_27DFB0970, &qword_23AA14E00);
      (*v222)(v275, v276);
      sub_23A8D50D0(v281, &qword_27DFAEB38, &unk_23AA11B60);
      v61 = v225;
      swift_beginAccess();

      v68 = *(v61 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v286 = *(v61 + 24);
      *(v61 + 24) = 0x8000000000000000;
      v62 = v234;
      sub_23A9DA7E8(v93, v234 + v257, isUniquelyReferenced_nonNull_native);
      *(v61 + 24) = v286;
      swift_endAccess();

      v63 = v258;
      v60 = v259;
      v64 = v224;
LABEL_7:
      sub_23A8D5320(v62, type metadata accessor for CapturedRoom.Object);
      v63 += v64;
      if (!--v60)
      {
        goto LABEL_91;
      }
    }

    v107 = (v106 >> 1) & 0x11 | (2 * v106) & 0x88;
    goto LABEL_33;
  }

LABEL_91:
  v198 = v218;
  v199 = v218[1];
  v288 = v218[3];

  sub_23A911B78(v200);
  v201 = v198[2];

  sub_23A911B78(v202);
  v203 = *(v288 + 16);
  if (v203)
  {
    v204 = v288 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    v205 = *(v217 + 72);
    v206 = v214;
    do
    {
      sub_23A8D52B8(v204, v206, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D1DEC(v206);
      sub_23A8D5320(v206, type metadata accessor for CapturedRoom.Surface);
      v204 += v205;
      --v203;
    }

    while (v203);
  }

  v208 = v218[4];
  v209 = *(v208 + 16);
  v210 = v215;
  if (v209)
  {
    v211 = v208 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    v212 = *(v217 + 72);
    do
    {
      sub_23A8D52B8(v211, v210, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D2348(v210);
      result = sub_23A8D5320(v210, type metadata accessor for CapturedRoom.Surface);
      v211 += v212;
      --v209;
    }

    while (v209);
  }

  return result;
}

uint64_t sub_23A8CF430(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CapturedRoom.Object(0);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v105 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0C0E4();
  v109 = *(v8 - 8);
  v9 = v109[8];
  MEMORY[0x28223BE20](v8);
  v101 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v102 = &v94 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v94 - v14;
  v16 = type metadata accessor for CapturedRoom.Surface(0);
  v97 = *(v16 - 8);
  v98 = v16;
  v17 = *(v97 + 64);
  MEMORY[0x28223BE20](v16);
  v107 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v94 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v94 - v22;
  v99 = a1;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v108 = v8;
  if (v25)
  {
    v26 = *(v98 + 44);
    v27 = v24 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v28 = *(v97 + 72);
    v103 = (v109 + 2);
    v104 = v28;
    v29 = (v109 + 1);
    v100 = v26;
    do
    {
      sub_23A8D52B8(v27, v23, type metadata accessor for CapturedRoom.Surface);
      (*v103)(v15, &v23[v26], v8);
      sub_23A8D5320(v23, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v30 = *(v2 + 24);
      v31 = sub_23A9EDD28(v15);
      if (v32)
      {
        v33 = v31;
        v34 = *(v2 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v2 + 24);
        v110 = v36;
        *(v2 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23A90E090();
          v36 = v110;
        }

        v8 = v108;
        v37 = v109[1];
        v37(*(v36 + 48) + v109[9] * v33, v108);
        v38 = *(*(v36 + 56) + 8 * v33);

        sub_23A910778(v33, v36);
        v37(v15, v8);
        *(v2 + 24) = v36;
        v26 = v100;
      }

      else
      {
        (*v29)(v15, v8);
      }

      swift_endAccess();
      v27 += v104;
      --v25;
    }

    while (v25);
  }

  v39 = v99[5];
  v40 = *(v39 + 16);
  v41 = v102;
  if (v40)
  {
    v104 = *(v95 + 32);
    v42 = v39 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v43 = *(v96 + 72);
    v44 = (v109 + 2);
    v45 = (v109 + 1);
    do
    {
      v46 = v105;
      sub_23A8D52B8(v42, v105, type metadata accessor for CapturedRoom.Object);
      (*v44)(v41, v46 + v104, v8);
      sub_23A8D5320(v46, type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v47 = *(v2 + 24);
      v48 = sub_23A9EDD28(v41);
      if (v49)
      {
        v50 = v48;
        v51 = *(v2 + 24);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(v2 + 24);
        v110 = v53;
        *(v2 + 24) = 0x8000000000000000;
        if (!v52)
        {
          sub_23A90E090();
          v53 = v110;
        }

        v8 = v108;
        v54 = v109[1];
        v54(*(v53 + 48) + v109[9] * v50, v108);
        v55 = *(*(v53 + 56) + 8 * v50);

        sub_23A910778(v50, v53);
        v56 = v102;
        v54(v102, v8);
        v41 = v56;
        *(v2 + 24) = v53;
      }

      else
      {
        (*v45)(v41, v8);
      }

      swift_endAccess();
      v42 += v43;
      --v40;
    }

    while (v40);
  }

  v57 = v99;
  v58 = v99[1];
  v111 = v99[3];

  sub_23A911B78(v59);
  v60 = v57[2];

  sub_23A911B78(v61);
  v62 = *(v111 + 16);
  if (v62)
  {
    v63 = *(v98 + 44);
    v104 = v111;
    v105 = v63;
    v64 = v111 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v65 = *(v97 + 72);
    v66 = (v109 + 2);
    v67 = (v109 + 1);
    v68 = v101;
    do
    {
      v69 = v106;
      sub_23A8D52B8(v64, v106, type metadata accessor for CapturedRoom.Surface);
      (*v66)(v68, v69 + v105, v8);
      sub_23A8D5320(v69, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v70 = *(v2 + 24);
      v71 = sub_23A9EDD28(v68);
      if (v72)
      {
        v73 = v71;
        v74 = *(v2 + 24);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v2 + 24);
        v110 = v76;
        *(v2 + 24) = 0x8000000000000000;
        if (!v75)
        {
          sub_23A90E090();
          v76 = v110;
        }

        v8 = v108;
        v77 = v109[1];
        v77(*(v76 + 48) + v109[9] * v73, v108);
        v78 = *(*(v76 + 56) + 8 * v73);

        sub_23A910778(v73, v76);
        v68 = v101;
        v77(v101, v8);
        *(v2 + 24) = v76;
      }

      else
      {
        (*v67)(v68, v8);
      }

      swift_endAccess();
      v64 += v65;
      --v62;
    }

    while (v62);
  }

  v80 = v99[4];
  v81 = *(v80 + 16);
  v82 = v107;
  if (v81)
  {
    v83 = *(v98 + 44);
    v84 = v80 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v85 = *(v97 + 72);
    do
    {
      sub_23A8D52B8(v84, v82, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v87 = *(v2 + 24);
      v88 = sub_23A9EDD28(v82 + v83);
      if (v89)
      {
        v90 = v88;
        v91 = *(v2 + 24);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v93 = *(v2 + 24);
        v110 = v93;
        *(v2 + 24) = 0x8000000000000000;
        if (!v92)
        {
          sub_23A90E090();
          v93 = v110;
        }

        (v109[1])(*(v93 + 48) + v109[9] * v90, v8);
        v86 = *(*(v93 + 56) + 8 * v90);

        sub_23A910778(v90, v93);
        *(v2 + 24) = v93;
      }

      swift_endAccess();
      v82 = v107;
      result = sub_23A8D5320(v107, type metadata accessor for CapturedRoom.Surface);
      v84 += v85;
      --v81;
    }

    while (v81);
  }

  return result;
}

uint64_t sub_23A8CFC2C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v265 = v215 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v260 = v215 - v10;
  v273.i64[0] = sub_23AA0C064();
  v272 = *(v273.i64[0] - 8);
  v11 = *(v272 + 64);
  MEMORY[0x28223BE20](v273.i64[0]);
  v258 = v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CE84();
  v266 = *(v13 - 8);
  v267 = v13;
  v14 = *(v266 + 64);
  MEMORY[0x28223BE20](v13);
  v270 = v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v257 = v215 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v215 - v20;
  v22 = sub_23AA0C0E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v276 = v215 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v264 = v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v263 = v215 - v30;
  MEMORY[0x28223BE20](v31);
  v262 = v215 - v32;
  MEMORY[0x28223BE20](v33);
  v275 = v215 - v34;
  MEMORY[0x28223BE20](v35);
  v274 = v215 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = (v215 - v38);
  MEMORY[0x28223BE20](v40);
  v277 = (v215 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v261 = v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v269 = v215 - v46;
  MEMORY[0x28223BE20](v47);
  v271 = v215 - v48;
  MEMORY[0x28223BE20](v49);
  v259 = v215 - v50;
  MEMORY[0x28223BE20](v51);
  v278 = v215 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = v215 - v54;
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v56 = off_27DFB17B0;
  result = swift_beginAccess();
  if (v56[170] == 1)
  {
    v58 = *(a1 + 16);
    if (*v58.i32 != 0.0 || (v59 = vceqz_f32(*&vextq_s8(v58, v58, 4uLL)), (v59.i32[0] & v59.i32[1] & 1) == 0))
    {
      v60 = *(a1 + 32);
      v62 = *(a1 + 64);
      v61 = *(a1 + 80);
      v63 = *MEMORY[0x277D860B8];
      v64 = *(MEMORY[0x277D860B8] + 16);
      v65 = *(MEMORY[0x277D860B8] + 32);
      v66 = *(MEMORY[0x277D860B8] + 48);
      v255 = *(a1 + 48);
      v256 = v60;
      v254 = v62;
      v268 = v61;
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v255, v64), vceqq_f32(v60, v63)), vandq_s8(vceqq_f32(v62, v65), vceqq_f32(v61, v66)))) & 0x80000000) == 0)
      {
        v244 = v58;
        v248 = v2;
        v249 = v39;
        v252 = v22;
        v67 = *(a1 + 8);
        if (sub_23A8D46AC(0, v67))
        {
          v68 = 8;
        }

        else
        {
          v68 = 0;
        }

        if (sub_23A8D46AC(1u, v67))
        {
          v68 |= 2u;
        }

        if (sub_23A8D46AC(2u, v67))
        {
          v69 = v68 | 4;
        }

        else
        {
          v69 = v68;
        }

        v70 = sub_23A8D46AC(3u, v67);
        v228 = v69 & 0xFFFFFFFE | v70;
        LODWORD(v243) = sub_23A8EE690(v69 & 0xFEu | v70);
        swift_beginAccess();
        v71 = v56[138];
        v251 = v21;
        v247 = v23;
        if (v71 == 1)
        {
          v72 = type metadata accessor for CapturedRoom.Surface(0);
          v73 = *(a1 + *(v72 + 64));
          v229 = *(a1 + *(v72 + 68));

          v230 = v73;
        }

        else
        {
          v229 = MEMORY[0x277D84F90];
          v230 = MEMORY[0x277D84F90];
        }

        v74 = type metadata accessor for CapturedRoom.Surface(0);
        v75 = v74[13];
        sub_23A8D5194(a1 + v75, v55, &qword_27DFAEB38, &unk_23AA11B60);
        v76 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        v253 = *(v76 - 8);
        v77 = *(v253 + 48);
        v250 = v76;
        v245 = v77;
        v246 = v253 + 48;
        v78 = a1;
        v79 = (v77)(v55, 1);
        v80 = sub_23A8D50D0(v55, &qword_27DFAEB38, &unk_23AA11B60);
        MEMORY[0x28223BE20](v80);
        v81 = &v215[-4];
        v215[-2] = v78;
        if (v79 == 1)
        {
          v82 = sub_23A9AD0FC(sub_23A8D51FC, v81, a2);
          v226 = 0;
          v83 = v78;
          v84 = v252;
          v85 = v249;
        }

        else
        {
          v86 = sub_23A9AD0FC(sub_23A8D521C, v81, a2);
          MEMORY[0x28223BE20](v86);
          v215[-2] = v78;

          v82 = sub_23A9AD0FC(sub_23A8D5240, &v215[-4], a2);
          v226 = 0;
          v83 = v78;
          v85 = v249;
          if (v86)
          {
            sub_23A8D1B08(v78, v86, v277);

            v84 = v252;
            v239 = v86;
            v240 = v82;
            if (v82)
            {
LABEL_25:
              sub_23A8D1B2C(v83, v82, v85);

LABEL_26:
              v89 = v85;
              v90 = v74[11];
              v223 = *(v247 + 16);
              v224 = v247 + 16;
              v223(v276, v83 + v90, v84);
              sub_23A8D5194(v83 + v74[14], v251, &unk_27DFB0970, &qword_23AA14E00);
              sub_23A8D5194(v83 + v75, v278, &qword_27DFAEB38, &unk_23AA11B60);
              v222 = *(v83 + 112);
              v225 = sub_23A94EA48(v243);
              sub_23A8D5194(v277, v274, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D5194(v89, v275, &unk_27DFAF020, &unk_23AA12300);
              v91 = v248;
              swift_beginAccess();
              v92 = *(v91 + 24);
              v93 = *(v92 + 16);
              v241 = v83;
              v238 = v90;
              if (v93)
              {

                v94 = sub_23A9EDD28(v83 + v90);
                v95 = v273.i64[0];
                if (v96)
                {
                  v97 = *(*(v92 + 56) + 8 * v94);
                }

                else
                {
                  v97 = 0;
                }

                v221 = v97;
              }

              else
              {
                v221 = 0;
                v95 = v273.i64[0];
              }

              v98 = type metadata accessor for ScanItem();
              v99 = *(v98 + 48);
              v100 = *(v98 + 52);
              v101 = swift_allocObject();
              v102 = v272 + 56;
              v103 = *(v272 + 56);
              v227 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
              v103(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v95);
              v215[0] = v103;
              v215[1] = v102;
              v103(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v95);
              v104 = v253 + 56;
              v105 = *(v253 + 56);
              v243 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
              v106 = v250;
              v105(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, 1, 1, v250);
              v235 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = xmmword_23AA11AE0;
              v232 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
              v105(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v106);
              v107 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
              v108 = type metadata accessor for ScanItemStrut();
              v109 = *(v108 - 8);
              v110 = *(v109 + 56);
              v111 = v109 + 56;
              v233 = v107;
              v110(v101 + v107, 1, 1, v108);
              v234 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
              v110(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v108);
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
              v112 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
              v113 = type metadata accessor for AnimationGraph();
              v236 = *(v113 - 8);
              v237 = v113;
              v216 = *(v236 + 56);
              v217 = v236 + 56;
              v216(v101 + v112, 1, 1);
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
              v114 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
              v115 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
              v231 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
              v105(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v106);
              v105(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v106);
              v110(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v108);
              v110(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v108);
              v116 = (v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
              *v116 = 0;
              v116[1] = 0;
              v253 = v104;
              v242 = v105;
              v105(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v106);
              v110(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v108);
              v219 = v110;
              v220 = v108;
              v218 = v111;
              v110(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v108);
              v223((v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid), v276, v252);
              sub_23A8D5194(v251, v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = 2;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = 1;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v222;
              *(v101 + v114) = v228 | 0xC;
              v117 = v221;
              if (v221)
              {
                v118 = *(v221 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners);
              }

              else
              {
                v118 = 0;
              }

              v119 = v244;
              v120 = v271;
              v121 = v229;
              *(v101 + v115) = v118 | v225;
              v122 = v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
              v123 = v255;
              *v122 = v256;
              *(v122 + 16) = v123;
              v124 = v268;
              *(v122 + 32) = v254;
              *(v122 + 48) = v124;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v119;
              sub_23A8D5194(v278, v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
              sub_23A8D5194(v274, v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D5194(v275, v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
              v125 = v226;
              v126 = sub_23A8DE3E8(v230, v121);
              v127 = v125;
              v128 = v243;
              if (v125)
              {

                sub_23A8D4E5C();
                if (qword_27DFAE3A0 != -1)
                {
                  swift_once();
                }

                sub_23AA0D644();
                v129 = v257;
                sub_23AA0CE94();
                v130 = v125;
                v131 = sub_23AA0CE54();
                v132 = sub_23AA0D494();

                if (os_log_type_enabled(v131, v132))
                {
                  v133 = swift_slowAlloc();
                  v134 = swift_slowAlloc();
                  v281[0] = v134;
                  *v133 = 136315138;
                  swift_getErrorValue();
                  v135 = sub_23AA0DC34();
                  v137 = sub_23A9A65A4(v135, v136, v281);

                  *(v133 + 4) = v137;
                  v128 = v243;
                  _os_log_impl(&dword_23A8B4000, v131, v132, "Cannot compute ScanItemEdges: %s", v133, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v134);
                  MEMORY[0x23EE91710](v134, -1, -1);
                  MEMORY[0x23EE91710](v133, -1, -1);

                  (*(v266 + 8))(v257, v267);
                }

                else
                {

                  (*(v266 + 8))(v129, v267);
                }

                v139 = v273.i64[0];
                v120 = v271;
                v138 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
              }

              else
              {
                v138 = v126;

                v139 = v273.i64[0];
              }

              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v138;

              v140 = v258;
              sub_23AA0C044();
              (*(v272 + 32))(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v140, v139);
              if (v117)
              {
                v141 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
                swift_beginAccess();
                v142 = v117 + v141;
                v143 = v260;
                sub_23A8D5194(v142, v260, &qword_27DFAEB30, &unk_23AA11B50);
              }

              else
              {
                v143 = v260;
                (v215[0])(v260, 1, 1, v139);
              }

              v144 = v227;
              swift_beginAccess();
              sub_23A8D5068(v143, v101 + v144, &qword_27DFAEB30, &unk_23AA11B50);
              swift_endAccess();
              v273.i64[0] = 0;
              if (v117)
              {
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
                v145 = (v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
                v146 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
                swift_beginAccess();
                sub_23A8D5194(v117 + v146, v120, &qword_27DFAEB38, &unk_23AA11B60);
                v147 = v250;
                if (v245(v120, 1, v250) != 1)
                {
                  v148 = v259;
                  sub_23A8D5130(v120, v259);
                  v242(v148, 0, 1, v147);
                  goto LABEL_52;
                }
              }

              else
              {
                v149 = v268;
                v149.i32[3] = 0;
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v149;
                v145 = (v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v244;
                v147 = v250;
                v242(v120, 1, 1, v250);
              }

              v148 = v259;
              sub_23A8D5194(v278, v259, &qword_27DFAEB38, &unk_23AA11B60);
              if (v245(v120, 1, v147) != 1)
              {
                sub_23A8D50D0(v120, &qword_27DFAEB38, &unk_23AA11B60);
              }

LABEL_52:
              swift_beginAccess();
              sub_23A8D5068(v148, v101 + v128, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              v150 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
              if (v117)
              {
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
                v151 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
                v152 = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
              }

              else
              {
                v282.columns[1] = v255;
                v282.columns[0] = v256;
                v282.columns[2] = v254;
                v282.columns[3] = v268;
                *&v154 = simd_quaternion(v282);
                *(v101 + v150) = v154;

                v151 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
              }

              *(v101 + v151) = v153;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v145;
              v155 = v269;
              sub_23A8D5194(v101 + v128, v269, &qword_27DFAEB38, &unk_23AA11B60);
              v156 = v231;
              swift_beginAccess();
              sub_23A8D5068(v155, v101 + v156, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
              if (v117)
              {
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
                v157 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
                swift_beginAccess();
                v158 = v117 + v157;
                v159 = v261;
                sub_23A8D5194(v158, v261, &qword_27DFAEB38, &unk_23AA11B60);
              }

              else
              {
                v160 = (v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
                *v160 = 0;
                v160[1] = 0;
                v159 = v261;
                v242(v261, 1, 1, v250);
              }

              v161 = v232;
              swift_beginAccess();
              sub_23A8D5068(v159, v101 + v161, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              if (v117)
              {
                v162 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
                swift_beginAccess();
                v163 = v117 + v162;
                v164 = v262;
                sub_23A8D5194(v163, v262, &unk_27DFAF020, &unk_23AA12300);
              }

              else
              {
                v164 = v262;
                v219(v262, 1, 1, v220);
              }

              v165 = v233;
              swift_beginAccess();
              sub_23A8D5068(v164, v101 + v165, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              if (v117)
              {
                v166 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
                swift_beginAccess();
                v167 = v117 + v166;
                v168 = v263;
                sub_23A8D5194(v167, v263, &unk_27DFAF020, &unk_23AA12300);
              }

              else
              {
                v168 = v263;
                v219(v263, 1, 1, v220);
              }

              v169 = v234;
              swift_beginAccess();
              sub_23A8D5068(v168, v101 + v169, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              if (v117)
              {
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
                *(v101 + v235) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
                v170 = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

                v172 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
                v138 = v170;
              }

              else
              {
                v174 = (v245)(v278, 1, v250);
                v174.i32[0] = v175;
                v176.i32[0] = 1;
                v177 = vdupq_lane_s32(*&vceqq_s32(v174, v176), 0);
                v283.columns[3] = v268;
                v178 = v268;
                v178.i32[3] = 0;
                v179 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
                *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = vbicq_s8(v178, v177);
                v283.columns[1] = v255;
                v283.columns[0] = v256;
                v283.columns[2] = v254;
                *&v180 = simd_quaternion(v283);
                v172 = v179;
                *(v101 + v235) = v180;
              }

              v173 = v249;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v138;
              v272 = v172;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v101 + v172);
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
              v181 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
              *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
              v182 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges;
              v183 = *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
              v184 = v183[2];
              if (v138[2])
              {
                v280 = v138;
                v185 = v270;
                if (v184)
                {
                  v279 = v183;

LABEL_75:
                  v191 = v273.i64[0];
                  sub_23A8DED48(&v280, &v279);
                  if (v191)
                  {
                    sub_23A8D4E5C();
                    if (qword_27DFAE3A0 != -1)
                    {
                      swift_once();
                    }

                    sub_23AA0D644();
                    sub_23AA0CE94();
                    v192 = v191;
                    v193 = sub_23AA0CE54();
                    v194 = sub_23AA0D494();

                    if (os_log_type_enabled(v193, v194))
                    {
                      v195 = swift_slowAlloc();
                      v196 = swift_slowAlloc();
                      v281[0] = v196;
                      *v195 = 136315138;
                      swift_getErrorValue();
                      v197 = sub_23AA0DC34();
                      v199 = sub_23A9A65A4(v197, v198, v281);

                      *(v195 + 4) = v199;
                      _os_log_impl(&dword_23A8B4000, v193, v194, "%s", v195, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v196);
                      v200 = v196;
                      v155 = v269;
                      MEMORY[0x23EE91710](v200, -1, -1);
                      v201 = v195;
                      v173 = v249;
                      MEMORY[0x23EE91710](v201, -1, -1);

                      (*(v266 + 8))(v270, v267);
                    }

                    else
                    {

                      (*(v266 + 8))(v185, v267);
                    }
                  }

                  v202 = v279;
                  *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v280;
                  *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v202;
                  sub_23A8D5194(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v155, &qword_27DFAEB38, &unk_23AA11B60);
                  v203 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
                  swift_beginAccess();
                  sub_23A8D5068(v155, v101 + v203, &qword_27DFAEB38, &unk_23AA11B60);
                  swift_endAccess();
                  v204 = v264;
                  sub_23A8D5194(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v264, &unk_27DFAF020, &unk_23AA12300);
                  v205 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
                  swift_beginAccess();
                  sub_23A8D5068(v204, v101 + v205, &unk_27DFAF020, &unk_23AA12300);
                  swift_endAccess();
                  sub_23A8D5194(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v204, &unk_27DFAF020, &unk_23AA12300);
                  v206 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
                  swift_beginAccess();
                  sub_23A8D5068(v204, v101 + v206, &unk_27DFAF020, &unk_23AA12300);
                  swift_endAccess();
                  if (v117)
                  {
                    *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v117 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
                    v207 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
                    swift_beginAccess();
                    v208 = v265;
                    sub_23A8D5194(v117 + v207, v265, &unk_27DFAF030, &qword_23AA11B48);
                    v209 = v237;
                  }

                  else
                  {
                    *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
                    v208 = v265;
                    v209 = v237;
                    (v216)(v265, 1, 1, v237);
                  }

                  v210 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
                  swift_beginAccess();
                  sub_23A8D5068(v208, v101 + v210, &unk_27DFAF030, &qword_23AA11B48);
                  swift_endAccess();
                  v273 = *(v101 + v272);
                  v284.columns[1] = v255;
                  v284.columns[0] = v256;
                  v284.columns[2] = v254;
                  v284.columns[3] = v268;
                  v285 = __invert_f4(v284);
                  if (vmovn_s32(vcgtq_f32(vaddq_f32(v285.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v285.columns[0], v273.f32[0]), v285.columns[1], *v273.f32, 1), v285.columns[2], v273, 2)), vaddq_f32(v285.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v285.columns[0], v268.f32[0]), v285.columns[1], *v268.f32, 1), v285.columns[2], v268, 2)))).u8[0])
                  {
                    v211 = 2;
                  }

                  else
                  {
                    v211 = 1;
                  }

                  *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v211;
                  swift_beginAccess();
                  if (!(*(v236 + 48))(v101 + v210, 1, v209))
                  {
                    sub_23A93C968(*(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides), *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
                  }

                  swift_endAccess();

                  sub_23A8D50D0(v275, &unk_27DFAF020, &unk_23AA12300);
                  sub_23A8D50D0(v274, &unk_27DFAF020, &unk_23AA12300);
                  sub_23A8D50D0(v251, &unk_27DFB0970, &qword_23AA14E00);
                  (*(v247 + 8))(v276, v252);
                  sub_23A8D50D0(v278, &qword_27DFAEB38, &unk_23AA11B60);
                  v212 = v248;
                  swift_beginAccess();

                  v213 = *(v212 + 24);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v280 = *(v212 + 24);
                  *(v212 + 24) = 0x8000000000000000;
                  sub_23A9DA7E8(v101, v241 + v238, isUniquelyReferenced_nonNull_native);
                  *(v212 + 24) = v280;
                  swift_endAccess();

                  sub_23A8D50D0(v173, &unk_27DFAF020, &unk_23AA12300);
                  return sub_23A8D50D0(v277, &unk_27DFAF020, &unk_23AA12300);
                }

                v189 = sub_23A8DE9A8(v256, v255, v268, *v244.i64);
              }

              else
              {
                v185 = v270;
                if (v184)
                {
                  *v186.i64 = MEMORY[0x23EE8FF80](v171);
                  v280 = sub_23A8DE9A8(v186, v187, v188, *(v101 + v181));
                  v279 = *(v101 + v182);

                  goto LABEL_75;
                }

                v190 = MEMORY[0x277D84F90];
                v280 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
                v189 = sub_23A9DC9E0(v190);
              }

              v279 = v189;
              goto LABEL_75;
            }

LABEL_22:
            v87 = type metadata accessor for ScanItemStrut();
            (*(*(v87 - 8) + 56))(v85, 1, 1, v87);
            goto LABEL_26;
          }

          v84 = v252;
        }

        v88 = type metadata accessor for ScanItemStrut();
        (*(*(v88 - 8) + 56))(v277, 1, 1, v88);

        v239 = 0;
        v240 = v82;
        if (v82)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_23A8D1A8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  if (sub_23AA0C094())
  {
    v3 = *(v1 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_isRightCurved) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_23A8D1B50@<X0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, int32x2_t *a7@<X8>)
{
  if (a2->i8[OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration])
  {
    v8 = type metadata accessor for ScanItemStrut();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a7;
    v12 = 1;
  }

  else
  {
    v36 = __invert_f4(*(a1 + 32));
    v18 = vaddq_f32(v36.columns[3], vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*&a2[2])), 0, v36.columns[1]), v36.columns[2], a2[2], 1));
    v19 = vzip1_s32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    v20 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a3))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a3), 1), 0, v36.columns[3]);
    v21 = vzip1_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    v22 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a4))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a4), 1), 0, v36.columns[3]);
    v23 = vzip1_s32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v24 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a5))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a5), 1), 0, v36.columns[3]);
    v25 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v36.columns[0] = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a6))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a6), 1), 0, v36.columns[3]);
    v26 = vzip1_s32(*v36.columns[0].f32, *&vextq_s8(v36.columns[0], v36.columns[0], 8uLL));
    v27 = type metadata accessor for ScanItemStrut();
    v28 = a7 + *(v27 + 44);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v30 = *(v29 + 48);
    v31 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    v32 = sub_23AA0C0E4();
    v33 = *(*(v32 - 8) + 16);
    v33(v28, a2 + v31, v32);
    v33(&v28[v30], a2 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v32);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    *a7 = v19;
    a7[1] = v21;
    a7[2] = v23;
    a7[3].i32[0] = 1042536202;
    a7[4] = v25;
    a7[5] = v26;
    a7[6].i32[0] = 1042536202;
    v9 = *(*(v27 - 8) + 56);
    v11 = a7;
    v12 = 0;
    v10 = v27;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t sub_23A8D1DEC(int8x16_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v58 - v16;
  v18 = sub_23AA0C0E4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v23 = off_27DFB17B0;
  result = swift_beginAccess();
  if (v23[172] == 1)
  {
    v25 = a1[1];
    if (*v25.i32 != 0.0 || (v26 = vceqz_f32(*&vextq_s8(v25, v25, 4uLL)), (v26.i32[0] & v26.i32[1] & 1) == 0))
    {
      v27 = a1[2];
      v28 = a1[3];
      v29 = a1[4];
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v28, *(MEMORY[0x277D860B8] + 16)), vceqq_f32(v27, *MEMORY[0x277D860B8])), vandq_s8(vceqq_f32(v29, *(MEMORY[0x277D860B8] + 32)), vceqq_f32(a1[5], *(MEMORY[0x277D860B8] + 48))))) & 0x80000000) == 0)
      {
        v62 = a1[5];
        v63 = v29;
        v64 = v28;
        v65 = v27;
        v67 = v25;
        v30 = type metadata accessor for CapturedRoom.Surface(0);
        v31 = *(v19 + 16);
        v66 = v30[11];
        v31(v22, &a1->i8[v66], v18);
        sub_23A8D5194(a1->i64 + v30[14], v17, &unk_27DFB0970, &qword_23AA14E00);
        v32 = a1->i8[0];
        v33 = a1->i8[0] - 2;
        v69 = v9;
        v70 = v6;
        if (v33 >= 4u)
        {
          v36 = (v32 & 1) == 0;
          if (v32)
          {
            v37 = 0;
          }

          else
          {
            v37 = 5;
          }

          v61 = v37;
          if (v36)
          {
            v35 = 3;
          }

          else
          {
            v35 = 4;
          }
        }

        else
        {
          v34 = 8 * (v33 & 0x1F);
          v61 = 0x6040102u >> v34;
          v35 = 0x20501u >> v34;
        }

        v60 = v35;
        sub_23A8D5194(a1->i64 + v30[13], v13, &qword_27DFAEB38, &unk_23AA11B60);
        v38 = *(a1->i64 + v30[17]);
        v39 = *(a1->i64 + v30[16]);
        v58 = a1[7];
        v40 = type metadata accessor for ScanItemStrut();
        v41 = *(*(v40 - 8) + 56);
        v41(v69, 1, 1, v40);
        v41(v70, 1, 1, v40);
        v42 = v38;
        swift_beginAccess();
        v68 = v1;
        v43 = *(v1 + 24);
        v44 = *(v43 + 16);

        v59 = v39;

        if (v44)
        {

          v45 = v66;
          v46 = sub_23A9EDD28(a1->i64 + v66);
          if (v47)
          {
            v48 = *(*(v43 + 56) + 8 * v46);
          }

          else
          {
            v48 = 0;
          }

          v50 = v69;
          v49 = v70;
        }

        else
        {
          v48 = 0;
          v45 = v66;
          v50 = v69;
          v49 = v70;
        }

        v51 = type metadata accessor for ScanItem();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v54 = sub_23A8D8820(v22, v17, v61, v60, v13, v42, v59, 15, v67, v65, v64, v63, v62, v58, 255, v50, v49, v48);
        v55 = v68;
        swift_beginAccess();

        v56 = *(v55 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v55 + 24);
        *(v55 + 24) = 0x8000000000000000;
        sub_23A9DA7E8(v54, a1->i64 + v45, isUniquelyReferenced_nonNull_native);
        *(v55 + 24) = v71;
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_23A8D2348(int8x16_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v58 - v16;
  v18 = sub_23AA0C0E4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v23 = off_27DFB17B0;
  result = swift_beginAccess();
  if (v23[173] == 1)
  {
    v25 = a1[1];
    if (*v25.i32 != 0.0 || (v26 = vceqz_f32(*&vextq_s8(v25, v25, 4uLL)), (v26.i32[0] & v26.i32[1] & 1) == 0))
    {
      v27 = a1[2];
      v28 = a1[3];
      v29 = a1[4];
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v28, *(MEMORY[0x277D860B8] + 16)), vceqq_f32(v27, *MEMORY[0x277D860B8])), vandq_s8(vceqq_f32(v29, *(MEMORY[0x277D860B8] + 32)), vceqq_f32(a1[5], *(MEMORY[0x277D860B8] + 48))))) & 0x80000000) == 0)
      {
        v62 = a1[5];
        v63 = v29;
        v64 = v28;
        v65 = v27;
        v67 = v25;
        v30 = type metadata accessor for CapturedRoom.Surface(0);
        v31 = *(v19 + 16);
        v66 = v30[11];
        v31(v22, &a1->i8[v66], v18);
        sub_23A8D5194(a1->i64 + v30[14], v17, &unk_27DFB0970, &qword_23AA14E00);
        v32 = a1->i8[0];
        v33 = a1->i8[0] - 2;
        v69 = v9;
        v70 = v6;
        if (v33 >= 4u)
        {
          v36 = (v32 & 1) == 0;
          if (v32)
          {
            v37 = 0;
          }

          else
          {
            v37 = 5;
          }

          v61 = v37;
          if (v36)
          {
            v35 = 3;
          }

          else
          {
            v35 = 4;
          }
        }

        else
        {
          v34 = 8 * (v33 & 0x1F);
          v61 = 0x6040102u >> v34;
          v35 = 0x20501u >> v34;
        }

        v60 = v35;
        sub_23A8D5194(a1->i64 + v30[13], v13, &qword_27DFAEB38, &unk_23AA11B60);
        v38 = *(a1->i64 + v30[17]);
        v39 = *(a1->i64 + v30[16]);
        v58 = a1[7];
        v40 = type metadata accessor for ScanItemStrut();
        v41 = *(*(v40 - 8) + 56);
        v41(v69, 1, 1, v40);
        v41(v70, 1, 1, v40);
        v42 = v38;
        swift_beginAccess();
        v68 = v1;
        v43 = *(v1 + 24);
        v44 = *(v43 + 16);

        v59 = v39;

        if (v44)
        {

          v45 = v66;
          v46 = sub_23A9EDD28(a1->i64 + v66);
          if (v47)
          {
            v48 = *(*(v43 + 56) + 8 * v46);
          }

          else
          {
            v48 = 0;
          }

          v50 = v69;
          v49 = v70;
        }

        else
        {
          v48 = 0;
          v45 = v66;
          v50 = v69;
          v49 = v70;
        }

        v51 = type metadata accessor for ScanItem();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v54 = sub_23A8D8820(v22, v17, v61, v60, v13, v42, v59, 15, v67, v65, v64, v63, v62, v58, 255, v50, v49, v48);
        v55 = v68;
        swift_beginAccess();

        v56 = *(v55 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v55 + 24);
        *(v55 + 24) = 0x8000000000000000;
        sub_23A9DA7E8(v54, a1->i64 + v45, isUniquelyReferenced_nonNull_native);
        *(v55 + 24) = v71;
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_23A8D28A4(float32x4_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v175 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v217 = &v175 - v10;
  v229.i64[0] = sub_23AA0C064();
  v227 = *(v229.i64[0] - 8);
  v11 = *(v227 + 64);
  MEMORY[0x28223BE20](v229.i64[0]);
  v216 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0CE84();
  v224 = *(v13 - 8);
  v225 = v13;
  v14 = *(v224 + 64);
  MEMORY[0x28223BE20](v13);
  v226 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v211 = &v175 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v220 = &v175 - v23;
  MEMORY[0x28223BE20](v24);
  v219 = &v175 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v175 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v175 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v218 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v228 = &v175 - v36;
  MEMORY[0x28223BE20](v37);
  v214 = &v175 - v38;
  MEMORY[0x28223BE20](v39);
  v215 = &v175 - v40;
  MEMORY[0x28223BE20](v41);
  v233 = &v175 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v232 = &v175 - v45;
  v46 = sub_23AA0C0E4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v231 = &v175 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v50 = off_27DFB17B0;
  result = swift_beginAccess();
  if (v50[171] == 1)
  {
    result = swift_beginAccess();
    if (v50[41] != 1 || (v52 = a1->u8[0], v52 != 2) && v52 != 15)
    {
      swift_beginAccess();
      v53 = v50[40];
      v222 = v31;
      v223 = v28;
      v201 = v21;
      v198 = v7;
      v221 = v46;
      if (v53)
      {
        if (v53 == 1)
        {
          v54 = sub_23A8D4438();
        }

        else
        {
          v54 = sub_23A8D45D8();
        }

        v55 = v54;
      }

      else
      {
        v55 = *(a1->i32 + *(type metadata accessor for CapturedRoom.Object(0) + 48));
      }

      v56 = type metadata accessor for CapturedRoom.Object(0);
      v57 = v56[8];
      v202 = v47;
      v185 = *(v47 + 16);
      v186 = v47 + 16;
      v185(v231, a1 + v57, v221);
      sub_23A8D5194(a1 + v56[11], v232, &unk_27DFB0970, &qword_23AA14E00);
      v237 = a1->i8[0];
      v187 = sub_23A9E7514();
      v206 = a1[1];
      v58 = type metadata accessor for CapturedRoom.Surface.Curve(0);
      v190 = *(v58 - 8);
      v59 = *(v190 + 56);
      v208 = v190 + 56;
      v209 = v58;
      v207 = v59;
      (v59)(v233, 1, 1);
      v60 = a1[2];
      v212 = a1[3];
      v213 = v60;
      v61 = a1[5];
      v210 = a1[4];
      v230 = v61;
      v183 = *(a1 + v56[13]);
      v182 = sub_23A94EC08(v55);
      v184 = sub_23A94EA48(v55);
      v62 = type metadata accessor for ScanItemStrut();
      v63 = *(v62 - 8);
      v64 = *(v63 + 56);
      v65 = v63 + 56;
      v64(v222, 1, 1, v62);
      v204 = v64;
      v205 = v62;
      v203 = v65;
      v64(v223, 1, 1, v62);
      swift_beginAccess();
      v66 = *(v2 + 24);
      v67 = *(v66 + 16);
      v199 = a1;
      v200 = v2;
      v197 = v57;
      if (v67)
      {

        v68 = sub_23A9EDD28(a1 + v57);
        v69 = v229.i64[0];
        if (v70)
        {
          v71 = *(*(v66 + 56) + 8 * v68);
        }

        else
        {
          v71 = 0;
        }

        v72 = v209;
        v180 = v71;
      }

      else
      {
        v180 = 0;
        v69 = v229.i64[0];
        v72 = v209;
      }

      v73 = type metadata accessor for ScanItem();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      v76 = swift_allocObject();
      v77 = v227 + 56;
      v78 = *(v227 + 56);
      v188 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
      v78(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v69);
      v176 = v78;
      v177 = v77;
      v78(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v69);
      v181 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
      v79 = v207;
      v207(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, 1, 1, v72);
      v194 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = xmmword_23AA11AE0;
      v191 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
      v79(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v72);
      v192 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
      v80 = v204;
      v81 = v205;
      v204(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, 1, 1, v205);
      v193 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
      v80(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v81);
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
      v82 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      v83 = type metadata accessor for AnimationGraph();
      v195 = *(v83 - 8);
      v196 = v83;
      v178 = *(v195 + 56);
      v179 = v195 + 56;
      v178(v76 + v82, 1, 1);
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
      v84 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
      v85 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
      v189 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
      v79(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v72);
      v79(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v72);
      v80(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v81);
      v80(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v81);
      v86 = (v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
      *v86 = 0;
      v86[1] = 0;
      v79(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v72);
      v80(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v81);
      v80(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v81);
      v185((v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid), v231, v221);
      sub_23A8D5194(v232, v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = 3;
      v87 = v187;
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = v187;
      *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v183;
      *(v76 + v84) = v182 | 0xC;
      v88 = v180;
      if (v180)
      {
        v89 = *(v180 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners);
      }

      else
      {
        v89 = 0;
      }

      v90 = v89 | v184;
      v91 = v229.i64[0];
      v92 = v209;
      if (v87 == 20)
      {
        v93 = (v90 >> 1) & 0x11 | (2 * v90) & 0x88;
      }

      else
      {
        if (v87 != 18)
        {
          *(v76 + v85) = v90;
          if (!v87)
          {
            v94.i64[0] = vmulq_f32(v206, vdupq_n_s32(0x3F89999Au)).u64[0];
            v94.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.075, v206, 2));
            v206 = v94;
          }

LABEL_29:
          v95 = v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
          v96 = v212;
          *v95 = v213;
          *(v95 + 16) = v96;
          v97 = v230;
          *(v95 + 32) = v210;
          *(v95 + 48) = v97;
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v206;
          sub_23A8D5194(v233, v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A8D5194(v222, v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D5194(v223, v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
          v98 = sub_23A8DE3E8(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
          v99 = v214;
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v98;

          v100 = v216;
          sub_23AA0C044();
          (*(v227 + 32))(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v100, v91);
          if (v88)
          {
            v101 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
            swift_beginAccess();
            v102 = v88 + v101;
            v103 = v217;
            sub_23A8D5194(v102, v217, &qword_27DFAEB30, &unk_23AA11B50);
          }

          else
          {
            v103 = v217;
            v176(v217, 1, 1, v91);
          }

          v229.i64[0] = 0;
          v104 = v188;
          swift_beginAccess();
          sub_23A8D5068(v103, v76 + v104, &qword_27DFAEB30, &unk_23AA11B50);
          swift_endAccess();
          if (v88)
          {
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
            v105 = (v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
            v106 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
            swift_beginAccess();
            sub_23A8D5194(v88 + v106, v99, &qword_27DFAEB38, &unk_23AA11B60);
            v107 = v190;
            if ((*(v190 + 48))(v99, 1, v92) != 1)
            {
              v108 = v215;
              sub_23A8D5130(v99, v215);
              v207(v108, 0, 1, v92);
              goto LABEL_39;
            }

            v108 = v215;
          }

          else
          {
            v109 = v230;
            v109.n128_u32[3] = 0;
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v109;
            v105 = (v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v206;
            v207(v99, 1, 1, v92);
            v108 = v215;
            v107 = v190;
          }

          sub_23A8D5194(v233, v108, &qword_27DFAEB38, &unk_23AA11B60);
          if ((*(v107 + 48))(v99, 1, v92) != 1)
          {
            sub_23A8D50D0(v99, &qword_27DFAEB38, &unk_23AA11B60);
          }

LABEL_39:
          v110 = v181;
          swift_beginAccess();
          sub_23A8D5068(v108, v76 + v110, &qword_27DFAEB38, &unk_23AA11B60);
          swift_endAccess();
          if (v88)
          {
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
            v111 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
            v112 = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);
          }

          else
          {
            v238.columns[1] = v212;
            v238.columns[0] = v213;
            v238.columns[2] = v210;
            v238.columns[3] = v230;
            *&v114 = simd_quaternion(v238);
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v114;

            v111 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
          }

          *(v76 + v111) = v113;
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v105;
          v115 = v228;
          sub_23A8D5194(v76 + v110, v228, &qword_27DFAEB38, &unk_23AA11B60);
          v116 = v189;
          swift_beginAccess();
          sub_23A8D5068(v115, v76 + v116, &qword_27DFAEB38, &unk_23AA11B60);
          swift_endAccess();
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
          if (v88)
          {
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
            v117 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
            swift_beginAccess();
            v118 = v88 + v117;
            v119 = v218;
            sub_23A8D5194(v118, v218, &qword_27DFAEB38, &unk_23AA11B60);
          }

          else
          {
            v120 = (v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
            *v120 = 0;
            v120[1] = 0;
            v119 = v218;
            v207(v218, 1, 1, v92);
          }

          v121 = v226;
          v122 = v191;
          swift_beginAccess();
          sub_23A8D5068(v119, v76 + v122, &qword_27DFAEB38, &unk_23AA11B60);
          swift_endAccess();
          if (v88)
          {
            v123 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
            swift_beginAccess();
            v124 = v88 + v123;
            v125 = v219;
            sub_23A8D5194(v124, v219, &unk_27DFAF020, &unk_23AA12300);
          }

          else
          {
            v125 = v219;
            v204(v219, 1, 1, v205);
          }

          v126 = v192;
          swift_beginAccess();
          sub_23A8D5068(v125, v76 + v126, &unk_27DFAF020, &unk_23AA12300);
          swift_endAccess();
          if (v88)
          {
            v127 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
            swift_beginAccess();
            v128 = v88 + v127;
            v129 = v220;
            sub_23A8D5194(v128, v220, &unk_27DFAF020, &unk_23AA12300);
          }

          else
          {
            v129 = v220;
            v204(v220, 1, 1, v205);
          }

          v130 = v193;
          swift_beginAccess();
          sub_23A8D5068(v129, v76 + v130, &unk_27DFAF020, &unk_23AA12300);
          swift_endAccess();
          if (v88)
          {
            *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
            *(v76 + v194) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
            v131 = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

            v133 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
            v98 = v131;
          }

          else
          {
            v135 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
            v136 = (v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
            *v136 = 0;
            v136[1] = 0;
            v239.columns[1] = v212;
            v239.columns[0] = v213;
            v239.columns[2] = v210;
            v239.columns[3] = v230;
            *&v137 = simd_quaternion(v239);
            v133 = v135;
            *(v76 + v194) = v137;
          }

          v134 = v202;
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v98;
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v76 + v133);
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
          v138 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
          *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
          v139 = v98[2];
          v140 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges;
          v141 = *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
          v142 = v141[2];
          v227 = v133;
          if (v139)
          {
            v235 = v98;
            v143 = v201;
            if (v142)
            {
              v234 = v141;

LABEL_62:
              v149 = v229.i64[0];
              sub_23A8DED48(&v235, &v234);
              if (v149)
              {
                sub_23A8D4E5C();
                if (qword_27DFAE3A0 != -1)
                {
                  swift_once();
                }

                sub_23AA0D644();
                sub_23AA0CE94();
                v150 = v149;
                v151 = sub_23AA0CE54();
                v152 = sub_23AA0D494();

                if (os_log_type_enabled(v151, v152))
                {
                  v153 = swift_slowAlloc();
                  v154 = swift_slowAlloc();
                  v236 = v154;
                  *v153 = 136315138;
                  swift_getErrorValue();
                  v155 = sub_23AA0DC34();
                  v157 = sub_23A9A65A4(v155, v156, &v236);

                  *(v153 + 4) = v157;
                  _os_log_impl(&dword_23A8B4000, v151, v152, "%s", v153, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v154);
                  v158 = v154;
                  v134 = v202;
                  MEMORY[0x23EE91710](v158, -1, -1);
                  v159 = v153;
                  v143 = v201;
                  MEMORY[0x23EE91710](v159, -1, -1);

                  (*(v224 + 8))(v226, v225);
                }

                else
                {

                  (*(v224 + 8))(v121, v225);
                }
              }

              v160 = v234;
              *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v235;
              *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v160;
              v161 = v228;
              sub_23A8D5194(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v228, &qword_27DFAEB38, &unk_23AA11B60);
              v162 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
              swift_beginAccess();
              sub_23A8D5068(v161, v76 + v162, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              sub_23A8D5194(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v143, &unk_27DFAF020, &unk_23AA12300);
              v163 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
              swift_beginAccess();
              sub_23A8D5068(v143, v76 + v163, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              sub_23A8D5194(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v143, &unk_27DFAF020, &unk_23AA12300);
              v164 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
              swift_beginAccess();
              sub_23A8D5068(v143, v76 + v164, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              if (v88)
              {
                *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v88 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
                v165 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
                swift_beginAccess();
                v166 = v198;
                sub_23A8D5194(v88 + v165, v198, &unk_27DFAF030, &qword_23AA11B48);
                v167 = v223;
                v169 = v196;
                v168 = v197;
              }

              else
              {
                *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
                v166 = v198;
                v169 = v196;
                (v178)(v198, 1, 1, v196);
                v167 = v223;
                v168 = v197;
              }

              v170 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
              swift_beginAccess();
              sub_23A8D5068(v166, v76 + v170, &unk_27DFAF030, &qword_23AA11B48);
              swift_endAccess();
              v229 = *(v76 + v227);
              v240.columns[1] = v212;
              v240.columns[0] = v213;
              v240.columns[2] = v210;
              v240.columns[3] = v230;
              v241 = __invert_f4(v240);
              if (vmovn_s32(vcgtq_f32(vaddq_f32(*(&v241 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v241, *&v229), *(&v241 + 16), *&v229, 1), *(&v241 + 32), v229, 2)), vaddq_f32(*(&v241 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v241, *&v230), *(&v241 + 16), *&v230, 1), *(&v241 + 32), *&v230, 2)))).i8[2])
              {
                v171 = 0;
              }

              else
              {
                v171 = 3;
              }

              *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v171;
              swift_beginAccess();
              if (!(*(v195 + 48))(v76 + v170, 1, v169))
              {
                sub_23A93C6B4(*(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), *(v76 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
              }

              swift_endAccess();

              sub_23A8D50D0(v167, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D50D0(v222, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D50D0(v232, &unk_27DFB0970, &qword_23AA14E00);
              (*(v134 + 8))(v231, v221);
              sub_23A8D50D0(v233, &qword_27DFAEB38, &unk_23AA11B60);
              v172 = v200;
              swift_beginAccess();

              v173 = *(v172 + 24);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v235 = *(v172 + 24);
              *(v172 + 24) = 0x8000000000000000;
              sub_23A9DA7E8(v76, v199 + v168, isUniquelyReferenced_nonNull_native);
              *(v172 + 24) = v235;
              swift_endAccess();
            }

            v147 = sub_23A8DE9A8(v213, v212, v230, *v206.i64);
          }

          else
          {
            v143 = v201;
            if (v142)
            {
              *v144.i64 = MEMORY[0x23EE8FF80](v132);
              v235 = sub_23A8DE9A8(v144, v145, v146, *(v76 + v138));
              v234 = *(v76 + v140);

              goto LABEL_62;
            }

            v148 = MEMORY[0x277D84F90];
            v235 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
            v147 = sub_23A9DC9E0(v148);
          }

          v234 = v147;
          goto LABEL_62;
        }

        v93 = 16 * (v90 & 0xF);
      }

      *(v76 + v85) = v93 | v90;
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t sub_23A8D43D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_23A8D4438()
{
  v1 = *v0;
  if (v1 > 7)
  {
    if (*v0 <= 0xAu)
    {
      if (v1 - 8 < 2)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (v1 - 11 >= 2)
    {
      if (v1 - 13 >= 2)
      {
        return 0;
      }

LABEL_16:
      v3 = *&v0[*(type metadata accessor for CapturedRoom.Object(0) + 48)];
      if ((v3 & 4) != 0)
      {
        if ((v3 & 0x40) != 0)
        {
          result = 68;
          if ((v3 & 0x20) == 0)
          {
LABEL_35:
            if ((v3 & 2) == 0 || (result & 2) != 0)
            {
              return result;
            }

            return result | 2;
          }

          goto LABEL_34;
        }

        result = 4;
        if ((v3 & 0x20) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v3 & 0x40) != 0)
        {
          result = 64;
          if ((v3 & 0x20) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        result = 0;
        if ((v3 & 0x20) != 0)
        {
LABEL_34:
          result = result | 0x20;
          goto LABEL_35;
        }
      }

LABEL_40:
      if ((v3 & 2) == 0)
      {
        return result;
      }

      return result | 2;
    }

LABEL_11:
    v3 = *&v0[*(type metadata accessor for CapturedRoom.Object(0) + 48)];
    if ((v3 & 4) != 0)
    {
      if ((v3 & 8) != 0)
      {
        result = 12;
        if ((v3 & 1) == 0)
        {
LABEL_53:
          if ((v3 & 2) != 0 && (result & 2) == 0)
          {
            return result | 2;
          }

          return result;
        }
      }

      else
      {
        result = 4;
        if ((v3 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else if ((v3 & 8) != 0)
    {
      result = 8;
      if ((v3 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = 0;
      if ((v3 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    result = result | 1;
    goto LABEL_53;
  }

  if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      goto LABEL_16;
    }

    if (v1 != 6)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v1 - 2 >= 3)
  {
    goto LABEL_16;
  }

LABEL_20:
  v4 = *&v0[*(type metadata accessor for CapturedRoom.Object(0) + 48)];
  if ((v4 & 0x40) == 0)
  {
    if ((v4 & 0x80) != 0)
    {
      result = 128;
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    result = 0;
    if ((v4 & 0x10) != 0)
    {
LABEL_45:
      result = result | 0x10;
      goto LABEL_46;
    }

LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    return result | 0x20;
  }

  if ((v4 & 0x80) == 0)
  {
    result = 64;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  result = 192;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_45;
  }

LABEL_46:
  if ((v4 & 0x20) != 0 && (result & 0x20) == 0)
  {
    return result | 0x20;
  }

  return result;
}

uint64_t sub_23A8D45D8()
{
  v1 = *v0;
  v2 = type metadata accessor for CapturedRoom.Object(0);
  v3 = *&v0[*(v2 + 48)];
  if (v1 == 14)
  {
    if ((v3 & 4) != 0)
    {
      if ((v3 & 0x40) != 0)
      {
        result = 68;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = 4;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else if ((v3 & 0x40) != 0)
    {
      result = 64;
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = 0;
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }
    }

    result = result | 0x20;
    goto LABEL_27;
  }

  if (v1 != 12)
  {
    return *&v0[*(v2 + 48)];
  }

  if ((v3 & 4) != 0)
  {
    if ((v3 & 8) != 0)
    {
      result = 12;
      if ((v3 & 1) == 0)
      {
LABEL_27:
        if ((v3 & 2) != 0 && (result & 2) == 0)
        {
          return result | 2;
        }

        return result;
      }

      goto LABEL_22;
    }

    result = 4;
    if (v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v3 & 8) != 0)
    {
      result = 8;
      if ((v3 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    result = 0;
    if (v3)
    {
LABEL_22:
      result = result | 1;
      goto LABEL_27;
    }
  }

LABEL_17:
  if ((v3 & 2) != 0)
  {
    return result | 2;
  }

  return result;
}

BOOL sub_23A8D46AC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v3);
  v5 = sub_23AA0DD54();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_23A8D4778(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v92 = a4;
  v91 = a3;
  v90 = a2;
  v89 = a1;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v89 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v89 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  swift_beginAccess();
  v18 = *(v5 + 24);
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(*(v5 + 24) + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v97 = *(v5 + 24);

  swift_beginAccess();
  v25 = 0;
  v26 = (v22 + 63) >> 6;
  v27 = (v7 + 16);
  v103 = (v7 + 8);
  v95 = v17;
  v94 = v20;
  v93 = v26;
  v104 = (v7 + 16);
  for (i = v14; v24; v27 = v104)
  {
LABEL_8:
    v29 = *(*(v97 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    v30 = *v27;
    v101 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
    v102 = v30;
    (v30)(v17, v29 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v6);
    v31 = *(v5 + 32);
    v32 = *(v31 + 16);
    v105 = v29;
    if (v32)
    {

      v33 = sub_23A9EDD28(v17);
      if (v34)
      {
        v35 = (*(v31 + 56) + 32 * v33);
        v106 = *v35;
        v36 = v35[1].i8[0];
        v100 = *v103;
        v100(v17, v6);

        if (v36)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v100 = *v103;
        v100(v17, v6);
      }
    }

    else
    {
      v43 = *v103;

      v100 = v43;
      v43(v17, v6);
    }

    v44 = v105;
    v45 = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
    v46 = 0uLL;
    v106 = 0u;
    if ((v45 - 1) >= 2)
    {
      if (v45 != 3)
      {
        goto LABEL_20;
      }

      sub_23A9F59B8(v105, *(v5 + 17), v89, v90, v91, v92);
    }

    else
    {
      v46.n128_u64[0] = sub_23A9F5774(v105, *(v5 + 16), v37, v38, v39, v40, v41, v42, v89.n128_f64[0], v90.n128_f64[0], v91, v92);
      if (v49)
      {
        goto LABEL_20;
      }

      v46.n128_u64[0] = v47;
      *&v46.n128_i8[8] = v48;
    }

    v106 = v46;
LABEL_20:
    v50 = v6;
    v102(v14, v44 + v101, v6, v46);
    swift_beginAccess();
    v51 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(v5 + 32);
    v53 = v107;
    *(v5 + 32) = 0x8000000000000000;
    v55 = sub_23A9EDD28(v14);
    v56 = v53[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_43;
    }

    v59 = v54;
    if (v53[3] >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23A90DAF4();
      }
    }

    else
    {
      sub_23A907D54(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_23A9EDD28(i);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_45;
      }

      v55 = v60;
    }

    v6 = v50;
    v62 = v5;
    v63 = v107;
    if (v59)
    {
      v64 = (v107[7] + 32 * v55);
      *v64 = v106;
      v64[1].i8[0] = 1;
      v65 = i;
      v66 = v102;
    }

    else
    {
      v67 = v96;
      v65 = i;
      v68 = v50;
      v66 = v102;
      (v102)(v96, i, v68);
      sub_23A9DBA60(v55, v67, 1u, v63, v106);
    }

    v100(v65, v6);
    v5 = v62;
    *(v62 + 32) = v63;
    v69 = v98;
    v66(v98, v105 + v101, v6);
    v70 = *(v5 + 32);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(v5 + 32);
    v72 = v107;
    *(v5 + 32) = 0x8000000000000000;
    v73 = sub_23A9EDD28(v69);
    v75 = v72[2];
    v76 = (v74 & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_44;
    }

    v79 = v74;
    v80 = v66;
    if (v72[3] < v78)
    {
      sub_23A907D54(v78, v71);
      v81 = v98;
      v73 = sub_23A9EDD28(v98);
      v26 = v93;
      if ((v79 & 1) != (v82 & 1))
      {
        goto LABEL_46;
      }

LABEL_34:
      v83 = v107;
      if ((v79 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v26 = v93;
    v81 = v98;
    if (v71)
    {
      goto LABEL_34;
    }

    v85 = v73;
    sub_23A90DAF4();
    v73 = v85;
    v83 = v107;
    if ((v79 & 1) == 0)
    {
LABEL_37:
      v86 = v73;
      v87 = v96;
      v80(v96, v81, v6);
      sub_23A9DBA60(v86, v87, 1u, v83, v106);
      goto LABEL_38;
    }

LABEL_35:
    v84 = (v83[7] + 32 * v73);
    *v84 = v106;
    v84[1].i8[0] = 1;
LABEL_38:
    v14 = i;
    v100(v81, v6);
    *(v5 + 32) = v83;
    swift_endAccess();
    v17 = v95;
    v20 = v94;
LABEL_39:
    v24 &= v24 - 1;
    sub_23A8DC8D4(v106);
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
    }

    v24 = *(v20 + 8 * v28);
    ++v25;
    if (v24)
    {
      v25 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_23AA0DC24();
  __break(1u);
LABEL_46:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

unint64_t sub_23A8D4E5C()
{
  result = qword_27DFAF770;
  if (!qword_27DFAF770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAF770);
  }

  return result;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t sub_23A8D5068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A8D50D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23A8D5130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D5194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A8D5264(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *a2;
  v6 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  return sub_23AA0C094() & 1;
}

uint64_t sub_23A8D52B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A8D5320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A8D5380()
{
  result = qword_27DFAEB48;
  if (!qword_27DFAEB48)
  {
    sub_23AA0C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEB48);
  }

  return result;
}

uint64_t sub_23A8D53D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v83 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  *&v82 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v76 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for ScanItemStrut();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v28);
  v81 = (&v76 - v29);
  MEMORY[0x28223BE20](v30);
  v34 = (&v76 - v33);
  if (fabsf(v83.n128_f32[0] + -1.0) >= 0.00000011921)
  {
    v76 = v31;
    v77 = v32;
    v78 = v19;
    v79 = a3;
    v36 = *(v19 + 48);
    if (v36(a1, 1, v18) == 1)
    {
      sub_23A8D6CA0(a2, v17);
      if (v36(v17, 1, v18) != 1)
      {
        sub_23A8D6D78(v17, v27);
        v82 = *v27;
        v44 = *(v27 + 8);
        v45 = *(v27 + 16);
        v46 = *(v27 + 6);
        v47 = *(v18 + 44);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
        (*(*(v48 - 8) + 56))(v34 + v47, 1, 1, v48);
        *v34->f32 = v82;
        v34[2] = v45;
        v34[3].i32[0] = v46;
        v34[4] = v44;
        v34[5] = v45;
        v34[6].i32[0] = v46;
        v43 = v81;
        sub_23A8D6D78(v27, v81);
        goto LABEL_13;
      }

      sub_23A8D6D10(v17);
    }

    sub_23A8D6CA0(a1, v14);
    if (v36(v14, 1, v18) == 1)
    {
      sub_23A8D6D10(v14);
LABEL_16:
      v66 = v82;
      sub_23A8D6CA0(a1, v82);
      if (v36(v66, 1, v18) == 1)
      {
        v67 = v66;
LABEL_20:
        v70 = v78;
        sub_23A8D6D10(v67);
        return (*(v70 + 56))(v79, 1, 1, v18);
      }

      v68 = v77;
      sub_23A8D6D78(v66, v77);
      v69 = a2;
      v67 = v80;
      sub_23A8D6CA0(v69, v80);
      if (v36(v67, 1, v18) == 1)
      {
        sub_23A8D6DDC(v68);
        goto LABEL_20;
      }

      v71 = v76;
      sub_23A8D6D78(v67, v76);
      v72 = sub_23A8E9A6C(v71, 0.0001);
      v50 = v78;
      if (v72)
      {
        sub_23A8D6DDC(v68);
        v73 = v71;
        v74 = v79;
        sub_23A8D6D78(v73, v79);
        return (*(v50 + 56))(v74, 0, 1, v18);
      }

      sub_23A8D6D78(v68, v34);
      v75 = v71;
      v43 = v81;
      sub_23A8D6D78(v75, v81);
      v49 = v79;
LABEL_14:
      v51 = vadd_f32(*v34, vmul_n_f32(vsub_f32(*v43, *v34), v83.n128_f32[0]));
      sub_23A8D6E38(v34[1], v43[1], v83.n128_f32[0]);
      v53 = v52;
      sub_23A8D6E38(v34[2], v43[2], v83.n128_f32[0]);
      v55 = v54;
      v56 = v34[3].f32[0] + ((v43[3].f32[0] - v34[3].f32[0]) * v83.n128_f32[0]);
      sub_23A8D6E38(v34[4], v43[4], v83.n128_f32[0]);
      v58 = v57;
      sub_23A8D6E38(v34[5], v43[5], v83.n128_f32[0]);
      v60 = v59;
      v61 = v34[6].f32[0];
      sub_23A8D6DDC(v34);
      v62 = v43[6].f32[0];
      sub_23A8D6DDC(v43);
      v63 = v61 + ((v62 - v61) * v83.n128_f32[0]);
      v64 = *(v18 + 44);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
      (*(*(v65 - 8) + 56))(v49 + v64, 1, 1, v65);
      *v49 = v51;
      *(v49 + 8) = v53;
      *(v49 + 16) = v55;
      *(v49 + 24) = v56;
      *(v49 + 32) = v58;
      *(v49 + 40) = v60;
      *(v49 + 48) = v63;
      return (*(v50 + 56))(v49, 0, 1, v18);
    }

    sub_23A8D6D78(v14, v24);
    if (v36(a2, 1, v18) != 1)
    {
      sub_23A8D6DDC(v24);
      goto LABEL_16;
    }

    sub_23A8D6F28(v24, v34);
    v82 = *v24;
    v37 = *(v24 + 8);
    v38 = *(v24 + 16);
    v39 = *(v24 + 6);
    sub_23A8D6DDC(v24);
    v40 = *(v18 + 44);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v42 = v81 + v40;
    v43 = v81;
    (*(*(v41 - 8) + 56))(v42, 1, 1, v41);
    *v43->f32 = v82;
    v43[2] = v38;
    v43[3].i32[0] = v39;
    v43[4] = v37;
    v43[5] = v38;
    v43[6].i32[0] = v39;
LABEL_13:
    v50 = v78;
    v49 = v79;
    goto LABEL_14;
  }

  return sub_23A8D6CA0(a2, a3);
}

uint64_t sub_23A8D5AC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v20 = sub_23AA0CE84();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0BC74();
  v11 = sub_23AA0BC54();
  v12 = sub_23AA0BC54();
  sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
  v13 = sub_23AA0D634();

  if (v13)
  {
    sub_23AA0BC74();
  }

  else
  {
    v19 = a1;
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v14 = sub_23AA0CE54();
    v15 = sub_23AA0D494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23A8B4000, v14, v15, "startAngle unit is different than endAngle unit", v16, 2u);
      MEMORY[0x23EE91710](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v20);
    v17 = sub_23AA0BC54();
    sub_23AA0BC84();

    sub_23AA0BC74();
    (*(v21 + 8))(v6, v3);
  }

  sub_23AA0BC54();
  return sub_23AA0BC64();
}

void *sub_23A8D5E28(uint64_t a1, void *a2, float a3)
{
  isUniquelyReferenced_nonNull_native = sub_23AA0CE84();
  v7 = *(isUniquelyReferenced_nonNull_native - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v10 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v83[-v12];
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v19 = &v83[-v18];
  if (!*(a1 + 16) || !a2[2])
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v23 = sub_23AA0CE54();
    v24 = sub_23AA0D494();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23A8B4000, v23, v24, "Edge is empty", v25, 2u);
      MEMORY[0x23EE91710](v25, -1, -1);
    }

    (v7[1])(v10, isUniquelyReferenced_nonNull_native);
    return sub_23A9DC9E0(MEMORY[0x277D84F90]);
  }

  v91 = a2;
  if (fabsf(a3 + -1.0) < 0.0001)
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
LABEL_42:
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v20 = sub_23AA0CE54();
    v21 = sub_23AA0D494();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23A8B4000, v20, v21, "Should not interpolate edges with a 1.0 percentage", v22, 2u);
      MEMORY[0x23EE91710](v22, -1, -1);
    }

    (v7[1])(v19, isUniquelyReferenced_nonNull_native);
    v7 = v91;

    return v7;
  }

  v86 = v16;
  v27 = 0;
  v28 = &unk_284D80470;
  v29 = (v7 + 1);
  v7 = MEMORY[0x277D84F98];
  v92 = v29;
  *&v17 = 136315138;
  v89 = v17;
  v90 = isUniquelyReferenced_nonNull_native;
  v87 = v13;
  while (1)
  {
    v19 = v28[v27 + 32];
    if (!*(a1 + 16) || (v30 = sub_23A9F573C(v28[v27 + 32]), (v31 & 1) == 0))
    {
      sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      sub_23AA0CE94();
      v52 = sub_23AA0CE54();
      v53 = sub_23AA0D494();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = v28;
        v56 = a1;
        v57 = v7;
        v58 = swift_slowAlloc();
        v101 = v58;
        *v54 = v89;
        LOBYTE(v97) = v19;
        v59 = sub_23AA0D1A4();
        v61 = sub_23A9A65A4(v59, v60, &v101);

        *(v54 + 4) = v61;
        isUniquelyReferenced_nonNull_native = v90;
        _os_log_impl(&dword_23A8B4000, v52, v53, "Missing edge on %s side", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v62 = v58;
        v7 = v57;
        a1 = v56;
        v28 = v55;
        v13 = v87;
        MEMORY[0x23EE91710](v62, -1, -1);
        MEMORY[0x23EE91710](v54, -1, -1);
      }

      (*v92)(v13, isUniquelyReferenced_nonNull_native);
      goto LABEL_16;
    }

    if (!v91[2] || (v32 = *(a1 + 56) + 40 * v30, v33 = *v32, v34 = *(v32 + 8), v88 = *(v32 + 16), v35 = *(v32 + 32), v36 = sub_23A9F573C(v19), (v38 & 1) == 0))
    {
      *&v88 = v7;
      sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      v63 = v86;
      sub_23AA0CE94();
      v64 = sub_23AA0CE54();
      v65 = sub_23AA0D494();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v101 = v67;
        *v66 = v89;
        LOBYTE(v97) = v19;
        v68 = sub_23AA0D1A4();
        v70 = sub_23A9A65A4(v68, v69, &v101);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_23A8B4000, v64, v65, "Missing edge on %s side", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        v71 = v67;
        isUniquelyReferenced_nonNull_native = v90;
        MEMORY[0x23EE91710](v71, -1, -1);
        MEMORY[0x23EE91710](v66, -1, -1);
      }

      (*v92)(v63, isUniquelyReferenced_nonNull_native);
      v28 = &unk_284D80470;
      v7 = v88;
      goto LABEL_16;
    }

    v39 = v91[7] + 40 * v36;
    v40 = *v39;
    v41 = *(v39 + 8);
    v37.n128_u32[0] = *(v39 + 32);
    v97 = v33;
    v98 = v34;
    v99 = v88;
    v100 = v35;
    v93 = v40;
    v94 = v41;
    v95 = *(v39 + 16);
    v96 = v37.n128_u32[0];
    v37.n128_f32[0] = a3;
    sub_23A8D67AC(&v97, &v93, &v101, v37);
    v42 = v101;
    v84 = v102;
    v85 = v103;
    *&v88 = v104;
    v43 = v105;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v7;
    v45 = sub_23A9F573C(v19);
    v46 = v7;
    v47 = v7[2];
    v48 = (v44 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v7 = v44;
    if (v46[3] < v49)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23A90DEE0();
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = v90;
    v72 = v97;
    if (v7)
    {
      v73 = v97[7] + 40 * v45;
      v74 = *v73;
      v76 = *(v73 + 16);
      v75 = *(v73 + 24);
      *v73 = v42;
      *(v73 + 8) = v84;
      v77 = v88;
      *(v73 + 16) = v85;
      *(v73 + 24) = v77;
      *(v73 + 32) = v43;

      v7 = v72;
    }

    else
    {
      v97[(v45 >> 6) + 8] |= 1 << v45;
      *(v72[6] + v45) = v19;
      v78 = v72[7] + 40 * v45;
      *v78 = v42;
      *(v78 + 8) = v84;
      v79 = v88;
      *(v78 + 16) = v85;
      *(v78 + 24) = v79;
      *(v78 + 32) = v43;
      v80 = v72[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_41;
      }

      v7 = v72;
      v72[2] = v82;
    }

LABEL_16:
    if (++v27 == 4)
    {
      return v7;
    }
  }

  sub_23A9083AC(v49, isUniquelyReferenced_nonNull_native);
  v50 = sub_23A9F573C(v19);
  if ((v7 & 1) == (v51 & 1))
  {
    v45 = v50;
    goto LABEL_36;
  }

  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A8D67AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v51 = a4;
  v52.i64[0] = sub_23AA0CE84();
  v7 = *(*(v52.i64[0] - 8) + 64);
  MEMORY[0x28223BE20](v52.i64[0]);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a2;
  v13 = *(*a1 + 16);
  if (v13 == *(*a2 + 16))
  {
    v14 = *(a1 + 8);
    v15 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = sub_23A9388A8(0, 1, 1, MEMORY[0x277D84F90]);
      v16 = v11 + 2;
      v17 = v12 + 2;
      v18 = *(v15 + 2);
      v19 = v51.n128_f32[0];
      do
      {
        v20 = *v16;
        v21 = *v17;
        v22 = *(v15 + 3);
        if (v18 >= v22 >> 1)
        {
          v52 = *v16;
          v50 = v21;
          v25 = sub_23A9388A8((v22 > 1), v18 + 1, 1, v15);
          v21 = v50;
          v19 = v51.n128_f32[0];
          v20 = v52;
          v15 = v25;
        }

        v23 = vsubq_f32(v21, v20);
        v24 = vmuls_lane_f32(v19, v23, 2);
        v23.i64[0] = vaddq_f32(v20, vmulq_n_f32(v23, v19)).u64[0];
        v23.f32[2] = v20.f32[2] + v24;
        v23.i32[3] = 0;
        *(v15 + 2) = v18 + 1;
        *&v15[16 * v18 + 32] = v23;
        ++v17;
        ++v16;
        ++v18;
        --v13;
      }

      while (v13);
    }

    v53 = v14;
    return sub_23A965154(v15, &v53, a3);
  }

  else
  {
    v50.i64[0] = a3;
    v51.n128_u64[0] = v8;
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    v49 = *(a2 + 8);
    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v30 = *(a2 + 32);
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();

    v31 = sub_23AA0CE54();
    v32 = sub_23AA0D494();

    v33 = v29;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315394;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
      v48 = v28;
      v37 = v29;
      v38 = v36;
      v39 = MEMORY[0x23EE8FDA0](v11, v36);
      v41 = sub_23A9A65A4(v39, v40, &v54);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2080;
      v42 = MEMORY[0x23EE8FDA0](v12, v38);
      v44 = sub_23A9A65A4(v42, v43, &v54);
      v33 = v37;
      v28 = v48;

      *(v34 + 14) = v44;
      _os_log_impl(&dword_23A8B4000, v31, v32, "from and to edges for interpolation have a different number of points (from: %s, to: %s)", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE91710](v35, -1, -1);
      MEMORY[0x23EE91710](v34, -1, -1);
    }

    (*(v51.n128_u64[0] + 8))(v10, v52.i64[0]);
    v45 = v50.i64[0];
    v46 = v49;
    *v50.i64[0] = v12;
    *(v45 + 8) = v46;
    *(v45 + 16) = v33;
    *(v45 + 24) = v28;
    *(v45 + 32) = v30;
  }
}

uint64_t sub_23A8D6C58(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23A8D6CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D6D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8D6D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanItemStrut();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D6DDC(uint64_t a1)
{
  v2 = type metadata accessor for ScanItemStrut();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A8D6E38(float32x2_t a1, float32x2_t a2, float a3)
{
  v5 = vmul_f32(a1, a2);
  v6 = vmul_f32(a1, a1);
  v7 = vmul_f32(a2, a2);
  v8 = vsqrt_f32(vadd_f32(vzip1_s32(v6, v7), vzip2_s32(v6, v7)));
  v9 = vdiv_f32(vadd_f32(v5, vdup_lane_s32(v5, 1)), vmul_lane_f32(v8, v8, 1)).f32[0];
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = acosf(fminf(v9, 1.0));
  if (fabsf(sinf(v10)) >= 0.00000011921)
  {
    sinf((1.0 - a3) * v10);
    sinf(v10 * a3);
  }
}

uint64_t sub_23A8D6F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanItemStrut();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D7080()
{
  type metadata accessor for WallPerimeterManager();
  v0 = swift_allocObject();
  type metadata accessor for HullUtility();
  result = swift_allocObject();
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  qword_27DFC04B8 = v0;
  return result;
}

uint64_t sub_23A8D70DC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23A8D7138(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v68 - v10;
  v83 = sub_23AA0C0E4();
  v12 = *(v83 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CapturedRoom.Surface(0);
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v74);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, a3);
  v89 = MEMORY[0x277D84F90];
  v24 = *(a4 + 24);
  v70 = v23;
  result = v24(a3, a4);
  v26 = result;
  v75 = *(result + 16);
  if (v75)
  {
    v68 = v20;
    v69 = a3;
    v27 = 0;
    v80 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v87 = (v12 + 16);
    v28 = (v12 + 32);
    v29 = MEMORY[0x277D84F90];
    v81 = xmmword_23AA11BB0;
    v30 = v75;
    v73 = a2;
    v72 = v15;
    v71 = result;
    while (v27 < *(v26 + 16))
    {
      sub_23A8D7948(v80 + *(v15 + 72) * v27, v19);
      v31 = *(v19 + 1);
      v32 = COERCE_FLOAT(*(v19 + 3));
      v33 = v32 > 0.0 && (a2 & 2) == 0;
      if (v33 || (v32 == 0.0 ? (v34 = (a2 & 1) == 0) : (v34 = 0), v34))
      {
        result = sub_23A8D7A84(v19);
      }

      else
      {
        v79 = v27;
        v86 = v32 > 0.0;
        v35 = *(v19 + 3);
        v84 = *(v19 + 2);
        v78 = v35;
        v85 = *(v19 + 5);
        *(&v36 + 1) = *(&v85 + 1);
        *&v36 = vmul_f32(*&v31, COERCE_FLOAT32X2_T(-0.0000305175853));
        v77 = v36;
        v37 = vextq_s8(v35, v35, 8uLL);
        *v37.i8 = vmul_f32(*&v36, vzip1_s32(*&vextq_s8(v84, v84, 8uLL), *v37.i8));
        v76 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v38 = swift_allocObject();
        v39 = 0;
        v40 = 0;
        v41 = *(&v85 + 2);
        v42 = *v76.i32;
        v43 = vmul_lane_f32(*v78.i8, *&v77, 1);
        v44 = vmul_n_f32(*v84.i8, *&v77);
        v45 = v85;
        *&v46 = vadd_f32(v43, vsub_f32(*&v85, v44));
        v47 = *&v76.i32[1];
        *(&v46 + 2) = *&v76.i32[1] + (*(&v85 + 2) - *v76.i32);
        HIDWORD(v46) = 0;
        *(v38 + 32) = v46;
        v48 = v38 + 32;
        *&v49 = vadd_f32(v43, vadd_f32(v44, v45));
        *(&v49 + 1) = COERCE_UNSIGNED_INT(v47 + (v42 + v41));
        v78.i64[0] = v38;
        *(v38 + 48) = v49;
        *&v85 = *(v74 + 44);
        v84.i64[0] = *(v74 + 52);
        v50 = *v87;
        do
        {
          v51 = v39;
          v52 = (v48 + 16 * v40);
          v53 = *vld2_f32(v52).val;
          v55 = v82;
          v54 = v83;
          v50(v82, &v19[v85], v83);
          sub_23A8D79AC(&v19[v84.i64[0]], v11);
          v56 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          v57 = (*(*(v56 - 8) + 48))(v11, 1, v56) != 1;
          sub_23A8D7A1C(v11);
          v58 = type metadata accessor for HullPointUUID();
          v59 = *(v58 + 48);
          v60 = *(v58 + 52);
          v61 = swift_allocObject();
          (*v28)(v61 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v55, v54);
          *(v61 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v57;
          *(v61 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          inited = swift_initStackObject();
          *(inited + 16) = v81;
          *(inited + 32) = v61;

          v63 = sub_23A9A6B4C(inited);
          swift_setDeallocating();
          v64 = *(inited + 16);
          swift_arrayDestroy();
          v65 = type metadata accessor for HullPoint();
          v66 = objc_allocWithZone(v65);
          *&v66[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v53;
          *&v66[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v63;
          v88.receiver = v66;
          v88.super_class = v65;
          v67 = objc_msgSendSuper2(&v88, sel_init);
          MEMORY[0x23EE8FD70]();
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();

          v39 = 1;
          v40 = 1;
        }

        while ((v51 & 1) == 0);
        v29 = v89;
        sub_23A8D7A84(v19);
        swift_setDeallocating();
        result = swift_deallocClassInstance();
        LOBYTE(a2) = v73;
        v15 = v72;
        v26 = v71;
        v30 = v75;
        v27 = v79;
      }

      if (++v27 == v30)
      {

        a3 = v69;
        v20 = v68;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
LABEL_21:
    (*(v20 + 8))(v70, a3);
    return v29;
  }

  return result;
}

unint64_t sub_23A8D7840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_23A8D7138(v8, 3, a2, a3);
  v10 = sub_23A9E427C(v9);

  (*(v5 + 8))(v8, a2);
  return v10;
}

uint64_t sub_23A8D7948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom.Surface(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D79AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D7A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8D7A84(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Surface(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A8D7AE0()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v9 = 0;
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0xD000000000000027, 0x800000023AA1DAE0);
    v3 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v3);

    MEMORY[0x23EE8FCA0](0xD000000000000011, 0x800000023AA1DB10);
    v4 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v4);

    v5 = 41;
    v6 = 0xE100000000000000;
  }

  else
  {
    sub_23AA0D8A4();

    v9 = 0xD000000000000013;
    v7 = sub_23AA0D1A4();
    MEMORY[0x23EE8FCA0](v7);

    v5 = 0x6564697320;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x23EE8FCA0](v5, v6);
  return v9;
}

int64_t sub_23A8D7CF0()
{
  v53 = sub_23AA0C0E4();
  v1 = *(v53 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v53);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v10;
  v52 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
  v12 = MEMORY[0x277D84F90];
  if (v11 != 2)
  {
    return v12;
  }

  v41 = v9;
  if (qword_27DFAE368 != -1)
  {
LABEL_25:
    swift_once();
  }

  v13 = qword_27DFC04B0;
  swift_beginAccess();
  v14 = *(v13 + 24);
  v16 = v14 + 64;
  v15 = *(v14 + 64);
  v55 = v12;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v12 = (v17 + 63) >> 6;
  v47 = (v1 + 16);
  v48 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v45 = (v1 + 48);
  v46 = (v1 + 56);
  v38 = (v1 + 32);
  v42 = (v1 + 8);
  v50 = v14;

  v20 = 0;
  v21 = &unk_27DFB0970;
  v22 = v43;
  v49 = v16;
  v44 = v12;
  while (v19)
  {
LABEL_14:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(*(v50 + 56) + ((v20 << 9) | (8 * v24)));
    v26 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
    v1 = v53;
    (*v47)(v22, v52 + v48, v53);
    (*v46)(v22, 0, 1, v1);
    v27 = *(v51 + 48);
    v28 = v54;
    sub_23A8D5194(v25 + v26, v54, v21, &qword_23AA14E00);
    sub_23A8D5194(v22, v28 + v27, v21, &qword_23AA14E00);
    v29 = v21;
    v30 = *v45;
    if ((*v45)(v28, 1, v1) == 1)
    {

      sub_23A8D50D0(v22, v21, &qword_23AA14E00);
      if (v30(v54 + v27, 1, v53) != 1)
      {

LABEL_7:
        v16 = v49;
        sub_23A8D50D0(v54, &qword_27DFAEC28, &unk_23AA1AA40);
        goto LABEL_8;
      }

      sub_23A8D50D0(v54, v21, &qword_23AA14E00);
      v16 = v49;
LABEL_20:
      sub_23AA0D944();
      v36 = *(v55 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      goto LABEL_8;
    }

    v31 = v53;
    v32 = v54;
    v1 = v41;
    sub_23A8D5194(v54, v41, v21, &qword_23AA14E00);
    if (v30(v32 + v27, 1, v31) == 1)
    {
      v22 = v43;
      sub_23A8D50D0(v43, v21, &qword_23AA14E00);
      (*v42)(v1, v31);
      goto LABEL_7;
    }

    v33 = v40;
    (*v38)(v40, v32 + v27, v31);
    sub_23A8DE390();

    v39 = sub_23AA0D084();
    v34 = *v42;
    (*v42)(v33, v31);
    v35 = v43;
    sub_23A8D50D0(v43, v29, &qword_23AA14E00);
    v34(v1, v31);
    sub_23A8D50D0(v54, v29, &qword_23AA14E00);
    v22 = v35;
    v21 = v29;
    v16 = v49;
    if (v39)
    {
      goto LABEL_20;
    }

LABEL_8:
    v12 = v44;
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v23 >= v12)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v20;
    if (v19)
    {
      v20 = v23;
      goto LABEL_14;
    }
  }

  return v55;
}

int64_t sub_23A8D8288()
{
  v53 = sub_23AA0C0E4();
  v1 = *(v53 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v53);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v10;
  v52 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
  v12 = MEMORY[0x277D84F90];
  if (v11 != 3)
  {
    return v12;
  }

  v41 = v9;
  if (qword_27DFAE368 != -1)
  {
LABEL_25:
    swift_once();
  }

  v13 = qword_27DFC04B0;
  swift_beginAccess();
  v14 = *(v13 + 24);
  v16 = v14 + 64;
  v15 = *(v14 + 64);
  v55 = v12;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v12 = (v17 + 63) >> 6;
  v47 = (v1 + 16);
  v48 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v45 = (v1 + 48);
  v46 = (v1 + 56);
  v38 = (v1 + 32);
  v42 = (v1 + 8);
  v50 = v14;

  v20 = 0;
  v21 = &unk_27DFB0970;
  v22 = v43;
  v49 = v16;
  v44 = v12;
  while (v19)
  {
LABEL_14:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(*(v50 + 56) + ((v20 << 9) | (8 * v24)));
    v26 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
    v1 = v53;
    (*v47)(v22, v52 + v48, v53);
    (*v46)(v22, 0, 1, v1);
    v27 = *(v51 + 48);
    v28 = v54;
    sub_23A8D5194(v25 + v26, v54, v21, &qword_23AA14E00);
    sub_23A8D5194(v22, v28 + v27, v21, &qword_23AA14E00);
    v29 = v21;
    v30 = *v45;
    if ((*v45)(v28, 1, v1) == 1)
    {

      sub_23A8D50D0(v22, v21, &qword_23AA14E00);
      if (v30(v54 + v27, 1, v53) != 1)
      {

LABEL_7:
        v16 = v49;
        sub_23A8D50D0(v54, &qword_27DFAEC28, &unk_23AA1AA40);
        goto LABEL_8;
      }

      sub_23A8D50D0(v54, v21, &qword_23AA14E00);
      v16 = v49;
LABEL_20:
      sub_23AA0D944();
      v36 = *(v55 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      goto LABEL_8;
    }

    v31 = v53;
    v32 = v54;
    v1 = v41;
    sub_23A8D5194(v54, v41, v21, &qword_23AA14E00);
    if (v30(v32 + v27, 1, v31) == 1)
    {
      v22 = v43;
      sub_23A8D50D0(v43, v21, &qword_23AA14E00);
      (*v42)(v1, v31);
      goto LABEL_7;
    }

    v33 = v40;
    (*v38)(v40, v32 + v27, v31);
    sub_23A8DE390();

    v39 = sub_23AA0D084();
    v34 = *v42;
    (*v42)(v33, v31);
    v35 = v43;
    sub_23A8D50D0(v43, v29, &qword_23AA14E00);
    v34(v1, v31);
    sub_23A8D50D0(v54, v29, &qword_23AA14E00);
    v22 = v35;
    v21 = v29;
    v16 = v49;
    if (v39)
    {
      goto LABEL_20;
    }

LABEL_8:
    v12 = v44;
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v23 >= v12)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v20;
    if (v19)
    {
      v20 = v23;
      goto LABEL_14;
    }
  }

  return v55;
}