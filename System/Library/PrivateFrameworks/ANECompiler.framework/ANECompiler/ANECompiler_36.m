uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(int *a1, int *a2, int *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a4 + 24;
  v7 = *(a4 + 24);
  v8 = v7 + 7;
  v9 = v7 + 7 + 8 * v5;
  if ((v7 & 1) == 0)
  {
    v9 = a4 + 24;
  }

  v10 = *(*v9 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v57 = *a1;
  v11 = v8 + 8 * *a1;
  if ((v7 & 1) == 0)
  {
    v11 = a4 + 24;
  }

  v12 = *(*v11 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 23);
  v14 = *(v10 + 23);
  if (v14 >= 0)
  {
    v15 = *(v10 + 23);
  }

  else
  {
    v15 = *(v10 + 8);
  }

  if (v14 >= 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = *v10;
  }

  if (v13 >= 0)
  {
    v17 = *(v12 + 23);
  }

  else
  {
    v17 = *(v12 + 8);
  }

  if (v13 >= 0)
  {
    v18 = (*(*v11 + 40) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v18 = *v12;
  }

  if (v17 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  v20 = memcmp(v16, v18, v19);
  v59 = a3;
  v21 = *a3;
  v22 = v8 + 8 * v21;
  if ((v7 & 1) == 0)
  {
    v22 = v6;
  }

  if (v20)
  {
    v23 = v20 < 0;
  }

  else
  {
    v23 = v15 < v17;
  }

  v24 = *(*v22 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 23);
  if (v25 >= 0)
  {
    v26 = *(v24 + 23);
  }

  else
  {
    v26 = *(v24 + 8);
  }

  if (v25 >= 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = *v24;
  }

  if (v15 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v15;
  }

  result = memcmp(v27, v16, v28);
  v30 = v26 < v15;
  if (result)
  {
    v30 = result < 0;
  }

  if (v23)
  {
    if (v30)
    {
      *a1 = v21;
      *v59 = v57;
      return result;
    }

    *a1 = v5;
    LODWORD(v32) = v57;
    *a2 = v57;
    v46 = *v59;
    v47 = v8 + 8 * v46;
    if ((v7 & 1) == 0)
    {
      v47 = v6;
    }

    v48 = *(*v47 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v49 = *(v12 + 23);
    v50 = *(v48 + 23);
    if (v50 >= 0)
    {
      v51 = *(v48 + 23);
    }

    else
    {
      v51 = *(v48 + 8);
    }

    if (v50 >= 0)
    {
      v52 = v48;
    }

    else
    {
      v52 = *v48;
    }

    if (v49 >= 0)
    {
      v53 = *(v12 + 23);
    }

    else
    {
      v53 = *(v12 + 8);
    }

    if (v49 >= 0)
    {
      v54 = v12;
    }

    else
    {
      v54 = *v12;
    }

    if (v53 >= v51)
    {
      v55 = v51;
    }

    else
    {
      v55 = v53;
    }

    result = memcmp(v52, v54, v55);
    v56 = v51 < v53;
    if (result)
    {
      v56 = result < 0;
    }

    if (v56)
    {
      v45 = v59;
      *a2 = v46;
      goto LABEL_84;
    }
  }

  else if (v30)
  {
    *a2 = v21;
    *v59 = v5;
    v31 = *a2;
    v32 = *a1;
    v33 = v8 + 8 * v31;
    if ((v7 & 1) == 0)
    {
      v33 = v6;
    }

    v34 = *(*v33 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = v8 + 8 * v32;
    if ((v7 & 1) == 0)
    {
      v35 = v6;
    }

    v36 = *(*v35 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *(v36 + 23);
    v38 = *(v34 + 23);
    if (v38 >= 0)
    {
      v39 = *(v34 + 23);
    }

    else
    {
      v39 = *(v34 + 8);
    }

    if (v38 >= 0)
    {
      v40 = v34;
    }

    else
    {
      v40 = *v34;
    }

    if (v37 >= 0)
    {
      v41 = *(v36 + 23);
    }

    else
    {
      v41 = *(v36 + 8);
    }

    if (v37 >= 0)
    {
      v42 = v36;
    }

    else
    {
      v42 = *v36;
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    result = memcmp(v40, v42, v43);
    v44 = v39 < v41;
    if (result)
    {
      v44 = result < 0;
    }

    if (v44)
    {
      *a1 = v31;
      v45 = a2;
LABEL_84:
      *v45 = v32;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a2, a3, *a5);
  v9 = *a4;
  v10 = *a3;
  v11 = *a5;
  v14 = *(v11 + 24);
  v12 = v11 + 24;
  v13 = v14;
  v15 = v14 + 7;
  v16 = v14 + 7 + 8 * v9;
  v17 = (v14 & 1) == 0;
  if ((v14 & 1) == 0)
  {
    v16 = v12;
  }

  v18 = *(*v16 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = v15 + 8 * v10;
  if (v17)
  {
    v19 = v12;
  }

  v20 = *(*v19 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 23);
  v22 = *(v18 + 23);
  if (v22 >= 0)
  {
    v23 = *(v18 + 23);
  }

  else
  {
    v23 = *(v18 + 8);
  }

  if (v22 >= 0)
  {
    v24 = v18;
  }

  else
  {
    v24 = *v18;
  }

  if (v21 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 8);
  }

  if (v21 >= 0)
  {
    v26 = v20;
  }

  else
  {
    v26 = *v20;
  }

  if (v25 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v25;
  }

  result = memcmp(v24, v26, v27);
  v29 = v23 < v25;
  if (result)
  {
    v29 = result < 0;
  }

  if (v29)
  {
    *a3 = v9;
    *a4 = v10;
    v30 = *a3;
    v31 = *a2;
    v32 = v15 + 8 * v30;
    if ((v13 & 1) == 0)
    {
      v32 = v12;
    }

    v33 = *(*v32 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = v15 + 8 * v31;
    if ((v13 & 1) == 0)
    {
      v34 = v12;
    }

    v35 = *(*v34 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *(v35 + 23);
    v37 = *(v33 + 23);
    if (v37 >= 0)
    {
      v38 = *(v33 + 23);
    }

    else
    {
      v38 = *(v33 + 8);
    }

    if (v37 >= 0)
    {
      v39 = v33;
    }

    else
    {
      v39 = *v33;
    }

    if (v36 >= 0)
    {
      v40 = *(v35 + 23);
    }

    else
    {
      v40 = *(v35 + 8);
    }

    if (v36 >= 0)
    {
      v41 = v35;
    }

    else
    {
      v41 = *v35;
    }

    if (v40 >= v38)
    {
      v42 = v38;
    }

    else
    {
      v42 = v40;
    }

    result = memcmp(v39, v41, v42);
    v43 = v38 < v40;
    if (result)
    {
      v43 = result < 0;
    }

    if (v43)
    {
      *a2 = v30;
      *a3 = v31;
      v44 = *a2;
      v45 = *a1;
      v46 = v15 + 8 * v44;
      if ((v13 & 1) == 0)
      {
        v46 = v12;
      }

      v47 = *(*v46 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = v15 + 8 * v45;
      if ((v13 & 1) == 0)
      {
        v48 = v12;
      }

      v49 = *(*v48 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v50 = *(v49 + 23);
      v51 = *(v47 + 23);
      if (v51 >= 0)
      {
        v52 = *(v47 + 23);
      }

      else
      {
        v52 = *(v47 + 8);
      }

      if (v51 >= 0)
      {
        v53 = v47;
      }

      else
      {
        v53 = *v47;
      }

      if (v50 >= 0)
      {
        v54 = *(v49 + 23);
      }

      else
      {
        v54 = *(v49 + 8);
      }

      if (v50 >= 0)
      {
        v55 = v49;
      }

      else
      {
        v55 = *v49;
      }

      if (v54 >= v52)
      {
        v56 = v52;
      }

      else
      {
        v56 = v54;
      }

      result = memcmp(v53, v55, v56);
      v57 = v52 < v54;
      if (result)
      {
        v57 = result < 0;
      }

      if (v57)
      {
        *a1 = v44;
        *a2 = v45;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a2, a3, a4, a6);
  v10 = *a5;
  v11 = *a4;
  v12 = *a6;
  v15 = *(v12 + 24);
  v13 = v12 + 24;
  v14 = v15;
  v16 = v15 + 7;
  v17 = v15 + 7 + 8 * v10;
  v18 = (v15 & 1) == 0;
  if ((v15 & 1) == 0)
  {
    v17 = v13;
  }

  v19 = *(*v17 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = v16 + 8 * v11;
  if (v18)
  {
    v20 = v13;
  }

  v21 = *(*v20 + 40) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 23);
  v23 = *(v19 + 23);
  if (v23 >= 0)
  {
    v24 = *(v19 + 23);
  }

  else
  {
    v24 = *(v19 + 8);
  }

  if (v23 >= 0)
  {
    v25 = v19;
  }

  else
  {
    v25 = *v19;
  }

  if (v22 >= 0)
  {
    v26 = *(v21 + 23);
  }

  else
  {
    v26 = *(v21 + 8);
  }

  if (v22 >= 0)
  {
    v27 = v21;
  }

  else
  {
    v27 = *v21;
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
  v30 = v24 < v26;
  if (result)
  {
    v30 = result < 0;
  }

  if (v30)
  {
    *a4 = v10;
    *a5 = v11;
    v31 = *a4;
    v32 = *a3;
    v33 = v16 + 8 * v31;
    if ((v14 & 1) == 0)
    {
      v33 = v13;
    }

    v34 = *(*v33 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = v16 + 8 * v32;
    if ((v14 & 1) == 0)
    {
      v35 = v13;
    }

    v36 = *(*v35 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *(v36 + 23);
    v38 = *(v34 + 23);
    if (v38 >= 0)
    {
      v39 = *(v34 + 23);
    }

    else
    {
      v39 = *(v34 + 8);
    }

    if (v38 >= 0)
    {
      v40 = v34;
    }

    else
    {
      v40 = *v34;
    }

    if (v37 >= 0)
    {
      v41 = *(v36 + 23);
    }

    else
    {
      v41 = *(v36 + 8);
    }

    if (v37 >= 0)
    {
      v42 = v36;
    }

    else
    {
      v42 = *v36;
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    result = memcmp(v40, v42, v43);
    v44 = v39 < v41;
    if (result)
    {
      v44 = result < 0;
    }

    if (v44)
    {
      *a3 = v31;
      *a4 = v32;
      v45 = *a3;
      v46 = *a2;
      v47 = v16 + 8 * v45;
      if ((v14 & 1) == 0)
      {
        v47 = v13;
      }

      v48 = *(*v47 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = v16 + 8 * v46;
      if ((v14 & 1) == 0)
      {
        v49 = v13;
      }

      v50 = *(*v49 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v51 = *(v50 + 23);
      v52 = *(v48 + 23);
      if (v52 >= 0)
      {
        v53 = *(v48 + 23);
      }

      else
      {
        v53 = *(v48 + 8);
      }

      if (v52 >= 0)
      {
        v54 = v48;
      }

      else
      {
        v54 = *v48;
      }

      if (v51 >= 0)
      {
        v55 = *(v50 + 23);
      }

      else
      {
        v55 = *(v50 + 8);
      }

      if (v51 >= 0)
      {
        v56 = v50;
      }

      else
      {
        v56 = *v50;
      }

      if (v55 >= v53)
      {
        v57 = v53;
      }

      else
      {
        v57 = v55;
      }

      result = memcmp(v54, v56, v57);
      v58 = v53 < v55;
      if (result)
      {
        v58 = result < 0;
      }

      if (v58)
      {
        *a2 = v45;
        *a3 = v46;
        v59 = *a2;
        v60 = *a1;
        v61 = v16 + 8 * v59;
        if ((v14 & 1) == 0)
        {
          v61 = v13;
        }

        v62 = *(*v61 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v63 = v16 + 8 * v60;
        if ((v14 & 1) == 0)
        {
          v63 = v13;
        }

        v64 = *(*v63 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v65 = *(v64 + 23);
        v66 = *(v62 + 23);
        if (v66 >= 0)
        {
          v67 = *(v62 + 23);
        }

        else
        {
          v67 = *(v62 + 8);
        }

        if (v66 >= 0)
        {
          v68 = v62;
        }

        else
        {
          v68 = *v62;
        }

        if (v65 >= 0)
        {
          v69 = *(v64 + 23);
        }

        else
        {
          v69 = *(v64 + 8);
        }

        if (v65 >= 0)
        {
          v70 = v64;
        }

        else
        {
          v70 = *v64;
        }

        if (v69 >= v67)
        {
          v71 = v67;
        }

        else
        {
          v71 = v69;
        }

        result = memcmp(v68, v70, v71);
        v72 = v67 < v69;
        if (result)
        {
          v72 = result < 0;
        }

        if (v72)
        {
          *a1 = v59;
          *a2 = v60;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a2 - 1, *a3);
        goto LABEL_38;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        goto LABEL_38;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        goto LABEL_38;
    }
  }

  else
  {
    if (v5 < 2)
    {
      goto LABEL_38;
    }

    if (v5 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = *a3 + 24;
      if (*v9)
      {
        v10 = *v9 + 7 + 8 * v7;
      }

      else
      {
        v10 = *a3 + 24;
      }

      v11 = *(*v10 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      if (*v9)
      {
        v9 = *v9 + 7 + 8 * v8;
      }

      v12 = *(*v9 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v13 = *(v12 + 23);
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = *(v11 + 23);
      }

      else
      {
        v15 = *(v11 + 8);
      }

      if (v14 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v13 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = *(v12 + 8);
      }

      if (v13 >= 0)
      {
        v18 = v12;
      }

      else
      {
        v18 = *v12;
      }

      if (v17 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      v20 = memcmp(v16, v18, v19);
      v21 = v15 < v17;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (v21 == 1)
      {
        *a1 = v7;
        *(a2 - 1) = v8;
        return v21 & 1;
      }

LABEL_38:
      LOBYTE(v21) = 1;
      return v21 & 1;
    }
  }

  v22 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, *a3);
  v25 = a1 + 3;
  if (a1 + 3 != a2 && (v26 = *(*a3 + 24), (v26 & 1) != 0))
  {
    v29 = 0;
    v30 = v26 + 7;
    v31 = 12;
    v58 = a2;
    while (1)
    {
      v33 = *v22;
      v59 = *v25;
      v34 = *(*(v30 + 8 * v59) + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v35 = *(*(v30 + 8 * v33) + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v36 = *(v35 + 23);
      v37 = *(v34 + 23);
      if (v37 >= 0)
      {
        v38 = *(v34 + 23);
      }

      else
      {
        v38 = *(v34 + 8);
      }

      if (v37 >= 0)
      {
        v39 = (*(*(v30 + 8 * v59) + 40) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v39 = *v34;
      }

      if (v36 >= 0)
      {
        v40 = *(v35 + 23);
      }

      else
      {
        v40 = *(v35 + 8);
      }

      if (v36 >= 0)
      {
        v41 = (*(*(v30 + 8 * v33) + 40) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v41 = *v35;
      }

      if (v40 >= v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = v40;
      }

      v43 = memcmp(v39, v41, v42);
      v44 = v38 < v40;
      v24 = v43 < 0;
      if (v43)
      {
        v44 = v43 < 0;
      }

      if (v44)
      {
        break;
      }

      v32 = v58;
LABEL_42:
      v22 = v25;
      v31 += 4;
      if (++v25 == v32)
      {
        goto LABEL_35;
      }
    }

    v45 = v31;
    LODWORD(v46) = v33;
    while (1)
    {
      *(a1 + v45) = v46;
      v47 = v45 - 4;
      if (v45 == 4)
      {
        break;
      }

      v46 = *(a1 + v45 - 8);
      v48 = *(*(v30 + 8 * v46) + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = *(v48 + 23);
      v50 = *(v34 + 23);
      if (v50 >= 0)
      {
        v51 = *(v34 + 23);
      }

      else
      {
        v51 = *(v34 + 8);
      }

      if (v50 >= 0)
      {
        v52 = v34;
      }

      else
      {
        v52 = *v34;
      }

      if (v49 >= 0)
      {
        v53 = *(v48 + 23);
      }

      else
      {
        v53 = *(v48 + 8);
      }

      if (v49 >= 0)
      {
        v54 = (*(*(v30 + 8 * v46) + 40) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v54 = *v48;
      }

      if (v53 >= v51)
      {
        v55 = v51;
      }

      else
      {
        v55 = v53;
      }

      v56 = memcmp(v52, v54, v55);
      v57 = v56 < 0;
      if (!v56)
      {
        v57 = v51 < v53;
      }

      v45 = v47;
      if (!v57)
      {
        v32 = v58;
        v24 = v59;
        *(a1 + v47) = v59;
        if (++v29 != 8)
        {
          goto LABEL_42;
        }

        goto LABEL_84;
      }
    }

    v32 = v58;
    v24 = v59;
    *a1 = v59;
    if (++v29 != 8)
    {
      goto LABEL_42;
    }

LABEL_84:
    v27 = 0;
    v24 = v25 + 1 == v32;
  }

  else
  {
LABEL_35:
    v27 = 1;
  }

  LOBYTE(v21) = v27 | v24;
  return v21 & 1;
}

void *std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F3E548;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  operations_research::sat::CpModelProto::~CpModelProto((a1 + 9));
  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5 == a1 + 1)
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

void std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F3E548;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  operations_research::sat::CpModelProto::~CpModelProto((a1 + 9));
  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5 == a1 + 1)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v2 = a1;
  v121 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4);
  if (*a2 != -1)
  {
    LODWORD(v97) = *a2;
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v103, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 446);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v103, "Boolean decision ", 0x11uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::Literal,0>(&v103, &v97);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v103);
    v9 = v2[5];
    v10 = v9[3];
    if (v10 > 1)
    {
      v13 = 0;
      _X12 = v9[5];
      __asm { PRFM            #4, [X12] }

      v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v20 = vdup_n_s8(v19 & 0x7F);
      v21 = ((v19 >> 7) ^ (_X12 >> 12)) & v10;
      v22 = *(_X12 + v21);
      v23 = vceq_s8(v22, v20);
      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_12:
      v24 = v9[6];
      while (1)
      {
        v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v10;
        if (*(v24 + 16 * v25) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v23)
        {
LABEL_15:
          while (!*&vceq_s8(v22, 0x8080808080808080))
          {
            v13 += 8;
            v21 = (v13 + v21) & v10;
            v22 = *(_X12 + v21);
            v23 = vceq_s8(v22, v20);
            if (v23)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_21;
        }
      }

      v11 = (v24 + 16 * v25);
      if (_X12 + v25)
      {
        goto LABEL_19;
      }
    }

    else if (v9[4] >= 2uLL)
    {
      v12 = v9[5];
      v11 = v9 + 5;
      if (v12 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_19:
          v26 = v11[1];
LABEL_22:
          v27 = v97;
          v28 = v26[14];
          v29 = -858993459 * ((v26[15] - v28) >> 3);
          v30 = (v28 + 40 * v97);
          if (v97 >= v29)
          {
            v31 = v26 + 9;
          }

          else
          {
            v31 = v30;
          }

          v34 = *v31;
          v33 = v31 + 1;
          v32 = v34;
          if (v34)
          {
            v33 = *v33;
          }

          if ((v32 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v35 = 16 * (v32 >> 1);
            do
            {
              v103 = *v33;
              absl::lts_20240722::log_internal::LogMessage::LogMessage(&v100, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 449);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v100, " - associated with ", 0x13uLL);
              absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(&v100, &v103);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v100);
              v33 += 2;
              v35 -= 16;
            }

            while (v35);
            v27 = v97;
            v36 = v97;
          }

          else
          {
            v36 = v97;
          }

          v37 = v26[22];
          v38 = (v37 + 40 * v36);
          if (v27 >= (-858993459 * ((v26[23] - v37) >> 3)))
          {
            v39 = v26 + 17;
          }

          else
          {
            v39 = v38;
          }

          v42 = *v39;
          v41 = v39 + 1;
          v40 = v42;
          if (v42)
          {
            v41 = *v41;
          }

          if ((v40 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v43 = 16 * (v40 >> 1);
            do
            {
              v103 = *v41;
              absl::lts_20240722::log_internal::LogMessage::LogMessage(&v100, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 452);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v100, " - associated with ", 0x13uLL);
              v44 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(&v100, &v103);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, " == ", 4uLL);
              absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v44, &v103 + 1);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v100);
              v41 += 2;
              v43 -= 16;
            }

            while (v43);
          }

          goto LABEL_40;
        }
      }
    }

LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  v6 = a2[2];
  v5 = (a2 + 2);
  if (v6 == -1)
  {
    goto LABEL_4;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v103, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 455);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v103, "Integer decision ", 0x11uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(&v103, v5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v103);
LABEL_40:
  v45 = v2[5];
  v46 = v45[3];
  if (v46 > 1)
  {
    v48 = 0;
    _X12 = v45[5];
    __asm { PRFM            #4, [X12] }

    v51 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
    v52 = vdup_n_s8(v51 & 0x7F);
    v53 = ((v51 >> 7) ^ (_X12 >> 12)) & v46;
    v54 = *(_X12 + v53);
    v55 = vceq_s8(v54, v52);
    if (!v55)
    {
      goto LABEL_47;
    }

LABEL_44:
    v56 = v45[6];
    do
    {
      v57 = (v53 + (__clz(__rbit64(v55)) >> 3)) & v46;
      if (*(v56 + 16 * v57) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        v45 = (v56 + 16 * v57);
        goto LABEL_51;
      }

      v55 &= ((v55 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v55);
LABEL_47:
    while (!*&vceq_s8(v54, 0x8080808080808080))
    {
      v48 += 8;
      v53 = (v48 + v53) & v46;
      v54 = *(_X12 + v53);
      v55 = vceq_s8(v54, v52);
      if (v55)
      {
        goto LABEL_44;
      }
    }
  }

  else if (v45[4] >= 2uLL)
  {
    v47 = v45[5];
    v45 += 5;
  }

LABEL_51:
  v58 = *(v45[1] + 8);
  *&v103 = "Diff since last call, level=";
  *(&v103 + 1) = 28;
  v59 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v58 & 0xFFFFFFF), v102, v8);
  v100 = v102;
  v101 = v59 - v102;
  v97 = "\n";
  v98 = 1;
  absl::lts_20240722::StrCat(&v103, &v100, &v97, &v91);
  v60 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v2[5]);
  v63 = v2[32];
  v62 = v2[33];
  if (v63 != v62)
  {
    v64 = v60;
    v90 = v2 + 12;
    v65 = v2[29];
    v89 = v60;
    do
    {
      v67 = *v63;
      v68 = *(v64 + 40);
      v69 = 8 * *(v2[6] + 4 * v67);
      v70 = *(v68 + v69);
      v71 = -*(v68 + (v69 ^ 8));
      v72 = (v65 + 16 * v67);
      v73 = *v72;
      v74 = v72[1];
      if (v70 != v73 || v74 != v71)
      {
        v76 = v2;
        if (*v90)
        {
          v77 = *v90 + 8 * v67 + 7;
        }

        else
        {
          v77 = v90;
        }

        v78 = *(*v77 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v79 = *(v78 + 23);
        if (v79 >= 0)
        {
          v80 = v78;
        }

        else
        {
          v80 = *v78;
        }

        if (v79 >= 0)
        {
          v81 = *(v78 + 23);
        }

        else
        {
          v81 = *(v78 + 8);
        }

        v82 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v73, v96, v61);
        *&v95 = v96;
        *(&v95 + 1) = v82 - v96;
        v84 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v76[29] + 16 * v67 + 8), v94, v83);
        v92 = v94;
        v93 = v84 - v94;
        *&v103 = v80;
        *(&v103 + 1) = v81;
        v104 = " [";
        v105 = 2;
        v106 = v95;
        v107 = ",";
        v108 = 1;
        v109 = v94;
        v110 = v84 - v94;
        v111 = "] -> [";
        v112 = 6;
        v86 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v70, v102, v85);
        v100 = v102;
        v101 = v86 - v102;
        v113 = v102;
        v114 = v86 - v102;
        v115 = ",";
        v116 = 1;
        v88 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v71, v99, v87);
        v97 = v99;
        v98 = v88 - v99;
        v117 = v99;
        v118 = v88 - v99;
        v119 = "]\n";
        v120 = 2;
        absl::lts_20240722::strings_internal::AppendPieces(&v91, &v103, 10);
        v2 = v76;
        v65 = v76[29];
        v66 = (v65 + 16 * v67);
        *v66 = v70;
        v66[1] = v71;
        v64 = v89;
      }

      ++v63;
    }

    while (v63 != v62);
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v103, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 474);
  absl::lts_20240722::log_internal::LogMessage::operator<<(&v103, &v91);
  std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v103, &v91);
LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void sub_23CAE6EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a44);
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0::$_0(void *a1, void *a2)
{
  v4 = a2[3];
  if (v4)
  {
    if (v4 == a2)
    {
      a1[3] = a1;
      (*(*a2[3] + 24))(a2[3], a1);
    }

    else
    {
      a1[3] = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    a1[3] = 0;
  }

  v5 = a2[4];
  a1[5] = 0;
  a1[4] = v5;
  a1[6] = 0;
  a1[7] = 0;
  v7 = a2[5];
  v6 = a2[6];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::CpModelProto::CpModelProto((a1 + 8), 0, (a2 + 8));
  a1[28] = 0;
  a1[29] = 0;
  a1[30] = 0;
  v8 = a2[28];
  v9 = a2[29];
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a1[31] = 0;
  a1[32] = 0;
  a1[33] = 0;
  v11 = a2[31];
  v10 = a2[32];
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CAE71E0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__alloc_func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy[abi:ne200100](void *a1)
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

  result = a1[3];
  if (result == a1)
  {
    v6 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = *(*result + 40);
  }

  return v6();
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(uint64_t a1, __int128 *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v9, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v9);
  v11 = *a2;
  operations_research::sat::IntegerLiteral::DebugString(&v11, v5, &v10);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v9);
  return a1;
}

void sub_23CAE73C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
    absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
  _Unwind_Resume(a1);
}

const void **operations_research::sat::IntegerLiteral::DebugString@<X0>(operations_research::sat::IntegerLiteral *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this)
  {
    v17 = "I";
    v18 = 1;
    v14 = v16;
    v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v5 / 2), v16, a2) - v16;
    v12 = "<=";
    v13 = 2;
    v7 = -*(this + 1);
  }

  else
  {
    v17 = "I";
    v18 = 1;
    v14 = v16;
    v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v5 >> 1), v16, a2) - v16;
    v12 = ">=";
    v13 = 2;
    v7 = *(this + 1);
  }

  v10[0] = v11;
  v10[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, v11, v6) - v11;
  result = absl::lts_20240722::StrCat(&v17, &v14, &v12, v10, a3);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>@<X0>(char *__s@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  _X8 = a2[2];
  __asm { PRFM            #4, [X8] }

  v12 = strlen(__s);
  v15 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, __s, v12, v13, v14);
  v16 = 0;
  v17 = (((v15 + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v12));
  v18 = a2[2];
  v19 = *a2;
  v20 = vdup_n_s8(v17 & 0x7F);
  v21 = ((v17 >> 7) ^ (v18 >> 12)) & *a2;
  v22 = *(v18 + v21);
  v23 = vceq_s8(v22, v20);
  if (v23)
  {
LABEL_2:
    v24 = a2[3];
    v25 = v16;
    v26 = strlen(__s);
    v27 = v25;
    v28 = v26;
    v39 = v27;
    v40 = a3;
    v38 = v24;
    while (1)
    {
      v29 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v19;
      v30 = v24 + 1000 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v28)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, __s, v28);
        if (!result)
        {
          break;
        }
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v16 = v39;
      a3 = v40;
      v24 = v38;
      if (!v23)
      {
        goto LABEL_11;
      }
    }

    v36 = 0;
    v37 = v18 + v29;
    a3 = v40;
  }

  else
  {
LABEL_11:
    while (1)
    {
      v35 = vceq_s8(v22, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v16 += 8;
      v21 = (v16 + v21) & v19;
      v22 = *(v18 + v21);
      v23 = vceq_s8(v22, v20);
      if (v23)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a2, v17, (v21 + (__clz(__rbit64(v35)) >> 3)) & v19, v16, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::GetPolicyFunctions(void)::value);
    v37 = a2[2] + result;
    v30 = a2[3] + 1000 * result;
    v36 = 1;
  }

  *a3 = v37;
  *(a3 + 8) = v30;
  *(a3 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,1000ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::string,operations_research::sat::SatParameters> *)#1}::operator()(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2;
  v7 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v8, a4, a5);
  v10 = (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
  v11 = *(a1 + 8);
  v12 = v11[2];
  v13 = *v11;
  v14 = ((v10 >> 7) ^ (v12 >> 12)) & *v11;
  if (*(v12 + v14) >= -1)
  {
    v15 = 0;
    for (i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080; !i; i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080)
    {
      v15 += 8;
      v14 = (v15 + v14) & v13;
    }

    v14 = (v14 + (__clz(__rbit64(i)) >> 3)) & v13;
  }

  else
  {
    v15 = 0;
  }

  v17 = v10 & 0x7F;
  *(v12 + v14) = v17;
  *(v12 + ((v14 - 7) & v13) + (v13 & 7)) = v17;
  std::pair<std::string const,operations_research::sat::SatParameters>::pair[abi:ne200100]((**(a1 + 16) + 1000 * v14), v5);
  operations_research::sat::SatParameters::~SatParameters(&v5[1]);
  if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5->__r_.__value_.__l.__data_);
  }

  return v15;
}

std::string *std::pair<std::string const,operations_research::sat::SatParameters>::pair[abi:ne200100](std::string *this, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&a2->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  operations_research::sat::SatParameters::SatParameters(this[1].__r_.__value_.__r.__words, 0);
  if (this != a2)
  {
    size = this[1].__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
      v6 = a2[1].__r_.__value_.__l.__size_;
      if ((v6 & 1) == 0)
      {
LABEL_7:
        if (size != v6)
        {
LABEL_8:
          operations_research::sat::SatParameters::CopyFrom(&this[1], &a2[1]);
          return this;
        }

LABEL_11:
        operations_research::sat::SatParameters::InternalSwap(&this[1], &a2[1]);
        return this;
      }
    }

    else
    {
      v6 = a2[1].__r_.__value_.__l.__size_;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (size != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t absl::lts_20240722::container_internal::hash_policy_traits<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,void>::hash_slot_fn_non_type_erased<absl::lts_20240722::container_internal::StringHash>(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v6, a4, a5);
  return (((v7 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7 + v6));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::transfer_slot_fn(int a1, std::string *this, uint64_t a3)
{
  std::pair<std::string const,operations_research::sat::SatParameters>::pair[abi:ne200100](this, a3);
  operations_research::sat::SatParameters::~SatParameters((a3 + 24));
  if (*(a3 + 23) < 0)
  {
    v4 = *a3;

    operator delete(v4);
  }
}

uint64_t _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(uint64_t a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, v3, v4);
  }

  *(a1 + v5) = 0;
  operations_research::sat::SatParameters::SatParameters((a1 + 24), 0);
  return a1;
}

void sub_23CAE7CC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(uint64_t *a1@<X0>, absl::lts_20240722::hash_internal::MixingHashState *a2@<X1>, unint64_t a3@<X3>, const unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a3, a4);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = vdup_n_s8(v16 & 0x7F);
  v19 = *a1;
  v20 = *(v5 + 23);
  _NF = (v20 & 0x80u) != 0;
  if ((v20 & 0x80u) == 0)
  {
    v22 = *(v5 + 23);
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v19;
  v26 = *(v17 + (v23 & v19));
  v27 = vceq_s8(v26, v18);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v19;
      v30 = v28 + 1000 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? (v28 + 1000 * v29) : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v19;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v18);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v19, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 1000 * result;
    v36 = 1;
  }

  *a5 = v37;
  *(a5 + 8) = v30;
  *(a5 + 16) = v36;
  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::container_internal::StringHash,std::string>(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = a2;
    a2 = *a2;
    v5 = *(v6 + 1);
  }

  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v5, a4, a5);
  return (((v7 + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7 + v5));
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    v10 = 24 * __n;
    if (24 * __n)
    {
      bzero(this->__end_, 24 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v5;
    v12 = 24 * __n;
    if (24 * __n)
    {
      bzero(v11, v12);
      v9 = (v11 + v12);
    }

    else
    {
      v9 = v11;
    }

    begin = this->__begin_;
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy(v15, this->__begin_, v14);
    this->__begin_ = v15;
    this->__end_ = v9;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::vector<operations_research::sat::SatParameters>::__emplace_back_slow_path<operations_research::sat::SatParameters const&>(uint64_t a1, const operations_research::sat::SatParameters *a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x4325C53EF368EBLL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x9F79B47582192E2ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x4FBCDA3AC10C9715 * ((*(a1 + 16) - *a1) >> 4)) >= 0x2192E29F79B475)
  {
    v5 = 0x4325C53EF368EBLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x4325C53EF368EBLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = (16 * ((*(a1 + 8) - *a1) >> 4));
  operations_research::sat::SatParameters::SatParameters(v11, 0, a2);
  v6 = 976 * v2 + 976;
  v7 = *(a1 + 8);
  v8 = 976 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::SatParameters>,operations_research::sat::SatParameters*>(a1, *a1, v7, (v11 + *a1 - v7));
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

void sub_23CAE84B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::SatParameters>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::SatParameters>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 976;
    operations_research::sat::SatParameters::~SatParameters((i - 976));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::SatParameters>,operations_research::sat::SatParameters*>(uint64_t a1, operations_research::sat::SatParameters *a2, operations_research::sat::SatParameters *a3, __n128 *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::SatParameters::SatParameters(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      v8 = a4->n128_u64[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = v7->n128_u64[1];
        if (v9)
        {
LABEL_11:
          if (v8 != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::SatParameters::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = v7->n128_u64[1];
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
      operations_research::sat::SatParameters::InternalSwap(a4, v7);
LABEL_4:
      v7 += 61;
      a4 += 61;
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::SatParameters::~SatParameters(v6);
          v6 = (v6 + 976);
        }

        return;
      }
    }
  }
}

unint64_t AbslFlagHelpGenForcp_model_dump_prefix::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForcp_model_dump_prefix::Gen(uint64_t this, void *a2)
{
  *this = 0x2F706D742FLL;
  *(this + 23) = 5;
  return this;
}

unint64_t AbslFlagHelpGenForcp_model_dump_models::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_export_model::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_dump_text_proto::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_dump_submodels::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_dump_problematic_lns::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_dump_response::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_params::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForcp_model_params::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

unint64_t AbslFlagHelpGenFordebug_model_copy::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_check_intermediate_solutions::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_load_debug_solution::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForcp_model_load_debug_solution::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

unint64_t AbslFlagHelpGenForcp_model_ignore_objective::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_ignore_hints::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForcp_model_fingerprint_model::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void operations_research::sat::CpModelStats(operations_research::sat *this@<X0>, std::string *a2@<X8>)
{
  v3 = this;
  v332 = *MEMORY[0x277D85DE8];
  v5 = xmmword_23CE306D0;
  v308 = xmmword_23CE306D0;
  v306 = xmmword_23CE306D0;
  v304 = xmmword_23CE306D0;
  v302 = xmmword_23CE306D0;
  v300 = xmmword_23CE306D0;
  v298 = xmmword_23CE306D0;
  v296 = xmmword_23CE306D0;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = (v6 + 7);
  }

  else
  {
    v7 = (this + 48);
  }

  v282 = (this + 48);
  v8 = *(this + 14);
  v276 = a2;
  if (v8)
  {
    v269 = 0;
    v270 = 0;
    v280 = 0;
    v281 = 0;
    memset(v279, 0, sizeof(v279));
    v277 = 0;
    v9 = 0;
    v10 = 0;
    v11 = &v7[v8];
    v268 = v11;
    while (1)
    {
      v12 = *v7;
      v331[0].__r_.__value_.__r.__words[0] = 0;
      v13 = *(v12 + 60);
      if (v13 == 12)
      {
        v14 = *(*(v12 + 48) + 16);
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v15 = "kLinear2";
            goto LABEL_21;
          }

          if (v14 == 3)
          {
            v15 = "kLinear3";
            goto LABEL_21;
          }
        }

        else
        {
          if (!v14)
          {
            v15 = "kLinear0";
            goto LABEL_21;
          }

          if (v14 == 1)
          {
            v15 = "kLinear1";
LABEL_21:
            v331[0].__r_.__value_.__r.__words[0] = v15;
            goto LABEL_22;
          }
        }

        if (v14 >= 4)
        {
          v15 = "kLinearN";
          goto LABEL_21;
        }
      }

      else
      {
        v331[0].__r_.__value_.__r.__words[0] = operations_research::sat::ConstraintCaseName(v13);
      }

LABEL_22:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v308, v331, &v313);
      if (v315 == 1)
      {
        v16 = v314;
        *v314 = v331[0].__r_.__value_.__r.__words[0];
        v16[2] = 0;
      }

      ++*(v314 + 2);
      if (*(v12 + 16))
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v306, v331, &v313);
        if (v315 == 1)
        {
          v17 = v314;
          *v314 = v331[0].__r_.__value_.__r.__words[0];
          v17[2] = 0;
        }

        ++*(v314 + 2);
        if (*(v12 + 16) >= 2)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v304, v331, &v313);
          if (v315 == 1)
          {
            v18 = v314;
            *v314 = v331[0].__r_.__value_.__r.__words[0];
            v18[2] = 0;
          }

          ++*(v314 + 2);
        }
      }

      v330[0].__r_.__value_.__r.__words[0] = v3;
      v19 = *(v12 + 60);
      if (v19 <= 20)
      {
        if (v19 <= 18)
        {
          if (v19 != 3)
          {
            if (v19 != 4)
            {
              goto LABEL_169;
            }

            v21 = *(v12 + 16);
            v22 = *(*(v12 + 48) + 16);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v302, v331, &v313);
            if (v315 == 1)
            {
              v23 = v314;
              *v314 = v331[0].__r_.__value_.__r.__words[0];
              v23[2] = 0;
            }

            *(v314 + 2) += v22 + v21;
            if (*(v12 + 60) == 12)
            {
              goto LABEL_175;
            }

            goto LABEL_7;
          }

LABEL_36:
          v20 = *(*(v12 + 48) + 16);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v302, v331, &v313);
          goto LABEL_172;
        }

        if (v19 == 19)
        {
          HIDWORD(v270) += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v12);
          if (*(v12 + 60) == 12)
          {
            goto LABEL_175;
          }

          goto LABEL_7;
        }

        v24 = *(v12 + 48);
        v25 = *(v24 + 16);
        HIDWORD(v269) += v25;
        if (v25 < 1)
        {
          goto LABEL_169;
        }

        v275 = v12;
        v272 = v7;
        v26 = 0;
        v27 = *(v24 + 24);
        v28 = *(v3 + 6);
        v29 = *(v3 + 3);
        while (2)
        {
          v30 = (v28 + 7 + 8 * *(v27 + 4 * v26));
          if ((v28 & 1) == 0)
          {
            v30 = v282;
          }

          v31 = *v30;
          if (*(*v30 + 16))
          {
            ++v9;
          }

          v32 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v31 + 60) == 19)
          {
            v32 = *(v31 + 48);
          }

          v33 = v32[5];
          if (!v33)
          {
            v33 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v34 = *(v33 + 4);
          if (v34)
          {
            if (v29)
            {
              v35 = v33[3];
              v36 = 4 * v34;
              while (1)
              {
                v37 = *v35;
                if (~*v35 > *v35)
                {
                  v37 = ~v37;
                }

                v38 = *(v29 + 7 + 8 * v37);
                if (*(v38 + 16) != 2 || **(v38 + 24) != *(*(v38 + 24) + 8))
                {
                  break;
                }

                ++v35;
                v36 -= 4;
                if (!v36)
                {
                  goto LABEL_48;
                }
              }
            }

            else if (*(v29 + 16) == 2 && **(v29 + 24) == *(*(v29 + 24) + 8))
            {
              goto LABEL_48;
            }

            LODWORD(v277) = v277 + 1;
          }

LABEL_48:
          v10 += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v31);
          if (++v26 == v25)
          {
            goto LABEL_167;
          }

          continue;
        }
      }

      if (v19 > 25)
      {
        if (v19 == 26)
        {
          goto LABEL_36;
        }

        if (v19 != 27)
        {
          if (v19 != 29)
          {
            goto LABEL_169;
          }

          goto LABEL_36;
        }

        v20 = *(*(v12 + 48) + 32);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v296, v331, &v313);
LABEL_172:
        if (v315 == 1)
        {
          v105 = v314;
          *v314 = v331[0].__r_.__value_.__r.__words[0];
          v105[2] = 0;
        }

        *(v314 + 2) += v20;
        if (*(v12 + 60) == 12)
        {
          goto LABEL_175;
        }

        goto LABEL_7;
      }

      if (v19 != 21)
      {
        if (v19 != 22)
        {
          goto LABEL_169;
        }

        v39 = *(v12 + 48);
        v40 = *(v39 + 24);
        LODWORD(v269) = v40 + v269;
        if (v40 < 1)
        {
          goto LABEL_169;
        }

        v275 = v12;
        v272 = v7;
        v273 = v9;
        v274 = v10;
        v41 = 0;
        v44 = *(v39 + 48);
        v42 = (v39 + 48);
        v43 = v44;
        v45 = v3;
        v46 = *(v42 - 2);
        v47 = *(v45 + 6);
        v48 = *(v45 + 3);
        v49 = v48 + 7;
        v50 = v44 + 7;
        while (2)
        {
          v51 = (v47 + 7 + 8 * *(v46 + 4 * v41));
          if ((v47 & 1) == 0)
          {
            v51 = v282;
          }

          v52 = *v51;
          v204 = *(*v51 + 16) == 0;
          v53 = v280;
          if (!v204)
          {
            v53 = v280 + 1;
          }

          LODWORD(v280) = v53;
          v54 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v52 + 60) == 19)
          {
            v54 = *(v52 + 48);
          }

          v55 = v54[5];
          v56 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          if (v55)
          {
            v56 = v55;
          }

          v57 = *(v56 + 4);
          v58 = (v50 + 8 * v41);
          if (v57)
          {
            if (v48)
            {
              v64 = v56[3];
              v65 = 4 * v57;
              while (1)
              {
                v66 = *v64;
                if (~*v64 > *v64)
                {
                  v66 = ~v66;
                }

                v67 = *(v49 + 8 * v66);
                if (*(v67 + 16) != 2 || **(v67 + 24) != *(*(v67 + 24) + 8))
                {
                  break;
                }

                ++v64;
                v65 -= 4;
                if (!v65)
                {
                  goto LABEL_100;
                }
              }
            }

            else if (*(v48 + 16) == 2)
            {
              v59 = *(v48 + 24);
              v61 = *v59;
              v60 = v59[1];
              if ((v43 & 1) == 0)
              {
                v58 = v42;
              }

              v204 = v61 == v60;
              v62 = *(*v58 + 16);
              v63 = v279[1];
              if (!v204)
              {
                v63 = v279[1] + 1;
              }

              v279[1] = v63;
              if (!v62)
              {
                goto LABEL_74;
              }

              goto LABEL_104;
            }

            ++v279[1];
          }

LABEL_100:
          if ((v43 & 1) == 0)
          {
            v58 = v42;
          }

          v68 = *v58;
          v69 = *(v68 + 16);
          if (!v69)
          {
LABEL_74:
            HIDWORD(v280) += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v52);
            if (++v41 == v40)
            {
              goto LABEL_166;
            }

            continue;
          }

          break;
        }

        if (v48)
        {
          v70 = *(v68 + 24);
          v71 = 4 * v69;
          while (1)
          {
            v72 = *v70;
            if (~*v70 > *v70)
            {
              v72 = ~v72;
            }

            v73 = *(v49 + 8 * v72);
            if (*(v73 + 16) != 2 || **(v73 + 24) != *(*(v73 + 24) + 8))
            {
              break;
            }

            ++v70;
            v71 -= 4;
            if (!v71)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
LABEL_104:
          if (*(v48 + 16) == 2 && **(v48 + 24) == *(*(v48 + 24) + 8))
          {
            goto LABEL_74;
          }
        }

        ++HIDWORD(v277);
        goto LABEL_74;
      }

      v275 = v12;
      v74 = *(v12 + 48);
      v75 = *(v74 + 16);
      LODWORD(v270) = v75 + v270;
      if (v75 < 1)
      {
        goto LABEL_168;
      }

      v272 = v7;
      v273 = v9;
      v274 = v10;
      v76 = 0;
      v278 = *(v74 + 24);
      v77 = *(v74 + 48);
      v78 = *(v3 + 6);
      v79 = v78 + 7;
      v80 = *(v3 + 3);
      v81 = v80 + 7;
      do
      {
        v82 = (v79 + 8 * *(v278 + v76));
        if ((v78 & 1) == 0)
        {
          v82 = v282;
        }

        v83 = *v82;
        v84 = *(*v82 + 16);
        v85 = (v79 + 8 * *(v77 + 4 * v76));
        if (v84)
        {
          goto LABEL_128;
        }

        v86 = v282;
        if (v78)
        {
          v86 = (v79 + 8 * *(v77 + 4 * v76));
        }

        if (*(*v86 + 16))
        {
LABEL_128:
          ++v279[2];
        }

        v87 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v83 + 60) == 19)
        {
          v87 = *(v83 + 48);
        }

        v88 = v87[5];
        if (!v88)
        {
          v88 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v89 = *(v88 + 4);
        if (v89)
        {
          if (v80)
          {
            v91 = v88[3];
            v92 = 4 * v89;
            while (1)
            {
              v93 = *v91;
              if (~*v91 > *v91)
              {
                v93 = ~v93;
              }

              v94 = *(v81 + 8 * v93);
              if (*(v94 + 16) != 2 || **(v94 + 24) != *(*(v94 + 24) + 8))
              {
                break;
              }

              ++v91;
              v92 -= 4;
              if (!v92)
              {
                goto LABEL_143;
              }
            }
          }

          else if (*(v80 + 16) == 2)
          {
            v90 = **(v80 + 24) == *(*(v80 + 24) + 8);
            goto LABEL_145;
          }

          v90 = 0;
        }

        else
        {
LABEL_143:
          v90 = 1;
        }

LABEL_145:
        if ((v78 & 1) == 0)
        {
          v85 = v282;
        }

        v95 = *v85;
        v96 = *(*v85 + 60);
        v97 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (v96 == 19)
        {
          v97 = *(v95 + 48);
        }

        v98 = v97[5];
        if (!v98)
        {
          v98 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v99 = *(v98 + 4);
        if (v99)
        {
          if (v80)
          {
            v101 = v98[3];
            v102 = 4 * v99;
            while (1)
            {
              v103 = *v101;
              if (~*v101 > *v101)
              {
                v103 = ~v103;
              }

              v104 = *(v81 + 8 * v103);
              if (*(v104 + 16) != 2 || **(v104 + 24) != *(*(v104 + 24) + 8))
              {
                break;
              }

              ++v101;
              v102 -= 4;
              if (!v102)
              {
                goto LABEL_162;
              }
            }
          }

          else if (*(v80 + 16) == 2)
          {
            v100 = **(v80 + 24) == *(*(v80 + 24) + 8);
            if (operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v83))
            {
              goto LABEL_120;
            }

            goto LABEL_121;
          }

          v100 = 0;
          if (operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v83))
          {
LABEL_120:
            v279[0] += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v95);
          }
        }

        else
        {
LABEL_162:
          v100 = 1;
          if (operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v330, v330, v83))
          {
            goto LABEL_120;
          }
        }

LABEL_121:
        LODWORD(v281) = v281 + (v90 ^ v100);
        HIDWORD(v281) += !v90 && !v100;
        ++v76;
      }

      while (v76 != v75);
LABEL_166:
      a2 = v276;
      v9 = v273;
      v10 = v274;
LABEL_167:
      v3 = this;
      v7 = v272;
      v11 = v268;
LABEL_168:
      v12 = v275;
LABEL_169:
      if (*(v12 + 60) == 12)
      {
LABEL_175:
        v106 = *(*(v12 + 48) + 16);
        if (v106 < 4)
        {
          goto LABEL_179;
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v300, v331, &v313);
        if (v315 == 1)
        {
          v107 = v314;
          *v314 = v331[0].__r_.__value_.__r.__words[0];
          v107[2] = 0;
        }

        *(v314 + 2) += v106;
        if (*(v12 + 60) == 12)
        {
LABEL_179:
          v108 = *(v12 + 48);
          if (*(v108 + 16) >= 2 && *(v108 + 64) >= 3)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v298, v331, &v313);
            if (v315 == 1)
            {
              v109 = v314;
              *v314 = v331[0].__r_.__value_.__r.__words[0];
              v109[2] = 0;
            }

            ++*(v314 + 2);
          }
        }
      }

LABEL_7:
      if (++v7 == v11)
      {
        goto LABEL_184;
      }
    }
  }

  HIWORD(v277) = 0;
  v280 = 0;
  memset(v279, 0, sizeof(v279));
  v281 = 0;
LABEL_184:
  v293 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::EmptyNode(void)::empty_node;
  v294 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::EmptyNode(void)::empty_node;
  v295 = 0;
  v290 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v291 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v292 = 0;
  v110 = *(v3 + 3);
  if (v110)
  {
    v111 = (v110 + 7);
  }

  else
  {
    v111 = v3 + 24;
  }

  v278 = (v3 + 24);
  v112 = *(v3 + 8);
  if (v112)
  {
    LODWORD(v282) = 0;
    v113 = &v111[8 * v112];
    do
    {
      v114 = *(*v111 + 16);
      v115 = *(*v111 + 24);
      if (v114 == 2 && (v116 = *v115, *v115 == *(v115 + 8)))
      {
        v313 = *v115;
        if (!v295)
        {
          operator new();
        }

        LODWORD(v282) = v282 + 1;
        v117 = v293;
        v118 = *(v293 + 10);
        if (!*(v293 + 10))
        {
LABEL_202:
          LODWORD(v120) = 0;
          goto LABEL_203;
        }

        while (1)
        {
          v120 = 0;
          while (*&v117[8 * v120 + 16] < v116)
          {
            if (v118 == ++v120)
            {
              LODWORD(v120) = v118;
              break;
            }
          }

LABEL_203:
          if (v117[11])
          {
            break;
          }

          v119 = &v117[8 * v120 + 256];
          v117 = *v119;
          v118 = *(*v119 + 10);
          if (!*(*v119 + 10))
          {
            goto LABEL_202;
          }
        }

        v121 = v120;
        v122 = v117;
        while (v120 == v122[10])
        {
          LODWORD(v120) = v122[8];
          v122 = *v122;
          if (v122[11])
          {
            goto LABEL_189;
          }
        }

        if (v116 < *&v122[8 * v120 + 16])
        {
LABEL_189:
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::internal_emplace<long long>(&v293, v117, v121, &v313);
        }
      }

      else
      {
        operations_research::Domain::FromFlatSpanOfIntervals(v115, v114, v331, v5);
        v330[0].__r_.__value_.__r.__words[0] = v331;
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::insert_unique<operations_research::Domain,std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>(&v290, v331, &std::piecewise_construct, v330, &v313);
        ++*&v313[32 * v314 + 40];
        if (v331[0].__r_.__value_.__s.__data_[0])
        {
          operator delete(v331[0].__r_.__value_.__l.__size_);
        }
      }

      v111 += 8;
    }

    while (v111 != v113);
  }

  else
  {
    LODWORD(v282) = 0;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  explicit = atomic_load_explicit(&qword_281A21620, memory_order_acquire);
  if (explicit)
  {
    if (explicit)
    {
      goto LABEL_215;
    }
  }

  else if (absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_fingerprint_model))
  {
LABEL_215:
    v313 = operations_research::sat::FingerprintModel(v3, 0xA5B85C5E198ED849);
    v314 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
    absl::lts_20240722::str_format_internal::FormatPack(" (model_fingerprint: %#x)", 25, &v313, 1uLL, &v287);
    v124 = *(v3 + 4);
    if (v124)
    {
      goto LABEL_225;
    }

    goto LABEL_219;
  }

  v289 = 0;
  LOBYTE(v287) = 0;
  v124 = *(v3 + 4);
  if (v124)
  {
LABEL_225:
    v131 = *(v3 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v132 = *(v131 + 23);
    v133 = *(v131 + 8);
    if ((v132 & 0x80u) != 0)
    {
      v131 = *v131;
      v132 = v133;
    }

    v134 = v289;
    v135 = &v287;
    if ((v289 & 0x80u) != 0)
    {
      v135 = v287;
      v134 = v288;
    }

    v313 = "optimization model '";
    v314 = 20;
    *&v315 = v131;
    *(&v315 + 1) = v132;
    v316 = "':";
    v317 = 2;
    v318 = v135;
    v319 = v134;
    v320 = "\n";
    v321 = 1;
    absl::lts_20240722::strings_internal::AppendPieces(a2, &v313, 5);
    goto LABEL_230;
  }

LABEL_219:
  if ((v124 & 8) != 0)
  {
    goto LABEL_225;
  }

  v125 = *(v3 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v126 = *(v125 + 23);
  v127 = *(v125 + 8);
  if ((v126 & 0x80u) != 0)
  {
    v125 = *v125;
    v126 = v127;
  }

  v128 = v289;
  v129 = &v287;
  if ((v289 & 0x80u) != 0)
  {
    v129 = v287;
    v128 = v288;
  }

  v313 = "satisfaction model '";
  v314 = 20;
  *&v315 = v125;
  *(&v315 + 1) = v126;
  v316 = "':";
  v317 = 2;
  v318 = v129;
  v319 = v128;
  v320 = "\n";
  v321 = 1;
  absl::lts_20240722::strings_internal::AppendPieces(a2, &v313, 5);
LABEL_230:
  v137 = *(v3 + 9);
  v136 = v3 + 72;
  v138 = (v137 + 7);
  if (v137)
  {
    v139 = v138;
  }

  else
  {
    v139 = v136;
  }

  v140 = *(v136 + 2);
  if (v140)
  {
    v141 = 8 * v140;
    while (1)
    {
      v142 = *v139;
      v143 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(*v139 + 16) + *(*v139 + 48)), &v331[0].__r_.__value_.__s.__data_[16], v130);
      v331[0].__r_.__value_.__r.__words[0] = &v331[0].__r_.__value_.__r.__words[2];
      v331[0].__r_.__value_.__l.__size_ = v143 - &v331[0].__r_.__value_.__r.__words[2];
      operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(*(v142 + 64), v330);
      v144 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
      v145 = *&v330[0].__r_.__value_.__l.__data_;
      operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_DomainReductionStrategy>(*(v142 + 68), __p);
      v146 = v330;
      if ((v144 & 0x80u) == 0)
      {
        v147 = v144;
      }

      else
      {
        v147 = *(&v145 + 1);
        v146 = v145;
      }

      v313 = "Search strategy: on ";
      v314 = 20;
      v315 = *&v331[0].__r_.__value_.__l.__data_;
      v316 = " variables, ";
      v317 = 12;
      v318 = v146;
      v319 = v147;
      v320 = ", ";
      v321 = 2;
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      v149 = __p;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p[0].__r_.__value_.__l.__size_;
        v149 = __p[0].__r_.__value_.__r.__words[0];
      }

      v322 = v149;
      v323 = size;
      v324 = "\n";
      v325 = 1;
      a2 = v276;
      absl::lts_20240722::strings_internal::AppendPieces(v276, &v313, 7);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
        if ((SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_236;
        }

LABEL_244:
        operator delete(v330[0].__r_.__value_.__l.__data_);
        v139 += 8;
        v141 -= 8;
        if (!v141)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_244;
        }

LABEL_236:
        v139 += 8;
        v141 -= 8;
        if (!v141)
        {
          break;
        }
      }
    }
  }

  v150 = *(this + 4);
  if ((v150 & 1) == 0)
  {
    v151 = 0;
    v152 = 0;
    if ((v150 & 8) != 0)
    {
      goto LABEL_247;
    }

LABEL_284:
    __src[0] = 0;
    __src[1] = 0;
    v286 = 0;
    if (v152 < 1)
    {
      goto LABEL_256;
    }

LABEL_285:
    v313 = "#BOOLs: ";
    v314 = 8;
    operations_research::sat::FormatCounter(v152, v130, __p);
    v175 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v176 = __p;
    }

    else
    {
      v176 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v175 = __p[0].__r_.__value_.__l.__size_;
    }

    v331[0].__r_.__value_.__r.__words[0] = v176;
    v331[0].__r_.__value_.__l.__size_ = v175;
    absl::lts_20240722::StrCat(&v313, v331, v330);
    operator new();
  }

  v159 = *(this + 16);
  v160 = *(v159 + 16);
  if (!v160)
  {
    goto LABEL_262;
  }

  v161 = *v278;
  if (*v278)
  {
    v152 = 0;
    v169 = *(v159 + 24);
    v170 = v161 + 7;
    v171 = 4 * v160;
    do
    {
      v172 = *v169;
      if (~*v169 > *v169)
      {
        v172 = ~v172;
      }

      v173 = *(v170 + 8 * v172);
      if (*(v173 + 16) == 2)
      {
        v174 = *(v173 + 24);
        if (!*v174 && v174[1] == 1)
        {
          ++v152;
        }
      }

      ++v169;
      v171 -= 4;
    }

    while (v171);
LABEL_283:
    v151 = v160 - v152;
    if ((v150 & 8) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_247;
  }

  if (*(v161 + 16) != 2)
  {
    v152 = 0;
    goto LABEL_283;
  }

  v162 = *(v161 + 24);
  if (*v162)
  {
LABEL_262:
    v152 = 0;
    v151 = *(v159 + 16);
    if ((v150 & 8) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_247;
  }

  if (v162[1] == 1)
  {
    v152 = *(v159 + 16);
  }

  else
  {
    v152 = 0;
  }

  v151 = v160 - v152;
  if ((v150 & 8) == 0)
  {
    goto LABEL_284;
  }

LABEL_247:
  v153 = *(this + 19);
  v154 = *(v153 + 16);
  if (v154)
  {
    v155 = *v278;
    if (*v278)
    {
      v163 = *(v153 + 24);
      v164 = v155 + 7;
      v165 = 4 * v154;
      do
      {
        v166 = *v163;
        if (~*v163 > *v163)
        {
          v166 = ~v166;
        }

        v167 = *(v164 + 8 * v166);
        if (*(v167 + 16) == 2)
        {
          v168 = *(v167 + 24);
          if (!*v168 && v168[1] == 1)
          {
            ++v152;
          }
        }

        ++v163;
        v165 -= 4;
      }

      while (v165);
    }

    else if (*(v155 + 16) == 2)
    {
      v156 = *(v155 + 24);
      if (!*v156)
      {
        if (v156[1] == 1)
        {
          v157 = v154;
        }

        else
        {
          v157 = 0;
        }

        v152 += v157;
      }
    }
  }

  v151 = v154 - v152;
  __src[0] = 0;
  __src[1] = 0;
  v286 = 0;
  if (v152 >= 1)
  {
    goto LABEL_285;
  }

LABEL_256:
  v158 = 0;
  if (v151 >= 1)
  {
    v313 = "#ints: ";
    v314 = 7;
    operations_research::sat::FormatCounter(v151, v130, __p);
    v177 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v178 = __p;
    }

    else
    {
      v178 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v177 = __p[0].__r_.__value_.__l.__size_;
    }

    v331[0].__r_.__value_.__r.__words[0] = v178;
    v331[0].__r_.__value_.__l.__size_ = v177;
    absl::lts_20240722::StrCat(&v313, v331, v330);
    operator new();
  }

  v179 = *(this + 4);
  if (v179)
  {
    v313 = " (";
    v314 = 2;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(__src[0], 0, " ", 1uLL, &v283);
    v182 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
    if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v183 = &v283;
    }

    else
    {
      v183 = v283.__r_.__value_.__r.__words[0];
    }

    if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v182 = v283.__r_.__value_.__l.__size_;
    }

    v331[0].__r_.__value_.__r.__words[0] = v183;
    v331[0].__r_.__value_.__l.__size_ = v182;
    v330[0].__r_.__value_.__r.__words[0] = " in objective)";
    v330[0].__r_.__value_.__l.__size_ = 14;
    absl::lts_20240722::StrCat(&v313, v331, v330, &v284);
  }

  else
  {
    if ((v179 & 8) == 0)
    {
      *(&v284.__r_.__value_.__s + 23) = 0;
      v284.__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_314;
    }

    __p[0].__r_.__value_.__r.__words[0] = " (";
    __p[0].__r_.__value_.__l.__size_ = 2;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(__src[0], 0, " ", 1uLL, &v283);
    v180 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
    if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = &v283;
    }

    else
    {
      v181 = v283.__r_.__value_.__r.__words[0];
    }

    if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v180 = v283.__r_.__value_.__l.__size_;
    }

    v311[0].__r_.__value_.__r.__words[0] = v181;
    v311[0].__r_.__value_.__l.__size_ = v180;
    __dst[0].__r_.__value_.__r.__words[0] = " in floating point objective)";
    __dst[0].__r_.__value_.__l.__size_ = 29;
    absl::lts_20240722::StrCat(&__p[0].__r_.__value_.__l.__data_, v311, __dst, &v284);
  }

  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

LABEL_314:
  v313 = "#Variables: ";
  v314 = 12;
  operations_research::sat::FormatCounter(*(this + 8), v130, v311);
  v184 = HIBYTE(v311[0].__r_.__value_.__r.__words[2]);
  if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v185 = v311;
  }

  else
  {
    v185 = v311[0].__r_.__value_.__r.__words[0];
  }

  if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v184 = v311[0].__r_.__value_.__l.__size_;
  }

  v331[0].__r_.__value_.__r.__words[0] = v185;
  v331[0].__r_.__value_.__l.__size_ = v184;
  v186 = HIBYTE(v284.__r_.__value_.__r.__words[2]);
  v187 = &v284;
  if ((v284.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v186 = v284.__r_.__value_.__l.__size_;
    v187 = v284.__r_.__value_.__r.__words[0];
  }

  v330[0].__r_.__value_.__r.__words[0] = v187;
  v330[0].__r_.__value_.__l.__size_ = v186;
  __p[0].__r_.__value_.__r.__words[0] = "\n";
  __p[0].__r_.__value_.__l.__size_ = 1;
  absl::lts_20240722::StrAppend(a2, &v313, v331, v330, __p);
  if ((SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v284.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_323;
    }

LABEL_326:
    operator delete(v284.__r_.__value_.__l.__data_);
    v188 = __src[0];
    if (!__src[0])
    {
      goto LABEL_332;
    }

    goto LABEL_330;
  }

  operator delete(v311[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_326;
  }

LABEL_323:
  v188 = __src[0];
  if (!__src[0])
  {
    goto LABEL_332;
  }

LABEL_330:
  while (v158 != v188)
  {
    v189 = *(v158 - 1);
    v158 -= 3;
    if (v189 < 0)
    {
      operator delete(*v158);
    }
  }

  operator delete(v188);
LABEL_332:
  operations_research::Domain::Domain(&v313, 0, 1);
  v191 = v290;
  v192 = *(v290 + 10);
  if (*(v290 + 10))
  {
    goto LABEL_335;
  }

  while (!*(v191 + 11))
  {
    v191 = v191[v192 + 30];
    v192 = *(v191 + 10);
    if (*(v191 + 10))
    {
LABEL_335:
      v193 = 0;
      do
      {
        v194 = (v192 + v193) >> 1;
        if (operations_research::Domain::operator<(&v191[4 * v194 + 2], &v313))
        {
          v193 = v194 + 1;
        }

        else
        {
          v192 = (v192 + v193) >> 1;
        }
      }

      while (v193 != v192);
    }
  }

  while (v192 == *(v191 + 10))
  {
    LODWORD(v192) = *(v191 + 8);
    v191 = *v191;
    if (*(v191 + 11))
    {
      goto LABEL_345;
    }
  }

  if (operations_research::Domain::operator<(&v313, &v191[4 * v192 + 2]))
  {
LABEL_345:
    *(v291 + 10);
    v195 = 0;
    if ((v313 & 1) == 0)
    {
      goto LABEL_347;
    }

    goto LABEL_346;
  }

  v204 = v191 == v291 && v192 == *(v291 + 10);
  v195 = !v204;
  if (v313)
  {
LABEL_346:
    operator delete(v314);
  }

LABEL_347:
  if (v195)
  {
    v196 = v331;
    operations_research::Domain::Domain(v331, 0, 1);
    v330[0].__r_.__value_.__r.__words[0] = v331;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::insert_unique<operations_research::Domain,std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>(&v290, v331, &std::piecewise_construct, v330, &v313);
    v198 = *&v313[32 * v314 + 40];
    if (v331[0].__r_.__value_.__s.__data_[0])
    {
      operator delete(v331[0].__r_.__value_.__l.__size_);
    }

    operations_research::sat::FormatCounter(v198, v197, v331);
    if ((v331[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v199 = HIBYTE(v331[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v199 = v331[0].__r_.__value_.__l.__size_;
      v196 = v331[0].__r_.__value_.__r.__words[0];
    }

    operations_research::Domain::Domain(__p, 0, 1);
    operations_research::Domain::ToString(__p, v330);
    v200 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
    if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v201 = v330;
    }

    else
    {
      v201 = v330[0].__r_.__value_.__r.__words[0];
    }

    if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v200 = v330[0].__r_.__value_.__l.__size_;
    }

    v313 = "  - ";
    v314 = 4;
    *&v315 = v196;
    *(&v315 + 1) = v199;
    v316 = " Booleans in ";
    v317 = 13;
    v318 = v201;
    v319 = v200;
    v320 = "\n";
    v321 = 1;
    absl::lts_20240722::strings_internal::CatPieces(&v313, 5, v311);
    if (SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v330[0].__r_.__value_.__l.__data_);
      if ((__p[0].__r_.__value_.__s.__data_[0] & 1) == 0)
      {
LABEL_360:
        if ((SHIBYTE(v331[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_361:
          if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v202 = v311;
          }

          else
          {
            v202 = v311[0].__r_.__value_.__r.__words[0];
          }

          if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v203 = HIBYTE(v311[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v203 = v311[0].__r_.__value_.__l.__size_;
          }

          if (v203 > 0x68)
          {
            v313 = v202;
            v314 = 50;
            v331[0].__r_.__value_.__r.__words[0] = " ... ";
            v331[0].__r_.__value_.__l.__size_ = 5;
            v330[0].__r_.__value_.__r.__words[0] = &v202[-2] + v203 - 2;
            v330[0].__r_.__value_.__l.__size_ = 50;
            absl::lts_20240722::StrCat(&v313, v331, v330, __dst);
          }

          else
          {
            if (v203 >= 0x17)
            {
              operator new();
            }

            *(&__dst[0].__r_.__value_.__s + 23) = v203;
            if (v203)
            {
              memmove(__dst, v202, v203);
            }

            __dst[0].__r_.__value_.__s.__data_[v203] = 0;
          }

          v205 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
          v206 = __dst;
          if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v205 = __dst[0].__r_.__value_.__l.__size_;
            v206 = __dst[0].__r_.__value_.__r.__words[0];
          }

          __p[0].__r_.__value_.__r.__words[0] = v206;
          __p[0].__r_.__value_.__l.__size_ = v205;
          a2 = v276;
          absl::lts_20240722::StrAppend(v276, __p);
          if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst[0].__r_.__value_.__l.__data_);
          }

          operations_research::Domain::Domain(v330, 0, 1);
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::equal_range<operations_research::Domain>(&v290, v330, &v313);
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::erase_range(&v290, v313, v314, v315, *(&v315 + 1), v331);
          if (v330[0].__r_.__value_.__s.__data_[0])
          {
            operator delete(v330[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v311[0].__r_.__value_.__l.__data_);
          }

          goto LABEL_394;
        }

LABEL_382:
        operator delete(v331[0].__r_.__value_.__l.__data_);
        goto LABEL_361;
      }
    }

    else if ((__p[0].__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      goto LABEL_360;
    }

    operator delete(__p[0].__r_.__value_.__l.__size_);
    if ((SHIBYTE(v331[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_361;
    }

    goto LABEL_382;
  }

LABEL_394:
  v208 = v291;
  v207 = v292;
  v209 = *v290;
  v210 = *(v291 + 10);
  if (*(v291 + 10))
  {
    v211 = 1;
  }

  else
  {
    v211 = *v290 != v291;
  }

  if (v292 <= 0x63)
  {
    LODWORD(v278) = *(v291 + 10);
    if (v211)
    {
      v212 = 0;
      do
      {
        v213 = &v209[32 * v212];
        operations_research::sat::FormatCounter(*(v213 + 10), v190, v331);
        v214 = HIBYTE(v331[0].__r_.__value_.__r.__words[2]);
        v215 = *&v331[0].__r_.__value_.__l.__data_;
        operations_research::Domain::ToString((v213 + 16), v330);
        v216 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
        v217 = v331;
        if ((v214 & 0x80u) == 0)
        {
          v218 = v214;
        }

        else
        {
          v218 = *(&v215 + 1);
          v217 = v215;
        }

        v219 = v330;
        if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v216 = v330[0].__r_.__value_.__l.__size_;
          v219 = v330[0].__r_.__value_.__r.__words[0];
        }

        v313 = "  - ";
        v314 = 4;
        *&v315 = v217;
        *(&v315 + 1) = v218;
        v316 = " in ";
        v317 = 4;
        v318 = v219;
        v319 = v216;
        v320 = "\n";
        v321 = 1;
        absl::lts_20240722::strings_internal::CatPieces(&v313, 5, v311);
        if (SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v330[0].__r_.__value_.__l.__data_);
          if ((SHIBYTE(v331[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_407;
          }
        }

        else if ((SHIBYTE(v331[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_407;
        }

        operator delete(v331[0].__r_.__value_.__l.__data_);
LABEL_407:
        if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v220 = v311;
        }

        else
        {
          v220 = v311[0].__r_.__value_.__r.__words[0];
        }

        if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v221 = HIBYTE(v311[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v221 = v311[0].__r_.__value_.__l.__size_;
        }

        if (v221 > 0x68)
        {
          v313 = v220;
          v314 = 50;
          v331[0].__r_.__value_.__r.__words[0] = " ... ";
          v331[0].__r_.__value_.__l.__size_ = 5;
          v330[0].__r_.__value_.__r.__words[0] = &v220[-2] + v221 - 2;
          v330[0].__r_.__value_.__l.__size_ = 50;
          absl::lts_20240722::StrCat(&v313, v331, v330, __dst);
          a2 = v276;
        }

        else
        {
          if (v221 >= 0x17)
          {
            operator new();
          }

          *(&__dst[0].__r_.__value_.__s + 23) = v221;
          if (v221)
          {
            memmove(__dst, v220, v221);
          }

          a2 = v276;
          __dst[0].__r_.__value_.__s.__data_[v221] = 0;
        }

        v222 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
        v223 = __dst;
        if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v222 = __dst[0].__r_.__value_.__l.__size_;
          v223 = __dst[0].__r_.__value_.__r.__words[0];
        }

        __p[0].__r_.__value_.__r.__words[0] = v223;
        __p[0].__r_.__value_.__l.__size_ = v222;
        absl::lts_20240722::StrAppend(a2, __p);
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst[0].__r_.__value_.__l.__data_);
          if ((SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_427:
            if (v209[11])
            {
              goto LABEL_428;
            }

            goto LABEL_435;
          }
        }

        else if ((SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_427;
        }

        operator delete(v311[0].__r_.__value_.__l.__data_);
        if (v209[11])
        {
LABEL_428:
          if (++v212 == v209[10])
          {
            v224 = v209;
            while (1)
            {
              v225 = *v224;
              if (*(*v224 + 11))
              {
                break;
              }

              v226 = v224[8];
              v224 = *v224;
              if (v226 != v225[10])
              {
                v209 = v225;
                v212 = v226;
                goto LABEL_438;
              }
            }
          }

          continue;
        }

LABEL_435:
        v227 = &v209[8 * (v212 + 1) + 240];
        do
        {
          v209 = *v227;
          v228 = *(*v227 + 11);
          v227 = *v227 + 240;
        }

        while (!v228);
        v212 = 0;
LABEL_438:
        ;
      }

      while (v209 != v208 || v212 != v278);
    }

LABEL_466:
    v252 = v282;
    if (v282 < 1)
    {
      goto LABEL_494;
    }

    goto LABEL_467;
  }

  v229 = 0;
  if (v211)
  {
    v230 = 0;
    v231 = 0x8000000000000000;
    v232 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v233 = &v209[32 * v230];
      v234 = operations_research::Domain::Min((v233 + 16));
      if (v234 < v232)
      {
        v232 = v234;
      }

      v235 = operations_research::Domain::Max((v233 + 16));
      if (v231 <= v235)
      {
        v231 = v235;
      }

      if (v229 <= (*(v233 + 2) >> 1))
      {
        v229 = (*(v233 + 2) >> 1);
      }

      if (v209[11])
      {
        if (++v230 == v209[10])
        {
          v236 = v209;
          while (1)
          {
            v237 = *v236;
            if (*(*v236 + 11))
            {
              break;
            }

            v238 = v236[8];
            v236 = *v236;
            if (v238 != v237[10])
            {
              v209 = v237;
              v230 = v238;
              break;
            }
          }
        }
      }

      else
      {
        v239 = &v209[8 * (v230 + 1) + 240];
        do
        {
          v209 = *v239;
          v240 = *(*v239 + 11);
          v239 = *v239 + 240;
        }

        while (!v240);
        v230 = 0;
      }
    }

    while (v209 != v208 || v230 != v210);
    v207 = v292;
  }

  else
  {
    v232 = 0x7FFFFFFFFFFFFFFFLL;
    v231 = 0x8000000000000000;
  }

  operations_research::sat::FormatCounter(v207, v190, v311);
  v241 = HIBYTE(v311[0].__r_.__value_.__r.__words[2]);
  v242 = *&v311[0].__r_.__value_.__l.__data_;
  v244 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v232, &__p[0].__r_.__value_.__r.__words[2], v243);
  __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
  __p[0].__r_.__value_.__l.__size_ = v244 - &__p[0].__r_.__value_.__r.__words[2];
  v246 = v311;
  if ((v241 & 0x80u) == 0)
  {
    v247 = v241;
  }

  else
  {
    v247 = *(&v242 + 1);
    v246 = v242;
  }

  v313 = "  - ";
  v314 = 4;
  *&v315 = v246;
  *(&v315 + 1) = v247;
  v316 = " different domains in [";
  v317 = 23;
  v318 = &__p[0].__r_.__value_.__r.__words[2];
  v319 = v244 - &__p[0].__r_.__value_.__r.__words[2];
  v320 = ",";
  v321 = 1;
  v248 = v231;
  a2 = v276;
  v249 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v248, &v331[0].__r_.__value_.__r.__words[2], v245);
  v331[0].__r_.__value_.__r.__words[0] = &v331[0].__r_.__value_.__r.__words[2];
  v331[0].__r_.__value_.__l.__size_ = v249 - &v331[0].__r_.__value_.__r.__words[2];
  v322 = &v331[0].__r_.__value_.__r.__words[2];
  v323 = v249 - &v331[0].__r_.__value_.__r.__words[2];
  v324 = "] with a largest complexity of ";
  v325 = 31;
  v251 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v229, &v330[0].__r_.__value_.__r.__words[2], v250);
  v330[0].__r_.__value_.__r.__words[0] = &v330[0].__r_.__value_.__r.__words[2];
  v330[0].__r_.__value_.__l.__size_ = v251 - &v330[0].__r_.__value_.__r.__words[2];
  v326 = &v330[0].__r_.__value_.__s.__data_[16];
  v327 = v251 - &v330[0].__r_.__value_.__r.__words[2];
  v328 = ".\n";
  v329 = 2;
  absl::lts_20240722::strings_internal::AppendPieces(v276, &v313, 9);
  if ((SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_466;
  }

  operator delete(v311[0].__r_.__value_.__l.__data_);
  v252 = v282;
  if (v282 < 1)
  {
    goto LABEL_494;
  }

LABEL_467:
  v253 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v252, &v331[0].__r_.__value_.__s.__data_[16], v190);
  v331[0].__r_.__value_.__r.__words[0] = &v331[0].__r_.__value_.__r.__words[2];
  v331[0].__r_.__value_.__l.__size_ = v253 - &v331[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::strings_internal::JoinAlgorithm<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>> const,long long const&,long long const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(*v293, 0, v294, v294->__r_.__value_.__s.__data_[10], ",", 1uLL, v330);
  v254 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
  if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v255 = v330;
  }

  else
  {
    v255 = v330[0].__r_.__value_.__r.__words[0];
  }

  if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v254 = v330[0].__r_.__value_.__l.__size_;
  }

  v313 = "  - ";
  v314 = 4;
  v315 = *&v331[0].__r_.__value_.__l.__data_;
  v316 = " constants in {";
  v317 = 15;
  v318 = v255;
  v319 = v254;
  v320 = "} \n";
  v321 = 3;
  absl::lts_20240722::strings_internal::CatPieces(&v313, 5, v311);
  if (SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v330[0].__r_.__value_.__l.__data_);
  }

  if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v256 = v311;
  }

  else
  {
    v256 = v311[0].__r_.__value_.__r.__words[0];
  }

  if ((v311[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v257 = HIBYTE(v311[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v257 = v311[0].__r_.__value_.__l.__size_;
  }

  if (v257 > 0x68)
  {
    v313 = v256;
    v314 = 50;
    v331[0].__r_.__value_.__r.__words[0] = " ... ";
    v331[0].__r_.__value_.__l.__size_ = 5;
    v330[0].__r_.__value_.__r.__words[0] = &v256[-2] + v257 - 2;
    v330[0].__r_.__value_.__l.__size_ = 50;
    absl::lts_20240722::StrCat(&v313, v331, v330, __dst);
  }

  else
  {
    if (v257 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v257;
    if (v257)
    {
      memmove(__dst, v256, v257);
    }

    __dst[0].__r_.__value_.__s.__data_[v257] = 0;
  }

  v258 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  v259 = __dst;
  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v258 = __dst[0].__r_.__value_.__l.__size_;
    v259 = __dst[0].__r_.__value_.__r.__words[0];
  }

  __p[0].__r_.__value_.__r.__words[0] = v259;
  __p[0].__r_.__value_.__l.__size_ = v258;
  a2 = v276;
  absl::lts_20240722::StrAppend(v276, __p);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_530;
    }

LABEL_494:
    memset(v311, 0, 24);
    v260 = *(&v308 + 1);
    if (*(&v308 + 1) >= 2uLL)
    {
      goto LABEL_495;
    }

    goto LABEL_497;
  }

  if ((SHIBYTE(v311[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_494;
  }

LABEL_530:
  operator delete(v311[0].__r_.__value_.__l.__data_);
  memset(v311, 0, 24);
  v260 = *(&v308 + 1);
  if (*(&v308 + 1) >= 2uLL)
  {
LABEL_495:
    if (v260 < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

LABEL_497:
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(0, 0, &v313, 0, 1);
  v262 = v311[0].__r_.__value_.__l.__size_;
  v261 = v311[0].__r_.__value_.__r.__words[0];
  absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(v311[0].__r_.__value_.__l.__data_, v311[0].__r_.__value_.__l.__size_, "\n", 1uLL, v331);
  v263 = HIBYTE(v331[0].__r_.__value_.__r.__words[2]);
  if ((v331[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v264 = v331;
  }

  else
  {
    v264 = v331[0].__r_.__value_.__r.__words[0];
  }

  if ((v331[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v263 = v331[0].__r_.__value_.__l.__size_;
  }

  v313 = v264;
  v314 = v263;
  absl::lts_20240722::StrAppend(a2, &v313);
  if (SHIBYTE(v331[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v331[0].__r_.__value_.__l.__data_);
  }

  if (v261)
  {
    while (v262 != v261)
    {
      v265 = *(v262 - 1);
      v262 -= 3;
      if (v265 < 0)
      {
        operator delete(*v262);
      }
    }

    operator delete(v261);
  }

  if (v289 < 0)
  {
    operator delete(v287);
    if (!v292)
    {
      goto LABEL_514;
    }

    goto LABEL_513;
  }

  if (v292)
  {
LABEL_513:
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(v290);
  }

LABEL_514:
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::clear(&v293);
  if (v296 >= 2)
  {
    operator delete((v297 - (BYTE8(v296) & 1) - 8));
    if (v298 < 2)
    {
LABEL_516:
      if (v300 < 2)
      {
        goto LABEL_517;
      }

      goto LABEL_524;
    }
  }

  else if (v298 < 2)
  {
    goto LABEL_516;
  }

  operator delete((v299 - (BYTE8(v298) & 1) - 8));
  if (v300 < 2)
  {
LABEL_517:
    if (v302 < 2)
    {
      goto LABEL_518;
    }

    goto LABEL_525;
  }

LABEL_524:
  operator delete((v301 - (BYTE8(v300) & 1) - 8));
  if (v302 < 2)
  {
LABEL_518:
    if (v304 < 2)
    {
      goto LABEL_519;
    }

    goto LABEL_526;
  }

LABEL_525:
  operator delete((v303 - (BYTE8(v302) & 1) - 8));
  if (v304 < 2)
  {
LABEL_519:
    if (v306 < 2)
    {
      goto LABEL_520;
    }

LABEL_527:
    operator delete((v307 - (BYTE8(v306) & 1) - 8));
    if (v308 < 2)
    {
      goto LABEL_521;
    }

    goto LABEL_528;
  }

LABEL_526:
  operator delete((v305 - (BYTE8(v304) & 1) - 8));
  if (v306 >= 2)
  {
    goto LABEL_527;
  }

LABEL_520:
  if (v308 < 2)
  {
LABEL_521:
    v266 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_528:
  operator delete((v309 - (BYTE8(v308) & 1) - 8));
  v267 = *MEMORY[0x277D85DE8];
}

void sub_23CAEC6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, unsigned __int8 **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v69 + 23) < 0)
  {
    operator delete(*v69);
  }

  absl::lts_20240722::btree_map<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>>::~btree_map(&a37);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::clear(&a40);
  if (a43 >= 2)
  {
    operator delete((a45 - (a44 & 1) - 8));
    if (a47 < 2)
    {
LABEL_5:
      if (a51 < 2)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if (a47 < 2)
  {
    goto LABEL_5;
  }

  operator delete((a49 - (a48 & 1) - 8));
  if (a51 < 2)
  {
LABEL_6:
    if (a55 < 2)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete((a53 - (a52 & 1) - 8));
  if (a55 < 2)
  {
LABEL_7:
    if (a59 < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete((a57 - (a56 & 1) - 8));
  if (a59 < 2)
  {
LABEL_8:
    if (a63 < 2)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete((a61 - (a60 & 1) - 8));
  if (a63 < 2)
  {
LABEL_9:
    if (a67 < 2)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    operator delete((a69 - (a68 & 1) - 8));
    _Unwind_Resume(a1);
  }

LABEL_16:
  operator delete((a65 - (a64 & 1) - 8));
  if (a67 < 2)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

BOOL operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 60) == 19)
  {
    v3 = *(a3 + 16);
    if (!v3)
    {
      goto LABEL_13;
    }

    v4 = *(*a1 + 24);
    if (v4)
    {
      v5 = *(a3 + 24);
      v6 = v4 + 7;
      v7 = 4 * v3;
      while (1)
      {
        v8 = *v5;
        if (~*v5 > *v5)
        {
          v8 = ~v8;
        }

        v9 = *(v6 + 8 * v8);
        if (*(v9 + 16) != 2 || **(v9 + 24) != *(*(v9 + 24) + 8))
        {
          return 0;
        }

        ++v5;
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_13;
        }
      }
    }

    if (*(v4 + 16) == 2 && **(v4 + 24) == *(*(v4 + 24) + 8))
    {
LABEL_13:
      v10 = *(a3 + 48);
      v11 = v10[3];
      if (!v11)
      {
        v11 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v12 = *(v11 + 4);
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = *(*a2 + 24);
      if (v13)
      {
        v14 = v11[3];
        v15 = v13 + 7;
        v16 = 4 * v12;
        while (1)
        {
          v17 = *v14;
          if (~*v14 > *v14)
          {
            v17 = ~v17;
          }

          v18 = *(v15 + 8 * v17);
          if (*(v18 + 16) != 2 || **(v18 + 24) != *(*(v18 + 24) + 8))
          {
            return 0;
          }

          ++v14;
          v16 -= 4;
          if (!v16)
          {
            goto LABEL_26;
          }
        }
      }

      if (*(v13 + 16) == 2 && **(v13 + 24) == *(*(v13 + 24) + 8))
      {
LABEL_26:
        v19 = v10[5];
        if (!v19)
        {
          v19 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v20 = *(v19 + 4);
        if (!v20)
        {
          goto LABEL_39;
        }

        v21 = *(*a2 + 24);
        if (v21)
        {
          v22 = v19[3];
          v23 = v21 + 7;
          v24 = 4 * v20;
          while (1)
          {
            v25 = *v22;
            if (~*v22 > *v22)
            {
              v25 = ~v25;
            }

            v26 = *(v23 + 8 * v25);
            if (*(v26 + 16) != 2 || **(v26 + 24) != *(*(v26 + 24) + 8))
            {
              return 0;
            }

            ++v22;
            v24 -= 4;
            if (!v24)
            {
              goto LABEL_39;
            }
          }
        }

        if (*(v21 + 16) == 2 && **(v21 + 24) == *(*(v21 + 24) + 8))
        {
LABEL_39:
          v27 = v10[4];
          if (!v27)
          {
            v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v28 = *(v27 + 4);
          if (!v28)
          {
            return 1;
          }

          v29 = *(*a2 + 24);
          if (v29)
          {
            v31 = v27[3];
            v32 = v29 + 7;
            v33 = 4 * v28;
            result = 1;
            while (1)
            {
              v34 = *v31;
              if (~*v31 > *v31)
              {
                v34 = ~v34;
              }

              v35 = *(v32 + 8 * v34);
              if (*(v35 + 16) != 2 || **(v35 + 24) != *(*(v35 + 24) + 8))
              {
                break;
              }

              ++v31;
              v33 -= 4;
              if (!v33)
              {
                return result;
              }
            }
          }

          else if (*(v29 + 16) == 2)
          {
            return **(v29 + 24) == *(*(v29 + 24) + 8);
          }
        }
      }
    }
  }

  return 0;
}

std::string *absl::lts_20240722::StrAppend<>(std::string *a1, _OWORD *a2, __int128 *a3, _OWORD *a4, __int128 *a5, _OWORD *a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v10[0] = *a2;
  v10[1] = v6;
  v7 = *a5;
  v10[2] = *a4;
  v10[3] = v7;
  v10[4] = *a6;
  result = absl::lts_20240722::strings_internal::AppendPieces(a1, v10, 5);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v22[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v4 = operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v4, v2);
  if (!ValueByNumber)
  {
    v22[0] = "Invalid enum value of: ";
    v22[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    v21[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v18);
    v21[1] = v8;
    v20[0] = " for enum type: ";
    v20[1] = 16;
    v9 = *(operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy_descriptor(v21[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v19[0] = v9;
    v19[1] = v10;
    absl::lts_20240722::StrCat(v22, v21, v20, v19, a2);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_8;
  }

  v6 = ValueByNumber[1];
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    v7 = *v6;
    a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&a2->__r_.__value_.__l.__data_ = v7;
LABEL_8:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *v6;
  v14 = *(v6 + 1);
  v15 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v13, v14);
}

void sub_23CAED080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_DomainReductionStrategy>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v22[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v4 = operations_research::sat::DecisionStrategyProto_DomainReductionStrategy_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v4, v2);
  if (!ValueByNumber)
  {
    v22[0] = "Invalid enum value of: ";
    v22[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    v21[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v18);
    v21[1] = v8;
    v20[0] = " for enum type: ";
    v20[1] = 16;
    v9 = *(operations_research::sat::DecisionStrategyProto_DomainReductionStrategy_descriptor(v21[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v19[0] = v9;
    v19[1] = v10;
    absl::lts_20240722::StrCat(v22, v21, v20, v19, a2);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_8;
  }

  v6 = ValueByNumber[1];
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    v7 = *v6;
    a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&a2->__r_.__value_.__l.__data_ = v7;
LABEL_8:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *v6;
  v14 = *(v6 + 1);
  v15 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v13, v14);
}

void sub_23CAED1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::btree_map<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

std::string *operations_research::sat::CpSolverResponseStats@<X0>(operations_research::sat *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  v41 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v39 = "CpSolverResponse summary:";
  v40 = 25;
  absl::lts_20240722::StrAppend(a3, &v39);
  v39 = "\nstatus: ";
  v40 = 9;
  operations_research::ProtoEnumToString<operations_research::sat::CpSolverStatus>(*(this + 66), &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v36 = p_p;
  v37 = size;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else if (!v3)
  {
    goto LABEL_12;
  }

  if (*(this + 66) != 3)
  {
    v39 = *(this + 18);
    v40 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::AppendPack(a3, "\nobjective: %.16g", 17, &v39, 1uLL);
    v39 = *(this + 19);
    v40 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::AppendPack(a3, "\nbest_bound: %.16g", 18, &v39, 1uLL);
    goto LABEL_13;
  }

LABEL_12:
  v39 = "\nobjective: NA";
  v40 = 14;
  absl::lts_20240722::StrAppend(a3, &v39);
  v39 = "\nbest_bound: NA";
  v40 = 15;
  absl::lts_20240722::StrAppend(a3, &v39);
LABEL_13:
  v39 = "\nintegers: ";
  v40 = 11;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 32), v38, v8);
  v36 = v38;
  v37 = v9 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nBOOLeans: ";
  v40 = 11;
  v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 20), v38, v10);
  v36 = v38;
  v37 = v11 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nconflicts: ";
  v40 = 12;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 21), v38, v12);
  v36 = v38;
  v37 = v13 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nbranches: ";
  v40 = 11;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 22), v38, v14);
  v36 = v38;
  v37 = v15 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\npropagations: ";
  v40 = 15;
  v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 23), v38, v16);
  v36 = v38;
  v37 = v17 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\ninteger_propagations: ";
  v40 = 23;
  v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 24), v38, v18);
  v36 = v38;
  v37 = v19 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nrestarts: ";
  v40 = 11;
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 29), v38, v20);
  v36 = v38;
  v37 = v21 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nlp_iterations: ";
  v40 = 16;
  v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 30), v38, v22);
  v36 = v38;
  v37 = v23 - v38;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nwalltime: ";
  v40 = 11;
  v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v38, *(this + 25), v24);
  v36 = v38;
  v37 = v25;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\nusertime: ";
  v40 = 11;
  v27 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v38, *(this + 26), v26);
  v36 = v38;
  v37 = v27;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\ndeterministic_time: ";
  v40 = 21;
  v29 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v38, *(this + 27), v28);
  v36 = v38;
  v37 = v29;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v39 = "\ngap_integral: ";
  v40 = 15;
  v31 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v38, *(this + 28), v30);
  v36 = v38;
  v37 = v31;
  absl::lts_20240722::StrAppend(a3, &v39, &v36);
  v32 = *(this + 6);
  if (v32)
  {
    v39 = operations_research::fasthash64(*(this + 4), 8 * v32, 0xA5B85C5E198ED849);
    v40 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
    absl::lts_20240722::str_format_internal::AppendPack(a3, "\nsolution_fingerprint: %#x", 26, &v39, 1uLL);
  }

  v39 = "\n";
  v40 = 1;
  result = absl::lts_20240722::StrAppend(a3, &v39);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CAED730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::ProtoEnumToString<operations_research::sat::CpSolverStatus>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v22[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v4 = operations_research::sat::CpSolverStatus_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v4, v2);
  if (!ValueByNumber)
  {
    v22[0] = "Invalid enum value of: ";
    v22[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    v21[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v18);
    v21[1] = v8;
    v20[0] = " for enum type: ";
    v20[1] = 16;
    v9 = *(operations_research::sat::CpSolverStatus_descriptor(v21[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v19[0] = v9;
    v19[1] = v10;
    absl::lts_20240722::StrCat(v22, v21, v20, v19, a2);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_8;
  }

  v6 = ValueByNumber[1];
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    v7 = *v6;
    a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&a2->__r_.__value_.__l.__data_ = v7;
LABEL_8:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *v6;
  v14 = *(v6 + 1);
  v15 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v13, v14);
}

void sub_23CAED924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SolveCpModel(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v5 = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  v38 = v5;
  v6 = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  v37 = v6;
  *v5 = 1;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v6);
  *(v5 + 8) = CurrentTimeNanos;
  *v6 = 1;
  *(v6 + 1) = absl::lts_20240722::GetCurrentTimeNanos(CurrentTimeNanos);
  explicit = atomic_load_explicit(&qword_2810BDCB8, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_models) & 1) == 0)
  {
LABEL_4:
    v9 = atomic_load_explicit(&qword_2810BDB98, memory_order_acquire);
    if (v9)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_export_model) & 1) == 0)
    {
LABEL_13:
      v12 = atomic_load_explicit(&off_2810BDA08, memory_order_acquire);
      if ((~v12 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_params, &__dst);
      }

      else
      {
        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v13 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, *v13, *(v13 + 8));
        }

        else
        {
          v14 = *v13;
          __dst.__r_.__value_.__r.__words[2] = *(v13 + 16);
          *&__dst.__r_.__value_.__l.__data_ = v14;
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (!size)
        {
          goto LABEL_35;
        }
      }

      else if (!*(&__dst.__r_.__value_.__s + 23))
      {
        goto LABEL_35;
      }

      v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v39);
      operations_research::sat::SatParameters::SatParameters(&__dst, 0, v16);
      operations_research::sat::SatParameters::SatParameters(__p, 0);
      v17 = atomic_load_explicit(&off_2810BDA08, memory_order_acquire);
      if ((~v17 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_params, &v40);
      }

      else
      {
        v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v18 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v40, *v18, *(v18 + 8));
        }

        else
        {
          v19 = *v18;
          v40.__r_.__value_.__r.__words[2] = *(v18 + 16);
          *&v40.__r_.__value_.__l.__data_ = v19;
        }
      }

      v48 = v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v48;
      }

      else
      {
        v20 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = v48.__r_.__value_.__l.__size_;
      }

      if ((google::protobuf::TextFormat::ParseFromString(v20, v21, __p) & 1) == 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3770);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v40);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      operations_research::sat::SatParameters::MergeImpl(&__dst, __p, v22);
      v23 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v39);
      operations_research::sat::SatParameters::CopyFrom(v23, &__dst);
      operations_research::sat::SatParameters::~SatParameters(__p);
      operations_research::sat::SatParameters::~SatParameters(&__dst);
LABEL_35:
      v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v39);
      v25 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v39);
      v26 = v25;
      v36 = v25;
      if (v24[290])
      {
        IsEnabled1 = 1;
      }

      else if (dword_2810BD770 >= 1)
      {
        IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_13::operator() const(void)::site, dword_2810BD770);
        v25 = v36;
      }

      else
      {
        IsEnabled1 = 0;
      }

      *v26 = IsEnabled1;
      v25[1] = v24[566];
      memset(v35, 0, sizeof(v35));
      if (v24[268] == 1)
      {
        v44[0] = &unk_284F3F800;
        v44[1] = v35;
        v45 = v44;
        operations_research::SolverLogger::AddInfoLoggingCallback(v25, v44);
        if (v45 == v44)
        {
          (*(*v45 + 32))(v45);
        }

        else if (v45)
        {
          (*(*v45 + 40))();
        }
      }

      v28 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v39);
      v29 = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
      if ((~v29 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &__dst);
      }

      else
      {
        v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v30 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, *v30, *(v30 + 8));
        }

        else
        {
          v31 = *v30;
          __dst.__r_.__value_.__r.__words[2] = *(v30 + 16);
          *&__dst.__r_.__value_.__l.__data_ = v31;
        }
      }

      __p[0] = __dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = __dst.__r_.__value_.__l.__size_;
      }

      MEMORY[0x23EED9030](v28 + 61, v32, v33);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v34 = atomic_load_explicit(&qword_2810BDBF0, memory_order_acquire);
      if (v34)
      {
        if ((v34 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_response))
      {
        goto LABEL_62;
      }

      v42[0] = &unk_284F3F890;
      v43 = v42;
      operations_research::sat::SharedResponseManager::AddFinalResponsePostprocessor(v28, v42);
      if (v43 == v42)
      {
        (*(*v43 + 32))(v43);
      }

      else if (v43)
      {
        (*(*v43 + 40))();
      }

LABEL_62:
      v41 = 0;
      operator new();
    }

    v10 = (*(this + 15) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = v10[23];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v10 + 1);
      if (!v11)
      {
LABEL_11:
        v10 = "unnamed_model";
        v11 = 13;
        goto LABEL_12;
      }

      v10 = *v10;
    }

    else if (!v10[23])
    {
      goto LABEL_11;
    }

LABEL_12:
    goto LABEL_13;
  }

  goto LABEL_4;
}

void sub_23CAF0AC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<WallTimer>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<WallTimer>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<WallTimer>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<WallTimer>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::anonymous namespace::DumpModelProto<operations_research::sat::CpModelProto>(uint64_t a1, const void *a2, std::string::size_type a3)
{
  v34 = *MEMORY[0x277D85DE8];
  memset(&v28, 0, sizeof(v28));
  explicit = atomic_load_explicit(&qword_281A21518, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
LABEL_3:
      v7 = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
      if ((~v7 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &v31);
      }

      else
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v8 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v31, *v8, *(v8 + 8));
        }

        else
        {
          v9 = *v8;
          v31.__r_.__value_.__r.__words[2] = *(v8 + 16);
          *&v31.__r_.__value_.__l.__data_ = v9;
        }
      }

      __p = v31;
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      p_p = &__p;
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
        p_p = v31.__r_.__value_.__r.__words[0];
      }

      v32 = p_p;
      v33 = size;
      v31.__r_.__value_.__r.__words[0] = a2;
      v31.__r_.__value_.__l.__size_ = a3;
      v29 = ".bin";
      v30 = 4;
      absl::lts_20240722::StrCat(&v32, &v31, &v29, &v27);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 197);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "Dumping ", 8uLL);
      v13 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v32, a2, a3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, " binary proto to '", 0x12uLL);
      v14 = absl::lts_20240722::log_internal::LogMessage::operator<<(v13, &v27);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "'.", 2uLL);
      std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v32, &v27);
      goto LABEL_12;
    }
  }

  else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_text_proto))
  {
    goto LABEL_3;
  }

  v18 = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
  if ((~v18 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &v31);
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v19 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *v19, *(v19 + 8));
    }

    else
    {
      v20 = *v19;
      v31.__r_.__value_.__r.__words[2] = *(v19 + 16);
      *&v31.__r_.__value_.__l.__data_ = v20;
    }
  }

  __p = v31;
  v21 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  v22 = &__p;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v31.__r_.__value_.__l.__size_;
    v22 = v31.__r_.__value_.__r.__words[0];
  }

  v32 = v22;
  v33 = v21;
  v31.__r_.__value_.__r.__words[0] = a2;
  v31.__r_.__value_.__l.__size_ = a3;
  v29 = ".pb.txt";
  v30 = 7;
  absl::lts_20240722::StrCat(&v32, &v31, &v29, &v27);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v28 = v27;
  *(&v27.__r_.__value_.__s + 23) = 0;
  v27.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 193);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "Dumping ", 8uLL);
  v24 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v32, a2, a3);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " text proto to '", 0x10uLL);
  v25 = absl::lts_20240722::log_internal::LogMessage::operator<<(v24, &v28);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "'.", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v32);
LABEL_12:
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v28;
  }

  else
  {
    v15 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v28.__r_.__value_.__l.__size_;
  }

  if (!operations_research::sat::WriteModelProtoToFile<operations_research::sat::CpModelProto>(a1, v15, v16))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 199);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v31);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23CAF184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  v40 = a1;
  if (a26 < 0)
  {
    operator delete(a21);
    v40 = a1;
  }

  _Unwind_Resume(v40);
}

double absl::lts_20240722::GetFlag<std::string>@<D0>(atomic_ullong *a1@<X0>, std::string *a2@<X8>)
{
  explicit = atomic_load_explicit(a1 + 10, memory_order_acquire);
  if ((~explicit & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(a1, &v7);
  }

  else
  {
    v4 = explicit & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      v7.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v7.__r_.__value_.__l.__data_ = v5;
    }
  }

  result = *&v7.__r_.__value_.__l.__data_;
  *a2 = v7;
  return result;
}

void sub_23CAF1984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(std::string const&)>::~function(uint64_t a1)
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::SigintHandler>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SigintHandler>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SigintHandler>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::SigintHandler>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::SigintHandler>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::SigintHandler>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::anonymous namespace::TestSolutionHintForFeasibility(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::SolverLogger *a3, operations_research::sat::SharedResponseManager *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(this + 16) & 2) != 0)
  {
    v5 = *(this + 17);
    v6 = *(v5 + 16);
    if (v6 == *(this + 8))
    {
      if (v6)
      {
        if ((v6 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v5)
      {
        v11 = *(this + 17);
      }

      else
      {
        v11 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
      }

      v12 = *(v11 + 4);
      if (v12 >= 1)
      {
        v13 = v11[3];
        v14 = v11[6];
        do
        {
          v16 = *v13++;
          v15 = v16;
          v18 = *v14++;
          v17 = v18;
          if (~v15 <= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = ~v15;
          }

          if (v15 >= 0)
          {
            v20 = v17;
          }

          else
          {
            v20 = -v17;
          }

          *(8 * v19) = v20;
          --v12;
        }

        while (v12);
      }

      if (operations_research::sat::SolutionIsFeasible(this, 0, 0, 0, 0))
      {
        if (a3)
        {
          BYTE7(v29) = 13;
          strcpy(&__p, "complete_hint");
          operations_research::sat::SharedResponseManager::NewSolution(a3, 0, 0, &__p, 0);
          if (SBYTE7(v29) < 0)
          {
            operator delete(__p);
          }
        }

        else if (*a2 == 1)
        {
          operator new();
        }
      }

      else if (*a2 == 1)
      {
        operator new();
      }
    }

    else if (*a2 == 1)
    {
      *&v26 = v27;
      *(&v26 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, v27, a3) - v27;
      v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 8), v25, v8);
      v23 = v25;
      v24 = v9 - v25;
      *&__p = "The solution hint is incomplete: ";
      *(&__p + 1) = 33;
      v29 = v26;
      v30 = " out of ";
      v31 = 8;
      v32 = v25;
      v33 = v9 - v25;
      v34 = " variables hinted.";
      v35 = 18;
      absl::lts_20240722::strings_internal::CatPieces(&__p, 5, &v22);
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3717, &v22);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_23CAF2330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(std::vector<long long> *)>::~function(uint64_t a1)
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SolutionObservers>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t std::function<void ()(operations_research::sat::CpSolverResponse const&)>::~function(uint64_t a1)
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

uint64_t std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(double)>::~function(uint64_t a1)
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

uint64_t operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  if (*(v4 + 284) == 1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3176);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v10, "Enumerating all solutions in parallel is not supported.", 0x37uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v10);
  }

  v5 = v4;
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  result = operations_research::TimeLimit::LimitReached(v6);
  if ((result & 1) == 0)
  {
    operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeManager>(a2);
    operations_research::sat::SharedStatTables::SharedStatTables(&v9);
    if (*(v5 + 690) == 1)
    {
      operator new();
    }

    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CAF779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v42 = STACK[0x280];
  STACK[0x280] = 0;
  if (v42)
  {
  }

  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  operations_research::sat::SatParameters::~SatParameters(&STACK[0x650]);
  std::vector<std::unique_ptr<operations_research::sat::SubSolver>>::~vector[abi:ne200100](&a35);
  std::vector<std::unique_ptr<operations_research::sat::SubSolver>>::~vector[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

uint64_t *operations_research::sat::Model::Register<operations_research::SolverLogger>(void *a1, uint64_t a2)
{
  v21 = &gtl::FastTypeId<operations_research::SolverLogger>(void)::d;
  v6 = a1[3];
  v4 = a1 + 3;
  v5 = v6;
  if (v6 > 1)
  {
    v9 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SolverLogger>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SolverLogger>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v5;
    v19 = *(_X12 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v5)) == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d)
      {
        goto LABEL_13;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_10:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v9 += 8;
      v18 = (v9 + v18) & v5;
      v19 = *(_X12 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v22);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v4, &v21, v22);
  if (v24 == 1)
  {
    v8 = v23;
    *v23 = v21;
    v8[1] = 0;
  }

  v23[1] = a2;
  return result;
}

uint64_t *operations_research::sat::Model::Register<operations_research::TimeLimit>(void *a1, uint64_t a2)
{
  v21 = &gtl::FastTypeId<operations_research::TimeLimit>(void)::d;
  v6 = a1[3];
  v4 = a1 + 3;
  v5 = v6;
  if (v6 > 1)
  {
    v9 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::TimeLimit>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::TimeLimit>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v5;
    v19 = *(_X12 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v5)) == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d)
      {
        goto LABEL_13;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_10:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v9 += 8;
      v18 = (v9 + v18) & v5;
      v19 = *(_X12 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v22);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v4, &v21, v22);
  if (v24 == 1)
  {
    v8 = v23;
    *v23 = v21;
    v8[1] = 0;
  }

  v23[1] = a2;
  return result;
}

uint64_t *operations_research::sat::Model::Register<operations_research::sat::SatParameters>(void *a1, uint64_t a2)
{
  v21 = &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d;
  v6 = a1[3];
  v4 = a1 + 3;
  v5 = v6;
  if (v6 > 1)
  {
    v9 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v5;
    v19 = *(_X12 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v5)) == &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d)
      {
        goto LABEL_13;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_10:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v9 += 8;
      v18 = (v9 + v18) & v5;
      v19 = *(_X12 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v22);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v4, &v21, v22);
  if (v24 == 1)
  {
    v8 = v23;
    *v23 = v21;
    v8[1] = 0;
  }

  v23[1] = a2;
  return result;
}

uint64_t *operations_research::sat::Model::Register<operations_research::sat::SharedStatistics>(void *a1, uint64_t a2)
{
  v21 = &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d;
  v6 = a1[3];
  v4 = a1 + 3;
  v5 = v6;
  if (v6 > 1)
  {
    v9 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v5;
    v19 = *(_X12 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v5)) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
      {
        goto LABEL_13;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_10:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v9 += 8;
      v18 = (v9 + v18) & v5;
      v19 = *(_X12 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v22);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v4, &v21, v22);
  if (v24 == 1)
  {
    v8 = v23;
    *v23 = v21;
    v8[1] = 0;
  }

  v23[1] = a2;
  return result;
}

uint64_t *operations_research::sat::Model::Register<operations_research::sat::SharedResponseManager>(void *a1, uint64_t *a2)
{
  v21 = &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d;
  v6 = a1[3];
  v4 = a1 + 3;
  v5 = v6;
  if (v6 > 1)
  {
    v9 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v5;
    v19 = *(_X12 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v5)) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
      {
        goto LABEL_13;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_10:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v9 += 8;
      v18 = (v9 + v18) & v5;
      v19 = *(_X12 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v22);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v4, &v21, v22);
  if (v24 == 1)
  {
    v8 = v23;
    *v23 = v21;
    v8[1] = 0;
  }

  v23[1] = a2;
  return result;
}

void operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v4 = this;
  v233 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
  v195 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v3);
  v197 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v3);
  v196 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v3);
  if (*(v196 + 755) == 1)
  {
    v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GreaterThanAtLeastOneOfDetector>(v3);
    operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraints(v8, v3, 0);
    if ((operations_research::sat::SatSolver::FinishPropagation(v6) & 1) == 0)
    {
      *(v6 + 528) = 1;
      v11 = *(v3 + 23);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v3;
      }

      else
      {
        v12 = *v3;
      }

      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 1);
      }

      goto LABEL_28;
    }
  }

  if (*(v196 + 588) >= 2)
  {
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Prober>(v3);
    operations_research::sat::Prober::ProbeBooleanVariables(v9, 1.0);
    v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(v3);
    if ((operations_research::sat::BinaryImplicationGraph::ComputeTransitiveReduction(v10, 0) & 1) == 0)
    {
      *(v6 + 528) = 1;
      v11 = *(v3 + 23);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v3;
      }

      else
      {
        v12 = *v3;
      }

      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 1);
      }

      goto LABEL_28;
    }
  }

  if (*(v6 + 528) == 1)
  {
    *(v6 + 528) = 1;
    v11 = *(v3 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = *v3;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v3 + 1);
    }

LABEL_28:
    *&v222 = v12;
    *(&v222 + 1) = v11;
    v230.__r_.__value_.__r.__words[0] = " [loading]";
    v230.__r_.__value_.__l.__size_ = 10;
    absl::lts_20240722::StrCat(&v222, &v230, &v221);
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v195, &v221);
    goto LABEL_238;
  }

  operations_research::sat::ExtractElementEncoding(v4, v3, v7);
  v14 = *(v3 + 3);
  v190 = (v3 + 24);
  if (v14 > 1)
  {
    v16 = 0;
    _X11 = *(v3 + 5);
    __asm { PRFM            #4, [X11] }

    v23 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d));
    v24 = vdup_n_s8(v23 & 0x7F);
    v25 = ((v23 >> 7) ^ (_X11 >> 12)) & v14;
    v26 = *(_X11 + v25);
    v27 = vceq_s8(v26, v24);
    if (!v27)
    {
      goto LABEL_33;
    }

LABEL_30:
    v28 = *(v3 + 6);
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v14;
      if (*(v28 + 16 * v29) == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d)
      {
        break;
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v27)
      {
LABEL_33:
        while (!*&vceq_s8(v26, 0x8080808080808080))
        {
          v16 += 8;
          v25 = (v16 + v25) & v14;
          v26 = *(_X11 + v25);
          v27 = vceq_s8(v26, v24);
          if (v27)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_40;
      }
    }

    v15 = (v28 + 16 * v29);
    if (!(_X11 + v29))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (*(v3 + 4) < 2uLL)
    {
      goto LABEL_40;
    }

    v15 = v3 + 40;
    if (*(v3 + 5) != &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      goto LABEL_40;
    }
  }

  v30 = *(v15 + 1);
  if (v30)
  {
    operations_research::sat::IntervalsRepository::InitAllDecomposedEnergies(v30);
  }

LABEL_40:
  v198 = v3;
  v194 = v4;
  v191 = v6;
  if ((*(v4 + 16) & 1) != 0 && *(*(v4 + 16) + 64))
  {
    v31 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
    v33 = *(v4 + 16);
    if (!v33)
    {
      v33 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    v34 = *(v33 + 4);
    if (v34 < 1)
    {
      v36 = 0;
      v35 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = v33[6];
      v38 = v33[3];
      v39 = *(v31 + 40);
      do
      {
        while (1)
        {
          v41 = *v37++;
          v40 = v41;
          LODWORD(v41) = *v38;
          v38 = (v38 + 4);
          v42 = v41;
          v43 = ~v41 <= v41 ? v42 : ~v42;
          v44 = 8 * ((*v197)[v43] ^ (v42 >> 31));
          if (v40 >= 1)
          {
            break;
          }

          v35 += -*(v39 + (v44 ^ 8)) * v40;
          v36 += *(v39 + v44) * v40;
          if (!--v34)
          {
            goto LABEL_78;
          }
        }

        v35 += *(v39 + v44) * v40;
        v36 += -*(v39 + (v44 ^ 8)) * v40;
        --v34;
      }

      while (v34);
    }

LABEL_78:
    operations_research::Domain::FromFlatSpanOfIntervals(v33[9], *(v33 + 16), &v222, v32);
    v66 = operations_research::Domain::Domain(&v230, v35, v36);
    IsIncludedIn = operations_research::Domain::IsIncludedIn(v66, &v222);
    if (v230.__r_.__value_.__s.__data_[0])
    {
      operator delete(v230.__r_.__value_.__l.__size_);
    }

    v192 = IsIncludedIn ^ 1;
    if (v222)
    {
      operator delete(*(&v222 + 1));
    }
  }

  else
  {
    v192 = 0;
  }

  v199 = -1;
  if (*(v196 + 572) < 1)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_203;
    }

    v46 = *(v4 + 16);
    v222 = 0uLL;
    *&v223 = 0;
    v47 = *(v46 + 16);
    if (v47)
    {
      if ((v47 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    *&v223 = 0;
    *&v222 = 0;
    if (*(v196 + 315) == 1)
    {
      if (v192)
      {
      }

      else
      {
      }
    }

    else
    {
    }

    v45 = VariableLinkedToSumOf;
    v199 = VariableLinkedToSumOf;
LABEL_175:
    if (v45 != -1)
    {
      if (*(v4 + 16))
      {
        v118 = *(v4 + 16);
      }

      else
      {
        v118 = &operations_research::sat::_CpObjectiveProto_default_instance_;
      }

      v119 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(v3);
      v120 = v119;
      v121 = *(v118 + 12);
      if (v121 == 0.0)
      {
        v121 = 1.0;
      }

      *v119 = v121;
      *(v119 + 8) = v118[11];
      *(v119 + 16) = v45;
      v122 = *(v118 + 4);
      v124 = (v119 + 24);
      v123 = *(v119 + 24);
      v125 = (*(v119 + 32) - v123) >> 2;
      if (v122 <= v125)
      {
        if (v122 < v125)
        {
          *(v119 + 32) = v123 + 4 * v122;
        }
      }

      else
      {
        std::vector<int>::__append((v119 + 24), v122 - v125);
      }

      v126 = *(v120 + 48);
      v127 = (*(v120 + 56) - v126) >> 3;
      if (v122 <= v127)
      {
        if (v122 < v127)
        {
          *(v120 + 56) = v126 + 8 * v122;
        }
      }

      else
      {
        std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v120 + 48, v122 - v127);
      }

      if (*(v118 + 4) >= 1)
      {
        v128 = 0;
        do
        {
          v129 = v118[3];
          v130 = *(v129 + v128);
          if (~v130 <= v130)
          {
            v131 = *(v129 + v128);
          }

          else
          {
            v131 = ~v130;
          }

          v132 = *v197;
          *(*v124 + 4 * v128) = (*v197)[v131] ^ (v130 >> 31);
          v133 = v118[6][v128];
          *(*(v120 + 48) + 8 * v128) = v133;
          v134 = *(v129 + v128);
          if (~v134 <= v134)
          {
            v135 = v134;
          }

          else
          {
            v135 = ~v134;
          }

          v136 = v132[v135];
          if (v136 != -1)
          {
            LODWORD(v230.__r_.__value_.__l.__data_) = v136 ^ (v134 < 0) ^ (v133 < 1);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(v120 + 72, &v230, &v222);
            if (v223 == 1)
            {
              **(&v222 + 1) = v230.__r_.__value_.__l.__data_;
            }
          }

          ++v128;
        }

        while (v128 < *(v118 + 4));
      }

      operator new();
    }

LABEL_203:
    v137 = *(v4 + 16);
    if (!v137)
    {
      v137 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (*(v137 + 16))
    {
      v138 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
      v140 = *(v194 + 16);
      if (!v140)
      {
        v140 = &operations_research::sat::_CpObjectiveProto_default_instance_;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v140[9], *(v140 + 16), &v208, v139);
      v141 = operations_research::sat::IntegerTrail::InitialVariableDomain(v138, -1);
      v213 = 0;
      if (*v141 >= 2uLL)
      {
        if (*v141)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v213, v141);
        }

        else
        {
          v213 = *v141;
          v214 = *(v141 + 8);
        }
      }

      if (dword_2810BFDE8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFDE0, dword_2810BFDE8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v222, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1782);
        v181 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v222, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v181, "Objective offset:", 0x11uLL);
        v182 = *(v194 + 16);
        if (!v182)
        {
          v182 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v230.__r_.__value_.__r.__words[0] = v182[11];
        v183 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v181, &v230);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v183, " scaling_factor:", 0x10uLL);
        v184 = *(v194 + 16);
        if (!v184)
        {
          v184 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v230.__r_.__value_.__r.__words[0] = v184[12];
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v183, &v230);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v222);
      }

      if (dword_2810BFE00 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFDF8, dword_2810BFE00))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v222, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1784);
        v185 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v222, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v185, "Automatic internal objective domain: ", 0x25uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v185, &v213);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v222);
      }

      if (dword_2810BFE18 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFE10, dword_2810BFE18))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v222, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1785);
        v186 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v222, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v186, "User specified internal objective domain: ", 0x2AuLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v186, &v208);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v222);
      }

      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&>(&v199, &operations_research::sat::kNoIntegerVariable, "objective_var != kNoIntegerVariable");
    }

    if (*operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v3) == 1)
    {
      v142 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v198);
      *&v222 = "Initial num_BOOL: ";
      *(&v222 + 1) = 18;
      v144 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v191 + 4), &v230.__r_.__value_.__s.__data_[16], v143);
      v230.__r_.__value_.__r.__words[0] = &v230.__r_.__value_.__r.__words[2];
      v230.__r_.__value_.__l.__size_ = v144 - &v230.__r_.__value_.__r.__words[2];
      absl::lts_20240722::StrCat(&v222, &v230, &v221);
      operations_research::SolverLogger::LogInfo(v142, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1796, &v221);
      if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v221.__r_.__value_.__l.__data_);
      }
    }

    if ((operations_research::sat::SatSolver::FinishPropagation(v191) & 1) == 0)
    {
      *(v191 + 528) = 1;
      v116 = *(v198 + 23);
      if ((v116 & 0x80u) == 0)
      {
        v117 = v198;
      }

      else
      {
        v117 = *v198;
      }

      if ((v116 & 0x80u) != 0)
      {
        v116 = *(v198 + 1);
      }

      goto LABEL_237;
    }

    if (*(v194 + 16))
    {
      v145 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v198);
      v146 = *(v198 + 23);
      if ((v146 & 0x80u) == 0)
      {
        v147 = v198;
      }

      else
      {
        v147 = *v198;
      }

      if ((v146 & 0x80u) != 0)
      {
        v146 = *(v198 + 1);
      }

      *&v222 = v147;
      *(&v222 + 1) = v146;
      v230.__r_.__value_.__r.__words[0] = " (initial_propagation)";
      v230.__r_.__value_.__l.__size_ = 22;
      absl::lts_20240722::StrCat(&v222, &v230, &v221);
      operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(v195, &v221, *(*(v145 + 40) - 8), -*(*(v145 + 40) - 16));
      if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v221.__r_.__value_.__l.__data_);
      }

      v148 = *v190;
      if (*v190 > 1)
      {
        v151 = 0;
        _X11 = *(v198 + 5);
        __asm { PRFM            #4, [X11] }

        v154 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
        v155 = vdup_n_s8(v154 & 0x7F);
        v156 = ((v154 >> 7) ^ (_X11 >> 12)) & v148;
        v157 = *(_X11 + v156);
        v158 = vceq_s8(v157, v155);
        if (!v158)
        {
          goto LABEL_245;
        }

LABEL_242:
        v159 = *(v198 + 6);
        do
        {
          v160 = (v156 + (__clz(__rbit64(v158)) >> 3)) & v148;
          if (*(v159 + 16 * v160) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
          {
            v148 = v159 + 16 * v160;
            v149 = (_X11 + v160);
            goto LABEL_250;
          }

          v158 &= ((v158 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v158);
LABEL_245:
        while (!*&vceq_s8(v157, 0x8080808080808080))
        {
          v151 += 8;
          v156 = (v151 + v156) & v148;
          v157 = *(_X11 + v156);
          v158 = vceq_s8(v157, v155);
          if (v158)
          {
            goto LABEL_242;
          }
        }

LABEL_248:
        v149 = 0;
      }

      else
      {
        v148 = *(v198 + 4);
        if (v148 < 2)
        {
          goto LABEL_248;
        }

        v148 = v198 + 40;
        if (*(v198 + 5) != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
        {
          goto LABEL_248;
        }

        v149 = &absl::lts_20240722::container_internal::kSooControl;
      }

LABEL_250:
      if (v149)
      {
        v161 = *(v148 + 8);
      }

      operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(v198);
      operator new();
    }

    v162 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(v198);
    operations_research::sat::ConstructUserSearchStrategy(v194, v198, &v222);
    v164 = v162 + 10;
    v163 = v162[10];
    v165 = v162 + 7;
    v162[10] = 0;
    if (v163 == v162 + 7)
    {
      (*(*v163 + 32))(v163);
    }

    else if (v163)
    {
      (*(*v163 + 40))(v163);
    }

    v166 = *(&v223 + 1);
    v167 = v162 + 10;
    if (*(&v223 + 1))
    {
      if (*(&v223 + 1) == &v222)
      {
        *v164 = v165;
        (*(*v166 + 24))(v166, v162 + 7);
LABEL_262:
        if (*(&v223 + 1) == &v222)
        {
          (*(**(&v223 + 1) + 32))(*(&v223 + 1));
        }

        else if (*(&v223 + 1))
        {
          (*(**(&v223 + 1) + 40))();
        }

        operations_research::sat::ConstructHeuristicSearchStrategy(v194, v198, &v222);
        v169 = v162 + 14;
        v168 = v162[14];
        v170 = v162 + 11;
        v162[14] = 0;
        if (v168 == v162 + 11)
        {
          (*(*v168 + 32))(v168);
        }

        else if (v168)
        {
          (*(*v168 + 40))(v168);
        }

        v171 = *(&v223 + 1);
        v172 = v162 + 14;
        if (*(&v223 + 1))
        {
          if (*(&v223 + 1) == &v222)
          {
            *v169 = v170;
            (*(*v171 + 24))(v171, v162 + 11);
LABEL_275:
            if (*(&v223 + 1) == &v222)
            {
              (*(**(&v223 + 1) + 32))(*(&v223 + 1));
            }

            else if (*(&v223 + 1))
            {
              (*(**(&v223 + 1) + 40))();
            }

            operations_research::sat::ConstructIntegerCompletionSearchStrategy(v197, 0xFFFFFFFF, v198, &v222);
            v174 = v162 + 18;
            v173 = v162[18];
            v175 = v162 + 15;
            v162[18] = 0;
            if (v173 == v162 + 15)
            {
              (*(*v173 + 32))(v173);
            }

            else if (v173)
            {
              (*(*v173 + 40))(v173);
            }

            v176 = *(&v223 + 1);
            v177 = v162 + 18;
            if (*(&v223 + 1))
            {
              if (*(&v223 + 1) == &v222)
              {
                *v174 = v175;
                (*(*v176 + 24))(v176, v162 + 15);
LABEL_288:
                if (*(&v223 + 1) == &v222)
                {
                  (*(**(&v223 + 1) + 32))(*(&v223 + 1));
                }

                else if (*(&v223 + 1))
                {
                  (*(**(&v223 + 1) + 40))();
                }

                v178 = *v164;
                if (*v164)
                {
                  if (v178 == v165)
                  {
                    v220 = v219;
                    (*(*v178 + 24))(v178, v219);
                  }

                  else
                  {
                    v220 = (*(*v178 + 16))(v178);
                  }
                }

                else
                {
                  v220 = 0;
                }

                v179 = *v169;
                if (*v169)
                {
                  if (v179 == v170)
                  {
                    v218 = v217;
                    (*(*v179 + 24))(v179, v217);
LABEL_302:
                    v180 = *v174;
                    if (*v174)
                    {
                      if (v180 == v175)
                      {
                        v216 = v215;
                        (*(*v180 + 24))(v180, v215);
LABEL_307:
                        operations_research::sat::ConstructFixedSearchStrategy(v219, v217, v215, &v222);
                      }

                      v180 = (*(*v180 + 16))(v180);
                    }

                    v216 = v180;
                    goto LABEL_307;
                  }

                  v179 = (*(*v179 + 16))(v179);
                }

                v218 = v179;
                goto LABEL_302;
              }

              v177 = &v223 + 1;
              *v174 = *(&v223 + 1);
            }

            *v177 = 0;
            goto LABEL_288;
          }

          v172 = &v223 + 1;
          *v169 = *(&v223 + 1);
        }

        *v172 = 0;
        goto LABEL_275;
      }

      v167 = &v223 + 1;
      *v164 = *(&v223 + 1);
    }

    *v167 = 0;
    goto LABEL_262;
  }

  operations_research::sat::ComputeLinearRelaxation(v4, v3, v13, &v230);
  if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3) + 528))
  {
    v45 = -1;
  }

  else
  {
    v48 = *&v230.__r_.__value_.__l.__data_;
    v50 = v231;
    v49 = v232;
    v51 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
    v52 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v48 + 1) - v48) >> 3);
    v53 = v49 - v50;
    v54 = (*(v51 + 48) - *(v51 + 40)) >> 3;
    v224 = 0u;
    memset(v225, 0, 28);
    v222 = 0u;
    v223 = 0u;
    v228 = 0;
    v226 = 0;
    v227 = 0;
    v229 = 0;
    v55 = (v53 >> 6) - 858993459 * ((*(&v48 + 1) - v48) >> 3);
    DenseConnectedComponentsFinder::SetNumberOfNodes(&v222, v55 + v54);
    if (v52 >= 1)
    {
      v56 = 0;
      do
      {
        v57 = v230.__r_.__value_.__r.__words[0] + 40 * v56;
        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = *(v57 + 24);
          v60 = 4 * v58;
          do
          {
            DenseConnectedComponentsFinder::AddEdge(&v222, v56, (*v59++ & 0xFFFFFFFE) + v55);
            v60 -= 4;
          }

          while (v60);
        }

        ++v56;
      }

      while (v56 != (v52 & 0x7FFFFFFF));
    }

    v61 = (v53 >> 6) & 0x7FFFFFFF;
    if ((v53 >> 6) >= 1)
    {
      v62 = 0;
      v63 = *(v231 + 8);
      i = *(v231 + 16);
      if (v63 != i)
      {
        goto LABEL_72;
      }

      while (++v62 != v61)
      {
        v65 = v231 + (v62 << 6);
        v63 = *(v65 + 8);
        for (i = *(v65 + 16); v63 != i; ++v63)
        {
LABEL_72:
          DenseConnectedComponentsFinder::AddEdge(&v222, v62 - 858993459 * ((*(&v48 + 1) - v48) >> 3), (*v63 & 0xFFFFFFFE) + v55);
        }
      }
    }

    if (LODWORD(v225[3]))
    {
      if ((v225[3] & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    DenseConnectedComponentsFinder::GetComponentIds(&v222, &v213);
    if (v52 >= 1)
    {
      v68 = v213;
      v69 = v52 & 0x7FFFFFFF;
      do
      {
        v70 = *v68++;
        ++*(4 * v70);
        --v69;
      }

      while (v69);
    }

    v210 = 0;
    v211 = 0;
    v212 = 0;
    v221.__r_.__value_.__r.__words[0] = &v210;
    v221.__r_.__value_.__s.__data_[8] = 0;
    LODWORD(v221.__r_.__value_.__l.__data_) = 0;
    if (v54 >= 1)
    {
      v71 = 0;
      do
      {
        std::vector<int>::push_back[abi:ne200100](v210 + 24 * *(v213 + ((v71 & 0xFFFFFFFE) + v55)), &v221);
        v71 = LODWORD(v221.__r_.__value_.__l.__data_) + 2;
        LODWORD(v221.__r_.__value_.__l.__data_) = v71;
      }

      while (v71 < v54);
    }

    __src = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v198);
    v72 = *(v194 + 16);
    if (!v72)
    {
      v72 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (*(v72 + 10) >= 1)
    {
      v73 = 0;
      v74 = v72[3];
      v75 = *__src;
      v76 = v213;
      do
      {
        v77 = *(v74 + v73);
        if (~v77 > v77)
        {
          v77 = ~v77;
        }

        v78 = v76[(*(v75 + 4 * v77) & 0xFFFFFFFE) + v55];
        ++*(4 * v78);
        ++v73;
      }

      while (v73 < *(v72 + 10));
    }

    if (v52 >= 1)
    {
      v79 = 0;
      v80 = 0;
      do
      {
        v81 = *(v213 + v80);
        if (*(4 * v81) >= 2)
        {
          v82 = *(8 * v81);
          if (!v82)
          {
            operator new();
          }

          v83 = v230.__r_.__value_.__r.__words[0] + v79;
          v84 = *(v230.__r_.__value_.__r.__words[0] + v79 + 16);
          *&v208.__r_.__value_.__l.__data_ = *(v230.__r_.__value_.__r.__words[0] + v79);
          LODWORD(v208.__r_.__value_.__r.__words[2]) = v84;
          v85 = *(v230.__r_.__value_.__r.__words[0] + v79 + 24);
          *(v83 + 24) = 0;
          *(v83 + 32) = 0;
          v209 = v85;
          operations_research::sat::LinearProgrammingConstraint::AddLinearConstraint(v82, &v208);
          v86 = *(&v209 + 1);
          *(&v209 + 1) = 0;
          if (v86)
          {
            MEMORY[0x23EED9440](v86, 0x1000C8000313F17);
          }

          v87 = v209;
          *&v209 = 0;
          if (v87)
          {
            MEMORY[0x23EED9440](v87, 0x1000C8052888210);
          }
        }

        ++v80;
        v79 += 40;
      }

      while ((v52 & 0x7FFFFFFF) != v80);
    }

    v205 = 0;
    v206 = 0;
    v207 = 0;
    v4 = v194;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    if (*(v194 + 16))
    {
      v89 = *(v194 + 16);
      if (*(v89 + 10) < 1)
      {
        v88 = 0;
      }

      else
      {
        v88 = 0;
        v90 = 0;
        do
        {
          v91 = *(v89[3] + v90);
          if (~v91 <= v91)
          {
            v92 = *(v89[3] + v90);
          }

          else
          {
            v92 = ~v91;
          }

          v93 = *(*__src + 4 * v92);
          v94 = (v93 ^ (v91 >> 31));
          v95 = v89[6][v90];
          v96 = *(v213 + ((v93 & 0xFFFFFFFE) + v55));
          v97 = *(8 * v96);
          if (v97)
          {
            operations_research::sat::LinearProgrammingConstraint::SetObjectiveCoefficient(v97, v94, v95);
            v200[0] = v94;
            v200[1] = v95;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v205 + 24 * v96, v200);
          }

          else
          {
            if (v88 < v204)
            {
              *v88 = v94;
              *(v88 + 8) = v95;
              v88 += 16;
            }

            else
            {
              v98 = v88;
              v99 = v88 >> 4;
              v100 = v99 + 1;
              if ((v99 + 1) >> 60)
              {
                v202 = 0;
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (v204 >> 3 > v100)
              {
                v100 = v204 >> 3;
              }

              if (v204 >= 0x7FFFFFFFFFFFFFF0)
              {
                v101 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v101 = v100;
              }

              if (v101)
              {
                if (!(v101 >> 60))
                {
                  operator new();
                }

                v202 = 0;
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v102 = (16 * v99);
              *v102 = v94;
              v102[1] = v95;
              v88 = 16 * v99 + 16;
              memcpy(0, 0, v98);
              v203 = v88;
              v204 = 0;
              v4 = v194;
            }

            v203 = v88;
          }

          ++v90;
          v89 = *(v4 + 16);
          if (!v89)
          {
            v89 = &operations_research::sat::_CpObjectiveProto_default_instance_;
          }
        }

        while (v90 < *(v89 + 10));
      }

      v202 = 0;
      if (*(v4 + 16))
      {
      }

      else
      {
        v45 = -1;
      }
    }

    else
    {
      v88 = 0;
      v45 = -1;
    }

    if (dword_2810BFDD0 >= 3)
    {
      v4 = v194;
      if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFDC8, dword_2810BFDD0))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v200, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1078);
        v187 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v200, 3);
        *v201 = v88 >> 4;
        v188 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v187, v201);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v188, " terms in the main objective linear equation (", 0x2EuLL);
        v201[0] = 0;
        v189 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v188, v201);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v189, " from LP constraints).", 0x16uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v200);
        v4 = v194;
      }
    }

    v104 = v205;
    v3 = v198;
    if (v205)
    {
      v105 = v206;
      v106 = v205;
      if (v206 != v205)
      {
        v107 = v206;
        do
        {
          v109 = *(v107 - 3);
          v107 -= 24;
          v108 = v109;
          if (v109)
          {
            *(v105 - 2) = v108;
            operator delete(v108);
          }

          v105 = v107;
        }

        while (v107 != v104);
        v106 = v205;
      }

      v206 = v104;
      operator delete(v106);
    }

    v110 = v210;
    if (v210)
    {
      v111 = v211;
      v112 = v210;
      if (v211 != v210)
      {
        v113 = v211;
        do
        {
          v115 = *(v113 - 3);
          v113 -= 24;
          v114 = v115;
          if (v115)
          {
            *(v111 - 2) = v114;
            operator delete(v114);
          }

          v111 = v113;
        }

        while (v113 != v110);
        v112 = v210;
      }

      v211 = v110;
      operator delete(v112);
    }

    if (v213)
    {
      *&v214 = v213;
      operator delete(v213);
    }

    if (v226)
    {
      v227 = v226;
      operator delete(v226);
    }

    if (v225[0])
    {
      v225[1] = v225[0];
      operator delete(v225[0]);
    }

    if (*(&v223 + 1))
    {
      *&v224 = *(&v223 + 1);
      operator delete(*(&v223 + 1));
    }

    if (v222)
    {
      *(&v222 + 1) = v222;
      operator delete(v222);
    }
  }

  operations_research::sat::LinearRelaxation::~LinearRelaxation(&v230);
  v199 = v45;
  if (*(v191 + 528) != 1)
  {
    goto LABEL_175;
  }

  *(v191 + 528) = 1;
  v116 = *(v3 + 23);
  if ((v116 & 0x80u) == 0)
  {
    v117 = v3;
  }

  else
  {
    v117 = *v3;
  }

  if ((v116 & 0x80u) != 0)
  {
    v116 = *(v3 + 1);
  }

LABEL_237:
  *&v222 = v117;
  *(&v222 + 1) = v116;
  v230.__r_.__value_.__r.__words[0] = " [loading]";
  v230.__r_.__value_.__l.__size_ = 10;
  absl::lts_20240722::StrCat(&v222, &v230, &v221);
  operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v195, &v221);
LABEL_238:
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  v150 = *MEMORY[0x277D85DE8];
}

void sub_23CAFBA5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::MinimizeL1DistanceWithHint(void (****this)(operations_research::sat::PartialVariableAssignment *__hidden this), const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v164 = *MEMORY[0x277D85DE8];
  memset(v153, 0, sizeof(v153));
  v154 = xmmword_23CE306D0;
  v159 = 0;
  v157 = 0;
  v158 = 0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(a2);
  v142 = &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(&v154, &v142, v150);
  if (v152 == 1)
  {
    v6 = v151;
    *v151 = v142;
    v6[1] = 0;
  }

  v151[1] = v5;
  v7 = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  v142 = &gtl::FastTypeId<WallTimer>(void)::d;
  if (v154 > 1)
  {
    v113 = 0;
    _X11 = v155;
    __asm { PRFM            #4, [X11] }

    v120 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d));
    v121 = vdup_n_s8(v120 & 0x7F);
    v122 = ((v120 >> 7) ^ (v155 >> 12)) & v154;
    v123 = *(v155 + v122);
    v124 = vceq_s8(v123, v121);
    if (!v124)
    {
      goto LABEL_97;
    }

    do
    {
LABEL_95:
      if (*(v156 + 16 * ((v122 + (__clz(__rbit64(v124)) >> 3)) & v154)) == &gtl::FastTypeId<WallTimer>(void)::d)
      {
        goto LABEL_100;
      }

      v124 &= ((v124 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v124);
LABEL_97:
    while (!*&vceq_s8(v123, 0x8080808080808080))
    {
      v113 += 8;
      v122 = (v113 + v122) & v154;
      v123 = *(v155 + v122);
      v124 = vceq_s8(v123, v121);
      if (v124)
      {
        goto LABEL_95;
      }
    }
  }

  else if (*(&v154 + 1) >= 2uLL && v155 == &gtl::FastTypeId<WallTimer>(void)::d)
  {
LABEL_100:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v150, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/model.h", 184);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v150);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(&v154, &v142, v150);
  if (v152 == 1)
  {
    v8 = v151;
    *v151 = v142;
    v8[1] = 0;
  }

  v151[1] = v7;
  if ((this[2] & 2) != 0)
  {
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
    if (!operations_research::sat::SharedResponseManager::ProblemIsSolved(v9))
    {
      v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v153);
      if ((*(v10 + 284) & 1) == 0)
      {
        v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
        operations_research::sat::SatParameters::SatParameters(v150, 0, v11);
        operations_research::sat::SatParameters::CopyFrom(v10, v150);
        *(v10 + 456) = *(v10 + 696);
        *(v10 + 28) |= 0x40u;
        *(v10 + 315) = 0;
        *(v10 + 20) |= 0x400000u;
        operations_research::sat::CpModelProto::CpModelProto(&v142, 0, this);
        v135 = v9;
        v136 = a2;
        if (v149)
        {
          operations_research::sat::CpObjectiveProto::Clear(v149);
        }

        v144 &= ~1u;
        v12 = this[17];
        if (!v12)
        {
          v12 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
        }

        v138 = this;
        if (*(v12 + 4) >= 1)
        {
          v13 = 0;
          v137 = (this + 3);
          do
          {
            v14 = *(v12[3] + v13);
            v15 = v12[6][v13];
            v16 = v146;
            v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v145, google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
            v18 = v17;
            v19 = (*v137 + 8 * v14 + 7);
            if ((*v137 & 1) == 0)
            {
              v19 = v137;
            }

            v20 = *v19;
            v21 = *(v20 + 24);
            v22 = v21[*(v20 + 16) - 1];
            v23 = *v21;
            v25 = *(v17 + 16);
            v24 = *(v17 + 20);
            v26 = (v17 + 16);
            if (v25 == v24)
            {
              google::protobuf::RepeatedField<long long>::Grow(v17 + 16, v24);
              v25 = *(v18 + 16);
              v24 = *(v18 + 20);
            }

            v27 = v23 - v15;
            v28 = *(v18 + 24);
            v29 = v25 + 1;
            *(v18 + 16) = v25 + 1;
            *(v28 + 8 * v25) = v27;
            if (v25 + 1 == v24)
            {
              google::protobuf::RepeatedField<long long>::Grow(v26, v24);
              v29 = *(v18 + 16);
              v28 = *(v18 + 24);
            }

            v30 = v22 - v15;
            *v26 = v29 + 1;
            *(v28 + 8 * v29) = v22 - v15;
            v31 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(v147, google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v32 = v31;
            if (*(v31 + 60) == 12)
            {
              v33 = *(v31 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v31);
              *(v32 + 60) = 12;
              v34 = *(v32 + 8);
              if (v34)
              {
                v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v34);
              *(v32 + 48) = v33;
            }

            v36 = *(v33 + 16);
            v35 = *(v33 + 20);
            if (v36 == v35)
            {
              google::protobuf::RepeatedField<int>::Grow(v33 + 16, v35, (v35 + 1));
              v36 = *(v33 + 16);
              LODWORD(v35) = *(v33 + 20);
            }

            v37 = *(v33 + 24);
            v38 = (v36 + 1);
            *(v33 + 16) = v38;
            *(v37 + 4 * v36) = v16;
            v39 = *(v33 + 40);
            if (v39 == *(v33 + 44))
            {
              google::protobuf::RepeatedField<long long>::Grow(v33 + 40, *(v33 + 44));
              v109 = *(v33 + 40);
              v38 = *(v33 + 16);
              v110 = *(v33 + 20);
              v111 = *(v33 + 48);
              *(v33 + 40) = v109 + 1;
              *(v111 + 8 * v109) = 1;
              if (v38 != v110)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v40 = *(v33 + 48);
              *(v33 + 40) = v39 + 1;
              *(v40 + 8 * v39) = 1;
              if (v38 != v35)
              {
                goto LABEL_32;
              }
            }

            google::protobuf::RepeatedField<int>::Grow(v33 + 16, v38, (v38 + 1));
            LODWORD(v38) = *(v33 + 16);
LABEL_32:
            v41 = *(v33 + 24);
            *(v33 + 16) = v38 + 1;
            *(v41 + 4 * v38) = v14;
            v43 = *(v33 + 40);
            v42 = *(v33 + 44);
            if (v43 == v42)
            {
              google::protobuf::RepeatedField<long long>::Grow(v33 + 40, v42);
              v43 = *(v33 + 40);
            }

            v44 = *(v33 + 64);
            v45 = *(v33 + 48);
            *(v33 + 40) = v43 + 1;
            *(v45 + 8 * v43) = -1;
            v46 = *(v33 + 68);
            if (v44 == v46)
            {
              google::protobuf::RepeatedField<long long>::Grow(v33 + 64, v46);
              v44 = *(v33 + 64);
              v46 = *(v33 + 68);
            }

            v47 = -v15;
            v48 = *(v33 + 72);
            v49 = v44 + 1;
            *(v33 + 64) = v44 + 1;
            *(v48 + 8 * v44) = v47;
            if (v44 + 1 == v46)
            {
              google::protobuf::RepeatedField<long long>::Grow(v33 + 64, v46);
              v49 = *(v33 + 64);
              v48 = *(v33 + 72);
            }

            *(v33 + 64) = v49 + 1;
            *(v48 + 8 * v49) = v47;
            v50 = v146;
            v51 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v145, google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
            v52 = v51;
            if (v27 >= 0)
            {
              v53 = v27;
            }

            else
            {
              v53 = -v27;
            }

            if (v30 >= 0)
            {
              v54 = v30;
            }

            else
            {
              v54 = -v30;
            }

            if (v53 <= v54)
            {
              v55 = v54;
            }

            else
            {
              v55 = v53;
            }

            v57 = *(v51 + 16);
            v56 = *(v51 + 20);
            v58 = (v51 + 16);
            if (v57 == v56)
            {
              google::protobuf::RepeatedField<long long>::Grow(v51 + 16, v56);
              v59 = v138;
              v112 = *(v52 + 16);
              v56 = *(v52 + 20);
              v60 = *(v52 + 24);
              v61 = v112 + 1;
              *(v52 + 16) = v112 + 1;
              *(v60 + 8 * v112) = 0;
              if (v112 + 1 != v56)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v59 = v138;
              v60 = *(v51 + 24);
              v61 = v57 + 1;
              *(v51 + 16) = v57 + 1;
              *(v60 + 8 * v57) = 0;
              if (v57 + 1 != v56)
              {
                goto LABEL_49;
              }
            }

            google::protobuf::RepeatedField<long long>::Grow(v58, v56);
            v61 = *(v52 + 16);
            v60 = *(v52 + 24);
LABEL_49:
            *v58 = v61 + 1;
            *(v60 + 8 * v61) = v55;
            v62 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(v147, google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v63 = v62;
            if (*(v62 + 60) != 27)
            {
              operations_research::sat::ConstraintProto::clear_constraint(v62);
              *(v63 + 60) = 27;
              v66 = *(v63 + 8);
              if (v66)
              {
                v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v66);
              v64 = v67;
              *(v63 + 48) = v67;
              *(v67 + 16) |= 1u;
              v65 = *(v67 + 48);
              if (v65)
              {
                goto LABEL_58;
              }

LABEL_55:
              v68 = *(v64 + 8);
              if (v68)
              {
                v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v68);
              v65 = v69;
              *(v64 + 48) = v69;
              goto LABEL_58;
            }

            v64 = *(v62 + 48);
            *(v64 + 16) |= 1u;
            v65 = *(v64 + 48);
            if (!v65)
            {
              goto LABEL_55;
            }

LABEL_58:
            v71 = *(v65 + 16);
            v70 = *(v65 + 20);
            if (v71 == v70)
            {
              google::protobuf::RepeatedField<int>::Grow(v65 + 16, v70, (v70 + 1));
              v71 = *(v65 + 16);
            }

            v72 = *(v65 + 24);
            *(v65 + 16) = v71 + 1;
            *(v72 + 4 * v71) = v50;
            *(v64 + 16) |= 1u;
            v73 = *(v64 + 48);
            if (!v73)
            {
              v74 = *(v64 + 8);
              if (v74)
              {
                v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v74);
              v73 = v75;
              *(v64 + 48) = v75;
            }

            v77 = *(v73 + 40);
            v76 = *(v73 + 44);
            if (v77 == v76)
            {
              google::protobuf::RepeatedField<long long>::Grow(v73 + 40, v76);
              v77 = *(v73 + 40);
            }

            v78 = *(v73 + 48);
            *(v73 + 40) = v77 + 1;
            *(v78 + 8 * v77) = 1;
            v79 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v64 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            v80 = v79;
            v82 = *(v79 + 16);
            v81 = *(v79 + 20);
            v83 = (v79 + 16);
            if (v82 == v81)
            {
              google::protobuf::RepeatedField<int>::Grow(v79 + 16, v81, (v81 + 1));
              v82 = *v83;
            }

            v84 = *(v80 + 24);
            *(v80 + 16) = v82 + 1;
            *(v84 + 4 * v82) = v16;
            v86 = *(v80 + 40);
            v85 = *(v80 + 44);
            if (v86 == v85)
            {
              google::protobuf::RepeatedField<long long>::Grow(v80 + 40, v85);
              v86 = *(v80 + 40);
            }

            v87 = *(v80 + 48);
            *(v80 + 40) = v86 + 1;
            *(v87 + 8 * v86) = 1;
            v88 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v64 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            v89 = v88;
            v91 = *(v88 + 16);
            v90 = *(v88 + 20);
            v92 = (v88 + 16);
            if (v91 == v90)
            {
              google::protobuf::RepeatedField<int>::Grow(v88 + 16, v90, (v90 + 1));
              v91 = *v92;
            }

            v93 = *(v89 + 24);
            *(v89 + 16) = v91 + 1;
            *(v93 + 4 * v91) = v16;
            v95 = *(v89 + 40);
            v94 = *(v89 + 44);
            if (v95 == v94)
            {
              google::protobuf::RepeatedField<long long>::Grow(v89 + 40, v94);
              v95 = *(v89 + 40);
            }

            v96 = *(v89 + 48);
            *(v89 + 40) = v95 + 1;
            *(v96 + 8 * v95) = -1;
            v144 |= 1u;
            v97 = v149;
            if (!v149)
            {
              v98 = v143;
              if (v143)
              {
                v98 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v98);
              v97 = v99;
              v149 = v99;
            }

            v101 = *(v97 + 4);
            v100 = *(v97 + 5);
            if (v101 == v100)
            {
              google::protobuf::RepeatedField<int>::Grow(v97 + 16, v100, (v100 + 1));
              v101 = *(v97 + 4);
            }

            v102 = *(v97 + 3);
            *(v97 + 4) = v101 + 1;
            *(v102 + 4 * v101) = v50;
            v144 |= 1u;
            v103 = v149;
            if (!v149)
            {
              v104 = v143;
              if (v143)
              {
                v104 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v104);
              v103 = v105;
              v149 = v105;
            }

            v107 = *(v103 + 10);
            v106 = *(v103 + 11);
            if (v107 == v106)
            {
              google::protobuf::RepeatedField<long long>::Grow(v103 + 40, v106);
              v107 = *(v103 + 10);
            }

            v108 = *(v103 + 6);
            *(v103 + 10) = v107 + 1;
            *(v108 + 8 * v107) = 1;
            ++v13;
            v12 = *(v59 + 17);
            if (!v12)
            {
              v12 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
            }
          }

          while (v13 < *(v12 + 4));
        }

        v125 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v153);
        operations_research::sat::SharedResponseManager::InitializeObjective(v125, &v142, v126);
        operations_research::sat::ConfigureSearchHeuristics(v153, v128);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v153);
        v161 = 0;
        v162 = 0;
        v163 = 0;
        if (v148)
        {
          if ((v148 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v129 = operations_research::sat::ResetAndSolveIntegerProblem(&v161, v153);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        if (v129 == 2)
        {
          v131 = v140;
          v130 = v141;
          v132 = *(v136 + 23);
          if (v132 >= 0)
          {
            v133 = v136;
          }

          else
          {
            v133 = *v136;
          }

          if (v132 < 0)
          {
            v132 = *(v136 + 1);
          }

          v161 = v133;
          v162 = v132;
          v160[0] = " [repaired]";
          v160[1] = 11;
          absl::lts_20240722::StrCat(&v161, v160, &__p);
          operations_research::sat::SharedResponseManager::NewSolution(v135, v131, (v130 - v131) >> 3, &__p, v153);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v140)
          {
            v141 = v140;
            operator delete(v140);
          }
        }

        operations_research::sat::CpModelProto::~CpModelProto(&v142);
        operations_research::sat::SatParameters::~SatParameters(v150);
      }
    }
  }

  operations_research::sat::Model::~Model(v153);
  v134 = *MEMORY[0x277D85DE8];
}

void sub_23CAFCCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  operations_research::sat::CpModelProto::~CpModelProto(&a19);
  operations_research::sat::SatParameters::~SatParameters(&a39);
  operations_research::sat::Model::~Model(&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::QuickSolveWithHint(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v44[122] = *MEMORY[0x277D85DE8];
  if ((*(v3 + 16) & 2) == 0)
  {
    goto LABEL_45;
  }

  v5 = v4;
  v6 = v3;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v4);
  if (operations_research::sat::SharedResponseManager::ProblemIsSolved(v7))
  {
    goto LABEL_45;
  }

  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v5);
  if (v8[39].i8[3])
  {
    goto LABEL_45;
  }

  v9 = v8;
  operations_research::sat::SatParameters::SatParameters(v36, 0, v8);
  v9[57] = v9[87].i32[0];
  v9[3].i32[1] |= 0x40u;
  v9[31].i32[0] = 6;
  v9[39].i8[3] = 0;
  v9[2] = vorr_s8(v9[2], 0x40000000002000);
  v34 = v9;
  operations_research::sat::SatParameters::SatParameters(v35, 0, v36);
  v41 = v9;
  operations_research::sat::SatParameters::SatParameters(v42, 0, v35);
  __p = v41;
  operations_research::sat::SatParameters::SatParameters(v44, 0, v42);
  v39 = __p;
  operations_research::sat::SatParameters::SatParameters(v40, 0, v44);
  v38 = 1;
  operations_research::sat::SatParameters::~SatParameters(v44);
  operations_research::sat::SatParameters::~SatParameters(v42);
  operations_research::sat::SatParameters::~SatParameters(v35);
  operations_research::sat::ConfigureSearchHeuristics(v5, v10);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v5);
  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>((v6 + 96), &__p);
  v11 = operations_research::sat::ResetAndSolveIntegerProblem(&__p, v5);
  if (__p)
  {
    v44[0] = __p;
    operator delete(__p);
  }

  v33 = v11;
  if (v11 == 2)
  {
    v12 = *&v32.__r_.__value_.__l.__data_;
    v13 = *(v5 + 23);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v5;
    }

    else
    {
      v14 = *v5;
    }

    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v5 + 8);
    }

    __p = v14;
    v44[0] = v13;
    v41 = " [hint]";
    v42[0] = 7;
    absl::lts_20240722::StrCat(&__p, &v41, &v31);
    operations_research::sat::SharedResponseManager::NewSolution(v7, v12, (*(&v12 + 1) - v12) >> 3, &v31, v5);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (*(v6 + 16))
    {
      v21 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(v5) + 16);
      v22 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v5);
      operations_research::sat::SatSolver::Backtrack(v22, 0);
      v23 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v5);
      InnerObjectiveUpperBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveUpperBound(v7);
      if (InnerObjectiveUpperBound >= 0x8000000000000002)
      {
        v25 = -InnerObjectiveUpperBound;
      }

      else
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((operations_research::sat::IntegerTrail::Enqueue(v23, v21 ^ 1, v25, 0, 0, 0, 0) & 1) == 0)
      {
        v26 = *(v5 + 23);
        if ((v26 & 0x80u) == 0)
        {
          v27 = v5;
        }

        else
        {
          v27 = *v5;
        }

        if ((v26 & 0x80u) != 0)
        {
          v26 = *(v5 + 8);
        }

        __p = v27;
        v44[0] = v26;
        v41 = " [hint]";
        v42[0] = 7;
        absl::lts_20240722::StrCat(&__p, &v41, &v31);
        operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v7, &v31);
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v9[35].i8[4] == 1)
    {
      v37[0] = &unk_284F3F4F0;
      v37[3] = v37;
      operations_research::sat::Model::Add<void>(v5, v37);
      std::function<void ()(operations_research::sat::Model *)>::~function(v37);
    }

    v20 = v32.__r_.__value_.__r.__words[0];
    if (!v32.__r_.__value_.__r.__words[0])
    {
      goto LABEL_42;
    }

    v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v9[35].i8[2] == 1)
    {
      absl::lts_20240722::Mutex::Lock(v7 + 15);
      v16 = v7[23];
      v15 = v7[24];
      absl::lts_20240722::Mutex::Unlock((v7 + 15));
      if (((v15 - v16) & 0x3FFFFFFFC0) == 0)
      {
        v17 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v5);
        if ((operations_research::TimeLimit::LimitReached(v17) & 1) == 0)
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 2081);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "QuickSolveWithHint() didn't find a feasible solution.", 0x35uLL);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, " The model name is '", 0x14uLL);
          v29 = absl::lts_20240722::log_internal::LogMessage::operator<<(&__p, (*(v6 + 120) & 0xFFFFFFFFFFFFFFFCLL));
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "'.", 2uLL);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, " Status: ", 9uLL);
          v30 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(v29, &v33);
          absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v30, ".");
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
        }
      }
    }

    if (v11 != 1)
    {
      goto LABEL_42;
    }

    v18 = *(v5 + 23);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v5;
    }

    else
    {
      v19 = *v5;
    }

    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v5 + 8);
    }

    __p = v19;
    v44[0] = v18;
    v41 = " [hint]";
    v42[0] = 7;
    absl::lts_20240722::StrCat(&__p, &v41, &v32);
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v7, &v32);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v20 = v32.__r_.__value_.__r.__words[0];
  }

  operator delete(v20);
LABEL_42:
  if (v38 == 1)
  {
    operations_research::sat::SatParameters::CopyFrom(v39, v40);
    v38 = 0;
    operations_research::sat::SatParameters::~SatParameters(v40);
  }

  operations_research::sat::SatParameters::~SatParameters(v36);
LABEL_45:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_23CAFD2F0(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void sub_23CAFD3F4(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters((v3 + 8));
  operations_research::sat::SatParameters::~SatParameters((v2 + 8));
  operations_research::sat::SatParameters::~SatParameters((v1 + 8));
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void sub_23CAFD428(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters((v1 + 8));
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  if (operations_research::sat::SharedResponseManager::ProblemIsSolved(v5) || (v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2), (*(v6 + 294) & 1) != 0))
  {
LABEL_3:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = v6;
  v25[0] = this;
  v25[1] = a2;
  v25[2] = v5;
  v25[3] = 0x7FFFFFFFFFFFFFFELL;
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if (operations_research::sat::SatSolver::ResetToLevelZero(v9))
  {
    operations_research::sat::ConfigureSearchHeuristics(a2, v10);
    v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    if (*(v8 + 312) == 1)
    {
      operations_research::sat::ContinuousProber::ContinuousProber(&__p, this, a2);
      while (1)
      {
        v12 = operations_research::sat::ContinuousProber::Probe(&__p);
        if (v12 != 2)
        {
          break;
        }
      }

      if (v12 == 1)
      {
        operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
      }

      operations_research::sat::ContinuousProber::~ContinuousProber(&__p);
    }

    else if (*(this + 16))
    {
      LODWORD(v22) = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a2) + 16);
      if (v22 == -1)
      {
      }

      if (*(v8 + 320))
      {
        operations_research::sat::Model::GetOrCreate<operations_research::sat::LbTreeSearch>(a2);
        operator new();
      }

      if (*(v8 + 315) != 1)
      {
        if (*(v8 + 323) == 1)
        {
          operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeWorker>(a2);
          operator new();
        }

        if ((*(v8 + 580) & 0x80000000) == 0)
        {
          operator new();
        }

        operator new();
      }

      if (*(v8 + 321) == 1)
      {
        v16 = operations_research::sat::Model::Mutable<operations_research::sat::HittingSetOptimizer>(a2);
        operations_research::sat::HittingSetOptimizer::Optimize(v16);
      }

      v21 = operations_research::sat::Model::Mutable<operations_research::sat::CoreBasedOptimizer>(a2);
      if (operations_research::sat::CoreBasedOptimizer::Optimize(v21) - 1 <= 1)
      {
        operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
      }
    }

    else
    {
      v14 = v11;
      while (1)
      {
        if (*(v8 + 323) == 1)
        {
          operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeWorker>(a2);
          v30 = 0;
          operator new();
        }

        operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(this + 24, &__p);
        v15 = operations_research::sat::ResetAndSolveIntegerProblem(&__p, a2);
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        if (v15 != 2)
        {
          break;
        }

        if (*(v8 + 284) != 1)
        {
          goto LABEL_3;
        }

        v26 = &unk_284F3F4F0;
        v28 = &v26;
        operations_research::sat::ExcludeCurrentSolutionAndBacktrack(void)::{lambda(operations_research::sat::Model *)#1}::operator()(&v27, a2);
        if (v28 == &v26)
        {
          (*(*v28 + 4))(v28);
        }

        else if (v28)
        {
          (*(*v28 + 5))();
        }
      }

      if (v15)
      {
        if (v15 == 1)
        {
          operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
        }
      }

      else
      {
        operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
        v17 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
        v18 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
        operations_research::sat::SatSolver::GetLastIncompatibleDecisions(v18, &__p);
        operations_research::sat::MinimizeCoreWithPropagation(v17, v18, &__p);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        if (__p.__begin_ != __p.__end_)
        {
          v19 = *(v14 + 72);
          if (*__p.__begin_ >> 1 < ((*(v14 + 80) - v19) >> 2))
          {
            v20 = *(v19 + 4 * (*__p.__begin_ >> 1));
          }

          operator new();
        }

        operations_research::sat::SharedResponseManager::AddUnsatCore(v5, &v22);
        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }
      }
    }

    goto LABEL_3;
  }

  v13 = *MEMORY[0x277D85DE8];

  operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
}