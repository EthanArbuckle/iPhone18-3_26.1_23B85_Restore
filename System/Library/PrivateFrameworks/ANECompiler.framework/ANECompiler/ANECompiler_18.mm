void operations_research::sat::SccGraph::~SccGraph(operations_research::sat::SccGraph *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

uint64_t operations_research::sat::BinaryImplicationGraph::ComputeTransitiveReduction(operations_research::sat::BinaryImplicationGraph *this, int a2)
{
  result = operations_research::sat::BinaryImplicationGraph::DetectEquivalences(this, 0);
  if (!result)
  {
    return result;
  }

  v5 = *(this + 17);
  if (!*(this + 28) && *(this + 35) == *(this + 36))
  {
    *(this + 9) = *(v5 + 12);
  }

  else
  {
    *(v5 + 8) = *(v5 + 8) & 0xFFFFFFF | (*(this + 8) << 28);
    while (1)
    {
      v6 = *(this + 9);
      if (v6 >= *(v5 + 12))
      {
        break;
      }

      *(this + 9) = v6 + 1;
      if ((operations_research::sat::BinaryImplicationGraph::PropagateOnTrue(this, *(*(v5 + 48) + 4 * v6), v5) & 1) == 0)
      {
        return 0;
      }
    }
  }

  IsEnabled1 = operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(this);
  if (dword_2810BD548 >= 1)
  {
    IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::BinaryImplicationGraph::ComputeTransitiveReduction(BOOL)::$_0::operator() const(void)::site, dword_2810BD548);
    v8 = IsEnabled1;
  }

  else
  {
    v8 = 0;
  }

  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(IsEnabled1);
  v9 = (this + 608);
  *(this + 77) = *(this + 76);
  *(this + 72) = 0;
  v10 = *(this + 80);
  v11 = *(this + 81);
  v128 = (*(this + 26) - *(this + 25)) >> 5;
  if (v10 == v11)
  {
    v60 = 0.0;
    v59 = 0;
    goto LABEL_83;
  }

  v121 = v8;
  v122 = a2;
  v124 = 0;
  v125 = 0.0;
  v126 = *(this + 81);
  v12 = 0;
  v13 = -1;
  while (2)
  {
    v14 = *v10;
    v15 = 1 << v14;
    if (((1 << v14) & *(*(this + 84) + 8 * (v14 >> 6))) != 0)
    {
      goto LABEL_14;
    }

    if ((*(*(*(this + 17) + 24) + 8 * (v14 >> 6)) & (3 << (v14 & 0x3E))) != 0)
    {
      goto LABEL_14;
    }

    v129 = 32 * v14;
    v16 = (*(this + 25) + v129);
    v17 = *v16;
    if (*v16 < 2uLL)
    {
      goto LABEL_14;
    }

    v127 = 3 << (v14 & 0x3E);
    v130 = (*(this + 25) + v129);
    v18 = (v16 + 1);
    v19 = (v16 + 1);
    if (v17)
    {
      v19 = *v18;
    }

    v131 = v14 >> 6;
    if ((v17 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v20 = 4 * (v17 >> 1);
      while (*v19 != v13)
      {
        ++v19;
        v20 -= 4;
        if (!v20)
        {
          goto LABEL_24;
        }
      }

      *(*(this + 56) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v13);
      v123 = v14;
      v21 = (v16 + 1);
      if ((v17 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_24:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 440, v128);
    v12 = 0;
    v17 = *v130;
    v123 = v14;
    v21 = v18;
    if (*v130)
    {
LABEL_25:
      v21 = *v18;
    }

LABEL_26:
    v132 = v18;
    if ((v17 & 0x7FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_40;
    }

    v22 = 4 * (v17 >> 1);
    while (1)
    {
      v23 = *v21;
      v24 = v23 >> 6;
      v25 = 1 << v23;
      if (((1 << v23) & *(*(this + 84) + 8 * (v23 >> 6))) != 0)
      {
        goto LABEL_28;
      }

      v26 = *(this + 56);
      v27 = *(v26 + 8 * v24);
      if (v23 == v14 || (v27 & v25) != 0)
      {
        goto LABEL_28;
      }

      if ((v23 ^ v14) == 1)
      {
        break;
      }

      operations_research::sat::BinaryImplicationGraph::MarkDescendants(this, v23);
      *(*(this + 56) + 8 * v24) &= ~v25;
LABEL_28:
      ++v21;
      v22 -= 4;
      if (!v22)
      {
        goto LABEL_40;
      }
    }

    LODWORD(v136) = *v21;
    *(v26 + 8 * v24) = v27 | v25;
    std::vector<int>::push_back[abi:ne200100](this + 472, &v136);
LABEL_40:
    LODWORD(v136) = v14;
    v29 = *(this + 56);
    v30 = *(v29 + 8 * v131);
    if ((v30 & v15) != 0)
    {
      v31 = *(this + 35);
      if (v14 >= ((*(this + 36) - v31) >> 5))
      {
        goto LABEL_56;
      }
    }

    else
    {
      *(v29 + 8 * v131) = v30 | v15;
      std::vector<int>::push_back[abi:ne200100](this + 472, &v136);
      v31 = *(this + 35);
      if (v14 >= ((*(this + 36) - v31) >> 5))
      {
        goto LABEL_56;
      }
    }

    v33 = (v31 + v129 + 8);
    v32 = *(v31 + 32 * v14);
    if (v32)
    {
      v33 = *v33;
    }

    if ((v32 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v34 = &v33[v32 >> 1];
      do
      {
        v35 = *v33;
        v36 = *(this + 38);
        v37 = *(v36 + 4 * v35);
        if (v37)
        {
          v38 = (v36 + 4 * (v35 + 1));
          v39 = 4 * v37;
          do
          {
            v40 = *v38;
            if (*v38 != v14)
            {
              v41 = v40 ^ 1;
              v42 = v40 >> 6;
              v43 = *(this + 56);
              v44 = *(v43 + 8 * v42);
              v45 = 1 << v41;
              if ((v44 & (1 << v41)) == 0 && (*(*(this + 84) + 8 * v42) & v45) == 0)
              {
                LODWORD(v136) = v41;
                *(v43 + 8 * v42) = v44 | v45;
                std::vector<int>::push_back[abi:ne200100](this + 472, &v136);
                operations_research::sat::BinaryImplicationGraph::MarkDescendants(this, v41);
              }
            }

            ++v38;
            v39 -= 4;
          }

          while (v39);
        }

        ++v33;
      }

      while (v33 != v34);
    }

LABEL_56:
    v46 = *(this + 59);
    v47 = (*(this + 60) - v46) >> 2;
    v48 = v12;
    if (v47 <= v12)
    {
      v9 = (this + 608);
      v11 = v126;
      v50 = v130;
      v49 = v14 >> 6;
LABEL_62:
      if ((*(*(*(this + 17) + 24) + 8 * v49) & v127) != 0)
      {
        goto LABEL_13;
      }

LABEL_63:
      v51 = *v50;
      v52 = v132;
      if (*v50)
      {
        v52 = *v132;
      }

      v53 = v51 >> 1;
      if ((v51 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v54 = 0;
        v55 = 4 * v53;
        do
        {
          while (1)
          {
            v56 = *v52;
            if (((*(*(this + 56) + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              break;
            }

            *&v136 = __PAIR64__(v56, v14);
            std::vector<long long>::push_back[abi:ne200100](v9, &v136);
            ++v52;
            v55 -= 4;
            if (!v55)
            {
              goto LABEL_72;
            }
          }

          v57 = v132;
          if (*v50)
          {
            v57 = *v132;
          }

          v57[v54++] = v56;
          ++v52;
          v55 -= 4;
        }

        while (v55);
LABEL_72:
        v53 = *v50 >> 1;
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v50, v54);
        if ((*v50 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v54 = 0;
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v50, 0);
        if ((*v50 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::ShrinkToFit(v50);
LABEL_74:
      v58 = v53 - v54;
      *&v125 += v58;
      *(this + 28) -= v58;
      if (*(this + 72) <= 100000000)
      {
        v13 = v14;
        v11 = v126;
        goto LABEL_14;
      }

      operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 440, v128);
      v136 = xmmword_23CE306D0;
      v72 = *(this + 76);
      v73 = *(this + 77);
      while (v72 != v73)
      {
        v135 = *v72;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>(&v136, &v135, v133);
        if (v134 == 1)
        {
          **&v133[1] = v135;
        }

        ++v72;
      }

      v74 = *(this + 25);
      if (((*(this + 26) - v74) >> 5) < 1)
      {
LABEL_152:
        if (v136 >= 2)
        {
          operator delete((v137 - (BYTE8(v136) & 1) - 8));
        }

        v61 = " Aborted.";
        v8 = v121;
        a2 = v122;
        v59 = v124;
        v60 = v125;
        if (v124 >= 1)
        {
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      v75 = 0;
      while (1)
      {
        v76 = (v74 + 32 * v75);
        v77 = (v76 + 1);
        v78 = *v76;
        v79 = v76 + 1;
        if (*v76)
        {
          v79 = *v77;
        }

        if ((v78 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v80 = v75 ^ 1;
          v81 = v78 >> 1;
          v82 = (v79 + 4 * (v78 >> 1));
          v83 = v136;
          if (v136 >= 2)
          {
            LODWORD(v86) = 0;
            do
            {
              v97 = 0;
              v100 = *v79;
              _X1 = v137;
              __asm { PRFM            #4, [X1] }

              v106 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v100 ^ 1)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + (v100 ^ 1)))) + v80;
              v107 = ((v106 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v106);
              v98 = (v107 >> 7) ^ (v137 >> 12);
              v108 = vdup_n_s8(v107 & 0x7F);
              while (1)
              {
                v90 = v98 & v83;
                v91 = *(v137 + v90);
                v92 = vceq_s8(v91, v108);
                if (v92)
                {
                  break;
                }

LABEL_124:
                if (vceq_s8(v91, 0x8080808080808080))
                {
                  v99 = v76 + 1;
                  if (v78)
                  {
                    v99 = *v77;
                  }

                  *(v99 + v86) = v100;
                  LODWORD(v86) = v86 + 1;
                  goto LABEL_129;
                }

                v97 += 8;
                v98 = v97 + v90;
              }

              while (1)
              {
                v93 = (v138 + 8 * ((v90 + (__clz(__rbit64(v92)) >> 3)) & v83));
                v95 = *v93;
                v94 = v93[1];
                if (v95 == (v100 ^ 1) && v94 == v80)
                {
                  break;
                }

                v92 &= ((v92 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v92)
                {
                  goto LABEL_124;
                }
              }

LABEL_129:
              v79 = (v79 + 4);
            }

            while (v79 != v82);
            goto LABEL_115;
          }

          if (*(&v136 + 1) > 1uLL)
          {
            LODWORD(v86) = 0;
            v109 = 4 * v81;
            if (v78)
            {
              do
              {
                if ((*v79 ^ v137) != 1 || HIDWORD(v137) != v80)
                {
                  *(*v77 + v86) = *v79;
                  LODWORD(v86) = v86 + 1;
                }

                v79 = (v79 + 4);
                v109 -= 4;
              }

              while (v109);
            }

            else
            {
              do
              {
                if ((*v79 ^ v137) != 1 || HIDWORD(v137) != v80)
                {
                  *(v77 + v86) = *v79;
                  LODWORD(v86) = v86 + 1;
                }

                v79 = (v79 + 4);
                v109 -= 4;
              }

              while (v109);
            }

            goto LABEL_115;
          }

          if (v78)
          {
            v86 = 0;
            v112 = 4 * v81;
            do
            {
              *(*v77 + v86) = *(v79 + v86);
              ++v86;
              v112 -= 4;
            }

            while (v112);
            goto LABEL_115;
          }

          v84 = (v81 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v84 >= 0xB && ((v81 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFF80000000) == 0;
          if (v85 && ((32 * v75) | 8) + v74 - v79 >= 0x20)
          {
            v113 = 0;
            v114 = v84 + 1;
            v115 = (v84 + 1) & 0xFFFFFFF8;
            v87 = (v79 + 4 * v115);
            LODWORD(v86) = v115;
            v116 = (v79 + 2);
            v117 = v115;
            do
            {
              v118 = *v116;
              v119 = (v77 + (v113 >> 30));
              *v119 = *(v116 - 1);
              v119[1] = v118;
              v113 += 0x800000000;
              v116 += 2;
              v117 -= 8;
            }

            while (v117);
            if (v114 == v115)
            {
              goto LABEL_115;
            }
          }

          else
          {
            LODWORD(v86) = 0;
            v87 = v79;
          }

          v88 = v86;
          do
          {
            v89 = *v87;
            v87 = (v87 + 4);
            LODWORD(v86) = v88 + 1;
            *(v77 + v88++) = v89;
          }

          while (v87 != v82);
        }

        else
        {
          LODWORD(v86) = 0;
        }

LABEL_115:
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v76, v86);
        ++v75;
        v74 = *(this + 25);
        if (v75 >= ((*(this + 26) - v74) >> 5))
        {
          goto LABEL_152;
        }
      }
    }

    v9 = (this + 608);
    v11 = v126;
    v50 = v130;
    v49 = v14 >> 6;
    while (((*(*(this + 56) + ((*(v46 + 4 * v48) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(v46 + 4 * v48) & 0x3F ^ 1u)) & 1) == 0)
    {
      v48 = ++v12;
      if (v47 <= v12)
      {
        goto LABEL_62;
      }
    }

    if (!operations_research::sat::BinaryImplicationGraph::FixLiteral(this, v123 ^ 1))
    {
      return 0;
    }

    ++v124;
    if ((*(*(*(this + 17) + 24) + 8 * v131) & v127) == 0)
    {
      goto LABEL_63;
    }

LABEL_13:
    v13 = v14;
LABEL_14:
    if (++v10 != v11)
    {
      continue;
    }

    break;
  }

  v8 = v121;
  v59 = v124;
  v60 = v125;
LABEL_83:
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 440, v128);
  v61 = &byte_23CE7F131;
  if (v59 >= 1)
  {
LABEL_84:
    operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(this);
  }

LABEL_85:
  v62 = v8 | a2;
  v63 = *v9;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  if (v63)
  {
    operator delete(v63);
  }

  v64 = *(this + 72) * 0.00000001;
  *(*(this + 15) + 112) = *(*(this + 15) + 112) + v64;
  *(this + 53) += *&v60;
  if (v62)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v136, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.cc", 1623);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v136, "Transitive reduction removed ", 0x1DuLL);
    v133[0] = v60;
    v65 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(&v136, v133);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v65, " literals. ", 0xBuLL);
    *&v133[0] = v59;
    v66 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v65, v133);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, " fixed. ", 8uLL);
    v133[0] = *(this + 28);
    v67 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v66, v133);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v67, " implications left. ", 0x14uLL);
    *&v133[0] = (*(this + 26) - *(this + 25)) >> 5;
    v68 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v67, v133);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v68, " literals.", 0xAuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v68, " dtime: ", 8uLL);
    v133[0] = v64;
    v69 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v68, v133);
    v70 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v69, " wtime: ", 8uLL);
    v133[0] = (absl::lts_20240722::GetCurrentTimeNanos(v70) - CurrentTimeNanos) * 0.000000001;
    v71 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v69, v133);
    v135 = v61;
    absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v71, &v135);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v136);
  }

  return 1;
}

void sub_23C9EBE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a27 >= 2)
  {
    operator delete((a29 - (a28 & 1) - 8));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(operations_research::sat::BinaryImplicationGraph *a1, uint64_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a2;
  result = operations_research::sat::BinaryImplicationGraph::DetectEquivalences(a1, 0);
  if (result)
  {
    *(a1 + 72) = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v17[3] = v28;
    *v18 = 0u;
    v19 = 0u;
    *v22 = 0u;
    *v23 = 0u;
    v24 = 0u;
    *v25 = 0u;
    *v26 = 0u;
    v27 = 0u;
    v20 = 0;
    v21 = 1000000000;
    *&v16 = v17;
    v6 = *(a1 + 25);
    v5 = *(a1 + 26);
    memset(v17, 0, 24);
    BYTE8(v16) = 0;
    v7 = v5 - v6;
    if (v7)
    {
      if ((v7 >> 5) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = a2[1];
    if (v8 != *a2)
    {
      if (!((0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3)) >> 61))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(0, 0, 0, 0, 0);
    v16 = xmmword_23CE306D0;
    v9 = *v34;
    v10 = v34[1];
    v14 = 0;
    v15 = 0;
    __p = 0;
    v11 = v10 - v9;
    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v35 = 0;
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C9ED2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v33 - 128));
  if (__p)
  {
    operator delete(__p);
    if (a25 < 2)
    {
LABEL_3:
      if (!a15)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (a25 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a27 - (a26 & 1) - 8));
  if (!a15)
  {
LABEL_4:
    std::vector<std::vector<int>>::~vector[abi:ne200100](&a30);
    v35 = a16;
    if (!a16)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a15);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a30);
  v35 = a16;
  if (!a16)
  {
LABEL_5:
    operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a33);
    operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(v33 - 256);
    v36 = *(v33 - 176);
    if (!v36)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(&a33);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(v33 - 256);
  v36 = *(v33 - 176);
  if (!v36)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v33 - 168) = v36;
  operator delete(v36);
  _Unwind_Resume(a1);
}

void operations_research::sat::BinaryImplicationGraph::ExpandAtMostOne(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((a1 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23C9ED73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::DetectInclusions(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 2) < 2 || !*(a1 + 32) || !*(a1 + 36))
  {
    return;
  }

  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  if (v2 - v3 < 1537)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = MEMORY[0x277D826F0];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 2);
    while (1)
    {
      v7 = operator new(12 * v6, v5);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    v8 = v6;
  }

LABEL_11:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(v3, v2, &v108, 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 2), v7, v8);
  if (v7)
  {
    operator delete(v7);
  }

  v10 = *(a1 + 8);
  v105 = *(a1 + 16);
  if (v10 == v105)
  {
LABEL_90:
    *(a1 + 56) = 1;
    *(a1 + 72) = *(a1 + 64);
    v88 = *(a1 + 88);
    v87 = *(a1 + 96);
    if (v87 != v88)
    {
      v89 = *(a1 + 96);
      do
      {
        v91 = *(v89 - 24);
        v89 -= 24;
        v90 = v91;
        if (v91)
        {
          *(v87 - 16) = v90;
          operator delete(v90);
        }

        v87 = v89;
      }

      while (v89 != v88);
    }

    *(a1 + 96) = v88;
    goto LABEL_112;
  }

  v11.i64[0] = 0x3F0000003FLL;
  v11.i64[1] = 0x3F0000003FLL;
  while (1)
  {
    v12 = *v10;
    v13 = *(*(*a1 + 24) + 4 * v12);
    if (v13)
    {
      v14 = (*(*a1 + 48) + 4 * *(**a1 + 4 * v12));
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v109 = (*(a1 + 72) - *(a1 + 64)) >> 3;
    v108 = 0;
    v15 = &v14[4 * v13];
    v104 = v13;
    if (!v13)
    {
      if (*(a1 + 144))
      {
        goto LABEL_39;
      }

      goto LABEL_30;
    }

    v16 = (v13 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v16 > 6)
    {
      v19 = v16 + 1;
      v20 = (v16 + 1) & 0x7FFFFFFFFFFFFFF8;
      v18 = &v14[4 * v20];
      v21 = (v14 + 16);
      v22 = 0uLL;
      v23 = v20;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      do
      {
        v29 = v21[-1];
        v22 = vmaxq_s32(v22, v29);
        v24 = vmaxq_s32(v24, *v21);
        v30 = vandq_s8(v29, v11);
        v31 = vandq_s8(*v21, v11);
        v32.i64[0] = v30.u32[2];
        v32.i64[1] = v30.u32[3];
        v33 = v32;
        v32.i64[0] = v30.u32[0];
        v32.i64[1] = v30.u32[1];
        v34 = v32;
        v32.i64[0] = v31.u32[2];
        v32.i64[1] = v31.u32[3];
        v35 = v32;
        v32.i64[0] = v31.u32[0];
        v32.i64[1] = v31.u32[1];
        v36 = vdupq_n_s64(1uLL);
        v26 = vorrq_s8(vshlq_u64(v36, v33), v26);
        v25 = vorrq_s8(vshlq_u64(v36, v34), v25);
        v28 = vorrq_s8(vshlq_u64(v36, v35), v28);
        v27 = vorrq_s8(vshlq_u64(v36, v32), v27);
        v21 += 2;
        v23 -= 8;
      }

      while (v23);
      LODWORD(v13) = vmaxvq_s32(vmaxq_s32(v22, v24));
      v37 = vorrq_s8(vorrq_s8(v27, v25), vorrq_s8(v28, v26));
      v17 = vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
      if (v19 == v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      LODWORD(v13) = 0;
      v17 = 0;
      v18 = v14;
    }

    do
    {
      v39 = *v18;
      v18 += 4;
      v38 = v39;
      if (v13 <= v39)
      {
        LODWORD(v13) = v38;
      }

      *&v17 |= 1 << v38;
    }

    while (v18 != v15);
LABEL_29:
    v108 = v17;
    if (*(a1 + 144) > v13)
    {
      goto LABEL_39;
    }

LABEL_30:
    v40 = v13 + 1;
    std::vector<BOOL>::resize(a1 + 136, v40, 0);
    v42 = *(a1 + 88);
    v41 = *(a1 + 96);
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v42) >> 3);
    if (v40 <= v43)
    {
      if (v40 < v43)
      {
        v44 = v42 + 24 * v40;
        if (v41 != v44)
        {
          v45 = *(a1 + 96);
          do
          {
            v47 = *(v45 - 24);
            v45 -= 24;
            v46 = v47;
            if (v47)
            {
              *(v41 - 16) = v46;
              operator delete(v46);
            }

            v41 = v45;
          }

          while (v45 != v44);
        }

        *(a1 + 96) = v44;
      }
    }

    else
    {
      std::vector<std::vector<int>>::__append(a1 + 88, v40 - v43);
    }

LABEL_39:
    std::vector<long long>::push_back[abi:ne200100]((a1 + 64), &v108);
    *(a1 + 58) = 0;
    v11.i64[0] = 0x3F0000003FLL;
    v11.i64[1] = 0x3F0000003FLL;
    if (v10[2] >= 1)
    {
      break;
    }

LABEL_71:
    v77 = *(a1 + 48);
    v78 = *(a1 + 40) + v10[1];
    *(a1 + 40) = v78;
    if (v78 <= v77)
    {
      if (v104)
      {
        v84 = 4 * v104;
        v85 = -1;
        do
        {
          if (v85 == -1 || *(*(a1 + 88) + 24 * *v14 + 8) - *(*(a1 + 88) + 24 * *v14) < *(*(a1 + 88) + 24 * v85 + 8) - *(*(a1 + 88) + 24 * v85))
          {
            v85 = *v14;
          }

          v14 += 4;
          v84 -= 4;
        }

        while (v84);
        v86 = v85;
      }

      else
      {
        v86 = -1;
      }

      std::vector<int>::push_back[abi:ne200100](*(a1 + 88) + 24 * v86, &v109);
      v11.i64[0] = 0x3F0000003FLL;
      v11.i64[1] = 0x3F0000003FLL;
    }

    else
    {
      *(a1 + 56) = 1;
      *(a1 + 72) = *(a1 + 64);
      v80 = *(a1 + 88);
      v79 = *(a1 + 96);
      if (v79 != v80)
      {
        v81 = *(a1 + 96);
        do
        {
          v83 = *(v81 - 24);
          v81 -= 24;
          v82 = v83;
          if (v83)
          {
            *(v79 - 16) = v82;
            operator delete(v82);
            v11.i64[0] = 0x3F0000003FLL;
            v11.i64[1] = 0x3F0000003FLL;
          }

          v79 = v81;
        }

        while (v81 != v80);
      }

      *(a1 + 96) = v80;
      *(a1 + 144) = 0;
    }

    if (v78 > v77)
    {
      return;
    }

LABEL_89:
    v10 += 3;
    if (v10 == v105)
    {
      goto LABEL_90;
    }
  }

  v48 = *(a1 + 48);
  v49 = *(a1 + 40) + 2 * v10[1];
  *(a1 + 40) = v49;
  if (v49 <= v48)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a1 + 112), v14, v15, (v15 - v14) >> 2);
    v50 = *(a1 + 112);
    v51 = *(a1 + 120);
    if (v50 == v51)
    {
      v11.i64[0] = 0x3F0000003FLL;
      v11.i64[1] = 0x3F0000003FLL;
    }

    else
    {
      v106 = v10;
      v52 = *(a1 + 136);
      v53 = *(a1 + 112);
      do
      {
        v54 = *v53++;
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      }

      while (v53 != v51);
      v55 = ~*(*(a1 + 72) - 8);
      v11.i64[0] = 0x3F0000003FLL;
      v11.i64[1] = 0x3F0000003FLL;
      do
      {
        v56 = *v50;
        v57 = *(a1 + 88);
        v58 = *(v57 + 24 * *v50);
        if (*(v57 + 24 * *v50 + 8) != v58)
        {
          v59 = 0;
          v60 = 0;
          do
          {
            v65 = *(v58 + 4 * v59);
            v66 = *(a1 + 64);
            if ((*(v66 + 8 * v65) & v55) == 0)
            {
              v67 = (*(a1 + 8) + 12 * v65);
              v68 = *(a1 + 48);
              v69 = *(a1 + 40) + v67[1];
              *(a1 + 40) = v69;
              if (v69 > v68)
              {
                *(a1 + 56) = 1;
                *(a1 + 72) = v66;
                v92 = *(a1 + 96);
                if (v92 != v57)
                {
                  v93 = *(a1 + 96);
                  do
                  {
                    v95 = *(v93 - 24);
                    v93 -= 24;
                    v94 = v95;
                    if (v95)
                    {
                      *(v92 - 16) = v94;
                      operator delete(v94);
                    }

                    v92 = v93;
                  }

                  while (v93 != v57);
                }

                goto LABEL_111;
              }

              v70 = *v67;
              v71 = *(*(*a1 + 24) + 4 * *v67);
              if (v71)
              {
                v72 = (*(*a1 + 48) + 4 * *(**a1 + 4 * v70));
                v73 = 4 * v71;
                while (((*(*(a1 + 136) + ((*v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v72) & 1) != 0)
                {
                  ++v72;
                  v73 -= 4;
                  if (!v73)
                  {
                    goto LABEL_55;
                  }
                }
              }

              else
              {
LABEL_55:
                *(a1 + 57) = 0;
                v110 = *v106;
                v111 = v70;
                v74 = *(a2 + 24);
                if (!v74)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                (*(*v74 + 48))(v74, &v111, &v110);
                v11.i64[0] = 0x3F0000003FLL;
                v11.i64[1] = 0x3F0000003FLL;
                if (*(a1 + 56))
                {
                  return;
                }

                if (*(a1 + 40) > *(a1 + 48))
                {
                  *(a1 + 56) = 1;
                  *(a1 + 72) = *(a1 + 64);
                  v57 = *(a1 + 88);
                  v96 = *(a1 + 96);
                  if (v96 != v57)
                  {
                    v97 = *(a1 + 96);
                    do
                    {
                      v99 = *(v97 - 24);
                      v97 -= 24;
                      v98 = v99;
                      if (v99)
                      {
                        *(v96 - 16) = v98;
                        operator delete(v98);
                      }

                      v96 = v97;
                    }

                    while (v97 != v57);
                  }

                  goto LABEL_111;
                }

                if (*(a1 + 57) == 1)
                {
                  v61 = (*(a1 + 88) + 24 * v56);
                  v62 = v61[1];
                  v63 = *(*v61 + 4 * v59);
                  v64 = *--v62;
                  *(*v61 + 4 * v59) = v64;
                  *v62 = v63;
                  v61[1] = v62;
                  --v60;
                  if (*(a1 + 58))
                  {
                    break;
                  }
                }

                else if (*(a1 + 58))
                {
                  break;
                }

                v57 = *(a1 + 88);
              }
            }

            v59 = ++v60;
            v58 = *(v57 + 24 * v56);
          }

          while (v60 < ((*(v57 + 24 * v56 + 8) - v58) >> 2));
        }

        ++v50;
      }

      while (v50 != v51 && (*(a1 + 58) & 1) == 0);
      v50 = *(a1 + 112);
      v51 = *(a1 + 120);
      v10 = v106;
    }

    if (v50 != v51)
    {
      v75 = *(a1 + 136);
      do
      {
        v76 = *v50++;
        *(v75 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v76);
      }

      while (v50 != v51);
    }

    if (v10[2] > 1 || (*(a1 + 58) & 1) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_71;
  }

  *(a1 + 56) = 1;
  *(a1 + 72) = *(a1 + 64);
  v57 = *(a1 + 88);
  v100 = *(a1 + 96);
  if (v100 != v57)
  {
    v101 = *(a1 + 96);
    do
    {
      v103 = *(v101 - 24);
      v101 -= 24;
      v102 = v103;
      if (v103)
      {
        *(v100 - 16) = v102;
        operator delete(v102);
      }

      v100 = v101;
    }

    while (v101 != v57);
  }

LABEL_111:
  *(a1 + 96) = v57;
LABEL_112:
  *(a1 + 144) = 0;
}

void sub_23C9EDF10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(int,int)>::~function(uint64_t a1)
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

void *operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::~InclusionDetector(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    v5 = a1[12];
    v6 = a1[11];
    if (v5 != v4)
    {
      v7 = a1[12];
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = a1[11];
    }

    a1[12] = v4;
    operator delete(v6);
  }

  v10 = a1[8];
  if (v10)
  {
    a1[9] = v10;
    operator delete(v10);
  }

  v11 = a1[1];
  if (v11)
  {
    a1[2] = v11;
    operator delete(v11);
  }

  return a1;
}

void *operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(void *a1, char **a2, double **a3, __n128 a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a1[26] - a1[25];
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (v6 << 27)
  {
    if (((v6 >> 5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  v11 = *a2;
  v48 = a2[1] - *a2;
  if ((v48 >> 2) >= 1)
  {
    v7 = v71;
    v8 = *a3;
    v9 = (v48 >> 2) & 0x7FFFFFFF;
    v10 = v9;
    do
    {
      v13 = *v11;
      v11 += 4;
      v12 = v13;
      v14 = v13 ^ 1;
      *&v7[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= (1 << v13) | (1 << (v13 ^ 1u));
      v15 = *v8++;
      *(8 * v12) = v15;
      *(8 * v14) = 1.0 - v15;
      --v10;
    }

    while (v10);
    v16 = 0;
    v17 = 0;
    a4 = xmmword_23CE3FF50;
    while (1)
    {
      v18 = *&(*a2)[4 * v16];
      if (((*(*(a1[17] + 24) + 8 * (v18 >> 6)) >> (v18 & 0x3E)) & 3) == 0 && ((*(a1[84] + 8 * (v18 >> 6)) >> v18) & 1) == 0)
      {
        a4.n128_f64[0] = (*a3)[v16];
        v19 = v18 ^ (a4.n128_f64[0] < 0.5);
        if (a4.n128_f64[0] >= 0.5)
        {
          v20 = (*a3)[v16];
        }

        else
        {
          v20 = 1.0 - a4.n128_f64[0];
        }

        v21 = (a1[25] + 32 * v19);
        v24 = *v21;
        v23 = (v21 + 1);
        v22 = v24;
        if (v24)
        {
          v23 = *v23;
        }

        if ((v22 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          break;
        }
      }

LABEL_8:
      if (++v16 == v9)
      {
        goto LABEL_56;
      }
    }

    v62 = v19;
    v63 = v17;
    v25 = &v23[v22 >> 1];
    v26 = 0.0;
    v27 = -1;
    while (1)
    {
      v30 = *v23;
      if ((*(v71 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = v30 ^ 1;
        a4.n128_u64[0] = *(v68 + (v30 ^ 1));
        v32 = v20 + a4.n128_f64[0];
        if (v20 + a4.n128_f64[0] > 1.01)
        {
          break;
        }
      }

LABEL_24:
      if (++v23 == v25)
      {
        if (v27 == -1)
        {
          v17 = v63;
        }

        else
        {
          v45 = v20 + *(v68 + v27);
          v46 = v63 >> 4;
          if (((v63 >> 4) + 1) >> 60)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v63 >> 4 != -1)
          {
            if (!(((v63 >> 4) + 1) >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v47 = 16 * v46;
          *v47 = v62;
          *(v47 + 4) = v27;
          *(v47 + 8) = v45;
          v17 = 16 * v46 + 16;
          memcpy(0, 0, v63);
        }

        goto LABEL_8;
      }
    }

    v33 = a1[16];
    *__p = xmmword_23CE3FF50;
    v65 = 0;
    v34 = v33[1];
    if (v34 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v36 = 0.0;
      v37 = 0.0001;
      v35 = 0.0001;
    }

    else
    {
      if ((v34)(*v33, &absl::lts_20240722::base_internal::FastTypeTag<double ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<double>,std::tuple<double,double>)>::dummy_var, __p, &v65))
      {
        v28 = *&v65;
LABEL_19:
        a4.n128_f64[0] = v32 + v28;
        if (a4.n128_f64[0] > v26 || v27 == -1)
        {
          v26 = a4.n128_f64[0];
          v27 = v31;
        }

        goto LABEL_24;
      }

      v36 = *__p;
      v35 = *&__p[1];
      v37 = *&__p[1] - *__p;
    }

    v38 = (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v39 = ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v37 >= 0.0)
    {
      v39 = 0;
      v38 = 0;
    }

    if ((*&v37 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v38 = 1;
    }

    v40 = (*&v37 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v38;
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
    {
      v40 = 1;
    }

    if ((v40 | v39))
    {
      v41 = (v33[2])(*v33);
      if (v41)
      {
        v42 = __clz(v41);
        v28 = v36 + COERCE_DOUBLE(((v41 << v42 >> 11) & 0xFFFFFFFFFFFFFLL) - (v42 << 52) + 0x3FE0000000000000) * v37;
      }

      else
      {
        v28 = v36 + 0.0 * v37;
      }
    }

    else
    {
      do
      {
        while (1)
        {
          v44 = (v33[2])(*v33);
          if (!v44)
          {
            break;
          }

          v43 = __clz(v44);
          v28 = v36 + COERCE_DOUBLE(((v44 << v43 >> 11) & 0xFFFFFFFFFFFFFLL) - (v43 << 52) + 0x3FE0000000000000) * v37;
          if (v28 < v35)
          {
            goto LABEL_19;
          }
        }

        v28 = v36 + 0.0 * v37;
      }

      while (v28 >= v35);
    }

    goto LABEL_19;
  }

  v17 = 0;
LABEL_56:
  v49 = 126 - 2 * __clz(v17 >> 4);
  if (v17)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *,false>(0, v17, v50, 1, a4);
  if ((v17 >> 4) >= 0xB)
  {
    v51 = 160;
  }

  else
  {
    v51 = v17;
  }

  v53 = a1[46];
  v52 = a1[47];
  if (v52 != v53)
  {
    v54 = a1[47];
    do
    {
      v56 = *(v54 - 24);
      v54 -= 24;
      v55 = v56;
      if (v56)
      {
        *(v52 - 16) = v55;
        operator delete(v55);
      }

      v52 = v54;
    }

    while (v54 != v53);
  }

  a1[47] = v53;
  memset(__p, 0, sizeof(__p));
  if (v51)
  {
    for (i = 0; i != v51; i += 2)
    {
      v74 = *i;
      operations_research::sat::BinaryImplicationGraph::ExpandAtMostOneWithWeight<true>(2, &v65);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      __p[0] = v65;
      *&__p[1] = v66;
      if (v65 != v66)
      {
        v59 = a1[47];
        if (v59 >= a1[48])
        {
          v58 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>((a1 + 46), __p);
        }

        else
        {
          *v59 = 0;
          v59[1] = 0;
          v59[2] = 0;
          if (__p[1] != __p[0])
          {
            if (((__p[1] - __p[0]) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v58 = v59 + 3;
          a1[47] = v59 + 3;
        }

        a1[47] = v58;
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v71)
  {
    operator delete(v71);
  }

  v60 = *MEMORY[0x277D85DE8];
  return a1 + 46;
}

void sub_23C9EE798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a24;
    if (!a24)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v28 = a24;
    if (!a24)
    {
LABEL_6:
      if (a27)
      {
        operator delete(a27);
      }

      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v28);
  goto LABEL_6;
}

void operations_research::sat::BinaryImplicationGraph::HeuristicAmoPartition(void *a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a1[25];
  v5 = a1[26];
  v53 = 0;
  v54 = 0;
  __p = 0;
  v7 = v5 - v6;
  if (v7)
  {
    if (((v7 >> 5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v10 = __p;
    v11 = *a2;
    do
    {
      v12 = *v11++;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
    }

    while (v11 != v8);
    v49 = xmmword_23CE306D0;
    v48 = v8;
    while (1)
    {
      v13 = a1[35];
      if (*v9 < ((a1[36] - v13) >> 5))
      {
        v14 = (v13 + 32 * *v9);
        v17 = *v14;
        v16 = (v14 + 1);
        v15 = v17;
        if (v17)
        {
          v16 = *v16;
        }

        if ((v15 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          break;
        }
      }

LABEL_8:
      if (++v9 == v48)
      {
        if (v49 >= 2)
        {
          operator delete((v50 - (BYTE8(v49) & 1) - 8));
        }

        goto LABEL_42;
      }
    }

    v18 = &v16[v15 >> 1];
    while (1)
    {
      v20 = *v16;
      if (v49 > 1)
      {
        v23 = 0;
        _X9 = v50;
        __asm { PRFM            #4, [X9] }

        v30 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v20));
        v31 = vdup_n_s8(v30 & 0x7F);
        v32 = ((v30 >> 7) ^ (v50 >> 12)) & v49;
        v33 = *(v50 + v32);
        v34 = vceq_s8(v33, v31);
        if (!v34)
        {
          goto LABEL_24;
        }

LABEL_22:
        while (*(v51 + 4 * ((v32 + (__clz(__rbit64(v34)) >> 3)) & v49)) != v20)
        {
          v34 &= ((v34 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v34)
          {
LABEL_24:
            while (1)
            {
              v35 = vceq_s8(v33, 0x8080808080808080);
              if (v35)
              {
                break;
              }

              v23 += 8;
              v32 = (v23 + v32) & v49;
              v33 = *(v50 + v32);
              v34 = vceq_s8(v33, v31);
              if (v34)
              {
                goto LABEL_22;
              }
            }

            inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v49, v30, (v32 + (__clz(__rbit64(v35)) >> 3)) & v49, v23, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
            *(v51 + 4 * inserted) = v20;
            v21 = a1[38];
            v22 = *(v21 + 4 * v20);
            if (!v22)
            {
              goto LABEL_14;
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
        if (*(&v49 + 1) <= 1uLL)
        {
          *(&v49 + 1) = 2;
          LODWORD(v50) = v20;
          v21 = a1[38];
          v22 = *(v21 + 4 * v20);
          if (!v22)
          {
LABEL_14:
            v19 = 0;
            goto LABEL_15;
          }

LABEL_30:
          v37 = v20 + 1;
          v38 = v21 + 4 * (v20 + 1);
          if (((v22 - 1) & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v39 = 0;
            v40 = 0;
            v41 = v37;
            v42 = ((v22 - 1) & 0x3FFFFFFFFFFFFFFFLL) + 1;
            v43 = (v38 + 4 * (v42 & 0x7FFFFFFFFFFFFFFELL));
            v44 = (v21 + 4 * v41 + 4);
            v45 = v42 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v39 += (*(__p + ((*(v44 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v44 - 1)) & 1;
              v40 += (*(__p + ((*v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v44) & 1;
              v44 += 2;
              v45 -= 2;
            }

            while (v45);
            v19 = v40 + v39;
            if (v42 == (v42 & 0x7FFFFFFFFFFFFFFELL))
            {
LABEL_38:
              if (v19 > 1)
              {
                operator new();
              }

LABEL_15:
              if (v19 == a2[1] - *a2)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          else
          {
            v19 = 0;
            v43 = (v21 + 4 * v37);
          }

          v46 = (v38 + 4 * v22);
          do
          {
            v47 = *v43++;
            v19 += (*(__p + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v47) & 1;
          }

          while (v43 != v46);
          goto LABEL_38;
        }

        if (v50 != v20)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(&v49, 3);
        }
      }

LABEL_16:
      if (++v16 == v18)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_42:
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_23C9EF1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (a17 >= 2)
  {
    operator delete((a19 - (a18 & 1) - 8));
    if (!v22)
    {
LABEL_3:
      v24 = __p;
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v22)
  {
    goto LABEL_3;
  }

  operator delete(v22);
  v24 = __p;
  if (!__p)
  {
LABEL_4:
    v25 = a9;
    v26 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v24);
  v25 = a9;
  v26 = *a9;
  if (!*a9)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  v25[1] = v26;
  operator delete(v26);
  _Unwind_Resume(exception_object);
}

void std::vector<absl::lts_20240722::Span<operations_research::sat::Literal const>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *operations_research::sat::BinaryImplicationGraph::DirectImplications(void *a1, int a2)
{
  v4 = a1[90];
  v5 = a1[91];
  if (v4 != v5)
  {
    v6 = a1[96];
    v7 = a1[90];
    do
    {
      v8 = *v7++;
      *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
    }

    while (v7 != v5);
  }

  a1[91] = v4;
  v9 = a1[17];
  v10 = 32 * a2;
  v11 = (a1[25] + v10);
  v14 = *v11;
  v13 = v11 + 1;
  v12 = v14;
  if (v14)
  {
    v13 = *v13;
  }

  if ((v12 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v15 = 4 * (v12 >> 1);
    do
    {
      v16 = *v13;
      v39 = v16;
      if (v16 != a2)
      {
        v17 = v16 >> 6;
        if (((*(*(v9 + 24) + 8 * v17) >> (v16 & 0x3E)) & 3) == 0)
        {
          v18 = 1 << v16;
          if ((*(a1[99] + 8 * v17) & v18) == 0)
          {
            v19 = a1[96];
            v20 = *(v19 + 8 * v17);
            if ((v20 & v18) == 0)
            {
              *(v19 + 8 * v17) = v20 | v18;
              std::vector<int>::push_back[abi:ne200100]((a1 + 90), &v39);
            }
          }
        }
      }

      v13 = (v13 + 4);
      v15 -= 4;
    }

    while (v15);
  }

  v21 = a1[35];
  if (a2 < ((a1[36] - v21) >> 5))
  {
    v22 = (v21 + v10);
    v25 = *v22;
    v24 = (v22 + 1);
    v23 = v25;
    if (v25)
    {
      v24 = *v24;
    }

    if ((v23 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v26 = &v24[v23 >> 1];
      do
      {
        v27 = *v24;
        v28 = a1[38];
        v29 = *(v28 + 4 * v27);
        if (v29)
        {
          v30 = (v28 + 4 * (v27 + 1));
          v31 = 4 * v29;
          do
          {
            v32 = *v30;
            if (*v30 != a2)
            {
              v33 = v32 >> 6;
              if (((*(*(v9 + 24) + 8 * v33) >> (v32 & 0x3E)) & 3) == 0 && ((*(a1[99] + 8 * v33) >> v32) & 1) == 0)
              {
                v34 = v32 ^ 1;
                v35 = a1[96];
                v36 = *(v35 + 8 * v33);
                if ((v36 & (1 << v34)) == 0)
                {
                  *(v35 + 8 * v33) = v36 | (1 << v34);
                  v38 = v34;
                  std::vector<int>::push_back[abi:ne200100]((a1 + 90), &v38);
                }
              }
            }

            ++v30;
            v31 -= 4;
          }

          while (v31);
        }

        ++v24;
      }

      while (v24 != v26);
    }
  }

  *(a1[102] + 4 * a2) = (a1[91] - a1[90]) >> 2;
  return a1 + 90;
}

uint64_t operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(void *a1, int a2)
{
  v54 = a2;
  v4 = 32 * a2;
  v5 = *(a1[25] + v4) >> 1;
  v6 = a1[35];
  if (a2 < ((a1[36] - v6) >> 5))
  {
    v7 = (*(v6 + 32 * a2) >> 1) + v5;
    if (v7)
    {
      goto LABEL_3;
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(a1[25] + 32 * a2) >> 1;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  if ((v7 - (v7 != 0x80000000)) < 0)
  {
    v10 = 0;
    v11 = -v5;
    if (v5 <= 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = a1[16];
    v52 = 0;
    v53 = v7;
    v55 = 0;
    v9 = v8[1];
    if (v9 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v24 = 0;
    }

    else
    {
      if ((v9)(*v8, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v52, &v55))
      {
        v10 = v55;
        v11 = v55 - v5;
        if (v55 < v5)
        {
          goto LABEL_28;
        }

LABEL_11:
        v13 = (a1[35] + v4);
        v15 = *v13;
        v14 = v13 + 8;
        if (v15)
        {
          v14 = *v14;
        }

        v16 = *(v14 + v11);
        v17 = a1[38];
        v18 = *(v17 + 4 * v16);
        if (v18 < 2)
        {
          operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(*(v17 + 4 * v16));
        }

        v19 = (v17 + 4 * (v16 + 1));
        if ((v18 - (v18 != 0x80000000)) < 0)
        {
          v22 = 0;
          v23 = *v19;
          if (*v19 != a2)
          {
            return v23 ^ 1u;
          }

          goto LABEL_38;
        }

        v20 = a1[16];
        v52 = 0;
        v53 = v18;
        v55 = 0;
        v21 = v20[1];
        if (v21 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          v32 = 0;
          v33 = v18;
        }

        else
        {
          if ((v21)(*v20, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v52, &v55))
          {
            v22 = v55;
            v23 = v19[v55];
            if (v23 != a2)
            {
              return v23 ^ 1u;
            }

            goto LABEL_38;
          }

          v32 = v52;
          v33 = v53;
        }

        v34 = v33 - v32 - (v33 != 0x80000000);
        v35 = (v20[2])(*v20);
        v36 = v34 + 1;
        if (((v34 + 1) & v34) != 0)
        {
          v37 = v35 * v36;
          if (v36 > v37)
          {
              ;
            }
          }

          v22 = v32 + HIDWORD(v37);
          v23 = v19[v32 + HIDWORD(v37)];
          if (v23 != a2)
          {
            return v23 ^ 1u;
          }
        }

        else
        {
          v22 = v32 + (v35 & v34);
          v23 = v19[v22];
          if (v23 != a2)
          {
            return v23 ^ 1u;
          }
        }

LABEL_38:
        v38 = v18 - 1;
        if ((v18 - 1 - (v18 != -2147483647)) >= 0)
        {
          v39 = a1[16];
          v52 = 0;
          v53 = v18 - 1;
          v55 = 0;
          v40 = v39[1];
          if (v40 == absl::lts_20240722::BitGenRef::NotAMock)
          {
            v42 = 0;
          }

          else
          {
            if ((v40)(*v39, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v52, &v55))
            {
              v41 = v55;
LABEL_50:
              if (v41 >= v22)
              {
                ++v41;
              }

              v48 = &v19[v41];
              v23 = *v48;
              if (*v48 == a2)
              {
                operations_research::sat::BinaryImplicationGraph::RandomImpliedLiteral(v48, &v54);
              }

              return v23 ^ 1u;
            }

            v42 = v52;
            v38 = v53;
          }

          v43 = v38 - v42 - (v38 != 0x80000000);
          v44 = (v39[2])(*v39);
          v45 = v43 + 1;
          if (((v43 + 1) & v43) != 0)
          {
            v46 = v44 * v45;
            if (v45 > v46)
            {
                ;
              }
            }

            v47 = HIDWORD(v46);
          }

          else
          {
            LODWORD(v47) = v44 & v43;
          }

          v41 = v42 + v47;
          goto LABEL_50;
        }

        v41 = 0;
        goto LABEL_50;
      }

      v24 = v52;
      v7 = v53;
    }

    v25 = v7 - v24 - (v7 != 0x80000000);
    v26 = (v8[2])(*v8);
    v27 = v25 + 1;
    if (((v25 + 1) & v25) != 0)
    {
      v28 = v26 * v27;
      if (v27 > v28)
      {
          ;
        }
      }

      v10 = v24 + HIDWORD(v28);
      v11 = v24 + HIDWORD(v28) - v5;
      if (v24 + HIDWORD(v28) < v5)
      {
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v10 = v24 + (v26 & v25);
    v11 = v10 - v5;
    if (v10 >= v5)
    {
      goto LABEL_11;
    }
  }

LABEL_28:
  v29 = (a1[25] + v4);
  v31 = *v29;
  v30 = v29 + 8;
  if (v31)
  {
    v30 = *v30;
  }

  return *(v30 + v10);
}

BOOL operations_research::sat::BinaryImplicationGraph::FindFailedLiteralAroundVar(uint64_t a1, int a2, _BYTE *a3)
{
  if (((*(*(*(a1 + 136) + 24) + (((2 * a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (a2 & 0x1Fu))) & 3) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 36);
  v7 = 2 * a2;
  v8 = operations_research::sat::BinaryImplicationGraph::DirectImplications(a1, (2 * a2) | 1u);
  if ((a1 + 744) != v8)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 744), *v8, v8[1], (v8[1] - *v8) >> 2);
  }

  operations_research::sat::BinaryImplicationGraph::DirectImplications(a1, v7);
  v9 = *(a1 + 744);
  v10 = *(a1 + 752);
  while (v9 != v10)
  {
    v11 = *v9;
    if (((*(*(a1 + 768) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) != 0 && !operations_research::sat::BinaryImplicationGraph::FixLiteral(a1, v11))
    {
      result = 0;
      *a3 = 1;
      return result;
    }

    ++v9;
  }

  return *(a1 + 36) > v6;
}

uint64_t operations_research::sat::BinaryImplicationGraph::NumImplicationOnVariableRemoval(uint64_t a1, int a2)
{
  v3 = 2 * a2;
  v4 = operations_research::sat::BinaryImplicationGraph::DirectImplications(a1, (2 * a2) | 1u);
  if ((a1 + 744) != v4)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 744), *v4, v4[1], (v4[1] - *v4) >> 2);
  }

  v5 = operations_research::sat::BinaryImplicationGraph::DirectImplications(a1, v3);
  v6 = *(a1 + 744);
  v7 = *(a1 + 752);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = (v5[1] - *v5) >> 2;
  v9 = *(a1 + 768);
  if (v7 - 1 == v6)
  {
    result = 0;
    v11 = *(a1 + 744);
    do
    {
LABEL_10:
      v17 = *v11++;
      result = result + v8 - ((*(v9 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v17 & 0x3F ^ 1u)) & 1);
    }

    while (v11 != v7);
    return result;
  }

  v12 = 0;
  v13 = 0;
  v14 = (((v7 - 1) - v6) >> 2) + 1;
  v11 = &v6[v14 & 0x7FFFFFFFFFFFFFFELL];
  v15 = v6 + 1;
  v16 = v14 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v12 = v12 + v8 - ((*(v9 + ((*(v15 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(v15 - 1) & 0x3F ^ 1u)) & 1);
    v13 = v13 + v8 - ((*(v9 + ((*v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v15 & 0x3F ^ 1u)) & 1);
    v15 += 2;
    v16 -= 2;
  }

  while (v16);
  result = v13 + v12;
  if (v14 != (v14 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

  return result;
}

void operations_research::sat::BinaryImplicationGraph::RemoveBooleanVariable(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 2 * a2;
  v30 = (2 * a2) | 1;
  v3 = operations_research::sat::BinaryImplicationGraph::DirectImplications(a1, v30);
  if ((a1 + 744) != v3)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a1 + 744), *v3, v3[1], (v3[1] - *v3) >> 2);
  }

  v4 = operations_research::sat::BinaryImplicationGraph::DirectImplications(a1, v31);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *v5;
    if (((*(*(a1 + 792) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      v8 = *v5;
      --*(*(a1 + 816) + 4 * (v7 ^ 1));
      v9 = *(a1 + 744);
      v10 = *(a1 + 752);
      while (v9 != v10)
      {
        v11 = *v9;
        if ((v11 ^ v8) != 1 && ((*(*(a1 + 792) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          operations_research::sat::BinaryImplicationGraph::AddBinaryClause(a1, v11, v8);
        }

        ++v9;
      }
    }

    ++v5;
  }

  v12 = *(a1 + 744);
  v13 = *(a1 + 752);
  if (v12 != v13)
  {
    v14 = *(a1 + 792);
    v15 = *(a1 + 744);
    do
    {
      v16 = *v15;
      if (((*(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        --*(*(a1 + 816) + 4 * (v16 ^ 1));
      }

      ++v15;
    }

    while (v15 != v13);
  }

  v17 = *(a1 + 720);
  if (v17 != *(a1 + 728))
  {
    v18 = *v17;
    v19 = *(a1 + 144);
    if (v19)
    {
      v32 = v30;
      v33 = v18;
      operations_research::sat::DratProofHandler::DeleteClause(v19, &v32, 2);
    }

    operator new();
  }

  if (v12 != v13)
  {
    v20 = *v12;
    v21 = *(a1 + 144);
    if (v21)
    {
      v32 = v31;
      v33 = v20;
      operations_research::sat::DratProofHandler::DeleteClause(v21, &v32, 2);
    }

    operator new();
  }

  v22 = v31 >> 6;
  v23 = 1 << (v31 & 0x3E);
  *(*(a1 + 792) + 8 * v22) |= v23;
  v24 = *(a1 + 200) + 32 * v31;
  if (*v24)
  {
    operator delete(*(v24 + 8));
  }

  *v24 = 0;
  v25 = *(a1 + 672);
  if ((*(v25 + 8 * v22) & v23) == 0)
  {
    ++*(a1 + 432);
    *(v25 + 8 * v22) |= v23;
  }

  v26 = 1 << v30;
  *(*(a1 + 792) + 8 * v22) |= 1 << v30;
  v27 = *(a1 + 200) + 32 * v30;
  if (*v27)
  {
    operator delete(*(v27 + 8));
    v25 = *(a1 + 672);
    *v27 = 0;
    if ((*(v25 + 8 * v22) & v26) != 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    ++*(a1 + 432);
    *(v25 + 8 * v22) |= v26;
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  *v27 = 0;
  if ((*(v25 + 8 * v22) & v26) == 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  v28 = *MEMORY[0x277D85DE8];
}

void operations_research::sat::BinaryImplicationGraph::RemoveAllRedundantVariables(void *a1)
{
  v1 = a1[25];
  if (((a1[26] - v1) >> 5) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = a1[84];
      if ((*(v4 + 8 * (v3 >> 6)) & (1 << v3)) != 0 && (*(a1[99] + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        v15 = a1[87];
        if (v3 < ((a1[88] - v15) >> 2))
        {
          *(v15 + 4 * v3);
        }

        operator new();
      }

      v5 = (v1 + 32 * v3);
      v6 = (v5 + 1);
      v7 = *v5 >> 1;
      if (*v5)
      {
        v8 = 0;
        if ((*v5 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v12 = *v6;
          v13 = 4 * v7;
          do
          {
            v14 = *v12;
            if (((*(v4 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              (*v6)[v8++] = v14;
            }

            ++v12;
            v13 -= 4;
          }

          while (v13);
        }
      }

      else
      {
        v8 = 0;
        if ((*v5 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v9 = 4 * v7;
          v10 = (v5 + 1);
          do
          {
            v11 = *v10;
            if (((*(v4 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              *(v6 + v8++) = v11;
            }

            ++v10;
            v9 -= 4;
          }

          while (v9);
        }
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v5, v8);
      ++v3;
      v1 = a1[25];
    }

    while (v3 < ((a1[26] - v1) >> 5));
  }
}

uint64_t operations_research::sat::BinaryImplicationGraph::CleanupAllRemovedAndFixedVariables(operations_research::sat::BinaryImplicationGraph *this)
{
  v2 = *(this + 25);
  if (((*(this + 26) - v2) >> 5) >= 1)
  {
    v3 = 0;
    v4 = *(this + 17);
    do
    {
      v5 = *(this + 99);
      v6 = (v2 + 32 * v3);
      if (((*(v5 + 8 * (v3 >> 6)) >> v3) & 1) != 0 || (v7 = *(v4 + 24), ((*(v7 + 8 * (v3 >> 6)) >> (v3 & 0x3E)) & 3) != 0))
      {
        v9 = *v6;
        v8 = v6[1];
        *v6 = 0;
        if (v9)
        {
          operator delete(v8);
        }
      }

      else
      {
        v10 = (v6 + 1);
        v11 = *v6 >> 1;
        if (*v6)
        {
          v12 = 0;
          if ((*v6 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v16 = *v10;
            v17 = 4 * v11;
            do
            {
              v18 = *v16 >> 6;
              if (((1 << *v16) & *(v5 + 8 * v18)) == 0 && (*(v7 + 8 * v18) & (1 << *v16)) == 0)
              {
                (*v10)[v12++] = *v16;
              }

              ++v16;
              v17 -= 4;
            }

            while (v17);
          }
        }

        else
        {
          v12 = 0;
          if ((*v6 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v13 = 4 * v11;
            v14 = (v6 + 1);
            do
            {
              v15 = *v14 >> 6;
              if (((1 << *v14) & *(v5 + 8 * v15)) == 0 && (*(v7 + 8 * v15) & (1 << *v14)) == 0)
              {
                *(v10 + v12++) = *v14;
              }

              ++v14;
              v13 -= 4;
            }

            while (v13);
          }
        }

        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v6, v12);
      }

      ++v3;
      v2 = *(this + 25);
    }

    while (v3 < ((*(this + 26) - v2) >> 5));
  }

  v20 = *(this + 35);
  v19 = *(this + 36);
  if (v19 != v20)
  {
    v21 = *(this + 36);
    do
    {
      v22 = *(v21 - 32);
      v21 -= 32;
      if (v22)
      {
        operator delete(*(v19 - 24));
      }

      v19 = v21;
    }

    while (v21 != v20);
  }

  *(this + 36) = v20;

  return operations_research::sat::BinaryImplicationGraph::CleanUpAndAddAtMostOnes(this, 0);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::Literal,0>(uint64_t a1, int *a2)
{
  v4 = a1;
  operations_research::sat::AbslStringify<absl::lts_20240722::log_internal::StringifySink>(&v4, *a2);
  return a1;
}

uint64_t operations_research::sat::BinaryImplicationGraph::NextAtMostOne(operations_research::sat::BinaryImplicationGraph *this)
{
  v1 = *(this + 83);
  v2 = *(this + 38);
  if (v1 >= (*(this + 39) - v2) >> 2)
  {
    return 0;
  }

  *(this + 83) = v1 + 1 + *(v2 + 4 * v1);
  return v2 + 4 * (v1 + 1);
}

uint64_t operations_research::sat::SatClause::RemoveFixedLiteralsAndTestIfTrue(unsigned int *a1, uint64_t a2)
{
  v2 = a1 + 1;
  v3 = *(a2 + 8);
  if (((*(v3 + (((2 * (a1[1] >> 1)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * ((a1[1] >> 1) & 0x1Fu))) & 3) != 0)
  {
    return 1;
  }

  if (((*(v3 + (((2 * (a1[2] >> 1)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * ((a1[2] >> 1) & 0x1Fu))) & 3) != 0)
  {
    return 1;
  }

  v5 = *a1;
  if (v5 < 3)
  {
    LODWORD(v7) = 2;
  }

  else
  {
    v6 = (a1 + 3);
    v7 = 2;
    while (1)
    {
      v8 = *v6++;
      if (((*(v3 + (((2 * (v8 >> 1)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * ((v8 >> 1) & 0x1Fu))) & 3) != 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        LODWORD(v7) = *a1;
        goto LABEL_18;
      }
    }
  }

  if (v7 < v5)
  {
    for (i = v7; v5 > i; ++i)
    {
      v11 = &a1[i];
      v12 = v11[1];
      if (((*(v3 + (((2 * (v12 >> 1)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * ((v12 >> 1) & 0x1Fu))) & 3) != 0)
      {
        if ((*(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
        {
          return 1;
        }
      }

      else
      {
        v10 = v2[v7];
        v2[v7] = v12;
        v11[1] = v10;
        LODWORD(v7) = v7 + 1;
        LODWORD(v5) = *a1;
      }
    }
  }

LABEL_18:
  *a1 = v7;
  return 0;
}

void operations_research::sat::BinaryImplicationGraph::~BinaryImplicationGraph(operations_research::sat::BinaryImplicationGraph *this)
{
  operations_research::sat::BinaryImplicationGraph::~BinaryImplicationGraph(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F3C268;
  v2 = this + 848;
  v3 = *(this + 109);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 102);
    if (v4)
    {
LABEL_5:
      *(this + 103) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 102);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(this + 99);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 96);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 93);
  if (v7)
  {
    *(this + 94) = v7;
    operator delete(v7);
  }

  v8 = *(this + 90);
  if (v8)
  {
    *(this + 91) = v8;
    operator delete(v8);
  }

  v9 = *(this + 87);
  if (v9)
  {
    *(this + 88) = v9;
    operator delete(v9);
  }

  v10 = *(this + 84);
  if (v10)
  {
    *(this + 85) = v10;
    operator delete(v10);
  }

  v11 = *(this + 80);
  if (v11)
  {
    *(this + 81) = v11;
    operator delete(v11);
  }

  v12 = *(this + 76);
  if (v12)
  {
    *(this + 77) = v12;
    operator delete(v12);
  }

  v13 = *(this + 73);
  if (v13)
  {
    *(this + 74) = v13;
    operator delete(v13);
  }

  v14 = *(this + 69);
  if (v14)
  {
    *(this + 70) = v14;
    operator delete(v14);
  }

  v15 = *(this + 66);
  if (v15)
  {
    *(this + 67) = v15;
    operator delete(v15);
  }

  v16 = *(this + 63);
  if (v16)
  {
    *(this + 64) = v16;
    operator delete(v16);
  }

  v17 = *(this + 59);
  if (v17)
  {
    *(this + 60) = v17;
    operator delete(v17);
  }

  v18 = *(this + 56);
  if (v18)
  {
    *(this + 57) = v18;
    operator delete(v18);
  }

  v19 = *(this + 46);
  if (v19)
  {
    v20 = *(this + 47);
    v21 = *(this + 46);
    if (v20 != v19)
    {
      v22 = *(this + 47);
      do
      {
        v24 = *(v22 - 24);
        v22 -= 24;
        v23 = v24;
        if (v24)
        {
          *(v20 - 16) = v23;
          operator delete(v23);
        }

        v20 = v22;
      }

      while (v22 != v19);
      v21 = *(this + 46);
    }

    *(this + 47) = v19;
    operator delete(v21);
  }

  v25 = *(this + 43);
  if (v25)
  {
    *(this + 44) = v25;
    operator delete(v25);
  }

  v26 = *(this + 38);
  if (v26)
  {
    *(this + 39) = v26;
    operator delete(v26);
  }

  v27 = *(this + 35);
  if (v27)
  {
    v28 = *(this + 36);
    v29 = *(this + 35);
    if (v28 != v27)
    {
      v30 = *(this + 36);
      do
      {
        v31 = *(v30 - 32);
        v30 -= 32;
        if (v31)
        {
          operator delete(*(v28 - 24));
        }

        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(this + 35);
    }

    *(this + 36) = v27;
    operator delete(v29);
  }

  v32 = *(this + 32);
  if (v32)
  {
    *(this + 33) = v32;
    operator delete(v32);
  }

  v33 = *(this + 29);
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *(this + 25);
  if (v34)
  {
    v35 = *(this + 26);
    v36 = *(this + 25);
    if (v35 != v34)
    {
      v37 = *(this + 26);
      do
      {
        v38 = *(v37 - 32);
        v37 -= 32;
        if (v38)
        {
          operator delete(*(v35 - 24));
        }

        v35 = v37;
      }

      while (v37 != v34);
      v36 = *(this + 25);
    }

    *(this + 26) = v34;
    operator delete(v36);
  }

  std::deque<int>::~deque[abi:ne200100](this + 152);
  operations_research::StatsGroup::~StatsGroup((this + 40));
  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::sat::Literal const&,operations_research::sat::Literal const&>(int *a1, int *a2, char *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v14, a3);
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = (v5 + 1);
  }

  v18 = v6;
  v19 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, &v18, 1uLL, &v15);
  if ((v17 & 0x80u) == 0)
  {
    v7 = &v15;
  }

  else
  {
    v7 = v15;
  }

  if ((v17 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v7, v8);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  v9 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v14);
  v10 = *a2 >> 1;
  if (*a2)
  {
    v11 = ~v10;
  }

  else
  {
    v11 = (v10 + 1);
  }

  v18 = v11;
  v19 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, &v18, 1uLL, &v15);
  if ((v17 & 0x80u) == 0)
  {
    v12 = &v15;
  }

  else
  {
    v12 = v15;
  }

  if ((v17 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = v16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v12, v13);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v14);
}

void sub_23C9F09E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
    std::ostringstream::~ostringstream(va);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::~function(uint64_t a1)
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

void **absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v6 = *(v5 - 32);
        v5 -= 4;
        if (v6)
        {
          operator delete(*(v3 - 3));
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

operations_research::sat::BinaryImplicationGraph *operations_research::sat::BinaryImplicationGraph::BinaryImplicationGraph(operations_research::sat::BinaryImplicationGraph *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "BinaryImplicationGraph");
  *(this + 31) = 22;
  *(this + 4) = 0xFFFFFFFFLL;
  *this = &unk_284F3C268;
  strcpy(this + 40, "BinaryImplicationGraph");
  *(this + 63) = 22;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 12) = this + 104;
  *(this + 15) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  *(this + 17) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 82) = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 932);
  *(this + 332) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 124) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0;
  *(this + 166) = 0;
  *(this + 82) = 0;
  *(this + 40) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 828) = 0u;
  *(this + 844) = 1;
  *(this + 109) = 0;
  v4 = *(this + 17);
  v9 = this;
  v5 = *(v4 + 248);
  v6 = *(v4 + 256);
  if (v5 == v6)
  {
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(v4 + 248, 4uLL);
    v5 = *(v4 + 248);
    v6 = *(v4 + 256);
  }

  v7 = v6 - v5;
  if ((v7 >> 3) > 0xF)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v7 >> 3, 16, "propagators_.size() < 16");
  }

  *(this + 8) = v7 >> 3;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v4 + 248, &v9);
  return this;
}

void sub_23C9F11C4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 304);
  if (v4)
  {
    *(v1 + 312) = v4;
    operator delete(v4);
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector((v1 + 280));
    v5 = *(v1 + 256);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 232);
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector((v1 + 280));
    v5 = *(v1 + 256);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 264) = v5;
  operator delete(v5);
  v6 = *(v1 + 232);
  if (!v6)
  {
LABEL_5:
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector((v1 + 200));
    std::deque<int>::~deque[abi:ne200100](v1 + 152);
    operations_research::StatsGroup::~StatsGroup((v1 + 40));
    *v1 = v2;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v6);
  goto LABEL_5;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::TimeLimit>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::TimeLimit>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void *operations_research::sat::Model::Delete<operations_research::TimeLimit>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3C2D8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      *(v1 + 48) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4094DBD242);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::TimeLimit>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3C2D8;
  a1[1] = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      *(v1 + 48) = v2;
      operator delete(v2);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

operations_research::sat::ModelRandomGenerator *operations_research::sat::ModelRandomGenerator::ModelRandomGenerator(operations_research::sat::ModelRandomGenerator *this, const operations_research::sat::SatParameters *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = 5489;
  *(this + 3) = 5489;
  *this = this + 24;
  *(this + 1) = absl::lts_20240722::BitGenRef::NotAMock;
  *(this + 2) = absl::lts_20240722::BitGenRef::ImplFn<std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>>;
  v5 = 1;
  for (i = 4; i != 315; ++i)
  {
    v7 = 0x5851F42D4C957F2DLL * (v4 ^ (v4 >> 62));
    v4 = v7 + v5;
    *(this + i) = i + v7 - 3;
    ++v5;
  }

  *(this + 315) = 0;
  v8 = this + 2528;
  absl::lts_20240722::random_internal::Randen::Randen((this + 2800));
  *(this + 349) = 32;
  v9 = &v8[v8 & 8];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  *(v9 + 13) = 0u;
  *(v9 + 14) = 0u;
  *(v9 + 15) = 0u;
  absl::lts_20240722::random_internal::randen_engine<unsigned long long>::reseed<absl::lts_20240722::random_internal::RandenPoolSeedSeq>(this + 2528);
  v10 = *(a2 + 111);
  *(this + 3) = v10;
  v11 = 1;
  for (j = 4; j != 315; ++j)
  {
    v13 = 0x5851F42D4C957F2DLL * (v10 ^ (v10 >> 62));
    v10 = v13 + v11;
    *(this + j) = j + v13 - 3;
    ++v11;
  }

  *(this + 315) = 0;
  if (*(a2 + 289) == 1)
  {
    v14 = *(a2 + 111);
    operator new();
  }

  v15 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23C9F1D94(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x23EED9460](v1, v2);
  _Unwind_Resume(a1);
}

void sub_23C9F1DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  absl::lts_20240722::random_internal::SaltedSeedSeq<std::seed_seq>::~SaltedSeedSeq(&a10);
  absl::lts_20240722::random_internal::SaltedSeedSeq<std::seed_seq>::~SaltedSeedSeq(&a9);
  _Unwind_Resume(a1);
}

void *absl::lts_20240722::random_internal::SaltedSeedSeq<std::seed_seq>::~SaltedSeedSeq(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

unint64_t absl::lts_20240722::BitGenRef::ImplFn<std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>>(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x138uLL;
  v3 = 0xB5026F5AA96619E9;
  if ((*(a1 + 8 * v2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ *(a1 + 8 * ((v1 + 156) % 0x138uLL)) ^ ((*(a1 + 8 * v2) & 0x7FFFFFFELL | *(a1 + 8 * v1) & 0xFFFFFFFF80000000) >> 1);
  *(a1 + 8 * v1) = v4;
  *(a1 + 2496) = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

void absl::lts_20240722::random_internal::randen_engine<unsigned long long>::reseed<absl::lts_20240722::random_internal::RandenPoolSeedSeq>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  absl::lts_20240722::random_internal::RandenPool<unsigned char>::Fill(&v11, 0x20);
  v2 = v24;
  v3 = v18;
  v24 = v17;
  v4 = v22;
  v5 = v15;
  v6 = v16;
  v7 = v14;
  v15 = v20;
  v16 = v13;
  v20 = v5;
  v22 = v6;
  v8 = v11;
  v13 = v4;
  v14 = v12;
  v17 = v2;
  v18 = v7;
  v11 = v3;
  v12 = v8;
  absl::lts_20240722::random_internal::RandenHwAes::Absorb(&v11, (a1 + 8 * ((a1 & 0xF) != 0)), v9);
  *(a1 + 264) = 32;
  v10 = *MEMORY[0x277D85DE8];
}

void absl::lts_20240722::random_internal::randen_engine<unsigned long long>::reseed<absl::lts_20240722::random_internal::SaltedSeedSeq<std::seed_seq>>(uint64_t a1, int ***a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = **a2;
  v4 = (*a2)[1];
  if ((v4 - v5) > 0xEF)
  {
    v18 = std::seed_seq::generate[abi:ne200100]<unsigned int *>(v3, __b.i8, v34);
    SaltMaterial = absl::lts_20240722::random_internal::GetSaltMaterial(v18);
    if ((SaltMaterial & 0x100000000) != 0)
    {
      v20 = SaltMaterial;
    }

    else
    {
      v20 = 0;
    }

    v22 = v20;
    absl::lts_20240722::random_internal::MixIntoSeedMaterial(&v22, 1, &__b, 60);
  }

  else
  {
    if (v4 == v5)
    {
      v6 = 32;
    }

    else
    {
      v6 = v4 - v5;
    }

    bzero(&__b.i8[v6], 240 - v6);
    if (v6)
    {
      v8 = std::seed_seq::generate[abi:ne200100]<unsigned int *>(v3, __b.i8, &__b.i8[v6]);
      v9 = absl::lts_20240722::random_internal::GetSaltMaterial(v8);
      if ((v9 & 0x100000000) != 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v22 = v10;
      absl::lts_20240722::random_internal::MixIntoSeedMaterial(&v22, 1, &__b, v6 >> 2);
    }

    v11 = v33;
    v12 = v30;
    v33 = v29;
    v13 = v31;
    v14 = v28;
    v31 = v27;
    v15 = v32;
    v16 = v26;
    v27 = v13;
    v28 = v25;
    v32 = v14;
    v17 = __b;
    v25 = v15;
    v26 = v24;
    v29 = v11;
    v30 = v16;
    __b = v12;
    v24 = v17;
  }

  absl::lts_20240722::random_internal::RandenHwAes::Absorb(&__b, (a1 + 8 * ((a1 & 0xF) != 0)), v7);
  *(a1 + 264) = 32;
  v21 = *MEMORY[0x277D85DE8];
}

int **std::seed_seq::generate[abi:ne200100]<unsigned int *>(int **result, char *__b, char *a3)
{
  if (__b == a3)
  {
    return result;
  }

  v4 = result;
  v5 = a3 - __b;
  v6 = (a3 - __b) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    memset(__b, 139, v5);
  }

  v9 = *v4;
  v8 = v4[1];
  v10 = v8 - *v4;
  v11 = v10 >> 2;
  v12 = 11;
  v13 = 7;
  v14 = 5;
  v15 = 3;
  if (v6 <= 6)
  {
    v15 = v7 >> 1;
  }

  if (v6 <= 0x26)
  {
    v14 = v15;
  }

  if (v6 <= 0x43)
  {
    v13 = v14;
  }

  if (v6 <= 0x26E)
  {
    v12 = v13;
  }

  v16 = v10 >> 2;
  v17 = (v6 - v12) >> 1;
  v18 = v17 + v12;
  v19 = v11 + 1;
  if (v11 + 1 > v6)
  {
    v20 = v11 + 1;
  }

  else
  {
    v20 = v6;
  }

  v21 = *&__b[4 * v17];
  v22 = 1664525 * (*__b ^ *&__b[v5 - 4] ^ v21 ^ ((*__b ^ *&__b[v5 - 4] ^ v21) >> 27));
  result = (v22 + v21);
  *&__b[4 * v17] = result;
  v23 = v22 + v16;
  *&__b[4 * v18] += v23;
  *__b = v23;
  v24 = v17 % v6;
  v25 = v18 % v6;
  if (v8 == v9)
  {
    v26 = 0;
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v26 = 0;
    v27 = 2;
    if (v19 > 2)
    {
      v27 = v11 + 1;
    }

    v28 = v27 - 1;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v29 = *&__b[4 * v24];
      v30 = 1664525 * (*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29 ^ ((*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29) >> 27));
      *&__b[4 * v24] = v30 + v29;
      v31 = *v9++;
      v32 = v31 + v26 + v30;
      result = (v32 + *&__b[4 * v25]);
      *&__b[4 * v25] = result;
      *&__b[4 * v26] = v32;
      --v28;
    }

    while (v28);
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  v33 = ~v11 + v20;
  do
  {
    if (v26 + 1 == v6)
    {
      v26 = 0;
    }

    else
    {
      ++v26;
    }

    if (v7 + 1 == v6)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    if (v24 + 1 == v6)
    {
      v24 = 0;
    }

    else
    {
      ++v24;
    }

    if (v25 + 1 == v6)
    {
      v25 = 0;
    }

    else
    {
      ++v25;
    }

    v34 = *&__b[4 * v24];
    v35 = *&__b[4 * v26] ^ *&__b[4 * v7] ^ v34;
    v36 = 1664525 * (v35 ^ (v35 >> 27));
    *&__b[4 * v24] = v36 + v34;
    v37 = v36 + v26;
    *&__b[4 * v25] += v37;
    *&__b[4 * v26] = v37;
    --v33;
  }

  while (v33);
LABEL_49:
  if (v20 < v20 + v6)
  {
    v38 = v6;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v39 = *&__b[4 * v24];
      v40 = v39 + *&__b[4 * v26] + *&__b[4 * v7];
      v41 = 1566083941 * (v40 ^ (v40 >> 27));
      *&__b[4 * v24] = v41 ^ v39;
      v42 = v41 - v26;
      *&__b[4 * v25] ^= v42;
      *&__b[4 * v26] = v42;
      --v38;
    }

    while (v38);
  }

  return result;
}

uint64_t absl::lts_20240722::BitGenRef::ImplFn<absl::lts_20240722::random_internal::NonsecureURBGBase<absl::lts_20240722::random_internal::randen_engine<unsigned long long>,absl::lts_20240722::random_internal::RandenPoolSeedSeq>>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + (a1 & 8));
  v5 = *(a1 + 264);
  if (v5 >= 0x20)
  {
    *(a1 + 264) = 2;
    absl::lts_20240722::random_internal::RandenHwAes::Generate(*(a1 + 272), v4, a3);
    v5 = *(a1 + 264);
  }

  *(a1 + 264) = v5 + 1;
  return v4->i64[v5];
}

void *operations_research::sat::Model::Delete<operations_research::sat::ModelRandomGenerator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3C310;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x10C0C40ECCD3C86);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ModelRandomGenerator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3C310;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x10C0C40ECCD3C86);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::BinaryImplicationGraph>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3C348;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::BinaryImplicationGraph>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3C348;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append(void ***a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 5)
  {
    if ((a2 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = &v4[4 * a2];
      if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_43;
      }

      v18 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v19 = &v4[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
      v20 = v4 + 4;
      v21 = v18 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 4) = 0;
        *v20 = 0;
        v20 += 8;
        v21 -= 2;
      }

      while (v21);
      v4 = v19;
      if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_43:
        do
        {
          *v4 = 0;
          v4 += 4;
        }

        while (v4 != v17);
      }

      v4 = v17;
    }

    a1[1] = v4;
    return;
  }

  v5 = (v4 - *a1) >> 5;
  v6 = v5 + a2;
  if ((v5 + a2) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  if (v7 >> 4 > v6)
  {
    v6 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 32 * v5;
  if ((a2 & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 32 * v5;
    v14 = *a1;
    v15 = a1[1];
    v16 = v22 + *a1 - v15;
    if (v15 != *a1)
    {
      goto LABEL_29;
    }

LABEL_17:
    *a1 = v16;
    a1[1] = v9;
    a1[2] = 0;
    if (!v14)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = v22 + 32 * a2;
  v10 = v22;
  if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_44;
  }

  v11 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
  v10 = (v22 + 32 * (v11 & 0xFFFFFFFFFFFFFFELL));
  v12 = (v22 + 32);
  v13 = v11 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v12 - 4) = 0;
    *v12 = 0;
    v12 += 8;
    v13 -= 2;
  }

  while (v13);
  if (v11 != (v11 & 0xFFFFFFFFFFFFFFELL))
  {
LABEL_44:
    do
    {
      *v10 = 0;
      v10 += 4;
    }

    while (v10 != v9);
  }

  v14 = *a1;
  v15 = a1[1];
  v16 = v22 + *a1 - v15;
  if (v15 == *a1)
  {
    goto LABEL_17;
  }

LABEL_29:
  v23 = v14;
  v24 = v16;
  do
  {
    *v24 = 0;
    *v24 = *v23;
    v25 = *(v23 + 1);
    *(v24 + 24) = v23[3];
    *(v24 + 8) = v25;
    *v23 = 0;
    v23 += 4;
    v24 += 32;
  }

  while (v23 != v15);
  do
  {
    if (*v14)
    {
      operator delete(v14[1]);
    }

    v14 += 4;
  }

  while (v14 != v15);
  v14 = *a1;
  *a1 = v16;
  a1[1] = v9;
  a1[2] = 0;
  if (v14)
  {
LABEL_36:

    operator delete(v14);
  }
}

void std::deque<operations_research::sat::Literal>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    std::deque<operations_research::sat::Literal>::__add_back_capacity(a1, v11);
    v7 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v8 = a1[4] + v7;
  }

  v12 = (v4 + 8 * (v8 >> 10));
  if (v5 != v4)
  {
    v13 = (*v12 + 4 * (v8 & 0x3FF));
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = (v4 + 8 * (v8 >> 10));
    goto LABEL_26;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = a2 + ((v14 - *v12) >> 2);
  if (v15 < 1)
  {
    v17 = 1023 - v15;
    v18 = 2046 - v15;
    if (v17 >= 0)
    {
      v18 = v17;
    }

    v16 = &v12[-(v18 >> 10)];
    v19 = v17 & 0x3FF;
    v21 = -v17;
    v20 = v21 < 0;
    v22 = v21 & 0x3FF;
    if (v20)
    {
      v23 = v19;
    }

    else
    {
      v23 = -v22;
    }

    v14 = *v16 + 4 * (1023 - v23);
  }

  else
  {
    v16 = &v12[v15 >> 10];
    v14 = *v16 + 4 * (v15 & 0x3FF);
  }

LABEL_26:
  while (v13 != v14)
  {
    v24 = v14;
    if (v12 != v16)
    {
      v24 = *v12 + 4096;
    }

    if (v13 == v24)
    {
      a1[5] = v7;
      if (v12 == v16)
      {
        return;
      }
    }

    else
    {
      v25 = ((v24 - v13 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
      bzero(v13, v25);
      v7 = a1[5] + (v25 >> 2);
      a1[5] = v7;
      if (v12 == v16)
      {
        return;
      }
    }

    v26 = v12[1];
    ++v12;
    v13 = v26;
  }
}

void *std::deque<operations_research::sat::Literal>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(v2, &v14);
    }
  }

  return result;
}

void sub_23C9F3098(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(void *a1)
{
  if (*a1)
  {
    if (((a1[2] >> 61) & 3) != 0)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v1 = a1[1];
  }

  operator new();
}

char *std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 2)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 2);
    if (v10 >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - v9;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v37 = (4 * ((__dst - v9) >> 2));
    v38 = v37;
    if ((a5 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v38 = &v37[4 * a5];
      memcpy(v37, __src, 4 * a5);
    }

    v39 = *(a1 + 8) - v5;
    memcpy(v38, v5, v39);
    v40 = &v38[v39];
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = &v37[-v42];
    memcpy(&v37[-v42], *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v37;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 2;
  if (v14 >= a5)
  {
    v13 = 4 * a5;
    v24 = &__dst[4 * a5];
    v25 = (v8 - 4 * a5);
    if (v25 >= v8)
    {
      v29 = *(a1 + 8);
    }

    else
    {
      v26 = v25 + 1;
      if (v8 > (v25 + 1))
      {
        v26 = *(a1 + 8);
      }

      v27 = v26 + v13 + ~v8;
      v28 = v27 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v29 = *(a1 + 8);
      if (v28)
      {
        goto LABEL_68;
      }

      v30 = (v27 >> 2) + 1;
      v31 = 4 * (v30 & 0x7FFFFFFFFFFFFFF8);
      v25 = (v25 + v31);
      v29 = (v8 + v31);
      v32 = (v8 + 16);
      v33 = (v8 + 16 - v13);
      v34 = v30 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v35 = *v33;
        *(v32 - 1) = *(v33 - 1);
        *v32 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 8;
      }

      while (v34);
      if (v30 != (v30 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_68:
        do
        {
          v36 = *v25++;
          *v29++ = v36;
        }

        while (v25 < v8);
      }
    }

    *(a1 + 8) = v29;
    if (v8 != v24)
    {
      v45 = v8 - v24;
      v46 = (v8 - v45);
      v47 = __src;
      v48 = a5;
      memmove(v46, __dst, v45);
      a5 = v48;
      __src = v47;
    }

    if ((a5 & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      return v5;
    }

    goto LABEL_63;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v17 = *(a1 + 8);
  }

  else
  {
    v16 = &__dst[a4] - __src - v8 - 4;
    if (v16 < 0x1C)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = *(a1 + 8);
      if ((__dst - __src) >= 0x20)
      {
        v18 = (v16 >> 2) + 1;
        v19 = 4 * (v18 & 0x7FFFFFFFFFFFFFF8);
        v15 += v19;
        v17 = v8 + v19;
        v20 = (v8 + 16);
        v21 = &__src[v8 + 16 - __dst];
        v22 = v18 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 32;
          v22 -= 8;
        }

        while (v22);
        if (v18 == (v18 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_46;
        }
      }
    }

    do
    {
      v49 = *v15;
      v15 += 4;
      *v17 = v49;
      v17 += 4;
    }

    while (v15 != a4);
  }

LABEL_46:
  *(a1 + 8) = v17;
  if (v14 < 1)
  {
    return v5;
  }

  v50 = a5;
  v51 = &__dst[4 * a5];
  v52 = (v17 - 4 * a5);
  if (v52 >= v8)
  {
    v56 = v17;
  }

  else
  {
    v53 = v52 + 1;
    if (v8 > (v52 + 1))
    {
      v53 = v8;
    }

    v54 = &v53[v50] + ~v17;
    v55 = v54 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
    v56 = v17;
    if (v55)
    {
      goto LABEL_69;
    }

    v57 = (v54 >> 2) + 1;
    v58 = 4 * (v57 & 0x7FFFFFFFFFFFFFF8);
    v52 = (v52 + v58);
    v56 = (v17 + v58);
    v59 = (v17 + 16);
    v60 = (v17 + 16 - v50 * 4);
    v61 = v57 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v62 = *v60;
      *(v59 - 1) = *(v60 - 1);
      *v59 = v62;
      v59 += 2;
      v60 += 2;
      v61 -= 8;
    }

    while (v61);
    if (v57 != (v57 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_69:
      do
      {
        v63 = *v52++;
        *v56++ = v63;
      }

      while (v52 < v8);
    }
  }

  *(a1 + 8) = v56;
  if (v17 != v51)
  {
    v64 = __src;
    memmove(v51, __dst, v17 - v51);
    __src = v64;
  }

  if (v8 == v5)
  {
    return v5;
  }

LABEL_63:
  memmove(v5, __src, v13);
  return v5;
}

void std::vector<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>::__append(void ***a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 5)
  {
    if ((a2 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = &v4[4 * a2];
      if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_43;
      }

      v18 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v19 = &v4[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
      v20 = v4 + 4;
      v21 = v18 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v20 - 4) = 0;
        *v20 = 0;
        v20 += 8;
        v21 -= 2;
      }

      while (v21);
      v4 = v19;
      if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_43:
        do
        {
          *v4 = 0;
          v4 += 4;
        }

        while (v4 != v17);
      }

      v4 = v17;
    }

    a1[1] = v4;
    return;
  }

  v5 = (v4 - *a1) >> 5;
  v6 = v5 + a2;
  if ((v5 + a2) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  if (v7 >> 4 > v6)
  {
    v6 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 32 * v5;
  if ((a2 & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 32 * v5;
    v14 = *a1;
    v15 = a1[1];
    v16 = v22 + *a1 - v15;
    if (v15 != *a1)
    {
      goto LABEL_29;
    }

LABEL_17:
    *a1 = v16;
    a1[1] = v9;
    a1[2] = 0;
    if (!v14)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = v22 + 32 * a2;
  v10 = v22;
  if (((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_44;
  }

  v11 = ((a2 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
  v10 = (v22 + 32 * (v11 & 0xFFFFFFFFFFFFFFELL));
  v12 = (v22 + 32);
  v13 = v11 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v12 - 4) = 0;
    *v12 = 0;
    v12 += 8;
    v13 -= 2;
  }

  while (v13);
  if (v11 != (v11 & 0xFFFFFFFFFFFFFFELL))
  {
LABEL_44:
    do
    {
      *v10 = 0;
      v10 += 4;
    }

    while (v10 != v9);
  }

  v14 = *a1;
  v15 = a1[1];
  v16 = v22 + *a1 - v15;
  if (v15 == *a1)
  {
    goto LABEL_17;
  }

LABEL_29:
  v23 = v14;
  v24 = v16;
  do
  {
    *v24 = 0;
    *v24 = *v23;
    v25 = *(v23 + 1);
    *(v24 + 24) = v23[3];
    *(v24 + 8) = v25;
    *v23 = 0;
    v23 += 4;
    v24 += 32;
  }

  while (v23 != v15);
  do
  {
    if (*v14)
    {
      operator delete(v14[1]);
    }

    v14 += 4;
  }

  while (v14 != v15);
  v14 = *a1;
  *a1 = v16;
  a1[1] = v9;
  a1[2] = 0;
  if (v14)
  {
LABEL_36:

    operator delete(v14);
  }
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(uint64_t *a1, unint64_t a2)
{
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v6 = a1[2];
    v7 = v5 >> 1;
    v8 = a2 - (v5 >> 1);
    if (a2 <= v5 >> 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 6;
    v7 = v5 >> 1;
    v8 = a2 - (v5 >> 1);
    if (a2 <= v5 >> 1)
    {
      goto LABEL_12;
    }
  }

  if (v6 < a2)
  {
    v9 = 2 * v6;
    if (v9 <= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  bzero(v4 + 4 * v7, 4 * v8);
  v5 = *a1;
LABEL_12:
  *a1 = v5 & 1 | (2 * a2);
}

void **operations_research::sat::SccGraph::operator[](uint64_t a1, int a2)
{
  *(a1 + 72) = *(a1 + 64);
  v48 = (a1 + 64);
  v4 = 32 * a2;
  v5 = (**(a1 + 40) + v4);
  v8 = *v5;
  v7 = v5 + 1;
  v6 = v8;
  if (v8)
  {
    v7 = *v7;
  }

  if ((v6 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v9 = 4 * (v6 >> 1);
    do
    {
      v50 = *v7;
      v51 = v50;
      std::vector<int>::push_back[abi:ne200100](v48, &v50);
      if ((*(*(*(a1 + 32) + 48) + 4 * (v51 ^ 1)) - 1) <= 0x7FFFFFFD)
      {
        std::vector<int>::push_back[abi:ne200100](a1, &v51);
      }

      v7 = (v7 + 4);
      v9 -= 4;
    }

    while (v9);
  }

  v10 = **(a1 + 48);
  if (a2 < ((*(*(a1 + 48) + 8) - v10) >> 5))
  {
    v12 = (v10 + v4 + 8);
    v11 = *(v10 + v4);
    if (v11)
    {
      v12 = *v12;
    }

    if ((v11 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v46 = &v12[v11 >> 1];
      do
      {
        v47 = v12;
        v13 = *v12;
        if (*(a1 + 96) <= v13)
        {
          v14 = v13 + 1;
          std::vector<BOOL>::resize(a1 + 88, v14, 0);
          v15 = *(a1 + 112);
          v16 = (*(a1 + 120) - v15) >> 2;
          if (v14 <= v16)
          {
            if (v14 < v16)
            {
              *(a1 + 120) = v15 + 4 * v14;
            }
          }

          else
          {
            std::vector<int>::__append((a1 + 112), v14 - v16);
          }
        }

        v17 = *(a1 + 88);
        v18 = *(v17 + 8 * (v13 >> 6));
        if ((v18 & (1 << v13)) != 0)
        {
          v19 = (*(a1 + 112) + 4 * v13);
          v20 = *v19;
          if ((*(*(*(a1 + 32) + 48) + 4 * v20) - 1) >= 0x7FFFFFFE)
          {
            v49 = v20 ^ 1;
            std::vector<int>::push_back[abi:ne200100](v48, &v49);
          }

          else
          {
            *v19 = a2;
            v21 = **(a1 + 56);
            v22 = *(v21 + 4 * v13);
            if (v22)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          *(v17 + 8 * (v13 >> 6)) = v18 | (1 << v13);
          *(*(a1 + 112) + 4 * v13) = a2;
          v21 = **(a1 + 56);
          v22 = *(v21 + 4 * v13);
          if (v22)
          {
LABEL_25:
            v23 = (v21 + 4 * (v13 + 1));
            for (i = 4 * v22; i; i -= 4)
            {
              v26 = *v23;
              if (v26 != a2)
              {
                v27 = v26 ^ 1;
                v29 = *(a1 + 72);
                v28 = *(a1 + 80);
                if (v29 >= v28)
                {
                  v31 = *v48;
                  v32 = v29 - *v48;
                  v33 = v32 >> 2;
                  v34 = (v32 >> 2) + 1;
                  if (v34 >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v35 = v28 - v31;
                  if (v35 >> 1 > v34)
                  {
                    v34 = v35 >> 1;
                  }

                  if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v36 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v36 = v34;
                  }

                  if (v36)
                  {
                    if (!(v36 >> 62))
                    {
                      operator new();
                    }

LABEL_58:
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(4 * v33) = v27;
                  v30 = 4 * v33 + 4;
                  memcpy(0, v31, v32);
                  *(a1 + 64) = 0;
                  *(a1 + 72) = v30;
                  *(a1 + 80) = 0;
                  if (v31)
                  {
                    operator delete(v31);
                  }
                }

                else
                {
                  *v29 = v27;
                  v30 = (v29 + 4);
                }

                *(a1 + 72) = v30;
                if ((*(*(*(a1 + 32) + 48) + 4 * v26) - 1) <= 0x7FFFFFFD)
                {
                  v38 = *(a1 + 8);
                  v37 = *(a1 + 16);
                  if (v38 < v37)
                  {
                    *v38 = v27;
                    v25 = (v38 + 1);
                  }

                  else
                  {
                    v39 = *a1;
                    v40 = v38 - *a1;
                    v41 = v40 >> 2;
                    v42 = (v40 >> 2) + 1;
                    if (v42 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v43 = v37 - v39;
                    if (v43 >> 1 > v42)
                    {
                      v42 = v43 >> 1;
                    }

                    if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v44 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v44 = v42;
                    }

                    if (v44)
                    {
                      if (!(v44 >> 62))
                      {
                        operator new();
                      }

                      goto LABEL_58;
                    }

                    *(4 * v41) = v27;
                    v25 = 4 * v41 + 4;
                    memcpy(0, v39, v40);
                    *a1 = 0;
                    *(a1 + 8) = v25;
                    *(a1 + 16) = 0;
                    if (v39)
                    {
                      operator delete(v39);
                    }
                  }

                  *(a1 + 8) = v25;
                }
              }

              ++v23;
            }
          }
        }

        v12 = v47 + 1;
      }

      while (v47 + 1 != v46);
    }
  }

  *(a1 + 24) += (*(a1 + 72) - *(a1 + 64)) >> 2;
  return v48;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::ShrinkToFit(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 1;
  if (v2 != a1[2])
  {
    v6 = a1[1];
    v4 = a1 + 1;
    v5 = v6;
    if (v1 >= 0xE)
    {
      if ((v1 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v1 > 1)
    {
      v7 = v5;
      v8 = v2;
      v9 = v4;
      do
      {
        v10 = *v7++;
        *v9++ = v10;
        --v8;
      }

      while (v8);
    }

    operator delete(v5);
    *a1 &= ~1uLL;
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 8 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 8 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v9[2] = *a1;
  v10 = v3 & 1;
  v11 = v2 < 2;
  v12 = v5;
  v7 = *(a1 + 16);
  if (v5)
  {
    v9[0] = *(a1 + 16);
  }

  else
  {
    v8 = *(a1 + 24);
    v9[0] = *(a1 + 16);
    v9[1] = v8;
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,false,true,4ul>(v9, a1);
}

char *std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(char *result, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      if (*(result + 1) < SHIDWORD(v5))
      {
        v6 = *result;
        *result = v5;
        *(a2 - 2) = v6;
        v7 = *(result + 1);
        *(result + 1) = *(a2 - 1);
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a3 <= 0)
    {
      if (result != a2)
      {
        v16 = result + 8;
        if (result + 8 != a2)
        {
          v17 = 0;
          v18 = result;
          do
          {
            v20 = *(v18 + 1);
            v18 = v16;
            v21 = *v16;
            if (v20 < SHIDWORD(v21))
            {
              v22 = v17;
              do
              {
                v23 = &result[v22];
                v24 = *&result[v22 + 4];
                *(v23 + 2) = *&result[v22];
                *(v23 + 3) = v24;
                if (!v22)
                {
                  v19 = result;
                  goto LABEL_15;
                }

                v22 -= 8;
              }

              while (*(v23 - 1) < SHIDWORD(v21));
              v19 = &result[v22 + 8];
LABEL_15:
              *v19 = v21;
            }

            v16 = v18 + 8;
            v17 += 8;
          }

          while (v18 + 8 != a2);
        }
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = 8 * (a3 >> 1);
      v11 = a3 - (a3 >> 1);
      v12 = &result[v10];
      if (a3 <= a5)
      {
        v25 = result;
        std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(result, v12, a3 >> 1, a4);
        v28 = &a4[8 * v9];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(&v25[v10], a2, v11, v28);
        v29 = &a4[8 * a3];
        if ((a3 & 0x3FFFFFFFFFFFFFFELL) != 0)
        {
          v30 = v28;
          v31 = a4;
          v32 = v25;
          while (v30 != v29)
          {
            v33 = *v30;
            v35 = v31 + 4;
            if (*(v31 + 1) >= HIDWORD(*v30))
            {
              v34 = *v31;
              v31 += 8;
              LODWORD(v33) = v34;
            }

            else
            {
              v35 = v30 + 4;
              v30 += 8;
            }

            *v32 = v33;
            *(v32 + 1) = *v35;
            v32 += 8;
            if (v31 == v28)
            {
              goto LABEL_30;
            }
          }

          if (v31 != v28)
          {
            v39 = &a4[v10] - v31 - 8;
            if (v39 >= 0x118)
            {
              v52 = v39 & 0xFFFFFFFFFFFFFFF8;
              v53 = &v32[v39 & 0xFFFFFFFFFFFFFFF8];
              if (v53 < v32)
              {
                v40 = v31;
              }

              else if (v53 + 4 < v32 + 4)
              {
                v40 = v31;
              }

              else if (v32 >= &v31[v52 + 8] || v31 >= &v32[v52 + 8])
              {
                v54 = v32 + 32;
                v55 = (v39 >> 3) + 1;
                v56 = 8 * (v55 & 0x3FFFFFFFFFFFFFF8);
                v40 = &v31[v56];
                v32 += v56;
                v57 = (v31 + 32);
                v58 = v55 & 0x3FFFFFFFFFFFFFF8;
                do
                {
                  v60 = *(v57 - 2);
                  v59 = *(v57 - 1);
                  v62 = *v57;
                  v61 = v57[1];
                  v57 += 4;
                  *(v54 - 2) = v60;
                  *(v54 - 1) = v59;
                  *v54 = v62;
                  v54[1] = v61;
                  v54 += 4;
                  v58 -= 8;
                }

                while (v58);
                if (v55 == (v55 & 0x3FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v40 = v31;
              }
            }

            else
            {
              v40 = v31;
            }

            do
            {
              *v32 = *v40;
              *(v32 + 1) = *(v40 + 1);
              v40 += 8;
              v32 += 8;
            }

            while (v40 != v28);
          }
        }

        else
        {
          v30 = v28;
          v32 = v25;
LABEL_30:
          if (v30 != v29)
          {
            v36 = v29 - v30 - 8;
            if (v36 <= 0xF7 || (v41 = v36 & 0xFFFFFFFFFFFFFFF8, &v32[v36 & 0xFFFFFFFFFFFFFFF8] < v32) || &v32[v41 + 4] < v32 + 4 || (v42 = v41 + 8, v32 < &v30[v42]) && v30 < &v32[v42])
            {
              v37 = v30;
              v38 = v32;
            }

            else
            {
              v43 = (v36 >> 3) + 1;
              v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFF8);
              v37 = &v30[v44];
              v38 = &v32[v44];
              v45 = v32 + 32;
              v46 = (v30 + 32);
              v47 = v43 & 0x3FFFFFFFFFFFFFF8;
              do
              {
                v49 = *(v46 - 2);
                v48 = *(v46 - 1);
                v51 = *v46;
                v50 = v46[1];
                v46 += 4;
                *(v45 - 2) = v49;
                *(v45 - 1) = v48;
                *v45 = v51;
                v45[1] = v50;
                v45 += 4;
                v47 -= 8;
              }

              while (v47);
              if (v43 == (v43 & 0x3FFFFFFFFFFFFFF8))
              {
                return result;
              }
            }

            do
            {
              *v38 = *v37;
              *(v38 + 1) = *(v37 + 1);
              v37 += 8;
              v38 += 8;
            }

            while (v37 != v29);
          }
        }
      }

      else
      {
        v13 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(result, v12, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(&v13[v10], a2, v11, a4, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(v13, &v13[v10], a2, v9, v11, a4, a5);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(uint64_t result, char *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_7:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      if (*(result + 4) >= SHIDWORD(v6))
      {
        v5 = *result;
        result = v4;
      }

      *a4++ = v5;
      goto LABEL_7;
    }

    if (a3 > 8)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = (v17 + result);
      v19 = result;
      v22 = a4;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(v18, a2, a3 - v16, &v22[v17 / 8], a3 - v16);
      if (v17)
      {
        v23 = v22;
        v24 = v22;
        v25 = v18;
        v26 = a2;
        v27 = v19;
        while (v25 != a2)
        {
          v29 = *v25;
          if (*(v27 + 4) >= HIDWORD(*v25))
          {
            v28 = *v27;
            v27 += 8;
            *v23++ = v28;
            ++v24;
            if (v27 == v18)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v25 += 8;
            *v23++ = v29;
            ++v24;
            if (v27 == v18)
            {
              goto LABEL_30;
            }
          }
        }

        if (v27 != v18)
        {
          v39 = &v18[-v27 - 8];
          if (v39 >= 0x38)
          {
            if (v24 - v27 >= 0x20)
            {
              v42 = v23 + 2;
              v43 = (v39 >> 3) + 1;
              v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
              v23 = (v23 + v44);
              v40 = (v27 + v44);
              v45 = (v27 + 16);
              v46 = v43 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v47 = *v45;
                *(v42 - 1) = *(v45 - 1);
                *v42 = v47;
                v45 += 2;
                v42 += 2;
                v46 -= 4;
              }

              while (v46);
              if (v43 == (v43 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v40 = v27;
            }
          }

          else
          {
            v40 = v27;
          }

          do
          {
            v48 = *v40++;
            *v23++ = v48;
          }

          while (v40 != v18);
        }
      }

      else
      {
        v25 = v18;
        v23 = v22;
        v26 = a2;
LABEL_30:
        if (v25 != v26)
        {
          v30 = v26 - v25 - 8;
          if (v30 < 0x18 || (v23 - v25) < 0x20)
          {
            v33 = v23;
            v34 = v25;
          }

          else
          {
            v31 = (v30 >> 3) + 1;
            v32 = v31 & 0x3FFFFFFFFFFFFFFCLL;
            v33 = &v23[v32];
            v34 = &v25[v32 * 8];
            v35 = (v25 + 16);
            v36 = v23 + 2;
            v37 = v31 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v38 = *v35;
              *(v36 - 1) = *(v35 - 1);
              *v36 = v38;
              v35 += 2;
              v36 += 2;
              v37 -= 4;
            }

            while (v37);
            if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          do
          {
            v41 = *v34;
            v34 += 8;
            *v33++ = v41;
          }

          while (v34 != v26);
        }
      }
    }

    else if (result != a2)
    {
      v7 = (result + 8);
      *a4 = *result;
      if ((result + 8) != a2)
      {
        v8 = 0;
        v9 = a4;
        do
        {
          v10 = v7;
          v11 = v9 + 1;
          v12 = *v7;
          if (*(v9 + 1) >= SHIDWORD(v12))
          {
            *v11 = v12;
          }

          else
          {
            v9[1] = *v9;
            v13 = a4;
            if (v9 != a4)
            {
              v14 = v8;
              while (1)
              {
                v13 = (a4 + v14);
                v15 = *(a4 + v14 - 4);
                if (v15 >= v10[1])
                {
                  break;
                }

                *v13 = *(v13 - 2);
                v13[1] = v15;
                v14 -= 8;
                if (!v14)
                {
                  v13 = a4;
                  break;
                }
              }
            }

            *v13 = *v10;
            v13[1] = *(result + 12);
          }

          v7 = v10 + 2;
          v8 += 8;
          v9 = v11;
          result = v10;
        }

        while (v10 + 2 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = 0;
    v10 = *a2;
    v11 = -a4;
    while (1)
    {
      v12 = &result[v9];
      if (*&result[v9 + 4] < *(a2 + 1))
      {
        break;
      }

      v9 += 8;
      v83 = __CFADD__(v11++, 1);
      if (v83)
      {
        return result;
      }
    }

    v13 = -v11;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        v69 = &result[v9];
        v70 = *v69;
        *v69 = v10;
        *a2 = v70;
        v71 = v69[1];
        v69[1] = *(a2 + 1);
        *(a2 + 1) = v71;
        return result;
      }

      v22 = v13 / 2;
      v16 = &result[8 * (v13 / 2) + v9];
      v15 = a2;
      if (a2 != a3)
      {
        v24 = (a3 - a2) >> 3;
        v15 = a2;
        do
        {
          v25 = v24 >> 1;
          v26 = &v15[8 * (v24 >> 1)];
          v27 = *(v26 + 1);
          v28 = v26 + 8;
          v24 += ~(v24 >> 1);
          if (*(v16 + 1) < v27)
          {
            v15 = v28;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
      }

      v14 = (v15 - a2) >> 3;
      v23 = v15;
      if (a2 != v16)
      {
LABEL_27:
        v23 = v16;
        if (a2 != v15)
        {
          v29 = *v16;
          *v16 = v10;
          *a2 = v29;
          v30 = *(v16 + 1);
          *(v16 + 1) = *(a2 + 1);
          *(a2 + 1) = v30;
          v23 = v16 + 8;
          for (i = a2 + 8; i != v15; i += 8)
          {
            if (v23 == a2)
            {
              a2 = i;
            }

            v32 = *v23;
            *v23 = *i;
            *i = v32;
            v33 = *(v23 + 1);
            *(v23 + 1) = *(i + 1);
            *(i + 1) = v33;
            v23 += 8;
          }

          if (v23 != a2)
          {
            v34 = v23;
            v35 = a2;
            while (1)
            {
              v36 = *v34;
              *v34 = *v35;
              *v35 = v36;
              v37 = *(v34 + 1);
              *(v34 + 1) = *(v35 + 1);
              *(v35 + 1) = v37;
              v34 += 8;
              v35 += 8;
              v38 = v34 == a2;
              if (v35 == v15)
              {
                if (v34 == a2)
                {
                  break;
                }

                v35 = a2 + 8;
                while (1)
                {
                  v39 = *v34;
                  *v34 = *a2;
                  *a2 = v39;
                  v40 = *(v34 + 1);
                  *(v34 + 1) = *(a2 + 1);
                  *(a2 + 1) = v40;
                  v34 += 8;
                  v38 = v34 == a2;
                  if (v35 != v15)
                  {
                    break;
                  }

                  if (v34 == a2)
                  {
                    goto LABEL_41;
                  }
                }
              }

              if (v38)
              {
                a2 = v35;
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = a5 / 2;
      v15 = &a2[8 * (a5 / 2)];
      v16 = a2;
      if (a2 - result != v9)
      {
        v17 = (a2 - result - v9) >> 3;
        v16 = &result[v9];
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[8 * (v17 >> 1)];
          v20 = *(v19 + 1);
          v21 = v19 + 8;
          v17 += ~(v17 >> 1);
          if (v20 < *(v15 + 1))
          {
            v17 = v18;
          }

          else
          {
            v16 = v21;
          }
        }

        while (v17);
      }

      v22 = (v16 - result - v9) >> 3;
      v23 = &a2[8 * (a5 / 2)];
      if (a2 != v16)
      {
        goto LABEL_27;
      }
    }

LABEL_41:
    v41 = a5 - v14;
    if (v22 + v14 >= a5 - (v22 + v14) - v11)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(v23, v15, a3, -(v22 + v11), a5 - v14, a6, a7);
      a2 = v16;
      a4 = v22;
      a3 = v23;
      a5 = v14;
      result = v12;
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v42 = v16;
      v43 = a3;
      v44 = -(v22 + v11);
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_1 &,std::__wrap_iter<std::pair<int,int> *>>(&result[v9], v42, v23, v22, v14, a6, a7);
      a4 = v44;
      a3 = v43;
      a2 = v15;
      a5 = v41;
      result = v23;
      if (!v41)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != result)
    {
      v54 = a2 - result - 8;
      v55 = a6;
      v56 = result;
      if (v54 < 0x18)
      {
        goto LABEL_98;
      }

      v55 = a6;
      v56 = result;
      if ((a6 - result) <= 0x1F)
      {
        goto LABEL_98;
      }

      v57 = (v54 >> 3) + 1;
      v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
      v55 = (a6 + v58);
      v56 = &result[v58];
      v59 = (result + 16);
      v60 = (a6 + 16);
      v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v62 = *v59;
        *(v60 - 1) = *(v59 - 1);
        *v60 = v62;
        v59 += 2;
        v60 += 2;
        v61 -= 4;
      }

      while (v61);
      if (v57 != (v57 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_98:
        do
        {
          v63 = *v56;
          v56 += 8;
          *v55++ = v63;
        }

        while (v56 != a2);
      }

      v64 = v55 - 1;
      if (v55 != a6)
      {
        v65 = a6;
        while (a2 != a3)
        {
          v66 = *a2;
          v68 = v65 + 1;
          if (v65[1] >= HIDWORD(*a2))
          {
            v67 = *v65;
            v65 += 2;
            LODWORD(v66) = v67;
          }

          else
          {
            v68 = a2 + 4;
            a2 += 8;
          }

          *result = v66;
          *(result + 1) = *v68;
          result += 8;
          if (v65 == v55)
          {
            return result;
          }
        }

        v72 = (v54 & 0xFFFFFFFFFFFFFFF8) + a6 - v65;
        if (v72 >= 0x138)
        {
          v82 = &result[v72 & 0xFFFFFFFFFFFFFFF8];
          v83 = v82 >= result && v82 + 4 >= result + 4;
          if (v83)
          {
            if (result >= v65 + (v72 & 0xFFFFFFFFFFFFFFF8) + 8 || v65 >= v82 + 2)
            {
              v84 = (v72 >> 3) + 1;
              v85 = result + 32;
              v86 = 2 * (v84 & 0x3FFFFFFFFFFFFFF8);
              result += v86 * 4;
              v73 = &v65[v86];
              v87 = (v65 + 8);
              v88 = v84 & 0x3FFFFFFFFFFFFFF8;
              do
              {
                v90 = *(v87 - 2);
                v89 = *(v87 - 1);
                v92 = *v87;
                v91 = v87[1];
                v87 += 4;
                *(v85 - 2) = v90;
                *(v85 - 1) = v89;
                *v85 = v92;
                v85[1] = v91;
                v85 += 4;
                v88 -= 8;
              }

              while (v88);
              if (v84 == (v84 & 0x3FFFFFFFFFFFFFF8))
              {
                return result;
              }
            }

            else
            {
              v73 = v65;
            }
          }

          else
          {
            v73 = v65;
          }
        }

        else
        {
          v73 = v65;
        }

        do
        {
          *result = *v73;
          *(result + 1) = v73[1];
          result += 8;
          v93 = v73 == v64;
          v73 += 2;
        }

        while (!v93);
      }
    }
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v45 = a3 - a2 - 8;
    if (v45 < 0x18)
    {
      v46 = a6;
      v47 = a2;
    }

    else
    {
      v46 = a6;
      v47 = a2;
      if ((a6 - a2) > 0x1F)
      {
        v48 = (v45 >> 3) + 1;
        v49 = 8 * (v48 & 0x3FFFFFFFFFFFFFFCLL);
        v46 = a6 + v49;
        v47 = &a2[v49];
        v50 = (a2 + 16);
        v51 = (a6 + 16);
        v52 = v48 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v53 = *v50;
          *(v51 - 1) = *(v50 - 1);
          *v51 = v53;
          v50 += 2;
          v51 += 2;
          v52 -= 4;
        }

        while (v52);
        if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_73;
        }
      }
    }

    do
    {
      v74 = *v47;
      v47 += 8;
      *v46 = v74;
      v46 += 8;
    }

    while (v47 != a3);
LABEL_73:
    if (v46 != a6)
    {
      v75 = a3 - 4;
      while (a2 != result)
      {
        v78 = v46 - 8;
        v77 = *(v46 - 8);
        v79 = a2 - 4;
        if (*(a2 - 1) >= SHIDWORD(v77))
        {
          v76 = (v46 - 4);
          v46 -= 8;
          *(v75 - 1) = v77;
          *v75 = *v76;
          v75 -= 8;
          if (v78 == a6)
          {
            return result;
          }
        }

        else
        {
          v80 = *(a2 - 2);
          a2 -= 8;
          *(v75 - 1) = v80;
          *v75 = *v79;
          v75 -= 8;
          if (v46 == a6)
          {
            return result;
          }
        }
      }

      while (v46 != a6)
      {
        v81 = *(v46 - 8);
        v46 -= 8;
        *(v75 - 1) = v81;
        *v75 = *(v46 + 4);
        v75 -= 8;
      }
    }
  }

  return result;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(char *result, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 2);
      v7 = *(result + 1);
      if (v6 < v7 || v7 >= v6 && *(a2 - 1) < *(result + 2))
      {
        v8 = a2 - 12;
        v9 = *(result + 2);
        v10 = *result;
        v11 = *(a2 - 1);
        *result = *(a2 - 12);
        *(result + 2) = v11;
        *v8 = v10;
        *(v8 + 2) = v9;
      }
    }

    else
    {
      if (a4 <= 128)
      {
        if (result == a2)
        {
          return result;
        }

        v12 = result + 12;
        if (result + 12 == a2)
        {
          return result;
        }

        v13 = 0;
        v14 = result;
LABEL_12:
        v15 = v14;
        v14 = v12;
        v16 = *(v15 + 4);
        v17 = *(v15 + 1);
        if (v16 >= v17)
        {
          if (v17 < v16)
          {
            goto LABEL_11;
          }

          v18 = *(v15 + 5);
          if (v18 >= *(v15 + 2))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v18 = *(v15 + 5);
        }

        v19 = *v14;
        v20 = *v15;
        *(v14 + 2) = *(v15 + 2);
        *v14 = v20;
        if (v15 == result)
        {
LABEL_9:
          v15 = result;
          goto LABEL_10;
        }

        v21 = v13;
        while (1)
        {
          v22 = &result[v21];
          v23 = *&result[v21 - 8];
          if (v16 >= v23)
          {
            if (v23 < v16)
            {
              v15 = &result[v21];
LABEL_10:
              *v15 = v19;
              *(v15 + 1) = v16;
              *(v15 + 2) = v18;
LABEL_11:
              v12 = v14 + 12;
              v13 += 12;
              if (v14 + 12 == a2)
              {
                return result;
              }

              goto LABEL_12;
            }

            if (v18 >= *(v22 - 1))
            {
              goto LABEL_10;
            }
          }

          v15 -= 12;
          *v22 = *(v22 - 12);
          *(v22 + 2) = *(v22 - 1);
          v21 -= 12;
          if (!v21)
          {
            goto LABEL_9;
          }
        }
      }

      v25 = a4 >> 1;
      v26 = 12 * (a4 >> 1);
      v27 = a4 - (a4 >> 1);
      v28 = &result[v26];
      if (a4 <= a6)
      {
        v33 = result;
        v36 = a5;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(result, v28, a3, a4 >> 1, a5);
        v37 = v36 + 12 * v25;
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(&v33[v26], a2, a3, v27, v37);
        v38 = v36 + 12 * a4;
        if (v26)
        {
          v39 = v37;
          v40 = v33;
          while (v39 != v38)
          {
            v42 = *(v39 + 4);
            v43 = *(v36 + 4);
            if (v42 < v43 || v43 >= v42 && *(v39 + 8) < *(v36 + 8))
            {
              v41 = *v39;
              *(v40 + 2) = *(v39 + 8);
              *v40 = v41;
              v40 += 12;
              v39 += 12;
              if (v36 == v37)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v44 = *v36;
              *(v40 + 2) = *(v36 + 8);
              *v40 = v44;
              v40 += 12;
              v36 += 12;
              if (v36 == v37)
              {
                goto LABEL_46;
              }
            }
          }

          while (v36 != v37)
          {
            v45 = *v36;
            *(v40 + 2) = *(v36 + 8);
            *v40 = v45;
            v40 += 12;
            v36 += 12;
          }
        }

        else
        {
          v39 = v37;
          v40 = v33;
LABEL_46:
          while (v39 != v38)
          {
            v46 = *v39;
            *(v40 + 2) = *(v39 + 8);
            *v40 = v46;
            v40 += 12;
            v39 += 12;
          }
        }
      }

      else
      {
        v29 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(result, v28, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(&v29[v26], a2, a3, v27, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(v29, &v29[v26], a2, a3, v25, v27, a5, a6);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 12);
      v7 = *(a2 - 8);
      v8 = *(result + 4);
      if (v7 < v8 || v8 >= v7 && *(a2 - 4) < *(result + 8))
      {
        v9 = *v6;
        *(a5 + 8) = *(a2 - 4);
        *a5 = v9;
        v10 = *result;
        *(a5 + 20) = *(result + 8);
        *(a5 + 12) = v10;
      }

      else
      {
        v25 = *result;
        *(a5 + 8) = *(result + 8);
        *a5 = v25;
        v26 = *v6;
        *(a5 + 20) = *(a2 - 4);
        *(a5 + 12) = v26;
      }
    }

    else if (a4 == 1)
    {
      v5 = *result;
      *(a5 + 8) = *(result + 8);
      *a5 = v5;
    }

    else if (a4 > 8)
    {
      v27 = a4 >> 1;
      v28 = 12 * (a4 >> 1);
      v29 = v28 + result;
      v30 = result;
      (std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(v29, a2, a3, a4 - v27, a5 + v28, a4 - v27);
      if (v28)
      {
        v35 = v29;
        v36 = a5;
        v37 = v30;
        v38 = a2;
        while (v35 != a2)
        {
          v40 = *(v35 + 4);
          v41 = *(v37 + 4);
          if (v40 < v41 || v41 >= v40 && *(v35 + 8) < *(v37 + 8))
          {
            v39 = *v35;
            *(v36 + 8) = *(v35 + 8);
            *v36 = v39;
            v36 += 12;
            v35 += 12;
            if (v37 == v29)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v42 = *v37;
            *(v36 + 8) = *(v37 + 8);
            *v36 = v42;
            v36 += 12;
            v37 += 12;
            if (v37 == v29)
            {
              goto LABEL_43;
            }
          }
        }

        while (v37 != v29)
        {
          v43 = *v37;
          *(v36 + 8) = *(v37 + 8);
          *v36 = v43;
          v36 += 12;
          v37 += 12;
        }
      }

      else
      {
        v35 = v29;
        v36 = a5;
        v38 = a2;
LABEL_43:
        while (v35 != v38)
        {
          v44 = *v35;
          *(v36 + 8) = *(v35 + 8);
          *v36 = v44;
          v36 += 12;
          v35 += 12;
        }
      }
    }

    else if (result != a2)
    {
      v11 = *result;
      *(a5 + 8) = *(result + 8);
      *a5 = v11;
      v12 = result + 12;
      if (result + 12 != a2)
      {
        v13 = 0;
        v14 = a5;
        do
        {
          v17 = result;
          v18 = v14;
          result = v12;
          v14 += 12;
          v19 = *(v17 + 16);
          v20 = *(v18 + 4);
          if (v19 < v20 || (v15 = v14, v20 >= v19) && (v15 = v14, *(v17 + 20) < *(v18 + 8)))
          {
            *v14 = *v18;
            *(v14 + 8) = *(v18 + 8);
            v15 = a5;
            if (v18 != a5)
            {
              v21 = v13;
              while (1)
              {
                v22 = a5 + v21;
                v23 = *(v17 + 16);
                v24 = *(a5 + v21 - 8);
                if (v23 >= v24)
                {
                  if (v24 < v23)
                  {
                    v15 = a5 + v21;
                    break;
                  }

                  if (*(v17 + 20) >= *(v22 - 4))
                  {
                    v15 = v18;
                    break;
                  }
                }

                v18 -= 12;
                *v22 = *(v22 - 12);
                *(v22 + 8) = *(v22 - 4);
                v21 -= 12;
                if (!v21)
                {
                  v15 = a5;
                  break;
                }
              }
            }
          }

          v16 = *result;
          *(v15 + 8) = *(result + 8);
          *v15 = v16;
          v12 = result + 12;
          v13 += 12;
        }

        while (result + 12 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a7;
    v10 = result;
    v68 = a8;
    while (a6 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = *(a2 + 1);
      v13 = -a5;
      while (1)
      {
        v15 = &v10[v11];
        v16 = *&v10[v11 + 4];
        if (v12 < v16 || v16 >= v12 && *(a2 + 2) < *(v15 + 2))
        {
          break;
        }

        v11 += 12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v66 = a3;
      if (-v13 >= a6)
      {
        if (v13 == -1)
        {
          v59 = &v10[v11];
          v70 = *&v10[v11 + 8];
          v69 = *&v10[v11];
          v60 = *a2;
          *(v59 + 2) = *(a2 + 2);
          *v59 = v60;
          *a2 = v69;
          *(a2 + 2) = v70;
          return result;
        }

        v20 = -v13 / 2;
        v18 = a2;
        if (a2 != a3)
        {
          v34 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2);
          v35 = &v10[12 * v20 + v11];
          v36 = *(v35 + 1);
          v37 = *(v35 + 2);
          v18 = a2;
          do
          {
            v38 = v34 >> 1;
            v39 = &v18[12 * (v34 >> 1)];
            v40 = *(v39 + 1);
            if (v40 < v36 || v36 >= v40 && *(v39 + 2) < v37)
            {
              v18 = v39 + 12;
              v38 = v34 + ~v38;
            }

            v34 = v38;
          }

          while (v38);
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v18 - a2) >> 2);
        v19 = &v10[12 * v20 + v11];
      }

      else
      {
        v17 = a6 / 2;
        v18 = &a2[12 * (a6 / 2)];
        v19 = a2;
        if (a2 - v10 != v11)
        {
          v29 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10 - v11) >> 2);
          v30 = *(v18 + 1);
          v19 = &v10[v11];
          do
          {
            v31 = v29 >> 1;
            v32 = &v19[12 * (v29 >> 1)];
            v33 = *(v32 + 1);
            if (v30 >= v33 && (v33 < v30 || *(v18 + 2) >= *(v32 + 2)))
            {
              v19 = v32 + 12;
              v31 = v29 + ~v31;
            }

            v29 = v31;
          }

          while (v31);
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v10 - v11) >> 2);
      }

      a5 = -v13 - v20;
      v65 = a6 - v17;
      v21 = v20;
      v22 = a6;
      v23 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(v19, a2, v18);
      v24 = v21;
      v25 = v23;
      if (v24 + v17 >= v22 - (v24 + v17) - v13)
      {
        v28 = v24;
        v27 = v17;
        v8 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(v23, v18, v66, a4, a5, v65, a7, v68);
        v18 = v19;
        a5 = v28;
        a3 = v25;
      }

      else
      {
        v26 = v17;
        v8 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(&v10[v11], v19, v23, a4, v24, v26, a7, v68);
        v15 = v25;
        v27 = v65;
        a3 = v66;
      }

      a6 = v27;
      v10 = v15;
      a2 = v18;
      a8 = v68;
      if (!v27)
      {
        return result;
      }
    }

    if (a5 <= a6)
    {
      if (a2 != v10)
      {
        v50 = 0;
        v51 = -v8;
        do
        {
          v52 = (v8 + v50);
          v53 = *&v10[v50];
          *(v52 + 2) = *&v10[v50 + 8];
          *v52 = v53;
          v51 -= 12;
          v50 += 12;
        }

        while (&v10[v50] != a2);
        if (v50)
        {
          v54 = (v8 + v50);
          while (a2 != a3)
          {
            v56 = *(a2 + 1);
            v57 = *(v8 + 4);
            if (v56 < v57 || v57 >= v56 && *(a2 + 2) < *(v8 + 8))
            {
              v55 = *a2;
              *(v10 + 2) = *(a2 + 2);
              *v10 = v55;
              v10 += 12;
              a2 += 12;
              if (v54 == v8)
              {
                return result;
              }
            }

            else
            {
              v58 = *v8;
              *(v10 + 2) = *(v8 + 8);
              *v10 = v58;
              v10 += 12;
              v8 += 12;
              if (v54 == v8)
              {
                return result;
              }
            }
          }

          return memmove(v10, v8, -(v8 + v51));
        }
      }
    }

    else if (a2 != a3)
    {
      v41 = 0;
      do
      {
        v42 = (v8 + v41);
        v43 = *&a2[v41];
        *(v42 + 2) = *&a2[v41 + 8];
        *v42 = v43;
        v41 += 12;
      }

      while (&a2[v41] != a3);
      if (v41)
      {
        v44 = (v8 + v41);
        while (a2 != v10)
        {
          v46 = a2 - 12;
          v47 = *(v44 - 2);
          v48 = *(a2 - 2);
          if (v47 < v48 || v48 >= v47 && *(v44 - 1) < *(a2 - 1))
          {
            a2 -= 12;
            v45 = *(v46 + 2);
            *(a3 - 12) = *v46;
            a3 -= 12;
            *(a3 + 2) = v45;
            if (v44 == v8)
            {
              return result;
            }
          }

          else
          {
            v44 -= 3;
            v49 = v44[2];
            *(a3 - 12) = *v44;
            a3 -= 12;
            *(a3 + 2) = v49;
            if (v44 == v8)
            {
              return result;
            }
          }
        }

        if (v44 != v8)
        {
          v61 = -12;
          do
          {
            v62 = *(v44 - 3);
            v44 -= 3;
            v63 = &a3[v61];
            *(v63 + 2) = v44[2];
            *v63 = v62;
            v61 -= 12;
          }

          while (v44 != v8);
        }
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CompactVectorVector<int,int>>::Candidate *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 12 == a2)
    {
      v26 = *__src;
      v29 = *(__src + 2);
      v7 = __src;
      memmove(__src, __src + 12, v6);
      v4 = v7 + v6;
      *v4 = v26;
      *(v4 + 2) = v29;
    }

    else if (a2 + 12 == a3)
    {
      v4 = __src + 12;
      v27 = *(a3 - 12);
      v30 = *(a3 - 1);
      v8 = a3 - 12 - __src;
      if (a3 - 12 != __src)
      {
        v9 = __src;
        memmove(__src + 12, __src, v8);
        __src = v9;
      }

      *__src = v27;
      *(__src + 2) = v30;
    }

    else
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      if (0xAAAAAAAAAAAAAAABLL * (v5 >> 2) == v10)
      {
        v11 = __src + 12;
        v12 = a2 + 12;
        do
        {
          v13 = *(v11 - 1);
          v14 = *(v11 - 12);
          v15 = *(v12 - 1);
          *(v11 - 12) = *(v12 - 12);
          *(v11 - 1) = v15;
          *(v12 - 12) = v14;
          *(v12 - 1) = v13;
          if (v11 == a2)
          {
            break;
          }

          v11 += 12;
          v16 = v12 == a3;
          v12 += 12;
        }

        while (!v16);
        return a2;
      }

      else
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 2);
        do
        {
          v18 = v17;
          v17 = v10;
          v10 = v18 % v10;
        }

        while (v10);
        v19 = &__src[12 * v17];
        do
        {
          v20 = *(v19 - 12);
          v19 -= 12;
          v28 = v20;
          v31 = *(v19 + 2);
          v21 = &v19[v5];
          v22 = v19;
          do
          {
            v23 = v21;
            v24 = *v21;
            *(v22 + 2) = *(v23 + 2);
            *v22 = v24;
            v21 = v23 + 4 * (v5 >> 2);
            if (v5 >= a3 - v23)
            {
              v21 = &a2[-(a3 - v23)];
            }

            v22 = v23;
          }

          while (v21 != v19);
          *(v23 + 2) = v31;
          *v23 = v28;
        }

        while (v19 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

__n128 std::__function::__func<operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_0,std::allocator<operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_0>,void ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3C3B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

int64_t std::__function::__func<operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_0,std::allocator<operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_0>,void ()(int,int)>::operator()(int64_t result, int *a2, int *a3)
{
  v3 = **(result + 8);
  v4 = *(v3 + 4 * *a2);
  v5 = *(v3 + 4 * *a3);
  v29 = v5;
  if (v4 != v5)
  {
    v6 = ***(result + 16);
    v7 = (v6 + 24 * v4);
    v8 = *v7;
    if (*v7 != v7[1] && *(v6 + 24 * v5) != *(v6 + 24 * v5 + 8))
    {
      v9 = *(result + 24);
      v10 = *v9;
      if (*v9 > 1uLL)
      {
        v12 = 0;
        v13 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4;
        v14 = 0x9DDFEA08EB382D69 * v13;
        v15 = (v13 * 0x9DDFEA08EB382D69) >> 64;
        _X15 = v9[2];
        __asm { PRFM            #4, [X15] }

        v22 = v15 ^ v14;
        v23 = vdup_n_s8(v22 & 0x7F);
        v24 = ((v22 >> 7) ^ (_X15 >> 12)) & v10;
        v25 = *(_X15 + v24);
        v26 = vceq_s8(v25, v23);
        if (!v26)
        {
          goto LABEL_14;
        }

LABEL_12:
        while (*(v9[3] + 4 * ((v24 + (__clz(__rbit64(v26)) >> 3)) & v10)) != v4)
        {
          v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v26)
          {
LABEL_14:
            while (!*&vceq_s8(v25, 0x8080808080808080))
            {
              v12 += 8;
              v24 = (v12 + v24) & v10;
              v25 = *(_X15 + v24);
              v26 = vceq_s8(v25, v23);
              if (v26)
              {
                goto LABEL_12;
              }
            }

            goto LABEL_7;
          }
        }
      }

      else if (v9[1] < 2uLL || *(v9 + 4) != v4)
      {
LABEL_7:
        v11 = *(result + 40);
        ++**(result + 32);
        v7[1] = v8;
        if ((*(*v11 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
        {
          result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(v9, &v29, v27);
          if (v28 == 1)
          {
            *v27[1] = v29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_0,std::allocator<operations_research::sat::BinaryImplicationGraph::TransformIntoMaxCliques(std::vector<std::vector<operations_research::sat::Literal>> *,long long)::$_0>,void ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat22BinaryImplicationGraph23TransformIntoMaxCliquesEPNSt3__16vectorINS3_INS0_7LiteralENS2_9allocatorIS4_EEEENS5_IS7_EEEExE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat22BinaryImplicationGraph23TransformIntoMaxCliquesEPNSt3__16vectorINS3_INS0_7LiteralENS2_9allocatorIS4_EEEENS5_IS7_EEEExE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat22BinaryImplicationGraph23TransformIntoMaxCliquesEPNSt3__16vectorINS3_INS0_7LiteralENS2_9allocatorIS4_EEEENS5_IS7_EEEExE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat22BinaryImplicationGraph23TransformIntoMaxCliquesEPNSt3__16vectorINS3_INS0_7LiteralENS2_9allocatorIS4_EEEENS5_IS7_EEEExE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] > v12->n128_f64[1])
      {
        v115 = *v12;
        *v12 = a2[-1];
        result = v115;
        a2[-1] = v115;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v52 = v12 + 1;
      v54 = v12 == a2 || v52 == a2;
      if (a4)
      {
        if (!v54)
        {
          v55 = 0;
          v56 = v12;
          do
          {
            result.n128_u64[0] = v56[1].n128_u64[1];
            v58 = v56->n128_f64[1];
            v56 = v52;
            if (result.n128_f64[0] > v58)
            {
              v59 = v52->n128_u64[0];
              v60 = v55;
              do
              {
                *(v12 + v60 + 16) = *(v12 + v60);
                if (!v60)
                {
                  v57 = v12;
                  goto LABEL_125;
                }

                v61 = *(&v12->n128_f64[-1] + v60);
                v60 -= 16;
              }

              while (result.n128_f64[0] > v61);
              v57 = (v12 + v60 + 16);
LABEL_125:
              v57->n128_u64[0] = v59;
              v57->n128_u64[1] = result.n128_u64[0];
            }

            v52 = v56 + 1;
            v55 += 16;
          }

          while (&v56[1] != a2);
        }
      }

      else if (!v54)
      {
        do
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v89 = a1->n128_f64[1];
          a1 = v52;
          if (result.n128_f64[0] > v89)
          {
            v90 = v52->n128_u64[0];
            do
            {
              *v52 = v52[-1];
              v91 = v52[-2].n128_f64[1];
              --v52;
            }

            while (result.n128_f64[0] > v91);
            v52->n128_u64[0] = v90;
            v52->n128_u64[1] = result.n128_u64[0];
          }

          v52 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v62 = (v13 - 2) >> 1;
        v63 = v62;
        do
        {
          v65 = 16 * v63;
          if (v62 >= (16 * v63) >> 4)
          {
            v66 = (v65 >> 3) | 1;
            v67 = &v12[v66];
            if ((v65 >> 3) + 2 < v13 && v67->n128_f64[1] > v67[1].n128_f64[1])
            {
              ++v67;
              v66 = (v65 >> 3) + 2;
            }

            v68 = &v12[v65 / 0x10];
            v69 = v68->n128_f64[1];
            if (v67->n128_f64[1] <= v69)
            {
              v70 = v68->n128_u64[0];
              do
              {
                v71 = v68;
                v68 = v67;
                *v71 = *v67;
                if (v62 < v66)
                {
                  break;
                }

                v72 = 2 * v66;
                v66 = (2 * v66) | 1;
                v67 = &v12[v66];
                v73 = v72 + 2;
                if (v73 < v13 && v67->n128_f64[1] > v67[1].n128_f64[1])
                {
                  ++v67;
                  v66 = v73;
                }
              }

              while (v67->n128_f64[1] <= v69);
              v68->n128_u64[0] = v70;
              v68->n128_f64[1] = v69;
            }
          }

          v64 = v63-- <= 0;
        }

        while (!v64);
        do
        {
          v74 = 0;
          v118 = *v12;
          v75 = (v13 - 2) >> 1;
          v76 = v12;
          do
          {
            while (1)
            {
              v81 = &v76[v74];
              v80 = v81 + 1;
              v82 = (2 * v74) | 1;
              v74 = 2 * v74 + 2;
              if (v74 < v13)
              {
                break;
              }

              v74 = v82;
              *v76 = *v80;
              v76 = v81 + 1;
              if (v82 > v75)
              {
                goto LABEL_156;
              }
            }

            v77 = v81[1].n128_f64[1];
            v78 = v81[2].n128_f64[1];
            v79 = v81 + 2;
            if (v77 <= v78)
            {
              v74 = v82;
            }

            else
            {
              v80 = v79;
            }

            *v76 = *v80;
            v76 = v80;
          }

          while (v74 <= v75);
LABEL_156:
          if (v80 == --a2)
          {
            result = v118;
            *v80 = v118;
          }

          else
          {
            *v80 = *a2;
            result = v118;
            *a2 = v118;
            v83 = (v80 - v12 + 16) >> 4;
            v64 = v83 < 2;
            v84 = v83 - 2;
            if (!v64)
            {
              v85 = v84 >> 1;
              v86 = &v12[v85];
              result.n128_u64[0] = v80->n128_u64[1];
              if (v86->n128_f64[1] > result.n128_f64[0])
              {
                v87 = v80->n128_u64[0];
                do
                {
                  v88 = v80;
                  v80 = v86;
                  *v88 = *v86;
                  if (!v85)
                  {
                    break;
                  }

                  v85 = (v85 - 1) >> 1;
                  v86 = &v12[v85];
                }

                while (v86->n128_f64[1] > result.n128_f64[0]);
                v80->n128_u64[0] = v87;
                v80->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v64 = v13-- <= 2;
        }

        while (!v64);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_f64[1];
    if (v13 < 0x81)
    {
      v17 = v12->n128_f64[1];
      if (v17 > v14->n128_f64[1])
      {
        if (v15 > v17)
        {
          v93 = *v14;
          *v14 = *v9;
          goto LABEL_36;
        }

        v102 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v102.n128_u64[1];
        *v12 = v102;
        if (a2[-1].n128_f64[1] > v12->n128_f64[1])
        {
          v93 = *v12;
          *v12 = *v9;
LABEL_36:
          result.n128_u64[1] = v93.n128_u64[1];
          *v9 = v93;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v15 <= v17)
      {
        goto LABEL_37;
      }

      v96 = *v12;
      *v12 = *v9;
      result.n128_u64[1] = v96.n128_u64[1];
      *v9 = v96;
      if (v12->n128_f64[1] <= v14->n128_f64[1])
      {
        goto LABEL_37;
      }

      v97 = *v14;
      *v14 = *v12;
      result.n128_u64[1] = v97.n128_u64[1];
      *v12 = v97;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      result.n128_u64[0] = v12->n128_u64[1];
      if (v12[-1].n128_f64[1] > result.n128_f64[0])
      {
        goto LABEL_62;
      }

      if (result.n128_f64[0] <= a2[-1].n128_f64[1])
      {
        v41 = v12 + 1;
        do
        {
          v12 = v41;
          if (v41 >= a2)
          {
            break;
          }

          v42 = v41->n128_f64[1];
          ++v41;
        }

        while (result.n128_f64[0] <= v42);
      }

      else
      {
        v39 = v12;
        do
        {
          v12 = v39 + 1;
          v40 = v39[1].n128_f64[1];
          ++v39;
        }

        while (result.n128_f64[0] <= v40);
      }

      v43 = a2;
      if (v12 < a2)
      {
        v44 = a2;
        do
        {
          v43 = v44 - 1;
          v45 = v44[-1].n128_f64[1];
          --v44;
        }

        while (result.n128_f64[0] > v45);
      }

      v46 = a1->n128_u64[0];
      while (v12 < v43)
      {
        v114 = *v12;
        *v12 = *v43;
        *v43 = v114;
        do
        {
          v47 = v12[1].n128_f64[1];
          ++v12;
        }

        while (result.n128_f64[0] <= v47);
        do
        {
          v48 = v43[-1].n128_f64[1];
          --v43;
        }

        while (result.n128_f64[0] > v48);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }

    else
    {
      v16 = v14->n128_f64[1];
      if (v16 <= v12->n128_f64[1])
      {
        if (v15 > v16)
        {
          v94 = *v14;
          *v14 = *v9;
          *v9 = v94;
          if (v14->n128_f64[1] > v12->n128_f64[1])
          {
            v95 = *v12;
            *v12 = *v14;
            *v14 = v95;
          }
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v98 = *v12;
          *v12 = *v14;
          *v14 = v98;
          if (a2[-1].n128_f64[1] <= v14->n128_f64[1])
          {
            goto LABEL_28;
          }

          v92 = *v14;
          *v14 = *v9;
        }

        else
        {
          v92 = *v12;
          *v12 = *v9;
        }

        *v9 = v92;
      }

LABEL_28:
      v18 = v14 - 1;
      v19 = v14[-1].n128_f64[1];
      v20 = a2[-2].n128_f64[1];
      if (v19 <= v12[1].n128_f64[1])
      {
        if (v20 > v19)
        {
          v100 = *v18;
          *v18 = *v10;
          *v10 = v100;
          if (v14[-1].n128_f64[1] > v12[1].n128_f64[1])
          {
            v101 = v12[1];
            v12[1] = *v18;
            *v18 = v101;
          }
        }
      }

      else
      {
        if (v20 <= v19)
        {
          v103 = v12[1];
          v12[1] = *v18;
          *v18 = v103;
          if (a2[-2].n128_f64[1] <= v14[-1].n128_f64[1])
          {
            goto LABEL_42;
          }

          v99 = *v18;
          *v18 = *v10;
        }

        else
        {
          v99 = v12[1];
          v12[1] = *v10;
        }

        *v10 = v99;
      }

LABEL_42:
      v21 = v14[1].n128_f64[1];
      v22 = a2[-3].n128_f64[1];
      if (v21 <= v12[2].n128_f64[1])
      {
        if (v22 > v21)
        {
          v105 = v14[1];
          v14[1] = *v11;
          *v11 = v105;
          if (v14[1].n128_f64[1] > v12[2].n128_f64[1])
          {
            v106 = v12[2];
            v12[2] = v14[1];
            v14[1] = v106;
          }
        }
      }

      else
      {
        if (v22 <= v21)
        {
          v107 = v12[2];
          v12[2] = v14[1];
          v14[1] = v107;
          if (a2[-3].n128_f64[1] <= v14[1].n128_f64[1])
          {
            goto LABEL_51;
          }

          v104 = v14[1];
          v14[1] = *v11;
        }

        else
        {
          v104 = v12[2];
          v12[2] = *v11;
        }

        *v11 = v104;
      }

LABEL_51:
      v23 = v14->n128_f64[1];
      v24 = v14[1].n128_f64[1];
      if (v23 <= v14[-1].n128_f64[1])
      {
        if (v24 > v23)
        {
          v109 = *v14;
          *v14 = v14[1];
          v14[1] = v109;
          if (v14->n128_f64[1] > v14[-1].n128_f64[1])
          {
            v110 = *v18;
            *v18 = *v14;
            *v14 = v110;
          }
        }
      }

      else
      {
        if (v24 <= v23)
        {
          v111 = *v18;
          *v18 = *v14;
          *v14 = v111;
          if (v14[1].n128_f64[1] <= v14->n128_f64[1])
          {
            goto LABEL_60;
          }

          v108 = *v14;
          *v14 = v14[1];
        }

        else
        {
          v108 = *v18;
          *v18 = v14[1];
        }

        v14[1] = v108;
      }

LABEL_60:
      v112 = *v12;
      *v12 = *v14;
      result.n128_u64[1] = v112.n128_u64[1];
      *v14 = v112;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      result.n128_u64[0] = v12->n128_u64[1];
LABEL_62:
      v25 = 0;
      v26 = v12->n128_u64[0];
      do
      {
        v27 = v12[++v25].n128_f64[1];
      }

      while (v27 > result.n128_f64[0]);
      v28 = &v12[v25];
      v29 = a2;
      if (v25 == 1)
      {
        v32 = a2;
        while (v28 < v32)
        {
          v30 = v32 - 1;
          v33 = v32[-1].n128_f64[1];
          --v32;
          if (v33 > result.n128_f64[0])
          {
            goto LABEL_70;
          }
        }

        v30 = v32;
        v12 = v28;
      }

      else
      {
        do
        {
          v30 = v29 - 1;
          v31 = v29[-1].n128_f64[1];
          --v29;
        }

        while (v31 <= result.n128_f64[0]);
LABEL_70:
        v12 = v28;
        if (v28 < v30)
        {
          v34 = v30;
          do
          {
            v113 = *v12;
            *v12 = *v34;
            *v34 = v113;
            do
            {
              v35 = v12[1].n128_f64[1];
              ++v12;
            }

            while (v35 > result.n128_f64[0]);
            do
            {
              v36 = v34[-1].n128_f64[1];
              --v34;
            }

            while (v36 <= result.n128_f64[0]);
          }

          while (v12 < v34);
        }
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u64[0] = v26;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v28 < v30)
      {
        goto LABEL_81;
      }

      v37 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *>(v12, a2, v38))
      {
        a2 = v12 - 1;
        if (!v37)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v37)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v50 = v12[1].n128_f64[1];
      v51 = v12[2].n128_f64[1];
      if (v50 <= v12->n128_f64[1])
      {
        if (v51 > v50)
        {
          v120 = v12[1];
          v12[1] = v12[2];
          result.n128_u64[1] = v120.n128_u64[1];
          v12[2] = v120;
          if (v12[1].n128_f64[1] > v12->n128_f64[1])
          {
            v121 = *v12;
            *v12 = v12[1];
            result.n128_u64[1] = v121.n128_u64[1];
            v12[1] = v121;
          }
        }
      }

      else
      {
        if (v51 > v50)
        {
          v117 = *v12;
          *v12 = v12[2];
          goto LABEL_180;
        }

        v123 = *v12;
        *v12 = v12[1];
        result.n128_u64[1] = v123.n128_u64[1];
        v12[1] = v123;
        if (v12[2].n128_f64[1] > v12[1].n128_f64[1])
        {
          v117 = v12[1];
          v12[1] = v12[2];
LABEL_180:
          result.n128_u64[1] = v117.n128_u64[1];
          v12[2] = v117;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] <= v12[2].n128_f64[1])
      {
        return result;
      }

      v124 = v12[2];
      v12[2] = *v9;
      result.n128_u64[1] = v124.n128_u64[1];
      *v9 = v124;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] <= v12[1].n128_f64[1])
      {
        return result;
      }

      v125 = v12[1];
      v12[1] = v12[2];
      result.n128_u64[1] = v125.n128_u64[1];
      v12[2] = v125;
LABEL_184:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] > v12->n128_f64[1])
      {
        v126 = *v12;
        *v12 = v12[1];
        result = v126;
        v12[1] = v126;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v49 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] <= v12->n128_f64[1])
  {
    if (v49 <= result.n128_f64[0])
    {
      return result;
    }

    v119 = v12[1];
    v12[1] = *v9;
    result.n128_u64[1] = v119.n128_u64[1];
    *v9 = v119;
    goto LABEL_184;
  }

  if (v49 <= result.n128_f64[0])
  {
    v122 = *v12;
    *v12 = v12[1];
    result.n128_u64[1] = v122.n128_u64[1];
    v12[1] = v122;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] <= v12[1].n128_f64[1])
    {
      return result;
    }

    v116 = v12[1];
    v12[1] = *v9;
  }

  else
  {
    v116 = *v12;
    *v12 = *v9;
  }

  result = v116;
  *v9 = v116;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 <= a1->n128_f64[1])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] > a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f64[1] > a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] > a3->n128_f64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f64[1] > a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] > a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] > a4->n128_f64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] > a3->n128_f64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] > a2->n128_f64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] > a1->n128_f64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_f64[1];
      v8 = a2[-1].n128_f64[1];
      if (v7 > a1->n128_f64[1])
      {
        if (v8 <= v7)
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
          if (a2[-1].n128_f64[1] <= a1[1].n128_f64[1])
          {
            return 1;
          }

          v9 = a1[1];
          a1[1] = *v6;
        }

        else
        {
          v9 = *a1;
          *a1 = *v6;
        }

        *v6 = v9;
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
      if (a1[1].n128_f64[1] <= a1->n128_f64[1])
      {
        return 1;
      }

LABEL_52:
      v37 = *a1;
      *a1 = a1[1];
      a1[1] = v37;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(std::vector<operations_research::sat::Literal> const&,std::vector<double> const&)::Candidate *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

LABEL_14:
      v10 = a1 + 2;
      v11 = a1[1].n128_f64[1];
      v12 = a1->n128_f64[1];
      v13 = a1[2].n128_f64[1];
      if (v11 <= v12)
      {
        if (v13 > v11)
        {
          v20 = a1[1];
          a1[1] = *v10;
          *v10 = v20;
          if (a1[1].n128_f64[1] > v12)
          {
            v21 = *a1;
            *a1 = a1[1];
            a1[1] = v21;
          }
        }
      }

      else
      {
        if (v13 <= v11)
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
          if (v13 <= a1[1].n128_f64[1])
          {
            goto LABEL_35;
          }

          v14 = a1[1];
          a1[1] = *v10;
        }

        else
        {
          v14 = *a1;
          *a1 = *v10;
        }

        *v10 = v14;
      }

LABEL_35:
      v26 = a1 + 3;
      if (&a1[3] == a2)
      {
        return 1;
      }

      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v26->n128_f64[1];
        if (v29 > v10->n128_f64[1])
        {
          break;
        }

LABEL_38:
        v10 = v26;
        v27 += 16;
        if (++v26 == a2)
        {
          return 1;
        }
      }

      v30 = v26->n128_u64[0];
      v31 = v27;
      do
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          a1->n128_u64[0] = v30;
          a1->n128_f64[1] = v29;
          if (++v28 != 8)
          {
            goto LABEL_38;
          }

          return &v26[1] == a2;
        }

        v32 = *(&a1[1].n128_f64[1] + v31);
        v31 -= 16;
      }

      while (v29 > v32);
      v33 = a1 + v31;
      *(v33 + 6) = v30;
      *(v33 + 7) = v29;
      if (++v28 != 8)
      {
        goto LABEL_38;
      }

      return &v26[1] == a2;
    }

    v15 = a1[1].n128_f64[1];
    v16 = a1->n128_f64[1];
    v17 = a1[2].n128_f64[1];
    if (v15 <= v16)
    {
      if (v17 > v15)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_f64[1] > v16)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }
    }

    else
    {
      if (v17 > v15)
      {
        v18 = *a1;
        *a1 = a1[2];
LABEL_48:
        a1[2] = v18;
        goto LABEL_49;
      }

      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v17 > a1[1].n128_f64[1])
      {
        v18 = a1[1];
        a1[1] = a1[2];
        goto LABEL_48;
      }
    }

LABEL_49:
    if (a2[-1].n128_f64[1] <= a1[2].n128_f64[1])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_f64[1] <= a1[1].n128_f64[1])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    if (a1[1].n128_f64[1] <= a1->n128_f64[1])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].n128_f64[1] <= a1->n128_f64[1])
  {
    return 1;
  }

  v5 = *a1;
  *a1 = a2[-1];
  a2[-1] = v5;
  return 1;
}

void *std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23C9F7470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

int *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<int,int>>,std::__wrap_iter<std::pair<int,int>*>>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v7 = v6;
      v6 += 2 * v4 + 2;
      v8 = 2 * v4;
      v4 = (2 * v4) | 1;
      v9 = v8 + 2;
      if (v9 < a4)
      {
        v10 = v6[2];
        if (*v6 < v10 || v10 >= *v6 && v6[1] < v6[3])
        {
          v6 += 2;
          v4 = v9;
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
      v11 = (v6 - result + 8) >> 3;
      v12 = v11 - 2;
      if (v11 >= 2)
      {
        v13 = v12 >> 1;
        v14 = &result[2 * (v12 >> 1)];
        v15 = *v14;
        if (*v14 < *v6 || *v6 >= v15 && v14[1] < v6[1])
        {
          v16 = *v6;
          v17 = v6[1];
          *v6 = v15;
          v6[1] = v14[1];
          if (v12 >= 2)
          {
            v18 = &result[2 * (v12 >> 1)];
            while (1)
            {
              v19 = v13 - 1;
              v13 = (v13 - 1) >> 1;
              v14 = &result[2 * v13];
              v20 = *v14;
              if (*v14 >= v16 && (v20 > v16 || v14[1] >= v17))
              {
                break;
              }

              *v18 = v20;
              v18[1] = v14[1];
              v18 = &result[2 * v13];
              if (v19 <= 1)
              {
                goto LABEL_20;
              }
            }

            v14 = v18;
          }

LABEL_20:
          *v14 = v16;
          v14[1] = v17;
        }
      }
    }
  }

  return result;
}

void *std::deque<std::vector<operations_research::sat::Literal>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v11);
}

void sub_23C9F7978(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::AbslStringify<absl::lts_20240722::log_internal::StringifySink>(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = ~(a2 >> 1);
  }

  else
  {
    v3 = ((a2 >> 1) + 1);
  }

  v7 = v3;
  v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, &v7, 1uLL, __p);
  v7 = __p;
  v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatUntyped(a1, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::log_internal::StringifySink>, "%s", 2, &v7, 1uLL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23C9F7AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::operator<<(void *a1, int *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = *a2 >> 1;
    if (*a2)
    {
      v7 = ~v6;
    }

    else
    {
      v7 = (v6 + 1);
    }

    v22 = v7;
    v23 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
    absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, &v22, 1uLL, &__p);
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v9 = v21;
    }

    else
    {
      v9 = v20;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, v9);
    v10 = 4 * a3;
    if (v21 < 0)
    {
      operator delete(__p);
      v11 = v10 - 4;
      if (v10 == 4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v10 - 4;
      if (v10 == 4)
      {
        goto LABEL_15;
      }
    }

    v14 = a2 + 1;
    do
    {
      v15 = *v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ",", 1);
      if (v15)
      {
        v16 = ~(v15 >> 1);
      }

      else
      {
        v16 = ((v15 >> 1) + 1);
      }

      v22 = v16;
      v23 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, &v22, 1uLL, &__p);
      if ((v21 & 0x80u) == 0)
      {
        v17 = &__p;
      }

      else
      {
        v17 = __p;
      }

      if ((v21 & 0x80u) == 0)
      {
        v18 = v21;
      }

      else
      {
        v18 = v20;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v17, v18);
      if (v21 < 0)
      {
        operator delete(__p);
      }

      ++v14;
      v11 -= 4;
    }

    while (v11);
  }

LABEL_15:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23C9F7CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DenseConnectedComponentsFinder::SetNumberOfNodes(std::vector<int> *this, int a2)
{
  begin = this->__begin_;
  end = this->__end_;
  v4 = end - this->__begin_;
  v5 = v4 >> 2;
  if (a2 == (v4 >> 2))
  {
    return;
  }

  v6 = a2;
  v7 = a2 - v5;
  if (a2 <= v5)
  {
    DenseConnectedComponentsFinder::SetNumberOfNodes(end - this->__begin_, a2);
  }

  v9 = a2 - (v4 >> 2);
  if (v6 <= v4 >> 2)
  {
    if (v6 < v4 >> 2)
    {
      end = &begin[v6];
      this->__end_ = end;
    }
  }

  else
  {
    std::vector<int>::__append(this, v9);
    begin = this->__begin_;
    end = this->__end_;
  }

  v10 = &begin[(v4 >> 2)];
  if (v10 != end)
  {
    v11 = end - v10 - 4;
    if (v11 >= 0x1C)
    {
      v13 = (v11 >> 2) + 1;
      LODWORD(v11) = v5 + (v13 & 0xFFFFFFF8);
      v12 = &v10->i32[v13 & 0x7FFFFFFFFFFFFFF8];
      v14 = vaddq_s32(vdupq_n_s32(v5), xmmword_23CE38660);
      v15 = v10 + 1;
      v16.i64[0] = 0x400000004;
      v16.i64[1] = 0x400000004;
      v17.i64[0] = 0x800000008;
      v17.i64[1] = 0x800000008;
      v18 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s32(v14, v16);
        v14 = vaddq_s32(v14, v17);
        v15 += 2;
        v18 -= 8;
      }

      while (v18);
      if (v13 == (v13 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = v4 >> 2;
      v12 = v10;
    }

    do
    {
      *v12++ = v11;
      LODWORD(v11) = v11 + 1;
    }

    while (v12 != end);
  }

LABEL_14:
  v23[0] = 1;
  v19 = this[1].__begin_;
  v20 = this[1].__end_ - v19;
  if (v6 <= v20)
  {
    if (v6 < v20)
    {
      this[1].__end_ = &v19[v6];
    }
  }

  else
  {
    std::vector<int>::__append(this + 1, v6 - v20, v23);
  }

  v21 = this[2].__begin_;
  v22 = this[2].__end_ - v21;
  if (v6 <= v22)
  {
    if (v6 < v22)
    {
      this[2].__end_ = &v21[v6];
    }
  }

  else
  {
    std::vector<int>::__append(this + 2, v6 - v22);
  }

  LODWORD(this[3].__begin_) += v7;
}

uint64_t DenseConnectedComponentsFinder::FindRoot(DenseConnectedComponentsFinder *this, int a2)
{
  v2 = *this;
  v3 = *(*this + 4 * a2);
  do
  {
    result = v3;
    v3 = *(v2 + 4 * v3);
  }

  while (v3 != result);
  if (result != a2)
  {
    do
    {
      v5 = *(v2 + 4 * a2);
      *(v2 + 4 * a2) = result;
      a2 = v5;
    }

    while (v5 != result);
  }

  return result;
}

BOOL DenseConnectedComponentsFinder::AddEdge(std::vector<int> *this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (a2 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  v7 = v6 + 1;
  begin = this->__begin_;
  if (v7 > ((this->__end_ - this->__begin_) >> 2))
  {
    DenseConnectedComponentsFinder::SetNumberOfNodes(this, v7);
    begin = this->__begin_;
  }

  v9 = begin[v4];
  do
  {
    v10 = v9;
    v9 = begin[v9];
  }

  while (v9 != v10);
  if (v10 != v4)
  {
    do
    {
      v11 = begin[v4];
      begin[v4] = v10;
      v4 = v11;
    }

    while (v11 != v10);
  }

  v12 = begin[v3];
  do
  {
    v13 = v12;
    v12 = begin[v12];
  }

  while (v12 != v13);
  if (v13 != v3)
  {
    do
    {
      v14 = begin[v3];
      begin[v3] = v13;
      v3 = v14;
    }

    while (v14 != v13);
  }

  if (v10 == v13)
  {
    return v10 != v13;
  }

  --LODWORD(this[3].__begin_);
  v15 = this[1].__begin_;
  v16 = v15[v13] + v15[v10];
  v17 = this[2].__begin_;
  if (v17[v10] > v17[v13])
  {
    begin[v13] = v10;
    v15[v10] = v16;
    return v10 != v13;
  }

  begin[v10] = v13;
  v15[v13] = v16;
  v19 = v17[v10];
  if (v19 != v17[v13])
  {
    return v10 != v13;
  }

  v17[v13] = v19 + 1;
  return v10 != v13;
}

uint64_t *DenseConnectedComponentsFinder::GetComponentIds@<X0>(uint64_t *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v4 = this[1] - *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if ((v4 >> 2))
  {
    if (!((v4 >> 2) >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if ((v4 >> 2) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (v4 >> 2) & 0x7FFFFFFF;
    do
    {
      while (1)
      {
        v9 = *(v3 + 4 * v5);
        do
        {
          v10 = v9;
          v9 = *(v3 + 4 * v9);
        }

        while (v9 != v10);
        if (v5 != v10)
        {
          v11 = v5;
          do
          {
            v12 = *(v3 + 4 * v11);
            *(v3 + 4 * v11) = v10;
            v11 = v12;
          }

          while (v12 != v10);
        }

        v8 = *(4 * v10);
        if (v8 < 0)
        {
          break;
        }

        *(4 * v5++) = v8;
        if (v5 == v7)
        {
          return this;
        }
      }

      *(4 * v10) = v6;
      v13 = v6++;
      *(4 * v5++) = v13;
    }

    while (v5 != v7);
  }

  return this;
}

uint64_t operations_research::sat::LinearIncrementalEvaluator::NewConstraint(unsigned int *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {
    v5 = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain const&>(a1 + 1, a2);
  }

  else
  {
    *v3 = 0;
    v4 = *a2;
    if (*a2 >= 2uLL)
    {
      if (v4)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(v3, a2);
      }

      else
      {
        *v3 = v4;
        *(v3 + 8) = *(a2 + 8);
      }
    }

    v5 = v3 + 24;
    *(a1 + 2) = v3 + 24;
  }

  *(a1 + 2) = v5;
  v11 = 0;
  std::vector<long long>::push_back[abi:ne200100](a1 + 4, &v11);
  v11 = 0;
  std::vector<long long>::push_back[abi:ne200100](a1 + 50, &v11);
  LODWORD(v11) = 0;
  std::vector<int>::push_back[abi:ne200100]((a1 + 112), &v11);
  v11 = 0;
  std::vector<long long>::push_back[abi:ne200100](a1 + 53, &v11);
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  if (v6 == v7 << 6)
  {
    if ((v6 + 1) < 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 << 7;
    if (v8 <= (v6 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v8 = (v6 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v6 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve((a1 + 94), v9);
    v6 = *(a1 + 48);
  }

  *(a1 + 48) = v6 + 1;
  *(*(a1 + 47) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v6);
  result = *a1;
  *a1 = result + 1;
  return result;
}

void sub_23C9F8260(_Unwind_Exception *exception_object)
{
  if (*v2)
  {
    operator delete(*(v2 + 8));
  }

  *(v1 + 16) = v2;
  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::LinearIncrementalEvaluator::LiteralEntry>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}