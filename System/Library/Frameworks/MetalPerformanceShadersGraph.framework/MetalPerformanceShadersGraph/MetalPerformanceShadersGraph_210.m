void *mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(void *result, uint64_t a2)
{
  if (*result)
  {
    v3 = ", ";
    v2 = result;
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(*a2, (*a2 + 8 * *(a2 + 8)), (result + 1), (result + 1), &v3);
    return v2;
  }

  return result;
}

void *mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(void *result, uint64_t a2)
{
  if (*result)
  {
    v3 = ", ";
    v2 = result;
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(*a2, (*a2 + 8 * *(a2 + 8)), (result + 1), (result + 1), &v3);
    return v2;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ScatterNdOp::verify(mlir::Block ***this)
{
  v171 = *MEMORY[0x1E69E9840];
  v156 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v156);
  mlir::ArrayAttr::getValue(&v156);
  v4 = v3;
  if (!v3)
  {
    v155 = 257;
    mlir::OpState::emitError(this, v154, v160);
    if (v160[0])
    {
      v157 = 3;
      v158 = "input/output rank must be >= 1";
      v159 = 30;
      v5 = &v157;
      v6 = v161;
      if (v162 >= v163)
      {
        if (v161 <= &v157 && v161 + 24 * v162 > &v157)
        {
          v137 = &v157 - v161;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
          v6 = v161;
          v5 = (v161 + v137);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
          v5 = &v157;
          v6 = v161;
        }
      }

      v7 = &v6[24 * v162];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      ++v162;
      if (v160[0])
      {
        mlir::InFlightDiagnostic::report(v160);
      }
    }

    if (v170 == 1)
    {
      if (v169 != &v170)
      {
        free(v169);
      }

      v9 = v167;
      if (v167)
      {
        v10 = v168;
        v11 = v167;
        if (v168 != v167)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = v167;
        }

        v168 = v9;
        operator delete(v11);
      }

      v12 = v165;
      if (v165)
      {
        v13 = v166;
        v14 = v165;
        if (v166 != v165)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v165;
        }

        v166 = v12;
        operator delete(v14);
      }

      if (v161 != v164)
      {
        free(v161);
      }
    }
  }

  v153 = *(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = mlir::ArrayAttr::getValue(&v153);
  v19 = v18;
  mlir::ArrayAttr::getValue(&v153);
  v21 = *(v17 + 8 * v19 - 8);
  v22 = v4 - v21;
  if (v4 < v21)
  {
    v155 = 257;
    mlir::OpState::emitError(this, v154, v160);
    if (v160[0])
    {
      v157 = 3;
      v158 = "innermost dimension of indices ";
      v159 = 31;
      v23 = &v157;
      v24 = v161;
      if (v162 >= v163)
      {
        if (v161 <= &v157 && v161 + 24 * v162 > &v157)
        {
          v136 = &v157 - v161;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
          v24 = v161;
          v23 = (v161 + v136);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
          v23 = &v157;
          v24 = v161;
        }
      }

      v25 = &v24[24 * v162];
      v26 = *v23;
      *(v25 + 2) = *(v23 + 2);
      *v25 = v26;
      v27 = ++v162;
      if (v160[0])
      {
        v157 = 2;
        v158 = v21;
        v28 = &v157;
        v29 = v161;
        if (v27 >= v163)
        {
          if (v161 <= &v157 && v161 + 24 * v27 > &v157)
          {
            v138 = &v157 - v161;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v27 + 1, 24);
            v29 = v161;
            v28 = (v161 + v138);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v27 + 1, 24);
            v28 = &v157;
            v29 = v161;
          }
        }

        v30 = &v29[24 * v162];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        v32 = ++v162;
        if (v160[0])
        {
          v157 = 3;
          v158 = " > output rank ";
          v159 = 15;
          v33 = &v157;
          v34 = v161;
          if (v32 >= v163)
          {
            if (v161 <= &v157 && v161 + 24 * v32 > &v157)
            {
              v139 = &v157 - v161;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v32 + 1, 24);
              v34 = v161;
              v33 = (v161 + v139);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v32 + 1, 24);
              v33 = &v157;
              v34 = v161;
            }
          }

          v35 = &v34[24 * v162];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          v37 = ++v162;
          if (v160[0])
          {
            v157 = 2;
            v158 = v4;
            v38 = &v157;
            v39 = v161;
            if (v37 >= v163)
            {
              if (v161 <= &v157 && v161 + 24 * v37 > &v157)
              {
                v140 = &v157 - v161;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v37 + 1, 24);
                v39 = v161;
                v38 = (v161 + v140);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v37 + 1, 24);
                v38 = &v157;
                v39 = v161;
              }
            }

            v40 = &v39[24 * v162];
            v41 = *v38;
            *(v40 + 2) = *(v38 + 2);
            *v40 = v41;
            ++v162;
          }
        }
      }
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v160);
    if (v160[0])
    {
      mlir::InFlightDiagnostic::report(v160);
    }

    if (v170 != 1)
    {
      return v42;
    }

    if (v169 != &v170)
    {
      free(v169);
    }

    v43 = v167;
    if (v167)
    {
      v44 = v168;
      v45 = v167;
      if (v168 != v167)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = v167;
      }

      v168 = v43;
      operator delete(v45);
    }

    v46 = v165;
    if (!v165)
    {
      goto LABEL_120;
    }

    v47 = v166;
    v48 = v165;
    if (v166 == v165)
    {
      goto LABEL_119;
    }

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
    goto LABEL_118;
  }

  v51 = v20;
  v152 = *(*((*this)[9] + 11) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v153))
  {
    return 1;
  }

  v52 = mlir::ArrayAttr::getValue(&v153);
  if (v53)
  {
    v54 = 8 * v53;
    while (*v52 != 0x8000000000000000)
    {
      ++v52;
      v54 -= 8;
      if (!v54)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

LABEL_55:
  if (!mlir::TensorType::hasRank(&v152))
  {
    return 1;
  }

  v55 = mlir::ArrayAttr::getValue(&v152);
  if (v56)
  {
    v57 = 8 * v56;
    while (*v55 != 0x8000000000000000)
    {
      ++v55;
      v57 -= 8;
      if (!v57)
      {
        goto LABEL_60;
      }
    }

    return 1;
  }

LABEL_60:
  v58 = mlir::ArrayAttr::getValue(&v152);
  mlir::ArrayAttr::getValue(&v152);
  v60 = v59;
  v61 = v51 + v22 - 1;
  if (v59 == v61)
  {
    v151 = 0;
    if (v59 >= 1)
    {
      v62 = 0;
      v63 = Value - 8 * v51 + 8 * v21;
      while (1)
      {
        if (v51 - 2 >= v62)
        {
          if (*(v58 + 8 * v62) != *(v17 + 8 * v62))
          {
            v151 = v62;
            v155 = 257;
            mlir::OpState::emitError(this, v154, v160);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v160, "updates shape[");
            mlir::InFlightDiagnostic::operator<<<int &>(v130, &v151);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v131, "] is ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v132, (v58 + 8 * v151));
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v133, " expect it to be ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v134, (v17 + 8 * v151));
            v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v135);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v160);
            return v42;
          }
        }

        else if (*(v58 + 8 * v62) != *(v63 + 8 + 8 * v62))
        {
          v151 = v62;
          v155 = 257;
          mlir::OpState::emitError(this, v154, v160);
          if (v160[0])
          {
            v157 = 3;
            v158 = "updates shape[";
            v159 = 14;
            v64 = &v157;
            v65 = v161;
            if (v162 >= v163)
            {
              if (v161 <= &v157 && v161 + 24 * v162 > &v157)
              {
                v145 = &v157 - v161;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
                v65 = v161;
                v64 = (v161 + v145);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
                v64 = &v157;
                v65 = v161;
              }
            }

            v66 = &v65[24 * v162];
            v67 = *v64;
            *(v66 + 2) = *(v64 + 2);
            *v66 = v67;
            v68 = ++v162;
            if (v160[0])
            {
              v157 = 2;
              v158 = v62;
              v69 = &v157;
              v70 = v161;
              if (v68 >= v163)
              {
                if (v161 <= &v157 && v161 + 24 * v68 > &v157)
                {
                  v146 = &v157 - v161;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v68 + 1, 24);
                  v70 = v161;
                  v69 = (v161 + v146);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v68 + 1, 24);
                  v69 = &v157;
                  v70 = v161;
                }
              }

              v71 = &v70[24 * v162];
              v72 = *v69;
              *(v71 + 2) = *(v69 + 2);
              *v71 = v72;
              v73 = ++v162;
              if (v160[0])
              {
                v157 = 3;
                v158 = "] is ";
                v159 = 5;
                v74 = &v157;
                v75 = v161;
                if (v73 >= v163)
                {
                  if (v161 <= &v157 && v161 + 24 * v73 > &v157)
                  {
                    v147 = &v157 - v161;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v73 + 1, 24);
                    v75 = v161;
                    v74 = (v161 + v147);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v73 + 1, 24);
                    v74 = &v157;
                    v75 = v161;
                  }
                }

                v76 = &v75[24 * v162];
                v77 = *v74;
                *(v76 + 2) = *(v74 + 2);
                *v76 = v77;
                v78 = ++v162;
                if (v160[0])
                {
                  v79 = *(v58 + 8 * v62);
                  v157 = 2;
                  v158 = v79;
                  v80 = &v157;
                  v81 = v161;
                  if (v78 >= v163)
                  {
                    if (v161 <= &v157 && v161 + 24 * v78 > &v157)
                    {
                      v148 = &v157 - v161;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v78 + 1, 24);
                      v81 = v161;
                      v80 = (v161 + v148);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v78 + 1, 24);
                      v80 = &v157;
                      v81 = v161;
                    }
                  }

                  v82 = &v81[24 * v162];
                  v83 = *v80;
                  *(v82 + 2) = *(v80 + 2);
                  *v82 = v83;
                  v84 = ++v162;
                  if (v160[0])
                  {
                    v157 = 3;
                    v158 = " expect it to be ";
                    v159 = 17;
                    v85 = &v157;
                    v86 = v161;
                    if (v84 >= v163)
                    {
                      if (v161 <= &v157 && v161 + 24 * v84 > &v157)
                      {
                        v149 = &v157 - v161;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v84 + 1, 24);
                        v86 = v161;
                        v85 = (v161 + v149);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v84 + 1, 24);
                        v85 = &v157;
                        v86 = v161;
                      }
                    }

                    v87 = &v86[24 * v162];
                    v88 = *v85;
                    *(v87 + 2) = *(v85 + 2);
                    *v87 = v88;
                    v89 = ++v162;
                    if (v160[0])
                    {
                      v90 = *(v63 + 8 + 8 * v62);
                      v157 = 2;
                      v158 = v90;
                      v91 = &v157;
                      v92 = v161;
                      if (v89 >= v163)
                      {
                        if (v161 <= &v157 && v161 + 24 * v89 > &v157)
                        {
                          v150 = &v157 - v161;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v89 + 1, 24);
                          v92 = v161;
                          v91 = (v161 + v150);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v89 + 1, 24);
                          v91 = &v157;
                          v92 = v161;
                        }
                      }

                      v93 = &v92[24 * v162];
                      v94 = *v91;
                      *(v93 + 2) = *(v91 + 2);
                      *v93 = v94;
                      ++v162;
                    }
                  }
                }
              }
            }
          }

          v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v160);
          if (v160[0])
          {
            mlir::InFlightDiagnostic::report(v160);
          }

          if ((v170 & 1) == 0)
          {
            return v42;
          }

          if (v169 != &v170)
          {
            free(v169);
          }

          v95 = v167;
          if (v167)
          {
            v96 = v168;
            v97 = v167;
            if (v168 != v167)
            {
              do
              {
                v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
              }

              while (v96 != v95);
              v97 = v167;
            }

            v168 = v95;
            operator delete(v97);
          }

          v98 = v165;
          if (v165)
          {
            v99 = v166;
            v100 = v165;
            if (v166 != v165)
            {
              do
              {
                v128 = *--v99;
                v127 = v128;
                *v99 = 0;
                if (v128)
                {
                  operator delete[](v127);
                }
              }

              while (v99 != v98);
              v100 = v165;
            }

            v166 = v98;
            operator delete(v100);
          }

          v126 = v161;
          if (v161 == v164)
          {
            return v42;
          }

LABEL_121:
          free(v126);
          return v42;
        }

        if (v59 <= ++v62)
        {
          v151 = v62;
          return 1;
        }
      }
    }

    return 1;
  }

  v155 = 257;
  mlir::OpState::emitError(this, v154, v160);
  if (v160[0])
  {
    v157 = 3;
    v158 = "updates rank is ";
    v159 = 16;
    v101 = &v157;
    v102 = v161;
    if (v162 >= v163)
    {
      if (v161 <= &v157 && v161 + 24 * v162 > &v157)
      {
        v141 = &v157 - v161;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
        v102 = v161;
        v101 = (v161 + v141);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v162 + 1, 24);
        v101 = &v157;
        v102 = v161;
      }
    }

    v103 = &v102[24 * v162];
    v104 = *v101;
    *(v103 + 2) = *(v101 + 2);
    *v103 = v104;
    v105 = ++v162;
    if (v160[0])
    {
      v157 = 2;
      v158 = v60;
      v106 = &v157;
      v107 = v161;
      if (v105 >= v163)
      {
        if (v161 <= &v157 && v161 + 24 * v105 > &v157)
        {
          v142 = &v157 - v161;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v105 + 1, 24);
          v107 = v161;
          v106 = (v161 + v142);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v105 + 1, 24);
          v106 = &v157;
          v107 = v161;
        }
      }

      v108 = &v107[24 * v162];
      v109 = *v106;
      *(v108 + 2) = *(v106 + 2);
      *v108 = v109;
      v110 = ++v162;
      if (v160[0])
      {
        v157 = 3;
        v158 = " expected rank is ";
        v159 = 18;
        v111 = &v157;
        v112 = v161;
        if (v110 >= v163)
        {
          if (v161 <= &v157 && v161 + 24 * v110 > &v157)
          {
            v143 = &v157 - v161;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v110 + 1, 24);
            v112 = v161;
            v111 = (v161 + v143);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v110 + 1, 24);
            v111 = &v157;
            v112 = v161;
          }
        }

        v113 = &v112[24 * v162];
        v114 = *v111;
        *(v113 + 2) = *(v111 + 2);
        *v113 = v114;
        v115 = ++v162;
        if (v160[0])
        {
          v157 = 2;
          v158 = v61;
          v116 = &v157;
          v117 = v161;
          if (v115 >= v163)
          {
            if (v161 <= &v157 && v161 + 24 * v115 > &v157)
            {
              v144 = &v157 - v161;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v115 + 1, 24);
              v117 = v161;
              v116 = (v161 + v144);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v161, v164, v115 + 1, 24);
              v116 = &v157;
              v117 = v161;
            }
          }

          v118 = &v117[24 * v162];
          v119 = *v116;
          *(v118 + 2) = *(v116 + 2);
          *v118 = v119;
          ++v162;
        }
      }
    }
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v160);
  if (v160[0])
  {
    mlir::InFlightDiagnostic::report(v160);
  }

  if (v170 == 1)
  {
    if (v169 != &v170)
    {
      free(v169);
    }

    v120 = v167;
    if (v167)
    {
      v121 = v168;
      v122 = v167;
      if (v168 != v167)
      {
        do
        {
          v121 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v121 - 1);
        }

        while (v121 != v120);
        v122 = v167;
      }

      v168 = v120;
      operator delete(v122);
    }

    v46 = v165;
    if (!v165)
    {
LABEL_120:
      v126 = v161;
      if (v161 == v164)
      {
        return v42;
      }

      goto LABEL_121;
    }

    v123 = v166;
    v48 = v165;
    if (v166 == v165)
    {
LABEL_119:
      v166 = v46;
      operator delete(v48);
      goto LABEL_120;
    }

    do
    {
      v125 = *--v123;
      v124 = v125;
      *v123 = 0;
      if (v125)
      {
        operator delete[](v124);
      }
    }

    while (v123 != v46);
LABEL_118:
    v48 = v165;
    goto LABEL_119;
  }

  return v42;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v2;
  if (!mlir::TensorType::hasRank(&v11))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v11);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  v6 = mlir::ArrayAttr::getValue(&v10);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (v11 != v10)
  {
    return 0;
  }

  return *(*(*a1 + 72) + 24) | 4;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verify(mlir::Block ***this)
{
  v152 = *MEMORY[0x1E69E9840];
  v126 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v126);
  v3 = v2;
  if (!v2)
  {
    v137 = 257;
    mlir::OpState::emitError(this, v135, &v138);
    if (v138)
    {
      LODWORD(v132) = 3;
      v133 = "input/output rank must be >= 1";
      v134[0] = 30;
      v4 = &v132;
      v5 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &v132 && v141 + 24 * v142 > &v132)
        {
          v116 = &v132 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v5 = v141;
          v4 = (v141 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v4 = &v132;
          v5 = v141;
        }
      }

      v6 = &v5[24 * v142];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      ++v142;
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }
    }

    if (v151 == 1)
    {
      if (v150 != &v151)
      {
        free(v150);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v149;
        v10 = __p;
        if (v149 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v149 = v8;
        operator delete(v10);
      }

      v11 = v146;
      if (v146)
      {
        v12 = v147;
        v13 = v146;
        if (v147 != v146)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v146;
        }

        v147 = v11;
        operator delete(v13);
      }

      if (v141 != v144)
      {
        free(v141);
      }
    }
  }

  v16 = *((*this)[9] + 7);
  v125 = v16[1] & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v125);
  if (mlir::ShapedType::getNumElements(Value, v18) != v3)
  {
    v137 = 257;
    mlir::OpState::emitError(this, v135, &v138);
    if (v138)
    {
      LODWORD(v132) = 3;
      v133 = "input rank is ";
      v134[0] = 14;
      v19 = &v132;
      v20 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &v132 && v141 + 24 * v142 > &v132)
        {
          v114 = &v132 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v20 = v141;
          v19 = (v141 + v114);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v19 = &v132;
          v20 = v141;
        }
      }

      v21 = &v20[24 * v142];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      v23 = ++v142;
      if (v138)
      {
        LODWORD(v132) = 2;
        v133 = v3;
        v24 = &v132;
        v25 = v141;
        if (v23 >= v143)
        {
          if (v141 <= &v132 && v141 + 24 * v23 > &v132)
          {
            v117 = &v132 - v141;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v23 + 1, 24);
            v25 = v141;
            v24 = (v141 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v23 + 1, 24);
            v24 = &v132;
            v25 = v141;
          }
        }

        v26 = &v25[24 * v142];
        v27 = *v24;
        *(v26 + 2) = v24[2];
        *v26 = v27;
        v28 = ++v142;
        if (v138)
        {
          LODWORD(v132) = 3;
          v133 = " but start/end/strides are provided with ";
          v134[0] = 41;
          v29 = &v132;
          v30 = v141;
          if (v28 >= v143)
          {
            if (v141 <= &v132 && v141 + 24 * v28 > &v132)
            {
              v119 = &v132 - v141;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v28 + 1, 24);
              v30 = v141;
              v29 = (v141 + v119);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v28 + 1, 24);
              v29 = &v132;
              v30 = v141;
            }
          }

          v31 = &v30[24 * v142];
          v32 = *v29;
          *(v31 + 2) = v29[2];
          *v31 = v32;
          ++v142;
        }
      }
    }

    v33 = mlir::ArrayAttr::getValue(&v125);
    NumElements = mlir::ShapedType::getNumElements(v33, v34);
    if (v138)
    {
      LODWORD(v132) = 2;
      v133 = NumElements;
      v36 = &v132;
      v37 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &v132 && v141 + 24 * v142 > &v132)
        {
          v115 = &v132 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v37 = v141;
          v36 = (v141 + v115);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v36 = &v132;
          v37 = v141;
        }
      }

      v38 = &v37[24 * v142];
      v39 = *v36;
      *(v38 + 2) = v36[2];
      *v38 = v39;
      v40 = ++v142;
      if (v138)
      {
        LODWORD(v132) = 3;
        v133 = " elements";
        v134[0] = 9;
        v41 = &v132;
        v42 = v141;
        if (v40 >= v143)
        {
          if (v141 <= &v132 && v141 + 24 * v40 > &v132)
          {
            v118 = &v132 - v141;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v40 + 1, 24);
            v42 = v141;
            v41 = (v141 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v40 + 1, 24);
            v41 = &v132;
            v42 = v141;
          }
        }

        v43 = &v42[24 * v142];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        ++v142;
        if (v138)
        {
          mlir::InFlightDiagnostic::report(&v138);
        }
      }
    }

    if (v151 == 1)
    {
      if (v150 != &v151)
      {
        free(v150);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v149;
        v47 = __p;
        if (v149 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v149 = v45;
        operator delete(v47);
      }

      v48 = v146;
      if (v146)
      {
        v49 = v147;
        v50 = v146;
        if (v147 != v146)
        {
          do
          {
            v52 = *--v49;
            v51 = v52;
            *v49 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v49 != v48);
          v50 = v146;
        }

        v147 = v48;
        operator delete(v50);
      }

      if (v141 != v144)
      {
        free(v141);
      }
    }
  }

  v124 = *(*((*this)[9] + 19) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v126))
  {
    return 1;
  }

  v53 = mlir::ArrayAttr::getValue(&v126);
  if (v54)
  {
    v55 = 8 * v54;
    while (*v53 != 0x8000000000000000)
    {
      ++v53;
      v55 -= 8;
      if (!v55)
      {
        goto LABEL_61;
      }
    }

    return 1;
  }

LABEL_61:
  if (!mlir::TensorType::hasRank(&v124))
  {
    return 1;
  }

  v56 = mlir::ArrayAttr::getValue(&v124);
  if (v57)
  {
    v58 = 8 * v57;
    while (*v56 != 0x8000000000000000)
    {
      ++v56;
      v58 -= 8;
      if (!v58)
      {
        goto LABEL_66;
      }
    }

    return 1;
  }

LABEL_66:
  v59 = (*this)[9];
  v60 = *(v59 + 11);
  v61 = *(v59 + 15);
  v135[0] = 0;
  v132 = v135;
  v138 = v16;
  DefiningOp = mlir::Value::getDefiningOp(&v138);
  if (!DefiningOp)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v132, DefiningOp))
  {
    return 1;
  }

  v135[0] = 0;
  v132 = v135;
  v138 = v60;
  v63 = mlir::Value::getDefiningOp(&v138);
  if (!v63)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v132, v63))
  {
    return 1;
  }

  v135[0] = 0;
  v132 = v135;
  v138 = v61;
  v64 = mlir::Value::getDefiningOp(&v138);
  if (!v64 || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v132, v64))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v16, &v138);
  if ((v145 & 1) == 0)
  {
    goto LABEL_177;
  }

  v135[0] = v136;
  v135[1] = 0xC00000000;
  if (!v139 || (llvm::SmallVectorImpl<int>::operator=(v135, &v138), (v145 & 1) != 0))
  {
    if (v138 != &v140)
    {
      free(v138);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v60, &v138);
  if ((v145 & 1) == 0)
  {
    goto LABEL_177;
  }

  v132 = v134;
  v133 = 0xC00000000;
  if (!v139 || (llvm::SmallVectorImpl<int>::operator=(&v132, &v138), (v145 & 1) != 0))
  {
    if (v138 != &v140)
    {
      free(v138);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v61, &v138);
  if ((v145 & 1) == 0)
  {
LABEL_177:
    v120 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::ODIE::Compiler::isConstantValue(v120);
  }

  v130[0] = v131;
  v130[1] = 0xC00000000;
  if (!v139 || (llvm::SmallVectorImpl<int>::operator=(v130, &v138), (v145 & 1) != 0))
  {
    if (v138 != &v140)
    {
      free(v138);
    }
  }

  v65 = mlir::ArrayAttr::getValue(&v126);
  v121[0] = 0;
  if (v3 <= 0)
  {
    v138 = 0;
    llvm::SmallVector<long long,6u>::SmallVector(&__s1, v3, &v138);
    goto LABEL_139;
  }

  v66 = 0;
  v67 = v130[0];
  v68 = v135[0];
  v69 = v132;
  do
  {
    while (1)
    {
      if (!v67[v66])
      {
        v129[8] = 257;
        mlir::OpState::emitError(this, &__s1, &v138);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v138, "stride[");
        mlir::InFlightDiagnostic::operator<<<long long &>(v110, v121);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v111, "] is 0");
        v109 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v112);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
        goto LABEL_144;
      }

      v73 = v68[v66];
      if ((v73 & 0x80000000) == 0)
      {
        break;
      }

      do
      {
        v73 += *(v65 + 8 * v66);
      }

      while (v73 < 0);
      v68[v66] = v73;
      v74 = v69[v66];
      if (v74 < 0)
      {
        goto LABEL_103;
      }

LABEL_99:
      v75 = *(v65 + 8 * v66);
      if (v67[v66] >= 1)
      {
        goto LABEL_105;
      }

LABEL_91:
      v71 = v75 - 1;
      v72 = v68[v66];
      if (v71 < v72)
      {
        v72 = v71;
      }

      v68[v66] = v72;
      if (v71 >= v69[v66])
      {
        v71 = v69[v66];
      }

      v69[v66++] = v71;
      v121[0] = v66;
      if (v66 == v3)
      {
        goto LABEL_110;
      }
    }

    v74 = v69[v66];
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    do
    {
LABEL_103:
      v74 += *(v65 + 8 * v66);
    }

    while (v74 < 0);
    v69[v66] = v74;
    v75 = *(v65 + 8 * v66);
    if (v67[v66] < 1)
    {
      goto LABEL_91;
    }

LABEL_105:
    v76 = v68[v66];
    if (v76 >= v75)
    {
      v76 = v75;
    }

    v68[v66] = v76;
    if (v69[v66] < v75)
    {
      LODWORD(v75) = v69[v66];
    }

    v69[v66++] = v75;
    v121[0] = v66;
  }

  while (v66 != v3);
LABEL_110:
  v138 = 0;
  llvm::SmallVector<long long,6u>::SmallVector(&__s1, v3, &v138);
  v77 = 0;
  v78 = v130[0];
  v79 = v135[0];
  v80 = v132;
  v81 = __s1;
  do
  {
    v82 = v78[v77];
    v83 = v79[v77];
    v84 = v80[v77];
    if (v82 < 1)
    {
      if (v83 > v84)
      {
        v99 = v82;
        v100 = v81[v77];
        do
        {
          ++v100;
          v83 += v99;
        }

        while (v83 > v84);
        v81[v77] = v100;
      }
    }

    else if (v83 < v84)
    {
      v85 = v81[v77];
      if ((v83 + v82) <= v84)
      {
        v86 = v80[v77];
      }

      else
      {
        v86 = v83 + v82;
      }

      if ((v83 + v82) >= v84)
      {
        v87 = 1;
      }

      else
      {
        v87 = 2;
      }

      v88 = v87 + (v86 - ((v83 + v82) < v84) - (v83 + v82)) / v82;
      if (v88 < 4)
      {
        goto LABEL_125;
      }

      v83 += (v88 & 0xFFFFFFFFFFFFFFFCLL) * v82;
      v89 = 0uLL;
      v90 = v81[v77];
      v91 = v88 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v92 = vdupq_n_s64(1uLL);
        v89 = vaddq_s64(v89, v92);
        v90 = vaddq_s64(v90, v92);
        v91 -= 4;
      }

      while (v91);
      v85 = vaddvq_s64(vpaddq_s64(v90, v89));
      if (v88 != (v88 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_125:
        v93 = v83 + v82;
        if ((v83 + v82) <= v84)
        {
          v94 = v80[v77];
        }

        else
        {
          v94 = v83 + v82;
        }

        v95 = v94 != v93;
        v96 = v85 + v95;
        v97 = v94 - v95 - v93;
        if (v82 <= 1)
        {
          v98 = 1;
        }

        else
        {
          v98 = v78[v77];
        }

        v85 = v96 + v97 / v98 + 1;
        do
        {
          v83 += v82;
        }

        while (v83 < v84);
      }

      v81[v77] = v85;
    }

    ++v77;
  }

  while (v77 != v3);
LABEL_139:
  v101 = mlir::ArrayAttr::getValue(&v124);
  v123[0] = v101;
  v123[1] = v102;
  if (v102 == v128 && (v103 = __s1, !memcmp(__s1, v101, 8 * v102)))
  {
    result = 1;
    if (v103 != v129)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v122 = 257;
    mlir::OpState::emitError(this, v121, &v138);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v138, "mismatch in slice shape. Expected shape: ");
    v105 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v104, &__s1);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v105, " given shape is ");
    v107 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v106, v123);
    v108 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
    result = v108;
    v103 = __s1;
    if (__s1 != v129)
    {
LABEL_142:
      v109 = result;
      free(v103);
LABEL_144:
      result = v109;
    }
  }

  v113 = result;
  if (v130[0] != v131)
  {
    free(v130[0]);
    result = v113;
  }

  if (v132 != v134)
  {
    free(v132);
    result = v113;
  }

  if (v135[0] != v136)
  {
    free(v135[0]);
    return v113;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::isConstantValue(uint64_t a1)
{
  v2 = &v3;
  v3 = 0;
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v2, result);
  }

  return result;
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v8 = &v9;
  v9 = 0;
  __src = a1;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v8, DefiningOp) & 1) != 0)
  {
    mlir::ODIE::Compiler::extract1DIntVector<int>(v9, &__src);
    *a2 = a2 + 16;
    *(a2 + 8) = 0xC00000000;
    v4 = v11;
    v5 = __src;
    if (v11 && &__src != a2)
    {
      if (__src == v13)
      {
        v7 = v11;
        if (v11 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11, 4), v7 = v11, v5 = __src, v11))
        {
          memcpy(*a2, v5, 4 * v7);
          v5 = __src;
        }

        *(a2 + 8) = v4;
      }

      else
      {
        *a2 = __src;
        v6 = v12;
        *(a2 + 8) = v4;
        *(a2 + 12) = v6;
        __src = v13;
        v12 = 0;
        v5 = v13;
      }

      v11 = 0;
    }

    *(a2 + 64) = 1;
    if (v5 != v13)
    {
      free(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(*(*(*a1 + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v2;
  if (!mlir::TensorType::hasRank(&v11))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v11);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  v6 = mlir::ArrayAttr::getValue(&v10);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (v11 != v10)
  {
    return 0;
  }

  return *(*(*a1 + 72) + 152) | 4;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::verify(mlir::Block ***this)
{
  v202 = *MEMORY[0x1E69E9840];
  v187 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v187);
  mlir::ArrayAttr::getValue(&v187);
  v4 = v3;
  if (!v3)
  {
    v186 = 257;
    mlir::OpState::emitError(this, v185, v191);
    if (v191[0])
    {
      v188 = 3;
      v189 = "input rank must be >= 1";
      v190 = 23;
      v5 = &v188;
      v6 = v192;
      if (v193 >= v194)
      {
        if (v192 <= &v188 && v192 + 24 * v193 > &v188)
        {
          v164 = &v188 - v192;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
          v6 = v192;
          v5 = (v192 + v164);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
          v5 = &v188;
          v6 = v192;
        }
      }

      v7 = &v6[24 * v193];
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      ++v193;
      if (v191[0])
      {
        mlir::InFlightDiagnostic::report(v191);
      }
    }

    if (v201 == 1)
    {
      if (v200 != &v201)
      {
        free(v200);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v199;
        v11 = __p;
        if (v199 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v199 = v9;
        operator delete(v11);
      }

      v12 = v196;
      if (v196)
      {
        v13 = v197;
        v14 = v196;
        if (v197 != v196)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v196;
        }

        v197 = v12;
        operator delete(v14);
      }

      if (v192 != v195)
      {
        free(v192);
      }
    }
  }

  v184 = *(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = mlir::ArrayAttr::getValue(&v184);
  v19 = v18;
  mlir::ArrayAttr::getValue(&v184);
  v21 = *(v17 + 8 * v19 - 8);
  if (v4 < v21)
  {
    v186 = 257;
    mlir::OpState::emitError(this, v185, v191);
    if (v191[0])
    {
      v188 = 3;
      v189 = "innermost dimension of indices ";
      v190 = 31;
      v22 = &v188;
      v23 = v192;
      if (v193 >= v194)
      {
        if (v192 <= &v188 && v192 + 24 * v193 > &v188)
        {
          v163 = &v188 - v192;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
          v23 = v192;
          v22 = (v192 + v163);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
          v22 = &v188;
          v23 = v192;
        }
      }

      v24 = &v23[24 * v193];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v193;
      if (v191[0])
      {
        v188 = 2;
        v189 = v21;
        v27 = &v188;
        v28 = v192;
        if (v26 >= v194)
        {
          if (v192 <= &v188 && v192 + 24 * v26 > &v188)
          {
            v165 = &v188 - v192;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v26 + 1, 24);
            v28 = v192;
            v27 = (v192 + v165);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v26 + 1, 24);
            v27 = &v188;
            v28 = v192;
          }
        }

        v29 = &v28[24 * v193];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        v31 = ++v193;
        if (v191[0])
        {
          v188 = 3;
          v189 = " > input rank ";
          v190 = 14;
          v32 = &v188;
          v33 = v192;
          if (v31 >= v194)
          {
            if (v192 <= &v188 && v192 + 24 * v31 > &v188)
            {
              v167 = &v188 - v192;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v31 + 1, 24);
              v33 = v192;
              v32 = (v192 + v167);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v31 + 1, 24);
              v32 = &v188;
              v33 = v192;
            }
          }

          v34 = &v33[24 * v193];
          v35 = *v32;
          *(v34 + 2) = *(v32 + 2);
          *v34 = v35;
          v36 = ++v193;
          if (v191[0])
          {
            v188 = 2;
            v189 = v4;
            v37 = &v188;
            v38 = v192;
            if (v36 >= v194)
            {
              if (v192 <= &v188 && v192 + 24 * v36 > &v188)
              {
                v169 = &v188 - v192;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v36 + 1, 24);
                v38 = v192;
                v37 = (v192 + v169);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v36 + 1, 24);
                v37 = &v188;
                v38 = v192;
              }
            }

            v39 = &v38[24 * v193];
            v40 = *v37;
            *(v39 + 2) = *(v37 + 2);
            *v39 = v40;
            ++v193;
          }
        }
      }
    }

    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v191);
    if (v191[0])
    {
      mlir::InFlightDiagnostic::report(v191);
    }

    if (v201 != 1)
    {
      return v41;
    }

    if (v200 != &v201)
    {
      free(v200);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v199;
      v44 = __p;
      if (v199 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v199 = v42;
      operator delete(v44);
    }

    v45 = v196;
    if (v196)
    {
      v46 = v197;
      v47 = v196;
      if (v197 != v196)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        goto LABEL_141;
      }

      goto LABEL_142;
    }

LABEL_143:
    v161 = v192;
    if (v192 != v195)
    {
LABEL_144:
      free(v161);
    }

    return v41;
  }

  v50 = v20;
  v191[0] = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(v191);
  v52 = v51;
  v191[0] = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  v53 = mlir::ArrayAttr::getValue(v191);
  if (v52 != v50 + v4 - v21 - 1)
  {
    v186 = 257;
    mlir::OpState::emitError(this, v185, v191);
    if (v191[0])
    {
      v188 = 3;
      v189 = "output rank is ";
      v190 = 15;
      v95 = &v188;
      v96 = v192;
      if (v193 >= v194)
      {
        if (v192 <= &v188 && v192 + 24 * v193 > &v188)
        {
          v166 = &v188 - v192;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
          v96 = v192;
          v95 = (v192 + v166);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
          v95 = &v188;
          v96 = v192;
        }
      }

      v97 = &v96[24 * v193];
      v98 = *v95;
      *(v97 + 2) = *(v95 + 2);
      *v97 = v98;
      v99 = ++v193;
      if (v191[0])
      {
        v188 = 2;
        v189 = v52;
        v100 = &v188;
        v101 = v192;
        if (v99 >= v194)
        {
          if (v192 <= &v188 && v192 + 24 * v99 > &v188)
          {
            v168 = &v188 - v192;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v99 + 1, 24);
            v101 = v192;
            v100 = (v192 + v168);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v99 + 1, 24);
            v100 = &v188;
            v101 = v192;
          }
        }

        v102 = &v101[24 * v193];
        v103 = *v100;
        *(v102 + 2) = *(v100 + 2);
        *v102 = v103;
        v104 = ++v193;
        if (v191[0])
        {
          v188 = 3;
          v189 = " expected rank is ";
          v190 = 18;
          v105 = &v188;
          v106 = v192;
          if (v104 >= v194)
          {
            if (v192 <= &v188 && v192 + 24 * v104 > &v188)
            {
              v170 = &v188 - v192;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v104 + 1, 24);
              v106 = v192;
              v105 = (v192 + v170);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v104 + 1, 24);
              v105 = &v188;
              v106 = v192;
            }
          }

          v107 = &v106[24 * v193];
          v108 = *v105;
          *(v107 + 2) = *(v105 + 2);
          *v107 = v108;
          v109 = ++v193;
          if (v191[0])
          {
            v188 = 2;
            v189 = (v50 + v4 - v21 - 1);
            v110 = &v188;
            v111 = v192;
            if (v109 >= v194)
            {
              if (v192 <= &v188 && v192 + 24 * v109 > &v188)
              {
                v171 = &v188 - v192;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v109 + 1, 24);
                v111 = v192;
                v110 = (v192 + v171);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v109 + 1, 24);
                v110 = &v188;
                v111 = v192;
              }
            }

            v112 = &v111[24 * v193];
            v113 = *v110;
            *(v112 + 2) = *(v110 + 2);
            *v112 = v113;
            ++v193;
          }
        }
      }
    }

    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v191);
    if (v191[0])
    {
      mlir::InFlightDiagnostic::report(v191);
    }

    if (v201 != 1)
    {
      return v41;
    }

    if (v200 != &v201)
    {
      free(v200);
    }

    v114 = __p;
    if (__p)
    {
      v115 = v199;
      v116 = __p;
      if (v199 != __p)
      {
        do
        {
          v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
        }

        while (v115 != v114);
        v116 = __p;
      }

      v199 = v114;
      operator delete(v116);
    }

    v45 = v196;
    if (v196)
    {
      v117 = v197;
      v47 = v196;
      if (v197 != v196)
      {
        do
        {
          v119 = *--v117;
          v118 = v119;
          *v117 = 0;
          if (v119)
          {
            operator delete[](v118);
          }
        }

        while (v117 != v45);
        goto LABEL_141;
      }

LABEL_142:
      v197 = v45;
      operator delete(v47);
    }

    goto LABEL_143;
  }

  if (v52 >= 1)
  {
    v54 = 0;
    v55 = Value - 8 * v50 + 8 * v21;
    do
    {
      if (v50 - 2 >= v54)
      {
        if (*(v53 + 8 * v54) != *(v17 + 8 * v54))
        {
          v186 = 257;
          v122 = v53;
          mlir::OpState::emitError(this, v185, v191);
          if (v191[0])
          {
            v188 = 3;
            v189 = "output shape[";
            v190 = 13;
            v123 = &v188;
            v124 = v192;
            if (v193 >= v194)
            {
              if (v192 <= &v188 && v192 + 24 * v193 > &v188)
              {
                v172 = &v188 - v192;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
                v124 = v192;
                v123 = (v192 + v172);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
                v123 = &v188;
                v124 = v192;
              }
            }

            v125 = v122;
            v126 = &v124[24 * v193];
            v127 = *v123;
            *(v126 + 2) = *(v123 + 2);
            *v126 = v127;
            v128 = ++v193;
            if (v191[0])
            {
              v188 = 2;
              v189 = v54;
              v129 = &v188;
              v130 = v192;
              if (v128 >= v194)
              {
                if (v192 <= &v188 && v192 + 24 * v128 > &v188)
                {
                  v174 = &v188 - v192;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v128 + 1, 24);
                  v130 = v192;
                  v129 = (v192 + v174);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v128 + 1, 24);
                  v129 = &v188;
                  v130 = v192;
                }

                v125 = v122;
              }

              v131 = &v130[24 * v193];
              v132 = *v129;
              *(v131 + 2) = *(v129 + 2);
              *v131 = v132;
              v133 = ++v193;
              if (v191[0])
              {
                v188 = 3;
                v189 = "] is ";
                v190 = 5;
                v134 = &v188;
                v135 = v192;
                if (v133 >= v194)
                {
                  if (v192 <= &v188 && v192 + 24 * v133 > &v188)
                  {
                    v176 = &v188 - v192;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v133 + 1, 24);
                    v135 = v192;
                    v134 = (v192 + v176);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v133 + 1, 24);
                    v134 = &v188;
                    v135 = v192;
                  }

                  v125 = v122;
                }

                v136 = &v135[24 * v193];
                v137 = *v134;
                *(v136 + 2) = *(v134 + 2);
                *v136 = v137;
                v138 = ++v193;
                if (v191[0])
                {
                  v139 = *(v125 + 8 * v54);
                  v188 = 2;
                  v189 = v139;
                  v140 = &v188;
                  v141 = v192;
                  if (v138 >= v194)
                  {
                    if (v192 <= &v188 && v192 + 24 * v138 > &v188)
                    {
                      v178 = &v188 - v192;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v138 + 1, 24);
                      v141 = v192;
                      v140 = (v192 + v178);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v138 + 1, 24);
                      v140 = &v188;
                      v141 = v192;
                    }
                  }

                  v142 = &v141[24 * v193];
                  v143 = *v140;
                  *(v142 + 2) = *(v140 + 2);
                  *v142 = v143;
                  v144 = ++v193;
                  if (v191[0])
                  {
                    v188 = 3;
                    v189 = " expect it to be ";
                    v190 = 17;
                    v145 = &v188;
                    v146 = v192;
                    if (v144 >= v194)
                    {
                      if (v192 <= &v188 && v192 + 24 * v144 > &v188)
                      {
                        v180 = &v188 - v192;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v144 + 1, 24);
                        v146 = v192;
                        v145 = (v192 + v180);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v144 + 1, 24);
                        v145 = &v188;
                        v146 = v192;
                      }
                    }

                    v147 = &v146[24 * v193];
                    v148 = *v145;
                    *(v147 + 2) = *(v145 + 2);
                    *v147 = v148;
                    v149 = ++v193;
                    if (v191[0])
                    {
                      v150 = *(v17 + 8 * v54);
                      v188 = 2;
                      v189 = v150;
                      v151 = &v188;
                      v152 = v192;
                      if (v149 >= v194)
                      {
                        if (v192 <= &v188 && v192 + 24 * v149 > &v188)
                        {
                          v182 = &v188 - v192;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v149 + 1, 24);
                          v152 = v192;
                          v151 = (v192 + v182);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v149 + 1, 24);
                          v151 = &v188;
                          v152 = v192;
                        }
                      }

                      v153 = &v152[24 * v193];
                      v154 = *v151;
                      *(v153 + 2) = *(v151 + 2);
                      *v153 = v154;
                      ++v193;
                    }
                  }
                }
              }
            }
          }

          v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v191);
          if (v191[0])
          {
            mlir::InFlightDiagnostic::report(v191);
          }

          if (v201 != 1)
          {
            return v41;
          }

          if (v200 != &v201)
          {
            free(v200);
          }

          v155 = __p;
          if (__p)
          {
            v156 = v199;
            v157 = __p;
            if (v199 != __p)
            {
              do
              {
                v156 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v156 - 1);
              }

              while (v156 != v155);
              v157 = __p;
            }

            v199 = v155;
            operator delete(v157);
          }

          v45 = v196;
          if (!v196)
          {
            goto LABEL_143;
          }

          v158 = v197;
          v47 = v196;
          if (v197 == v196)
          {
            goto LABEL_142;
          }

          do
          {
            v160 = *--v158;
            v159 = v160;
            *v158 = 0;
            if (v160)
            {
              operator delete[](v159);
            }
          }

          while (v158 != v45);
LABEL_141:
          v47 = v196;
          goto LABEL_142;
        }
      }

      else if (*(v53 + 8 * v54) != *(v55 + 8 + 8 * v54))
      {
        v186 = 257;
        v56 = v53;
        mlir::OpState::emitError(this, v185, v191);
        if (v191[0])
        {
          v188 = 3;
          v189 = "output shape[";
          v190 = 13;
          v57 = &v188;
          v58 = v192;
          if (v193 >= v194)
          {
            if (v192 <= &v188 && v192 + 24 * v193 > &v188)
            {
              v173 = &v188 - v192;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
              v58 = v192;
              v57 = (v192 + v173);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v193 + 1, 24);
              v57 = &v188;
              v58 = v192;
            }
          }

          v59 = v56;
          v60 = &v58[24 * v193];
          v61 = *v57;
          *(v60 + 2) = *(v57 + 2);
          *v60 = v61;
          v62 = ++v193;
          if (v191[0])
          {
            v188 = 2;
            v189 = v54;
            v63 = &v188;
            v64 = v192;
            if (v62 >= v194)
            {
              if (v192 <= &v188 && v192 + 24 * v62 > &v188)
              {
                v175 = &v188 - v192;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v62 + 1, 24);
                v64 = v192;
                v63 = (v192 + v175);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v62 + 1, 24);
                v63 = &v188;
                v64 = v192;
              }

              v59 = v56;
            }

            v65 = &v64[24 * v193];
            v66 = *v63;
            *(v65 + 2) = *(v63 + 2);
            *v65 = v66;
            v67 = ++v193;
            if (v191[0])
            {
              v188 = 3;
              v189 = "] is ";
              v190 = 5;
              v68 = &v188;
              v69 = v192;
              if (v67 >= v194)
              {
                if (v192 <= &v188 && v192 + 24 * v67 > &v188)
                {
                  v177 = &v188 - v192;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v67 + 1, 24);
                  v69 = v192;
                  v68 = (v192 + v177);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v67 + 1, 24);
                  v68 = &v188;
                  v69 = v192;
                }

                v59 = v56;
              }

              v70 = &v69[24 * v193];
              v71 = *v68;
              *(v70 + 2) = *(v68 + 2);
              *v70 = v71;
              v72 = ++v193;
              if (v191[0])
              {
                v73 = *(v59 + 8 * v54);
                v188 = 2;
                v189 = v73;
                v74 = &v188;
                v75 = v192;
                if (v72 >= v194)
                {
                  if (v192 <= &v188 && v192 + 24 * v72 > &v188)
                  {
                    v179 = &v188 - v192;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v72 + 1, 24);
                    v75 = v192;
                    v74 = (v192 + v179);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v72 + 1, 24);
                    v74 = &v188;
                    v75 = v192;
                  }
                }

                v76 = &v75[24 * v193];
                v77 = *v74;
                *(v76 + 2) = *(v74 + 2);
                *v76 = v77;
                v78 = ++v193;
                if (v191[0])
                {
                  v188 = 3;
                  v189 = " expect it to be ";
                  v190 = 17;
                  v79 = &v188;
                  v80 = v192;
                  if (v78 >= v194)
                  {
                    if (v192 <= &v188 && v192 + 24 * v78 > &v188)
                    {
                      v181 = &v188 - v192;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v78 + 1, 24);
                      v80 = v192;
                      v79 = (v192 + v181);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v78 + 1, 24);
                      v79 = &v188;
                      v80 = v192;
                    }
                  }

                  v81 = &v80[24 * v193];
                  v82 = *v79;
                  *(v81 + 2) = *(v79 + 2);
                  *v81 = v82;
                  v83 = ++v193;
                  if (v191[0])
                  {
                    v84 = *(v55 + 8 + 8 * v54);
                    v188 = 2;
                    v189 = v84;
                    v85 = &v188;
                    v86 = v192;
                    if (v83 >= v194)
                    {
                      if (v192 <= &v188 && v192 + 24 * v83 > &v188)
                      {
                        v183 = &v188 - v192;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v83 + 1, 24);
                        v86 = v192;
                        v85 = (v192 + v183);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v192, v195, v83 + 1, 24);
                        v85 = &v188;
                        v86 = v192;
                      }
                    }

                    v87 = &v86[24 * v193];
                    v88 = *v85;
                    *(v87 + 2) = *(v85 + 2);
                    *v87 = v88;
                    ++v193;
                  }
                }
              }
            }
          }
        }

        v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v191);
        if (v191[0])
        {
          mlir::InFlightDiagnostic::report(v191);
        }

        if (v201)
        {
          if (v200 != &v201)
          {
            free(v200);
          }

          v89 = __p;
          if (__p)
          {
            v90 = v199;
            v91 = __p;
            if (v199 != __p)
            {
              do
              {
                v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
              }

              while (v90 != v89);
              v91 = __p;
            }

            v199 = v89;
            operator delete(v91);
          }

          v92 = v196;
          if (v196)
          {
            v93 = v197;
            v94 = v196;
            if (v197 != v196)
            {
              do
              {
                v121 = *--v93;
                v120 = v121;
                *v93 = 0;
                if (v121)
                {
                  operator delete[](v120);
                }
              }

              while (v93 != v92);
              v94 = v196;
            }

            v197 = v92;
            operator delete(v94);
          }

          v161 = v192;
          if (v192 != v195)
          {
            goto LABEL_144;
          }
        }

        return v41;
      }

      ++v54;
    }

    while (v52 != v54);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 56);
  v15 = 0;
  *&v16 = &v15;
  *&v11 = v2;
  result = mlir::Value::getDefiningOp(&v11);
  if (result)
  {
    if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v16, result))
    {
      return 0;
    }

    v14 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v15, &v11);
    mlir::ArrayAttr::getValue(&v14);
    if (v4 < 1)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v5 = 0;
    while (1)
    {
      v16 = v11;
      v17 = v5 + v12;
      v18 = v13;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v16, &__p);
      if (v10 > 0x40)
      {
        v6 = *__p;
        operator delete[](__p);
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        if (v10)
        {
          v8 = (__p << -v10) >> -v10;
        }

        else
        {
          v8 = 0;
        }

        if (v5 != v8)
        {
          return 0;
        }
      }

      ++v5;
      mlir::ArrayAttr::getValue(&v14);
      if (v7 <= v5)
      {
        return *(*(*a1 + 72) + 24) | 4;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verify(mlir::Block ***this)
{
  v98[6] = *MEMORY[0x1E69E9840];
  v4 = *((*this)[9] + 7);
  v96 = 0;
  v75[0] = &v96;
  __src = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (!DefiningOp)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v75, DefiningOp))
  {
    return 1;
  }

  v6 = *this;
  v78 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  v77 = *(v6 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v78))
  {
    return 1;
  }

  Value = mlir::ArrayAttr::getValue(&v78);
  if (v8)
  {
    v9 = 8 * v8;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

LABEL_8:
  if (!mlir::TensorType::hasRank(&v77))
  {
    return 1;
  }

  v10 = mlir::ArrayAttr::getValue(&v77);
  if (v11)
  {
    v12 = 8 * v11;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &__src);
  if ((v89 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_103;
  }

  v4 = v98;
  v96 = v98;
  v97 = 0xC00000000;
  v13 = v83;
  if (!v83)
  {
    goto LABEL_23;
  }

  if (__src != &v84)
  {
    v96 = __src;
    v97 = v83;
    __src = &v84;
    v83 = 0;
LABEL_23:
    if (__src != &v84)
    {
      free(__src);
    }

    goto LABEL_25;
  }

  v15 = v83;
  if (v83 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v98, v83, 4), (v15 = v83) != 0))
  {
    memcpy(v96, __src, 4 * v15);
  }

  LODWORD(v97) = v13;
  LODWORD(v83) = 0;
  if (v89)
  {
    goto LABEL_23;
  }

LABEL_25:
  v16 = mlir::ArrayAttr::getValue(&v78);
  mlir::ArrayAttr::getValue(&v78);
  v2 = v17;
  v18 = mlir::ArrayAttr::getValue(&v77);
  if (v97)
  {
    v19 = 0;
    v20 = v96;
    v21 = 4 * v97;
    while (1)
    {
      v22 = v96[v19];
      if ((v22 & 0x80000000) != 0 || v2 <= v22)
      {
        break;
      }

      if (*(v16 + 8 * v22) != *(v18 + 8 * v19))
      {
        v76 = 257;
        mlir::OpState::emitError(this, v75, &__src);
        if (__src)
        {
          v79 = 3;
          v80 = "mismatch in result shape and permutation. resultShape[";
          v81 = 54;
          v42 = &v79;
          v43 = v85;
          if (v86 >= v87)
          {
            if (v85 <= &v79 && v85 + 24 * v86 > &v79)
            {
              v71 = &v79 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v43 = v85;
              v42 = (v85 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v42 = &v79;
              v43 = v85;
            }
          }

          v44 = &v43[24 * v86];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          v46 = ++v86;
          if (__src)
          {
            v79 = 5;
            v80 = v19;
            v47 = &v79;
            v48 = v85;
            if (v46 >= v87)
            {
              if (v85 <= &v79 && v85 + 24 * v46 > &v79)
              {
                v72 = &v79 - v85;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v46 + 1, 24);
                v48 = v85;
                v47 = (v85 + v72);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v46 + 1, 24);
                v47 = &v79;
                v48 = v85;
              }
            }

            v49 = &v48[24 * v86];
            v50 = *v47;
            *(v49 + 2) = *(v47 + 2);
            *v49 = v50;
            v51 = ++v86;
            if (__src)
            {
              v79 = 3;
              v80 = "] is expected to be ";
              v81 = 20;
              v52 = &v79;
              v53 = v85;
              if (v51 >= v87)
              {
                if (v85 <= &v79 && v85 + 24 * v51 > &v79)
                {
                  v73 = &v79 - v85;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v51 + 1, 24);
                  v53 = v85;
                  v52 = (v85 + v73);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v51 + 1, 24);
                  v52 = &v79;
                  v53 = v85;
                }
              }

              v54 = &v53[24 * v86];
              v55 = *v52;
              *(v54 + 2) = *(v52 + 2);
              *v54 = v55;
              v56 = ++v86;
              if (__src)
              {
                v57 = *(v16 + 8 * v20[v19]);
                v79 = 2;
                v80 = v57;
                v58 = &v79;
                v59 = v85;
                if (v56 >= v87)
                {
                  if (v85 <= &v79 && v85 + 24 * v56 > &v79)
                  {
                    v74 = &v79 - v85;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v56 + 1, 24);
                    v59 = v85;
                    v58 = (v85 + v74);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v56 + 1, 24);
                    v58 = &v79;
                    v59 = v85;
                  }
                }

                v60 = &v59[24 * v86];
                v61 = *v58;
                *(v60 + 2) = *(v58 + 2);
                *v60 = v61;
                ++v86;
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        v33 = result;
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
          result = v33;
        }

        if (v95 != 1)
        {
          goto LABEL_82;
        }

        if (v94 != &v95)
        {
          free(v94);
          result = v33;
        }

        v62 = __p;
        if (__p)
        {
          v63 = v93;
          v64 = __p;
          if (v93 != __p)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = __p;
          }

          v93 = v62;
          operator delete(v64);
          result = v33;
        }

        v37 = v90;
        if (!v90)
        {
          goto LABEL_80;
        }

        v65 = v91;
        v39 = v90;
        if (v91 == v90)
        {
          goto LABEL_79;
        }

        do
        {
          v67 = *--v65;
          v66 = v67;
          *v65 = 0;
          if (v67)
          {
            operator delete[](v66);
          }
        }

        while (v65 != v37);
        goto LABEL_78;
      }

      ++v19;
      v21 -= 4;
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    v76 = 257;
    p_src = &__src;
    mlir::OpState::emitError(this, v75, &__src);
    if (!__src)
    {
      goto LABEL_37;
    }

    v79 = 3;
    v80 = "permutation must only hold values between 0 and ";
    v81 = 48;
    v23 = v86;
    v24 = &v79;
    v25 = v85;
    if (v86 < v87)
    {
      goto LABEL_34;
    }

    if (v85 > &v79 || v85 + 24 * v86 <= &v79)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
      v24 = &v79;
      v25 = v85;
      goto LABEL_34;
    }

LABEL_103:
    v69 = (&v79 - v25);
    llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v88, v23 + 1, 24);
    v25 = v85;
    v24 = &v69[v85];
LABEL_34:
    v26 = &v25[24 * v86];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v86;
    if (__src)
    {
      v79 = 2;
      v80 = (v2 - 1);
      v29 = &v79;
      v30 = v85;
      if (v28 >= v87)
      {
        if (v85 <= &v79 && v85 + 24 * v28 > &v79)
        {
          v70 = &v79 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v88, v28 + 1, 24);
          v30 = v85;
          v29 = (v85 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v88, v28 + 1, 24);
          v29 = &v79;
          v30 = v85;
        }
      }

      v31 = &v30[24 * v86];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v86;
    }

LABEL_37:
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
    v33 = result;
    if (__src)
    {
      mlir::InFlightDiagnostic::report(&__src);
      result = v33;
    }

    if (v95 == 1)
    {
      if (v94 != &v95)
      {
        free(v94);
        result = v33;
      }

      v34 = __p;
      if (__p)
      {
        v35 = v93;
        v36 = __p;
        if (v93 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v93 = v34;
        operator delete(v36);
        result = v33;
      }

      v37 = v90;
      if (v90)
      {
        v38 = v91;
        v39 = v90;
        if (v91 != v90)
        {
          do
          {
            v41 = *--v38;
            v40 = v41;
            *v38 = 0;
            if (v41)
            {
              operator delete[](v40);
            }
          }

          while (v38 != v37);
LABEL_78:
          v39 = v90;
        }

LABEL_79:
        v91 = v37;
        operator delete(v39);
        result = v33;
      }

LABEL_80:
      if (v85 != v88)
      {
        free(v85);
        result = v33;
      }
    }

    goto LABEL_82;
  }

LABEL_31:
  result = 1;
LABEL_82:
  if (v96 != v4)
  {
    v68 = result;
    free(v96);
    return v68;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(mlir::Block ***this)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  v3 = *(v2 + 7);
  v4 = *(v2 + 15);
  v5 = *(v2 + 19);
  if (mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v3) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, *((*this)[9] + 11)) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v4) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v5))
  {
    v24 = 0;
    v17[0] = &v24;
    v20 = v5;
    DefiningOp = mlir::Value::getDefiningOp(&v20);
    if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v17, DefiningOp))
    {
      goto LABEL_48;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_45;
    }

    v24 = v26;
    v25 = 0xC00000000;
    if (!v21 || (llvm::SmallVectorImpl<int>::operator=(&v24, &v20), (v23 & 1) != 0))
    {
      if (v20 != v22)
      {
        free(v20);
      }
    }

    v7 = v24;
    if (*v24 < 1 || v24[1] <= 0)
    {
      v19 = 257;
      mlir::OpState::emitError(this, v17, &v20);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v20, "dilation must be > 0");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      v8 = 0;
      v7 = v24;
    }

    else
    {
      v8 = 1;
    }

    if (v7 != v26)
    {
      free(v7);
    }

    if (v8)
    {
LABEL_48:
      v24 = 0;
      v17[0] = &v24;
      v20 = v4;
      v10 = mlir::Value::getDefiningOp(&v20);
      if (v10)
      {
        if (mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v17, v10))
        {
          mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v20);
          if ((v23 & 1) == 0)
          {
            goto LABEL_45;
          }

          v24 = v26;
          v25 = 0xC00000000;
          if (!v21 || (llvm::SmallVectorImpl<int>::operator=(&v24, &v20), (v23 & 1) != 0))
          {
            if (v20 != v22)
            {
              free(v20);
            }
          }

          if (*v24 < 0 || v24[1] < 0)
          {
            v19 = 257;
            mlir::OpState::emitError(this, v17, &v20);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v20, "padding must be >= 0");
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
          }

          else if (mlir::ODIE::Compiler::isConstantValue(v3))
          {
            mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &v20);
            if (v23)
            {
              v17[0] = v18;
              v17[1] = 0xC00000000;
              if (!v21 || (llvm::SmallVectorImpl<int>::operator=(v17, &v20), (v23 & 1) != 0))
              {
                if (v20 != v22)
                {
                  free(v20);
                }
              }

              v11 = v17[0];
              if (*v24 > *v17[0] / 2 || v24[1] > *(v17[0] + 1) / 2)
              {
                v16[16] = 257;
                mlir::OpState::emitError(this, v16, &v20);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v20, "padding must be <= kernel_size / 2");
                mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
                v11 = v17[0];
              }

              if (v11 != v18)
              {
                free(v11);
              }

              goto LABEL_42;
            }

LABEL_45:
            v14 = std::__throw_bad_optional_access[abi:nn200100]();
            mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(v14, v15);
            return;
          }

LABEL_42:
          if (v24 != v26)
          {
            free(v24);
          }
        }
      }
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(mlir::Block ***a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v25))
  {
    return 1;
  }

  Value = mlir::ArrayAttr::getValue(&v25);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  v7 = mlir::ArrayAttr::getValue(&v25);
  if (mlir::ShapedType::getNumElements(v7, v8) == 2)
  {
    return 1;
  }

  v24[16] = 257;
  mlir::OpState::emitError(a1, v24, &v29);
  if (v29)
  {
    v26 = 3;
    v27 = "expect exactly two elements for ";
    v28 = 32;
    v10 = &v26;
    v11 = v31;
    if (v32 >= v33)
    {
      if (v31 <= &v26 && v31 + 24 * v32 > &v26)
      {
        v23 = &v26 - v31;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
        v11 = v31;
        v10 = (v31 + v23);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
        v10 = &v26;
        v11 = v31;
      }
    }

    v12 = &v11[24 * v32];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v32;
    if (v29)
    {
      mlir::Diagnostic::operator<<(&v30, a2);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
  v14 = result;
  if (v29)
  {
    mlir::InFlightDiagnostic::report(&v29);
    result = v14;
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
      result = v14;
    }

    v15 = __p;
    if (__p)
    {
      v16 = v38;
      v17 = __p;
      if (v38 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v38 = v15;
      operator delete(v17);
      result = v14;
    }

    v18 = v35;
    if (v35)
    {
      v19 = v36;
      v20 = v35;
      if (v36 != v35)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            operator delete[](v21);
          }
        }

        while (v19 != v18);
        v20 = v35;
      }

      v36 = v18;
      operator delete(v20);
      result = v14;
    }

    if (v31 != v34)
    {
      free(v31);
      return v14;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(mlir::Block ***this)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  p_src = *(v2 + 7);
  v4 = *(v2 + 15);
  if (mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, p_src) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, *((*this)[9] + 11)) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v4))
  {
    v30 = 0;
    v19[0] = &v30;
    __src = v4;
    DefiningOp = mlir::Value::getDefiningOp(&__src);
    if (DefiningOp)
    {
      if (mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v19, DefiningOp))
      {
        mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &__src);
        if ((v28 & 1) == 0)
        {
          goto LABEL_45;
        }

        v4 = v32;
        v30 = v32;
        v31 = 0xC00000000;
        v6 = v22;
        if (v22)
        {
          if (__src == &v23)
          {
            v7 = v22;
            if (v22 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v22, 4), (v7 = v22) != 0))
            {
              memcpy(v30, __src, 4 * v7);
            }

            LODWORD(v31) = v6;
            LODWORD(v22) = 0;
            if ((v28 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v30 = __src;
            v31 = v22;
            __src = &v23;
            v22 = 0;
          }
        }

        if (__src != &v23)
        {
          free(__src);
        }

LABEL_16:
        if (*v30 < 0 || v30[1] < 0)
        {
          v20[8] = 257;
          p_src = &__src;
          mlir::OpState::emitError(this, v19, &__src);
          if (!__src)
          {
LABEL_31:
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
            if (__src)
            {
              mlir::InFlightDiagnostic::report(&__src);
            }

            if (v29 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v22);
            }

            goto LABEL_39;
          }

          LODWORD(v17[0]) = 3;
          v17[1] = "padding must be >= 0";
          v17[2] = 20;
          v11 = v25;
          v12 = v17;
          v13 = v24;
          if (v25 >= v26)
          {
            if (v24 <= v17 && v24 + 24 * v25 > v17)
            {
              goto LABEL_46;
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
            v12 = v17;
            v13 = v24;
          }

LABEL_30:
          v14 = v13 + 24 * v25;
          v15 = *v12;
          *(v14 + 16) = v12[2];
          *v14 = v15;
          ++v25;
          goto LABEL_31;
        }

        v19[0] = 0;
        v17[0] = v19;
        __src = p_src;
        v8 = mlir::Value::getDefiningOp(&__src);
        if (!v8 || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v17, v8))
        {
LABEL_39:
          if (v30 != v4)
          {
            free(v30);
          }

          return;
        }

        mlir::ODIE::Compiler::extract1DIntVector<int>(p_src, &__src);
        if (v28)
        {
          v19[0] = v20;
          v19[1] = 0xC00000000;
          if (!v22 || (llvm::SmallVectorImpl<int>::operator=(v19, &__src), (v28 & 1) != 0))
          {
            if (__src != &v23)
            {
              free(__src);
            }
          }

          v9 = v19[0];
          if (*v30 > *v19[0] / 2 || v30[1] > *(v19[0] + 1) / 2)
          {
            v18 = 257;
            mlir::OpState::emitError(this, v17, &__src);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__src, "padding must be <= kernel_size / 2");
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(v10);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
            v9 = v19[0];
          }

          if (v9 != v20)
          {
            free(v9);
          }

          goto LABEL_39;
        }

LABEL_45:
        std::__throw_bad_optional_access[abi:nn200100]();
LABEL_46:
        v16 = v17 - v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v27, v11 + 1, 24);
        v13 = v24;
        v12 = &v16[v24];
        goto LABEL_30;
      }
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(mlir::Block ***this)
{
  v52 = *MEMORY[0x1E69E9840];
  v41[0] = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(v41);
  v3 = this;
  v4 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  if (Value == v4)
  {
    return 1;
  }

  v37 = 257;
  mlir::OpState::emitError(v3, v36, v41);
  if (v41[0])
  {
    v38 = 3;
    v39 = "output type expected to be ";
    v40 = 27;
    v6 = &v38;
    v7 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v32 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = v42;
        v6 = (v42 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v6 = &v38;
        v7 = v42;
      }
    }

    v8 = &v7[24 * v43];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v43;
    if (v41[0])
    {
      v10 = &v38;
      mlir::DiagnosticArgument::DiagnosticArgument(&v38, Value);
      v11 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v43 > &v38)
        {
          v33 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v11 = v42;
          v10 = (v42 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v10 = &v38;
          v11 = v42;
        }
      }

      v12 = &v11[24 * v43];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v43;
      if (v41[0])
      {
        v38 = 3;
        v39 = ", got ";
        v40 = 6;
        v15 = &v38;
        v16 = v42;
        if (v14 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v14 > &v38)
          {
            v34 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
            v16 = v42;
            v15 = (v42 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
            v15 = &v38;
            v16 = v42;
          }
        }

        v17 = &v16[24 * v43];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v43;
        if (v41[0])
        {
          v19 = &v38;
          mlir::DiagnosticArgument::DiagnosticArgument(&v38, v4);
          v20 = v42;
          if (v43 >= v44)
          {
            if (v42 <= &v38 && v42 + 24 * v43 > &v38)
            {
              v35 = &v38 - v42;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
              v20 = v42;
              v19 = (v42 + v35);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
              v19 = &v38;
              v20 = v42;
            }
          }

          v21 = &v20[24 * v43];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v43;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verify(mlir::Block ***this)
{
  v52 = *MEMORY[0x1E69E9840];
  v41[0] = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(v41);
  v3 = this;
  v4 = *(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (Value == v4)
  {
    return 1;
  }

  v37 = 257;
  mlir::OpState::emitError(v3, v36, v41);
  if (v41[0])
  {
    v38 = 3;
    v39 = "data type expected to be ";
    v40 = 25;
    v6 = &v38;
    v7 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v32 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = v42;
        v6 = (v42 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v6 = &v38;
        v7 = v42;
      }
    }

    v8 = &v7[24 * v43];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v43;
    if (v41[0])
    {
      v10 = &v38;
      mlir::DiagnosticArgument::DiagnosticArgument(&v38, Value);
      v11 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v43 > &v38)
        {
          v33 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v11 = v42;
          v10 = (v42 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v10 = &v38;
          v11 = v42;
        }
      }

      v12 = &v11[24 * v43];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v43;
      if (v41[0])
      {
        v38 = 3;
        v39 = ", got ";
        v40 = 6;
        v15 = &v38;
        v16 = v42;
        if (v14 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v14 > &v38)
          {
            v34 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
            v16 = v42;
            v15 = (v42 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
            v15 = &v38;
            v16 = v42;
          }
        }

        v17 = &v16[24 * v43];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v43;
        if (v41[0])
        {
          v19 = &v38;
          mlir::DiagnosticArgument::DiagnosticArgument(&v38, v4);
          v20 = v42;
          if (v43 >= v44)
          {
            if (v42 <= &v38 && v42 + 24 * v43 > &v38)
            {
              v35 = &v38 - v42;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
              v20 = v42;
              v19 = (v42 + v35);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
              v19 = &v38;
              v20 = v42;
            }
          }

          v21 = &v20[24 * v43];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v43;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verify(mlir::Block ***this)
{
  v83[6] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[9];
  v4 = *(v3 + 3);
  v81 = v83;
  v83[0] = v4;
  v82 = 0x600000001;
  v5 = *(v2 + 17);
  v6 = v5 - 1;
  if (v5 < 7)
  {
    v7 = 1;
    v8 = v83;
    if (v5 == 1)
    {
      v21 = v5;
      LODWORD(v82) = v5;
      goto LABEL_20;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, *(v2 + 17), 8);
    v7 = v82;
    v8 = v81;
  }

  v9 = &v8[v7];
  if (v6 >= 0xF && ((v10 = &v8[v7 - 1 + v5], v9 < v3 + 4 * v5) ? (v11 = v3 + 56 >= v10) : (v11 = 1), v11))
  {
    v12 = v6 & 3;
    if ((v6 & 3) == 0)
    {
      v12 = 4;
    }

    v13 = v6 - v12;
    v14 = &v9[v13];
    v15 = (v3 + 120);
    v16 = (v9 + 2);
    v17 = v13;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v9 = v14;
  }

  else
  {
    v13 = 0;
  }

  v22 = ~v13 + v5;
  v23 = (v3 + 32 * v13 + 56);
  do
  {
    v24 = *v23;
    v23 += 4;
    *v9++ = v24;
    --v22;
  }

  while (v22);
  v8 = v81;
  v21 = (v82 + v6);
  LODWORD(v82) = v21;
  if (!v21)
  {
LABEL_32:
    v33 = 1;
    goto LABEL_33;
  }

LABEL_20:
  v25 = 8 * v21;
  while (1)
  {
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v8);
    if (HandleForToken)
    {
      break;
    }

    ++v8;
    v25 -= 8;
    if (!v25)
    {
      goto LABEL_32;
    }
  }

  if (!v82)
  {
    goto LABEL_32;
  }

  v27 = HandleForToken;
  v28 = v81;
  v29 = 8 * v82;
  while (1)
  {
    v30 = *v28;
    v31 = mlir::ODIE::Compiler::getHandleForToken(*v28);
    if (v31 && v31 != v27)
    {
      break;
    }

    ++v28;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_32;
    }
  }

  v35 = v31;
  v65 = 257;
  mlir::OpState::emitError(this, v64, &v69);
  if (v69)
  {
    v66 = 3;
    v67 = "expected input token '";
    v68 = 22;
    v36 = &v66;
    v37 = v71;
    if (v72 >= v73)
    {
      if (v71 <= &v66 && v71 + 24 * v72 > &v66)
      {
        v60 = &v66 - v71;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
        v37 = v71;
        v36 = (v71 + v60);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
        v36 = &v66;
        v37 = v71;
      }
    }

    v38 = &v37[24 * v72];
    v39 = *v36;
    *(v38 + 2) = *(v36 + 2);
    *v38 = v39;
    ++v72;
    if (v69)
    {
      mlir::Diagnostic::operator<<(v70, v30);
      if (v69)
      {
        v66 = 3;
        v67 = "' to represent state for '";
        v68 = 26;
        v40 = &v66;
        v41 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v66 && v71 + 24 * v72 > &v66)
          {
            v61 = &v66 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v41 = v71;
            v40 = (v71 + v61);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v40 = &v66;
            v41 = v71;
          }
        }

        v42 = &v41[24 * v72];
        v43 = *v40;
        *(v42 + 2) = *(v40 + 2);
        *v42 = v43;
        ++v72;
        if (v69)
        {
          mlir::Diagnostic::operator<<(v70, v27);
          if (v69)
          {
            v66 = 3;
            v67 = "', found that it represents '";
            v68 = 29;
            v44 = &v66;
            v45 = v71;
            if (v72 >= v73)
            {
              if (v71 <= &v66 && v71 + 24 * v72 > &v66)
              {
                v62 = &v66 - v71;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                v45 = v71;
                v44 = (v71 + v62);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                v44 = &v66;
                v45 = v71;
              }
            }

            v46 = &v45[24 * v72];
            v47 = *v44;
            *(v46 + 2) = *(v44 + 2);
            *v46 = v47;
            ++v72;
            if (v69)
            {
              mlir::Diagnostic::operator<<(v70, v35);
              if (v69)
              {
                v66 = 3;
                v67 = "'";
                v68 = 1;
                v48 = &v66;
                v49 = v71;
                if (v72 >= v73)
                {
                  if (v71 <= &v66 && v71 + 24 * v72 > &v66)
                  {
                    v63 = &v66 - v71;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v49 = v71;
                    v48 = (v71 + v63);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v48 = &v66;
                    v49 = v71;
                  }
                }

                v50 = &v49[24 * v72];
                v51 = *v48;
                *(v50 + 2) = *(v48 + 2);
                *v50 = v51;
                ++v72;
              }
            }
          }
        }
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
  if (v69)
  {
    mlir::InFlightDiagnostic::report(&v69);
  }

  if (v80)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v78;
      v54 = __p;
      if (v78 != __p)
      {
        do
        {
          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v78 = v52;
      operator delete(v54);
    }

    v55 = v75;
    if (v75)
    {
      v56 = v76;
      v57 = v75;
      if (v76 != v75)
      {
        do
        {
          v59 = *--v56;
          v58 = v59;
          *v56 = 0;
          if (v59)
          {
            operator delete[](v58);
          }
        }

        while (v56 != v55);
        v57 = v75;
      }

      v76 = v55;
      operator delete(v57);
    }

    if (v71 != v74)
    {
      free(v71);
    }
  }

LABEL_33:
  if (v81 != v83)
  {
    free(v81);
  }

  return v33;
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::fold(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 72) + 24);
  v24 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v24))
  {
    Value = mlir::ArrayAttr::getValue(&v24);
    if (v5)
    {
      v6 = 8 * v5;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v23))
      {
        v7 = mlir::ArrayAttr::getValue(&v23);
        if (v8)
        {
          v9 = 8 * v8;
          while (*v7 != 0x8000000000000000)
          {
            ++v7;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (v24 == v23)
          {
            return v3 | 4;
          }
        }
      }
    }
  }

  v22 = 0;
  v10 = *(*(*a1 + 72) + 56);
  *&v25 = &v22;
  *&v19 = v10;
  result = mlir::Value::getDefiningOp(&v19);
  if (!result)
  {
    return result;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, result))
  {
    return 0;
  }

  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v22, &v19);
  mlir::ArrayAttr::getValue(&v24);
  if (v12 < 1)
  {
    return v3 | 4;
  }

  v13 = 0;
  while (1)
  {
    v25 = v19;
    v26 = v13 + v20;
    v27 = v21;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v25, &__p);
    if (v18 > 0x40)
    {
      v14 = *__p;
      operator delete[](__p);
      if (v14 != 1)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (!v18 || (__p << -v18) >> -v18 != 1)
    {
      return 0;
    }

LABEL_17:
    ++v13;
    mlir::ArrayAttr::getValue(&v24);
    if (v15 <= v13)
    {
      return v3 | 4;
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verify(mlir::Block ***this)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v21);
  v20 = *(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*mlir::ArrayAttr::getValue(&v20) == v2)
  {
    return 1;
  }

  v19 = 257;
  mlir::OpState::emitError(this, v18, v25);
  if (v25[0])
  {
    v22 = 3;
    v23 = "number of elements in dims must be equal to input rank";
    v24 = 54;
    v4 = &v22;
    v5 = v26;
    if (v27 >= v28)
    {
      if (v26 <= &v22 && v26 + 24 * v27 > &v22)
      {
        v17 = &v22 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v5 = v26;
        v4 = (v26 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v4 = &v22;
        v5 = v26;
      }
    }

    v6 = &v5[24 * v27];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v27;
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v33;
      v10 = __p;
      if (v33 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v33 = v8;
      operator delete(v10);
    }

    v11 = v30;
    if (v30)
    {
      v12 = v31;
      v13 = v30;
      if (v31 != v30)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            operator delete[](v14);
          }
        }

        while (v12 != v11);
        v13 = v30;
      }

      v31 = v11;
      operator delete(v13);
    }

    if (v26 != v29)
    {
      free(v26);
    }
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v22[0] = a4;
  v22[1] = a5;
  if (a5 == 1)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      v13 = 0;
    }

    v21 = v13;
    if (v13)
    {
      Value = mlir::AffineMapAttr::getValue(&v21);
      v15 = *(a11 + 8);
      if (v15 >= *(a11 + 12))
      {
        v20 = Value;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v15 + 1, 8);
        Value = v20;
        LODWORD(v15) = *(a11 + 8);
      }

      *(*a11 + 8 * v15) = Value;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      v19.var0.var0 = a3;
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expected exactly 1 operand");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::Conv2dOp::verify(mlir::Block ***this)
{
  v73 = *MEMORY[0x1E69E9840];
  v62[0] = *(*((*this)[9] + 11) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v62))
  {
    Value = mlir::ArrayAttr::getValue(v62);
    if (v3)
    {
      v4 = 8 * v3;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      mlir::ArrayAttr::getValue(v62);
      if (v5 != 1 || (v6 = mlir::ArrayAttr::getValue(v62), mlir::ShapedType::getNumElements(v6, v7) != 2))
      {
        v58 = 257;
        mlir::OpState::emitError(this, v57, v62);
        if (v62[0])
        {
          v59 = 3;
          v60 = "expect two elements in strides";
          v61 = 30;
          v21 = &v59;
          v22 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v54 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v22 = v63;
              v21 = (v63 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v21 = &v59;
              v22 = v63;
            }
          }

          v23 = &v22[24 * v64];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v64;
        }

        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
        if (v62[0])
        {
          mlir::InFlightDiagnostic::report(v62);
        }

        if (v72 == 1)
        {
          if (v71 != &v72)
          {
            free(v71);
          }

          v25 = __p;
          if (__p)
          {
            v26 = v70;
            v27 = __p;
            if (v70 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v70 = v25;
            operator delete(v27);
          }

          v28 = v67;
          if (!v67)
          {
            goto LABEL_82;
          }

          v29 = v68;
          v30 = v67;
          if (v68 == v67)
          {
            goto LABEL_81;
          }

          do
          {
            v32 = *--v29;
            v31 = v32;
            *v29 = 0;
            if (v32)
            {
              operator delete[](v31);
            }
          }

          while (v29 != v28);
          goto LABEL_80;
        }

        return v20;
      }
    }
  }

  v62[0] = *(*((*this)[9] + 15) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(v62))
  {
    goto LABEL_15;
  }

  v8 = mlir::ArrayAttr::getValue(v62);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  mlir::ArrayAttr::getValue(v62);
  if (v11 == 1)
  {
    v12 = mlir::ArrayAttr::getValue(v62);
    if (mlir::ShapedType::getNumElements(v12, v13) == 2)
    {
LABEL_15:
      v62[0] = *(*((*this)[9] + 19) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::TensorType::hasRank(v62))
      {
        return 1;
      }

      v14 = mlir::ArrayAttr::getValue(v62);
      if (v15)
      {
        v16 = 8 * v15;
        while (*v14 != 0x8000000000000000)
        {
          ++v14;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        return 1;
      }

LABEL_20:
      mlir::ArrayAttr::getValue(v62);
      if (v17 == 1)
      {
        v18 = mlir::ArrayAttr::getValue(v62);
        if (mlir::ShapedType::getNumElements(v18, v19) == 2)
        {
          return 1;
        }
      }

      v58 = 257;
      mlir::OpState::emitError(this, v57, v62);
      if (v62[0])
      {
        v59 = 3;
        v60 = "expect two elements in dilation";
        v61 = 31;
        v43 = &v59;
        v44 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v56 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v44 = v63;
            v43 = (v63 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v43 = &v59;
            v44 = v63;
          }
        }

        v45 = &v44[24 * v64];
        v46 = *v43;
        *(v45 + 2) = *(v43 + 2);
        *v45 = v46;
        ++v64;
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }

      if (v72 == 1)
      {
        if (v71 != &v72)
        {
          free(v71);
        }

        v47 = __p;
        if (__p)
        {
          v48 = v70;
          v49 = __p;
          if (v70 != __p)
          {
            do
            {
              v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
            }

            while (v48 != v47);
            v49 = __p;
          }

          v70 = v47;
          operator delete(v49);
        }

        v28 = v67;
        if (!v67)
        {
          goto LABEL_82;
        }

        v50 = v68;
        v30 = v67;
        if (v68 == v67)
        {
LABEL_81:
          v68 = v28;
          operator delete(v30);
LABEL_82:
          if (v63 != v66)
          {
            free(v63);
          }

          return v20;
        }

        do
        {
          v52 = *--v50;
          v51 = v52;
          *v50 = 0;
          if (v52)
          {
            operator delete[](v51);
          }
        }

        while (v50 != v28);
LABEL_80:
        v30 = v67;
        goto LABEL_81;
      }

      return v20;
    }
  }

  v58 = 257;
  mlir::OpState::emitError(this, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = "expect two elements in padding";
    v61 = 30;
    v33 = &v59;
    v34 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v34 = v63;
        v33 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v33 = &v59;
        v34 = v63;
      }
    }

    v35 = &v34[24 * v64];
    v36 = *v33;
    *(v35 + 2) = *(v33 + 2);
    *v35 = v36;
    ++v64;
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v28 = v67;
    if (!v67)
    {
      goto LABEL_82;
    }

    v40 = v68;
    v30 = v67;
    if (v68 == v67)
    {
      goto LABEL_81;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        operator delete[](v41);
      }
    }

    while (v40 != v28);
    goto LABEL_80;
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::RealPartOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v13[0] = a4;
  v13[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  return mlir::ODIE::Compiler::CoreML::inferInnerType((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8), a11);
}

uint64_t mlir::ODIE::Compiler::CoreML::inferInnerType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v19 = a1;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    a1 = v19;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v20[0] = a1;
  v20[1] = v13;
  *&v21 = mlir::ElementsAttr::isSplat(v20);
  Value = mlir::AffineMapAttr::getValue(&v21);
  LOBYTE(v21) = 0;
  v22 = 0;
  v15 = mlir::ShapedType::cloneWith(v20, &v21, Value);
  v16 = *(a2 + 8);
  if (v16 >= *(a2 + 12))
  {
    v18 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v16 + 1, 8);
    v15 = v18;
    LODWORD(v16) = *(a2 + 8);
  }

  *(*a2 + 8 * v16) = v15;
  ++*(a2 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v33[0] = a4;
  v33[1] = a5;
  v11 = (*(mlir::ValueRange::dereference_iterator(v33, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *v11;
  {
    v29 = v11;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v11 = v29;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_14;
  }

  v22 = v16[1];
LABEL_15:
  v30[0] = v11;
  v30[1] = v22;
  isSplat = mlir::ElementsAttr::isSplat(v30);
  v24 = mlir::ComplexType::get(isSplat);
  LOBYTE(v31) = 0;
  v32 = 0;
  v25 = mlir::ShapedType::cloneWith(v30, &v31, v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v28 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
    v25 = v28;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::AddOp *this, mlir::OpBuilder *a2)
{
  v4 = *this;
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v25 = v6;
    v22 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v23 = v7;
    v8 = *(*this + 24);
    v20 = *(PartsOfComplex - 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, v8, &v20, &PartsOfComplex, &v22);
    v9 = *(*this + 24);
    v19 = *(PartsOfComplex - 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, v9, &v19, &v25, &v23);
    v10 = *(*this + 24);
    v19 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(a2, v10, &v19, &v21, &v20);
    v12 = *this;
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0); ; *i = v15)
    {
      v15 = *(v12 - 16);
      if (!v15)
      {
        break;
      }

      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = *v15;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      v15[3] = i;
      v15[1] = i;
      v18 = *i;
      *v15 = *i;
      if (v18)
      {
        *(v18 + 8) = v15;
      }
    }
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v26[28] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::BatchMatmulOp *this, mlir::OpBuilder *a2)
{
  v4 = *this;
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
  v42 = v6;
  v39 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
  v40 = v7;
  v8 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *v8;
  {
    v30 = v9;
    v31 = v8;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v8 = v31;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v30 + 8);
    v12 = *(v30 + 16);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_17;
  }

  v19 = v13[1];
LABEL_18:
  v38[0] = v8;
  v38[1] = v19;
  *&v43 = mlir::ElementsAttr::isSplat(v38);
  Value = mlir::AffineMapAttr::getValue(&v43);
  LOBYTE(v43) = 0;
  v44 = 0;
  *&v43 = mlir::ShapedType::cloneWith(v38, &v43, Value);
  *(&v43 + 1) = v21;
  v37 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &PartsOfComplex, &v39);
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &v42, &v40);
  v35 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &PartsOfComplex, &v40);
  v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &v42, &v39);
  v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(a2, *(*this + 24), &v43, &v37, &v36);
  v32 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &v35, &v34);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(a2, *(*this + 24), v38, &v33, &v32);
  v23 = *this;
  if (*(v22 + 36))
  {
    v24 = v22 - 16;
  }

  else
  {
    v24 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0); ; *i = v26)
  {
    v26 = *(v23 - 16);
    if (!v26)
    {
      break;
    }

    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      *v27 = *v26;
      if (v28)
      {
        *(v28 + 8) = v27;
      }
    }

    v26[3] = i;
    v26[1] = i;
    v29 = *i;
    *v26 = *i;
    if (v29)
    {
      *(v29 + 8) = v26;
    }
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v26[28] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v26[28] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verify(mlir::Block ***this)
{
  v70 = *MEMORY[0x1E69E9840];
  if (*(*this + 9))
  {
    v2 = (*this - 2);
  }

  else
  {
    v2 = 0;
  }

  v59[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(v59);
  v5 = v4;
  v59[0] = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(v59);
  if (v5 == 2)
  {
    if (v6 == *(Value + 8))
    {
      return 1;
    }

    v55 = 257;
    v20 = v6;
    mlir::OpState::emitError(this, v54, v59);
    if (v59[0])
    {
      v56 = 3;
      v57 = "coreml.non_zero output.shape[1] is ";
      v58 = 35;
      v21 = &v56;
      v22 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v50 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v22 = v60;
          v21 = (v60 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v21 = &v56;
          v22 = v60;
        }
      }

      v23 = v20;
      v24 = &v22[24 * v61];
      v25 = *v21;
      *(v24 + 2) = *(v21 + 2);
      *v24 = v25;
      v26 = ++v61;
      if (v59[0])
      {
        v27 = *(Value + 8);
        v56 = 2;
        v57 = v27;
        v28 = &v56;
        v29 = v60;
        if (v26 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v26 > &v56)
          {
            v51 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v26 + 1, 24);
            v29 = v60;
            v28 = (v60 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v26 + 1, 24);
            v28 = &v56;
            v29 = v60;
          }

          v23 = v20;
        }

        v30 = &v29[24 * v61];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        v32 = ++v61;
        if (v59[0])
        {
          v56 = 3;
          v57 = " which is not equal to input rank ";
          v58 = 34;
          v33 = &v56;
          v34 = v60;
          if (v32 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v32 > &v56)
            {
              v52 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v32 + 1, 24);
              v34 = v60;
              v33 = (v60 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v32 + 1, 24);
              v33 = &v56;
              v34 = v60;
            }

            v23 = v20;
          }

          v35 = &v34[24 * v61];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          v37 = ++v61;
          if (v59[0])
          {
            v56 = 2;
            v57 = v23;
            v38 = &v56;
            v39 = v60;
            if (v37 >= v62)
            {
              if (v60 <= &v56 && v60 + 24 * v37 > &v56)
              {
                v53 = &v56 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v37 + 1, 24);
                v39 = v60;
                v38 = (v60 + v53);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v37 + 1, 24);
                v38 = &v56;
                v39 = v60;
              }
            }

            v40 = &v39[24 * v61];
            v41 = *v38;
            *(v40 + 2) = *(v38 + 2);
            *v40 = v41;
            ++v61;
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v67;
        v44 = __p;
        if (v67 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v67 = v42;
        operator delete(v44);
      }

      v15 = v64;
      if (!v64)
      {
        goto LABEL_53;
      }

      v45 = v65;
      v17 = v64;
      if (v65 == v64)
      {
LABEL_52:
        v65 = v15;
        operator delete(v17);
LABEL_53:
        if (v60 != v63)
        {
          free(v60);
        }

        return v7;
      }

      do
      {
        v47 = *--v45;
        v46 = v47;
        *v45 = 0;
        if (v47)
        {
          operator delete[](v46);
        }
      }

      while (v45 != v15);
LABEL_51:
      v17 = v64;
      goto LABEL_52;
    }
  }

  else
  {
    v55 = 257;
    mlir::OpState::emitError(this, v54, v59);
    if (v59[0])
    {
      v56 = 3;
      v57 = "expect output of rank 2 for coreml.non_zero";
      v58 = 43;
      v8 = &v56;
      v9 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v49 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v9 = v60;
          v8 = (v60 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v8 = &v56;
          v9 = v60;
        }
      }

      v10 = &v9[24 * v61];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v61;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v67;
        v14 = __p;
        if (v67 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v67 = v12;
        operator delete(v14);
      }

      v15 = v64;
      if (!v64)
      {
        goto LABEL_53;
      }

      v16 = v65;
      v17 = v64;
      if (v65 == v64)
      {
        goto LABEL_52;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          operator delete[](v18);
        }
      }

      while (v16 != v15);
      goto LABEL_51;
    }
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::AddOp *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 56)))
    {
      return 1;
    }

    v22[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    v7 = result;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
      result = v7;
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
        result = v7;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v30;
        v18 = __p;
        if (v30 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v30 = v16;
        operator delete(v18);
        result = v7;
      }

      v11 = v27;
      if (!v27)
      {
        goto LABEL_46;
      }

      v19 = v28;
      v13 = v27;
      if (v28 == v27)
      {
LABEL_45:
        v28 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v25 != &v26)
        {
          free(v25);
          return v7;
        }

        return result;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          operator delete[](v20);
        }
      }

      while (v19 != v11);
LABEL_44:
      v13 = v27;
      goto LABEL_45;
    }
  }

  else
  {
    v22[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    v7 = result;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
      result = v7;
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v30;
        v10 = __p;
        if (v30 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v30 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v27;
      if (!v27)
      {
        goto LABEL_46;
      }

      v12 = v28;
      v13 = v27;
      if (v28 == v27)
      {
        goto LABEL_45;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          operator delete[](v14);
        }
      }

      while (v12 != v11);
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_36;
  }

  v12 = *a2;
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v63[0] = a2;
  v63[1] = v22;
  v55[0] = mlir::ElementsAttr::isSplat(v63);
  if (mlir::Type::isF16(v55))
  {
    return 1;
  }

  if (mlir::Type::isF32(v55))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 64))
  {
    return 1;
  }

  if (*(*v55[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v59 = v55[0];
    Value = mlir::AffineMapAttr::getValue(&v59);
    if (mlir::Type::isF16(&Value))
    {
      return 1;
    }

    if (*(*v55[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v57 = v55[0];
      v58 = mlir::AffineMapAttr::getValue(&v57);
      if (mlir::Type::isF32(&v58))
      {
        return 1;
      }
    }
  }

  v23 = 1;
  if (mlir::Type::isSignlessInteger(v55, 1))
  {
    return v23;
  }

LABEL_36:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v63);
  if (v63[0])
  {
    LODWORD(Value) = 3;
    v61 = " #";
    v62 = 2;
    p_Value = &Value;
    v25 = v64;
    if (v65 >= v66)
    {
      if (v64 <= &Value && v64 + 24 * v65 > &Value)
      {
        v51 = &Value - v64;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v25 = v64;
        p_Value = (v64 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        p_Value = &Value;
        v25 = v64;
      }
    }

    v26 = &v25[24 * v65];
    v27 = *p_Value;
    *(v26 + 2) = p_Value[2];
    *v26 = v27;
    v28 = ++v65;
    if (v63[0])
    {
      LODWORD(Value) = 5;
      v61 = a5;
      v29 = &Value;
      v30 = v64;
      if (v28 >= v66)
      {
        if (v64 <= &Value && v64 + 24 * v28 > &Value)
        {
          v52 = &Value - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v28 + 1, 24);
          v30 = v64;
          v29 = (v64 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v28 + 1, 24);
          v29 = &Value;
          v30 = v64;
        }
      }

      v31 = &v30[24 * v65];
      v32 = *v29;
      *(v31 + 2) = v29[2];
      *v31 = v32;
      v33 = ++v65;
      if (v63[0])
      {
        LODWORD(Value) = 3;
        v61 = " must be CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v62 = 246;
        v34 = &Value;
        v35 = v64;
        if (v33 >= v66)
        {
          if (v64 <= &Value && v64 + 24 * v33 > &Value)
          {
            v53 = &Value - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v33 + 1, 24);
            v35 = v64;
            v34 = (v64 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v33 + 1, 24);
            v34 = &Value;
            v35 = v64;
          }
        }

        v36 = &v35[24 * v65];
        v37 = *v34;
        *(v36 + 2) = v34[2];
        *v36 = v37;
        ++v65;
        if (v63[0])
        {
          v38 = &Value;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, a2);
          v39 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &Value && v64 + 24 * v65 > &Value)
            {
              v54 = &Value - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v39 = v64;
              v38 = (v64 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v38 = &Value;
              v39 = v64;
            }
          }

          v40 = &v39[24 * v65];
          v41 = *v38;
          *(v40 + 2) = v38[2];
          *v40 = v41;
          ++v65;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
  if (v63[0])
  {
    mlir::InFlightDiagnostic::report(v63);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v71;
      v44 = __p;
      if (v71 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v71 = v42;
      operator delete(v44);
    }

    v45 = v68;
    if (v68)
    {
      v46 = v69;
      v47 = v68;
      if (v69 != v68)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v68;
      }

      v69 = v45;
      operator delete(v47);
    }

    if (v64 != v67)
    {
      free(v64);
    }
  }

  return v23;
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::AllOp *this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v12 = *a2;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v16 = v14;
    v17 = v15;
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[2 * (v17 >> 1)];
      v21 = *v19;
      v20 = v19 + 2;
      v17 += ~(v17 >> 1);
      if (v21 < v13)
      {
        v16 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    while (v17);
    if (v16 != &v14[2 * v15] && *v16 == v13)
    {
      v22 = v16[1];
LABEL_21:
      v60[0] = a2;
      v60[1] = v22;
      v55[0] = mlir::ElementsAttr::isSplat(v60);
      v23 = 1;
      if (mlir::Type::isSignlessInteger(v55, 1))
      {
        return v23;
      }

      goto LABEL_22;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

LABEL_22:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v60);
  if (v60[0])
  {
    v57 = 3;
    v58 = " #";
    v59 = 2;
    v24 = &v57;
    v25 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v57 && v61 + 24 * v62 > &v57)
      {
        v51 = &v57 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v25 = v61;
        v24 = (v61 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v24 = &v57;
        v25 = v61;
      }
    }

    v26 = &v25[24 * v62];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v62;
    if (v60[0])
    {
      v57 = 5;
      v58 = a5;
      v29 = &v57;
      v30 = v61;
      if (v28 >= v63)
      {
        if (v61 <= &v57 && v61 + 24 * v28 > &v57)
        {
          v52 = &v57 - v61;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
          v30 = v61;
          v29 = (v61 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
          v29 = &v57;
          v30 = v61;
        }
      }

      v31 = &v30[24 * v62];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v62;
      if (v60[0])
      {
        v57 = 3;
        v58 = " must be CoreML Tensor of Boolean type. values, but got ";
        v59 = 56;
        v34 = &v57;
        v35 = v61;
        if (v33 >= v63)
        {
          if (v61 <= &v57 && v61 + 24 * v33 > &v57)
          {
            v53 = &v57 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
            v35 = v61;
            v34 = (v61 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
            v34 = &v57;
            v35 = v61;
          }
        }

        v36 = &v35[24 * v62];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v62;
        if (v60[0])
        {
          v38 = &v57;
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, a2);
          v39 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v54 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v39 = v61;
              v38 = (v61 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v38 = &v57;
              v39 = v61;
            }
          }

          v40 = &v39[24 * v62];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v62;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
  if (v60[0])
  {
    mlir::InFlightDiagnostic::report(v60);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v68;
      v44 = __p;
      if (v68 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v68 = v42;
      operator delete(v44);
    }

    v45 = v65;
    if (v65)
    {
      v46 = v66;
      v47 = v65;
      if (v66 != v65)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v65;
      }

      v66 = v45;
      operator delete(v47);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v50 = v41[1];
    v90 = a2;
    v91 = v50;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v90);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v90 = a2;
  v91 = 0;
  v49 = mlir::CallOpInterface::getArgOperands(&v90);
  a1 = v37;
  if (!v49)
  {
    goto LABEL_2;
  }

LABEL_59:
  v52 = *a2;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v82 = v52;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v82 + 8);
    v55 = *(v82 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 != &v54[2 * v55] && *v56 == v53)
  {
    v63 = v56[1];
    v83 = a2;
    v84 = v63;
    mlir::CallableOpInterface::getArgAttrsAttr(&v83);
    a1 = v37;
    if (v64 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v83 = a2;
  v84 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  a1 = v37;
  if (v62 != 1)
  {
    goto LABEL_2;
  }

LABEL_74:
  v65 = *a2;
  {
    v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v67 = *(v65 + 8);
    v68 = *(v65 + 16);
    if (!v68)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v77 = v65;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v67 = *(v77 + 8);
    v68 = *(v77 + 16);
    if (!v68)
    {
      goto LABEL_88;
    }
  }

  v69 = v67;
  v70 = v68;
  do
  {
    v71 = v70 >> 1;
    v72 = &v69[2 * (v70 >> 1)];
    v74 = *v72;
    v73 = v72 + 2;
    v70 += ~(v70 >> 1);
    if (v74 < v66)
    {
      v69 = v73;
    }

    else
    {
      v70 = v71;
    }
  }

  while (v70);
  if (v69 != &v67[2 * v68] && *v69 == v66)
  {
    v78 = v69[1];
    goto LABEL_90;
  }

LABEL_88:
  v78 = 0;
LABEL_90:
  v87 = a2;
  v88 = v78;
  isSplat = mlir::ElementsAttr::isSplat(&v87);
  if (mlir::Type::isSignedInteger(&isSplat, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&isSplat, 32);
  a1 = v37;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, &v90);
  if (v90)
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v10 = &v87;
    v11 = v92;
    if (v93 >= v94)
    {
      if (v92 <= &v87 && v92 + 24 * v93 > &v87)
      {
        v75 = &v87 - v92;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v11 = v92;
        v10 = v92 + v75;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v10 = &v87;
        v11 = v92;
      }
    }

    v12 = &v11[24 * v93];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v93;
    if (v90)
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v15 = &v87;
      v16 = v92;
      if (v14 >= v94)
      {
        if (v92 <= &v87 && v92 + 24 * v14 > &v87)
        {
          v76 = &v87 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v16 = v92;
          v15 = v92 + v76;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v15 = &v87;
          v16 = v92;
        }
      }

      v17 = &v16[24 * v93];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v93;
      if (v90)
      {
        LODWORD(v87) = 3;
        v88 = " must be 1D tensor of Index type. values, but got ";
        v89 = 50;
        v20 = &v87;
        v21 = v92;
        if (v19 >= v94)
        {
          if (v92 <= &v87 && v92 + 24 * v19 > &v87)
          {
            v80 = &v87 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v21 = v92;
            v20 = v92 + v80;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v20 = &v87;
            v21 = v92;
          }
        }

        v22 = &v21[24 * v93];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v93;
        if (v90)
        {
          v24 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v25 = v92;
          if (v93 >= v94)
          {
            if (v92 <= &v87 && v92 + 24 * v93 > &v87)
            {
              v81 = &v87 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v25 = v92;
              v24 = v92 + v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v24 = &v87;
              v25 = v92;
            }
          }

          v26 = &v25[24 * v93];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v93;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
  if (v90)
  {
    mlir::InFlightDiagnostic::report(&v90);
  }

  if (v101 == 1)
  {
    if (v100 != &v101)
    {
      free(v100);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v99;
      v31 = __p;
      if (v99 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v99 = v29;
      operator delete(v31);
    }

    v32 = v96;
    if (v96)
    {
      v33 = v97;
      v34 = v96;
      if (v97 != v96)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v33 != v32);
        v34 = v96;
      }

      v97 = v32;
      operator delete(v34);
    }

    if (v92 != v95)
    {
      free(v92);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v50 = v41[1];
    v90 = a2;
    v91 = v50;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v90);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v90 = a2;
  v91 = 0;
  v49 = mlir::CallOpInterface::getArgOperands(&v90);
  a1 = v37;
  if (!v49)
  {
    goto LABEL_2;
  }

LABEL_59:
  v52 = *a2;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v82 = v52;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v82 + 8);
    v55 = *(v82 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 != &v54[2 * v55] && *v56 == v53)
  {
    v63 = v56[1];
    v83 = a2;
    v84 = v63;
    mlir::CallableOpInterface::getArgAttrsAttr(&v83);
    a1 = v37;
    if (!v64)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v83 = a2;
  v84 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  a1 = v37;
  if (!v62)
  {
LABEL_74:
    v65 = *a2;
    {
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = *(v65 + 8);
      v68 = *(v65 + 16);
      if (!v68)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v77 = v65;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = *(v77 + 8);
      v68 = *(v77 + 16);
      if (!v68)
      {
        goto LABEL_88;
      }
    }

    v69 = v67;
    v70 = v68;
    do
    {
      v71 = v70 >> 1;
      v72 = &v69[2 * (v70 >> 1)];
      v74 = *v72;
      v73 = v72 + 2;
      v70 += ~(v70 >> 1);
      if (v74 < v66)
      {
        v69 = v73;
      }

      else
      {
        v70 = v71;
      }
    }

    while (v70);
    if (v69 != &v67[2 * v68] && *v69 == v66)
    {
      v78 = v69[1];
LABEL_90:
      v87 = a2;
      v88 = v78;
      isSplat = mlir::ElementsAttr::isSplat(&v87);
      v28 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(&isSplat, 1);
      a1 = v37;
      if (isSignlessInteger)
      {
        return v28;
      }

      goto LABEL_2;
    }

LABEL_88:
    v78 = 0;
    goto LABEL_90;
  }

LABEL_2:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, &v90);
  if (v90)
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v10 = &v87;
    v11 = v92;
    if (v93 >= v94)
    {
      if (v92 <= &v87 && v92 + 24 * v93 > &v87)
      {
        v75 = &v87 - v92;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v11 = v92;
        v10 = v92 + v75;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v10 = &v87;
        v11 = v92;
      }
    }

    v12 = &v11[24 * v93];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v93;
    if (v90)
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v15 = &v87;
      v16 = v92;
      if (v14 >= v94)
      {
        if (v92 <= &v87 && v92 + 24 * v14 > &v87)
        {
          v76 = &v87 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v16 = v92;
          v15 = v92 + v76;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v15 = &v87;
          v16 = v92;
        }
      }

      v17 = &v16[24 * v93];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v93;
      if (v90)
      {
        LODWORD(v87) = 3;
        v88 = " must be 0D tensor of Boolean type. values, but got ";
        v89 = 52;
        v20 = &v87;
        v21 = v92;
        if (v19 >= v94)
        {
          if (v92 <= &v87 && v92 + 24 * v19 > &v87)
          {
            v80 = &v87 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v21 = v92;
            v20 = v92 + v80;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v20 = &v87;
            v21 = v92;
          }
        }

        v22 = &v21[24 * v93];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v93;
        if (v90)
        {
          v24 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v25 = v92;
          if (v93 >= v94)
          {
            if (v92 <= &v87 && v92 + 24 * v93 > &v87)
            {
              v81 = &v87 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v25 = v92;
              v24 = v92 + v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v24 = &v87;
              v25 = v92;
            }
          }

          v26 = &v25[24 * v93];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v93;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
  if (v90)
  {
    mlir::InFlightDiagnostic::report(&v90);
  }

  if (v101 == 1)
  {
    if (v100 != &v101)
    {
      free(v100);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v99;
      v31 = __p;
      if (v99 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v99 = v29;
      operator delete(v31);
    }

    v32 = v96;
    if (v96)
    {
      v33 = v97;
      v34 = v96;
      if (v97 != v96)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v33 != v32);
        v34 = v96;
      }

      v97 = v32;
      operator delete(v34);
    }

    if (v92 != v95)
    {
      free(v92);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::AndOp *this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::AvgPool2dOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 72) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
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
      result = v6;
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
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v50 = v41[1];
    v94 = a2;
    v95 = v50;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v94);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v94 = a2;
  v95 = 0;
  v49 = mlir::CallOpInterface::getArgOperands(&v94);
  a1 = v37;
  if (!v49)
  {
    goto LABEL_2;
  }

LABEL_59:
  v52 = *a2;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v82 = v52;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v82 + 8);
    v55 = *(v82 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 != &v54[2 * v55] && *v56 == v53)
  {
    v63 = v56[1];
    v83 = a2;
    v84 = v63;
    mlir::CallableOpInterface::getArgAttrsAttr(&v83);
    a1 = v37;
    if (v64 == 4)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v83 = a2;
  v84 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  a1 = v37;
  if (v62 == 4)
  {
LABEL_74:
    v65 = *a2;
    {
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = *(v65 + 8);
      v68 = *(v65 + 16);
      if (!v68)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v76 = v65;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = *(v76 + 8);
      v68 = *(v76 + 16);
      if (!v68)
      {
        goto LABEL_87;
      }
    }

    v69 = v67;
    v70 = v68;
    do
    {
      v71 = v70 >> 1;
      v72 = &v69[2 * (v70 >> 1)];
      v74 = *v72;
      v73 = v72 + 2;
      v70 += ~(v70 >> 1);
      if (v74 < v66)
      {
        v69 = v73;
      }

      else
      {
        v70 = v71;
      }
    }

    while (v70);
    if (v69 != &v67[2 * v68] && *v69 == v66)
    {
      v77 = v69[1];
      goto LABEL_89;
    }

LABEL_87:
    v77 = 0;
LABEL_89:
    v91 = a2;
    v92 = v77;
    isSplat = mlir::ElementsAttr::isSplat(&v91);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }

    if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_103;
    }

    v88 = isSplat;
    Value = mlir::AffineMapAttr::getValue(&v88);
    if (!mlir::Type::isF16(&Value))
    {
      if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_103:
        a1 = v37;
        goto LABEL_2;
      }

      v86 = isSplat;
      v87 = mlir::AffineMapAttr::getValue(&v86);
      isF32 = mlir::Type::isF32(&v87);
      a1 = v37;
      if (!isF32)
      {
        goto LABEL_2;
      }
    }

    return 1;
  }

LABEL_2:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, &v94);
  if (v94)
  {
    LODWORD(v91) = 3;
    v92 = " #";
    v93 = 2;
    v10 = &v91;
    v11 = v96;
    if (v97 >= v98)
    {
      if (v96 <= &v91 && v96 + 24 * v97 > &v91)
      {
        v75 = &v91 - v96;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v11 = v96;
        v10 = v96 + v75;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v10 = &v91;
        v11 = v96;
      }
    }

    v12 = &v11[24 * v97];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v97;
    if (v94)
    {
      LODWORD(v91) = 5;
      v92 = a5;
      v15 = &v91;
      v16 = v96;
      if (v14 >= v98)
      {
        if (v96 <= &v91 && v96 + 24 * v14 > &v91)
        {
          v79 = &v91 - v96;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v14 + 1, 24);
          v16 = v96;
          v15 = v96 + v79;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v14 + 1, 24);
          v15 = &v91;
          v16 = v96;
        }
      }

      v17 = &v16[24 * v97];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v97;
      if (v94)
      {
        LODWORD(v91) = 3;
        v92 = " must be 4D tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v93 = 225;
        v20 = &v91;
        v21 = v96;
        if (v19 >= v98)
        {
          if (v96 <= &v91 && v96 + 24 * v19 > &v91)
          {
            v80 = &v91 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v19 + 1, 24);
            v21 = v96;
            v20 = v96 + v80;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v19 + 1, 24);
            v20 = &v91;
            v21 = v96;
          }
        }

        v22 = &v21[24 * v97];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v97;
        if (v94)
        {
          v24 = &v91;
          mlir::DiagnosticArgument::DiagnosticArgument(&v91, a2);
          v25 = v96;
          if (v97 >= v98)
          {
            if (v96 <= &v91 && v96 + 24 * v97 > &v91)
            {
              v81 = &v91 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v25 = v96;
              v24 = v96 + v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v24 = &v91;
              v25 = v96;
            }
          }

          v26 = &v25[24 * v97];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v97;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
  if (v94)
  {
    mlir::InFlightDiagnostic::report(&v94);
  }

  if (v105 == 1)
  {
    if (v104 != &v105)
    {
      free(v104);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v103;
      v31 = __p;
      if (v103 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v103 = v29;
      operator delete(v31);
    }

    v32 = v100;
    if (v100)
    {
      v33 = v101;
      v34 = v100;
      if (v101 != v100)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v33 != v32);
        v34 = v100;
      }

      v101 = v32;
      operator delete(v34);
    }

    if (v96 != v99)
    {
      free(v96);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 != &v39[2 * v40] && *v41 == v38)
  {
    v50 = v41[1];
    v90 = a2;
    v91 = v50;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v90);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v90 = a2;
  v91 = 0;
  v49 = mlir::CallOpInterface::getArgOperands(&v90);
  a1 = v37;
  if (!v49)
  {
    goto LABEL_2;
  }

LABEL_59:
  v52 = *a2;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v82 = v52;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v82 + 8);
    v55 = *(v82 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 != &v54[2 * v55] && *v56 == v53)
  {
    v63 = v56[1];
    v83 = a2;
    v84 = v63;
    mlir::CallableOpInterface::getArgAttrsAttr(&v83);
    a1 = v37;
    if (v64)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v83 = a2;
  v84 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  a1 = v37;
  if (v62)
  {
    goto LABEL_2;
  }

LABEL_74:
  v65 = *a2;
  {
    v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v67 = *(v65 + 8);
    v68 = *(v65 + 16);
    if (!v68)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v77 = v65;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v67 = *(v77 + 8);
    v68 = *(v77 + 16);
    if (!v68)
    {
      goto LABEL_88;
    }
  }

  v69 = v67;
  v70 = v68;
  do
  {
    v71 = v70 >> 1;
    v72 = &v69[2 * (v70 >> 1)];
    v74 = *v72;
    v73 = v72 + 2;
    v70 += ~(v70 >> 1);
    if (v74 < v66)
    {
      v69 = v73;
    }

    else
    {
      v70 = v71;
    }
  }

  while (v70);
  if (v69 != &v67[2 * v68] && *v69 == v66)
  {
    v78 = v69[1];
    goto LABEL_90;
  }

LABEL_88:
  v78 = 0;
LABEL_90:
  v87 = a2;
  v88 = v78;
  isSplat = mlir::ElementsAttr::isSplat(&v87);
  if (mlir::Type::isSignedInteger(&isSplat, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&isSplat, 32);
  a1 = v37;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, &v90);
  if (v90)
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v10 = &v87;
    v11 = v92;
    if (v93 >= v94)
    {
      if (v92 <= &v87 && v92 + 24 * v93 > &v87)
      {
        v75 = &v87 - v92;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v11 = v92;
        v10 = v92 + v75;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v10 = &v87;
        v11 = v92;
      }
    }

    v12 = &v11[24 * v93];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v93;
    if (v90)
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v15 = &v87;
      v16 = v92;
      if (v14 >= v94)
      {
        if (v92 <= &v87 && v92 + 24 * v14 > &v87)
        {
          v76 = &v87 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v16 = v92;
          v15 = v92 + v76;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v15 = &v87;
          v16 = v92;
        }
      }

      v17 = &v16[24 * v93];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v93;
      if (v90)
      {
        LODWORD(v87) = 3;
        v88 = " must be 0D tensor of Index type. values, but got ";
        v89 = 50;
        v20 = &v87;
        v21 = v92;
        if (v19 >= v94)
        {
          if (v92 <= &v87 && v92 + 24 * v19 > &v87)
          {
            v80 = &v87 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v21 = v92;
            v20 = v92 + v80;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v20 = &v87;
            v21 = v92;
          }
        }

        v22 = &v21[24 * v93];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v93;
        if (v90)
        {
          v24 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v25 = v92;
          if (v93 >= v94)
          {
            if (v92 <= &v87 && v92 + 24 * v93 > &v87)
            {
              v81 = &v87 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v25 = v92;
              v24 = v92 + v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v24 = &v87;
              v25 = v92;
            }
          }

          v26 = &v25[24 * v93];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v93;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
  if (v90)
  {
    mlir::InFlightDiagnostic::report(&v90);
  }

  if (v101 == 1)
  {
    if (v100 != &v101)
    {
      free(v100);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v99;
      v31 = __p;
      if (v99 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v99 = v29;
      operator delete(v31);
    }

    v32 = v96;
    if (v96)
    {
      v33 = v97;
      v34 = v96;
      if (v97 != v96)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v33 != v32);
        v34 = v96;
      }

      v97 = v32;
      operator delete(v34);
    }

    if (v92 != v95)
    {
      free(v92);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::AwaitOp *this)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v38 = 261;
    v37[0] = "operand";
    v37[1] = 7;
    mlir::Operation::emitOpError(v2, v37, v42);
    if (v42[0])
    {
      v39 = 3;
      v40 = " #";
      v41 = 2;
      v4 = &v39;
      v5 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v33 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v5 = v43;
          v4 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v4 = &v39;
          v5 = v43;
        }
      }

      v6 = &v5[24 * v44];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      v8 = ++v44;
      if (v42[0])
      {
        v39 = 5;
        v40 = 0;
        v9 = &v39;
        v10 = v43;
        if (v8 >= v45)
        {
          if (v43 <= &v39 && v43 + 24 * v8 > &v39)
          {
            v34 = &v39 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v8 + 1, 24);
            v10 = v43;
            v9 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v8 + 1, 24);
            v9 = &v39;
            v10 = v43;
          }
        }

        v11 = &v10[24 * v44];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        v13 = ++v44;
        if (v42[0])
        {
          v39 = 3;
          v40 = " must be , but got ";
          v41 = 19;
          v14 = &v39;
          v15 = v43;
          if (v13 >= v45)
          {
            if (v43 <= &v39 && v43 + 24 * v13 > &v39)
            {
              v35 = &v39 - v43;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v13 + 1, 24);
              v15 = v43;
              v14 = (v43 + v35);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v13 + 1, 24);
              v14 = &v39;
              v15 = v43;
            }
          }

          v16 = &v15[24 * v44];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v44;
          if (v42[0])
          {
            v18 = &v39;
            mlir::DiagnosticArgument::DiagnosticArgument(&v39, v3);
            v19 = v43;
            if (v44 >= v45)
            {
              if (v43 <= &v39 && v43 + 24 * v44 > &v39)
              {
                v36 = &v39 - v43;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
                v19 = v43;
                v18 = (v43 + v36);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
                v18 = &v39;
                v19 = v43;
              }
            }

            v20 = &v19[24 * v44];
            v21 = *v18;
            *(v20 + 2) = *(v18 + 2);
            *v20 = v21;
            ++v44;
          }
        }
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v50;
        v25 = __p;
        if (v50 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v50 = v23;
        operator delete(v25);
      }

      v26 = v47;
      if (v47)
      {
        v27 = v48;
        v28 = v47;
        if (v48 != v47)
        {
          do
          {
            v30 = *--v27;
            v29 = v30;
            *v27 = 0;
            if (v30)
            {
              operator delete[](v29);
            }
          }

          while (v27 != v26);
          v28 = v47;
        }

        v48 = v26;
        operator delete(v28);
      }

      if (v43 != v46)
      {
        free(v43);
      }
    }

    if (!v22)
    {
      return 0;
    }
  }

  if (*(*this + 36))
  {
    v31 = *this - 16;
  }

  else
  {
    v31 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v24[6] = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v15[0] = &v16;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v22 = 0;
  if (!mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::AsyncValueType>(a1, &v22))
  {
    return 0;
  }

  v16 = v22;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v15, v4, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v22 = v24;
  v23 = 0x600000000;
  mlir::AsmParser::getContext(a1);
  v5 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::AsmParser::getContext(a1);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(v7, v5, 1, v21[0], v21[1], v8, v9, v10, v13, v14, &v22))
  {
    mlir::OperationState::addTypes(a2, v22, v23);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v22 != v24)
  {
    v12 = result;
    free(v22);
    return v12;
  }

  return result;
}

BOOL mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::AsyncValueType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  v19[0] = a1;
  if (((*(*a1 + 544))(a1, &v18, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_, v19) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of Type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            operator delete[](v14);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::AwaitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v18 = v12;
  if ((*(*a2 + 64))(a2))
  {
    goto LABEL_18;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
  mlir::ODIE::Compiler::CoreML::HandleType::print(&v18, a2);
  if (v14 != (*(*v13 + 80))(v13) + v13[4] - v13[2])
  {
    goto LABEL_18;
  }

  v12 = v18;
LABEL_17:
  (*(*a2 + 32))(a2, v12);
LABEL_18:
  v18 = v20;
  v19 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v16, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::BatchMatmulOp *this)
{
  v53 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v4 + 68) < 2u)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 72);
  if (*(*(*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && *(*(*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v42 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = mlir::Type::cast<mlir::ShapedType>(&v42);
    v8 = v7;
    v41 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = mlir::Type::cast<mlir::ShapedType>(&v41);
    v43 = v6;
    v44 = v8;
    v39[0] = v9;
    v39[1] = v10;
    mlir::CallableOpInterface::getArgAttrsAttr(&v43);
    v12 = v11;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    if (v12 != v13 || (mlir::CallableOpInterface::getArgAttrsAttr(&v43), v15 = v14 - 2, v14 < 2) || (v26 = v14 - 1, v27 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v43) + 8 * (v14 - 1)), v27 != *(mlir::CallableOpInterface::getArgAttrsAttr(v39) + 8 * v15)) && *(mlir::CallableOpInterface::getArgAttrsAttr(&v43) + 8 * v26) != 0x8000000000000000 && *(mlir::CallableOpInterface::getArgAttrsAttr(v39) + 8 * v15) != 0x8000000000000000)
    {
LABEL_13:
      v39[0] = "failed to verify that number of dims >=2 and last dim of operand 0 equals second last dim of operand 1";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, &v43);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
      v17 = result;
      if (v43)
      {
        mlir::InFlightDiagnostic::report(&v43);
        result = v17;
      }

      if (v52 != 1)
      {
        return result;
      }

      if (v51 != &v52)
      {
        free(v51);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v50;
        v20 = __p;
        if (v50 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v50 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v47;
      if (!v47)
      {
        goto LABEL_63;
      }

      v22 = v48;
      v23 = v47;
      if (v48 == v47)
      {
LABEL_62:
        v48 = v21;
        operator delete(v23);
        result = v17;
LABEL_63:
        if (v45 != &v46)
        {
          free(v45);
          return v17;
        }

        return result;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
LABEL_61:
      v23 = v47;
      goto LABEL_62;
    }

    if (v15)
    {
      v28 = 0;
      do
      {
        if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v43) + 8 * v28) != 0x8000000000000000 && *(mlir::CallableOpInterface::getArgAttrsAttr(v39) + 8 * v28) != 0x8000000000000000)
        {
          v29 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v43) + 8 * v28);
          if (v29 != *(mlir::CallableOpInterface::getArgAttrsAttr(v39) + 8 * v28))
          {
            goto LABEL_13;
          }
        }
      }

      while (v15 != ++v28);
    }

    v4 = *this;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v4 - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v39[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v40 = 259;
    mlir::OpState::emitOpError(this, v39, &v43);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    v17 = result;
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
      result = v17;
    }

    if (v52 != 1)
    {
      return result;
    }

    if (v51 != &v52)
    {
      free(v51);
      result = v17;
    }

    v32 = __p;
    if (__p)
    {
      v33 = v50;
      v34 = __p;
      if (v50 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v50 = v32;
      operator delete(v34);
      result = v17;
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_63;
    }

    v35 = v48;
    v23 = v47;
    if (v48 == v47)
    {
      goto LABEL_62;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v21);
    goto LABEL_61;
  }

  v31 = mlir::getElementTypeOrSelf(*this - 16);
  if (v31 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 56)))
  {
    return 1;
  }

  v39[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, &v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    v38 = result;
    mlir::InFlightDiagnostic::report(&v43);
    result = v38;
  }

  if (v52 == 1)
  {
    v17 = result;
    mlir::Diagnostic::~Diagnostic(&v44);
    return v17;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_35;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v63[0] = a2;
  v63[1] = v22;
  v55[0] = mlir::ElementsAttr::isSplat(v63);
  if (mlir::Type::isF16(v55))
  {
    return 1;
  }

  if (mlir::Type::isF32(v55))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 64))
  {
    return 1;
  }

  if (*(*v55[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v59 = v55[0];
    Value = mlir::AffineMapAttr::getValue(&v59);
    if (mlir::Type::isF16(&Value))
    {
      return 1;
    }

    if (*(*v55[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v57 = v55[0];
      v58 = mlir::AffineMapAttr::getValue(&v57);
      if (mlir::Type::isF32(&v58))
      {
        return 1;
      }
    }
  }

LABEL_35:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v63);
  if (v63[0])
  {
    LODWORD(Value) = 3;
    v61 = " #";
    v62 = 2;
    p_Value = &Value;
    v25 = v64;
    if (v65 >= v66)
    {
      if (v64 <= &Value && v64 + 24 * v65 > &Value)
      {
        v51 = &Value - v64;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v25 = v64;
        p_Value = (v64 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        p_Value = &Value;
        v25 = v64;
      }
    }

    v26 = &v25[24 * v65];
    v27 = *p_Value;
    *(v26 + 2) = p_Value[2];
    *v26 = v27;
    v28 = ++v65;
    if (v63[0])
    {
      LODWORD(Value) = 5;
      v61 = a5;
      v29 = &Value;
      v30 = v64;
      if (v28 >= v66)
      {
        if (v64 <= &Value && v64 + 24 * v28 > &Value)
        {
          v52 = &Value - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v28 + 1, 24);
          v30 = v64;
          v29 = (v64 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v28 + 1, 24);
          v29 = &Value;
          v30 = v64;
        }
      }

      v31 = &v30[24 * v65];
      v32 = *v29;
      *(v31 + 2) = v29[2];
      *v31 = v32;
      v33 = ++v65;
      if (v63[0])
      {
        LODWORD(Value) = 3;
        v61 = " must be CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v62 = 229;
        v34 = &Value;
        v35 = v64;
        if (v33 >= v66)
        {
          if (v64 <= &Value && v64 + 24 * v33 > &Value)
          {
            v53 = &Value - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v33 + 1, 24);
            v35 = v64;
            v34 = (v64 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v33 + 1, 24);
            v34 = &Value;
            v35 = v64;
          }
        }

        v36 = &v35[24 * v65];
        v37 = *v34;
        *(v36 + 2) = v34[2];
        *v36 = v37;
        ++v65;
        if (v63[0])
        {
          v38 = &Value;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, a2);
          v39 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &Value && v64 + 24 * v65 > &Value)
            {
              v54 = &Value - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v39 = v64;
              v38 = (v64 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v38 = &Value;
              v39 = v64;
            }
          }

          v40 = &v39[24 * v65];
          v41 = *v38;
          *(v40 + 2) = v38[2];
          *v40 = v41;
          ++v65;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
  if (v63[0])
  {
    mlir::InFlightDiagnostic::report(v63);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v71;
      v44 = __p;
      if (v71 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v71 = v42;
      operator delete(v44);
    }

    v45 = v68;
    if (v68)
    {
      v46 = v69;
      v47 = v68;
      if (v69 != v68)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v68;
      }

      v69 = v45;
      operator delete(v47);
    }

    if (v64 != v67)
    {
      free(v64);
    }
  }

  return v23;
}