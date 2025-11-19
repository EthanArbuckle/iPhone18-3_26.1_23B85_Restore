uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(uint64_t a1, uint64_t *a2)
{
  v28 = 0;
  v4 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v28);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = v7;
  v9 = *a2;
  *a2 = 0;
  *(v5 + 8 * v7) = v9;
  v10 = *a1;
  v11 = *a1;
  if (!v7)
  {
    goto LABEL_18;
  }

  v12 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v12 < 0xB)
  {
    v13 = v6;
    do
    {
LABEL_12:
      v22 = *v11;
      *v11++ = 0;
      *v13++ = v22;
    }

    while (v11 != &v10[v8]);
    goto LABEL_13;
  }

  v14 = v10 >= v6 + v8 * 8 || v6 >= &v10[v8];
  v13 = v6;
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v12 + 1;
  v16 = v15 & 0x3FFFFFFFFFFFFFFCLL;
  v13 = (v6 + v16 * 8);
  v11 = &v10[v16];
  v17 = (v10 + 2);
  v18 = (v6 + 16);
  v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = *(v17 - 1);
    v21 = *v17;
    *(v17 - 1) = 0uLL;
    *v17 = 0uLL;
    *(v18 - 1) = v20;
    *v18 = v21;
    v17 += 2;
    v18 += 2;
    v19 -= 4;
  }

  while (v19);
  if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  v23 = v10 - 1;
  do
  {
    v24 = v23[v8];
    v23[v8] = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    --v8;
  }

  while (v8 * 8);
  v11 = *a1;
LABEL_18:
  v25 = v28;
  if (v11 != v4)
  {
    free(v11);
  }

  *a1 = v6;
  v26 = *(a1 + 8) + 1;
  *(a1 + 8) = v26;
  *(a1 + 12) = v25;
  return v6 + 8 * v26 - 8;
}

mlir::bytecode::detail::IRNumberingState *mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2, const mlir::BytecodeWriterConfig *a3)
{
  v183[16] = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 24) = 0u;
  v5 = this + 24;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 18) = this + 160;
  *(this + 16) = 0u;
  *(this + 62) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 34) = this + 288;
  *(this + 35) = 0x400000000;
  *(this + 40) = this + 336;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0;
  *(this + 46) = this + 384;
  *(this + 47) = 0x400000000;
  *(this + 52) = this + 432;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 57) = 0;
  *(this + 58) = this + 480;
  *(this + 59) = 0x400000000;
  *(this + 64) = this + 528;
  *(this + 69) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 70) = this + 576;
  *(this + 71) = 0x400000000;
  *(this + 76) = this + 624;
  *(this + 81) = 0;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 82) = this + 672;
  *(this + 83) = 0x400000000;
  *(this + 88) = this + 720;
  *(this + 93) = 0;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 94) = this + 768;
  *(this + 95) = 0x400000000;
  *(this + 100) = this + 816;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 224) = 0;
  *(this + 55) = 0u;
  *(this + 230) = 0;
  *(this + 904) = 0u;
  *(this + 232) = 0;
  *(this + 836) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 117) = a3;
  LODWORD(v178) = 0;
  v181 = v183;
  v182 = 0x200000000;
  *&v175 = &v181;
  *(&v175 + 1) = this;
  v176 = &v178;
  mlir::detail::walk(a2, llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>, &v175);
  if (v181 != v183)
  {
    free(v181);
  }

  mlir::bytecode::detail::IRNumberingState::number(this, a2);
  v181 = v183;
  v182 = 0x800000000;
  v174 = a2;
  v6 = *(a2 + 11);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_67;
  }

  v8 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  *&v175 = v174;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5, &v175);
  if (*(*v9 + 5) & 1) != 0 && (*(*v9 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 232);
  }

  LODWORD(v178) = v10;
  v11 = 24 * v7;
  do
  {
    while (1)
    {
      *&v175 = v8;
      v12 = v182;
      if (v182 >= HIDWORD(v182))
      {
        break;
      }

      v13 = v181 + 16 * v182;
      *v13 = v8;
      *(v13 + 2) = v178;
      LODWORD(v182) = v12 + 1;
      v8 += 24;
      v11 -= 24;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(&v181, &v175, &v178);
    v8 += 24;
    v11 -= 24;
  }

  while (v11);
LABEL_13:
  v14 = v182;
  if (!v182)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v15 = v181 + 16 * v14;
    v17 = *(v15 - 2);
    v16 = *(v15 - 1);
    LODWORD(v182) = v14 - 1;
    *(this + 232) = v16;
    mlir::bytecode::detail::IRNumberingState::number(this, v17);
    mlir::Region::OpIterator::OpIterator(&v178, v17, 0);
    mlir::Region::OpIterator::OpIterator(v177, v17, 1);
    v19 = v179;
    v176 = v179;
    v175 = v178;
    v20 = v177[2];
    while (v19 != v20)
    {
      v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v19, v18);
      v22 = *(v21 + 44);
      if ((v22 & 0x7FFFFF) == 0)
      {
        goto LABEL_17;
      }

      v23 = *(v21 + 40);
      v24 = *(this + 10);
      if (!v24)
      {
        goto LABEL_49;
      }

      v25 = *(this + 3);
      v26 = v24 - 1;
      v27 = (v24 - 1) & ((v21 >> 4) ^ (v21 >> 9));
      v28 = (v25 + 16 * v27);
      v29 = *v28;
      if (v21 != *v28)
      {
        v30 = 0;
        v31 = 1;
        while (v29 != -4096)
        {
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v29 == -8192;
          }

          if (v32)
          {
            v30 = v28;
          }

          v33 = v27 + v31++;
          v27 = v33 & v26;
          v28 = (v25 + 16 * (v33 & v26));
          v29 = *v28;
          if (v21 == *v28)
          {
            goto LABEL_36;
          }
        }

        if (v30)
        {
          v28 = v30;
        }

        v42 = *(this + 8);
        if (4 * v42 + 4 < 3 * v24)
        {
          if (v24 + ~v42 - *(this + 9) > v24 >> 3)
          {
            *(this + 8) = v42 + 1;
            if (*v28 == -4096)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          v43 = v21;
          llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v5, v24);
          v44 = *(this + 10);
          if (v44)
          {
            goto LABEL_50;
          }
        }

        else
        {
LABEL_49:
          v43 = v21;
          llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v5, 2 * v24);
          v44 = *(this + 10);
          if (v44)
          {
LABEL_50:
            v45 = *(this + 3);
            v21 = v43;
            v46 = v44 - 1;
            v47 = (v44 - 1) & ((v43 >> 4) ^ (v43 >> 9));
            v28 = (v45 + 16 * v47);
            v48 = *v28;
            if (v43 != *v28)
            {
              v49 = 0;
              v50 = 1;
              while (v48 != -4096)
              {
                if (v49)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v48 == -8192;
                }

                if (v51)
                {
                  v49 = v28;
                }

                v52 = v47 + v50++;
                v47 = v52 & v46;
                v28 = (v45 + 16 * (v52 & v46));
                v48 = *v28;
                if (v43 == *v28)
                {
                  goto LABEL_62;
                }
              }

              if (v49)
              {
                v28 = v49;
              }
            }

LABEL_62:
            ++*(this + 8);
            if (*v28 == -4096)
            {
LABEL_35:
              *v28 = v21;
              v28[1] = 0;
              goto LABEL_36;
            }

LABEL_34:
            --*(this + 9);
            goto LABEL_35;
          }
        }

        v28 = 0;
        v21 = v43;
        goto LABEL_62;
      }

LABEL_36:
      v34 = v28[1];
      if (*(v34 + 5) == 1 && (*(v34 + 4) & 1) != 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(this + 232);
      }

      v36 = v21 + 16 * ((v22 >> 23) & 1) + ((v22 >> 21) & 0x7F8) + 32 * v23 + 64;
      v37 = v182;
      v38 = 24 * (v22 & 0x7FFFFF);
      v39 = v36;
      do
      {
        while (v37 < HIDWORD(v182))
        {
          v40 = v181 + 16 * v37;
          *v40 = v39;
          *(v40 + 2) = v35;
          LODWORD(v182) = ++v37;
          v39 += 24;
          v36 += 24;
          v38 -= 24;
          if (!v38)
          {
            goto LABEL_17;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&v181, v183, v37 + 1, 16);
        v41 = (v181 + 16 * v182);
        *v41 = v36;
        v41[1] = v35;
        v37 = v182 + 1;
        LODWORD(v182) = v182 + 1;
        v39 += 24;
        v36 += 24;
        v38 -= 24;
      }

      while (v38);
LABEL_17:
      mlir::Region::OpIterator::operator++(&v178);
      v19 = v179;
    }

    v14 = v182;
    if (v182)
    {
      continue;
    }

    break;
  }

LABEL_67:
  v53 = *(this + 38);
  if (v53)
  {
    v54 = *(this + 18);
    v55 = 24 * v53 - 24;
    if (v55 <= 0x17)
    {
      LODWORD(v56) = 0;
      v57 = *(this + 18);
      goto LABEL_73;
    }

    v58 = 0;
    v59 = v55 / 0x18 + 1;
    v56 = v59 & 0x1FFFFFFFFFFFFFFELL;
    v57 = v54 + 24 * (v59 & 0x1FFFFFFFFFFFFFFELL);
    v60 = (v54 + 40);
    do
    {
      v61 = *(v60 - 3);
      v62 = *v60;
      v60 += 6;
      *(v61 + 16) = v58;
      *(v62 + 16) = v58 + 1;
      v58 += 2;
    }

    while (v56 != v58);
    if (v59 != v56)
    {
LABEL_73:
      v63 = v54 + 24 * v53;
      do
      {
        *(*(v57 + 16) + 16) = v56;
        LODWORD(v56) = v56 + 1;
        v57 += 24;
      }

      while (v57 != v63);
    }
  }

  v64 = *(this + 20);
  v65 = *(this + 21);
  if (&v65[-v64] >> 3 < 129)
  {
    v69 = 0;
LABEL_81:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v64, v65, &v65[-v64] >> 3, 0, v69);
    v71 = *(this + 23);
    v72 = *(this + 24);
    v73 = &v72[-v71] >> 3;
    if (v73 >= 129)
    {
      goto LABEL_82;
    }

LABEL_87:
    v77 = 0;
LABEL_88:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v71, v72, v73, 0, v77);
    v79 = *(this + 26);
    v80 = *(this + 27);
    v81 = &v80[-v79] >> 3;
    if (v81 >= 129)
    {
      goto LABEL_89;
    }

LABEL_94:
    v85 = 0;
LABEL_95:
    v87.n128_f64[0] = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v79, v80, v81, 0, v85);
    v89 = *(this + 20);
    v88 = *(this + 21);
    v90 = v88 - v89;
    v91 = v174;
    if (v88 == v89)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v66 = MEMORY[0x1E69E5398];
    v67 = &v65[-v64] >> 3;
    while (1)
    {
      v68 = operator new(8 * v67, v66);
      if (v68)
      {
        break;
      }

      v69 = v67 >> 1;
      v70 = v67 > 1;
      v67 >>= 1;
      if (!v70)
      {
        goto LABEL_81;
      }
    }

    v78 = v68;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v64, v65, &v65[-v64] >> 3, v68, v67);
    operator delete(v78);
    v71 = *(this + 23);
    v72 = *(this + 24);
    v73 = &v72[-v71] >> 3;
    if (v73 < 129)
    {
      goto LABEL_87;
    }

LABEL_82:
    v74 = MEMORY[0x1E69E5398];
    v75 = v73;
    while (1)
    {
      v76 = operator new(8 * v75, v74);
      if (v76)
      {
        break;
      }

      v77 = v75 >> 1;
      v70 = v75 > 1;
      v75 >>= 1;
      if (!v70)
      {
        goto LABEL_88;
      }
    }

    v86 = v76;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v71, v72, v73, v76, v75);
    operator delete(v86);
    v79 = *(this + 26);
    v80 = *(this + 27);
    v81 = &v80[-v79] >> 3;
    if (v81 < 129)
    {
      goto LABEL_94;
    }

LABEL_89:
    v82 = MEMORY[0x1E69E5398];
    v83 = v81;
    while (1)
    {
      v84 = operator new(8 * v83, v82);
      if (v84)
      {
        break;
      }

      v85 = v83 >> 1;
      v70 = v83 > 1;
      v83 >>= 1;
      if (!v70)
      {
        goto LABEL_95;
      }
    }

    v92 = v84;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v79, v80, v81, v84, v83);
    operator delete(v92);
    v89 = *(this + 20);
    v88 = *(this + 21);
    v90 = v88 - v89;
    v91 = v174;
    if (v88 == v89)
    {
      goto LABEL_118;
    }
  }

  v171 = v88;
  v93 = 0;
  v165 = v90;
  v94 = v90 >> 3;
  LODWORD(v178) = 0;
  v95 = MEMORY[0x1E69E5398];
  v96 = 1;
  v168 = v89;
  v97 = v89;
  while (2)
  {
    v93 = (1 << (7 * v96)) - v93;
    if (v94 >= v93)
    {
      v98 = v93;
    }

    else
    {
      v98 = v94;
    }

    v99 = &v97->n128_i8[8 * v98];
    *&v175 = &v180;
    *(&v175 + 1) = &v178;
    if (v98 >= 129)
    {
      v100 = v98;
      while (1)
      {
        v101 = operator new(8 * v100, v95);
        if (v101)
        {
          break;
        }

        v102 = v100 >> 1;
        v70 = v100 > 1;
        v100 >>= 1;
        if (!v70)
        {
          goto LABEL_108;
        }
      }

      v103 = v101;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v97, (v97 + 8 * v98), &v175, v98, v101, v100);
      operator delete(v103);
      LODWORD(v178) = *(*(*(v99 - 1) + 16) + 16);
      v94 -= v98;
      if (!v94)
      {
        break;
      }

      goto LABEL_111;
    }

    v102 = 0;
LABEL_108:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v97, (v97 + 8 * v98), &v175, v98, 0, v102);
    LODWORD(v178) = *(*(*(v99 - 1) + 16) + 16);
    v94 -= v98;
    if (v94)
    {
LABEL_111:
      ++v96;
      v97 = (v97 + 8 * v98);
      if (v96 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v165 - 8) <= 7)
  {
    LODWORD(v104) = 0;
    v105 = v168;
    v106 = v171;
    v91 = v174;
    goto LABEL_117;
  }

  v107 = 0;
  v108 = ((v165 - 8) >> 3) + 1;
  v104 = v108 & 0x3FFFFFFFFFFFFFFELL;
  v106 = v171;
  v105 = (v168 + 8 * (v108 & 0x3FFFFFFFFFFFFFFELL));
  v109 = &v168->n128_u64[1];
  v91 = v174;
  do
  {
    v110 = *v109;
    *(*(v109 - 1) + 8) = v107;
    *(v110 + 8) = v107 + 1;
    v107 += 2;
    v109 += 2;
  }

  while (v104 != v107);
  if (v108 != v104)
  {
    do
    {
LABEL_117:
      v111 = v105->n128_u64[0];
      v105 = (v105 + 8);
      *(v111 + 8) = v104;
      LODWORD(v104) = v104 + 1;
    }

    while (v105 != v106);
  }

LABEL_118:
  v113 = *(this + 23);
  v112 = *(this + 24);
  if (v112 == v113)
  {
    goto LABEL_139;
  }

  v172 = *(this + 24);
  v114 = 0;
  v166 = v112 - v113;
  v115 = (v112 - v113) >> 3;
  LODWORD(v178) = 0;
  v116 = MEMORY[0x1E69E5398];
  v117 = 1;
  v169 = v113;
  v118 = v113;
  while (2)
  {
    v114 = (1 << (7 * v117)) - v114;
    if (v115 >= v114)
    {
      v119 = v114;
    }

    else
    {
      v119 = v115;
    }

    v120 = &v118->n128_i8[8 * v119];
    *&v175 = &v180;
    *(&v175 + 1) = &v178;
    if (v119 >= 129)
    {
      v121 = v119;
      while (1)
      {
        v122 = operator new(8 * v121, v116);
        if (v122)
        {
          break;
        }

        v123 = v121 >> 1;
        v70 = v121 > 1;
        v121 >>= 1;
        if (!v70)
        {
          goto LABEL_129;
        }
      }

      v124 = v122;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v118, (v118 + 8 * v119), &v175, v119, v122, v121);
      operator delete(v124);
      LODWORD(v178) = *(**(v120 - 1) + 16);
      v115 -= v119;
      if (!v115)
      {
        break;
      }

      goto LABEL_132;
    }

    v123 = 0;
LABEL_129:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v118, (v118 + 8 * v119), &v175, v119, 0, v123);
    LODWORD(v178) = *(**(v120 - 1) + 16);
    v115 -= v119;
    if (v115)
    {
LABEL_132:
      ++v117;
      v118 = (v118 + 8 * v119);
      if (v117 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v166 - 8) <= 7)
  {
    LODWORD(v125) = 0;
    v126 = v169;
    v127 = v172;
    v91 = v174;
    goto LABEL_138;
  }

  v128 = 0;
  v129 = ((v166 - 8) >> 3) + 1;
  v125 = v129 & 0x3FFFFFFFFFFFFFFELL;
  v127 = v172;
  v126 = (v169 + 8 * (v129 & 0x3FFFFFFFFFFFFFFELL));
  v130 = &v169->n128_u64[1];
  v91 = v174;
  do
  {
    v131 = *v130;
    *(*(v130 - 1) + 16) = v128;
    *(v131 + 16) = v128 + 1;
    v128 += 2;
    v130 += 2;
  }

  while (v125 != v128);
  if (v129 != v125)
  {
    do
    {
LABEL_138:
      v132 = v126->n128_u64[0];
      v126 = (v126 + 8);
      *(v132 + 16) = v125;
      LODWORD(v125) = v125 + 1;
    }

    while (v126 != v127);
  }

LABEL_139:
  v134 = *(this + 26);
  v133 = *(this + 27);
  if (v133 == v134)
  {
    goto LABEL_160;
  }

  v173 = *(this + 27);
  v135 = 0;
  v167 = v133 - v134;
  v136 = (v133 - v134) >> 3;
  LODWORD(v178) = 0;
  v137 = MEMORY[0x1E69E5398];
  v138 = 1;
  v170 = v134;
  v139 = v134;
  while (2)
  {
    v135 = (1 << (7 * v138)) - v135;
    if (v136 >= v135)
    {
      v140 = v135;
    }

    else
    {
      v140 = v136;
    }

    v141 = &v139->n128_i8[8 * v140];
    *&v175 = &v180;
    *(&v175 + 1) = &v178;
    if (v140 >= 129)
    {
      v142 = v140;
      while (1)
      {
        v143 = operator new(8 * v142, v137);
        if (v143)
        {
          break;
        }

        v144 = v142 >> 1;
        v70 = v142 > 1;
        v142 >>= 1;
        if (!v70)
        {
          goto LABEL_150;
        }
      }

      v145 = v143;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v139, (v139 + 8 * v140), &v175, v140, v143, v142);
      operator delete(v145);
      LODWORD(v178) = *(*(*(v141 - 1) + 16) + 16);
      v136 -= v140;
      if (!v136)
      {
        break;
      }

      goto LABEL_153;
    }

    v144 = 0;
LABEL_150:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v139, (v139 + 8 * v140), &v175, v140, 0, v144);
    LODWORD(v178) = *(*(*(v141 - 1) + 16) + 16);
    v136 -= v140;
    if (v136)
    {
LABEL_153:
      ++v138;
      v139 = (v139 + 8 * v140);
      if (v138 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v167 - 8) <= 7)
  {
    LODWORD(v146) = 0;
    v147 = v170;
    v148 = v173;
    v91 = v174;
    goto LABEL_159;
  }

  v149 = 0;
  v150 = ((v167 - 8) >> 3) + 1;
  v146 = v150 & 0x3FFFFFFFFFFFFFFELL;
  v148 = v173;
  v147 = (v170 + 8 * (v150 & 0x3FFFFFFFFFFFFFFELL));
  v151 = &v170->n128_u64[1];
  v91 = v174;
  do
  {
    v152 = *v151;
    *(*(v151 - 1) + 8) = v149;
    *(v152 + 8) = v149 + 1;
    v149 += 2;
    v151 += 2;
  }

  while (v146 != v149);
  if (v150 != v146)
  {
    do
    {
LABEL_159:
      v153 = v147->n128_u64[0];
      v147 = (v147 + 8);
      *(v153 + 8) = v146;
      LODWORD(v146) = v146 + 1;
    }

    while (v147 != v148);
  }

LABEL_160:
  LODWORD(v178) = 0;
  v154 = *(this + 38);
  if (v154)
  {
    v155 = *(this + 18);
    v156 = v155 + 24 * v154;
    do
    {
      v157 = *(v155 + 16);
      v158 = *(v157 + 32);
      if (v158)
      {
        *&v175 = &unk_1F5AF2508;
        *(&v175 + 1) = v157;
        v176 = &v178;
        (*(*v158 + 56))(v158, v91, v157 + 40, &v175, v87);
        v160 = *(v157 + 112);
        if (v160)
        {
          v161 = v178;
          v162 = 24 * v160;
          v163 = *(v157 + 104) + 16;
          do
          {
            if (*(*v163 + 28) == 1)
            {
              *(*v163 + 24) = v161++;
              LODWORD(v178) = v161;
            }

            v163 += 24;
            v162 -= 24;
          }

          while (v162);
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v175, v159);
      }

      v155 += 24;
    }

    while (v155 != v156);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2)
{
  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 6));
  v4 = *(a2 + 9);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v11[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
      v7 = *(this + 232);
      *(this + 232) = v7 + 1;
      LODWORD(AttrDictionary) = v7;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this + 856, v11, &AttrDictionary, v13);
      mlir::bytecode::detail::IRNumberingState::number(this, (*(v11[0] + 8) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) > 4)
  {
    AttrDictionary = *(a2 + 7);
    if (!mlir::AffineBinaryOpExpr::getLHS(&AttrDictionary))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  if (mlir::AffineBinaryOpExpr::getLHS(&AttrDictionary))
  {
LABEL_11:
    mlir::bytecode::detail::IRNumberingState::number(this, AttrDictionary);
  }

LABEL_12:
  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) >= 5 && HIBYTE(*(a2 + 11)))
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v10 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
      if (v10)
      {
        mlir::bytecode::detail::IRNumberingState::number(this, v10);
      }
    }

    else
    {
      InterfaceFor = mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v11[0] = a2;
      v11[1] = InterfaceFor;
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(this + 117));
      v13[0] = &unk_1F5AF2468;
      v13[1] = this;
      v13[2] = DialectVersionMap;
      mlir::FunctionOpInterface::setFunctionTypeAttr(v11, v13);
    }
  }

  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 3));
}

unsigned int *mlir::bytecode::detail::IRNumberingState::number(unsigned int *this, mlir::Region *a2)
{
  if (*a2 != a2)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = this;
    v6 = this[232];
    v14[0] = 0;
    v7 = *(a2 + 1);
    v8 = v6;
    if (v7 != a2)
    {
      v9 = 0;
      do
      {
        if (v7)
        {
          v10 = (v7 - 8);
        }

        else
        {
          v10 = 0;
        }

        v12 = v9;
        v13 = v10;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>((v5 + 208), &v13, &v12, v11);
        mlir::bytecode::detail::IRNumberingState::number(v5, v10);
        ++v14[0];
        ++v9;
        v7 = *(v7 + 1);
      }

      while (v7 != a2);
      v8 = v5[232];
    }

    v12 = v8 - v6;
    v13 = a2;
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::try_emplace<unsigned long &,unsigned long>((v5 + 226), &v13, v14, &v12, v11);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t **a2)
{
  v59 = a2;
  v49 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(a1, &v49, &v49 + 1, &v57);
  if ((v58 & 1) == 0)
  {
    ++*(*(v57 + 8) + 12);
    return;
  }

  *(a1 + 336) += 24;
  v4 = *(a1 + 256);
  Slow = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = Slow + 3;
  if (v4)
  {
    v7 = v6 > *(a1 + 264);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 256, 24, 24, 3);
  }

  else
  {
    *(a1 + 256) = v6;
  }

  *Slow = a2 & 0xFFFFFFFFFFFFFFFBLL;
  Slow[1] = 0x100000000;
  Slow[2] = 0;
  *(v57 + 8) = Slow;
  v9 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (v9 >= v8)
  {
    v11 = *(a1 + 160);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v17 = operator new(8 * v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[8 * v13];
    *v18 = Slow;
    v10 = v18 + 8;
    memcpy(v17, v11, v12);
    *(a1 + 160) = v17;
    *(a1 + 168) = v10;
    *(a1 + 176) = &v17[8 * v16];
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = Slow;
    v10 = v9 + 8;
  }

  *(a1 + 168) = v10;
  v19 = *a2;
  v20 = (*a2)[17];
  v21 = v20 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  if (v20 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v22 = a2;
  }

  else
  {
    v22 = 0;
  }

  *&v55 = v22;
  if (v21)
  {
    *&v60 = mlir::AffineMapAttr::getValue(&v55);
    *&v49 = mlir::OpaqueAttr::getAttrData(&v60);
    *(&v49 + 1) = v39;
    v40 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v49);
    v41 = *v40;
    if (*v40)
    {
LABEL_49:
      Slow[2] = v41;
      return;
    }

    *(a1 + 432) += 120;
    v42 = *(a1 + 352);
    if (v42 && (v41 = (v42 + 7) & 0xFFFFFFFFFFFFFFF8, v41 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v41 + 120;
    }

    else
    {
      v47 = v40;
      v41 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v40 = v47;
    }

    v43 = *(a1 + 152) - 1;
    v44 = v49;
LABEL_48:
    *v41 = v44;
    *(v41 + 16) = v43;
    *(v41 + 24) = 0u;
    *(v41 + 40) = 0u;
    *(v41 + 56) = 0;
    *(v41 + 80) = 0;
    *(v41 + 64) = v41 + 80;
    *(v41 + 72) = 0;
    *(v41 + 88) = 0;
    *(v41 + 96) = 0;
    *(v41 + 104) = v41 + 120;
    *(v41 + 112) = 0;
    *v40 = v41;
    goto LABEL_49;
  }

  Slow[2] = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v19);
  v23 = *a2;
  {
  }

  v24 = v23 + 9;
  v25 = v23[12];
  if ((v25 & 2) == 0)
  {
    v24 = *v24;
  }

  if ((*(v25 & 0xFFFFFFFFFFFFFFF8))(v24, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
LABEL_37:
    Context = mlir::Attribute::getContext(&v59);
    mlir::OpPrintingFlags::OpPrintingFlags(&v49);
    mlir::AsmState::AsmState(&v55, Context, &v49, 0, 0);
    DWORD2(v49) = 0;
    v53 = 0;
    v54 = 1;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    *&v49 = &unk_1F5B3FC80;
    mlir::Attribute::print(&v59, &v49, &v55, 0);
    DialectResources = mlir::AsmState::getDialectResources(&v55);
    if (*(DialectResources + 8))
    {
      v36 = *(DialectResources + 16);
      if (v36)
      {
        v37 = 48 * v36;
        v38 = *DialectResources;
        while ((*v38 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v38 += 48;
          v37 -= 48;
          if (!v37)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        v38 = *DialectResources;
      }

      v45 = *DialectResources + 48 * v36;
      while (v38 != v45)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v38, *(v38 + 32), *(v38 + 40));
        do
        {
          v38 += 48;
        }

        while (v38 != v45 && (*v38 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_42:
    llvm::raw_null_ostream::~raw_null_ostream(&v49);
    mlir::AsmState::~AsmState(&v55);
    return;
  }

  AttributeWriterCallbacks = mlir::BytecodeWriterConfig::getAttributeWriterCallbacks(*(a1 + 936));
  if (!v27)
  {
LABEL_35:
    v32 = *(Slow[2] + 24);
    if (v32)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v49 = &unk_1F5AF2468;
      *(&v49 + 1) = a1;
      v50 = DialectVersionMap;
      if ((*(*v32 + 32))(v32, v59, &v49))
      {
        return;
      }
    }

    goto LABEL_37;
  }

  v28 = AttributeWriterCallbacks;
  v29 = v59;
  v30 = 8 * v27;
  while (1)
  {
    v31 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v49 = &unk_1F5AF2468;
    *(&v49 + 1) = a1;
    v50 = v31;
    LOBYTE(v55) = 0;
    v56 = 0;
    if ((*(**v28 + 16))(*v28, v29, &v55, &v49))
    {
      break;
    }

    ++v28;
    v30 -= 8;
    if (!v30)
    {
      goto LABEL_35;
    }
  }

  if (v56 == 1)
  {
    v60 = v55;
    v40 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v60);
    v41 = *v40;
    if (*v40)
    {
      goto LABEL_49;
    }

    *(a1 + 432) += 120;
    v46 = *(a1 + 352);
    if (v46 && (v41 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8, v41 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v41 + 120;
    }

    else
    {
      v48 = v40;
      v41 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v40 = v48;
    }

    v43 = *(a1 + 152) - 1;
    v44 = v60;
    goto LABEL_48;
  }
}

{
  v58 = a2;
  v48 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(a1 + 72, &v48, &v48 + 1, &v56);
  if ((v57 & 1) == 0)
  {
    ++*(*(v56 + 8) + 12);
    return;
  }

  v4 = (a1 + 736);
  *(a1 + 816) += 24;
  v5 = *(a1 + 736);
  if (v5 && (Slow = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 3) <= *(a1 + 744)))
  {
    *v4 = Slow + 3;
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v4, 24, 24, 3);
  }

  *Slow = a2 | 4;
  Slow[1] = 0x100000000;
  Slow[2] = 0;
  *(v56 + 8) = Slow;
  v8 = *(a1 + 216);
  v7 = *(a1 + 224);
  if (v8 >= v7)
  {
    v10 = *(a1 + 208);
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v16 = operator new(8 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v12];
    *v17 = Slow;
    v9 = v17 + 8;
    memcpy(v16, v10, v11);
    *(a1 + 208) = v16;
    *(a1 + 216) = v9;
    *(a1 + 224) = &v16[8 * v15];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = Slow;
    v9 = v8 + 8;
  }

  *(a1 + 216) = v9;
  v18 = *a2;
  v19 = (*a2)[17];
  v20 = v19 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  if (v19 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0;
  }

  *&v54 = v21;
  if (v20)
  {
    *&v59 = mlir::AffineMapAttr::getValue(&v54);
    *&v48 = mlir::OpaqueAttr::getAttrData(&v59);
    *(&v48 + 1) = v38;
    v39 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v48);
    v40 = *v39;
    if (*v39)
    {
LABEL_47:
      Slow[2] = v40;
      return;
    }

    *(a1 + 432) += 120;
    v41 = *(a1 + 352);
    if (v41 && (v40 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8, v40 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v40 + 120;
    }

    else
    {
      v46 = v39;
      v40 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v39 = v46;
    }

    v42 = *(a1 + 152) - 1;
    v43 = v48;
LABEL_46:
    *v40 = v43;
    *(v40 + 16) = v42;
    *(v40 + 24) = 0u;
    *(v40 + 40) = 0u;
    *(v40 + 56) = 0;
    *(v40 + 80) = 0;
    *(v40 + 64) = v40 + 80;
    *(v40 + 72) = 0;
    *(v40 + 88) = 0;
    *(v40 + 96) = 0;
    *(v40 + 104) = v40 + 120;
    *(v40 + 112) = 0;
    *v39 = v40;
    goto LABEL_47;
  }

  Slow[2] = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v18);
  v22 = *a2;
  {
  }

  v23 = v22 + 9;
  v24 = v22[12];
  if ((v24 & 2) == 0)
  {
    v23 = *v23;
  }

  if ((*(v24 & 0xFFFFFFFFFFFFFFF8))(v23, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
LABEL_35:
    Context = mlir::Attribute::getContext(&v58);
    mlir::OpPrintingFlags::OpPrintingFlags(&v48);
    mlir::AsmState::AsmState(&v54, Context, &v48, 0, 0);
    DWORD2(v48) = 0;
    v52 = 0;
    v53 = 1;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    *&v48 = &unk_1F5B3FC80;
    mlir::Type::print(&v58, &v48, &v54);
    DialectResources = mlir::AsmState::getDialectResources(&v54);
    if (*(DialectResources + 8))
    {
      v35 = *(DialectResources + 16);
      if (v35)
      {
        v36 = 48 * v35;
        v37 = *DialectResources;
        while ((*v37 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v37 += 48;
          v36 -= 48;
          if (!v36)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v37 = *DialectResources;
      }

      v44 = *DialectResources + 48 * v35;
      while (v37 != v44)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v37, *(v37 + 32), *(v37 + 40));
        do
        {
          v37 += 48;
        }

        while (v37 != v44 && (*v37 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_40:
    llvm::raw_null_ostream::~raw_null_ostream(&v48);
    mlir::AsmState::~AsmState(&v54);
    return;
  }

  TypeWriterCallbacks = mlir::BytecodeWriterConfig::getTypeWriterCallbacks(*(a1 + 936));
  if (!v26)
  {
LABEL_33:
    v31 = *(Slow[2] + 24);
    if (v31)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v48 = &unk_1F5AF2468;
      *(&v48 + 1) = a1;
      v49 = DialectVersionMap;
      if ((*(*v31 + 40))(v31, v58, &v48))
      {
        return;
      }
    }

    goto LABEL_35;
  }

  v27 = TypeWriterCallbacks;
  v28 = v58;
  v29 = 8 * v26;
  while (1)
  {
    v30 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v48 = &unk_1F5AF2468;
    *(&v48 + 1) = a1;
    v49 = v30;
    LOBYTE(v54) = 0;
    v55 = 0;
    if ((*(**v27 + 16))(*v27, v28, &v54, &v48))
    {
      break;
    }

    ++v27;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_33;
    }
  }

  if (v55 == 1)
  {
    v59 = v54;
    v39 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v59);
    v40 = *v39;
    if (*v39)
    {
      goto LABEL_47;
    }

    *(a1 + 432) += 120;
    v45 = *(a1 + 352);
    if (v45 && (v40 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8, v40 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v40 + 120;
    }

    else
    {
      v47 = v39;
      v40 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v39 = v47;
    }

    v42 = *(a1 + 152) - 1;
    v43 = v59;
    goto LABEL_46;
  }
}

uint64_t mlir::bytecode::detail::IRNumberingState::numberDialect(mlir::bytecode::detail::IRNumberingState *this, mlir::Dialect *a2)
{
  v14 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](this + 96, &v14);
  result = *v3;
  if (!*v3)
  {
    v15 = *(v14 + 8);
    v5 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](this + 120, &v15);
    Slow = *v5;
    if (!*v5)
    {
      *(this + 54) += 120;
      v7 = *(this + 44);
      if (v7 && (Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 120 <= *(this + 45)))
      {
        *(this + 44) = Slow + 120;
      }

      else
      {
        v13 = v5;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 352, 120, 120, 3);
        v5 = v13;
      }

      v8 = *(this + 38) - 1;
      *Slow = v15;
      *(Slow + 16) = v8;
      *(Slow + 24) = 0u;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0;
      *(Slow + 80) = 0;
      *(Slow + 64) = Slow + 80;
      *(Slow + 72) = 0;
      *(Slow + 88) = 0;
      *(Slow + 96) = 0;
      *(Slow + 104) = Slow + 120;
      *(Slow + 112) = 0;
      *v5 = Slow;
    }

    *v3 = Slow;
    v9 = v14;
    v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v14);
    if (v10)
    {
      v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v9);
    }

    *(*v3 + 24) = v10;
    v11 = v14;
    if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v14))
    {
      v12 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v11);
      result = *v3;
      *(*v3 + 32) = v12;
    }

    else
    {
      result = *v3;
      *(*v3 + 32) = 0;
    }
  }

  return result;
}

uint64_t mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *a1, mlir::Dialect *a2, void *a3, uint64_t a4)
{
  result = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, a2);
  if (a4)
  {
    v8 = result;
    v9 = 24 * a4;
    v10 = a3;
    do
    {
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>(v8 + 40, v10, v32);
      if (v33 != 1)
      {
        break;
      }

      v12 = *(v8 + 72);
      v13 = *(v8 + 64);
      v14 = v10;
      if (v12 >= *(v8 + 76))
      {
        v23 = v13 <= v10 && v13 + 24 * v12 > v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 64, v8 + 80, v12 + 1, 24);
        if (v23)
        {
          v14 = (a3 + *(v8 + 64) - v13);
          v13 = *(v8 + 64);
        }

        else
        {
          v13 = *(v8 + 64);
          v14 = v10;
        }
      }

      v15 = v13 + 24 * *(v8 + 72);
      v16 = *v14;
      *(v15 + 16) = v14[2];
      *v15 = v16;
      ++*(v8 + 72);
      *(a1 + 90) += 32;
      v17 = *(a1 + 80);
      if (v17 && (Slow = (v17 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 <= *(a1 + 81)))
      {
        *(a1 + 80) = Slow + 32;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 640, 32, 32, 3);
      }

      (*(**(v8 + 32) + 40))(&v26);
      v19 = v26;
      *(Slow + 16) = v27;
      *Slow = v19;
      v27 = 0;
      v26 = 0uLL;
      *(Slow + 24) = 0;
      *(Slow + 28) = 1;
      v20 = *(Slow + 23);
      v28 = Slow;
      v21 = *Slow;
      if (v20 >= 0)
      {
        v21 = Slow;
      }

      if (v20 < 0)
      {
        v20 = *(Slow + 8);
      }

      *&v24 = v21;
      *(&v24 + 1) = v20;
      v25 = Slow;
      v30 = v24;
      v31 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>(v8 + 80, &v30, &v31, v32);
      if (v33 == 1)
      {
        v22 = *(v8 + 112);
        *(v32[0] + 16) = v22;
        v29 = &v25;
        *&v30 = &v24;
        if (v22 < *(v8 + 116))
        {
          v11 = *(v8 + 104) + 24 * v22;
          *v11 = v24;
          *(v11 + 16) = v25;
          ++*(v8 + 112);
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(v8 + 104, &std::piecewise_construct, &v30, &v29);
        }
      }

      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::try_emplace<mlir::bytecode::detail::DialectResourceNumbering *&>(a1 + 232, v10, &v28, v32);
      v10 += 3;
      a3 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Block *a2)
{
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  while (v4 != v5)
  {
    v6 = *v4++;
    v16 = v6;
    v7 = *(this + 232);
    *(this + 232) = v7 + 1;
    v15 = v7;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this + 856, &v16, &v15, v14);
    mlir::bytecode::detail::IRNumberingState::number(this, *(v16 + 32));
    mlir::bytecode::detail::IRNumberingState::number(this, (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  v14[0] = a2;
  v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](this + 880, v14);
  v10 = a2 + 32;
  v11 = *(a2 + 5);
  if (v11 != v10)
  {
    v12 = v8;
    do
    {
      v13 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v11, v9);
      mlir::bytecode::detail::IRNumberingState::number(this, v13);
      ++*v12;
      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](uint64_t a1, __int128 *a2)
{
  v18 = *a2;
  v19[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>(a1, &v18, v19, &v16);
  v4 = v16;
  if (v17)
  {
    v5 = a1 + 24;
    v6 = *(a1 + 24);
    v14 = *a2;
    v15 = 0;
    v7 = *(a1 + 32);
    v8 = &v14;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v14 && v6 + 24 * v7 > &v14)
      {
        v13 = &v14 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 40, v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v13[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 40, v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v14;
      }
    }

    v9 = v6 + 24 * *(a1 + 32);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    v11 = *(a1 + 32);
    *(a1 + 32) = v11 + 1;
    *(v4 + 16) = v11;
  }

  else
  {
    v11 = *(v16 + 16);
  }

  return *(a1 + 24) + 24 * v11 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::try_emplace<unsigned long &,unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(result + 16);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = *result;
  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = *result + 16 * v9;
  v11 = *v10;
  if (*a2 != *v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11 == -8192;
      }

      if (v17)
      {
        v15 = v10;
      }

      v18 = v9 + v16++;
      v9 = v18 & v8;
      v10 = v7 + 16 * (v18 & v8);
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v10 = v15;
    }

LABEL_5:
    v23 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v6)
    {
      v6 *= 2;
    }

    else if (v6 + ~v13 - *(result + 12) > v6 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v14 = *a4;
        *(v10 + 8) = *a3;
        *(v10 + 12) = v14;
        v7 = *result;
        v6 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a5;
    v21 = a4;
    v22 = a3;
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v19, a2, &v23);
    a3 = v22;
    a4 = v21;
    result = v19;
    a5 = v20;
    v10 = v23;
    ++*(v19 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a5 = v10;
  *(a5 + 8) = v7 + 16 * v6;
  *(a5 + 16) = v12;
  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 48, &v26);
  if (*v3)
  {
    ++*(*v3 + 20);
    return;
  }

  v4 = v3;
  if (*(v26 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v27 = *(v26 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v27);
    if (Values)
    {
      goto LABEL_5;
    }

LABEL_7:
    *&v27 = mlir::OperationName::getDialectNamespace(&v26);
    *(&v27 + 1) = v7;
    v8 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v27);
    Slow = *v8;
    if (!*v8)
    {
      *(a1 + 432) += 120;
      v9 = *(a1 + 352);
      if (v9 && (Slow = (v9 + 7) & 0xFFFFFFFFFFFFFFF8, (Slow + 120) <= *(a1 + 360)))
      {
        *(a1 + 352) = Slow + 120;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      }

      v10 = *(a1 + 152) - 1;
      *Slow = v27;
      *(Slow + 16) = v10;
      *(Slow + 24) = 0u;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0;
      *(Slow + 80) = 0;
      *(Slow + 64) = Slow + 80;
      *(Slow + 72) = 0;
      *(Slow + 88) = 0;
      *(Slow + 96) = 0;
      *(Slow + 104) = Slow + 120;
      *(Slow + 112) = 0;
      *v8 = Slow;
    }

    goto LABEL_12;
  }

  Values = *(v26 + 24);
  if (!Values)
  {
    goto LABEL_7;
  }

LABEL_5:
  Slow = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, Values);
LABEL_12:
  *(a1 + 624) += 24;
  v11 = *(a1 + 544);
  if (v11 && (v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8), (v12 + 3) <= *(a1 + 552)))
  {
    *(a1 + 544) = v12 + 3;
  }

  else
  {
    v25 = Slow;
    v12 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 544, 24, 24, 3);
    Slow = v25;
  }

  v13 = v26;
  *v12 = Slow;
  v12[1] = v13;
  v12[2] = 0x100000000;
  *v4 = v12;
  v15 = *(a1 + 192);
  v14 = *(a1 + 200);
  if (v15 >= v14)
  {
    v17 = *(a1 + 184);
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v21 = v14 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v23 = operator new(8 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[8 * v19];
    *v24 = v12;
    v16 = v24 + 8;
    memcpy(v23, v17, v18);
    *(a1 + 184) = v23;
    *(a1 + 192) = v16;
    *(a1 + 200) = &v23[8 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = v12;
    v16 = v15 + 8;
  }

  *(a1 + 192) = v16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::try_emplace<mlir::bytecode::detail::DialectResourceNumbering *&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = (*result + 32 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & (v5 - 1);
      v8 = (v6 + 32 * v7);
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v20 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v11 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v8[3] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v8 = v20;
    ++*(v17 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = v6 + 32 * v5;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter::writeOptionalAttribute(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    mlir::bytecode::detail::IRNumberingState::number(*(a1 + 8), a2);
  }
}

uint64_t mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *(a1 + 16);
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 16) + 8 * *(*(a1 + 16) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v10 + 8);
  }
}

void anonymous namespace::NumberingResourceBuilder::~NumberingResourceBuilder(_anonymous_namespace_::NumberingResourceBuilder *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildBool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 12) > *(*a1 + 12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(*result + 12);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 12);
        v31 = *(*v22 + 12);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 12) > *(v14 + 12))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 12) <= *(v17 + 12))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
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

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_i64[v10 / 8];
      if (*(*a2 + 12) > *(v12 + 12))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_u64[v14 / 2];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v29 + 12) > *(v24[v10 / 8] + 12))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10 / 8];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = a1 + v10;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(*v16 + 12) > *(v22 + 12))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v33, v16, v78, a4, v30, __src, v77);
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(a1 + v10, v17, v33, v34, v15, __src, v77);
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = (a6 + 16);
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        v53[-1] = result;
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = *a2;
        v58 = *(*a2 + 12);
        v59 = *(*a6 + 12);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 += 8 * v62;
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if (&a6[-a2] > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = (a2 + 16);
      v44 = (a6 + 16);
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        v44[-1] = result;
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = *v40++;
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = *(a2 - 8);
    if (*(*(v39 - 1) + 12) > *(v65 + 12))
    {
      a2 -= 8;
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    *--a3 = v65;
    v64 -= 8;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = a3 - 1;
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = (a3 - 2);
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(char *__src, uint64_t a2, void *__dst)
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

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
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

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 20) > *(*a1 + 20))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 20);
          v34 = *(*v28 + 20);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 20);
          if (v13 > *(v11 + 20))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 20));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 20);
      v8 = *(*result + 20);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 20);
        v31 = *(*v22 + 20);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 20) > *(v14 + 20))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 20) <= *(v17 + 20))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
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

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_i64[v10 / 8];
      if (*(*a2 + 20) > *(v12 + 20))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_u64[v14 / 2];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v29 + 20) > *(v24[v10 / 8] + 20))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10 / 8];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = a1 + v10;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(*v16 + 20) > *(v22 + 20))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v33, v16, v78, a4, v30, __src, v77);
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(a1 + v10, v17, v33, v34, v15, __src, v77);
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = (a6 + 16);
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        v53[-1] = result;
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = *a2;
        v58 = *(*a2 + 20);
        v59 = *(*a6 + 20);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 += 8 * v62;
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if (&a6[-a2] > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = (a2 + 16);
      v44 = (a6 + 16);
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        v44[-1] = result;
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = *v40++;
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = *(a2 - 8);
    if (*(*(v39 - 1) + 20) > *(v65 + 20))
    {
      a2 -= 8;
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    *--a3 = v65;
    v64 -= 8;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = a3 - 1;
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = (a3 - 2);
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 12) > *(*a1 + 12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(*result + 12);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 12);
        v31 = *(*v22 + 12);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 12) > *(v14 + 12))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 12) <= *(v17 + 12))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(a1->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*(v12->n128_u64[0] + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(v12->n128_u64[0] + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (_ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl)();
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(v41->n128_u64[0] + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *_ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v79 = a3 - a2 - 8;
          v80 = a7;
          v81 = a2;
          if (v79 < 0x18)
          {
            goto LABEL_133;
          }

          v80 = a7;
          v81 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v82 = (v79 >> 3) + 1;
          v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
          v80 = &a7[v83];
          v81 = &a2[v83];
          v84 = (a2 + 16);
          v85 = a7 + 16;
          v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v87 = *v84;
            *(v85 - 1) = *(v84 - 1);
            *v85 = v87;
            v84 += 2;
            v85 += 2;
            v86 -= 4;
          }

          while (v86);
          if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v88 = *v81;
              v81 += 8;
              *v80 = v88;
              v80 += 8;
            }

            while (v81 != a3);
          }

          v89 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v112 = v80 - a7;
              if (v80 != a7)
              {
                v113 = v112 - 8;
                if ((v112 - 8) < 0x48 || (v80 - i) < 0x20)
                {
                  v114 = v80;
                  goto LABEL_121;
                }

                v117 = a3 - 16;
                v118 = (v113 >> 3) + 1;
                v119 = 8 * (v118 & 0x3FFFFFFFFFFFFFFCLL);
                v114 = &v80[-v119];
                a3 -= v119;
                v120 = v80 - 16;
                v121 = v118 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v122 = *v120;
                  *(v117 - 1) = *(v120 - 1);
                  *v117 = v122;
                  v117 -= 32;
                  v120 -= 32;
                  v121 -= 4;
                }

                while (v121);
                if (v118 != (v118 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v115 = a3 - 8;
                  do
                  {
                    v116 = *(v114 - 1);
                    v114 -= 8;
                    *v115 = v116;
                    v115 -= 8;
                  }

                  while (v114 != a7);
                }
              }

              return result;
            }

            v92 = a2 - 8;
            v91 = *(a2 - 1);
            v93 = *v89;
            v94 = *(*(v91 + 16) + 16);
            v95 = *(*(*(v80 - 1) + 16) + 16);
            if (v95 == *v89)
            {
              if (v94 != v93)
              {
                goto LABEL_87;
              }
            }

            else if (v94 != v93 && v94 > v95)
            {
              goto LABEL_87;
            }

            v91 = *(v80 - 1);
            v92 = a2;
            v80 -= 8;
LABEL_87:
            *(a3 - 1) = v91;
            a3 -= 8;
            a2 = v92;
            if (v80 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v97 = a2 - result - 8;
        v98 = a7;
        v99 = result;
        if (v97 < 0x18)
        {
          goto LABEL_134;
        }

        v98 = a7;
        v99 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v100 = (v97 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v98 = &a7[v101];
        v99 = &result[v101];
        v102 = (result + 16);
        v103 = a7 + 16;
        v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v102;
          *(v103 - 1) = *(v102 - 1);
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 4;
        }

        while (v104);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v106 = *v99;
            v99 += 8;
            *v98 = v106;
            v98 += 8;
          }

          while (v99 != a2);
        }

        v107 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v98 - a7);
            }

            v108 = *v107;
            v109 = *(*(*a2 + 16) + 16);
            v110 = *(*(*a7 + 16) + 16);
            if (v109 == *v107)
            {
              break;
            }

            if (v110 == v108 || v110 <= v109)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v98)
            {
              return result;
            }
          }

          if (v110 != v108)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v98)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(*(*a2 + 16) + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*(v14 + 16) + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(*(*&v33[8 * v10] + 16) + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = (v37 + 1);
              v40 = *(*(v39 + 16) + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = (v43 + 1);
              v46 = *(*(v45 + 16) + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v123 = *v22;
            v125 = v17;
            v55 = v19 - a2;
            v127 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v125;
            a3 = v127;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v123;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v126 = v17;
                v128 = a3;
                v60 = a5;
                v124 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v124;
                v17 = v126;
                a4 = v61;
                a5 = v60;
                a3 = v128;
              }

              *v22 = v59;
            }

            else
            {
              v51 = a2 - v22;
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v64[v51];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = v68 + v51;
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(*(*v19 + 16) + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = (v24 + 1);
          v20 += ~(v20 >> 1);
          if (*(*(v26 + 16) + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = (v28 + 1);
          v20 += ~(v20 >> 1);
          if (*(*(v30 + 16) + 16) != v11 && *(*(v30 + 16) + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v17, v22);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = v17;
    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v32, v19);
    result = v78;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*v6 + 16);
    v10 = *(*a1->n128_u64[0] + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*v17 + 16);
      v20 = *(*v16->n128_u64[0] + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*v22 + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*v25 + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*v44->n128_u64[0] + 16);
      v47 = *(*v39->n128_u64[0] + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*v7 + 16);
      v10 = *(*a1->n128_u64[0] + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*v12->n128_u64[0] + 16);
      v23 = *(*v21 + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*v12->n128_u64[0] + 16);
            v27 = *(*v25 + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (_ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl)();
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*v42->n128_u64[0] + 16);
      v45 = *(*v41->n128_u64[0] + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *_ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v79 = a3 - a2 - 8;
          v80 = a7;
          v81 = a2;
          if (v79 < 0x18)
          {
            goto LABEL_133;
          }

          v80 = a7;
          v81 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v82 = (v79 >> 3) + 1;
          v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
          v80 = &a7[v83];
          v81 = &a2[v83];
          v84 = (a2 + 16);
          v85 = a7 + 16;
          v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v87 = *v84;
            *(v85 - 1) = *(v84 - 1);
            *v85 = v87;
            v84 += 2;
            v85 += 2;
            v86 -= 4;
          }

          while (v86);
          if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v88 = *v81;
              v81 += 8;
              *v80 = v88;
              v80 += 8;
            }

            while (v81 != a3);
          }

          v89 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v112 = v80 - a7;
              if (v80 != a7)
              {
                v113 = v112 - 8;
                if ((v112 - 8) < 0x48 || (v80 - i) < 0x20)
                {
                  v114 = v80;
                  goto LABEL_121;
                }

                v117 = a3 - 16;
                v118 = (v113 >> 3) + 1;
                v119 = 8 * (v118 & 0x3FFFFFFFFFFFFFFCLL);
                v114 = &v80[-v119];
                a3 -= v119;
                v120 = v80 - 16;
                v121 = v118 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v122 = *v120;
                  *(v117 - 1) = *(v120 - 1);
                  *v117 = v122;
                  v117 -= 32;
                  v120 -= 32;
                  v121 -= 4;
                }

                while (v121);
                if (v118 != (v118 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v115 = a3 - 8;
                  do
                  {
                    v116 = *(v114 - 1);
                    v114 -= 8;
                    *v115 = v116;
                    v115 -= 8;
                  }

                  while (v114 != a7);
                }
              }

              return result;
            }

            v92 = a2 - 8;
            v91 = *(a2 - 1);
            v93 = *v89;
            v94 = *(*v91 + 16);
            v95 = *(**(v80 - 1) + 16);
            if (v95 == *v89)
            {
              if (v94 != v93)
              {
                goto LABEL_87;
              }
            }

            else if (v94 != v93 && v94 > v95)
            {
              goto LABEL_87;
            }

            v91 = *(v80 - 1);
            v92 = a2;
            v80 -= 8;
LABEL_87:
            *(a3 - 1) = v91;
            a3 -= 8;
            a2 = v92;
            if (v80 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v97 = a2 - result - 8;
        v98 = a7;
        v99 = result;
        if (v97 < 0x18)
        {
          goto LABEL_134;
        }

        v98 = a7;
        v99 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v100 = (v97 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v98 = &a7[v101];
        v99 = &result[v101];
        v102 = (result + 16);
        v103 = a7 + 16;
        v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v102;
          *(v103 - 1) = *(v102 - 1);
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 4;
        }

        while (v104);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v106 = *v99;
            v99 += 8;
            *v98 = v106;
            v98 += 8;
          }

          while (v99 != a2);
        }

        v107 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v98 - a7);
            }

            v108 = *v107;
            v109 = *(**a2 + 16);
            v110 = *(**a7 + 16);
            if (v109 == *v107)
            {
              break;
            }

            if (v110 == v108 || v110 <= v109)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v98)
            {
              return result;
            }
          }

          if (v110 != v108)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v98)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(**a2 + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*v14 + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(**&v33[8 * v10] + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = (v37 + 1);
              v40 = *(*v39 + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = (v43 + 1);
              v46 = *(*v45 + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v123 = *v22;
            v125 = v17;
            v55 = v19 - a2;
            v127 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v125;
            a3 = v127;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v123;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v126 = v17;
                v128 = a3;
                v60 = a5;
                v124 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v124;
                v17 = v126;
                a4 = v61;
                a5 = v60;
                a3 = v128;
              }

              *v22 = v59;
            }

            else
            {
              v51 = a2 - v22;
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v64[v51];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = v68 + v51;
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(**v19 + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = (v24 + 1);
          v20 += ~(v20 >> 1);
          if (*(*v26 + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = (v28 + 1);
          v20 += ~(v20 >> 1);
          if (*(*v30 + 16) != v11 && *(*v30 + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v17, v22);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = v17;
    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v32, v19);
    result = v78;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(a1->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*(v12->n128_u64[0] + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(v12->n128_u64[0] + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (_ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl)();
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(v41->n128_u64[0] + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

double llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>(uint64_t **a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v38 = a2;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0 && v4 == v5)
  {
    v13 = *(*a1 + 2);
    v14 = *(**a1 + 24 * v13 - 16);
    *(*a1 + 2) = v13 - 1;
    if ((*(v14 + 5) & 1) == 0)
    {
      *(v14 + 4) = 257;
    }
  }

  else if (!v4)
  {
    v9 = a1[1];
    v10 = *(*a1 + 2);
    if (v10 && *(**a1 + 24 * v10 - 8) == 1)
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
        v6 = *(a2 + 44);
      }

      else
      {
        Parent = 0;
      }

      if ((v6 & 0x800000) != 0)
      {
        v15 = *(a2 + 68);
        if (v15)
        {
          v16 = 0;
          v17 = *(a2 + 72);
          do
          {
            *&v35 = *(v17 + 32 * v16 + 24);
            ParentRegion = mlir::Value::getParentRegion(&v35);
            if (ParentRegion != Parent)
            {
              v19 = **a1;
              v20 = 24 * *(*a1 + 2);
              v21 = v19 + v20;
              while (v20)
              {
                v22 = *(v19 + v20 - 24);
                v23 = *(v19 + v20 - 8);
                v20 -= 24;
                if (v23 != 1 || v22 == *(ParentRegion + 2))
                {
                  v19 += v20 + 24;
                  break;
                }
              }

              while (v21 != v19)
              {
                *(v21 - 8) = *(v19 - 8);
                *(*(v21 - 16) + 4) = 256;
                v21 -= 24;
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }
      }
    }

    v9[66] += 8;
    v25 = v9[56];
    if (v25 && (Slow = (v25 + 3) & 0xFFFFFFFFFFFFFFFCLL, Slow + 8 <= v9[57]))
    {
      v9[56] = Slow + 8;
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v9 + 56), 8, 8, 2);
    }

    v27 = a1[2];
    v28 = (*v27)++;
    *Slow = v28;
    *(Slow + 4) = 0;
    v37 = Slow;
    {
      v33 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v33, v34);
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      *(v37 + 4) = 257;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((v9 + 3), &v38, &v37, &v35);
    if ((*(v38 + 44) & 0x7FFFFF) != 0)
    {
      v30 = *a1;
      *&v35 = v38;
      *(&v35 + 1) = v37;
      LOBYTE(v36) = *(v37 + 5) ^ 1;
      v31 = *(v30 + 2);
      if (v31 >= *(v30 + 3))
      {
        *&result = llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(v30, &v35).n128_u64[0];
      }

      else
      {
        v32 = *v30 + 24 * v31;
        result = *&v35;
        *v32 = v35;
        *(v32 + 16) = v36;
        ++*(v30 + 2);
      }
    }
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = &v10;
  if (v2 >= *(a1 + 12))
  {
    if (v3 <= &v10 && v3 + 24 * v2 > &v10)
    {
      v8 = &v10 - v3;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v2 + 1, 24);
      a1 = v9;
      v3 = *v9;
      v4 = &v8[*v9];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v2 + 1, 24);
      a1 = v7;
      v3 = *v7;
      v4 = &v10;
    }
  }

  v5 = (v3 + 24 * *(a1 + 8));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        *(v9 + 4) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 24 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 24 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 24 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 24 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 24 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 24 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1E096FB70;
        *(v17 + 24) = xmmword_1E096FB70;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              *(v23 + 4) = *(v22 + 16);
              ++*(a1 + 8);
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_1E096FB70;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_1E096FB70;
        v15 = (v15 + 24);
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_1E096FB70;
      *(v25 + 24) = xmmword_1E096FB70;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 24 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & v6;
      v8 = (v5 + 24 * (v16 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v19 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v8 = v19;
    ++*(v17 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 24 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x48)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result->i64[3 * (v16 & 0x1FFFFFFFFFFFFFFCLL)];
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = result;
      v19 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v18 = v17;
        v18[1] = xmmword_1E09701A0;
        v18[4] = xmmword_1E09701A0;
        v18[5] = xmmword_1E0970190;
        v18[2] = xmmword_1E0970190;
        v18[3] = v17;
        v18 += 6;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_16:
        if (v3)
        {
          v21 = v4;
          do
          {
            v29 = *v21;
            if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v30 = *(a1 + 16) - 1;
              v31 = v30 & ((v29 >> 4) ^ (v29 >> 9));
              v27 = (*a1 + 24 * v31);
              v32 = *v27;
              if (v29 != *v27)
              {
                v33 = 0;
                v34 = 1;
                while (v32 != -4096)
                {
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v32 == -8192;
                  }

                  if (v35)
                  {
                    v33 = v27;
                  }

                  v36 = v31 + v34++;
                  v31 = v36 & v30;
                  v27 = (*a1 + 24 * (v36 & v30));
                  v32 = *v27;
                  if (v29 == *v27)
                  {
                    goto LABEL_26;
                  }
                }

                if (v33)
                {
                  v27 = v33;
                }
              }

LABEL_26:
              v28 = *v21;
              v27[2] = *(v21 + 2);
              *v27 = v28;
              ++*(a1 + 8);
            }

            v21 = (v21 + 24);
          }

          while (v21 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v20 = &result->i64[3 * v10];
    do
    {
      *v12 = -4096;
      v12[1] = -4096;
      v12[2] = 0;
      v12 += 3;
    }

    while (v12 != v20);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x48)
    {
      v15 = result;
LABEL_21:
      v26 = &result->i64[3 * v13];
      do
      {
        *v15 = -4096;
        v15[1] = -4096;
        v15[2] = 0;
        v15 += 3;
      }

      while (v15 != v26);
      return result;
    }

    v22 = v14 / 0x18 + 1;
    v15 = &result->i64[3 * (v22 & 0x1FFFFFFFFFFFFFFCLL)];
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = result;
    v25 = v22 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *v24 = v23;
      v24[1] = xmmword_1E09701A0;
      v24[4] = xmmword_1E09701A0;
      v24[5] = xmmword_1E0970190;
      v24[2] = xmmword_1E0970190;
      v24[3] = v23;
      v24 += 6;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[230];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::RegionBranchOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchOpInterface]";
  v6 = 79;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
  LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v6 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = HIDWORD(*a2);
    v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
    v8 = v4 - 1;
    v9 = v6 & (v4 - 1);
    v10 = (*result + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = v10;
  v13 = *(result + 8);
  if (4 * v13 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v13 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v13 = *(v18 + 8);
    v10 = v20;
  }

  *(result + 8) = v13 + 1;
  if (*v10 != -4096)
  {
    --*(result + 12);
  }

  *v10 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v12 = 1;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != result + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0x9DDFEA08EB382D69 * ((8 * *v19 - 0xAE502812AA7333) ^ HIDWORD(*v19));
          v30 = 0x9DDFEA08EB382D69 * (HIDWORD(v28) ^ (v29 >> 47) ^ v29);
          v31 = (-348639895 * ((v30 >> 47) ^ v30)) & v18;
          v27 = &result->i8[8 * v31];
          v32 = *v27;
          if (v28 != *v27)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v27;
              }

              v36 = v31 + v34++;
              v31 = v36 & v18;
              v27 = &result->i8[8 * (v36 & v18)];
              v32 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v33)
            {
              v27 = v33;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = &result->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = &result->i8[8 * v20];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v26);
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[254];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, mlir::MLIRContext **a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::tensor::DimOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OperationState::addAttribute(mlir::Attribute *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Context = mlir::Attribute::getContext(a1);
  v12 = 261;
  v11[0] = a2;
  v11[1] = a3;
  v9 = mlir::StringAttr::get(Context, v11);
  mlir::NamedAttribute::NamedAttribute(v13, v9, a4);
  return mlir::NamedAttrList::push_back(a1 + 112, v13[0], v13[1]);
}

uint64_t mlir::OpBuilder::create<mlir::memref::DeallocOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::DeallocOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::DeallocOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::detail::TypedValue<mlir::ShapedType>::getType(uint64_t a1)
{
  result = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::bufferization::CloneOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v22[28] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::bufferization::CloneOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::bufferization::CloneOp,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  v9 = *a3;
  v10 = *(*a3 + 8);
  v17[0] = v9;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  v11 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v22, v20 + 1, 8);
    v11 = v20;
  }

  *(v19 + 8 * v11) = v10 & 0xFFFFFFFFFFFFFFF8;
  ++v20;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::bufferization::CloneOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::detail::DenseArrayAttrImpl<int>::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int32_t>]";
  v38 = 91;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}