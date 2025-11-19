__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = (a2 + 1);
  if (*a2)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a2 + 1;
  }

  v6 = *a1;
  v7 = (a1 + 1);
  if (*a1)
  {
    v8 = a1[1];
  }

  else
  {
    v8 = a1 + 1;
  }

  v9 = (4 * v3) & 0xFFFFFFFFFFFFFFF8;
  v10 = v6 >> 1;
  v11 = &v8[v6 >> 1];
  v12 = (4 * v3) >> 3;
  v13 = (8 * (v6 >> 1)) >> 3;
  if (v13 >= v12)
  {
    v14 = (4 * v3) >> 3;
  }

  else
  {
    v14 = (8 * (v6 >> 1)) >> 3;
  }

  if ((v14 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = 8 * v14;
    v16 = v5;
    v17 = &v5[v14];
    while (*v16 == *v8)
    {
      ++v16;
      ++v8;
      v15 -= 8;
      if (!v15)
      {
        v16 = v17;
        break;
      }
    }

    v18 = (v5 + v9);
    if (v8 == v11)
    {
LABEL_32:
      v26 = *a3;
      v27 = (a3 + 1);
      v28 = a3[1];
      if ((*a3 & 1) == 0)
      {
        v28 = a3 + 1;
      }

      if (v12 >= (4 * v26) >> 3)
      {
        v29 = (4 * v26) >> 3;
      }

      else
      {
        v29 = (4 * v3) >> 3;
      }

      if ((v29 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = 8 * v29;
        v31 = v28;
        v32 = &v28[v29];
        while (*v31 == *v5)
        {
          ++v31;
          ++v5;
          v30 -= 8;
          if (!v30)
          {
            v31 = v32;
            break;
          }
        }

        if (v5 == v18)
        {
          return result;
        }
      }

      else
      {
        v31 = v28;
        if (v5 == v18)
        {
          return result;
        }
      }

      if (v31 == (v28 + ((4 * v26) & 0xFFFFFFFFFFFFFFF8)) || *v31 < *v5)
      {
        v88 = *v4;
        *a2 = 0;
        v33 = *(a2 + 6);
        v34 = *a3;
        if (a2 == a3)
        {
          *(a2 + 6) = *(a3 + 6);
          if (v34)
          {
            v76 = a2;
            v79 = (a2 + 1);
            v71 = a1;
            v83 = a3;
            v64 = (a3 + 1);
            v67 = (a1 + 1);
            v62 = v3;
            v60 = v33;
            operator delete(*v27);
            v33 = v60;
            v3 = v62;
            v27 = v64;
            v7 = v67;
            a1 = v71;
            a2 = v76;
            v4 = v79;
            a3 = v83;
          }
        }

        else
        {
          *a2 = v34;
          *v4 = *v27;
          *(a2 + 6) = *(a3 + 6);
        }

        *a3 = v3;
        result = v88;
        *v27 = v88;
        *(a3 + 6) = v33;
        v36 = *a2;
        if (*a2)
        {
          v37 = a2[1];
        }

        else
        {
          v37 = v4;
        }

        v38 = *a1;
        v39 = a1[1];
        if ((*a1 & 1) == 0)
        {
          v39 = v7;
        }

        v40 = (v39 + ((4 * v38) & 0xFFFFFFFFFFFFFFF8));
        if ((4 * v38) >> 3 >= (4 * v36) >> 3)
        {
          v41 = (4 * v36) >> 3;
        }

        else
        {
          v41 = (4 * v38) >> 3;
        }

        if ((v41 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v42 = 8 * v41;
          v43 = v37;
          v44 = &v37[v41];
          while (*v43 == v39->n128_u64[0])
          {
            ++v43;
            v39 = (v39 + 8);
            v42 -= 8;
            if (!v42)
            {
              v43 = v44;
              break;
            }
          }
        }

        else
        {
          v43 = v37;
        }

        if (v39 != v40 && (v43 == (v37 + ((4 * v36) & 0xFFFFFFFFFFFFFFF8)) || *v43 < v39->n128_u64[0]))
        {
          v91 = *v7;
          *a1 = 0;
          v57 = *(a1 + 6);
          v58 = *a2;
          if (a1 == a2)
          {
            *(a1 + 6) = *(a2 + 6);
            if (v58)
            {
              v78 = a2;
              v82 = v4;
              v86 = v38;
              v74 = v57;
              operator delete(*v4);
              v57 = v74;
              v38 = v86;
              a2 = v78;
              v4 = v82;
            }
          }

          else
          {
            *a1 = v58;
            *v7 = *v4;
            *(a1 + 6) = *(a2 + 6);
          }

          *a2 = v38;
          result = v91;
          *v4 = v91;
          *(a2 + 6) = v57;
        }
      }

      return result;
    }
  }

  else
  {
    v16 = v5;
    v18 = (v5 + v9);
    if (v8 == v11)
    {
      goto LABEL_32;
    }
  }

  if (v16 != v18 && *v16 >= *v8)
  {
    goto LABEL_32;
  }

  v19 = *a3;
  v21 = (a3 + 1);
  v20 = a3[1];
  if ((*a3 & 1) == 0)
  {
    v20 = a3 + 1;
  }

  if (v12 >= (4 * v19) >> 3)
  {
    v22 = (4 * v19) >> 3;
  }

  else
  {
    v22 = v12;
  }

  if ((v22 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = 8 * v22;
    v24 = v20;
    v25 = &v20[v22];
    while (*v24 == *v5)
    {
      ++v24;
      ++v5;
      v23 -= 8;
      if (!v23)
      {
        v24 = v25;
        break;
      }
    }

    if (v5 == v18)
    {
      goto LABEL_68;
    }

LABEL_63:
    if (v24 == (v20 + ((4 * v19) & 0xFFFFFFFFFFFFFFF8)) || *v24 < *v5)
    {
      v89 = *v7;
      *a1 = 0;
      v45 = *(a1 + 6);
      v46 = *a3;
      if (a1 == a3)
      {
        *(a1 + 6) = *(a3 + 6);
        if (v46)
        {
          v85 = a3;
          v69 = v6;
          v73 = (a3 + 1);
          v81 = v45;
          operator delete(*v21);
          v45 = v81;
          v6 = v69;
          v21 = v73;
          a3 = v85;
        }
      }

      else
      {
        *a1 = v46;
        *v7 = *v21;
        *(a1 + 6) = *(a3 + 6);
      }

      *a3 = v6;
      result = v89;
      *v21 = v89;
      *(a3 + 6) = v45;
      return result;
    }

    goto LABEL_68;
  }

  v24 = v20;
  if (v5 != v18)
  {
    goto LABEL_63;
  }

LABEL_68:
  v90 = *v7;
  *a1 = 0;
  v47 = *(a1 + 6);
  v48 = *a2;
  if (a1 == a2)
  {
    *(a1 + 6) = *(a2 + 6);
    if (v48)
    {
      v77 = a2;
      v84 = a3;
      v80 = (a2 + 1);
      v68 = v6;
      v72 = (a3 + 1);
      v61 = v6 >> 1;
      v63 = (8 * (v6 >> 1)) >> 3;
      v65 = v47;
      operator delete(*v4);
      v47 = v65;
      v10 = v61;
      v13 = v63;
      v6 = v68;
      v21 = v72;
      a2 = v77;
      v4 = v80;
      a3 = v84;
    }
  }

  else
  {
    *a1 = v48;
    *v7 = *v4;
    *(a1 + 6) = *(a2 + 6);
  }

  *a2 = v6;
  result = v90;
  *v4 = v90;
  *(a2 + 6) = v47;
  v49 = *a3;
  if (*a3)
  {
    v50 = a3[1];
  }

  else
  {
    v50 = v21;
  }

  v51 = a2[1];
  if ((v6 & 1) == 0)
  {
    v51 = v4;
  }

  v52 = &v51[v10];
  if (v13 >= (4 * v49) >> 3)
  {
    v53 = (4 * v49) >> 3;
  }

  else
  {
    v53 = v13;
  }

  if ((v53 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v54 = 8 * v53;
    v55 = v50;
    v56 = &v50[v53];
    while (*v55 == *v51)
    {
      ++v55;
      ++v51;
      v54 -= 8;
      if (!v54)
      {
        v55 = v56;
        break;
      }
    }
  }

  else
  {
    v55 = v50;
  }

  if (v51 != v52 && (v55 == (v50 + ((4 * v49) & 0xFFFFFFFFFFFFFFF8)) || *v55 < *v51))
  {
    v92 = *v4;
    *a2 = 0;
    v59 = *a3;
    if (a2 == a3)
    {
      *(a2 + 6) = *(a3 + 6);
      if (v59)
      {
        v87 = a3;
        v70 = v6;
        v75 = v21;
        v66 = v47;
        operator delete(*v21);
        v47 = v66;
        v6 = v70;
        v21 = v75;
        a3 = v87;
      }
    }

    else
    {
      *a2 = v59;
      *v4 = *v21;
      *(a2 + 6) = *(a3 + 6);
    }

    *a3 = v6;
    result = v92;
    *v21 = v92;
    *(a3 + 6) = v47;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v9 = *a4;
  v10 = (a4 + 1);
  if (*a4)
  {
    v11 = a4[1];
  }

  else
  {
    v11 = a4 + 1;
  }

  v12 = *a3;
  v14 = (a3 + 8);
  v13 = *(a3 + 8);
  if ((*a3 & 1) == 0)
  {
    v13 = (a3 + 8);
  }

  v15 = (v13 + ((4 * v12) & 0xFFFFFFFFFFFFFFF8));
  if ((4 * v12) >> 3 >= (4 * v9) >> 3)
  {
    v16 = (4 * v9) >> 3;
  }

  else
  {
    v16 = (4 * v12) >> 3;
  }

  if ((v16 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v18 = v11;
    if (v13 == v15)
    {
      return result;
    }

LABEL_17:
    if (v18 != (v11 + ((4 * v9) & 0xFFFFFFFFFFFFFFF8)) && *v18 >= *v13)
    {
      return result;
    }

    v50 = *v14;
    *a3 = 0;
    v20 = *(a3 + 24);
    v21 = *a4;
    if (a3 == a4)
    {
      *(a3 + 24) = *(a4 + 6);
      if (v21)
      {
        v46 = v12;
        v47 = v20;
        operator delete(*v10);
        v20 = v47;
        v12 = v46;
        v10 = (a4 + 1);
      }
    }

    else
    {
      *a3 = v21;
      *v14 = *v10;
      *(a3 + 24) = *(a4 + 6);
    }

    *a4 = v12;
    result = v50;
    *v10 = v50;
    *(a4 + 6) = v20;
    v22 = *a3;
    if (*a3)
    {
      v23 = *(a3 + 8);
    }

    else
    {
      v23 = (a3 + 8);
    }

    v24 = *a2;
    v26 = (a2 + 8);
    v25 = *(a2 + 8);
    if ((*a2 & 1) == 0)
    {
      v25 = (a2 + 8);
    }

    v27 = (v25 + ((4 * v24) & 0xFFFFFFFFFFFFFFF8));
    if ((4 * v24) >> 3 >= (4 * v22) >> 3)
    {
      v28 = (4 * v22) >> 3;
    }

    else
    {
      v28 = (4 * v24) >> 3;
    }

    if ((v28 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v29 = 8 * v28;
      v30 = v23;
      v31 = &v23[v28];
      while (*v30 == *v25)
      {
        ++v30;
        ++v25;
        v29 -= 8;
        if (!v29)
        {
          v30 = v31;
          break;
        }
      }

      if (v25 == v27)
      {
        return result;
      }
    }

    else
    {
      v30 = v23;
      if (v25 == v27)
      {
        return result;
      }
    }

    if (v30 == (v23 + ((4 * v22) & 0xFFFFFFFFFFFFFFF8)) || *v30 < *v25)
    {
      v51 = *v26;
      *a2 = 0;
      v32 = *(a2 + 24);
      v33 = *a3;
      if (a2 == a3)
      {
        *(a2 + 24) = *(a3 + 24);
        if (v33)
        {
          v49 = v24;
          v48 = v32;
          operator delete(*v14);
          v32 = v48;
          v24 = v49;
        }
      }

      else
      {
        *a2 = v33;
        *v26 = *v14;
        *(a2 + 24) = *(a3 + 24);
      }

      *a3 = v24;
      result = v51;
      *v14 = v51;
      *(a3 + 24) = v32;
      v34 = *a2;
      if (*a2)
      {
        v35 = *(a2 + 8);
      }

      else
      {
        v35 = (a2 + 8);
      }

      v36 = *a1;
      v37 = (a1 + 8);
      v38 = *(a1 + 8);
      if ((*a1 & 1) == 0)
      {
        v38 = (a1 + 8);
      }

      v39 = (v38 + ((4 * v36) & 0xFFFFFFFFFFFFFFF8));
      if ((4 * v36) >> 3 >= (4 * v34) >> 3)
      {
        v40 = (4 * v34) >> 3;
      }

      else
      {
        v40 = (4 * v36) >> 3;
      }

      if ((v40 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v41 = 8 * v40;
        v42 = v35;
        v43 = &v35[v40];
        while (*v42 == *v38)
        {
          ++v42;
          ++v38;
          v41 -= 8;
          if (!v41)
          {
            v42 = v43;
            break;
          }
        }
      }

      else
      {
        v42 = v35;
      }

      if (v38 != v39 && (v42 == (v35 + ((4 * v34) & 0xFFFFFFFFFFFFFFF8)) || *v42 < *v38))
      {
        v52 = *v37;
        *a1 = 0;
        v44 = *(a1 + 24);
        v45 = *a2;
        if (a1 == a2)
        {
          *(a1 + 24) = *(a2 + 24);
          if (v45)
          {
            operator delete(*v26);
          }
        }

        else
        {
          *a1 = v45;
          *v37 = *v26;
          *(a1 + 24) = *(a2 + 24);
        }

        *a2 = v36;
        result = v52;
        *v26 = v52;
        *(a2 + 24) = v44;
      }
    }

    return result;
  }

  v17 = 8 * v16;
  v18 = v11;
  v19 = &v11[v16];
  while (*v18 == *v13)
  {
    ++v18;
    ++v13;
    v17 -= 8;
    if (!v17)
    {
      v18 = v19;
      break;
    }
  }

  if (v13 != v15)
  {
    goto LABEL_17;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v11 = *a5;
  v12 = (a5 + 1);
  if (*a5)
  {
    v13 = a5[1];
  }

  else
  {
    v13 = a5 + 1;
  }

  v14 = *a4;
  v16 = (a4 + 8);
  v15 = *(a4 + 8);
  if ((*a4 & 1) == 0)
  {
    v15 = (a4 + 8);
  }

  v17 = (v15 + ((4 * v14) & 0xFFFFFFFFFFFFFFF8));
  if ((4 * v14) >> 3 >= (4 * v11) >> 3)
  {
    v18 = (4 * v11) >> 3;
  }

  else
  {
    v18 = (4 * v14) >> 3;
  }

  if ((v18 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v20 = v13;
    if (v15 == v17)
    {
      return result;
    }

LABEL_17:
    if (v20 != (v13 + ((4 * v11) & 0xFFFFFFFFFFFFFFF8)) && *v20 >= *v15)
    {
      return result;
    }

    v65 = *v16;
    *a4 = 0;
    v22 = *(a4 + 24);
    v23 = *a5;
    if (a4 == a5)
    {
      *(a4 + 24) = *(a5 + 6);
      if (v23)
      {
        v60 = v14;
        v61 = v22;
        operator delete(*v12);
        v22 = v61;
        v14 = v60;
        v12 = (a5 + 1);
      }
    }

    else
    {
      *a4 = v23;
      *v16 = *v12;
      *(a4 + 24) = *(a5 + 6);
    }

    *a5 = v14;
    result = v65;
    *v12 = v65;
    *(a5 + 6) = v22;
    v24 = *a4;
    if (*a4)
    {
      v25 = *(a4 + 8);
    }

    else
    {
      v25 = (a4 + 8);
    }

    v26 = *a3;
    v28 = (a3 + 8);
    v27 = *(a3 + 8);
    if ((*a3 & 1) == 0)
    {
      v27 = (a3 + 8);
    }

    v29 = (v27 + ((4 * v26) & 0xFFFFFFFFFFFFFFF8));
    if ((4 * v26) >> 3 >= (4 * v24) >> 3)
    {
      v30 = (4 * v24) >> 3;
    }

    else
    {
      v30 = (4 * v26) >> 3;
    }

    if ((v30 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = 8 * v30;
      v32 = v25;
      v33 = &v25[v30];
      while (*v32 == *v27)
      {
        ++v32;
        ++v27;
        v31 -= 8;
        if (!v31)
        {
          v32 = v33;
          break;
        }
      }

      if (v27 == v29)
      {
        return result;
      }
    }

    else
    {
      v32 = v25;
      if (v27 == v29)
      {
        return result;
      }
    }

    if (v32 == (v25 + ((4 * v24) & 0xFFFFFFFFFFFFFFF8)) || *v32 < *v27)
    {
      v66 = *v28;
      *a3 = 0;
      v34 = *(a3 + 24);
      v35 = *a4;
      if (a3 == a4)
      {
        *(a3 + 24) = *(a4 + 24);
        if (v35)
        {
          v63 = v26;
          v62 = v34;
          operator delete(*v16);
          v34 = v62;
          v26 = v63;
        }
      }

      else
      {
        *a3 = v35;
        *v28 = *v16;
        *(a3 + 24) = *(a4 + 24);
      }

      *a4 = v26;
      result = v66;
      *v16 = v66;
      *(a4 + 24) = v34;
      v36 = *a3;
      v37 = *(a3 + 8);
      if ((*a3 & 1) == 0)
      {
        v37 = (a3 + 8);
      }

      v38 = *a2;
      v40 = (a2 + 8);
      v39 = *(a2 + 8);
      if ((*a2 & 1) == 0)
      {
        v39 = (a2 + 8);
      }

      v41 = (v39 + ((4 * v38) & 0xFFFFFFFFFFFFFFF8));
      if ((4 * v38) >> 3 >= (4 * v36) >> 3)
      {
        v42 = (4 * v36) >> 3;
      }

      else
      {
        v42 = (4 * v38) >> 3;
      }

      if ((v42 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v43 = 8 * v42;
        v44 = v37;
        v45 = &v37[v42];
        while (*v44 == *v39)
        {
          ++v44;
          ++v39;
          v43 -= 8;
          if (!v43)
          {
            v44 = v45;
            break;
          }
        }
      }

      else
      {
        v44 = v37;
      }

      if (v39 != v41 && (v44 == (v37 + ((4 * v36) & 0xFFFFFFFFFFFFFFF8)) || *v44 < *v39))
      {
        v67 = *v40;
        *a2 = 0;
        v46 = *(a2 + 24);
        v47 = *a3;
        if (a2 == a3)
        {
          *(a2 + 24) = *(a3 + 24);
          if (v47)
          {
            v64 = v46;
            operator delete(*v28);
            v46 = v64;
          }
        }

        else
        {
          *a2 = v47;
          *v40 = *v28;
          *(a2 + 24) = *(a3 + 24);
        }

        *a3 = v38;
        result = v67;
        *v28 = v67;
        *(a3 + 24) = v46;
        v48 = *a2;
        if (*a2)
        {
          v49 = *(a2 + 8);
        }

        else
        {
          v49 = (a2 + 8);
        }

        v50 = *a1;
        v51 = (a1 + 8);
        v52 = *(a1 + 8);
        if ((*a1 & 1) == 0)
        {
          v52 = (a1 + 8);
        }

        v53 = (v52 + ((4 * v50) & 0xFFFFFFFFFFFFFFF8));
        if ((4 * v50) >> 3 >= (4 * v48) >> 3)
        {
          v54 = (4 * v48) >> 3;
        }

        else
        {
          v54 = (4 * v50) >> 3;
        }

        if ((v54 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v55 = 8 * v54;
          v56 = v49;
          v57 = &v49[v54];
          while (*v56 == *v52)
          {
            ++v56;
            ++v52;
            v55 -= 8;
            if (!v55)
            {
              v56 = v57;
              break;
            }
          }
        }

        else
        {
          v56 = v49;
        }

        if (v52 != v53 && (v56 == (v49 + ((4 * v48) & 0xFFFFFFFFFFFFFFF8)) || *v56 < *v52))
        {
          v68 = *v51;
          *a1 = 0;
          v58 = *(a1 + 24);
          v59 = *a2;
          if (a1 == a2)
          {
            *(a1 + 24) = *(a2 + 24);
            if (v59)
            {
              operator delete(*v40);
            }
          }

          else
          {
            *a1 = v59;
            *v51 = *v40;
            *(a1 + 24) = *(a2 + 24);
          }

          *a2 = v50;
          result = v68;
          *v40 = v68;
          *(a2 + 24) = v58;
        }
      }
    }

    return result;
  }

  v19 = 8 * v18;
  v20 = v13;
  v21 = &v13[v18];
  while (*v20 == *v15)
  {
    ++v20;
    ++v15;
    v19 -= 8;
    if (!v19)
    {
      v20 = v21;
      break;
    }
  }

  if (v15 != v17)
  {
    goto LABEL_17;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::FullyCompressTuplesRecursive(absl::lts_20240722::Span<long long const>,absl::lts_20240722::Span<std::vector<long long>>,std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>> *,std::vector<std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>> *)::TempData *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 1;
    }

LABEL_24:
    v18 = a1 + 64;
    v19 = a1 + 96;
    if (a1 + 96 == a2)
    {
      return 1;
    }

    v20 = 0;
    while (1)
    {
      v21 = *v19;
      v22 = *(v19 + 8);
      if ((*v19 & 1) == 0)
      {
        v22 = (v19 + 8);
      }

      v23 = *v18;
      v24 = (v18 + 8);
      if (*v18)
      {
        v24 = *(v18 + 8);
      }

      if ((4 * v23) >> 3 >= (4 * v21) >> 3)
      {
        v25 = (4 * v21) >> 3;
      }

      else
      {
        v25 = (4 * v23) >> 3;
      }

      if ((v25 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = 8 * v25;
        v27 = v24;
        v28 = v22;
        v29 = &v22[v25];
        while (*v28 == *v27)
        {
          ++v28;
          ++v27;
          v26 -= 8;
          if (!v26)
          {
            v28 = v29;
            break;
          }
        }

        if (v27 == (v24 + ((4 * v23) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = v24;
        v28 = v22;
        if (v24 == (v24 + ((4 * v23) & 0xFFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }
      }

      if (v28 == (v22 + ((4 * v21) & 0xFFFFFFFFFFFFFFF8)) || *v28 < *v27)
      {
        *__p = *v19;
        *&__p[8] = *(v19 + 8);
        *v19 = 0;
        v45 = *(v19 + 24);
        v30 = v19;
        while (1)
        {
          v31 = v18;
          if (v30 != v18)
          {
            if (*v30)
            {
              operator delete(*(v30 + 8));
            }

            *v30 = *v18;
            *(v30 + 8) = *(v18 + 8);
            *v18 = 0;
          }

          *(v30 + 24) = *(v18 + 24);
          if (v18 == a1)
          {
            break;
          }

          v18 -= 32;
          v32 = *(v31 - 32);
          v33 = *&__p[8];
          if ((__p[0] & 1) == 0)
          {
            v33 = &__p[8];
          }

          v34 = *(v31 - 24);
          if ((v32 & 1) == 0)
          {
            v34 = (v31 - 24);
          }

          if ((4 * v32) >> 3 >= (4 * *__p) >> 3)
          {
            v35 = (4 * *__p) >> 3;
          }

          else
          {
            v35 = (4 * v32) >> 3;
          }

          if ((v35 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v36 = 8 * v35;
            v37 = v34;
            v38 = v33;
            v39 = &v33[8 * v35];
            while (*v38 == *v37)
            {
              ++v38;
              ++v37;
              v36 -= 8;
              if (!v36)
              {
                v38 = v39;
                break;
              }
            }
          }

          else
          {
            v37 = v34;
            v38 = v33;
          }

          if (v37 != (v34 + ((4 * v32) & 0xFFFFFFFFFFFFFFF8)))
          {
            v30 = v31;
            if (v38 == &v33[(4 * *__p) & 0xFFFFFFFFFFFFFFF8])
            {
              continue;
            }

            v30 = v31;
            if (*v38 < *v37)
            {
              continue;
            }
          }

          goto LABEL_70;
        }

        v31 = a1;
LABEL_70:
        if (v31 == __p)
        {
          v40 = (__p[0] & 1) == 0;
          *(v31 + 24) = v45;
          if (!v40)
          {
            operator delete(*&__p[8]);
          }
        }

        else
        {
          if (*v31)
          {
            operator delete(*(v31 + 8));
          }

          *v31 = *__p;
          *(v31 + 8) = *&__p[8];
          *__p = 0;
          *(v31 + 24) = v45;
        }

        if (++v20 == 8)
        {
          return v19 + 32 == a2;
        }
      }

LABEL_28:
      v18 = v19;
      v19 += 32;
      if (v19 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_24;
  }

  v6 = (a2 - 32);
  v5 = *(a2 - 32);
  v7 = (a2 - 24);
  if (v5)
  {
    v8 = *(a2 - 24);
  }

  else
  {
    v8 = (a2 - 24);
  }

  v9 = *a1;
  v10 = (a1 + 8);
  v11 = *(a1 + 8);
  if ((*a1 & 1) == 0)
  {
    v11 = (a1 + 8);
  }

  v12 = (v11 + ((4 * v9) & 0xFFFFFFFFFFFFFFF8));
  if ((4 * v9) >> 3 >= (4 * v5) >> 3)
  {
    v13 = (4 * v5) >> 3;
  }

  else
  {
    v13 = (4 * v9) >> 3;
  }

  if ((v13 & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v15 = v8;
    if (v11 != v12)
    {
      goto LABEL_79;
    }

    return 1;
  }

  v14 = 8 * v13;
  v15 = v8;
  v16 = &v8[v13];
  while (*v15 == *v11)
  {
    ++v15;
    ++v11;
    v14 -= 8;
    if (!v14)
    {
      v15 = v16;
      break;
    }
  }

  if (v11 == v12)
  {
    return 1;
  }

LABEL_79:
  if (v15 != (v8 + ((4 * v5) & 0xFFFFFFFFFFFFFFF8)) && *v15 >= *v11)
  {
    return 1;
  }

  *__p = *v10;
  *a1 = 0;
  v41 = *(a1 + 24);
  v42 = *v6;
  if (v6 == a1)
  {
    v43 = (a2 - 8);
    *(a1 + 24) = *(a2 - 8);
    if (v42)
    {
      operator delete(*v7);
    }
  }

  else
  {
    *a1 = v42;
    *v10 = *v7;
    v43 = (a2 - 8);
    *(a1 + 24) = *(a2 - 8);
  }

  *v6 = v9;
  *v7 = *__p;
  *v43 = v41;
  return 1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,false>(const void ***a1, const void ***a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a3;
  while (2)
  {
    v62 = a2;
    v63 = a2 - 3;
    v59 = a2 - 9;
    v60 = a2 - 6;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v9;
        v10 = a2 - v9;
        v11 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
        if (v11 > 2)
        {
          switch(v11)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, v9 + 3, v63);
              return;
            case 4uLL:

              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, v9 + 3, v9 + 6, v63);
              return;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, v9 + 3, v9 + 6, v9 + 9, v63);
              return;
          }
        }

        else
        {
          if (v11 < 2)
          {
            return;
          }

          if (v11 == 2)
          {
            v36 = *v9;
            v37 = v9[1];
            if (*v9 != v37)
            {
              v38 = 0;
              v65 = *(a2 - 2);
              v67 = *(a2 - 3);
              while (1)
              {
                v39 = &v67[v38];
                if (&v67[v38] == v65)
                {
                  break;
                }

                v40 = SHIBYTE(v36[v38 + 2]);
                v41 = *(v39 + 23);
                if (v41 >= 0)
                {
                  v42 = *(v39 + 23);
                }

                else
                {
                  v42 = v39[1];
                }

                if (v41 >= 0)
                {
                  v43 = &v67[v38];
                }

                else
                {
                  v43 = *v39;
                }

                if (v40 >= 0)
                {
                  v44 = HIBYTE(v36[v38 + 2]);
                }

                else
                {
                  v44 = v36[v38 + 1];
                }

                if (v40 >= 0)
                {
                  v45 = &v36[v38];
                }

                else
                {
                  v45 = v36[v38];
                }

                if (v44 >= v42)
                {
                  v46 = v42;
                }

                else
                {
                  v46 = v44;
                }

                v47 = memcmp(v43, v45, v46);
                v48 = v42 < v44;
                if (v47)
                {
                  v48 = v47 < 0;
                }

                if (v48)
                {
                  break;
                }

                v49 = memcmp(v45, v43, v46);
                v50 = v44 < v42;
                if (v49)
                {
                  v50 = v49 < 0;
                }

                if (!v50)
                {
                  v38 += 3;
                  if (&v36[v38] != v37)
                  {
                    continue;
                  }
                }

                return;
              }

              *a1 = v67;
              *(a2 - 3) = v36;
              v57 = a1[1];
              a1[1] = *(a2 - 2);
              *(a2 - 2) = v57;
              v58 = a1[2];
              a1[2] = *(a2 - 1);
              *(a2 - 1) = v58;
            }

            return;
          }
        }

        if (v10 <= 575)
        {
          if (a5)
          {

            std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v9, a2);
          }

          else
          {

            std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v9, a2);
          }

          return;
        }

        if (!a4)
        {
          if (v9 != a2)
          {
            v51 = (v11 - 2) >> 1;
            v52 = v51 + 1;
            v53 = &v9[3 * v51];
            do
            {
              std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v9, v6, v11, v53);
              v53 -= 3;
              --v52;
            }

            while (v52);
            v54 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
            v55 = v62;
            do
            {
              std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<std::string> *>(v9, v55, v6, v54);
              v55 -= 24;
            }

            while (v54-- > 2);
          }

          return;
        }

        v12 = v11 >> 1;
        v13 = &v9[3 * (v11 >> 1)];
        if (v10 < 0xC01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v13, v9, v63);
          v66 = a4 - 1;
          if (a5)
          {
            goto LABEL_16;
          }
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9, v13, v63);
          v14 = 3 * v12;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9 + 3, &v9[v14 - 3], v60);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(v9 + 6, &v9[v14 + 3], v59);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(&v9[v14 - 3], v13, &v9[v14 + 3]);
          v15 = *v9;
          *v9 = *v13;
          *v13 = v15;
          v16 = v9[1];
          v9[1] = v13[1];
          v13[1] = v16;
          v17 = v9[2];
          v9[2] = v13[2];
          v13[2] = v17;
          v66 = a4 - 1;
          if (a5)
          {
            goto LABEL_16;
          }
        }

        v22 = *v9;
        v21 = v9[1];
        if (*v9 != v21)
        {
          break;
        }

LABEL_45:
        v6 = a3;
        a2 = v62;
        v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(a1, v62);
        a5 = 0;
        a4 = v66;
      }

      v24 = *(v9 - 3);
      v23 = *(v9 - 2);
      while (v24 != v23)
      {
        v25 = *(v22 + 23);
        v26 = *(v24 + 23);
        if (v26 >= 0)
        {
          v27 = *(v24 + 23);
        }

        else
        {
          v27 = v24[1];
        }

        if (v26 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = *v24;
        }

        if (v25 >= 0)
        {
          v29 = *(v22 + 23);
        }

        else
        {
          v29 = v22[1];
        }

        if (v25 >= 0)
        {
          v30 = v22;
        }

        else
        {
          v30 = *v22;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        v32 = memcmp(v28, v30, v31);
        v33 = v27 < v29;
        if (v32)
        {
          v33 = v32 < 0;
        }

        if (v33)
        {
          break;
        }

        v34 = memcmp(v30, v28, v31);
        v35 = v29 < v27;
        if (v34)
        {
          v35 = v34 < 0;
        }

        if (!v35)
        {
          v24 += 3;
          v22 += 3;
          if (v22 != v21)
          {
            continue;
          }
        }

        goto LABEL_45;
      }

LABEL_16:
      v6 = a3;
      a2 = v62;
      v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(a1, v62);
      a4 = v66;
      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }

      v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(a1, v18);
      v9 = v18 + 3;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(v18 + 3, v62))
      {
        break;
      }

      if (!v20)
      {
LABEL_19:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,false>(a1, v18, a3, v66, a5 & 1);
        a5 = 0;
        v9 = v18 + 3;
      }
    }

    a2 = v18;
    if (!v20)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_26:
    if (v3 == v4)
    {
      return 0;
    }

    v20 = 0;
    v22 = *a3;
    v21 = a3[1];
    while (1)
    {
      v23 = &v22[v20];
      if (&v22[v20] == v21)
      {
        break;
      }

      v24 = SHIBYTE(v3[v20 + 2]);
      v25 = *(v23 + 23);
      if (v25 >= 0)
      {
        v26 = *(v23 + 23);
      }

      else
      {
        v26 = v23[1];
      }

      if (v25 >= 0)
      {
        v27 = &v22[v20];
      }

      else
      {
        v27 = *v23;
      }

      if (v24 >= 0)
      {
        v28 = HIBYTE(v3[v20 + 2]);
      }

      else
      {
        v28 = v3[v20 + 1];
      }

      if (v24 >= 0)
      {
        v29 = &v3[v20];
      }

      else
      {
        v29 = v3[v20];
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      v31 = memcmp(v27, v29, v30);
      v32 = v26 < v28;
      if (v31)
      {
        v32 = v31 < 0;
      }

      if (v32)
      {
        break;
      }

      v33 = memcmp(v29, v27, v30);
      result = 0;
      v35 = v33 == 0;
      v36 = v33 < 0;
      if (v35)
      {
        v36 = v28 < v26;
      }

      if (!v36)
      {
        v20 += 3;
        if (&v3[v20] != v4)
        {
          continue;
        }
      }

      return result;
    }

    *a2 = v22;
    *a3 = v3;
    v69 = a2[1];
    a2[1] = a3[1];
    a3[1] = v69;
    v70 = a2[2];
    a2[2] = a3[2];
    a3[2] = v70;
    v71 = *a1;
    v72 = a1[1];
    if (*a1 != v72)
    {
      v73 = 0;
      v75 = *a2;
      v74 = a2[1];
      while (1)
      {
        v76 = &v75[v73];
        if (&v75[v73] == v74)
        {
          break;
        }

        v77 = SHIBYTE(v71[v73 + 2]);
        v78 = *(v76 + 23);
        if (v78 >= 0)
        {
          v79 = *(v76 + 23);
        }

        else
        {
          v79 = v76[1];
        }

        if (v78 >= 0)
        {
          v80 = &v75[v73];
        }

        else
        {
          v80 = *v76;
        }

        if (v77 >= 0)
        {
          v81 = HIBYTE(v71[v73 + 2]);
        }

        else
        {
          v81 = v71[v73 + 1];
        }

        if (v77 >= 0)
        {
          v82 = &v71[v73];
        }

        else
        {
          v82 = v71[v73];
        }

        if (v81 >= v79)
        {
          v83 = v79;
        }

        else
        {
          v83 = v81;
        }

        v84 = memcmp(v80, v82, v83);
        v85 = v79 < v81;
        if (v84)
        {
          v85 = v84 < 0;
        }

        if (v85)
        {
          break;
        }

        v86 = memcmp(v82, v80, v83);
        v87 = v81 < v79;
        if (v86)
        {
          v87 = v86 < 0;
        }

        result = 1;
        if (!v87)
        {
          v73 += 3;
          if (&v71[v73] != v72)
          {
            continue;
          }
        }

        return result;
      }

      *a1 = v75;
      *a2 = v71;
      v92 = a1[1];
      a1[1] = a2[1];
      a2[1] = v92;
      v89 = (a1 + 2);
      v90 = (a2 + 2);
LABEL_133:
      v93 = *v89;
      *v89 = *v90;
      *v90 = v93;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = &v3[v7];
      if (&v3[v7] == v4)
      {
        break;
      }

      v9 = SHIBYTE(v5[v7 + 2]);
      v10 = *(v8 + 23);
      if (v10 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = v8[1];
      }

      if (v10 >= 0)
      {
        v12 = &v3[v7];
      }

      else
      {
        v12 = *v8;
      }

      if (v9 >= 0)
      {
        v13 = HIBYTE(v5[v7 + 2]);
      }

      else
      {
        v13 = v5[v7 + 1];
      }

      if (v9 >= 0)
      {
        v14 = &v5[v7];
      }

      else
      {
        v14 = v5[v7];
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v12, v14, v15);
      v17 = v11 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (v17)
      {
        break;
      }

      v18 = memcmp(v14, v12, v15);
      v19 = v13 < v11;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        v7 += 3;
        if (&v5[v7] != v6)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    if (v3 != v4)
    {
      v37 = *a3;
      v98 = a3[1];
      v94 = *a3;
      v38 = v3;
      while (v37 != v98)
      {
        v39 = *(v38 + 23);
        v40 = *(v37 + 23);
        if (v40 >= 0)
        {
          v41 = *(v37 + 23);
        }

        else
        {
          v41 = v37[1];
        }

        if (v40 >= 0)
        {
          v42 = v37;
        }

        else
        {
          v42 = *v37;
        }

        if (v39 >= 0)
        {
          v43 = *(v38 + 23);
        }

        else
        {
          v43 = v38[1];
        }

        if (v39 >= 0)
        {
          v44 = v38;
        }

        else
        {
          v44 = *v38;
        }

        if (v43 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v43;
        }

        v46 = memcmp(v42, v44, v45);
        v47 = v41 < v43;
        if (v46)
        {
          v47 = v46 < 0;
        }

        if (v47)
        {
          break;
        }

        v48 = memcmp(v44, v42, v45);
        v49 = v43 < v41;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          v37 += 3;
          v38 += 3;
          if (v38 != v4)
          {
            continue;
          }
        }

        goto LABEL_77;
      }

      *a1 = v94;
      *a3 = v5;
      v88 = a1[1];
      a1[1] = a3[1];
      a3[1] = v88;
      v89 = (a1 + 2);
      v90 = (a3 + 2);
      goto LABEL_133;
    }

LABEL_77:
    *a1 = v3;
    *a2 = v5;
    v50 = a1[1];
    a1[1] = a2[1];
    a2[1] = v50;
    v51 = a1[2];
    a1[2] = a2[2];
    a2[2] = v51;
    v52 = *a2;
    v53 = a2[1];
    if (*a2 != v53)
    {
      v54 = 0;
      v56 = *a3;
      v55 = a3[1];
      while (1)
      {
        v57 = &v56[v54];
        if (&v56[v54] == v55)
        {
          break;
        }

        v58 = SHIBYTE(v52[v54 + 2]);
        v59 = *(v57 + 23);
        if (v59 >= 0)
        {
          v60 = *(v57 + 23);
        }

        else
        {
          v60 = v57[1];
        }

        if (v59 >= 0)
        {
          v61 = &v56[v54];
        }

        else
        {
          v61 = *v57;
        }

        if (v58 >= 0)
        {
          v62 = HIBYTE(v52[v54 + 2]);
        }

        else
        {
          v62 = v52[v54 + 1];
        }

        if (v58 >= 0)
        {
          v63 = &v52[v54];
        }

        else
        {
          v63 = v52[v54];
        }

        if (v62 >= v60)
        {
          v64 = v60;
        }

        else
        {
          v64 = v62;
        }

        v65 = memcmp(v61, v63, v64);
        v66 = v60 < v62;
        if (v65)
        {
          v66 = v65 < 0;
        }

        if (v66)
        {
          break;
        }

        v67 = memcmp(v63, v61, v64);
        v68 = v62 < v60;
        if (v67)
        {
          v68 = v67 < 0;
        }

        result = 1;
        if (!v68)
        {
          v54 += 3;
          if (&v52[v54] != v53)
          {
            continue;
          }
        }

        return result;
      }

      *a2 = v56;
      *a3 = v52;
      v91 = a2[1];
      a2[1] = a3[1];
      a3[1] = v91;
      v90 = (a3 + 2);
      v89 = (a2 + 2);
      goto LABEL_133;
    }
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a2, a3);
  v6 = *a3;
  v7 = a3[1];
  v59 = a3;
  if (*a3 != v7)
  {
    v8 = 0;
    v10 = *a4;
    v9 = a4[1];
    while (1)
    {
      v11 = &v10[v8];
      if (&v10[v8] == v9)
      {
        break;
      }

      v12 = SHIBYTE(v6[v8 + 2]);
      v13 = *(v11 + 23);
      if (v13 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = v11[1];
      }

      if (v13 >= 0)
      {
        v15 = &v10[v8];
      }

      else
      {
        v15 = *v11;
      }

      if (v12 >= 0)
      {
        v16 = HIBYTE(v6[v8 + 2]);
      }

      else
      {
        v16 = v6[v8 + 1];
      }

      if (v12 >= 0)
      {
        v17 = &v6[v8];
      }

      else
      {
        v17 = v6[v8];
      }

      if (v16 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      result = memcmp(v15, v17, v18);
      v19 = v14 < v16;
      if (result)
      {
        v19 = result < 0;
      }

      if (v19)
      {
        break;
      }

      result = memcmp(v17, v15, v18);
      v20 = v16 < v14;
      if (result)
      {
        v20 = result < 0;
      }

      if (!v20)
      {
        v8 += 3;
        if (&v6[v8] != v7)
        {
          continue;
        }
      }

      return result;
    }

    *v59 = v10;
    *a4 = v6;
    v21 = v59[1];
    v59[1] = a4[1];
    a4[1] = v21;
    v22 = v59[2];
    v59[2] = a4[2];
    a4[2] = v22;
    v23 = *a2;
    v24 = a2[1];
    if (*a2 != v24)
    {
      v25 = 0;
      v27 = *v59;
      v26 = v59[1];
      while (1)
      {
        v28 = &v27[v25];
        if (&v27[v25] == v26)
        {
          break;
        }

        v29 = SHIBYTE(v23[v25 + 2]);
        v30 = *(v28 + 23);
        if (v30 >= 0)
        {
          v31 = *(v28 + 23);
        }

        else
        {
          v31 = v28[1];
        }

        if (v30 >= 0)
        {
          v32 = &v27[v25];
        }

        else
        {
          v32 = *v28;
        }

        if (v29 >= 0)
        {
          v33 = HIBYTE(v23[v25 + 2]);
        }

        else
        {
          v33 = v23[v25 + 1];
        }

        if (v29 >= 0)
        {
          v34 = &v23[v25];
        }

        else
        {
          v34 = v23[v25];
        }

        if (v33 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }

        result = memcmp(v32, v34, v35);
        v36 = v31 < v33;
        if (result)
        {
          v36 = result < 0;
        }

        if (v36)
        {
          break;
        }

        result = memcmp(v34, v32, v35);
        v37 = v33 < v31;
        if (result)
        {
          v37 = result < 0;
        }

        if (!v37)
        {
          v25 += 3;
          if (&v23[v25] != v24)
          {
            continue;
          }
        }

        return result;
      }

      *a2 = v27;
      *v59 = v23;
      v38 = a2[1];
      a2[1] = v59[1];
      v59[1] = v38;
      v39 = a2[2];
      a2[2] = v59[2];
      v59[2] = v39;
      v40 = *a1;
      v41 = a1[1];
      if (*a1 != v41)
      {
        v42 = 0;
        v44 = *a2;
        v43 = a2[1];
        while (1)
        {
          v45 = &v44[v42];
          if (&v44[v42] == v43)
          {
            break;
          }

          v46 = SHIBYTE(v40[v42 + 2]);
          v47 = *(v45 + 23);
          if (v47 >= 0)
          {
            v48 = *(v45 + 23);
          }

          else
          {
            v48 = v45[1];
          }

          if (v47 >= 0)
          {
            v49 = &v44[v42];
          }

          else
          {
            v49 = *v45;
          }

          if (v46 >= 0)
          {
            v50 = HIBYTE(v40[v42 + 2]);
          }

          else
          {
            v50 = v40[v42 + 1];
          }

          if (v46 >= 0)
          {
            v51 = &v40[v42];
          }

          else
          {
            v51 = v40[v42];
          }

          if (v50 >= v48)
          {
            v52 = v48;
          }

          else
          {
            v52 = v50;
          }

          result = memcmp(v49, v51, v52);
          v53 = v48 < v50;
          if (result)
          {
            v53 = result < 0;
          }

          if (v53)
          {
            break;
          }

          result = memcmp(v51, v49, v52);
          v54 = v50 < v48;
          if (result)
          {
            v54 = result < 0;
          }

          if (!v54)
          {
            v42 += 3;
            if (&v40[v42] != v41)
            {
              continue;
            }
          }

          return result;
        }

        *a1 = v44;
        *a2 = v40;
        v55 = a1[1];
        a1[1] = a2[1];
        a2[1] = v55;
        v56 = a1[2];
        a1[2] = a2[2];
        a2[2] = v56;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4, const void ***a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a2, a3, a4);
  v7 = *a4;
  v8 = a4[1];
  v78 = a4;
  if (*a4 != v8)
  {
    v9 = 0;
    v10 = *a5;
    v11 = a5[1];
    while (1)
    {
      v12 = &v10[v9];
      if (&v10[v9] == v11)
      {
        break;
      }

      v13 = SHIBYTE(v7[v9 + 2]);
      v14 = *(v12 + 23);
      if (v14 >= 0)
      {
        v15 = *(v12 + 23);
      }

      else
      {
        v15 = v12[1];
      }

      if (v14 >= 0)
      {
        v16 = &v10[v9];
      }

      else
      {
        v16 = *v12;
      }

      if (v13 >= 0)
      {
        v17 = HIBYTE(v7[v9 + 2]);
      }

      else
      {
        v17 = v7[v9 + 1];
      }

      if (v13 >= 0)
      {
        v18 = &v7[v9];
      }

      else
      {
        v18 = v7[v9];
      }

      if (v17 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      result = memcmp(v16, v18, v19);
      v20 = v15 < v17;
      if (result)
      {
        v20 = result < 0;
      }

      if (v20)
      {
        break;
      }

      result = memcmp(v18, v16, v19);
      v21 = v17 < v15;
      if (result)
      {
        v21 = result < 0;
      }

      if (!v21)
      {
        v9 += 3;
        if (&v7[v9] != v8)
        {
          continue;
        }
      }

      return result;
    }

    *v78 = v10;
    *a5 = v7;
    v22 = v78[1];
    v78[1] = a5[1];
    a5[1] = v22;
    v23 = v78[2];
    v78[2] = a5[2];
    a5[2] = v23;
    v24 = *a3;
    v25 = a3[1];
    if (*a3 != v25)
    {
      v26 = 0;
      v27 = *v78;
      v28 = v78[1];
      while (1)
      {
        v29 = &v27[v26];
        if (&v27[v26] == v28)
        {
          break;
        }

        v30 = SHIBYTE(v24[v26 + 2]);
        v31 = *(v29 + 23);
        if (v31 >= 0)
        {
          v32 = *(v29 + 23);
        }

        else
        {
          v32 = v29[1];
        }

        if (v31 >= 0)
        {
          v33 = &v27[v26];
        }

        else
        {
          v33 = *v29;
        }

        if (v30 >= 0)
        {
          v34 = HIBYTE(v24[v26 + 2]);
        }

        else
        {
          v34 = v24[v26 + 1];
        }

        if (v30 >= 0)
        {
          v35 = &v24[v26];
        }

        else
        {
          v35 = v24[v26];
        }

        if (v34 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v34;
        }

        result = memcmp(v33, v35, v36);
        v37 = v32 < v34;
        if (result)
        {
          v37 = result < 0;
        }

        if (v37)
        {
          break;
        }

        result = memcmp(v35, v33, v36);
        v38 = v34 < v32;
        if (result)
        {
          v38 = result < 0;
        }

        if (!v38)
        {
          v26 += 3;
          if (&v24[v26] != v25)
          {
            continue;
          }
        }

        return result;
      }

      *a3 = v27;
      *v78 = v24;
      v39 = a3[1];
      a3[1] = v78[1];
      v78[1] = v39;
      v40 = a3[2];
      a3[2] = v78[2];
      v78[2] = v40;
      v41 = *a2;
      v42 = a2[1];
      if (*a2 != v42)
      {
        v43 = 0;
        v44 = *a3;
        v45 = a3[1];
        while (1)
        {
          v46 = &v44[v43];
          if (&v44[v43] == v45)
          {
            break;
          }

          v47 = SHIBYTE(v41[v43 + 2]);
          v48 = *(v46 + 23);
          if (v48 >= 0)
          {
            v49 = *(v46 + 23);
          }

          else
          {
            v49 = v46[1];
          }

          if (v48 >= 0)
          {
            v50 = &v44[v43];
          }

          else
          {
            v50 = *v46;
          }

          if (v47 >= 0)
          {
            v51 = HIBYTE(v41[v43 + 2]);
          }

          else
          {
            v51 = v41[v43 + 1];
          }

          if (v47 >= 0)
          {
            v52 = &v41[v43];
          }

          else
          {
            v52 = v41[v43];
          }

          if (v51 >= v49)
          {
            v53 = v49;
          }

          else
          {
            v53 = v51;
          }

          result = memcmp(v50, v52, v53);
          v54 = v49 < v51;
          if (result)
          {
            v54 = result < 0;
          }

          if (v54)
          {
            break;
          }

          result = memcmp(v52, v50, v53);
          v55 = v51 < v49;
          if (result)
          {
            v55 = result < 0;
          }

          if (!v55)
          {
            v43 += 3;
            if (&v41[v43] != v42)
            {
              continue;
            }
          }

          return result;
        }

        *a2 = v44;
        *a3 = v41;
        v56 = a2[1];
        a2[1] = a3[1];
        a3[1] = v56;
        v57 = a2[2];
        a2[2] = a3[2];
        a3[2] = v57;
        v58 = *a1;
        v59 = a1[1];
        if (*a1 != v59)
        {
          v60 = 0;
          v61 = *a2;
          v62 = a2[1];
          while (1)
          {
            v63 = &v61[v60];
            if (&v61[v60] == v62)
            {
              break;
            }

            v64 = SHIBYTE(v58[v60 + 2]);
            v65 = *(v63 + 23);
            if (v65 >= 0)
            {
              v66 = *(v63 + 23);
            }

            else
            {
              v66 = v63[1];
            }

            if (v65 >= 0)
            {
              v67 = &v61[v60];
            }

            else
            {
              v67 = *v63;
            }

            if (v64 >= 0)
            {
              v68 = HIBYTE(v58[v60 + 2]);
            }

            else
            {
              v68 = v58[v60 + 1];
            }

            if (v64 >= 0)
            {
              v69 = &v58[v60];
            }

            else
            {
              v69 = v58[v60];
            }

            if (v68 >= v66)
            {
              v70 = v66;
            }

            else
            {
              v70 = v68;
            }

            result = memcmp(v67, v69, v70);
            v71 = v66 < v68;
            if (result)
            {
              v71 = result < 0;
            }

            if (v71)
            {
              break;
            }

            result = memcmp(v69, v67, v70);
            v72 = v68 < v66;
            if (result)
            {
              v72 = result < 0;
            }

            if (!v72)
            {
              v60 += 3;
              if (&v58[v60] != v59)
              {
                continue;
              }
            }

            return result;
          }

          *a1 = v61;
          *a2 = v58;
          v73 = a1[1];
          a1[1] = a2[1];
          a2[1] = v73;
          v74 = a1[2];
          a1[2] = a2[2];
          a2[2] = v74;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(void *result, void *a2)
{
  v32 = result;
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = result;
      do
      {
        v36 = v2;
        v5 = *v3;
        v6 = v3[1];
        if (*v3 != v6)
        {
          v7 = 0;
          v8 = v3[4];
          v37 = v3[3];
          while (1)
          {
            v9 = &v37[v7];
            if (&v37[v7] == v8)
            {
              break;
            }

            v10 = SHIBYTE(v5[v7 + 2]);
            v11 = *(v9 + 23);
            if (v11 >= 0)
            {
              v12 = *(v9 + 23);
            }

            else
            {
              v12 = v9[1];
            }

            if (v11 >= 0)
            {
              v13 = &v37[v7];
            }

            else
            {
              v13 = *v9;
            }

            if (v10 >= 0)
            {
              v14 = HIBYTE(v5[v7 + 2]);
            }

            else
            {
              v14 = v5[v7 + 1];
            }

            if (v10 >= 0)
            {
              v15 = &v5[v7];
            }

            else
            {
              v15 = v5[v7];
            }

            if (v14 >= v12)
            {
              v16 = v12;
            }

            else
            {
              v16 = v14;
            }

            result = memcmp(v13, v15, v16);
            v17 = v12 < v14;
            if (result)
            {
              v17 = result < 0;
            }

            if (v17)
            {
              break;
            }

            result = memcmp(v15, v13, v16);
            v18 = v14 < v12;
            if (result)
            {
              v18 = result < 0;
            }

            if (!v18)
            {
              v7 += 3;
              if (&v5[v7] != v6)
              {
                continue;
              }
            }

            goto LABEL_6;
          }

          v31 = v3[5];
          *v36 = 0;
          v36[1] = 0;
          v36[2] = 0;
          v3[3] = v5;
          *(v36 + 1) = *(v3 + 1);
          *v3 = 0;
          v3[1] = 0;
          v3[2] = 0;
          v4 = v32;
          if (v3 != v32)
          {
            while (1)
            {
              v4 = v3;
              v19 = *(v3 - 3);
              v20 = *(v3 - 2);
              v3 -= 3;
              if (v19 == v20)
              {
                break;
              }

              v34 = v19;
              v35 = v4;
              v21 = v37;
              while (v21 != v8)
              {
                v22 = *(v19 + 23);
                v23 = *(v21 + 23);
                if (v23 >= 0)
                {
                  v24 = *(v21 + 23);
                }

                else
                {
                  v24 = v21[1];
                }

                if (v23 >= 0)
                {
                  v25 = v21;
                }

                else
                {
                  v25 = *v21;
                }

                if (v22 >= 0)
                {
                  v26 = *(v19 + 23);
                }

                else
                {
                  v26 = v19[1];
                }

                if (v22 >= 0)
                {
                  v27 = v19;
                }

                else
                {
                  v27 = *v19;
                }

                if (v26 >= v24)
                {
                  v28 = v24;
                }

                else
                {
                  v28 = v26;
                }

                result = memcmp(v25, v27, v28);
                v29 = v24 < v26;
                if (result)
                {
                  v29 = result < 0;
                }

                if (v29)
                {
                  break;
                }

                result = memcmp(v27, v25, v28);
                v30 = v26 < v24;
                if (result)
                {
                  v30 = result < 0;
                }

                if (!v30)
                {
                  v21 += 3;
                  v19 += 3;
                  if (v19 != v20)
                  {
                    continue;
                  }
                }

                v4 = v35;
                goto LABEL_5;
              }

              *v35 = v34;
              *(v35 + 1) = *(v35 - 1);
              *v3 = 0;
              v3[1] = 0;
              v3[2] = 0;
              if (v3 == v32)
              {
                v4 = v32;
                break;
              }
            }
          }

LABEL_5:
          *v4 = v37;
          v4[1] = v8;
          v4[2] = v31;
        }

LABEL_6:
        v3 = v36;
        v2 = v36 + 3;
      }

      while (v36 + 3 != a2);
    }
  }

  return result;
}

const void ***std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(const void ***result, const void ***a2)
{
  if (result != a2)
  {
    while (result + 3 != a2)
    {
      v37 = result + 3;
      v3 = *result;
      v4 = result[1];
      if (*result != v4)
      {
        v2 = result;
        v5 = 0;
        v6 = result[4];
        v38 = result[3];
        while (1)
        {
          v7 = &v38[v5];
          if (&v38[v5] == v6)
          {
            break;
          }

          v8 = SHIBYTE(v3[v5 + 2]);
          v9 = *(v7 + 23);
          if (v9 >= 0)
          {
            v10 = *(v7 + 23);
          }

          else
          {
            v10 = v7[1];
          }

          if (v9 >= 0)
          {
            v11 = &v38[v5];
          }

          else
          {
            v11 = *v7;
          }

          if (v8 >= 0)
          {
            v12 = HIBYTE(v3[v5 + 2]);
          }

          else
          {
            v12 = v3[v5 + 1];
          }

          if (v8 >= 0)
          {
            v13 = &v3[v5];
          }

          else
          {
            v13 = v3[v5];
          }

          if (v12 >= v10)
          {
            v14 = v10;
          }

          else
          {
            v14 = v12;
          }

          v15 = memcmp(v11, v13, v14);
          v16 = v10 < v12;
          if (v15)
          {
            v16 = v15 < 0;
          }

          if (v16)
          {
            break;
          }

          v17 = memcmp(v13, v11, v14);
          v18 = v12 < v10;
          if (v17)
          {
            v18 = v17 < 0;
          }

          if (!v18)
          {
            v5 += 3;
            if (&v3[v5] != v4)
            {
              continue;
            }
          }

          goto LABEL_5;
        }

        v33 = v2[5];
        v37[1] = 0;
        v37[2] = 0;
        *v37 = v3;
        *(v37 + 1) = *(v2 + 1);
        while (1)
        {
          *v2 = 0;
          v2[1] = 0;
          v2[2] = 0;
          v19 = *(v2 - 3);
          v20 = *(v2 - 2);
          if (v19 == v20)
          {
            break;
          }

          v35 = *(v2 - 3);
          v36 = v2;
          v2 -= 3;
          v21 = v38;
          while (v21 != v6)
          {
            v22 = *(v19 + 23);
            v23 = *(v21 + 23);
            if (v23 >= 0)
            {
              v24 = *(v21 + 23);
            }

            else
            {
              v24 = v21[1];
            }

            if (v23 >= 0)
            {
              v25 = v21;
            }

            else
            {
              v25 = *v21;
            }

            if (v22 >= 0)
            {
              v26 = *(v19 + 23);
            }

            else
            {
              v26 = v19[1];
            }

            if (v22 >= 0)
            {
              v27 = v19;
            }

            else
            {
              v27 = *v19;
            }

            if (v26 >= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v26;
            }

            v29 = memcmp(v25, v27, v28);
            v30 = v24 < v26;
            if (v29)
            {
              v30 = v29 < 0;
            }

            if (v30)
            {
              break;
            }

            v31 = memcmp(v27, v25, v28);
            v32 = v26 < v24;
            if (v31)
            {
              v32 = v31 < 0;
            }

            if (!v32)
            {
              v21 += 3;
              v19 += 3;
              if (v19 != v20)
              {
                continue;
              }
            }

            v2 = v36;
            goto LABEL_4;
          }

          *v36 = v35;
          *(v36 + 1) = *(v2 + 1);
        }

LABEL_4:
        *v2 = v38;
        v2[1] = v6;
        v2[2] = v33;
      }

LABEL_5:
      result = v37;
    }
  }

  return result;
}

const void ***std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(const void ***a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v4 = *(a2 - 24);
  v116 = v2;
  v109 = v2;
  v5 = *(&v2 + 1);
  v107 = (a2 - 24);
  v108 = v3;
  v111 = *(a2 - 16);
  if (v4 == v111)
  {
LABEL_26:
    v19 = a1;
    v20 = a2;
    v21 = a1 + 3;
    if ((a1 + 3) < a2)
    {
      while (1)
      {
        v38 = v19[3];
        v37 = v19[4];
        v114 = v21;
        if (v38 != v37)
        {
          break;
        }

LABEL_57:
        v19 = v114;
        v21 = v114 + 3;
        v20 = a2;
        if ((v114 + 3) >= a2)
        {
          goto LABEL_85;
        }
      }

      v39 = v116;
      while (v39 != v5)
      {
        v40 = *(v38 + 23);
        v41 = *(v39 + 23);
        if (v41 >= 0)
        {
          v42 = *(v39 + 23);
        }

        else
        {
          v42 = v39[1];
        }

        if (v41 >= 0)
        {
          v43 = v39;
        }

        else
        {
          v43 = *v39;
        }

        if (v40 >= 0)
        {
          v44 = *(v38 + 23);
        }

        else
        {
          v44 = v38[1];
        }

        if (v40 >= 0)
        {
          v45 = v38;
        }

        else
        {
          v45 = *v38;
        }

        if (v44 >= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v44;
        }

        v47 = memcmp(v43, v45, v46);
        v48 = v42 < v44;
        if (v47)
        {
          v48 = v47 < 0;
        }

        if (v48)
        {
          break;
        }

        v49 = memcmp(v45, v43, v46);
        v50 = v44 < v42;
        if (v49)
        {
          v50 = v49 < 0;
        }

        if (!v50)
        {
          v39 += 3;
          v38 += 3;
          if (v38 != v37)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      v21 = v114;
      v20 = a2;
    }
  }

  else
  {
    v6 = v2;
    v7 = *(a2 - 24);
    while (v6 != v5)
    {
      v8 = *(v7 + 23);
      v9 = *(v6 + 23);
      if (v9 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      if (v9 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *v6;
      }

      if (v8 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = v7[1];
      }

      if (v8 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v11, v13, v14);
      v16 = v10 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (v16)
      {
        break;
      }

      v17 = memcmp(v13, v11, v14);
      v18 = v12 < v10;
      if (v17)
      {
        v18 = v17 < 0;
      }

      if (!v18)
      {
        v6 += 3;
        v7 += 3;
        if (v7 != v111)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v22 = a1;
    do
    {
LABEL_29:
      v23 = v22[3];
      v24 = v22[4];
      v22 += 3;
    }

    while (v23 == v24);
    v113 = v22;
    v25 = v116;
    while (v25 != v5)
    {
      v26 = *(v23 + 23);
      v27 = *(v25 + 23);
      if (v27 >= 0)
      {
        v28 = *(v25 + 23);
      }

      else
      {
        v28 = v25[1];
      }

      if (v27 >= 0)
      {
        v29 = v25;
      }

      else
      {
        v29 = *v25;
      }

      if (v26 >= 0)
      {
        v30 = *(v23 + 23);
      }

      else
      {
        v30 = v23[1];
      }

      if (v26 >= 0)
      {
        v31 = v23;
      }

      else
      {
        v31 = *v23;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {
        break;
      }

      v35 = memcmp(v31, v29, v32);
      v36 = v30 < v28;
      if (v35)
      {
        v36 = v35 < 0;
      }

      v25 += 3;
      v23 += 3;
      if (v36)
      {
        v22 = v113;
        goto LABEL_29;
      }

      if (v23 == v24)
      {
        v22 = v113;
        goto LABEL_29;
      }
    }

    v20 = a2;
    v21 = v113;
  }

LABEL_85:
  v51 = v21;
  if (v21 < v20)
  {
    if (v4 == v111)
    {
      v20 = v107;
      v65 = v21;
      if (v21 >= v107)
      {
        goto LABEL_173;
      }

      goto LABEL_114;
    }

    v20 = v107;
    do
    {
      v53 = v116;
      while (v53 != v5)
      {
        v54 = *(v4 + 23);
        v55 = *(v53 + 23);
        if (v55 >= 0)
        {
          v56 = *(v53 + 23);
        }

        else
        {
          v56 = v53[1];
        }

        if (v55 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = *v53;
        }

        if (v54 >= 0)
        {
          v58 = *(v4 + 23);
        }

        else
        {
          v58 = v4[1];
        }

        if (v54 >= 0)
        {
          v59 = v4;
        }

        else
        {
          v59 = *v4;
        }

        if (v58 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v58;
        }

        v61 = memcmp(v57, v59, v60);
        v62 = v56 < v58;
        if (v61)
        {
          v62 = v61 < 0;
        }

        if (v62)
        {
          break;
        }

        v63 = memcmp(v59, v57, v60);
        v64 = v58 < v56;
        if (v63)
        {
          v64 = v63 < 0;
        }

        if (!v64)
        {
          v53 += 3;
          v4 += 3;
          if (v4 != v111)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v4 = *(v20 - 3);
      v52 = *(v20 - 2);
      v20 -= 3;
      v111 = v52;
    }

    while (v4 != v52);
  }

LABEL_113:
  v65 = v51;
  if (v51 >= v20)
  {
    goto LABEL_173;
  }

LABEL_114:
  v66 = *v65;
  v67 = *v20;
  do
  {
    *v65 = v67;
    *v20 = v66;
    v68 = v65[1];
    v65[1] = v20[1];
    v20[1] = v68;
    v69 = v65[2];
    v65[2] = v20[2];
    v20[2] = v69;
    do
    {
LABEL_118:
      v71 = v65[3];
      v70 = v65[4];
      v65 += 3;
    }

    while (v71 == v70);
    v112 = v71;
    v115 = v65;
    v72 = v116;
    while (v72 != v5)
    {
      v73 = *(v71 + 23);
      v74 = *(v72 + 23);
      if (v74 >= 0)
      {
        v75 = *(v72 + 23);
      }

      else
      {
        v75 = v72[1];
      }

      if (v74 >= 0)
      {
        v76 = v72;
      }

      else
      {
        v76 = *v72;
      }

      if (v73 >= 0)
      {
        v77 = *(v71 + 23);
      }

      else
      {
        v77 = v71[1];
      }

      if (v73 >= 0)
      {
        v78 = v71;
      }

      else
      {
        v78 = *v71;
      }

      if (v77 >= v75)
      {
        v79 = v75;
      }

      else
      {
        v79 = v77;
      }

      v80 = memcmp(v76, v78, v79);
      v81 = v75 < v77;
      if (v80)
      {
        v81 = v80 < 0;
      }

      if (v81)
      {
        break;
      }

      v82 = memcmp(v78, v76, v79);
      v83 = v77 < v75;
      if (v82)
      {
        v83 = v82 < 0;
      }

      v72 += 3;
      v71 += 3;
      if (v83)
      {
        v65 = v115;
        goto LABEL_118;
      }

      if (v71 == v70)
      {
        v65 = v115;
        goto LABEL_118;
      }
    }

    while (1)
    {
      v67 = *(v20 - 3);
      v84 = *(v20 - 2);
      v20 -= 3;
      if (v67 == v84)
      {
        break;
      }

      v118 = v20;
      v85 = v116;
      v86 = v67;
      while (v85 != v5)
      {
        v87 = *(v86 + 23);
        v88 = *(v85 + 23);
        if (v88 >= 0)
        {
          v89 = *(v85 + 23);
        }

        else
        {
          v89 = v85[1];
        }

        if (v88 >= 0)
        {
          v90 = v85;
        }

        else
        {
          v90 = *v85;
        }

        if (v87 >= 0)
        {
          v91 = *(v86 + 23);
        }

        else
        {
          v91 = v86[1];
        }

        if (v87 >= 0)
        {
          v92 = v86;
        }

        else
        {
          v92 = *v86;
        }

        if (v91 >= v89)
        {
          v93 = v89;
        }

        else
        {
          v93 = v91;
        }

        v94 = memcmp(v90, v92, v93);
        v95 = v89 < v91;
        if (v94)
        {
          v95 = v94 < 0;
        }

        if (v95)
        {
          break;
        }

        v96 = memcmp(v92, v90, v93);
        v97 = v91 < v89;
        if (v96)
        {
          v97 = v96 < 0;
        }

        if (!v97)
        {
          v85 += 3;
          v86 += 3;
          if (v86 != v84)
          {
            continue;
          }
        }

        v20 = v118;
        goto LABEL_116;
      }

      v20 = v118;
    }

LABEL_116:
    v66 = v112;
    v65 = v115;
  }

  while (v115 < v20);
LABEL_173:
  v98 = *a1;
  if (v65 - 3 == a1)
  {
    v99 = v108;
    if (v98)
    {
      v103 = *(v65 - 2);
      v104 = *a1;
      if (v103 != v98)
      {
        do
        {
          v105 = *(v103 - 1);
          v103 -= 3;
          if (v105 < 0)
          {
            operator delete(*v103);
          }
        }

        while (v103 != v98);
        v104 = *(v65 - 3);
      }

      *(v65 - 2) = v98;
      operator delete(v104);
    }
  }

  else
  {
    v99 = v108;
    if (v98)
    {
      v100 = a1[1];
      v101 = *a1;
      if (v100 != v98)
      {
        do
        {
          v102 = *(v100 - 1);
          v100 -= 3;
          if (v102 < 0)
          {
            operator delete(*v100);
          }
        }

        while (v100 != v98);
        v101 = *a1;
      }

      a1[1] = v98;
      operator delete(v101);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v65 - 3);
    a1[2] = *(v65 - 1);
  }

  *(v65 - 3) = v109;
  *(v65 - 1) = v99;
  return v65;
}

const void ***std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<std::string> *,std::__less<void,void> &>(const void ***a1, void *a2)
{
  v2 = *a1;
  v91 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v92 = v2;
  v3 = *(&v2 + 1);
  v4 = a1 + 3;
  v97 = a1[3];
  v99 = v2;
  if (v2 == *(&v2 + 1))
  {
    goto LABEL_159;
  }

  v95 = a2;
  v5 = a1[4];
  v6 = a1;
LABEL_4:
  v7 = 0;
  v8 = v4;
  do
  {
    v9 = &v97[v7];
    if (&v97[v7] == v5)
    {
      goto LABEL_3;
    }

    v10 = SHIBYTE(v99[v7 + 2]);
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = v9[1];
    }

    if (v11 >= 0)
    {
      v13 = &v97[v7];
    }

    else
    {
      v13 = *v9;
    }

    if (v10 >= 0)
    {
      v14 = HIBYTE(v99[v7 + 2]);
    }

    else
    {
      v14 = v99[v7 + 1];
    }

    if (v10 >= 0)
    {
      v15 = &v99[v7];
    }

    else
    {
      v15 = v99[v7];
    }

    if (v14 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    v17 = memcmp(v13, v15, v16);
    v18 = v12 < v14;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (v18)
    {
LABEL_3:
      v5 = v8[4];
      v4 = v8 + 3;
      v97 = v8[3];
      v6 = v8;
      goto LABEL_4;
    }

    v19 = memcmp(v15, v13, v16);
    v20 = v14 < v12;
    if (v19)
    {
      v20 = v19 < 0;
    }

    if (v20)
    {
      break;
    }

    v7 += 3;
  }

  while (&v99[v7] != v3);
  if (v6 != a1)
  {
LABEL_29:
    v21 = *(v95 - 3);
    v95 -= 3;
    v22 = v95[1];
    v23 = v99;
    while (v21 != v22)
    {
      v24 = *(v23 + 23);
      v25 = *(v21 + 23);
      if (v25 >= 0)
      {
        v26 = *(v21 + 23);
      }

      else
      {
        v26 = v21[1];
      }

      if (v25 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      if (v24 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = v23[1];
      }

      if (v24 >= 0)
      {
        v29 = v23;
      }

      else
      {
        v29 = *v23;
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      v31 = memcmp(v27, v29, v30);
      v32 = v26 < v28;
      if (v31)
      {
        v32 = v31 < 0;
      }

      if (v32)
      {
        break;
      }

      v33 = memcmp(v29, v27, v30);
      v34 = v28 < v26;
      if (v33)
      {
        v34 = v33 < 0;
      }

      v21 += 3;
      v23 += 3;
      if (v34 || v23 == v3)
      {
        goto LABEL_29;
      }
    }

LABEL_82:
    a2 = v95;
LABEL_83:
    v4 = v8;
    goto LABEL_84;
  }

  a2 = v95;
  v4 = v8;
  if (v8 >= v95)
  {
    goto LABEL_84;
  }

  if (v99 != v3)
  {
LABEL_56:
    v35 = *(a2 - 3);
    v95 = a2 - 3;
    v36 = *(a2 - 2);
    v37 = v99;
    while (v35 != v36)
    {
      v38 = *(v37 + 23);
      v39 = *(v35 + 23);
      if (v39 >= 0)
      {
        v40 = *(v35 + 23);
      }

      else
      {
        v40 = v35[1];
      }

      if (v39 >= 0)
      {
        v41 = v35;
      }

      else
      {
        v41 = *v35;
      }

      if (v38 >= 0)
      {
        v42 = *(v37 + 23);
      }

      else
      {
        v42 = v37[1];
      }

      if (v38 >= 0)
      {
        v43 = v37;
      }

      else
      {
        v43 = *v37;
      }

      if (v42 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      v45 = memcmp(v41, v43, v44);
      v46 = v40 < v42;
      if (v45)
      {
        v46 = v45 < 0;
      }

      if (v46)
      {
        break;
      }

      v47 = memcmp(v43, v41, v44);
      v48 = v42 < v40;
      if (v47)
      {
        v48 = v47 < 0;
      }

      if (!v48)
      {
        v35 += 3;
        v37 += 3;
        if (v37 != v3)
        {
          continue;
        }
      }

      a2 = v95;
      if (v8 < v95)
      {
        goto LABEL_56;
      }

      goto LABEL_83;
    }

    goto LABEL_82;
  }

  do
  {
    a2 -= 3;
LABEL_159:
    ;
  }

  while (v4 < a2);
LABEL_84:
  v49 = v4;
  v93 = v4;
  if (v4 < a2)
  {
    v50 = a2;
    v51 = *a2;
    v49 = v93;
    do
    {
      *v49 = v51;
      *v50 = v97;
      v52 = v49[1];
      v49[1] = v50[1];
      v50[1] = v52;
      v53 = v49[2];
      v49[2] = v50[2];
      v50[2] = v53;
LABEL_89:
      v54 = v49[3];
      v97 = v54;
      v98 = v49 + 3;
      v55 = v49[4];
      v56 = v99;
      do
      {
        if (v54 == v55)
        {
          v49 = v98;
          goto LABEL_89;
        }

        v57 = *(v56 + 23);
        v58 = *(v54 + 23);
        if (v58 >= 0)
        {
          v59 = *(v54 + 23);
        }

        else
        {
          v59 = v54[1];
        }

        if (v58 >= 0)
        {
          v60 = v54;
        }

        else
        {
          v60 = *v54;
        }

        if (v57 >= 0)
        {
          v61 = *(v56 + 23);
        }

        else
        {
          v61 = v56[1];
        }

        if (v57 >= 0)
        {
          v62 = v56;
        }

        else
        {
          v62 = *v56;
        }

        if (v61 >= v59)
        {
          v63 = v59;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v60, v62, v63);
        v65 = v59 < v61;
        if (v64)
        {
          v65 = v64 < 0;
        }

        if (v65)
        {
          v49 = v98;
          goto LABEL_89;
        }

        v66 = memcmp(v62, v60, v63);
        v67 = v61 < v59;
        if (v66)
        {
          v67 = v66 < 0;
        }

        if (v67)
        {
          break;
        }

        v54 += 3;
        v56 += 3;
      }

      while (v56 != v3);
LABEL_115:
      v68 = *(v50 - 3);
      v69 = *(v50 - 2);
      v50 -= 3;
      v96 = v68;
      v70 = v99;
      while (v68 != v69)
      {
        v71 = *(v70 + 23);
        v72 = *(v68 + 23);
        if (v72 >= 0)
        {
          v73 = *(v68 + 23);
        }

        else
        {
          v73 = v68[1];
        }

        if (v72 >= 0)
        {
          v74 = v68;
        }

        else
        {
          v74 = *v68;
        }

        if (v71 >= 0)
        {
          v75 = *(v70 + 23);
        }

        else
        {
          v75 = v70[1];
        }

        if (v71 >= 0)
        {
          v76 = v70;
        }

        else
        {
          v76 = *v70;
        }

        if (v75 >= v73)
        {
          v77 = v73;
        }

        else
        {
          v77 = v75;
        }

        v78 = memcmp(v74, v76, v77);
        v79 = v73 < v75;
        if (v78)
        {
          v79 = v78 < 0;
        }

        if (v79)
        {
          break;
        }

        v80 = memcmp(v76, v74, v77);
        v81 = v75 < v73;
        if (v80)
        {
          v81 = v80 < 0;
        }

        v68 += 3;
        v70 += 3;
        if (v81 || v70 == v3)
        {
          goto LABEL_115;
        }
      }

      v49 = v98;
      v51 = v96;
    }

    while (v98 < v50);
  }

  v82 = *a1;
  if (v49 - 3 == a1)
  {
    v83 = v91;
    if (v82)
    {
      v87 = *(v49 - 2);
      v88 = *a1;
      if (v87 != v82)
      {
        do
        {
          v89 = *(v87 - 1);
          v87 -= 3;
          if (v89 < 0)
          {
            operator delete(*v87);
          }
        }

        while (v87 != v82);
        v88 = *(v49 - 3);
      }

      *(v49 - 2) = v82;
      operator delete(v88);
    }
  }

  else
  {
    v83 = v91;
    if (v82)
    {
      v84 = a1[1];
      v85 = *a1;
      if (v84 != v82)
      {
        do
        {
          v86 = *(v84 - 1);
          v84 -= 3;
          if (v86 < 0)
          {
            operator delete(*v84);
          }
        }

        while (v84 != v82);
        v85 = *a1;
      }

      a1[1] = v82;
      operator delete(v85);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v49 - 3);
    a1[2] = *(v49 - 1);
  }

  *(v49 - 3) = v92;
  *(v49 - 1) = v83;
  return v49 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(const void ***a1, const void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
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
      v3 = *a1;
      v4 = a1[1];
      if (*a1 != v4)
      {
        v5 = 0;
        v6 = *(a2 - 3);
        v7 = *(a2 - 2);
        while (1)
        {
          v8 = &v6[v5];
          if (&v6[v5] == v7)
          {
            break;
          }

          v9 = SHIBYTE(v3[v5 + 2]);
          v10 = *(v8 + 23);
          if (v10 >= 0)
          {
            v11 = *(v8 + 23);
          }

          else
          {
            v11 = v8[1];
          }

          if (v10 >= 0)
          {
            v12 = &v6[v5];
          }

          else
          {
            v12 = *v8;
          }

          if (v9 >= 0)
          {
            v13 = HIBYTE(v3[v5 + 2]);
          }

          else
          {
            v13 = v3[v5 + 1];
          }

          if (v9 >= 0)
          {
            v14 = &v3[v5];
          }

          else
          {
            v14 = v3[v5];
          }

          if (v13 >= v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = v13;
          }

          v16 = memcmp(v12, v14, v15);
          v17 = v11 < v13;
          if (v16)
          {
            v17 = v16 < 0;
          }

          if (v17)
          {
            break;
          }

          v18 = memcmp(v14, v12, v15);
          v19 = v13 < v11;
          if (v18)
          {
            v19 = v18 < 0;
          }

          result = 1;
          if (!v19)
          {
            v5 += 3;
            if (&v3[v5] != v4)
            {
              continue;
            }
          }

          return result;
        }

        *a1 = v6;
        *(a2 - 3) = v3;
        v56 = a1[1];
        a1[1] = *(a2 - 2);
        *(a2 - 2) = v56;
        v57 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v57;
        return 1;
      }

      return 1;
    }
  }

  v21 = a1 + 6;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *,0>(a1, a1 + 3, a1 + 6);
  v23 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v24 = a2;
  v59 = 0;
  while (1)
  {
    v26 = *v21;
    v27 = v21[1];
    if (*v21 != v27)
    {
      v28 = 0;
      v29 = v23[1];
      v65 = *v23;
      v63 = v23;
      while (1)
      {
        v30 = &v65[v28];
        if (&v65[v28] == v29)
        {
          break;
        }

        v31 = SHIBYTE(v26[v28 + 2]);
        v32 = *(v30 + 23);
        if (v32 >= 0)
        {
          v33 = *(v30 + 23);
        }

        else
        {
          v33 = v30[1];
        }

        if (v32 >= 0)
        {
          v34 = &v65[v28];
        }

        else
        {
          v34 = *v30;
        }

        if (v31 >= 0)
        {
          v35 = HIBYTE(v26[v28 + 2]);
        }

        else
        {
          v35 = v26[v28 + 1];
        }

        if (v31 >= 0)
        {
          v36 = &v26[v28];
        }

        else
        {
          v36 = v26[v28];
        }

        if (v35 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v35;
        }

        v38 = memcmp(v34, v36, v37);
        v39 = v33 < v35;
        if (v38)
        {
          v39 = v38 < 0;
        }

        if (v39)
        {
          break;
        }

        v40 = memcmp(v36, v34, v37);
        v41 = v35 < v33;
        if (v40)
        {
          v41 = v40 < 0;
        }

        if (!v41)
        {
          v28 += 3;
          if (&v26[v28] != v27)
          {
            continue;
          }
        }

        v24 = a2;
        v23 = v63;
        goto LABEL_39;
      }

      v58 = v63[2];
      v63[1] = 0;
      v63[2] = 0;
      *v63 = v26;
      *(v63 + 1) = *(v21 + 1);
      *v21 = 0;
      v21[1] = 0;
      v21[2] = 0;
      v25 = a1;
      if (v21 != a1)
      {
        while (1)
        {
          v25 = v21;
          v42 = *(v21 - 3);
          v43 = *(v21 - 2);
          v21 -= 3;
          if (v42 == v43)
          {
            break;
          }

          v61 = v42;
          v62 = v25;
          v44 = v65;
          while (v44 != v29)
          {
            v45 = *(v42 + 23);
            v46 = *(v44 + 23);
            if (v46 >= 0)
            {
              v47 = *(v44 + 23);
            }

            else
            {
              v47 = v44[1];
            }

            if (v46 >= 0)
            {
              v48 = v44;
            }

            else
            {
              v48 = *v44;
            }

            if (v45 >= 0)
            {
              v49 = *(v42 + 23);
            }

            else
            {
              v49 = v42[1];
            }

            if (v45 >= 0)
            {
              v50 = v42;
            }

            else
            {
              v50 = *v42;
            }

            if (v49 >= v47)
            {
              v51 = v47;
            }

            else
            {
              v51 = v49;
            }

            v52 = memcmp(v48, v50, v51);
            v53 = v47 < v49;
            if (v52)
            {
              v53 = v52 < 0;
            }

            if (v53)
            {
              break;
            }

            v54 = memcmp(v50, v48, v51);
            v55 = v49 < v47;
            if (v54)
            {
              v55 = v54 < 0;
            }

            if (!v55)
            {
              v44 += 3;
              v42 += 3;
              if (v42 != v43)
              {
                continue;
              }
            }

            v25 = v62;
            goto LABEL_38;
          }

          *v62 = v61;
          *(v62 + 1) = *(v62 - 1);
          *v21 = 0;
          v21[1] = 0;
          v21[2] = 0;
          if (v21 == a1)
          {
            v25 = a1;
            break;
          }
        }
      }

LABEL_38:
      *v25 = v65;
      v25[1] = v29;
      v25[2] = v58;
      ++v59;
      v24 = a2;
      v23 = v63;
      if (v59 == 8)
      {
        return v63 + 3 == a2;
      }
    }

LABEL_39:
    v21 = v23;
    v23 += 3;
    if (v23 == v24)
    {
      return 1;
    }
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(uint64_t result, uint64_t a2, uint64_t a3, const void ***a4)
{
  v79 = result;
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v73 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v6 = (result + 24 * ((0x5555555555555556 * ((a4 - result) >> 3)) | 1));
      v71 = v6;
      v74 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v7 = v6[3];
        v8 = v6[4];
        if (v7 != v8)
        {
          v69 = v6 + 3;
          v76 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
          v10 = *v6;
          v9 = v6[1];
          while (v10 != v9)
          {
            v11 = *(v7 + 23);
            v12 = *(v10 + 23);
            if (v12 >= 0)
            {
              v13 = *(v10 + 23);
            }

            else
            {
              v13 = v10[1];
            }

            if (v12 >= 0)
            {
              v14 = v10;
            }

            else
            {
              v14 = *v10;
            }

            if (v11 >= 0)
            {
              v15 = *(v7 + 23);
            }

            else
            {
              v15 = v7[1];
            }

            if (v11 >= 0)
            {
              v16 = v7;
            }

            else
            {
              v16 = *v7;
            }

            if (v15 >= v13)
            {
              v17 = v13;
            }

            else
            {
              v17 = v15;
            }

            result = memcmp(v14, v16, v17);
            v18 = v13 < v15;
            if (result)
            {
              v18 = result < 0;
            }

            if (v18)
            {
              break;
            }

            result = memcmp(v16, v14, v17);
            v19 = v15 < v13;
            if (result)
            {
              v19 = result < 0;
            }

            if (!v19)
            {
              v10 += 3;
              v7 += 3;
              if (v7 != v8)
              {
                continue;
              }
            }

            goto LABEL_31;
          }

          v71 = v69;
          v74 = v76;
        }
      }

LABEL_31:
      v20 = a4[1];
      v77 = *a4;
      if (*a4 == v20)
      {
LABEL_56:
        v68 = a4[2];
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v33 = v71;
        v34 = v71[2];
        *a4 = *v71;
        a4[2] = v34;
        *v71 = 0;
        v71[1] = 0;
        v71[2] = 0;
        v35 = v74;
        if (v73 >= v74)
        {
          while (1)
          {
            v70 = v33;
            v37 = (2 * v35) | 1;
            v33 = (v79 + 24 * v37);
            v38 = 2 * v35 + 2;
            v75 = v37;
            if (v38 < a3)
            {
              v39 = (v79 + 24 * v37);
              v40 = v33 + 3;
              v41 = v33[3];
              v42 = v39[4];
              if (v41 == v42)
              {
                v33 = (v79 + 24 * v37);
              }

              else
              {
                v66 = v40;
                v67 = v38;
                v44 = *v39;
                v43 = v39[1];
                v72 = (v79 + 24 * v37);
                while (v44 != v43)
                {
                  v45 = *(v41 + 23);
                  v46 = *(v44 + 23);
                  if (v46 >= 0)
                  {
                    v47 = *(v44 + 23);
                  }

                  else
                  {
                    v47 = v44[1];
                  }

                  if (v46 >= 0)
                  {
                    v48 = v44;
                  }

                  else
                  {
                    v48 = *v44;
                  }

                  if (v45 >= 0)
                  {
                    v49 = *(v41 + 23);
                  }

                  else
                  {
                    v49 = v41[1];
                  }

                  if (v45 >= 0)
                  {
                    v50 = v41;
                  }

                  else
                  {
                    v50 = *v41;
                  }

                  if (v49 >= v47)
                  {
                    v51 = v47;
                  }

                  else
                  {
                    v51 = v49;
                  }

                  result = memcmp(v48, v50, v51);
                  v52 = v47 < v49;
                  if (result)
                  {
                    v52 = result < 0;
                  }

                  if (v52)
                  {
                    break;
                  }

                  result = memcmp(v50, v48, v51);
                  v53 = v49 < v47;
                  if (result)
                  {
                    v53 = result < 0;
                  }

                  if (!v53)
                  {
                    v44 += 3;
                    v41 += 3;
                    if (v41 != v42)
                    {
                      continue;
                    }
                  }

                  v33 = v72;
                  goto LABEL_88;
                }

                v33 = v66;
                v75 = v67;
              }
            }

LABEL_88:
            if (v77 != v20)
            {
              break;
            }

LABEL_58:
            v36 = v33[2];
            *v70 = *v33;
            v70[2] = v36;
            *v33 = 0;
            v33[1] = 0;
            v33[2] = 0;
            v35 = v75;
            if (v73 < v75)
            {
              goto LABEL_115;
            }
          }

          v54 = *v33;
          v55 = v33[1];
          v56 = v77;
          while (v54 != v55)
          {
            v57 = *(v56 + 23);
            v58 = *(v54 + 23);
            if (v58 >= 0)
            {
              v59 = *(v54 + 23);
            }

            else
            {
              v59 = v54[1];
            }

            if (v58 >= 0)
            {
              v60 = v54;
            }

            else
            {
              v60 = *v54;
            }

            if (v57 >= 0)
            {
              v61 = *(v56 + 23);
            }

            else
            {
              v61 = v56[1];
            }

            if (v57 >= 0)
            {
              v62 = v56;
            }

            else
            {
              v62 = *v56;
            }

            if (v61 >= v59)
            {
              v63 = v59;
            }

            else
            {
              v63 = v61;
            }

            result = memcmp(v60, v62, v63);
            v64 = v59 < v61;
            if (result)
            {
              v64 = result < 0;
            }

            if (v64)
            {
              break;
            }

            result = memcmp(v62, v60, v63);
            v65 = v61 < v59;
            if (result)
            {
              v65 = result < 0;
            }

            if (!v65)
            {
              v54 += 3;
              v56 += 3;
              if (v56 != v20)
              {
                continue;
              }
            }

            goto LABEL_58;
          }

          v33 = v70;
        }

LABEL_115:
        *v33 = v77;
        v33[1] = v20;
        v33[2] = v68;
      }

      else
      {
        v21 = *v71;
        v22 = v71[1];
        v23 = *a4;
        while (v21 != v22)
        {
          v24 = *(v23 + 23);
          v25 = *(v21 + 23);
          if (v25 >= 0)
          {
            v26 = *(v21 + 23);
          }

          else
          {
            v26 = v21[1];
          }

          if (v25 >= 0)
          {
            v27 = v21;
          }

          else
          {
            v27 = *v21;
          }

          if (v24 >= 0)
          {
            v28 = *(v23 + 23);
          }

          else
          {
            v28 = v23[1];
          }

          if (v24 >= 0)
          {
            v29 = v23;
          }

          else
          {
            v29 = *v23;
          }

          if (v28 >= v26)
          {
            v30 = v26;
          }

          else
          {
            v30 = v28;
          }

          result = memcmp(v27, v29, v30);
          v31 = v26 < v28;
          if (result)
          {
            v31 = result < 0;
          }

          if (v31)
          {
            break;
          }

          result = memcmp(v29, v27, v30);
          v32 = v28 < v26;
          if (result)
          {
            v32 = result < 0;
          }

          if (!v32)
          {
            v21 += 3;
            v23 += 3;
            if (v23 != v20)
            {
              continue;
            }
          }

          goto LABEL_56;
        }
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(a1, a3, a4);
    v11 = v10;
    v12 = *v10;
    if (v10 == (a2 - 24))
    {
      if (v12)
      {
        v16 = v10[1];
        v17 = *v10;
        if (v16 != v12)
        {
          do
          {
            v18 = *(v16 - 1);
            v16 -= 3;
            if (v18 < 0)
            {
              operator delete(*v16);
            }
          }

          while (v16 != v12);
          v17 = *v11;
        }

        v11[1] = v12;
        operator delete(v17);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
      }

      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
    }

    else
    {
      if (v12)
      {
        v13 = v10[1];
        v14 = *v10;
        if (v13 != v12)
        {
          do
          {
            v15 = *(v13 - 1);
            v13 -= 3;
            if (v15 < 0)
            {
              operator delete(*v13);
            }
          }

          while (v13 != v12);
          v14 = *v11;
        }

        v11[1] = v12;
        operator delete(v14);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
      }

      *v11 = *(a2 - 24);
      v11[2] = *(a2 - 8);
      *(a2 - 24) = v5;
      *(a2 - 16) = v6;
      *(a2 - 8) = v7;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(a1, (v11 + 3), a3, 0xAAAAAAAAAAAAAAABLL * ((v11 - a1 + 24) >> 3));
    }
  }
}

void sub_23CD27ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(void ***a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = (a3 - 2) / 2;
  v32 = v6;
  do
  {
    v8 = &a1[3 * v5];
    v9 = v8 + 3;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v11 < v3)
    {
      v37 = v11;
      v14 = v8[6];
      v13 = v8[7];
      v12 = v8 + 6;
      if (v14 != v13)
      {
        v34 = v9;
        v35 = v5;
        v16 = *(v12 - 3);
        v15 = *(v12 - 2);
        v36 = v12;
        while (v16 != v15)
        {
          v17 = *(v14 + 23);
          v18 = *(v16 + 23);
          if (v18 >= 0)
          {
            v19 = *(v16 + 23);
          }

          else
          {
            v19 = v16[1];
          }

          if (v18 >= 0)
          {
            v20 = v16;
          }

          else
          {
            v20 = *v16;
          }

          if (v17 >= 0)
          {
            v21 = *(v14 + 23);
          }

          else
          {
            v21 = v14[1];
          }

          if (v17 >= 0)
          {
            v22 = v14;
          }

          else
          {
            v22 = *v14;
          }

          if (v21 >= v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v20, v22, v23);
          v25 = v19 < v21;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (v25)
          {
            break;
          }

          v26 = memcmp(v22, v20, v23);
          v27 = v21 < v19;
          if (v26)
          {
            v27 = v26 < 0;
          }

          if (!v27)
          {
            v16 += 3;
            v14 += 3;
            if (v14 != v13)
            {
              continue;
            }
          }

          v6 = v32;
          v3 = a3;
          v9 = v34;
          v5 = v35;
          goto LABEL_33;
        }

        v9 = v36;
        v5 = v37;
        v6 = v32;
        v3 = a3;
      }
    }

LABEL_33:
    v28 = *a1;
    if (*a1)
    {
      v29 = a1[1];
      v7 = *a1;
      if (v29 != v28)
      {
        do
        {
          v30 = *(v29 - 1);
          v29 -= 3;
          if (v30 < 0)
          {
            operator delete(*v29);
          }
        }

        while (v29 != v28);
        v7 = *a1;
      }

      a1[1] = v28;
      operator delete(v7);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *v9;
    a1[2] = v9[2];
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    a1 = v9;
  }

  while (v5 <= v6);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<std::string> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = result;
  v36 = a4 - 2;
  if (a4 >= 2)
  {
    v33 = (a2 - 24);
    v4 = *(a2 - 16);
    v35 = *(a2 - 24);
    if (v35 != v4)
    {
      v34 = v36 >> 1;
      v5 = (result + 24 * (v36 >> 1));
      v7 = *v5;
      v6 = v5[1];
      v8 = *(a2 - 24);
      while (v7 != v6)
      {
        v9 = *(v8 + 23);
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = *(v7 + 23);
        }

        else
        {
          v11 = v7[1];
        }

        if (v10 >= 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *v7;
        }

        if (v9 >= 0)
        {
          v13 = *(v8 + 23);
        }

        else
        {
          v13 = v8[1];
        }

        if (v9 >= 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *v8;
        }

        if (v13 >= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v13;
        }

        result = memcmp(v12, v14, v15);
        v16 = v11 < v13;
        if (result)
        {
          v16 = result < 0;
        }

        if (v16)
        {
          break;
        }

        result = memcmp(v14, v12, v15);
        v17 = v13 < v11;
        if (result)
        {
          v17 = result < 0;
        }

        if (!v17)
        {
          v7 += 3;
          v8 += 3;
          if (v8 != v4)
          {
            continue;
          }
        }

        return result;
      }

      v32 = *(a2 - 8);
      *v33 = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v18 = v5[2];
      *(a2 - 24) = *v5;
      *(a2 - 8) = v18;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
      if (v36 >= 2)
      {
        while (2)
        {
          v40 = v5;
          v19 = v35;
          v37 = v34 - 1;
          v34 = (v34 - 1) >> 1;
          v5 = (v38 + 24 * v34);
          v20 = *v5;
          v21 = v5[1];
          while (v20 != v21)
          {
            v22 = *(v19 + 23);
            v23 = *(v20 + 23);
            if (v23 >= 0)
            {
              v24 = *(v20 + 23);
            }

            else
            {
              v24 = v20[1];
            }

            if (v23 >= 0)
            {
              v25 = v20;
            }

            else
            {
              v25 = *v20;
            }

            if (v22 >= 0)
            {
              v26 = *(v19 + 23);
            }

            else
            {
              v26 = v19[1];
            }

            if (v22 >= 0)
            {
              v27 = v19;
            }

            else
            {
              v27 = *v19;
            }

            if (v26 >= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v26;
            }

            result = memcmp(v25, v27, v28);
            v29 = v24 < v26;
            if (result)
            {
              v29 = result < 0;
            }

            if (v29)
            {
              break;
            }

            result = memcmp(v27, v25, v28);
            v30 = v26 < v24;
            if (result)
            {
              v30 = result < 0;
            }

            if (!v30)
            {
              v20 += 3;
              v19 += 3;
              if (v19 != v4)
              {
                continue;
              }
            }

            v5 = v40;
            goto LABEL_57;
          }

          v31 = v5[2];
          *v40 = *v5;
          v40[2] = v31;
          *v5 = 0;
          v5[1] = 0;
          v5[2] = 0;
          if (v37 >= 2)
          {
            continue;
          }

          break;
        }
      }

LABEL_57:
      *v5 = v35;
      v5[1] = v4;
      v5[2] = v32;
    }
  }

  return result;
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>(int32x2_t *a1, __int32 *a2, uint64_t ***a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4 == 3)
  {
    v7 = a1 + 1;
    v8 = a1->i32[1];
    v9 = *a3;
    v10 = **a3;
    v11 = *(v10 + 10);
    if (*(v10 + 10))
    {
      goto LABEL_7;
    }

    while (!*(v10 + 11))
    {
      v10 = v10[v11 + 32];
      v11 = *(v10 + 10);
      if (*(v10 + 10))
      {
LABEL_7:
        v12 = 0;
        do
        {
          v13 = (v11 + v12) >> 1;
          if (*(v10 + v13 + 3) < v8)
          {
            v12 = v13 + 1;
          }

          else
          {
            v11 = (v11 + v12) >> 1;
          }
        }

        while (v12 != v11);
      }
    }

    while (v11 == *(v10 + 10))
    {
      LODWORD(v11) = *(v10 + 8);
      v10 = *v10;
      if (*(v10 + 11))
      {
        goto LABEL_17;
      }
    }

    if (*(v10 + v11 + 3) > v8)
    {
LABEL_17:
      *(v9[1] + 10);
      goto LABEL_79;
    }

    v43 = v9[1];
    if (v10 != v43 || v11 != *(v43 + 10))
    {
      v6 = a1->i32[0];
      a1->i32[0] = v8;
      a1->i32[1] = v6;
      a1->i32[1] = *a2;
      goto LABEL_18;
    }

LABEL_79:
    a1->i32[1] = *a2;
    *a2 = v8;
    *a1 = vrev64_s32(*a1);
    return v7;
  }

  if (a4 != 2)
  {
    if (a6 < a4)
    {
      v15 = a4 / 2;
      v16 = a1 + a4 / 2;
      v17 = *a3;
      v18 = a4 / 2;
      v19 = (v16 - 1);
      v20 = *(v16 - 1);
      v21 = **a3;
      v22 = *(v21 + 10);
      if (*(v21 + 10))
      {
        goto LABEL_25;
      }

      while (1)
      {
        while (!*(v21 + 11))
        {
          v21 = v21[v22 + 32];
          v22 = *(v21 + 10);
          if (*(v21 + 10))
          {
LABEL_25:
            v24 = 0;
            do
            {
              v25 = (v22 + v24) >> 1;
              if (*(v21 + v25 + 3) < v20)
              {
                v24 = v25 + 1;
              }

              else
              {
                v22 = (v22 + v24) >> 1;
              }
            }

            while (v24 != v22);
          }
        }

        while (v22 == *(v21 + 10))
        {
          LODWORD(v22) = *(v21 + 8);
          v21 = *v21;
          if (*(v21 + 11))
          {
            v26 = v17[1];
LABEL_35:
            *(v26 + 10);
            goto LABEL_41;
          }
        }

        v26 = v17[1];
        if (*(v21 + v22 + 3) > v20)
        {
          goto LABEL_35;
        }

        if (v21 != v26 || v22 != *(v26 + 10))
        {
          v45 = a2;
          v47 = a4;
          a1 = (std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>)();
          a4 = v47;
          a2 = v45;
          v17 = *a3;
          break;
        }

LABEL_41:
        if (v19 == a1)
        {
          break;
        }

        --v18;
        v23 = v19[-1].i32[1];
        v19 = (v19 - 4);
        v20 = v23;
        v21 = *v17;
        v22 = *(*v17 + 10);
        if (*(*v17 + 10))
        {
          goto LABEL_25;
        }
      }

      v48 = a2 + 1;
      v49 = a4 - v15;
      v50 = v16;
      v51 = *v16;
      v52 = *v17;
      v53 = *(*v17 + 10);
      if (*(*v17 + 10))
      {
        goto LABEL_86;
      }

      while (1)
      {
        while (!*(v52 + 11))
        {
          v52 = v52[v53 + 32];
          v53 = *(v52 + 10);
          if (*(v52 + 10))
          {
LABEL_86:
            v54 = 0;
            do
            {
              v55 = (v53 + v54) >> 1;
              if (*(v52 + v55 + 3) < v51)
              {
                v54 = v55 + 1;
              }

              else
              {
                v53 = (v53 + v54) >> 1;
              }
            }

            while (v54 != v53);
          }
        }

        while (v53 == *(v52 + 10))
        {
          LODWORD(v53) = *(v52 + 8);
          v52 = *v52;
          if (*(v52 + 11))
          {
            v56 = v17[1];
LABEL_96:
            *(v56 + 10);
            goto LABEL_103;
          }
        }

        v56 = v17[1];
        if (*(v52 + v53 + 3) > v51)
        {
          goto LABEL_96;
        }

        if (v52 == v56 && v53 == *(v56 + 10))
        {
          break;
        }

        if (++v50 == a2)
        {
          return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(a1, v16, v48);
        }

        --v49;
        v51 = *v50;
        v52 = *v17;
        v53 = *(*v17 + 10);
        if (*(*v17 + 10))
        {
          goto LABEL_86;
        }
      }

LABEL_103:
      v58 = a1;
      v48 = std::__stable_partition_impl<std::_ClassicAlgPolicy,operations_research::sat::MoveOneUnprocessedLiteralLast(absl::lts_20240722::btree_set<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>> const&,int,std::vector<operations_research::sat::Literal> *)::$_0 &,std::__wrap_iter<operations_research::sat::Literal*>,long,std::pair<operations_research::sat::Literal*,long>>(v50);
      a1 = v58;
      return std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(a1, v16, v48);
    }

    v28 = a1 + 1;
    *a5 = a1->i32[0];
    v29 = (a5 + 4);
    if (&a1->u8[4] != a2)
    {
      v30 = *a3;
      v31 = *v28;
      v32 = **a3;
      v33 = *(v32 + 10);
      if (*(v32 + 10))
      {
        goto LABEL_50;
      }

LABEL_55:
      while (!*(v32 + 11))
      {
        v32 = v32[v33 + 32];
        v33 = *(v32 + 10);
        if (*(v32 + 10))
        {
LABEL_50:
          v34 = 0;
          do
          {
            v35 = (v33 + v34) >> 1;
            if (*(v32 + v35 + 3) < v31)
            {
              v34 = v35 + 1;
            }

            else
            {
              v33 = (v33 + v34) >> 1;
            }
          }

          while (v34 != v33);
        }
      }

      while (v33 == *(v32 + 10))
      {
        LODWORD(v33) = *(v32 + 8);
        v32 = *v32;
        if (*(v32 + 11))
        {
          v36 = v30[1];
LABEL_60:
          *(v36 + 10);
LABEL_46:
          *v29++ = v31;
          if (++v28 == a2)
          {
            goto LABEL_66;
          }

LABEL_47:
          v31 = *v28;
          v32 = *v30;
          v33 = *(*v30 + 10);
          if (*(*v30 + 10))
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      v36 = v30[1];
      if (*(v32 + v33 + 3) > v31)
      {
        goto LABEL_60;
      }

      if (v32 == v36 && v33 == *(v36 + 10))
      {
        goto LABEL_46;
      }

      a1->i32[0] = v31;
      a1 = (a1 + 4);
      if (++v28 != a2)
      {
        goto LABEL_47;
      }
    }

LABEL_66:
    a1->i32[0] = *v28;
    v7 = a1 + 1;
    if (v29 > a5)
    {
      v38 = (a5 + 4);
      if (v29 > a5 + 4)
      {
        v38 = v29;
      }

      v39 = v38 + ~a5;
      if (v39 >= 0x1C && a1 - a5 + 4 >= 0x20)
      {
        v59 = (v39 >> 2) + 1;
        v60 = v59 & 0x7FFFFFFFFFFFFFF8;
        v40 = (a5 + v60 * 4);
        v41 = &v7[v60];
        v61 = (&a1[2] + 4);
        v62 = (a5 + 16);
        v63 = v59 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v64 = *v62;
          *(v61 - 1) = *(v62 - 1);
          *v61 = v64;
          v61 += 2;
          v62 += 2;
          v63 -= 8;
        }

        while (v63);
        result = a1 + 4;
        if (v59 == (v59 & 0x7FFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      else
      {
        v40 = a5;
        result = a1 + 4;
        v41 = v7;
      }

      do
      {
        v42 = *v40++;
        *v41++ = v42;
      }

      while (v40 < v29);
      return result;
    }

    return v7;
  }

  v6 = a1->i32[0];
  a1->i32[0] = *a2;
LABEL_18:
  *a2 = v6;
  return a2;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Literal *>,std::__wrap_iter<operations_research::sat::Literal *>>(char *__src, uint64_t a2, _DWORD *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 4 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 4, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 4) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 4;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 4, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 2;
    v16 = v6 >> 2;
    if (v5 >> 2 == v6 >> 2)
    {
      v17 = __src + 4;
      v18 = (a2 + 4);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 4;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 2;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[4 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 4;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 2;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[4 * v32];
          if (v31)
          {
            v26 = &v28[4 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_map<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::try_emplace_impl<std::vector<long long> const&>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a3, a4);
  v15 = 0;
  v16 = *a2;
  v17 = *(a2 + 8) - *a2;
  v18 = (((v14 + (v17 >> 3)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + (v17 >> 3)));
  v19 = a1[2];
  v20 = *a1;
  v21 = vdup_n_s8(v18 & 0x7F);
  v22 = ((v18 >> 7) ^ (v19 >> 12)) & *a1;
  v23 = *(v19 + v22);
  v24 = vceq_s8(v23, v21);
  if (v24)
  {
LABEL_2:
    v25 = a1[3];
    v35 = v15;
    v36 = a5;
    v33 = v25;
    v34 = v20;
    while (1)
    {
      v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v20;
      v27 = v25 + 48 * v26;
      if (*(v27 + 8) - *v27 == v17)
      {
        result = memcmp(*v27, v16, v17);
        if (!result)
        {
          break;
        }
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v15 = v35;
      a5 = v36;
      v25 = v33;
      v20 = v34;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    *v36 = v19 + v26;
    *(v36 + 8) = v27;
    *(v36 + 16) = 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v29 = vceq_s8(v23, 0x8080808080808080);
      if (v29)
      {
        break;
      }

      v15 += 8;
      v22 = (v15 + v22) & v20;
      v23 = *(v19 + v22);
      v24 = vceq_s8(v23, v21);
      if (v24)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v18, (v22 + (__clz(__rbit64(v29)) >> 3)) & v20, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::GetPolicyFunctions(void)::value);
    v30 = a1[2] + result;
    v31 = (a1[3] + 48 * result);
    *a5 = v30;
    *(a5 + 8) = v31;
    *(a5 + 16) = 1;
    v31[1] = 0;
    v31[2] = 0;
    *v31 = 0;
    v32 = *(a2 + 8) - *a2;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
  }

  return result;
}

void sub_23CD28880(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,48ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::vector<long long> const,std::vector<int>> *)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a4, a5) + ((*(a2 + 8) - *a2) >> 3);
  v8 = ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
  v9 = *(a1 + 8);
  v10 = v9[2];
  v11 = *v9;
  v12 = ((v8 >> 7) ^ (v10 >> 12)) & *v9;
  if (*(v10 + v12) >= -1)
  {
    v13 = 0;
    for (i = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080; !i; i = *(v10 + v12) & ~(*(v10 + v12) << 7) & 0x8080808080808080)
    {
      v13 += 8;
      v12 = (v13 + v12) & v11;
    }

    v12 = (v12 + (__clz(__rbit64(i)) >> 3)) & v11;
  }

  else
  {
    v13 = 0;
  }

  v15 = v8 & 0x7F;
  *(v10 + v12) = v15;
  *(v10 + ((v12 - 7) & v11) + (v11 & 7)) = v15;
  v16 = (**(a1 + 16) + 48 * v12);
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = *a2;
  v16[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = 0;
  *(v16 + 3) = *(a2 + 24);
  v16[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v17 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v17;
    operator delete(v17);
  }

  return v13;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v3 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v3;
    operator delete(v3);
  }
}

char *std::vector<operations_research::sat::BasicKnapsackSolver::State>::__assign_with_size[abi:ne200100]<operations_research::sat::BasicKnapsackSolver::State*,operations_research::sat::BasicKnapsackSolver::State*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void operations_research::sat::VarDomination::Reset(operations_research::sat::VarDomination *this, int a2)
{
  *this = 0;
  *(this + 30) = 2 * a2;
  operator new();
}

void operations_research::sat::VarDomination::CanOnlyDominateEachOther(uint64_t a1, int *a2, uint64_t a3)
{
  if (!*a1)
  {
    v21 = v3;
    v22 = v4;
    v8 = a1 + 32;
    v7 = *(a1 + 32);
    *(a1 + 40) = v7;
    if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 4 * a3;
      do
      {
        v10 = *a2++;
        v11 = 2 * v10;
        v12 = 2 * ~v10;
        if (v10 < 0)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = v11;
        }

        v20 = v13;
        std::vector<int>::push_back[abi:ne200100](v8, &v20);
        v9 -= 4;
      }

      while (v9);
      v7 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v7 != v14)
      {
        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v7, v14 - v7);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        if (v15 != v16)
        {
          v17 = *(a1 + 64);
          v18 = *(a1 + 32);
          do
          {
            v19 = *v18;
            *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~((1 << (v19 ^ 1u)) | (1 << v19));
            *v18++ = v19 ^ 1;
          }

          while (v18 != v16);
        }

        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v15, v16 - v15);
        v7 = *(a1 + 32);
      }
    }

    *(a1 + 40) = v7;
  }
}

void operations_research::sat::VarDomination::ActivityShouldNotChange(uint64_t a1, int *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (!*a1)
  {
    v27 = v6;
    v28 = v7;
    operations_research::sat::VarDomination::FillTempRanks(a1, 0, 0, 0, a2, a3, a4, a5, a6);
    v9 = *(a1 + 32);
    *(a1 + 40) = v9;
    v10 = *(a1 + 8);
    if (*(a1 + 16) != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (v12 >= 1 && *(v10 + 16 * v11 + 8) != *(v10 + 16 * v12 - 8))
        {
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          if (v13 != v14)
          {
            operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v13, v14 - v13);
            v15 = *(a1 + 32);
            v16 = *(a1 + 40);
            if (v15 != v16)
            {
              v17 = *(a1 + 64);
              v18 = *(a1 + 32);
              do
              {
                v19 = *v18;
                *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~((1 << (v19 ^ 1u)) | (1 << v19));
                *v18++ = v19 ^ 1;
              }

              while (v18 != v16);
            }

            operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v15, v16 - v15);
            v13 = *(a1 + 32);
            v10 = *(a1 + 8);
          }

          *(a1 + 40) = v13;
        }

        v26 = *(v10 + 16 * v11);
        std::vector<int>::push_back[abi:ne200100](a1 + 32, &v26);
        v11 = ++v12;
        v10 = *(a1 + 8);
      }

      while (v12 < ((*(a1 + 16) - v10) >> 4));
      v9 = *(a1 + 32);
      v20 = *(a1 + 40);
      if (v9 != v20)
      {
        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v9, v20 - v9);
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        if (v21 != v22)
        {
          v23 = *(a1 + 64);
          v24 = *(a1 + 32);
          do
          {
            v25 = *v24;
            *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~((1 << (v25 ^ 1u)) | (1 << v25));
            *v24++ = v25 ^ 1;
          }

          while (v24 != v22);
        }

        operations_research::SimpleDynamicPartition::Refine(*(a1 + 56), v21, v22 - v21);
        v9 = *(a1 + 32);
      }
    }

    *(a1 + 40) = v9;
  }
}

void operations_research::sat::VarDomination::FillTempRanks(uint64_t a1, int a2, int *a3, uint64_t a4, int *a5, unint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v16 = a1 + 8;
  v15 = *(a1 + 8);
  *(a1 + 16) = v15;
  if (a8)
  {
    if (a6)
    {
      v18 = 0;
      v19 = a2 << 31 >> 31;
      v20 = 1;
      do
      {
        v21 = *(a7 + 8 * v18);
        if (v21)
        {
          v22 = a5[v18];
          v23 = v22 ^ v19;
          v24 = 2 * (v22 ^ v19);
          v25 = 2 * (v22 ^ ~v19);
          if (v23 < 0)
          {
            v26 = v25 + 1;
          }

          else
          {
            v26 = v24;
          }

          if (v21 < 1)
          {
            *&v49 = v26 ^ 1;
            v21 = -v21;
          }

          else
          {
            *&v49 = v26;
          }

          *(&v49 + 1) = v21;
          std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v16, &v49);
        }

        v18 = v20++;
      }

      while (a6 > v18);
      v27 = *(a1 + 8);
      v15 = *(a1 + 16);
    }

    else
    {
      v27 = v15;
    }

    v34 = 126 - 2 * __clz(v15 - v27);
    if (v15 == v27)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::VarDomination::IntegerVariableWithRank *,false>(v27, v15, &v49, v35, 1, a9);
    v36 = *(a1 + 8);
    v37 = *(a1 + 16) - v36;
    if ((v37 >> 4) >= 1)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = (v37 >> 4) & 0x7FFFFFFF;
      v42 = (v36 + 8);
      do
      {
        if (*v42 != v40)
        {
          v40 = *v42;
          v39 = v38;
        }

        *v42 = v39;
        v42 += 2;
        ++v38;
      }

      while (v41 != v38);
    }
  }

  else if ((a6 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = a2 << 31 >> 31;
    v29 = 4 * a6;
    do
    {
      v30 = *a5++;
      v31 = 2 * (v30 ^ v28);
      v32 = 2 * (v30 ^ ~v28);
      if ((v30 ^ v28) < 0)
      {
        v33 = v32 + 1;
      }

      else
      {
        v33 = v31;
      }

      v49 = v33;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v16, &v49);
      v29 -= 4;
    }

    while (v29);
  }

  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v43 = ((*(a1 + 16) - *(a1 + 8)) >> 4);
    v44 = 4 * a4;
    do
    {
      v45 = *a3++;
      v46 = 2 * ~v45;
      v47 = 2 * v45;
      if (v45 >= 0)
      {
        v48 = v47 + 1;
      }

      else
      {
        v48 = v46;
      }

      *&v49 = v48;
      *(&v49 + 1) = v43;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v16, &v49);
      v44 -= 4;
    }

    while (v44);
  }
}

void operations_research::sat::VarDomination::ProcessTempRanks(operations_research::sat::VarDomination *this, __n128 a2)
{
  if (*this == 1)
  {

    operations_research::sat::VarDomination::FilterUsingTempRanks(this);
  }

  else if (*this)
  {

    operations_research::sat::VarDomination::CheckUsingTempRanks(this);
  }

  else
  {
    ++*(this + 11);
    v3 = *(this + 1);
    v4 = *(this + 2);
    if (v3 != v4)
    {
      v5 = *(this + 12);
      v6 = *(this + 8);
      v7 = **(this + 7);
      v8 = *(this + 1);
      do
      {
        v9 = *v8;
        *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
        *(v5 + 8 * v9) |= 1 << *(this + 11);
        *(v8++ + 1) = *(v7 + 4 * v9);
      }

      while (v8 != v4);
    }

    if ((v4 - v3) >> 4 < 129)
    {
      v15 = 0;
      v11 = 0;
    }

    else
    {
      v10 = MEMORY[0x277D826F0];
      v11 = (v4 - v3) >> 4;
      while (1)
      {
        v12 = operator new(16 * v11, v10);
        if (v12)
        {
          break;
        }

        v13 = v11 >> 1;
        v14 = v11 > 1;
        v11 >>= 1;
        if (!v14)
        {
          v15 = 0;
          v11 = v13;
          goto LABEL_19;
        }
      }

      v15 = v12;
    }

LABEL_19:
    std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::VarDomination::ProcessTempRanks(void)::$_0 &,std::__wrap_iter<operations_research::sat::VarDomination::IntegerVariableWithRank *>>(v3, v4, (v4 - v3) >> 4, v15, v11, a2);
    if (v15)
    {
      operator delete(v15);
    }

    v16 = *(this + 1);
    v17 = *(this + 2);
    v18 = (v17 - v16) >> 4;
    if (v18 < 2)
    {
      v24 = 0;
      v25 = v18;
      if (!v18)
      {
        return;
      }

      goto LABEL_29;
    }

    v19 = 0;
    v20 = 1;
    v21 = 1;
    do
    {
      v23 = v16 + 16 * v19;
      if (*(v16 + 16 * v20 + 4) != *(v23 + 4))
      {
        operations_research::sat::VarDomination::Initialize(this, v23, v21 - v19);
        v16 = *(this + 1);
        v17 = *(this + 2);
        v19 = v21;
      }

      v20 = ++v21;
      v22 = (v17 - v16) >> 4;
    }

    while (v22 > v21);
    v24 = v19;
    v25 = v22 - v19;
    if (v22 > v19)
    {
LABEL_29:

      operations_research::sat::VarDomination::Initialize(this, v16 + 16 * v24, v25);
    }
  }
}

void sub_23CD29610(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::VarDomination::Initialize(void *a1, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = a3 & 0x7FFFFFFF;
    v7 = (a2 + 8);
    do
    {
      if (*v7 != v5)
      {
        v5 = *v7;
        v4 = v3;
      }

      *v7 = v4;
      v7 += 2;
      ++v3;
    }

    while (v6 != v3);
    v8 = (a1 + 19);
    v9 = (a1[20] - a1[19]) >> 2;
    v10 = a1[22];
    v11 = a1[25];
    v12 = (a2 + 8);
    v13 = -1;
    do
    {
      v15 = *(v12 - 2);
      v16 = *v12;
      v17 = a3 - *v12;
      v18 = v15 >> 6;
      v19 = 1 << v15;
      v20 = *(v10 + 8 * (v15 >> 6));
      v21 = 8 * v15;
      if ((v19 & v20) == 0 || *(v11 + 4 + v21) > v17)
      {
        *(v10 + 8 * v18) = v20 | v19;
        if (v13 == -1)
        {
          v13 = v16;
        }

        v14 = (v11 + v21);
        *v14 = v16 + v9 - v13;
        v14[1] = v17;
      }

      v12 += 2;
      --v6;
    }

    while (v6);
    if (v13 != -1)
    {
      v22 = a3 - v13;
      if (a3 > v13)
      {
        v23 = (a2 + 16 * v13);
        do
        {
          std::vector<int>::push_back[abi:ne200100](v8, v23);
          v23 += 4;
          --v22;
        }

        while (v22);
      }
    }
  }
}

void operations_research::sat::VarDomination::FilterUsingTempRanks(operations_research::sat::VarDomination *this)
{
  v2 = *(this + 30);
  __x = -1;
  v3 = *(this + 16);
  v4 = (this + 128);
  v5 = (*(this + 17) - v3) >> 2;
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      *(this + 17) = v3 + 4 * v2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 128), v2 - v5, &__x);
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 != v7)
  {
    v8 = *v4;
    v9 = *(this + 1);
    do
    {
      v10 = *(v9 + 8);
      v11 = *v9;
      v9 += 16;
      *(v8 + 4 * v11) = v10;
    }

    while (v9 != v7);
    v12 = *(this + 34);
    v13 = v6;
    do
    {
      v14 = (v12 + 8 * *v13);
      v15 = v14[1];
      if (v15)
      {
        v16 = 0;
        v17 = *(v13 + 1);
        v18 = *(this + 28);
        v19 = (v18 + 4 * *v14);
        v20 = *(this + 16);
        v21 = 4 * v15;
        do
        {
          if (v17 <= *(v20 + 4 * *v19))
          {
            v22 = *v14 + v16++;
            *(v18 + 4 * v22) = *v19;
          }

          ++v19;
          v21 -= 4;
        }

        while (v21);
        v14[1] = v16;
      }

      v13 += 4;
    }

    while (v13 != v7);
    v23 = *v4;
    do
    {
      v24 = *v6;
      v6 += 4;
      *(v23 + 4 * v24) = -1;
    }

    while (v6 != v7);
  }
}

void operations_research::sat::VarDomination::CheckUsingTempRanks(operations_research::sat::VarDomination *this)
{
  v2 = *(this + 30);
  v33[0] = -1;
  v3 = *(this + 16);
  v4 = (this + 128);
  v5 = (*(this + 17) - v3) >> 2;
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      *(this + 17) = v3 + 4 * v2;
    }
  }

  else
  {
    std::vector<int>::__append((this + 128), v2 - v5, v33);
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 != v7)
  {
    v8 = *v4;
    v9 = *(this + 1);
    do
    {
      v10 = *(v9 + 1);
      v11 = *v9;
      v9 += 4;
      *(v8 + 4 * v11) = v10;
    }

    while (v9 != v7);
  }

  v12 = *(this + 30);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(this + 16);
    while (1)
    {
      v15 = (*(this + 34) + 8 * v13);
      v16 = v15[1];
      if (v16)
      {
        v17 = (*(this + 28) + 4 * *v15);
        v18 = *(this + 8);
        v19 = *v17;
        v20 = v19;
        v21 = v19 ^ 1;
        if ((*(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v19 ^ 1u)))
        {
          goto LABEL_26;
        }

        v22 = 4 * v13;
        v23 = *(v14 + v22);
        v24 = *(v14 + 4 * v20);
        if (v23 > v24)
        {
LABEL_27:
          operations_research::sat::VarDomination::CheckUsingTempRanks(v23, v24);
        }

        v25 = *(v14 + (v22 ^ 4));
        v26 = *(v14 + 4 * v21);
        if (v26 > v25)
        {
LABEL_28:
          operations_research::sat::VarDomination::CheckUsingTempRanks(v26, v25);
        }

        if (v16 != 1)
        {
          break;
        }
      }

LABEL_10:
      if (++v13 == v12)
      {
        goto LABEL_22;
      }
    }

    v27 = 4 * v16;
    v28 = v17 + 1;
    v29 = v27 - 4;
    while (1)
    {
      v30 = *v28;
      if ((*(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v30 ^ 1u)))
      {
        break;
      }

      v24 = *(v14 + 4 * v30);
      if (v23 > v24)
      {
        goto LABEL_27;
      }

      v26 = *(v14 + 4 * (v30 ^ 1));
      if (v26 > v25)
      {
        goto LABEL_28;
      }

      ++v28;
      v29 -= 4;
      if (!v29)
      {
        goto LABEL_10;
      }
    }

LABEL_26:
    operations_research::sat::VarDomination::CheckUsingTempRanks(v33);
  }

LABEL_22:
  if (v6 != v7)
  {
    v31 = *v4;
    do
    {
      v32 = *v6;
      v6 += 4;
      *(v31 + 4 * v32) = -1;
    }

    while (v6 != v7);
  }
}

BOOL operations_research::sat::VarDomination::EndFirstPhase(operations_research::sat::VarDomination *this)
{
  v2 = *this;
  if (v2)
  {
    operations_research::sat::VarDomination::EndFirstPhase(v2);
  }

  *this = 1;
  v3 = *(this + 30);
  v107 = 0;
  v108 = 0;
  v106 = 0;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(&v105, 0, sizeof(v105));
  operations_research::SimpleDynamicPartition::GetParts<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(&v105, *(this + 7), v104);
  v4 = *(this + 30);
  if (v4 > 0)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v11 = v5 >> 6;
      v12 = 1 << v5;
      if ((*(*(this + 8) + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

LABEL_12:
      if (++v5 >= v4)
      {
        v6 = v6;
        if (v4)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }
    }

    v13 = *(this + 12);
    v14 = 8 * v5;
    v15 = *(v13 + v14);
    v16 = *(v13 + (v14 ^ 8));
    v92 = *(this + 29);
    v91 = *(this + 28);
    if ((*(*(this + 22) + 8 * v11) & v12) != 0)
    {
      v17 = (*(this + 25) + v14);
      v18 = v17[1];
      if (!v18)
      {
        v93 = v7;
        v20 = 0;
LABEL_8:
        if ((v106[v11] & v12) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = v20;
        }

        LODWORD(v6) = v9 + v6;
        v7 = v93;
        v10 = (*(this + 34) + 8 * v5);
        *v10 = (v92 - v91) >> 2;
        v10[1] = v20;
        v4 = *(this + 30);
        goto LABEL_12;
      }

      v19 = (*(this + 19) + 4 * *v17);
      if (v18 <= 0x3E8)
      {
LABEL_17:
        v93 = v7;
        v20 = 0;
        if (v18)
        {
          v94 = ~v16;
          v21 = 4 * v18;
          do
          {
            LODWORD(v102.__r_.__value_.__l.__data_) = *v19;
            v27 = *(this + 12);
            if ((v15 & ~*(v27 + 8 * SLODWORD(v102.__r_.__value_.__l.__data_))) == 0)
            {
              v28 = *(v27 + ((LODWORD(v102.__r_.__value_.__l.__data_) ^ 1) << 32 >> 29)) & v94;
              if ((LODWORD(v102.__r_.__value_.__l.__data_) ^ v5) >= 2 && v28 == 0 && ((*(*(this + 8) + ((SLODWORD(v102.__r_.__value_.__l.__data_) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v102.__r_.__value_.__s.__data_[0] ^ 1u)) & 1) == 0)
              {
                std::vector<int>::push_back[abi:ne200100](this + 224, &v102);
                if (++v20 >= 50)
                {
                  v106[v11] |= v12;
                  if (v93 < v8)
                  {
                    *v93 = v5;
                    v93 += 4;
                  }

                  else
                  {
                    v30 = v93;
                    v31 = v93 >> 2;
                    v32 = (v93 >> 2) + 1;
                    if (v32 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    if (v8 >> 1 > v32)
                    {
                      v32 = v8 >> 1;
                    }

                    if (v32)
                    {
                      if (!(v32 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    *(4 * v31) = v5;
                    v93 = 4 * v31 + 4;
                    memcpy(0, 0, v30);
                    v8 = 0;
                  }
                }
              }
            }

            ++v19;
            v21 -= 4;
          }

          while (v21);
        }

        goto LABEL_8;
      }
    }

    else
    {
      v22 = v104[0] + 16 * *(**(this + 7) + 4 * v5);
      v19 = *v22;
      v18 = *(v22 + 1);
      if (v18 <= 0x3E8)
      {
        goto LABEL_17;
      }
    }

    v90 = v6;
    v106[v11] |= v12;
    if (v7 >= v8)
    {
      v24 = v7;
      v25 = v7 >> 2;
      v26 = (v7 >> 2) + 1;
      if (v26 >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v8 >> 1 > v26)
      {
        v26 = v8 >> 1;
      }

      v95 = v16;
      if (v26)
      {
        if (!(v26 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v89 = 0;
      *(4 * v25) = v5;
      v23 = 4 * v25 + 4;
      memcpy(0, 0, v24);
      v16 = v95;
    }

    else
    {
      v89 = v8;
      *v7 = v5;
      v23 = v7 + 4;
    }

    v33 = 0;
    v20 = 0;
    v34 = ~v16;
    v93 = v23;
    do
    {
      LODWORD(v102.__r_.__value_.__l.__data_) = v19[v33];
      v35 = *(this + 12);
      if ((v15 & ~*(v35 + 8 * SLODWORD(v102.__r_.__value_.__l.__data_))) == 0)
      {
        v36 = *(v35 + ((LODWORD(v102.__r_.__value_.__l.__data_) ^ 1) << 32 >> 29)) & v34;
        if ((LODWORD(v102.__r_.__value_.__l.__data_) ^ v5) >= 2 && v36 == 0 && ((*(*(this + 8) + ((SLODWORD(v102.__r_.__value_.__l.__data_) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v102.__r_.__value_.__s.__data_[0] ^ 1u)) & 1) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](this + 224, &v102);
          if (++v20 >= 50)
          {
            break;
          }
        }
      }

      ++v33;
    }

    while (v33 != 200);
    v8 = v89;
    LODWORD(v6) = v90;
    goto LABEL_8;
  }

  v7 = 0;
  v6 = 0;
  if (v4)
  {
LABEL_60:
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

LABEL_63:
  v38 = *(this + 31);
  v39 = (*(this + 29) - *(this + 28)) >> 2;
  v40 = (*(this + 32) - v38) >> 2;
  if (v39 <= v40)
  {
    if (v39 < v40)
    {
      *(this + 32) = v38 + 4 * v39;
    }
  }

  else
  {
    std::vector<int>::__append((this + 248), v39 - v40);
    v4 = *(this + 30);
  }

  if (v4 >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = *(this + 34);
    do
    {
      v45 = (v43 + 8 * v41);
      LODWORD(v46) = v45[1];
      if (v46 >= 1)
      {
        v47 = 0;
        v48 = *(this + 28);
        v49 = *(this + 31);
        v50 = v42;
        do
        {
          *(v49 + 4 * v50) = *(v48 + 4 * (v47++ + *v45));
          v46 = v45[1];
          ++v50;
        }

        while (v47 < v46);
        v4 = *(this + 30);
      }

      *v45 = v42;
      v44 = (4 * v41);
      v42 += v46 + *v44;
      *v44 = v46;
      ++v41;
    }

    while (v41 < v4);
  }

  v51 = *(this + 14);
  *(this + 14) = *(this + 248);
  *(this + 248) = v51;
  *(this + 30) = *(this + 33);
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  if (v51)
  {
    operator delete(v51);
    v4 = *(this + 30);
  }

  if (v4 >= 1)
  {
    v52 = 0;
    v53 = *(this + 34);
    v54 = v106;
    do
    {
      v55 = *(4 * v52);
      if (v55 >= 1)
      {
        v56 = *(v53 + 8 * v52);
        v57 = *(this + 28);
        do
        {
          v58 = *(v57 + 4 * v56);
          if ((*(v54 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v58 ^ 1u)))
          {
            v59 = (v53 + 8 * (v58 ^ 1));
            v60 = *v59;
            v61 = v59[1];
            v59[1] = v61 + 1;
            *(v57 + 4 * (v61 + v60)) = v52 ^ 1;
          }

          ++v56;
          --v55;
        }

        while (v55);
        v4 = *(this + 30);
      }

      ++v52;
    }

    while (v52 < v4);
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v64 = (*(this + 34) + 8 * *i);
      v65 = v64[1];
      if (v65)
      {
        v66 = *(this + 28) + 4 * *v64;
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v66, (v66 + 4 * v65), &v102, 126 - 2 * __clz(v65), 1);
        v67 = v64[1];
        v63 = v66 + 4 * v67;
        if (v67)
        {
          v68 = (v66 + 4);
          v69 = 4 * v67 - 4;
          while (v69)
          {
            v70 = *(v68 - 1);
            v71 = *v68++;
            v69 -= 4;
            if (v70 == v71)
            {
              v72 = v68 - 2;
              if (v69)
              {
                for (j = 0; j != v69; j += 4)
                {
                  v74 = v70;
                  v70 = v68[j / 4];
                  if (v74 != v70)
                  {
                    v72[1] = v70;
                    ++v72;
                  }
                }
              }

              v63 = (v72 + 1);
              break;
            }
          }
        }

        v64[1] = (v63 - v66) >> 2;
      }
    }
  }

  if (dword_2810C0CD0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_31, dword_2810C0CD0))
  {
    v80 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v103, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 346);
    v81 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v80, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v81, "Num initial list that where cropped: ", 0x25uLL);
    operations_research::sat::FormatCounter((v7 >> 2), v82, &v102);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v81, &v102);
    operations_research::sat::ConvertCpModelProtoToMPModelProto(&v102);
  }

  if (dword_2810C0CE8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0CE0, dword_2810C0CE8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 348);
    v83 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v101, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, "Shared buffer size: ", 0x14uLL);
    operations_research::sat::FormatCounter(((*(this + 20) - *(this + 19)) >> 2), v84, &v100);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v83, &v100);
    operations_research::sat::ConvertCpModelProtoToMPModelProto(&v100);
  }

  if (dword_2810C0D00 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0CF8, dword_2810C0D00))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v99, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 349);
    v85 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v99, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, "Non-cropped buffer size: ", 0x19uLL);
    operations_research::sat::FormatCounter(v6, v86, &v98);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v85, &v98);
    operations_research::sat::ConvertCpModelProtoToMPModelProto(&v98);
  }

  if (dword_2810C0D18 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0D10, dword_2810C0D18))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v97, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 350);
    v87 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v97, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v87, "Buffer size: ", 0xDuLL);
    operations_research::sat::FormatCounter(((*(this + 29) - *(this + 28)) >> 2), v88, &v96);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v87, &v96);
    operations_research::sat::ConvertCpModelProtoToMPModelProto(&v96);
  }

  v75 = *(this + 25);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  if (v75)
  {
    operator delete(v75);
  }

  v76 = *(this + 19);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  if (v76)
  {
    operator delete(v76);
  }

  v77 = *(this + 28);
  v78 = *(this + 29);
  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v105.__begin_)
  {
    v105.__end_ = v105.__begin_;
    operator delete(v105.__begin_);
  }

  if (v106)
  {
    operator delete(v106);
  }

  return v77 != v78;
}

void sub_23CD2A530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a25);
  if (v48)
  {
    operator delete(v48);
    v51 = *(v49 - 160);
    if (!v51)
    {
LABEL_5:
      v52 = *(v49 - 136);
      if (!v52)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v51 = *(v49 - 160);
    if (!v51)
    {
      goto LABEL_5;
    }
  }

  *(v49 - 152) = v51;
  operator delete(v51);
  v52 = *(v49 - 136);
  if (!v52)
  {
LABEL_6:
    v53 = *(v49 - 112);
    if (!v53)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v49 - 128) = v52;
  operator delete(v52);
  v53 = *(v49 - 112);
  if (!v53)
  {
LABEL_7:
    if (!a13)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v53);
  if (!a13)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(a13);
  _Unwind_Resume(a1);
}

void operations_research::SimpleDynamicPartition::GetParts<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(std::vector<int> *this@<X1>, void *a2@<X0>, void *a3@<X8>)
{
  v4 = a2[4] - a2[3];
  v5 = ((a2[1] - *a2) >> 2);
  v6 = this->__end_ - this->__begin_;
  if (v5 <= v6)
  {
    if (v5 < v6)
    {
      this->__end_ = &this->__begin_[v5];
    }
  }

  else
  {
    std::vector<int>::__append(this, v5 - v6);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 << 30)
  {
    if (!((v4 >> 2) >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CD2A948(_Unwind_Exception *a1)
{
  *(v2 + 8) = v1;
  operator delete(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::VarDomination::EndSecondPhase(operations_research::sat::VarDomination *this)
{
  v2 = *this;
  if (v2 != 1)
  {
    operations_research::sat::VarDomination::EndSecondPhase(v2);
  }

  *this = 2;
  v3 = (this + 152);
  *(this + 20) = *(this + 19);
  v4 = *(this + 30);
  __x.__r_.__value_.__r.__words[0] = 0;
  std::vector<operations_research::sat::VarDomination::IntegerVariableSpan>::assign(this + 200, v4, &__x);
  v5 = *(this + 30);
  if (v5 < 1)
  {
    v14 = 0;
    v18 = *(this + 19);
    v19 = (*(this + 20) - v18) >> 2;
  }

  else
  {
    v6 = 0;
    v7 = *(this + 34);
    do
    {
      v8 = (v7 + 8 * v6);
      v9 = v8[1];
      if (v9)
      {
        v10 = (*(this + 28) + 4 * *v8);
        v11 = *(this + 25) + 4;
        v12 = 4 * v9;
        do
        {
          v13 = *v10++;
          ++*(v11 + 8 * (v13 ^ 1));
          v12 -= 4;
        }

        while (v12);
      }

      ++v6;
    }

    while (v6 != v5);
    LODWORD(v14) = 0;
    v15 = (*(this + 25) + 4);
    v16 = v5;
    do
    {
      v17 = *v15;
      *(v15 - 1) = v14;
      *v15 = 0;
      LODWORD(v14) = v17 + v14;
      v15 += 2;
      --v16;
    }

    while (v16);
    v14 = v14;
    v18 = *(this + 19);
    v19 = (*(this + 20) - v18) >> 2;
    if (v14 > v19)
    {
      std::vector<int>::__append((this + 152), v14 - v19);
      LODWORD(v5) = *(this + 30);
      goto LABEL_16;
    }
  }

  if (v19 > v14)
  {
    *(this + 20) = v18 + 4 * v14;
  }

LABEL_16:
  if (v5 <= 0)
  {
    v22 = v5;
  }

  else
  {
    v20 = 0;
    v21 = *(this + 34);
    do
    {
      v23 = (v21 + 8 * v20);
      v24 = v23[1];
      if (v24)
      {
        v25 = (*(this + 28) + 4 * *v23);
        v26 = *(this + 25);
        v27 = *(this + 19);
        v28 = 4 * v24;
        do
        {
          v29 = *v25++;
          v30 = (v26 + 8 * (v29 ^ 1));
          v31 = *v30;
          v32 = v30[1];
          v30[1] = v32 + 1;
          *(v27 + 4 * (v32 + v31)) = v20 ^ 1;
          v28 -= 4;
        }

        while (v28);
        LODWORD(v5) = *(this + 30);
      }

      ++v20;
      v22 = v5;
    }

    while (v20 < v5);
  }

  LODWORD(__x.__r_.__value_.__l.__data_) = -1;
  v33 = *(this + 16);
  v34 = (this + 128);
  v35 = (*(this + 17) - v33) >> 2;
  if (v22 <= v35)
  {
    if (v22 < v35)
    {
      *(this + 17) = v33 + 4 * v22;
    }
  }

  else
  {
    std::vector<int>::__append((this + 128), v22 - v35, &__x);
    LODWORD(v5) = *(this + 30);
  }

  if (v5 >= 1)
  {
    v36 = 0;
    v37 = 0;
    v38 = *(this + 25);
    v39 = *(this + 34);
    while (1)
    {
      v40 = 8 * v36;
      v41 = (v38 + v40);
      v42 = *(v38 + v40 + 4);
      if (v42)
      {
        v43 = (*v3 + 4 * *v41);
        v44 = *v34;
        v45 = 4 * v42;
        do
        {
          v46 = *v43++;
          *(v44 + 4 * v46) = 1;
          v45 -= 4;
        }

        while (v45);
      }

      v47 = (v39 + v40);
      v48 = v47[1];
      if (v48)
      {
        break;
      }

      v47[1] = 0;
      v54 = v41[1];
      if (v54)
      {
        goto LABEL_43;
      }

LABEL_31:
      if (++v36 >= *(this + 30))
      {
        v59 = v37;
        v60 = dword_2810BD6E0;
        if (dword_2810BD6E0 >= 1)
        {
          goto LABEL_55;
        }

        goto LABEL_49;
      }
    }

    v49 = 0;
    v50 = (*(this + 28) + 4 * *v47);
    v51 = *(this + 16);
    v52 = 4 * v48;
    do
    {
      while (*(v51 + 4 * *v50) == 1)
      {
        v53 = *v47 + v49++;
        *(*(this + 28) + 4 * v53) = *v50++;
        v52 -= 4;
        if (!v52)
        {
          goto LABEL_40;
        }
      }

      ++v37;
      ++v50;
      v52 -= 4;
    }

    while (v52);
LABEL_40:
    v47[1] = v49;
    v54 = v41[1];
    if (!v54)
    {
      goto LABEL_31;
    }

LABEL_43:
    v55 = (*v3 + 4 * *v41);
    v56 = *v34;
    v57 = 4 * v54;
    do
    {
      v58 = *v55++;
      *(v56 + 4 * v58) = -1;
      v57 -= 4;
    }

    while (v57);
    goto LABEL_31;
  }

  v59 = 0;
  v60 = dword_2810BD6E0;
  if (dword_2810BD6E0 >= 1)
  {
LABEL_55:
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::VarDomination::EndSecondPhase(void)::$_0::operator() const(void)::site, v60))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v66, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 415);
      v63 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v66, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v63, "Transpose removed ", 0x12uLL);
      operations_research::sat::FormatCounter(v59, v64, &__x);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v63, &__x);
      operations_research::sat::ConvertCpModelProtoToMPModelProto(&__x);
    }
  }

LABEL_49:
  v61 = *(this + 25);
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  if (v61)
  {
    operator delete(v61);
  }

  v62 = *v3;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *v3 = 0;
  if (v62)
  {
    operator delete(v62);
  }
}

void sub_23CD2AD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::DualBoundStrengthening::Strengthen(operations_research::sat::DualBoundStrengthening *this, operations_research::sat::PresolveContext *a2)
{
  *(this + 18) = 0;
  v3 = *(*a2 + 32);
  if (v3 < 1)
  {
    goto LABEL_73;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (operations_research::sat::PresolveContext::IsFixed(a2, v4))
    {
      goto LABEL_4;
    }

    v8 = operations_research::sat::PresolveContext::MinOf(a2, v4);
    v9 = v8;
    v10 = (v4 << 33) >> 29;
    v11 = *(*this + v10);
    if (v8 <= v11)
    {
      v12 = *(*this + v10);
    }

    else
    {
      v12 = v8;
    }

    if (v8 >= v11)
    {
      operations_research::Domain::Domain(v151, v8);
      v18 = operations_research::sat::PresolveContext::IntersectDomainWith(a2, v4, v151, 0);
      if ((v18 & 1) == 0)
      {
        v126 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v149, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 734);
        goto LABEL_294;
      }

LABEL_26:
      if (v151[0])
      {
        operator delete(*(&v151[0] + 1));
      }

      ++v5;
      goto LABEL_4;
    }

    v13 = operations_research::sat::PresolveContext::MaxOf(a2, v4);
    v14 = v13;
    v15 = *(*this + v10 + 8);
    if (v13 >= -v15)
    {
      v16 = -v15;
    }

    else
    {
      v16 = v13;
    }

    if (v13 <= -v15)
    {
      operations_research::Domain::Domain(v151, v13);
      if ((operations_research::sat::PresolveContext::IntersectDomainWith(a2, v4, v151, 0) & 1) == 0)
      {
        v126 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v149, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 744);
        goto LABEL_294;
      }

      goto LABEL_26;
    }

    if (v16 <= v12)
    {
      goto LABEL_48;
    }

    operations_research::sat::PresolveContext::DomainOf(a2, v4, &v149);
    operations_research::Domain::Domain(&v152, v12, v16);
    operations_research::Domain::IntersectionWith(&v149, &v152, v151);
    if (v152)
    {
      operator delete(v153);
    }

    if (v149)
    {
      operator delete(*(&v149 + 1));
    }

    IsEmpty = operations_research::Domain::IsEmpty(v151);
    if (!IsEmpty)
    {
      if (!operations_research::Domain::Contains(v151, 0))
      {
        v19 = operations_research::Domain::Min(v151);
        if (v19)
        {
          operations_research::Domain::FlattenedIntervals(v151, &v149);
          v20 = v149;
          while (v20 != *(&v149 + 1))
          {
            v22 = *v20++;
            v21 = v22;
            if (v22 >= 0)
            {
              v23 = v21;
            }

            else
            {
              v23 = -v21;
            }

            if (v19 >= 0)
            {
              v24 = v19;
            }

            else
            {
              v24 = -v19;
            }

            if (v23 < v24)
            {
              v19 = v21;
            }
          }

          if (v149)
          {
            *(&v149 + 1) = v149;
            operator delete(v149);
          }
        }
      }

      operator new();
    }

    if (v151[0])
    {
      operator delete(*(&v151[0] + 1));
    }

    if (IsEmpty)
    {
LABEL_48:
      if (v12 < v14 || v16 > v9)
      {
        if (v12 >= v14)
        {
          goto LABEL_54;
        }

        operations_research::sat::PresolveContext::DomainOf(a2, v4, &v149);
        operations_research::Domain::Domain(&v152, v12, 0x7FFFFFFFFFFFFFFFLL);
        operations_research::Domain::IntersectionWith(&v149, &v152, v151);
        v14 = operations_research::Domain::Min(v151);
        if (v151[0])
        {
          operator delete(*(&v151[0] + 1));
          if ((v152 & 1) == 0)
          {
LABEL_52:
            if ((v149 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        else if ((v152 & 1) == 0)
        {
          goto LABEL_52;
        }

        operator delete(v153);
        if ((v149 & 1) == 0)
        {
LABEL_54:
          if (v16 <= v9)
          {
            goto LABEL_59;
          }

          operations_research::sat::PresolveContext::DomainOf(a2, v4, &v149);
          operations_research::Domain::Domain(&v152, 0x8000000000000000, v16);
          operations_research::Domain::IntersectionWith(&v149, &v152, v151);
          v9 = operations_research::Domain::Max(v151);
          if (v151[0])
          {
            operator delete(*(&v151[0] + 1));
            if ((v152 & 1) == 0)
            {
LABEL_57:
              if (v149)
              {
LABEL_58:
                operator delete(*(&v149 + 1));
              }

LABEL_59:
              BYTE7(v151[1]) = 20;
              strcpy(v151, "dual: reduced domain");
              operations_research::sat::PresolveContext::UpdateRuleStats(a2, v151, 1, v6, v7);
              if (SBYTE7(v151[1]) < 0)
              {
                operator delete(*&v151[0]);
              }

              operations_research::Domain::Domain(v151, v9, v14);
              if ((operations_research::sat::PresolveContext::IntersectDomainWith(a2, v4, v151, 0) & 1) == 0)
              {
                v126 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v149, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 785);
LABEL_294:
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v126);
              }

              if (v151[0])
              {
                operator delete(*(&v151[0] + 1));
              }

              goto LABEL_4;
            }
          }

          else if ((v152 & 1) == 0)
          {
            goto LABEL_57;
          }

          operator delete(v153);
          if ((v149 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

LABEL_53:
        operator delete(*(&v149 + 1));
        goto LABEL_54;
      }
    }

LABEL_4:
    v4 = (v4 + 1);
  }

  while (v4 != v3);
  if (v5 > 0)
  {
    BYTE7(v151[1]) = 18;
    strcpy(v151, "dual: fix variable");
    operations_research::sat::PresolveContext::UpdateRuleStats(a2, v151, v5, v6, v7);
    if (SBYTE7(v151[1]) < 0)
    {
      operator delete(*&v151[0]);
    }
  }

LABEL_73:
  v151[0] = xmmword_23CE306D0;
  v149 = xmmword_23CE306D0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v26 = this;
  if (((*(this + 4) - *(this + 3)) >> 2) < 1)
  {
LABEL_277:
    if (dword_2810BD518 > 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::DualBoundStrengthening::Strengthen(operations_research::sat::PresolveContext *)::$_0::operator() const(void)::site, dword_2810BD518))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 1103);
      v127 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v127, "Num deleted constraints: ", 0x19uLL);
      LODWORD(v138[0]) = *(this + 18);
      absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v127, v138);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
      v123 = 1;
      v124 = v143;
      if (!v143)
      {
        goto LABEL_280;
      }
    }

    else
    {
      v123 = 1;
      v124 = v143;
      if (!v143)
      {
        goto LABEL_280;
      }
    }

LABEL_279:
    operator delete(v124);
    goto LABEL_280;
  }

  v27 = 0;
  v28 = 0;
  while (2)
  {
    if (v27)
    {
      v29 = ~(v27 >> 1);
    }

    else
    {
      v29 = (v27 >> 1);
    }

    v30 = ~v29;
    if (~v29 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = ~v29;
    }

    v32 = v31 >> 6;
    v33 = 1 << v31;
    if (((1 << v31) & *(v143 + v32)) != 0)
    {
      goto LABEL_79;
    }

    if (operations_research::sat::PresolveContext::IsFixed(a2, v31))
    {
      goto LABEL_79;
    }

    if (operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(a2, v31))
    {
      goto LABEL_79;
    }

    if (operations_research::sat::PresolveContext::VariableWasRemoved(a2, v31))
    {
      goto LABEL_79;
    }

    v34 = *(v26 + 3);
    if (*(v34 + 4 * v27) != 1)
    {
      goto LABEL_79;
    }

    v35 = *(*(v26 + 6) + 4 * v27);
    if (v35 == -1)
    {
      operator new();
    }

    v36 = v35;
    v140 = *(*(v26 + 6) + 4 * v27);
    v37 = *a2 + 48;
    v38 = *v37 + 8 * v36 + 7;
    if (*v37)
    {
      v37 = v38;
    }

    v132 = *v37;
    v39 = *(*v37 + 60);
    switch(v39)
    {
      case 0:
        goto LABEL_79;
      case 4:
        if (*(v132 + 16) == 1)
        {
          v40 = **(v132 + 24);
          v41 = ~v40;
          if (~v40 <= v40)
          {
            v42 = **(v132 + 24);
          }

          else
          {
            v42 = ~v40;
          }

          if (v42 != v31 || ((v43 = 2 * v41, (v40 & 0x80000000) == 0) ? (v44 = 2 * v40 + 1) : (v44 = 2 * v41), *(v34 + 4 * v44) != 1))
          {
            v51 = *(v132 + 48);
            v52 = *(v51 + 16);
            if (!v52)
            {
LABEL_299:
              absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/var_domination.cc", 1087);
              absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
            }

            v53 = *(v51 + 24);
            v54 = 4 * v52;
            while (1)
            {
              v48 = *v53;
              v40 = ~*v53;
              v55 = v40 <= *v53 ? *v53 : ~v48;
              if (v55 == v31)
              {
                v43 = 2 * v48;
                v56 = v48 < 0 ? 2 * v40 + 1 : 2 * v48;
                if (*(v34 + 4 * v56) == 1)
                {
                  break;
                }
              }

              ++v53;
              v54 -= 4;
              if (!v54)
              {
                goto LABEL_299;
              }
            }

            v46 = (2 * v40) | 1;
LABEL_131:
            if ((v40 & 0x80000000) == 0)
            {
              v43 = v46;
            }

            v57 = *(v34 + 4 * v43);
            if (v57 == 1)
            {
              if (v48 <= v40)
              {
                v58 = v40;
              }

              else
              {
                v58 = v48;
              }

              v59 = v143;
              *(v143 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
              if (~v41 <= v41)
              {
                v60 = v41;
              }

              else
              {
                v60 = ~v41;
              }

              *&v59[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v60;
              operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(a2, v40, v41);
              operator new();
            }

            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v57, 1, "num_locks_[RefToIntegerVariable(NegatedRef(a))] == 1");
          }

          v45 = *(v132 + 48);
          if (*(v45 + 16) == 1)
          {
            v46 = (2 * v40) | 1;
            v47 = *(v45 + 24);
            v48 = ~v40;
            v41 = *v47;
            goto LABEL_131;
          }
        }

        goto LABEL_79;
      case 26:
        operator new();
    }

    if (*(v132 + 16) != 1 || ((LODWORD(v49) = **(v132 + 24), v129 = ~v49, v50 = v49, ~v49 <= v49) ? (v49 = v49) : (v49 = ~v49), v130 = v49, v49 == v31))
    {
LABEL_179:
      if (v39 != 12 || (v80 = *(v132 + 48), *(v80 + 16) != 1) || *(v132 + 16) != 1 || **(v132 + 24) != v30)
      {
LABEL_213:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v151, &v140, &__p);
        if (LOBYTE(v142[1]) == 1 && (*v142[0] = v140, *(v132 + 60) == 12))
        {
          v26 = this;
          if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(a2, v29))
          {
            v138[0] = operations_research::fasthash64(v152, v153 - v152, 0xA5B85C5E198ED849);
            v138[1] = (v140 | (v29 << 32));
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,std::pair<int,int>>>>::find_or_prepare_insert<unsigned long long>(&v149, v138, &__p);
            if (LOBYTE(v142[1]) != 1 || (v92 = v142[0], *v142[0] = v138[0], v92[1] = v138[1], (v142[1] & 1) == 0))
            {
              v93 = *(v142[0] + 1);
              if (v140 == v93)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v93, v93, "other_c_with_same_hash != ct_index");
              }

              v94 = *(*a2 + 48);
              v95 = HIDWORD(v93);
              v96 = (v94 + 8 * v93 + 7);
              if ((v94 & 1) == 0)
              {
                v96 = (*a2 + 48);
              }

              if (v153 - v152 == v147 - v146 && !memcmp(v152, v146, v153 - v152))
              {
                v97 = ~v95 <= v95 ? v95 : ~v95;
                v98 = v97;
                v99 = v143;
                v100 = v98 >> 6;
                v101 = 1 << v98;
                if ((*(v143 + v100) & v101) == 0)
                {
                  *(v143 + v32) |= v33;
                  v99[v100] |= v101;
                  operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(a2, v29, v95);
                  ++*(this + 18);
                  v102 = (*a2 + 48);
                  if (*v102)
                  {
                    v102 = (*v102 + 8 * v140 + 7);
                  }

                  operations_research::sat::ConstraintProto::Clear(*v102);
                  operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(a2, v140);
                  ++v28;
                  goto LABEL_79;
                }
              }
            }
          }
        }

        else
        {
          v26 = this;
        }

        v103 = *(v132 + 16);
        if (!v103)
        {
          operator new();
        }

        if (*(v132 + 60) != 12 || (v103 == 1 ? (v104 = *(*(v132 + 48) + 16) == 1) : (v104 = 0), !v104 || **(v132 + 24) != v30))
        {
          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "TODO dual: make linear1 equiv");
        operations_research::sat::PresolveContext::UpdateRuleStats(a2, &__p, 1, v105, v106);
        if (SHIBYTE(v142[1]) < 0)
        {
          operator delete(__p);
        }

LABEL_79:
        if (++v27 >= ((*(v26 + 4) - *(v26 + 3)) >> 2))
        {
          if (v28)
          {
            operator new();
          }

          goto LABEL_277;
        }

        continue;
      }

      v81 = **(v80 + 24);
      operations_research::sat::PresolveContext::DomainOf(a2, v81, &__p);
      v83 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v132 + 60) == 12)
      {
        v83 = *(v132 + 48);
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v83[9], *(v83 + 16), v134, v82);
      v84 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v132 + 60) == 12)
      {
        v84 = *(v132 + 48);
      }

      operations_research::Domain::InverseMultiplicationBy(v134, *v84[6], v136);
      operations_research::Domain::IntersectionWith(v136, &__p, v138);
      if (v136[0])
      {
        operator delete(v136[1]);
      }

      if (v134[0])
      {
        operator delete(v134[1]);
      }

      if (operations_research::Domain::IsEmpty(v138))
      {
        std::string::basic_string[abi:ne200100]<0>(v136, "linear1: infeasible");
        operations_research::sat::PresolveContext::UpdateRuleStats(a2, v136, 1, v85, v86);
        if (v137 < 0)
        {
          operator delete(v136[0]);
        }

        if ((operations_research::sat::PresolveContext::SetLiteralToFalse(a2, **(v132 + 24)) & 1) == 0)
        {
          v68 = 1;
          goto LABEL_205;
        }

        goto LABEL_199;
      }

      if (operations_research::Domain::operator==(v138, &__p))
      {
        std::string::basic_string[abi:ne200100]<0>(v136, "linear1: always true");
        operations_research::sat::PresolveContext::UpdateRuleStats(a2, v136, 1, v87, v88);
        if (v137 < 0)
        {
          operator delete(v136[0]);
        }

LABEL_199:
        v89 = v143;
        *(v143 + v32) |= v33;
        if (~v81 <= v81)
        {
          v90 = v81;
        }

        else
        {
          v90 = ~v81;
        }

        *&v89[(v90 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v90;
        v91 = (*a2 + 48);
        if (*v91)
        {
          v91 = (*v91 + 8 * v140 + 7);
        }

        operations_research::sat::ConstraintProto::Clear(*v91);
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(a2, v140);
        v68 = 9;
        goto LABEL_205;
      }

      operations_research::Domain::Complement(v138, v134);
      operations_research::Domain::IntersectionWith(v134, &__p, v136);
      if (v134[0])
      {
        operator delete(v134[1]);
      }

      if (!operations_research::Domain::IsFixed(v138) && !operations_research::Domain::IsFixed(v136))
      {
        v68 = 0;
        goto LABEL_273;
      }

      std::string::basic_string[abi:ne200100]<0>(v134, "dual: make encoding equiv");
      operations_research::sat::PresolveContext::UpdateRuleStats(a2, v134, 1, v107, v108);
      if (v135 < 0)
      {
        operator delete(v134[0]);
      }

      if (operations_research::Domain::IsFixed(v138))
      {
        v109 = v138;
      }

      else
      {
        v109 = v136;
      }

      v110 = operations_research::Domain::Min(v109);
      LODWORD(v134[0]) = 0;
      if (!operations_research::sat::PresolveContext::HasVarValueEncoding(a2, v81, v110, v134))
      {
        v131 = v110;
        v112 = v143;
        *(v143 + v32) |= v33;
        v113 = v81;
        if (~v81 <= v81)
        {
          v114 = v81;
        }

        else
        {
          v114 = ~v81;
        }

        *&v112[(v114 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v114;
        v115 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a2 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        operations_research::sat::BoolArgumentProto::add_literals(v115, v29);
        v116 = operations_research::sat::ConstraintProto::mutable_linear(v115);
        operations_research::sat::BoolArgumentProto::add_literals(v116, v113);
        v117 = operations_research::sat::ConstraintProto::mutable_linear(v115);
        operations_research::sat::LinearConstraintProto::add_coeffs(v117, 1);
        v118 = operations_research::sat::ConstraintProto::mutable_linear(v115);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v136, v118);
        operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(a2);
        if (operations_research::Domain::IsFixed(v138))
        {
          operations_research::sat::PresolveContext::StoreLiteralImpliesVarEqValue(a2, ~v29, v113, v131);
          operations_research::sat::PresolveContext::StoreLiteralImpliesVarNEqValue(a2, v29, v113, v131);
        }

        else if (operations_research::Domain::IsFixed(v136))
        {
          operations_research::sat::PresolveContext::StoreLiteralImpliesVarNEqValue(a2, ~v29, v113, v131);
          operations_research::sat::PresolveContext::StoreLiteralImpliesVarEqValue(a2, v29, v113, v131);
        }

        goto LABEL_272;
      }

      if (operations_research::Domain::IsFixed(v138))
      {
        v111 = ~v29;
        if (LODWORD(v134[0]) == v30)
        {
          goto LABEL_272;
        }
      }

      else
      {
        v111 = v29;
        if (LODWORD(v134[0]) == v29)
        {
LABEL_272:
          v68 = 9;
LABEL_273:
          if (v136[0])
          {
            operator delete(v136[1]);
          }

LABEL_205:
          if (v138[0])
          {
            operator delete(v138[1]);
            if ((__p & 1) == 0)
            {
LABEL_207:
              if (v68)
              {
                goto LABEL_208;
              }

              goto LABEL_213;
            }
          }

          else if ((__p & 1) == 0)
          {
            goto LABEL_207;
          }

          operator delete(v142[0]);
          if (v68)
          {
            goto LABEL_208;
          }

          goto LABEL_213;
        }
      }

      operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(a2, LODWORD(v134[0]), v111);
      v119 = (*a2 + 48);
      if (*v119)
      {
        v119 = (*v119 + 8 * v140 + 7);
      }

      operations_research::sat::ConstraintProto::Clear(*v119);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(a2, v140);
      v120 = v143;
      *(v143 + v32) |= v33;
      if (~v81 <= v81)
      {
        v121 = v81;
      }

      else
      {
        v121 = ~v81;
      }

      *&v120[(v121 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v121;
      v122 = v134[0];
      if (~LODWORD(v134[0]) > SLODWORD(v134[0]))
      {
        v122 = ~LODWORD(v134[0]);
      }

      *&v120[(v122 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v122;
      goto LABEL_272;
    }

    break;
  }

  if ((v29 & 0x80000000) != 0)
  {
    v128 = operations_research::sat::PresolveContext::MaxOf(a2, v31);
  }

  else
  {
    v128 = operations_research::sat::PresolveContext::MinOf(a2, v31);
  }

  operations_research::sat::PresolveContext::DomainOf(a2, v31, v138);
  operations_research::sat::DomainDeductions::ImpliedDomain((a2 + 248), v50, v31, v136);
  operations_research::Domain::IntersectionWith(v138, v136, &__p);
  if (v136[0])
  {
    operator delete(v136[1]);
  }

  if (v138[0])
  {
    operator delete(v138[1]);
  }

  if (!operations_research::Domain::IsEmpty(&__p))
  {
    if (operations_research::Domain::IsFixed(&__p))
    {
      if (operations_research::Domain::Min(&__p) == v128)
      {
        std::string::basic_string[abi:ne200100]<0>(v138, "dual: fix variable");
        operations_research::sat::PresolveContext::UpdateRuleStats(a2, v138, 1, v66, v67);
        if (v139 < 0)
        {
          operator delete(v138[0]);
        }

        v64 = 0;
        v65 = operations_research::sat::PresolveContext::IntersectDomainWith(a2, v31, &__p, 0) == 0;
LABEL_158:
        if (v65)
        {
          v68 = 1;
        }

        else
        {
          v68 = 9;
        }

        goto LABEL_175;
      }

      v72 = v143;
      *(v143 + ((v130 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v130;
      v72[v32] |= v33;
      std::string::basic_string[abi:ne200100]<0>(v138, "dual: affine relation");
      operations_research::sat::PresolveContext::UpdateRuleStats(a2, v138, 1, v73, v74);
      if (v139 < 0)
      {
        operator delete(v138[0]);
      }

      if ((v50 & 0x80000000) != 0)
      {
        v78 = operations_research::Domain::Min(&__p);
        v79 = operations_research::Domain::Min(&__p);
        if (!operations_research::sat::PresolveContext::StoreAffineRelation(a2, v31, v130, v128 - v78, v79, 0))
        {
          goto LABEL_174;
        }
      }

      else
      {
        v75 = operations_research::Domain::Min(&__p);
        if ((operations_research::sat::PresolveContext::StoreAffineRelation(a2, v31, v50, v75 - v128, v128, 0) & 1) == 0)
        {
          goto LABEL_174;
        }
      }
    }

    else
    {
      if (!operations_research::sat::PresolveContext::CanBeUsedAsLiteral(a2, v31))
      {
        std::string::basic_string[abi:ne200100]<0>(v138, "TODO dual: add implied bound");
        operations_research::sat::PresolveContext::UpdateRuleStats(a2, v138, 1, v76, v77);
        if (v139 < 0)
        {
          operator delete(v138[0]);
        }

        v68 = 0;
        v64 = 1;
        goto LABEL_175;
      }

      v69 = v143;
      *(v143 + ((v130 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v130;
      v69[v32] |= v33;
      std::string::basic_string[abi:ne200100]<0>(v138, "dual: add implication");
      operations_research::sat::PresolveContext::UpdateRuleStats(a2, v138, 1, v70, v71);
      if (v139 < 0)
      {
        operator delete(v138[0]);
      }

      operations_research::sat::PresolveContext::AddImplication(a2, v129, ~v29);
      operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(a2);
    }

    v64 = 0;
    v68 = 9;
    goto LABEL_175;
  }

  std::string::basic_string[abi:ne200100]<0>(v138, "dual: fix variable");
  operations_research::sat::PresolveContext::UpdateRuleStats(a2, v138, 1, v61, v62);
  if (v139 < 0)
  {
    operator delete(v138[0]);
  }

  if (operations_research::sat::PresolveContext::SetLiteralToFalse(a2, v50))
  {
    operations_research::Domain::Domain(v138, v128);
    v63 = operations_research::sat::PresolveContext::IntersectDomainWith(a2, v31, v138, 0);
    if (v138[0])
    {
      operator delete(v138[1]);
    }

    v64 = 0;
    v65 = v63 == 0;
    goto LABEL_158;
  }

LABEL_174:
  v64 = 0;
  v68 = 1;
LABEL_175:
  if (__p)
  {
    operator delete(v142[0]);
  }

  if (v64)
  {
    v39 = *(v132 + 60);
    goto LABEL_179;
  }

LABEL_208:
  if (v68 == 9)
  {
    v26 = this;
    goto LABEL_79;
  }

  v26 = this;
  if (!v68)
  {
    goto LABEL_79;
  }

  v123 = 0;
  v124 = v143;
  if (v143)
  {
    goto LABEL_279;
  }

LABEL_280:
  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v149 >= 2)
  {
    operator delete((v150 - (BYTE8(v149) & 1) - 8));
  }

  if (*&v151[0] >= 2uLL)
  {
    operator delete((*&v151[1] - (BYTE8(v151[0]) & 1) - 8));
  }

  return v123;
}