void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5, int *a6, uint64_t a7)
{
  v7 = *a4;
  v8 = *a2;
  v9 = (*(a7 + 24 * v7 + 8) - *(a7 + 24 * v7)) >> 2;
  v10 = (*(a7 + 24 * *a2 + 8) - *(a7 + 24 * *a2)) >> 2;
  if (v9 < v10 || (v7 < v8 ? (v11 = v9 == v10) : (v11 = 0), v11))
  {
    v18 = *a6;
    v19 = (*(a7 + 24 * *a6 + 8) - *(a7 + 24 * *a6)) >> 2;
    if (v19 < v9 || v18 < v7 && v19 == v9)
    {
      *a2 = v18;
    }

    else
    {
      *a2 = v7;
      *a4 = v8;
      v20 = *a6;
      v21 = (*(a7 + 24 * *a6 + 8) - *(a7 + 24 * *a6)) >> 2;
      if (v21 >= v10 && (v20 >= v8 || v21 != v10))
      {
        return;
      }

      *a4 = v20;
    }

    *a6 = v8;
    return;
  }

  v12 = *a6;
  v13 = (*(a7 + 24 * *a6 + 8) - *(a7 + 24 * *a6)) >> 2;
  if (v13 < v9 || v12 < v7 && v13 == v9)
  {
    *a4 = v12;
    *a6 = v7;
    v14 = *a4;
    v15 = *a2;
    v16 = (*(a7 + 24 * v14 + 8) - *(a7 + 24 * v14)) >> 2;
    v17 = (*(a7 + 24 * *a2 + 8) - *(a7 + 24 * *a2)) >> 2;
    if (v16 < v17 || v14 < v15 && v16 == v17)
    {
      *a2 = v14;
      *a4 = v15;
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5, int *a6, uint64_t a7, int *a8, uint64_t a9)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, a3, a4, a5, a6, *(*(*a9 + 8) + 648));
  v13 = *a8;
  v14 = *a6;
  v15 = *(*(*a9 + 8) + 648);
  v16 = (*(v15 + 24 * v13 + 8) - *(v15 + 24 * v13)) >> 2;
  v17 = (*(v15 + 24 * *a6 + 8) - *(v15 + 24 * *a6)) >> 2;
  if (v16 < v17 || v13 < v14 && v16 == v17)
  {
    *a6 = v13;
    *a8 = v14;
    v18 = *a6;
    v19 = *a4;
    v20 = (*(v15 + 24 * v18 + 8) - *(v15 + 24 * v18)) >> 2;
    v21 = (*(v15 + 24 * *a4 + 8) - *(v15 + 24 * *a4)) >> 2;
    if (v20 < v21 || v18 < v19 && v20 == v21)
    {
      *a4 = v18;
      *a6 = v19;
      v22 = *a4;
      v23 = *a2;
      v24 = (*(v15 + 24 * *a4 + 8) - *(v15 + 24 * *a4)) >> 2;
      v25 = (*(v15 + 24 * *a2 + 8) - *(v15 + 24 * *a2)) >> 2;
      if (v24 < v25 || v22 < v23 && v24 == v25)
      {
        *a2 = v22;
        *a4 = v23;
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5, int *a6, uint64_t a7, int *a8, uint64_t a9, int *a10, uint64_t a11)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, a3, a4, a5, a6, a7, a8, a11);
  v15 = *a10;
  v16 = *a8;
  v17 = *(*(*a11 + 8) + 648);
  v18 = (*(v17 + 24 * v15 + 8) - *(v17 + 24 * v15)) >> 2;
  v19 = (*(v17 + 24 * *a8 + 8) - *(v17 + 24 * *a8)) >> 2;
  if (v18 < v19 || v15 < v16 && v18 == v19)
  {
    *a8 = v15;
    *a10 = v16;
    v20 = *a8;
    v21 = *a6;
    v22 = (*(v17 + 24 * v20 + 8) - *(v17 + 24 * v20)) >> 2;
    v23 = (*(v17 + 24 * *a6 + 8) - *(v17 + 24 * *a6)) >> 2;
    if (v22 < v23 || v20 < v21 && v22 == v23)
    {
      *a6 = v20;
      *a8 = v21;
      v24 = *a6;
      v25 = *a4;
      v26 = (*(v17 + 24 * v24 + 8) - *(v17 + 24 * v24)) >> 2;
      v27 = (*(v17 + 24 * *a4 + 8) - *(v17 + 24 * *a4)) >> 2;
      if (v26 < v27 || v24 < v25 && v26 == v27)
      {
        *a4 = v24;
        *a6 = v25;
        v28 = *a4;
        v29 = *a2;
        v30 = (*(v17 + 24 * *a4 + 8) - *(v17 + 24 * *a4)) >> 2;
        v31 = (*(v17 + 24 * *a2 + 8) - *(v17 + 24 * *a2)) >> 2;
        if (v30 < v31 || v28 < v29 && v30 == v31)
        {
          *a2 = v28;
          *a4 = v29;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *a1, int *a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == a2)
  {
    return 1;
  }

  v6 = *a3;
  v7 = a2 - *a1;
  v8 = v7 >> 2;
  v9 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v7 >> 2);
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        if (v9 != 5)
        {
          goto LABEL_21;
        }

        v10 = a3;
        if (v8 < 0)
        {
          v11 = &a1[-8 * ((1022 - v8) >> 10)];
          v12 = (*v11 + 4 * (~(1022 - v8) & 0x3FF));
          if (v7 != -4)
          {
            v33 = &a1[-8 * ((1021 - v8) >> 10)];
            v34 = (*v33 + 4 * (~(1021 - v8) & 0x3FF));
            if (v8 < 0xFFFFFFFFFFFFFFFELL)
            {
              v70 = 1020 - v8;
              v36 = &a1[-8 * (v70 >> 10)];
              v37 = (*v36 + 4 * (~v70 & 0x3FF));
              if (v6 != a4)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            v35 = 1;
LABEL_34:
            v36 = &a1[8 * (v35 >> 10)];
            v37 = (*v36 + 4 * (v35 & 0x3FF));
            if (v6 != a4)
            {
LABEL_36:
              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, v11, v12, v33, v34, v36, v37, v10, (a4 - 4), a5);
              return 1;
            }

LABEL_35:
            v38 = *(v10 - 8);
            v10 -= 8;
            a4 = v38 + 4096;
            goto LABEL_36;
          }

          v13 = 1;
        }

        else
        {
          v11 = &a1[8 * ((v8 + 1) >> 10)];
          v12 = (*v11 + 4 * ((v8 + 1) & 0x3FF));
          v13 = v8 + 2;
        }

        v33 = &a1[8 * (v13 >> 10)];
        v34 = (*v33 + 4 * (v13 & 0x3FF));
        v35 = v8 + 3;
        goto LABEL_34;
      }

      v26 = a3;
      if (v8 < 0)
      {
        v27 = &a1[-8 * ((1022 - v8) >> 10)];
        v28 = (*v27 + 4 * (~(1022 - v8) & 0x3FF));
        if (v7 != -4)
        {
          v39 = &a1[-8 * ((1021 - v8) >> 10)];
          v40 = (*v39 + 4 * (~(1021 - v8) & 0x3FF));
          if (v6 != a4)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v29 = 1;
      }

      else
      {
        v27 = &a1[8 * ((v8 + 1) >> 10)];
        v28 = (*v27 + 4 * ((v8 + 1) & 0x3FF));
        v29 = v8 + 2;
      }

      v39 = &a1[8 * (v29 >> 10)];
      v40 = (*v39 + 4 * (v29 & 0x3FF));
      if (v6 != a4)
      {
LABEL_41:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, v27, v28, v39, v40, v26, (a4 - 4), a5);
        return 1;
      }

LABEL_40:
      v41 = *(v26 - 8);
      v26 -= 8;
      a4 = v41 + 4096;
      goto LABEL_41;
    }

    if (v8 < 0)
    {
      v19 = &a1[-8 * ((1022 - v8) >> 10)];
      v20 = (*v19 + 4 * (~(1022 - v8) & 0x3FF));
      if (v6 != a4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = &a1[8 * ((v8 + 1) >> 10)];
      v20 = (*v19 + 4 * ((v8 + 1) & 0x3FF));
      if (v6 != a4)
      {
LABEL_20:
        v21 = a3;
LABEL_30:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, v19, v20, v21, (a4 - 4), *(*(*a5 + 8) + 648));
        return 1;
      }
    }

    v21 = (a3 - 8);
    a4 = *(a3 - 1) + 4096;
    goto LABEL_30;
  }

  if (v9 < 2)
  {
    return 1;
  }

  if (v9 == 2)
  {
    if (v6 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v14 = *(a4 - 4);
    v15 = *a2;
    v16 = *(*(*a5 + 8) + 648);
    v17 = (*(v16 + 24 * v14 + 8) - *(v16 + 24 * v14)) >> 2;
    v18 = (*(v16 + 24 * *a2 + 8) - *(v16 + 24 * *a2)) >> 2;
    if (v17 < v18 || (result = 1, v14 < v15) && v17 == v18)
    {
      *a2 = v14;
      *(a4 - 4) = v15;
      return 1;
    }

    return result;
  }

LABEL_21:
  if (v8 <= -2)
  {
    v22 = &a1[-8 * ((1021 - v8) >> 10)];
    v23 = &(*v22)[~(1021 - v8) & 0x3FF];
    v25 = 1022 - v8;
  }

  else
  {
    v22 = &a1[8 * ((v8 + 2) >> 10)];
    v23 = &(*v22)[(v8 + 2) & 0x3FF];
    v24 = v8 + 1;
    if (v8 != -1)
    {
      v30 = a4;
      v31 = &a1[8 * (v24 >> 10)];
      v32 = (*v31 + 4 * (v24 & 0x3FF));
      goto LABEL_43;
    }

    v25 = 1023;
  }

  v30 = a4;
  v31 = &a1[-8 * (v25 >> 10)];
  v32 = (*v31 + 4 * (~v25 & 0x3FF));
LABEL_43:
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, a2, v31, v32, v22, v23, *(*(*a5 + 8) + 648));
  v44 = *v22;
  v45 = v23 - *v22;
  if (v45 < 0)
  {
    v51 = 1022 - v45;
    v47 = &v22[-(v51 >> 10)];
    v48 = *v47;
    v49 = &(*v47)[~v51 & 0x3FFLL];
    v50 = v30;
    if (v49 == v30)
    {
      return 1;
    }
  }

  else
  {
    v46 = v45 + 1;
    v47 = &v22[v46 >> 10];
    v48 = *v47;
    v49 = &(*v47)[v46 & 0x3FF];
    v50 = v30;
    if (v49 == v30)
    {
      return 1;
    }
  }

  v52 = 0;
  v53 = *(*(*a5 + 8) + 648);
  while (1)
  {
    v54 = v49;
    v55 = v47;
    v56 = v48;
    v57 = *v49;
    v58 = *v23;
    v59 = (*(v53 + 24 * v57 + 8) - *(v53 + 24 * v57)) >> 2;
    v60 = (*(v53 + 24 * *v23 + 8) - *(v53 + 24 * *v23)) >> 2;
    if (v59 < v60 || (v57 < v58 ? (v61 = v59 == v60) : (v61 = 0), v61))
    {
      *v54 = v58;
      if (v23 != a2)
      {
        while (1)
        {
          if (v23 == v44)
          {
            v63 = *--v22;
            v44 = v63;
            v62 = v63 + 1024;
          }

          else
          {
            v62 = v23;
          }

          v66 = *(v62 - 1);
          v64 = v62 - 1;
          v65 = v66;
          v67 = (*(v53 + 24 * v66 + 8) - *(v53 + 24 * v66)) >> 2;
          if (v59 >= v67 && (v57 >= v65 || v59 != v67))
          {
            break;
          }

          *v23 = v65;
          v23 = v64;
          if (v64 == a2)
          {
            goto LABEL_67;
          }
        }
      }

      v64 = v23;
LABEL_67:
      *v64 = v57;
      if (++v52 == 8)
      {
        break;
      }
    }

    v49 = v54 + 1;
    v48 = v56;
    v47 = v55;
    if ((v54 + 1) - v56 == 4096)
    {
      v47 = v55 + 1;
      v48 = v55[1];
      v49 = v48;
    }

    result = 1;
    v44 = v56;
    v22 = v55;
    v23 = v54;
    if (v49 == v50)
    {
      return result;
    }
  }

  v69 = v54 + 1;
  if ((v54 + 1) - v56 == 4096)
  {
    v69 = v55[1];
  }

  return v69 == v50;
}

uint64_t absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>(void *a1)
{
  v1 = a1[1];
  if (v1 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    return 0;
  }

  else
  {
    return (v1)(*a1);
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>,false>(unint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 > *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = (v10 + 1);
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 > v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 > v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = (v90 + 1);
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v99 = *v86;
          v100 = *v9;
          if (*v86 > *v9)
          {
            v101 = 1;
            do
            {
              v9[v101] = v100;
              v100 = v9[v101 - 2];
              --v101;
            }

            while (v99 > v100);
            v9[v101] = v99;
          }

          v86 += 4;
          ++v9;
        }

        while (v86 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>,google::protobuf::internal::RepeatedIterator<int>>(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 > *v13)
      {
        if (v14 > v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 > v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 <= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 <= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) > v21)
      {
        goto LABEL_62;
      }

      if (v21 <= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 <= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 <= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *(v58 - 1);
          v58 -= 4;
        }

        while (v21 > v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 <= v62);
          do
          {
            v63 = *(v58 - 1);
            v58 -= 4;
            v61 = v63;
          }

          while (v21 > v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 <= *v10)
      {
        if (v14 > v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 > *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 <= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 <= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 <= v25)
      {
        if (v26 > v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 > v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 <= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 <= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 <= v33)
      {
        if (v34 > v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 > v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 <= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 <= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 <= *v23)
      {
        if (v39 <= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 > v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 > v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 > v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 > v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *(v45 - 1);
          v45 -= 4;
        }

        while (v47 <= v21);
      }

      else
      {
        do
        {
          v46 = *(v45 - 1);
          v45 -= 4;
        }

        while (v46 <= v21);
      }

      if (v44 >= v45)
      {
        v53 = (v44 - 1);
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 > v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 <= v21);
      }

      while (v49 < v50);
      v53 = (v49 - 1);
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>>(v10, v53);
      v10 = (v53 + 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = (v10 + 1);
      v80 = v10[1];
      v81 = (v10 + 2);
      v82 = v10[2];
      v83 = *v10;
      if (v80 <= v83)
      {
        if (v82 > v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 > v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_158:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 <= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 <= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = (v10 + 1);
          v85 = v10 + 2;
          result = v83;
          if (v82 <= v83)
          {
            goto LABEL_158;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 <= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v102 = *v81;
      v103 = *v79;
      if (v102 > v103)
      {
        v10[1] = v102;
        v10[2] = v103;
        v104 = *v10;
        if (v102 > *v10)
        {
          *v10 = v102;
          v10[1] = v104;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = (v10 + 1);
      v66 = v10[1];
      v68 = (v10 + 2);
      v67 = v10[2];
      v69 = *v10;
      if (v66 <= v69)
      {
        if (v67 <= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 <= v67)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 > v69)
          {
            goto LABEL_163;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 <= v67)
          {
            goto LABEL_168;
          }
        }
      }

      else
      {
        if (v67 > v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_163;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 > v69)
        {
LABEL_163:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 > v73)
          {
            goto LABEL_164;
          }

LABEL_168:
          LODWORD(v67) = v95;
LABEL_169:
          v105 = *(a2 - 1);
          if (v105 <= v67)
          {
            return result;
          }

          v10[3] = v105;
          *(a2 - 1) = v67;
          v106 = v10[2];
          v96 = v10[3];
          if (v96 <= v106)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v106;
          v107 = v10[1];
          if (v96 <= v107)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v107;
          v97 = *v10;
          if (v96 <= *v10)
          {
            return result;
          }

LABEL_173:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 <= v67)
        {
          goto LABEL_168;
        }
      }

LABEL_164:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 > v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 > v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_169;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 > *v10)
  {
    if (v78 <= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v108 = *(a2 - 1);
      if (v108 <= v76)
      {
        return result;
      }

      v10[1] = v108;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 > v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 > *v10)
    {
      goto LABEL_173;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v14 = *a1;
      v15 = a1[1];
      v16 = *(a2 - 1);
      if (v15 > *a1)
      {
        if (v16 <= v15)
        {
          *a1 = v15;
          a1[1] = v14;
          v31 = *(a2 - 1);
          if (v31 <= v14)
          {
            return 1;
          }

          a1[1] = v31;
          *(a2 - 1) = v14;
          return 1;
        }

        else
        {
          *a1 = v16;
          *(a2 - 1) = v14;
          return 1;
        }
      }

      if (v16 <= v15)
      {
        return 1;
      }

      a1[1] = v16;
      *(a2 - 1) = v15;
      v30 = *a1;
      v29 = a1[1];
      if (v29 <= *a1)
      {
        return 1;
      }

LABEL_70:
      *a1 = v29;
      a1[1] = v30;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1[1];
      v5 = a1[2];
      v6 = *a1;
      if (v4 <= *a1)
      {
        if (v5 <= v4)
        {
          v9 = *a1;
          v6 = a1[1];
        }

        else
        {
          a1[1] = v5;
          a1[2] = v4;
          if (v5 > v6)
          {
            v7 = a1;
            v8 = a1 + 1;
            v9 = v5;
            v10 = v6;
            v11 = v4;
            goto LABEL_50;
          }

          v9 = v6;
          v6 = v5;
          v5 = v4;
        }
      }

      else
      {
        if (v5 > v4)
        {
          v7 = a1;
          v8 = a1 + 2;
          v9 = a1[2];
          v10 = a1[1];
          v11 = *a1;
LABEL_50:
          *v7 = v5;
          *v8 = v6;
          v6 = v10;
          v5 = v11;
          goto LABEL_61;
        }

        v7 = a1 + 1;
        v8 = a1 + 2;
        *a1 = v4;
        a1[1] = v6;
        v9 = v4;
        v10 = v5;
        v11 = v6;
        if (v5 > v6)
        {
          goto LABEL_50;
        }

        v9 = v4;
      }

LABEL_61:
      v43 = a1[3];
      if (v43 <= v5)
      {
        v5 = a1[3];
      }

      else
      {
        a1[2] = v43;
        a1[3] = v5;
        if (v43 > v6)
        {
          a1[1] = v43;
          a1[2] = v6;
          if (v43 > v9)
          {
            *a1 = v43;
            a1[1] = v9;
          }
        }
      }

      v44 = *(a2 - 1);
      if (v44 <= v5)
      {
        return 1;
      }

      a1[3] = v44;
      *(a2 - 1) = v5;
      v45 = a1[2];
      v29 = a1[3];
      if (v29 <= v45)
      {
        return 1;
      }

      a1[2] = v29;
      a1[3] = v45;
      v46 = a1[1];
      if (v29 <= v46)
      {
        return 1;
      }

      a1[1] = v29;
      a1[2] = v46;
      v30 = *a1;
      if (v29 <= *a1)
      {
        return 1;
      }

      goto LABEL_70;
    }

    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    if (v23 <= *a1)
    {
      if (v25 <= v23)
      {
        goto LABEL_55;
      }

      a1[1] = v25;
      a1[2] = v23;
      if (v25 <= v26)
      {
        goto LABEL_54;
      }

      v27 = a1;
      v28 = a1 + 1;
    }

    else if (v25 <= v23)
    {
      *a1 = v23;
      a1[1] = v26;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v23 = v26;
      if (v25 <= v26)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v27 = a1;
      v28 = a1 + 2;
      v23 = *a1;
    }

    *v27 = v25;
    *v28 = v26;
LABEL_54:
    v25 = v23;
LABEL_55:
    v39 = *(a2 - 1);
    if (v39 <= v25)
    {
      return 1;
    }

    *v24 = v39;
    *(a2 - 1) = v25;
    v40 = *v24;
    v41 = a1[1];
    if (v40 <= v41)
    {
      return 1;
    }

    a1[1] = v40;
    a1[2] = v41;
    v42 = *a1;
    if (v40 <= *a1)
    {
      return 1;
    }

    *a1 = v40;
    a1[1] = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v17 = a1 + 2;
    v18 = a1[2];
    v19 = a1 + 1;
    v20 = a1[1];
    v21 = *a1;
    if (v20 <= *a1)
    {
      if (v18 <= v20 || (a1[1] = v18, a1[2] = v20, v18 <= v21))
      {
LABEL_38:
        v32 = a1 + 3;
        if (a1 + 3 == a2)
        {
          return 1;
        }

        v33 = 0;
        for (i = 12; ; i += 4)
        {
          v35 = *v17;
          v17 = v32;
          v36 = *v32;
          if (v36 > v35)
          {
            break;
          }

LABEL_41:
          v32 = v17 + 1;
          if (v17 + 1 == a2)
          {
            return 1;
          }
        }

        v37 = i;
        do
        {
          *(a1 + v37) = v35;
          v38 = v37 - 4;
          if (v37 == 4)
          {
            *a1 = v36;
            if (++v33 != 8)
            {
              goto LABEL_41;
            }

            return v17 + 1 == a2;
          }

          v35 = *(a1 + v37 - 8);
          v37 -= 4;
        }

        while (v36 > v35);
        *(a1 + v38) = v36;
        if (++v33 != 8)
        {
          goto LABEL_41;
        }

        return v17 + 1 == a2;
      }

      v22 = a1;
    }

    else if (v18 <= v20)
    {
      *a1 = v20;
      a1[1] = v21;
      v22 = a1 + 1;
      v19 = a1 + 2;
      if (v18 <= v21)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v22 = a1;
      v19 = a1 + 2;
    }

    *v22 = v18;
    *v19 = v21;
    goto LABEL_38;
  }

  v12 = *(a2 - 1);
  v13 = *a1;
  if (v12 <= *a1)
  {
    return 1;
  }

  *a1 = v12;
  *(a2 - 1) = v13;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,google::protobuf::internal::RepeatedIterator<int>,google::protobuf::internal::RepeatedIterator<int>>(char *a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - a1;
  if (a2 == a1)
  {
    return v3;
  }

  v5 = v4 >> 2;
  if (v4 >> 2 >= 2)
  {
    v6 = ((v4 >> 2) - 2) >> 1;
    v7 = v6;
    do
    {
      v8 = 4 * v7;
      if (v6 >= (4 * v7) >> 2)
      {
        v9 = (v8 >> 1) | 1;
        v10 = &a1[4 * v9];
        if ((v8 >> 1) + 2 >= v5)
        {
          v11 = *v10;
          v13 = &a1[v8];
          v14 = *&a1[4 * v7];
          if (*v10 <= v14)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v11 = *v10;
          v12 = *(v10 + 1);
          if (*v10 >= v12)
          {
            v11 = *(v10 + 1);
          }

          if (*v10 > v12)
          {
            v10 += 4;
            v9 = (v8 >> 1) + 2;
          }

          v13 = &a1[v8];
          v14 = *&a1[4 * v7];
          if (v11 <= v14)
          {
LABEL_22:
            while (1)
            {
              *v13 = v11;
              v13 = v10;
              if (v6 < v9)
              {
                break;
              }

              v16 = (2 * v9) | 1;
              v10 = &a1[4 * v16];
              v9 = 2 * v9 + 2;
              if (v9 < v5)
              {
                v11 = *v10;
                v15 = *(v10 + 1);
                if (*v10 >= v15)
                {
                  v11 = *(v10 + 1);
                }

                if (*v10 <= v15)
                {
                  v9 = v16;
                }

                else
                {
                  v10 += 4;
                }

                if (v11 > v14)
                {
                  break;
                }
              }

              else
              {
                v11 = *v10;
                v9 = v16;
                if (*v10 > v14)
                {
                  break;
                }
              }
            }

            *v13 = v14;
          }
        }
      }

      v26 = v7-- <= 0;
    }

    while (!v26);
  }

  v3 = a2;
  if (a2 != a3)
  {
    if (v5 < 2)
    {
      v17 = *a1;
      v18 = a2;
      do
      {
        v19 = *v18;
        if (*v18 > v17)
        {
          *v18 = v17;
          *a1 = v19;
          v17 = v19;
        }

        v18 += 4;
      }

      while (v18 != a3);
LABEL_59:
      v3 = a3;
      goto LABEL_60;
    }

    v20 = a2;
    while (1)
    {
      v21 = *v20;
      if (*v20 > *a1)
      {
        *v20 = *a1;
        *a1 = v21;
        v22 = *(a1 + 1);
        if (v4 == 8)
        {
          v23 = a1 + 4;
          v24 = 1;
          if (v22 <= v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v25 = *(a1 + 2);
          v26 = v22 <= v25;
          if (v22 >= v25)
          {
            v22 = *(a1 + 2);
          }

          if (v26)
          {
            v23 = a1 + 4;
          }

          else
          {
            v23 = a1 + 8;
          }

          if (v26)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          if (v22 <= v21)
          {
LABEL_48:
            v27 = a1;
            while (1)
            {
              *v27 = v22;
              v27 = v23;
              if (((v5 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[4 * v29];
              v24 = 2 * v24 + 2;
              if (v24 < v5)
              {
                v22 = *v23;
                v28 = *(v23 + 1);
                if (*v23 >= v28)
                {
                  v22 = *(v23 + 1);
                }

                if (*v23 <= v28)
                {
                  v24 = v29;
                }

                else
                {
                  v23 += 4;
                }

                if (v22 > v21)
                {
                  break;
                }
              }

              else
              {
                v22 = *v23;
                v24 = v29;
                if (*v23 > v21)
                {
                  break;
                }
              }
            }

            *v27 = v21;
          }
        }
      }

      v20 += 4;
      if (v20 == a3)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (v5 >= 2)
  {
    do
    {
      v31 = 0;
      v32 = *a1;
      v33 = (v5 - 2) >> 1;
      v34 = a1;
      do
      {
        while (1)
        {
          v37 = &v34[4 * v31 + 4];
          v38 = (2 * v31) | 1;
          v31 = 2 * v31 + 2;
          if (v31 < v5)
          {
            break;
          }

          v31 = v38;
          *v34 = *v37;
          v34 = v37;
          if (v38 > v33)
          {
            goto LABEL_73;
          }
        }

        v35 = *v37;
        v36 = *(v37 + 1);
        if (*v37 >= v36)
        {
          v35 = *(v37 + 1);
        }

        if (*v37 <= v36)
        {
          v31 = v38;
        }

        else
        {
          v37 += 4;
        }

        *v34 = v35;
        v34 = v37;
      }

      while (v31 <= v33);
LABEL_73:
      a2 -= 4;
      if (v37 == a2)
      {
        *v37 = v32;
      }

      else
      {
        *v37 = *a2;
        *a2 = v32;
        v39 = (v37 - a1 + 4) >> 2;
        v26 = v39 < 2;
        v40 = v39 - 2;
        if (!v26)
        {
          v41 = v40 >> 1;
          v42 = &a1[4 * v41];
          v43 = *v42;
          v44 = *v37;
          if (*v42 > *v37)
          {
            do
            {
              *v37 = v43;
              v37 = v42;
              if (!v41)
              {
                break;
              }

              v41 = (v41 - 1) >> 1;
              v42 = &a1[4 * v41];
              v43 = *v42;
            }

            while (*v42 > v44);
            *v37 = v44;
          }
        }
      }

      v26 = v5-- <= 2;
    }

    while (!v26);
  }

  return v3;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::find_or_prepare_insert<unsigned long long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long long,int>,absl::lts_20240722::hash_internal::Hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<std::pair<unsigned long long const,int>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = a1[3];
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v8, a1);
}

uint64_t std::__function::__func<operations_research::sat::ApplyVariableMapping(std::vector<int> const&,operations_research::sat::PresolveContext const&)::$_0,std::allocator<operations_research::sat::ApplyVariableMapping(std::vector<int> const&,operations_research::sat::PresolveContext const&)::$_0>,void ()(int *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3E380;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::ApplyVariableMapping(std::vector<int> const&,operations_research::sat::PresolveContext const&)::$_0,std::allocator<operations_research::sat::ApplyVariableMapping(std::vector<int> const&,operations_research::sat::PresolveContext const&)::$_0>,void ()(int *)>::operator()(uint64_t a1, int **a2)
{
  v2 = **a2;
  if (~v2 <= v2)
  {
    v3 = **a2;
  }

  else
  {
    v3 = ~v2;
  }

  result = *(**(a1 + 8) + 4 * v3);
  if ((result & 0x80000000) != 0)
  {
    operations_research::sat::ApplyVariableMapping(result);
  }

  **a2 = result ^ (v2 >> 31);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::ApplyVariableMapping(std::vector<int> const&,operations_research::sat::PresolveContext const&)::$_0,std::allocator<operations_research::sat::ApplyVariableMapping(std::vector<int> const&,operations_research::sat::PresolveContext const&)::$_0>,void ()(int *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat20ApplyVariableMappingERKNSt3__16vectorIiNS1_9allocatorIiEEEERKNS0_15PresolveContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat20ApplyVariableMappingERKNSt3__16vectorIiNS1_9allocatorIiEEEERKNS0_15PresolveContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat20ApplyVariableMappingERKNSt3__16vectorIiNS1_9allocatorIiEEEERKNS0_15PresolveContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat20ApplyVariableMappingERKNSt3__16vectorIiNS1_9allocatorIiEEEERKNS0_15PresolveContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::vector<operations_research::sat::IntegerVariableProto>::__append(uint64_t a1, unint64_t a2, const operations_research::sat::IntegerVariableProto *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 3) >= a2)
  {
    v11 = 56 * a2;
    if (56 * a2)
    {
      v12 = (v6 + v11);
      do
      {
        operations_research::sat::IntegerVariableProto::IntegerVariableProto(v6, 0, a3);
        v6 = (v6 + 56);
        v11 -= 56;
      }

      while (v11);
      v6 = v12;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3);
    if (v7 + a2 > 0x492492492492492)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = 56 * v7;
    v19 = v13;
    *(&v20 + 1) = 0;
    v14 = 56 * a2;
    if (56 * a2)
    {
      v15 = (v13 + v14);
      do
      {
        operations_research::sat::IntegerVariableProto::IntegerVariableProto(v13, 0, a3);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
      v13 = v19;
    }

    else
    {
      v15 = v13;
    }

    *&v20 = v15;
    v16 = *(a1 + 8);
    v17 = (v13 + *a1 - v16);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::IntegerVariableProto>,operations_research::sat::IntegerVariableProto*>(a1, *a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v20;
    if (v18)
    {
      operator delete(v18);
    }
  }
}

void sub_23CADC1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::IntegerVariableProto>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CADC1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::IntegerVariableProto>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::IntegerVariableProto>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    operations_research::sat::IntegerVariableProto::~IntegerVariableProto((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::IntegerVariableProto>,operations_research::sat::IntegerVariableProto*>(uint64_t a1, operations_research::sat::IntegerVariableProto *a2, operations_research::sat::IntegerVariableProto *a3, std::string *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::IntegerVariableProto::IntegerVariableProto(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      size = a4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
        v9 = v7->__r_.__value_.__l.__size_;
        if (v9)
        {
LABEL_11:
          if (size != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::IntegerVariableProto::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = v7->__r_.__value_.__l.__size_;
        if (v9)
        {
          goto LABEL_11;
        }
      }

      if (size != v9)
      {
        goto LABEL_9;
      }

LABEL_3:
      operations_research::sat::IntegerVariableProto::InternalSwap(a4, v7);
LABEL_4:
      v7 = (v7 + 56);
      a4 = (a4 + 56);
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::IntegerVariableProto::~IntegerVariableProto(v6);
          v6 = (v6 + 56);
        }

        return;
      }
    }
  }
}

uint64_t operations_research::sat::CpModelView::MedianValue@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = -1;
  *(a3 + 8) = -1;
  *(a3 + 16) = 0;
  v3 = *this;
  if (~a2 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = ~a2;
  }

  v5 = *(v3[6] + 4 * v4);
  if (v5 == -1)
  {
    v6 = *(*v3 + 4 * v4);
    if (v6 != -1)
    {
      v7 = operations_research::sat::IntegerEncoder::FullDomainEncoding(*(this + 24), v6 ^ (a2 >> 31));
      v8 = *v7;
      v9 = *(v7 + 8);
      if (v9 - *v7 >= 0)
      {
        v10 = v9 - *v7;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  else
  {
    *a3 = (__PAIR64__(v5, a2) >> 31) ^ 1;
  }

  return this;
}

uint64_t operations_research::sat::ConstructUserSearchStrategy@<X0>(uint64_t this@<X0>, const operations_research::sat::CpModelProto *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 80);
  if (v5)
  {
    v7 = 0;
    __p = 0;
    v16 = 0;
    v17 = 0;
    v9 = *(this + 72);
    v8 = (this + 72);
    v10 = (v9 + 7);
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    v12 = 8 * v5;
    do
    {
      if (v7 >= v17)
      {
        v7 = std::vector<operations_research::sat::DecisionStrategyProto>::__emplace_back_slow_path<operations_research::sat::DecisionStrategyProto const&>(&__p, *v11);
      }

      else
      {
        operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(v7, 0, *v11);
        v7 = (v7 + 80);
      }

      v16 = v7;
      ++v11;
      v12 -= 8;
    }

    while (v12);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelView>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
    v13 = 0uLL;
    v14 = 0;
    v18 = &v13;
    v19 = 0;
    if (v16 != __p)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v16 - __p) >> 4) < 0x333333333333334)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    *(a3 + 24) = 0;
    operator new();
  }

  *(a3 + 24) = 0;
  return this;
}

void sub_23CADC644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0::~$_0(va);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CADC660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADC674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADC688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADC69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__exception_guard_exceptions<std::vector<operations_research::sat::DecisionStrategyProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va1);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADC6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADC6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADC6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v14 = va_arg(va1, void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if (v9)
  {
    v11 = (v8 - 80);
    v12 = -v9;
    do
    {
      operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto(v11);
      v11 = (v13 - 80);
      v12 += 80;
    }

    while (v12);
  }

  std::__exception_guard_exceptions<std::vector<operations_research::sat::DecisionStrategyProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va1);
  std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelView>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelView>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelView>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::CpModelView>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::CpModelView>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::CpModelView>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

uint64_t operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<operations_research::sat::DecisionStrategyProto>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *operations_research::sat::ConstructHeuristicSearchStrategy@<X0>(operations_research::sat *this@<X0>, const operations_research::sat::CpModelProto *a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(this + 6);
  v6 = this + 48;
  v8 = (v7 + 7);
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v6 + 2);
  if (v10)
  {
    v11 = 8 * v10;
    while ((*(*v9 + 60) & 0xFFFFFFFD) != 0x14)
    {
      v9 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    v14 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
    v16 = v14;
    if (*(v14 + 337) == 1)
    {
      operations_research::sat::DisjunctivePrecedenceSearchHeuristic(a2, v19);
      v17[1] = std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__emplace_back_slow_path<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>(v17, v19);
      if (v20 == v19)
      {
        (*(*v20 + 32))(v20);
        if ((*(v16 + 338) & 1) == 0)
        {
LABEL_22:
          if (*(v16 + 747) == 1)
          {
            operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearPropagator>(a2);
          }

LABEL_24:
          operations_research::sat::SchedulingSearchHeuristic(a2, v19);
        }
      }

      else
      {
        if (v20)
        {
          (*(*v20 + 40))(v20);
        }

        if ((*(v16 + 338) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else if (*(v14 + 338) != 1)
    {
      goto LABEL_24;
    }

    operations_research::sat::CumulativePrecedenceSearchHeuristic(a2, v15);
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];

  return operations_research::sat::PseudoCost(a2, a2, a3);
}

void sub_23CADCFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(uint64_t a1)
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

void **std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::sat::ConstructIntegerCompletionSearchStrategy@<X0>(unsigned int **a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  result = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
  if (*(result + 754))
  {
    v16 = a3;
    v17 = a4;
    __p = 0;
    v19 = 0;
    v20 = 0;
    v9 = *a1;
    v10 = a1[1];
    if (*a1 == v10)
    {
LABEL_19:
      operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(&__p, v16, v17);
    }

    v11 = 0;
    while (1)
    {
      v12 = *v9;
      if (v12 != -1)
      {
        if ((a2 ^ v12) == 1)
        {
          v13 = v11;
          v14 = v11 >> 2;
          if (((v11 >> 2) + 1) >> 62)
          {
            goto LABEL_20;
          }

          if (v11 >> 2 != -1)
          {
            if (!(((v11 >> 2) + 1) >> 62))
            {
              operator new();
            }

            goto LABEL_21;
          }

          *(4 * v14) = a2;
          v11 = 4 * v14 + 4;
        }

        else
        {
          v13 = v11;
          v15 = v11 >> 2;
          if ((v15 + 1) >> 62)
          {
LABEL_20:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v15 != -1)
          {
            if (!((v15 + 1) >> 62))
            {
              operator new();
            }

LABEL_21:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          MEMORY[0xFFFFFFFFFFFFFFFC] = *v9;
          v11 = 0;
        }

        memcpy(0, 0, v13);
        __p = 0;
        v20 = 0;
        v19 = v11;
      }

      if (++v9 == v10)
      {
        goto LABEL_19;
      }
    }
  }

  *a4 = &unk_284F3E4C8;
  a4[3] = a4;
  return result;
}

void sub_23CADD3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::ConstructHintSearchStrategy(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::CpModelMapping *a3, operations_research::sat::Model *a4)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  __p = 0;
  v4 = *(this + 17);
  if (!v4)
  {
    v4 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
  }

  if (*(v4 + 4) < 1)
  {
LABEL_41:
    operations_research::sat::FollowHint(&v36, &__p, a3);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v30 = this;
  v31 = a2;
  while (1)
  {
    v9 = *(v4[3] + v8);
    if ((v9 & 0x80000000) != 0)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 390);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v32);
    }

    v10 = *(*(a2 + 6) + 4 * v9);
    if (v10 == -1)
    {
      v12 = *(*a2 + 4 * v9) << 32;
      v11 = 0xFFFFFFFFLL;
      v13 = v38;
      if (v7 >= v38)
      {
LABEL_14:
        v14 = v36;
        v15 = v7 - v36;
        v16 = (v7 - v36) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v18 = v13 - v36;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = (8 * v16);
        *v20 = v12 | v11;
        v7 = v20 + 1;
        memcpy(0, v14, v15);
        v36 = 0;
        v38 = 0;
        if (v14)
        {
          operator delete(v14);
        }

        this = v30;
        a2 = v31;
        goto LABEL_26;
      }
    }

    else
    {
      v11 = ((2 * v10) >> 1);
      v12 = 0xFFFFFFFF00000000;
      v13 = v38;
      if (v7 >= v38)
      {
        goto LABEL_14;
      }
    }

    *v7++ = v12 | v11;
    v6 = v34;
    v5 = v35;
LABEL_26:
    v37 = v7;
    v21 = *(this + 17);
    if (!v21)
    {
      v21 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
    }

    v22 = v21[6][v8];
    if (v6 < v5)
    {
      *v6 = v22;
      v6 += 8;
    }

    else
    {
      v23 = __p;
      v24 = v6 - __p;
      v25 = (v6 - __p) >> 3;
      v26 = v25 + 1;
      if ((v25 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if ((v5 - __p) >> 2 > v26)
      {
        v26 = (v5 - __p) >> 2;
      }

      if (v5 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        if (!(v27 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = (8 * v25);
      v5 = 0;
      *v28 = v22;
      v6 = (v28 + 1);
      memcpy(0, v23, v24);
      __p = 0;
      v35 = 0;
      if (v23)
      {
        operator delete(v23);
      }

      this = v30;
      a2 = v31;
    }

    v34 = v6;
    ++v8;
    v4 = *(this + 17);
    if (!v4)
    {
      v4 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
    }

    if (v8 >= *(v4 + 4))
    {
      goto LABEL_41;
    }
  }
}

void sub_23CADD6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a18;
    if (!a18)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::ConstructFixedSearchStrategy(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (*(a1 + 24))
  {
    v7 = std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__emplace_back_slow_path<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&>(&v11, a1);
    v12 = v7;
    v8 = *(a2 + 24);
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a2 + 24);
    if (!v8)
    {
LABEL_3:
      v9 = *(a3 + 24);
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  if (v7 >= v13)
  {
    v7 = std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__emplace_back_slow_path<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&>(&v11, a2);
    v12 = v7;
    v9 = *(a3 + 24);
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
    }

    else
    {
      *(v7 + 24) = (*(*v8 + 16))(v8);
    }

    v7 += 32;
    v12 = v7;
    v9 = *(a3 + 24);
    if (!v9)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  if (v7 >= v13)
  {
    v7 = std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__emplace_back_slow_path<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&>(&v11, a3);
  }

  else
  {
    if (v9 == a3)
    {
      *(v7 + 24) = v7;
      (*(**(a3 + 24) + 24))(*(a3 + 24), v7);
    }

    else
    {
      *(v7 + 24) = (*(*v9 + 16))(v9);
    }

    v7 += 32;
  }

  v12 = v7;
LABEL_20:
  memset(__p, 0, sizeof(__p));
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>(__p, v11, v7, (v7 - v11) >> 5);
  operations_research::sat::SequentialSearch(__p, a4);
}

void sub_23CADDA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CADDA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](&a9);
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_23CADDA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void operations_research::sat::InstrumentSearchStrategy(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[8] >= 1)
  {
    v7 = 0;
    v8 = a1 + 6;
    v9 = 8;
    do
    {
      if (*(*a2 + 4 * v7) != -1)
      {
        if (*v8)
        {
          v10 = *v8 + v9 - 1;
        }

        else
        {
          v10 = (a1 + 6);
        }

        v11 = *(*v10 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        if ((*(v11 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v11 + 8))
          {
LABEL_12:
            operator new();
          }
        }

        else if (*(v11 + 23))
        {
          goto LABEL_12;
        }
      }

      ++v7;
      v9 += 8;
    }

    while (v7 < a1[8]);
  }

  v18 = a1;
  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,false>(0, 0, &v18, 0, 1);
  v12 = a2[1] - *a2;
  if (v12)
  {
    if (v12 < 0x3FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(a3 + 24);
  if (v13)
  {
    if (v13 == a3)
    {
      v20 = v19;
      (*(*v13 + 24))(v13, v19);
LABEL_21:
      v21 = a4;
      __p = 0;
      v23 = 0;
      v24 = 0;
      v14 = a2[1] - *a2;
      if (v14)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      operations_research::sat::CpModelProto::CpModelProto(v25, 0, a1);
      memset(&v25[160], 0, 48);
      *(a5 + 24) = 0;
      operator new();
    }

    v13 = (*(*v13 + 16))(v13);
  }

  v20 = v13;
  goto LABEL_21;
}

void sub_23CADE044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  operator delete(v47);
  operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0::~$_0(&a13);
  if (v46)
  {
    operator delete(v46);
    if (!v45)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_3;
  }

  operator delete(v45);
  _Unwind_Resume(a1);
}

void *operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0::~$_0(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  operations_research::sat::CpModelProto::~CpModelProto((a1 + 8));
  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5 == a1)
  {
    (*(*v5 + 32))(v5);
    return a1;
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }
}

uint64_t operations_research::sat::ValidSumSeed(operations_research::sat *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::ValidSumSeed(a2);
  }

  v2 = a2 + this;
  v3 = 0x7FFFFFFFLL;
  if (v2 < 0x7FFFFFFF)
  {
    v3 = a2 + this;
  }

  return -2147483647 * ((v2 - v3 + 2147483646) / 0x7FFFFFFFuLL) + v2;
}

void operations_research::sat::GetNamedParameters(operations_research::sat *this@<X0>, const operations_research::sat::SatParameters *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = &unk_23CE31C20;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("default", a3, v54);
  if (v56[0].u8[0] == 1)
  {
    v87 = "default";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v55, &v87);
  }

  operations_research::sat::SatParameters::CopyFrom((v55 + 24), this);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v75 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("no_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "no_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 1;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("default_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "default_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 2;
  v79 = 0;
  *v57 = vorr_s8(*v57, 0x80000000010);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("max_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "max_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v66 = 1;
  v56[0] = vorr_s8(v56[0], 0x40000000002000);
  v75 = 0;
  v59 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("core", v4, &v87);
  if (v89 == 1)
  {
    v86 = "core";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v66 = 1;
  v56[0] = vorr_s8(v56[0], 0x40000000002000);
  v75 = 1;
  v59 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("core_default_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "core_default_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v66 = 1;
  v56[0] = vorr_s8(v56[0], 0x40000000002000);
  v75 = 2;
  v59 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("core_max_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "core_max_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v59 = 0;
  v66 = 1;
  v68 = 1;
  v56[0] = vorr_s8(v56[0], 0x1040000000002000);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("max_hs", v4, &v87);
  if (v89 == 1)
  {
    v86 = "max_hs";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v67 = 1;
  v78 = 0;
  v75 = 0;
  v56[0].i32[1] |= 0x8000000u;
  *v57 |= 0x20000010u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("lb_tree_search_no_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "lb_tree_search_no_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 2;
  *v57 |= 0x10u;
  if (*(this + 773) == 1)
  {
    v72 = 1;
    v70 = 1;
    v85 = 5000;
    v62 = 16843009;
    v58 |= 0x20u;
    v73 = 257;
    *(v56 + 4) = vorr_s8(*(v56 + 4), 0x390000078000);
  }

  v79 = 0;
  v83 = 100000;
  *&v57[4] = vorr_s8(*&v57[4], 0x800000000800);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("lb_tree_search", v4, &v87);
  if (v89 == 1)
  {
    v86 = "lb_tree_search";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v64 = 1;
  v75 = 0;
  v56[0].i32[1] |= 0x100000u;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("objective_lb_search_no_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "objective_lb_search_no_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 1;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("objective_lb_search", v4, &v87);
  if (v89 == 1)
  {
    v86 = "objective_lb_search";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  if (*(this + 773) == 1)
  {
    v72 = 1;
    v70 = 1;
    v85 = 5000;
    v62 = 16843009;
    v58 |= 0x20u;
    v73 = 257;
    *(v56 + 4) = vorr_s8(*(v56 + 4), 0x390000078000);
  }

  v75 = 2;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("objective_lb_search_max_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "objective_lb_search_max_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v65 = 1;
  v5 = v56[0].i32[1];
  v56[0].i32[1] |= 0x200000u;
  v74 = 1;
  v77 = 0;
  v80 = 0;
  *v57 = vorr_s8(*v57, 0x1000000000000104);
  if (*(this + 773) == 1)
  {
    v72 = 1;
    v70 = 1;
    v85 = 5000;
    v62 = 16843009;
    v58 |= 0x20u;
    v73 = 257;
    *(v56 + 4) = (__PAIR64__(v56[1].u32[0], v5 | 0x278000u) | 0x390000000000);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("objective_shaving_search", v4, &v87);
  if (v89 == 1)
  {
    v86 = "objective_shaving_search";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("objective_shaving_search_no_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "objective_shaving_search_no_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 2;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("objective_shaving_search_max_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "objective_shaving_search_max_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v63 = 1;
  v6 = v56[0].i32[1];
  v56[0] = vorr_s8(v56[0], 0x8000000002000);
  v84 = 2;
  v7 = v58;
  v59 = 0;
  v58 |= 2u;
  if (*(this + 773) == 1)
  {
    v72 = 1;
    v70 = 1;
    v85 = 5000;
    v62 = 16843009;
    v58 = v7 | 0x22;
    v73 = 257;
    v56[0].i32[1] = v6 | 0xF8000;
    v56[1].i32[0] |= 0x3900u;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("probing", v4, &v87);
  if (v89 == 1)
  {
    v86 = "probing";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("probing_no_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "probing_no_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v79 = 0;
  *v57 = vorr_s8(*v57, 0x80000000010);
  v83 = 100000;
  v75 = 2;
  *&v57[8] |= 0x8000u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("probing_max_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "probing_max_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v59 = 0;
  v56[0].i32[0] |= 0x2000u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("auto", v4, &v87);
  if (v89 == 1)
  {
    v86 = "auto";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v59 = 1;
  v71 = 0;
  v56[0].i32[0] |= 0x2000u;
  v56[1].i32[0] |= 0x600u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("fixed", v4, &v87);
  if (v89 == 1)
  {
    v86 = "fixed";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v59 = 5;
  v56[0].i32[0] |= 0x2000u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("quick_restart", v4, &v87);
  if (v89 == 1)
  {
    v86 = "quick_restart";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 0;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("quick_restart_no_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "quick_restart_no_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  v75 = 2;
  *v57 |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("quick_restart_max_lp", v4, &v87);
  if (v89 == 1)
  {
    v86 = "quick_restart_max_lp";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v75 = 2;
  v59 = 3;
  *v57 |= 0x10u;
  v56[0].i32[0] |= 0x2000u;
  if (*(this + 773) == 1)
  {
    v72 = 1;
    v70 = 1;
    v85 = 5000;
    v62 = 16843009;
    v58 |= 0x20u;
    v73 = 257;
    *(v56 + 4) = vorr_s8(*(v56 + 4), 0x390000078000);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("reduced_costs", v4, &v87);
  if (v89 == 1)
  {
    v86 = "reduced_costs";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v75 = 2;
  *v57 |= 0x10u;
  v59 = 4;
  v69 = 1;
  v56[0].i32[0] |= 0x2000u;
  v56[1].i32[0] |= 0x10u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("pseudo_costs", v4, &v87);
  if (v89 == 1)
  {
    v86 = "pseudo_costs";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v76 = 0;
  *v57 |= 0x80u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("less_encoding", v4, &v87);
  if (v89 == 1)
  {
    v86 = "less_encoding";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v59 = 0;
  v56[0].i32[0] |= 0x2000u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("shared_tree", v4, &v87);
  if (v89 == 1)
  {
    v86 = "shared_tree";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  operations_research::sat::SatParameters::SatParameters(v54, 0, this);
  v61 = 0;
  v74 = 1;
  v77 = 0;
  v80 = 0;
  *v57 = vorr_s8(*v57, 0x1000000000000104);
  v82 = 0;
  v60 = 0;
  v56[0].i32[1] |= 0x280u;
  v81 = 1;
  *&v57[8] |= 0x1008u;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>("lns", v4, &v87);
  if (v89 == 1)
  {
    v86 = "lns";
    _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(v88, &v86);
  }

  operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
  operations_research::sat::SatParameters::~SatParameters(v54);
  v50 = this;
  v11 = *(this + 15);
  v10 = this + 120;
  v12 = (v11 + 7);
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v10 + 2);
  if (v14)
  {
    v52 = &v13[8 * v14];
    v53 = v4;
LABEL_87:
    while (2)
    {
      v25 = *v13;
      v26 = (*(*v13 + 176) & 0xFFFFFFFFFFFFFFFCLL);
      _X8 = v4[2];
      __asm { PRFM            #4, [X8] }

      v33 = *(v26 + 23);
      if (v33 >= 0)
      {
        v34 = (*(*v13 + 176) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v34 = *v26;
      }

      if (v33 >= 0)
      {
        v35 = *(v26 + 23);
      }

      else
      {
        v35 = *(v26 + 1);
      }

      v36 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v34, v35, v8, v9);
      v23 = 0;
      v37 = (((v36 + v35) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v36 + v35));
      v39 = v4[2];
      v38 = v4[3];
      v24 = (v39 >> 12) ^ (v37 >> 7);
      v40 = vdup_n_s8(v37 & 0x7F);
      v41 = *(v26 + 23);
      if (v41 >= 0)
      {
        v42 = *(v26 + 23);
      }

      else
      {
        v42 = *(v26 + 1);
      }

      if (v41 < 0)
      {
        v26 = *v26;
      }

      v43 = *v4;
      while (1)
      {
        v15 = v24 & v43;
        v16 = *(v39 + (v24 & v43));
        v17 = vceq_s8(v16, v40);
        if (v17)
        {
          v51 = v23;
          while (1)
          {
            v18 = v38 + 1000 * ((v15 + (__clz(__rbit64(v17)) >> 3)) & v43);
            v19 = *(v18 + 23);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = *(v18 + 8);
            }

            if (v19 == v42)
            {
              v21 = v20 >= 0 ? v18 : *v18;
              if (!memcmp(v21, v26, v42))
              {
                break;
              }
            }

            v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
            v23 = v51;
            if (!v17)
            {
              goto LABEL_84;
            }
          }

          v4 = v53;
          operations_research::sat::SatParameters::MergeImpl((v18 + 24), v25, v22);
          v13 += 8;
          if (v13 == v52)
          {
            return;
          }

          goto LABEL_87;
        }

LABEL_84:
        if (vceq_s8(v16, 0x8080808080808080))
        {
          break;
        }

        v23 += 8;
        v24 = v23 + v15;
      }

      operations_research::sat::SatParameters::SatParameters(v54, 0, v50);
      v4 = v53;
      operations_research::sat::SatParameters::MergeImpl(v54, v25, v44);
      v45 = *(v25 + 22) & 0xFFFFFFFFFFFFFFFCLL;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<std::string>(v53, v45, v46, v47, &v87);
      if (v89 == 1)
      {
        v48 = v88;
        if (*(v45 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v88, *v45, *(v45 + 8));
        }

        else
        {
          v49 = *v45;
          v88->__r_.__value_.__r.__words[2] = *(v45 + 16);
          *&v48->__r_.__value_.__l.__data_ = v49;
        }

        operations_research::sat::SatParameters::SatParameters(v48[1].__r_.__value_.__r.__words, 0);
      }

      operations_research::sat::SatParameters::CopyFrom(&v88[1], v54);
      operations_research::sat::SatParameters::~SatParameters(v54);
      v13 += 8;
      if (v13 != v52)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23CADF50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  operations_research::sat::SatParameters::~SatParameters(va);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(v7);
  _Unwind_Resume(a1);
}

void *absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(void *a1)
{
  if (*a1)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::destroy_slots(a1);
    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

void operations_research::sat::GetDiverseSetOfParameters(operations_research::sat *this@<X0>, const operations_research::sat::SatParameters *a2@<X1>, const operations_research::sat::CpModelProto *a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v287 = *MEMORY[0x277D85DE8];
  operations_research::sat::GetNamedParameters(this, a2, &v271);
  if (*(v4 + 20))
  {
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 6);
    if (v10)
    {
      v11 = (v10 + 7);
    }

    else
    {
      v11 = (v4 + 48);
    }

    v12 = *(v4 + 14);
    if (v12)
    {
      v13 = 8 * v12 - 8;
      do
      {
        v14 = *v11++;
        v15 = *(v14 + 60) & 0xFFFFFFFD;
        v9 = v15 != 20;
        _ZF = v15 == 20 || v13 == 0;
        v13 -= 8;
      }

      while (!_ZF);
    }

    else
    {
      v9 = 1;
    }
  }

  memset(&v270, 0, sizeof(v270));
  v263 = this;
  v17 = this + 144;
  v18 = *(this + 18);
  if (v18)
  {
    v19 = (v18 + 7);
  }

  else
  {
    v19 = (this + 144);
  }

  v20 = *(v17 + 2);
  if (v20)
  {
    end = 0;
    v22 = 8 * v20;
    do
    {
      v24 = *v19;
      if (end < v270.__end_cap_.__value_)
      {
        if (*(v24 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(end, *v24, *(v24 + 8));
        }

        else
        {
          v23 = *v24;
          *(end + 16) = *(v24 + 16);
          *end = v23;
        }

        end += 24;
      }

      else
      {
        end = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v270, v24);
      }

      v270.__end_ = end;
      ++v19;
      v22 -= 8;
    }

    while (v22);
  }

  else
  {
    end = 0;
  }

  v25 = *(v263 + 20);
  v262 = a4;
  v264 = v4;
  v261 = v9;
  if (!v25)
  {
    if (end >= v270.__end_cap_.__value_)
    {
      begin = v270.__begin_;
      v56 = end - v270.__begin_;
      v57 = 0xAAAAAAAAAAAAAAABLL * ((end - v270.__begin_) >> 3);
      v58 = v57 + 1;
      if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v58)
      {
        v58 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v59 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v59 = v58;
      }

      if (v59)
      {
        if (v59 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v60 = (8 * ((end - v270.__begin_) >> 3));
      strcpy(v60, "default_lp");
      v60[23] = 10;
      v54 = 24 * v57 + 24;
      v61 = &v60[-v56];
      memcpy(&v60[-v56], begin, v56);
      v270.__begin_ = v61;
      v270.__end_ = v54;
      v270.__end_cap_.__value_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      strcpy(end, "default_lp");
      v53 = DWORD2(v275);
      *(end + 11) = v275;
      *(end + 19) = v53;
      *(end + 23) = 10;
      v54 = end + 24;
    }

    v270.__end_ = v54;
    if (v54 >= v270.__end_cap_.__value_)
    {
      v64 = v270.__begin_;
      v65 = v54 - v270.__begin_;
      v66 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v270.__begin_) >> 3);
      v67 = v66 + 1;
      if (v66 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v67)
      {
        v67 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v68 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v68 = v67;
      }

      if (v68)
      {
        if (v68 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v69 = 24 * v66;
      *v69 = 0x6465786966;
      *(v69 + 23) = 5;
      v63 = 24 * v66 + 24;
      v70 = (v69 - v65);
      memcpy((v69 - v65), v64, v65);
      v270.__begin_ = v70;
      v270.__end_ = v63;
      v270.__end_cap_.__value_ = 0;
      if (v64)
      {
        operator delete(v64);
      }
    }

    else
    {
      *v54 = 0x6465786966;
      v62 = *(&v275 + 7);
      *(v54 + 8) = v275;
      *(v54 + 15) = v62;
      *(v54 + 23) = 5;
      v63 = v54 + 24;
    }

    v270.__end_ = v63;
    if (v63 >= v270.__end_cap_.__value_)
    {
      v73 = v270.__begin_;
      v74 = v63 - v270.__begin_;
      v75 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v270.__begin_) >> 3);
      v76 = v75 + 1;
      if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v76)
      {
        v76 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v77 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v77 = v76;
      }

      if (v77)
      {
        if (v77 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v78 = 24 * v75;
      *v78 = 1701998435;
      *(v78 + 23) = 4;
      v72 = 24 * v75 + 24;
      v79 = (v78 - v74);
      memcpy((v78 - v74), v73, v74);
      v270.__begin_ = v79;
      v270.__end_ = v72;
      v270.__end_cap_.__value_ = 0;
      if (v73)
      {
        operator delete(v73);
      }
    }

    else
    {
      *v63 = 1701998435;
      v71 = *(&v275 + 7);
      *(v63 + 8) = v275;
      *(v63 + 15) = v71;
      *(v63 + 23) = 4;
      v72 = v63 + 24;
    }

    v270.__end_ = v72;
    if (v72 >= v270.__end_cap_.__value_)
    {
      v82 = v270.__begin_;
      v83 = v72 - v270.__begin_;
      v84 = 0xAAAAAAAAAAAAAAABLL * ((v72 - v270.__begin_) >> 3);
      v85 = v84 + 1;
      if (v84 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v85)
      {
        v85 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v86 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v86 = v85;
      }

      if (v86)
      {
        if (v86 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v87 = 24 * v84;
      *v87 = 0x706C5F6F6ELL;
      *(v87 + 23) = 5;
      v81 = 24 * v84 + 24;
      v88 = (v87 - v83);
      memcpy((v87 - v83), v82, v83);
      v270.__begin_ = v88;
      v270.__end_ = v81;
      v270.__end_cap_.__value_ = 0;
      if (v82)
      {
        operator delete(v82);
      }
    }

    else
    {
      *v72 = 0x706C5F6F6ELL;
      v80 = *(&v275 + 7);
      *(v72 + 8) = v275;
      *(v72 + 15) = v80;
      *(v72 + 23) = 5;
      v81 = v72 + 24;
    }

    v270.__end_ = v81;
    if (v81 >= v270.__end_cap_.__value_)
    {
      v91 = v270.__begin_;
      v92 = v81 - v270.__begin_;
      v93 = 0xAAAAAAAAAAAAAAABLL * ((v81 - v270.__begin_) >> 3);
      v94 = v93 + 1;
      if (v93 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v94)
      {
        v94 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v95 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v95 = v94;
      }

      if (v95)
      {
        if (v95 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v96 = 24 * v93;
      *v96 = 0x706C5F78616DLL;
      *(v96 + 23) = 6;
      v90 = 24 * v93 + 24;
      v97 = (24 * v93 - v92);
      memcpy(v97, v91, v92);
      v270.__begin_ = v97;
      v270.__end_ = v90;
      v270.__end_cap_.__value_ = 0;
      if (v91)
      {
        operator delete(v91);
      }
    }

    else
    {
      *v81 = 0x706C5F78616DLL;
      v89 = *(&v275 + 7);
      *(v81 + 8) = v275;
      *(v81 + 15) = v89;
      *(v81 + 23) = 6;
      v90 = v81 + 24;
    }

    v270.__end_ = v90;
    qmemcpy(v267, "start", 5);
    if (v90 >= v270.__end_cap_.__value_)
    {
      v99 = v270.__begin_;
      v100 = v90 - v270.__begin_;
      v101 = 0xAAAAAAAAAAAAAAABLL * ((v90 - v270.__begin_) >> 3);
      v102 = v101 + 1;
      if (v101 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v102)
      {
        v102 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v103 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v103 = v102;
      }

      if (v103)
      {
        if (v103 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v104 = 24 * v101;
      strcpy((24 * v101), "quick_restart");
      *(v104 + 23) = 13;
      v98 = 24 * v101 + 24;
      v105 = (v104 - v100);
      memcpy((v104 - v100), v99, v100);
      v270.__begin_ = v105;
      v270.__end_ = v98;
      v270.__end_cap_.__value_ = 0;
      if (v99)
      {
        operator delete(v99);
      }
    }

    else
    {
      *v90 = 0x65725F6B63697571;
      *(v90 + 8) = v267[0];
      *(v90 + 12) = BYTE4(v267[0]);
      *(v90 + 13) = 0;
      *(v90 + 14) = v275;
      *(v90 + 22) = BYTE8(v275);
      *(v90 + 23) = 13;
      v98 = v90 + 24;
    }

    v270.__end_ = v98;
    qmemcpy(v267, "costs", 5);
    if (v98 >= v270.__end_cap_.__value_)
    {
      v107 = v270.__begin_;
      v108 = v98 - v270.__begin_;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((v98 - v270.__begin_) >> 3);
      v110 = v109 + 1;
      if (v109 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v110)
      {
        v110 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v111 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v111 = v110;
      }

      if (v111)
      {
        if (v111 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      strcpy((24 * v109), "reduced_costs");
      *(24 * v109 + 0x17) = 13;
      v106 = 24 * v109 + 24;
      v112 = (24 * v109 - v108);
      memcpy(v112, v107, v108);
      v270.__begin_ = v112;
      v270.__end_ = v106;
      v270.__end_cap_.__value_ = 0;
      if (v107)
      {
        operator delete(v107);
      }
    }

    else
    {
      *v98 = 0x5F64656375646572;
      *(v98 + 8) = v267[0];
      *(v98 + 12) = BYTE4(v267[0]);
      *(v98 + 13) = 0;
      *(v98 + 14) = v275;
      *(v98 + 22) = BYTE8(v275);
      *(v98 + 23) = 13;
      v106 = v98 + 24;
    }

    v270.__end_ = v106;
    *&v275 = *"start_no_lp";
    *(&v275 + 7) = 1886150511;
    if (v106 >= v270.__end_cap_.__value_)
    {
      v115 = v270.__begin_;
      v116 = v106 - v270.__begin_;
      v117 = 0xAAAAAAAAAAAAAAABLL * ((v106 - v270.__begin_) >> 3);
      v118 = v117 + 1;
      if (v117 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v118)
      {
        v118 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v119 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v119 = v118;
      }

      if (v119)
      {
        if (v119 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      strcpy((24 * v117), "quick_restart_no_lp");
      *(24 * v117 + 0x17) = 19;
      v114 = 24 * v117 + 24;
      v120 = (24 * v117 - v116);
      memcpy(v120, v115, v116);
      v270.__begin_ = v120;
      v270.__end_ = v114;
      v270.__end_cap_.__value_ = 0;
      if (v115)
      {
        operator delete(v115);
      }
    }

    else
    {
      *v106 = 0x65725F6B63697571;
      v113 = *(&v275 + 7);
      *(v106 + 8) = v275;
      *(v106 + 15) = v113;
      *(v106 + 19) = 0;
      *(v106 + 23) = 19;
      v114 = v106 + 24;
    }

    v270.__end_ = v114;
    if (v114 >= v270.__end_cap_.__value_)
    {
      v122 = v270.__begin_;
      v123 = v114 - v270.__begin_;
      v124 = 0xAAAAAAAAAAAAAAABLL * ((v114 - v270.__begin_) >> 3);
      v125 = v124 + 1;
      if (v124 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v125)
      {
        v125 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v126 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v126 = v125;
      }

      if (v126)
      {
        if (v126 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v127 = 24 * v124;
      strcpy((24 * v124), "pseudo_costs");
      *(v127 + 23) = 12;
      v121 = 24 * v124 + 24;
      v128 = (v127 - v123);
      memcpy((v127 - v123), v122, v123);
      v270.__begin_ = v128;
      v270.__end_ = v121;
      v270.__end_cap_.__value_ = 0;
      if (v122)
      {
        operator delete(v122);
      }
    }

    else
    {
      strcpy(v114, "pseudo_costs");
      *(v114 + 13) = v275;
      *(v114 + 21) = WORD4(v275);
      *(v114 + 23) = 12;
      v121 = v114 + 24;
    }

    v270.__end_ = v121;
    qmemcpy(&v275, "search", 6);
    if (v121 >= v270.__end_cap_.__value_)
    {
      v130 = v270.__begin_;
      v131 = v121 - v270.__begin_;
      v132 = 0xAAAAAAAAAAAAAAABLL * ((v121 - v270.__begin_) >> 3);
      v133 = v132 + 1;
      if (v132 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v133)
      {
        v133 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v134 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v134 = v133;
      }

      if (v134)
      {
        if (v134 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v135 = 24 * v132;
      strcpy((24 * v132), "lb_tree_search");
      *(v135 + 23) = 14;
      v129 = 24 * v132 + 24;
      v136 = (v135 - v131);
      memcpy((v135 - v131), v130, v131);
      v270.__begin_ = v136;
      v270.__end_ = v129;
      v270.__end_cap_.__value_ = 0;
      if (v130)
      {
        operator delete(v130);
      }
    }

    else
    {
      *v121 = 0x5F656572745F626CLL;
      *(v121 + 8) = v275;
      *(v121 + 12) = WORD2(v275);
      *(v121 + 14) = 0;
      *(v121 + 23) = 14;
      v129 = v121 + 24;
    }

    v270.__end_ = v129;
    if (v129 >= v270.__end_cap_.__value_)
    {
      v139 = v270.__begin_;
      v140 = v129 - v270.__begin_;
      v141 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v270.__begin_) >> 3);
      v142 = v141 + 1;
      if (v141 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v142)
      {
        v142 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v143 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v143 = v142;
      }

      if (v143)
      {
        if (v143 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v144 = 24 * v141;
      *v144 = 0x676E69626F7270;
      *(v144 + 23) = 7;
      v138 = 24 * v141 + 24;
      v145 = (24 * v141 - v140);
      memcpy(v145, v139, v140);
      v270.__begin_ = v145;
      v270.__end_ = v138;
      v270.__end_cap_.__value_ = 0;
      if (v139)
      {
        operator delete(v139);
      }
    }

    else
    {
      *v129 = 0x676E69626F7270;
      v137 = *(&v275 + 7);
      *(v129 + 8) = v275;
      *(v129 + 15) = v137;
      *(v129 + 23) = 7;
      v138 = v129 + 24;
    }

    v270.__end_ = v138;
    *&v275 = *"e_lb_search";
    *(&v275 + 7) = 1751347809;
    if (v138 >= v270.__end_cap_.__value_)
    {
      v148 = v270.__begin_;
      v149 = v138 - v270.__begin_;
      v150 = 0xAAAAAAAAAAAAAAABLL * ((v138 - v270.__begin_) >> 3);
      v151 = v150 + 1;
      if (v150 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v151)
      {
        v151 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
      {
        v152 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v152 = v151;
      }

      if (v152)
      {
        if (v152 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      strcpy((24 * v150), "objective_lb_search");
      *(24 * v150 + 0x17) = 19;
      v147 = (24 * v150 + 24);
      v153 = (24 * v150 - v149);
      memcpy(v153, v148, v149);
      v270.__begin_ = v153;
      v270.__end_ = v147;
      v270.__end_cap_.__value_ = 0;
      if (v148)
      {
        operator delete(v148);
      }
    }

    else
    {
      *v138 = 0x76697463656A626FLL;
      v146 = *(&v275 + 7);
      *(v138 + 8) = v275;
      *(v138 + 15) = v146;
      *(v138 + 19) = 0;
      *(v138 + 23) = 19;
      v147 = (v138 + 24);
    }

    v270.__end_ = v147;
    operator new();
  }

  v26 = *(v263 + 9);
  if (v26)
  {
    v27 = (v26 + 7);
  }

  else
  {
    v27 = (v263 + 72);
  }

  v28 = 8 * v25;
  do
  {
    v30 = *v27;
    v31 = *(*v27 + 23);
    if (v31 < 0)
    {
      v33 = *(v30 + 8);
      if (v33 != 13)
      {
        if (end >= v270.__end_cap_.__value_)
        {
          goto LABEL_49;
        }

        goto LABEL_65;
      }

      v32 = *v30;
    }

    else
    {
      v32 = *v27;
      if (v31 != 13)
      {
        if (end < v270.__end_cap_.__value_)
        {
LABEL_34:
          v29 = *v30;
          *(end + 16) = *(v30 + 16);
          *end = v29;
          end += 24;
          goto LABEL_35;
        }

LABEL_49:
        end = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v270, v30);
        goto LABEL_35;
      }
    }

    v34 = *v32;
    v35 = *(v32 + 5);
    if (v34 != 0x5F726F5F65726F63 || v35 != 0x706C5F6F6E5F726FLL)
    {
      if (end >= v270.__end_cap_.__value_)
      {
        goto LABEL_49;
      }

      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v33 = *(v30 + 8);
LABEL_65:
      std::string::__init_copy_ctor_external(end, *v30, v33);
      end += 24;
      goto LABEL_35;
    }

    if ((*(v4 + 16) & 1) == 0)
    {
      value = v270.__end_cap_.__value_;
LABEL_53:
      if (end < value)
      {
        *end = 0x706C5F6F6ELL;
        v38 = *(&v275 + 7);
        *(end + 8) = v275;
        *(end + 15) = v38;
        v39 = 5;
LABEL_68:
        *(end + 23) = v39;
        end += 24;
        goto LABEL_35;
      }

      v40 = v270.__begin_;
      v41 = end - v270.__begin_;
      v42 = 0xAAAAAAAAAAAAAAABLL * ((end - v270.__begin_) >> 3);
      v43 = v42 + 1;
      if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v44 = 0xAAAAAAAAAAAAAAABLL * ((value - v270.__begin_) >> 3);
      if (2 * v44 > v43)
      {
        v43 = 2 * v44;
      }

      if (v44 >= 0x555555555555555)
      {
        v45 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        if (v45 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v47 = 24 * v42;
      *(24 * v42) = 0x706C5F6F6ELL;
      v48 = 5;
      goto LABEL_80;
    }

    value = v270.__end_cap_.__value_;
    if (*(*(v4 + 16) + 16) <= 1)
    {
      goto LABEL_53;
    }

    if (end < v270.__end_cap_.__value_)
    {
      *end = 1701998435;
      v46 = *(&v275 + 7);
      *(end + 8) = v275;
      *(end + 15) = v46;
      v39 = 4;
      goto LABEL_68;
    }

    v40 = v270.__begin_;
    v41 = end - v270.__begin_;
    v49 = 0xAAAAAAAAAAAAAAABLL * ((end - v270.__begin_) >> 3);
    v50 = v49 + 1;
    if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) > v50)
    {
      v50 = 0x5555555555555556 * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v270.__end_cap_.__value_ - v270.__begin_) >> 3) >= 0x555555555555555)
    {
      v51 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v51 = v50;
    }

    if (v51)
    {
      if (v51 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v47 = 24 * v49;
    *(24 * v49) = 1701998435;
    v48 = 4;
LABEL_80:
    *(v47 + 23) = v48;
    end = v47 + 24;
    v52 = (v47 - v41);
    memcpy((v47 - v41), v40, v41);
    v270.__begin_ = v52;
    v270.__end_ = end;
    v270.__end_cap_.__value_ = 0;
    if (v40)
    {
      operator delete(v40);
    }

    v4 = v264;
LABEL_35:
    v270.__end_ = end;
    ++v27;
    v28 -= 8;
  }

  while (v28);
  v267[0] = 0;
  v267[1] = 0;
  v268 = &unk_23CE31C20;
  v154 = *(v263 + 12);
  if (v154)
  {
    v155 = (v154 + 7);
  }

  else
  {
    v155 = (v263 + 96);
  }

  v156 = *(v263 + 26);
  if (v156)
  {
    v157 = 8 * v156;
    do
    {
      v159 = *v155;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::find_or_prepare_insert_non_soo<std::string>(v267, *v155, v7, v8, &v275);
      if (v276 == 1)
      {
        v160 = *(&v275 + 1);
        if (*(v159 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(*(&v275 + 1), *v159, *(v159 + 1));
        }

        else
        {
          v158 = *v159;
          *(*(&v275 + 1) + 16) = *(v159 + 2);
          *v160 = v158;
        }
      }

      ++v155;
      v157 -= 8;
    }

    while (v157);
    end = v270.__end_;
  }

  v161 = v270.__begin_;
  if (v270.__begin_ == end)
  {
    v188 = 0;
    if (!(0xAAAAAAAAAAAAAAABLL * ((end - v270.__begin_) >> 3)))
    {
      goto LABEL_289;
    }

    goto LABEL_282;
  }

  v266 = 0;
  do
  {
    _X8 = v268;
    __asm { PRFM            #4, [X8] }

    v176 = SHIBYTE(v161->__r_.__value_.__r.__words[2]);
    if (v176 >= 0)
    {
      v177 = v161;
    }

    else
    {
      v177 = v161->__r_.__value_.__r.__words[0];
    }

    if (v176 >= 0)
    {
      size = HIBYTE(v161->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v161->__r_.__value_.__l.__size_;
    }

    v179 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v177, size, v7, v8);
    v169 = 0;
    v180 = (((v179 + size) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v179 + size));
    v182 = v268;
    v181 = v269;
    v183 = v267[0];
    v170 = (v268 >> 12) ^ (v180 >> 7);
    v184 = vdup_n_s8(v180 & 0x7F);
    v185 = HIBYTE(v161->__r_.__value_.__r.__words[2]);
    if (v185 >= 0)
    {
      v186 = HIBYTE(v161->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v186 = v161->__r_.__value_.__l.__size_;
    }

    if (v185 >= 0)
    {
      v187 = v161;
    }

    else
    {
      v187 = v161->__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v162 = v170 & v183;
      v163 = *(v182 + (v170 & v183));
      v164 = vceq_s8(v163, v184);
      if (v164)
      {
        break;
      }

LABEL_262:
      if (vceq_s8(v163, 0x8080808080808080))
      {
        std::string::operator=(&v270.__begin_[v266++], v161);
        goto LABEL_265;
      }

      v169 += 8;
      v170 = v169 + v162;
    }

    while (1)
    {
      v165 = v181 + 24 * ((v162 + (__clz(__rbit64(v164)) >> 3)) & v183);
      v166 = *(v165 + 23);
      v167 = v166;
      if ((v166 & 0x80u) != 0)
      {
        v166 = *(v165 + 8);
      }

      if (v166 == v186)
      {
        v168 = v167 >= 0 ? v165 : *v165;
        if (!memcmp(v168, v187, v186))
        {
          break;
        }
      }

      v164 &= ((v164 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v164)
      {
        goto LABEL_262;
      }
    }

LABEL_265:
    ++v161;
  }

  while (v161 != end);
  v161 = v270.__begin_;
  end = v270.__end_;
  v188 = v266;
  v189 = 0xAAAAAAAAAAAAAAABLL * ((v270.__end_ - v270.__begin_) >> 3);
  if (v266 > v189)
  {
    std::vector<std::string>::__append(&v270, v266 - v189);
    v4 = v264;
    v190 = v270.__begin_;
    v191 = v270.__end_;
    *v262 = 0;
    v262[1] = 0;
    v262[2] = 0;
    if (v190 != v191)
    {
      goto LABEL_294;
    }

    goto LABEL_357;
  }

  v4 = v264;
  if (v189 > v266)
  {
LABEL_282:
    v191 = &v161[v188];
    while (end != v191)
    {
      v192 = *(end - 1);
      end -= 24;
      if (v192 < 0)
      {
        operator delete(*end);
      }
    }

    v270.__end_ = v191;
    *v262 = 0;
    v262[1] = 0;
    v262[2] = 0;
    v190 = v270.__begin_;
    if (v270.__begin_ == v191)
    {
      goto LABEL_357;
    }

    while (1)
    {
LABEL_294:
      _X8 = v273;
      __asm { PRFM            #4, [X8] }

      v196 = SHIBYTE(v190->__r_.__value_.__r.__words[2]);
      if (v196 >= 0)
      {
        v197 = v190;
      }

      else
      {
        v197 = v190->__r_.__value_.__r.__words[0];
      }

      if (v196 >= 0)
      {
        v198 = HIBYTE(v190->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v198 = v190->__r_.__value_.__l.__size_;
      }

      v199 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v197, v198, v7, v8);
      v201 = 0;
      v202 = (((v199 + v198) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v199 + v198));
      v204 = v273;
      v203 = v274;
      v205 = v271;
      v206 = (v273 >> 12) ^ (v202 >> 7);
      v207 = vdup_n_s8(v202 & 0x7F);
      v208 = HIBYTE(v190->__r_.__value_.__r.__words[2]);
      if (v208 >= 0)
      {
        v209 = HIBYTE(v190->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v209 = v190->__r_.__value_.__l.__size_;
      }

      if (v208 >= 0)
      {
        v210 = v190;
      }

      else
      {
        v210 = v190->__r_.__value_.__r.__words[0];
      }

      v211 = v206 & v271;
      v212 = *(v273 + (v206 & v271));
      for (i = vceq_s8(v212, v207); !i; i = vceq_s8(v212, v207))
      {
LABEL_316:
        if (vceq_s8(v212, 0x8080808080808080))
        {
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v200);
        }

        v201 += 8;
        v211 = (v201 + v211) & v205;
        v212 = *(v204 + v211);
      }

      v265 = v201;
      while (1)
      {
        v214 = v203 + 1000 * ((v211 + (__clz(__rbit64(i)) >> 3)) & v205);
        v215 = *(v214 + 23);
        v216 = v215;
        if ((v215 & 0x80u) != 0)
        {
          v215 = *(v214 + 8);
        }

        if (v215 == v209)
        {
          v217 = v216 >= 0 ? v214 : *v214;
          if (!memcmp(v217, v210, v209))
          {
            break;
          }
        }

        i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080;
        v201 = v265;
        if (!i)
        {
          goto LABEL_316;
        }
      }

      operations_research::sat::SatParameters::SatParameters(&v275, 0, (v214 + 24));
      v218 = v261;
      if (v279 != 1)
      {
        v218 = 0;
      }

      v4 = v264;
      if (v218 || v281 == 1 && (v280 & 1) != 0 || v283 == 1 && (v280 & 1) != 0 || v281 && !*(v264 + 8))
      {
        goto LABEL_293;
      }

      if (*(v264 + 16))
      {
        v219 = *(*(v264 + 16) + 16);
        if (v219)
        {
          break;
        }
      }

      if ((v285 & 1) == 0 && (v284 & 1) == 0 && ((v282 | v283) & 1) == 0 && (v279 - 3) >= 2)
      {
LABEL_349:
        v276 |= 2u;
        v225 = *(&v275 + 1);
        if (BYTE8(v275))
        {
          v225 = *(*(&v275 + 1) & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Set<>(v278, v190, v225);
        v226 = v262[1];
        v227 = 1 - 1056139499 * ((v226 - *v262) >> 4);
        if ((v227 & 0x80000000) != 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v227, 0, "delta >= 0");
        }

        v228 = *(v263 + 111) + v227;
        v229 = 0x7FFFFFFFLL;
        if (v228 < 0x7FFFFFFF)
        {
          v229 = v228;
        }

        v286 = v228 - 0x7FFFFFFF * ((v228 - v229 + 2147483646) / 0x7FFFFFFFuLL);
        v277 |= 0x10u;
        if (v226 >= v262[2])
        {
          v193 = std::vector<operations_research::sat::SatParameters>::__emplace_back_slow_path<operations_research::sat::SatParameters const&>(v262, &v275);
        }

        else
        {
          operations_research::sat::SatParameters::SatParameters(v226, 0, &v275);
          v193 = v226 + 976;
        }

        v262[1] = v193;
      }

LABEL_293:
      operations_research::sat::SatParameters::~SatParameters(&v275);
      if (++v190 == v191)
      {
        goto LABEL_357;
      }
    }

    if (v219 == 1 && (v284 & 1) != 0)
    {
      goto LABEL_293;
    }

    v220 = SHIBYTE(v190->__r_.__value_.__r.__words[2]);
    if (v220 < 0)
    {
      if (v190->__r_.__value_.__l.__size_ != 13)
      {
LABEL_346:
        if (v280 != 1 || (v285 & 1) == 0 && (v282 & 1) == 0)
        {
          goto LABEL_349;
        }

        goto LABEL_293;
      }

      v221 = v190->__r_.__value_.__r.__words[0];
    }

    else
    {
      v221 = v190;
      if (v220 != 13)
      {
        goto LABEL_346;
      }
    }

    v222 = v221->__words[0];
    v223 = *(v221->__words + 5);
    if (v222 == 0x636E655F7373656CLL && v223 == 0x676E69646F636E65)
    {
      goto LABEL_293;
    }

    goto LABEL_346;
  }

LABEL_289:
  v191 = end;
  *v262 = 0;
  v262[1] = 0;
  v262[2] = 0;
  v190 = v270.__begin_;
  if (v270.__begin_ != v191)
  {
    goto LABEL_294;
  }

LABEL_357:
  if (*(v263 + 280))
  {
    goto LABEL_391;
  }

  v230 = *(v263 + 83) - *(v263 + 86);
  v231 = v230 & ~(v230 >> 31);
  if ((*(v4 + 16) & 1) != 0 && *(*(v4 + 16) + 16))
  {
    v232 = v231 - (v231 >> 1) + 3;
    if (v230 <= 0x10)
    {
      v232 = v231 + ~(v231 >> 2);
    }

    if (v230 <= 8)
    {
      v232 = v231 - 2;
    }

    v233 = v231 - 1;
    if (v230 > 4)
    {
      v233 = v232;
    }

    if (v230 == 1)
    {
      v234 = 1;
    }

    else
    {
      v234 = v233;
    }

    v235 = v262[1];
    v236 = 0x4FBCDA3AC10C9715 * ((v235 - *v262) >> 4);
    if (v234 >= v236)
    {
      v237 = -1056139499 * ((v235 - *v262) >> 4);
    }

    else
    {
      v237 = v234;
    }

    if (v236 > v237)
    {
      v238 = *v262 + 976 * v237;
      while (v235 != v238)
      {
        operations_research::sat::SatParameters::~SatParameters((v235 - 976));
      }

      goto LABEL_390;
    }

    goto LABEL_391;
  }

  if (*(v263 + 749) == 1)
  {
    v239 = v230 < 5;
    goto LABEL_379;
  }

  v239 = v230 < 5;
  if (*(v263 + 750) == 1)
  {
LABEL_379:
    v240 = -2;
  }

  else
  {
    v240 = -1;
  }

  if (v239)
  {
    v241 = 0;
  }

  else
  {
    v241 = v240;
  }

  v242 = v241 + v231;
  v243 = v262[1];
  v244 = 0x4FBCDA3AC10C9715 * ((v243 - *v262) >> 4);
  if (v242 >= v244)
  {
    v245 = -1056139499 * ((v243 - *v262) >> 4);
  }

  else
  {
    v245 = v242;
  }

  if (v244 > v245)
  {
    v238 = *v262 + 976 * v245;
    while (v243 != v238)
    {
      operations_research::sat::SatParameters::~SatParameters((v243 - 976));
    }

LABEL_390:
    v262[1] = v238;
  }

LABEL_391:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(v267);
  v246 = v270.__begin_;
  if (v270.__begin_)
  {
    v247 = v270.__end_;
    v248 = v270.__begin_;
    if (v270.__end_ != v270.__begin_)
    {
      do
      {
        v249 = SHIBYTE(v247[-1].__r_.__value_.__r.__words[2]);
        --v247;
        if (v249 < 0)
        {
          operator delete(v247->__r_.__value_.__l.__data_);
        }
      }

      while (v247 != v246);
      v248 = v270.__begin_;
    }

    v270.__end_ = v246;
    operator delete(v248);
  }

  if (v271)
  {
    v251 = v273;
    v250 = v274;
    if (v271 > 6)
    {
      if (v272 >= 2)
      {
        v257 = v272 >> 1;
        do
        {
          v258 = *v251 & 0x8080808080808080;
          if (v258 != 0x8080808080808080)
          {
            v259 = v258 ^ 0x8080808080808080;
            do
            {
              v260 = v250 + 1000 * (__clz(__rbit64(v259)) >> 3);
              operations_research::sat::SatParameters::~SatParameters((v260 + 24));
              if (*(v260 + 23) < 0)
              {
                operator delete(*v260);
              }

              --v257;
              v259 &= v259 - 1;
            }

            while (v259);
          }

          ++v251;
          v250 += 8000;
        }

        while (v257);
      }
    }

    else
    {
      v252 = *(v273 + v271) & 0x8080808080808080;
      if (v252 != 0x8080808080808080)
      {
        v253 = v274 - 1000;
        v254 = v252 ^ 0x8080808080808080;
        do
        {
          v255 = v253 + 1000 * (__clz(__rbit64(v254)) >> 3);
          operations_research::sat::SatParameters::~SatParameters((v255 + 24));
          if (*(v255 + 23) < 0)
          {
            operator delete(*v255);
          }

          v254 &= v254 - 1;
        }

        while (v254);
      }
    }

    operator delete((v273 - (v272 & 1) - 8));
  }

  v256 = *MEMORY[0x277D85DE8];
}

void sub_23CAE186C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(a11 + 8) = v29;
  operations_research::sat::SatParameters::~SatParameters(&a29);
  std::vector<operations_research::sat::SatParameters>::~vector[abi:ne200100](a11);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::~raw_hash_set(&a16);
  std::vector<std::string>::~vector[abi:ne200100](&a20);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(&a23);
  _Unwind_Resume(a1);
}

void **std::vector<operations_research::sat::SatParameters>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::SatParameters::~SatParameters((v3 - 976));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::GetFirstSolutionParams(operations_research::sat *this@<X0>, const operations_research::sat::CpModelProto *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2;
    do
    {
      operations_research::sat::SatParameters::SatParameters(v22, 0, this);
      v10 = *(this + 111);
      if (v7 <= v6)
      {
        v17 = v24;
        v29 = 5;
        v28 = 8;
        v24 |= 0x42000u;
        v18 = (2 * v7) | 1;
        if (2 * v7 < 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v18, 0, "delta >= 0");
        }

        v19 = v10 + v18;
        if (v19 >= 0x7FFFFFFF)
        {
          v20 = 0x7FFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        v30 = v19 - 0x7FFFFFFF * ((v19 - v20 + 2147483646) / 0x7FFFFFFFuLL);
        v25 |= 0x10u;
        v24 = v17 | 0x42002;
        v21 = v23;
        if ((v7 & 0x80000001) == 1)
        {
          if (v23)
          {
            v21 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set(v27, "random_no_lp", 0xCuLL, v21);
          v31 = 0;
          v26 |= 0x10u;
          ++v7;
          v16 = a3[1];
          if (v16 < a3[2])
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v23)
          {
            v21 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set(v27, "random", 6uLL, v21);
          ++v7;
          v16 = a3[1];
          if (v16 < a3[2])
          {
LABEL_31:
            operations_research::sat::SatParameters::SatParameters(v16, 0, v22);
            v9 = v16 + 976;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v11 = v24;
        v29 = 5;
        v28 = 5;
        v24 |= 0x42000u;
        v12 = 2 * v6;
        if (2 * v6 < 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v12, 0, "delta >= 0");
        }

        v13 = v10 + v12;
        if (v13 >= 0x7FFFFFFF)
        {
          v14 = 0x7FFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        v30 = v13 - 0x7FFFFFFF * ((v13 - v14 + 2147483646) / 0x7FFFFFFFuLL);
        v25 |= 0x10u;
        v24 = v11 | 0x42002;
        v15 = v23;
        if ((v6 & 0x80000001) == 1)
        {
          if (v23)
          {
            v15 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set(v27, "random_quick_restart_no_lp", 0x1AuLL, v15);
          v31 = 0;
          v26 |= 0x10u;
          ++v6;
          v16 = a3[1];
          if (v16 < a3[2])
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v23)
          {
            v15 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Set(v27, "random_quick_restart", 0x14uLL, v15);
          ++v6;
          v16 = a3[1];
          if (v16 < a3[2])
          {
            goto LABEL_31;
          }
        }
      }

      v9 = std::vector<operations_research::sat::SatParameters>::__emplace_back_slow_path<operations_research::sat::SatParameters const&>(a3, v22);
LABEL_4:
      a3[1] = v9;
      operations_research::sat::SatParameters::~SatParameters(v22);
    }

    while (0x4FBCDA3AC10C9715 * ((a3[1] - *a3) >> 4) < v8);
  }
}

void sub_23CAE1D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  operations_research::sat::SatParameters::~SatParameters(va);
  std::vector<operations_research::sat::SatParameters>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void sub_23CAE1DAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  operations_research::sat::SatParameters::~SatParameters(va);
  std::vector<operations_research::sat::SatParameters>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::GetWorkSharingParams(operations_research::sat *this@<X0>, const operations_research::sat::SatParameters *a2@<X1>, const operations_research::sat::CpModelProto *a3@<X2>, void *a4@<X8>)
{
  v74[6] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 >= 1 && !*(a2 + 24))
  {
    v5 = a3;
    operations_research::sat::GetNamedParameters(this, a2, &v66);
    _X8 = v68;
    __asm { PRFM            #4, [X8] }

    v13 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, "shared_tree", 0xBuLL, v11, v12);
    v15 = 0;
    v16 = (((v13 + 11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v13 + 11));
    v17 = v66;
    v18 = vdup_n_s8(v16 & 0x7F);
    v19 = ((v68 >> 12) ^ (v16 >> 7)) & v66;
    v20 = *(v68 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v22 = v69 + 1000 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v66);
      v23 = *(v22 + 23);
      v24 = v23;
      v14 = *(v22 + 8);
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v22 + 8);
      }

      if (v23 == 11)
      {
        v25 = v24 >= 0 ? v22 : *v22;
        v26 = *v25;
        v27 = *(v25 + 3);
        if (v26 == 0x745F646572616873 && v27 == 0x656572745F646572)
        {
          break;
        }
      }

      for (v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080; !v21; v21 = vceq_s8(v20, v18))
      {
LABEL_15:
        if (vceq_s8(v20, 0x8080808080808080))
        {
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v14);
        }

        v15 += 8;
        v19 = (v15 + v19) & v66;
        v20 = *(v68 + v19);
      }
    }

    v29 = v5;
    if (0x4FBCDA3AC10C9715 * ((a4[1] - *a4) >> 4) < v5)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0x7FFFFFFFLL;
      v33 = 1;
      while (1)
      {
        operations_research::sat::SatParameters::SatParameters(v55, 0, (v22 + 24));
        if (v31 == 0x80000000)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(-2147483647, 0, "delta >= 0");
        }

        v36 = *(this + 111);
        v37 = v33 + v36;
        if (v33 + v36 >= 0x7FFFFFFF)
        {
          v37 = 0x7FFFFFFFLL;
        }

        v64 = v31 + v36 - 0x7FFFFFFF * ((v32 + v36 - v37) / 0x7FFFFFFFuLL) + 1;
        v63 = 1;
        v61 = 0;
        v62 = 0;
        v59 |= 0x10u;
        v58 |= 0x58400000u;
        v74[0] = "shared_";
        v74[1] = 7;
        v38 = v65;
        if (v65 >= 2)
        {
          v38 = 2;
        }

        v73[0] = *&(&off_278BC3C00)[2 * v38];
        v72[0] = "_lp_";
        v72[1] = 4;
        v39 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v30, v71, v35);
        v70[0] = v71;
        v70[1] = v39 - v71;
        absl::lts_20240722::StrCat(v74, v73, v72, v70, &__p);
        v57 |= 2u;
        v40 = v56;
        if (v56)
        {
          v40 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Set(v60, &__p, v40);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v41 = a4[1];
          if (v41 < a4[2])
          {
LABEL_33:
            operations_research::sat::SatParameters::SatParameters(v41, 0, v55);
            v34 = v41 + 976;
            goto LABEL_21;
          }
        }

        else
        {
          v41 = a4[1];
          if (v41 < a4[2])
          {
            goto LABEL_33;
          }
        }

        v34 = std::vector<operations_research::sat::SatParameters>::__emplace_back_slow_path<operations_research::sat::SatParameters const&>(a4, v55);
LABEL_21:
        a4[1] = v34;
        operations_research::sat::SatParameters::~SatParameters(v55);
        v31 += 2;
        v33 += 2;
        v32 += 2;
        v30 = (v30 + 1);
        if (0x4FBCDA3AC10C9715 * ((a4[1] - *a4) >> 4) >= v29)
        {
          v17 = v66;
          break;
        }
      }
    }

    if (v17)
    {
      v42 = v69;
      v43 = v68;
      if (v17 > 6)
      {
        if (v67 >= 2)
        {
          v49 = v67 >> 1;
          do
          {
            v50 = *v43 & 0x8080808080808080;
            if (v50 != 0x8080808080808080)
            {
              v51 = v50 ^ 0x8080808080808080;
              do
              {
                v52 = v42 + 1000 * (__clz(__rbit64(v51)) >> 3);
                operations_research::sat::SatParameters::~SatParameters((v52 + 24));
                if (*(v52 + 23) < 0)
                {
                  operator delete(*v52);
                }

                --v49;
                v51 &= v51 - 1;
              }

              while (v51);
            }

            ++v43;
            v42 += 8000;
          }

          while (v49);
        }
      }

      else
      {
        v44 = *(v68 + v17) & 0x8080808080808080;
        if (v44 != 0x8080808080808080)
        {
          v45 = v69 - 1000;
          v46 = v44 ^ 0x8080808080808080;
          do
          {
            v47 = v45 + 1000 * (__clz(__rbit64(v46)) >> 3);
            operations_research::sat::SatParameters::~SatParameters((v47 + 24));
            if (*(v47 + 23) < 0)
            {
              operator delete(*v47);
            }

            v46 &= v46 - 1;
          }

          while (v46);
        }
      }

      operator delete((v68 - (v67 & 1) - 8));
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_23CAE2314(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 8) = v6;
  operations_research::sat::SatParameters::~SatParameters(va);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(&STACK[0x3F0]);
  std::vector<operations_research::sat::SatParameters>::~vector[abi:ne200100](v5);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::destroy_slots(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (*a1 > 6uLL)
  {
    v7 = a1[1];
    if (v7 >= 2)
    {
      v8 = v7 >> 1;
      do
      {
        v9 = *v2 & 0x8080808080808080;
        if (v9 != 0x8080808080808080)
        {
          v10 = v9 ^ 0x8080808080808080;
          do
          {
            v11 = v1 + 1000 * (__clz(__rbit64(v10)) >> 3);
            operations_research::sat::SatParameters::~SatParameters((v11 + 24));
            if (*(v11 + 23) < 0)
            {
              operator delete(*v11);
            }

            --v8;
            v10 &= v10 - 1;
          }

          while (v10);
        }

        ++v2;
        v1 += 8000;
      }

      while (v8);
    }
  }

  else
  {
    v3 = *(v2 + *a1) & 0x8080808080808080;
    if (v3 != 0x8080808080808080)
    {
      v4 = v1 - 1000;
      v5 = v3 ^ 0x8080808080808080;
      do
      {
        v6 = v4 + 1000 * (__clz(__rbit64(v5)) >> 3);
        operations_research::sat::SatParameters::~SatParameters((v6 + 24));
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }
}

uint64_t std::vector<operations_research::sat::DecisionStrategyProto>::__emplace_back_slow_path<operations_research::sat::DecisionStrategyProto const&>(uint64_t a1, const operations_research::sat::DecisionStrategyProto *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = (16 * ((*(a1 + 8) - *a1) >> 4));
  operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(v11, 0, a2);
  v6 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::DecisionStrategyProto>,operations_research::sat::DecisionStrategyProto*>(a1, *a1, v7, v11 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_23CAE25D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::DecisionStrategyProto>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::DecisionStrategyProto>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::DecisionStrategyProto>,operations_research::sat::DecisionStrategyProto*>(uint64_t a1, operations_research::sat::DecisionStrategyProto *a2, operations_research::sat::DecisionStrategyProto *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      v8 = *(a4 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = *(v7 + 1);
        if (v9)
        {
LABEL_11:
          if (v8 != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::DecisionStrategyProto::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = *(v7 + 1);
        if (v9)
        {
          goto LABEL_11;
        }
      }

      if (v8 != v9)
      {
        goto LABEL_9;
      }

LABEL_3:
      operations_research::sat::DecisionStrategyProto::InternalSwap(a4, v7);
LABEL_4:
      v7 = (v7 + 80);
      a4 += 80;
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto(v6);
          v6 = (v6 + 80);
        }

        return;
      }
    }
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::CpModelView>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3E400;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x60C40902580DDLL);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CpModelView>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3E400;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x60C40902580DDLL);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<operations_research::sat::DecisionStrategyProto>::__init_with_size[abi:ne200100]<operations_research::sat::DecisionStrategyProto*,operations_research::sat::DecisionStrategyProto*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CAE2A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = (v11 - 80);
    v15 = -v12;
    do
    {
      operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto(v14);
      v14 = (v16 - 80);
      v15 += 80;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<operations_research::sat::DecisionStrategyProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::DecisionStrategyProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v4 - 80));
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void *std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F3E438;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F3E438;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E438;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 32) = 0;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<operations_research::sat::DecisionStrategyProto>::__init_with_size[abi:ne200100]<operations_research::sat::DecisionStrategyProto*,operations_research::sat::DecisionStrategyProto*>(a2 + 32, *(a1 + 32), *(a1 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 40) - *(a1 + 32)) >> 4));
  return result;
}

void std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v3 - 80));
      }

      while (v3 != v1);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v1;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    v3 = __p[5];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        operations_research::sat::DecisionStrategyProto::~DecisionStrategyProto((v3 - 80));
      }

      while (v3 != v2);
      v4 = __p[4];
    }

    __p[5] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

void std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[4];
  v167 = a1[5];
  if (v2 == v167)
  {
LABEL_259:
    *a2 = 0;
    a2[1] = 0;
    *a2 = -1;
    *(a2 + 2) = -1;
    a2[2] = 0;
    return;
  }

  v3 = a1;
  while (2)
  {
    v4 = v3[2];
    v5 = *(v4 + 256);
    if (v5 <= 1)
    {
      LODWORD(v6) = 1;
    }

    else
    {
      v6 = *(v4 + 256);
    }

    v175 = v6;
    v178 = 0u;
    v176 = 0u;
    v177 = 0u;
    v7 = *(v2 + 40);
    if (v7)
    {
      v8 = (v7 + 7);
    }

    else
    {
      v8 = (v2 + 40);
    }

    v9 = *(v2 + 48);
    if (!v9)
    {
LABEL_186:
      v132 = 1;
      goto LABEL_249;
    }

    v10 = &v8[v9];
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = -1;
    v169 = v5;
    v170 = v2;
    v171 = v10;
    do
    {
      v13 = *v8;
      v14 = **(*v8 + 24);
      v15 = v3[1];
      v16 = *v15;
      if (~v14 <= v14)
      {
        v17 = **(*v8 + 24);
      }

      else
      {
        v17 = ~v14;
      }

      v18 = *(v16[6] + 4 * v17);
      if (v18 == -1)
      {
        v29 = *(*v16 + 4 * v17);
        if (v29 == -1)
        {
          goto LABEL_14;
        }

        v30 = *(*(v15 + 16) + 40);
        v31 = 8 * (v29 ^ (v14 >> 31));
        v25 = *(v30 + v31);
        v32 = *(v30 + (v31 ^ 8));
        if (!(v25 + v32))
        {
          goto LABEL_14;
        }

        v26 = -v32;
        v20 = **(v13 + 48);
        v21 = *(v13 + 64);
        if ((v20 & 0x8000000000000000) == 0)
        {
LABEL_21:
          v27 = *(v2 + 64);
          if (v27 > 1)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v19 = *(*(v15 + 8) + 8);
        if (((*(v19 + (((2 * ((2 * v18) >> 1)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (((2 * v18) >> 1) & 0x1Fu))) & 3) != 0)
        {
          goto LABEL_14;
        }

        v20 = **(v13 + 48);
        v21 = *(v13 + 64);
        v22 = __PAIR64__(v18, v14) >> 31;
        v23 = *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v24 = v22 & 0x3F;
        v25 = (v23 >> v22) & 1;
        v26 = (~v23 >> (v24 ^ 1u)) & 1;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      v33 = -v26;
      v26 = -v25;
      v20 = -v20;
      v14 = ~v14;
      v25 = v33;
      v27 = *(v2 + 64);
      if (v27 > 1)
      {
LABEL_22:
        switch(v27)
        {
          case 2:
            v28 = -(v21 + v20 * v26);
            if (v5 < 2)
            {
              goto LABEL_11;
            }

            break;
          case 3:
            v28 = v26 - v25 + 1;
            if (v5 < 2)
            {
              goto LABEL_11;
            }

            break;
          case 4:
            v28 = v25 + ~v26;
            if (v5 < 2)
            {
              goto LABEL_11;
            }

            break;
          default:
            goto LABEL_261;
        }

        goto LABEL_40;
      }

LABEL_31:
      if (v27)
      {
        if (v27 != 1)
        {
LABEL_261:
          v164 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v180, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 249);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v164, "Unknown VariableSelectionStrategy ", 0x22uLL);
          LODWORD(v179) = *(v170 + 64);
          absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(&v180, &v179);
          goto LABEL_262;
        }

        v28 = v21 + v20 * v25;
        if (v5 < 2)
        {
LABEL_11:
          if (v28 < v11)
          {
            v11 = v28;
            v12 = v14;
          }

LABEL_13:
          if (!v27)
          {
            break;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v28 = v27;
        if (v5 < 2)
        {
          goto LABEL_11;
        }
      }

LABEL_40:
      v174 = v28;
      v172 = v11;
      v173 = v12;
      v34 = v3[3];
      v180 = xmmword_23CE35A10;
      v179 = 0.0;
      v35 = v34[1];
      if (v35 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        v37 = 0.0;
        v38 = 1.0;
        v39 = 1.0;
      }

      else
      {
        if ((v35)(*v34, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, &v180, &v179))
        {
          v36 = v179;
          goto LABEL_61;
        }

        v39 = *(&v180 + 1);
        v37 = *&v180;
        v38 = *(&v180 + 1) - *&v180;
      }

      v40 = (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v41 = ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v38 >= 0.0)
      {
        v41 = 0;
        v40 = 0;
      }

      if ((*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v40 = 1;
      }

      v42 = (*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v40;
      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v42 = 1;
      }

      if ((v42 | v41))
      {
        v43 = (v34[2])(*v34);
        v44 = __clz(v43);
        *&v45 = ((v43 << v44 >> 11) & 0xFFFFFFFFFFFFFLL) - (v44 << 52) + 0x3FE0000000000000;
        if (!v43)
        {
          v45 = 0.0;
        }

        v36 = v37 + v45 * v38;
      }

      else
      {
        do
        {
          while (1)
          {
            v46 = (v34[2])(*v34);
            if (v46)
            {
              break;
            }

            v36 = v37 + 0.0 * v38;
            if (v36 < v39)
            {
              goto LABEL_61;
            }
          }

          v47 = __clz(v46);
          v36 = v37 + COERCE_DOUBLE(((v46 << v47 >> 11) & 0xFFFFFFFFFFFFFLL) - (v47 << 52) + 0x3FE0000000000000) * v38;
        }

        while (v36 >= v39);
      }

LABEL_61:
      v48 = v174;
      v49 = -v174;
      v50 = v176;
      v51 = *(&v176 + 1) - v176;
      v52 = 0xAAAAAAAAAAAAAAABLL * ((*(&v176 + 1) - v176) >> 3);
      if (v52 >= v175)
      {
        v57 = *(v176 + 8);
        v2 = v170;
        v10 = v171;
        v3 = a1;
        if (v57 <= v49)
        {
          v58 = v57 != v49 || *(v176 + 16) < v36;
          if (v58)
          {
            v59 = *v176;
            *(*(&v177 + 1) + 4 * v59) = v14;
            if (v51 <= 24)
            {
              *(*(&v176 + 1) - 24) = v59;
              *(*(&v176 + 1) - 16) = v49;
              *(*(&v176 + 1) - 8) = v36;
            }

            else
            {
              v60 = 0;
              v180 = *v176;
              v181 = *(v176 + 16);
              v61 = v176;
              do
              {
                v63 = v61;
                v61 = (v61 + 24 * v60 + 24);
                v64 = 2 * v60;
                v60 = (2 * v60) | 1;
                v65 = v64 + 2;
                if (v65 < v52)
                {
                  v66 = *(v61 + 1);
                  v67 = *(v61 + 4);
                  if (v66 > v67 || (v66 == v67 ? (v68 = *(v61 + 2) <= *(v61 + 5)) : (v68 = 1), !v68))
                  {
                    v61 = (v61 + 24);
                    v60 = v65;
                  }
                }

                v62 = *v61;
                *(v63 + 2) = *(v61 + 2);
                *v63 = v62;
              }

              while (v60 <= ((v52 - 2) >> 1));
              v101 = (*(&v176 + 1) - 24);
              if (v61 == (*(&v176 + 1) - 24))
              {
                v118 = v180;
                *(v61 + 2) = v181;
                *v61 = v118;
              }

              else
              {
                v102 = *v101;
                *(v61 + 2) = *(*(&v176 + 1) - 8);
                *v61 = v102;
                *v101 = v180;
                *(*(&v176 + 1) - 8) = v181;
                v103 = v61 - v176 + 24;
                if (v103 >= 25)
                {
                  v104 = 0xAAAAAAAAAAAAAAABLL * (v103 >> 3) - 2;
                  v105 = v104 >> 1;
                  v106 = (v176 + 24 * (v104 >> 1));
                  v107 = *(v106 + 1);
                  v108 = *(v61 + 1);
                  v109 = *(v61 + 2);
                  if (v107 > v108 || (v107 == v108 ? (v110 = *(v106 + 2) <= v109) : (v110 = 1), !v110))
                  {
                    v111 = *v61;
                    v112 = *v106;
                    *(v61 + 2) = *(v106 + 2);
                    *v61 = v112;
                    if (v104 >= 2)
                    {
                      v113 = (v176 + 24 * (v104 >> 1));
                      while (1)
                      {
                        v115 = v105 - 1;
                        v105 = (v105 - 1) >> 1;
                        v106 = (v176 + 24 * v105);
                        v116 = *(v106 + 1);
                        if (v116 <= v108 && (v116 != v108 || *(v106 + 2) <= v109))
                        {
                          break;
                        }

                        v114 = *v106;
                        *(v113 + 2) = *(v106 + 2);
                        *v113 = v114;
                        v113 = (v176 + 24 * v105);
                        if (v115 <= 1)
                        {
                          goto LABEL_166;
                        }
                      }

                      v106 = v113;
                    }

LABEL_166:
                    *v106 = v111;
                    *(v106 + 1) = v108;
                    *(v106 + 2) = v109;
                  }
                }
              }

              *(*(&v176 + 1) - 16) = v49;
              *(*(&v176 + 1) - 8) = v36;
              *(*(&v176 + 1) - 24) = v59;
              v119 = (*(&v176 + 1) - 24);
              if ((*(&v176 + 1) - v176) >= 25)
              {
                v120 = 0xAAAAAAAAAAAAAAABLL * ((*(&v176 + 1) - v176) >> 3) - 2;
                v121 = v120 >> 1;
                v122 = (v176 + 24 * (v120 >> 1));
                v123 = *(v122 + 1);
                if (v123 > v49 || (v123 == v49 ? (v124 = *(v122 + 2) <= v36) : (v124 = 1), !v124))
                {
                  v125 = *v119;
                  v126 = *v122;
                  *(*(&v176 + 1) - 8) = *(v122 + 2);
                  *v119 = v126;
                  if (v120 >= 2)
                  {
                    v127 = (v176 + 24 * (v120 >> 1));
                    while (1)
                    {
                      v129 = v121 - 1;
                      v121 = (v121 - 1) >> 1;
                      v122 = (v176 + 24 * v121);
                      v130 = *(v122 + 1);
                      if (v130 <= v49 && (v130 != v49 || *(v122 + 2) <= v36))
                      {
                        break;
                      }

                      v128 = *v122;
                      *(v127 + 2) = *(v122 + 2);
                      *v127 = v128;
                      v127 = (v176 + 24 * v121);
                      if (v129 <= 1)
                      {
                        goto LABEL_184;
                      }
                    }

                    v122 = v127;
                  }

LABEL_184:
                  *v122 = v125;
                  *(v122 + 1) = v49;
                  *(v122 + 2) = v36;
                }
              }
            }
          }
        }
      }

      else
      {
        v53 = *(&v177 + 1);
        v54 = v178 - *(&v177 + 1);
        v55 = (v178 - *(&v177 + 1)) >> 2;
        if (*(&v176 + 1) >= v177)
        {
          v69 = v52 + 1;
          if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v177 - v176) >> 3) > v69)
          {
            v69 = 0x5555555555555556 * ((v177 - v176) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v177 - v176) >> 3) >= 0x555555555555555)
          {
            v70 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v70 = v69;
          }

          if (v70)
          {
            if (v70 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_263:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v71 = 8 * ((*(&v176 + 1) - v176) >> 3);
          *v71 = v55;
          *(v71 + 8) = v49;
          *(v71 + 16) = v36;
          v56 = v71 + 24;
          v72 = (v71 - v51);
          memcpy((v71 - v51), v176, v51);
          *&v176 = v72;
          *&v177 = 0;
          if (v50)
          {
            operator delete(v50);
          }

          v50 = v72;
          v54 = v178 - *(&v177 + 1);
          v53 = *(&v177 + 1);
        }

        else
        {
          **(&v176 + 1) = v55;
          *(*(&v176 + 1) + 8) = v49;
          v56 = *(&v176 + 1) + 24;
          *(*(&v176 + 1) + 16) = v36;
        }

        *(&v176 + 1) = v56;
        v10 = v171;
        v48 = v174;
        if (v178 >= *(&v178 + 1))
        {
          v74 = (v54 >> 2) + 1;
          if (v74 >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v75 = *(&v178 + 1) - v53;
          if ((*(&v178 + 1) - v53) >> 1 > v74)
          {
            v74 = v75 >> 1;
          }

          if (v75 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v76 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v74;
          }

          if (v76)
          {
            if (!(v76 >> 62))
            {
              operator new();
            }

            goto LABEL_263;
          }

          v77 = (4 * (v54 >> 2));
          *v77 = v14;
          v73 = v77 + 1;
          memcpy(0, v53, v54);
          *(&v177 + 1) = 0;
          *(&v178 + 1) = 0;
          if (v53)
          {
            operator delete(v53);
          }

          v10 = v171;
          v48 = v174;
        }

        else
        {
          *v178 = v14;
          v73 = (v178 + 4);
        }

        *&v178 = v73;
        v78 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v50) >> 3) != v175 || v56 - v50 < 25;
        v2 = v170;
        v3 = a1;
        if (!v78)
        {
          v79 = (v175 - 2) >> 1;
          v80 = v79;
          do
          {
            if (v79 >= (0xAAAAAAAAAAAAAAABLL * ((24 * v80) >> 3)))
            {
              v81 = (0x5555555555555556 * ((24 * v80) >> 3)) | 1;
              v82 = &v50[24 * v81];
              if (0x5555555555555556 * ((24 * v80) >> 3) + 2 < v175)
              {
                v83 = *(v82 + 1);
                v84 = *(v82 + 4);
                if (v83 > v84 || (v83 == v84 ? (v85 = *(v82 + 2) <= *(v82 + 5)) : (v85 = 1), !v85))
                {
                  v82 += 24;
                  v81 = 0x5555555555555556 * ((24 * v80) >> 3) + 2;
                }
              }

              v86 = &v50[24 * v80];
              v87 = *(v82 + 1);
              v88 = *(v86 + 1);
              if (v87 <= v88)
              {
                v89 = *(v86 + 2);
                if (v87 != v88 || *(v82 + 2) <= v89)
                {
                  v91 = *v86;
                  do
                  {
                    v92 = v86;
                    v86 = v82;
                    v93 = *v82;
                    *(v92 + 2) = *(v82 + 2);
                    *v92 = v93;
                    if (v79 < v81)
                    {
                      break;
                    }

                    v94 = 2 * v81;
                    v81 = (2 * v81) | 1;
                    v82 = &v50[24 * v81];
                    v95 = v94 + 2;
                    if (v95 < v175)
                    {
                      v96 = *(v82 + 1);
                      v97 = *(v82 + 4);
                      if (v96 > v97 || (v96 == v97 ? (v98 = *(v82 + 2) <= *(v82 + 5)) : (v98 = 1), !v98))
                      {
                        v82 += 24;
                        v81 = v95;
                      }
                    }

                    v99 = *(v82 + 1);
                    if (v99 > v88)
                    {
                      break;
                    }
                  }

                  while (v99 != v88 || *(v82 + 2) <= v89);
                  *v86 = v91;
                  *(v86 + 1) = v88;
                  *(v86 + 2) = v89;
                }
              }
            }

            v58 = v80-- <= 0;
          }

          while (!v58);
        }
      }

      v11 = v172;
      if (v48 < v172)
      {
        v11 = v48;
      }

      LODWORD(v27) = *(v2 + 64);
      v12 = v173;
      v5 = v169;
      if (v169 <= 1)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v8;
    }

    while (v8 != v10);
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_186;
    }

    if (v5 >= 2)
    {
      v133 = (v178 - *(&v177 + 1)) >> 2;
      if ((v133 - (v133 != 0x80000000)) < 0)
      {
        v136 = 0;
      }

      else
      {
        v134 = v3[3];
        LODWORD(v180) = 0;
        DWORD1(v180) = (v178 - *(&v177 + 1)) >> 2;
        LODWORD(v179) = 0;
        v135 = v134[1];
        if (v135 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          v137 = 0;
        }

        else
        {
          if ((v135)(*v134, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v180, &v179))
          {
            LODWORD(v136) = LODWORD(v179);
            goto LABEL_200;
          }

          v137 = v180;
          LODWORD(v133) = DWORD1(v180);
        }

        v138 = (v134[2])(*v134);
        v139 = v133 - v137 - (v133 != 0x80000000);
        v140 = v139 + 1;
        if (((v139 + 1) & v139) != 0)
        {
          v141 = v138 * v140;
          if (v140 > v141)
          {
              ;
            }
          }

          v136 = HIDWORD(v141);
        }

        else
        {
          LODWORD(v136) = v138 & v139;
        }

        LODWORD(v136) = v137 + v136;
LABEL_200:
        v2 = v170;
        v136 = v136;
      }

      v12 = *(*(&v177 + 1) + 4 * v136);
    }

    v142 = *(v2 + 68);
    if (v12 < 0 && v142 <= 3)
    {
      v142 = dword_23CE42D00[v142];
    }

    if (~v12 <= v12)
    {
      v143 = v12;
    }

    else
    {
      v143 = ~v12;
    }

    v144 = v3[1];
    v145 = *v144;
    if (~v143 <= v143)
    {
      v146 = v143;
    }

    else
    {
      v146 = ~v143;
    }

    v147 = *(v145[6] + 4 * v146);
    if (v147 != -1)
    {
      v148 = __PAIR64__(v147, v143) >> 31;
      v149 = *(*(v144[1] + 8) + ((v148 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v150 = v148 & 0x3F;
      v151 = (v149 >> v148) & 1;
      v152 = (~v149 >> (v150 ^ 1u)) & 1;
      if (v142 > 1)
      {
        goto LABEL_213;
      }

LABEL_219:
      if (v142)
      {
        if (v142 == 1)
        {
          *a2 = -1;
          *(a2 + 2) = -1;
          a2[2] = 0;
          if (v147 == -1)
          {
            v162 = *(*v145 + 4 * v146);
            if (v162 == -1)
            {
              goto LABEL_248;
            }

            v132 = 0;
            a2[1] = v162 ^ (v143 >> 31);
            a2[2] = v152;
          }

          else
          {
            if (v152 == 1)
            {
LABEL_229:
              v132 = 0;
              v158 = __PAIR64__(v147, v143) >> 31;
              goto LABEL_233;
            }

LABEL_248:
            v132 = 0;
          }

          goto LABEL_249;
        }

LABEL_266:
        v165 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v180, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 319);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v165, "Unknown DomainReductionStrategy ", 0x20uLL);
        LODWORD(v179) = *(v170 + 68);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(&v180, &v179);
LABEL_262:
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v180);
      }

      *a2 = -1;
      *(a2 + 2) = -1;
      a2[2] = 0;
      if (v147 != -1)
      {
        if (v151)
        {
          goto LABEL_248;
        }

        goto LABEL_232;
      }

      v159 = *(*v145 + 4 * v146);
      if (v159 == -1)
      {
        goto LABEL_248;
      }

      v132 = 0;
      v160 = 0x7FFFFFFFFFFFFFFFLL;
      if (v151 >= 0x8000000000000002)
      {
        v160 = -v151;
      }

      goto LABEL_245;
    }

    v153 = *(*v145 + 4 * v146);
    if (v153 == -1)
    {
      v151 = 0;
      v152 = 0;
      if (v142 <= 1)
      {
        goto LABEL_219;
      }
    }

    else
    {
      v154 = *(v144[2] + 40);
      v155 = 8 * (v153 ^ (v143 >> 31));
      v151 = *(v154 + v155);
      v152 = -*(v154 + (v155 ^ 8));
      if (v142 <= 1)
      {
        goto LABEL_219;
      }
    }

LABEL_213:
    if (v142 == 2)
    {
      *a2 = -1;
      v156 = v151 + (v152 - v151) / 2;
      *(a2 + 2) = -1;
      a2[2] = 0;
      if (v147 != -1)
      {
        if (v156)
        {
          goto LABEL_248;
        }

LABEL_232:
        v132 = 0;
        v158 = (__PAIR64__(v147, v143) >> 31) ^ 1;
LABEL_233:
        *a2 = v158;
        goto LABEL_249;
      }

      v159 = *(*v145 + 4 * v146);
      if (v159 == -1)
      {
        goto LABEL_248;
      }

      v132 = 0;
      v160 = 0x7FFFFFFFFFFFFFFFLL;
      if (v156 >= 0x8000000000000002)
      {
        v160 = -v156;
      }

LABEL_245:
      a2[1] = v159 ^ ((v143 & 0x80000000) == 0);
      a2[2] = v160;
      goto LABEL_249;
    }

    if (v142 != 3)
    {
      if (v142 == 4)
      {
        operations_research::sat::CpModelView::MedianValue(v144, v143, a2);
        goto LABEL_248;
      }

      goto LABEL_266;
    }

    *a2 = -1;
    v157 = v152 - (v152 - v151) / 2;
    *(a2 + 2) = -1;
    a2[2] = 0;
    if (v147 != -1)
    {
      if (v157 == 1)
      {
        goto LABEL_229;
      }

      goto LABEL_248;
    }

    v161 = *(*v145 + 4 * v146);
    if (v161 == -1)
    {
      goto LABEL_248;
    }

    v132 = 0;
    a2[1] = v161 ^ (v143 >> 31);
    a2[2] = v157;
LABEL_249:
    if (*(&v177 + 1))
    {
      operator delete(*(&v177 + 1));
    }

    if (v176)
    {
      operator delete(v176);
    }

    if (v132)
    {
      v2 += 80;
      if (v2 == v167)
      {
        goto LABEL_259;
      }

      continue;
    }

    break;
  }
}

void sub_23CAE3C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

void sub_23CAE3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructUserSearchStrategy(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27ConstructUserSearchStrategyERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27ConstructUserSearchStrategyERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27ConstructUserSearchStrategyERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27ConstructUserSearchStrategyERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__emplace_back_slow_path<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 32 * v2;
  __p = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(32 * v2 + 0x18) = 32 * v2;
      (*(*v9 + 24))(v9);
      v8 = v18;
      goto LABEL_16;
    }

    *(32 * v2 + 0x18) = v9;
  }

  else
  {
    v10 = (v8 + 24);
  }

  *v10 = 0;
LABEL_16:
  v18 = v8 + 32;
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v12 = v17;
  while (1)
  {
    v13 = v18;
    if (v18 == v12)
    {
      break;
    }

    v18 -= 32;
    v14 = *(v13 - 8);
    if (v14 == v13 - 32)
    {
      (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      (*(*v14 + 40))(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_23CAE3F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = v9[3];
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = v9 + 3;
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = (v8 - 3);
    (*(*v9[3] + 24))();
LABEL_5:
    v9 += 4;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void std::__function::__func<operations_research::sat::ConstructIntegerCompletionSearchStrategy(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructIntegerCompletionSearchStrategy(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *a1 = -1;
  *(a1 + 2) = -1;
  a1[2] = 0;
}

uint64_t std::__function::__func<operations_research::sat::ConstructIntegerCompletionSearchStrategy(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ConstructIntegerCompletionSearchStrategy(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat40ConstructIntegerCompletionSearchStrategyERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEES5_PNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat40ConstructIntegerCompletionSearchStrategyERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEES5_PNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat40ConstructIntegerCompletionSearchStrategyERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEES5_PNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat40ConstructIntegerCompletionSearchStrategyERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEES5_PNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__emplace_back_slow_path<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
      goto LABEL_15;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(v7 + 24) = v8;
LABEL_15:
  v16 += 32;
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CAE4510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CAE4674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v4 - 32;
        do
        {
          v7 = *(v4 - 1);
          v4 -= 32;
          if (v4 == v7)
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          v6 -= 32;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,false>(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = a3;
  v8 = result;
  while (2)
  {
    v369 = a2 - 2;
    v373 = a2 - 1;
    v366 = a2 - 3;
    v375 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = a2 - v8;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v168 = *v6;

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v8, v8 + 1, v373, v168);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v8, v8 + 1, v8 + 2, v373, v6);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v8, v8 + 1, v8 + 2, v8 + 3, v373, v6);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v154 = *(a2 - 1);
              v155 = *v8;
              v156 = *v6 + 24;
              if (*v156)
              {
                v157 = *v156 + 7 + 8 * v154;
              }

              else
              {
                v157 = *v6 + 24;
              }

              v158 = *(*v157 + 40) & 0xFFFFFFFFFFFFFFFCLL;
              if (*v156)
              {
                v156 = *v156 + 7 + 8 * v155;
              }

              v159 = *(*v156 + 40) & 0xFFFFFFFFFFFFFFFCLL;
              v160 = *(v159 + 23);
              v161 = *(v158 + 23);
              if (v161 >= 0)
              {
                v162 = *(v158 + 23);
              }

              else
              {
                v162 = *(v158 + 8);
              }

              if (v161 >= 0)
              {
                v163 = v158;
              }

              else
              {
                v163 = *v158;
              }

              if (v160 >= 0)
              {
                v164 = *(v159 + 23);
              }

              else
              {
                v164 = *(v159 + 8);
              }

              if (v160 >= 0)
              {
                v165 = v159;
              }

              else
              {
                v165 = *v159;
              }

              if (v164 >= v162)
              {
                v166 = v162;
              }

              else
              {
                v166 = v164;
              }

              result = memcmp(v163, v165, v166);
              v167 = v162 < v164;
              if (result)
              {
                v167 = result < 0;
              }

              if (v167)
              {
                *v8 = v154;
                *(a2 - 1) = v155;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v169 = *v6;
            if (a5)
            {
              if (v8 != a2)
              {
                v170 = v8 + 1;
                if (v8 + 1 != a2)
                {
                  v171 = *(v169 + 24);
                  if (v171)
                  {
                    v172 = 0;
                    v173 = v171 + 7;
                    v174 = v8;
                    do
                    {
                      v253 = *v174;
                      v252 = v174[1];
                      v174 = v170;
                      v254 = *(*(v173 + 8 * v252) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                      v255 = *(*(v173 + 8 * v253) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                      v256 = *(v255 + 23);
                      v257 = *(v254 + 23);
                      if (v257 >= 0)
                      {
                        v258 = *(v254 + 23);
                      }

                      else
                      {
                        v258 = *(v254 + 8);
                      }

                      if (v257 >= 0)
                      {
                        v259 = (*(*(v173 + 8 * v252) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      else
                      {
                        v259 = *v254;
                      }

                      if (v256 >= 0)
                      {
                        v260 = *(v255 + 23);
                      }

                      else
                      {
                        v260 = *(v255 + 8);
                      }

                      if (v256 >= 0)
                      {
                        v261 = (*(*(v173 + 8 * v253) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      else
                      {
                        v261 = *v255;
                      }

                      if (v260 >= v258)
                      {
                        v262 = v258;
                      }

                      else
                      {
                        v262 = v260;
                      }

                      result = memcmp(v259, v261, v262);
                      v263 = v258 < v260;
                      if (result)
                      {
                        v263 = result < 0;
                      }

                      if (v263)
                      {
                        v264 = v172;
                        do
                        {
                          *(v9 + v264 + 4) = v253;
                          if (!v264)
                          {
                            v251 = v9;
                            goto LABEL_398;
                          }

                          v253 = *(v9 + v264 - 4);
                          v265 = *(*(v173 + 8 * v253) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                          v266 = *(v265 + 23);
                          v267 = *(v254 + 23);
                          if (v267 >= 0)
                          {
                            v268 = *(v254 + 23);
                          }

                          else
                          {
                            v268 = *(v254 + 8);
                          }

                          if (v267 >= 0)
                          {
                            v269 = v254;
                          }

                          else
                          {
                            v269 = *v254;
                          }

                          if (v266 >= 0)
                          {
                            v270 = *(v265 + 23);
                          }

                          else
                          {
                            v270 = *(v265 + 8);
                          }

                          if (v266 >= 0)
                          {
                            v271 = (*(*(v173 + 8 * v253) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                          }

                          else
                          {
                            v271 = *v265;
                          }

                          if (v270 >= v268)
                          {
                            v272 = v268;
                          }

                          else
                          {
                            v272 = v270;
                          }

                          result = memcmp(v269, v271, v272);
                          v273 = v268 < v270;
                          if (result)
                          {
                            v273 = result < 0;
                          }

                          v264 -= 4;
                        }

                        while (v273);
                        v251 = (v9 + v264 + 4);
LABEL_398:
                        *v251 = v252;
                      }

                      v170 = v174 + 1;
                      v172 += 4;
                    }

                    while (v174 + 1 != v375);
                  }
                }
              }
            }

            else if (v8 != a2)
            {
              v340 = v8 + 1;
              if (v8 + 1 != a2)
              {
                v341 = *(v169 + 24);
                if (v341)
                {
                  v342 = v341 + 7;
                  do
                  {
                    v344 = *v9;
                    v343 = v9[1];
                    v9 = v340;
                    v345 = *(*(v342 + 8 * v343) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                    v346 = *(*(v342 + 8 * v344) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                    v347 = *(v346 + 23);
                    v348 = *(v345 + 23);
                    if (v348 >= 0)
                    {
                      v349 = *(v345 + 23);
                    }

                    else
                    {
                      v349 = *(v345 + 8);
                    }

                    if (v348 >= 0)
                    {
                      v350 = (*(*(v342 + 8 * v343) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    else
                    {
                      v350 = *v345;
                    }

                    if (v347 >= 0)
                    {
                      v351 = *(v346 + 23);
                    }

                    else
                    {
                      v351 = *(v346 + 8);
                    }

                    if (v347 >= 0)
                    {
                      v352 = (*(*(v342 + 8 * v344) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    else
                    {
                      v352 = *v346;
                    }

                    if (v351 >= v349)
                    {
                      v353 = v349;
                    }

                    else
                    {
                      v353 = v351;
                    }

                    result = memcmp(v350, v352, v353);
                    v354 = v349 < v351;
                    if (result)
                    {
                      v354 = result < 0;
                    }

                    if (v354)
                    {
                      v355 = v9;
                      do
                      {
                        *v355 = v344;
                        v344 = *(v355 - 2);
                        v356 = *(*(v342 + 8 * v344) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                        v357 = *(v356 + 23);
                        v358 = *(v345 + 23);
                        if (v358 >= 0)
                        {
                          v359 = *(v345 + 23);
                        }

                        else
                        {
                          v359 = *(v345 + 8);
                        }

                        if (v358 >= 0)
                        {
                          v360 = v345;
                        }

                        else
                        {
                          v360 = *v345;
                        }

                        if (v357 >= 0)
                        {
                          v361 = *(v356 + 23);
                        }

                        else
                        {
                          v361 = *(v356 + 8);
                        }

                        if (v357 >= 0)
                        {
                          v362 = (*(*(v342 + 8 * v344) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        else
                        {
                          v362 = *v356;
                        }

                        if (v361 >= v359)
                        {
                          v363 = v359;
                        }

                        else
                        {
                          v363 = v361;
                        }

                        result = memcmp(v360, v362, v363);
                        v364 = v359 < v361;
                        if (result)
                        {
                          v364 = result < 0;
                        }

                        --v355;
                      }

                      while (v364);
                      *v355 = v343;
                      a2 = v375;
                    }

                    v340 = v9 + 1;
                  }

                  while (v9 + 1 != a2);
                }
              }
            }

            return result;
          }

          v381 = v8;
          if (!a4)
          {
            if (v8 != a2)
            {
              v175 = (v10 - 2) >> 1;
              v374 = v175;
              do
              {
                v176 = v175;
                v177 = 4 * v175;
                if (v374 >= (4 * v175) >> 2)
                {
                  v178 = *a3;
                  v179 = (v177 >> 1) | 1;
                  v180 = &v9[v179];
                  v181 = *v180;
                  if ((v177 >> 1) + 2 >= v10)
                  {
                    v371 = &v9[v179];
                    v199 = *(v178 + 24) & 1;
                    v201 = *(v178 + 24) - 1;
                  }

                  else
                  {
                    v370 = v180[1];
                    v182 = v178 + 24;
                    v183 = *(v178 + 24);
                    v383 = *a3;
                    v378 = v183 - 1;
                    v184 = (v183 & 1) == 0;
                    v388 = v183 & 1;
                    v185 = v183 + 7;
                    v186 = v185 + 8 * v181;
                    if (v184)
                    {
                      v186 = v182;
                    }

                    v187 = *(*v186 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                    v188 = v185 + 8 * v180[1];
                    if (!v184)
                    {
                      v182 = v188;
                    }

                    v189 = *(*v182 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                    v190 = *(v189 + 23);
                    v191 = *(v187 + 23);
                    if (v191 >= 0)
                    {
                      v192 = *(v187 + 23);
                    }

                    else
                    {
                      v192 = *(v187 + 8);
                    }

                    if (v191 >= 0)
                    {
                      v193 = v187;
                    }

                    else
                    {
                      v193 = *v187;
                    }

                    if (v190 >= 0)
                    {
                      v194 = *(v189 + 23);
                    }

                    else
                    {
                      v194 = *(v189 + 8);
                    }

                    if (v190 >= 0)
                    {
                      v195 = v189;
                    }

                    else
                    {
                      v195 = *v189;
                    }

                    if (v194 >= v192)
                    {
                      v196 = v192;
                    }

                    else
                    {
                      v196 = v194;
                    }

                    v197 = memcmp(v193, v195, v196);
                    v198 = v192 < v194;
                    if (v197)
                    {
                      v198 = v197 < 0;
                    }

                    v178 = v383;
                    v199 = v388;
                    v200 = !v198;
                    if (v198)
                    {
                      v181 = v370;
                      ++v180;
                    }

                    v371 = v180;
                    v201 = v378;
                    v9 = v381;
                    if (!v200)
                    {
                      v179 = (v177 >> 1) + 2;
                    }
                  }

                  v202 = &v9[v177 / 4];
                  v203 = v9[v177 / 4];
                  v204 = v178 + 24;
                  v205 = v201 + 8;
                  v206 = v201 + 8 + 8 * v181;
                  v384 = v204;
                  v389 = v199;
                  v207 = v199 == 0;
                  if (!v199)
                  {
                    v206 = v204;
                  }

                  v208 = *(*v206 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                  v379 = v205;
                  v209 = v205 + 8 * v203;
                  if (v207)
                  {
                    v209 = v204;
                  }

                  v210 = *(*v209 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                  v211 = *(v210 + 23);
                  v212 = *(v208 + 23);
                  if (v212 >= 0)
                  {
                    v213 = *(v208 + 23);
                  }

                  else
                  {
                    v213 = *(v208 + 8);
                  }

                  if (v212 >= 0)
                  {
                    v214 = v208;
                  }

                  else
                  {
                    v214 = *v208;
                  }

                  if (v211 >= 0)
                  {
                    v215 = *(v210 + 23);
                  }

                  else
                  {
                    v215 = *(v210 + 8);
                  }

                  if (v211 >= 0)
                  {
                    v216 = (*(*v209 + 40) & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  else
                  {
                    v216 = *v210;
                  }

                  if (v215 >= v213)
                  {
                    v217 = v213;
                  }

                  else
                  {
                    v217 = v215;
                  }

                  result = memcmp(v214, v216, v217);
                  v218 = v213 < v215;
                  if (result)
                  {
                    v218 = result < 0;
                  }

                  if (!v218)
                  {
                    v365 = v203;
                    v367 = v176;
                    v219 = v371;
                    do
                    {
                      v249 = v219;
                      *v202 = v181;
                      if (v374 < v179)
                      {
                        break;
                      }

                      v250 = (2 * v179) | 1;
                      v219 = &v9[v250];
                      v179 = 2 * v179 + 2;
                      v181 = *v219;
                      v237 = v384;
                      v236 = v389;
                      v238 = v379;
                      if (v179 < v10)
                      {
                        v220 = v219 + 1;
                        v372 = v219[1];
                        v221 = v379 + 8 * v181;
                        if (!v389)
                        {
                          v221 = v384;
                        }

                        v222 = *(*v221 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                        v223 = v379 + 8 * v219[1];
                        if (!v389)
                        {
                          v223 = v384;
                        }

                        v224 = *(*v223 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                        v225 = *(v224 + 23);
                        v226 = *(v222 + 23);
                        v227 = &v9[v250];
                        if (v226 >= 0)
                        {
                          v228 = *(v222 + 23);
                        }

                        else
                        {
                          v228 = *(v222 + 8);
                        }

                        if (v226 >= 0)
                        {
                          v229 = v222;
                        }

                        else
                        {
                          v229 = *v222;
                        }

                        if (v225 >= 0)
                        {
                          v230 = *(v224 + 23);
                        }

                        else
                        {
                          v230 = *(v224 + 8);
                        }

                        if (v225 >= 0)
                        {
                          v231 = v224;
                        }

                        else
                        {
                          v231 = *v224;
                        }

                        if (v230 >= v228)
                        {
                          v232 = v228;
                        }

                        else
                        {
                          v232 = v230;
                        }

                        v233 = memcmp(v229, v231, v232);
                        v234 = v228 >= v230;
                        v219 = v227;
                        v235 = !v234;
                        if (v233)
                        {
                          v235 = v233 < 0;
                        }

                        v237 = v384;
                        v236 = v389;
                        if (v235)
                        {
                          v181 = v372;
                        }

                        v238 = v379;
                        v9 = v381;
                        if (v235)
                        {
                          v219 = v220;
                        }

                        else
                        {
                          v179 = v250;
                        }
                      }

                      else
                      {
                        v179 = v250;
                      }

                      v239 = v238 + 8 * v181;
                      if (!v236)
                      {
                        v239 = v237;
                      }

                      v240 = *(*v239 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                      v241 = *(v210 + 23);
                      v242 = *(v240 + 23);
                      if (v242 >= 0)
                      {
                        v243 = *(v240 + 23);
                      }

                      else
                      {
                        v243 = *(v240 + 8);
                      }

                      if (v242 >= 0)
                      {
                        v244 = v240;
                      }

                      else
                      {
                        v244 = *v240;
                      }

                      if (v241 >= 0)
                      {
                        v245 = *(v210 + 23);
                      }

                      else
                      {
                        v245 = *(v210 + 8);
                      }

                      if (v241 >= 0)
                      {
                        v246 = v210;
                      }

                      else
                      {
                        v246 = *v210;
                      }

                      if (v245 >= v243)
                      {
                        v247 = v243;
                      }

                      else
                      {
                        v247 = v245;
                      }

                      result = memcmp(v244, v246, v247);
                      v248 = v243 < v245;
                      if (result)
                      {
                        v248 = result < 0;
                      }

                      v202 = v249;
                    }

                    while (!v248);
                    v176 = v367;
                    *v249 = v365;
                  }
                }

                v175 = v176 - 1;
              }

              while (v176);
              v274 = v375;
              v275 = a3;
              do
              {
                v376 = v274;
                v277 = 0;
                v380 = *v9;
                v278 = (v10 - 2) >> 1;
                v385 = (*v275 + 24);
                v390 = v10;
                v279 = v9;
                do
                {
                  while (1)
                  {
                    v298 = &v279[v277];
                    v297 = v298 + 1;
                    v296 = v298[1];
                    v299 = (2 * v277) | 1;
                    v300 = 2 * v277 + 2;
                    if (v300 < v10)
                    {
                      break;
                    }

                    v277 = (2 * v277) | 1;
                    *v279 = v296;
                    v279 = v298 + 1;
                    if (v299 > v278)
                    {
                      goto LABEL_473;
                    }
                  }

                  v282 = v298[2];
                  v280 = v298 + 2;
                  v281 = v282;
                  v283 = *v385 + 7;
                  v284 = (v283 + 8 * v296);
                  if ((*v385 & 1) == 0)
                  {
                    v284 = v385;
                  }

                  v285 = *(*v284 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                  v286 = (v283 + 8 * v281);
                  if ((*v385 & 1) == 0)
                  {
                    v286 = v385;
                  }

                  v287 = *(*v286 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                  v288 = *(v287 + 23);
                  v289 = *(v285 + 23);
                  if (v289 >= 0)
                  {
                    v290 = *(v285 + 23);
                  }

                  else
                  {
                    v290 = *(v285 + 8);
                  }

                  if (v289 >= 0)
                  {
                    v291 = v285;
                  }

                  else
                  {
                    v291 = *v285;
                  }

                  if (v288 >= 0)
                  {
                    v292 = *(v287 + 23);
                  }

                  else
                  {
                    v292 = *(v287 + 8);
                  }

                  if (v288 >= 0)
                  {
                    v293 = v287;
                  }

                  else
                  {
                    v293 = *v287;
                  }

                  if (v292 >= v290)
                  {
                    v294 = v290;
                  }

                  else
                  {
                    v294 = v292;
                  }

                  result = memcmp(v291, v293, v294);
                  v234 = v290 >= v292;
                  v10 = v390;
                  v295 = !v234;
                  if (result)
                  {
                    v295 = result < 0;
                  }

                  if (v295)
                  {
                    v296 = v281;
                    v297 = v280;
                    v277 = v300;
                  }

                  else
                  {
                    v277 = v299;
                  }

                  *v279 = v296;
                  v279 = v297;
                }

                while (v277 <= v278);
LABEL_473:
                v301 = v376 - 1;
                if (v297 == v376 - 1)
                {
                  v274 = v376 - 1;
                  *v297 = v380;
                }

                else
                {
                  *v297 = *v301;
                  v274 = v376 - 1;
                  *v301 = v380;
                  v302 = (v297 - v381 + 4) >> 2;
                  v276 = v302 < 2;
                  v303 = v302 - 2;
                  if (!v276)
                  {
                    v304 = v303 >> 1;
                    v305 = &v381[v303 >> 1];
                    v306 = *v305;
                    v307 = *a3 + 24;
                    v308 = *v307;
                    v309 = *v307 + 7;
                    v310 = v309 + 8 * v306;
                    if ((*v307 & 1) == 0)
                    {
                      v310 = *a3 + 24;
                    }

                    v311 = *(*v310 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                    v386 = *v297;
                    if (v308)
                    {
                      v307 = v309 + 8 * *v297;
                    }

                    v312 = *(*v307 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                    v313 = *(v312 + 23);
                    v314 = *(v311 + 23);
                    if (v314 >= 0)
                    {
                      v315 = *(v311 + 23);
                    }

                    else
                    {
                      v315 = *(v311 + 8);
                    }

                    if (v314 >= 0)
                    {
                      v316 = v311;
                    }

                    else
                    {
                      v316 = *v311;
                    }

                    if (v313 >= 0)
                    {
                      v317 = *(v312 + 23);
                    }

                    else
                    {
                      v317 = *(v312 + 8);
                    }

                    if (v313 >= 0)
                    {
                      v318 = (*(*v307 + 40) & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    else
                    {
                      v318 = *v312;
                    }

                    if (v317 >= v315)
                    {
                      v319 = v315;
                    }

                    else
                    {
                      v319 = v317;
                    }

                    result = memcmp(v316, v318, v319);
                    v234 = v315 >= v317;
                    v10 = v390;
                    v320 = !v234;
                    if (result)
                    {
                      v320 = result < 0;
                    }

                    if (v320)
                    {
                      if (v308)
                      {
                        do
                        {
                          v321 = v305;
                          *v297 = v306;
                          if (!v304)
                          {
                            break;
                          }

                          v304 = (v304 - 1) >> 1;
                          v305 = &v381[v304];
                          v306 = *v305;
                          v331 = *(*(v309 + 8 * v306) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                          v332 = *(v312 + 23);
                          v333 = *(v331 + 23);
                          if (v333 >= 0)
                          {
                            v334 = *(v331 + 23);
                          }

                          else
                          {
                            v334 = *(v331 + 8);
                          }

                          if (v333 >= 0)
                          {
                            v335 = (*(*(v309 + 8 * v306) + 40) & 0xFFFFFFFFFFFFFFFCLL);
                          }

                          else
                          {
                            v335 = *v331;
                          }

                          if (v332 >= 0)
                          {
                            v336 = *(v312 + 23);
                          }

                          else
                          {
                            v336 = *(v312 + 8);
                          }

                          if (v332 >= 0)
                          {
                            v337 = v312;
                          }

                          else
                          {
                            v337 = *v312;
                          }

                          if (v336 >= v334)
                          {
                            v338 = v334;
                          }

                          else
                          {
                            v338 = v336;
                          }

                          result = memcmp(v335, v337, v338);
                          v234 = v334 >= v336;
                          v10 = v390;
                          v339 = !v234;
                          if (result)
                          {
                            v339 = result < 0;
                          }

                          v297 = v321;
                        }

                        while (v339);
                      }

                      else
                      {
                        do
                        {
                          v321 = v305;
                          *v297 = *v305;
                          if (!v304)
                          {
                            break;
                          }

                          v304 = (v304 - 1) >> 1;
                          v305 = &v381[v304];
                          v322 = *(v308 + 40) & 0xFFFFFFFFFFFFFFFCLL;
                          v323 = *(v312 + 23);
                          v324 = *(v322 + 23);
                          if (v324 >= 0)
                          {
                            v325 = *(v322 + 23);
                          }

                          else
                          {
                            v325 = *(v322 + 8);
                          }

                          if (v324 >= 0)
                          {
                            v326 = (*(v308 + 40) & 0xFFFFFFFFFFFFFFFCLL);
                          }

                          else
                          {
                            v326 = *v322;
                          }

                          if (v323 >= 0)
                          {
                            v327 = *(v312 + 23);
                          }

                          else
                          {
                            v327 = *(v312 + 8);
                          }

                          if (v323 >= 0)
                          {
                            v328 = v312;
                          }

                          else
                          {
                            v328 = *v312;
                          }

                          if (v327 >= v325)
                          {
                            v329 = v325;
                          }

                          else
                          {
                            v329 = v327;
                          }

                          result = memcmp(v326, v328, v329);
                          v330 = v325 < v327;
                          if (result)
                          {
                            v330 = result < 0;
                          }

                          v297 = v321;
                        }

                        while (v330);
                      }

                      *v321 = v386;
                    }
                  }
                }

                v276 = v10-- <= 2;
                v9 = v381;
                v275 = a3;
              }

              while (!v276);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = &v8[v10 >> 1];
          v13 = *v6;
          if (v10 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(&v9[v10 >> 1], v9, v373, v13);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v9, &v9[v10 >> 1], v373, v13);
            v14 = v9 + 1;
            v15 = v11;
            v16 = &v9[v15];
            v17 = &v9[v15 - 1];
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v14, v17, v369, *v6);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v381 + 2, &v14[v15], v366, *v6);
            v18 = v17;
            v9 = v381;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(v18, v12, &v14[v15], *v6);
            v19 = *v381;
            *v381 = *v16;
            *v16 = v19;
          }

          v20 = *v6;
          v21 = *v9;
          v382 = *v9;
          v387 = a4 - 1;
          if (a5)
          {
            v22 = *(v20 + 24);
            break;
          }

          v23 = v20 + 24;
          v22 = *(v20 + 24);
          v24 = v22 + 7;
          v25 = v22 + 7 + 8 * *(v9 - 1);
          if ((v22 & 1) == 0)
          {
            v25 = v20 + 24;
          }

          v26 = *(*v25 + 40) & 0xFFFFFFFFFFFFFFFCLL;
          v27 = v24 + 8 * v21;
          if ((v22 & 1) == 0)
          {
            v27 = v20 + 24;
          }

          v28 = *(*v27 + 40) & 0xFFFFFFFFFFFFFFFCLL;
          v29 = *(v28 + 23);
          v30 = *(v26 + 23);
          if (v30 >= 0)
          {
            v31 = *(v26 + 23);
          }

          else
          {
            v31 = *(v26 + 8);
          }

          if (v30 >= 0)
          {
            v32 = v26;
          }

          else
          {
            v32 = *v26;
          }

          if (v29 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = *(v28 + 8);
          }

          if (v29 >= 0)
          {
            v34 = (*(*v27 + 40) & 0xFFFFFFFFFFFFFFFCLL);
          }

          else
          {
            v34 = *v28;
          }

          if (v33 >= v31)
          {
            v35 = v31;
          }

          else
          {
            v35 = v33;
          }

          v36 = memcmp(v32, v34, v35);
          v37 = v31 < v33;
          if (v36)
          {
            v37 = v36 < 0;
          }

          if (v37)
          {
            break;
          }

          v96 = v24 + 8 * *v373;
          if ((v22 & 1) == 0)
          {
            v96 = v20 + 24;
          }

          v97 = *(*v96 + 40) & 0xFFFFFFFFFFFFFFFCLL;
          v98 = *(v97 + 23);
          if (v98 >= 0)
          {
            v99 = *(v97 + 23);
          }

          else
          {
            v99 = *(v97 + 8);
          }

          if (v98 >= 0)
          {
            v100 = v97;
          }

          else
          {
            v100 = *v97;
          }

          if (v99 >= v33)
          {
            v101 = v33;
          }

          else
          {
            v101 = v99;
          }

          result = memcmp(v34, v100, v101);
          v102 = v33 < v99;
          if (result)
          {
            v102 = result < 0;
          }

          if (v102)
          {
            v8 = v381;
            if (v22)
            {
              do
              {
                v103 = v8[1];
                ++v8;
                v104 = *(*(v24 + 8 * v103) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                v105 = *(v104 + 23);
                if (v105 >= 0)
                {
                  v106 = *(v104 + 23);
                }

                else
                {
                  v106 = *(v104 + 8);
                }

                if (v105 >= 0)
                {
                  v107 = v104;
                }

                else
                {
                  v107 = *v104;
                }

                if (v106 >= v33)
                {
                  v108 = v33;
                }

                else
                {
                  v108 = v106;
                }

                result = memcmp(v34, v107, v108);
                v109 = v33 < v106;
                if (result)
                {
                  v109 = result < 0;
                }
              }

              while (!v109);
            }

            else
            {
              v8 = v381 + 1;
            }
          }

          else if (v22)
          {
            v117 = v381 + 1;
            do
            {
              v8 = v117;
              if (v117 >= v375)
              {
                break;
              }

              ++v117;
              v118 = *(*(v24 + 8 * *v8) + 40) & 0xFFFFFFFFFFFFFFFCLL;
              v119 = *(v118 + 23);
              if (v119 >= 0)
              {
                v120 = *(v118 + 23);
              }

              else
              {
                v120 = *(v118 + 8);
              }

              if (v119 >= 0)
              {
                v121 = (*(*(v24 + 8 * *v8) + 40) & 0xFFFFFFFFFFFFFFFCLL);
              }

              else
              {
                v121 = *v118;
              }

              if (v120 >= v33)
              {
                v122 = v33;
              }

              else
              {
                v122 = v120;
              }

              result = memcmp(v34, v121, v122);
              v123 = v33 < v120;
              if (result)
              {
                v123 = result < 0;
              }
            }

            while (!v123);
          }

          else
          {
            v110 = v381 + 1;
            do
            {
              v8 = v110;
              if (v110 >= v375)
              {
                break;
              }

              v111 = *(v22 + 40) & 0xFFFFFFFFFFFFFFFCLL;
              v112 = *(v111 + 23);
              if (v112 >= 0)
              {
                v113 = *(v111 + 23);
              }

              else
              {
                v113 = *(v111 + 8);
              }

              if (v112 >= 0)
              {
                v114 = (*(v22 + 40) & 0xFFFFFFFFFFFFFFFCLL);
              }

              else
              {
                v114 = *v111;
              }

              if (v113 >= v33)
              {
                v115 = v33;
              }

              else
              {
                v115 = v113;
              }

              result = memcmp(v34, v114, v115);
              v116 = result < 0;
              if (!result)
              {
                v116 = v33 < v113;
              }

              v110 = v8 + 1;
            }

            while (!v116);
          }

          v124 = v375;
          if (v8 < v375)
          {
            v124 = v375;
            do
            {
              v125 = *--v124;
              v126 = v24 + 8 * v125;
              if ((v22 & 1) == 0)
              {
                v126 = v23;
              }

              v127 = *(*v126 + 40) & 0xFFFFFFFFFFFFFFFCLL;
              v128 = *(v127 + 23);
              if (v128 >= 0)
              {
                v129 = *(v127 + 23);
              }

              else
              {
                v129 = *(v127 + 8);
              }

              if (v128 >= 0)
              {
                v130 = v127;
              }

              else
              {
                v130 = *v127;
              }

              if (v129 >= v33)
              {
                v131 = v33;
              }

              else
              {
                v131 = v129;
              }

              result = memcmp(v34, v130, v131);
              v132 = v33 < v129;
              if (result)
              {
                v132 = result < 0;
              }
            }

            while (v132);
          }

          if (v8 >= v124)
          {
            v133 = v381;
          }

          else
          {
            v133 = v381;
            do
            {
              v134 = *v8;
              *v8 = *v124;
              *v124 = v134;
              v135 = *(v28 + 23);
              if (v135 >= 0)
              {
                v136 = *(v28 + 23);
              }

              else
              {
                v136 = *(v28 + 8);
              }

              if (v135 >= 0)
              {
                v137 = v28;
              }

              else
              {
                v137 = *v28;
              }

              if (v22)
              {
                do
                {
                  v138 = v8[1];
                  ++v8;
                  v139 = *(*(v24 + 8 * v138) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                  v140 = *(v139 + 23);
                  if (v140 >= 0)
                  {
                    v141 = *(v139 + 23);
                  }

                  else
                  {
                    v141 = *(v139 + 8);
                  }

                  if (v140 >= 0)
                  {
                    v142 = v139;
                  }

                  else
                  {
                    v142 = *v139;
                  }

                  if (v141 >= v136)
                  {
                    v143 = v136;
                  }

                  else
                  {
                    v143 = v141;
                  }

                  v144 = memcmp(v137, v142, v143);
                  v145 = v136 < v141;
                  if (v144)
                  {
                    v145 = v144 < 0;
                  }
                }

                while (!v145);
                do
                {
                  v146 = *--v124;
                  v147 = *(*(v24 + 8 * v146) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                  v148 = *(v147 + 23);
                  if (v148 >= 0)
                  {
                    v149 = *(v147 + 23);
                  }

                  else
                  {
                    v149 = *(v147 + 8);
                  }

                  if (v148 >= 0)
                  {
                    v150 = v147;
                  }

                  else
                  {
                    v150 = *v147;
                  }

                  if (v149 >= v136)
                  {
                    v151 = v136;
                  }

                  else
                  {
                    v151 = v149;
                  }

                  result = memcmp(v137, v150, v151);
                  v152 = v136 < v149;
                  if (result)
                  {
                    v152 = result < 0;
                  }
                }

                while (v152);
              }

              else
              {
                ++v8;
                --v124;
              }
            }

            while (v8 < v124);
          }

          v153 = v8 - 1;
          if (v8 - 1 != v133)
          {
            *v133 = *v153;
          }

          a5 = 0;
          a4 = v387;
          *v153 = v382;
          a2 = v375;
          v6 = a3;
        }

        v38 = v20 + 24;
        v39 = v22 + 7;
        v40 = v22 + 7 + 8 * v21;
        if ((v22 & 1) == 0)
        {
          v40 = v20 + 24;
        }

        v41 = *(*v40 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v42 = *(v41 + 23);
        if (v42 >= 0)
        {
          v43 = *(v41 + 23);
        }

        else
        {
          v43 = *(v41 + 8);
        }

        if (v42 >= 0)
        {
          v44 = (*(*v40 + 40) & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v44 = *v41;
        }

        if ((v22 & 1) == 0)
        {
          v45 = v381 + 1;
LABEL_76:
          v55 = v375;
          do
          {
            if (v45 >= v55)
            {
              break;
            }

            v64 = *--v55;
            v65 = v39 + 8 * v64;
            if ((v22 & 1) == 0)
            {
              v65 = v38;
            }

            v66 = *(*v65 + 40) & 0xFFFFFFFFFFFFFFFCLL;
            v67 = *(v66 + 23);
            if (v67 >= 0)
            {
              v68 = *(v66 + 23);
            }

            else
            {
              v68 = *(v66 + 8);
            }

            if (v67 >= 0)
            {
              v69 = v66;
            }

            else
            {
              v69 = *v66;
            }

            if (v43 >= v68)
            {
              v70 = v68;
            }

            else
            {
              v70 = v43;
            }

            v71 = memcmp(v69, v44, v70);
            v72 = v68 < v43;
            if (v71)
            {
              v72 = v71 < 0;
            }
          }

          while (!v72);
          goto LABEL_92;
        }

        v46 = 4;
        v45 = v381;
        do
        {
          v47 = v45[1];
          ++v45;
          v48 = *(*(v39 + 8 * v47) + 40) & 0xFFFFFFFFFFFFFFFCLL;
          v49 = *(v48 + 23);
          if (v49 >= 0)
          {
            v50 = *(v48 + 23);
          }

          else
          {
            v50 = *(v48 + 8);
          }

          if (v49 >= 0)
          {
            v51 = v48;
          }

          else
          {
            v51 = *v48;
          }

          if (v43 >= v50)
          {
            v52 = v50;
          }

          else
          {
            v52 = v43;
          }

          v53 = memcmp(v51, v44, v52);
          v54 = v50 < v43;
          if (v53)
          {
            v54 = v53 < 0;
          }

          v46 -= 4;
        }

        while (v54);
        v55 = v375;
        if (!v46)
        {
          goto LABEL_76;
        }

        do
        {
          v56 = *--v55;
          v57 = *(*(v39 + 8 * v56) + 40) & 0xFFFFFFFFFFFFFFFCLL;
          v58 = *(v57 + 23);
          if (v58 >= 0)
          {
            v59 = *(v57 + 23);
          }

          else
          {
            v59 = *(v57 + 8);
          }

          if (v58 >= 0)
          {
            v60 = v57;
          }

          else
          {
            v60 = *v57;
          }

          if (v43 >= v59)
          {
            v61 = v59;
          }

          else
          {
            v61 = v43;
          }

          v62 = memcmp(v60, v44, v61);
          v63 = v59 < v43;
          if (v62)
          {
            v63 = v62 < 0;
          }
        }

        while (!v63);
LABEL_92:
        v8 = v45;
        if (v45 < v55)
        {
          v8 = v45;
          v73 = v55;
          do
          {
            v74 = *v8;
            *v8 = *v73;
            *v73 = v74;
            v75 = *(v41 + 23);
            if (v75 >= 0)
            {
              v76 = *(v41 + 23);
            }

            else
            {
              v76 = *(v41 + 8);
            }

            if (v75 >= 0)
            {
              v77 = v41;
            }

            else
            {
              v77 = *v41;
            }

            if (v22)
            {
              do
              {
                v78 = v8[1];
                ++v8;
                v79 = *(*(v39 + 8 * v78) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                v80 = *(v79 + 23);
                if (v80 >= 0)
                {
                  v81 = *(v79 + 23);
                }

                else
                {
                  v81 = *(v79 + 8);
                }

                if (v80 >= 0)
                {
                  v82 = v79;
                }

                else
                {
                  v82 = *v79;
                }

                if (v76 >= v81)
                {
                  v83 = v81;
                }

                else
                {
                  v83 = v76;
                }

                v84 = memcmp(v82, v77, v83);
                v85 = v81 < v76;
                if (v84)
                {
                  v85 = v84 < 0;
                }
              }

              while (v85);
              do
              {
                v86 = *--v73;
                v87 = *(*(v39 + 8 * v86) + 40) & 0xFFFFFFFFFFFFFFFCLL;
                v88 = *(v87 + 23);
                if (v88 >= 0)
                {
                  v89 = *(v87 + 23);
                }

                else
                {
                  v89 = *(v87 + 8);
                }

                if (v88 >= 0)
                {
                  v90 = v87;
                }

                else
                {
                  v90 = *v87;
                }

                if (v76 >= v89)
                {
                  v91 = v89;
                }

                else
                {
                  v91 = v76;
                }

                v92 = memcmp(v90, v77, v91);
                v93 = v89 < v76;
                if (v92)
                {
                  v93 = v92 < 0;
                }
              }

              while (!v93);
            }

            else
            {
              ++v8;
              --v73;
            }
          }

          while (v8 < v73);
        }

        v94 = v8 - 1;
        if (v8 - 1 != v381)
        {
          *v381 = *v94;
        }

        a4 = v387;
        *v94 = v382;
        a2 = v375;
        v6 = a3;
        if (v45 >= v55)
        {
          break;
        }

LABEL_133:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,false>(v381, v8 - 1, a3, v387, a5 & 1);
        a5 = 0;
      }

      v95 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *>(v381, v8 - 1, a3);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *>(v8, v375, a3);
      if (result)
      {
        break;
      }

      if ((v95 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    a2 = v8 - 1;
    v8 = v381;
    if ((v95 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}