double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PartitionIndicesAroundRandomTimeWindow(std::vector<int> const&,operations_research::sat::CpModelProto const&,operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,operations_research::sat::anonymous namespace::StartEndIndex *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __n128 a4)
{
  v4 = *(a2 + 1);
  v5 = *(a1 + 1);
  if (v4 < v5 || v5 >= v4 && ((a4.n128_u64[0] = *(a2 + 3), v21 = *(a1 + 3), a4.n128_f64[0] < v21) || v21 >= a4.n128_f64[0] && *(a2 + 4) < *(a1 + 4)))
  {
    v6 = *(a3 + 1);
    if (v6 < v4 || v4 >= v6 && ((v23 = *(a3 + 3), v24 = *(a2 + 3), v23 < v24) || v24 >= v23 && *(a3 + 4) < *(a2 + 4)))
    {
      v7 = *a1;
      a4 = a1[1];
      v8 = a3[1];
      *a1 = *a3;
      a1[1] = v8;
    }

    else
    {
      v16 = *a1;
      a4 = a1[1];
      v17 = a2[1];
      *a1 = *a2;
      a1[1] = v17;
      *a2 = v16;
      a2[1] = a4;
      v18 = *(a3 + 1);
      v19 = *(a2 + 1);
      if (v18 >= v19)
      {
        if (v19 < v18)
        {
          return a4.n128_f64[0];
        }

        a4.n128_u64[0] = *(a3 + 3);
        v26 = *(a2 + 3);
        if (a4.n128_f64[0] >= v26 && (v26 < a4.n128_f64[0] || *(a3 + 4) >= *(a2 + 4)))
        {
          return a4.n128_f64[0];
        }
      }

      v7 = *a2;
      a4 = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
    }

    *a3 = v7;
    a3[1] = a4;
    return a4.n128_f64[0];
  }

  v9 = *(a3 + 1);
  if (v9 < v4 || v4 >= v9 && ((a4.n128_u64[0] = *(a3 + 3), v22 = *(a2 + 3), a4.n128_f64[0] < v22) || v22 >= a4.n128_f64[0] && *(a3 + 4) < *(a2 + 4)))
  {
    v10 = *a2;
    a4 = a2[1];
    v11 = a3[1];
    *a2 = *a3;
    a2[1] = v11;
    *a3 = v10;
    a3[1] = a4;
    v12 = *(a2 + 1);
    v13 = *(a1 + 1);
    if (v12 < v13 || v13 >= v12 && ((a4.n128_u64[0] = *(a2 + 3), v25 = *(a1 + 3), a4.n128_f64[0] < v25) || v25 >= a4.n128_f64[0] && *(a2 + 4) < *(a1 + 4)))
    {
      v14 = *a1;
      a4 = a1[1];
      v15 = a2[1];
      *a1 = *a2;
      a1[1] = v15;
      *a2 = v14;
      a2[1] = a4;
    }
  }

  return a4.n128_f64[0];
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PartitionIndicesAroundRandomTimeWindow(std::vector<int> const&,operations_research::sat::CpModelProto const&,operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,operations_research::sat::anonymous namespace::StartEndIndex *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __n128 a6)
{
  v12 = *(a4 + 1);
  v13 = *(a3 + 8);
  if (v12 < v13 || v13 >= v12 && ((*&v11 = *(a4 + 3), v24 = *(a3 + 24), *&v11 < v24) || v24 >= *&v11 && *(a4 + 4) < *(a3 + 16)))
  {
    v14 = *a3;
    v11 = *(a3 + 16);
    v15 = a4[1];
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = v14;
    a4[1] = v11;
    v16 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v16 < v17 || v17 >= v16 && ((*&v11 = *(a3 + 24), v25 = *(a2 + 24), *&v11 < v25) || v25 >= *&v11 && *(a3 + 16) < *(a2 + 16)))
    {
      v18 = *a2;
      v11 = *(a2 + 16);
      v19 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v19;
      *a3 = v18;
      *(a3 + 16) = v11;
      v20 = *(a2 + 8);
      v21 = *(a1 + 8);
      if (v20 < v21 || v21 >= v20 && ((*&v11 = *(a2 + 24), v46 = *(a1 + 24), *&v11 < v46) || v46 >= *&v11 && *(a2 + 16) < *(a1 + 16)))
      {
        v22 = *a1;
        v11 = *(a1 + 16);
        v23 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v23;
        *a2 = v22;
        *(a2 + 16) = v11;
      }
    }
  }

  v26 = *(a5 + 1);
  v27 = *(a4 + 1);
  if (v26 < v27 || v27 >= v26 && ((*&v11 = *(a5 + 3), v42 = *(a4 + 3), *&v11 < v42) || v42 >= *&v11 && *(a5 + 4) < *(a4 + 4)))
  {
    v28 = *a4;
    v11 = a4[1];
    v29 = a5[1];
    *a4 = *a5;
    a4[1] = v29;
    *a5 = v28;
    a5[1] = v11;
    v30 = *(a4 + 1);
    v31 = *(a3 + 8);
    if (v30 < v31 || v31 >= v30 && ((*&v11 = *(a4 + 3), v43 = *(a3 + 24), *&v11 < v43) || v43 >= *&v11 && *(a4 + 4) < *(a3 + 16)))
    {
      v32 = *a3;
      v11 = *(a3 + 16);
      v33 = a4[1];
      *a3 = *a4;
      *(a3 + 16) = v33;
      *a4 = v32;
      a4[1] = v11;
      v34 = *(a3 + 8);
      v35 = *(a2 + 8);
      if (v34 < v35 || v35 >= v34 && ((*&v11 = *(a3 + 24), v44 = *(a2 + 24), *&v11 < v44) || v44 >= *&v11 && *(a3 + 16) < *(a2 + 16)))
      {
        v36 = *a2;
        v11 = *(a2 + 16);
        v37 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v37;
        *a3 = v36;
        *(a3 + 16) = v11;
        v38 = *(a2 + 8);
        v39 = *(a1 + 8);
        if (v38 < v39 || v39 >= v38 && ((*&v11 = *(a2 + 24), v45 = *(a1 + 24), *&v11 < v45) || v45 >= *&v11 && *(a2 + 16) < *(a1 + 16)))
        {
          v40 = *a1;
          v11 = *(a1 + 16);
          v41 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v41;
          *a2 = v40;
          *(a2 + 16) = v11;
        }
      }
    }
  }

  return *&v11;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PartitionIndicesAroundRandomTimeWindow(std::vector<int> const&,operations_research::sat::CpModelProto const&,operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,operations_research::sat::anonymous namespace::StartEndIndex *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = *(a2 - 24);
        v5 = *(a1 + 8);
        if (v4 < v5 || v5 >= v4 && ((v49 = *(a2 - 8), v50 = *(a1 + 24), v49 < v50) || v50 >= v49 && *(a2 - 16) < *(a1 + 16)))
        {
          v6 = (a2 - 32);
          v8 = *a1;
          v7 = *(a1 + 16);
          v9 = *(a2 - 16);
          *a1 = *(a2 - 32);
          *(a1 + 16) = v9;
          *v6 = v8;
          v6[1] = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      return 1;
    case 4:
      v32 = *(a2 - 24);
      v33 = *(a1 + 72);
      if (v32 < v33 || v33 >= v32 && ((v51 = *(a2 - 8), v52 = *(a1 + 88), v51 < v52) || v52 >= v51 && *(a2 - 16) < *(a1 + 80)))
      {
        v35 = *(a1 + 64);
        v34 = *(a1 + 80);
        v37 = *(a2 - 16);
        v36 = (a2 - 32);
        *(a1 + 64) = *(a2 - 32);
        *(a1 + 80) = v37;
        *v36 = v35;
        v36[1] = v34;
        v38 = *(a1 + 72);
        v39 = *(a1 + 40);
        if (v38 < v39 || v39 >= v38 && ((v53 = *(a1 + 88), v54 = *(a1 + 56), v53 < v54) || v54 >= v53 && *(a1 + 80) < *(a1 + 48)))
        {
          v41 = *(a1 + 32);
          v40 = *(a1 + 48);
          v42 = *(a1 + 80);
          *(a1 + 32) = *(a1 + 64);
          *(a1 + 48) = v42;
          *(a1 + 64) = v41;
          *(a1 + 80) = v40;
          v43 = *(a1 + 40);
          v44 = *(a1 + 8);
          if (v43 < v44 || v44 >= v43 && ((v56 = *(a1 + 56), v57 = *(a1 + 24), v56 < v57) || v57 >= v56 && *(a1 + 48) < *(a1 + 16)))
          {
            v46 = *a1;
            v45 = *(a1 + 16);
            v47 = *(a1 + 48);
            *a1 = *(a1 + 32);
            *(a1 + 16) = v47;
            *(a1 + 32) = v46;
            *(a1 + 48) = v45;
          }
        }
      }

      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v10 = a1 + 64;
  v14 = a1 + 96;
  if (a1 + 96 == a2)
  {
LABEL_37:
    v48 = 1;
    return (v48 | v13) & 1;
  }

  v13 = a2;
  v15 = 0;
  v16 = 0;
  while (2)
  {
    v18 = *(v14 + 8);
    v19 = *(v10 + 8);
    if (v18 >= v19)
    {
      if (v19 < v18)
      {
        goto LABEL_15;
      }

      v20 = *(v14 + 24);
      v29 = *(v10 + 24);
      if (v20 >= v29 && (v29 < v20 || *(v14 + 16) >= *(v10 + 16)))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = *(v14 + 24);
    }

    v21 = *v14;
    v22 = *(v14 + 16);
    v23 = *(v10 + 16);
    *v14 = *v10;
    *(v14 + 16) = v23;
    v17 = a1;
    if (v10 == a1)
    {
      goto LABEL_14;
    }

    v24 = v15;
    while (1)
    {
      v26 = a1 + v24;
      v27 = *(a1 + v24 + 40);
      if (v18 >= v27)
      {
        if (v27 < v18)
        {
          goto LABEL_32;
        }

        v28 = *(v26 + 56);
        if (v20 >= v28)
        {
          break;
        }
      }

LABEL_20:
      v10 -= 32;
      v25 = *(v26 + 48);
      *(v26 + 64) = *(v26 + 32);
      *(v26 + 80) = v25;
      v24 -= 32;
      if (v24 == -64)
      {
        v17 = a1;
        goto LABEL_14;
      }
    }

    if (v28 >= v20)
    {
      if (v22 >= *(v26 + 48))
      {
        v17 = a1 + v24 + 64;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_32:
    v17 = v10;
LABEL_14:
    *v17 = v21;
    *(v17 + 8) = v18;
    *(v17 + 16) = v22;
    *(v17 + 24) = v20;
    if (++v16 != 8)
    {
LABEL_15:
      v10 = v14;
      v15 += 32;
      v14 += 32;
      if (v14 == a2)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v48 = 0;
  v13 = v14 + 32 == a2;
  return (v48 | v13) & 1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::ModelLpValues>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3CF90;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x80C40D6874129);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ModelLpValues>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3CF90;
  a1[1] = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x23EED9460](v1, 0x80C40D6874129);
  }

  JUMPOUT(0x23EED9460);
}

int *std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v69 = v9[1];
          v70 = *(a2 - 1);
          if (v69 <= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[1];
          }

          if (v69 >= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[1] = v71;
          v72 = *(a2 - 1);
          if (v72 <= *v9)
          {
            v73 = *v9;
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v72 >= *v9)
          {
            v72 = *v9;
          }

          *(a2 - 1) = v72;
          v75 = *v9;
          v74 = v9[1];
          if (v73 <= v74)
          {
            v75 = v9[1];
          }

          if (v73 < v74)
          {
            v74 = v73;
          }

          *v9 = v75;
          v9[1] = v74;
          return result;
        case 4:
          v99 = v9[1];
          v98 = v9[2];
          if (*v9 <= v98)
          {
            v100 = v9[2];
          }

          else
          {
            v100 = *v9;
          }

          if (*v9 < v98)
          {
            v98 = *v9;
          }

          v9[2] = v98;
          *v9 = v100;
          v101 = *(a2 - 1);
          if (v99 <= v101)
          {
            v102 = *(a2 - 1);
          }

          else
          {
            v102 = v99;
          }

          if (v99 < v101)
          {
            v101 = v99;
          }

          *(a2 - 1) = v101;
          v103 = *v9;
          if (*v9 <= v102)
          {
            v104 = v102;
          }

          else
          {
            v104 = *v9;
          }

          if (v103 >= v102)
          {
            v103 = v102;
          }

          *v9 = v104;
          v9[1] = v103;
          v105 = v9[2];
          v106 = *(a2 - 1);
          if (v105 <= v106)
          {
            v107 = *(a2 - 1);
          }

          else
          {
            v107 = v9[2];
          }

          if (v105 >= v106)
          {
            v105 = *(a2 - 1);
          }

          *(a2 - 1) = v105;
          v108 = v9[1];
          if (v108 <= v107)
          {
            v109 = v107;
          }

          else
          {
            v109 = v9[1];
          }

          if (v108 >= v107)
          {
            v108 = v107;
          }

          v9[1] = v109;
          v9[2] = v108;
          return result;
        case 5:
          v76 = *v9;
          v77 = v9[1];
          if (*v9 <= v77)
          {
            v78 = v9[1];
          }

          else
          {
            v78 = *v9;
          }

          if (v76 >= v77)
          {
            v76 = v9[1];
          }

          *v9 = v78;
          v9[1] = v76;
          v79 = v9[3];
          v80 = *(a2 - 1);
          if (v79 <= v80)
          {
            v81 = *(a2 - 1);
          }

          else
          {
            v81 = v9[3];
          }

          if (v79 >= v80)
          {
            v79 = *(a2 - 1);
          }

          *(a2 - 1) = v79;
          v9[3] = v81;
          v82 = *(a2 - 1);
          v83 = v9[2];
          if (v82 <= v83)
          {
            v84 = v9[2];
          }

          else
          {
            v84 = *(a2 - 1);
          }

          if (v82 >= v83)
          {
            v82 = v9[2];
          }

          *(a2 - 1) = v82;
          v86 = v9[2];
          v85 = v9[3];
          v87 = v9[1];
          if (v84 <= v85)
          {
            v86 = v9[3];
          }

          if (v84 < v85)
          {
            v85 = v84;
          }

          v9[2] = v86;
          v9[3] = v85;
          v88 = *(a2 - 1);
          if (v87 <= v88)
          {
            v89 = *(a2 - 1);
          }

          else
          {
            v89 = v87;
          }

          if (v87 < v88)
          {
            v88 = v87;
          }

          *(a2 - 1) = v88;
          v90 = *v9;
          v92 = v9[2];
          v91 = v9[3];
          if (v91 <= *v9)
          {
            v93 = *v9;
          }

          else
          {
            v93 = v9[3];
          }

          if (v91 >= v90)
          {
            v91 = *v9;
          }

          if (v93 <= v92)
          {
            v90 = v9[2];
          }

          if (v93 < v92)
          {
            v92 = v93;
          }

          if (v91 <= v89)
          {
            v94 = v89;
          }

          else
          {
            v94 = v91;
          }

          if (v91 >= v89)
          {
            v91 = v89;
          }

          if (v94 <= v92)
          {
            v89 = v92;
          }

          *v9 = v90;
          v9[1] = v89;
          if (v94 >= v92)
          {
            v95 = v92;
          }

          else
          {
            v95 = v94;
          }

          v9[2] = v95;
          v9[3] = v91;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v96 = *(a2 - 1);
        v97 = *v9;
        if (v96 > *v9)
        {
          *v9 = v96;
          *(a2 - 1) = v97;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(v9, a2, a2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 <= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 >= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 <= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 >= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 <= *v9;
      if (v52 > *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 <= *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 >= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 <= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 <= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    v56 = *v9;
    if (*(v9 - 1) <= *v9)
    {
      if (v56 <= *(a2 - 1))
      {
        v61 = v9 + 1;
        do
        {
          v9 = v61;
          if (v61 >= a2)
          {
            break;
          }

          ++v61;
        }

        while (v56 <= *v9);
      }

      else
      {
        do
        {
          v60 = v9[1];
          ++v9;
        }

        while (v56 <= v60);
      }

      v62 = a2;
      if (v9 < a2)
      {
        v62 = a2;
        do
        {
          v63 = *--v62;
        }

        while (v56 > v63);
      }

      if (v9 < v62)
      {
        v64 = *v9;
        v65 = *v62;
        do
        {
          *v9 = v65;
          *v62 = v64;
          do
          {
            v66 = v9[1];
            ++v9;
            v64 = v66;
          }

          while (v56 <= v66);
          do
          {
            v67 = *--v62;
            v65 = v67;
          }

          while (v56 > v67);
        }

        while (v9 < v62);
      }

      v68 = v9 - 1;
      if (v9 - 1 != v8)
      {
        *v8 = *v68;
      }

      *v68 = v56;
      goto LABEL_116;
    }

LABEL_94:
    v57 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
    if ((v58 & 1) == 0)
    {
      goto LABEL_97;
    }

    v59 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v9, v57);
    v9 = v57 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v57 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v57;
      if (v59)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v59)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v8, v57, a3, -v11, a5 & 1);
      v9 = v57 + 1;
LABEL_116:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v110 = v9 + 1;
  v112 = v9 == a2 || v110 == a2;
  if (a5)
  {
    if (!v112)
    {
      v113 = 0;
      v114 = v9;
      do
      {
        v117 = *v114;
        v116 = v114[1];
        v114 = v110;
        if (v116 > v117)
        {
          v118 = v113;
          do
          {
            *(v9 + v118 + 4) = v117;
            if (!v118)
            {
              v115 = v9;
              goto LABEL_216;
            }

            v117 = *(v9 + v118 - 4);
            v118 -= 4;
          }

          while (v116 > v117);
          v115 = (v9 + v118 + 4);
LABEL_216:
          *v115 = v116;
        }

        v110 = v114 + 1;
        v113 += 4;
      }

      while (v114 + 1 != a2);
    }
  }

  else if (!v112)
  {
    do
    {
      v120 = *v8;
      v119 = v8[1];
      v8 = v110;
      if (v119 > v120)
      {
        do
        {
          *v110 = v120;
          v120 = *(v110 - 2);
          --v110;
        }

        while (v119 > v120);
        *v110 = v119;
      }

      v110 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

__int32 *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(signed int *a1, signed int *a2)
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
    v7 = (v3 + 1);
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v152 = v10 >> 2;
    v14 = 1;
LABEL_33:
    v156 = v152 + 1;
    v153 = (v152 + 1) / 2;
    v154 = v156 - v156 / 2;
    goto LABEL_34;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = vcgtq_s32(*v7, v13);
      v17.i64[0] = v16.u32[0];
      v17.i64[1] = v16.u32[1];
      v18 = v17;
      v17.i64[0] = v16.u32[2];
      v17.i64[1] = v16.u32[3];
      v19 = v17;
      v20 = vcgtq_s32(v7[1], v13);
      v17.i64[0] = v20.u32[0];
      v17.i64[1] = v20.u32[1];
      v21 = v17;
      v17.i64[0] = v20.u32[2];
      v17.i64[1] = v20.u32[3];
      v22 = vbicq_s8(xmmword_23CE40640, v17);
      v23 = vcgtq_s32(v7[2], v13);
      v17.i64[0] = v23.u32[0];
      v17.i64[1] = v23.u32[1];
      v24 = v17;
      v17.i64[0] = v23.u32[2];
      v17.i64[1] = v23.u32[3];
      v25 = v17;
      v26 = vcgtq_s32(v7[3], v13);
      v17.i64[0] = v26.u32[0];
      v17.i64[1] = v26.u32[1];
      v27 = v17;
      v17.i64[0] = v26.u32[2];
      v17.i64[1] = v26.u32[3];
      v28 = vorrq_s8(vbicq_s8(xmmword_23CE40670, v24), vbicq_s8(xmmword_23CE40630, v18));
      v29 = vorrq_s8(vbicq_s8(xmmword_23CE40660, v25), vbicq_s8(xmmword_23CE40620, v19));
      v30 = vorrq_s8(vbicq_s8(xmmword_23CE40690, v27), vbicq_s8(xmmword_23CE40650, v21));
      v31 = vorrq_s8(vbicq_s8(xmmword_23CE40680, v17), v22);
      v32 = vcgtq_s32(v7[4], v13);
      v17.i64[0] = v32.u32[2];
      v17.i64[1] = v32.u32[3];
      v33 = v17;
      v17.i64[0] = v32.u32[0];
      v17.i64[1] = v32.u32[1];
      v34 = v17;
      v35 = vcgtq_s32(v7[5], v13);
      v17.i64[0] = v35.u32[2];
      v17.i64[1] = v35.u32[3];
      v36 = v17;
      v17.i64[0] = v35.u32[0];
      v17.i64[1] = v35.u32[1];
      v37 = vbicq_s8(xmmword_23CE406C0, v17);
      v38 = vcgtq_s32(v7[6], v13);
      v17.i64[0] = v38.u32[0];
      v17.i64[1] = v38.u32[1];
      v39 = v17;
      v17.i64[0] = v38.u32[2];
      v17.i64[1] = v38.u32[3];
      v40 = v17;
      v41 = vcgtq_s32(v7[7], v13);
      v42 = vorrq_s8(vbicq_s8(xmmword_23CE406F0, v39), vbicq_s8(xmmword_23CE406A0, v34));
      v17.i64[0] = v41.u32[0];
      v17.i64[1] = v41.u32[1];
      v43 = v17;
      v17.i64[0] = v41.u32[2];
      v17.i64[1] = v41.u32[3];
      v44 = vorrq_s8(v42, v28);
      v45 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE406E0, v40), vbicq_s8(xmmword_23CE406B0, v33)), v29);
      v46 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE40710, v43), v37), v30);
      v47 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE40700, v17), vbicq_s8(xmmword_23CE406D0, v36)), v31);
      v48 = vcgtq_s32(v7[8], v13);
      v17.i64[0] = v48.i32[2];
      v17.i64[1] = v48.i32[3];
      v49 = v17;
      v17.i64[0] = v48.i32[0];
      v17.i64[1] = v48.i32[1];
      v50 = v17;
      v51 = vcgtq_s32(v7[9], v13);
      v17.i64[0] = v51.i32[2];
      v17.i64[1] = v51.i32[3];
      v52 = v17;
      v17.i64[0] = v51.i32[0];
      v17.i64[1] = v51.i32[1];
      v53 = vbicq_s8(xmmword_23CE40740, v17);
      v54 = vcgtq_s32(v7[10], v13);
      v17.i64[0] = v54.i32[0];
      v17.i64[1] = v54.i32[1];
      v55 = v17;
      v17.i64[0] = v54.i32[2];
      v17.i64[1] = v54.i32[3];
      v56 = v17;
      v57 = vcgtq_s32(v7[11], v13);
      v58 = vorrq_s8(vbicq_s8(xmmword_23CE40770, v55), vbicq_s8(xmmword_23CE40720, v50));
      v17.i64[0] = v57.i32[0];
      v17.i64[1] = v57.i32[1];
      v59 = v17;
      v17.i64[0] = v57.i32[2];
      v17.i64[1] = v57.i32[3];
      v60 = vorrq_s8(vbicq_s8(xmmword_23CE40760, v56), vbicq_s8(xmmword_23CE40730, v49));
      v61 = vorrq_s8(vbicq_s8(xmmword_23CE40780, v17), vbicq_s8(xmmword_23CE40750, v52));
      v62 = vcgtq_s32(v7[12], v13);
      v17.i64[0] = v62.i32[2];
      v17.i64[1] = v62.i32[3];
      v63 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE407B0, v17), v60), v45);
      v17.i64[0] = v62.i32[0];
      v17.i64[1] = v62.i32[1];
      v64 = vcgtq_s32(v7[13], v13);
      v65 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE407A0, v17), v58), v44);
      v17.i64[0] = v64.i32[2];
      v17.i64[1] = v64.i32[3];
      v66 = v17;
      v17.i64[0] = v64.i32[0];
      v17.i64[1] = v64.i32[1];
      v67 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE407D0, v66), v61), v47);
      v68 = vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE407C0, v17), vorrq_s8(vbicq_s8(xmmword_23CE40790, v59), v53)), v46);
      v69 = vcgtq_s32(v7[14], v13);
      v70 = vcgtq_s32(v7[15], v13);
      v17.i64[0] = v70.i32[0];
      v17.i64[1] = v70.i32[1];
      v71 = v17;
      v17.i64[0] = v70.i32[2];
      v17.i64[1] = v70.i32[3];
      v72 = vbicq_s8(xmmword_23CE40800, v17);
      v17.i64[0] = v69.i32[0];
      v17.i64[1] = v69.i32[1];
      v73 = vorrq_s8(vbicq_s8(xmmword_23CE407F0, v17), v65);
      v17.i64[0] = v69.i32[2];
      v17.i64[1] = v69.i32[3];
      v74 = vorrq_s8(vorrq_s8(vorrq_s8(vbicq_s8(xmmword_23CE40810, v71), v68), v73), vorrq_s8(vorrq_s8(v72, v67), vorrq_s8(vbicq_s8(xmmword_23CE407E0, v17), v63)));
      v12 = vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
      if (v11)
      {
LABEL_20:
        if (!v12)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      }
    }

    v75 = vrev64q_s32(*(v9 - 3));
    v76 = vrev64q_s32(*(v9 - 7));
    v77 = vcgtq_s32(vextq_s8(v75, v75, 8uLL), v13);
    v78.i64[0] = v77.u32[0];
    v78.i64[1] = v77.u32[1];
    v79 = v78;
    v78.i64[0] = v77.u32[2];
    v78.i64[1] = v77.u32[3];
    v80 = v78;
    v81 = vcgtq_s32(vextq_s8(v76, v76, 8uLL), v13);
    v78.i64[0] = v81.u32[0];
    v78.i64[1] = v81.u32[1];
    v82 = v78;
    v78.i64[0] = v81.u32[2];
    v78.i64[1] = v81.u32[3];
    v83 = vandq_s8(v78, xmmword_23CE40640);
    v84 = vrev64q_s32(*(v9 - 11));
    v85 = vrev64q_s32(*(v9 - 15));
    v86 = vcgtq_s32(vextq_s8(v84, v84, 8uLL), v13);
    v78.i64[0] = v86.u32[0];
    v78.i64[1] = v86.u32[1];
    v87 = v78;
    v78.i64[0] = v86.u32[2];
    v78.i64[1] = v86.u32[3];
    v88 = v78;
    v89 = vcgtq_s32(vextq_s8(v85, v85, 8uLL), v13);
    v78.i64[0] = v89.u32[0];
    v78.i64[1] = v89.u32[1];
    v90 = v78;
    v78.i64[0] = v89.u32[2];
    v78.i64[1] = v89.u32[3];
    v91 = vorrq_s8(vandq_s8(v87, xmmword_23CE40670), vandq_s8(v79, xmmword_23CE40630));
    v92 = vorrq_s8(vandq_s8(v88, xmmword_23CE40660), vandq_s8(v80, xmmword_23CE40620));
    v93 = vorrq_s8(vandq_s8(v90, xmmword_23CE40690), vandq_s8(v82, xmmword_23CE40650));
    v94 = vorrq_s8(vandq_s8(v78, xmmword_23CE40680), v83);
    v95 = vrev64q_s32(*(v9 - 19));
    v96 = vrev64q_s32(*(v9 - 23));
    v97 = vcgtq_s32(vextq_s8(v95, v95, 8uLL), v13);
    v78.i64[0] = v97.u32[2];
    v78.i64[1] = v97.u32[3];
    v98 = v78;
    v78.i64[0] = v97.u32[0];
    v78.i64[1] = v97.u32[1];
    v99 = v78;
    v100 = vcgtq_s32(vextq_s8(v96, v96, 8uLL), v13);
    v78.i64[0] = v100.u32[2];
    v78.i64[1] = v100.u32[3];
    v101 = v78;
    v78.i64[0] = v100.u32[0];
    v78.i64[1] = v100.u32[1];
    v102 = vandq_s8(v78, xmmword_23CE406C0);
    v103 = vrev64q_s32(*(v9 - 27));
    v104 = vcgtq_s32(vextq_s8(v103, v103, 8uLL), v13);
    v78.i64[0] = v104.u32[0];
    v78.i64[1] = v104.u32[1];
    v105 = vorrq_s8(vandq_s8(v78, xmmword_23CE406F0), vandq_s8(v99, xmmword_23CE406A0));
    v106 = vrev64q_s32(*(v9 - 31));
    v78.i64[0] = v104.u32[2];
    v78.i64[1] = v104.u32[3];
    v107 = v78;
    v108 = vcgtq_s32(vextq_s8(v106, v106, 8uLL), v13);
    v109 = vorrq_s8(v105, v91);
    v78.i64[0] = v108.u32[0];
    v78.i64[1] = v108.u32[1];
    v110 = v78;
    v78.i64[0] = v108.u32[2];
    v78.i64[1] = v108.u32[3];
    v111 = vandq_s8(v110, xmmword_23CE40710);
    v112 = vorrq_s8(vorrq_s8(vandq_s8(v107, xmmword_23CE406E0), vandq_s8(v98, xmmword_23CE406B0)), v92);
    v113 = vorrq_s8(vorrq_s8(v111, v102), v93);
    v114 = vorrq_s8(vorrq_s8(vandq_s8(v78, xmmword_23CE40700), vandq_s8(v101, xmmword_23CE406D0)), v94);
    v115 = vrev64q_s32(*(v9 - 35));
    v116 = vrev64q_s32(*(v9 - 39));
    v117 = vcgtq_s32(vextq_s8(v115, v115, 8uLL), v13);
    v78.i64[0] = v117.i32[2];
    v78.i64[1] = v117.i32[3];
    v118 = v78;
    v78.i64[0] = v117.i32[0];
    v78.i64[1] = v117.i32[1];
    v119 = v78;
    v120 = vcgtq_s32(vextq_s8(v116, v116, 8uLL), v13);
    v78.i64[0] = v120.i32[2];
    v78.i64[1] = v120.i32[3];
    v121 = v78;
    v78.i64[0] = v120.i32[0];
    v78.i64[1] = v120.i32[1];
    v122 = vandq_s8(v78, xmmword_23CE40740);
    v123 = vrev64q_s32(*(v9 - 43));
    v124 = vcgtq_s32(vextq_s8(v123, v123, 8uLL), v13);
    v78.i64[0] = v124.i32[0];
    v78.i64[1] = v124.i32[1];
    v125 = vorrq_s8(vandq_s8(v78, xmmword_23CE40770), vandq_s8(v119, xmmword_23CE40720));
    v126 = vrev64q_s32(*(v9 - 47));
    v78.i64[0] = v124.i32[2];
    v78.i64[1] = v124.i32[3];
    v127 = vcgtq_s32(vextq_s8(v126, v126, 8uLL), v13);
    v128 = vorrq_s8(vandq_s8(v78, xmmword_23CE40760), vandq_s8(v118, xmmword_23CE40730));
    v78.i64[0] = v127.i32[0];
    v78.i64[1] = v127.i32[1];
    v129 = v78;
    v78.i64[0] = v127.i32[2];
    v78.i64[1] = v127.i32[3];
    v130 = vorrq_s8(vandq_s8(v129, xmmword_23CE40790), v122);
    v131 = vorrq_s8(vandq_s8(v78, xmmword_23CE40780), vandq_s8(v121, xmmword_23CE40750));
    v132 = vrev64q_s32(*(v9 - 51));
    v133 = vcgtq_s32(vextq_s8(v132, v132, 8uLL), v13);
    v78.i64[0] = v133.i32[2];
    v78.i64[1] = v133.i32[3];
    v134 = vorrq_s8(vorrq_s8(vandq_s8(v78, xmmword_23CE407B0), v128), v112);
    v78.i64[0] = v133.i32[0];
    v78.i64[1] = v133.i32[1];
    v135 = vrev64q_s32(*(v9 - 55));
    v136 = vcgtq_s32(vextq_s8(v135, v135, 8uLL), v13);
    v137 = vorrq_s8(vorrq_s8(vandq_s8(v78, xmmword_23CE407A0), v125), v109);
    v78.i64[0] = v136.i32[2];
    v78.i64[1] = v136.i32[3];
    v138 = v78;
    v78.i64[0] = v136.i32[0];
    v78.i64[1] = v136.i32[1];
    v139 = vorrq_s8(vorrq_s8(vandq_s8(v138, xmmword_23CE407D0), v131), v114);
    v140 = vorrq_s8(vorrq_s8(vandq_s8(v78, xmmword_23CE407C0), v130), v113);
    v141 = vrev64q_s32(*(v9 - 59));
    v142 = vrev64q_s32(*(v9 - 63));
    v143 = vcgtq_s32(vextq_s8(v141, v141, 8uLL), v13);
    v144 = vcgtq_s32(vextq_s8(v142, v142, 8uLL), v13);
    v78.i64[0] = v144.i32[0];
    v78.i64[1] = v144.i32[1];
    v145 = v78;
    v78.i64[0] = v144.i32[2];
    v78.i64[1] = v144.i32[3];
    v146 = vandq_s8(v78, xmmword_23CE40800);
    v78.i64[0] = v143.i32[0];
    v78.i64[1] = v143.i32[1];
    v147 = vorrq_s8(vandq_s8(v78, xmmword_23CE407F0), v137);
    v78.i64[0] = v143.i32[2];
    v78.i64[1] = v143.i32[3];
    v148 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(v145, xmmword_23CE40810), v140), v147), vorrq_s8(vorrq_s8(v146, v139), vorrq_s8(vandq_s8(v78, xmmword_23CE407E0), v134)));
    v11 = vorr_s8(*v148.i8, *&vextq_s8(v148, v148, 8uLL));
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v149 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v150 = &v9[-__clz(__rbit64(v11))];
        v151 = v7->i32[v149];
        v7->i32[v149] = *v150;
        *v150 = v151;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_14:
    v7 += 16 * (v12 == 0);
    v14 = v11 == 0;
    if (v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = -256;
    }

    v9 = (v9 + v15);
  }

  while (v9 - v7 > 504);
  v152 = (v9 - v7) >> 2;
  if (!(v12 | v11))
  {
    goto LABEL_33;
  }

  v153 = v152 - 63;
  v154 = 64;
  v155 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_48;
    }

LABEL_43:
    v183 = v153 - 1;
    if (v153 >= 1)
    {
      if (v153 <= 7)
      {
        LODWORD(v184) = 0;
        v11 = 0;
        goto LABEL_46;
      }

      v11 = 0;
      LODWORD(v184) = 0;
      if (v183 > 0x7FFFFFFE)
      {
LABEL_46:
        v185 = v9;
      }

      else
      {
        v200 = HIDWORD(v183);
        v185 = v9;
        if (!v200)
        {
          v184 = v153 & 0x1FFFFFFF8;
          v185 = &v9[-(v153 & 0x1FFFFFFF8)];
          v201 = vdupq_n_s32(v2);
          v202 = xmmword_23CE38660;
          v203 = (v9 - 3);
          v204 = 0uLL;
          v205 = vdupq_n_s64(1uLL);
          v206.i64[0] = 0x400000004;
          v206.i64[1] = 0x400000004;
          v207.i64[0] = 0x800000008;
          v207.i64[1] = 0x800000008;
          v208 = v153 & 0x1FFFFFFF8;
          v209 = 0uLL;
          v210 = 0uLL;
          v211 = 0uLL;
          do
          {
            v212 = vaddq_s32(v202, v206);
            v213 = vrev64q_s32(*v203);
            v214 = vrev64q_s32(v203[-1]);
            v215 = vcgtq_s32(vextq_s8(v213, v213, 8uLL), v201);
            v216.i64[0] = v215.u32[2];
            v216.i64[1] = v215.u32[3];
            v217 = vandq_s8(v216, v205);
            v216.i64[0] = v215.u32[0];
            v216.i64[1] = v215.u32[1];
            v218 = vandq_s8(v216, v205);
            v219 = vcgtq_s32(vextq_s8(v214, v214, 8uLL), v201);
            v216.i64[0] = v219.u32[2];
            v216.i64[1] = v219.u32[3];
            v220 = vandq_s8(v216, v205);
            v216.i64[0] = v219.u32[0];
            v216.i64[1] = v219.u32[1];
            v221 = vandq_s8(v216, v205);
            v216.i64[0] = v202.u32[2];
            v216.i64[1] = v202.u32[3];
            v222 = v216;
            v216.i64[0] = v202.u32[0];
            v216.i64[1] = v202.u32[1];
            v223 = v216;
            v216.i64[0] = v212.u32[2];
            v216.i64[1] = v212.u32[3];
            v224 = v216;
            v216.i64[0] = v212.u32[0];
            v216.i64[1] = v212.u32[1];
            v209 = vorrq_s8(vshlq_u64(v217, v222), v209);
            v204 = vorrq_s8(vshlq_u64(v218, v223), v204);
            v211 = vorrq_s8(vshlq_u64(v220, v224), v211);
            v210 = vorrq_s8(vshlq_u64(v221, v216), v210);
            v202 = vaddq_s32(v202, v207);
            v203 -= 2;
            v208 -= 8;
          }

          while (v208);
          v225 = vorrq_s8(vorrq_s8(v210, v204), vorrq_s8(v211, v209));
          v11 = vorr_s8(*v225.i8, *&vextq_s8(v225, v225, 8uLL));
          if (v153 == v184)
          {
            goto LABEL_48;
          }
        }
      }

      do
      {
        v186 = *v185--;
        v11 |= (v186 > v2) << v184;
        LODWORD(v184) = v184 + 1;
      }

      while (v153 > v184);
      goto LABEL_48;
    }

    if (v12)
    {
      v194 = 0;
    }

    else
    {
      v194 = v155;
    }

    v190 = &v7->i32[v194];
LABEL_64:
    if (v12)
    {
      v9 -= v153;
      goto LABEL_68;
    }

    goto LABEL_71;
  }

LABEL_34:
  if (v153 < 1)
  {
    v12 = 0;
  }

  else
  {
    if (v153 < 8)
    {
      LODWORD(v157) = 0;
      v12 = 0;
      v158 = v7;
      goto LABEL_41;
    }

    v157 = v153 & 0x1FFFFFFF8;
    v158 = (v7 + 4 * (v153 & 0x1FFFFFFF8));
    v159 = vdupq_n_s32(v2);
    v160 = xmmword_23CE38660;
    v161 = v7 + 1;
    v162 = 0uLL;
    v163 = vdupq_n_s64(1uLL);
    v164.i64[0] = 0x400000004;
    v164.i64[1] = 0x400000004;
    v165.i64[0] = 0x800000008;
    v165.i64[1] = 0x800000008;
    v166 = v153 & 0x1FFFFFFF8;
    v167 = 0uLL;
    v168 = 0uLL;
    v169 = 0uLL;
    do
    {
      v170 = vaddq_s32(v160, v164);
      v171 = vcgeq_s32(v159, v161[-1]);
      v172.i64[0] = v171.u32[2];
      v172.i64[1] = v171.u32[3];
      v173 = vandq_s8(v172, v163);
      v172.i64[0] = v171.u32[0];
      v172.i64[1] = v171.u32[1];
      v174 = vandq_s8(v172, v163);
      v175 = vcgeq_s32(v159, *v161);
      v172.i64[0] = v175.u32[2];
      v172.i64[1] = v175.u32[3];
      v176 = vandq_s8(v172, v163);
      v172.i64[0] = v175.u32[0];
      v172.i64[1] = v175.u32[1];
      v177 = vandq_s8(v172, v163);
      v172.i64[0] = v160.u32[2];
      v172.i64[1] = v160.u32[3];
      v178 = v172;
      v172.i64[0] = v160.u32[0];
      v172.i64[1] = v160.u32[1];
      v179 = v172;
      v172.i64[0] = v170.u32[2];
      v172.i64[1] = v170.u32[3];
      v180 = v172;
      v172.i64[0] = v170.u32[0];
      v172.i64[1] = v170.u32[1];
      v167 = vorrq_s8(vshlq_u64(v173, v178), v167);
      v162 = vorrq_s8(vshlq_u64(v174, v179), v162);
      v169 = vorrq_s8(vshlq_u64(v176, v180), v169);
      v168 = vorrq_s8(vshlq_u64(v177, v172), v168);
      v160 = vaddq_s32(v160, v165);
      v161 += 2;
      v166 -= 8;
    }

    while (v166);
    v181 = vorrq_s8(vorrq_s8(v168, v162), vorrq_s8(v169, v167));
    v12 = vorr_s8(*v181.i8, *&vextq_s8(v181, v181, 8uLL));
    if (v153 != v157)
    {
      do
      {
LABEL_41:
        v182 = v158->i32[0];
        v158 = (v158 + 4);
        v12 |= (v182 <= v2) << v157;
        LODWORD(v157) = v157 + 1;
      }

      while (v153 > v157);
    }
  }

  v155 = v153;
  v153 = v154;
  if (v14)
  {
    goto LABEL_43;
  }

LABEL_48:
  if (v12 && v11)
  {
    do
    {
      v187 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v188 = &v9[-__clz(__rbit64(v11))];
      v189 = v7->i32[v187];
      v7->i32[v187] = *v188;
      *v188 = v189;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v155 = 0;
  }

  v190 = &v7->i32[v155];
  if (!v11)
  {
    goto LABEL_64;
  }

  if (v12)
  {
    do
    {
LABEL_68:
      v195 = __clz(v12) ^ 0x3F;
      v196 = &v190[v195];
      if (v9 != v196)
      {
        v197 = *v196;
        *v196 = *v9;
        *v9 = v197;
      }

      v12 &= ~(-1 << v195);
      --v9;
    }

    while (v12);
    v190 = v9 + 1;
  }

  else
  {
    do
    {
      v191 = __clz(v11) ^ 0x3F;
      v192 = &v9[-v191];
      if (v190 != v192)
      {
        v193 = *v192;
        *v192 = *v190;
        *v190 = v193;
      }

      v11 &= ~(-1 << v191);
      ++v190;
    }

    while (v11);
  }

LABEL_71:
  v198 = v190 - 1;
  if (v190 - 1 != a1)
  {
    *a1 = *v198;
  }

  *v198 = v2;
  return v190 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v26 = a1[1];
        v27 = *(a2 - 1);
        if (v26 <= v27)
        {
          v28 = *(a2 - 1);
        }

        else
        {
          v28 = a1[1];
        }

        if (v26 >= v27)
        {
          v26 = *(a2 - 1);
        }

        *(a2 - 1) = v26;
        a1[1] = v28;
        v29 = *(a2 - 1);
        if (v29 <= *a1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *(a2 - 1);
        }

        if (v29 >= *a1)
        {
          v29 = *a1;
        }

        *(a2 - 1) = v29;
        v32 = *a1;
        v31 = a1[1];
        if (v30 <= v31)
        {
          v32 = a1[1];
        }

        if (v30 < v31)
        {
          v31 = v30;
        }

        *a1 = v32;
        a1[1] = v31;
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

        if (v52 >= v51)
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
        v4 = *a1;
        v5 = a1[1];
        if (*a1 <= v5)
        {
          v6 = a1[1];
        }

        else
        {
          v6 = *a1;
        }

        if (v4 >= v5)
        {
          v4 = a1[1];
        }

        *a1 = v6;
        a1[1] = v4;
        v7 = a1[3];
        v8 = *(a2 - 1);
        if (v7 <= v8)
        {
          v9 = *(a2 - 1);
        }

        else
        {
          v9 = a1[3];
        }

        if (v7 >= v8)
        {
          v7 = *(a2 - 1);
        }

        *(a2 - 1) = v7;
        a1[3] = v9;
        v10 = *(a2 - 1);
        v11 = a1[2];
        if (v10 <= v11)
        {
          v12 = a1[2];
        }

        else
        {
          v12 = *(a2 - 1);
        }

        if (v10 >= v11)
        {
          v10 = a1[2];
        }

        *(a2 - 1) = v10;
        v14 = a1[2];
        v13 = a1[3];
        v15 = a1[1];
        if (v12 <= v13)
        {
          v14 = a1[3];
        }

        if (v12 < v13)
        {
          v13 = v12;
        }

        a1[2] = v14;
        a1[3] = v13;
        v16 = *(a2 - 1);
        if (v15 <= v16)
        {
          v17 = *(a2 - 1);
        }

        else
        {
          v17 = v15;
        }

        if (v15 < v16)
        {
          v16 = v15;
        }

        *(a2 - 1) = v16;
        v18 = *a1;
        v20 = a1[2];
        v19 = a1[3];
        if (v19 <= *a1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = a1[3];
        }

        if (v19 >= v18)
        {
          v19 = *a1;
        }

        if (v21 <= v20)
        {
          v18 = a1[2];
        }

        if (v21 < v20)
        {
          v20 = v21;
        }

        if (v19 <= v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = v19;
        }

        if (v19 >= v17)
        {
          v19 = v17;
        }

        if (v22 <= v20)
        {
          v17 = v20;
        }

        *a1 = v18;
        a1[1] = v17;
        if (v22 >= v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v22;
        }

        a1[2] = v23;
        a1[3] = v19;
        return 1;
    }

    goto LABEL_69;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_69:
    v34 = a1 + 2;
    v33 = a1[2];
    v36 = *a1;
    v35 = a1[1];
    if (v35 <= v33)
    {
      v37 = a1[2];
    }

    else
    {
      v37 = a1[1];
    }

    if (v35 < v33)
    {
      v33 = a1[1];
    }

    if (v33 <= v36)
    {
      v38 = *a1;
    }

    else
    {
      v38 = v33;
    }

    if (v33 >= v36)
    {
      v33 = *a1;
    }

    *v34 = v33;
    if (v36 <= v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = v36;
    }

    if (v36 > v37)
    {
      v38 = v37;
    }

    *a1 = v39;
    a1[1] = v38;
    v40 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v41 = 0;
    for (i = 12; ; i += 4)
    {
      v43 = *v40;
      v44 = *v34;
      if (*v40 > v44)
      {
        break;
      }

LABEL_93:
      v34 = v40++;
      if (v40 == a2)
      {
        return 1;
      }
    }

    v45 = i;
    do
    {
      *(a1 + v45) = v44;
      v46 = v45 - 4;
      if (v45 == 4)
      {
        *a1 = v43;
        if (++v41 != 8)
        {
          goto LABEL_93;
        }

        return v40 + 1 == a2;
      }

      v44 = *(a1 + v45 - 8);
      v45 -= 4;
    }

    while (v43 > v44);
    *(a1 + v46) = v43;
    if (++v41 != 8)
    {
      goto LABEL_93;
    }

    return v40 + 1 == a2;
  }

  v24 = *(a2 - 1);
  v25 = *a1;
  if (v24 <= *a1)
  {
    return 1;
  }

  *a1 = v24;
  *(a2 - 1) = v25;
  return 1;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(int *a1, int *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v6 = 4 * v5;
      if (v4 >= (4 * v5) >> 2)
      {
        v7 = (v6 >> 1) | 1;
        v8 = &a1[v7];
        if ((v6 >> 1) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[v6 / 4];
          v12 = a1[v5];
          if (*v8 <= v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = *v8;
          v10 = v8[1];
          if (*v8 >= v10)
          {
            v9 = v8[1];
          }

          if (*v8 > v10)
          {
            ++v8;
            v7 = (v6 >> 1) + 2;
          }

          v11 = &a1[v6 / 4];
          v12 = a1[v5];
          if (v9 <= v12)
          {
LABEL_22:
            while (1)
            {
              *v11 = v9;
              v11 = v8;
              if (v4 < v7)
              {
                break;
              }

              v14 = (2 * v7) | 1;
              v8 = &a1[v14];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                v13 = v8[1];
                if (*v8 >= v13)
                {
                  v9 = v8[1];
                }

                if (*v8 <= v13)
                {
                  v7 = v14;
                }

                else
                {
                  ++v8;
                }

                if (v9 > v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v14;
                if (*v8 > v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v23 = v5-- <= 0;
    }

    while (!v23);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v16 = *a1;
      i = a2;
      do
      {
        v17 = *i;
        if (*i > v16)
        {
          *i = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v18 = *i;
      if (*i > *a1)
      {
        *i = *a1;
        *a1 = v18;
        v19 = a1[1];
        if (a2 - a1 == 8)
        {
          v20 = a1 + 1;
          v21 = 1;
          if (v19 <= v18)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v22 = a1[2];
          v23 = v19 <= v22;
          if (v19 >= v22)
          {
            v19 = a1[2];
          }

          if (v23)
          {
            v20 = a1 + 1;
          }

          else
          {
            v20 = a1 + 2;
          }

          if (v23)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v19 <= v18)
          {
LABEL_48:
            v24 = a1;
            while (1)
            {
              *v24 = v19;
              v24 = v20;
              if (((v3 - 2) >> 1) < v21)
              {
                break;
              }

              v26 = (2 * v21) | 1;
              v20 = &a1[v26];
              v21 = 2 * v21 + 2;
              if (v21 < v3)
              {
                v19 = *v20;
                v25 = v20[1];
                if (*v20 >= v25)
                {
                  v19 = v20[1];
                }

                if (*v20 <= v25)
                {
                  v21 = v26;
                }

                else
                {
                  ++v20;
                }

                if (v19 > v18)
                {
                  break;
                }
              }

              else
              {
                v19 = *v20;
                v21 = v26;
                if (*v20 > v18)
                {
                  break;
                }
              }
            }

            *v24 = v18;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v28 = 0;
      v29 = *a1;
      v30 = (v3 - 2) >> 1;
      v31 = a1;
      do
      {
        while (1)
        {
          v38 = &v31[v28];
          v37 = v38 + 1;
          v39 = (2 * v28) | 1;
          v28 = 2 * v28 + 2;
          if (v28 < v3)
          {
            break;
          }

          v28 = v39;
          *v31 = *v37;
          v31 = v38 + 1;
          if (v39 > v30)
          {
            goto LABEL_73;
          }
        }

        v34 = v38[2];
        v33 = v38 + 2;
        v32 = v34;
        v35 = *(v33 - 1);
        v36 = v35 <= v34;
        if (v35 < v34)
        {
          v32 = *(v33 - 1);
        }

        if (v36)
        {
          v28 = v39;
        }

        else
        {
          v37 = v33;
        }

        *v31 = v32;
        v31 = v37;
      }

      while (v28 <= v30);
LABEL_73:
      if (v37 == --a2)
      {
        *v37 = v29;
      }

      else
      {
        *v37 = *a2;
        *a2 = v29;
        v40 = (v37 - a1 + 4) >> 2;
        v23 = v40 < 2;
        v41 = v40 - 2;
        if (!v23)
        {
          v42 = v41 >> 1;
          v43 = &a1[v42];
          v44 = *v43;
          v45 = *v37;
          if (*v43 > *v37)
          {
            do
            {
              *v37 = v44;
              v37 = v43;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[v42];
              v44 = *v43;
            }

            while (*v43 > v45);
            *v37 = v45;
          }
        }
      }

      v23 = v3-- <= 2;
    }

    while (!v23);
  }

  return i;
}

void *std::vector<std::pair<int,int>>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<int,int>>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::iterator,0>(void *result, void *a2, uint64_t a3, void *a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a4)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v7 = *(v5 + 1);
      v5 = (v5 + 1);
      LOBYTE(v6) = v7;
      if (v7 <= -2)
      {
        do
        {
          v5 = (v5 + (__clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3));
          v6 = *v5;
        }

        while (v6 < -1);
      }

      ++v4;
      if (v6 == 255)
      {
        v5 = 0;
      }
    }

    while (v5 != a4);
    if (v4)
    {
      if (!(v4 >> 61))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

void sub_23CA4D728(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v126 = *(a2 - 2);
        if (v126 >= v91 && (v91 < v126 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v126;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v127 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v127;
        v128 = v10[2];
        v129 = *v10;
        if (v128 >= *v10 && (v129 < v128 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v128;
        v10[2] = v129;
        v94 = v10 + 1;
LABEL_234:
        v141 = *v94;
        *v94 = *v9;
        *v9 = v141;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_234;
      }

      if (v91 >= v93)
      {
        v138 = v10[3];
        if (*(a2 - 1) < v138)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v138 = v10[3];
      }

      v139 = v10[1];
      v10[3] = v139;
      *v10 = v91;
      v10[1] = v138;
      v10[2] = v92;
      v140 = *(a2 - 2);
      if (v140 >= v92 && (v92 < v140 || *(a2 - 1) >= v139))
      {
        return result;
      }

      v10[2] = v140;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_234;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      v106 = v10 + 2;
      v108 = v10 == a2 || v106 == a2;
      if ((a5 & 1) == 0)
      {
        if (!v108)
        {
          v130 = v10 + 1;
          do
          {
            v131 = v8;
            v8 = v106;
            v132 = v131[2];
            v133 = *v131;
            if (v132 < *v131 || v133 >= v132 && v131[3] < v131[1])
            {
              v134 = *v8;
              v135 = v8[1];
              for (i = v130; ; i -= 2)
              {
                v137 = *i;
                i[1] = v133;
                i[2] = v137;
                v133 = *(i - 3);
                if (v133 <= v134 && (v133 < v134 || *(i - 2) <= v135))
                {
                  break;
                }
              }

              *(i - 1) = v134;
              *i = v135;
            }

            v106 = v8 + 2;
            v130 += 2;
          }

          while (v8 + 2 != a2);
        }

        return result;
      }

      if (v108)
      {
        return result;
      }

      v109 = 0;
      v110 = v10;
LABEL_177:
      v112 = v110;
      v110 = v106;
      v113 = v112[2];
      v114 = *v112;
      if (v113 >= *v112 && (v114 < v113 || v112[3] >= v112[1]))
      {
        goto LABEL_176;
      }

      v116 = v112[2];
      v115 = v112[3];
      v117 = v112[1];
      v112[2] = v114;
      v110[1] = v117;
      v111 = v10;
      if (v112 == v10)
      {
        goto LABEL_175;
      }

      v118 = v109;
      while (1)
      {
        v121 = *(v10 + v118 - 8);
        if (v121 > v116)
        {
          v119 = *(v10 + v118 - 4);
        }

        else
        {
          if (v121 < v116)
          {
            v111 = (v10 + v118);
LABEL_175:
            *v111 = v116;
            v111[1] = v115;
LABEL_176:
            v106 = v110 + 2;
            v109 += 8;
            if (v110 + 2 != a2)
            {
              goto LABEL_177;
            }

            return result;
          }

          v119 = *(v10 + v118 - 4);
          if (v119 <= v115)
          {
            v111 = v112;
            goto LABEL_175;
          }
        }

        v112 -= 2;
        v120 = (v10 + v118);
        *v120 = v121;
        v120[1] = v119;
        v118 -= 8;
        if (!v118)
        {
          v111 = v10;
          goto LABEL_175;
        }
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v122 = (v13 - 2) >> 1;
        v123 = v122 + 1;
        v124 = &v8[2 * v122];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v8, a3, v13, v124);
          v124 -= 2;
          --v123;
        }

        while (v123);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<int,int> *>(v8, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 < v70)
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                      goto LABEL_92;
                    }

                    if (v70 < v75 || (v77 = v55[1], v76 = v15[1], v77 >= v76))
                    {
LABEL_104:
                      v82 = *v10;
                      *v10 = v70;
                      v23 = v10 + 1;
                      *v15 = v82;
                      v30 = v15 + 1;
                      goto LABEL_105;
                    }

LABEL_92:
                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
                    goto LABEL_104;
                  }

                  v72 = *v55;
                  if (*v55 >= v70)
                  {
                    if (v70 >= v72)
                    {
                      v79 = v15[1];
                      if (v55[1] < v79)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v79 = v15[1];
                    }

                    *v15 = v71;
                    v80 = v39[1];
                    v15[1] = v80;
                    *v39 = v70;
                    v39[1] = v79;
                    if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                    {
                      v70 = v71;
                      goto LABEL_104;
                    }

                    *v15 = v72;
                    *v55 = v71;
                    v74 = v55 + 1;
                    v73 = v15 + 1;
                  }

                  else
                  {
LABEL_87:
                    *v39 = v72;
                    v73 = v39 + 1;
                    *v55 = v71;
                    v74 = v55 + 1;
                  }

                  v78 = v74;
                  goto LABEL_103;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 >= v56)
              {
                if (v56 >= v59)
                {
                  v66 = v55[1];
                  if (*(a2 - 5) < v66)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  v66 = v55[1];
                }

                v67 = v10[5];
                v10[4] = v56;
                v10[5] = v66;
                *v55 = v58;
                v55[1] = v67;
                v60 = v55 + 1;
                v68 = *(a2 - 6);
                if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
                {
                  goto LABEL_85;
                }

                *v55 = v68;
                *(a2 - 6) = v58;
              }

              else
              {
LABEL_69:
                v10[4] = v59;
                *(a2 - 6) = v58;
                v60 = v10 + 5;
              }

              v62 = a2 - 5;
              goto LABEL_84;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 >= v40)
          {
            if (v40 >= v42)
            {
              v49 = *(v14 - 1);
              if (*(a2 - 3) < v49)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v49 = *(v14 - 1);
            }

            v52 = v10[3];
            v10[2] = v40;
            v10[3] = v49;
            *v39 = v41;
            *(v14 - 1) = v52;
            v43 = v14 - 1;
            v53 = *(a2 - 4);
            if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
            {
              goto LABEL_67;
            }

            *v39 = v53;
            *(a2 - 4) = v41;
          }

          else
          {
LABEL_47:
            v10[2] = v42;
            *(a2 - 4) = v41;
            v43 = v10 + 3;
          }

          v45 = a2 - 3;
          goto LABEL_66;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 >= v16)
      {
        if (v16 >= v18)
        {
          v34 = v14[1];
          if (*(a2 - 1) < v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v34 = v14[1];
        }

        v36 = v10[1];
        *v10 = v16;
        v10[1] = v34;
        *v14 = v17;
        v14[1] = v36;
        v19 = v14 + 1;
        v37 = *(a2 - 2);
        if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
        {
          goto LABEL_45;
        }

        *v14 = v37;
      }

      else
      {
LABEL_16:
        *v10 = v18;
        v19 = v10 + 1;
      }

      *(a2 - 2) = v17;
      v25 = a2 - 1;
      goto LABEL_44;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
LABEL_146:
        a5 = 0;
        a4 = -v12;
        goto LABEL_3;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
      goto LABEL_146;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 < v3;
        }

        while (v13 > v3);
      }

      while (!v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

_DWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 <= v3;
        }

        while (v16 < v3);
      }

      while (v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *a1, int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v2 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v6 = *(a2 - 2);
        v7 = a1[6];
        if (v6 >= v7)
        {
          if (v7 < v6)
          {
            return 1;
          }

          if (*(a2 - 1) >= a1[7])
          {
            return 1;
          }
        }

        a1[6] = v6;
        *(a2 - 2) = v7;
        v8 = a1[7];
        a1[7] = *(a2 - 1);
        *(a2 - 1) = v8;
        v9 = a1[6];
        v10 = a1[4];
        if (v9 >= v10)
        {
          if (v10 < v9)
          {
            return 1;
          }

          v12 = a1[7];
          v11 = a1[5];
          if (v12 >= v11)
          {
            return 1;
          }
        }

        else
        {
          v11 = a1[5];
          v12 = a1[7];
        }

        a1[4] = v9;
        a1[5] = v12;
        a1[6] = v10;
        a1[7] = v11;
        v13 = a1[2];
        if (v9 >= v13)
        {
          if (v13 < v9)
          {
            return 1;
          }

          v14 = a1[3];
          if (v12 >= v14)
          {
            return 1;
          }
        }

        else
        {
          v14 = a1[3];
        }

        a1[2] = v9;
        a1[3] = v12;
        a1[4] = v13;
        a1[5] = v14;
        v15 = *a1;
        if (v9 >= *a1)
        {
          if (v15 < v9)
          {
            return 1;
          }

          v16 = a1[1];
          if (v12 >= v16)
          {
            return 1;
          }
        }

        else
        {
          v16 = a1[1];
        }

        *a1 = v9;
        a1[1] = v12;
        a1[2] = v15;
        a1[3] = v16;
        return 1;
      }

LABEL_21:
      v25 = a1 + 4;
      v26 = a1[2];
      v27 = *a1;
      if (v26 >= *a1 && (v27 < v26 || a1[3] >= a1[1]))
      {
        v34 = *v25;
        if (*v25 >= v26)
        {
          if (v26 < v34)
          {
            goto LABEL_66;
          }

          v36 = a1[5];
          v35 = a1[3];
          if (v36 >= v35)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v35 = a1[3];
          v36 = a1[5];
        }

        a1[3] = v36;
        v37 = a1 + 3;
        a1[2] = v34;
        a1[4] = v26;
        a1[5] = v35;
        if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
        {
LABEL_66:
          v45 = a1 + 6;
          if (a1 + 6 == a2)
          {
            return 1;
          }

          v46 = 0;
          v47 = 0;
LABEL_71:
          v49 = *v25;
          if (*v45 >= *v25 && (v49 < *v45 || v45[1] >= v25[1]))
          {
            goto LABEL_70;
          }

          v50 = *v45;
          v51 = v45[1];
          *v45 = v49;
          v45[1] = v25[1];
          v48 = a1;
          if (v25 == a1)
          {
            goto LABEL_69;
          }

          v52 = v46;
          while (1)
          {
            v54 = a1 + v52;
            v55 = *(a1 + v52 + 8);
            if (v55 > v50)
            {
              v53 = *(v54 + 3);
            }

            else
            {
              if (v55 < v50)
              {
                v48 = v25;
LABEL_69:
                *v48 = v50;
                v48[1] = v51;
                if (++v47 == 8)
                {
                  return v45 + 2 == a2;
                }

LABEL_70:
                v25 = v45;
                v46 += 8;
                v45 += 2;
                if (v45 != a2)
                {
                  goto LABEL_71;
                }

                return 1;
              }

              v53 = *(a1 + v52 + 12);
              if (v53 <= v51)
              {
                v48 = (a1 + v52 + 16);
                goto LABEL_69;
              }
            }

            v25 -= 2;
            *(v54 + 4) = v55;
            *(a1 + v52 + 20) = v53;
            v52 -= 8;
            if (v52 == -16)
            {
              v48 = a1;
              goto LABEL_69;
            }
          }
        }

        *a1 = v34;
        a1[2] = v27;
        v29 = a1 + 1;
LABEL_65:
        v44 = *v29;
        *v29 = *v37;
        *v37 = v44;
        goto LABEL_66;
      }

      v28 = *v25;
      if (*v25 < v26)
      {
        goto LABEL_23;
      }

      if (v26 >= v28)
      {
        v39 = a1[3];
        if (a1[5] < v39)
        {
LABEL_23:
          *a1 = v28;
          a1[4] = v27;
          v29 = a1 + 1;
LABEL_64:
          v37 = a1 + 5;
          goto LABEL_65;
        }
      }

      else
      {
        v39 = a1[3];
      }

      v43 = a1[1];
      a1[3] = v43;
      v29 = a1 + 3;
      *a1 = v26;
      a1[1] = v39;
      a1[2] = v27;
      if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
      {
        goto LABEL_66;
      }

      a1[2] = v28;
      a1[4] = v27;
      goto LABEL_64;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20)
      {
        if (v20 < v30)
        {
          return 1;
        }

        if (*(a2 - 1) >= a1[3])
        {
          return 1;
        }
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1)
      {
        if (v33 < v32)
        {
          return 1;
        }

        if (a1[3] >= a1[1])
        {
          return 1;
        }
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_20:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21)
    {
      if (v21 < v41)
      {
        return 1;
      }

      if (*(a2 - 1) >= v40)
      {
        return 1;
      }
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_21;
  }

  v17 = *(a2 - 2);
  v18 = *a1;
  if (v17 < *a1)
  {
    goto LABEL_17;
  }

  if (v18 < v17)
  {
    return 1;
  }

  if (*(a2 - 1) < a1[1])
  {
LABEL_17:
    *a1 = v17;
    *(a2 - 2) = v18;
    v19 = a1[1];
    a1[1] = *(a2 - 1);
    *(a2 - 1) = v19;
    return 1;
  }

  return 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
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
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

int *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<int,int> *>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v7 = v6;
      v8 = &v6[2 * v4];
      v6 = v8 + 2;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = v8[4];
        v12 = v8[2];
        if (v12 < v11 || v11 >= v12 && v8[3] < v8[5])
        {
          v6 = v8 + 4;
          v4 = v10;
        }
      }

      *v7 = *v6;
      v7[1] = v6[1];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v6 == (a2 - 8))
    {
      *v6 = v5;
    }

    else
    {
      *v6 = *(a2 - 8);
      v6[1] = *(a2 - 4);
      *(a2 - 8) = v5;
      v13 = (v6 - result + 8) >> 3;
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        v15 = v14 >> 1;
        v16 = &result[2 * (v14 >> 1)];
        v17 = *v16;
        if (*v16 < *v6 || *v6 >= v17 && v16[1] < v6[1])
        {
          v18 = *v6;
          v19 = v6[1];
          *v6 = v17;
          v6[1] = v16[1];
          if (v14 >= 2)
          {
            while (1)
            {
              v22 = v15 - 1;
              v15 = (v15 - 1) >> 1;
              v20 = &result[2 * v15];
              v23 = *v20;
              if (*v20 < v18)
              {
                v21 = v20[1];
              }

              else
              {
                if (v23 > v18)
                {
                  break;
                }

                v21 = v20[1];
                if (v21 >= v19)
                {
                  break;
                }
              }

              *v16 = v23;
              v16[1] = v21;
              v16 = &result[2 * v15];
              if (v22 <= 1)
              {
                goto LABEL_15;
              }
            }
          }

          v20 = v16;
LABEL_15:
          *v20 = v18;
          v20[1] = v19;
        }
      }
    }
  }

  return result;
}

void absl::lts_20240722::container_internal::TransferRelocatable<12ul>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(operations_research::sat::CpSolverResponse const&)::HeadAndArcLiteral>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,true,true,4ul>(&v7, a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,false>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v58 = a2 - 7;
  v10 = a1;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = ((a2 - v10) >> 3) * v9;
    v15 = v14 - 2;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v40 = (a2 - 56);
        v41 = *(a2 - 14);
        if (v41 < *v10)
        {
          goto LABEL_42;
        }

        if (*v10 >= v41)
        {
          v48 = *(a2 - 6);
          v49 = *(v10 + 1);
          if (v48 < v49)
          {
            goto LABEL_42;
          }

          if (v49 >= v48)
          {
            v50 = *(a2 - 5);
            v51 = *(v10 + 2);
            if (v50 < v51 || v51 >= v50 && ((v52 = *(a2 - 4), v53 = *(v10 + 3), v52 < v53) || v53 >= v52 && ((v54 = *(a2 - 3), v55 = *(v10 + 4), v54 < v55) || v55 >= v54 && ((v56 = *(a2 - 2), v57 = *(v10 + 5), v56 < v57) || v57 >= v56 && *(a2 - 1) < *(v10 + 6)))))
            {
LABEL_42:
              v66 = *(v10 + 6);
              v62 = v10[1];
              v64 = v10[2];
              v60 = *v10;
              v42 = *v40;
              v43 = *(a2 - 40);
              v44 = *(a2 - 24);
              *(v10 + 6) = *(a2 - 1);
              v10[1] = v43;
              v10[2] = v44;
              *v10 = v42;
              *v40 = v60;
              *(a2 - 40) = v62;
              *(a2 - 24) = v64;
              *(a2 - 1) = v66;
            }
          }
        }

        return;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(v10, v10 + 7, v10 + 14, v58);
      return;
    }

    if (v14 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(v10, v10 + 7, v10 + 14, v10 + 21, v58);
      return;
    }

LABEL_11:
    if (v13 <= 1343)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {
        v45 = (v15 >> 1) + 1;
        v46 = v10 + 7 * (v15 >> 1);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(v10, a3, ((a2 - v10) >> 3) * v9, v46);
          v46 -= 7;
          --v45;
        }

        while (v45);

        std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(v10, a2, a3, v47);
      }

      return;
    }

    v16 = v14 >> 1;
    v17 = v10 + 7 * (v14 >> 1);
    if (v13 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(v17, v10, v58);
      if (a5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(v10, v17, v58);
      v18 = v10 + 56;
      v19 = v9;
      v20 = 56 * v16;
      v21 = (56 * v16 + a1 - 56);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>((a1 + 56), v21, a2 - 14);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>((a1 + 112), &v18[v20], a2 - 21);
      v22 = &v18[v20];
      v9 = v19;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(v21, v17, v22);
      v65 = *(a1 + 48);
      v61 = *(a1 + 16);
      v63 = *(a1 + 32);
      v59 = *a1;
      v23 = *v17;
      v24 = *(v17 + 1);
      v25 = *(v17 + 2);
      *(a1 + 48) = v17[6];
      *(a1 + 16) = v24;
      *(a1 + 32) = v25;
      *a1 = v23;
      *(v17 + 6) = v65;
      *(v17 + 1) = v61;
      *(v17 + 2) = v63;
      *v17 = v59;
      if (a5)
      {
        goto LABEL_30;
      }
    }

    v26 = *(a1 - 56);
    if (v26 >= *a1)
    {
      if (*a1 < v26)
      {
        goto LABEL_34;
      }

      v27 = *(a1 - 48);
      v28 = *(a1 + 8);
      if (v27 >= v28)
      {
        if (v28 < v27)
        {
          goto LABEL_34;
        }

        v29 = *(a1 - 40);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29 || (v31 = *(a1 - 32), v32 = *(a1 + 24), v31 >= v32) && (v32 < v31 || (v33 = *(a1 - 24), v34 = *(a1 + 32), v33 >= v34) && (v34 < v33 || (v35 = *(a1 - 16), v36 = *(a1 + 40), v35 >= v36) && (v36 < v35 || *(a1 - 8) >= *(a1 + 48)))))
          {
LABEL_34:
            v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NeighborhoodGenerator::SolveData *,std::__less<void,void> &>(a1, a2);
            goto LABEL_35;
          }
        }
      }
    }

LABEL_30:
    v37 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NeighborhoodGenerator::SolveData *,std::__less<void,void> &>(a1, a2);
    if ((v38 & 1) == 0)
    {
      goto LABEL_33;
    }

    v39 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(a1, v37);
    v10 = (v37 + 56);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(v37 + 56, a2))
    {
      a4 = -v12;
      a2 = v37;
      if (v39)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if ((v39 & 1) == 0)
    {
LABEL_33:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,false>(a1, v37, a3, -v12, a5 & 1);
      v10 = (v37 + 56);
LABEL_35:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(v10, v10 + 7, v58);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 < *a1)
  {
    goto LABEL_36;
  }

  if (*a1 >= v3)
  {
    v36 = a2[1];
    v37 = a1[1];
    if (v36 < v37)
    {
      goto LABEL_36;
    }

    if (v37 >= v36)
    {
      v38 = a2[2];
      v39 = a1[2];
      if (v38 < v39 || v39 >= v38 && ((v40 = a2[3], v41 = a1[3], v40 < v41) || v41 >= v40 && ((v42 = *(a2 + 4), v43 = *(a1 + 4), v42 < v43) || v43 >= v42 && ((v44 = *(a2 + 5), v45 = *(a1 + 5), v44 < v45) || v45 >= v44 && *(a2 + 6) < *(a1 + 6)))))
      {
LABEL_36:
        if (*a3 < v3)
        {
          goto LABEL_3;
        }

        if (v3 < *a3)
        {
          goto LABEL_9;
        }

        v46 = a3[1];
        v47 = a2[1];
        if (v46 < v47)
        {
          goto LABEL_3;
        }

        if (v47 < v46)
        {
          goto LABEL_9;
        }

        v48 = a3[2];
        v49 = a2[2];
        if (v48 < v49 || v49 >= v48 && ((v50 = a3[3], v51 = a2[3], v50 < v51) || v51 >= v50 && ((v52 = *(a3 + 4), v53 = *(a2 + 4), v52 < v53) || v53 >= v52 && ((v54 = *(a3 + 5), v55 = *(a2 + 5), v54 < v55) || v55 >= v54 && *(a3 + 6) < *(a2 + 6)))))
        {
LABEL_3:
          v4 = *(a1 + 6);
          v6 = *(a1 + 1);
          v5 = *(a1 + 2);
          v7 = *a1;
          v9 = *(a3 + 1);
          v8 = *(a3 + 2);
          v10 = *a3;
          a1[6] = a3[6];
          *(a1 + 1) = v9;
          *(a1 + 2) = v8;
          *a1 = v10;
        }

        else
        {
LABEL_9:
          v26 = *(a1 + 6);
          v28 = *(a1 + 1);
          v27 = *(a1 + 2);
          v29 = *a1;
          v31 = *(a2 + 1);
          v30 = *(a2 + 2);
          v32 = *a2;
          a1[6] = a2[6];
          *(a1 + 1) = v31;
          *(a1 + 2) = v30;
          *a1 = v32;
          *a2 = v29;
          *(a2 + 1) = v28;
          *(a2 + 2) = v27;
          *(a2 + 6) = v26;
          if (*a3 >= *a2)
          {
            if (*a2 < *a3)
            {
              return 1;
            }

            v60 = a3[1];
            v61 = a2[1];
            if (v60 >= v61)
            {
              if (v61 < v60)
              {
                return 1;
              }

              v66 = a3[2];
              v67 = a2[2];
              if (v66 >= v67)
              {
                if (v67 < v66)
                {
                  return 1;
                }

                v72 = a3[3];
                v73 = a2[3];
                if (v72 >= v73)
                {
                  if (v73 < v72)
                  {
                    return 1;
                  }

                  v78 = *(a3 + 4);
                  v79 = *(a2 + 4);
                  if (v78 >= v79)
                  {
                    if (v79 < v78)
                    {
                      return 1;
                    }

                    v84 = *(a3 + 5);
                    v85 = *(a2 + 5);
                    if (v84 >= v85)
                    {
                      if (v85 < v84)
                      {
                        return 1;
                      }

                      if (*(a3 + 6) >= *(a2 + 6))
                      {
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }

          v4 = *(a2 + 6);
          v6 = *(a2 + 1);
          v5 = *(a2 + 2);
          v7 = *a2;
          v34 = *(a3 + 1);
          v33 = *(a3 + 2);
          v35 = *a3;
          a2[6] = a3[6];
          *(a2 + 1) = v34;
          *(a2 + 2) = v33;
          *a2 = v35;
        }

        *a3 = v7;
        *(a3 + 1) = v6;
        *(a3 + 2) = v5;
        result = 1;
        *(a3 + 6) = v4;
        return result;
      }
    }
  }

  if (*a3 < v3)
  {
    goto LABEL_6;
  }

  if (v3 < *a3)
  {
    return 0;
  }

  v56 = a3[1];
  v57 = a2[1];
  if (v56 < v57)
  {
    goto LABEL_6;
  }

  if (v57 < v56)
  {
    return 0;
  }

  v62 = a3[2];
  v63 = a2[2];
  if (v62 < v63)
  {
    goto LABEL_6;
  }

  if (v63 < v62)
  {
    return 0;
  }

  v68 = a3[3];
  v69 = a2[3];
  if (v68 < v69)
  {
    goto LABEL_6;
  }

  if (v69 < v68)
  {
    return 0;
  }

  v74 = *(a3 + 4);
  v75 = *(a2 + 4);
  if (v74 < v75)
  {
    goto LABEL_6;
  }

  if (v75 < v74)
  {
    return 0;
  }

  v80 = *(a3 + 5);
  v81 = *(a2 + 5);
  if (v80 < v81)
  {
    goto LABEL_6;
  }

  if (v81 < v80)
  {
    return 0;
  }

  if (*(a3 + 6) >= *(a2 + 6))
  {
    return 0;
  }

LABEL_6:
  v11 = *(a2 + 6);
  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  v14 = *a2;
  v16 = *(a3 + 1);
  v15 = *(a3 + 2);
  v17 = *a3;
  a2[6] = a3[6];
  *(a2 + 1) = v16;
  *(a2 + 2) = v15;
  *a2 = v17;
  *a3 = v14;
  *(a3 + 1) = v13;
  *(a3 + 2) = v12;
  *(a3 + 6) = v11;
  if (*a2 < *a1)
  {
LABEL_7:
    v18 = *(a1 + 6);
    v20 = *(a1 + 1);
    v19 = *(a1 + 2);
    v21 = *a1;
    v23 = *(a2 + 1);
    v22 = *(a2 + 2);
    v24 = *a2;
    a1[6] = a2[6];
    *(a1 + 1) = v23;
    *(a1 + 2) = v22;
    *a1 = v24;
    *a2 = v21;
    *(a2 + 1) = v20;
    *(a2 + 2) = v19;
    result = 1;
    *(a2 + 6) = v18;
    return result;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v58 = a2[1];
  v59 = a1[1];
  if (v58 < v59)
  {
    goto LABEL_7;
  }

  if (v59 < v58)
  {
    return 1;
  }

  v64 = a2[2];
  v65 = a1[2];
  if (v64 < v65)
  {
    goto LABEL_7;
  }

  if (v65 < v64)
  {
    return 1;
  }

  v70 = a2[3];
  v71 = a1[3];
  if (v70 < v71)
  {
    goto LABEL_7;
  }

  if (v71 < v70)
  {
    return 1;
  }

  v76 = *(a2 + 4);
  v77 = *(a1 + 4);
  if (v76 < v77)
  {
    goto LABEL_7;
  }

  if (v77 < v76)
  {
    return 1;
  }

  v82 = *(a2 + 5);
  v83 = *(a1 + 5);
  if (v82 < v83)
  {
    goto LABEL_7;
  }

  if (v83 < v82)
  {
    return 1;
  }

  if (*(a2 + 6) < *(a1 + 6))
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(double *a1, double *a2, double *a3, double *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(a1, a2, a3);
  if (*a4 < *a3)
  {
    goto LABEL_29;
  }

  if (*a3 >= *a4)
  {
    v30 = a4[1];
    v31 = a3[1];
    if (v30 < v31)
    {
      goto LABEL_29;
    }

    if (v31 >= v30)
    {
      v32 = a4[2];
      v33 = a3[2];
      if (v32 < v33 || v33 >= v32 && ((v34 = a4[3], v35 = a3[3], v34 < v35) || v35 >= v34 && ((v36 = *(a4 + 4), v37 = *(a3 + 4), v36 < v37) || v37 >= v36 && ((v38 = *(a4 + 5), v39 = *(a3 + 5), v38 < v39) || v39 >= v38 && *(a4 + 6) < *(a3 + 6)))))
      {
LABEL_29:
        v9 = *(a3 + 6);
        v11 = *(a3 + 1);
        v10 = *(a3 + 2);
        v12 = *a3;
        v14 = *(a4 + 1);
        v13 = *(a4 + 2);
        v15 = *a4;
        a3[6] = a4[6];
        *(a3 + 1) = v14;
        *(a3 + 2) = v13;
        *a3 = v15;
        *a4 = v12;
        *(a4 + 1) = v11;
        *(a4 + 2) = v10;
        *(a4 + 6) = v9;
        if (*a3 < *a2)
        {
          goto LABEL_3;
        }

        if (*a2 >= *a3)
        {
          v40 = a3[1];
          v41 = a2[1];
          if (v40 < v41)
          {
            goto LABEL_3;
          }

          if (v41 >= v40)
          {
            v42 = a3[2];
            v43 = a2[2];
            if (v42 < v43 || v43 >= v42 && ((v44 = a3[3], v45 = a2[3], v44 < v45) || v45 >= v44 && ((v46 = *(a3 + 4), v47 = *(a2 + 4), v46 < v47) || v47 >= v46 && ((v48 = *(a3 + 5), v49 = *(a2 + 5), v48 < v49) || v49 >= v48 && *(a3 + 6) < *(a2 + 6)))))
            {
LABEL_3:
              v16 = *(a2 + 6);
              v18 = *(a2 + 1);
              v17 = *(a2 + 2);
              v19 = *a2;
              v21 = *(a3 + 1);
              v20 = *(a3 + 2);
              v22 = *a3;
              a2[6] = a3[6];
              *(a2 + 1) = v21;
              *(a2 + 2) = v20;
              *a2 = v22;
              *a3 = v19;
              *(a3 + 1) = v18;
              *(a3 + 2) = v17;
              *(a3 + 6) = v16;
              if (*a2 < *a1)
              {
                goto LABEL_4;
              }

              if (*a1 >= *a2)
              {
                v50 = a2[1];
                v51 = a1[1];
                if (v50 < v51)
                {
                  goto LABEL_4;
                }

                if (v51 >= v50)
                {
                  v52 = a2[2];
                  v53 = a1[2];
                  if (v52 < v53 || v53 >= v52 && ((v54 = a2[3], v55 = a1[3], v54 < v55) || v55 >= v54 && ((v56 = *(a2 + 4), v57 = *(a1 + 4), v56 < v57) || v57 >= v56 && ((v58 = *(a2 + 5), v59 = *(a1 + 5), v58 < v59) || v59 >= v58 && *(a2 + 6) < *(a1 + 6)))))
                  {
LABEL_4:
                    v23 = *(a1 + 6);
                    v25 = *(a1 + 1);
                    v24 = *(a1 + 2);
                    v26 = *a1;
                    v28 = *(a2 + 1);
                    v27 = *(a2 + 2);
                    v29 = *a2;
                    a1[6] = a2[6];
                    *(a1 + 1) = v28;
                    *(a1 + 2) = v27;
                    *a1 = v29;
                    *a2 = v26;
                    *(a2 + 1) = v25;
                    *(a2 + 2) = v24;
                    *(a2 + 6) = v23;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(a1, a2, a3, a4);
  if (*a5 < *a4)
  {
    goto LABEL_43;
  }

  if (*a4 >= *a5)
  {
    v39 = a5[1];
    v40 = a4[1];
    if (v39 < v40)
    {
      goto LABEL_43;
    }

    if (v40 >= v39)
    {
      v41 = a5[2];
      v42 = a4[2];
      if (v41 < v42 || v42 >= v41 && ((v43 = a5[3], v44 = a4[3], v43 < v44) || v44 >= v43 && ((v45 = *(a5 + 4), v46 = *(a4 + 4), v45 < v46) || v46 >= v45 && ((v47 = *(a5 + 5), v48 = *(a4 + 5), v47 < v48) || v48 >= v47 && *(a5 + 6) < *(a4 + 6)))))
      {
LABEL_43:
        v11 = *(a4 + 6);
        v13 = *(a4 + 1);
        v12 = *(a4 + 2);
        v14 = *a4;
        v16 = *(a5 + 1);
        v15 = *(a5 + 2);
        v17 = *a5;
        a4[6] = a5[6];
        *(a4 + 1) = v16;
        *(a4 + 2) = v15;
        *a4 = v17;
        *a5 = v14;
        *(a5 + 1) = v13;
        *(a5 + 2) = v12;
        *(a5 + 6) = v11;
        if (*a4 < *a3)
        {
          goto LABEL_60;
        }

        if (*a3 >= *a4)
        {
          v49 = a4[1];
          v50 = a3[1];
          if (v49 < v50)
          {
            goto LABEL_60;
          }

          if (v50 >= v49)
          {
            v51 = a4[2];
            v52 = a3[2];
            if (v51 < v52 || v52 >= v51 && ((v53 = a4[3], v54 = a3[3], v53 < v54) || v54 >= v53 && ((v55 = *(a4 + 4), v56 = *(a3 + 4), v55 < v56) || v56 >= v55 && ((v57 = *(a4 + 5), v58 = *(a3 + 5), v57 < v58) || v58 >= v57 && *(a4 + 6) < *(a3 + 6)))))
            {
LABEL_60:
              v18 = *(a3 + 6);
              v20 = *(a3 + 1);
              v19 = *(a3 + 2);
              v21 = *a3;
              v23 = *(a4 + 1);
              v22 = *(a4 + 2);
              v24 = *a4;
              a3[6] = a4[6];
              *(a3 + 1) = v23;
              *(a3 + 2) = v22;
              *a3 = v24;
              *a4 = v21;
              *(a4 + 1) = v20;
              *(a4 + 2) = v19;
              *(a4 + 6) = v18;
              if (*a3 < *a2)
              {
                goto LABEL_4;
              }

              if (*a2 >= *a3)
              {
                v59 = a3[1];
                v60 = a2[1];
                if (v59 < v60)
                {
                  goto LABEL_4;
                }

                if (v60 >= v59)
                {
                  v61 = a3[2];
                  v62 = a2[2];
                  if (v61 < v62 || v62 >= v61 && ((v63 = a3[3], v64 = a2[3], v63 < v64) || v64 >= v63 && ((v65 = *(a3 + 4), v66 = *(a2 + 4), v65 < v66) || v66 >= v65 && ((v67 = *(a3 + 5), v68 = *(a2 + 5), v67 < v68) || v68 >= v67 && *(a3 + 6) < *(a2 + 6)))))
                  {
LABEL_4:
                    v25 = *(a2 + 6);
                    v27 = *(a2 + 1);
                    v26 = *(a2 + 2);
                    v28 = *a2;
                    v30 = *(a3 + 1);
                    v29 = *(a3 + 2);
                    v31 = *a3;
                    a2[6] = a3[6];
                    *(a2 + 1) = v30;
                    *(a2 + 2) = v29;
                    *a2 = v31;
                    *a3 = v28;
                    *(a3 + 1) = v27;
                    *(a3 + 2) = v26;
                    *(a3 + 6) = v25;
                    if (*a2 < *a1)
                    {
                      goto LABEL_5;
                    }

                    if (*a1 >= *a2)
                    {
                      v69 = a2[1];
                      v70 = a1[1];
                      if (v69 < v70)
                      {
                        goto LABEL_5;
                      }

                      if (v70 >= v69)
                      {
                        v71 = a2[2];
                        v72 = a1[2];
                        if (v71 < v72 || v72 >= v71 && ((v73 = a2[3], v74 = a1[3], v73 < v74) || v74 >= v73 && ((v75 = *(a2 + 4), v76 = *(a1 + 4), v75 < v76) || v76 >= v75 && ((v77 = *(a2 + 5), v78 = *(a1 + 5), v77 < v78) || v78 >= v77 && *(a2 + 6) < *(a1 + 6)))))
                        {
LABEL_5:
                          v32 = *(a1 + 6);
                          v34 = *(a1 + 1);
                          v33 = *(a1 + 2);
                          v35 = *a1;
                          v37 = *(a2 + 1);
                          v36 = *(a2 + 2);
                          v38 = *a2;
                          a1[6] = a2[6];
                          *(a1 + 1) = v37;
                          *(a1 + 2) = v36;
                          *a1 = v38;
                          *a2 = v35;
                          *(a2 + 1) = v34;
                          *(a2 + 2) = v33;
                          *(a2 + 6) = v32;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 56;
    if (result + 56 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v6 = v4;
        v4 = v2;
        v7 = *(v6 + 56);
        if (v7 >= *v6)
        {
          if (*v6 < v7)
          {
            goto LABEL_6;
          }

          v8 = *(v6 + 64);
          v26 = *(v6 + 8);
          if (v8 >= v26)
          {
            if (v26 < v8)
            {
              goto LABEL_6;
            }

            v27 = *(v6 + 72);
            v28 = *(v6 + 16);
            if (v27 >= v28)
            {
              if (v28 < v27)
              {
                goto LABEL_6;
              }

              v29 = *(v6 + 80);
              v30 = *(v6 + 24);
              if (v29 >= v30)
              {
                if (v30 < v29)
                {
                  goto LABEL_6;
                }

                v31 = *(v6 + 88);
                v32 = *(v6 + 32);
                if (v31 >= v32)
                {
                  if (v32 < v31)
                  {
                    goto LABEL_6;
                  }

                  v33 = *(v6 + 96);
                  v34 = *(v6 + 40);
                  if (v33 >= v34 && (v34 < v33 || *(v6 + 104) >= *(v6 + 48)))
                  {
                    goto LABEL_6;
                  }
                }
              }
            }
          }
        }

        else
        {
          v8 = *(v6 + 64);
        }

        v9 = *(v6 + 60);
        v10 = *(v6 + 72);
        v11 = *(v6 + 80);
        v12 = *(v6 + 88);
        v13 = *(v6 + 96);
        v14 = *(v6 + 104);
        v15 = *(v6 + 16);
        *v4 = *v6;
        *(v4 + 16) = v15;
        v16 = *(v6 + 32);
        *(v4 + 48) = *(v6 + 48);
        v5 = result;
        *(v4 + 32) = v16;
        if (v6 == result)
        {
          goto LABEL_5;
        }

        v17 = v3;
        while (1)
        {
          v19 = result + v17;
          v20 = *(result + v17 - 56);
          if (v7 >= v20)
          {
            if (v20 < v7)
            {
              goto LABEL_39;
            }

            v21 = *(v19 - 48);
            if (v8 >= v21)
            {
              if (v21 < v8)
              {
                goto LABEL_39;
              }

              v22 = *(v19 - 40);
              if (v10 >= v22)
              {
                if (v22 < v10)
                {
                  goto LABEL_39;
                }

                v23 = *(v19 - 32);
                if (v11 >= v23)
                {
                  if (v23 < v11)
                  {
                    goto LABEL_39;
                  }

                  v24 = *(v19 - 24);
                  if (v12 >= v24)
                  {
                    if (v24 < v12)
                    {
                      goto LABEL_39;
                    }

                    v25 = *(v19 - 16);
                    if (v13 >= v25)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

LABEL_11:
          v6 -= 56;
          v18 = *(result + v17 - 40);
          *v19 = *(result + v17 - 56);
          *(v19 + 16) = v18;
          *(v19 + 32) = *(result + v17 - 24);
          *(v19 + 48) = *(result + v17 - 8);
          v17 -= 56;
          if (!v17)
          {
            v5 = result;
            goto LABEL_5;
          }
        }

        if (v25 >= v13)
        {
          break;
        }

LABEL_39:
        v5 = v6;
LABEL_5:
        *v5 = v7;
        *(v5 + 4) = v9;
        *(v5 + 8) = v8;
        *(v5 + 16) = v10;
        *(v5 + 24) = v11;
        *(v5 + 32) = v12;
        *(v5 + 40) = v13;
        *(v5 + 48) = v14;
LABEL_6:
        v2 = v4 + 56;
        v3 += 56;
        if (v4 + 56 == a2)
        {
          return result;
        }
      }

      if (v14 >= *(v19 - 8))
      {
        v5 = result + v17;
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 56 == a2)
      {
        return result;
      }

      v2 = result;
      result += 56;
      v3 = *(v2 + 56);
      if (v3 >= *v2)
      {
        if (*v2 >= v3)
        {
          v4 = *(v2 + 64);
          v19 = *(v2 + 8);
          if (v4 < v19)
          {
            goto LABEL_7;
          }

          if (v19 >= v4)
          {
            v20 = *(v2 + 72);
            v21 = *(v2 + 16);
            if (v20 < v21)
            {
              goto LABEL_7;
            }

            if (v21 >= v20)
            {
              v22 = *(v2 + 80);
              v23 = *(v2 + 24);
              if (v22 < v23)
              {
                goto LABEL_7;
              }

              if (v23 >= v22)
              {
                v24 = *(v2 + 88);
                v25 = *(v2 + 32);
                if (v24 < v25)
                {
                  goto LABEL_7;
                }

                if (v25 >= v24)
                {
                  v26 = *(v2 + 96);
                  v27 = *(v2 + 40);
                  if (v26 < v27 || v27 >= v26 && *(v2 + 104) < *(v2 + 48))
                  {
                    goto LABEL_7;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v4 = *(v2 + 64);
LABEL_7:
        v5 = *(v2 + 60);
        v6 = *(v2 + 72);
        v7 = *(v2 + 80);
        v8 = *(v2 + 88);
        v9 = *(v2 + 96);
        v10 = result;
        v11 = *(v2 + 104);
        while (1)
        {
          v12 = *(v10 - 40);
          *v10 = *(v10 - 56);
          *(v10 + 16) = v12;
          *(v10 + 32) = *(v10 - 24);
          *(v10 + 48) = *(v10 - 8);
          v13 = *(v10 - 112);
          if (v3 >= v13)
          {
            if (v13 < v3)
            {
              break;
            }

            v14 = *(v10 - 104);
            if (v4 >= v14)
            {
              if (v14 < v4)
              {
                break;
              }

              v15 = *(v10 - 96);
              if (v6 >= v15)
              {
                if (v15 < v6)
                {
                  break;
                }

                v16 = *(v10 - 88);
                if (v7 >= v16)
                {
                  if (v16 < v7)
                  {
                    break;
                  }

                  v17 = *(v10 - 80);
                  if (v8 >= v17)
                  {
                    if (v17 < v8)
                    {
                      break;
                    }

                    v18 = *(v10 - 72);
                    if (v9 >= v18 && (v18 < v9 || v11 >= *(v10 - 64)))
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          v10 -= 56;
        }

        *(v10 - 56) = v3;
        *(v10 - 52) = v5;
        *(v10 - 48) = v4;
        *(v10 - 40) = v6;
        *(v10 - 32) = v7;
        *(v10 - 24) = v8;
        *(v10 - 16) = v9;
        *(v10 - 8) = v11;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NeighborhoodGenerator::SolveData *,std::__less<void,void> &>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a2 - 14);
  v10 = *a1;
  if (v10 < v9 || v9 >= v10 && ((v52 = *(a2 - 6), v3 < v52) || v52 >= v3 && ((v53 = *(a2 - 5), v4 < v53) || v53 >= v4 && ((v54 = *(a2 - 4), v5 < v54) || v54 >= v5 && ((v55 = *(a2 - 3), v6 < v55) || v55 >= v6 && ((v56 = *(a2 - 2), v7 < v56) || v56 >= v7 && v8 < *(a2 - 1)))))))
  {
    i = a1;
    while (1)
    {
      v13 = *(i + 14);
      i = (i + 56);
      v12 = v13;
      if (v10 < v13)
      {
        break;
      }

      if (v12 >= v10)
      {
        v14 = *(i + 1);
        if (v3 < v14)
        {
          break;
        }

        if (v14 >= v3)
        {
          v15 = *(i + 2);
          if (v4 < v15)
          {
            break;
          }

          if (v15 >= v4)
          {
            v16 = *(i + 3);
            if (v5 < v16)
            {
              break;
            }

            if (v16 >= v5)
            {
              v17 = *(i + 4);
              if (v6 < v17)
              {
                break;
              }

              if (v17 >= v6)
              {
                v18 = *(i + 5);
                if (v7 < v18 || v18 >= v7 && v8 < *(i + 6))
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    for (i = (a1 + 7); i < a2; i = (i + 56))
    {
      if (v10 < *i)
      {
        break;
      }

      if (*i >= v10)
      {
        v19 = *(i + 1);
        if (v3 < v19)
        {
          break;
        }

        if (v19 >= v3)
        {
          v20 = *(i + 2);
          if (v4 < v20)
          {
            break;
          }

          if (v20 >= v4)
          {
            v21 = *(i + 3);
            if (v5 < v21)
            {
              break;
            }

            if (v21 >= v5)
            {
              v22 = *(i + 4);
              if (v6 < v22)
              {
                break;
              }

              if (v22 >= v6)
              {
                v23 = *(i + 5);
                if (v7 < v23 || v23 >= v7 && v8 < *(i + 6))
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  if (i < a2)
  {
    for (j = a2 - 7; ; j = (j - 56))
    {
      if (v10 >= v9)
      {
        if (v9 < v10)
        {
          break;
        }

        v26 = *(j + 8);
        if (v3 >= v26)
        {
          if (v26 < v3)
          {
            break;
          }

          v27 = *(j + 9);
          if (v4 >= v27)
          {
            if (v27 < v4)
            {
              break;
            }

            v28 = *(j + 10);
            if (v5 >= v28)
            {
              if (v28 < v5)
              {
                break;
              }

              v29 = *(j + 11);
              if (v6 >= v29)
              {
                if (v29 < v6)
                {
                  break;
                }

                v30 = *(j + 12);
                if (v7 >= v30 && (v30 < v7 || v8 >= *(j + 13)))
                {
                  break;
                }
              }
            }
          }
        }
      }

      v25 = *j;
      v9 = v25;
    }

    a2 = (j + 56);
  }

  while (i < a2)
  {
    v60 = *(i + 6);
    v58 = i[1];
    v59 = i[2];
    v57 = *i;
    v31 = *a2;
    v32 = a2[1];
    v33 = a2[2];
    *(i + 6) = *(a2 + 6);
    i[1] = v32;
    i[2] = v33;
    *i = v31;
    *(a2 + 6) = v60;
    a2[1] = v58;
    a2[2] = v59;
    *a2 = v57;
    while (1)
    {
      v35 = *(i + 14);
      i = (i + 56);
      v34 = v35;
      if (v10 < v35)
      {
        break;
      }

      if (v34 >= v10)
      {
        v36 = *(i + 1);
        if (v3 < v36)
        {
          break;
        }

        if (v36 >= v3)
        {
          v37 = *(i + 2);
          if (v4 < v37)
          {
            break;
          }

          if (v37 >= v4)
          {
            v38 = *(i + 3);
            if (v5 < v38)
            {
              break;
            }

            if (v38 >= v5)
            {
              v39 = *(i + 4);
              if (v6 < v39)
              {
                break;
              }

              if (v39 >= v6)
              {
                v40 = *(i + 5);
                if (v7 < v40 || v40 >= v7 && v8 < *(i + 6))
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    while (1)
    {
      do
      {
        v42 = *(a2 - 14);
        a2 = (a2 - 56);
        v41 = v42;
      }

      while (v10 < v42);
      if (v41 < v10)
      {
        break;
      }

      v43 = *(a2 + 1);
      if (v3 >= v43)
      {
        if (v43 < v3)
        {
          break;
        }

        v44 = *(a2 + 2);
        if (v4 >= v44)
        {
          if (v44 < v4)
          {
            break;
          }

          v45 = *(a2 + 3);
          if (v5 >= v45)
          {
            if (v45 < v5)
            {
              break;
            }

            v46 = *(a2 + 4);
            if (v6 >= v46)
            {
              if (v46 < v6)
              {
                break;
              }

              v47 = *(a2 + 5);
              if (v7 >= v47 && (v47 < v7 || v8 >= *(a2 + 6)))
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  if ((i - 56) != a1)
  {
    v48 = *(i - 56);
    v49 = *(i - 40);
    v50 = *(i - 24);
    a1[6] = *(i - 1);
    *(a1 + 1) = v49;
    *(a1 + 2) = v50;
    *a1 = v48;
  }

  *(i - 7) = v2;
  *(i - 6) = v3;
  *(i - 5) = v4;
  *(i - 4) = v5;
  *(i - 3) = v6;
  *(i - 2) = v7;
  *(i - 1) = v8;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NeighborhoodGenerator::SolveData *,std::__less<void,void> &>(double *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  v10 = *a1;
  while (1)
  {
    v11 = &a1[v2];
    v12 = LODWORD(a1[v2 + 7]);
    if (v12 >= v10)
    {
      if (v10 < v12)
      {
        break;
      }

      v13 = *(v11 + 8);
      if (v13 >= v4)
      {
        if (v4 < v13)
        {
          break;
        }

        v14 = *(v11 + 9);
        if (v14 >= v5)
        {
          if (v5 < v14)
          {
            break;
          }

          v15 = *(v11 + 10);
          if (v15 >= v6)
          {
            if (v6 < v15)
            {
              break;
            }

            v16 = v11[11];
            if (v16 >= v7)
            {
              if (v7 < v16)
              {
                break;
              }

              v17 = v11[12];
              if (v17 >= v8 && (v8 < v17 || v11[13] >= v9))
              {
                break;
              }
            }
          }
        }
      }
    }

    v2 += 7;
  }

  v18 = &a1[v2 + 7];
  if (v2 * 8)
  {
    while (1)
    {
      v20 = *(a2 - 56);
      a2 -= 56;
      v19 = v20;
      if (v20 < v10)
      {
        break;
      }

      if (v10 >= v19)
      {
        v21 = *(a2 + 8);
        if (v21 < v4)
        {
          break;
        }

        if (v4 >= v21)
        {
          v22 = *(a2 + 16);
          if (v22 < v5)
          {
            break;
          }

          if (v5 >= v22)
          {
            v23 = *(a2 + 24);
            if (v23 < v6)
            {
              break;
            }

            if (v6 >= v23)
            {
              v24 = *(a2 + 32);
              if (v24 < v7)
              {
                break;
              }

              if (v7 >= v24)
              {
                v25 = *(a2 + 40);
                if (v25 < v8 || v8 >= v25 && *(a2 + 48) < v9)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    while (v18 < a2)
    {
      v27 = *(a2 - 56);
      a2 -= 56;
      v26 = v27;
      if (v27 < v10)
      {
        break;
      }

      if (v10 >= v26)
      {
        v28 = *(a2 + 8);
        if (v28 < v4)
        {
          break;
        }

        if (v4 >= v28)
        {
          v29 = *(a2 + 16);
          if (v29 < v5)
          {
            break;
          }

          if (v5 >= v29)
          {
            v30 = *(a2 + 24);
            if (v30 < v6)
            {
              break;
            }

            if (v6 >= v30)
            {
              v31 = *(a2 + 32);
              if (v31 < v7)
              {
                break;
              }

              if (v7 >= v31)
              {
                v32 = *(a2 + 40);
                if (v32 < v8 || v8 >= v32 && *(a2 + 48) < v9)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  v33 = v18;
  if (v18 < a2)
  {
    v34 = a2;
    do
    {
      v59 = *(v33 + 48);
      v57 = *(v33 + 16);
      v58 = *(v33 + 32);
      v56 = *v33;
      v35 = *v34;
      v36 = *(v34 + 16);
      v37 = *(v34 + 32);
      *(v33 + 48) = *(v34 + 48);
      *(v33 + 16) = v36;
      *(v33 + 32) = v37;
      *v33 = v35;
      *(v34 + 48) = v59;
      *(v34 + 16) = v57;
      *(v34 + 32) = v58;
      *v34 = v56;
      while (1)
      {
        do
        {
          v39 = *(v33 + 56);
          v33 += 56;
          v38 = v39;
        }

        while (v39 < v10);
        if (v10 < v38)
        {
          break;
        }

        v40 = *(v33 + 8);
        if (v40 >= v4)
        {
          if (v4 < v40)
          {
            break;
          }

          v41 = *(v33 + 16);
          if (v41 >= v5)
          {
            if (v5 < v41)
            {
              break;
            }

            v42 = *(v33 + 24);
            if (v42 >= v6)
            {
              if (v6 < v42)
              {
                break;
              }

              v43 = *(v33 + 32);
              if (v43 >= v7)
              {
                if (v7 < v43)
                {
                  break;
                }

                v44 = *(v33 + 40);
                if (v44 >= v8 && (v8 < v44 || *(v33 + 48) >= v9))
                {
                  break;
                }
              }
            }
          }
        }
      }

      while (1)
      {
        v46 = *(v34 - 56);
        v34 -= 56;
        v45 = v46;
        if (v46 < v10)
        {
          break;
        }

        if (v10 >= v45)
        {
          v47 = *(v34 + 8);
          if (v47 < v4)
          {
            break;
          }

          if (v4 >= v47)
          {
            v48 = *(v34 + 16);
            if (v48 < v5)
            {
              break;
            }

            if (v5 >= v48)
            {
              v49 = *(v34 + 24);
              if (v49 < v6)
              {
                break;
              }

              if (v6 >= v49)
              {
                v50 = *(v34 + 32);
                if (v50 < v7)
                {
                  break;
                }

                if (v7 >= v50)
                {
                  v51 = *(v34 + 40);
                  if (v51 < v8 || v8 >= v51 && *(v34 + 48) < v9)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    while (v33 < v34);
  }

  if ((v33 - 56) != a1)
  {
    v52 = *(v33 - 56);
    v53 = *(v33 - 40);
    v54 = *(v33 - 24);
    a1[6] = *(v33 - 8);
    *(a1 + 1) = v53;
    *(a1 + 2) = v54;
    *a1 = v52;
  }

  *(v33 - 56) = v3;
  *(v33 - 48) = v4;
  *(v33 - 40) = v5;
  *(v33 - 32) = v6;
  *(v33 - 24) = v7;
  *(v33 - 16) = v8;
  *(v33 - 8) = v9;
  return v33 - 56;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = (a2 - 56);
        v4 = *(a2 - 56);
        if (v4 < *a1)
        {
          goto LABEL_5;
        }

        if (*a1 >= v4)
        {
          v50 = *(a2 - 48);
          v51 = *(a1 + 8);
          if (v50 < v51)
          {
            goto LABEL_5;
          }

          if (v51 >= v50)
          {
            v52 = *(a2 - 40);
            v53 = *(a1 + 16);
            if (v52 < v53 || v53 >= v52 && ((v54 = *(a2 - 32), v55 = *(a1 + 24), v54 < v55) || v55 >= v54 && ((v56 = *(a2 - 24), v57 = *(a1 + 32), v56 < v57) || v57 >= v56 && ((v58 = *(a2 - 16), v59 = *(a1 + 40), v58 < v59) || v59 >= v58 && *(a2 - 8) < *(a1 + 48)))))
            {
LABEL_5:
              v5 = *(a1 + 48);
              v7 = *(a1 + 16);
              v6 = *(a1 + 32);
              v8 = *a1;
              v10 = *(a2 - 40);
              v9 = *(a2 - 24);
              v11 = *v3;
              *(a1 + 48) = *(a2 - 8);
              *(a1 + 16) = v10;
              *(a1 + 32) = v9;
              *a1 = v11;
              *v3 = v8;
              *(a2 - 40) = v7;
              *(a2 - 24) = v6;
              *(a2 - 8) = v5;
              return 1;
            }
          }
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(a1, (a1 + 56), (a2 - 56));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(a1, (a1 + 56), (a1 + 112), (a2 - 56));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56));
      return 1;
  }

LABEL_11:
  v13 = a1 + 112;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *,0>(a1, (a1 + 56), (a1 + 112));
  v17 = a1 + 168;
  if (a1 + 168 == a2)
  {
LABEL_51:
    v49 = 1;
    return (v49 | v16) & 1;
  }

  v16 = a2;
  v18 = 0;
  v19 = 0;
  while (2)
  {
    v21 = *v17;
    if (*v17 >= *v13)
    {
      if (*v13 < v21)
      {
        goto LABEL_15;
      }

      v22 = *(v17 + 8);
      v40 = *(v13 + 8);
      if (v22 >= v40)
      {
        if (v40 < v22)
        {
          goto LABEL_15;
        }

        v41 = *(v17 + 16);
        v42 = *(v13 + 16);
        if (v41 >= v42)
        {
          if (v42 < v41)
          {
            goto LABEL_15;
          }

          v43 = *(v17 + 24);
          v44 = *(v13 + 24);
          if (v43 >= v44)
          {
            if (v44 < v43)
            {
              goto LABEL_15;
            }

            v45 = *(v17 + 32);
            v46 = *(v13 + 32);
            if (v45 >= v46)
            {
              if (v46 < v45)
              {
                goto LABEL_15;
              }

              v47 = *(v17 + 40);
              v48 = *(v13 + 40);
              if (v47 >= v48 && (v48 < v47 || *(v17 + 48) >= *(v13 + 48)))
              {
                goto LABEL_15;
              }
            }
          }
        }
      }
    }

    else
    {
      v22 = *(v17 + 8);
    }

    v23 = *(v17 + 4);
    v24 = *(v17 + 16);
    v25 = *(v17 + 24);
    v26 = *(v17 + 32);
    v27 = *(v17 + 40);
    v28 = *(v17 + 48);
    v29 = *(v13 + 16);
    *v17 = *v13;
    *(v17 + 16) = v29;
    v30 = *(v13 + 32);
    *(v17 + 48) = *(v13 + 48);
    v20 = a1;
    *(v17 + 32) = v30;
    if (v13 == a1)
    {
      goto LABEL_14;
    }

    v31 = v18;
    while (1)
    {
      v33 = a1 + v31;
      v34 = *(a1 + v31 + 56);
      if (v21 >= v34)
      {
        if (v34 < v21)
        {
          goto LABEL_48;
        }

        v35 = *(v33 + 64);
        if (v22 >= v35)
        {
          if (v35 < v22)
          {
            goto LABEL_48;
          }

          v36 = *(v33 + 72);
          if (v24 >= v36)
          {
            if (v36 < v24)
            {
              goto LABEL_48;
            }

            v37 = *(v33 + 80);
            if (v25 >= v37)
            {
              if (v37 < v25)
              {
                goto LABEL_48;
              }

              v38 = *(v33 + 88);
              if (v26 >= v38)
              {
                if (v38 < v26)
                {
                  goto LABEL_48;
                }

                v39 = *(v33 + 96);
                if (v27 >= v39)
                {
                  break;
                }
              }
            }
          }
        }
      }

LABEL_20:
      v13 -= 56;
      v32 = *(a1 + v31 + 72);
      *(v33 + 112) = *(a1 + v31 + 56);
      *(v33 + 128) = v32;
      *(v33 + 144) = *(a1 + v31 + 88);
      *(v33 + 160) = *(a1 + v31 + 104);
      v31 -= 56;
      if (v31 == -112)
      {
        v20 = a1;
        goto LABEL_14;
      }
    }

    if (v39 >= v27)
    {
      if (v28 >= *(v33 + 104))
      {
        v20 = a1 + v31 + 112;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_48:
    v20 = v13;
LABEL_14:
    *v20 = v21;
    *(v20 + 4) = v23;
    *(v20 + 8) = v22;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    *(v20 + 32) = v26;
    *(v20 + 40) = v27;
    ++v19;
    *(v20 + 48) = v28;
    if (v19 != 8)
    {
LABEL_15:
      v13 = v17;
      v18 += 56;
      v17 += 56;
      if (v17 == a2)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  v49 = 0;
  v16 = v17 + 56 == a2;
  return (v49 | v16) & 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 3))
    {
      v5 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3)) | 1;
      v6 = (result + 56 * v5);
      if ((0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2) < a3)
      {
        v7 = *(v6 + 14);
        if (*v6 < v7)
        {
          goto LABEL_5;
        }

        if (v7 >= *v6)
        {
          v49 = *(v6 + 1);
          v50 = *(v6 + 8);
          if (v49 < v50)
          {
            goto LABEL_5;
          }

          if (v50 >= v49)
          {
            v51 = *(v6 + 2);
            v52 = *(v6 + 9);
            if (v51 < v52 || v52 >= v51 && ((v53 = *(v6 + 3), v54 = *(v6 + 10), v53 < v54) || v54 >= v53 && ((v55 = *(v6 + 4), v56 = *(v6 + 11), v55 < v56) || v56 >= v55 && ((v57 = *(v6 + 5), v58 = *(v6 + 12), v57 < v58) || v58 >= v57 && *(v6 + 6) < *(v6 + 13)))))
            {
LABEL_5:
              v6 = (v6 + 56);
              v5 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 3) + 2;
            }
          }
        }
      }

      v8 = *a4;
      if (*v6 >= *a4)
      {
        v9 = a4[1];
        if (v8 >= *v6)
        {
          v41 = *(v6 + 1);
          if (v41 < v9)
          {
            return result;
          }

          v10 = a4[2];
          if (v9 >= v41)
          {
            v42 = *(v6 + 2);
            if (v42 < v10)
            {
              return result;
            }

            if (v10 >= v42)
            {
              v43 = *(v6 + 3);
              v44 = a4[3];
              if (v43 < v44)
              {
                return result;
              }

              if (v44 >= v43)
              {
                v45 = *(v6 + 4);
                v46 = *(a4 + 4);
                if (v45 < v46)
                {
                  return result;
                }

                if (v46 >= v45)
                {
                  v47 = *(v6 + 5);
                  v48 = *(a4 + 5);
                  if (v47 < v48 || v48 >= v47 && *(v6 + 6) < *(a4 + 6))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }

        else
        {
          v10 = a4[2];
        }

        v11 = *(a4 + 1);
        v12 = a4[3];
        v13 = *(a4 + 4);
        v14 = *(a4 + 5);
        v15 = *(a4 + 6);
        v17 = v6[1];
        v16 = v6[2];
        v18 = *v6;
        a4[6] = *(v6 + 6);
        *(a4 + 1) = v17;
        *(a4 + 2) = v16;
        *a4 = v18;
        if (v4 >= v5)
        {
          while (1)
          {
            v22 = v6;
            v23 = 2 * v5;
            v5 = (2 * v5) | 1;
            v6 = (result + 56 * v5);
            v24 = v23 + 2;
            if (v24 < a3)
            {
              v25 = *(v6 + 14);
              if (*v6 < v25)
              {
                goto LABEL_15;
              }

              if (v25 >= *v6)
              {
                v31 = *(v6 + 1);
                v32 = *(v6 + 8);
                if (v31 < v32)
                {
                  goto LABEL_15;
                }

                if (v32 >= v31)
                {
                  v33 = *(v6 + 2);
                  v34 = *(v6 + 9);
                  if (v33 < v34 || v34 >= v33 && ((v35 = *(v6 + 3), v36 = *(v6 + 10), v35 < v36) || v36 >= v35 && ((v37 = *(v6 + 4), v38 = *(v6 + 11), v37 < v38) || v38 >= v37 && ((v39 = *(v6 + 5), v40 = *(v6 + 12), v39 < v40) || v40 >= v39 && *(v6 + 6) < *(v6 + 13)))))
                  {
LABEL_15:
                    v6 = (v6 + 56);
                    v5 = v24;
                  }
                }
              }
            }

            if (*v6 < v8)
            {
              break;
            }

            if (v8 >= *v6)
            {
              v26 = *(v6 + 1);
              if (v26 < v9)
              {
                break;
              }

              if (v9 >= v26)
              {
                v27 = *(v6 + 2);
                if (v27 < v10)
                {
                  break;
                }

                if (v10 >= v27)
                {
                  v28 = *(v6 + 3);
                  if (v28 < v12)
                  {
                    break;
                  }

                  if (v12 >= v28)
                  {
                    v29 = *(v6 + 4);
                    if (v29 < v13)
                    {
                      break;
                    }

                    if (v13 >= v29)
                    {
                      v30 = *(v6 + 5);
                      if (v30 < v14 || v14 >= v30 && *(v6 + 6) < v15)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }

            v19 = *v6;
            v20 = v6[1];
            v21 = v6[2];
            *(v22 + 6) = *(v6 + 6);
            v22[1] = v20;
            v22[2] = v21;
            *v22 = v19;
            if (v4 < v5)
            {
              goto LABEL_68;
            }
          }

          v6 = v22;
        }

LABEL_68:
        *v6 = v8;
        *(v6 + 1) = v11;
        *(v6 + 1) = v9;
        *(v6 + 2) = v10;
        *(v6 + 3) = v12;
        *(v6 + 4) = v13;
        *(v6 + 5) = v14;
        *(v6 + 6) = v15;
      }
    }
  }

  return result;
}

__n128 std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 result)
{
  if (a2 - a1 >= 57)
  {
    v5 = a2;
    v7 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    do
    {
      while (1)
      {
        v12 = 0;
        v33 = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a1 + 48);
        v13 = a1;
        do
        {
          v17 = v13;
          v18 = v13 + 56 * v12;
          v13 = v18 + 56;
          v19 = 2 * v12;
          v12 = (2 * v12) | 1;
          v20 = v19 + 2;
          if (v20 < v7)
          {
            v21 = *(v18 + 112);
            v22 = *(v18 + 56);
            if (v22 < v21)
            {
              goto LABEL_9;
            }

            if (v21 >= v22)
            {
              v23 = *(v18 + 64);
              v24 = *(v18 + 120);
              if (v23 < v24)
              {
                goto LABEL_9;
              }

              if (v24 >= v23)
              {
                v25 = *(v18 + 72);
                v26 = *(v18 + 128);
                if (v25 < v26 || v26 >= v25 && ((v27 = *(v18 + 80), v28 = *(v18 + 136), v27 < v28) || v28 >= v27 && ((v29 = *(v18 + 88), v30 = *(v18 + 144), v29 < v30) || v30 >= v29 && ((v31 = *(v18 + 96), v32 = *(v18 + 152), v31 < v32) || v32 >= v31 && *(v18 + 104) < *(v18 + 160)))))
                {
LABEL_9:
                  v13 = v18 + 112;
                  v12 = v20;
                }
              }
            }
          }

          v14 = *v13;
          v15 = *(v13 + 16);
          v16 = *(v13 + 32);
          *(v17 + 48) = *(v13 + 48);
          *(v17 + 16) = v15;
          *(v17 + 32) = v16;
          *v17 = v14;
        }

        while (v12 <= ((v7 - 2) >> 1));
        v5 -= 56;
        if (v13 == v5)
        {
          break;
        }

        v8 = *v5;
        v9 = *(v5 + 16);
        v10 = *(v5 + 32);
        *(v13 + 48) = *(v5 + 48);
        *(v13 + 16) = v9;
        *(v13 + 32) = v10;
        *v13 = v8;
        *v5 = v33;
        *(v5 + 16) = v34;
        *(v5 + 32) = v35;
        *(v5 + 48) = v36;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(a1, v13 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v13 + 56 - a1) >> 3));
        v11 = v7-- <= 2;
        if (v11)
        {
          return result;
        }
      }

      result = v33;
      *(v13 + 48) = v36;
      *(v13 + 16) = v34;
      *(v13 + 32) = v35;
      *v13 = v33;
      v11 = v7-- <= 2;
    }

    while (!v11);
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::NeighborhoodGenerator::SolveData *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 56 * (v4 >> 1));
    v7 = *(a2 - 56);
    if (*v6 >= v7)
    {
      if (v7 < *v6)
      {
        return result;
      }

      v28 = v6[1];
      v8 = *(a2 - 48);
      if (v28 >= v8)
      {
        if (v8 < v28)
        {
          return result;
        }

        v29 = v6[2];
        v30 = *(a2 - 40);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v31 = v6[3];
          v32 = *(a2 - 32);
          if (v31 >= v32)
          {
            if (v32 < v31)
            {
              return result;
            }

            v33 = *(v6 + 4);
            v34 = *(a2 - 24);
            if (v33 >= v34)
            {
              if (v34 < v33)
              {
                return result;
              }

              v35 = *(v6 + 5);
              v36 = *(a2 - 16);
              if (v35 >= v36 && (v36 < v35 || *(v6 + 6) >= *(a2 - 8)))
              {
                return result;
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = *(a2 - 48);
    }

    v9 = *(a2 - 52);
    v10 = *(a2 - 40);
    v11 = *(a2 - 32);
    v12 = *(a2 - 24);
    v13 = *(a2 - 16);
    v14 = *(a2 - 8);
    v15 = *(v6 + 6);
    v16 = *(v6 + 2);
    v17 = *v6;
    *(a2 - 40) = *(v6 + 1);
    *(a2 - 24) = v16;
    *(a2 - 56) = v17;
    *(a2 - 8) = v15;
    if (v4 >= 2)
    {
      while (1)
      {
        v21 = v6;
        v22 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v6 = (result + 56 * v5);
        if (*v6 >= v7)
        {
          if (v7 < *v6)
          {
            break;
          }

          v23 = v6[1];
          if (v23 >= v8)
          {
            if (v8 < v23)
            {
              break;
            }

            v24 = v6[2];
            if (v24 >= v10)
            {
              if (v10 < v24)
              {
                break;
              }

              v25 = v6[3];
              if (v25 >= v11)
              {
                if (v11 < v25)
                {
                  break;
                }

                v26 = *(v6 + 4);
                if (v26 >= v12)
                {
                  if (v12 < v26)
                  {
                    break;
                  }

                  v27 = *(v6 + 5);
                  if (v27 >= v13 && (v13 < v27 || *(v6 + 6) >= v14))
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        v18 = *v6;
        v19 = *(v6 + 1);
        v20 = *(v6 + 2);
        v21[6] = v6[6];
        *(v21 + 1) = v19;
        *(v21 + 2) = v20;
        *v21 = v18;
        if (v22 <= 1)
        {
          goto LABEL_21;
        }
      }

      v6 = v21;
    }

LABEL_21:
    *v6 = v7;
    *(v6 + 1) = v9;
    v6[1] = v8;
    v6[2] = v10;
    v6[3] = v11;
    *(v6 + 4) = v12;
    *(v6 + 5) = v13;
    *(v6 + 6) = v14;
  }

  return result;
}

operations_research::sat::LinearProgrammingConstraintCollection *operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::LinearProgrammingConstraintCollection *this, operations_research::sat::Model *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpSolverResponseStatisticCallbacks>(a2);
  v4 = v3;
  v9[0] = &unk_284F3D030;
  v9[1] = this;
  v10 = v9;
  v5 = v3[1];
  if (v5 >= v3[2])
  {
    v6 = std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__emplace_back_slow_path<std::function<void ()(operations_research::sat::CpSolverResponse *)>>(v3, v9);
  }

  else
  {
    *(v5 + 24) = v5;
    (*(*v10 + 24))(v10, v5);
    v6 = v5 + 32;
  }

  v4[1] = v6;
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CA5206C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::CpSolverResponse *)>::~function(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::CpSolverResponseStatisticCallbacks>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpSolverResponseStatisticCallbacks>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpSolverResponseStatisticCallbacks>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::CpSolverResponseStatisticCallbacks>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::CpSolverResponseStatisticCallbacks>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::CpSolverResponseStatisticCallbacks>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t std::function<void ()(operations_research::sat::CpSolverResponse *)>::~function(uint64_t a1)
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

void *operations_research::sat::Model::Delete<operations_research::sat::CpSolverResponseStatisticCallbacks>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3CFF8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];
      v5 = *v1;
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
        v5 = *v1;
      }

      v1[1] = v3;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CpSolverResponseStatisticCallbacks>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3CFF8;
  a1[1] = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];
      v4 = *v1;
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
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x20C40960023A9);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__emplace_back_slow_path<std::function<void ()(operations_research::sat::CpSolverResponse *)>>(uint64_t *a1, uint64_t a2)
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
  std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__swap_out_circular_buffer(a1, &__p);
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

void sub_23CA52820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
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

uint64_t std::__split_buffer<std::function<void ()(operations_research::sat::CpSolverResponse *)>>::~__split_buffer(uint64_t a1)
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

uint64_t std::__function::__func<operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::Model *)::{lambda(operations_research::sat::CpSolverResponse *)#1},std::allocator<operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::Model *)::{lambda(operations_research::sat::CpSolverResponse *)#1}>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3D030;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::Model *)::{lambda(operations_research::sat::CpSolverResponse *)#1},std::allocator<operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::Model *)::{lambda(operations_research::sat::CpSolverResponse *)#1}>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v5 = *v3;
  v4 = v3[1];
  if (v5 == v4)
  {
    *(v2 + 240) = 0;
    return result;
  }

  v6 = 0;
  if (v4 - 1 == v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = 0;
    v9 = (((v4 - 1) - v5) >> 3) + 1;
    v7 = &v5[v9 & 0x3FFFFFFFFFFFFFFELL];
    v10 = v5 + 1;
    v11 = v9 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      result = *(*v10 + 24648);
      v6 += *(*(v10 - 1) + 24648);
      v8 += result;
      v10 += 2;
      v11 -= 2;
    }

    while (v11);
    v6 += v8;
    if (v9 == (v9 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  do
  {
    v12 = *v7++;
    v6 += *(v12 + 24648);
  }

  while (v7 != v4);
LABEL_9:
  *(v2 + 240) = v6;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::Model *)::{lambda(operations_research::sat::CpSolverResponse *)#1},std::allocator<operations_research::sat::LinearProgrammingConstraintCollection::LinearProgrammingConstraintCollection(operations_research::sat::Model *)::{lambda(operations_research::sat::CpSolverResponse *)#1}>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE40ED7)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE40ED7 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE40ED7))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE40ED7 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearProgrammingConstraintCollection>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3D0C0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x80C40D6874129);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearProgrammingConstraintCollection>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3D0C0;
  a1[1] = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x23EED9460](v1, 0x80C40D6874129);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::CpModelMapping>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3D0F8;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::CpModelMapping::~CpModelMapping(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::CpModelMapping>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3D0F8;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::CpModelMapping::~CpModelMapping(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::CpModelMapping::~CpModelMapping(operations_research::sat::CpModelMapping *this)
{
  if (*(this + 19) >= 2uLL)
  {
    operator delete((*(this + 21) - (*(this + 20) & 1) - 8));
    if (*(this + 15) < 2uLL)
    {
LABEL_3:
      v2 = *(this + 12);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (*(this + 15) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(this + 17) - (*(this + 16) & 1) - 8));
  v2 = *(this + 12);
  if (v2)
  {
LABEL_4:
    *(this + 13) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
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
      v89 = *(a2 - 1);
      v90 = *v10;
      if (*(**a3 + 8 * v89) > *(**a3 + 8 * v90))
      {
        *v10 = v89;
        *(a2 - 1) = v90;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v111 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v112 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v113 = 0;
            v114 = *v111;
            v115 = v10;
            do
            {
              v118 = *v115;
              v117 = v115[1];
              v115 = v112;
              v119 = *(v114 + 8 * v117);
              if (v119 > *(v114 + 8 * v118))
              {
                v120 = v113;
                do
                {
                  *(v10 + v120 + 4) = v118;
                  if (!v120)
                  {
                    v116 = v10;
                    goto LABEL_122;
                  }

                  v118 = *(v10 + v120 - 4);
                  v120 -= 4;
                }

                while (v119 > *(v114 + 8 * v118));
                v116 = (v10 + v120 + 4);
LABEL_122:
                *v116 = v117;
              }

              v112 = v115 + 1;
              v113 += 4;
            }

            while (v115 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v156 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v157 = *v111;
          do
          {
            v159 = *v9;
            v158 = v9[1];
            v9 = v156;
            v160 = *(v157 + 8 * v158);
            if (v160 > *(v157 + 8 * v159))
            {
              do
              {
                *v156 = v159;
                v159 = *(v156 - 2);
                --v156;
              }

              while (v160 > *(v157 + 8 * v159));
              *v156 = v158;
            }

            v156 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v121 = (v11 - 2) >> 1;
        v122 = v121;
        do
        {
          v124 = 4 * v122;
          if (v121 >= (4 * v122) >> 2)
          {
            v125 = (v124 >> 1) | 1;
            v126 = &v10[v125];
            v127 = **a3;
            if ((v124 >> 1) + 2 < v11)
            {
              result = *v126;
              if (*(v127 + 8 * result) > *(v127 + 8 * v126[1]))
              {
                ++v126;
                v125 = (v124 >> 1) + 2;
              }
            }

            v128 = &v10[v124 / 4];
            v129 = *v126;
            v130 = v10[v122];
            v131 = *(v127 + 8 * v130);
            if (*(v127 + 8 * v129) <= v131)
            {
              do
              {
                v132 = v126;
                *v128 = v129;
                if (v121 < v125)
                {
                  break;
                }

                v133 = 2 * v125;
                v125 = (2 * v125) | 1;
                v126 = &v10[v125];
                v134 = v133 + 2;
                if (v134 < v11)
                {
                  result = v126[1];
                  if (*(v127 + 8 * *v126) > *(v127 + 8 * result))
                  {
                    ++v126;
                    v125 = v134;
                  }
                }

                v129 = *v126;
                v128 = v132;
              }

              while (*(v127 + 8 * v129) <= v131);
              *v132 = v130;
            }
          }

          v123 = v122-- <= 0;
        }

        while (!v123);
        do
        {
          v135 = 0;
          v136 = *v10;
          v137 = *a3;
          v138 = v10;
          do
          {
            v139 = v138;
            v140 = &v138[v135];
            v138 = v140 + 1;
            v141 = 2 * v135;
            v135 = (2 * v135) | 1;
            v142 = v141 + 2;
            if (v142 < v11)
            {
              v144 = v140[2];
              v143 = v140 + 2;
              result = *(v143 - 1);
              if (*(*v137 + 8 * result) > *(*v137 + 8 * v144))
              {
                v138 = v143;
                v135 = v142;
              }
            }

            *v139 = *v138;
          }

          while (v135 <= ((v11 - 2) >> 1));
          if (v138 == --a2)
          {
            *v138 = v136;
          }

          else
          {
            *v138 = *a2;
            *a2 = v136;
            v145 = (v138 - v10 + 4) >> 2;
            v123 = v145 < 2;
            v146 = v145 - 2;
            if (!v123)
            {
              v147 = v146 >> 1;
              v148 = &v10[v147];
              v149 = *v148;
              v150 = *v138;
              v151 = **a3;
              v152 = *(v151 + 8 * v150);
              if (*(v151 + 8 * v149) > v152)
              {
                do
                {
                  v153 = v148;
                  *v138 = v149;
                  if (!v147)
                  {
                    break;
                  }

                  v147 = (v147 - 1) >> 1;
                  v148 = &v10[v147];
                  v149 = *v148;
                  v138 = v153;
                }

                while (*(v151 + 8 * v149) > v152);
                *v153 = v150;
              }
            }
          }

          v123 = v11-- <= 2;
        }

        while (!v123);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(v14 + 8 * v21);
      v24 = *(v14 + 8 * v22);
      if (v23 > v24)
      {
        if (v16 > v23)
        {
          *v13 = v15;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v40 = *(a2 - 1);
        if (*(v14 + 8 * v40) > v24)
        {
          *v10 = v40;
LABEL_37:
          *(a2 - 1) = v22;
        }

LABEL_38:
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 <= v23)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v27 = *v10;
      v28 = *v13;
      if (*(v14 + 8 * v27) <= *(v14 + 8 * v28))
      {
        goto LABEL_38;
      }

      *v13 = v27;
      *v10 = v28;
      --a4;
      v29 = v28;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v61 = *(v14 + 8 * v29);
      if (*(v14 + 8 * *(v10 - 1)) > v61)
      {
        goto LABEL_62;
      }

      if (v61 <= *(v14 + 8 * *(a2 - 1)))
      {
        v80 = v10 + 1;
        do
        {
          v10 = v80;
          if (v80 >= a2)
          {
            break;
          }

          ++v80;
        }

        while (v61 <= *(v14 + 8 * *v10));
      }

      else
      {
        do
        {
          v79 = v10[1];
          ++v10;
        }

        while (v61 <= *(v14 + 8 * v79));
      }

      v81 = a2;
      if (v10 < a2)
      {
        v81 = a2;
        do
        {
          v82 = *--v81;
        }

        while (v61 > *(v14 + 8 * v82));
      }

      if (v10 < v81)
      {
        v83 = *v10;
        v84 = *v81;
        do
        {
          *v10 = v84;
          *v81 = v83;
          do
          {
            v85 = v10[1];
            ++v10;
            v83 = v85;
          }

          while (v61 <= *(v14 + 8 * v85));
          do
          {
            v86 = *--v81;
            v84 = v86;
          }

          while (v61 > *(v14 + 8 * v86));
        }

        while (v10 < v81);
      }

      v87 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v87;
      }

      a5 = 0;
      *v87 = v29;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 8 * v17);
      v20 = *(v14 + 8 * v18);
      if (v19 <= v20)
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(v14 + 8 * v25) > *(v14 + 8 * v26))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 <= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v30 = *(a2 - 1);
          if (*(v14 + 8 * v30) <= v20)
          {
            goto LABEL_29;
          }

          *v12 = v30;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v31 = v12 - 1;
      v32 = *(v12 - 1);
      v33 = v10[1];
      v34 = *(v14 + 8 * v32);
      v35 = *(v14 + 8 * v33);
      v36 = *(a2 - 2);
      v37 = *(v14 + 8 * v36);
      if (v34 <= v35)
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v10[1];
          if (*(v14 + 8 * v38) > *(v14 + 8 * v39))
          {
            v10[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 <= v34)
        {
          v10[1] = v32;
          *v31 = v33;
          v41 = *(a2 - 2);
          if (*(v14 + 8 * v41) <= v35)
          {
            goto LABEL_43;
          }

          *v31 = v41;
        }

        else
        {
          v10[1] = v36;
        }

        *(a2 - 2) = v33;
      }

LABEL_43:
      v44 = v12[1];
      v42 = v12 + 1;
      v43 = v44;
      v45 = v10[2];
      v46 = *(v14 + 8 * v44);
      v47 = *(v14 + 8 * v45);
      v48 = *(a2 - 3);
      v49 = *(v14 + 8 * v48);
      if (v46 <= v47)
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v10[2];
          if (*(v14 + 8 * v50) > *(v14 + 8 * v51))
          {
            v10[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 <= v46)
        {
          v10[2] = v43;
          *v42 = v45;
          v52 = *(a2 - 3);
          if (*(v14 + 8 * v52) <= v47)
          {
            goto LABEL_52;
          }

          *v42 = v52;
        }

        else
        {
          v10[2] = v48;
        }

        *(a2 - 3) = v45;
      }

LABEL_52:
      v53 = *v13;
      v54 = *v31;
      v55 = *(v14 + 8 * v53);
      v56 = *(v14 + 8 * v54);
      v57 = *v42;
      v58 = *(v14 + 8 * v57);
      if (v55 <= v56)
      {
        if (v58 <= v55)
        {
          goto LABEL_60;
        }

        *v13 = v57;
        *v42 = v53;
        v42 = v13;
        LODWORD(v53) = v54;
        if (v58 > v56)
        {
LABEL_59:
          *v31 = v57;
          *v42 = v54;
LABEL_60:
          v60 = *v10;
          *v10 = v53;
          *v13 = v60;
          --a4;
          v29 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v78 = *v10;
        *v10 = v57;
        *v13 = v78;
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v58 > v55)
      {
        goto LABEL_59;
      }

      *v31 = v53;
      *v13 = v54;
      v31 = v13;
      LODWORD(v53) = v57;
      if (v58 > v56)
      {
        goto LABEL_59;
      }

      v59 = *v10;
      *v10 = v54;
      *v13 = v59;
      --a4;
      v29 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v62 = 0;
      v63 = **a3;
      v64 = *(v63 + 8 * v29);
      do
      {
        v65 = v10[++v62];
      }

      while (*(v63 + 8 * v65) > v64);
      v66 = &v10[v62];
      v67 = a2;
      if (v62 == 1)
      {
        v67 = a2;
        do
        {
          if (v66 >= v67)
          {
            break;
          }

          v69 = *--v67;
        }

        while (*(v63 + 8 * v69) <= v64);
      }

      else
      {
        do
        {
          v68 = *--v67;
        }

        while (*(v63 + 8 * v68) <= v64);
      }

      if (v66 >= v67)
      {
        v76 = v66 - 1;
        if (v66 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v76;
        goto LABEL_80;
      }

      v70 = *v67;
      v71 = v65;
      v72 = &v10[v62];
      v73 = v67;
      do
      {
        *v72 = v70;
        *v73 = v71;
        do
        {
          v74 = v72[1];
          ++v72;
          v71 = v74;
        }

        while (*(v63 + 8 * v74) > v64);
        do
        {
          v75 = *--v73;
          v70 = v75;
        }

        while (*(v63 + 8 * v75) <= v64);
      }

      while (v72 < v73);
      v76 = v72 - 1;
      if (v72 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v76 = v29;
      if (v66 < v67)
      {
        goto LABEL_83;
      }

      v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *>(v10, v76, *a3);
      v10 = v76 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *>(v76 + 1, a2, *a3);
      if (result)
      {
        a2 = v76;
        if (!v77)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v77)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *,false>(v9, v76, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v76 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v98 = v10 + 1;
      v99 = v10[1];
      v100 = v10 + 2;
      v101 = v10[2];
      v102 = **a3;
      v103 = *v10;
      v104 = *(v102 + 8 * v99);
      v105 = *(v102 + 8 * *v10);
      v106 = v101;
      v107 = *(v102 + 8 * v101);
      if (v104 <= v105)
      {
        if (v107 <= v104)
        {
          v99 = v10[2];
        }

        else
        {
          v108 = v99;
          *v98 = v101;
          *v100 = v99;
          v109 = v10;
          v110 = v10 + 1;
          v106 = v99;
          if (v107 > v105)
          {
            goto LABEL_174;
          }
        }

        v162 = *(a2 - 1);
        if (*(v102 + 8 * v162) <= *(v102 + 8 * v106))
        {
          return result;
        }
      }

      else
      {
        v108 = v103;
        if (v107 <= v104)
        {
          *v10 = v99;
          v10[1] = v103;
          v109 = v10 + 1;
          v110 = v10 + 2;
          v99 = v103;
          if (v107 > v105)
          {
            goto LABEL_174;
          }

          v99 = v101;
          v162 = *(a2 - 1);
          if (*(v102 + 8 * v162) <= *(v102 + 8 * v106))
          {
            return result;
          }
        }

        else
        {
          v109 = v10;
          v110 = v10 + 2;
          v99 = *v10;
LABEL_174:
          *v109 = v101;
          *v110 = v103;
          v162 = *(a2 - 1);
          if (*(v102 + 8 * v162) <= *(v102 + 8 * v108))
          {
            return result;
          }
        }
      }

      *v100 = v162;
      *(a2 - 1) = v99;
      v163 = *v100;
      v164 = *v98;
      v165 = *(v102 + 8 * v163);
      if (v165 > *(v102 + 8 * v164))
      {
        v10[1] = v163;
        v10[2] = v164;
        v166 = *v10;
        if (v165 > *(v102 + 8 * v166))
        {
          *v10 = v163;
          v10[1] = v166;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v88 = **a3;

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v88);
    }

    goto LABEL_10;
  }

  v91 = **a3;
  v92 = *v10;
  v93 = v10[1];
  v94 = *(v91 + 8 * v93);
  v95 = *(v91 + 8 * v92);
  v96 = *(a2 - 1);
  v97 = *(v91 + 8 * v96);
  if (v94 <= v95)
  {
    if (v97 > v94)
    {
      v10[1] = v96;
      *(a2 - 1) = v93;
      v155 = *v10;
      v154 = v10[1];
      if (*(v91 + 8 * v154) > *(v91 + 8 * v155))
      {
        *v10 = v154;
        v10[1] = v155;
      }
    }
  }

  else
  {
    if (v97 <= v94)
    {
      *v10 = v93;
      v10[1] = v92;
      v161 = *(a2 - 1);
      if (*(v91 + 8 * v161) <= v95)
      {
        return result;
      }

      v10[1] = v161;
    }

    else
    {
      *v10 = v96;
    }

    *(a2 - 1) = v92;
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 8 * *a2);
  v9 = *(a6 + 8 * *result);
  v10 = *a3;
  v11 = *(a6 + 8 * *a3);
  if (v8 <= v9)
  {
    if (v11 <= v8)
    {
      v14 = *a4;
      if (*(a6 + 8 * v14) <= *(a6 + 8 * v10))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    *a2 = v10;
    *a3 = v6;
    v12 = *a2;
    v13 = *result;
    if (*(a6 + 8 * v12) <= *(a6 + 8 * v13))
    {
      v15 = v6;
      v10 = v6;
      v14 = *a4;
      if (*(a6 + 8 * v14) <= *(a6 + 8 * v15))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    *result = v12;
    *a2 = v13;
    v10 = *a3;
  }

  else
  {
    if (v11 > v8)
    {
      *result = v10;
      goto LABEL_9;
    }

    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 8 * *a3) > v9)
    {
      *a2 = v10;
LABEL_9:
      *a3 = v7;
      v10 = v7;
      v14 = *a4;
      if (*(a6 + 8 * v14) <= *(a6 + 8 * v7))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  v14 = *a4;
  if (*(a6 + 8 * v14) <= *(a6 + 8 * v10))
  {
    goto LABEL_19;
  }

LABEL_16:
  *a3 = v14;
  *a4 = v10;
  v16 = *a3;
  v17 = *a2;
  if (*(a6 + 8 * v16) > *(a6 + 8 * v17))
  {
    *a2 = v16;
    *a3 = v17;
    v18 = *a2;
    v19 = *result;
    if (*(a6 + 8 * v18) > *(a6 + 8 * v19))
    {
      *result = v18;
      *a2 = v19;
    }
  }

LABEL_19:
  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 8 * v20) > *(a6 + 8 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 8 * v22) > *(a6 + 8 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 8 * v24) > *(a6 + 8 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 8 * v26) > *(a6 + 8 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = *a3;
      v8 = *a1;
      v9 = a1[1];
      v10 = *(*a3 + 8 * v9);
      v11 = *(*a3 + 8 * v8);
      v12 = *(a2 - 1);
      v13 = *(*a3 + 8 * v12);
      if (v10 <= v11)
      {
        if (v13 <= v10)
        {
          return 1;
        }

        a1[1] = v12;
        *(a2 - 1) = v9;
        v38 = *a1;
        v37 = a1[1];
        if (*(v7 + 8 * v37) <= *(v7 + 8 * v38))
        {
          return 1;
        }

        *a1 = v37;
        a1[1] = v38;
        return 1;
      }

      else if (v13 <= v10)
      {
        *a1 = v9;
        a1[1] = v8;
        v47 = *(a2 - 1);
        if (*(v7 + 8 * v47) <= v11)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v8;
        return 1;
      }

      else
      {
        *a1 = v12;
        *(a2 - 1) = v8;
        return 1;
      }
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::Generate(operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

LABEL_14:
      v15 = a1 + 2;
      v14 = a1[2];
      v16 = a1[1];
      v17 = *a3;
      v18 = *(*a3 + 8 * v16);
      v19 = *a1;
      v20 = *(*a3 + 8 * v19);
      v21 = *(*a3 + 8 * v14);
      if (v18 <= v20)
      {
        if (v21 <= v18 || (a1[1] = v14, *v15 = v16, v22 = a1, v23 = a1 + 1, v21 <= v20))
        {
LABEL_27:
          v39 = a1 + 3;
          if (a1 + 3 == a2)
          {
            return 1;
          }

          v40 = 0;
          for (i = 12; ; i += 4)
          {
            v42 = *v39;
            v43 = *v15;
            v44 = *(v17 + 8 * v42);
            if (v44 > *(v17 + 8 * v43))
            {
              break;
            }

LABEL_30:
            v15 = v39++;
            if (v39 == a2)
            {
              return 1;
            }
          }

          v45 = i;
          do
          {
            *(a1 + v45) = v43;
            v46 = v45 - 4;
            if (v45 == 4)
            {
              *a1 = v42;
              if (++v40 != 8)
              {
                goto LABEL_30;
              }

              return v39 + 1 == a2;
            }

            v43 = *(a1 + v45 - 8);
            v45 -= 4;
          }

          while (v44 > *(v17 + 8 * v43));
          *(a1 + v46) = v42;
          if (++v40 != 8)
          {
            goto LABEL_30;
          }

          return v39 + 1 == a2;
        }
      }

      else
      {
        v22 = a1;
        v23 = a1 + 2;
        if (v21 <= v18)
        {
          *a1 = v16;
          a1[1] = v19;
          v22 = a1 + 1;
          v23 = a1 + 2;
          if (v21 <= v20)
          {
            goto LABEL_27;
          }
        }
      }

      *v22 = v14;
      *v23 = v19;
      goto LABEL_27;
    }

    v24 = a1 + 1;
    v25 = a1[1];
    v26 = a1 + 2;
    v27 = a1[2];
    v28 = *a3;
    v29 = *a1;
    v30 = *(*a3 + 8 * v25);
    v31 = *(*a3 + 8 * *a1);
    v32 = v27;
    v33 = *(*a3 + 8 * v27);
    if (v30 <= v31)
    {
      if (v33 <= v30)
      {
        v25 = a1[2];
      }

      else
      {
        v34 = v25;
        *v24 = v27;
        *v26 = v25;
        v35 = a1;
        v36 = a1 + 1;
        v32 = v25;
        if (v33 > v31)
        {
          goto LABEL_44;
        }
      }

      v48 = *(a2 - 1);
      if (*(v28 + 8 * v48) <= *(v28 + 8 * v32))
      {
        return 1;
      }
    }

    else
    {
      v34 = v29;
      if (v33 > v30)
      {
        v35 = a1;
        v36 = a1 + 2;
        v25 = *a1;
        goto LABEL_44;
      }

      *a1 = v25;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v25 = v29;
      if (v33 > v31)
      {
LABEL_44:
        *v35 = v27;
        *v36 = v29;
        v48 = *(a2 - 1);
        if (*(v28 + 8 * v48) <= *(v28 + 8 * v34))
        {
          return 1;
        }

        goto LABEL_48;
      }

      v25 = v27;
      v48 = *(a2 - 1);
      if (*(v28 + 8 * v48) <= *(v28 + 8 * v32))
      {
        return 1;
      }
    }

LABEL_48:
    *v26 = v48;
    *(a2 - 1) = v25;
    v49 = *v26;
    v50 = *v24;
    v51 = *(v28 + 8 * v49);
    if (v51 <= *(v28 + 8 * v50))
    {
      return 1;
    }

    a1[1] = v49;
    a1[2] = v50;
    v52 = *a1;
    if (v51 <= *(v28 + 8 * v52))
    {
      return 1;
    }

    *a1 = v49;
    a1[1] = v52;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  if (*(*a3 + 8 * v5) <= *(*a3 + 8 * v6))
  {
    return 1;
  }

  *a1 = v5;
  *(a2 - 1) = v6;
  return 1;
}

void *std::vector<int>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::iterator,0>(void *result, void *a2, uint64_t a3, void *a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a4)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v7 = *(v5 + 1);
      v5 = (v5 + 1);
      LOBYTE(v6) = v7;
      if (v7 <= -2)
      {
        do
        {
          v5 = (v5 + (__clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3));
          v6 = *v5;
        }

        while (v6 < -1);
      }

      ++v4;
      if (v6 == 255)
      {
        v5 = 0;
      }
    }

    while (v5 != a4);
    if (v4)
    {
      if (!(v4 >> 62))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

void sub_23CA54230(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LoadVariables(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, void *a3, operations_research::sat::Model *a4)
{
  v4 = a3;
  v189 = a2;
  v217 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a3);
  v7 = *(this + 8);
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v4);
  v9 = *(v8 + 16);
  if (v9)
  {
    operations_research::sat::LoadVariables(v9);
  }

  begin = v6[2].__begin_;
  v11 = v6[2].__end_ - begin;
  __n = v7;
  v194 = v6 + 2;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      v6[2].__end_ = &begin[v7];
    }
  }

  else
  {
    std::vector<int>::__append(v6 + 2, v7 - v11, &operations_research::sat::kNoBooleanVariable);
  }

  __x[0] = -1;
  v12 = v6[3].__begin_;
  v13 = v6 + 3;
  v14 = v6[3].__end_ - v12;
  if (v7 <= v14)
  {
    if (v7 < v14)
    {
      v6[3].__end_ = &v12[v7];
    }
  }

  else
  {
    std::vector<int>::__append(v6 + 3, v7 - v14, __x);
  }

  v188 = v8;
  v197 = v6;
  v191 = v4;
  v193 = this;
  if (v7 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = (this + 24);
    v22 = 8;
    v23 = v194;
    v24 = __n;
    v187 = v13;
    while (1)
    {
      if (*v21)
      {
        v25 = (*v21 + v22 - 1);
      }

      else
      {
        v25 = v21;
      }

      v26 = *v25;
      if (*(v26 + 16) != 2)
      {
        goto LABEL_14;
      }

      v27 = *(v26 + 24);
      v28 = *v27;
      if (*v27 < 0)
      {
        goto LABEL_14;
      }

      v29 = v27[1];
      if (v29 > 1)
      {
        goto LABEL_14;
      }

      v23->__begin_[v15] = v16;
      v13->__begin_[v16] = v15;
      if (v29)
      {
        if (v28 == 1)
        {
          if (v19 >= v20)
          {
            v33 = v19;
            v34 = v19 >> 2;
            v35 = v34 + 1;
            if ((v34 + 1) >> 62)
            {
LABEL_271:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v20 >> 1 > v35)
            {
              v35 = v20 >> 1;
            }

            v186 = v18;
            if (v35)
            {
              if (!(v35 >> 62))
              {
                operator new();
              }

              goto LABEL_272;
            }

            v36 = (4 * v34);
            v190 = 0;
            *v36 = v16;
            v19 = (v36 + 1);
            memcpy(0, 0, v33);
            v23 = v194;
            v4 = v191;
            v24 = __n;
            v18 = v186;
            v13 = v187;
LABEL_40:
            v20 = v190;
            goto LABEL_13;
          }

          *v19 = v16;
          v19 += 4;
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v30 = v17;
          v31 = v17 >> 2;
          v32 = (v17 >> 2) + 1;
          if (v32 >> 62)
          {
            goto LABEL_271;
          }

          if (v18 >> 1 > v32)
          {
            v32 = v18 >> 1;
          }

          v190 = v20;
          if (v32)
          {
            if (!(v32 >> 62))
            {
              operator new();
            }

LABEL_272:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v31) = v16;
          v17 = 4 * v31 + 4;
          memcpy(0, 0, v30);
          v23 = v194;
          v4 = v191;
          v24 = __n;
          v13 = v187;
          v18 = 0;
          goto LABEL_40;
        }

        *v17 = v16;
        v17 += 4;
      }

LABEL_13:
      ++v16;
LABEL_14:
      ++v15;
      v22 += 8;
      if (v24 == v15)
      {
        goto LABEL_42;
      }
    }
  }

  v19 = 0;
  v17 = 0;
  v16 = 0;
LABEL_42:
  operations_research::sat::SatSolver::SetNumVariables(v188, v16);
  v39 = v193;
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      __x[0] = 2 * *i;
      v213 = &unk_284F3BBD8;
      v214 = __x;
      v215 = 1;
      v216 = &v213;
      v41 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v4);
      operations_research::sat::SatSolver::AddProblemClause(v41, v214, v215, 0);
      if (v216 == &v213)
      {
        (*(*v216 + 4))(v216);
      }

      else if (v216)
      {
        (*(*v216 + 5))(v216);
      }
    }
  }

  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      __x[0] = (2 * *j) | 1;
      v209 = &unk_284F3BBD8;
      v210 = __x;
      v211 = 1;
      v212 = &v209;
      v43 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v4);
      operations_research::sat::SatSolver::AddProblemClause(v43, v210, v211, 0);
      if (v212 == &v209)
      {
        (*(*v212 + 4))(v212);
      }

      else if (v212)
      {
        (*(*v212 + 5))(v212);
      }
    }
  }

  v44 = v197;
  v45 = __n;
  memset(&v208, 0, sizeof(v208));
  if (v189)
  {
    if (__n)
    {
      std::vector<int>::__append(&v208, __n);
      if (__n >= 1)
      {
        v46 = v208.__begin_;
        if (__n <= 7)
        {
          for (k = 0; k != __n; ++k)
          {
LABEL_139:
            v46[k] = k;
          }

          goto LABEL_140;
        }

        k = __n & 0x7FFFFFF8;
        v90 = xmmword_23CE38660;
        v91 = (v208.__begin_ + 4);
        v92.i64[0] = 0x400000004;
        v92.i64[1] = 0x400000004;
        v93.i64[0] = 0x800000008;
        v93.i64[1] = 0x800000008;
        v94 = k;
        do
        {
          v91[-1] = v90;
          *v91 = vaddq_s32(v90, v92);
          v90 = vaddq_s32(v90, v93);
          v91 += 2;
          v94 -= 8;
        }

        while (v94);
        if (k != __n)
        {
          goto LABEL_139;
        }
      }
    }
  }

  else
  {
    v205 = xmmword_23CE306D0;
    *__x = 0u;
    memset(v204, 0, sizeof(v204));
    if (*(v193 + 14) < 1)
    {
      v49 = 0;
      v48 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = (v193 + 48);
      do
      {
        if (*v51)
        {
          v52 = (*v51 + 8 * v50 + 7);
        }

        else
        {
          v52 = (v193 + 48);
        }

        operations_research::sat::GetReferencesUsedByConstraint(*v52, &v199);
        if (v49)
        {
          operator delete(v49);
        }

        *__p = v199;
        *__x = v199;
        *&v204[0] = v200;
        v200 = 0;
        v199 = 0uLL;
        if (v48)
        {
          operator delete(v48);
          v53 = v199;
        }

        else
        {
          v53 = 0;
        }

        __src = v201;
        *(v204 + 8) = v201;
        *(&v204[1] + 1) = v202;
        v202 = 0;
        v201 = 0uLL;
        if (v53)
        {
          *(&v199 + 1) = v53;
          operator delete(v53);
        }

        v49 = __p[0];
        for (m = __p[0]; m != __p[1]; ++m)
        {
          if (~*m <= *m)
          {
            v62 = *m;
          }

          else
          {
            v62 = ~*m;
          }

          if (v205 > 1)
          {
            v59 = 0;
            _X9 = v206;
            __asm { PRFM            #4, [X9] }

            v69 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v62) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v62));
            v60 = (v206 >> 12) ^ (v69 >> 7);
            v70 = vdup_n_s8(v69 & 0x7F);
            while (1)
            {
              v55 = v60 & v205;
              v56 = *(v206 + v55);
              v57 = vceq_s8(v56, v70);
              if (v57)
              {
                break;
              }

LABEL_79:
              v58 = vceq_s8(v56, 0x8080808080808080);
              if (v58)
              {
                inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v205, v69, (v55 + (__clz(__rbit64(v58)) >> 3)) & v205, v59, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
                v71 = &v207[inserted];
                goto LABEL_91;
              }

              v59 += 8;
              v60 = v59 + v55;
            }

            while (v207[(v55 + (__clz(__rbit64(v57)) >> 3)) & v205] != v62)
            {
              v57 &= ((v57 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v57)
              {
                goto LABEL_79;
              }
            }
          }

          else if (*(&v205 + 1) > 1uLL)
          {
            if (v206 != v62)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(&v205, 3);
            }
          }

          else
          {
            *(&v205 + 1) = 2;
            v71 = &v206;
LABEL_91:
            *v71 = v62;
          }
        }

        ++v50;
        v48 = __src;
      }

      while (v50 < *(v193 + 14));
    }

    v44 = v197;
    if (*(v193 + 16))
    {
      v72 = *(v193 + 16);
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = *(v72 + 24);
        v75 = 4 * v73;
        do
        {
          v76 = *v74;
          if (~*v74 > *v74)
          {
            v76 = ~v76;
          }

          v198 = v76;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v205, &v198, &v199);
          if (v200 == 1)
          {
            **(&v199 + 1) = v198;
          }

          ++v74;
          v75 -= 4;
        }

        while (v75);
      }
    }

    v198 = 0;
    v45 = __n;
    if (__n >= 1)
    {
      v77 = 0;
      do
      {
        if (v194->__begin_[v77] == -1)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v205, &v198, &v199);
          v77 = v198;
          if (v200 == 1)
          {
            **(&v199 + 1) = v198;
          }
        }

        v198 = ++v77;
      }

      while (v77 < __n);
    }

    if (*(&v205 + 1) < 2uLL)
    {
      v78 = 0;
      v80 = 0;
    }

    else
    {
      if (v205 >= 2)
      {
        v78 = v206;
        v37 = v207;
        if (*v206 <= -2)
        {
          do
          {
            v79 = __clz(__rbit64((*v78 | ~(*v78 >> 7)) & 0x101010101010101)) >> 3;
            v78 = (v78 + v79);
            v37 += v79;
          }

          while (*v78 < -1);
        }
      }

      else
      {
        v37 = &v206;
        v78 = &absl::lts_20240722::container_internal::kSooControl;
      }

      v80 = 0;
      v81 = v78;
      do
      {
        v83 = *(v81 + 1);
        v81 = (v81 + 1);
        LOBYTE(v82) = v83;
        if (v83 <= -2)
        {
          do
          {
            v81 = (v81 + (__clz(__rbit64((*v81 | ~(*v81 >> 7)) & 0x101010101010101)) >> 3));
            v82 = *v81;
          }

          while (v82 < -1);
        }

        ++v80;
      }

      while (v82 != 255);
    }

    std::vector<int>::__assign_with_size[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::iterator,absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::iterator>(&v208, v78, v37, 0, v38, v80);
    std::__sort<std::__less<int,int> &,int *>();
    end = v208.__end_;
    if (v208.__begin_ != v208.__end_)
    {
      v85 = v208.__begin_ + 1;
      while (v85 != v208.__end_)
      {
        v86 = *(v85 - 1);
        v87 = *v85++;
        if (v86 == v87)
        {
          v88 = v85 - 2;
          while (v85 != end)
          {
            v89 = v86;
            v86 = *v85;
            if (v89 != *v85)
            {
              v88[1] = v86;
              ++v88;
            }

            ++v85;
          }

          if (v88 + 1 != end)
          {
            v208.__end_ = v88 + 1;
          }

          break;
        }
      }
    }

    if (v48)
    {
      operator delete(v48);
    }

    if (v49)
    {
      operator delete(v49);
    }

    if (v205 >= 2)
    {
      operator delete((v206 - (BYTE8(v205) & 1) - 8));
    }

    v39 = v193;
  }

LABEL_140:
  v95 = v44->__end_ - v44->__begin_;
  if (v45 <= v95)
  {
    if (v45 < v95)
    {
      v44->__end_ = &v44->__begin_[v45];
    }
  }

  else
  {
    std::vector<int>::__append(v44, v45 - v95, &operations_research::sat::kNoIntegerVariable);
  }

  v96 = (v208.__end_ - v208.__begin_) >> 2;
  v98 = (v39 + 48);
  v97 = *(v39 + 6);
  if (v97)
  {
    v99 = (v97 + 7);
  }

  else
  {
    v99 = v39 + 48;
  }

  v100 = *(v39 + 14);
  if (v100)
  {
    v101 = 8 * v100;
    do
    {
      if (*(*v99 + 60) == 12)
      {
        v102 = *(*(*v99 + 48) + 16);
        if (v102 >= 101)
        {
          LODWORD(v96) = v96 + llround(sqrt(v102));
        }
      }

      v99 += 8;
      v101 -= 8;
    }

    while (v101);
  }

  if (*(v39 + 16))
  {
    LODWORD(v96) = v96 + 1;
    v103 = *(*(v39 + 16) + 16) + 1;
    if (v103 >= 101)
    {
      LODWORD(v96) = v96 + llround(sqrt(v103));
    }
  }

  v104 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v191);
  operations_research::sat::IntegerTrail::ReserveSpaceForNumVariables(v104, v96);
  v105 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(v191);
  operations_research::sat::GenericLiteralWatcher::ReserveSpaceForNumVariables(v105, v96);
  v107 = v208.__begin_;
  v108 = v208.__end_;
  v109 = (v208.__end_ - v208.__begin_) >> 1;
  __x[0] = -1;
  v110 = v44[4].__begin_;
  v111 = v44 + 4;
  v112 = v44[4].__end_ - v110;
  if (v109 <= v112)
  {
    if (v109 < v112)
    {
      v44[4].__end_ = &v110[v109];
    }
  }

  else
  {
    std::vector<int>::__append(v44 + 4, v109 - v112, __x);
    v107 = v208.__begin_;
    v108 = v208.__end_;
  }

  if (v107 != v108)
  {
    v113 = (v39 + 24);
    do
    {
      v114 = *v107;
      if (*v113)
      {
        v115 = *v113 + 8 * v114 + 7;
      }

      else
      {
        v115 = v39 + 24;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(*(*v115 + 24), *(*v115 + 16), __x, v106);
      v116 = operations_research::sat::IntegerTrail::AddIntegerVariable(v104, __x);
      v117 = v197->__begin_;
      v197->__begin_[v114] = v116;
      if (__x[0])
      {
        operator delete(*&__x[2]);
        v117 = v197->__begin_;
      }

      v111->__begin_[v117[v114]] = v114;
      ++v107;
    }

    while (v107 != v108);
  }

  v118 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(v191);
  v119 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(v191);
  if (__n >= 1)
  {
    for (n = 0; n != __n; ++n)
    {
      v121 = v197->__begin_[n];
      if (v121 != -1)
      {
        v122 = v194->__begin_[n];
        if (v122 != -1)
        {
          operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v118, (2 * v122), v121, 1);
        }
      }
    }
  }

  v123 = v197[1].__begin_;
  v124 = *(v39 + 14);
  v125 = v197[1].__end_ - v123;
  if (v124 <= v125)
  {
    v126 = v194;
    if (v124 < v125)
    {
      v197[1].__end_ = &v123[v124];
    }
  }

  else
  {
    std::vector<int>::__append(v197 + 1, v124 - v125, &operations_research::sat::kNoIntervalVariable);
    v124 = *(v39 + 14);
    v126 = v194;
  }

  if (v124 >= 1)
  {
    v127 = 0;
    v128 = 8;
    do
    {
      if (*v98)
      {
        v129 = *v98 + v128 - 1;
      }

      else
      {
        v129 = v39 + 48;
      }

      v130 = *v129;
      if (*(*v129 + 60) == 19)
      {
        if (*(v130 + 16))
        {
          v131 = **(v130 + 24);
          if (~v131 <= v131)
          {
            v132 = **(v130 + 24);
          }

          else
          {
            v132 = ~v131;
          }

          v133 = *(v130 + 48);
          v134 = v133[3];
          if (!v134)
          {
            v134 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v135 = *(v134 + 4);
          if (v135 > 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v135, 1, "exp.vars().size() <= 1");
          }

          if (v135)
          {
            v136 = *v134[3];
            if (~v136 <= v136)
            {
              v137 = *v134[3];
            }

            else
            {
              v137 = ~v136;
            }

            v138 = *v134[6];
            v139 = v197->__begin_[v137] ^ (v136 >> 31) ^ (v138 >> 63);
            if (v138 >= 0)
            {
              v140 = *v134[6];
            }

            else
            {
              v140 = -v138;
            }
          }

          else
          {
            v140 = 0;
            v139 = -1;
          }

          v149 = v126->__begin_[v132];
          v150 = v134[8];
          __x[0] = v139;
          *&__x[2] = v140;
          *&v204[0] = v150;
          v151 = v133[4];
          if (!v151)
          {
            v151 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v152 = *(v151 + 4);
          if (v152 > 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v152, 1, "exp.vars().size() <= 1");
          }

          if (v152)
          {
            v153 = *v151[3];
            if (~v153 <= v153)
            {
              v154 = *v151[3];
            }

            else
            {
              v154 = ~v153;
            }

            v155 = *v151[6];
            v156 = v197->__begin_[v154] ^ (v153 >> 31) ^ (v155 >> 63);
            if (v155 >= 0)
            {
              v157 = *v151[6];
            }

            else
            {
              v157 = -v155;
            }
          }

          else
          {
            v157 = 0;
            v156 = -1;
          }

          v158 = v151[8];
          LODWORD(v199) = v156;
          *(&v199 + 1) = v157;
          v200 = v158;
          v159 = v133[5];
          if (!v159)
          {
            v159 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v160 = *(v159 + 4);
          if (v160 > 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v160, 1, "exp.vars().size() <= 1");
          }

          if (v160)
          {
            v161 = *v159[3];
            if (~v161 <= v161)
            {
              v162 = *v159[3];
            }

            else
            {
              v162 = ~v161;
            }

            v163 = *v159[6];
            v164 = v197->__begin_[v162] ^ (v161 >> 31) ^ (v163 >> 63);
            if (v163 >= 0)
            {
              v165 = *v159[6];
            }

            else
            {
              v165 = -v163;
            }
          }

          else
          {
            v165 = 0;
            v164 = -1;
          }

          v166 = v159[8];
          LODWORD(v205) = v164;
          *(&v205 + 1) = v165;
          v206 = v166;
          v167 = operations_research::sat::IntervalsRepository::CreateInterval(v119, __x, &v199, &v205, __PAIR64__(v149, v131) >> 31, 0);
        }

        else
        {
          v141 = *(v130 + 48);
          v142 = v141[3];
          if (!v142)
          {
            v142 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v143 = *(v142 + 4);
          if (v143 > 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v143, 1, "exp.vars().size() <= 1");
          }

          if (v143)
          {
            v144 = *v142[3];
            if (~v144 <= v144)
            {
              v145 = *v142[3];
            }

            else
            {
              v145 = ~v144;
            }

            v146 = *v142[6];
            v147 = v197->__begin_[v145] ^ (v144 >> 31) ^ (v146 >> 63);
            if (v146 >= 0)
            {
              v148 = *v142[6];
            }

            else
            {
              v148 = -v146;
            }
          }

          else
          {
            v148 = 0;
            v147 = -1;
          }

          v168 = v142[8];
          __x[0] = v147;
          *&__x[2] = v148;
          *&v204[0] = v168;
          v169 = v141[4];
          if (!v169)
          {
            v169 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v170 = *(v169 + 4);
          if (v170 > 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v170, 1, "exp.vars().size() <= 1");
          }

          if (v170)
          {
            v171 = *v169[3];
            if (~v171 <= v171)
            {
              v172 = *v169[3];
            }

            else
            {
              v172 = ~v171;
            }

            v173 = *v169[6];
            v174 = v197->__begin_[v172] ^ (v171 >> 31) ^ (v173 >> 63);
            if (v173 >= 0)
            {
              v175 = *v169[6];
            }

            else
            {
              v175 = -v173;
            }
          }

          else
          {
            v175 = 0;
            v174 = -1;
          }

          v176 = v169[8];
          LODWORD(v199) = v174;
          *(&v199 + 1) = v175;
          v200 = v176;
          v177 = v141[5];
          if (!v177)
          {
            v177 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v178 = *(v177 + 4);
          if (v178 > 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v178, 1, "exp.vars().size() <= 1");
          }

          if (v178)
          {
            v179 = *v177[3];
            if (~v179 <= v179)
            {
              v180 = *v177[3];
            }

            else
            {
              v180 = ~v179;
            }

            v181 = *v177[6];
            v182 = v197->__begin_[v180] ^ (v179 >> 31) ^ (v181 >> 63);
            if (v181 >= 0)
            {
              v183 = *v177[6];
            }

            else
            {
              v183 = -v181;
            }
          }

          else
          {
            v183 = 0;
            v182 = -1;
          }

          v184 = v177[8];
          LODWORD(v205) = v182;
          *(&v205 + 1) = v183;
          v206 = v184;
          v167 = operations_research::sat::IntervalsRepository::CreateInterval(v119, __x, &v199, &v205, -1, 0);
        }

        v197[1].__begin_[v127] = v167;
        *&v199 = v130;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::ConstraintProto const*>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::ConstraintProto const*,void>::Eq,std::allocator<operations_research::sat::ConstraintProto const*>>::find_or_prepare_insert<operations_research::sat::ConstraintProto const*>(&v197[5], &v199, __x);
        if (LOBYTE(v204[0]) == 1)
        {
          **&__x[2] = v199;
        }

        v124 = *(v39 + 14);
      }

      ++v127;
      v128 += 8;
    }

    while (v127 < v124);
  }

  if (v208.__begin_)
  {
    v208.__end_ = v208.__begin_;
    operator delete(v208.__begin_);
  }

  v185 = *MEMORY[0x277D85DE8];
}