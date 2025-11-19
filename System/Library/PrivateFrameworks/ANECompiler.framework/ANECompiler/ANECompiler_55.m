void *operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3 & 0xFFFFFFFE;
  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (a3)
  {
    v8 = 1 - a4;
  }

  else
  {
    v8 = a4;
  }

  v9 = a3 & 1 ^ a2;
  v10 = (**(a1 + 24) + 24 * (v7 / 2));
  v11 = operations_research::Domain::Min(v10);
  v12 = operations_research::Domain::Max(v10);
  if (v8 <= v11)
  {
    v13 = *a1;
    v16 = *MEMORY[0x277D85DE8];
    v15 = v9;
    goto LABEL_11;
  }

  if (v8 > v12)
  {
    v13 = *a1;
    v14 = *MEMORY[0x277D85DE8];
    v15 = v9 ^ 1;
LABEL_11:

    return operations_research::sat::SatSolver::AddUnitClause(v13, v15);
  }

  v18 = v12;
  v19 = (v7 + (v7 >> 31)) >> 1;
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = (v21 - v20) >> 3;
  v23 = 0xAAAAAAAAAAAAAAABLL * v22;
  if (v7 / 2 >= -1431655765 * v22)
  {
    if (v19 + 1 <= v23)
    {
      if (v19 + 1 < v23)
      {
        v57 = v12;
        v24 = (v20 + 24 * (v7 / 2 + 1));
        while (v21 != v24)
        {
          v21 -= 3;
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::clear(v21);
        }

        *(a1 + 56) = v24;
        v18 = v57;
      }
    }

    else
    {
      std::vector<absl::lts_20240722::btree_map<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>>::__append((a1 + 48), v19 + 1 - v23);
    }
  }

  v25 = (*(a1 + 48) + 24 * (v7 / 2));
  v26 = (1 - v8);
  if (v7)
  {
    v27 = v6;
  }

  else
  {
    v27 = v7;
  }

  if ((v7 & 1) == 0)
  {
    v26 = v8;
  }

  v28 = v26 - 1;
  v29 = (**(a1 + 24) + 24 * (v27 / 2));
  v32 = *v29;
  v30 = v29 + 1;
  v31 = v32;
  if (v32)
  {
    v30 = *v30;
  }

  if ((v31 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v33 = 16 * (v31 >> 1) - 16;
    v34 = 0x8000000000000000;
    while (v28 <= v34)
    {
      if (v26 > v34)
      {
        goto LABEL_41;
      }

LABEL_31:
      v34 = v30[1];
      v30 += 2;
      v35 = v26 <= v34 || v33 == 0;
      v33 -= 16;
      if (v35)
      {
        goto LABEL_44;
      }
    }

    if (v28 < *v30)
    {
      v28 = v34;
    }

    if (v26 <= v34)
    {
      goto LABEL_31;
    }

LABEL_41:
    if (v26 <= *v30)
    {
      v26 = *v30;
    }

    goto LABEL_31;
  }

LABEL_44:
  if (v28 >= 0x8000000000000002)
  {
    v36 = -v28;
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v37 = v27 ^ 1;
  if (v7)
  {
    v38 = v36;
  }

  else
  {
    v37 = v27;
    v38 = v26;
  }

  *&v61 = v37;
  *(&v61 + 1) = v38;
  if ((v7 & 1) == 0)
  {
    v27 |= 1uLL;
    v26 = v36;
  }

  *&v62 = v27;
  *(&v62 + 1) = v26;
  v63 = v38;
  v64 = v9;
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::insert_unique<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>(v25, &v63, &v63, &v58);
  if (v60)
  {
    operations_research::sat::IntegerEncoder::AddImplications(a1, v25, v58, v59, v9);
    if (*(*a1 + 296))
    {
      v39 = a2 << 32;
    }

    else
    {
      v43 = a2 >> 6;
      v44 = *(*(*(*a1 + 216) + 24) + 8 * v43);
      if ((v44 >> v9))
      {
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](*(a1 + 16) + 24, &v61);
        v44 = *(*(*(*a1 + 216) + 24) + 8 * v43);
      }

      v39 = a2 << 32;
      if ((v44 >> (v9 & 0x3F ^ 1u)))
      {
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](*(a1 + 16) + 24, &v62);
      }
    }

    v45 = ((v39 | 0x100000000) + 0x100000000) >> 32;
    v46 = *(a1 + 112);
    v47 = (a1 + 112);
    v48 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 120) - v46) >> 3);
    if (v45 > v48)
    {
      std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>>::__append((a1 + 112), v45 - v48);
      v46 = *v47;
    }

    v49 = (v46 + 40 * v9);
    v50 = v49 + 1;
    if (*v49)
    {
      v50 = v49[1];
      v51 = v49[2];
    }

    else
    {
      v51 = 2;
    }

    v52 = *v49 >> 1;
    if (v52 == v51)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>::EmplaceBackSlow<operations_research::sat::IntegerLiteral const&>(v49);
    }

    *&v50[2 * v52] = v61;
    *v49 += 2;
    result = (*v47 + 40 * (v9 ^ 1));
    v53 = result + 1;
    if (*result)
    {
      v53 = result[1];
      v54 = result[2];
    }

    else
    {
      v54 = 2;
    }

    v55 = *result >> 1;
    if (v55 == v54)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>::EmplaceBackSlow<operations_research::sat::IntegerLiteral const&>(result);
    }

    *&v53[2 * v55] = v62;
    *result += 2;
    if (*(&v61 + 1) == v18)
    {
      result = operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(a1, v9, v7, v18);
    }

    if (!(v11 + *(&v62 + 1)))
    {
      result = operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(a1, v9 ^ 1u, v7, v11);
    }
  }

  else
  {
    v40 = *&v58[16 * v59 + 24];
    if (v40 != v9)
    {
      v41 = *a1;
      LODWORD(v63) = v9;
      HIDWORD(v63) = v40 ^ 1;
      operations_research::sat::SatSolver::AddClauseDuringSearch(v41, &v63, 2uLL);
      v42 = *a1;
      LODWORD(v63) = v9 ^ 1;
      HIDWORD(v63) = v40;
      result = operations_research::sat::SatSolver::AddClauseDuringSearch(v42, &v63, 2uLL);
    }
  }

  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF2EA8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t operations_research::sat::IntegerEncoder::GetAssociatedEqualityLiteral(void *a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a2 / 2);
  if (a2)
  {
    v5 = -a3;
  }

  else
  {
    v5 = a3;
  }

  _X11 = a1[33];
  __asm { PRFM            #4, [X11] }

  v11 = v5 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4)));
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = a1[31];
  v14 = vdup_n_s8(v12 & 0x7F);
  v15 = ((v12 >> 7) ^ (_X11 >> 12)) & v13;
  v16 = *(_X11 + v15);
  v17 = vceq_s8(v16, v14);
  if (v17)
  {
LABEL_5:
    while (1)
    {
      v18 = a1[34] + 24 * ((v15 + (__clz(__rbit64(v17)) >> 3)) & v13);
      if (*v18 == v4 && *(v18 + 8) == v5)
      {
        return *(v18 + 16);
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    while (!*&vceq_s8(v16, 0x8080808080808080))
    {
      v3 += 8;
      v15 = (v3 + v15) & v13;
      v16 = *(_X11 + v15);
      v17 = vceq_s8(v16, v14);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    return 0xFFFFFFFFLL;
  }
}

double operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = -a4;
  }

  else
  {
    v7 = a4;
  }

  v8 = a3 & 0xFFFFFFFE;
  v9 = a3 >> 1;
  v10 = **(a1 + 24);
  v11 = (v10 + 24 * (a3 >> 1));
  if (v7 == -1)
  {
    if (operations_research::Domain::Min((v10 + 24 * v9)) >= -1 && operations_research::Domain::Max(v11) <= 0)
    {
      v14 = *(a1 + 224);
      v15 = (*(a1 + 232) - v14) >> 2;
      if (a2 >= v15)
      {
        v17 = ((a2 << 32) + 0x100000000) >> 32;
        if (v17 <= v15)
        {
          if (v17 < v15)
          {
            *(a1 + 232) = v14 + 4 * v17;
          }
        }

        else
        {
          std::vector<int>::__append((a1 + 224), v17 - v15, &operations_research::sat::kNoIntegerVariable);
          v14 = *(a1 + 224);
        }
      }

      else if (*(v14 + 4 * a2) != -1)
      {
        goto LABEL_26;
      }

      *(v14 + 4 * a2) = a3 | 1;
    }
  }

  else if (v7 == 1 && (operations_research::Domain::Min((v10 + 24 * v9)) & 0x8000000000000000) == 0 && operations_research::Domain::Max(v11) <= 1)
  {
    v12 = *(a1 + 224);
    v13 = (*(a1 + 232) - v12) >> 2;
    if (a2 >= v13)
    {
      v16 = ((a2 << 32) + 0x100000000) >> 32;
      if (v16 > v13)
      {
        std::vector<int>::__append((a1 + 224), v16 - v13, &operations_research::sat::kNoIntegerVariable);
        *(*(a1 + 224) + 4 * a2) = v8;
        goto LABEL_26;
      }

      if (v16 < v13)
      {
        *(a1 + 232) = v12 + 4 * v16;
      }
    }

    else if (*(v12 + 4 * a2) != -1)
    {
      goto LABEL_26;
    }

    *(v12 + 4 * a2) = v8;
  }

LABEL_26:
  *&v57 = (a3 >> 1);
  *(&v57 + 1) = v7;
  v58 = a2;
  v54 = (a1 + 248);
  v55 = &v57;
  v56 = &v58;
  *&result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::EmplaceDecomposable::operator()<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::piecewise_construct_t const&,std::tuple<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>&&>,std::tuple<operations_research::sat::Literal&&>>(&v54, &v57, &v55, &v56, v52).n128_u64[0];
  if ((v53 & 1) == 0)
  {
    v24 = *(v52[1] + 16);
    if (v24 != a2)
    {
      v25 = *a1;
      LODWORD(v57) = a2;
      DWORD1(v57) = v24 ^ 1;
      operations_research::sat::SatSolver::AddClauseDuringSearch(v25, &v57, 2uLL);
      v26 = *a1;
      LODWORD(v57) = a2 ^ 1;
      DWORD1(v57) = v24;
      operations_research::sat::SatSolver::AddClauseDuringSearch(v26, &v57, 2uLL);
    }

    goto LABEL_55;
  }

  if (!operations_research::Domain::Contains(v11, v7))
  {
    operations_research::sat::SatSolver::AddUnitClause(*a1, a2 ^ 1);
LABEL_55:
    v36 = *MEMORY[0x277D85DE8];
    return result;
  }

  v19 = a3 >> 1;
  v21 = *(a1 + 280);
  v20 = *(a1 + 288);
  v22 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v21) >> 3);
  if (v19 >= v22)
  {
    v23 = v9 + 1;
    if (v23 <= v22)
    {
      if (v23 < v22)
      {
        v27 = v21 + 40 * v23;
        if (v20 != v27)
        {
          v28 = *(a1 + 288);
          do
          {
            v29 = *(v28 - 40);
            v28 -= 40;
            if (v29)
            {
              operator delete(*(v20 - 32));
            }

            v20 = v28;
          }

          while (v28 != v27);
        }

        *(a1 + 288) = v27;
      }
    }

    else
    {
      std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>>::__append((a1 + 280), v23 - v22);
    }

    std::vector<BOOL>::resize(a1 + 304, v23, 0);
    v21 = *(a1 + 280);
  }

  v30 = (v21 + 40 * v19);
  *&v57 = v7;
  DWORD2(v57) = a2;
  v31 = v30 + 1;
  if (*v30)
  {
    v31 = v30[1];
    v32 = v30[2];
  }

  else
  {
    v32 = 2;
  }

  v33 = *v30 >> 1;
  if (v33 == v32)
  {
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>::EmplaceBackSlow<operations_research::sat::ValueLiteralPair>(v30);
  }

  *&v31[2 * v33] = v57;
  *v30 += 2;
  if (operations_research::Domain::IsFixed(v11))
  {
    operations_research::sat::SatSolver::AddUnitClause(*a1, a2);
    goto LABEL_55;
  }

  if (v7 >= 0x8000000000000002)
  {
    v34 = -v7;
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v35 = a3 & 0xFFFFFFFE;
  if (v7 == operations_research::Domain::Min(v11))
  {
    operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(a1, a2, v35 | 1, v34);
    goto LABEL_55;
  }

  if (v7 == operations_research::Domain::Max(v11))
  {
    operations_research::sat::IntegerEncoder::AssociateToIntegerLiteral(a1, a2, a3 & 0xFFFFFFFE, v7);
    goto LABEL_55;
  }

  AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(a1, a3 & 0xFFFFFFFE, v7);
  v38 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(a1, v35 | 1, v34);
  v39 = *a1;
  LODWORD(v57) = AssociatedLiteral;
  DWORD1(v57) = a2 ^ 1;
  operations_research::sat::SatSolver::AddClauseDuringSearch(v39, &v57, 2uLL);
  v40 = *a1;
  LODWORD(v57) = v38;
  DWORD1(v57) = a2 ^ 1;
  operations_research::sat::SatSolver::AddClauseDuringSearch(v40, &v57, 2uLL);
  v41 = *a1;
  LODWORD(v57) = AssociatedLiteral ^ 1;
  DWORD1(v57) = v38 ^ 1;
  DWORD2(v57) = a2;
  operations_research::sat::SatSolver::AddClauseDuringSearch(v41, &v57, 3uLL);
  v42 = a2 << 32;
  v43 = (v42 + 0x100000000) >> 32;
  v44 = *(a1 + 176);
  v45 = *(a1 + 184);
  v46 = (a1 + 176);
  if (0xCCCCCCCCCCCCCCCDLL * ((v45 - v44) >> 3) < v43)
  {
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>,std::allocator<absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>::resize(v46, v43);
    v44 = *v46;
  }

  v47 = (v44 + 40 * SHIDWORD(v42));
  LODWORD(v57) = v8;
  *(&v57 + 1) = v7;
  v48 = v47 + 1;
  if (*v47)
  {
    v48 = v47[1];
    v49 = v47[2];
  }

  else
  {
    v49 = 2;
  }

  v50 = *v47 >> 1;
  if (v50 == v49)
  {
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>::EmplaceBackSlow<operations_research::sat::IntegerLiteral const&>(v47);
  }

  result = *&v57;
  *&v48[2 * v50] = v57;
  *v47 += 2;
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>,std::allocator<absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    if (v3 != v7)
    {
      v8 = *(a1 + 8);
      do
      {
        v9 = *(v8 - 40);
        v8 -= 40;
        if (v9)
        {
          operator delete(*(v3 - 32));
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    *(a1 + 8) = v7;
  }
}

BOOL operations_research::sat::IntegerEncoder::IsFixedOrHasAssociatedLiteral(uint64_t a1, signed int a2, uint64_t a3)
{
  v4 = 1;
  if (a2)
  {
    v5 = 1 - a3;
  }

  else
  {
    v5 = a3;
  }

  if (a2)
  {
    v6 = a2 & 0xFFFFFFFE;
  }

  else
  {
    v6 = a2;
  }

  if (v5 > operations_research::Domain::Min((**(a1 + 24) + 24 * (v6 / 2))))
  {
    if (v5 > operations_research::Domain::Max((**(a1 + 24) + 24 * (v6 / 2))))
    {
      return 1;
    }

    v20 = 0;
    v7 = (1 - v5);
    if ((v6 & 1) == 0)
    {
      v7 = v5;
    }

    v8 = v7 - 1;
    v9 = (**(a1 + 24) + 24 * (v6 >> 1));
    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    if (v12)
    {
      v10 = *v10;
    }

    if ((v11 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v13 = 16 * (v11 >> 1) - 16;
      v14 = 0x8000000000000000;
      while (v8 <= v14)
      {
        if (v7 > v14)
        {
          goto LABEL_26;
        }

LABEL_16:
        v14 = v10[1];
        v10 += 2;
        v15 = v7 <= v14 || v13 == 0;
        v13 -= 16;
        if (v15)
        {
          goto LABEL_29;
        }
      }

      if (v8 < *v10)
      {
        v8 = v14;
      }

      if (v7 <= v14)
      {
        goto LABEL_16;
      }

LABEL_26:
      if (v7 <= *v10)
      {
        v7 = *v10;
      }

      goto LABEL_16;
    }

LABEL_29:
    if (v8 >= 0x8000000000000002)
    {
      v16 = -v8;
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v7;
    }

    return operations_research::sat::IntegerEncoder::SearchForLiteralAtOrBefore(a1, v6, v17, &v20) != -1 && v20 >= v5;
  }

  return v4;
}

uint64_t operations_research::sat::IntegerEncoder::SearchForLiteralAtOrBefore(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = a2 / 2;
  v5 = *(a1 + 48);
  if (a2 / 2 >= (-1431655765 * ((*(a1 + 56) - v5) >> 3)))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (v5 + 24 * v4);
  if (a2)
  {
    v13 = *v6;
    v14 = (*v6)[10];
    if ((*v6)[10])
    {
      goto LABEL_24;
    }

    while (!v13[11])
    {
      v13 = *&v13[8 * v14 + 256];
      v14 = v13[10];
      if (v13[10])
      {
LABEL_24:
        v15 = 0;
        do
        {
          v16 = (v14 + v15) >> 1;
          if (*&v13[16 * v16 + 16] <= -a3)
          {
            v15 = v16 + 1;
          }

          else
          {
            v14 = (v14 + v15) >> 1;
          }
        }

        while (v15 != v14);
      }
    }

    while (v14 == v13[10])
    {
      LODWORD(v14) = v13[8];
      v13 = *v13;
      if (v13[11])
      {
        v22 = v6[1][10];
        return 0xFFFFFFFFLL;
      }
    }

    v17 = v6[1];
    if (v13 != v17 || v14 != v17[10])
    {
      v24 = (**(a1 + 24) + 24 * v4);
      v25 = &v13[16 * v14];
      v27 = *(v25 + 2);
      v26 = v25 + 16;
      if (v27 > operations_research::Domain::Min(v24))
      {
        *a4 = -operations_research::Domain::ValueAtOrBefore(v24, *v26 - 1);
        return *(v26 + 2) ^ 1u;
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = *v6;
    v8 = (*v6)[10];
    if ((*v6)[10])
    {
      goto LABEL_6;
    }

    while (!v7[11])
    {
      v7 = *&v7[8 * v8 + 256];
      v8 = v7[10];
      if (v7[10])
      {
LABEL_6:
        v9 = 0;
        do
        {
          v10 = (v8 + v9) >> 1;
          if (a3 >= *&v7[16 * v10 + 16])
          {
            v9 = v10 + 1;
          }

          else
          {
            v8 = (v8 + v9) >> 1;
          }
        }

        while (v9 != v8);
      }
    }

    do
    {
      if (v8 != v7[10])
      {
        if (v7 == **v6 && v8 == 0)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_42;
      }

      LODWORD(v8) = v7[8];
      v7 = *v7;
    }

    while (!v7[11]);
    v7 = v6[1];
    LODWORD(v8) = v7[10];
    if (v7 == **v6 && v8 == 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_42:
    if (v7[11])
    {
      v20 = v8 - 1;
      if (v20 < 0)
      {
        v28 = v7;
        while (1)
        {
          i = *v28;
          if (*(*v28 + 11))
          {
            break;
          }

          v29 = v28[8];
          v28 = *v28;
          if (v29)
          {
            LOBYTE(v20) = v29 - 1;
            goto LABEL_56;
          }
        }
      }

      i = v7;
    }

    else
    {
        ;
      }

      LOBYTE(v20) = i[10] - 1;
    }

LABEL_56:
    v30 = &i[16 * v20];
    *a4 = *(v30 + 2);
    return *(v30 + 6);
  }
}

uint64_t operations_research::sat::IntegerEncoder::LiteralOrNegationHasView(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  v4 = *(a1 + 224);
  v5 = (*(a1 + 232) - v4) >> 2;
  if (a2 >= v5)
  {
    if ((a2 ^ 1) >= v5)
    {
      return 0;
    }

    v7 = *(v4 + 4 * (a2 ^ 1));
    goto LABEL_12;
  }

  v6 = *(v4 + 4 * a2);
  if ((a2 ^ 1) >= v5)
  {
    if (v6 != -1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  v7 = *(v4 + 4 * (a2 ^ 1));
  if (v6 == -1)
  {
LABEL_12:
    if (v7 != -1)
    {
LABEL_13:
      if (a3)
      {
        *a3 = v7;
      }

      if (!a4)
      {
        return 1;
      }

      LOBYTE(result) = 0;
LABEL_21:
      *a4 = result;
      return 1;
    }

    return 0;
  }

  if (v7 != -1 && v6 > v7)
  {
    goto LABEL_13;
  }

LABEL_18:
  if (a3)
  {
    *a3 = v6;
  }

  result = 1;
  if (a4)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t operations_research::sat::IntegerEncoder::UpdateEncodingOnInitialDomainChange(void *a1, int a2, uint64_t *a3)
{
  v3 = a2 / 2;
  v4 = a1[6];
  if (a2 / 2 >= (-1431655765 * ((a1[7] - v4) >> 3)))
  {
    return 1;
  }

  a1[46] = a1[45];
  v7 = v4 + 24 * v3;
  v8 = *(v7 + 8);
  v9 = **v7;
  v10 = v8[10];
  if (v9 == v8 && v10 == 0)
  {
    v13 = 0;
LABEL_51:
    v41 = a2;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::clear((v4 + 24 * v3));
    v42 = a1[45];
    for (i = a1[46]; v42 != i; v42 += 16)
    {
      v44 = *(v42 + 8);
      v45 = (a1[6] + 24 * v3);
      v71 = *v42;
      v72 = v44;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::insert_unique<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>(v45, &v71, &v71, &v70);
    }

    v46 = operations_research::sat::IntegerEncoder::PartialDomainEncoding(a1, v41);
    v47 = *v46;
    v48 = v46[1];
    if (*v46 != v48)
    {
      LODWORD(v49) = 0;
      v50 = a3 + 1;
      do
      {
        v51 = *v47;
        v52 = *(v47 + 2);
        v53 = *a3;
        v54 = *a3 >> 1;
        if (v49 < v54)
        {
          if (v53)
          {
            v58 = (*v50 + 16 * v49 + 8);
            v59 = v54 - v49;
            while (1)
            {
              v60 = *v58;
              v58 += 2;
              if (v51 <= v60)
              {
                break;
              }

              LODWORD(v49) = v49 + 1;
              if (!--v59)
              {
LABEL_65:
                v49 = *a3 >> 1;
                goto LABEL_70;
              }
            }
          }

          else
          {
            v55 = &a3[2 * v49 + 2];
            v56 = v54 - v49;
            while (1)
            {
              v57 = *v55;
              v55 += 2;
              if (v51 <= v57)
              {
                break;
              }

              LODWORD(v49) = v49 + 1;
              if (!--v56)
              {
                goto LABEL_65;
              }
            }
          }
        }

        if (v49 == v54)
        {
          goto LABEL_70;
        }

        v61 = a3 + 1;
        if (v53)
        {
          v61 = *v50;
        }

        if (v51 < v61[2 * v49])
        {
LABEL_70:
          v62 = a1[1];
          v63 = *(*(v62 + 24) + 8 * (v52 >> 6));
          if ((v63 >> v52))
          {
            return 0;
          }

          if (((v63 >> (v52 & 0x3F ^ 1)) & 1) == 0)
          {
            v64 = *(v62 + 12);
            ++v13;
            *(v62 + 8) = *(v62 + 8) & 0xFFFFFFF | 0x10000000;
            *(*(v62 + 48) + 4 * v64) = v52 ^ 1;
            *(*(v62 + 96) + 8 * (v52 >> 1)) = *(v62 + 8);
            *(*(v62 + 24) + 8 * (v52 >> 6)) |= 1 << (v52 ^ 1u);
            ++*(v62 + 12);
          }
        }

        v47 += 2;
      }

      while (v47 != v48);
    }

    if (v13 >= 1 && dword_2810BD6B0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::IntegerEncoder::UpdateEncodingOnInitialDomainChange(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::Domain)::$_0::operator() const(void)::site, dword_2810BD6B0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&v70, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.cc", 691);
      v66 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v70, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, "Domain intersection fixed ", 0x1AuLL);
      LODWORD(v71) = v13;
      v67 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v66, &v71);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v67, " encoding literals", 0x12uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v70);
    }

    return 1;
  }

  LODWORD(v12) = 0;
  v13 = 0;
  v14 = 0;
  v15 = (a3 + 1);
  v68 = a2;
  v69 = a3 + 2;
  while (1)
  {
    v16 = &v9[16 * v14];
    v17 = *(v16 + 2);
    v18 = *(v16 + 6);
    v19 = *a3;
    v20 = *a3 >> 1;
    if (v12 < v20)
    {
      if (v19)
      {
        v24 = &(*v15)[2 * v12 + 1];
        v25 = v20 - v12;
        while (1)
        {
          v26 = *v24;
          v24 += 2;
          if (v17 <= v26)
          {
            break;
          }

          LODWORD(v12) = v12 + 1;
          if (!--v25)
          {
LABEL_16:
            v12 = *a3 >> 1;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v21 = &v69[2 * v12];
        v22 = v20 - v12;
        while (1)
        {
          v23 = *v21;
          v21 += 2;
          if (v17 <= v23)
          {
            break;
          }

          LODWORD(v12) = v12 + 1;
          if (!--v22)
          {
            goto LABEL_16;
          }
        }
      }
    }

    if (v12 == v20)
    {
LABEL_18:
      v27 = a1[1];
      v28 = v18 >> 6;
      v29 = *(*(v27 + 24) + 8 * v28);
      if ((v29 >> v18))
      {
        return 0;
      }

      if (((v29 >> (v18 & 0x3F ^ 1u)) & 1) == 0)
      {
        ++v13;
        v30 = *(v27 + 12);
        *(v27 + 8) = *(v27 + 8) & 0xFFFFFFF | 0x10000000;
        *(*(v27 + 48) + 4 * v30) = v18 ^ 1;
        *(*(v27 + 96) + 8 * (v18 >> 1)) = *(v27 + 8);
        *(*(v27 + 24) + 8 * v28) |= 1 << (v18 ^ 1u);
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    if (v12)
    {
      v31 = a3 + 1;
      if (v19)
      {
        v31 = *v15;
      }

      v32 = v31[2 * v12];
LABEL_27:
      if (v17 <= v32)
      {
        v17 = v32;
      }

      *&v70 = v17;
      DWORD2(v70) = v18;
      std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100]((a1 + 45), &v70);
LABEL_30:
      if (v9[11])
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }

    if (v19)
    {
      v32 = **v15;
      if (v17 > v32)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v32 = *v15;
      if (v17 > *v15)
      {
        goto LABEL_27;
      }
    }

    v27 = a1[1];
    v36 = v18 >> 6;
    v37 = *(*(v27 + 24) + 8 * v36);
    if ((v37 & (1 << v18)) == 0)
    {
      break;
    }

    LODWORD(v12) = 0;
    if (v9[11])
    {
LABEL_31:
      if (++v14 == v9[10])
      {
        v33 = v9;
        while (1)
        {
          v34 = *v33;
          if (*(*v33 + 11))
          {
            break;
          }

          v35 = v33[8];
          v33 = *v33;
          if (v35 != v34[10])
          {
            v9 = v34;
            v14 = v35;
            goto LABEL_45;
          }
        }
      }

      goto LABEL_45;
    }

LABEL_42:
    v38 = &v9[8 * (v14 + 1) + 256];
    do
    {
      v9 = *v38;
      v39 = *(*v38 + 11);
      v38 = *v38 + 256;
    }

    while (!v39);
    v14 = 0;
LABEL_45:
    if (v9 == v8 && v14 == v10)
    {
      v4 = a1[6];
      a2 = v68;
      goto LABEL_51;
    }
  }

  if (((v37 >> (v18 & 0x3F ^ 1u)) & 1) == 0)
  {
    LODWORD(v12) = 0;
    v40 = *(v27 + 12);
    *(v27 + 8) = *(v27 + 8) & 0xFFFFFFF | 0x10000000;
    *(*(v27 + 48) + 4 * v40) = v18;
    *(*(v27 + 96) + 8 * (v18 >> 1)) = *(v27 + 8);
    ++v13;
    *(*(v27 + 24) + 8 * v36) |= 1 << v18;
LABEL_21:
    ++*(v27 + 12);
    if (v9[11])
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  return 0;
}

void sub_23CBF3FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Trail::EnqueueWithUnitReason(uint64_t result, int a2)
{
  v2 = *(result + 12);
  *(result + 8) = *(result + 8) & 0xFFFFFFF | 0x10000000;
  *(*(result + 48) + 4 * v2) = a2;
  *(*(result + 96) + 8 * (a2 >> 1)) = *(result + 8);
  *(*(result + 24) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  ++*(result + 12);
  return result;
}

void operations_research::sat::IntegerTrail::~IntegerTrail(operations_research::sat::IntegerTrail *this)
{
  if (*(*(this + 107) + 290) == 1 && *(this + 92) >= 1 && dword_27E25D000 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::IntegerTrail::~IntegerTrail()::$_0::operator() const(void)::site, dword_27E25D000))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.cc", 700);
    v34 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v35, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, "Num decisions to break propagation loop: ", 0x29uLL);
    v36 = *(this + 92);
    absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v34, &v36);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v35);
  }

  v2 = *(this + 115);
  if (v2 == (this + 896))
  {
    (*(*v2 + 32))(v2);
    if (*(this + 108) < 2uLL)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if (*(this + 108) < 2uLL)
    {
LABEL_8:
      if ((*(this + 792) & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_78;
    }
  }

  operator delete((*(this + 110) - (*(this + 109) & 1) - 8));
  if ((*(this + 792) & 1) == 0)
  {
LABEL_9:
    v3 = *(this + 96);
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_78:
  operator delete(*(this + 100));
  v3 = *(this + 96);
  if (v3)
  {
LABEL_10:
    *(this + 97) = v3;
    operator delete(v3);
  }

LABEL_11:
  v4 = *(this + 93);
  if (v4)
  {
    *(this + 94) = v4;
    operator delete(v4);
  }

  v5 = *(this + 85);
  if (v5)
  {
    *(this + 86) = v5;
    operator delete(v5);
  }

  v6 = *(this + 82);
  if (v6)
  {
    *(this + 83) = v6;
    operator delete(v6);
  }

  v7 = *(this + 79);
  if (v7)
  {
    *(this + 80) = v7;
    operator delete(v7);
  }

  v8 = *(this + 76);
  if (v8)
  {
    *(this + 77) = v8;
    operator delete(v8);
  }

  v9 = *(this + 72);
  if (v9)
  {
    *(this + 73) = v9;
    operator delete(v9);
  }

  v10 = *(this + 69);
  if (v10)
  {
    *(this + 70) = v10;
    operator delete(v10);
  }

  v11 = *(this + 66);
  if (v11)
  {
    *(this + 67) = v11;
    operator delete(v11);
  }

  v12 = *(this + 63);
  if (v12)
  {
    *(this + 64) = v12;
    operator delete(v12);
  }

  v13 = *(this + 59);
  if (v13)
  {
    *(this + 60) = v13;
    operator delete(v13);
  }

  v14 = *(this + 56);
  if (v14)
  {
    *(this + 57) = v14;
    operator delete(v14);
  }

  v15 = *(this + 53);
  if (v15)
  {
    *(this + 54) = v15;
    operator delete(v15);
  }

  v16 = *(this + 49);
  if (v16)
  {
    *(this + 50) = v16;
    operator delete(v16);
  }

  v17 = *(this + 46);
  if (v17)
  {
    *(this + 47) = v17;
    operator delete(v17);
  }

  v18 = *(this + 43);
  if (v18)
  {
    *(this + 44) = v18;
    operator delete(v18);
  }

  v19 = *(this + 40);
  if (v19)
  {
    *(this + 41) = v19;
    operator delete(v19);
  }

  v20 = *(this + 37);
  if (v20)
  {
    *(this + 38) = v20;
    operator delete(v20);
  }

  v21 = *(this + 34);
  if (v21)
  {
    *(this + 35) = v21;
    operator delete(v21);
  }

  v22 = *(this + 31);
  if (v22)
  {
    *(this + 32) = v22;
    operator delete(v22);
  }

  v23 = *(this + 28);
  if (v23)
  {
    *(this + 29) = v23;
    operator delete(v23);
  }

  v24 = *(this + 25);
  if (v24)
  {
    *(this + 26) = v24;
    operator delete(v24);
  }

  v25 = *(this + 22);
  if (v25)
  {
    v26 = *(this + 23);
    v27 = *(this + 22);
    if (v26 != v25)
    {
      v28 = v26 - 32;
      do
      {
        v29 = *(v26 - 8);
        v26 -= 32;
        if (v26 == v29)
        {
          (*(*v29 + 32))(v29);
        }

        else if (v29)
        {
          (*(*v29 + 40))(v29);
        }

        v28 -= 32;
      }

      while (v26 != v25);
      v27 = *(this + 22);
    }

    *(this + 23) = v25;
    operator delete(v27);
  }

  v30 = *(this + 19);
  if (v30)
  {
    *(this + 20) = v30;
    operator delete(v30);
  }

  if (*(this + 15) >= 2uLL)
  {
    operator delete((*(this + 17) - (*(this + 16) & 1) - 8));
  }

  v31 = *(this + 12);
  if (v31)
  {
    *(this + 13) = v31;
    operator delete(v31);
  }

  v32 = *(this + 8);
  if (v32)
  {
    *(this + 9) = v32;
    operator delete(v32);
  }

  v33 = *(this + 5);
  if (v33)
  {
    *(this + 6) = v33;
    operator delete(v33);
  }

  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  operations_research::sat::IntegerTrail::~IntegerTrail(this);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::IntegerTrail::Propagate(operations_research::sat::IntegerTrail *this, operations_research::sat::Trail *a2)
{
  v4 = *(a2 + 2) & 0xFFFFFFF;
  v5 = *(this + 96);
  v6 = *(this + 97);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 16))(v7, v4);
  }

  if (v4 > (*(this + 26) - *(this + 25)) >> 2)
  {
    v42[0] = -1431655765 * ((*(this + 20) - *(this + 19)) >> 3);
    std::vector<int>::push_back[abi:ne200100](this + 200, v42);
    v42[0] = (*(this + 32) - *(this + 31)) >> 2;
    std::vector<int>::push_back[abi:ne200100](this + 224, v42);
    v8 = (*(this + 26) - *(this + 25)) >> 2;
    if (v8 != v4)
    {
      operations_research::sat::IntegerTrail::Propagate(v4, v8);
    }
  }

  if (!v4)
  {
    v24 = *(this + 102);
    v25 = v24[3];
    v26 = v24[4];
    if (v25 == v26)
    {
LABEL_29:
      v24[4] = v25;
      v32 = *v24;
      v33 = v24[1];
      if (*v24 == v33)
      {
LABEL_38:
        v24[1] = v32;
        v9 = *(this + 9);
        v10 = *(a2 + 3);
        if (v9 < v10)
        {
LABEL_9:
          while (2)
          {
            while (1)
            {
              v11 = v9 + 1;
              *(this + 9) = v9 + 1;
              v12 = *(*(a2 + 6) + 4 * v9);
              v13 = *(this + 104);
              v14 = *(v13 + 112);
              v15 = -858993459 * ((*(v13 + 120) - v14) >> 3);
              v16 = v13 + 72;
              v17 = v14 + 40 * v12;
              v18 = (v12 >= v15 ? v16 : v17);
              v21 = *v18;
              v20 = v18 + 1;
              v19 = v21;
              if (v21)
              {
                v20 = *v20;
              }

              if ((v19 & 0x1FFFFFFFFFFFFFFELL) != 0)
              {
                break;
              }

              v9 = v11;
              if (v11 >= v10)
              {
                return 1;
              }
            }

            v22 = v12;
            v23 = &v20[2 * (v19 >> 1)];
            do
            {
              if ((operations_research::sat::IntegerTrail::EnqueueAssociatedIntegerLiteral(this, *v20, v20[1], v22) & 1) == 0)
              {
                return 0;
              }

              v20 += 2;
            }

            while (v20 != v23);
            v9 = *(this + 9);
            v10 = *(a2 + 3);
            if (v9 < v10)
            {
              continue;
            }

            break;
          }
        }

        return 1;
      }

      while (1)
      {
        v34 = *v32;
        v35 = *(this + 105);
        v36 = *v32 >> 6;
        v37 = *(*(v35 + 24) + 8 * v36);
        if ((v37 >> (*v32 & 0x3F ^ 1u)))
        {
          break;
        }

        v38 = 1 << (*v32 & 0x3F);
        if ((v37 & v38) == 0)
        {
          v39 = *(v35 + 12);
          *(v35 + 8) = *(v35 + 8) & 0xFFFFFFF | 0x10000000;
          *(*(v35 + 48) + 4 * v39) = v34;
          *(*(v35 + 96) + 8 * (v34 >> 1)) = *(v35 + 8);
          *(*(v35 + 24) + 8 * v36) |= v38;
          ++*(v35 + 12);
        }

        if (++v32 == v33)
        {
          v24 = *(this + 102);
          v32 = *v24;
          goto LABEL_38;
        }
      }
    }

    else
    {
      while (1)
      {
        v27 = *v25;
        v28 = *v25;
        v29 = *(this + 19);
        if (*(v29 + 24 * *v25) <= *(v25 + 1))
        {
          v30 = *(v25 + 1);
        }

        else
        {
          v30 = *(v29 + 24 * v27);
        }

        operations_research::Domain::Domain(v41, v30, -*(v29 + 24 * (v27 ^ 1)));
        updated = operations_research::sat::IntegerTrail::UpdateInitialDomain(this, v28, v41);
        if (v41[0])
        {
          operator delete(v41[1]);
        }

        if ((updated & 1) == 0)
        {
          break;
        }

        v25 += 4;
        if (v25 == v26)
        {
          v24 = *(this + 102);
          v25 = v24[3];
          goto LABEL_29;
        }
      }
    }

    result = 0;
    *(*(this + 106) + 528) = 1;
    return result;
  }

  v9 = *(this + 9);
  v10 = *(a2 + 3);
  if (v9 < v10)
  {
    goto LABEL_9;
  }

  return 1;
}

void sub_23CBF47CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerTrail::UpdateInitialDomain(uint64_t a1, signed int a2, operations_research::Domain *this)
{
  v4 = *(*(a1 + 840) + 8) & 0xFFFFFFF;
  if (v4)
  {
    operations_research::sat::IntegerTrail::UpdateInitialDomain(v4);
  }

  v6 = a2;
  if (a2)
  {
    v6 = a2 & 0xFFFFFFFE;
    operations_research::Domain::Negation(this, &v43);
    if (&v43 == this)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v43);
    }

    else
    {
      if (*this)
      {
        operator delete(*(this + 1));
      }

      *this = v43;
      *(this + 8) = v44;
    }
  }

  v7 = (**(a1 + 824) + 24 * (v6 / 2));
  operations_research::Domain::IntersectionWith(this, v7, &v43);
  if (&v43 == this)
  {
    operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v43);
  }

  else
  {
    if (*this)
    {
      operator delete(*(this + 1));
    }

    *this = v43;
    *(this + 8) = v44;
  }

  v8 = *v7;
  v9 = v7 + 1;
  if (*v7)
  {
    v9 = v7[1];
  }

  v10 = *this;
  v11 = *(this + 1);
  if ((*this & 1) == 0)
  {
    v11 = (this + 8);
  }

  if ((((v10 >> 1) ^ (v8 >> 1)) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v30 = &v9[2 * (v8 >> 1)];
    v31 = &v11[2 * (v10 >> 1)];
    v32 = v10 & 0x1FFFFFFFFFFFFFFELL;
    if ((v8 & 0x1FFFFFFFFFFFFFFELL) == 0 || v32 == 0)
    {
LABEL_41:
      if (v11 == v31 && v9 == v30)
      {
        return 1;
      }
    }

    else
    {
      while (*v9 == *v11 && v9[1] == v11[1])
      {
        v9 += 2;
        v11 += 2;
        if (v9 == v30 || v11 == v31)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (operations_research::Domain::IsEmpty(this))
  {
    return 0;
  }

  v13 = operations_research::Domain::Min(this);
  v14 = operations_research::Domain::Min(v7);
  v15 = operations_research::Domain::Max(this);
  v40 = v15 < operations_research::Domain::Max(v7);
  v16 = (**(a1 + 824) + 24 * (v6 / 2));
  if (v16 != this)
  {
    if (*this)
    {
      v17 = *(this + 1);
    }

    else
    {
      v17 = (this + 8);
    }

    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Assign<absl::lts_20240722::inlined_vector_internal::IteratorValueAdapter<std::allocator<operations_research::ClosedInterval>,operations_research::ClosedInterval const*>>(v16, v17, (8 * *this) >> 4);
  }

  *(*(a1 + 40) + 8 * v6) = operations_research::Domain::Min(this);
  *(*(a1 + 152) + 24 * v6) = operations_research::Domain::Min(this);
  *(*(a1 + 40) + ((v6 ^ 1) << 32 >> 29)) = -operations_research::Domain::Max(this);
  *(*(a1 + 152) + 24 * (v6 ^ 1)) = -operations_research::Domain::Max(this);
  v18 = *(a1 + 744);
  v19 = *(a1 + 752);
  if (v18 != v19)
  {
    v20 = v14;
    v21 = v6 >> 6;
    v22 = 1 << (v6 ^ 1u);
    if (v13 <= v20)
    {
      if (v40)
      {
        do
        {
          v36 = *v18;
          LODWORD(v43) = v6 ^ 1;
          v37 = *(v36 + 8);
          v38 = *(v37 + 8 * v21);
          if ((v38 & v22) == 0)
          {
            *(v37 + 8 * v21) = v38 | v22;
            std::vector<int>::push_back[abi:ne200100](v36 + 32, &v43);
          }

          ++v18;
        }

        while (v18 != v19);
      }
    }

    else
    {
      v23 = 1 << v6;
      if (v40)
      {
        while (1)
        {
          v24 = *v18;
          LODWORD(v43) = v6;
          v25 = *(v24 + 8);
          v26 = *(v25 + 8 * v21);
          if ((v26 & v23) != 0)
          {
            LODWORD(v43) = v6 ^ 1;
            if ((v26 & v22) == 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            *(v25 + 8 * v21) = v26 | v23;
            std::vector<int>::push_back[abi:ne200100](v24 + 32, &v43);
            v25 = *(v24 + 8);
            v26 = *(v25 + 8 * v21);
            LODWORD(v43) = v6 ^ 1;
            if ((v26 & v22) == 0)
            {
LABEL_32:
              *(v25 + 8 * v21) = v26 | v22;
              std::vector<int>::push_back[abi:ne200100](v24 + 32, &v43);
            }
          }

          if (++v18 == v19)
          {
            goto LABEL_53;
          }
        }
      }

      do
      {
        v27 = *v18;
        LODWORD(v43) = v6;
        v28 = *(v27 + 8);
        v29 = *(v28 + 8 * v21);
        if ((v29 & v23) == 0)
        {
          *(v28 + 8 * v21) = v29 | v23;
          std::vector<int>::push_back[abi:ne200100](v27 + 32, &v43);
        }

        ++v18;
      }

      while (v18 != v19);
    }
  }

LABEL_53:
  v35 = *(a1 + 832);
  v41 = 0;
  if (*this >= 2uLL)
  {
    if (*this)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v41, this);
    }

    else
    {
      v41 = *this;
      *__p = *(this + 8);
    }
  }

  result = operations_research::sat::IntegerEncoder::UpdateEncodingOnInitialDomainChange(v35, v6, &v41);
  if (v41)
  {
    v39 = result;
    operator delete(__p[0]);
    return v39;
  }

  return result;
}

void sub_23CBF4C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p)
{
  if (a13)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerTrail::EnqueueAssociatedIntegerLiteral(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = 8 * a2;
  if (a3 <= *(*(a1 + 40) + v4))
  {
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  v6 = a3;
  ++*(a1 + 712);
  v9 = (**(a1 + 824) + 24 * (a2 / 2));
  if ((*v9 >> 1) < 2)
  {
    goto LABEL_5;
  }

  if ((a2 & 1) == 0)
  {
    v6 = operations_research::Domain::ValueAtOrAfter(v9, a3);
LABEL_5:
    v10 = v4 ^ 8;
    if (v6 > -*(*(a1 + 40) + (v4 ^ 8)))
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v6 = -operations_research::Domain::ValueAtOrBefore(v9, -a3);
  v10 = v4 ^ 8;
  if (v6 > -*(*(a1 + 40) + (v4 ^ 8)))
  {
LABEL_6:
    v29 = a4 ^ 1;
    v32 = 0;
    result = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a2, v6, &v30, &v29, 1, 0, 0, -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3));
    if (v32 == &v30)
    {
      v24 = result;
      (*(*v32 + 32))(v32);
      result = v24;
    }

    else if (v32)
    {
      v12 = result;
      (*(*v32 + 40))(v32);
      result = v12;
    }

    goto LABEL_19;
  }

LABEL_10:
  v13 = *(a1 + 744);
  v14 = *(a1 + 752);
  if (v13 != v14)
  {
    v15 = a2 >> 6;
    v16 = 1 << a2;
    do
    {
      v17 = *v13;
      LODWORD(v30) = a2;
      v18 = *(v17 + 8);
      v19 = *(v18 + 8 * v15);
      if ((v19 & v16) == 0)
      {
        *(v18 + 8 * v15) = v19 | v16;
        std::vector<int>::push_back[abi:ne200100](v17 + 32, &v30);
      }

      ++v13;
    }

    while (v13 != v14);
  }

  if (*(a1 + 200) != *(a1 + 208))
  {
    v20 = *(a1 + 256) - *(a1 + 248);
    v21 = (*(a1 + 280) - *(a1 + 272)) >> 2;
    if (v21 != (v20 >> 2))
    {
      operations_research::sat::IntegerTrail::EnqueueAssociatedIntegerLiteral((v20 >> 2), v21);
    }

    LODWORD(v30) = (*(a1 + 304) - *(a1 + 296)) >> 2;
    std::vector<int>::push_back[abi:ne200100](a1 + 248, &v30);
    LODWORD(v30) = (*(a1 + 328) - *(a1 + 320)) >> 4;
    std::vector<int>::push_back[abi:ne200100](a1 + 272, &v30);
    LODWORD(v30) = a4 ^ 1;
    std::vector<int>::push_back[abi:ne200100](a1 + 296, &v30);
    v22 = *(*(a1 + 64) + 4 * a2);
    *&v30 = v6;
    *(&v30 + 1) = __PAIR64__(v22, a2);
    v31 = v20 >> 2;
    std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](a1 + 152, &v30);
    *(*(a1 + 40) + v4) = v6;
    *(*(a1 + 64) + 4 * a2) = -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3) - 1;
    goto LABEL_18;
  }

  v25 = *(a1 + 40);
  *(v25 + v4) = v6;
  *(*(a1 + 152) + 24 * a2) = v6;
  v26 = *(a1 + 840);
  v26[15] = 0;
  v26[10] = v26[9];
  operations_research::Domain::Domain(v28, *(v25 + v4), -*(v25 + v10));
  result = operations_research::sat::IntegerTrail::UpdateInitialDomain(a1, a2, v28);
  if (v28[0])
  {
    v27 = result;
    operator delete(v28[1]);
    result = v27;
  }

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF4FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CBF5004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::IntegerTrail::Untrail(operations_research::sat::IntegerTrail *this, const operations_research::sat::Trail *a2, int a3)
{
  ++*(this + 90);
  v6 = *(this + 108);
  if (v6 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(this + 108, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value, v6 < 0x80, 1u);
  }

  else
  {
    *(this + 109) = 0;
  }

  v7 = *(a2 + 2) & 0xFFFFFFF;
  v8 = *(this + 9);
  if (v8 >= a3)
  {
    v8 = a3;
  }

  *(this + 9) = v8;
  if (v7 < *(this + 176))
  {
    *(this + 176) = -1;
  }

  v9 = *(this + 25);
  if (v7 < (*(this + 26) - v9) >> 2)
  {
    v10 = *(v9 + 4 * v7);
    *(this + 26) = v9 + 4 * v7;
    v11 = *(this + 5);
    v12 = (*(this + 6) - v11) >> 3;
    if (v12 > v10)
    {
      operations_research::sat::IntegerTrail::Untrail(v10, v12);
    }

    v13 = *(this + 19);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v13) >> 3);
    if (v14 < v10)
    {
      operations_research::sat::IntegerTrail::Untrail(v10, v14);
    }

    for (i = v14 - 1; i >= v10; --i)
    {
      v20 = v13 + 24 * i;
      v21 = *(v20 + 8);
      if ((v21 & 0x80000000) == 0)
      {
        v22 = *(v20 + 12);
        *(*(this + 8) + 4 * v21) = v22;
        *(v11 + 8 * *(v20 + 8)) = *(v13 + 24 * v22);
      }
    }

    if (v14 > v10)
    {
      *(this + 20) = v13 + 24 * v10;
    }

    v16 = *(this + 28);
    v17 = (v16 + 4 * v7);
    v18 = *v17;
    v19 = (*(this + 29) - v16) >> 2;
    if (v7 <= v19)
    {
      if (v7 < v19)
      {
        *(this + 29) = v17;
      }
    }

    else
    {
      std::vector<int>::__append((this + 224), v7 - v19);
    }

    v23 = *(this + 31);
    if (v18 >= (*(this + 32) - v23) >> 2)
    {
      goto LABEL_43;
    }

    v24 = *(v23 + 4 * v18);
    v25 = *(this + 37);
    v26 = (*(this + 38) - v25) >> 2;
    if (v24 <= v26)
    {
      if (v24 < v26)
      {
        *(this + 38) = v25 + 4 * v24;
      }
    }

    else
    {
      std::vector<int>::__append((this + 296), v24 - v26);
    }

    v27 = *(*(this + 34) + 4 * v18);
    v28 = *(this + 40);
    v29 = (*(this + 41) - v28) >> 4;
    if (v27 <= v29)
    {
      if (v27 < v29)
      {
        *(this + 41) = v28 + 16 * v27;
        v30 = *(this + 43);
        if (v27 < (*(this + 44) - v30) >> 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v30 = *(this + 43);
        if (v27 < (*(this + 44) - v30) >> 2)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      std::vector<operations_research::sat::IntegerLiteral>::__append(this + 320, v27 - v29);
      v30 = *(this + 43);
      if (v27 < (*(this + 44) - v30) >> 2)
      {
LABEL_35:
        *(this + 44) = v30 + 4 * v27;
        v31 = *(this + 31);
        v35 = (*(this + 32) - v31) >> 2;
        v33 = v18 >= v35;
        v34 = v18 - v35;
        if (v18 <= v35)
        {
LABEL_36:
          if (!v33)
          {
            *(this + 32) = v31 + 4 * v18;
          }

          goto LABEL_38;
        }

LABEL_33:
        std::vector<int>::__append((this + 248), v34);
LABEL_38:
        v36 = *(this + 34);
        v37 = (*(this + 35) - v36) >> 2;
        if (v18 > v37)
        {
          std::vector<int>::__append((this + 272), v18 - v37);
          v38 = *(this + 96);
          v39 = *(this + 97);
          if (v38 == v39)
          {
            return;
          }

          do
          {
LABEL_44:
            v40 = *v38++;
            (*(*v40 + 16))(v40, v7);
          }

          while (v38 != v39);
          return;
        }

        if (v18 < v37)
        {
          *(this + 35) = v36 + 4 * v18;
        }

LABEL_43:
        v38 = *(this + 96);
        v39 = *(this + 97);
        if (v38 == v39)
        {
          return;
        }

        goto LABEL_44;
      }
    }

    v31 = *(this + 31);
    v32 = (*(this + 32) - v31) >> 2;
    v33 = v18 >= v32;
    v34 = v18 - v32;
    if (v18 <= v32)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<int>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void *operations_research::sat::IntegerTrail::ReserveSpaceForNumVariables(operations_research::sat::IntegerTrail *this, int a2)
{
  v4 = a2;
  std::vector<operations_research::Domain>::reserve(*(this + 103), a2);
  v5 = *(this + 104);
  std::vector<absl::lts_20240722::btree_map<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>>::reserve(v5 + 6, v4);
  if ((*(v5[33] - 8) & 0x7FFFFFFFFFFFFFFFuLL) + (v5[32] >> 1) < v4)
  {
    if (a2 == 7)
    {
      v6 = 15;
    }

    else
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> __clz((v4 - 1) / 7 + v4);
      if ((v4 - 1) / 7 + v4)
      {
        v6 = v7;
      }

      else
      {
        v6 = 1;
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::resize_impl((v5 + 31), v6);
  }

  result = std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>>::reserve(v5 + 35, v4);
  v9 = 2 * a2;
  v10 = *(this + 5);
  if (v9 > (*(this + 7) - v10) >> 3)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v11 = *(this + 6) - v10;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(this + 8);
  if (v9 > (*(this + 10) - v12) >> 2)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v13 = *(this + 9) - v12;
      operator new();
    }

    goto LABEL_24;
  }

  v14 = *(this + 19);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 21) - v14) >> 3) < v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v15 = *(this + 20) - v14;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v16 = *(this + 12);
  if (v9 > (*(this + 14) - v16) >> 2)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v17 = *(this + 13) - v16;
      operator new();
    }

    goto LABEL_24;
  }

  v18 = *(this + 59);
  if (v9 > (*(this + 61) - v18) >> 2)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v19 = *(this + 60) - v18;
      operator new();
    }

LABEL_24:
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t operations_research::sat::IntegerTrail::AddIntegerVariable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = a1 + 40;
  v6 = (*(a1 + 48) - *(a1 + 40)) >> 3;
  std::vector<long long>::push_back[abi:ne200100](a1 + 40, &v24);
  LODWORD(v22) = -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  std::vector<int>::push_back[abi:ne200100](a1 + 64, &v22);
  v22 = v24;
  LODWORD(__p[1]) = 0;
  __p[0] = v6;
  std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](a1 + 152, &v22);
  v7 = *(a1 + 824);
  operations_research::Domain::Domain(&v22, v24, a3);
  v8 = *(v7 + 8);
  if (v8 >= *(v7 + 16))
  {
    v9 = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(v7, &v22);
    v10 = v22;
    *(v7 + 8) = v9;
    if (v10)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v8 = 0;
    *v8 = v22;
    *(v8 + 8) = *__p;
    *(v7 + 8) = v8 + 24;
  }

  v11 = (*(a1 + 48) - *(a1 + 40)) >> 3;
  if (v11 != (v6 ^ 1))
  {
    operations_research::sat::IntegerTrail::AddIntegerVariable((v6 ^ 1), v11);
  }

  v12 = -a3;
  v22 = v12;
  std::vector<long long>::push_back[abi:ne200100](v5, &v22);
  LODWORD(v22) = -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  std::vector<int>::push_back[abi:ne200100](a1 + 64, &v22);
  v22 = v12;
  LODWORD(__p[1]) = 0;
  __p[0] = (v6 ^ 1);
  std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](a1 + 152, &v22);
  v13 = (*(a1 + 48) - *(a1 + 40)) >> 3;
  LODWORD(v22) = -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  v14 = *(a1 + 96);
  v15 = (*(a1 + 104) - v14) >> 2;
  if (v13 <= v15)
  {
    if (v13 < v15)
    {
      *(a1 + 104) = v14 + 4 * v13;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 96), v13 - v15, &v22);
    v13 = (*(a1 + 48) - *(a1 + 40)) >> 3;
  }

  LODWORD(v22) = 0;
  v16 = *(a1 + 472);
  v17 = (*(a1 + 480) - v16) >> 2;
  if (v13 > v17)
  {
    std::vector<int>::__append((a1 + 472), v13 - v17, &v22);
    v18 = *(a1 + 744);
    v19 = *(a1 + 752);
    if (v18 == v19)
    {
      return v6;
    }

    goto LABEL_16;
  }

  if (v13 < v17)
  {
    *(a1 + 480) = v16 + 4 * v13;
  }

  v18 = *(a1 + 744);
  v19 = *(a1 + 752);
  while (v18 != v19)
  {
LABEL_16:
    v20 = *v18++;
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize(v20, (*(a1 + 48) - *(a1 + 40)) >> 3);
  }

  return v6;
}

void sub_23CBF58E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p)
{
  if (a9)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerTrail::AddIntegerVariable(operations_research::sat::IntegerTrail *this, const operations_research::Domain *a2)
{
  if (operations_research::Domain::IsEmpty(a2))
  {
    operations_research::sat::IntegerTrail::AddIntegerVariable(v10);
  }

  v4 = operations_research::Domain::Min(a2);
  v5 = operations_research::Domain::Max(a2);
  v6 = operations_research::sat::IntegerTrail::AddIntegerVariable(this, v4, v5);
  v8 = 0;
  if (*a2 >= 2uLL)
  {
    if (*a2)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v8, a2);
    }

    else
    {
      v8 = *a2;
      *__p = *(a2 + 8);
    }
  }

  if ((operations_research::sat::IntegerTrail::UpdateInitialDomain(this, v6, &v8) & 1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer.cc", 863);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v10);
  }

  if (v8)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_23CBF59F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    v11 = a1;
    operator delete(__p);
    a1 = v11;
  }

  _Unwind_Resume(a1);
}

_BYTE *operations_research::sat::IntegerTrail::InitialVariableDomain(uint64_t a1, int a2)
{
  v3 = a2 / 2;
  if ((a2 & 1) == 0)
  {
    return (**(a1 + 824) + 24 * v3);
  }

  operations_research::Domain::Negation((**(a1 + 824) + 24 * v3), &v5);
  result = (a1 + 792);
  if ((a1 + 792) == &v5)
  {
    operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v5);
    return (a1 + 792);
  }

  else
  {
    if (*result)
    {
      operator delete(*(a1 + 800));
      result = (a1 + 792);
    }

    *(a1 + 792) = v5;
    *(a1 + 800) = v6;
  }

  return result;
}

uint64_t operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  LODWORD(v11) = -1;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>((a1 + 120), &v10, v13);
  if (v15 != 1)
  {
    return *(v14 + 8);
  }

  v4 = v14;
  *v14 = v10;
  *(v4 + 8) = v11;
  result = operations_research::sat::IntegerTrail::AddIntegerVariable(a1, a2, a2);
  *(v14 + 8) = result;
  if (a2)
  {
    v6 = result;
    v9 = -a2;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>((a1 + 120), &v9, &v10);
    if ((v12 & 1) == 0)
    {
      operations_research::sat::IntegerTrail::GetOrCreateConstantIntegerVariable(v8);
    }

    result = v6;
    v7 = v11;
    *v11 = v9;
    *(v7 + 2) = v6 ^ 1;
  }

  return result;
}

uint64_t operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(uint64_t a1, int a2, int a3)
{
  v3 = *(*(a1 + 472) + 4 * a2);
  if (v3 >= a3)
  {
    if (v3 != 0x7FFFFFFF)
    {
      *(a1 + 416) = 1;
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = *(*(a1 + 64) + 4 * a2);
    if (v4 > a3)
    {
      v5 = *(*(a1 + 96) + 4 * a2);
      v6 = v5 >= a3 && v5 < v4;
      if (v6 && *(*(a1 + 152) + 24 * v5 + 8) == a2)
      {
        v4 = *(*(a1 + 96) + 4 * a2);
      }
    }

    if (v4 >= a3)
    {
      v8 = *(a1 + 152);
      do
      {
        v4 = *(v8 + 24 * v4 + 12);
        if (v4 >= *(a1 + 88))
        {
          *(*(a1 + 96) + 4 * a2) = v4;
        }
      }

      while (v4 >= a3);
    }

    if (v4 < ((*(a1 + 48) - *(a1 + 40)) >> 3))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v4;
    }
  }
}

void operations_research::sat::IntegerTrail::RelaxLinearReason(std::vector<int> *a1, uint64_t a2, uint64_t a3, int a4, int **a5)
{
  v28 = a2;
  if (a2 < 0)
  {
    operations_research::sat::IntegerTrail::RelaxLinearReason(&v28);
  }

  if (a2)
  {
    v7 = a5[1] - *a5;
    v8 = (v7 >> 4);
    begin = a1[24].__begin_;
    v10 = a1[24].__end_ - begin;
    v11 = v8 >= v10;
    v12 = v8 - v10;
    if (v12 != 0 && v11)
    {
      v13 = a2;
      v14 = a3;
      v15 = a4;
      std::vector<int>::__append(a1 + 24, v12);
      a2 = v13;
      a4 = v15;
      a3 = v14;
    }

    else if (!v11)
    {
      a1[24].__end_ = &begin[v8];
    }

    if ((v7 >> 4) >= 1)
    {
      v16 = 0;
      v17 = *a5;
      value = a1[1].__end_cap_.__value_;
      do
      {
        v19 = *v17;
        v26 = *&value[2 * *v17];
        if (*(v17 + 1) != v26)
        {
          operations_research::sat::IntegerTrail::RelaxLinearReason(v17, &v26);
        }

        if ((*(a3 + 8 * v16) & 0x8000000000000000) != 0)
        {
          operations_research::sat::IntegerTrail::RelaxLinearReason(a3, v16);
        }

        a1[24].__begin_[v16++] = a1[2].__end_cap_.__value_[v19];
        v17 += 4;
      }

      while (((v7 >> 4) & 0x7FFFFFFF) != v16);
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(a1, a2, a3, a4, a1 + 24);
    a5[1] = *a5;
    v20 = a1[24].__begin_;
    end = a1[24].__end_;
    while (v20 != end)
    {
      v22 = *v20++;
      v23 = &a1[6].__end_[6 * v22];
      v24 = *(v23 + 8);
      v25 = *v23;
      *&v27 = v24;
      *(&v27 + 1) = v25;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a5, &v27);
    }
  }
}

void operations_research::sat::IntegerTrail::RelaxLinearReason(void *a1, uint64_t a2, uint64_t a3, int a4, std::vector<int> *this)
{
  v90 = *MEMORY[0x277D85DE8];
  v8 = (a1[6] - a1[5]) >> 3;
  if (a4 <= 0)
  {
    v20 = 0;
    p_end = &this->__end_;
    begin = this->__begin_;
    v23 = this->__end_ - this->__begin_;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = a4 & 0x7FFFFFFF;
    do
    {
      v13 = this->__begin_[v10];
      if (v13 >= v8)
      {
        v14 = *(a3 + 8 * v10);
        if (v14 <= a2 && ((v15 = a1[19], v16 = v15 + 24 * v13, v17 = *(v16 + 8), v17 == -1) || v13 > *(a1[59] + 4 * v17)) && ((v18 = *v16 - *(v15 + 24 * *(v16 + 12)), (v14 * v18) >> 64 == (v14 * v18) >> 63) ? (v19 = v14 * v18) : (v19 = ((v18 ^ v14) >> 63) + 0x7FFFFFFFFFFFFFFFLL), v19 <= a2))
        {
          LODWORD(v86) = this->__begin_[v10];
          *(&v86 + 1) = v14;
          v87 = v19;
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100]((a1 + 69), &v86);
        }

        else
        {
          this->__begin_[v11++] = v13;
        }
      }

      ++v10;
    }

    while (v12 != v10);
    v20 = v11;
    p_end = &this->__end_;
    begin = this->__begin_;
    v23 = this->__end_ - this->__begin_;
    if (v11 > v23)
    {
      std::vector<int>::__append(this, v11 - v23);
      goto LABEL_19;
    }
  }

  if (v23 > v20)
  {
    *p_end = &begin[v20];
  }

LABEL_19:
  v24 = a1[69];
  v25 = a1[70] - v24;
  if (v25 >= 48)
  {
    v67 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    v68 = (v67 - 2) >> 1;
    v69 = v68;
    do
    {
      if (v68 >= (0xAAAAAAAAAAAAAAABLL * ((24 * v69) >> 3)))
      {
        v71 = (0x5555555555555556 * ((24 * v69) >> 3)) | 1;
        v72 = (v24 + 24 * v71);
        if (0x5555555555555556 * ((24 * v69) >> 3) + 2 < v67)
        {
          v73 = *(v72 + 6);
          v74 = *v72 < v73;
          v75 = *v72 >= v73 ? 0 : 24;
          v72 = (v72 + v75);
          if (v74)
          {
            v71 = 0x5555555555555556 * ((24 * v69) >> 3) + 2;
          }
        }

        v76 = (v24 + 24 * v69);
        v77 = *v76;
        if (*v72 >= *v76)
        {
          v86 = *(v76 + 1);
          LODWORD(v87) = v76[5];
          while (1)
          {
            v81 = v76;
            v76 = v72;
            v82 = *v72;
            *(v81 + 2) = *(v72 + 2);
            *v81 = v82;
            if (v68 < v71)
            {
              break;
            }

            v83 = (2 * v71) | 1;
            v72 = (v24 + 24 * v83);
            v71 = 2 * v71 + 2;
            if (v71 < v67)
            {
              v78 = *(v72 + 6);
              v79 = *v72 < v78;
              if (*v72 >= v78)
              {
                v80 = 0;
              }

              else
              {
                v80 = 24;
              }

              v72 = (v72 + v80);
              if (!v79)
              {
                v71 = v83;
              }

              if (*v72 < v77)
              {
                break;
              }
            }

            else
            {
              v71 = v83;
              if (*v72 < v77)
              {
                break;
              }
            }
          }

          *v76 = v77;
          v70 = v86;
          v76[5] = v87;
          *(v76 + 1) = v70;
        }
      }

      v37 = v69-- <= 0;
    }

    while (!v37);
  }

  if (a2 >= 1)
  {
    do
    {
      v26 = a1[69];
      v27 = a1[70];
      if (v26 == v27)
      {
        break;
      }

      v28 = *v26;
      v85 = *(v26 + 16);
      v84 = v28;
      if (v27 - v26 >= 25)
      {
        v29 = 0;
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3);
        v86 = *v26;
        v87 = *(v26 + 16);
        v31 = v26;
        do
        {
          v33 = v31 + 24 * v29 + 24;
          v34 = (2 * v29) | 1;
          v35 = 2 * v29 + 2;
          if (v35 < v30)
          {
            v36 = *(v33 + 24);
            v37 = *v33 < v36;
            v38 = *v33 >= v36 ? 0 : 24;
            v33 += v38;
            if (v37)
            {
              v34 = v35;
            }
          }

          v32 = *v33;
          *(v31 + 16) = *(v33 + 16);
          *v31 = v32;
          v31 = v33;
          v29 = v34;
        }

        while (v34 <= ((v30 - 2) >> 1));
        v39 = (v27 - 24);
        if (v33 == v39)
        {
          v48 = v86;
          *(v33 + 16) = v87;
          *v33 = v48;
        }

        else
        {
          v40 = *v39;
          *(v33 + 16) = *(v39 + 2);
          *v33 = v40;
          *v39 = v86;
          *(v39 + 2) = v87;
          v41 = v33 - v26 + 24;
          if (v41 >= 25)
          {
            v42 = (-2 - 0x5555555555555555 * (v41 >> 3)) >> 1;
            v43 = v26 + 24 * v42;
            v44 = *v33;
            if (*v43 < *v33)
            {
              v45 = *(v33 + 4);
              v89 = *(v33 + 20);
              v88 = v45;
              do
              {
                v46 = v33;
                v33 = v43;
                v47 = *v43;
                *(v46 + 16) = *(v43 + 16);
                *v46 = v47;
                if (!v42)
                {
                  break;
                }

                v42 = (v42 - 1) >> 1;
                v43 = v26 + 24 * v42;
              }

              while (*v43 < v44);
              *v33 = v44;
              *(v33 + 4) = v88;
              *(v33 + 20) = v89;
            }
          }
        }

        v27 = a1[70];
      }

      a1[70] = v27 - 24;
      v49 = a2 - v85;
      if (a2 >= v85)
      {
        v50 = a1[19];
        v51 = *(v50 + 24 * v84 + 12);
        LODWORD(v88) = v51;
        if (v51 >= v8)
        {
          if (*(&v84 + 1) <= v49 && ((v52 = v50 + 24 * v51, v53 = *(v52 + 8), v53 == -1) || v51 > *(a1[59] + 4 * v53)) && ((v54 = *v52 - *(v50 + 24 * *(v52 + 12)), (*(&v84 + 1) * v54) >> 64 == (*(&v84 + 1) * v54) >> 63) ? (v55 = *(&v84 + 1) * v54) : (v55 = ((v54 ^ *(&v84 + 1)) >> 63) + 0x7FFFFFFFFFFFFFFFLL), v49 >= v55))
          {
            LODWORD(v86) = v51;
            *(&v86 + 1) = *(&v84 + 1);
            v87 = v55;
            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100]((a1 + 69), &v86);
            v56 = a1[69];
            v57 = a1[70];
            if (v57 - v56 >= 25)
            {
              v58 = (-2 - 0x5555555555555555 * ((v57 - v56) >> 3)) >> 1;
              v59 = (v56 + 24 * v58);
              v60 = (v57 - 24);
              v61 = *(v57 - 24);
              if (*v59 < v61)
              {
                v86 = *(v57 - 20);
                LODWORD(v87) = *(v57 - 4);
                do
                {
                  v62 = v60;
                  v60 = v59;
                  v63 = *v59;
                  *(v62 + 2) = *(v59 + 2);
                  *v62 = v63;
                  if (!v58)
                  {
                    break;
                  }

                  v58 = (v58 - 1) >> 1;
                  v59 = (v56 + 24 * v58);
                }

                while (*v59 < v61);
                *v60 = v61;
                *(v60 + 4) = v86;
                *(v60 + 5) = v87;
              }
            }
          }

          else
          {
            std::vector<int>::push_back[abi:ne200100](this, &v88);
          }
        }

        a2 = v49;
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](this, &v84);
      }
    }

    while (a2 > 0);
  }

  v64 = a1[69];
  v65 = a1[70];
  if (v64 != v65)
  {
    do
    {
      std::vector<int>::push_back[abi:ne200100](this, v64);
      v64 += 6;
    }

    while (v64 != v65);
    v64 = a1[69];
  }

  a1[70] = v64;
  v66 = *MEMORY[0x277D85DE8];
}

void operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(std::vector<int> *a1, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, uint64_t a7)
{
  a1[24].__end_ = a1[24].__begin_;
  if ((a6 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 4 * a6;
    do
    {
      v14 = *a5++;
      std::vector<int>::push_back[abi:ne200100](&a1[24], &a1[2].__end_cap_.__value_[v14]);
      v13 -= 4;
    }

    while (v13);
  }

  if (a2 > 0)
  {
    operations_research::sat::IntegerTrail::RelaxLinearReason(a1, a2, a3, a4, a1 + 24);
  }

  begin = a1[24].__begin_;
  end = a1[24].__end_;
  while (begin != end)
  {
    v17 = *begin++;
    v18 = &a1[6].__end_[6 * v17];
    v19 = *(v18 + 8);
    v20 = *v18;
    *&v21 = v19;
    *(&v21 + 1) = v20;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a7, &v21);
  }
}

void operations_research::sat::IntegerTrail::RemoveLevelZeroBounds(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v3 = 0;
    v4 = *a2 + 4;
    do
    {
      v5 = v4 - 4;
      v6 = *(v4 - 4);
      v7 = *(v4 + 4);
      if (v7 > *(*(a1 + 152) + 24 * v6))
      {
        v8 = *v4;
        v9 = *a2 + 16 * v3++;
        *v9 = v6;
        *(v9 + 4) = v8;
        *(v9 + 8) = v7;
      }

      v4 += 16;
    }

    while (v5 + 16 != v2);
    v10 = (a2[1] - *a2) >> 4;
    v11 = v3 >= v10;
    v12 = v3 - v10;
    if (v12 != 0 && v11)
    {
      std::vector<operations_research::sat::IntegerLiteral>::__append(a2, v12);
    }

    else if (!v11)
    {
      a2[1] = *a2 + 16 * v3;
    }
  }
}

void *operations_research::sat::IntegerTrail::InitializeConflict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__src, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v9 = *(a1 + 840);
  v9[15] = 0;
  v10 = v9 + 9;
  v11 = *(a4 + 24);
  if (!v11)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v10, __src, &__src[4 * a6], (4 * a6) >> 2);
    if ((a8 & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      return v10;
    }

    v16 = a8;
    v17 = (*(a1 + 48) - *(a1 + 40)) >> 3;
    v18 = &a7[2 * v16];
    while (1)
    {
      v20 = *a7;
      v19 = a7[1];
      v21 = *(a1 + 152);
      if (v19 <= *(v21 + 24 * *a7))
      {
        v23 = -1;
LABEL_19:
        LODWORD(v32[0]) = v23;
        if (v23 < v17)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v22 = 4 * v20;
        v23 = *(*(a1 + 64) + v22);
        v24 = *(a1 + 96);
        v25 = *(v24 + v22);
        if (v25 < v23)
        {
          v26 = v21 + 24 * v25;
          if (*(v26 + 8) == v20 && *v26 >= v19)
          {
            v23 = *(v24 + 4 * v20);
          }
        }

        v27 = v23;
        if (v23 >= *(a1 + 88))
        {
LABEL_13:
          *(v24 + v22) = v27;
        }

        while (1)
        {
          v28 = v21 + 24 * v27;
          if (*v28 == v19)
          {
            break;
          }

          if (*v28 < v19)
          {
            goto LABEL_19;
          }

          v23 = v27;
          v27 = *(v28 + 12);
          if (v27 >= *(a1 + 88))
          {
            goto LABEL_13;
          }
        }

        LODWORD(v32[0]) = v27;
        if (v27 < v17)
        {
          goto LABEL_6;
        }
      }

      std::vector<int>::push_back[abi:ne200100](a1 + 424, v32);
LABEL_6:
      a7 += 2;
      if (a7 == v18)
      {
        return v10;
      }
    }
  }

  v9[10] = v9[9];
  v12 = -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  v32[0] = a2;
  v32[1] = a3;
  v31 = v12;
  v29 = a1 + 424;
  v30 = v10;
  (*(*v11 + 48))(v11, v32, &v31, &v30, &v29);
  return v10;
}

uint64_t operations_research::sat::IntegerTrail::RootLevelEnqueue(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v3 = a1[19];
  v4 = (v3 + 24 * a2);
  if (a3 <= *v4)
  {
    goto LABEL_6;
  }

  if (a3 > -*(v3 + 24 * (a2 ^ 1)))
  {
    v5 = a1[106];
    result = 0;
    *(v5 + 528) = 1;
    goto LABEL_7;
  }

  if ((*(a1[105] + 8) & 0xFFFFFFF) != 0)
  {
    *v4 = a3;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1[102] + 24, &v10);
LABEL_6:
    result = 1;
    goto LABEL_7;
  }

  v12 = 0;
  v9 = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a2, a3, v11, 0, 0, 0, 0, -1431655765 * ((a1[20] - v3) >> 3));
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  result = 1;
  if ((v9 & 1) == 0)
  {
    *(a1[106] + 528) = 1;
    result = 0;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF6954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerTrail::Enqueue(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v7 = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a2, a3, v10, a4, a5, a6, a7, -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3));
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23CBF6A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerTrail::SafeEnqueue(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 != -1)
  {
    v12 = a1[82];
    a1[83] = v12;
    if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 16 * a5;
      do
      {
        v18 = *a4;
        if (v18 != -1 || *(&v18 + 1) >= 1)
        {
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((a1 + 82), &v18);
        }

        a4 += 2;
        v13 -= 16;
      }

      while (v13);
      v15 = a1[82];
      v12 = a1[83];
    }

    else
    {
      v15 = v12;
    }

    v19 = 0;
    result = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a2, a3, &v18, 0, 0, v15, (v12 - v15) >> 4, -1431655765 * ((a1[20] - a1[19]) >> 3));
    if (v19 == &v18)
    {
      v16 = result;
      (*(*v19 + 32))(v19);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      v16 = result;
      (*(*v19 + 40))(v19);
    }

    result = v16;
    goto LABEL_20;
  }

  if (a3 < 1)
  {
    result = 1;
  }

  else
  {
    v9 = a1[105];
    *(v9 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v9 + 72), 0, 0, 0);
    operations_research::sat::IntegerTrail::MergeReasonInto(a1, a4, a5, (v9 + 72));
    result = 0;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF6C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerTrail::EnqueueInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = 8 * a2;
  if (a3 <= *(*(a1 + 40) + v9))
  {
LABEL_44:
    result = 1;
    goto LABEL_45;
  }

  v11 = a3;
  v14 = a2;
  ++*(a1 + 712);
  v15 = (**(a1 + 824) + 24 * (a2 / 2));
  if ((*v15 >> 1) >= 2)
  {
    v16 = a2;
    v17 = a5;
    v18 = a8;
    v19 = a7;
    v20 = a4;
    if (a2)
    {
      v11 = -operations_research::Domain::ValueAtOrBefore(v15, -a3);
    }

    else
    {
      v11 = operations_research::Domain::ValueAtOrAfter(v15, a3);
    }

    a4 = v20;
    a7 = v19;
    a8 = v18;
    a5 = v17;
    v14 = v16;
  }

  v21 = *(a1 + 40);
  v22 = -*(v21 + (v9 ^ 8));
  if (v11 > v22)
  {
    if (v11 >= 0x8000000000000003)
    {
      v23 = 1 - v11;
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = v14 ^ 1;
    v25 = operations_research::sat::IntegerTrail::InitializeConflict(a1, a2, v11, a4, a5, a6, a7, a8);
    v26 = *(a1 + 152);
    if (v23 <= *(v26 + 24 * v24))
    {
      v28 = -1;
LABEL_34:
      LODWORD(v87) = v28;
      if (v28 < ((*(a1 + 48) - *(a1 + 40)) >> 3))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = 4 * v24;
      v28 = *(*(a1 + 64) + v27);
      v29 = *(a1 + 96);
      v30 = *(v29 + v27);
      if (v30 < v28)
      {
        v31 = v26 + 24 * v30;
        if (*(v31 + 8) == v24 && *v31 >= v23)
        {
          v28 = *(v29 + 4 * v24);
        }
      }

      v32 = v28;
      if (v28 >= *(a1 + 88))
      {
LABEL_20:
        *(v29 + 4 * v24) = v32;
      }

      while (1)
      {
        v33 = v26 + 24 * v32;
        if (*v33 == v23)
        {
          break;
        }

        if (*v33 < v23)
        {
          goto LABEL_34;
        }

        v28 = v32;
        v32 = *(v33 + 12);
        if (v32 >= *(a1 + 88))
        {
          goto LABEL_20;
        }
      }

      LODWORD(v87) = v32;
      if (v32 < ((*(a1 + 48) - *(a1 + 40)) >> 3))
      {
        goto LABEL_36;
      }
    }

    std::vector<int>::push_back[abi:ne200100](a1 + 424, &v87);
LABEL_36:
    operations_research::sat::IntegerTrail::MergeReasonIntoInternal(a1, v25);
    goto LABEL_37;
  }

  v34 = *(a1 + 856);
  v35 = *(v34 + 816);
  if (v35 != 0.0)
  {
    v53 = *(a1 + 208);
    if (*(a1 + 200) != v53 && fmax(v35 * ((*(a1 + 48) - v21) >> 3), 10000.0) < (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - *(a1 + 152)) >> 3) - *(v53 - 4)) && *(v34 + 248) != 1 && v11 - *(v21 + v9) < (v22 - *(v21 + v9)) / 2)
    {
      if (*(a1 + 704) == -1)
      {
        *(a1 + 704) = *(*(a1 + 840) + 8) & 0xFFFFFFF;
      }

      goto LABEL_44;
    }
  }

  v79 = v14;
  __src = a5;
  v82 = a4;
  v83 = a8;
  v81 = a7;
  v36 = *(a1 + 744);
  v37 = *(a1 + 752);
  if (v36 != v37)
  {
    v38 = a2 >> 6;
    v39 = 1 << a2;
    do
    {
      v40 = *v36;
      LODWORD(v87) = a2;
      v41 = *(v40 + 8);
      v42 = *(v41 + 8 * v38);
      if ((v42 & v39) == 0)
      {
        *(v41 + 8 * v38) = v42 | v39;
        std::vector<int>::push_back[abi:ne200100](v40 + 32, &v87);
      }

      ++v36;
    }

    while (v36 != v37);
  }

  v85 = 0;
  v43 = operations_research::sat::IntegerEncoder::SearchForLiteralAtOrBefore(*(a1 + 832), a2, v11, &v85);
  v45 = v43;
  v47 = v82;
  v46 = v83;
  if (v43 != -1)
  {
    v48 = v43;
    LODWORD(v87) = v43;
    v49 = *(a1 + 840);
    v50 = *(*(v49 + 24) + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if ((v50 >> (v48 & 0x3F ^ 1u)))
    {
      v51 = operations_research::sat::IntegerTrail::InitializeConflict(a1, a2, v11, v82, __src, a6, v81, v83);
      std::vector<int>::push_back[abi:ne200100](v51, &v87);
      operations_research::sat::IntegerTrail::MergeReasonIntoInternal(a1, v51);
LABEL_37:
      result = 0;
      goto LABEL_45;
    }

    v55 = v50 & (1 << (v48 & 0x3F));
    if (v85 >= v11)
    {
      if (!v55)
      {
        std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::function(v86, v82);
        operations_research::sat::IntegerTrail::EnqueueLiteralInternal(a1, v48, v86, __src, a6, v81, v83);
        std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(v86);
      }

      result = operations_research::sat::IntegerTrail::EnqueueAssociatedIntegerLiteral(a1, a2, v11, v48);
      goto LABEL_45;
    }

    if (!v55)
    {
      if (*(a1 + 200) == *(a1 + 208))
      {
        operations_research::sat::Trail::EnqueueWithUnitReason(v49, v48);
      }

      else
      {
        v56 = *(v49 + 12);
        v57 = *(a1 + 680);
        if (v56 >= (*(a1 + 688) - v57) >> 2)
        {
          std::vector<int>::resize((a1 + 680), v56 + 1);
          v57 = *(a1 + 680);
          v49 = *(a1 + 840);
        }

        *(v57 + 4 * v56) = a9;
        operations_research::sat::Trail::Enqueue(v49, v48, *(a1 + 32));
      }

      v47 = v82;
      v46 = v83;
    }
  }

  if (*(a1 + 200) == *(a1 + 208))
  {
    ++*(a1 + 728);
    v64 = *(a1 + 40);
    *(v64 + v9) = v11;
    *(*(a1 + 152) + 24 * a2) = v11;
    v65 = *(a1 + 840);
    v65[15] = 0;
    v65[10] = v65[9];
    operations_research::Domain::Domain(v84, *(v64 + v9), -*(v64 + (v9 ^ 8)));
    result = operations_research::sat::IntegerTrail::UpdateInitialDomain(a1, v79, v84);
    if (v84[0])
    {
      v66 = result;
      operator delete(v84[1]);
      result = v66;
    }
  }

  else if (v46 | a6 || *(v47 + 24) || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - *(a1 + 152)) >> 3) > a9 || (result = operations_research::sat::IntegerTrail::RootLevelEnqueue(a1, a2, v11), v47 = v82, result))
  {
    v58 = *(v47 + 24);
    if (!v58)
    {
      v67 = *(a1 + 152);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - v67) >> 3) <= a9)
      {
        v71 = *(a1 + 248);
        v72 = *(a1 + 256);
        LODWORD(v87) = (*(a1 + 304) - *(a1 + 296)) >> 2;
        std::vector<int>::push_back[abi:ne200100](a1 + 248, &v87);
        if (a6)
        {
          std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 296, *(a1 + 304), __src, &__src[4 * a6], (4 * a6) >> 2);
        }

        LODWORD(v87) = (*(a1 + 328) - *(a1 + 320)) >> 4;
        std::vector<int>::push_back[abi:ne200100](a1 + 272, &v87);
        v68 = (v72 - v71) >> 2;
        if (v83)
        {
          std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<operations_research::sat::IntegerLiteral const*,operations_research::sat::IntegerLiteral const*>(a1 + 320, *(a1 + 328), v81, &v81[2 * v83], (16 * v83) >> 4);
        }
      }

      else
      {
        LODWORD(v68) = *(v67 + 24 * a9 + 16);
      }

      goto LABEL_98;
    }

    v59 = *(a1 + 176);
    v60 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - *(a1 + 152)) >> 3);
    v61 = *(a1 + 184);
    v62 = (v61 - v59) >> 5;
    if (v60 < v62)
    {
      v63 = (v59 + 0x5555555555555560 * ((*(a1 + 160) - *(a1 + 152)) >> 3));
      goto LABEL_89;
    }

    v69 = v60 + 1;
    v89 = 0;
    v70 = v69 - v62;
    if (v69 <= v62)
    {
      if (v69 >= v62)
      {
        goto LABEL_88;
      }

      v73 = v59 + 32 * v69;
      if (v61 != v73)
      {
        v74 = v61 - 32;
        do
        {
          v75 = *(v61 - 8);
          v61 -= 32;
          if (v61 == v75)
          {
            (*(*v75 + 32))(v75);
          }

          else if (v75)
          {
            (*(*v75 + 40))(v75, v70);
          }

          v74 -= 32;
        }

        while (v61 != v73);
      }

      *(a1 + 184) = v73;
      v47 = v82;
    }

    else
    {
      std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__append((a1 + 176), v70, &v87);
    }

    if (v89 == &v87)
    {
      (*(*v89 + 32))(v89);
    }

    else if (v89)
    {
      (*(*v89 + 40))(v89, v70, v44);
    }

LABEL_88:
    v58 = *(v47 + 24);
    v63 = (*(a1 + 176) + 0x5555555555555560 * ((*(a1 + 160) - *(a1 + 152)) >> 3));
    if (!v58)
    {
      v89 = 0;
LABEL_93:
      std::__function::__value_func<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::swap[abi:ne200100](&v87, v63);
      if (v89 == &v87)
      {
        (*(*v89 + 32))(v89);
      }

      else if (v89)
      {
        (*(*v89 + 40))(v89, v76, v77);
      }

      LODWORD(v68) = -1;
LABEL_98:
      v78 = *(*(a1 + 64) + 4 * a2);
      *&v87 = v11;
      *(&v87 + 1) = __PAIR64__(v78, a2);
      v88 = v68;
      std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](a1 + 152, &v87);
      *(*(a1 + 40) + v9) = v11;
      *(*(a1 + 64) + 4 * a2) = -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3) - 1;
      result = 1;
      goto LABEL_45;
    }

LABEL_89:
    if (v58 == v47)
    {
      v89 = &v87;
      (*(*v58 + 24))(v58, &v87);
    }

    else
    {
      v89 = (*(*v58 + 16))(v58);
    }

    goto LABEL_93;
  }

LABEL_45:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF7594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CBF75A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CBF75BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p)
{
  if (a15)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerTrail::ConditionalEnqueue(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, char **a5, char **a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = *(*(a1[105] + 24) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8));
  if ((v7 >> (a2 & 0x3F ^ 1)))
  {
LABEL_2:
    result = 1;
    goto LABEL_3;
  }

  if (((v7 >> (a2 & 0x3F)) & 1) == 0)
  {
    if (a4 <= -*(a1[5] + ((8 * a3) ^ 8)))
    {
      v32 = a2 | (a3 << 32);
      v33 = a4;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 108), &v32, &v34);
      if (v35 != 1 || (v30 = *(&v34 + 1), **(&v34 + 1) = v32, *(v30 + 8) = v33, (v35 & 1) == 0))
      {
        v31 = *(*(&v34 + 1) + 8);
        if (v31 <= a4)
        {
          v31 = a4;
        }

        *(*(&v34 + 1) + 8) = v31;
      }
    }

    else
    {
      v22 = 1 - a4;
      if (a4 < 0x8000000000000003)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v34 = a3 ^ 1;
      *(&v34 + 1) = v22;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a6, &v34);
      v24 = *a5;
      v25 = (a5[1] - *a5) >> 2;
      v26 = *a6;
      v27 = (a6[1] - *a6) >> 4;
      v36 = 0;
      operations_research::sat::IntegerTrail::EnqueueLiteralInternal(a1, a2 ^ 1, &v34, v24, v25, v26, v27);
      if (v36 == &v34)
      {
        (*(*v36 + 32))(v36);
      }

      else if (v36)
      {
        (*(*v36 + 40))();
      }
    }

    goto LABEL_2;
  }

  LODWORD(v34) = a2 ^ 1;
  std::vector<int>::push_back[abi:ne200100](a5, &v34);
  v15 = *a5;
  v16 = (a5[1] - *a5) >> 2;
  v17 = *a6;
  v18 = (a6[1] - *a6) >> 4;
  v36 = 0;
  result = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a3, a4, &v34, v15, v16, v17, v18, -1431655765 * ((a1[20] - a1[19]) >> 3));
  if (v36 == &v34)
  {
    v28 = result;
    (*(*v36 + 32))(v36);
    result = v28;
  }

  else if (v36)
  {
    v19 = result;
    (*(*v36 + 40))(v36);
    result = v19;
  }

LABEL_3:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF78B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CBF78CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerTrail::EnqueueLiteral(uint64_t a1, int a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  operations_research::sat::IntegerTrail::EnqueueLiteralInternal(a1, a2, v8, a3, a4, a5, a6);
  result = v9;
  if (v9 == v8)
  {
    result = (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    result = (*(*v9 + 40))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBF79B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerTrail::Enqueue(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v8 = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a2, a3, v11, a4, a5, a6, a7, a8);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23CBF7AAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerTrail::Enqueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a4 + 24);
  if (v4)
  {
    v5 = a1;
    v6 = a2;
    v7 = a3;
    if (v4 == a4)
    {
      v12 = v11;
      (*(*v4 + 24))(v4, v11);
    }

    else
    {
      v12 = (*(*v4 + 16))(*(a4 + 24));
    }

    a3 = v7;
    a2 = v6;
    a1 = v5;
  }

  else
  {
    v12 = 0;
  }

  v8 = operations_research::sat::IntegerTrail::EnqueueInternal(a1, a2, a3, v11, 0, 0, 0, 0, -1431655765 * ((*(a1 + 160) - *(a1 + 152)) >> 3));
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23CBF7C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::function(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v5;
    }

    else
    {
      v3 = result;
      v4 = (*(*v2 + 16))(*(a2 + 24));
      result = v3;
      *(v3 + 24) = v4;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void operations_research::sat::IntegerTrail::MergeReasonInto(uint64_t a1, uint64_t *a2, uint64_t a3, int **a4)
{
  if ((a3 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
    v7 = (*(a1 + 48) - *(a1 + 40)) >> 3;
    v8 = &a2[2 * a3];
    do
    {
      v9 = v6[1];
      if (*v6 != -1 || v9 >= 1)
      {
        v11 = *v6;
        v12 = *(a1 + 152);
        if (v9 <= *(v12 + 24 * *v6))
        {
          v14 = -1;
LABEL_20:
          v20 = v14;
          if (v14 < v7)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v13 = 4 * v11;
          v14 = *(*(a1 + 64) + v13);
          v15 = *(a1 + 96);
          v16 = *(v15 + v13);
          if (v16 < v14)
          {
            v17 = v12 + 24 * v16;
            if (*(v17 + 8) == v11 && *v17 >= v9)
            {
              v14 = *(v15 + 4 * v11);
            }
          }

          v18 = v14;
          if (v14 >= *(a1 + 88))
          {
LABEL_14:
            *(v15 + v13) = v18;
          }

          while (1)
          {
            v19 = v12 + 24 * v18;
            if (*v19 == v9)
            {
              break;
            }

            if (*v19 < v9)
            {
              goto LABEL_20;
            }

            v14 = v18;
            v18 = *(v19 + 12);
            if (v18 >= *(a1 + 88))
            {
              goto LABEL_14;
            }
          }

          v20 = v18;
          if (v18 < v7)
          {
            goto LABEL_3;
          }
        }

        std::vector<int>::push_back[abi:ne200100](a1 + 424, &v20);
      }

LABEL_3:
      v6 += 2;
    }

    while (v6 != v8);
  }

  operations_research::sat::IntegerTrail::MergeReasonIntoInternal(a1, a4);
}

void operations_research::sat::IntegerTrail::EnqueueLiteralInternal(uint64_t a1, int a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = a2;
  if (*(a1 + 200) != *(a1 + 208))
  {
    if (!(a7 | a5) && !*(a3 + 24))
    {
      std::vector<int>::push_back[abi:ne200100](*(a1 + 816), &v39);
    }

    v13 = *(*(a1 + 840) + 12);
    v14 = *(a1 + 680);
    v15 = (*(a1 + 688) - v14) >> 2;
    if (v15 <= v13)
    {
      v16 = v13 + 1;
      if (v16 <= v15)
      {
        if (v16 < v15)
        {
          *(a1 + 688) = v14 + 4 * v16;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 680), v16 - v15);
        v14 = *(a1 + 680);
      }
    }

    v21 = (*(a1 + 160) - *(a1 + 152)) >> 3;
    v22 = 0xAAAAAAAAAAAAAAABLL * v21;
    *(v14 + 4 * v13) = -1431655765 * v21;
    v23 = *(a3 + 24);
    if (!v23)
    {
      v28 = *(a1 + 248);
      v29 = *(a1 + 256);
      LODWORD(v40) = (*(a1 + 304) - *(a1 + 296)) >> 2;
      std::vector<int>::push_back[abi:ne200100](a1 + 248, &v40);
      std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 296, *(a1 + 304), a4, &a4[4 * a5], (4 * a5) >> 2);
      LODWORD(v40) = (*(a1 + 328) - *(a1 + 320)) >> 4;
      std::vector<int>::push_back[abi:ne200100](a1 + 272, &v40);
      std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<operations_research::sat::IntegerLiteral const*,operations_research::sat::IntegerLiteral const*>(a1 + 320, *(a1 + 328), a6, &a6[16 * a7], (16 * a7) >> 4);
      v30 = (v29 - v28) >> 2;
LABEL_39:
      *&v40 = 0;
      *(&v40 + 1) = -1;
      v41 = v30;
      std::vector<operations_research::sat::CpModelPresolver::RdEntry>::push_back[abi:ne200100](a1 + 152, &v40);
      v17 = *(a1 + 840);
      v20 = v39;
      v37 = *(v17 + 12);
      *(v17 + 8) = *(v17 + 8) & 0xFFFFFFF | (*(a1 + 32) << 28);
      *(*(v17 + 48) + 4 * v37) = v20;
      *(*(v17 + 96) + 8 * (v20 >> 1)) = *(v17 + 8);
      v19 = v20 & 0x3F;
      goto LABEL_40;
    }

    v24 = *(a1 + 176);
    v25 = *(a1 + 184);
    v26 = (v25 - v24) >> 5;
    if (v22 < v26)
    {
      v27 = (v24 + 32 * v22);
      goto LABEL_30;
    }

    v31 = v22 + 1;
    v42 = 0;
    v32 = v31 - v26;
    if (v31 <= v26)
    {
      if (v31 >= v26)
      {
        goto LABEL_29;
      }

      v34 = v24 + 32 * v31;
      if (v25 != v34)
      {
        v35 = v25 - 32;
        do
        {
          v36 = *(v25 - 8);
          v25 -= 32;
          if (v25 == v36)
          {
            (*(*v36 + 32))(v36);
          }

          else if (v36)
          {
            (*(*v36 + 40))(v36, v32);
          }

          v35 -= 32;
        }

        while (v25 != v34);
      }

      *(a1 + 184) = v34;
      v33 = v42;
      if (v42 != &v40)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__append((a1 + 176), v32, &v40);
      v33 = v42;
      if (v42 != &v40)
      {
LABEL_17:
        if (v33)
        {
          (*(*v33 + 40))(v33);
        }

LABEL_29:
        v23 = *(a3 + 24);
        v27 = (*(a1 + 176) + 0x5555555555555560 * ((*(a1 + 160) - *(a1 + 152)) >> 3));
        if (!v23)
        {
          v42 = 0;
LABEL_34:
          std::__function::__value_func<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::swap[abi:ne200100](&v40, v27);
          if (v42 == &v40)
          {
            (*(*v42 + 32))(v42);
          }

          else if (v42)
          {
            (*(*v42 + 40))();
          }

          LODWORD(v30) = -1;
          goto LABEL_39;
        }

LABEL_30:
        if (v23 == a3)
        {
          v42 = &v40;
          (*(*v23 + 24))(v23, &v40);
        }

        else
        {
          v42 = (*(*v23 + 16))(v23);
        }

        goto LABEL_34;
      }
    }

    (*(*v33 + 32))(v33);
    goto LABEL_29;
  }

  v17 = *(a1 + 840);
  v18 = *(v17 + 12);
  *(v17 + 8) = *(v17 + 8) & 0xFFFFFFF | 0x10000000;
  *(*(v17 + 48) + 4 * v18) = a2;
  *(*(v17 + 96) + 8 * (a2 >> 1)) = *(v17 + 8);
  v19 = a2 & 0x3F;
  v20 = a2;
LABEL_40:
  *(*(v17 + 24) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
  ++*(v17 + 12);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_23CBF831C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::IntegerTrail::InPropagationLoop(operations_research::sat::IntegerTrail *this)
{
  v1 = *(this + 107);
  v2 = *(v1 + 816);
  if (v2 == 0.0)
  {
    return 0;
  }

  v4 = *(this + 26);
  return *(this + 25) != v4 && fmax(v2 * ((*(this + 6) - *(this + 5)) >> 3), 10000.0) < (0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - *(this + 19)) >> 3) - *(v4 - 4)) && *(v1 + 248) != 1;
}

uint64_t operations_research::sat::IntegerTrail::NextVariableToBranchOnInPropagationLoop(operations_research::sat::IntegerTrail *this)
{
  v1 = *(this + 107);
  v2 = *(v1 + 816);
  if (v2 == 0.0 || (v3 = *(this + 26), *(this + 25) == v3) || (v4 = *(this + 19), v5 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v4) >> 3), v6 = *(v3 - 4), fmax(v2 * ((*(this + 6) - *(this + 5)) >> 3), 10000.0) >= (v5 - v6)) || *(v1 + 248) == 1)
  {
    operations_research::sat::IntegerTrail::NextVariableToBranchOnInPropagationLoop(&v10);
  }

  ++*(this + 92);
  if (v5 > v6)
  {
    v7 = v6 + 1;
    do
    {
      v8 = *(v4 + 24 * v6 + 8);
      if (v8 != -1 && *(*(this + 5) + ((8 * v8) ^ 8)) + *(*(this + 5) + 8 * v8) - 1 <= -102)
      {
        operator new();
      }

      v6 = v7;
      v4 = *(this + 19);
      ++v7;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - v4) >> 3) > v6);
  }

  return 0xFFFFFFFFLL;
}

void sub_23CBF8664(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerTrail::FirstUnassignedVariable(operations_research::sat::IntegerTrail *this)
{
  v1 = *(this + 5);
  v2 = (*(this + 6) - v1) >> 3;
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (!(*(v1 + 8 * result) + *(v1 + 8 * result + 8)))
  {
    result = (result + 2);
    if (result >= v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void operations_research::sat::IntegerTrail::MergeReasonIntoInternal(uint64_t a1, int **a2)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 496, (*(*(a1 + 840) + 56) - *(*(a1 + 840) + 48)) >> 2);
  v85 = a2;
  v4 = *a2;
  for (i = a2[1]; v4 != i; ++v4)
  {
    v6 = *v4;
    LODWORD(v89[0]) = *v4 >> 1;
    v7 = (v6 >> 1) >> 6;
    v8 = *(a1 + 504);
    v9 = *(v8 + 8 * v7);
    if ((v9 & (1 << SLOBYTE(v89[0]))) == 0)
    {
      *(v8 + 8 * v7) = v9 | (1 << SLOBYTE(v89[0]));
      std::vector<int>::push_back[abi:ne200100](a1 + 528, v89);
    }
  }

  v11 = *(a1 + 424);
  v10 = *(a1 + 432);
  if (v11 != v10)
  {
    v12 = *(a1 + 152);
    v13 = *(a1 + 472);
    v14 = *(a1 + 424);
    do
    {
      v16 = *v14++;
      v15 = v16;
      v17 = 4 * *(v12 + 24 * v16 + 8);
      if (*(v13 + v17) > v16)
      {
        v15 = *(v13 + v17);
      }

      *(v13 + v17) = v15;
    }

    while (v14 != v10);
  }

  v18 = v10 - v11;
  if (v18 >= 2)
  {
    v19 = (v18 - 2) >> 1;
    v20 = v19;
    do
    {
      v22 = 4 * v20;
      if (v19 >= (4 * v20) >> 2)
      {
        v23 = (v22 >> 1) | 1;
        v24 = &v11[v23];
        if ((v22 >> 1) + 2 < v18)
        {
          v21 = *v24 < v24[1];
          v24 += v21;
          if (v21)
          {
            v23 = (v22 >> 1) + 2;
          }
        }

        v25 = &v11[v22 / 4];
        v26 = *v24;
        v27 = v11[v22 / 4];
        if (*v24 >= v27)
        {
          while (1)
          {
            *v25 = v26;
            v25 = v24;
            if (v19 < v23)
            {
              break;
            }

            v28 = (2 * v23) | 1;
            v24 = &v11[v28];
            v23 = 2 * v23 + 2;
            if (v23 < v18)
            {
              v21 = *v24 < v24[1];
              v24 += v21;
              if (!v21)
              {
                v23 = v28;
              }

              v26 = *v24;
              if (*v24 < v27)
              {
                break;
              }
            }

            else
            {
              v23 = v28;
              v26 = *v24;
              if (*v24 < v27)
              {
                break;
              }
            }
          }

          *v25 = v27;
        }
      }

      v21 = v20-- <= 0;
    }

    while (!v21);
  }

  *(a1 + 456) = *(a1 + 448);
  if (v11 != v10)
  {
    do
    {
      v29 = *v11;
      v30 = *(a1 + 152);
      v31 = v10 - v11;
      if (v31 >= 2)
      {
        v32 = 0;
        v33 = v11;
        do
        {
          v34 = &v33[v32 + 1];
          v35 = (2 * v32) | 1;
          v36 = 2 * v32 + 2;
          if (v36 < v31)
          {
            v21 = *v34 < v34[1];
            v34 += v21;
            if (v21)
            {
              v35 = v36;
            }
          }

          *v33 = *v34;
          v33 = v34;
          v32 = v35;
        }

        while (v35 <= ((v31 - 2) >> 1));
        v37 = v10 - 1;
        if (v34 == v10 - 1)
        {
          *v34 = v29;
        }

        else
        {
          *v34 = *v37;
          *v37 = v29;
          v38 = (v34 - v11 + 4) >> 2;
          v21 = v38 < 2;
          v39 = v38 - 2;
          if (!v21)
          {
            v40 = v39 >> 1;
            v41 = &v11[v40];
            v42 = *v41;
            v43 = *v34;
            if (*v41 < *v34)
            {
              do
              {
                *v34 = v42;
                v34 = v41;
                if (!v40)
                {
                  break;
                }

                v40 = (v40 - 1) >> 1;
                v41 = &v11[v40];
                v42 = *v41;
              }

              while (*v41 < v43);
              *v34 = v43;
            }
          }
        }
      }

      v44 = (v30 + 24 * v29);
      *(a1 + 432) = v10 - 1;
      v45 = v44 + 1;
      v46 = *(a1 + 472);
      if (*(v46 + 4 * *(v44 + 2)) == v29)
      {
        *(a1 + 88) = v29;
        *(v46 + 4 * *(v44 + 2)) = 0;
        *(a1 + 416) = 0;
        if (*(v44 + 4) == -1)
        {
          v47 = *(v44 + 2);
          v48 = *v44;
          v49 = *(a1 + 176);
          v89[0] = v47;
          v89[1] = v48;
          v88 = v29;
          v86 = a1 + 392;
          v87 = a1 + 368;
          v50 = *(v49 + 32 * v29 + 24);
          if (!v50)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v50 + 48))(v50, v89, &v88, &v87, &v86);
        }

        operations_research::sat::IntegerTrail::AppendLiteralsReason(a1, v29, v85);
        v51 = operations_research::sat::IntegerTrail::Dependencies(a1, v29);
        if ((v52 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v53 = v51;
          v54 = &v51[v52];
          do
          {
            v55 = *v53;
            if ((*v53 & 0x80000000) != 0)
            {
              break;
            }

            v56 = *(a1 + 472);
            v57 = 4 * *(*(a1 + 152) + 24 * v55 + 8);
            v58 = *(v56 + v57);
            if (v58 != 0x7FFFFFFF)
            {
              *(a1 + 416) = 1;
            }

            if (v55 > v58)
            {
              *(v56 + v57) = v55;
              v60 = *(a1 + 432);
              v59 = *(a1 + 440);
              if (v60 >= v59)
              {
                v65 = *(a1 + 424);
                v66 = v60 - v65;
                v67 = (v60 - v65) >> 2;
                v68 = v67 + 1;
                if ((v67 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v69 = v59 - v65;
                if (v69 >> 1 > v68)
                {
                  v68 = v69 >> 1;
                }

                if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v70 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v70 = v68;
                }

                if (v70)
                {
                  if (!(v70 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v71 = (v60 - v65) >> 2;
                v72 = (4 * v67);
                v73 = (4 * v67 - 4 * v71);
                *v72 = v55;
                v61 = v72 + 1;
                memcpy(v73, v65, v66);
                *(a1 + 424) = v73;
                *(a1 + 432) = v61;
                *(a1 + 440) = 0;
                if (v65)
                {
                  operator delete(v65);
                }

                *(a1 + 432) = v61;
                v62 = *(a1 + 424);
                v74 = (v61 - v62) >> 2;
                v21 = v74 < 2;
                v64 = v74 - 2;
                if (v21)
                {
                  goto LABEL_52;
                }

LABEL_72:
                v75 = v64 >> 1;
                v76 = (v62 + 4 * v75);
                v79 = *(v61 - 1);
                v78 = v61 - 1;
                v77 = v79;
                v80 = *v76;
                if (*v76 < v79)
                {
                  do
                  {
                    *v78 = v80;
                    v78 = v76;
                    if (!v75)
                    {
                      break;
                    }

                    v75 = (v75 - 1) >> 1;
                    v76 = (v62 + 4 * v75);
                    v80 = *v76;
                  }

                  while (*v76 < v77);
                  *v78 = v77;
                }

                goto LABEL_52;
              }

              *v60 = v55;
              v61 = v60 + 4;
              *(a1 + 432) = v61;
              v62 = *(a1 + 424);
              v63 = (v61 - v62) >> 2;
              v21 = v63 < 2;
              v64 = v63 - 2;
              if (!v21)
              {
                goto LABEL_72;
              }
            }

LABEL_52:
            ++v53;
          }

          while (v53 != v54);
        }

        if ((*(a1 + 416) & 1) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](a1 + 448, v45);
          *(*(a1 + 472) + 4 * *v45) = 0x7FFFFFFF;
        }
      }

      v11 = *(a1 + 424);
      v10 = *(a1 + 432);
    }

    while (v11 != v10);
    v81 = *(a1 + 448);
    v82 = *(a1 + 456);
    if (v81 != v82)
    {
      v83 = *(a1 + 472);
      do
      {
        v84 = *v81++;
        *(v83 + 4 * v84) = 0;
      }

      while (v81 != v82);
    }
  }
}

_DWORD *operations_research::sat::IntegerTrail::Dependencies(operations_research::sat::IntegerTrail *this, int a2)
{
  v2 = *(*(this + 19) + 24 * a2 + 16);
  if (v2 == -1)
  {
    v11 = *(this + 49);
    v12 = (*(this + 50) - v11) >> 2;
    return v11;
  }

  v3 = *(this + 34);
  v4 = *(v3 + 4 * v2);
  v5 = v2 + 1;
  if (v5 < (*(this + 35) - v3) >> 2)
  {
    LODWORD(v6) = *(v3 + 4 * v5);
    if (v6 != v4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = (*(this + 41) - *(this + 40)) >> 4;
  if (v6 == v4)
  {
    return 0;
  }

LABEL_4:
  v7 = v4;
  v8 = *(this + 43);
  v9 = (*(this + 44) - v8) >> 2;
  if (v6 > v9)
  {
    __x = -1;
    v10 = this;
    std::vector<int>::__append((this + 344), v6 - v9, &__x);
    this = v10;
    v8 = *(v10 + 43);
  }

  v11 = (v8 + 4 * v4);
  if (*v11 == -1 && v6 > v4)
  {
    v13 = (*(this + 6) - *(this + 5)) >> 3;
    v14 = *(this + 40);
    v15 = *(this + 19);
    v16 = v4;
    do
    {
      v17 = (v14 + 16 * v7);
      v18 = *v17;
      v19 = v17[1];
      if (v19 <= *(v15 + 24 * v18))
      {
        v21 = -1;
LABEL_26:
        if (v21 < v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v20 = 4 * v18;
        v21 = *(*(this + 8) + v20);
        v22 = *(this + 12);
        v23 = *(v22 + v20);
        if (v23 < v21)
        {
          v24 = v15 + 24 * v23;
          if (*(v24 + 8) == v18 && *v24 >= v19)
          {
            v21 = *(v22 + 4 * v18);
          }
        }

        v25 = v21;
        if (v21 >= *(this + 22))
        {
LABEL_20:
          *(v22 + v20) = v25;
        }

        while (1)
        {
          v26 = v15 + 24 * v25;
          if (*v26 == v19)
          {
            break;
          }

          if (*v26 < v19)
          {
            goto LABEL_26;
          }

          v21 = v25;
          v25 = *(v26 + 12);
          if (v25 >= *(this + 22))
          {
            goto LABEL_20;
          }
        }

        v21 = v25;
        if (v25 < v13)
        {
          goto LABEL_13;
        }
      }

      *(v8 + 4 * v16++) = v21;
LABEL_13:
      ++v7;
    }

    while (v7 != v6);
  }

  return v11;
}

void operations_research::sat::IntegerTrail::AppendLiteralsReason(void *a1, int a2, uint64_t a3)
{
  v5 = (a1[6] - a1[5]) >> 3;
  if (v5 > a2)
  {
    operations_research::sat::IntegerTrail::AppendLiteralsReason(a2, v5);
  }

  v7 = *(a1[19] + 24 * a2 + 16);
  if (v7 == -1)
  {
    v11 = a1[46];
    for (i = a1[47]; v11 != i; ++v11)
    {
      v21 = *v11;
      v13 = (v21 >> 1) >> 6;
      v14 = a1[63];
      v15 = *(v14 + 8 * v13);
      if (((1 << (v21 >> 1)) & v15) == 0)
      {
        v22[0] = v21 >> 1;
        *(v14 + 8 * v13) = (1 << (v21 >> 1)) | v15;
        std::vector<int>::push_back[abi:ne200100]((a1 + 66), v22);
        std::vector<int>::push_back[abi:ne200100](a3, &v21);
      }
    }
  }

  else
  {
    v8 = a1[31];
    v9 = *(v8 + 4 * v7);
    v10 = v7 + 1;
    if (v10 >= (a1[32] - v8) >> 2)
    {
      v8 = (a1[38] - a1[37]) >> 2;
      if (v8 <= v9)
      {
        return;
      }
    }

    else
    {
      LODWORD(v8) = *(v8 + 4 * v10);
      if (v8 <= v9)
      {
        return;
      }
    }

    v16 = 4 * v9;
    v17 = v8 - v9;
    do
    {
      v21 = *(a1[37] + v16);
      v18 = (v21 >> 1) >> 6;
      v19 = a1[63];
      v20 = *(v19 + 8 * v18);
      if (((1 << (v21 >> 1)) & v20) == 0)
      {
        v22[0] = v21 >> 1;
        *(v19 + 8 * v18) = (1 << (v21 >> 1)) | v20;
        std::vector<int>::push_back[abi:ne200100]((a1 + 66), v22);
        std::vector<int>::push_back[abi:ne200100](a3, &v21);
      }

      v16 += 4;
      --v17;
    }

    while (v17);
  }
}

void operations_research::sat::IntegerTrail::ReasonFor(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[2] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v5[0] = a2;
  v5[1] = a3;
  operations_research::sat::IntegerTrail::MergeReasonInto(a1, v5, 1, a4);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_23CBF908C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int *operations_research::sat::IntegerTrail::Reason(operations_research::sat::IntegerTrail *this, const operations_research::sat::Trail *a2, int a3)
{
  v4 = *(*(this + 85) + 4 * a3);
  EmptyVectorToStoreReason = operations_research::sat::Trail::GetEmptyVectorToStoreReason(a2, a3);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 496, (*(*(this + 105) + 56) - *(*(this + 105) + 48)) >> 2);
  v6 = *(this + 19) + 24 * v4;
  if (*(v6 + 16) == -1)
  {
    v7 = *(v6 + 8);
    v8 = *v6;
    v9 = *(this + 22);
    v20[0] = v7;
    v20[1] = v8;
    v19 = v4;
    v17 = this + 392;
    v18 = this + 368;
    v10 = *(v9 + 32 * v4 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, v20, &v19, &v18, &v17);
  }

  operations_research::sat::IntegerTrail::AppendLiteralsReason(this, v4, EmptyVectorToStoreReason);
  v11 = operations_research::sat::IntegerTrail::Dependencies(this, v4);
  if ((v12 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v11;
    v14 = 4 * v12;
    do
    {
      LODWORD(v20[0]) = *v13;
      if ((v20[0] & 0x80000000) != 0)
      {
        break;
      }

      std::vector<int>::push_back[abi:ne200100](this + 424, v20);
      ++v13;
      v14 -= 4;
    }

    while (v14);
  }

  operations_research::sat::IntegerTrail::MergeReasonIntoInternal(this, EmptyVectorToStoreReason);
  result = *EmptyVectorToStoreReason;
  v16 = EmptyVectorToStoreReason[1] - *EmptyVectorToStoreReason;
  return result;
}

void operations_research::sat::IntegerTrail::AppendNewBoundsFrom(void *a1, int a2, uint64_t a3)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize((a1 + 75), (a1[6] - a1[5]) >> 3);
  v6 = (a1[6] - a1[5]) >> 3;
  if (v6 > a2)
  {
    operations_research::sat::IntegerTrail::AppendNewBoundsFrom(a2, v6);
  }

  for (i = -1431655765 * ((a1[20] - a1[19]) >> 3) - 1; i >= a2; --i)
  {
    v8 = a1[19] + 24 * i;
    v9 = *(v8 + 8);
    if (v9 != -1)
    {
      v10 = v9 >> 6;
      v11 = a1[76];
      v12 = *(v11 + 8 * v10);
      if ((v12 & (1 << v9)) == 0)
      {
        LODWORD(v14) = *(v8 + 8);
        *(v11 + 8 * v10) = v12 | (1 << v9);
        std::vector<int>::push_back[abi:ne200100]((a1 + 79), &v14);
        v13 = *v8;
        *&v14 = *(v8 + 8);
        *(&v14 + 1) = v13;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a3, &v14);
      }
    }
  }
}

operations_research::sat::GenericLiteralWatcher *operations_research::sat::GenericLiteralWatcher::GenericLiteralWatcher(operations_research::sat::GenericLiteralWatcher *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "GenericLiteralWatcher");
  *(this + 31) = 21;
  *(this + 4) = 0xFFFFFFFFLL;
  *this = &unk_284F42010;
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntRepository>(a2);
  *(this + 4) = 0u;
  *(this + 7) = v4;
  *(this + 48) = 0;
  *(this + 248) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 39) = 0;
  *(this + 40) = &unk_284F3BDC0;
  *(this + 552) = 0u;
  *(this + 71) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 67) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddLastPropagator(v5, this);
  v6 = *(this + 6);
  v13 = this + 320;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v6 + 768, &v13);
  v7 = *(this + 6);
  v13 = this + 136;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 136, (*(v7 + 48) - *(v7 + 40)) >> 3);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v7 + 744, &v13);
  v9 = *(this + 31);
  v8 = *(this + 32);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
  if (v10 > 1)
  {
    if (v8 - v9 != 96)
    {
        ;
      }

      *(this + 32) = i;
    }
  }

  else
  {
    std::vector<std::deque<int>>::__append(this + 248, 2 - v10);
  }

  return this;
}

void sub_23CBF9560(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntRepository>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RevIntRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RevIntRepository>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::RevIntRepository>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::RevIntRepository>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::RevIntRepository>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void sub_23CBF988C(_Unwind_Exception *a1)
{
  v4 = operations_research::RevRepository<int>::~RevRepository(v1);
  MEMORY[0x23EED9460](v4, v2);
  _Unwind_Resume(a1);
}

void **std::vector<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>>::~vector[abi:ne200100](void **a1)
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

void **std::vector<std::deque<int>>::~vector[abi:ne200100](void **a1)
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
        v3 = std::deque<int>::~deque[abi:ne200100](v3 - 48);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *operations_research::sat::GenericLiteralWatcher::ReserveSpaceForNumVariables(void *this, int a2)
{
  v2 = 2 * a2;
  v3 = this[11];
  if (0xAAAAAAAAAAAAAAABLL * ((this[13] - v3) >> 3) < v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      v4 = this[12] - v3;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void *operations_research::sat::GenericLiteralWatcher::CallOnNextPropagate(void *this, int a2)
{
  v3 = this[34];
  v4 = a2 >> 6;
  v5 = *(v3 + 8 * v4);
  if ((v5 & (1 << a2)) == 0)
  {
    v6 = this[31] + 48 * *(this[59] + 4 * a2);
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v6 + 8);
    *(v3 + 8 * v4) = v5 | (1 << a2);
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = ((v8 - v9) << 7) - 1;
    }

    v11 = *(v6 + 40);
    v12 = v11 + *(v6 + 32);
    if (v10 == v12)
    {
      this = std::deque<int>::__add_back_capacity(v6);
      v9 = *(v6 + 8);
      v11 = *(v6 + 40);
      v12 = *(v6 + 32) + v11;
    }

    *(*(v9 + ((v12 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v12 & 0x3FF)) = a2;
    *(v6 + 40) = v11 + 1;
  }

  return this;
}

void operations_research::sat::GenericLiteralWatcher::UpdateCallingNeeds(operations_research::sat::GenericLiteralWatcher *this, operations_research::sat::Trail *a2)
{
  v3 = *(this + 9);
  v4 = *(a2 + 3);
  v68 = a2;
  if (v3 < v4)
  {
    while (1)
    {
      v5 = v3++;
      *(this + 9) = v3;
      v6 = *(*(a2 + 6) + 4 * v5);
      v7 = *(this + 8);
      if (v6 < (-1431655765 * ((*(this + 9) - v7) >> 3)))
      {
        v8 = (v7 + 24 * v6);
        v9 = *v8;
        v10 = v8[1];
        if (*v8 != v10)
        {
          break;
        }
      }

LABEL_4:
      if (v3 >= v4)
      {
        goto LABEL_33;
      }
    }

    while (1)
    {
      v12 = *v9;
      v13 = *v9;
      v14 = *(this + 34);
      v15 = 1 << *v9;
      v16 = *(v14 + 8 * (v13 >> 6));
      if ((v15 & v16) != 0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(this + 31) + 48 * *(*(this + 59) + 4 * v13);
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v20 = *(v17 + 8);
        *(v14 + 8 * (v13 >> 6)) = v16 | v15;
        if (v19 == v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = ((v19 - v20) << 7) - 1;
        }

        v22 = *(v17 + 40);
        v23 = v22 + *(v17 + 32);
        if (v21 == v23)
        {
          std::deque<int>::__add_back_capacity(v17);
          v20 = *(v17 + 8);
          v22 = *(v17 + 40);
          v23 = *(v17 + 32) + v22;
        }

        *(*(v20 + ((v23 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v23 & 0x3FF)) = v12;
        *(v17 + 40) = v22 + 1;
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_20:
          v24 = HIDWORD(v12);
          v25 = *(this + 56) + 24 * v13;
          v27 = *(v25 + 8);
          v26 = *(v25 + 16);
          if (v27 < v26)
          {
            *v27 = v24;
            v11 = (v27 + 1);
          }

          else
          {
            v28 = *v25;
            v29 = v27 - *v25;
            v30 = v29 >> 2;
            v31 = (v29 >> 2) + 1;
            if (v31 >> 62)
            {
LABEL_72:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v32 = v26 - v28;
            if (v32 >> 1 > v31)
            {
              v31 = v32 >> 1;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v33 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              if (!(v33 >> 62))
              {
                operator new();
              }

LABEL_73:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v30) = v24;
            v11 = 4 * v30 + 4;
            memcpy(0, v28, v29);
            *v25 = 0;
            *(v25 + 8) = v11;
            *(v25 + 16) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          *(v25 + 8) = v11;
        }
      }

      if (++v9 == v10)
      {
        v3 = *(this + 9);
        a2 = v68;
        v4 = *(v68 + 3);
        goto LABEL_4;
      }
    }
  }

LABEL_33:
  v34 = *(this + 21);
  v69 = *(this + 22);
  if (v34 != v69)
  {
    while (1)
    {
      v35 = *v34;
      v36 = *(this + 11);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 12) - v36) >> 3) > v35)
      {
        break;
      }

LABEL_35:
      if (++v34 == v69)
      {
        goto LABEL_64;
      }
    }

    v37 = (v36 + 24 * v35);
    v39 = *v37;
    v38 = v37[1];
    while (1)
    {
      if (v39 == v38)
      {
        goto LABEL_35;
      }

      v41 = *v39;
      v42 = *v39;
      v43 = *(this + 34);
      v44 = 1 << *v39;
      v45 = *(v43 + 8 * (v42 >> 6));
      if ((v44 & v45) != 0)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v46 = *(this + 31) + 48 * *(*(this + 59) + 4 * v42);
        v47 = *(v46 + 8);
        v48 = *(v46 + 16);
        v49 = *(v46 + 8);
        *(v43 + 8 * (v42 >> 6)) = v45 | v44;
        if (v48 == v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = ((v48 - v49) << 7) - 1;
        }

        v51 = *(v46 + 40);
        v52 = v51 + *(v46 + 32);
        if (v50 == v52)
        {
          std::deque<int>::__add_back_capacity(v46);
          v49 = *(v46 + 8);
          v51 = *(v46 + 40);
          v52 = *(v46 + 32) + v51;
        }

        *(*(v49 + ((v52 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v52 & 0x3FF)) = v41;
        *(v46 + 40) = v51 + 1;
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }
      }

      v53 = HIDWORD(v41);
      v54 = *(this + 56) + 24 * v42;
      v56 = *(v54 + 8);
      v55 = *(v54 + 16);
      if (v56 < v55)
      {
        *v56 = HIDWORD(v41);
        v40 = (v56 + 1);
      }

      else
      {
        v57 = *v54;
        v58 = v56 - *v54;
        v59 = v58 >> 2;
        v60 = (v58 >> 2) + 1;
        if (v60 >> 62)
        {
          goto LABEL_72;
        }

        v61 = v55 - v57;
        if (v61 >> 1 > v60)
        {
          v60 = v61 >> 1;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v62 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          if (!(v62 >> 62))
          {
            operator new();
          }

          goto LABEL_73;
        }

        *(4 * v59) = v53;
        v40 = 4 * v59 + 4;
        memcpy(0, v57, v58);
        *v54 = 0;
        *(v54 + 8) = v40;
        *(v54 + 16) = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      *(v54 + 8) = v40;
LABEL_40:
      ++v39;
    }
  }

LABEL_64:
  if ((*(v68 + 2) & 0xFFFFFFF) == 0 && *(this + 69) != *(this + 70))
  {
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize(this + 192, *(this + 34));
    v63 = *(this + 21);
    for (i = *(this + 22); v63 != i; ++v63)
    {
      v70 = *v63;
      v65 = v70 >> 6;
      v66 = *(this + 25);
      v67 = *(v66 + 8 * v65);
      if ((v67 & (1 << v70)) == 0)
      {
        *(v66 + 8 * v65) = v67 | (1 << v70);
        std::vector<int>::push_back[abi:ne200100](this + 224, &v70);
      }
    }
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 136, (*(*(this + 6) + 48) - *(*(this + 6) + 40)) >> 3);
}

double operations_research::sat::GenericLiteralWatcher::Propagate(operations_research::sat::GenericLiteralWatcher *this, operations_research::sat::Trail *a2)
{
  v2 = a2;
  v4 = *(a2 + 2) & 0xFFFFFFF;
  if (!v4)
  {
    v49 = *(this + 65);
    for (i = *(this + 66); v49 != i; ++v49)
    {
      v51 = *v49;
      v52 = *(this + 34);
      v53 = *v49 >> 6;
      v54 = *(v52 + 8 * v53);
      if (((1 << *v49) & v54) == 0)
      {
        v55 = *(this + 31) + 48 * *(*(this + 59) + 4 * v51);
        v56 = *(v55 + 8);
        v57 = *(v55 + 16);
        v58 = *(v55 + 8);
        *(v52 + 8 * v53) = (1 << v51) | v54;
        if (v57 == v58)
        {
          v59 = 0;
        }

        else
        {
          v59 = ((v57 - v58) << 7) - 1;
        }

        v60 = *(v55 + 40);
        v61 = v60 + *(v55 + 32);
        if (v59 == v61)
        {
          std::deque<int>::__add_back_capacity(v55);
          v58 = *(v55 + 8);
          v60 = *(v55 + 40);
          v61 = *(v55 + 32) + v60;
        }

        *(*(v58 + ((v61 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v61 & 0x3FF)) = v51;
        *(v55 + 40) = v60 + 1;
      }
    }
  }

  operations_research::sat::GenericLiteralWatcher::UpdateCallingNeeds(this, v2);
  v70 = *(*(this + 6) + 712);
  if (*(this + 32) == *(this + 31))
  {
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v69 = 0;
    v7 = 0;
    v73 = v2;
    v74 = v4;
    while (2)
    {
      if (v6 >= 101)
      {
        if (operations_research::TimeLimit::LimitReached(*(this + 5)))
        {
          break;
        }

        v6 = 0;
      }

      v71 = v6;
      v8 = *(this + 75);
      if (v8 && (*(*v8 + 48))(v8))
      {
        v68 = *(this + 6);
        if (*(v68 + 704) == -1)
        {
          *(v68 + 704) = *(*(v68 + 840) + 8) & 0xFFFFFFF;
        }
      }

      else
      {
        v9 = (*(this + 31) + 48 * v5);
        v72 = v9;
        while (1)
        {
          v10 = v9[5];
          if (!v10)
          {
            break;
          }

          v75 = v7;
          v11 = v9[1];
          v12 = v9[4];
          v13 = (*(v11 + ((v12 >> 7) & 0x1FFFFFFFFFFFFF8)))[v12 & 0x3FF];
          *(this + 136) = v13;
          v9[4] = ++v12;
          v9[5] = v10 - 1;
          if (v12 >= 0x800)
          {
            operator delete(*v11);
            v9[1] += 8;
            v9[4] -= 1024;
          }

          v14 = v13;
          v15 = *(this + 47);
          v16 = *(v15 + 4 * v13);
          v17 = *(this + 37);
          v18 = *(v17 + 4 * v13);
          v19 = v4 > v16;
          v20 = v4 > v16 || v16 < v18;
          if (v20)
          {
            *(v17 + 4 * v13) = v74;
            if (*(this + 41) != *(this + 42))
            {
              LODWORD(v76) = v13;
              HIDWORD(v76) = *(v15 + 4 * v13);
              std::vector<long long>::push_back[abi:ne200100](this + 352, &v76);
              v15 = *(this + 47);
            }

            *(v15 + 4 * v13) = v74;
            v21 = *(this + 50) + 24 * v13;
            v22 = *v21;
            v23 = *(v21 + 8);
            if (*v21 != v23)
            {
              if (v16 >= v18)
              {
                if (v19)
                {
                  do
                  {
                    (*(**v22 + 16))(*v22, v74);
                    ++v22;
                  }

                  while (v22 != v23);
                }
              }

              else if (v19)
              {
                do
                {
                  v24 = *v22;
                  (*(**v22 + 16))(*v22, v16);
                  (*(*v24 + 16))(v24, v74);
                  ++v22;
                }

                while (v22 != v23);
              }

              else
              {
                do
                {
                  (*(**v22 + 16))(*v22, v16);
                  ++v22;
                }

                while (v22 != v23);
              }
            }

            v25 = *(this + 53) + 24 * v13;
            v26 = *v25;
            v27 = *(v25 + 8);
            if (*v25 != v27 && *(*(this + 7) + 16) != *(*(this + 7) + 24))
            {
              do
              {
                v34 = *(this + 7);
                if (v34[2] != v34[3])
                {
                  v35 = *v26;
                  v36 = **v26;
                  v38 = v34[6];
                  v37 = v34[7];
                  if (v38 < v37)
                  {
                    *v38 = v35;
                    *(v38 + 8) = v36;
                    v33 = v38 + 16;
                  }

                  else
                  {
                    v39 = v34[5];
                    v40 = v38 - v39;
                    v41 = (v38 - v39) >> 4;
                    v42 = v41 + 1;
                    if ((v41 + 1) >> 60)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v43 = v37 - v39;
                    if (v43 >> 3 > v42)
                    {
                      v42 = v43 >> 3;
                    }

                    if (v43 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v44 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v44 = v42;
                    }

                    if (v44)
                    {
                      if (!(v44 >> 60))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v45 = 16 * v41;
                    *v45 = v35;
                    *(v45 + 8) = v36;
                    v33 = 16 * v41 + 16;
                    memcpy(0, v39, v40);
                    v34[5] = 0;
                    v34[6] = v33;
                    v34[7] = 0;
                    if (v39)
                    {
                      operator delete(v39);
                    }
                  }

                  v34[6] = v33;
                }

                ++v26;
              }

              while (v26 != v27);
            }
          }

          v28 = *(*(this + 6) + 712);
          v2 = v73;
          v29 = *(v73 + 3);
          v7 = v75 + 1;
          v30 = (*(this + 56) + 24 * v14);
          v31 = **(*(this + 14) + 8 * v14);
          if (*v30 == v30[1])
          {
            v32 = (*(v31 + 16))();
          }

          else
          {
            v32 = (*(v31 + 24))();
          }

          if ((v32 & 1) == 0)
          {
            v65 = (*(this + 56) + 24 * v14);
            v65[1] = *v65;
            *(*(this + 34) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v14);
            goto LABEL_78;
          }

          if (*(*(this + 62) + 4 * v14))
          {
            operations_research::sat::GenericLiteralWatcher::UpdateCallingNeeds(this, v73);
            v46 = (*(this + 56) + 24 * v14);
            v46[1] = *v46;
            *(*(this + 34) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v14);
          }

          else
          {
            v47 = (*(this + 56) + 24 * v14);
            v47[1] = *v47;
            *(*(this + 34) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v14);
            operations_research::sat::GenericLiteralWatcher::UpdateCallingNeeds(this, v73);
          }

          if (*(v73 + 3) > v29)
          {
            goto LABEL_78;
          }

          v4 = v74;
          v9 = v72;
          if (*(*(this + 6) + 712) > v28)
          {
            v48 = 0;
            ++v71;
            goto LABEL_58;
          }
        }

        v48 = v69 + 1;
LABEL_58:
        v69 = v48;
        v5 = v48;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 32) - *(this + 31)) >> 4) > v48;
        v6 = v71;
        if (v20)
        {
          continue;
        }
      }

      break;
    }
  }

  if ((*(v2 + 2) & 0xFFFFFFF) == 0)
  {
    v62 = *(this + 69);
    for (j = *(this + 70); v62 != j; v62 += 32)
    {
      v64 = *(v62 + 24);
      if (!v64)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v64 + 48))(v64, this + 224);
    }

    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 192, (*(*(this + 6) + 48) - *(*(this + 6) + 40)) >> 3);
  }

LABEL_78:
  v66 = *(this + 5);
  result = *(v66 + 112) + (*(*(this + 6) + 712) - v70) * 0.0000001 + v7 * 0.00000001;
  *(v66 + 112) = result;
  return result;
}

void operations_research::sat::GenericLiteralWatcher::Untrail(operations_research::sat::GenericLiteralWatcher *this, const operations_research::sat::Trail *a2, int a3)
{
  if (*(this + 9) > a3)
  {
    v32 = v3;
    v33 = v4;
    v7 = *(this + 76);
    v8 = *(this + 77);
    if (v7 != v8)
    {
      v9 = *(this + 76);
      if (v8 - 1 == v7)
      {
        goto LABEL_28;
      }

      v10 = (((v8 - 1) - v7) >> 3) + 1;
      v9 = &v7[v10 & 0x3FFFFFFFFFFFFFFELL];
      v11 = v7 + 1;
      v12 = v10 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v13 = *v11;
        **(v11 - 1) = 0;
        *v13 = 0;
        v11 += 2;
        v12 -= 2;
      }

      while (v12);
      if (v10 != (v10 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_28:
        do
        {
          v14 = *v9++;
          *v14 = 0;
        }

        while (v9 != v8);
      }
    }

    *(this + 77) = v7;
    v15 = *(this + 31);
    for (i = *(this + 32); v15 != i; v15 += 6)
    {
      v18 = v15[1];
      v19 = v15[2] - v18;
      if (v19)
      {
        v20 = v15[4];
        v21 = &v18[v20 >> 10];
        v22 = *v21 + 4 * (v20 & 0x3FF);
        v23 = v15 + 5;
        v24 = *(v18 + (((v15[5] + v20) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v15[5] + v20) & 0x3FF);
        if (v22 != v24)
        {
          v25 = *(this + 56);
          do
          {
            v26 = *v22;
            v22 += 4;
            *(v25 + 24 * v26 + 8) = *(v25 + 24 * v26);
            if (v22 - *v21 == 4096)
            {
              v27 = v21[1];
              ++v21;
              v22 = v27;
            }
          }

          while (v22 != v24);
        }
      }

      else
      {
        v23 = v15 + 5;
      }

      *v23 = 0;
      v28 = v19 >> 3;
      if (v28 >= 3)
      {
        do
        {
          operator delete(*v18);
          v29 = v15[2];
          v18 = (v15[1] + 8);
          v15[1] = v18;
          v28 = (v29 - v18) >> 3;
        }

        while (v28 > 2);
      }

      if (v28 == 1)
      {
        v17 = 512;
      }

      else
      {
        if (v28 != 2)
        {
          continue;
        }

        v17 = 1024;
      }

      v15[4] = v17;
    }

    *(this + 9) = a3;
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 136, (*(*(this + 6) + 48) - *(*(this + 6) + 40)) >> 3);
    v30 = (*(this + 15) - *(this + 14)) >> 3;
    v31 = 0;
    std::vector<BOOL>::assign(this + 272, v30, &v31);
  }
}

unint64_t operations_research::sat::GenericLiteralWatcher::Register(void *a1, uint64_t a2)
{
  v54 = a2;
  v4 = a1[14];
  v5 = a1[15];
  v3 = (a1 + 14);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100]((a1 + 14), &v54);
  v53 = 0;
  std::vector<int>::push_back[abi:ne200100](&v3[7].__end_cap_, &v53);
  begin = v3[11].__begin_;
  if (v3[11].__end_ - begin == -4)
  {
    a1[48] = begin;
  }

  else
  {
    std::vector<int>::__append(v3 + 11, 1uLL);
  }

  v8 = a1[51];
  v7 = a1[52];
  if (v8 >= v7)
  {
    v10 = a1[50];
    v11 = v8 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_57:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    v9 = 24 * v12 + 24;
    v17 = 24 * v12 - v11;
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    memcpy((v16 - v11), v10, v11);
    a1[50] = v17;
    a1[51] = v9;
    a1[52] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v9 = (v8 + 24);
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
  }

  a1[51] = v9;
  v19 = a1[54];
  v18 = a1[55];
  if (v19 < v18)
  {
    v20 = (v19 + 24);
    *v19 = 0;
    *(v19 + 1) = 0;
    *(v19 + 2) = 0;
    goto LABEL_30;
  }

  v21 = a1[53];
  v22 = v19 - v21;
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 3);
  v24 = v23 + 1;
  if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v25 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v21) >> 3);
  if (2 * v25 > v24)
  {
    v24 = 2 * v25;
  }

  if (v25 >= 0x555555555555555)
  {
    v26 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v26 = v24;
  }

  if (v26)
  {
    if (v26 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_57;
  }

  v27 = 24 * v23;
  v20 = 24 * v23 + 24;
  v28 = 24 * v23 - v22;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  memcpy((v27 - v22), v21, v22);
  a1[53] = v28;
  a1[54] = v20;
  a1[55] = 0;
  if (v21)
  {
    operator delete(v21);
  }

LABEL_30:
  a1[54] = v20;
  v30 = a1[57];
  v29 = a1[58];
  if (v30 < v29)
  {
    v31 = (v30 + 24);
    *v30 = 0;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    goto LABEL_43;
  }

  v32 = a1[56];
  v33 = v30 - v32;
  v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v32) >> 3);
  v35 = v34 + 1;
  if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 3);
  if (2 * v36 > v35)
  {
    v35 = 2 * v36;
  }

  if (v36 >= 0x555555555555555)
  {
    v37 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v37 = v35;
  }

  if (v37)
  {
    if (v37 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_57;
  }

  v38 = 24 * v34;
  v31 = 24 * v34 + 24;
  v39 = 24 * v34 - v33;
  *v38 = 0;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  memcpy((v38 - v33), v32, v33);
  a1[56] = v39;
  a1[57] = v31;
  a1[58] = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_43:
  a1[57] = v31;
  v53 = 1;
  std::vector<int>::push_back[abi:ne200100]((a1 + 59), &v53);
  v53 = 1;
  std::vector<int>::push_back[abi:ne200100]((a1 + 62), &v53);
  v41 = a1[35];
  v40 = a1[36];
  if (v41 == v40 << 6)
  {
    if ((v41 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v41 > 0x3FFFFFFFFFFFFFFELL)
    {
      v44 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v40 << 7;
      v43 = (v41 & 0x3FFFFFFFFFFFFFC0) + 64;
      if (v42 <= v43)
      {
        v44 = v43;
      }

      else
      {
        v44 = v42;
      }
    }

    std::vector<BOOL>::reserve((a1 + 34), v44);
    v41 = a1[35];
  }

  v45 = a1[31];
  v46 = *(v45 + 56);
  v47 = *(v45 + 64);
  v48 = *(v45 + 56);
  a1[35] = v41 + 1;
  *(a1[34] + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
  if (v47 == v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = ((v47 - v48) << 7) - 1;
  }

  v50 = *(v45 + 88);
  v51 = v50 + *(v45 + 80);
  if (v49 == v51)
  {
    std::deque<int>::__add_back_capacity((v45 + 48));
    v48 = *(v45 + 56);
    v50 = *(v45 + 88);
    v51 = *(v45 + 80) + v50;
  }

  result = (v5 - v4) >> 3;
  *(*(v48 + ((v51 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v51 & 0x3FF)) = result;
  *(v45 + 88) = v50 + 1;
  return result;
}

void operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(operations_research::sat::GenericLiteralWatcher *this, int a2, int a3)
{
  v5 = this + 248;
  v6 = *(this + 31);
  *(*(this + 59) + 4 * a2) = a3;
  v7 = *(this + 32);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4);
  if (v8 <= a3)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        v10 = this;
          ;
        }

        *(v10 + 32) = i;
      }
    }

    else
    {

      std::vector<std::deque<int>>::__append(v5, v9 - v8);
    }
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::Assign<absl::lts_20240722::inlined_vector_internal::IteratorValueAdapter<std::allocator<operations_research::ClosedInterval>,operations_research::ClosedInterval const*>>(unint64_t *a1, __int128 *a2, unint64_t a3)
{
  v6 = a1 + 1;
  v5 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = 1;
    if (a3 <= 1)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (2 * v7 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = 2 * v7;
    }

    if (!(v15 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = a1[1];
  v7 = a1[2];
  if (v7 < a3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v8 = v5 >> 1;
  v9 = a3 >= v5 >> 1;
  v10 = a3 - (v5 >> 1);
  if (!v9)
  {
    v10 = 0;
  }

  if (v8 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    v12 = v6;
    do
    {
      v13 = *a2++;
      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  if (v8 >= a3)
  {
    v17 = *a1;
  }

  else
  {
    v14 = &v6[v8];
    do
    {
      v16 = *a2++;
      *v14++ = v16;
      --v10;
    }

    while (v10);
    v17 = *a1;
  }

  *a1 = v17 & 1 | (2 * a3);
}

void *std::vector<absl::lts_20240722::btree_map<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

void *std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<operations_research::sat::ValueLiteralPair>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = &v3[2 * a2];
      do
      {
        *v3 = 0;
        v3[1] = 0;
        *(v3 + 2) = -1;
        v3 += 2;
      }

      while (v3 != v11);
      v3 = v11;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v4 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v12 + 16 * a2;
      v10 = (16 * v5);
      do
      {
        *v10 = 0;
        v10[1] = 0;
        *(v10 + 2) = -1;
        v10 += 2;
      }

      while (v10 != v9);
    }

    else
    {
      v9 = 16 * v5;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>::Assign<absl::lts_20240722::inlined_vector_internal::IteratorValueAdapter<std::allocator<operations_research::sat::ValueLiteralPair>,std::__wrap_iter<operations_research::sat::ValueLiteralPair*>>>(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a1 + 1;
  v5 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = 2;
    if (a3 <= 2)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (2 * v7 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = 2 * v7;
    }

    if (!(v15 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = a1[1];
  v7 = a1[2];
  if (v7 < a3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v8 = v5 >> 1;
  v9 = a3 >= v5 >> 1;
  v10 = a3 - (v5 >> 1);
  if (!v9)
  {
    v10 = 0;
  }

  if (v8 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v8;
  }

  if (v11)
  {
    v12 = v6;
    do
    {
      v13 = *a2;
      *(v12 + 2) = *(a2 + 2);
      *v12 = v13;
      v12 += 2;
      a2 += 2;
      --v11;
    }

    while (v11);
  }

  if (v8 >= a3)
  {
    v17 = *a1;
  }

  else
  {
    v14 = &v6[2 * v8];
    do
    {
      v16 = *a2;
      a2 += 2;
      *v14++ = v16;
      --v10;
    }

    while (v10);
    v17 = *a1;
  }

  *a1 = v17 & 1 | (2 * a3);
}

void std::vector<absl::lts_20240722::btree_map<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>>>::__append(unsigned __int8 ****a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (!(24 * a2))
    {
LABEL_23:
      a1[1] = v3;
      return;
    }

    v12 = (v3 + 24 * a2);
    v13 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 >= 3)
    {
      v16 = v13 + 1;
      v17 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v14 = &v3->i64[3 * v17];
      v18.i64[1] = 0;
      v18.i64[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      v19.i64[0] = 0;
      v19.i64[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      v20 = vdupq_n_s64(&absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node);
      v21 = v17;
      do
      {
        *v3 = v20;
        v3[1] = v19;
        v3[4] = v19;
        v3[5] = v18;
        v3[2] = v18;
        v3[3] = v20;
        v3 += 6;
        v21 -= 4;
      }

      while (v21);
      if (v16 == v17)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = a1[1];
    }

    do
    {
      *v14 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      v14[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      v14[2] = 0;
      v14 += 3;
    }

    while (v14 != v12);
LABEL_22:
    v3 = v12;
    goto LABEL_23;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v6 = v5 + a2;
  if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
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

  v15 = 24 * v5;
  if (24 * a2)
  {
    v9 = v15 + 24 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10 >= 3)
    {
      v22 = v10 + 1;
      v23 = (v10 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v11 = v15 + 24 * v23;
      *&v25 = 0;
      *(&v24 + 1) = 0;
      *&v24 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      *(&v25 + 1) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      v26 = vdupq_n_s64(&absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node);
      v27 = 24 * v5;
      v28 = v23;
      do
      {
        *v27 = v26;
        *(v27 + 16) = v25;
        *(v27 + 64) = v25;
        *(v27 + 80) = v24;
        *(v27 + 32) = v24;
        *(v27 + 48) = v26;
        v27 += 96;
        v28 -= 4;
      }

      while (v28);
      if (v22 == v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = 24 * v5;
    }

    do
    {
      *v11 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      *(v11 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      *(v11 + 16) = 0;
      v11 += 24;
    }

    while (v11 != v9);
  }

  else
  {
    v9 = 24 * v5;
  }

LABEL_28:
  v29 = *a1;
  v30 = a1[1];
  v31 = v15 + *a1 - v30;
  if (v30 != *a1)
  {
    v32 = *a1;
    v33 = (v15 + *a1 - v30);
    do
    {
      v34 = *v32;
      *v32 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      *v33 = v34;
      v33[1] = v32[1];
      v35 = v32[2];
      v32[2] = 0;
      v33[2] = v35;
      v32[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::EmptyNode(void)::empty_node;
      v32 += 3;
      v33 += 3;
    }

    while (v32 != v30);
    do
    {
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::clear(v29);
      v29 += 3;
    }

    while (v29 != v30);
    v29 = *a1;
  }

  *a1 = v31;
  a1[1] = v9;
  a1[2] = 0;
  if (v29)
  {

    operator delete(v29);
  }
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::insert_unique<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(result + 2))
  {
    operator new();
  }

  v6 = *a2;
  v7 = *result;
  v8 = *(*result + 10);
  if (*(*result + 10))
  {
LABEL_4:
    v9 = 0;
    do
    {
      v10 = (v8 + v9) >> 1;
      if (*&v7[16 * v10 + 16] < v6)
      {
        v9 = v10 + 1;
      }

      else
      {
        v8 = (v8 + v9) >> 1;
      }
    }

    while (v9 != v8);
  }

  while (!v7[11])
  {
    v11 = &v7[8 * v8 + 256];
    v7 = *v11;
    v8 = *(*v11 + 10);
    if (*(*v11 + 10))
    {
      goto LABEL_4;
    }
  }

  v12 = v8;
  v13 = v7;
  while (v8 == v13[10])
  {
    LODWORD(v8) = v13[8];
    v13 = *v13;
    if (v13[11])
    {
      goto LABEL_17;
    }
  }

  if (v6 < *&v13[16 * v8 + 16])
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::internal_emplace<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>(result, v7, v12, a3);
    v13 = result;
    LODWORD(v8) = v14;
    v15 = 1;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:
  *a4 = v13;
  *(a4 + 8) = v8;
  *(a4 + 16) = v15;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Literal,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>,256,false>>::internal_emplace<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::sat::Literal>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  i = a2;
  v21 = a3;
  v6 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = a3;
    v9 = a2[10];
    v10 = v9 - a3;
    if (v9 <= a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v21) = a3;
  v6 = a2[11];
  if (!a2[11])
  {
    v6 = 15;
  }

  if (a2[10] != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 0xE)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v21;
  v9 = i[10];
  v10 = v9 - v21;
  if (v9 > v21)
  {
LABEL_13:
    if ((v10 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = &v7[16 * v8 + 16 + 16 * v10];
      v12 = 16 * v8 - 16 * v9;
      do
      {
        *v11 = *(v11 - 1);
        v11 -= 16;
        v12 += 16;
      }

      while (v12);
      LODWORD(v9) = v7[10];
    }
  }

LABEL_17:
  v13 = &v7[16 * v8];
  *(v13 + 2) = *a4;
  *(v13 + 6) = *(a4 + 8);
  v14 = v9 + 1;
  v7[10] = v14;
  if (!v7[11])
  {
    v15 = v8 + 1;
    if (v15 < v14)
    {
      v16 = v7 + 256;
      do
      {
        v17 = *&v16[8 * (v14 - 1)];
        *&v16[8 * v14] = v17;
        *(v17 + 8) = v14;
      }

      while (v15 < --v14);
    }
  }

  ++*(a1 + 16);
  return i;
}

void std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>>::__append(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * (v4 - v3) >= a2)
  {
    if (!(40 * a2))
    {
LABEL_27:
      a1[1] = v3;
      return;
    }

    v16 = &v3[5 * a2];
    v17 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = &v3[5 * v19];
      v21 = v19;
      do
      {
        *v3 = 0;
        v3[5] = 0;
        v3 += 10;
        v21 -= 2;
      }

      while (v21);
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = a1[1];
    }

    do
    {
      *v20 = 0;
      v20 += 5;
    }

    while (v20 != v16);
LABEL_26:
    v3 = v16;
    goto LABEL_27;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 - *a1);
  v6 = v5 + a2;
  if (v5 + a2 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 - *a1);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 40 * v5;
  if (40 * a2)
  {
    v9 = v22 + 40 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = (v22 + 40 * v12);
      v14 = v22;
      v15 = v12;
      do
      {
        *v14 = 0;
        v14[5] = 0;
        v14 += 10;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = v22;
    }

    do
    {
      *v13 = 0;
      v13 += 5;
    }

    while (v13 != v9);
  }

  else
  {
    v9 = 40 * v5;
  }

LABEL_30:
  v23 = *a1;
  v24 = a1[1];
  v25 = v22 + *a1 - v24;
  if (v24 != *a1)
  {
    v26 = *a1;
    v27 = v25;
    do
    {
      *v27 = 0;
      *v27 = *v26;
      v28 = *(v26 + 1);
      *(v27 + 24) = *(v26 + 3);
      *(v27 + 8) = v28;
      *v26 = 0;
      v26 += 5;
      v27 += 40;
    }

    while (v26 != v24);
    do
    {
      if (*v23)
      {
        operator delete(v23[1]);
      }

      v23 += 5;
    }

    while (v23 != v24);
    v23 = *a1;
  }

  *a1 = v25;
  a1[1] = v9;
  a1[2] = 0;
  if (v23)
  {

    operator delete(v23);
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::IntegerLiteral,2ul,std::allocator<operations_research::sat::IntegerLiteral>>::EmplaceBackSlow<operations_research::sat::IntegerLiteral const&>(void *a1)
{
  if (*a1)
  {
    if (((a1[2] >> 59) & 0xFLL) != 0)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v1 = a1[1];
  }

  operator new();
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::EmplaceDecomposable::operator()<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::piecewise_construct_t const&,std::tuple<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>&&>,std::tuple<operations_research::sat::Literal&&>>@<Q0>(uint64_t **a1@<X0>, unsigned int *a2@<X1>, __n128 **a3@<X3>, unsigned __int32 **a4@<X4>, uint64_t a5@<X8>)
{
  v5 = 0;
  v6 = *a1;
  _X10 = (*a1)[2];
  __asm { PRFM            #4, [X10] }

  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = v13 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12)));
  v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
  v16 = **a1;
  result.n128_u64[0] = vdup_n_s8(v15 & 0x7F);
  v18 = ((v15 >> 7) ^ (_X10 >> 12)) & v16;
  v19 = *(_X10 + v18);
  v20 = vceq_s8(v19, result.n128_u64[0]);
  if (v20)
  {
LABEL_2:
    while (1)
    {
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v16;
      v22 = v6[3] + 24 * v21;
      if (*v22 == v12 && *(v22 + 8) == v13)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    *a5 = _X10 + v21;
    *(a5 + 8) = v22;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v24 = vceq_s8(v19, 0x8080808080808080);
      if (v24)
      {
        break;
      }

      v5 += 8;
      v18 = (v5 + v18) & v16;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, result.n128_u64[0]);
      if (v20)
      {
        goto LABEL_2;
      }
    }

    inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v15, (v18 + (__clz(__rbit64(v24)) >> 3)) & v16, v5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
    v29 = (v6[3] + 24 * inserted);
    *a5 = v6[2] + inserted;
    *(a5 + 8) = v29;
    *(a5 + 16) = 1;
    v30 = *a4;
    result = **a3;
    *v29 = result;
    v29[1].n128_u32[0] = *v30;
  }

  return result;
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::PositiveOnlyIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const,operations_research::sat::Literal>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ValueLiteralPair,2ul,std::allocator<operations_research::sat::ValueLiteralPair>>::EmplaceBackSlow<operations_research::sat::ValueLiteralPair>(void *a1)
{
  if (*a1)
  {
    if (((a1[2] >> 59) & 0xFLL) != 0)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v1 = a1[1];
  }

  operator new();
}

void std::vector<absl::lts_20240722::InlinedVector<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,2ul,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>::__append(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * (v4 - v3) >= a2)
  {
    if (!(40 * a2))
    {
LABEL_27:
      a1[1] = v3;
      return;
    }

    v16 = &v3[5 * a2];
    v17 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = &v3[5 * v19];
      v21 = v19;
      do
      {
        *v3 = 0;
        v3[5] = 0;
        v3 += 10;
        v21 -= 2;
      }

      while (v21);
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = a1[1];
    }

    do
    {
      *v20 = 0;
      v20 += 5;
    }

    while (v20 != v16);
LABEL_26:
    v3 = v16;
    goto LABEL_27;
  }

  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 - *a1);
  v6 = v5 + a2;
  if (v5 + a2 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 - *a1);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 40 * v5;
  if (40 * a2)
  {
    v9 = v22 + 40 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = (v22 + 40 * v12);
      v14 = v22;
      v15 = v12;
      do
      {
        *v14 = 0;
        v14[5] = 0;
        v14 += 10;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = v22;
    }

    do
    {
      *v13 = 0;
      v13 += 5;
    }

    while (v13 != v9);
  }

  else
  {
    v9 = 40 * v5;
  }

LABEL_30:
  v23 = *a1;
  v24 = a1[1];
  v25 = (v22 + *a1 - v24);
  if (v24 != *a1)
  {
    v26 = *a1;
    v27 = v25;
    do
    {
      while (1)
      {
        *v27 = 0;
        v29 = *v26;
        if ((*v26 & 1) == 0)
        {
          break;
        }

        v28 = v26[2];
        v27[1] = v26[1];
        v27[2] = v28;
        *v27 = *v26 | 1;
        v27 += 5;
        *v26 = 0;
        v26 += 5;
        if (v26 == v24)
        {
          goto LABEL_41;
        }
      }

      v30 = 0;
      if (v29)
      {
        v31 = v29 >> 1;
        do
        {
          *(v27 + v30 + 8) = *(v26 + v30 + 8);
          v30 += 16;
          --v31;
        }

        while (v31);
        v30 = *v26 & 0xFFFFFFFFFFFFFFFELL;
      }

      *v27 = v30;
      v27 += 5;
      v26 += 5;
    }

    while (v26 != v24);
    do
    {
LABEL_41:
      if (*v23)
      {
        operator delete(v23[1]);
      }

      v23 += 5;
    }

    while (v23 != v24);
    v23 = *a1;
  }

  *a1 = v25;
  a1[1] = v9;
  a1[2] = 0;
  if (v23)
  {

    operator delete(v23);
  }
}

void std::vector<operations_research::sat::IntegerLiteral>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4 + 16 * a2;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v16 = v4 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
      v17 = v4 + 16;
      v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 16) = -1;
        *v17 = -1;
        *(v17 - 8) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 -= 2;
      }

      while (v18);
      v4 = v16;
      if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v4 = -1;
          *(v4 + 8) = 0;
          v4 += 16;
        }

        while (v4 != v14);
      }

      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v19 + 16 * a2;
      v10 = 16 * v5;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = v19 + 16 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v12 = v19 + 16;
      v13 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 16) = -1;
        *v12 = -1;
        *(v12 - 8) = 0;
        *(v12 + 8) = 0;
        v12 += 32;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = -1;
          *(v10 + 8) = 0;
          v10 += 16;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 16 * v5;
    }

    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v19 - v21;
    memcpy((v19 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void *std::vector<operations_research::Domain>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(uint64_t *a1, uint64_t a2)
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

void std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__append(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (a2 > (v5 - v6) >> 5)
  {
    v7 = (v6 - *a1) >> 5;
    if ((v7 + a2) >> 59)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v25 = a1;
    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 32 * v7;
    __p = 0;
    v22 = v14;
    v23 = v14;
    v24 = 0;
    if ((a2 & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
LABEL_31:
      v23 = v14;
      std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__swap_out_circular_buffer(a1, &__p);
      v18 = v22;
      while (1)
      {
        v19 = v23;
        if (v23 == v18)
        {
          break;
        }

        v23 -= 32;
        v20 = *(v19 - 8);
        if (v20 == v19 - 32)
        {
          (*(*v20 + 32))(v20);
        }

        else if (v20)
        {
          (*(*v20 + 40))(v20);
        }
      }

      if (__p)
      {
        operator delete(__p);
      }

      return;
    }

    v15 = 32 * a2;
    v16 = v14 + 32 * a2;
    while (1)
    {
      v17 = *(a3 + 24);
      if (v17)
      {
        if (v17 == a3)
        {
          *(v14 + 24) = v14;
          (*(**(a3 + 24) + 24))(*(a3 + 24), v14);
          goto LABEL_26;
        }

        v17 = (*(*v17 + 16))(v17);
      }

      *(v14 + 24) = v17;
LABEL_26:
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        v14 = v16;
        goto LABEL_31;
      }
    }
  }

  if ((a2 & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_20;
  }

  v11 = 32 * a2;
  v12 = v6 + 32 * a2;
  do
  {
    v13 = *(a3 + 24);
    if (!v13)
    {
      goto LABEL_14;
    }

    if (v13 != a3)
    {
      v13 = (*(*v13 + 16))(v13);
LABEL_14:
      *(v6 + 24) = v13;
      goto LABEL_15;
    }

    *(v6 + 24) = v6;
    (*(**(a3 + 24) + 24))(*(a3 + 24), v6);
LABEL_15:
    v6 += 32;
    v11 -= 32;
  }

  while (v11);
  v6 = v12;
LABEL_20:
  a1[1] = v6;
}

void sub_23CBFD180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CBFD194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
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

uint64_t std::__split_buffer<std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>>::~__split_buffer(uint64_t a1)
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

void *std::__function::__value_func<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBFD670(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

char *std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<operations_research::sat::IntegerLiteral const*,operations_research::sat::IntegerLiteral const*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v6 = __src;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 <= (v7 - v8) >> 4)
  {
    v13 = v8 - __dst;
    v14 = (v8 - __dst) >> 4;
    if (v14 >= a5)
    {
      v13 = 16 * a5;
      v24 = &__dst[16 * a5];
      v25 = &v8[-a5];
      for (i = *(a1 + 8); v25 < v8; ++i)
      {
        v27 = *v25++;
        *i = v27;
      }

      *(a1 + 8) = i;
      if (v8 != v24)
      {
        v28 = v8 - v24;
        v29 = a5;
        memmove(&__dst[16 * a5], __dst, v28);
        a5 = v29;
      }

      if ((a5 & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        return __dst;
      }
    }

    else
    {
      v15 = &__src[v13];
      v16 = *(a1 + 8);
      for (j = v16; v15 != a4; v16 += 16)
      {
        v18 = *v15;
        v15 += 16;
        *j = v18;
        j += 16;
      }

      *(a1 + 8) = v16;
      if (v14 < 1)
      {
        return __dst;
      }

      v19 = &__dst[16 * a5];
      v20 = &v16[-16 * a5];
      for (k = v16; v20 < v8; k += 16)
      {
        v22 = *v20++;
        *k = v22;
      }

      *(a1 + 8) = k;
      if (j != v19)
      {
        memmove(&__dst[16 * a5], __dst, v16 - v19);
      }

      if (v8 == __dst)
      {
        return __dst;
      }
    }

    memmove(__dst, v6, v13);
    return __dst;
  }

  v9 = *a1;
  v10 = a5 + ((v8 - *a1) >> 4);
  if (v10 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v7 - v9;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v30 = 16 * ((__dst - v9) >> 4);
  v31 = v30;
  if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = 16 * a5;
    v33 = v30;
    v31 = (v30 + 16 * a5);
    do
    {
      v34 = *v6++;
      *v33++ = v34;
      v32 -= 16;
    }

    while (v32);
  }

  v35 = *(a1 + 8) - __dst;
  memcpy(v31, __dst, v35);
  v37 = &v31[v35];
  *(a1 + 8) = __dst;
  v38 = *a1;
  v39 = &__dst[-*a1];
  v40 = v30 - v39;
  memcpy((v30 - v39), *a1, v39);
  *a1 = v40;
  *(a1 + 8) = v37;
  *(a1 + 16) = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

void *operations_research::RevRepository<int>::~RevRepository(void *a1)
{
  *a1 = &unk_284F42178;
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

void operations_research::sat::RevIntRepository::~RevIntRepository(operations_research::sat::RevIntRepository *this)
{
  *this = &unk_284F42178;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::RevRepository<int>::SetLevel(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  if ((v3 >> 2) != a2)
  {
    ++*(a1 + 8);
    v4 = a2;
    if ((v3 >> 2) <= a2)
    {
      __x = (*(a1 + 48) - *(a1 + 40)) >> 4;
      v10 = v3 >> 2;
      v11 = a2 - v10;
      if (v4 <= v10)
      {
        if (v4 < v10)
        {
          *(a1 + 24) = v2 + 4 * v4;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 16), v11, &__x);
      }
    }

    else
    {
      v5 = (v2 + 4 * a2);
      v6 = *v5;
      v7 = v3 >> 2;
      v8 = a2 - v7;
      if (v4 <= v7)
      {
        if (v4 < v7)
        {
          *(a1 + 24) = v5;
        }
      }

      else
      {
        v9 = a1;
        std::vector<int>::__append((a1 + 16), v8);
        a1 = v9;
      }

      v12 = *(a1 + 40);
      v13 = (*(a1 + 48) - v12) >> 4;
      for (i = v13 - 1; i >= v6; --i)
      {
        **(v12 + 16 * i) = *(v12 + 16 * i + 8);
      }

      if (v6 <= v13)
      {
        if (v6 < v13)
        {
          *(a1 + 48) = v12 + 16 * v6;
        }
      }

      else
      {
        v15 = a1 + 40;

        std::vector<std::pair<int *,int>>::__append(v15, v6 - v13);
      }
    }
  }
}

void std::vector<std::pair<int *,int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4 + 16 * a2;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v16 = v4 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
      v17 = v4 + 16;
      v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 16) = 0;
        *v17 = 0;
        *(v17 - 8) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 -= 2;
      }

      while (v18);
      v4 = v16;
      if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v4 = 0;
          *(v4 + 8) = 0;
          v4 += 16;
        }

        while (v4 != v14);
      }

      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v19 + 16 * a2;
      v10 = 16 * v5;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = v19 + 16 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v12 = v19 + 16;
      v13 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 16) = 0;
        *v12 = 0;
        *(v12 - 8) = 0;
        *(v12 + 8) = 0;
        v12 += 32;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = 0;
          *(v10 + 8) = 0;
          v10 += 16;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 16 * v5;
    }

    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v19 - v21;
    memcpy((v19 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::RevIntRepository>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F421A0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::RevIntRepository>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F421A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<std::deque<int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    v10 = 48 * a2;
    if (48 * a2)
    {
      bzero(*(a1 + 8), 48 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 48 * v5;
    v12 = 48 * a2;
    if (48 * a2)
    {
      bzero(v11, v12);
      v9 = v11 + v12;
    }

    else
    {
      v9 = v11;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = (v11 - v14);
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::LinearConstraintPropagator<true>::Shared>();
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<true>::Shared>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::LinearConstraintPropagator<true>::LinearConstraintPropagator(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 8);
  *a1 = &unk_284F421D8;
  *(a1 + 8) = v5;
  *(a1 + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<true>::Shared>(a3);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 48) = v6;
  operator new[]();
}

void sub_23CBFE410(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
    v4 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x23EED9440](v4, 0x1000C8052888210);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearConstraintPropagator<true>::Propagate(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = -1;
    while (1)
    {
      v6 = *v2;
      v7 = v6 ^ 1;
      v8 = *(*(**(a1 + 16) + 8) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v8 >> (v7 & 0x3F ^ 1u)))
      {
        goto LABEL_61;
      }

      if ((v8 & (1 << (v7 & 0x3F))) == 0)
      {
        v5 = v7;
        ++v4;
      }

      if (++v2 == v3)
      {
        if (v4 > 1)
        {
          goto LABEL_61;
        }

        v9 = v5 ^ 1;
        v10 = *(a1 + 44);
        v11 = *(a1 + 40);
        if (v11 < v10)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }
  }

  v4 = 0;
  v9 = -2;
  v10 = *(a1 + 44);
  v11 = *(a1 + 40);
  if (v11 >= v10)
  {
LABEL_9:
    v12 = 0;
    v13 = 0;
    v14 = *(a1 + 16);
    goto LABEL_18;
  }

LABEL_11:
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v14 = *(a1 + 16);
  v17 = *(*(v14 + 8) + 40);
  v18 = v10 - v11;
  if (v18 <= 1)
  {
    v12 = 0;
    v13 = 0;
    v19 = v11;
LABEL_16:
    v35 = (v16 + 4 * v19);
    v36 = v10 - v19;
    v37 = (v15 + 8 * v19);
    do
    {
      v39 = *v37++;
      v38 = v39;
      LODWORD(v39) = *v35++;
      v40 = *(v17 + 8 * v39);
      v41 = (v40 * v38) >> 64;
      v42 = v40 * v38;
      v33 = __CFADD__(v42, v12);
      v12 += v42;
      v13 += v33 + v41;
      --v36;
    }

    while (v36);
    goto LABEL_18;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) + v11;
  v24 = (v15 + 8 * v11 + 8);
  v25 = (v16 + 4 * v11);
  v26 = v18 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v27 = *(v24 - 1);
    v28 = *v25++;
    v29 = vshrq_n_s64(vshll_n_s32(v28, 0x20uLL), 0x1DuLL);
    v30 = *(v17 + v29.i64[0]);
    v31 = (v30 * v27) >> 64;
    v32 = v30 * v27;
    v33 = __CFADD__(v32, v20);
    v20 += v32;
    v21 += v33 + v31;
    v34 = *(v17 + v29.i64[1]) * *v24 + v22;
    v23 = (*(v17 + v29.i64[1]) * *v24 + __PAIR128__(v23, v22)) >> 64;
    v22 = v34;
    v24 += 2;
    v26 -= 2;
  }

  while (v26);
  v33 = __CFADD__(v34, v20);
  v12 = v34 + v20;
  v13 = v21 + v33 + v23;
  if (v18 != (v18 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_16;
  }

LABEL_18:
  *(*(v14 + 16) + 112) = (v10 - v11) * 0.000000005 + *(*(v14 + 16) + 112);
  v43 = *(a1 + 8) - __PAIR128__(v13, v12);
  if ((*(&v43 + 1) & 0x8000000000000000) != 0)
  {
    if (v43 <= 0x8000000000000002)
    {
      v57 = 0x8000000000000002;
    }

    else
    {
      v57 = *(a1 + 8) - v12;
    }

    if (*(&v43 + 1) == -1)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0x8000000000000002;
    }

    *(v14 + 48) = *(v14 + 40);
    v59 = *(v14 + 64);
    *(v14 + 72) = v59;
    if (v10 < 1)
    {
      v69 = v59;
    }

    else
    {
      v60 = 0;
      for (i = 0; i < v10; ++i)
      {
        v62 = *(*(a1 + 48) + 4 * i);
        v63 = *(a1 + 16);
        v64 = *(v63 + 8);
        v65 = *(*(v64 + 64) + 4 * v62);
        v67 = v64 + 40;
        v66 = *(v64 + 40);
        if (v65 >= (*(v67 + 8) - v66) >> 3)
        {
          v68 = *(v66 + 8 * v62);
          *&v82 = *(*(a1 + 48) + 4 * i);
          *(&v82 + 1) = v68;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v63 + 40, &v82);
          std::vector<long long>::push_back[abi:ne200100](*(a1 + 16) + 64, (*(a1 + 56) + v60));
          v10 = *(a1 + 44);
        }

        v60 += 8;
      }

      v14 = *(a1 + 16);
      v69 = *(v14 + 64);
      v59 = *(v14 + 72);
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(*(v14 + 8), ~v58, v69, (v59 - v69) >> 3, (v14 + 40));
    if (v4 == 1)
    {
      v71 = *(a1 + 72);
      v70 = *(a1 + 80);
      v72 = v70 - v71;
      if (v70 != v71)
      {
        if ((v72 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (4 != v72)
      {
        memmove((v71 - v70), (4 - (v70 - v71)), v70 - v71 - 4);
      }

      operations_research::sat::IntegerTrail::EnqueueLiteral(*(*(a1 + 16) + 8), v9, v72, (-v72 - 4) >> 2, *(*(a1 + 16) + 40), (*(*(a1 + 16) + 48) - *(*(a1 + 16) + 40)) >> 4);
LABEL_61:
      result = 1;
      goto LABEL_62;
    }

    v73 = *(a1 + 16);
    v74 = v73[1];
    v75 = *(a1 + 72);
    v76 = *(a1 + 80);
    v77 = v73[5];
    v78 = v73[6];
    v79 = *(v74 + 840);
    *(v79 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v79 + 72), v75, v76, (v76 - v75) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v74, v77, (v78 - v77) >> 4, (v79 + 72));
LABEL_57:
    result = 0;
  }

  else
  {
    result = 1;
    if (v4 != 1 && v11 < v10)
    {
      while (1)
      {
        v45 = *(*(a1 + 56) + 8 * v11);
        v46 = *(*(a1 + 16) + 8);
        v47 = *(v46 + 40);
        v81 = *(*(a1 + 48) + 4 * v11);
        v48 = 8 * v81;
        v49 = *(v47 + v48);
        v50 = __divti3();
        if ((__PAIR128__(v51, v50) + v49) < -*(v47 + (v48 ^ 8)))
        {
          v52 = v49 + v50;
          if (v50 == -1)
          {
            v53 = v51 + 1;
          }

          else
          {
            v53 = v51;
          }

          v54 = (v50 + 1) * v45 + ~v43;
          if ((__PAIR128__(v53, v50 + 1) * v45 + ~v43) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v54 = 0x7FFFFFFFFFFFFFFELL;
          }

          v83[0] = &unk_284F424A8;
          v83[1] = a1;
          if (v52 >= 0x8000000000000002)
          {
            v55 = -v52;
          }

          else
          {
            v55 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v83[2] = v54;
          v84 = v83;
          v56 = operations_research::sat::IntegerTrail::Enqueue(v46, v81 ^ 1, v55, v83);
          if (v84 == v83)
          {
            (*(*v84 + 32))(v84);
            if (!v56)
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v84)
            {
              (*(*v84 + 40))();
            }

            if (!v56)
            {
              goto LABEL_57;
            }
          }

          v10 = *(a1 + 44);
        }

        if (++v11 >= v10)
        {
          goto LABEL_61;
        }
      }
    }
  }

LABEL_62:
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBFEAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearConstraintPropagator<true>::PropagateAtLevelZero(uint64_t a1)
{
  if (*(a1 + 72) != *(a1 + 80))
  {
    return 1;
  }

  v3 = *(a1 + 44);
  if (v3 <= 0)
  {
    v9 = 0;
    v10 = 0;
    v6 = *(a1 + 16);
    goto LABEL_12;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 16);
  v7 = *(*(v6 + 8) + 152);
  if (v3 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_10:
    v26 = (v5 + 8 * v8);
    v27 = v3 - v8;
    v28 = (v4 + 4 * v8);
    do
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *v26++;
      v32 = *(v7 + 24 * v29);
      v33 = (v32 * v31) >> 64;
      v34 = v32 * v31;
      v25 = __CFADD__(v34, v9);
      v9 += v34;
      v10 += v25 + v33;
      --v27;
    }

    while (v27);
    goto LABEL_12;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = v3 & 0x7FFFFFFE;
  v15 = (v4 + 4);
  v16 = (v5 + 8);
  v17 = v8;
  do
  {
    v18 = *(v7 + 24 * *(v15 - 1));
    v19 = *(v7 + 24 * *v15);
    v20 = *(v16 - 1);
    v21 = (v18 * v20) >> 64;
    v22 = v18 * v20;
    v23 = (v19 * *v16) >> 64;
    v24 = v19 * *v16;
    v25 = __CFADD__(v22, v11);
    v11 += v22;
    v12 += v25 + v21;
    v25 = __CFADD__(v24, v13);
    v13 += v24;
    v14 += v25 + v23;
    v15 += 2;
    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  v25 = __CFADD__(v13, v11);
  v9 = v13 + v11;
  v10 = v12 + v25 + v14;
  if (v8 != v3)
  {
    goto LABEL_10;
  }

LABEL_12:
  *(*(v6 + 16) + 112) = v3 * 0.000000001 + *(*(v6 + 16) + 112);
  if ((((*(a1 + 8) - __PAIR128__(v10, v9)) >> 64) & 0x8000000000000000) != 0)
  {
    v45 = *(v6 + 8);
    v46 = *(v45 + 840);
    *(v46 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v46 + 72), 0, 0, 0);
    operations_research::sat::IntegerTrail::MergeReasonInto(v45, 0, 0, (v46 + 72));
    return 0;
  }

  else
  {
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v36 = *(*(a1 + 48) + 4 * i);
        v37 = *(*(a1 + 56) + 8 * i);
        v38 = *(*(a1 + 16) + 8);
        v39 = *(v38 + 152);
        v40 = *(v39 + 24 * v36);
        v41 = -*(v39 + 24 * (v36 ^ 1));
        v42 = __divti3();
        if ((__PAIR128__(v43, v42) + v40) < v41)
        {
          if (v40 + v42 >= 0x8000000000000002)
          {
            v44 = -(v40 + v42);
          }

          else
          {
            v44 = 0x7FFFFFFFFFFFFFFFLL;
          }

          result = operations_research::sat::IntegerTrail::Enqueue(v38, v36 ^ 1, v44, 0, 0, 0, 0);
          if (!result)
          {
            return result;
          }

          LODWORD(v3) = *(a1 + 44);
        }
      }
    }

    return 1;
  }
}

unint64_t operations_research::sat::LinearConstraintPropagator<true>::ConditionalLb(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  result = 0x8000000000000002;
  v6 = a2 & 0xFFFFFFFE;
  if (v6 == (a4 & 0xFFFFFFFE))
  {
    if (a2 != a4)
    {
      return 1 - a3;
    }
  }

  else
  {
    v7 = *(a1 + 44);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        v10 |= (a4 ^ v15) == 1;
        v18 = *(*(*(*(a1 + 16) + 8) + 40) + 8 * v15);
        v19 = (v18 * v17) >> 64;
        v20 = v18 * v17;
        v21 = __CFADD__(v20, v11);
        v11 += v20;
        v12 += v21 + v19;
        v22 = v15 & 0xFFFFFFFE;
        v23 = v15 == a2;
        v24 = v6 == v22;
        v25 = v6 == v22;
        if (v24)
        {
          v9 = v23;
        }

        v8 |= v25;
        --v7;
      }

      while (v7);
      if (v8 & v10)
      {
        v26 = *(a1 + 8) - __PAIR128__(v12, v11);
        v27 = *(*(*(a1 + 16) + 8) + 40);
        v28 = 8 * a4;
        result = -*(v27 + (v28 ^ 8));
        if (v26 < 1)
        {
          v37 = -*(v27 + (v28 ^ 8));
        }

        else
        {
          v42 = -*(v27 + (v28 ^ 8));
          v30 = result - *(v27 + 8 * a4);
          v32 = __divti3();
          if (__PAIR128__(v33, v32) >= v30)
          {
            v34 = v30;
          }

          else
          {
            v34 = v32;
          }

          v41 = v34;
          if (v9)
          {
            __divti3();
            v35 = v42;
            v36 = v41;
          }

          else
          {
            v38 = 1 - (a3 + *(v27 + ((8 * a2) ^ 8)));
            v39 = __divti3();
            if (__PAIR128__(v40, v39) >= v30)
            {
              v36 = v30;
            }

            else
            {
              v36 = v39;
            }

            v35 = v42;
          }

          return v35 - v36;
        }
      }
    }
  }

  return result;
}