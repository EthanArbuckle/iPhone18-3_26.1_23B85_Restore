BOOL mlir::mps::anonymous namespace::verifyTileOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *v6;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v126 = v7;
    v128 = a4;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a4 = v128;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v126 + 8);
    v10 = *(v126 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
LABEL_14:
    v139 = v6;
    v140 = 0;
    v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v28 = v11[1];
  v139 = v6;
  v140 = v28;
  v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v127 = v18;
    v129 = a4;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a4 = v129;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v127 + 8);
    v21 = *(v127 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 == &v20[2 * v21] || *v22 != v19)
  {
LABEL_29:
    v137 = v17;
    v138 = 0;
    if (a4)
    {
      goto LABEL_30;
    }

LABEL_41:
    v135 = 0;
    v136 = 0;
    v30 = 1;
    if (!mlir::CallOpInterface::getArgOperands(&v137))
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

  v41 = v22[1];
  v137 = v17;
  v138 = v41;
  if (!a4)
  {
    goto LABEL_41;
  }

LABEL_30:
  v29 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29 == 0;
  if (!v29)
  {
    goto LABEL_46;
  }

  v31 = *v29;
  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v130 = v29;
    v42 = v31;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v29 = v130;
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v42 + 8);
    v34 = *(v42 + 16);
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v72 = v35[1];
    v135 = v29;
    v136 = v72;
    if (!mlir::CallOpInterface::getArgOperands(&v137))
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

LABEL_46:
  v135 = v29;
  v136 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v137))
  {
    goto LABEL_79;
  }

LABEL_47:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v137);
  if (v44 == 1)
  {
    v45 = ArgAttrsAttr;
    if (*ArgAttrsAttr != 0x8000000000000000)
    {
      if (mlir::CallOpInterface::getArgOperands(&v139))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v139);
        if (v46 != *v45)
        {
          v147 = 259;
          mlir::Operation::emitOpError(a1, &v144, &v148);
          mlir::CallableOpInterface::getArgAttrsAttr(&v139);
          if (v148)
          {
            LODWORD(v131) = 2;
            v132 = v47;
            v48 = &v131;
            v49 = v150;
            if (v151 >= v152)
            {
              if (v150 <= &v131 && v150 + 24 * v151 > &v131)
              {
                v122 = &v131 - v150;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                v49 = v150;
                v48 = (v150 + v122);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                v48 = &v131;
                v49 = v150;
              }
            }

            v50 = &v49[24 * v151];
            v51 = *v48;
            *(v50 + 2) = v48[2];
            *v50 = v51;
            v52 = ++v151;
            if (v148)
            {
              LODWORD(v131) = 3;
              v133 = 35;
              v53 = &v131;
              v54 = v150;
              if (v52 >= v152)
              {
                if (v150 <= &v131 && v150 + 24 * v52 > &v131)
                {
                  v124 = &v131 - v150;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v52 + 1, 24);
                  v54 = v150;
                  v53 = (v150 + v124);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v52 + 1, 24);
                  v53 = &v131;
                  v54 = v150;
                }
              }

              v55 = &v54[24 * v151];
              v56 = *v53;
              *(v55 + 2) = v53[2];
              *v55 = v56;
              v57 = ++v151;
              if (v148)
              {
                v58 = *v45;
                LODWORD(v131) = 2;
                v132 = v58;
                v59 = &v131;
                v60 = v150;
                if (v57 >= v152)
                {
                  if (v150 <= &v131 && v150 + 24 * v57 > &v131)
                  {
                    v125 = &v131 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v57 + 1, 24);
                    v60 = v150;
                    v59 = (v150 + v125);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v57 + 1, 24);
                    v59 = &v131;
                    v60 = v150;
                  }
                }

                v61 = &v60[24 * v151];
                v62 = *v59;
                *(v61 + 2) = v59[2];
                *v61 = v62;
                ++v151;
              }
            }
          }

          v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
          if (v148)
          {
            mlir::InFlightDiagnostic::report(&v148);
          }

          if (v159 == 1)
          {
            mlir::Diagnostic::~Diagnostic(v149);
          }

          return v63;
        }
      }
    }

LABEL_79:
    v144 = v146;
    v145 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(a3, &v144) & 1) != 0 && v145)
    {
      v73 = 0;
      while ((*(v144 + v73) & 0x8000000000000000) == 0)
      {
        if (v145 == ++v73)
        {
          goto LABEL_84;
        }
      }

      v134 = 259;
      mlir::Operation::emitOpError(a1, &v131, &v148);
      if (v148)
      {
        v79 = *(v144 + v73);
        v141 = 2;
        v142 = v79;
        v80 = &v141;
        v81 = v150;
        if (v151 >= v152)
        {
          if (v150 <= &v141 && v150 + 24 * v151 > &v141)
          {
            v117 = &v141 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v81 = v150;
            v80 = (v150 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v80 = &v141;
            v81 = v150;
          }
        }

        v82 = &v81[24 * v151];
        v83 = *v80;
        *(v82 + 2) = *(v80 + 2);
        *v82 = v83;
        v84 = ++v151;
        if (v148)
        {
          v141 = 3;
          v142 = " at index ";
          v143 = 10;
          v85 = &v141;
          v86 = v150;
          if (v84 >= v152)
          {
            if (v150 <= &v141 && v150 + 24 * v84 > &v141)
            {
              v118 = &v141 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v84 + 1, 24);
              v86 = v150;
              v85 = (v150 + v118);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v84 + 1, 24);
              v85 = &v141;
              v86 = v150;
            }
          }

          v87 = &v86[24 * v151];
          v88 = *v85;
          *(v87 + 2) = *(v85 + 2);
          *v87 = v88;
          v89 = ++v151;
          if (v148)
          {
            v141 = 5;
            v142 = v73;
            v90 = &v141;
            v91 = v150;
            if (v89 >= v152)
            {
              if (v150 <= &v141 && v150 + 24 * v89 > &v141)
              {
                v119 = &v141 - v150;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v89 + 1, 24);
                v91 = v150;
                v90 = (v150 + v119);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v89 + 1, 24);
                v90 = &v141;
                v91 = v150;
              }
            }

            v92 = &v91[24 * v151];
            v93 = *v90;
            *(v92 + 2) = *(v90 + 2);
            *v92 = v93;
            ++v151;
          }
        }
      }

      v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
      if (v148)
      {
        mlir::InFlightDiagnostic::report(&v148);
      }

      if (v159)
      {
        if (v158 != &v159)
        {
          free(v158);
        }

        v94 = __p;
        if (__p)
        {
          v95 = v157;
          v96 = __p;
          if (v157 != __p)
          {
            do
            {
              v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
            }

            while (v95 != v94);
            v96 = __p;
          }

          v157 = v94;
          operator delete(v96);
        }

        v97 = v154;
        if (v154)
        {
          v98 = v155;
          v99 = v154;
          if (v155 != v154)
          {
            do
            {
              v101 = *--v98;
              v100 = v101;
              *v98 = 0;
              if (v101)
              {
                operator delete[](v100);
              }
            }

            while (v98 != v97);
            v99 = v154;
          }

          v155 = v97;
          operator delete(v99);
        }

        if (v150 != v153)
        {
          free(v150);
        }
      }
    }

    else
    {
LABEL_84:
      if (!v30 && mlir::CallOpInterface::getArgOperands(&v135) && mlir::CallOpInterface::getArgOperands(&v139) && (mlir::CallableOpInterface::getArgAttrsAttr(&v135), v75 = v74, mlir::CallableOpInterface::getArgAttrsAttr(&v139), v75 != v76))
      {
        v134 = 259;
        mlir::Operation::emitOpError(a1, &v131, &v148);
        mlir::CallableOpInterface::getArgAttrsAttr(&v139);
        if (v148)
        {
          v141 = 2;
          v142 = v102;
          v103 = &v141;
          v104 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v141 && v150 + 24 * v151 > &v141)
            {
              v120 = &v141 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v104 = v150;
              v103 = (v150 + v120);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v103 = &v141;
              v104 = v150;
            }
          }

          v105 = &v104[24 * v151];
          v106 = *v103;
          *(v105 + 2) = *(v103 + 2);
          *v105 = v106;
          v107 = ++v151;
          if (v148)
          {
            v141 = 3;
            v143 = 26;
            v108 = &v141;
            v109 = v150;
            if (v107 >= v152)
            {
              if (v150 <= &v141 && v150 + 24 * v107 > &v141)
              {
                v123 = &v141 - v150;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v107 + 1, 24);
                v109 = v150;
                v108 = (v150 + v123);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v107 + 1, 24);
                v108 = &v141;
                v109 = v150;
              }
            }

            v110 = &v109[24 * v151];
            v111 = *v108;
            *(v110 + 2) = *(v108 + 2);
            *v110 = v111;
            ++v151;
          }
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v135);
        if (v148)
        {
          v141 = 2;
          v142 = v112;
          v113 = &v141;
          v114 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v141 && v150 + 24 * v151 > &v141)
            {
              v121 = &v141 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v114 = v150;
              v113 = (v150 + v121);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v113 = &v141;
              v114 = v150;
            }
          }

          v115 = &v114[24 * v151];
          v116 = *v113;
          *(v115 + 2) = *(v113 + 2);
          *v115 = v116;
          ++v151;
        }

        v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
        if (v148)
        {
          mlir::InFlightDiagnostic::report(&v148);
        }

        if (v159 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v149);
        }
      }

      else
      {
        v63 = 1;
      }
    }

    v77 = v144;
    if (v144 != v146)
    {
      goto LABEL_90;
    }

    return v63;
  }

  v147 = 259;
  mlir::Operation::emitOpError(a1, &v144, &v148);
  v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v159 == 1)
  {
    if (v158 != &v159)
    {
      free(v158);
    }

    v64 = __p;
    if (__p)
    {
      v65 = v157;
      v66 = __p;
      if (v157 != __p)
      {
        do
        {
          v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
        }

        while (v65 != v64);
        v66 = __p;
      }

      v157 = v64;
      operator delete(v66);
    }

    v67 = v154;
    if (v154)
    {
      v68 = v155;
      v69 = v154;
      if (v155 != v154)
      {
        do
        {
          v71 = *--v68;
          v70 = v71;
          *v68 = 0;
          if (v71)
          {
            operator delete[](v70);
          }
        }

        while (v68 != v67);
        v69 = v154;
      }

      v155 = v67;
      operator delete(v69);
    }

    v77 = v150;
    if (v150 != v153)
    {
LABEL_90:
      free(v77);
    }
  }

  return v63;
}

uint64_t mlir::mps::TileOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v36[0] = a4;
  v36[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v36, 0);
  v12 = mlir::ValueRange::dereference_iterator(v36, 1);
  v13 = *(v11 + 8);
  v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v13 & 0xFFFFFFFFFFFFFFF8));
  v35[0] = v14;
  v35[1] = v15;
  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
    v30 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

  else
  {
    v40 = v42;
    v41 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(v12, &v40) & 1) == 0 && v41)
    {
      LODWORD(v41) = 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
    v37 = v39;
    v38 = 0x400000000;
    if (v17)
    {
      v18 = ArgAttrsAttr;
      v19 = v17;
      if (v17 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v17, 8);
        v20 = v38;
        v22 = v37;
        v21 = v38;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = v39;
      }

      memset_pattern16(&v22[v20], &unk_1E096FAD0, 8 * v19);
      v23 = v21 + v19;
      LODWORD(v38) = v21 + v19;
      if (v19 == v41)
      {
        v24 = 0;
        v25 = v40;
        do
        {
          v27 = *(v18 + 8 * v24);
          v26 = 0x8000000000000000;
          if (v27 != 0x8000000000000000)
          {
            v28 = v25[v24];
            if (v28 < 0)
            {
              v26 = 0x8000000000000000;
            }

            else
            {
              v26 = (v28 * v27) & ~((v28 * v27) >> 63);
            }
          }

          v22[v24++] = v26;
        }

        while (v19 != v24);
      }
    }

    else
    {
      v23 = 0;
      v22 = v39;
    }

    v31 = v23;
    isSplat = mlir::ElementsAttr::isSplat(v35);
    v30 = mlir::RankedTensorType::get(v22, v31, isSplat, 0);
    if (v37 != v39)
    {
      free(v37);
    }

    if (v40 != v42)
    {
      free(v40);
    }
  }

  v33 = *(a11 + 8);
  if (v33 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v33 + 1, 8);
    LODWORD(v33) = *(a11 + 8);
  }

  *(*a11 + 8 * v33) = v30;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::inferReturnTypesForGradient(void *a1, void *a2, uint64_t a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v15[0] = v5;
  v15[1] = v6;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v11 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
LABEL_7:
      v14 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v12 + 1, 8);
      v11 = v14;
      LODWORD(v12) = *(a3 + 8);
    }
  }

  else
  {
    v8 = ElementTypeOrSelf;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
    v11 = mlir::RankedTensorType::get(ArgAttrsAttr, v10, v8, 0);
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
      goto LABEL_7;
    }
  }

  *(*a3 + 8 * v12) = v11;
  ++*(a3 + 8);
  return 1;
}

uint64_t mlir::mps::CastOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x1E69E9840];
  v37[0] = a4;
  v37[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v29 = a6;
  v30[0] = 0;
  v31 = 0;
  v32 = v14;
  v33 = a9;
  v34 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v29);
    if (v31 == 1)
    {
      v31 = 0;
    }

    mlir::OperationName::OperationName(v30, "mps.cast", 8, Context);
    v31 = 1;
  }

  v35 = a4;
  v36 = a5;
  if (a5)
  {
    v16.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::CastOpAdaptor::verify(&v29, v16))
    {
      v38 = v35;
      v17 = mlir::ValueRange::dereference_iterator(&v38, 0);
      v28[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
      v28[1] = v18;
      if (v28[0])
      {
        *&v38 = v32;
        Value = mlir::AffineMapAttr::getValue(&v38);
        LOBYTE(v38) = 0;
        v39 = 0;
        v20 = mlir::ShapedType::cloneWith(v28, &v38, Value);
        v21 = *(a11 + 8);
        if (v21 < *(a11 + 12))
        {
LABEL_12:
          *(*a11 + 8 * v21) = v20;
          goto LABEL_16;
        }
      }

      else
      {
        v20 = *(mlir::ValueRange::dereference_iterator(v37, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v21 = *(a11 + 8);
        if (v21 < *(a11 + 12))
        {
          goto LABEL_12;
        }
      }

      v26 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
      v20 = v26;
      v21 = *(a11 + 8);
      goto LABEL_12;
    }
  }

  v22 = mlir::Float32Type::get(this, a2);
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    v27 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v24 + 1, 8);
    v23 = v27;
    LODWORD(v24) = *(a11 + 8);
  }

  *(*a11 + 8 * v24) = v23;
LABEL_16:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::CastOpAdaptor::verify(mlir::mps::CastOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v14[0] = *(this + 3);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.cast' op requires attribute 'resultElementType'";
    v13 = 259;
    mlir::emitError(a2.var0.var0, &v12, v14);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v20;
        v5 = __p;
        if (v20 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v20 = v3;
        operator delete(v5);
      }

      v6 = v17;
      if (v17)
      {
        v7 = v18;
        v8 = v17;
        if (v18 != v17)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              operator delete[](v9);
            }
          }

          while (v7 != v6);
          v8 = v17;
        }

        v18 = v6;
        operator delete(v8);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v2;
}

uint64_t mlir::mps::ReinterpretCastOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v53[0] = a4;
  v53[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v45 = a6;
  v46[0] = 0;
  v47 = 0;
  v48 = v14;
  v49 = a9;
  v50 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v45);
    if (v47 == 1)
    {
      v47 = 0;
    }

    mlir::OperationName::OperationName(v46, "mps.reinterpret_cast", 20, Context);
    v47 = 1;
  }

  v51 = a4;
  v52 = a5;
  if (!a5 || (v16.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::ReinterpretCastOpAdaptor::verify(&v45, v16)))
  {
    v26 = mlir::Float32Type::get(this, a2);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
LABEL_18:
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

LABEL_15:
    *(*a11 + 8 * v28) = v27;
    ++*(a11 + 8);
    return 1;
  }

  v17 = mlir::ValueRange::dereference_iterator(v53, 0);
  v41[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
  v41[1] = v18;
  v42 = v48;
  Value = mlir::AffineMapAttr::getValue(&v42);
  if (!v41[0] || (mlir::CallOpInterface::getArgOperands(v41) & 1) == 0)
  {
    v27 = mlir::UnrankedTensorType::get(Value);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v21 = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v23 = (v21 + 8 * v22);
  v42 = v44;
  v43 = 0x400000000;
  v24 = (v23 - ArgAttrsAttr) >> 3;
  if (v24 < 5)
  {
    v25 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v24, 8);
    v25 = v43;
  }

  if (v23 != ArgAttrsAttr)
  {
    memcpy(v42 + 8 * v25, ArgAttrsAttr, v23 - ArgAttrsAttr);
    v25 = v43;
  }

  LODWORD(v43) = v25 + ((v23 - ArgAttrsAttr) >> 3);
  ElementBitWidth = mlir::mps::getElementBitWidth(v41[0]);
  v32 = mlir::mps::getElementBitWidth(Value);
  v33 = v42;
  v34 = v43;
  v35 = v42 + 8 * v43;
  v36 = *(v35 - 1);
  if (v36 == 0x8000000000000000)
  {
    goto LABEL_28;
  }

  if (ElementBitWidth > v32)
  {
    v37 = ElementBitWidth / v32 * v36;
LABEL_27:
    *(v35 - 1) = v37;
    goto LABEL_28;
  }

  if (ElementBitWidth < v32)
  {
    v37 = v36 / (v32 / ElementBitWidth);
    goto LABEL_27;
  }

LABEL_28:
  v38 = mlir::RankedTensorType::get(v33, v34, Value, 0);
  v39 = *(a11 + 8);
  if (v39 >= *(a11 + 12))
  {
    v40 = v38;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v39 + 1, 8);
    v38 = v40;
    LODWORD(v39) = *(a11 + 8);
  }

  *(*a11 + 8 * v39) = v38;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

BOOL mlir::mps::ReinterpretCastOpAdaptor::verify(mlir::mps::ReinterpretCastOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v14[0] = *(this + 3);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.reinterpret_cast' op requires attribute 'result_element_type'";
    v13 = 259;
    mlir::emitError(a2.var0.var0, &v12, v14);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v20;
        v5 = __p;
        if (v20 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v20 = v3;
        operator delete(v5);
      }

      v6 = v17;
      if (v17)
      {
        v7 = v18;
        v8 = v17;
        if (v18 != v17)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              operator delete[](v9);
            }
          }

          while (v7 != v6);
          v8 = v17;
        }

        v18 = v6;
        operator delete(v8);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v2;
}

BOOL mlir::mps::ReinterpretCastOp::verify(mlir::mps::ReinterpretCastOp *this)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v39[0] = v2;
  v39[1] = v13;
  isSplat = mlir::ElementsAttr::isSplat(v39);
  if (!mlir::CallOpInterface::getArgOperands(v39))
  {
    return 1;
  }

  ElementBitWidth = mlir::mps::getElementBitWidth(isSplat);
  v42[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v42);
  v17 = mlir::mps::getElementBitWidth(Value);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v39);
  if (ElementBitWidth >= v17)
  {
    return 1;
  }

  v20 = *(ArgAttrsAttr + 8 * v19 - 8);
  if (v20 == 0x8000000000000000)
  {
    return 1;
  }

  v21 = v17 / ElementBitWidth;
  if (!(v20 % v21))
  {
    return 1;
  }

  v37 = "innermost dimension needs to be divisible by ";
  v38 = 259;
  mlir::OpState::emitOpError(this, &v37, v42);
  if (v42[0])
  {
    v40 = 5;
    v41 = v21;
    v22 = &v40;
    v23 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v40 && v43 + 24 * v44 > &v40)
      {
        v36 = &v40 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v23 = v43;
        v22 = (v43 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v22 = &v40;
        v23 = v43;
      }
    }

    v24 = &v23[24 * v44];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v44;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  v27 = result;
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
    result = v27;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v27;
    }

    v28 = __p;
    if (__p)
    {
      v29 = v50;
      v30 = __p;
      if (v50 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v50 = v28;
      operator delete(v30);
      result = v27;
    }

    v31 = v47;
    if (v47)
    {
      v32 = v48;
      v33 = v47;
      if (v48 != v47)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v47;
      }

      v48 = v31;
      operator delete(v33);
      result = v27;
    }

    if (v43 != v46)
    {
      free(v43);
      return v27;
    }
  }

  return result;
}

uint64_t mlir::mps::ShapeOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v28[0] = a4;
  v28[1] = a5;
  if (a5 == 1)
  {
    v13 = mlir::ValueRange::dereference_iterator(v28, 0);
    v26[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
    v26[1] = v14;
    if (v26[0])
    {
      if (mlir::CallOpInterface::getArgOperands(v26))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v26);
      }

      else
      {
        v15 = 0x8000000000000000;
      }

      v25 = v15;
      v27 = *(mlir::ValueRange::dereference_iterator(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      Context = mlir::Attribute::getContext(&v27);
      v21 = mlir::IntegerType::get(Context, 32, 1u);
      v22 = mlir::RankedTensorType::get(&v25, 1, v21, 0);
      v23 = *(a11 + 8);
      if (v23 >= *(a11 + 12))
      {
        v24 = v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
        v22 = v24;
        LODWORD(v23) = *(a11 + 8);
      }

      *(*a11 + 8 * v23) = v22;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v27 = *(mlir::ValueRange::dereference_iterator(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v19.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a2, v19, "unexpected type ", &v27);
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[17],mlir::Type>(mlir *a1, Location a2, char *a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[5],mlir::Type>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

BOOL mlir::mps::RankOp::inferReturnTypes(uint64_t a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v21[0] = a4;
  v21[1] = a5;
  if (a5 == 1)
  {
    v19 = 1;
    v20 = *(mlir::ValueRange::dereference_iterator(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Attribute::getContext(&v20);
    v12 = mlir::IntegerType::get(Context, 32, 1u);
    v13 = mlir::RankedTensorType::get(&v19, 1, v12, 0);
    v14 = *(a11 + 8);
    if (v14 >= *(a11 + 12))
    {
      v18 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v14 + 1, 8);
      v13 = v18;
      LODWORD(v14) = *(a11 + 8);
    }

    *(*a11 + 8 * v14) = v13;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::DimensionSizeOp::inferReturnTypes(uint64_t a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v36[0] = a4;
  v36[1] = a5;
  if (a5 == 2)
  {
    v11 = mlir::ValueRange::dereference_iterator(v36, 1);
    v31[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
    v31[1] = v12;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
    v15 = v13;
    v33 = v35;
    v34 = 0x600000000;
    v16 = (8 * v13) >> 3;
    if (v16 < 7)
    {
      v17 = 0;
      v18 = 8 * v13;
      if (!v13)
      {
LABEL_10:
        v22 = v17 + (v18 >> 3);
        LODWORD(v34) = v22;
        if (!v22)
        {
          if (HIDWORD(v34))
          {
            v23 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, 1uLL, 8);
            v23 = v34;
          }

          *(v33 + v23) = 1;
          v22 = v34 + 1;
          LODWORD(v34) = v34 + 1;
        }

        v24 = v33;
        v25 = v22;
        v32 = *(mlir::ValueRange::dereference_iterator(v36, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        Context = mlir::Attribute::getContext(&v32);
        v27 = mlir::IntegerType::get(Context, 32, 1u);
        v28 = mlir::RankedTensorType::get(v24, v25, v27, 0);
        v29 = *(a11 + 8);
        if (v29 >= *(a11 + 12))
        {
          v30 = v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
          v28 = v30;
          LODWORD(v29) = *(a11 + 8);
        }

        *(*a11 + 8 * v29) = v28;
        ++*(a11 + 8);
        if (v33 != v35)
        {
          free(v33);
        }

        return 1;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v16, 8);
      v17 = v34;
      v18 = 8 * v15;
      if (!v15)
      {
        goto LABEL_10;
      }
    }

    memcpy(v33 + 8 * v17, ArgAttrsAttr, v18);
    v17 = v34;
    goto LABEL_10;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::DynamicShapeCastOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
LABEL_20:
    v25 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      v50 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
      v25 = v50;
      LODWORD(v26) = *(a11 + 8);
    }

    *(*a11 + 8 * v26) = v25;
    ++*(a11 + 8);
    return 1;
  }

  if (a7)
  {
    v13 = *a7;
    v61 = a6;
    v62[0] = 0;
    v63 = 0;
    v64 = v13;
    v65 = a9;
    v66 = a10;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v61 = a6;
    v62[0] = 0;
    v63 = 0;
    v64 = 0;
    v65 = a9;
    v66 = a10;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  Context = mlir::Attribute::getContext(&v61);
  if (v63 == 1)
  {
    v63 = 0;
  }

  mlir::OperationName::OperationName(v62, "mps.dynamic_shape_cast", 22, Context);
  v63 = 1;
LABEL_10:
  v67 = a4;
  v68 = a5;
  v58 = a4;
  v59 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v58, 0);
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
  v52[0] = v17;
  v52[1] = v18;
  if (!v17)
  {
LABEL_19:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v17);
    goto LABEL_20;
  }

  if (!mlir::CallOpInterface::getArgOperands(v52) || v64)
  {
    v17 = v52[0];
    goto LABEL_19;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v52);
  if (!v19)
  {
    v28 = v68;
    v58 = v67;
    v59 = 1;
    v29 = mlir::ValueRange::offset_base(&v58, 1);
    if (v28 != v59)
    {
      v58 = v29;
      v59 = 0;
      if (mlir::ValueRange::dereference_iterator(&v58, 0))
      {
        v30 = mlir::getElementTypeOrSelf(v52[0]);
        return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v30);
      }
    }

    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52[0]);
    return 1;
  }

  v58 = v60;
  v59 = 0x600000000;
  v20 = v68;
  __b = v67;
  v56 = 1;
  v21 = mlir::ValueRange::offset_base(&__b, 1);
  if (v20 != v56)
  {
    __b = v21;
    v56 = 0;
    v31 = mlir::ValueRange::dereference_iterator(&__b, 0);
    if ((mlir::matchConstantWithIntVector<long long>(v31, &v58) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_29:
    __b = v57;
    v56 = 0x600000000;
    v32 = v58;
    v33 = v59;
    mlir::CallableOpInterface::getArgAttrsAttr(v52);
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v52);
      v36 = mlir::CallableOpInterface::getArgAttrsAttr(v52);
      llvm::SmallVector<long long,6u>::SmallVector<long long const*,void>(&v53, ArgAttrsAttr, (v36 + 8 * v37));
      v38 = v53;
      if (v56)
      {
        v39 = __b;
        v40 = 8 * v56;
        do
        {
          v41 = *v39++;
          *(v38 + 8 * v41) = 0x8000000000000000;
          v40 -= 8;
        }

        while (v40);
      }

      v42 = mlir::ShapedType::clone(v52, v38, DWORD2(v53));
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v42);
      if (v53 != &v54)
      {
        free(v53);
      }

      result = 1;
    }

    else
    {
      v53 = v67;
      v46 = mlir::ValueRange::dereference_iterator(&v53, 0);
      v47 = mlir::getElementTypeOrSelf(v46);
      result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v47);
    }

    if (__b != v57)
    {
      v48 = result;
      free(__b);
      result = v48;
    }

    goto LABEL_48;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v58))
  {
    goto LABEL_29;
  }

LABEL_16:
  mlir::CallableOpInterface::getArgAttrsAttr(v52);
  v23 = v22;
  __b = v57;
  HIDWORD(v56) = 6;
  if (v22 < 7)
  {
    if (v22)
    {
      memset_pattern16(v57, &unk_1E096FAD0, 8 * v22);
    }

    v24 = v57;
  }

  else
  {
    LODWORD(v56) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v57, v22, 8);
    v24 = __b;
    memset_pattern16(__b, &unk_1E096FAD0, 8 * v23);
  }

  LODWORD(v56) = v23;
  *&v53 = v24;
  *(&v53 + 1) = v23;
  v54 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v52);
  v44 = mlir::ShapedType::cloneWith(v52, &v53, isSplat);
  v45 = *(a11 + 8);
  if (v45 >= *(a11 + 12))
  {
    v51 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v45 + 1, 8);
    v44 = v51;
    LODWORD(v45) = *(a11 + 8);
  }

  *(*a11 + 8 * v45) = v44;
  ++*(a11 + 8);
  if (__b != v57)
  {
    free(__b);
  }

  result = 1;
LABEL_48:
  if (v58 != v60)
  {
    v49 = result;
    free(v58);
    return v49;
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::getPositiveAxes(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v70[6] = *MEMORY[0x1E69E9840];
  v68 = v70;
  v69 = 0x600000000;
  if (!a2)
  {
    goto LABEL_52;
  }

  v13 = 8 * a2;
  do
  {
    v17 = *a1;
    v18.var0.var0 = 0;
    if (v19)
    {
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        v20 = PositiveAxis;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
        PositiveAxis = v20;
        v14 = *(a4 + 8);
      }

      v15 = a4;
    }

    else
    {
      v14 = v69;
      v15 = &v68;
      if (v69 >= HIDWORD(v69))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
        v14 = v69;
      }

      PositiveAxis = v17;
    }

    (*v15)[v14] = PositiveAxis;
    ++*(v15 + 2);
    ++a1;
    v13 -= 8;
  }

  while (v13);
  if (v69)
  {
    if (a6)
    {
      v53 = "invalid axes: ";
      v56 = 259;
      mlir::emitError(a5, &v53, v57);
      v21 = v69;
      if (v69)
      {
        v22 = v68;
        if (v57[0])
        {
          v23 = *v68;
          LODWORD(v53) = 2;
          v54 = v23;
          v24 = &v53;
          v25 = v58;
          if (v59 >= v60)
          {
            if (v58 <= &v53 && v58 + 24 * v59 > &v53)
            {
              v52 = &v53 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v25 = v58;
              v24 = (v58 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v24 = &v53;
              v25 = v58;
            }
          }

          v26 = &v25[24 * v59];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v59;
        }

        if (v21 != 1 && v57[0])
        {
          v28 = v22 + 1;
          v29 = 8 * v21 - 16;
LABEL_21:
          LODWORD(v53) = 3;
          v54 = ", ";
          v55 = 2;
          v30 = v58;
          if (v59 >= v60)
          {
            if (v58 <= &v53 && v58 + 24 * v59 > &v53)
            {
              v40 = &v53 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v30 = v58;
              v31 = (v58 + v40);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v31 = &v53;
              v30 = v58;
            }
          }

          else
          {
            v31 = &v53;
          }

          v32 = &v30[24 * v59];
          v33 = *v31;
          *(v32 + 2) = v31[2];
          *v32 = v33;
          v34 = ++v59;
          if (v57[0])
          {
            v35 = *v28;
            LODWORD(v53) = 2;
            v54 = v35;
            v36 = v58;
            if (v34 >= v60)
            {
              if (v58 <= &v53 && v58 + 24 * v34 > &v53)
              {
                v41 = &v53 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v34 + 1, 24);
                v36 = v58;
                v37 = (v58 + v41);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v34 + 1, 24);
                v37 = &v53;
                v36 = v58;
              }
            }

            else
            {
              v37 = &v53;
            }

            v38 = &v36[24 * v59];
            v39 = *v37;
            *(v38 + 2) = v37[2];
            *v38 = v39;
            ++v59;
          }

          while (v29)
          {
            ++v28;
            v29 -= 8;
            if (v57[0])
            {
              goto LABEL_21;
            }
          }
        }
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
      if (v57[0])
      {
        mlir::InFlightDiagnostic::report(v57);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v65;
          v45 = __p;
          if (v65 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v65 = v43;
          operator delete(v45);
        }

        v46 = v62;
        if (v62)
        {
          v47 = v63;
          v48 = v62;
          if (v63 != v62)
          {
            do
            {
              v50 = *--v47;
              v49 = v50;
              *v47 = 0;
              if (v50)
              {
                operator delete[](v49);
              }
            }

            while (v47 != v46);
            v48 = v62;
          }

          v63 = v46;
          operator delete(v48);
        }

        if (v58 != v61)
        {
          free(v58);
        }
      }
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
LABEL_52:
    v42 = 1;
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return v42;
}

BOOL mlir::mps::DynamicShapeCastOp::verify(mlir::mps::DynamicShapeCastOp *this)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 != &v5[2 * v6] && *v7 == v4)
    {
      v15 = v7[1];
      v32 = v2;
      v33 = v15;
      if (!mlir::CallOpInterface::getArgOperands(&v32))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v32 = v2;
  v33 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v32))
  {
    return 1;
  }

LABEL_15:
  v13 = *this;
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64))
  {
    return 1;
  }

  v45 = v47;
  v46 = 0x600000000;
  if (*(v13 + 68) != 1)
  {
    if ((mlir::matchConstantWithIntVector<long long>(*(*(v13 + 72) + 56), &v45) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v43[0] = v44;
    v43[1] = 0x600000000;
    v16 = v45;
    v17 = v46;
    mlir::CallableOpInterface::getArgAttrsAttr(&v32);
    {
      result = 1;
    }

    else
    {
      v30 = "failed: could not extract valid positive axes values for the op";
      v31 = 259;
      mlir::OpState::emitOpError(this, &v30, v34);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      v19 = result;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
        result = v19;
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
          result = v19;
        }

        v20 = __p;
        if (__p)
        {
          v21 = v40;
          v22 = __p;
          if (v40 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v40 = v20;
          operator delete(v22);
          result = v19;
        }

        v23 = v37;
        if (v37)
        {
          v24 = v38;
          v25 = v37;
          if (v38 != v37)
          {
            do
            {
              v27 = *--v24;
              v26 = v27;
              *v24 = 0;
              if (v27)
              {
                operator delete[](v26);
              }
            }

            while (v24 != v23);
            v25 = v37;
          }

          v38 = v23;
          operator delete(v25);
          result = v19;
        }

        if (v35 != &v36)
        {
          free(v35);
          result = v19;
        }
      }
    }

    if (v43[0] != v44)
    {
      v28 = result;
      free(v43[0]);
      result = v28;
    }

    goto LABEL_48;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v45))
  {
    goto LABEL_24;
  }

LABEL_20:
  result = 1;
LABEL_48:
  if (v45 != v47)
  {
    v29 = result;
    free(v45);
    return v29;
  }

  return result;
}

BOOL mlir::mps::BroadcastToOp::inferReturnTypes(uint64_t a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v45[0] = a4;
  v45[1] = a5;
  if (a5 == 2)
  {
    v11 = mlir::ValueRange::dereference_iterator(v45, 0);
    v38[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
    v38[1] = v12;
    v13 = mlir::ValueRange::dereference_iterator(v45, 1);
    v42 = v44;
    v43 = 0x600000000;
    if (v38[0] && (v14 = v13, mlir::CallOpInterface::getArgOperands(v38)) && (mlir::matchConstantWithIntVector<long long>(v14, &v42) & 1) != 0)
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v38);
      v39 = v41;
      v40 = 0x600000000;
      if (v16 <= v43)
      {
        v17 = v43;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        v18 = ArgAttrsAttr;
        v19 = v16;
        if (v17 < 7)
        {
          v20 = 0;
          v21 = v41;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v17, 8);
          v20 = v40;
          v21 = v39;
        }

        if (v17 != v20)
        {
          bzero(&v21[v20], 8 * (v17 - v20));
        }

        LODWORD(v40) = v17;
        if (v17)
        {
          v29 = 0;
          v17 = v17;
          v30 = v42 + 8 * v43 - 8;
          v31 = v43 - 1;
          while (1)
          {
            if ((v19 - 1 + v29) < 0)
            {
              v32 = 1;
              if (((v31 + v29) & 0x8000000000000000) == 0)
              {
LABEL_31:
                v33 = *&v30[8 * v29];
                if (v33 == 0x8000000000000000)
                {
                  v34 = v32;
                }

                else
                {
                  v34 = *&v30[8 * v29];
                }

                if (v33 != 1)
                {
                  v32 = v34;
                }
              }
            }

            else
            {
              v32 = *(v18 + 8 * v19 - 8 + 8 * v29);
              if (((v31 + v29) & 0x8000000000000000) == 0)
              {
                goto LABEL_31;
              }
            }

            v21[v17 - 1 + v29--] = v32;
            if (-v17 == v29)
            {
              goto LABEL_38;
            }
          }
        }

        v17 = 0;
      }

      else
      {
        v21 = v41;
      }

LABEL_38:
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38[0]);
      v27 = mlir::RankedTensorType::get(v21, v17, ElementTypeOrSelf, 0);
      if (v39 != v41)
      {
        v36 = v27;
        free(v39);
        v27 = v36;
      }
    }

    else
    {
      v25 = mlir::ValueRange::dereference_iterator(v45, 0);
      v26 = mlir::getElementTypeOrSelf((*(v25 + 8) & 0xFFFFFFFFFFFFFFF8));
      v27 = mlir::UnrankedTensorType::get(v26);
    }

    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      v37 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
      v27 = v37;
      LODWORD(v28) = *(a11 + 8);
    }

    *(*a11 + 8 * v28) = v27;
    ++*(a11 + 8);
    if (v42 != v44)
    {
      free(v42);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::BroadcastGradientArgsOp::inferReturnTypes(uint64_t *a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v57[2] = *MEMORY[0x1E69E9840];
  v57[0] = a4;
  v57[1] = a5;
  if (a5 == 2)
  {
    v12 = mlir::ValueRange::dereference_iterator(v57, 0);
    v54 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
    v55 = v13;
    v14 = mlir::ValueRange::dereference_iterator(v57, 1);
    v52 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v53 = v15;
    if (!mlir::CallOpInterface::getArgOperands(&v54) || !mlir::CallOpInterface::getArgOperands(&v52))
    {
LABEL_27:
      v56[0] = 0x8000000000000000;
      v45 = mlir::IntegerType::get(a1, 32, 1u);
      v46 = mlir::RankedTensorType::get(v56, 1, v45, 0);
      v47 = 0;
      v48 = *(a11 + 8);
      if (v48 < *(a11 + 12))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v54);
    if (!v17)
    {
LABEL_17:
      v32 = mlir::CallableOpInterface::getArgAttrsAttr(&v52);
      if (!v33)
      {
        goto LABEL_31;
      }

      v34 = (v33 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v34 >= 3)
      {
        v37 = v34 + 1;
        v38 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v36 = (v32 + 8 * v38);
        v39 = (v32 + 16);
        v40 = 0uLL;
        v41 = vnegq_f64(0);
        v42 = v38;
        v43 = 0uLL;
        do
        {
          v40 = vsubq_s64(v40, vceqq_s64(v39[-1], v41));
          v43 = vsubq_s64(v43, vceqq_s64(*v39, v41));
          v39 += 2;
          v42 -= 4;
        }

        while (v42);
        v35 = vaddvq_s64(vaddq_s64(v43, v40));
        if (v37 == v38)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v35 = 0;
        v36 = v32;
      }

      do
      {
        v44 = *v36++;
        if (v44 == 0x8000000000000000)
        {
          ++v35;
        }
      }

      while (v36 != (v32 + 8 * v33));
LABEL_26:
      if (v35)
      {
        goto LABEL_27;
      }

LABEL_31:
      mlir::mps::getBroadcastGradientArgs(v54, v55, v52, v53, v56);
      v49 = v56[0];
      v56[0] = (v56[1] - v56[0]) >> 3;
      v50 = mlir::IntegerType::get(a1, 32, 1u);
      v46 = mlir::RankedTensorType::get(v56, 1, v50, 0);
      v47 = v49;
      v48 = *(a11 + 8);
      if (v48 < *(a11 + 12))
      {
LABEL_28:
        *(*a11 + 8 * v48) = v46;
        ++*(a11 + 8);
        if (!v47)
        {
          return 1;
        }

LABEL_29:
        operator delete(v47);
        return 1;
      }

LABEL_32:
      v51 = v47;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v48 + 1, 8);
      v47 = v51;
      *(*a11 + 8 * (*(a11 + 8))++) = v46;
      if (!v51)
      {
        return 1;
      }

      goto LABEL_29;
    }

    v18 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v18 >= 3)
    {
      v24 = v18 + 1;
      v25 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v20 = (ArgAttrsAttr + 8 * v25);
      v26 = (ArgAttrsAttr + 16);
      v27 = 0uLL;
      v28 = vnegq_f64(0);
      v29 = v25;
      v30 = 0uLL;
      do
      {
        v27 = vsubq_s64(v27, vceqq_s64(v26[-1], v28));
        v30 = vsubq_s64(v30, vceqq_s64(*v26, v28));
        v26 += 2;
        v29 -= 4;
      }

      while (v29);
      v19 = vaddvq_s64(vaddq_s64(v30, v27));
      if (v24 == v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
      v20 = ArgAttrsAttr;
    }

    do
    {
      v31 = *v20++;
      if (v31 == 0x8000000000000000)
      {
        ++v19;
      }
    }

    while (v20 != (ArgAttrsAttr + 8 * v17));
LABEL_16:
    if (v19)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::ExpandDimsOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71[2] = *MEMORY[0x1E69E9840];
  v71[0] = a4;
  v71[1] = a5;
  if (a5 == 2)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v71, 0) + 8);
    v14 = mlir::ValueRange::dereference_iterator(v71, 0);
    v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v64[0] = v15;
    v64[1] = v16;
    if (!v15)
    {
      v26.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v26, "cannot exapnd_dims a non-shaped type");
    }

    v17 = v13 & 0xFFFFFFFFFFFFFFF8;
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
LABEL_46:
      v48 = *(a11 + 8);
      if (v48 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v48 + 1, 8);
        LODWORD(v48) = *(a11 + 8);
      }

      *(*a11 + 8 * v48) = v17;
      ++*(a11 + 8);
      return 1;
    }

    v68 = v70;
    v69 = 0x400000000;
    v18 = mlir::ValueRange::dereference_iterator(v71, 1);
    if ((mlir::matchConstantWithIntVector<long long>(v18, &v68) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
      v28 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v29 = *(a11 + 8);
      if (v29 >= *(a11 + 12))
      {
        v58 = v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
        v28 = v58;
        LODWORD(v29) = *(a11 + 8);
      }

      v30 = 0;
      *(*a11 + 8 * v29) = v28;
      ++*(a11 + 8);
      result = 1;
      v31 = v68;
      if (v68 == v70)
      {
LABEL_45:
        if (!v30)
        {
          return result;
        }

        goto LABEL_46;
      }

LABEL_44:
      v47 = result;
      free(v31);
      result = v47;
      goto LABEL_45;
    }

    v19 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(v64);
    v65 = v67;
    v66 = 0x400000000;
    v21 = v20 + v19;
    if (v20 + v19)
    {
      if (v21 < 5)
      {
        v22 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v21, 8);
        v22 = v66;
      }

      if (v21 != v22)
      {
        bzero(v65 + 8 * v22, 8 * (v21 - v22));
      }

      LODWORD(v66) = v21;
    }

    v62 = 0;
    v63 = 0;
    v61 = &v62;
    if (v69)
    {
      v59 = v17;
      v32 = v68;
      v33 = (v68 + 8 * v69);
      while (1)
      {
        v60 = *v32;
        v34 = ((v21 & (v60 >> 63)) + v60);
        if (v34 < 0 || v34 >= v21)
        {
          break;
        }

        v35 = v62;
        v36 = &v62;
        v37 = &v62;
        if (v62)
        {
          v38 = v62;
          do
          {
            v39 = v38[4];
            if (v34 >= v39)
            {
              if (v39 >= v34)
              {
                v43.var0.var0 = a3;
                v44 = mlir::emitOptionalError<char const(&)[66]>(a2, v43, "axis must be unique");
                goto LABEL_41;
              }

              ++v38;
            }

            v38 = *v38;
          }

          while (v38);
          while (1)
          {
            while (1)
            {
              v37 = v35;
              v40 = v35[4];
              if (v34 >= v40)
              {
                break;
              }

              v35 = *v37;
              v36 = v37;
              if (!*v37)
              {
                goto LABEL_36;
              }
            }

            if (v40 >= v34)
            {
              break;
            }

            v35 = v37[1];
            if (!v35)
            {
              v36 = v37 + 1;
              goto LABEL_36;
            }
          }
        }

        else
        {
LABEL_36:
          v41 = operator new(0x28uLL);
          v41[4] = v34;
          *v41 = 0;
          v41[1] = 0;
          v41[2] = v37;
          *v36 = v41;
          if (*v61)
          {
            v61 = *v61;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v62, v41);
          ++v63;
        }

        if (++v32 == v33)
        {
          v42 = v61;
          goto LABEL_51;
        }
      }

      v57.var0.var0 = a3;
      v44 = mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(a2, v57, "invalid axis: ", &v60, ", axis ", "must be in range -|rank| <= axis < |rank|");
LABEL_41:
      v45 = v44;
      v30 = 0;
      v17 = v59;
      std::__tree<unsigned long long>::destroy(&v61, v62);
      v46 = v65;
      if (v65 != v67)
      {
LABEL_42:
        free(v46);
      }
    }

    else
    {
      v42 = &v62;
LABEL_51:
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v64);
      if (v21 >= 1)
      {
        v50 = 0;
        v51 = v65;
        do
        {
          if (v42 == &v62 || v42[4] != v50)
          {
            v52 = *ArgAttrsAttr++;
            v51[v50] = v52;
          }

          else
          {
            v51[v50] = 1;
            v53 = v42[1];
            if (v53)
            {
              do
              {
                v42 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = v42;
                v42 = v42[2];
              }

              while (*v42 != v54);
            }
          }

          v50 = (v50 + 1);
        }

        while (v50 != v21);
      }

      v55 = v65;
      v45 = v66;
      isSplat = mlir::ElementsAttr::isSplat(v64);
      v17 = mlir::RankedTensorType::get(v55, v45, isSplat, 0);
      v30 = 1;
      std::__tree<unsigned long long>::destroy(&v61, v62);
      v46 = v65;
      if (v65 != v67)
      {
        goto LABEL_42;
      }
    }

    result = v45;
    v31 = v68;
    if (v68 == v70)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

BOOL mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(mlir *a1, Location a2, char *a3, char **a4, char *a5, const char *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            operator delete[](v17);
          }
        }

        while (v15 != v14);
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

BOOL mlir::mps::ExpandDimsOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v29 = v2;
    v30 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v29))
    {
      return 1;
    }

    goto LABEL_15;
  }

  v23 = v7[1];
  v29 = v2;
  v30 = v23;
  if (!mlir::CallOpInterface::getArgOperands(&v29))
  {
    return 1;
  }

LABEL_15:
  v27 = 0;
  v28 = 0;
  v13 = *(*(*this + 9) + 56);
  v26 = &v27;
  v24 = v13;
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, DefiningOp))
  {
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    v15 = *this;
    v16 = v27;
    v17 = v28;
    mlir::CallableOpInterface::getArgAttrsAttr(&v29);
    v19 = v18;
    NumElements = mlir::ElementsAttr::getNumElements(v27, v28);
    std::__tree<unsigned long long>::destroy(&v24, v25[0]);
    return v21;
  }

  return 1;
}

void mlir::mps::SqueezeOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = *MEMORY[0x1E69E9840];
  v95 = a4;
  v96 = a5;
  v13 = *(mlir::ValueRange::dereference_iterator(&v95, 0) + 8);
  v14 = mlir::ValueRange::dereference_iterator(&v95, 0);
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
  v84[0] = v15;
  v84[1] = v16;
  if (!v15)
  {
    v27.var0.var0 = a3;
    mlir::emitOptionalError<char const(&)[66]>(a2, v27, "cannot squeeze a non-shaped type");
    return;
  }

  v17 = v13 & 0xFFFFFFFFFFFFFFF8;
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_86;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v84);
  v92 = v94;
  v93 = 0x400000000;
  if (v96 != 2)
  {
    v46 = v18;
    if (mlir::CallOpInterface::getArgOperands(v84))
    {
      v47 = mlir::CallableOpInterface::getArgAttrsAttr(v84);
      if (!v48)
      {
LABEL_48:
        if (v46)
        {
          v50 = 8 * v46;
          do
          {
            v51 = *ArgAttrsAttr;
            if (*ArgAttrsAttr != 1)
            {
              v52 = v93;
              if (v93 >= HIDWORD(v93))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v93 + 1, 8);
                v52 = v93;
              }

              v92[v52] = v51;
              LODWORD(v93) = v93 + 1;
            }

            ++ArgAttrsAttr;
            v50 -= 8;
          }

          while (v50);
        }

        goto LABEL_83;
      }

      v49 = 8 * v48;
      while (*v47 != 0x8000000000000000)
      {
        ++v47;
        v49 -= 8;
        if (!v49)
        {
          goto LABEL_48;
        }
      }
    }

    isSplat = mlir::ElementsAttr::isSplat(v84);
    v54 = mlir::UnrankedTensorType::get(isSplat);
    v55 = *(a11 + 8);
    if (v55 >= *(a11 + 12))
    {
      v80 = v54;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v55 + 1, 8);
      v54 = v80;
      LODWORD(v55) = *(a11 + 8);
    }

    v56 = 0;
    *(*a11 + 8 * v55) = v54;
    ++*(a11 + 8);
    v57 = v92;
    if (v92 == v94)
    {
      goto LABEL_85;
    }

LABEL_84:
    free(v57);
    goto LABEL_85;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v95, 1);
  v83[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v83[1] = v21;
  if (!v83[0])
  {
    v58.var0.var0 = a3;
    mlir::emitOptionalError<char const(&)[66]>(a2, v58, "axes must be a shaped type");
    v56 = 0;
    v57 = v92;
    if (v92 != v94)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v89 = v91;
  v90 = 0x400000000;
  v22 = mlir::ValueRange::dereference_iterator(&v95, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v22, &v89) & 1) == 0)
  {
    if (mlir::CallOpInterface::getArgOperands(v83))
    {
      v59 = mlir::CallableOpInterface::getArgAttrsAttr(v83);
      if (!v60)
      {
LABEL_66:
        mlir::CallableOpInterface::getArgAttrsAttr(v84);
        v63 = v62;
        v64 = mlir::CallableOpInterface::getArgAttrsAttr(v83);
        NumElements = mlir::ShapedType::getNumElements(v64, v65);
        v67 = v63 - NumElements;
        if (v63 - NumElements < 0)
        {
          v74.var0.var0 = a3;
          mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a2, v74, "number of squeezed axes must ", "be less than rank of input");
          goto LABEL_80;
        }

        v68 = NumElements;
        LODWORD(v93) = 0;
        llvm::SmallVectorImpl<long long>::resize(&v92, v67);
        if (v63 == v68)
        {
          v69 = 1;
          v70 = v89;
          if (v89 != v91)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        }

        memset_pattern16(v92, &unk_1E096FAD0, 8 * v67);
        v69 = 1;
        v70 = v89;
        if (v89 == v91)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      v61 = 8 * v60;
      while (*v59 != 0x8000000000000000)
      {
        ++v59;
        v61 -= 8;
        if (!v61)
        {
          goto LABEL_66;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf((v13 & 0xFFFFFFFFFFFFFFF8));
    v72 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v72);
    v69 = 0;
    v70 = v89;
    if (v89 != v91)
    {
      goto LABEL_81;
    }

    goto LABEL_82;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v84);
  v24 = v23;
  v86 = 1;
  memset_pattern16(&v87, &unk_1E0970A00, 0x20uLL);
  if (!v90)
  {
LABEL_27:
    LODWORD(v93) = 0;
    if (v24 >= 1)
    {
      v37 = 0;
      for (i = 0; i != v24; ++i)
      {
        if (v86)
        {
          v39 = &v87;
          v40 = 3;
          v41 = (37 * i) & 3;
          v42 = *(&v87 + v41);
          if (i != v42)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (!v88)
          {
            goto LABEL_38;
          }

          v39 = v87;
          v40 = v88 - 1;
          v41 = (v88 - 1) & (37 * i);
          v42 = *(v87 + v41);
          if (i != v42)
          {
LABEL_34:
            v43 = 1;
            while (v42 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v44 = v41 + v43++;
              v41 = v44 & v40;
              v42 = v39[v41];
              if (i == v42)
              {
                goto LABEL_41;
              }
            }

LABEL_38:
            v45 = *ArgAttrsAttr;
            if (v37 >= HIDWORD(v93))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v37 + 1, 8);
              v37 = v93;
            }

            v92[v37] = v45;
            v37 = v93 + 1;
            LODWORD(v93) = v93 + 1;
          }
        }

LABEL_41:
        ++ArgAttrsAttr;
      }
    }

    if ((v86 & 1) == 0)
    {
      llvm::deallocate_buffer(v87, (8 * v88));
    }

    v69 = 1;
    v70 = v89;
    if (v89 == v91)
    {
      goto LABEL_82;
    }

LABEL_81:
    free(v70);
    goto LABEL_82;
  }

  v25 = v89;
  v26 = (v89 + 8 * v90);
  while (1)
  {
    v82 = *v25;
    v32 = (v24 & (v82 >> 63)) + v82;
    v81 = v32;
    if (v32 < 0 || v24 <= v32)
    {
      v73.var0.var0 = a3;
      mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(a2, v73, "invalid axis: ", &v82, ", axis must be in range ", "-|rank| <= axis < |rank|");
      if (v86)
      {
        goto LABEL_80;
      }

LABEL_78:
      llvm::deallocate_buffer(v87, (8 * v88));
    }

    if ((v86 & 1) == 0)
    {
      break;
    }

    v28 = &v87;
    v29 = 3;
    v30 = (37 * v32) & 3;
    v31 = *(&v87 + v30);
    if (v32 != v31)
    {
      goto LABEL_16;
    }

LABEL_26:
    if (++v25 == v26)
    {
      goto LABEL_27;
    }
  }

  if (!v88)
  {
    goto LABEL_20;
  }

  v28 = v87;
  v29 = v88 - 1;
  v30 = (v88 - 1) & (37 * v32);
  v31 = *(v87 + v30);
  if (v32 == v31)
  {
    goto LABEL_26;
  }

LABEL_16:
  v33 = 1;
  while (v31 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = v30 + v33++;
    v30 = v34 & v29;
    v31 = v28[v30];
    if (v32 == v31)
    {
      goto LABEL_26;
    }
  }

LABEL_20:
  v35 = ArgAttrsAttr[v32];
  if (v35 == 1 || v35 == 0x8000000000000000)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v86, &v81, v85);
    goto LABEL_26;
  }

  v79.var0.var0 = a3;
  mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(a2, v79, "squeezed axis must have length 1, ", "input.shape[", &v81, "] == ", &ArgAttrsAttr[v32]);
  if ((v86 & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_80:
  v69 = 0;
  v70 = v89;
  if (v89 != v91)
  {
    goto LABEL_81;
  }

LABEL_82:
  if ((v69 & 1) == 0)
  {
    v56 = 0;
    v57 = v92;
    if (v92 == v94)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_83:
  v75 = v92;
  v76 = v93;
  v77 = mlir::ElementsAttr::isSplat(v84);
  v17 = mlir::RankedTensorType::get(v75, v76, v77, 0);
  v56 = 1;
  v57 = v92;
  if (v92 != v94)
  {
    goto LABEL_84;
  }

LABEL_85:
  if (v56)
  {
LABEL_86:
    v78 = *(a11 + 8);
    if (v78 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v78 + 1, 8);
      LODWORD(v78) = *(a11 + 8);
    }

    *(*a11 + 8 * v78) = v17;
    ++*(a11 + 8);
  }
}

BOOL mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(mlir *a1, Location a2, char *a3, const char *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

BOOL mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(mlir *a1, Location a2, char *a3, char *a4, char **a5, char *a6, char **a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[29],long long &,char const(&)[4],long long>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

BOOL mlir::mps::SqueezeOp::verify(mlir::mps::SqueezeOp *this)
{
  v75[4] = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 != &v5[2 * v6] && *v7 == v4)
    {
      v17 = v7[1];
      v54 = v2;
      v55 = v17;
      if (mlir::CallOpInterface::getArgOperands(&v54))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v54 = v2;
  v55 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v54))
  {
    return 1;
  }

LABEL_15:
  if (*(*this + 68) == 1 || !*(*(*this + 72) + 56))
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v54);
  v14 = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v54);
  v73 = v75;
  v74 = 0x400000000;
  if (*(*this + 68) != 1)
  {
    if ((mlir::matchConstantWithIntVector<long long>(*(*(*this + 72) + 56), &v73) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v70 = v72;
    v71 = 0x400000000;
    {
      if (v71)
      {
        v18 = v70;
        v19 = 8 * v71;
        while (1)
        {
          v20 = *v18;
          v21 = *(ArgAttrsAttr + 8 * *v18);
          if (v21 != 0x8000000000000000 && v21 != 1)
          {
            break;
          }

          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_33;
          }
        }

        v52 = "squeezed axis must have length 1, input.shape[";
        v53 = 259;
        mlir::OpState::emitOpError(this, &v52, v59);
        if (v59[0])
        {
          v56 = 2;
          v57 = v20;
          v25 = &v56;
          v26 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v49 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v26 = v60;
              v25 = (v60 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v25 = &v56;
              v26 = v60;
            }
          }

          v27 = &v26[24 * v61];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          v29 = ++v61;
          if (v59[0])
          {
            v56 = 3;
            v57 = "] == ";
            v58 = 5;
            v30 = &v56;
            v31 = v60;
            if (v29 >= v62)
            {
              if (v60 <= &v56 && v60 + 24 * v29 > &v56)
              {
                v50 = &v56 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v29 + 1, 24);
                v31 = v60;
                v30 = (v60 + v50);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v29 + 1, 24);
                v30 = &v56;
                v31 = v60;
              }
            }

            v32 = &v31[24 * v61];
            v33 = *v30;
            *(v32 + 2) = *(v30 + 2);
            *v32 = v33;
            v34 = ++v61;
            if (v59[0])
            {
              v35 = *(ArgAttrsAttr + 8 * v20);
              v56 = 2;
              v57 = v35;
              v36 = &v56;
              v37 = v60;
              if (v34 >= v62)
              {
                if (v60 <= &v56 && v60 + 24 * v34 > &v56)
                {
                  v51 = &v56 - v60;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v34 + 1, 24);
                  v37 = v60;
                  v36 = (v60 + v51);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v34 + 1, 24);
                  v36 = &v56;
                  v37 = v60;
                }
              }

              v38 = &v37[24 * v61];
              v39 = *v36;
              *(v38 + 2) = *(v36 + 2);
              *v38 = v39;
              ++v61;
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        v40 = result;
        if (v59[0])
        {
          mlir::InFlightDiagnostic::report(v59);
          result = v40;
        }

        if (v69)
        {
          if (v68 != &v69)
          {
            free(v68);
            result = v40;
          }

          v41 = __p;
          if (__p)
          {
            v42 = v67;
            v43 = __p;
            if (v67 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v67 = v41;
            operator delete(v43);
            result = v40;
          }

          v44 = v64;
          if (v64)
          {
            v45 = v65;
            v46 = v64;
            if (v65 != v64)
            {
              do
              {
                v48 = *--v45;
                v47 = v48;
                *v45 = 0;
                if (v48)
                {
                  operator delete[](v47);
                }
              }

              while (v45 != v44);
              v46 = v64;
            }

            v65 = v44;
            operator delete(v46);
            result = v40;
          }

          if (v60 != v63)
          {
            free(v60);
            result = v40;
          }
        }
      }

      else
      {
LABEL_33:
        result = 1;
      }
    }

    else
    {
      result = 0;
    }

    if (v70 != v72)
    {
      v23 = result;
      free(v70);
      result = v23;
    }

    goto LABEL_37;
  }

  if (mlir::matchConstantWithIntVector<long long>(0, &v73))
  {
    goto LABEL_24;
  }

LABEL_19:
  result = 1;
LABEL_37:
  if (v73 != v75)
  {
    v24 = result;
    free(v73);
    return v24;
  }

  return result;
}

BOOL mlir::mps::Flatten2DOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v59[0] = a4;
  v59[1] = a5;
  if (a5 == 2)
  {
    v13 = mlir::ValueRange::dereference_iterator(v59, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = 0;
    }

    v47 = v16;
    if (!v16)
    {
      v36.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v36, "cannot Flatten2D a non-tensor input type.");
    }

    v56 = v58;
    v57 = 0x200000002;
    v17 = mlir::ValueRange::dereference_iterator(v59, 1);
    v51 = v16;
    v58[0] = 0x8000000000000000;
    v58[1] = 0x8000000000000000;
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      Value = mlir::ArrayAttr::getValue(&v51);
      v20 = v19;
      v50 = v19;
      v53 = 0;
      v54 = 0;
      v52 = &v53;
      v55 = v17;
      DefiningOp = mlir::Value::getDefiningOp(&v55);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v52, DefiningOp))
        {
          SingleInt = mlir::getSingleIntValue<long long>(v53, v54);
          v48 = SingleInt;
          v49 = v23;
          if (v23)
          {
            if (v20 <= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = v20;
            }

            v25 = (v24 & (SingleInt >> 63)) + SingleInt;
            v26 = 2;
            if (v20 > 2)
            {
              v26 = v20;
            }

            if ((v25 & 0x8000000000000000) != 0 || v26 < v25)
            {
              v37.var0.var0 = a3;
              if (!mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a2, v37, "invalid axis (", &v48, ") for shape of rank ", &v50))
              {
                result = 0;
LABEL_41:
                if (v56 != v58)
                {
                  v45 = result;
                  free(v56);
                  return v45;
                }

                return result;
              }
            }

            else
            {
              v27 = v56;
              *v56 = vdupq_n_s64(1uLL);
              if (v25)
              {
                v28 = 1;
                v29 = Value;
                v30 = v25;
                while (1)
                {
                  v32 = *v29++;
                  v31 = v32;
                  if (v32 == 0x8000000000000000)
                  {
                    break;
                  }

                  v28 *= v31;
                  *v27 = v28;
                  if (!--v30)
                  {
                    goto LABEL_32;
                  }
                }

                *v27 = 0x8000000000000000;
              }

LABEL_32:
              if (v25 < v20)
              {
                v38 = 1;
                while (1)
                {
                  v39 = *(Value + 8 * v25);
                  if (v39 == 0x8000000000000000)
                  {
                    break;
                  }

                  v38 *= v39;
                  v27[1] = v38;
                  if (++v25 >= v20)
                  {
                    goto LABEL_38;
                  }
                }

                v27[1] = 0x8000000000000000;
              }
            }
          }
        }
      }
    }

LABEL_38:
    v40 = v56;
    v41 = v57;
    ElementType = mlir::TensorType::getElementType(&v47);
    v43 = mlir::RankedTensorType::get(v40, v41, ElementType, 0);
    v44 = *(a11 + 8);
    if (v44 >= *(a11 + 12))
    {
      v46 = v43;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v44 + 1, 8);
      v43 = v46;
      LODWORD(v44) = *(a11 + 8);
    }

    *(*a11 + 8 * v44) = v43;
    ++*(a11 + 8);
    result = 1;
    goto LABEL_41;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::ReductionAndOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_and", 17, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionArgMaxOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v58 = a6;
  v59[0] = 0;
  v60 = 0;
  v61 = v16;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(v59, "mps.reduction_argmax", 20, Context);
    v60 = 1;
  }

  v64 = a4;
  v65 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(this, a2);
    v18 = v61;
    v19 = v64;
    v20 = v65;
    ElementTypeOrSelf = mlir::IntegerType::get(this, 32, 1u);
    v72 = v19;
    v73 = v20;
    v22 = mlir::ValueRange::dereference_iterator(&v72, 0);
    v23 = 0;
    if (v73 >= 2)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v72, 1);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(*v24 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 0;
    }

    v57 = v24;
    if (!v24)
    {
      v35.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v35, "input type must be a tensor type");
    }

    ElementType = ElementTypeOrSelf;
    if (ElementTypeOrSelf)
    {
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      ElementType = mlir::TensorType::getElementType(&v57);
      if (v23)
      {
LABEL_19:
        if (mlir::TensorType::hasRank(&v57))
        {
          v28 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*v28 + 136);
          if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v28 = 0;
          }

          v56 = v28;
          if (!v28)
          {
            v46.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v46, "axes type must be a tensor type");
          }

          if (mlir::TensorType::hasRank(&v56))
          {
            mlir::ArrayAttr::getValue(&v56);
            if (v31 >= 2)
            {
              v32.var0.var0 = a3;
              return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "axes tensor must have rank 0 or 1");
            }
          }

          __b = v71;
          v70 = 0x600000000;
          if (mlir::matchConstantWithIntVector<long long>(v23, &__b))
          {
            __p = v68;
            v67 = 0x600000000;
            Value = mlir::ArrayAttr::getValue(&v57);
            {
              v43 = __p;
              v44 = v67;
              if (!ElementTypeOrSelf)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v57);
              }

              v45 = mlir::RankedTensorType::get(v43, v44, ElementTypeOrSelf, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v45);
              result = 1;
            }

            else
            {
              result = 0;
            }

            if (__p != v68)
            {
              v53 = result;
              free(__p);
              result = v53;
            }

            goto LABEL_70;
          }

          if (!mlir::TensorType::hasRank(&v56))
          {
            goto LABEL_59;
          }

          mlir::ArrayAttr::getValue(&v56);
          if (!v47)
          {
            goto LABEL_64;
          }

          if (v47 == 1)
          {
            v48 = *mlir::ArrayAttr::getValue(&v56) == 1;
            if (!*mlir::ArrayAttr::getValue(&v56))
            {
              v49 = v57;
LABEL_63:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49);
LABEL_66:
              result = 1;
LABEL_70:
              if (__b != v71)
              {
                v54 = result;
                free(__b);
                return v54;
              }

              return result;
            }
          }

          else
          {
LABEL_59:
            v48 = 0;
          }

          if (!v18 && !v48)
          {
            v49 = mlir::UnrankedTensorType::get(ElementType);
            goto LABEL_63;
          }

LABEL_64:
          mlir::ArrayAttr::getValue(&v57);
          std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v51, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
          v52 = mlir::RankedTensorType::get(__p, (v67 - __p) >> 3, ElementType, 0);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52);
          if (__p)
          {
            v67 = __p;
            operator delete(__p);
          }

          goto LABEL_66;
        }

LABEL_36:
        v34 = ElementType;
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v39 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      goto LABEL_38;
    }

    if (mlir::TensorType::hasRank(&v57))
    {
      mlir::ArrayAttr::getValue(&v57);
      v37 = v36;
      __b = v71;
      HIDWORD(v70) = 4;
      if (v36 < 5)
      {
        if (v36)
        {
          memset_pattern16(v71, &unk_1E096FAE0, 8 * v36);
        }

        v38 = v71;
      }

      else
      {
        LODWORD(v70) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v71, v36, 8);
        v38 = __b;
        memset_pattern16(__b, &unk_1E096FAE0, 8 * v37);
      }

      LODWORD(v70) = v37;
      v39 = mlir::RankedTensorType::get(v38, v37, ElementType, 0);
      if (__b != v71)
      {
        v50 = v39;
        free(__b);
        v39 = v50;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v34 = mlir::Float32Type::get(this, a2);
LABEL_37:
  v39 = mlir::UnrankedTensorType::get(v34);
LABEL_38:
  v40 = *(a11 + 8);
  if (v40 >= *(a11 + 12))
  {
    v55 = v39;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v40 + 1, 8);
    v39 = v55;
    LODWORD(v40) = *(a11 + 8);
  }

  *(*a11 + 8 * v40) = v39;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ReductionArgMinOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v58 = a6;
  v59[0] = 0;
  v60 = 0;
  v61 = v16;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(v59, "mps.reduction_argmin", 20, Context);
    v60 = 1;
  }

  v64 = a4;
  v65 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(this, a2);
    v18 = v61;
    v19 = v64;
    v20 = v65;
    ElementTypeOrSelf = mlir::IntegerType::get(this, 32, 1u);
    v72 = v19;
    v73 = v20;
    v22 = mlir::ValueRange::dereference_iterator(&v72, 0);
    v23 = 0;
    if (v73 >= 2)
    {
      v23 = mlir::ValueRange::dereference_iterator(&v72, 1);
    }

    v24 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(*v24 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 0;
    }

    v57 = v24;
    if (!v24)
    {
      v35.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v35, "input type must be a tensor type");
    }

    ElementType = ElementTypeOrSelf;
    if (ElementTypeOrSelf)
    {
      if (v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      ElementType = mlir::TensorType::getElementType(&v57);
      if (v23)
      {
LABEL_19:
        if (mlir::TensorType::hasRank(&v57))
        {
          v28 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*v28 + 136);
          if (v29 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v28 = 0;
          }

          v56 = v28;
          if (!v28)
          {
            v46.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v46, "axes type must be a tensor type");
          }

          if (mlir::TensorType::hasRank(&v56))
          {
            mlir::ArrayAttr::getValue(&v56);
            if (v31 >= 2)
            {
              v32.var0.var0 = a3;
              return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "axes tensor must have rank 0 or 1");
            }
          }

          __b = v71;
          v70 = 0x600000000;
          if (mlir::matchConstantWithIntVector<long long>(v23, &__b))
          {
            __p = v68;
            v67 = 0x600000000;
            Value = mlir::ArrayAttr::getValue(&v57);
            {
              v43 = __p;
              v44 = v67;
              if (!ElementTypeOrSelf)
              {
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v57);
              }

              v45 = mlir::RankedTensorType::get(v43, v44, ElementTypeOrSelf, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v45);
              result = 1;
            }

            else
            {
              result = 0;
            }

            if (__p != v68)
            {
              v53 = result;
              free(__p);
              result = v53;
            }

            goto LABEL_70;
          }

          if (!mlir::TensorType::hasRank(&v56))
          {
            goto LABEL_59;
          }

          mlir::ArrayAttr::getValue(&v56);
          if (!v47)
          {
            goto LABEL_64;
          }

          if (v47 == 1)
          {
            v48 = *mlir::ArrayAttr::getValue(&v56) == 1;
            if (!*mlir::ArrayAttr::getValue(&v56))
            {
              v49 = v57;
LABEL_63:
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v49);
LABEL_66:
              result = 1;
LABEL_70:
              if (__b != v71)
              {
                v54 = result;
                free(__b);
                return v54;
              }

              return result;
            }
          }

          else
          {
LABEL_59:
            v48 = 0;
          }

          if (!v18 && !v48)
          {
            v49 = mlir::UnrankedTensorType::get(ElementType);
            goto LABEL_63;
          }

LABEL_64:
          mlir::ArrayAttr::getValue(&v57);
          std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v51, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
          v52 = mlir::RankedTensorType::get(__p, (v67 - __p) >> 3, ElementType, 0);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52);
          if (__p)
          {
            v67 = __p;
            operator delete(__p);
          }

          goto LABEL_66;
        }

LABEL_36:
        v34 = ElementType;
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v39 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
      goto LABEL_38;
    }

    if (mlir::TensorType::hasRank(&v57))
    {
      mlir::ArrayAttr::getValue(&v57);
      v37 = v36;
      __b = v71;
      HIDWORD(v70) = 4;
      if (v36 < 5)
      {
        if (v36)
        {
          memset_pattern16(v71, &unk_1E096FAE0, 8 * v36);
        }

        v38 = v71;
      }

      else
      {
        LODWORD(v70) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v71, v36, 8);
        v38 = __b;
        memset_pattern16(__b, &unk_1E096FAE0, 8 * v37);
      }

      LODWORD(v70) = v37;
      v39 = mlir::RankedTensorType::get(v38, v37, ElementType, 0);
      if (__b != v71)
      {
        v50 = v39;
        free(__b);
        v39 = v50;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v34 = mlir::Float32Type::get(this, a2);
LABEL_37:
  v39 = mlir::UnrankedTensorType::get(v34);
LABEL_38:
  v40 = *(a11 + 8);
  if (v40 >= *(a11 + 12))
  {
    v55 = v39;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v40 + 1, 8);
    v39 = v55;
    LODWORD(v40) = *(a11 + 8);
  }

  *(*a11 + 8 * v40) = v39;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionLogSumExpOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_logsumexp", 23, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionMaxOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_max", 17, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionMeanOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_mean", 18, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionMinOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_min", 17, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionOrOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_or", 16, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionSumOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_sum", 17, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionVarianceOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_variance", 22, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ReductionProdOp::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0;
  }

  v56 = a6;
  v57[0] = 0;
  v58 = 0;
  v59 = v15;
  v60 = a9;
  v61 = a10;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v56);
    if (v58 == 1)
    {
      v58 = 0;
    }

    mlir::OperationName::OperationName(v57, "mps.reduction_prod", 18, Context);
    v58 = 1;
    a1 = v16;
  }

  *&v62 = a4;
  *(&v62 + 1) = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, a2);
    v18 = v59;
    v69 = v62;
    v19 = mlir::ValueRange::dereference_iterator(&v69, 0);
    v20 = 0;
    if (*(&v69 + 1) >= 2uLL)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v69, 1);
    }

    v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v22 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 0;
    }

    v55 = v21;
    if (!v21)
    {
      v32.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v32, "input type must be a tensor type");
    }

    ElementType = mlir::TensorType::getElementType(&v55);
    if (v20)
    {
      if (mlir::TensorType::hasRank(&v55))
      {
        v25 = *(v20 + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(*v25 + 136);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v25 = 0;
        }

        v54 = v25;
        if (!v25)
        {
          v44.var0.var0 = a3;
          return mlir::emitOptionalError<char const(&)[66]>(a2, v44, "axes type must be a tensor type");
        }

        if (mlir::TensorType::hasRank(&v54))
        {
          mlir::ArrayAttr::getValue(&v54);
          if (v28 >= 2)
          {
            v29.var0.var0 = a3;
            return mlir::emitOptionalError<char const(&)[66]>(a2, v29, "axes tensor must have rank 0 or 1");
          }
        }

        __b = v68;
        v67 = 0x600000000;
        if (mlir::matchConstantWithIntVector<long long>(v20, &__b))
        {
          __p = v65;
          v64 = 0x600000000;
          Value = mlir::ArrayAttr::getValue(&v55);
          {
            v40 = __p;
            v41 = v64;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
            v43 = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v43);
            result = 1;
          }

          else
          {
            result = 0;
          }

          if (__p != v65)
          {
            v51 = result;
            free(__p);
            result = v51;
          }

          goto LABEL_66;
        }

        if (!mlir::TensorType::hasRank(&v54))
        {
          goto LABEL_55;
        }

        mlir::ArrayAttr::getValue(&v54);
        if (!v45)
        {
          goto LABEL_60;
        }

        if (v45 == 1)
        {
          v46 = *mlir::ArrayAttr::getValue(&v54) == 1;
          if (!*mlir::ArrayAttr::getValue(&v54))
          {
            v47 = v55;
LABEL_59:
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v47);
LABEL_62:
            result = 1;
LABEL_66:
            if (__b != v68)
            {
              v52 = result;
              free(__b);
              return v52;
            }

            return result;
          }
        }

        else
        {
LABEL_55:
          v46 = 0;
        }

        if (!v18 && !v46)
        {
          v47 = mlir::UnrankedTensorType::get(ElementType);
          goto LABEL_59;
        }

LABEL_60:
        mlir::ArrayAttr::getValue(&v55);
        std::vector<long long>::vector[abi:nn200100](&__p, (__PAIR128__(v49, v18) - 1) >> 64, &mlir::ShapedType::kDynamic);
        v50 = mlir::RankedTensorType::get(__p, (v64 - __p) >> 3, ElementType, 0);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v50);
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v18)
      {
        v36 = mlir::RankedTensorType::get(0, 0, ElementType, 0);
        goto LABEL_36;
      }

      if (mlir::TensorType::hasRank(&v55))
      {
        mlir::ArrayAttr::getValue(&v55);
        v34 = v33;
        __b = v68;
        HIDWORD(v67) = 4;
        if (v33 < 5)
        {
          if (v33)
          {
            memset_pattern16(v68, &unk_1E096FAE0, 8 * v33);
          }

          v35 = v68;
        }

        else
        {
          LODWORD(v67) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v33, 8);
          v35 = __b;
          memset_pattern16(__b, &unk_1E096FAE0, 8 * v34);
        }

        LODWORD(v67) = v34;
        v36 = mlir::RankedTensorType::get(v35, v34, ElementType, 0);
        if (__b != v68)
        {
          v48 = v36;
          free(__b);
          v36 = v48;
        }

        goto LABEL_36;
      }
    }

    v31 = ElementType;
  }

  else
  {
    v31 = mlir::Float32Type::get(a1, a2);
  }

  v36 = mlir::UnrankedTensorType::get(v31);
LABEL_36:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v53 = v36;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
    v36 = v53;
    LODWORD(v37) = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = v36;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::SortOp::inferReturnTypes(mlir::Float32Type *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v44[0] = a4;
  v44[1] = a5;
  if (a5)
  {
    v12 = mlir::ValueRange::dereference_iterator(v44, 0);
    v43[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43[1] = v13;
    if (v43[0] && (mlir::CallOpInterface::getArgOperands(v43) & 1) != 0)
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
      v16 = v15;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v43[0]);
      v18 = mlir::RankedTensorType::get(ArgAttrsAttr, v16, ElementTypeOrSelf, 0);
      v19 = *(a11 + 8);
      if (v19 >= *(a11 + 12))
      {
        v42 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v19 + 1, 8);
        v18 = v42;
        LODWORD(v19) = *(a11 + 8);
      }

      *(*a11 + 8 * v19) = v18;
      ++*(a11 + 8);
      v20 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
      v22 = v21;
      v23 = mlir::IntegerType::get(this, 32, 1u);
      v24 = mlir::RankedTensorType::get(v20, v22, v23, 0);
    }

    else
    {
      v25 = mlir::ValueRange::dereference_iterator(v44, 0);
      v26 = mlir::getElementTypeOrSelf(v25);
      v27 = mlir::UnrankedTensorType::get(v26);
      v28 = *(a11 + 8);
      if (v28 >= *(a11 + 12))
      {
        v39 = v27;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
        v27 = v39;
        LODWORD(v28) = *(a11 + 8);
      }

      *(*a11 + 8 * v28) = v27;
      ++*(a11 + 8);
      v29 = mlir::IntegerType::get(this, 32, 1u);
      v24 = mlir::UnrankedTensorType::get(v29);
    }

    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      v38 = v24;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v30 + 1, 8);
      v24 = v38;
      v30 = *(a11 + 8);
    }

    *(*a11 + 8 * v30) = v24;
  }

  else
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      v40 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v33 + 1, 8);
      v32 = v40;
      LODWORD(v33) = *(a11 + 8);
    }

    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    v34 = mlir::IntegerType::get(this, 32, 1u);
    v35 = mlir::UnrankedTensorType::get(v34);
    v36 = *(a11 + 8);
    if (v36 >= *(a11 + 12))
    {
      v41 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v36 + 1, 8);
      v35 = v41;
      LODWORD(v36) = *(a11 + 8);
    }

    *(*a11 + 8 * v36) = v35;
  }

  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::NormalizationOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v38[0] = a4;
  v38[1] = a5;
  if (a5 == 5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v38, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(mlir::ValueRange::dereference_iterator(v38, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(mlir::ValueRange::dereference_iterator(v38, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(mlir::ValueRange::dereference_iterator(v38, 3) + 8) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(mlir::ValueRange::dereference_iterator(v38, 4) + 8) & 0xFFFFFFFFFFFFFFF8;
    v35 = v37;
    v37[0] = v13;
    v37[1] = v14;
    v37[2] = v15;
    v37[3] = v16;
    v37[4] = v17;
    v36 = 0x600000005;
    v32 = v34;
    v33 = 0x300000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, 5uLL, 16);
    v18 = v33;
    v19 = v32;
    v20 = v32 + 16 * v33;
    v20[2] = xmmword_1E86D35C0;
    v20[3] = *&off_1E86D35D0;
    *v20 = xmmword_1E86D35A0;
    v20[1] = *&off_1E86D35B0;
    v20[4] = xmmword_1E86D35E0;
    v21 = (v18 + 5);
    LODWORD(v33) = v18 + 5;
    mlir::ValueRange::ValueRange(v31, v35, v36);
    if (v23)
    {
      v24 = *(a11 + 8);
      if (v24 >= *(a11 + 12))
      {
        v30 = BroadcastedOperandsType;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v24 + 1, 8);
        BroadcastedOperandsType = v30;
        LODWORD(v24) = *(a11 + 8);
      }

      *(*a11 + 8 * v24) = BroadcastedOperandsType;
      ++*(a11 + 8);
      v25 = 1;
      v26 = v32;
      if (v32 == v34)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v25 = 0;
      v26 = v32;
      if (v32 == v34)
      {
LABEL_12:
        if (v35 != v37)
        {
          free(v35);
        }

        return v25;
      }
    }

    free(v26);
    goto LABEL_12;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

void *mlir::mps::anonymous namespace::getBroadcastedOperandsType(mlir *a1, AttributeStorage *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = mlir::TypeRange::dereference_iterator(a5, 0);
  v20 = v11;
  if (a6 >= 2)
  {
    v12 = 1;
    v13 = mlir::TypeRange::dereference_iterator(a5, 1);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v11, v13, 0);
    if (BroadcastedType)
    {
      v15 = 2;
      while (1)
      {
        v11 = BroadcastedType;
        if (a6 == v15)
        {
          break;
        }

        v16 = mlir::TypeRange::dereference_iterator(a5, v15);
        BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v11, v16, 0);
        ++v15;
        if (!BroadcastedType)
        {
          v12 = v15 - 1;
          goto LABEL_8;
        }
      }

      v20 = BroadcastedType;
    }

    else
    {
      v11 = v20;
LABEL_8:
      v20 = v11;
      v19 = mlir::TypeRange::dereference_iterator(a5, v12);
      v17.var0.var0 = a2;
      mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(a1, v17, "output type ", &v20, " and ", a3 + 16 * v12, " type ", &v19, " are not broadcast compatible");
      return 0;
    }
  }

  return v11;
}

BOOL mlir::mps::NormalizationOp::verify(mlir::mps::NormalizationOp *this)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v2)
  {
    v47 = "invalid type for input.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v60;
      v21 = __p;
      if (v60 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v60 = v19;
      operator delete(v21);
    }

    v22 = v57;
    if (v57)
    {
      v23 = v58;
      v24 = v57;
      if (v58 == v57)
      {
        goto LABEL_75;
      }

      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v23 != v22);
LABEL_74:
      v24 = v57;
LABEL_75:
      v58 = v22;
      operator delete(v24);
    }

LABEL_76:
    v18 = v54;
    if (v54 == v56)
    {
      return v17;
    }

    goto LABEL_77;
  }

  v3 = v2;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v4)
  {
    v47 = "invalid type for mean.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v60;
      v29 = __p;
      if (v60 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v60 = v27;
      operator delete(v29);
    }

    v22 = v57;
    if (v57)
    {
      v30 = v58;
      v24 = v57;
      if (v58 == v57)
      {
        goto LABEL_75;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v30 != v22);
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  v5 = v4;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v6)
  {
    v47 = "invalid type for variance.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v60;
      v35 = __p;
      if (v60 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v60 = v33;
      operator delete(v35);
    }

    v22 = v57;
    if (v57)
    {
      v36 = v58;
      v24 = v57;
      if (v58 == v57)
      {
        goto LABEL_75;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          operator delete[](v37);
        }
      }

      while (v36 != v22);
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  v7 = v6;
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v8)
  {
    v47 = "invalid type for gamma.";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v47, &v51);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v62 != 1)
    {
      return v17;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v60;
      v41 = __p;
      if (v60 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v60 = v39;
      operator delete(v41);
    }

    v22 = v57;
    if (v57)
    {
      v42 = v58;
      v24 = v57;
      if (v58 == v57)
      {
        goto LABEL_75;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          operator delete[](v43);
        }
      }

      while (v42 != v22);
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v10)
  {
    v51 = &v53;
    v53 = v3;
    v54 = v5;
    v55 = v7;
    v56[0] = v9;
    v56[1] = v10;
    v52 = 0x600000005;
    v47 = v49;
    v48 = 0x300000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, 5uLL, 16);
    v11 = v48;
    v12 = v47;
    v13 = v47 + 16 * v48;
    v13[2] = xmmword_1E86D35C0;
    v13[3] = *&off_1E86D35D0;
    *v13 = xmmword_1E86D35A0;
    v13[1] = *&off_1E86D35B0;
    v13[4] = xmmword_1E86D35E0;
    v14 = (v11 + 5);
    LODWORD(v48) = v11 + 5;
    v15 = *(*this + 24);
    mlir::ValueRange::ValueRange(v46, v51, v52);
    v17 = v16;
    if (v47 != v49)
    {
      free(v47);
    }

    v18 = v51;
    if (v51 == &v53)
    {
      return v17;
    }

LABEL_77:
    free(v18);
    return v17;
  }

  v47 = "invalid type for beta.";
  v50 = 259;
  mlir::OpState::emitOpError(this, &v47, &v51);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
  }

  if (v62 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v52);
  }

  return v17;
}

BOOL mlir::mps::InstanceNormOp::verify(mlir::mps::InstanceNormOp *this)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 72);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v42 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v41 = v5;
  if (v2)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v43 = "input and axes type must be a tensor type";
    v46 = 259;
    mlir::OpState::emitOpError(this, &v43, v47);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v56 != 1)
    {
      return v9;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v54;
      v12 = __p;
      if (v54 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v54 = v10;
      operator delete(v12);
    }

    v13 = v51;
    if (!v51)
    {
      goto LABEL_64;
    }

    v14 = v52;
    v15 = v51;
    if (v52 == v51)
    {
      goto LABEL_63;
    }

    do
    {
      v17 = *--v14;
      v16 = v17;
      *v14 = 0;
      if (v17)
      {
        operator delete[](v16);
      }
    }

    while (v14 != v13);
    goto LABEL_62;
  }

  if (mlir::TensorType::hasRank(&v41))
  {
    mlir::ArrayAttr::getValue(&v41);
    if (v20 >= 2)
    {
      v43 = "axes tensor must have rank 0 or 1";
      v46 = 259;
      mlir::OpState::emitOpError(this, &v43, v47);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v56 != 1)
      {
        return v9;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v54;
        v23 = __p;
        if (v54 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v54 = v21;
        operator delete(v23);
      }

      v13 = v51;
      if (!v51)
      {
        goto LABEL_64;
      }

      v24 = v52;
      v15 = v51;
      if (v52 == v51)
      {
LABEL_63:
        v52 = v13;
        operator delete(v15);
LABEL_64:
        v35 = v49;
        if (v49 != &v50)
        {
LABEL_65:
          free(v35);
          return v9;
        }

        return v9;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v24 != v13);
LABEL_62:
      v15 = v51;
      goto LABEL_63;
    }
  }

  if (!mlir::TensorType::hasRank(&v41) || !mlir::TensorType::hasRank(&v42) || (mlir::ArrayAttr::getValue(&v41), v27 < 1) || (v28 = *mlir::ArrayAttr::getValue(&v41), mlir::ArrayAttr::getValue(&v42), v28 <= v29))
  {
    v43 = v45;
    v44 = 0x400000000;
    if (!mlir::TensorType::hasRank(&v42) || (mlir::matchConstantWithIntVector<long long>(*(*(*this + 72) + 56), &v43) & 1) == 0)
    {
      goto LABEL_60;
    }

    v47[0] = &v48;
    v47[1] = 0x600000000;
    v31 = v43;
    v32 = v44;
    mlir::ArrayAttr::getValue(&v42);
    if (v47[0] != &v48)
    {
      free(v47[0]);
    }

    if (!PositiveAxes)
    {
      v9 = 0;
      v35 = v43;
      if (v43 == v45)
      {
        return v9;
      }
    }

    else
    {
LABEL_60:
      v9 = 1;
      v35 = v43;
      if (v43 == v45)
      {
        return v9;
      }
    }

    goto LABEL_65;
  }

  v38 = *mlir::ArrayAttr::getValue(&v41);
  mlir::ArrayAttr::getValue(&v42);
  v37 = v30;
  llvm::formatv<long long,long long>("axes tensor shape {0} is incompatible with input rank of {1}", &v38, &v37, &v43);
  v40 = 263;
  v39 = &v43;
  mlir::OpState::emitOpError(this, &v39, v47);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v47);
  return v9;
}

const char *llvm::formatv<long long,long long>@<X0>(const char *__s@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __s;
  v6 = *a2;
  v7 = *a3;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v4;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_1F5B17290;
  *(a4 + 48) = v6;
  *(a4 + 56) = &unk_1F5B17290;
  *(a4 + 64) = v7;
  *(a4 + 80) = a4 + 56;
  return __s;
}

BOOL mlir::mps::inferConv2DParams(mlir *a1, AttributeStorage *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v127[4] = *MEMORY[0x1E69E9840];
  v125 = v127;
  v126 = 0x400000000;
  v122 = v124;
  v123 = 0x400000000;
  v119 = v121;
  v120 = 0x800000000;
  if (a5)
  {
    mlir::getIntValues<long long>(a5, a6, &v125, 1);
  }

  if (a7)
  {
    mlir::getIntValues<long long>(a7, a8, &v122, 1);
  }

  if (a9)
  {
    mlir::getIntValues<long long>(a9, a10, &v119, 1);
  }

  if (v123)
  {
    v20 = v122;
    v21 = 8 * v123;
    do
    {
      if (*v20 <= 0)
      {
        v30 = "dilationRate must be > 0 for all dimensions";
        goto LABEL_20;
      }

      ++v20;
      v21 -= 8;
    }

    while (v21);
  }

  v22 = a15;
  v23 = a13;
  if (a11 == 1)
  {
    v35 = *(a12 + 8);
    if (v35 == 4)
    {
      v36 = *(a13 + 8);
      v37 = v36 > 4;
      if (v36 == 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v35 <= 4)
      {
        if (*(a12 + 12) > 3u || (llvm::SmallVectorBase<unsigned int>::grow_pod(a12, a12 + 16, 4uLL, 8), v23 = a13, v35 = *(a12 + 8), v35 != 4))
        {
          v44 = v23;
          bzero((*a12 + 8 * v35), 32 - 8 * v35);
          v23 = v44;
        }
      }

      *(a12 + 8) = 4;
      v36 = *(v23 + 8);
      v37 = v36 > 4;
      if (v36 == 4)
      {
LABEL_25:
        v38 = *(a14 + 8);
        v39 = v38 > 2;
        if (v38 == 2)
        {
          goto LABEL_26;
        }

LABEL_162:
        if (!v39)
        {
          v116 = v23;
          v107 = v38;
          v108 = v38;
          if (*(a14 + 12) <= 1u)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a14, a14 + 16, 2uLL, 8);
            v107 = *(a14 + 8);
            v108 = *(a14 + 8);
          }

          memset_pattern16((*a14 + 8 * v107), &unk_1E096FAE0, 16 - 8 * v38);
          v23 = v116;
          *(a14 + 8) = v108 - v38 + 2;
          v40 = *(v22 + 8);
          v41 = v40 > 2;
          if (v40 == 2)
          {
            goto LABEL_112;
          }

          goto LABEL_27;
        }

        *(a14 + 8) = 2;
        v40 = *(v22 + 8);
        v41 = v40 > 2;
        if (v40 != 2)
        {
LABEL_27:
          if (v41)
          {
            v42 = 2;
          }

          else
          {
            v115 = v23;
            v78 = v40;
            v79 = v40;
            if (*(v22 + 12) <= 1u)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v22, v22 + 16, 2uLL, 8);
              v78 = *(v22 + 8);
              v79 = *(v22 + 8);
            }

            memset_pattern16((*v22 + 8 * v78), &unk_1E096FAE0, 16 - 8 * v40);
            v42 = v79 - v40 + 2;
            v23 = v115;
          }

          *(v22 + 8) = v42;
        }

LABEL_112:
        v80 = *a12;
        *v80 = *a3;
        v80[1] = a3[3];
        v80[2] = a3[1];
        v80[3] = a3[2];
        if (a5 && v126)
        {
          v81 = 0;
          v82 = v125;
          v83 = *a14;
          v84 = *a14 + 8;
          for (i = 8 * v126; i; i -= 8)
          {
            v87 = v82[v81];
            if (v81 <= 1)
            {
              if (!v81)
              {
                if (v87 != 1)
                {
                  v30 = "stride != 1 not supported for dim 3";
                  goto LABEL_20;
                }

                goto LABEL_118;
              }

              v86 = v83;
              if (v81 != 1)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v86 = v84;
              if (v81 != 2)
              {
                if (v81 != 3)
                {
LABEL_171:
                  v110.var0.var0 = a2;
                  v32 = mlir::emitOptionalError<char const(&)[66]>(a1, v110, "stride num dimensions should be <= 4");
                  goto LABEL_21;
                }

                if (v87 != 1)
                {
                  v30 = "stride != 1 not supported for dim 0";
                  goto LABEL_20;
                }

                goto LABEL_118;
              }
            }

            *v86 = v87;
LABEL_118:
            ++v81;
          }
        }

        if (a7 && v123)
        {
          v88 = 0;
          v89 = v122;
          v90 = *v22;
          v91 = *v22 + 8;
          for (j = 8 * v123; j; j -= 8)
          {
            v94 = v89[v88];
            if (v88 <= 1)
            {
              if (!v88)
              {
                if (v94 != 1)
                {
LABEL_139:
                  v30 = "dilationRate != 1 not supported for dim 3";
                  goto LABEL_20;
                }

                goto LABEL_132;
              }

              v93 = v90;
              if (v88 != 1)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v93 = v91;
              if (v88 != 2)
              {
                if (v88 != 3)
                {
LABEL_170:
                  v109.var0.var0 = a2;
                  v32 = mlir::emitOptionalError<char const(&)[39]>(a1, v109, "dilationRate num dimensions should be <= 4");
                  goto LABEL_21;
                }

                if (v94 != 1)
                {
                  v30 = "dilationRate != 1 not supported for dim 0";
                  goto LABEL_20;
                }

                goto LABEL_132;
              }
            }

            *v93 = v94;
LABEL_132:
            ++v88;
          }
        }

        if (!a9 || !v120)
        {
          goto LABEL_152;
        }

        v95 = 0;
        v96 = v119;
        v97 = *v23;
        v98 = *v23 + 24;
        v99 = *v23 + 16;
        v100 = *v23 + 8;
        v101 = 8 * v120;
        while (1)
        {
          if (v95 > 3)
          {
            v102 = v99;
            if (v95 != 4)
            {
              if (v95 != 5)
              {
                goto LABEL_144;
              }

              v102 = v98;
            }
          }

          else
          {
            v102 = v97;
            if (v95 != 2)
            {
              v102 = v100;
              if (v95 != 3)
              {
                goto LABEL_144;
              }
            }
          }

          *v102 = v96[v95];
LABEL_144:
          ++v95;
          v101 -= 8;
          if (!v101)
          {
            goto LABEL_152;
          }
        }
      }
    }

    if (v37)
    {
      *(v23 + 8) = 4;
      v38 = *(a14 + 8);
      v39 = v38 > 2;
      if (v38 != 2)
      {
        goto LABEL_162;
      }
    }

    else
    {
      v104 = v36;
      v105 = v36;
      if (*(v23 + 12) <= 3u)
      {
        v111 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v23 + 16, 4uLL, 8);
        v23 = v111;
        v104 = *(v111 + 8);
        v105 = *(v111 + 8);
      }

      v106 = v23;
      bzero((*v23 + 8 * v104), 32 - 8 * v36);
      v23 = v106;
      v22 = a15;
      *(v23 + 8) = v105 - v36 + 4;
      v38 = *(a14 + 8);
      v39 = v38 > 2;
      if (v38 != 2)
      {
        goto LABEL_162;
      }
    }

LABEL_26:
    v40 = *(v22 + 8);
    v41 = v40 > 2;
    if (v40 != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_112;
  }

  if (a11)
  {
    v43.var0.var0 = a2;
    v33 = mlir::emitOptionalError<char const(&)[66]>(a1, v43, "Unsupported dataLayout");
    v34 = v119;
    if (v119 == v121)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v24 = *(a13 + 8);
  if (v24 == 4)
  {
    v25 = *(a14 + 8);
    v26 = v25 > 2;
    if (v25 == 2)
    {
      goto LABEL_15;
    }

LABEL_47:
    if (v26)
    {
      *(a14 + 8) = 2;
      v27 = *(v22 + 8);
      v28 = v27 > 2;
      if (v27 != 2)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v112 = v23;
      v48 = v25;
      v49 = v25;
      if (*(a14 + 12) <= 1u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a14, a14 + 16, 2uLL, 8);
        v48 = *(a14 + 8);
        v49 = *(a14 + 8);
      }

      memset_pattern16((*a14 + 8 * v48), &unk_1E096FAE0, 16 - 8 * v25);
      v23 = v112;
      *(a14 + 8) = v49 - v25 + 2;
      v27 = *(v22 + 8);
      v28 = v27 > 2;
      if (v27 != 2)
      {
        goto LABEL_54;
      }
    }

LABEL_16:
    if (*(a12 + 12) <= 3u)
    {
      goto LABEL_17;
    }

LABEL_61:
    if (!a4)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  if (v24 <= 4)
  {
    v45 = *(a13 + 8);
    v46 = *(a13 + 8);
    if (*(a13 + 12) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a13, a13 + 16, 4uLL, 8);
      v23 = a13;
      v45 = *(a13 + 8);
      v46 = *(a13 + 8);
    }

    v47 = v23;
    bzero((*v23 + 8 * v45), 32 - 8 * v24);
    v23 = v47;
    v22 = a15;
    *(v23 + 8) = v46 - v24 + 4;
    v25 = *(a14 + 8);
    v26 = v25 > 2;
    if (v25 != 2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *(a13 + 8) = 4;
    v25 = *(a14 + 8);
    v26 = v25 > 2;
    if (v25 != 2)
    {
      goto LABEL_47;
    }
  }

LABEL_15:
  v27 = *(v22 + 8);
  v28 = v27 > 2;
  if (v27 == 2)
  {
    goto LABEL_16;
  }

LABEL_54:
  if (v28)
  {
    *(v22 + 8) = 2;
    if (*(a12 + 12) > 3u)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v113 = v23;
    v50 = v27;
    v51 = v27;
    if (*(v22 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v22, v22 + 16, 2uLL, 8);
      v50 = *(v22 + 8);
      v51 = *(v22 + 8);
    }

    memset_pattern16((*v22 + 8 * v50), &unk_1E096FAE0, 16 - 8 * v27);
    v23 = v113;
    *(v22 + 8) = v51 - v27 + 2;
    if (*(a12 + 12) > 3u)
    {
      goto LABEL_61;
    }
  }

LABEL_17:
  v29 = v23;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a12, a12 + 16, 4uLL, 8);
  v23 = v29;
  if (!a4)
  {
    goto LABEL_66;
  }

LABEL_62:
  v52 = *(a12 + 8);
  v53 = 8 * a4;
  do
  {
    v54 = *a3;
    if (v52 >= *(a12 + 12))
    {
      v114 = v22;
      v55 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a12, a12 + 16, v52 + 1, 8);
      v23 = v55;
      v22 = v114;
      v52 = *(a12 + 8);
    }

    *(*a12 + 8 * v52) = v54;
    v52 = *(a12 + 8) + 1;
    *(a12 + 8) = v52;
    ++a3;
    v53 -= 8;
  }

  while (v53);
LABEL_66:
  if (!a5 || !v126)
  {
LABEL_81:
    if (a7 && v123)
    {
      v63 = 0;
      v64 = v122;
      v65 = *v22;
      v66 = *v22 + 8;
      for (k = 8 * v123; k; k -= 8)
      {
        v68 = v64[v63];
        if (v63 > 1)
        {
          v69 = v65;
          if (v63 != 2)
          {
            v69 = v66;
            if (v63 != 3)
            {
              goto LABEL_170;
            }
          }

          *v69 = v68;
        }

        else if (v63)
        {
          if (v63 != 1)
          {
            goto LABEL_170;
          }

          if (v68 != 1)
          {
            v30 = "dilationRate != 1 not supported for dim 2";
            goto LABEL_20;
          }
        }

        else if (v68 != 1)
        {
          goto LABEL_139;
        }

        ++v63;
      }
    }

    if (a9 && v120)
    {
      v70 = 0;
      v71 = v119;
      v72 = *v23;
      v73 = *v23 + 24;
      v74 = *v23 + 16;
      v75 = *v23 + 8;
      for (m = 8 * v120; m; m -= 8)
      {
        if (v70 > 5)
        {
          v77 = v74;
          if (v70 != 6)
          {
            if (v70 != 7)
            {
              goto LABEL_100;
            }

            v77 = v73;
          }
        }

        else
        {
          v77 = v72;
          if (v70 != 4)
          {
            v77 = v75;
            if (v70 != 5)
            {
              goto LABEL_100;
            }
          }
        }

        *v77 = v71[v70];
LABEL_100:
        ++v70;
      }
    }

LABEL_152:
    v33 = 1;
    v34 = v119;
    if (v119 == v121)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v56 = 0;
  v57 = v125;
  v58 = *a14;
  v59 = *a14 + 8;
  v60 = 8 * v126;
  while (1)
  {
    v61 = v57[v56];
    if (v56 > 1)
    {
      break;
    }

    if (v56)
    {
      if (v56 != 1)
      {
        goto LABEL_172;
      }

      if (v61 != 1)
      {
        v30 = "stride != 1 not supported for dim 2 of NCHW";
        goto LABEL_20;
      }
    }

    else if (v61 != 1)
    {
      v30 = "stride != 1 not supported for dim 3 of NCHW";
      goto LABEL_20;
    }

LABEL_70:
    ++v56;
    v60 -= 8;
    if (!v60)
    {
      goto LABEL_81;
    }
  }

  v62 = v58;
  if (v56 == 2 || (v62 = v59, v56 == 3))
  {
    *v62 = v61;
    goto LABEL_70;
  }

LABEL_172:
  v30 = "stride attr num dimensions should be <= 4";
LABEL_20:
  v31.var0.var0 = a2;
  v32 = mlir::emitOptionalError<char const(&)[66]>(a1, v31, v30);
LABEL_21:
  v33 = v32;
  v34 = v119;
  if (v119 != v121)
  {
LABEL_153:
    free(v34);
  }

LABEL_154:
  if (v122 != v124)
  {
    free(v122);
  }

  if (v125 != v127)
  {
    free(v125);
  }

  return v33;
}

uint64_t mlir::mps::Conv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v103[2] = *MEMORY[0x1E69E9840];
  v103[0] = a4;
  v103[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v92 = a6;
  v93[0] = 0;
  v94 = 0;
  v95 = v16;
  v96 = v17;
  v97 = v18;
  v98 = v19;
  v99 = a9;
  v100 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v92);
    if (v94 == 1)
    {
      v94 = 0;
    }

    mlir::OperationName::OperationName(v93, "mps.conv_2d", 11, Context);
    v94 = 1;
  }

  v101 = a4;
  v102 = a5;
  if (a5 < 2 || (v21.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv2DOpAdaptor::verify(&v92, v21)))
  {
    v23 = mlir::Float32Type::get(this, a2);
    v24 = mlir::UnrankedTensorType::get(v23);
    v25 = a11[2];
    if (v25 >= a11[3])
    {
      v62 = v24;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 4), v25 + 1, 8);
      v24 = v62;
      LODWORD(v25) = a11[2];
    }

    *(*a11 + 8 * v25) = v24;
    goto LABEL_15;
  }

  v82 = *(&v95 + 1);
  v83 = *(&v97 + 1);
  v90[0] = *(&v96 + 1);
  v81 = v96;
  mlir::IntegerAttr::getValue(v90, __p);
  if (LODWORD(__p[1]) > 0x40)
  {
    v22 = *__p[0];
    operator delete[](__p[0]);
  }

  else
  {
    v22 = __p[0];
  }

  v27 = *(v97 + 8);
  v28 = *(v95 + 8);
  v29 = *(v98 + 8);
  v30 = mlir::ValueRange::dereference_iterator(v103, 0);
  v31 = mlir::ValueRange::dereference_iterator(v103, 1);
  v80[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v30 + 8) & 0xFFFFFFFFFFFFFFF8));
  v80[1] = v32;
  if (!v80[0] || (mlir::CallOpInterface::getArgOperands(v80) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v30);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v38);
    }

    v39 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v40 = a11[2];
    if (v40 >= a11[3])
    {
      v63 = v39;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 4), v40 + 1, 8);
      v39 = v63;
      v40 = a11[2];
    }

    *(*a11 + 8 * v40) = v39;
LABEL_15:
    ++a11[2];
    return 1;
  }

  v67 = v31;
  v33 = operator new(0x20uLL);
  v34 = v33;
  *v33 = 0u;
  v33[1] = 0u;
  if (!v80[0])
  {
    v64 = v29;
    v65 = v27;
    v66 = v22;
    v69 = v33;
    v68 = v33;
LABEL_28:
    v90[0] = v91;
    v90[1] = 0x400000000;
    v88[0] = v89;
    v88[1] = 0x400000000;
    v86[0] = v87;
    v86[1] = 0x200000000;
    v84[0] = v85;
    v84[1] = 0x200000000;
    v41 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v83);
    v43 = v42;
    v44 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v82);
    v46 = v45;
    v47 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v81);
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v70);
      v59 = 1;
    }

    else
    {
      v60 = mlir::getElementTypeOrSelf(v30);
    }

    v34 = v69;
    if (v84[0] != v85)
    {
      free(v84[0]);
    }

    if (v86[0] != v87)
    {
      free(v86[0]);
    }

    if (v88[0] != v89)
    {
      free(v88[0]);
    }

    if (v90[0] != v91)
    {
      free(v90[0]);
    }

    goto LABEL_41;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v80);
  if (v36 == 4)
  {
    v64 = v29;
    v65 = v27;
    v66 = v22;
    v69 = v34;
    v68 = ArgAttrsAttr;
    goto LABEL_28;
  }

  v61.var0.var0 = a3;
  v59 = mlir::emitOptionalError<char const(&)[66]>(a2, v61, "Conv2DOp input should be rank 4");
LABEL_41:
  operator delete(v34);
  return v59;
}

BOOL mlir::mps::Conv2DOpAdaptor::verify(mlir::mps::Conv2DOpAdaptor *this, Location a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    v55 = "'mps.conv_2d' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
      }

      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          operator delete[](v27);
        }
      }

      while (v25 != v24);
LABEL_87:
      v26 = v64;
LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v54 = *(this + 4);
  if (!v54)
  {
    v55 = "'mps.conv_2d' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          operator delete[](v33);
        }
      }

      while (v32 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v53 = *(this + 5);
  if (!v53)
  {
    v55 = "'mps.conv_2d' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          operator delete[](v39);
        }
      }

      while (v38 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v3 = *(this + 6);
  if (!v3)
  {
    v55 = "'mps.conv_2d' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
      }

      do
      {
        v46 = *--v44;
        v45 = v46;
        *v44 = 0;
        if (v46)
        {
          operator delete[](v45);
        }
      }

      while (v44 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  if (*(this + 7))
  {
    v52 = *(this + 8);
    if (v52)
    {
      if (*(this + 9))
      {
        v55 = v3;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Value = llvm::cast<mlir::ShapedType,mlir::Type>(v49);
          v61 = v5;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          Type = 4;
          if (v7 == 1 && *ArgAttrsAttr == Type && (v50 = v52, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v8, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
          {
            v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Value = llvm::cast<mlir::ShapedType,mlir::Type>(v49);
            v61 = v10;
            v11 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            Type = 4;
            if (v12 == 1 && *v11 == Type && (v50 = v54, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v13, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
              v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
              v56 = v14;
              Type = mlir::ElementsAttr::getType(&v55);
              Value = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
              v61 = v15;
              v16 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v58 = xmmword_1E097BBD0;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::ArrayAttr::getValue(&v50);
                v49[1] = v19;
                isSplat = mlir::ElementsAttr::isSplat(v49);
                if (mlir::Type::isUnsignedInteger(&isSplat, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v20;
  }

  v55 = "'mps.conv_2d' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2.var0.var0, &v55, &Value);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

BOOL mlir::mps::anonymous namespace::inferConv2DReturnType(mlir *a1, AttributeStorage *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a4;
  mlir::ValueRange::ValueRange(&v26, &v29, 2uLL);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  v29 = v13;
  v30 = v14;
  if (!v13)
  {
    v23.var0.var0 = a2;
    return mlir::emitOptionalError<char const(&)[66]>(a1, v23, "cannot conv2D a non-shaped inputType");
  }

  v15 = v13;
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a4);
  if (!v16)
  {
    v24.var0.var0 = a2;
    return mlir::emitOptionalError<char const(&)[39]>(a1, v24, "cannot conv2D a non-shaped weightsType");
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a6 = mlir::UnrankedTensorType::get(v12);
    return 1;
  }

  v26 = v28;
  v27 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
  v19 = v18;
  v20.var0.var0 = a2;
  {
    result = 0;
    v22 = v26;
    if (v26 == v28)
    {
      return result;
    }

    goto LABEL_12;
  }

  *a6 = mlir::RankedTensorType::get(v26, v27, v12, 0);
  result = 1;
  v22 = v26;
  if (v26 != v28)
  {
LABEL_12:
    v25 = result;
    free(v22);
    return v25;
  }

  return result;
}

uint64_t mlir::mps::Conv2DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a2;
  v148[4] = *MEMORY[0x1E69E9840];
  v125 = a4;
  v126 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v114 = a6;
  v115[0] = 0;
  v116 = 0;
  v117 = v16;
  v118 = v17;
  v119 = v18;
  v120 = v19;
  v121 = a9;
  v20 = a5;
  v122 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v114);
    if (v116 == 1)
    {
      v116 = 0;
    }

    mlir::OperationName::OperationName(v115, "mps.conv_2d_data_gradient", 25, Context);
    v116 = 1;
    v20 = v126;
  }

  v123 = a4;
  v124 = a5;
  if (v20 < 2 || (v22.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv2DDataGradientOpAdaptor::verify(&v114, v22)))
  {
    v37 = mlir::Float32Type::get(this, a2);
LABEL_52:
    v62 = mlir::UnrankedTensorType::get(v37);
    goto LABEL_53;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v125, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v125, 1);
  v25 = 0;
  if (v126 == 3)
  {
    v25 = mlir::ValueRange::dereference_iterator(&v125, 2);
  }

  v104 = *(&v117 + 1);
  v105 = v25;
  v102 = *(&v118 + 1);
  v103 = v118;
  v99 = v119;
  v100 = v117;
  v101 = *(&v119 + 1);
  v98 = v120;
  v26 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v27 = v26->i64[0];
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_26;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_26;
      }
    }

    v31 = v29;
    v32 = v30;
    do
    {
      v33 = v32 >> 1;
      v34 = &v31[2 * (v32 >> 1)];
      v36 = *v34;
      v35 = v34 + 2;
      v32 += ~(v32 >> 1);
      if (v36 < v28)
      {
        v31 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    while (v32);
    if (v31 != &v29[2 * v30] && *v31 == v28)
    {
      v38 = v31[1];
      v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v39)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v38 = 0;
  v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    goto LABEL_41;
  }

LABEL_27:
  v40 = v14;
  v41 = a3;
  v42 = *v39;
  {
    mlir::arith::ExtUIOp::fold();
    v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_29;
    }

LABEL_39:
    a3 = v41;
    v14 = v40;
    goto LABEL_41;
  }

  v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_39;
  }

LABEL_29:
  v46 = v44;
  v47 = v45;
  a3 = v41;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
  v14 = v40;
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v52 = v46[1];
    goto LABEL_42;
  }

LABEL_41:
  v52 = 0;
LABEL_42:
  *&v113 = v26;
  *(&v113 + 1) = v38;
  v112[0] = v39;
  v112[1] = v52;
  v111 = v113;
  v146 = v26;
  v147 = v39;
  mlir::ValueRange::ValueRange(&v132, &v146, 2uLL);
  if (!v26 || !mlir::CallOpInterface::getArgOperands(&v111) || !v112[0] || (mlir::CallOpInterface::getArgOperands(v112) & 1) == 0)
  {
    v37 = v53;
    goto LABEL_52;
  }

  v146 = v148;
  v147 = 0x400000000;
  if (!v105)
  {
    v109 = v104;
    v110 = v101;
    v107 = v102;
    v108 = v103;
    v143 = v145;
    memset(v145, 0, sizeof(v145));
    v144 = 0x400000004;
    if (v111)
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v111);
      if (v68 != 4)
      {
        v72.var0.var0 = a3;
        v70 = mlir::emitOptionalError<char const(&)[66]>(v14, v72, "Conv2DDataGradientOp input should be rank 4");
        v62 = 0;
        goto LABEL_116;
      }

      v69 = ArgAttrsAttr;
    }

    else
    {
      v69 = v145;
    }

    v141[0] = v142;
    v141[1] = 0x400000000;
    v139[0] = v140;
    v139[1] = 0x400000000;
    v137[0] = v138;
    v137[1] = 0x200000000;
    v135[0] = v136;
    v135[1] = 0x200000000;
    if (v100)
    {
      v71 = *(v100 + 8);
    }

    else
    {
      v71 = 1;
    }

    v79 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v110);
    v81 = v80;
    v82 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v109);
    v84 = v83;
    v85 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v108);
    if (mlir::mps::inferConv2DParams(v14, a3, v69, 4, v79, v81, v82, v84, v85, v86, v71, v141, v139, v137, v135))
    {
      if (v107)
      {
        UInt = mlir::IntegerAttr::getUInt(&v107);
      }

      else
      {
        UInt = 1;
      }

      if (v98)
      {
        v88 = *(v98 + 8);
      }

      else
      {
        v88 = 3;
      }

      if (v99)
      {
        v89 = *(v99 + 8);
      }

      else
      {
        v89 = 2;
      }

      v106[0] = mlir::CallableOpInterface::getArgAttrsAttr(v112);
      v106[1] = v90;
      if (v90 == 4)
      {
        mlir::mps::ShapeWithLayout::ShapeWithLayout(&v132, v106, v88);
        v129 = v131;
        v130 = 0x400000000;
        mlir::mps::ShapeWithLayout::ShapeWithLayout(v127, &v132);
        if (v127[0] != &v128)
        {
          free(v127[0]);
        }

        if (v70)
        {
          v62 = mlir::RankedTensorType::get(v129, v130, v53, 0);
        }

        else
        {
          v62 = 0;
        }

        if (v129 != v131)
        {
          v92 = v62;
          free(v129);
          v62 = v92;
        }

        if (v132 != v134)
        {
          v93 = v62;
          free(v132);
          v62 = v93;
        }
      }

      else
      {
        v91.var0.var0 = a3;
        v70 = mlir::emitOptionalError<char const(&)[66]>(v14, v91, "Conv2dGradient weights should be rank 4");
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
      v70 = 0;
    }

    v94 = v62;
    if (v135[0] != v136)
    {
      free(v135[0]);
      v62 = v94;
    }

    if (v137[0] != v138)
    {
      free(v137[0]);
      v62 = v94;
    }

    if (v139[0] != v140)
    {
      free(v139[0]);
      v62 = v94;
    }

    if (v141[0] != v142)
    {
      free(v141[0]);
      v62 = v94;
    }

LABEL_116:
    v77 = v143;
    if (v143 == v145)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v105, &v146) & 1) == 0)
  {
    v62 = mlir::UnrankedTensorType::get(v53);
    v70 = 1;
    goto LABEL_118;
  }

  v54 = v147;
  if (!v147)
  {
    goto LABEL_76;
  }

  v55 = v146;
  v56 = (v147 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v57 = v146;
  if (v56 >= 3)
  {
    v58 = v56 + 1;
    v57 = &v146->i64[v58 & 0x3FFFFFFFFFFFFFFCLL];
    v59 = v146 + 1;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61 = v58 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v65 = vmovn_s64(vceqq_s64(v59[-1], v60));
      if (v65.i8[0])
      {
        v59[-1].i64[0] = 0x8000000000000000;
        if ((v65.i8[4] & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else if ((v65.i8[4] & 1) == 0)
      {
LABEL_59:
        v66 = vmovn_s64(vceqq_s64(*v59, v60));
        if (v66.i8[0])
        {
          goto LABEL_60;
        }

        goto LABEL_64;
      }

      v59[-1].i64[1] = 0x8000000000000000;
      v66 = vmovn_s64(vceqq_s64(*v59, v60));
      if (v66.i8[0])
      {
LABEL_60:
        v59->i64[0] = 0x8000000000000000;
        if (v66.i8[4])
        {
          goto LABEL_65;
        }

        goto LABEL_56;
      }

LABEL_64:
      if (v66.i8[4])
      {
LABEL_65:
        v59->i64[1] = 0x8000000000000000;
      }

LABEL_56:
      v59 += 2;
      v61 -= 4;
      if (!v61)
      {
        if (v58 == (v58 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_76;
        }

        break;
      }
    }
  }

  v78 = &v55->i8[8 * v54];
  do
  {
    if (*v57 == -1)
    {
      *v57 = 0x8000000000000000;
    }

    ++v57;
  }

  while (v57 != v78);
LABEL_76:
  v73 = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
  v75 = v74;
  v132 = v134;
  v133 = 0x400000000;
  v76.var0.var0 = a3;
  if (v70)
  {
    v62 = mlir::RankedTensorType::get(v132, v133, v53, 0);
  }

  else
  {
    v62 = 0;
  }

  v77 = v132;
  if (v132 != v134)
  {
LABEL_117:
    v95 = v62;
    free(v77);
    v62 = v95;
  }

LABEL_118:
  if (v146 != v148)
  {
    v96 = v62;
    free(v146);
    v62 = v96;
  }

  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v63 = *(a11 + 8);
  if (v63 >= *(a11 + 12))
  {
    v97 = v62;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v63 + 1, 8);
    v62 = v97;
    v63 = *(a11 + 8);
  }

  *(*a11 + 8 * v63) = v62;
  ++*(a11 + 8);
  return 1;
}