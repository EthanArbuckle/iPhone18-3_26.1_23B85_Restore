uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolMaxGradientOp>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v174 = *MEMORY[0x1E69E9840];
  v159 = a1;
  v4 = (a1 + 16 * ((*(a1 + 44) >> 23) & 1));
  v158 = v4[15];
  v157 = v4[9];
  v156 = v4[16];
  v155 = v4[10];
  if (v156)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v156) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v156, 0);
      v3 = v156;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v156);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v3, NumElements);
      while (v154 != v151)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
        if (v148 > 0x40)
        {
          if (*v147 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v148 || (v147 << -v148) >> -v148 <= 0)
        {
LABEL_7:
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          if (v148 > 0x40)
          {
            v6 = *v147;
            if (!v163[0])
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v148)
            {
              v6 = (v147 << -v148) >> -v148;
            }

            else
            {
              v6 = 0;
            }

            if (!v163[0])
            {
              goto LABEL_23;
            }
          }

          LODWORD(v160) = 2;
          v161 = v6;
          v8 = v164;
          if (v165 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v165 > &v160)
            {
              v25 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v8 = v164;
              v9 = (v164 + v25);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v9 = &v160;
              v8 = v164;
            }
          }

          else
          {
            v9 = &v160;
          }

          v10 = &v8[24 * v165];
          v11 = *v9;
          *(v10 + 2) = v9[2];
          *v10 = v11;
          v12 = ++v165;
          if (v163[0])
          {
            LODWORD(v160) = 3;
            v161 = ", all values should be positive.";
            v162 = 32;
            v13 = v164;
            if (v12 >= v166)
            {
              if (v164 <= &v160 && v164 + 24 * v12 > &v160)
              {
                v26 = &v160 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v12 + 1, 24);
                v13 = v164;
                v14 = (v164 + v26);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v12 + 1, 24);
                v14 = &v160;
                v13 = v164;
              }
            }

            else
            {
              v14 = &v160;
            }

            v15 = &v13[24 * v165];
            v16 = *v14;
            *(v15 + 2) = v14[2];
            *v15 = v16;
            ++v165;
          }

LABEL_23:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
          if (v163[0])
          {
            mlir::InFlightDiagnostic::report(v163);
          }

          if (v173 == 1)
          {
            if (v172 != &v173)
            {
              free(v172);
            }

            v17 = __p;
            if (__p)
            {
              v18 = v171;
              v19 = __p;
              if (v171 != __p)
              {
                do
                {
                  v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
                }

                while (v18 != v17);
                v19 = __p;
              }

              v171 = v17;
              operator delete(v19);
            }

            v20 = v168;
            if (v168)
            {
              v21 = v169;
              v22 = v168;
              if (v169 != v168)
              {
                do
                {
                  v24 = *--v21;
                  v23 = v24;
                  *v21 = 0;
                  if (v24)
                  {
                    operator delete[](v23);
                  }
                }

                while (v21 != v20);
                v22 = v168;
              }

              v169 = v20;
              operator delete(v22);
            }

            if (v164 != v167)
            {
              free(v164);
            }
          }

          v7 = 0;
          if (v148 < 0x41)
          {
            goto LABEL_46;
          }

LABEL_44:
          if (v147)
          {
            operator delete[](v147);
          }

          goto LABEL_46;
        }

        v7 = 1;
        if (v148 >= 0x41)
        {
          goto LABEL_44;
        }

LABEL_46:
        if (!v7)
        {
          return v3;
        }

        ++v154;
      }
    }
  }

  if (v158)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v158) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v158, 0);
      v27 = v158;
      v28 = mlir::DenseElementsAttr::getNumElements(&v158);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v27, v28);
      while (v154 != v151)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
        if (v148 > 0x40)
        {
          if (*v147 <= 0)
          {
            goto LABEL_112;
          }
        }

        else if (!v148 || (v147 << -v148) >> -v148 <= 0)
        {
LABEL_112:
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          if (v148 > 0x40)
          {
            v61 = *v147;
            if (!v163[0])
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (v148)
            {
              v61 = (v147 << -v148) >> -v148;
            }

            else
            {
              v61 = 0;
            }

            if (!v163[0])
            {
              goto LABEL_128;
            }
          }

          LODWORD(v160) = 2;
          v161 = v61;
          v63 = v164;
          if (v165 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v165 > &v160)
            {
              v80 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v63 = v164;
              v64 = (v164 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v64 = &v160;
              v63 = v164;
            }
          }

          else
          {
            v64 = &v160;
          }

          v65 = &v63[24 * v165];
          v66 = *v64;
          *(v65 + 2) = v64[2];
          *v65 = v66;
          v67 = ++v165;
          if (v163[0])
          {
            LODWORD(v160) = 3;
            v161 = ", all values should be positive.";
            v162 = 32;
            v68 = v164;
            if (v67 >= v166)
            {
              if (v164 <= &v160 && v164 + 24 * v67 > &v160)
              {
                v81 = &v160 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v67 + 1, 24);
                v68 = v164;
                v69 = (v164 + v81);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v67 + 1, 24);
                v69 = &v160;
                v68 = v164;
              }
            }

            else
            {
              v69 = &v160;
            }

            v70 = &v68[24 * v165];
            v71 = *v69;
            *(v70 + 2) = v69[2];
            *v70 = v71;
            ++v165;
          }

LABEL_128:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
          if (v163[0])
          {
            mlir::InFlightDiagnostic::report(v163);
          }

          if (v173 == 1)
          {
            if (v172 != &v173)
            {
              free(v172);
            }

            v72 = __p;
            if (__p)
            {
              v73 = v171;
              v74 = __p;
              if (v171 != __p)
              {
                do
                {
                  v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
                }

                while (v73 != v72);
                v74 = __p;
              }

              v171 = v72;
              operator delete(v74);
            }

            v75 = v168;
            if (v168)
            {
              v76 = v169;
              v77 = v168;
              if (v169 != v168)
              {
                do
                {
                  v79 = *--v76;
                  v78 = v79;
                  *v76 = 0;
                  if (v79)
                  {
                    operator delete[](v78);
                  }
                }

                while (v76 != v75);
                v77 = v168;
              }

              v169 = v75;
              operator delete(v77);
            }

            if (v164 != v167)
            {
              free(v164);
            }
          }

          v62 = 0;
          if (v148 < 0x41)
          {
            goto LABEL_151;
          }

LABEL_149:
          if (v147)
          {
            operator delete[](v147);
          }

          goto LABEL_151;
        }

        v62 = 1;
        if (v148 >= 0x41)
        {
          goto LABEL_149;
        }

LABEL_151:
        if (!v62)
        {
          return v3;
        }

        ++v154;
      }
    }
  }

  if (v157)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v157) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v157, 0);
      v29 = v157;
      v30 = mlir::DenseElementsAttr::getNumElements(&v157);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v29, v30);
      while (v154 != v151)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
        if (v148 > 0x40)
        {
          if (*v147 <= 0)
          {
            goto LABEL_170;
          }
        }

        else if (!v148 || (v147 << -v148) >> -v148 <= 0)
        {
LABEL_170:
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          if (v148 > 0x40)
          {
            v83 = *v147;
            if (!v163[0])
            {
              goto LABEL_186;
            }
          }

          else
          {
            if (v148)
            {
              v83 = (v147 << -v148) >> -v148;
            }

            else
            {
              v83 = 0;
            }

            if (!v163[0])
            {
              goto LABEL_186;
            }
          }

          LODWORD(v160) = 2;
          v161 = v83;
          v85 = v164;
          if (v165 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v165 > &v160)
            {
              v102 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v85 = v164;
              v86 = (v164 + v102);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v86 = &v160;
              v85 = v164;
            }
          }

          else
          {
            v86 = &v160;
          }

          v87 = &v85[24 * v165];
          v88 = *v86;
          *(v87 + 2) = v86[2];
          *v87 = v88;
          v89 = ++v165;
          if (v163[0])
          {
            LODWORD(v160) = 3;
            v161 = ", all values should be positive.";
            v162 = 32;
            v90 = v164;
            if (v89 >= v166)
            {
              if (v164 <= &v160 && v164 + 24 * v89 > &v160)
              {
                v103 = &v160 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v89 + 1, 24);
                v90 = v164;
                v91 = (v164 + v103);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v89 + 1, 24);
                v91 = &v160;
                v90 = v164;
              }
            }

            else
            {
              v91 = &v160;
            }

            v92 = &v90[24 * v165];
            v93 = *v91;
            *(v92 + 2) = v91[2];
            *v92 = v93;
            ++v165;
          }

LABEL_186:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
          if (v163[0])
          {
            mlir::InFlightDiagnostic::report(v163);
          }

          if (v173 == 1)
          {
            if (v172 != &v173)
            {
              free(v172);
            }

            v94 = __p;
            if (__p)
            {
              v95 = v171;
              v96 = __p;
              if (v171 != __p)
              {
                do
                {
                  v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
                }

                while (v95 != v94);
                v96 = __p;
              }

              v171 = v94;
              operator delete(v96);
            }

            v97 = v168;
            if (v168)
            {
              v98 = v169;
              v99 = v168;
              if (v169 != v168)
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
                v99 = v168;
              }

              v169 = v97;
              operator delete(v99);
            }

            if (v164 != v167)
            {
              free(v164);
            }
          }

          v84 = 0;
          if (v148 < 0x41)
          {
            goto LABEL_209;
          }

LABEL_207:
          if (v147)
          {
            operator delete[](v147);
          }

          goto LABEL_209;
        }

        v84 = 1;
        if (v148 >= 0x41)
        {
          goto LABEL_207;
        }

LABEL_209:
        if (!v84)
        {
          return v3;
        }

        ++v154;
      }
    }
  }

  if (v155)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v155) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v155, 0);
      v31 = v155;
      v32 = mlir::DenseElementsAttr::getNumElements(&v155);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v31, v32);
      if (v154 != v151)
      {
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
          if (v148 > 0x40)
          {
            break;
          }

          if (v148)
          {
            v104 = (v147 << -v148) >> -v148;
            if (v104 < 0)
            {
              goto LABEL_226;
            }

LABEL_233:
            if (v148 >= 0x41)
            {
LABEL_263:
              if (v147)
              {
                operator delete[](v147);
              }
            }

LABEL_221:
            if (v104 < 0)
            {
              return v3;
            }
          }

          if (++v154 == v151)
          {
            goto LABEL_66;
          }
        }

        v104 = *v147;
        if ((*v147 & 0x8000000000000000) == 0)
        {
          goto LABEL_233;
        }

LABEL_226:
        v146 = 259;
        mlir::OpState::emitOpError(&v159, v145, v163);
        if (v148 > 0x40)
        {
          v105 = *v147;
          if (!v163[0])
          {
            goto LABEL_242;
          }
        }

        else
        {
          if (v148)
          {
            v105 = (v147 << -v148) >> -v148;
          }

          else
          {
            v105 = 0;
          }

          if (!v163[0])
          {
            goto LABEL_242;
          }
        }

        LODWORD(v160) = 2;
        v161 = v105;
        v106 = v164;
        if (v165 >= v166)
        {
          if (v164 <= &v160 && v164 + 24 * v165 > &v160)
          {
            v123 = &v160 - v164;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
            v106 = v164;
            v107 = (v164 + v123);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
            v107 = &v160;
            v106 = v164;
          }
        }

        else
        {
          v107 = &v160;
        }

        v108 = &v106[24 * v165];
        v109 = *v107;
        *(v108 + 2) = v107[2];
        *v108 = v109;
        v110 = ++v165;
        if (v163[0])
        {
          LODWORD(v160) = 3;
          v161 = ", all values should be non-negative.";
          v162 = 36;
          v111 = v164;
          if (v110 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v110 > &v160)
            {
              v124 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v110 + 1, 24);
              v111 = v164;
              v112 = (v164 + v124);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v110 + 1, 24);
              v112 = &v160;
              v111 = v164;
            }
          }

          else
          {
            v112 = &v160;
          }

          v113 = &v111[24 * v165];
          v114 = *v112;
          *(v113 + 2) = v112[2];
          *v113 = v114;
          ++v165;
        }

LABEL_242:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
        if (v163[0])
        {
          mlir::InFlightDiagnostic::report(v163);
        }

        if (v173 == 1)
        {
          if (v172 != &v173)
          {
            free(v172);
          }

          v115 = __p;
          if (__p)
          {
            v116 = v171;
            v117 = __p;
            if (v171 != __p)
            {
              do
              {
                v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
              }

              while (v116 != v115);
              v117 = __p;
            }

            v171 = v115;
            operator delete(v117);
          }

          v118 = v168;
          if (v168)
          {
            v119 = v169;
            v120 = v168;
            if (v169 != v168)
            {
              do
              {
                v122 = *--v119;
                v121 = v122;
                *v119 = 0;
                if (v122)
                {
                  operator delete[](v121);
                }
              }

              while (v119 != v118);
              v120 = v168;
            }

            v169 = v118;
            operator delete(v120);
          }

          if (v164 != v167)
          {
            free(v164);
          }
        }

        if (v148 >= 0x41)
        {
          goto LABEL_263;
        }

        goto LABEL_221;
      }
    }
  }

LABEL_66:
  v33 = *(*(v159 + 16 * ((*(v159 + 44) >> 23) & 1) + 112) + 8);
  if (v33 == 3)
  {
    v146 = 259;
    mlir::OpState::emitOpError(&v159, v145, v163);
    if (v163[0])
    {
      LODWORD(v152) = 3;
      v153 = "not supported by this op.";
      v154 = 25;
      v51 = &v152;
      v52 = v164;
      if (v165 >= v166)
      {
        if (v164 <= &v152 && v164 + 24 * v165 > &v152)
        {
          v140 = &v152 - v164;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v52 = v164;
          v51 = (v164 + v140);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v51 = &v152;
          v52 = v164;
        }
      }

      v53 = &v52[24 * v165];
      v54 = *v51;
      *(v53 + 2) = v51[2];
      *v53 = v54;
      ++v165;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
    if (v163[0])
    {
      mlir::InFlightDiagnostic::report(v163);
    }

    if (v173 == 1)
    {
      if (v172 != &v173)
      {
        free(v172);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v171;
        v57 = __p;
        if (v171 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v171 = v55;
        operator delete(v57);
      }

      v46 = v168;
      if (!v168)
      {
        goto LABEL_164;
      }

      v58 = v169;
      v48 = v168;
      if (v169 == v168)
      {
        goto LABEL_163;
      }

      do
      {
        v60 = *--v58;
        v59 = v60;
        *v58 = 0;
        if (v60)
        {
          operator delete[](v59);
        }
      }

      while (v58 != v46);
      goto LABEL_162;
    }
  }

  else if (v33 || v155)
  {
    if (mlir::mps::checkInputTensors<mlir::mps::PoolMaxGradientOp>(v159))
    {
      if (a2)
      {
        v125 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
        v152 = v125;
        v153 = v126;
      }

      else
      {
        v125 = 0;
        v152 = 0;
        v153 = 0;
      }

      if (a3)
      {
        v127 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
        v149 = v127;
        v150 = v128;
      }

      else
      {
        v127 = 0;
        v149 = 0;
        v150 = 0;
      }

      if (!v125)
      {
        return 1;
      }

      if (*(*v125 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v127 == 0)
      {
        return 1;
      }

      if (*(*v127 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        return 1;
      }

      mlir::CallableOpInterface::getArgAttrsAttr(&v152);
      v131 = v130;
      mlir::CallableOpInterface::getArgAttrsAttr(&v149);
      if (v131 == v132)
      {
        return 1;
      }

      else
      {
        v146 = 259;
        mlir::OpState::emitOpError(&v159, v145, v163);
        mlir::CallableOpInterface::getArgAttrsAttr(&v152);
        v160 = v133;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v163, &v160);
        v136 = v135;
        mlir::CallableOpInterface::getArgAttrsAttr(&v149);
        v147 = v137;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v136, &v147);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v138, ".");
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v139);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v163);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v146 = 259;
    mlir::OpState::emitOpError(&v159, v145, v163);
    if (v163[0])
    {
      LODWORD(v152) = 3;
      v153 = "invalid type. Must be specified when ";
      v154 = 37;
      v34 = &v152;
      v35 = v164;
      if (v165 >= v166)
      {
        if (v164 <= &v152 && v164 + 24 * v165 > &v152)
        {
          v141 = &v152 - v164;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v35 = v164;
          v34 = (v164 + v141);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v34 = &v152;
          v35 = v164;
        }
      }

      v36 = &v35[24 * v165];
      v37 = *v34;
      *(v36 + 2) = v34[2];
      *v36 = v37;
      v38 = ++v165;
      if (v163[0])
      {
        LODWORD(v152) = 3;
        v154 = 31;
        v39 = &v152;
        v40 = v164;
        if (v38 >= v166)
        {
          if (v164 <= &v152 && v164 + 24 * v38 > &v152)
          {
            v142 = &v152 - v164;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v38 + 1, 24);
            v40 = v164;
            v39 = (v164 + v142);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v38 + 1, 24);
            v39 = &v152;
            v40 = v164;
          }
        }

        v41 = &v40[24 * v165];
        v42 = *v39;
        *(v41 + 2) = v39[2];
        *v41 = v42;
        ++v165;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
    if (v163[0])
    {
      mlir::InFlightDiagnostic::report(v163);
    }

    if (v173 == 1)
    {
      if (v172 != &v173)
      {
        free(v172);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v171;
        v45 = __p;
        if (v171 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v171 = v43;
        operator delete(v45);
      }

      v46 = v168;
      if (!v168)
      {
        goto LABEL_164;
      }

      v47 = v169;
      v48 = v168;
      if (v169 == v168)
      {
LABEL_163:
        v169 = v46;
        operator delete(v48);
LABEL_164:
        if (v164 != v167)
        {
          free(v164);
        }

        return v3;
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
LABEL_162:
      v48 = v168;
      goto LABEL_163;
    }
  }

  return v3;
}

uint64_t mlir::mps::PoolMaxOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
    v15 = a7[2];
    v16 = a7[3];
    v17 = *(a7 + 8);
  }

  else
  {
    v17 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *&v71 = a6;
  BYTE8(v71) = 0;
  v72[0] = 0;
  *&v72[8] = v13;
  *&v72[24] = v14;
  *&v72[40] = v15;
  *&v72[56] = v16;
  *&v72[72] = v17;
  v73 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v71);
    if (v72[0] == 1)
    {
      v72[0] = 0;
    }

    mlir::OperationName::OperationName(&v71 + 8, "mps.pooling_max", 15, Context);
    v72[0] = 1;
  }

  *&v74 = a4;
  *(&v74 + 1) = a5;
  if (!a5 || (v19.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::PoolMaxOpAdaptor::verify(&v71, v19)))
  {
    v37 = mlir::Float32Type::get(this, a2);
    v38 = mlir::UnrankedTensorType::get(v37);
    v39 = *(a10 + 8);
    if (v39 >= *(a10 + 12))
    {
      v49 = v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v39 + 1, 8);
      v38 = v49;
      LODWORD(v39) = *(a10 + 8);
    }

    *(*a10 + 8 * v39) = v38;
    ++*(a10 + 8);
    v40 = mlir::IntegerType::get(this, 32, 1u);
    if (!v40)
    {
      v40 = mlir::Float32Type::get(this, v41);
    }

    v42 = mlir::UnrankedTensorType::get(v40);
    v43 = *(a10 + 8);
    if (v43 >= *(a10 + 12))
    {
      v50 = v42;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v43 + 1, 8);
      v42 = v50;
      v43 = *(a10 + 8);
    }

    *(*a10 + 8 * v43) = v42;
    goto LABEL_46;
  }

  v59[0] = v74;
  v59[1] = 0;
  v20 = mlir::ValueRange::dereference_iterator(v59, 0);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v58[0] = v21;
  v58[1] = v22;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
  v24 = mlir::IntegerType::get(this, 32, 1u);
  v57 = *&v72[48];
  if (*&v72[48])
  {
    v59[0] = mlir::AffineMapAttr::getValue(&v57);
    if (mlir::Type::isSignedInteger(v59, 32) || mlir::Type::isSignedInteger(v59, 64))
    {
      v24 = v59[0];
    }
  }

  if (!v21 || (mlir::CallOpInterface::getArgOperands(v58) & 1) == 0)
  {
    v44 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v45 = mlir::UnrankedTensorType::get(v24);
    v46 = *(a10 + 8);
    if (v46 >= *(a10 + 12))
    {
      v51 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v46 + 1, 8);
      v45 = v51;
      LODWORD(v46) = *(a10 + 8);
    }

    *(*a10 + 8 * v46) = v44;
    v47 = *(a10 + 12);
    v48 = (*(a10 + 8) + 1);
    *(a10 + 8) = v48;
    if (v48 >= v47)
    {
      v52 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v48 + 1, 8);
      v45 = v52;
      LODWORD(v48) = *(a10 + 8);
    }

    *(*a10 + 8 * v48) = v45;
LABEL_46:
    ++*(a10 + 8);
    return 1;
  }

  v69[0] = v70;
  v69[1] = 0x400000000;
  v67[0] = v68;
  v67[1] = 0x400000000;
  v65[0] = v66;
  v65[1] = 0x800000000;
  v63[0] = v64;
  v63[1] = 0x400000000;
  v61[0] = v62;
  v61[1] = 0x400000000;
  v56 = 0;
  v55 = 2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v58);
  v60[3] = *&v72[48];
  v60[4] = *&v72[64];
  v60[5] = v73;
  v60[6] = v74;
  *v59 = v71;
  v60[0] = *v72;
  v60[1] = *&v72[16];
  v60[2] = *&v72[32];
  mlir::mps::getPool4dParams<mlir::mps::PoolMaxOpAdaptor>(ArgAttrsAttr, v26, v59, v69, v67, v65, v63, v61, &v55, &v56 + 1, &v56);
  v59[0] = v60;
  v59[1] = 0x400000000;
  v29 = mlir::mps::inferPool4DShape(v27, v28, v67, v69, v63, v61, v65, v55, HIBYTE(v56), v59);
  result = 0;
  if (v29)
  {
    v31 = mlir::RankedTensorType::get(v59[0], LODWORD(v59[1]), ElementTypeOrSelf, 0);
    v32 = mlir::RankedTensorType::get(v59[0], LODWORD(v59[1]), v24, 0);
    v33 = *(a10 + 8);
    if (v33 >= *(a10 + 12))
    {
      v53 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v33 + 1, 8);
      v32 = v53;
      LODWORD(v33) = *(a10 + 8);
    }

    *(*a10 + 8 * v33) = v31;
    v34 = *(a10 + 12);
    v35 = (*(a10 + 8) + 1);
    *(a10 + 8) = v35;
    if (v35 >= v34)
    {
      v54 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v35 + 1, 8);
      v32 = v54;
      LODWORD(v35) = *(a10 + 8);
    }

    *(*a10 + 8 * v35) = v32;
    ++*(a10 + 8);
    result = 1;
  }

  v36 = result;
  if (v59[0] != v60)
  {
    free(v59[0]);
    result = v36;
  }

  if (v61[0] != v62)
  {
    free(v61[0]);
    result = v36;
  }

  if (v63[0] != v64)
  {
    free(v63[0]);
    result = v36;
  }

  if (v65[0] != v66)
  {
    free(v65[0]);
    result = v36;
  }

  if (v67[0] != v68)
  {
    free(v67[0]);
    result = v36;
  }

  if (v69[0] != v70)
  {
    free(v69[0]);
    return v36;
  }

  return result;
}

BOOL mlir::mps::PoolMaxOpAdaptor::verify(mlir::mps::PoolMaxOpAdaptor *this, Location a2)
{
  v143 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v130 = *(this + 5);
  v4 = *(this + 11);
  if (!v4)
  {
    v127 = "'mps.pooling_max' op requires attribute 'window_sizes'";
    v129 = 259;
    mlir::emitError(a2.var0.var0, &v127, &v133);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
    if (v133)
    {
      mlir::InFlightDiagnostic::report(&v133);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v140;
        v20 = __p;
        if (v140 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v140 = v18;
        operator delete(v20);
      }

      v21 = v137;
      if (!v137)
      {
        goto LABEL_172;
      }

      v22 = v138;
      v23 = v137;
      if (v138 == v137)
      {
        goto LABEL_171;
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
      goto LABEL_170;
    }

    return v17;
  }

  v5 = *(this + 8);
  v6 = *(this + 10);
  v7 = *v4;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v26 = v7;
    mlir::mps::ConstantOp::getAsAttribute();
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v9 = *(v26 + 8);
    v10 = *(v26 + 16);
    if (!v10)
    {
      goto LABEL_30;
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
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v28 = v11[1];
    v127 = v4;
    v128 = v28;
    Type = mlir::ElementsAttr::getType(&v127);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v127 = v4;
  v128 = 0;
  Type = mlir::ElementsAttr::getType(&v127);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v29 = *Type;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    if (!v32)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v120 = v29;
    v121 = Type;
    mlir::arith::ExtUIOp::fold();
    Type = v121;
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v120 + 8);
    v32 = *(v120 + 16);
    if (!v32)
    {
      goto LABEL_45;
    }
  }

  v33 = v31;
  v34 = v32;
  do
  {
    v35 = v34 >> 1;
    v36 = &v33[2 * (v34 >> 1)];
    v38 = *v36;
    v37 = v36 + 2;
    v34 += ~(v34 >> 1);
    if (v38 < v30)
    {
      v33 = v37;
    }

    else
    {
      v34 = v35;
    }
  }

  while (v34);
  if (v33 != &v31[2 * v32] && *v33 == v30)
  {
    v39 = v33[1];
    goto LABEL_46;
  }

LABEL_45:
  v39 = 0;
LABEL_46:
  v133 = Type;
  v134 = v39;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v133);
  v132 = 4;
  if (v41 != 1 || *ArgAttrsAttr != v132 || (v124 = v4, Value = mlir::ArrayAttr::getValue(&v124), v126 = v42, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
  {
    v127 = "'mps.pooling_max' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v129 = 259;
    mlir::emitError(a2.var0.var0, &v127, &v133);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
    if (v133)
    {
      mlir::InFlightDiagnostic::report(&v133);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v140;
        v55 = __p;
        if (v140 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v140 = v53;
        operator delete(v55);
      }

      v21 = v137;
      if (!v137)
      {
        goto LABEL_172;
      }

      v56 = v138;
      v23 = v137;
      if (v138 == v137)
      {
        goto LABEL_171;
      }

      do
      {
        v58 = *--v56;
        v57 = v58;
        *v56 = 0;
        if (v58)
        {
          operator delete[](v57);
        }
      }

      while (v56 != v21);
      goto LABEL_170;
    }

    return v17;
  }

  if (!v6)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v75 = *v3;
    {
      v76 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (v78)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v76 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (v78)
      {
LABEL_101:
        v79 = v77;
        v80 = v78;
        do
        {
          v81 = v80 >> 1;
          v82 = &v79[2 * (v80 >> 1)];
          v84 = *v82;
          v83 = v82 + 2;
          v80 += ~(v80 >> 1);
          if (v84 < v76)
          {
            v79 = v83;
          }

          else
          {
            v80 = v81;
          }
        }

        while (v80);
LABEL_126:
        if (v79 != &v77[2 * v78] && *v79 == v76)
        {
          v91 = v79[1];
        }

        else
        {
          v91 = 0;
        }

        v127 = v3;
        v128 = v91;
        v92 = mlir::ElementsAttr::getType(&v127);
        if (!v92)
        {
          goto LABEL_143;
        }

        v93 = *v92;
        {
          v94 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v95 = *(v93 + 8);
          v96 = *(v93 + 16);
          if (v96)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v103 = v92;
          mlir::arith::ExtUIOp::fold();
          v92 = v103;
          v94 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v95 = *(v93 + 8);
          v96 = *(v93 + 16);
          if (v96)
          {
LABEL_133:
            v97 = v95;
            v98 = v96;
            do
            {
              v99 = v98 >> 1;
              v100 = &v97[2 * (v98 >> 1)];
              v102 = *v100;
              v101 = v100 + 2;
              v98 += ~(v98 >> 1);
              if (v102 < v94)
              {
                v97 = v101;
              }

              else
              {
                v98 = v99;
              }
            }

            while (v98);
LABEL_141:
            if (v97 != &v95[2 * v96] && *v97 == v94)
            {
              v104 = v97[1];
              goto LABEL_144;
            }

LABEL_143:
            v104 = 0;
LABEL_144:
            v133 = v92;
            v134 = v104;
            v105 = mlir::CallableOpInterface::getArgAttrsAttr(&v133);
            v132 = 4;
            if (v106 == 1 && *v105 == v132)
            {
              v124 = v3;
              Value = mlir::ArrayAttr::getValue(&v124);
              v126 = v107;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_147:
                if (!v130 || (v127 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v130), v128 = v108, v132 = mlir::ElementsAttr::getType(&v127), v133 = llvm::cast<mlir::ShapedType,mlir::Type>(&v132), v134 = v109, v110 = mlir::CallableOpInterface::getArgAttrsAttr(&v133), isSplat = 8, v111 == 1) && *v110 == isSplat && (v123 = v130, Value = mlir::ArrayAttr::getValue(&v123), v126 = v112, v124 = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&v124, 64)))
                {
                  if (v5)
                  {
                    v133 = v5;
                    mlir::AffineMapAttr::getValue(&v133);
                  }

                  return 1;
                }

                else
                {
                  v127 = "'mps.pooling_max' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                  v129 = 259;
                  mlir::emitError(a2.var0.var0, &v127, &v133);
                  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
                  if (v133)
                  {
                    mlir::InFlightDiagnostic::report(&v133);
                  }

                  if (v142 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v134);
                  }
                }

                return v17;
              }
            }

            v127 = "'mps.pooling_max' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v129 = 259;
            mlir::emitError(a2.var0.var0, &v127, &v133);
            v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
            if (v133)
            {
              mlir::InFlightDiagnostic::report(&v133);
            }

            if (v142 == 1)
            {
              if (v141 != &v142)
              {
                free(v141);
              }

              v113 = __p;
              if (__p)
              {
                v114 = v140;
                v115 = __p;
                if (v140 != __p)
                {
                  do
                  {
                    v114 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v114 - 1);
                  }

                  while (v114 != v113);
                  v115 = __p;
                }

                v140 = v113;
                operator delete(v115);
              }

              v21 = v137;
              if (!v137)
              {
                goto LABEL_172;
              }

              v116 = v138;
              v23 = v137;
              if (v138 == v137)
              {
LABEL_171:
                v138 = v21;
                operator delete(v23);
LABEL_172:
                if (v135 != &v136)
                {
                  free(v135);
                }

                return v17;
              }

              do
              {
                v118 = *--v116;
                v117 = v118;
                *v116 = 0;
                if (v118)
                {
                  operator delete[](v117);
                }
              }

              while (v116 != v21);
LABEL_170:
              v23 = v137;
              goto LABEL_171;
            }

            return v17;
          }
        }

        v96 = 0;
        v97 = v95;
        goto LABEL_141;
      }
    }

    v78 = 0;
    v79 = v77;
    goto LABEL_126;
  }

  v43 = *v6;
  {
    v44 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v45 = *(v43 + 8);
    v46 = *(v43 + 16);
    if (v46)
    {
      goto LABEL_52;
    }

LABEL_76:
    v46 = 0;
    v47 = v45;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v44 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  if (!v46)
  {
    goto LABEL_76;
  }

LABEL_52:
  v47 = v45;
  v48 = v46;
  do
  {
    v49 = v48 >> 1;
    v50 = &v47[2 * (v48 >> 1)];
    v52 = *v50;
    v51 = v50 + 2;
    v48 += ~(v48 >> 1);
    if (v52 < v44)
    {
      v47 = v51;
    }

    else
    {
      v48 = v49;
    }
  }

  while (v48);
LABEL_77:
  if (v47 != &v45[2 * v46] && *v47 == v44)
  {
    v60 = v47[1];
    v127 = v6;
    v128 = v60;
    v59 = mlir::ElementsAttr::getType(&v127);
    if (!v59)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v127 = v6;
    v128 = 0;
    v59 = mlir::ElementsAttr::getType(&v127);
    if (!v59)
    {
      goto LABEL_94;
    }
  }

  v61 = *v59;
  {
    v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    if (v64)
    {
      goto LABEL_84;
    }

LABEL_91:
    v64 = 0;
    v65 = v63;
    goto LABEL_92;
  }

  v122 = v59;
  mlir::arith::ExtUIOp::fold();
  v59 = v122;
  v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v63 = *(v61 + 8);
  v64 = *(v61 + 16);
  if (!v64)
  {
    goto LABEL_91;
  }

LABEL_84:
  v65 = v63;
  v66 = v64;
  do
  {
    v67 = v66 >> 1;
    v68 = &v65[2 * (v66 >> 1)];
    v70 = *v68;
    v69 = v68 + 2;
    v66 += ~(v66 >> 1);
    if (v70 < v62)
    {
      v65 = v69;
    }

    else
    {
      v66 = v67;
    }
  }

  while (v66);
LABEL_92:
  if (v65 != &v63[2 * v64] && *v65 == v62)
  {
    v71 = v65[1];
    goto LABEL_95;
  }

LABEL_94:
  v71 = 0;
LABEL_95:
  v133 = v59;
  v134 = v71;
  v72 = mlir::CallableOpInterface::getArgAttrsAttr(&v133);
  v132 = 4;
  if (v73 == 1 && *v72 == v132)
  {
    v124 = v6;
    Value = mlir::ArrayAttr::getValue(&v124);
    v126 = v74;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      goto LABEL_98;
    }
  }

  v127 = "'mps.pooling_max' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v129 = 259;
  mlir::emitError(a2.var0.var0, &v127, &v133);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
  if (v133)
  {
    mlir::InFlightDiagnostic::report(&v133);
  }

  if (v142 == 1)
  {
    if (v141 != &v142)
    {
      free(v141);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v140;
      v87 = __p;
      if (v140 != __p)
      {
        do
        {
          v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v140 = v85;
      operator delete(v87);
    }

    v21 = v137;
    if (!v137)
    {
      goto LABEL_172;
    }

    v88 = v138;
    v23 = v137;
    if (v138 == v137)
    {
      goto LABEL_171;
    }

    do
    {
      v90 = *--v88;
      v89 = v90;
      *v88 = 0;
      if (v90)
      {
        operator delete[](v89);
      }
    }

    while (v88 != v21);
    goto LABEL_170;
  }

  return v17;
}

void mlir::mps::getPool4dParams<mlir::mps::PoolMaxOpAdaptor>(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, BOOL *a10, BOOL *a11)
{
  v18 = a3[11];
  v73 = a3[10];
  v74 = v18;
  v19 = a3[5];
  v63 = a3[4];
  v71 = v19;
  v72 = v63;
  *a9 = 2;
  v20 = a3[9];
  if (v20)
  {
    *a9 = *(v20 + 8);
  }

  *a10 = a3[3] != 0;
  *a11 = a3[6] != 0;
  v21 = *(a6 + 8);
  v64 = v19;
  if (v21 == 8)
  {
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 == 4)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (v23)
    {
      *(a7 + 8) = 4;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v31 = v22;
      v32 = v22;
      if (*(a7 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, 4uLL, 8);
        v31 = *(a7 + 8);
        v32 = *(a7 + 8);
      }

      memset_pattern16((*a7 + 8 * v31), &unk_1E096FAE0, 32 - 8 * v22);
      v33 = v32 - v22 + 4;
      v19 = v64;
      *(a7 + 8) = v33;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_22;
      }
    }

LABEL_6:
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 == 4)
    {
      goto LABEL_7;
    }

LABEL_29:
    if (v27)
    {
      *(a5 + 8) = 4;
      if (a2 > *(a4 + 12))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v37 = v26;
      v38 = v26;
      if (*(a5 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, 4uLL, 8);
        v37 = *(a5 + 8);
        v38 = *(a5 + 8);
      }

      memset_pattern16((*a5 + 8 * v37), &unk_1E096FAE0, 32 - 8 * v26);
      v39 = v38 - v26 + 4;
      v19 = v64;
      *(a5 + 8) = v39;
      if (a2 > *(a4 + 12))
      {
        goto LABEL_8;
      }
    }

LABEL_36:
    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v21 <= 8)
  {
    v28 = *(a6 + 8);
    v29 = *(a6 + 8);
    if (*(a6 + 12) <= 7u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, 8uLL, 8);
      v28 = *(a6 + 8);
      v29 = *(a6 + 8);
    }

    bzero((*a6 + 8 * v28), 64 - 8 * v21);
    v30 = v29 - v21 + 8;
    v19 = v64;
    *(a6 + 8) = v30;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a6 + 8) = 8;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_15;
    }
  }

LABEL_5:
  v24 = *(a8 + 8);
  v25 = v24 > 4;
  if (v24 == 4)
  {
    goto LABEL_6;
  }

LABEL_22:
  if (v25)
  {
    *(a8 + 8) = 4;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v34 = v24;
    v35 = v24;
    if (*(a8 + 12) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, 4uLL, 8);
      v34 = *(a8 + 8);
      v35 = *(a8 + 8);
    }

    memset_pattern16((*a8 + 8 * v34), &unk_1E096FAE0, 32 - 8 * v24);
    v36 = v35 - v24 + 4;
    v19 = v64;
    *(a8 + 8) = v36;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_29;
    }
  }

LABEL_7:
  if (a2 <= *(a4 + 12))
  {
    goto LABEL_36;
  }

LABEL_8:
  llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, a2, 8);
LABEL_37:
  v40 = *(a4 + 8);
  v41 = 8 * a2;
  do
  {
    v42 = *a1;
    if (v40 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v40 + 1, 8);
      v40 = *(a4 + 8);
    }

    *(*a4 + 8 * v40) = v42;
    v40 = *(a4 + 8) + 1;
    *(a4 + 8) = v40;
    ++a1;
    v41 -= 8;
  }

  while (v41);
  v18 = v74;
LABEL_42:
  if (v18 && mlir::DenseElementsAttr::getNumElements(&v74) == 4)
  {
    *(a5 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v74, 0);
    v43 = v74;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v74);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v43, NumElements);
    for (i = v70; i != v68; i = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v46 = *__p;
      }

      else if (v66)
      {
        v46 = (__p << -v66) >> -v66;
      }

      else
      {
        v46 = 0;
      }

      v47 = *(a5 + 8);
      if (v47 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v47 + 1, 8);
        v47 = *(a5 + 8);
      }

      *(*a5 + 8 * v47) = v46;
      ++*(a5 + 8);
      if (v66 >= 0x41)
      {
        if (__p)
        {
          operator delete[](__p);
        }
      }
    }
  }

  if (v73 && mlir::DenseElementsAttr::getNumElements(&v73) == 4)
  {
    *(a7 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v73, 0);
    v48 = v73;
    v49 = mlir::DenseElementsAttr::getNumElements(&v73);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v48, v49);
    for (j = v70; j != v68; j = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v51 = *__p;
      }

      else if (v66)
      {
        v51 = (__p << -v66) >> -v66;
      }

      else
      {
        v51 = 0;
      }

      v52 = *(a7 + 8);
      if (v52 >= *(a7 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, v52 + 1, 8);
        v52 = *(a7 + 8);
      }

      *(*a7 + 8 * v52) = v51;
      ++*(a7 + 8);
      if (v66 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }

  if (v63 && mlir::DenseElementsAttr::getNumElements(&v72) == 4)
  {
    *(a8 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v72, 0);
    v53 = v72;
    v54 = mlir::DenseElementsAttr::getNumElements(&v72);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v53, v54);
    for (k = v70; k != v68; k = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v56 = *__p;
      }

      else if (v66)
      {
        v56 = (__p << -v66) >> -v66;
      }

      else
      {
        v56 = 0;
      }

      v57 = *(a8 + 8);
      if (v57 >= *(a8 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, v57 + 1, 8);
        v57 = *(a8 + 8);
      }

      *(*a8 + 8 * v57) = v56;
      ++*(a8 + 8);
      if (v66 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }

  if (v19 && mlir::DenseElementsAttr::getNumElements(&v71) == 8)
  {
    *(a6 + 8) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v69, v71, 0);
    v58 = v71;
    v59 = mlir::DenseElementsAttr::getNumElements(&v71);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v67, v58, v59);
    for (m = v70; m != v68; m = ++v70)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v69, &__p);
      if (v66 > 0x40)
      {
        v61 = *__p;
      }

      else if (v66)
      {
        v61 = (__p << -v66) >> -v66;
      }

      else
      {
        v61 = 0;
      }

      v62 = *(a6 + 8);
      if (v62 >= *(a6 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v62 + 1, 8);
        v62 = *(a6 + 8);
      }

      *(*a6 + 8 * v62) = v61;
      ++*(a6 + 8);
      if (v66 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolMaxOp>(uint64_t a1, void *a2, uint64_t a3)
{
  v174 = *MEMORY[0x1E69E9840];
  v159 = a1;
  v5 = (a1 + 16 * ((*(a1 + 44) >> 23) & 1));
  v158 = v5[15];
  v157 = v5[9];
  v156 = v5[16];
  v155 = v5[10];
  if (v156)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v156) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v156, 0);
      v3 = v156;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v156);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v3, NumElements);
      while (v154 != v151)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
        if (v148 > 0x40)
        {
          if (*v147 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v148 || (v147 << -v148) >> -v148 <= 0)
        {
LABEL_7:
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          if (v148 > 0x40)
          {
            v7 = *v147;
            if (!v163[0])
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v148)
            {
              v7 = (v147 << -v148) >> -v148;
            }

            else
            {
              v7 = 0;
            }

            if (!v163[0])
            {
              goto LABEL_23;
            }
          }

          LODWORD(v160) = 2;
          v161 = v7;
          v9 = v164;
          if (v165 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v165 > &v160)
            {
              v26 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v9 = v164;
              v10 = (v164 + v26);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v10 = &v160;
              v9 = v164;
            }
          }

          else
          {
            v10 = &v160;
          }

          v11 = &v9[24 * v165];
          v12 = *v10;
          *(v11 + 2) = v10[2];
          *v11 = v12;
          v13 = ++v165;
          if (v163[0])
          {
            LODWORD(v160) = 3;
            v161 = ", all values should be positive.";
            v162 = 32;
            v14 = v164;
            if (v13 >= v166)
            {
              if (v164 <= &v160 && v164 + 24 * v13 > &v160)
              {
                v27 = &v160 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v13 + 1, 24);
                v14 = v164;
                v15 = (v164 + v27);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v13 + 1, 24);
                v15 = &v160;
                v14 = v164;
              }
            }

            else
            {
              v15 = &v160;
            }

            v16 = &v14[24 * v165];
            v17 = *v15;
            *(v16 + 2) = v15[2];
            *v16 = v17;
            ++v165;
          }

LABEL_23:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
          if (v163[0])
          {
            mlir::InFlightDiagnostic::report(v163);
          }

          if (v173 == 1)
          {
            if (v172 != &v173)
            {
              free(v172);
            }

            v18 = __p;
            if (__p)
            {
              v19 = v171;
              v20 = __p;
              if (v171 != __p)
              {
                do
                {
                  v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
                }

                while (v19 != v18);
                v20 = __p;
              }

              v171 = v18;
              operator delete(v20);
            }

            v21 = v168;
            if (v168)
            {
              v22 = v169;
              v23 = v168;
              if (v169 != v168)
              {
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
                v23 = v168;
              }

              v169 = v21;
              operator delete(v23);
            }

            if (v164 != v167)
            {
              free(v164);
            }
          }

          v8 = 0;
          if (v148 < 0x41)
          {
            goto LABEL_46;
          }

LABEL_44:
          if (v147)
          {
            operator delete[](v147);
          }

          goto LABEL_46;
        }

        v8 = 1;
        if (v148 >= 0x41)
        {
          goto LABEL_44;
        }

LABEL_46:
        if (!v8)
        {
          return v3;
        }

        ++v154;
      }
    }
  }

  if (v158)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v158) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v158, 0);
      v28 = v158;
      v29 = mlir::DenseElementsAttr::getNumElements(&v158);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v28, v29);
      while (v154 != v151)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
        if (v148 > 0x40)
        {
          if (*v147 <= 0)
          {
            goto LABEL_104;
          }
        }

        else if (!v148 || (v147 << -v148) >> -v148 <= 0)
        {
LABEL_104:
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          if (v148 > 0x40)
          {
            v55 = *v147;
            if (!v163[0])
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v148)
            {
              v55 = (v147 << -v148) >> -v148;
            }

            else
            {
              v55 = 0;
            }

            if (!v163[0])
            {
              goto LABEL_120;
            }
          }

          LODWORD(v160) = 2;
          v161 = v55;
          v57 = v164;
          if (v165 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v165 > &v160)
            {
              v74 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v57 = v164;
              v58 = (v164 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v58 = &v160;
              v57 = v164;
            }
          }

          else
          {
            v58 = &v160;
          }

          v59 = &v57[24 * v165];
          v60 = *v58;
          *(v59 + 2) = v58[2];
          *v59 = v60;
          v61 = ++v165;
          if (v163[0])
          {
            LODWORD(v160) = 3;
            v161 = ", all values should be positive.";
            v162 = 32;
            v62 = v164;
            if (v61 >= v166)
            {
              if (v164 <= &v160 && v164 + 24 * v61 > &v160)
              {
                v75 = &v160 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v61 + 1, 24);
                v62 = v164;
                v63 = (v164 + v75);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v61 + 1, 24);
                v63 = &v160;
                v62 = v164;
              }
            }

            else
            {
              v63 = &v160;
            }

            v64 = &v62[24 * v165];
            v65 = *v63;
            *(v64 + 2) = v63[2];
            *v64 = v65;
            ++v165;
          }

LABEL_120:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
          if (v163[0])
          {
            mlir::InFlightDiagnostic::report(v163);
          }

          if (v173 == 1)
          {
            if (v172 != &v173)
            {
              free(v172);
            }

            v66 = __p;
            if (__p)
            {
              v67 = v171;
              v68 = __p;
              if (v171 != __p)
              {
                do
                {
                  v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
                }

                while (v67 != v66);
                v68 = __p;
              }

              v171 = v66;
              operator delete(v68);
            }

            v69 = v168;
            if (v168)
            {
              v70 = v169;
              v71 = v168;
              if (v169 != v168)
              {
                do
                {
                  v73 = *--v70;
                  v72 = v73;
                  *v70 = 0;
                  if (v73)
                  {
                    operator delete[](v72);
                  }
                }

                while (v70 != v69);
                v71 = v168;
              }

              v169 = v69;
              operator delete(v71);
            }

            if (v164 != v167)
            {
              free(v164);
            }
          }

          v56 = 0;
          if (v148 < 0x41)
          {
            goto LABEL_143;
          }

LABEL_141:
          if (v147)
          {
            operator delete[](v147);
          }

          goto LABEL_143;
        }

        v56 = 1;
        if (v148 >= 0x41)
        {
          goto LABEL_141;
        }

LABEL_143:
        if (!v56)
        {
          return v3;
        }

        ++v154;
      }
    }
  }

  if (v157)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v157) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v157, 0);
      v30 = v157;
      v31 = mlir::DenseElementsAttr::getNumElements(&v157);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v30, v31);
      while (v154 != v151)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
        if (v148 > 0x40)
        {
          if (*v147 <= 0)
          {
            goto LABEL_157;
          }
        }

        else if (!v148 || (v147 << -v148) >> -v148 <= 0)
        {
LABEL_157:
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          if (v148 > 0x40)
          {
            v76 = *v147;
            if (!v163[0])
            {
              goto LABEL_173;
            }
          }

          else
          {
            if (v148)
            {
              v76 = (v147 << -v148) >> -v148;
            }

            else
            {
              v76 = 0;
            }

            if (!v163[0])
            {
              goto LABEL_173;
            }
          }

          LODWORD(v160) = 2;
          v161 = v76;
          v78 = v164;
          if (v165 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v165 > &v160)
            {
              v95 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v78 = v164;
              v79 = (v164 + v95);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
              v79 = &v160;
              v78 = v164;
            }
          }

          else
          {
            v79 = &v160;
          }

          v80 = &v78[24 * v165];
          v81 = *v79;
          *(v80 + 2) = v79[2];
          *v80 = v81;
          v82 = ++v165;
          if (v163[0])
          {
            LODWORD(v160) = 3;
            v161 = ", all values should be positive.";
            v162 = 32;
            v83 = v164;
            if (v82 >= v166)
            {
              if (v164 <= &v160 && v164 + 24 * v82 > &v160)
              {
                v96 = &v160 - v164;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v82 + 1, 24);
                v83 = v164;
                v84 = (v164 + v96);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v82 + 1, 24);
                v84 = &v160;
                v83 = v164;
              }
            }

            else
            {
              v84 = &v160;
            }

            v85 = &v83[24 * v165];
            v86 = *v84;
            *(v85 + 2) = v84[2];
            *v85 = v86;
            ++v165;
          }

LABEL_173:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
          if (v163[0])
          {
            mlir::InFlightDiagnostic::report(v163);
          }

          if (v173 == 1)
          {
            if (v172 != &v173)
            {
              free(v172);
            }

            v87 = __p;
            if (__p)
            {
              v88 = v171;
              v89 = __p;
              if (v171 != __p)
              {
                do
                {
                  v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
                }

                while (v88 != v87);
                v89 = __p;
              }

              v171 = v87;
              operator delete(v89);
            }

            v90 = v168;
            if (v168)
            {
              v91 = v169;
              v92 = v168;
              if (v169 != v168)
              {
                do
                {
                  v94 = *--v91;
                  v93 = v94;
                  *v91 = 0;
                  if (v94)
                  {
                    operator delete[](v93);
                  }
                }

                while (v91 != v90);
                v92 = v168;
              }

              v169 = v90;
              operator delete(v92);
            }

            if (v164 != v167)
            {
              free(v164);
            }
          }

          v77 = 0;
          if (v148 < 0x41)
          {
            goto LABEL_196;
          }

LABEL_194:
          if (v147)
          {
            operator delete[](v147);
          }

          goto LABEL_196;
        }

        v77 = 1;
        if (v148 >= 0x41)
        {
          goto LABEL_194;
        }

LABEL_196:
        if (!v77)
        {
          return v3;
        }

        ++v154;
      }
    }
  }

  if (v155)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v155) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v155, 0);
      v32 = v155;
      v33 = mlir::DenseElementsAttr::getNumElements(&v155);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v149, v32, v33);
      if (v154 != v151)
      {
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v147);
          if (v148 > 0x40)
          {
            break;
          }

          if (v148)
          {
            v97 = (v147 << -v148) >> -v148;
            if (v97 < 0)
            {
              goto LABEL_213;
            }

LABEL_220:
            if (v148 >= 0x41)
            {
LABEL_250:
              if (v147)
              {
                operator delete[](v147);
              }
            }

LABEL_208:
            if (v97 < 0)
            {
              return v3;
            }
          }

          if (++v154 == v151)
          {
            goto LABEL_66;
          }
        }

        v97 = *v147;
        if ((*v147 & 0x8000000000000000) == 0)
        {
          goto LABEL_220;
        }

LABEL_213:
        v146 = 259;
        mlir::OpState::emitOpError(&v159, v145, v163);
        if (v148 > 0x40)
        {
          v98 = *v147;
          if (!v163[0])
          {
            goto LABEL_229;
          }
        }

        else
        {
          if (v148)
          {
            v98 = (v147 << -v148) >> -v148;
          }

          else
          {
            v98 = 0;
          }

          if (!v163[0])
          {
            goto LABEL_229;
          }
        }

        LODWORD(v160) = 2;
        v161 = v98;
        v99 = v164;
        if (v165 >= v166)
        {
          if (v164 <= &v160 && v164 + 24 * v165 > &v160)
          {
            v116 = &v160 - v164;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
            v99 = v164;
            v100 = (v164 + v116);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
            v100 = &v160;
            v99 = v164;
          }
        }

        else
        {
          v100 = &v160;
        }

        v101 = &v99[24 * v165];
        v102 = *v100;
        *(v101 + 2) = v100[2];
        *v101 = v102;
        v103 = ++v165;
        if (v163[0])
        {
          LODWORD(v160) = 3;
          v161 = ", all values should be non-negative.";
          v162 = 36;
          v104 = v164;
          if (v103 >= v166)
          {
            if (v164 <= &v160 && v164 + 24 * v103 > &v160)
            {
              v117 = &v160 - v164;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v103 + 1, 24);
              v104 = v164;
              v105 = (v164 + v117);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v103 + 1, 24);
              v105 = &v160;
              v104 = v164;
            }
          }

          else
          {
            v105 = &v160;
          }

          v106 = &v104[24 * v165];
          v107 = *v105;
          *(v106 + 2) = v105[2];
          *v106 = v107;
          ++v165;
        }

LABEL_229:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
        if (v163[0])
        {
          mlir::InFlightDiagnostic::report(v163);
        }

        if (v173 == 1)
        {
          if (v172 != &v173)
          {
            free(v172);
          }

          v108 = __p;
          if (__p)
          {
            v109 = v171;
            v110 = __p;
            if (v171 != __p)
            {
              do
              {
                v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
              }

              while (v109 != v108);
              v110 = __p;
            }

            v171 = v108;
            operator delete(v110);
          }

          v111 = v168;
          if (v168)
          {
            v112 = v169;
            v113 = v168;
            if (v169 != v168)
            {
              do
              {
                v115 = *--v112;
                v114 = v115;
                *v112 = 0;
                if (v115)
                {
                  operator delete[](v114);
                }
              }

              while (v112 != v111);
              v113 = v168;
            }

            v169 = v111;
            operator delete(v113);
          }

          if (v164 != v167)
          {
            free(v164);
          }
        }

        if (v148 >= 0x41)
        {
          goto LABEL_250;
        }

        goto LABEL_208;
      }
    }
  }

LABEL_66:
  v34 = *(*(v159 + 16 * ((*(v159 + 44) >> 23) & 1) + 112) + 8);
  if (v34 == 3)
  {
    v146 = 259;
    mlir::OpState::emitOpError(&v159, v145, v163);
    if (v163[0])
    {
      LODWORD(v152) = 3;
      v153 = "not supported by this op.";
      v154 = 25;
      v39 = &v152;
      v40 = v164;
      if (v165 >= v166)
      {
        if (v164 <= &v152 && v164 + 24 * v165 > &v152)
        {
          v141 = &v152 - v164;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v40 = v164;
          v39 = (v164 + v141);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v39 = &v152;
          v40 = v164;
        }
      }

      v41 = &v40[24 * v165];
      v42 = *v39;
      *(v41 + 2) = v39[2];
      *v41 = v42;
      ++v165;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
    if (v163[0])
    {
      mlir::InFlightDiagnostic::report(v163);
    }

    if (v173 == 1)
    {
      if (v172 != &v173)
      {
        free(v172);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v171;
        v45 = __p;
        if (v171 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v171 = v43;
        operator delete(v45);
      }

      v46 = v168;
      if (!v168)
      {
        goto LABEL_283;
      }

      v47 = v169;
      v48 = v168;
      if (v169 == v168)
      {
        goto LABEL_282;
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
      goto LABEL_281;
    }
  }

  else
  {
    if (v34 || v155)
    {
      if (a2)
      {
        a2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((a2[1] & 0xFFFFFFFFFFFFFFF8));
        v152 = a2;
        v153 = v35;
        v36 = a3;
        if (a3)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v152 = 0;
        v153 = 0;
        v36 = a3;
        if (a3)
        {
LABEL_71:
          v37 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v36 + 8) & 0xFFFFFFFFFFFFFFF8));
          v149 = v37;
          v150 = v38;
          if (!a2)
          {
            return 1;
          }

          goto LABEL_94;
        }
      }

      v37 = 0;
      v149 = 0;
      v150 = 0;
      if (!a2)
      {
        return 1;
      }

LABEL_94:
      if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v37 != 0 && *(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v152);
        v53 = v52;
        mlir::CallableOpInterface::getArgAttrsAttr(&v149);
        if (v53 != v54)
        {
          v146 = 259;
          mlir::OpState::emitOpError(&v159, v145, v163);
          mlir::CallableOpInterface::getArgAttrsAttr(&v152);
          v160 = v134;
          mlir::InFlightDiagnostic::operator<<<unsigned long>(v163, &v160);
          v137 = v136;
          mlir::CallableOpInterface::getArgAttrsAttr(&v149);
          v147 = v138;
          mlir::InFlightDiagnostic::operator<<<unsigned long>(v137, &v147);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v139, ".");
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v140);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v163);
          return v3;
        }
      }

      return 1;
    }

    v146 = 259;
    mlir::OpState::emitOpError(&v159, v145, v163);
    if (v163[0])
    {
      LODWORD(v152) = 3;
      v153 = "invalid type. Must be specified when ";
      v154 = 37;
      v118 = &v152;
      v119 = v164;
      if (v165 >= v166)
      {
        if (v164 <= &v152 && v164 + 24 * v165 > &v152)
        {
          v142 = &v152 - v164;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v119 = v164;
          v118 = (v164 + v142);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v165 + 1, 24);
          v118 = &v152;
          v119 = v164;
        }
      }

      v120 = &v119[24 * v165];
      v121 = *v118;
      *(v120 + 2) = v118[2];
      *v120 = v121;
      v122 = ++v165;
      if (v163[0])
      {
        LODWORD(v152) = 3;
        v154 = 31;
        v123 = &v152;
        v124 = v164;
        if (v122 >= v166)
        {
          if (v164 <= &v152 && v164 + 24 * v122 > &v152)
          {
            v143 = &v152 - v164;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v122 + 1, 24);
            v124 = v164;
            v123 = (v164 + v143);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v167, v122 + 1, 24);
            v123 = &v152;
            v124 = v164;
          }
        }

        v125 = &v124[24 * v165];
        v126 = *v123;
        *(v125 + 2) = v123[2];
        *v125 = v126;
        ++v165;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v163);
    if (v163[0])
    {
      mlir::InFlightDiagnostic::report(v163);
    }

    if (v173 == 1)
    {
      if (v172 != &v173)
      {
        free(v172);
      }

      v127 = __p;
      if (__p)
      {
        v128 = v171;
        v129 = __p;
        if (v171 != __p)
        {
          do
          {
            v128 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v128 - 1);
          }

          while (v128 != v127);
          v129 = __p;
        }

        v171 = v127;
        operator delete(v129);
      }

      v46 = v168;
      if (!v168)
      {
        goto LABEL_283;
      }

      v130 = v169;
      v48 = v168;
      if (v169 == v168)
      {
LABEL_282:
        v169 = v46;
        operator delete(v48);
LABEL_283:
        if (v164 != v167)
        {
          free(v164);
        }

        return v3;
      }

      do
      {
        v132 = *--v130;
        v131 = v132;
        *v130 = 0;
        if (v132)
        {
          operator delete[](v131);
        }
      }

      while (v130 != v46);
LABEL_281:
      v48 = v168;
      goto LABEL_282;
    }
  }

  return v3;
}

uint64_t mlir::mps::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  Context = mlir::Attribute::getContext((*a1 + 24));
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "mps", 3);
  v7 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(LoadedDialect);
  v18 = *(v7 + 40);
  v17 = *(v7 + 32);
  v9 = *(v4 + 64);
  v8 = v4 + 64;
  v16[4] = &unk_1F5B01218;
  (*(*a2 + 16))(a2, v9);
  if (!v17 || v17 == 1 && (HIDWORD(v17) < 3 || HIDWORD(v17) == 3 && v18 <= 1))
  {
    v16[0] = mlir::Attribute::getContext((*a1 + 24));
    memset(&v16[1], 0, 24);
    v14[0] = mlir::AffineMapAttr::getValue((v8 + 8));
    AttrData = mlir::OpaqueAttr::getAttrData(v14);
    v15 = 261;
    v14[0] = AttrData;
    v14[1] = v11;
    StringAttr = mlir::Builder::getStringAttr(v16, v14);
  }

  else
  {
    StringAttr = *(v8 + 8);
  }

  return (*(*a2 + 16))(a2, StringAttr);
}

uint64_t mlir::mps::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    v15 = operator new(0x10uLL);
    *v15 = 0;
    v15[1] = 0;
    *(a2 + 256) = v15;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v16;
    {
      mlir::mps::CallOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readAttribute<mlir::mps::CallInlineModeAttr>(a1, v3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::CallInlineModeAttr>(a1, *(a2 + 256)) & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  v4 = (*(*a1 + 24))(a1, "mps", 3);
  if ((v5 & 1) != 0 && ((v6 = v4[2]) == 0 || v6 == 1 && ((v7 = v4[3], v7 < 3) || v7 == 3 && v4[4] <= 1u)))
  {
    v18 = 0;
    v8 = mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, &v18);
    if (v8)
    {
      v9 = v8;
      Context = mlir::Attribute::getContext(&v18);
      AttrData = mlir::OpaqueAttr::getAttrData(&v18);
      v3[1] = mlir::SymbolRefAttr::get(Context, AttrData, v12);
      return v9 & 1;
    }
  }

  else
  {
    v8 = mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 1);
  }

  return v8 & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::CallInlineModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
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
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::CallInlineModeAttr]";
  v38 = 79;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
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

  return v22;
}

BOOL mlir::mps::BiasAddOp::verify(mlir::mps::BiasAddOp *this)
{
  v142 = *MEMORY[0x1E69E9840];
  v2 = *(*(*this + 80) + 8);
  v3 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v116 = v4;
    v117 = v3;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v3 = v117;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v116 + 8);
    v7 = *(v116 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
    goto LABEL_14;
  }

  v14 = v8[1];
LABEL_15:
  v125[0] = v3;
  v125[1] = v14;
  v15 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *v15;
  {
    v118 = v15;
    v26 = v16;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v15 = v118;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v26 + 8);
    v19 = *(v26 + 16);
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_29:
    v27 = 0;
    goto LABEL_30;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_18:
  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 == &v18[2 * v19] || *v20 != v17)
  {
    goto LABEL_29;
  }

  v27 = v20[1];
LABEL_30:
  v124[0] = v15;
  v124[1] = v27;
  if (v2 == 1)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  if (mlir::CallOpInterface::getArgOperands(v125))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v125);
    if (v29 < v28)
    {
      v123 = 257;
      mlir::OpState::emitOpError(this, &v120, &v130);
      if (v130)
      {
        LODWORD(v126) = 3;
        v127 = "requires value operand to have rank at least ";
        v128 = 45;
        v30 = &v126;
        v31 = v132;
        if (v133 >= v134)
        {
          if (v132 <= &v126 && v132 + 24 * v133 > &v126)
          {
            v106 = &v126 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
            v31 = v132;
            v30 = (v132 + v106);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
            v30 = &v126;
            v31 = v132;
          }
        }

        v32 = &v31[24 * v133];
        v33 = *v30;
        *(v32 + 2) = v30[2];
        *v32 = v33;
        v34 = ++v133;
        if (v130)
        {
          LODWORD(v126) = 2;
          v127 = v28;
          v35 = &v126;
          v36 = v132;
          if (v34 >= v134)
          {
            if (v132 <= &v126 && v132 + 24 * v34 > &v126)
            {
              v110 = &v126 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v34 + 1, 24);
              v36 = v132;
              v35 = (v132 + v110);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v34 + 1, 24);
              v35 = &v126;
              v36 = v132;
            }
          }

          v37 = &v36[24 * v133];
          v38 = *v35;
          *(v37 + 2) = v35[2];
          *v37 = v38;
          v39 = ++v133;
          if (v130)
          {
            LODWORD(v126) = 3;
            v128 = 7;
            v40 = &v126;
            v41 = v132;
            if (v39 >= v134)
            {
              if (v132 <= &v126 && v132 + 24 * v39 > &v126)
              {
                v115 = &v126 - v132;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v39 + 1, 24);
                v41 = v132;
                v40 = (v132 + v115);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v39 + 1, 24);
                v40 = &v126;
                v41 = v132;
              }
            }

            v42 = &v41[24 * v133];
            v43 = *v40;
            *(v42 + 2) = v40[2];
            *v42 = v43;
            ++v133;
          }
        }
      }

      if (v2 > 0xA)
      {
        v44 = 0;
        v45 = "";
        if (!v130)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v44 = qword_1E0998C80[v2];
        v45 = (&off_1E86D3620)[v2];
        if (!v130)
        {
          goto LABEL_83;
        }
      }

      v129 = 261;
      v126 = v45;
      v127 = v44;
      mlir::Diagnostic::operator<<(&v131, &v126);
      if (v130)
      {
        LODWORD(v126) = 3;
        v128 = 21;
        v77 = &v126;
        v78 = v132;
        if (v133 >= v134)
        {
          if (v132 <= &v126 && v132 + 24 * v133 > &v126)
          {
            v111 = &v126 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
            v78 = v132;
            v77 = (v132 + v111);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
            v77 = &v126;
            v78 = v132;
          }
        }

        v79 = &v78[24 * v133];
        v80 = *v77;
        *(v79 + 2) = v77[2];
        *v79 = v80;
        ++v133;
      }

LABEL_83:
      mlir::CallableOpInterface::getArgAttrsAttr(v125);
      if (v130)
      {
        LODWORD(v126) = 2;
        v127 = v81;
        v82 = &v126;
        v83 = v132;
        if (v133 >= v134)
        {
          if (v132 <= &v126 && v132 + 24 * v133 > &v126)
          {
            v107 = &v126 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
            v83 = v132;
            v82 = (v132 + v107);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
            v82 = &v126;
            v83 = v132;
          }
        }

        v84 = &v83[24 * v133];
        v85 = *v82;
        *(v84 + 2) = v82[2];
        *v84 = v85;
        v86 = ++v133;
        if (v130)
        {
          LODWORD(v126) = 3;
          v127 = ".";
          v128 = 1;
          v87 = &v126;
          v88 = v132;
          if (v86 >= v134)
          {
            if (v132 <= &v126 && v132 + 24 * v86 > &v126)
            {
              v112 = &v126 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v86 + 1, 24);
              v88 = v132;
              v87 = (v132 + v112);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v86 + 1, 24);
              v87 = &v126;
              v88 = v132;
            }
          }

          v89 = &v88[24 * v133];
          v90 = *v87;
          *(v89 + 2) = v87[2];
          *v89 = v90;
          ++v133;
        }
      }

      v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
      if (v130)
      {
        mlir::InFlightDiagnostic::report(&v130);
      }

      if (v141 == 1)
      {
        if (v140 != &v141)
        {
          free(v140);
        }

        v91 = __p;
        if (__p)
        {
          v92 = v139;
          v93 = __p;
          if (v139 != __p)
          {
            do
            {
              v92 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v92 - 1);
            }

            while (v92 != v91);
            v93 = __p;
          }

          v139 = v91;
          operator delete(v93);
        }

        v72 = v136;
        if (!v136)
        {
          goto LABEL_106;
        }

        v94 = v137;
        v74 = v136;
        if (v137 == v136)
        {
LABEL_105:
          v137 = v72;
          operator delete(v74);
LABEL_106:
          if (v132 != v135)
          {
            free(v132);
          }

          return v49;
        }

        do
        {
          v96 = *--v94;
          v95 = v96;
          *v94 = 0;
          if (v96)
          {
            operator delete[](v95);
          }
        }

        while (v94 != v72);
LABEL_104:
        v74 = v136;
        goto LABEL_105;
      }

      return v49;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v124) && (mlir::CallableOpInterface::getArgAttrsAttr(v124), v46 != 1))
  {
    v129 = 257;
    mlir::OpState::emitOpError(this, &v126, &v130);
    if (v130)
    {
      LODWORD(v120) = 3;
      v121 = "requires bias operand to have rank exactly one.";
      v122 = 47;
      v50 = &v120;
      v51 = v132;
      if (v133 >= v134)
      {
        if (v132 <= &v120 && v132 + 24 * v133 > &v120)
        {
          v108 = &v120 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
          v51 = v132;
          v50 = v132 + v108;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
          v50 = &v120;
          v51 = v132;
        }
      }

      v52 = &v51[24 * v133];
      v53 = *v50;
      *(v52 + 2) = *(v50 + 2);
      *v52 = v53;
      v54 = ++v133;
      if (v130)
      {
        LODWORD(v120) = 3;
        v121 = " Found ";
        v122 = 7;
        v55 = &v120;
        v56 = v132;
        if (v54 >= v134)
        {
          if (v132 <= &v120 && v132 + 24 * v54 > &v120)
          {
            v113 = &v120 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v54 + 1, 24);
            v56 = v132;
            v55 = v132 + v113;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v54 + 1, 24);
            v55 = &v120;
            v56 = v132;
          }
        }

        v57 = &v56[24 * v133];
        v58 = *v55;
        *(v57 + 2) = *(v55 + 2);
        *v57 = v58;
        ++v133;
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v124);
    if (v130)
    {
      LODWORD(v120) = 2;
      v121 = v59;
      v60 = &v120;
      v61 = v132;
      if (v133 >= v134)
      {
        if (v132 <= &v120 && v132 + 24 * v133 > &v120)
        {
          v109 = &v120 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
          v61 = v132;
          v60 = v132 + v109;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
          v60 = &v120;
          v61 = v132;
        }
      }

      v62 = &v61[24 * v133];
      v63 = *v60;
      *(v62 + 2) = *(v60 + 2);
      *v62 = v63;
      v64 = ++v133;
      if (v130)
      {
        LODWORD(v120) = 3;
        v121 = ".";
        v122 = 1;
        v65 = &v120;
        v66 = v132;
        if (v64 >= v134)
        {
          if (v132 <= &v120 && v132 + 24 * v64 > &v120)
          {
            v114 = &v120 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v64 + 1, 24);
            v66 = v132;
            v65 = v132 + v114;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v64 + 1, 24);
            v65 = &v120;
            v66 = v132;
          }
        }

        v67 = &v66[24 * v133];
        v68 = *v65;
        *(v67 + 2) = *(v65 + 2);
        *v67 = v68;
        ++v133;
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
    if (v130)
    {
      mlir::InFlightDiagnostic::report(&v130);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v69 = __p;
      if (__p)
      {
        v70 = v139;
        v71 = __p;
        if (v139 != __p)
        {
          do
          {
            v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
          }

          while (v70 != v69);
          v71 = __p;
        }

        v139 = v69;
        operator delete(v71);
      }

      v72 = v136;
      if (!v136)
      {
        goto LABEL_106;
      }

      v73 = v137;
      v74 = v136;
      if (v137 == v136)
      {
        goto LABEL_105;
      }

      do
      {
        v76 = *--v73;
        v75 = v76;
        *v73 = 0;
        if (v76)
        {
          operator delete[](v75);
        }
      }

      while (v73 != v72);
      goto LABEL_104;
    }
  }

  else if (mlir::CallOpInterface::getArgOperands(v124) && mlir::CallOpInterface::getArgOperands(v125))
  {
    if (v2 == 1)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v125);
      v48 = (v47 - 1);
    }

    else
    {
      v48 = 1;
    }

    v97 = *(mlir::CallableOpInterface::getArgAttrsAttr(v125) + 8 * v48);
    v120 = v97;
    v98 = *mlir::CallableOpInterface::getArgAttrsAttr(v124);
    v119 = v98;
    v49 = 1;
    if (v97 != 0x8000000000000000 && v98 != 0x8000000000000000 && v97 != v98)
    {
      v129 = 257;
      mlir::OpState::emitOpError(this, &v126, &v130);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v130, "requires feature dimension and bias dimension to match. ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v99, "Found ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v100, &v120);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v101, " and ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v102, &v119);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v103, ", respectively.");
      v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v130);
    }
  }

  else
  {
    return 1;
  }

  return v49;
}

uint64_t mlir::mps::BiasAddGradOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69[2] = *MEMORY[0x1E69E9840];
  v69[0] = a4;
  v69[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v61 = a6;
  v62[0] = 0;
  v63 = 0;
  v64 = v16;
  v65 = a9;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v61);
    if (v63 == 1)
    {
      v63 = 0;
    }

    mlir::OperationName::OperationName(v62, "mps.bias_add_grad", 17, Context);
    v63 = 1;
  }

  v67 = a4;
  v68 = a5;
  if (!a5 || (v18.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::BiasAddGradOpAdaptor::verify(&v61, v18)))
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
LABEL_23:
      v36 = v32;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v33 + 1, 8);
      v32 = v36;
      LODWORD(v33) = *(a11 + 8);
    }

LABEL_19:
    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    return 1;
  }

  v19 = mlir::ValueRange::dereference_iterator(v69, 0);
  v20 = *(v64 + 8);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v54[0] = v21;
  v54[1] = v22;
  if (!v21)
  {
LABEL_22:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
    v32 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if ((mlir::CallOpInterface::getArgOperands(v54) & 1) == 0)
  {
    v21 = v54[0];
    goto LABEL_22;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v24 = v23;
  if (v20 == 1)
  {
    v25 = v23 - 1;
  }

  else
  {
    v25 = 1;
  }

  v58 = v60;
  v59 = 0x600000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v54);
  v28 = v27;
  v55 = v57;
  v56 = 0x400000000;
  if (v24)
  {
    if (v24 < 5)
    {
      v29 = 0;
      v30 = v57;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v24, 8);
      v29 = v56;
      v30 = v55;
    }

    if (v24 != v29)
    {
      v37 = v30;
      bzero(&v30[v29], 8 * (v24 - v29));
      v30 = v37;
    }

    LODWORD(v56) = v24;
    if (v24 > 3)
    {
      v38 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = xmmword_1E09700F0;
      v40 = (v30 + 2);
      v41 = vdupq_n_s64(2uLL);
      v42 = vdupq_n_s64(4uLL);
      v43 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v40[-1] = v39;
        *v40 = vaddq_s64(v39, v41);
        v39 = vaddq_s64(v39, v42);
        v40 += 2;
        v43 -= 4;
      }

      while (v43);
      goto LABEL_34;
    }

    v38 = 0;
    do
    {
      v30[v38] = v38;
      ++v38;
LABEL_34:
      ;
    }

    while (v24 != v38);
  }

  else
  {
    v30 = v57;
  }

  v44 = &v30[v25];
  v45 = &v30[v24];
  if (v45 != v44 + 1)
  {
    memmove(v44, v44 + 1, v45 - (v44 + 1));
    LODWORD(v24) = v56;
    v30 = v55;
  }

  LODWORD(v56) = v24 - 1;
  if (v55 != v57)
  {
    free(v55);
  }

  if (v46)
  {
    v47 = v58;
    v48 = v59;
    isSplat = mlir::ElementsAttr::isSplat(v54);
    v50 = mlir::RankedTensorType::get(v47, v48, isSplat, 0);
    v51 = *(a11 + 8);
    if (v51 >= *(a11 + 12))
    {
      v53 = v50;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v51 + 1, 8);
      v50 = v53;
      LODWORD(v51) = *(a11 + 8);
    }

    *(*a11 + 8 * v51) = v50;
    ++*(a11 + 8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v58 != v60)
  {
    v52 = result;
    free(v58);
    return v52;
  }

  return result;
}

BOOL mlir::mps::BiasAddGradOpAdaptor::verify(mlir::mps::BiasAddGradOpAdaptor *this, Location a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2 || *(v2 + 8) < 2u)
  {
    return 1;
  }

  v13 = "'mps.bias_add_grad' op attribute 'data_format' failed to satisfy constraint: valid TensorDataLayout is NHWC or NCHW";
  v14 = 259;
  mlir::emitError(a2.var0.var0, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }

    v8 = v18;
    if (v18)
    {
      v9 = v19;
      v10 = v18;
      if (v19 != v18)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            operator delete[](v11);
          }
        }

        while (v9 != v8);
        v10 = v18;
      }

      v19 = v8;
      operator delete(v10);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::mps::anonymous namespace::inferReductionOpReturnShape(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6, int a7, uint64_t a8)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v33 = 0x600000000;
  if (result)
  {
    v26 = v28;
    v27 = 0x400000000;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (v33)
    {
      v13 = v32;
      v14 = 8 * v33;
      do
      {
        v15 = *v13++;
        v25 = v15;
        llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(&v26, &v25, v24);
        v14 -= 8;
      }

      while (v14);
    }

    if (a4)
    {
      for (i = 0; i != a4; ++i)
      {
        if (v31)
        {
          v19 = v30;
          if (!v30)
          {
            goto LABEL_7;
          }

          v20 = &v30;
          do
          {
            if (v19[4] >= i)
            {
              v20 = v19;
            }

            v19 = v19[v19[4] < i];
          }

          while (v19);
          if (v20 == &v30 || i < v20[4])
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_7;
          }

          v21 = v26;
          v22 = 8 * v27;
          while (*v21 != i)
          {
            ++v21;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_7;
            }
          }

          if (!v22)
          {
LABEL_7:
            v17 = *(a3 + 8 * i);
            v18 = *(a8 + 8);
            if (v18 >= *(a8 + 12))
            {
              goto LABEL_27;
            }

            goto LABEL_8;
          }
        }

        if (!a7)
        {
          continue;
        }

        v18 = *(a8 + 8);
        v17 = 1;
        if (v18 >= *(a8 + 12))
        {
LABEL_27:
          llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, v18 + 1, 8);
          v18 = *(a8 + 8);
        }

LABEL_8:
        *(*a8 + 8 * v18) = v17;
        ++*(a8 + 8);
      }
    }

    std::__tree<unsigned long long>::destroy(&v29, v30);
    if (v26 != v28)
    {
      free(v26);
    }

    result = 1;
  }

  if (v32 != v34)
  {
    v23 = result;
    free(v32);
    return v23;
  }

  return result;
}

BOOL mlir::mps::BiasAddGradOp::verify(mlir::mps::BiasAddGradOp *this)
{
  v78 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = *(*(*this + 80) + 8);
  v3 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
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
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
LABEL_14:
    v60 = v3;
    v61 = 0;
    if (mlir::CallOpInterface::getArgOperands(&v60))
    {
      goto LABEL_15;
    }

    return 1;
  }

  v28 = v8[1];
  v60 = v3;
  v61 = v28;
  if (!mlir::CallOpInterface::getArgOperands(&v60))
  {
    return 1;
  }

LABEL_15:
  if (v2 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  if (v15 >= v14)
  {
    return 1;
  }

  v16 = v15;
  v58 = "requires out_backprop operand to have rank at least ";
  v59 = 259;
  mlir::Operation::emitOpError(v1, &v58, &v66);
  if (v66)
  {
    LODWORD(v62) = 2;
    v63 = v14;
    v17 = &v62;
    v18 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v62 && v68 + 24 * v69 > &v62)
      {
        v53 = &v62 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v18 = v68;
        v17 = (v68 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v17 = &v62;
        v18 = v68;
      }
    }

    v19 = &v18[24 * v69];
    v20 = *v17;
    *(v19 + 2) = v17[2];
    *v19 = v20;
    v21 = ++v69;
    if (v66)
    {
      LODWORD(v62) = 3;
      v64 = 7;
      v22 = &v62;
      v23 = v68;
      if (v21 >= v70)
      {
        if (v68 <= &v62 && v68 + 24 * v21 > &v62)
        {
          v54 = &v62 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
          v23 = v68;
          v22 = (v68 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
          v22 = &v62;
          v23 = v68;
        }
      }

      v24 = &v23[24 * v69];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v69;
    }
  }

  if (v2 <= 0xA)
  {
    v26 = qword_1E0998C80[v2];
    v27 = (&off_1E86D3620)[v2];
    if (!v66)
    {
      goto LABEL_38;
    }

LABEL_31:
    v65 = 261;
    v62 = v27;
    v63 = v26;
    mlir::Diagnostic::operator<<(&v67, &v62);
    if (v66)
    {
      LODWORD(v62) = 3;
      v64 = 21;
      v31 = &v62;
      v32 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v62 && v68 + 24 * v69 > &v62)
        {
          v55 = &v62 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v32 = v68;
          v31 = (v68 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v31 = &v62;
          v32 = v68;
        }
      }

      v33 = &v32[24 * v69];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v69;
      if (v66)
      {
        LODWORD(v62) = 2;
        v63 = v16;
        v36 = &v62;
        v37 = v68;
        if (v35 >= v70)
        {
          if (v68 <= &v62 && v68 + 24 * v35 > &v62)
          {
            v56 = &v62 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v35 + 1, 24);
            v37 = v68;
            v36 = (v68 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v35 + 1, 24);
            v36 = &v62;
            v37 = v68;
          }
        }

        v38 = &v37[24 * v69];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        v40 = ++v69;
        if (v66)
        {
          LODWORD(v62) = 3;
          v63 = ".";
          v64 = 1;
          v41 = &v62;
          v42 = v68;
          if (v40 >= v70)
          {
            if (v68 <= &v62 && v68 + 24 * v40 > &v62)
            {
              v57 = &v62 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v40 + 1, 24);
              v42 = v68;
              v41 = (v68 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v40 + 1, 24);
              v41 = &v62;
              v42 = v68;
            }
          }

          v43 = &v42[24 * v69];
          v44 = *v41;
          *(v43 + 2) = v41[2];
          *v43 = v44;
          ++v69;
        }
      }
    }

    goto LABEL_38;
  }

  v26 = 0;
  v27 = "";
  if (v66)
  {
    goto LABEL_31;
  }

LABEL_38:
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v75;
      v47 = __p;
      if (v75 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v75 = v45;
      operator delete(v47);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
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
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v29;
}

void mlir::mps::SoftplusParametricOp::downgradeToVersion(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v52[0] = &unk_1F5B01218;
  v52[1] = 0x300000001;
  v53 = 0;
  v7 = *(a3 + 8);
  if (!v7 || v7 == 1 && *(a3 + 12) <= 2u)
  {
    v10 = *(*(v6 + 72) + 120);
    v72 = v74;
    v73 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(v10, &v72) & 1) != 0 && v73 == 1 && *v72 == 1)
    {
      v11 = *(v6 + 72);
      v12 = v11[3];
      v13 = v11[7];
      v14 = v11[11];
      v60 = &v62;
      v62 = v12;
      v63 = v13;
      v64 = v14;
      v61 = 0x400000003;
      v15 = (*a1 + 24);
      v16 = *v15;
      Context = mlir::Attribute::getContext(v15);
      v44 = *(*(v6 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v44);
      v48 = 261;
      v44 = AttrData;
      v45 = v19;
      v20 = mlir::StringAttr::get(Context, &v44);
      mlir::ValueRange::ValueRange(v55, v60, v61);
      v21 = *(v6 + 36);
      v22 = v6 - 16;
      if (!v21)
      {
        v22 = 0;
      }

      v75 = v22;
      v76 = v21;
      mlir::OperandRange::getTypes(&v75, &AttrDictionary);
      NextResultAtOffset = AttrDictionary;
      v24 = v57;
      v25 = v58;
      if (v57)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v57);
      }

      mlir::ValueRange::ValueRange(&v75, NextResultAtOffset, v25 - v24);
      mlir::TypeRange::TypeRange(v54, v75, v76);
      AttrDictionary = mlir::Operation::getAttrDictionary(v6);
      Value = mlir::ArrayAttr::getValue(&AttrDictionary);
      v28 = v27;
      mlir::SuccessorRange::SuccessorRange(&AttrDictionary, v6);
      mlir::BlockRange::BlockRange(&AttrDictionary, AttrDictionary, v57);
      v30 = mlir::OpBuilder::create(a2, v16, v20, v55[0], v55[1], v54[0], v54[1], v29, Value, v28, AttrDictionary, v57, 0, 0);
      v31 = *(v30 + 36);
      v32 = v30 - 16;
      if (!v31)
      {
        v32 = 0;
      }

      *a4 = v32;
      *(a4 + 8) = v31;
      *(a4 + 16) = 1;
      v33 = v60;
      if (v60 == &v62)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v44 = "failed to downgrade: requested target version is {0}, axis != 1 only supported from version {1}";
      v45 = 95;
      v46 = v51;
      v47 = 2;
      LOBYTE(v48) = 1;
      v49[0] = &unk_1F5B171B8;
      v49[1] = a3;
      v50[0] = &unk_1F5B171E8;
      v50[1] = v52;
      v51[0] = v49;
      v51[1] = v50;
      v59 = 263;
      AttrDictionary = &v44;
      mlir::OpState::emitOpError(a1, &AttrDictionary, &v60);
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v71 != 1)
      {
        goto LABEL_38;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v69;
        v38 = __p;
        if (v69 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v69 = v36;
        operator delete(v38);
      }

      v39 = v66;
      if (v66)
      {
        v40 = v67;
        v41 = v66;
        if (v67 != v66)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              operator delete[](v42);
            }
          }

          while (v40 != v39);
          v41 = v66;
        }

        v67 = v39;
        operator delete(v41);
      }

      v33 = v63;
      if (v63 == &v65)
      {
        goto LABEL_38;
      }
    }

    free(v33);
LABEL_38:
    if (v72 != v74)
    {
      free(v72);
    }

    return;
  }

  v34 = *(v6 + 36);
  v35 = v6 - 16;
  if (!v34)
  {
    v35 = 0;
  }

  *a4 = v35;
  *(a4 + 8) = v34;
  *(a4 + 16) = 1;
}

void mlir::mps::SoftplusParametricOp::upgradeFromVersion(uint64_t *a1@<X0>, mlir::OpBuilder *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v25[1] = &unk_1F5B01218;
  v25[2] = 0x300000001;
  v26 = 0;
  v8 = *(a3 + 8);
  if (v8 && (v8 != 1 || *(a3 + 12) > 2u))
  {
    v22 = *(v7 + 36);
    v23 = v7 - 16;
    if (!v22)
    {
      v23 = 0;
    }

    *a4 = v23;
    *(a4 + 8) = v22;
    *(a4 + 16) = 1;
  }

  else
  {
    v27[0] = 1;
    Context = mlir::Attribute::getContext((v7 + 24));
    v10 = mlir::IntegerType::get(Context, 32, 1u);
    v25[0] = mlir::RankedTensorType::get(v27, 1, v10, 0);
    v11 = *(*a1 + 24);
    v12 = mlir::TensorType::operator mlir::ShapedType(v25);
    v24 = 1;
    v27[0] = mlir::DenseElementsAttr::getFromRawBuffer(v12, v13, &v24, 4, 4, 1, 1);
    v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a2, v11, v27);
    v15 = *(v7 + 72);
    v16 = v15[3];
    v17 = v15[7];
    v18 = v15[11];
    v27[0] = &v28;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31[0] = v14 - 16;
    v27[1] = 0x400000004;
    v19 = mlir::OpBuilder::create<mlir::mps::SoftplusParametricOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a2, *(*a1 + 24), &v28, &v29, &v30, v31);
    v20 = *(v19 + 36);
    v21 = v19 - 16;
    if (!v20)
    {
      v21 = 0;
    }

    *a4 = v21;
    *(a4 + 8) = v20;
    *(a4 + 16) = 1;
    if (v27[0] != &v28)
    {
      free(v27[0]);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::SoftplusParametricOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SoftplusParametricOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::mps::LPNormOp::build(v15, v22, *a3, *a4, *a5, *a6);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id)
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

uint64_t mlir::mps::inferStencilShape(int a1, int a2, char *__src, unint64_t a4, void *a5, int a6, unint64_t **a7, void **a8, void **a9, char a10, uint64_t a11)
{
  v16 = *(a11 + 8);
  if (a4 != v16)
  {
    if (a4 >= v16)
    {
      if (a4 > *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, a4, 8);
        v16 = *(a11 + 8);
      }

      if (a4 != v16)
      {
        bzero((*a11 + 8 * v16), 8 * (a4 - v16));
      }
    }

    *(a11 + 8) = a4;
  }

  v17 = a4 - 4;
  if (a4)
  {
    memmove(*a11, __src, 8 * a4);
  }

  v18 = *a8;
  v19 = &__src[8 * v17];
  v20 = *a7;
  v21 = *a11;
  v22 = *v19;
  if ((a10 & 1) == 0)
  {
    v29 = *a9;
    if (v22 == 0x8000000000000000)
    {
      v30 = a4 - 3;
      v31 = *&__src[8 * a4 - 24];
      if (v31 == 0x8000000000000000)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21[v17] = (*v29 + v29[1] + v22 + ~(*v18 * (*a5 - 1)) + *v20) / *v20;
      v30 = a4 - 3;
      v31 = *&__src[8 * a4 - 24];
      if (v31 == 0x8000000000000000)
      {
LABEL_18:
        v32 = a4 - 2;
        v33 = *&__src[8 * a4 - 16];
        if (v33 == 0x8000000000000000)
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }
    }

    v21[v30] = (v29[2] + v29[3] + v31 + ~(v18[1] * (a5[1] - 1)) + v20[1]) / v20[1];
    v32 = a4 - 2;
    v33 = *&__src[8 * a4 - 16];
    if (v33 == 0x8000000000000000)
    {
LABEL_19:
      v27 = a4 - 1;
      v34 = *&__src[8 * a4 - 8];
      if (v34 == 0x8000000000000000)
      {
        return 1;
      }

      goto LABEL_36;
    }

LABEL_35:
    v21[v32] = (v29[4] + v29[5] + v33 + ~(v18[2] * (a5[2] - 1)) + v20[2]) / v20[2];
    v27 = a4 - 1;
    v34 = *&__src[8 * a4 - 8];
    if (v34 == 0x8000000000000000)
    {
      return 1;
    }

LABEL_36:
    v43 = v20[3];
    v45 = v29[6] + v29[7] + v34 + ~(v18[3] * (a5[3] - 1)) + v43;
LABEL_37:
    v21[v27] = v45 / v43;
    return 1;
  }

  if (v22 == 0x8000000000000000)
  {
    v23 = a4 - 3;
    v24 = *&__src[8 * a4 - 24];
    if (v24 == 0x8000000000000000)
    {
      goto LABEL_13;
    }

LABEL_24:
    v37 = v20[1];
    v38 = *(v19 + 1) % v37;
    if (!v38)
    {
      v38 = v20[1];
    }

    v36 = v18[1] * (a5[1] - 1);
    v21[v23] = (((v36 - v38 + 1) & ~((v36 - v38 + 1) >> 63)) + ~v36 + v24 + v37) / v37;
    v25 = a4 - 2;
    v26 = *&__src[8 * a4 - 16];
    if (v26 == 0x8000000000000000)
    {
LABEL_14:
      v27 = a4 - 1;
      v28 = *&__src[8 * a4 - 8];
      if (v28 == 0x8000000000000000)
      {
        return 1;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v35 = v22 % *v20;
  if (!v35)
  {
    v35 = *v20;
  }

  v21[v17] = (((*v18 * (*a5 - 1) - v35 + 1) & ~((*v18 * (*a5 - 1) - v35 + 1) >> 63)) + ~(*v18 * (*a5 - 1)) + v22 + *v20) / *v20;
  v23 = a4 - 3;
  v24 = *&__src[8 * a4 - 24];
  if (v24 != 0x8000000000000000)
  {
    goto LABEL_24;
  }

LABEL_13:
  v25 = a4 - 2;
  v26 = *&__src[8 * a4 - 16];
  if (v26 == 0x8000000000000000)
  {
    goto LABEL_14;
  }

LABEL_27:
  v40 = v20[2];
  v41 = *(v19 + 2) % v40;
  if (!v41)
  {
    v41 = v20[2];
  }

  v39 = v18[2] * (a5[2] - 1);
  v21[v25] = (((v39 - v41 + 1) & ~((v39 - v41 + 1) >> 63)) + ~v39 + v26 + v40) / v40;
  v27 = a4 - 1;
  v28 = *&__src[8 * a4 - 8];
  if (v28 != 0x8000000000000000)
  {
LABEL_30:
    v42 = v18[3] * (a5[3] - 1);
    v43 = v20[3];
    v44 = *(v19 + 3) % v43;
    if (!v44)
    {
      v44 = v43;
    }

    v45 = ((v42 - v44 + 1) & ~((v42 - v44 + 1) >> 63)) + ~v42 + v28 + v43;
    goto LABEL_37;
  }

  return 1;
}

uint64_t mlir::mps::StencilOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v98 = *MEMORY[0x1E69E9840];
  v96 = a4;
  v97 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = a7[3];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v85 = a6;
  v86[0] = 0;
  v87 = 0;
  v88 = v16;
  v89 = v17;
  v90 = v18;
  v91 = v19;
  v20 = a5;
  v92 = a9;
  v93 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v85);
    if (v87 == 1)
    {
      v87 = 0;
    }

    mlir::OperationName::OperationName(v86, "mps.stencil", 11, Context);
    v87 = 1;
    v20 = v97;
  }

  v94 = a4;
  v95 = a5;
  if (v20 < 2 || (v22.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::StencilOpAdaptor::verify(&v85, v22)))
  {
    v33 = mlir::Float32Type::get(this, a2);
    v34 = mlir::UnrankedTensorType::get(v33);
    v35 = *(a11 + 8);
    if (v35 >= *(a11 + 12))
    {
      v61 = v34;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v35 + 1, 8);
      v34 = v61;
      LODWORD(v35) = *(a11 + 8);
    }

    *(*a11 + 8 * v35) = v34;
    goto LABEL_21;
  }

  v23 = *(mlir::ValueRange::dereference_iterator(&v96, 0) + 8);
  v24 = *(mlir::ValueRange::dereference_iterator(&v96, 1) + 8);
  v72[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v23 & 0xFFFFFFFFFFFFFFF8));
  v72[1] = v25;
  if (!v72[0])
  {
    v37.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v37, "cannot stencil a non-shaped inputType");
  }

  v26 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v24 & 0xFFFFFFFFFFFFFFF8));
  v71[0] = v26;
  v71[1] = v27;
  if (!v26)
  {
    v39.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v39, "cannot stencil with a non-shaped weightsType");
  }

  if (*(*v72[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v38 = *(a11 + 8);
    if (v38 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v38 + 1, 8);
      LODWORD(v38) = *(a11 + 8);
    }

    *(*a11 + 8 * v38) = v72[0];
LABEL_21:
    ++*(a11 + 8);
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v72);
  v29 = v28;
  mlir::CallableOpInterface::getArgAttrsAttr(v71);
  if (v29 < 4 || v30 != 4)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v72[0]);
    v41 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v41);
    return 1;
  }

  v31 = *(&v88 + 1);
  v69 = v88;
  v70 = *(&v91 + 1);
  v68 = *(&v88 + 1);
  if (*(&v90 + 1))
  {
    v32 = *(*(&v90 + 1) + 8);
  }

  else
  {
    v32 = 2;
  }

  v82 = v84;
  v83 = 0x400000000;
  if (*(&v91 + 1) && mlir::DenseElementsAttr::getNumElements(&v70) == 4)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v76, v70, 0);
    mlir::DenseIntElementsAttr::end(&v70, &v79);
    for (i = v78[0]; i != v81[0]; i = ++v78[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v76, &__p);
      if (v74 > 0x40)
      {
        v43 = *__p;
      }

      else if (v74)
      {
        v43 = (__p << -v74) >> -v74;
      }

      else
      {
        v43 = 0;
      }

      v44 = v83;
      if (v83 >= HIDWORD(v83))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v83 + 1, 8);
        v44 = v83;
      }

      *(v82 + v44) = v43;
      LODWORD(v83) = v83 + 1;
      if (v74 >= 0x41)
      {
        if (__p)
        {
          operator delete[](__p);
        }
      }
    }
  }

  else
  {
    llvm::SmallVectorImpl<unsigned long long>::resize(&v82, 4uLL, 1uLL);
  }

  v79 = v81;
  v80 = 0x400000000;
  if (v69 && mlir::DenseElementsAttr::getNumElements(&v69) == 4)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v76, v69, 0);
    mlir::DenseIntElementsAttr::end(&v69, &__p);
    for (j = v78[0]; j != v75[0]; j = ++v78[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v76, &v65);
      if (v66 > 0x40)
      {
        v46 = *v65;
      }

      else if (v66)
      {
        v46 = (v65 << -v66) >> -v66;
      }

      else
      {
        v46 = 0;
      }

      v47 = v80;
      if (v80 >= HIDWORD(v80))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 8);
        v47 = v80;
      }

      *(v79 + v47) = v46;
      LODWORD(v80) = v80 + 1;
      if (v66 >= 0x41 && v65)
      {
        operator delete[](v65);
      }
    }
  }

  else
  {
    llvm::SmallVectorImpl<unsigned long long>::resize(&v79, 4uLL, 1uLL);
  }

  v48 = 0;
  v76 = v78;
  v77 = 0x800000000;
  if (v32 <= 1)
  {
    if (v32)
    {
      if (v32 != 1)
      {
        goto LABEL_87;
      }

      goto LABEL_85;
    }

LABEL_72:
    if (v31 && mlir::DenseElementsAttr::getNumElements(&v68) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&__p, v68, 0);
      mlir::DenseIntElementsAttr::end(&v68, &v65);
      for (k = v75[0]; k != v67; k = ++v75[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&__p, &v63);
        if (v64 > 0x40)
        {
          v50 = *v63;
        }

        else if (v64)
        {
          v50 = (v63 << -v64) >> -v64;
        }

        else
        {
          v50 = 0;
        }

        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v76, v50);
        if (v64 >= 0x41 && v63)
        {
          operator delete[](v63);
        }
      }

      goto LABEL_86;
    }

LABEL_85:
    llvm::SmallVectorImpl<unsigned long long>::resize(&v76, 8uLL, 0);
LABEL_86:
    v48 = 0;
    goto LABEL_87;
  }

  if (v32 != 2 && v32 != 4)
  {
    if (v32 != 3)
    {
      goto LABEL_87;
    }

    goto LABEL_72;
  }

  v48 = 1;
LABEL_87:
  __p = v75;
  v74 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v72);
  v53 = v52;
  v54 = mlir::CallableOpInterface::getArgAttrsAttr(v71);
  v65 = v82;
  v66 = v83;
  v63 = v79;
  v64 = v80;
  v62[0] = v76;
  v62[1] = v77;
  if (mlir::mps::inferStencilShape(v54, v55, ArgAttrsAttr, v53, v54, v55, &v65, &v63, v62, v48, &__p))
  {
    v56 = __p;
    v57 = v74;
    isSplat = mlir::ElementsAttr::isSplat(v72);
    v59 = mlir::RankedTensorType::get(v56, v57, isSplat, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v59);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v60 = result;
  if (__p != v75)
  {
    free(__p);
    result = v60;
  }

  if (v76 != v78)
  {
    free(v76);
    result = v60;
  }

  if (v79 != v81)
  {
    free(v79);
    result = v60;
  }

  if (v82 != v84)
  {
    free(v82);
    return v60;
  }

  return result;
}

BOOL mlir::mps::StencilOpAdaptor::verify(mlir::mps::StencilOpAdaptor *this, Location a2)
{
  v164 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  v3 = *(this + 4);
  v6 = *(this + 5);
  v5 = *(this + 6);
  v7 = *(this + 10);
  if (!v6)
  {
    goto LABEL_33;
  }

  v8 = *v6;
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v143 = v8;
    mlir::mps::ConstantOp::getAsAttribute();
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v143 + 8);
    v11 = *(v143 + 16);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 != &v10[2 * v11] && *v12 == v9)
  {
    v19 = v12[1];
    v146 = v6;
    v147 = v19;
    Type = mlir::ElementsAttr::getType(&v146);
    if (!Type)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

LABEL_14:
  v146 = v6;
  v147 = 0;
  Type = mlir::ElementsAttr::getType(&v146);
  if (!Type)
  {
    goto LABEL_29;
  }

LABEL_17:
  v20 = *Type;
  {
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v142 = v20;
    v144 = Type;
    mlir::arith::ExtUIOp::fold();
    Type = v144;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v142 + 8);
    v23 = *(v142 + 16);
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 != &v22[2 * v23] && *v24 == v21)
  {
    v30 = v24[1];
    goto LABEL_30;
  }

LABEL_29:
  v30 = 0;
LABEL_30:
  v153 = Type;
  v154 = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v153);
  v163 = 4;
  if (v32 != 1 || *ArgAttrsAttr != v163 || (v149 = v6, Value = mlir::ArrayAttr::getValue(&v149), v151 = v33, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isSignedInteger(&isSplat, 64)))
  {
    v146 = "'mps.stencil' op attribute 'offsets' failed to satisfy constraint: si64 elements attribute of shape {4}";
    v148 = 259;
    mlir::emitError(a2.var0.var0, &v146, &v153);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
    if (v153)
    {
      mlir::InFlightDiagnostic::report(&v153);
    }

    if (v162 == 1)
    {
      if (v161 != &v162)
      {
        free(v161);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v160;
        v47 = __p;
        if (v160 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v160 = v45;
        operator delete(v47);
      }

      v48 = v157;
      if (!v157)
      {
        goto LABEL_201;
      }

      v49 = v158;
      v50 = v157;
      if (v158 == v157)
      {
        goto LABEL_200;
      }

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
      goto LABEL_199;
    }

    return v44;
  }

LABEL_33:
  if (!v7)
  {
    goto LABEL_82;
  }

  v34 = *v7;
  {
    v35 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    if (!v37)
    {
      goto LABEL_63;
    }
  }

  else
  {
    mlir::mps::PoolAvgOpAdaptor::verify();
    v35 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    if (!v37)
    {
      goto LABEL_63;
    }
  }

  v38 = v36;
  v39 = v37;
  do
  {
    v40 = v39 >> 1;
    v41 = &v38[2 * (v39 >> 1)];
    v43 = *v41;
    v42 = v41 + 2;
    v39 += ~(v39 >> 1);
    if (v43 < v35)
    {
      v38 = v42;
    }

    else
    {
      v39 = v40;
    }
  }

  while (v39);
  if (v38 != &v36[2 * v37] && *v38 == v35)
  {
    v54 = v38[1];
    v146 = v7;
    v147 = v54;
    v53 = mlir::ElementsAttr::getType(&v146);
    if (!v53)
    {
      goto LABEL_78;
    }

    goto LABEL_66;
  }

LABEL_63:
  v146 = v7;
  v147 = 0;
  v53 = mlir::ElementsAttr::getType(&v146);
  if (!v53)
  {
    goto LABEL_78;
  }

LABEL_66:
  v55 = *v53;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v145 = v53;
    mlir::arith::ExtUIOp::fold();
    v53 = v145;
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_78;
    }
  }

  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
  if (v59 != &v57[2 * v58] && *v59 == v56)
  {
    v65 = v59[1];
    goto LABEL_79;
  }

LABEL_78:
  v65 = 0;
LABEL_79:
  v153 = v53;
  v154 = v65;
  v66 = mlir::CallableOpInterface::getArgAttrsAttr(&v153);
  v163 = 4;
  if (v67 != 1 || *v66 != v163 || (v149 = v7, Value = mlir::ArrayAttr::getValue(&v149), v151 = v68, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
  {
    v146 = "'mps.stencil' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v148 = 259;
    mlir::emitError(a2.var0.var0, &v146, &v153);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
    if (v153)
    {
      mlir::InFlightDiagnostic::report(&v153);
    }

    if (v162 == 1)
    {
      if (v161 != &v162)
      {
        free(v161);
      }

      v79 = __p;
      if (__p)
      {
        v80 = v160;
        v81 = __p;
        if (v160 != __p)
        {
          do
          {
            v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
          }

          while (v80 != v79);
          v81 = __p;
        }

        v160 = v79;
        operator delete(v81);
      }

      v48 = v157;
      if (!v157)
      {
        goto LABEL_201;
      }

      v82 = v158;
      v50 = v157;
      if (v158 == v157)
      {
        goto LABEL_200;
      }

      do
      {
        v84 = *--v82;
        v83 = v84;
        *v82 = 0;
        if (v84)
        {
          operator delete[](v83);
        }
      }

      while (v82 != v48);
      goto LABEL_199;
    }

    return v44;
  }

LABEL_82:
  if (!v4)
  {
    goto LABEL_131;
  }

  v69 = *v4;
  {
    v70 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (!v72)
    {
      goto LABEL_112;
    }
  }

  else
  {
    mlir::mps::PoolAvgOpAdaptor::verify();
    v70 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (!v72)
    {
      goto LABEL_112;
    }
  }

  v73 = v71;
  v74 = v72;
  do
  {
    v75 = v74 >> 1;
    v76 = &v73[2 * (v74 >> 1)];
    v78 = *v76;
    v77 = v76 + 2;
    v74 += ~(v74 >> 1);
    if (v78 < v70)
    {
      v73 = v77;
    }

    else
    {
      v74 = v75;
    }
  }

  while (v74);
  if (v73 != &v71[2 * v72] && *v73 == v70)
  {
    v86 = v73[1];
    v146 = v4;
    v147 = v86;
    v85 = mlir::ElementsAttr::getType(&v146);
    if (!v85)
    {
      goto LABEL_127;
    }

    goto LABEL_115;
  }

LABEL_112:
  v146 = v4;
  v147 = 0;
  v85 = mlir::ElementsAttr::getType(&v146);
  if (!v85)
  {
    goto LABEL_127;
  }

LABEL_115:
  v87 = *v85;
  {
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    if (!v90)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v97 = v85;
    mlir::arith::ExtUIOp::fold();
    v85 = v97;
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    if (!v90)
    {
      goto LABEL_127;
    }
  }

  v91 = v89;
  v92 = v90;
  do
  {
    v93 = v92 >> 1;
    v94 = &v91[2 * (v92 >> 1)];
    v96 = *v94;
    v95 = v94 + 2;
    v92 += ~(v92 >> 1);
    if (v96 < v88)
    {
      v91 = v95;
    }

    else
    {
      v92 = v93;
    }
  }

  while (v92);
  if (v91 != &v89[2 * v90] && *v91 == v88)
  {
    v98 = v91[1];
    goto LABEL_128;
  }

LABEL_127:
  v98 = 0;
LABEL_128:
  v153 = v85;
  v154 = v98;
  v99 = mlir::CallableOpInterface::getArgAttrsAttr(&v153);
  v163 = 4;
  if (v100 == 1 && *v99 == v163)
  {
    v149 = v4;
    Value = mlir::ArrayAttr::getValue(&v149);
    v151 = v101;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
LABEL_131:
      if (!v3)
      {
        goto LABEL_180;
      }

      v102 = *v3;
      {
        v103 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        if (!v105)
        {
          goto LABEL_161;
        }
      }

      else
      {
        mlir::mps::PoolAvgOpAdaptor::verify();
        v103 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        if (!v105)
        {
          goto LABEL_161;
        }
      }

      v106 = v104;
      v107 = v105;
      do
      {
        v108 = v107 >> 1;
        v109 = &v106[2 * (v107 >> 1)];
        v111 = *v109;
        v110 = v109 + 2;
        v107 += ~(v107 >> 1);
        if (v111 < v103)
        {
          v106 = v110;
        }

        else
        {
          v107 = v108;
        }
      }

      while (v107);
      if (v106 != &v104[2 * v105] && *v106 == v103)
      {
        v119 = v106[1];
        v146 = v3;
        v147 = v119;
        v118 = mlir::ElementsAttr::getType(&v146);
        if (!v118)
        {
          goto LABEL_176;
        }

LABEL_164:
        v120 = *v118;
        {
          v121 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v122 = *(v120 + 8);
          v123 = *(v120 + 16);
          if (v123)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v130 = v118;
          mlir::arith::ExtUIOp::fold();
          v118 = v130;
          v121 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v122 = *(v120 + 8);
          v123 = *(v120 + 16);
          if (v123)
          {
LABEL_166:
            v124 = v122;
            v125 = v123;
            do
            {
              v126 = v125 >> 1;
              v127 = &v124[2 * (v125 >> 1)];
              v129 = *v127;
              v128 = v127 + 2;
              v125 += ~(v125 >> 1);
              if (v129 < v121)
              {
                v124 = v128;
              }

              else
              {
                v125 = v126;
              }
            }

            while (v125);
LABEL_174:
            if (v124 != &v122[2 * v123] && *v124 == v121)
            {
              v131 = v124[1];
              goto LABEL_177;
            }

LABEL_176:
            v131 = 0;
LABEL_177:
            v153 = v118;
            v154 = v131;
            v132 = mlir::CallableOpInterface::getArgAttrsAttr(&v153);
            v163 = 8;
            if (v133 == 1 && *v132 == v163)
            {
              v149 = v3;
              Value = mlir::ArrayAttr::getValue(&v149);
              v151 = v134;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_180:
                if (!v5)
                {
                  return 1;
                }

                v146 = v5;
                v153 = mlir::AffineMapAttr::getValue(&v146);
                if (mlir::Type::isF32(&v153))
                {
                  return 1;
                }

                v146 = "'mps.stencil' op attribute 'paddingConstant' failed to satisfy constraint: 32-bit float attribute";
                v148 = 259;
                mlir::emitError(a2.var0.var0, &v146, &v153);
                v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
                if (v153)
                {
                  mlir::InFlightDiagnostic::report(&v153);
                }

                if (v162 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v154);
                }

                return v44;
              }
            }

            v146 = "'mps.stencil' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
            v148 = 259;
            mlir::emitError(a2.var0.var0, &v146, &v153);
            v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
            if (v153)
            {
              mlir::InFlightDiagnostic::report(&v153);
            }

            if (v162 == 1)
            {
              if (v161 != &v162)
              {
                free(v161);
              }

              v135 = __p;
              if (__p)
              {
                v136 = v160;
                v137 = __p;
                if (v160 != __p)
                {
                  do
                  {
                    v136 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v136 - 1);
                  }

                  while (v136 != v135);
                  v137 = __p;
                }

                v160 = v135;
                operator delete(v137);
              }

              v48 = v157;
              if (!v157)
              {
                goto LABEL_201;
              }

              v138 = v158;
              v50 = v157;
              if (v158 == v157)
              {
LABEL_200:
                v158 = v48;
                operator delete(v50);
LABEL_201:
                if (v155 != &v156)
                {
                  free(v155);
                }

                return v44;
              }

              do
              {
                v140 = *--v138;
                v139 = v140;
                *v138 = 0;
                if (v140)
                {
                  operator delete[](v139);
                }
              }

              while (v138 != v48);
LABEL_199:
              v50 = v157;
              goto LABEL_200;
            }

            return v44;
          }
        }

        v123 = 0;
        v124 = v122;
        goto LABEL_174;
      }

LABEL_161:
      v146 = v3;
      v147 = 0;
      v118 = mlir::ElementsAttr::getType(&v146);
      if (!v118)
      {
        goto LABEL_176;
      }

      goto LABEL_164;
    }
  }

  v146 = "'mps.stencil' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v148 = 259;
  mlir::emitError(a2.var0.var0, &v146, &v153);
  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
  if (v153)
  {
    mlir::InFlightDiagnostic::report(&v153);
  }

  if (v162 == 1)
  {
    if (v161 != &v162)
    {
      free(v161);
    }

    v112 = __p;
    if (__p)
    {
      v113 = v160;
      v114 = __p;
      if (v160 != __p)
      {
        do
        {
          v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
        }

        while (v113 != v112);
        v114 = __p;
      }

      v160 = v112;
      operator delete(v114);
    }

    v48 = v157;
    if (!v157)
    {
      goto LABEL_201;
    }

    v115 = v158;
    v50 = v157;
    if (v158 == v157)
    {
      goto LABEL_200;
    }

    do
    {
      v117 = *--v115;
      v116 = v117;
      *v115 = 0;
      if (v117)
      {
        operator delete[](v116);
      }
    }

    while (v115 != v48);
    goto LABEL_199;
  }

  return v44;
}

void *mlir::DenseIntElementsAttr::end@<X0>(mlir::DenseIntElementsAttr *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  NumElements = mlir::DenseElementsAttr::getNumElements(this);

  return mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(a2, v3, NumElements);
}

BOOL mlir::mps::StencilOp::verify(mlir::mps::StencilOp *this)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = (*this + 64 + 16 * ((*(*this + 44) >> 23) & 1));
  v3 = *(v2[5] + 8);
  if (v3)
  {
    if (v3 != 3)
    {
      goto LABEL_5;
    }

    if (!v2[2])
    {
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v49);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
      }

      if (v57 != 1)
      {
        return v14;
      }

      if (v56 != &v57)
      {
        free(v56);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v55;
        v37 = __p;
        if (v55 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v55 = v35;
        operator delete(v37);
      }

      v18 = v52;
      if (!v52)
      {
        goto LABEL_77;
      }

      v38 = v53;
      v20 = v52;
      if (v53 == v52)
      {
        goto LABEL_76;
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

      while (v38 != v18);
LABEL_75:
      v20 = v52;
LABEL_76:
      v53 = v18;
      operator delete(v20);
      goto LABEL_77;
    }
  }

  if (!v2[1])
  {
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v49);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57 != 1)
    {
      return v14;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v55;
      v25 = __p;
      if (v55 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v55 = v23;
      operator delete(v25);
    }

    v18 = v52;
    if (v52)
    {
      v26 = v53;
      v20 = v52;
      if (v53 == v52)
      {
        goto LABEL_76;
      }

      do
      {
        v28 = *--v26;
        v27 = v28;
        *v26 = 0;
        if (v28)
        {
          operator delete[](v27);
        }
      }

      while (v26 != v18);
      goto LABEL_75;
    }

    goto LABEL_77;
  }

LABEL_5:
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v46[0] = v4;
  v46[1] = v5;
  if (!v4)
  {
    v47[0] = "invalid type for input.";
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v49);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57 != 1)
    {
      return v14;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v55;
      v17 = __p;
      if (v55 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v55 = v15;
      operator delete(v17);
    }

    v18 = v52;
    if (!v52)
    {
      goto LABEL_77;
    }

    v19 = v53;
    v20 = v52;
    if (v53 == v52)
    {
      goto LABEL_76;
    }

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
    goto LABEL_75;
  }

  v6 = v4;
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  v45[0] = v7;
  v45[1] = v8;
  if (!v7)
  {
    v47[0] = "invalid type for weights.";
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v49);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v57 != 1)
    {
      return v14;
    }

    if (v56 != &v57)
    {
      free(v56);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v55;
      v31 = __p;
      if (v55 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v55 = v29;
      operator delete(v31);
    }

    v18 = v52;
    if (v52)
    {
      v32 = v53;
      v20 = v52;
      if (v53 == v52)
      {
        goto LABEL_76;
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

      while (v32 != v18);
      goto LABEL_75;
    }

LABEL_77:
    if (v50 != &v51)
    {
      free(v50);
    }

    return v14;
  }

  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v46);
    v10 = v9;
    mlir::CallableOpInterface::getArgAttrsAttr(v45);
    v43 = v11;
    v44 = v10;
    if (v10 <= 3)
    {
      v47[0] = "stencil input rank ";
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v49);
      mlir::InFlightDiagnostic::operator<<<unsigned long>(v49, &v44);
      v13 = " must be >= 4 ";
LABEL_83:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v12, v13);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
      return v14;
    }

    if (v11 != 4)
    {
      v47[0] = "stencil weights rank ";
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v49);
      mlir::InFlightDiagnostic::operator<<<unsigned long>(v49, &v43);
      v13 = " must be == 4 ";
      goto LABEL_83;
    }
  }

  return 1;
}

uint64_t mlir::mps::CropResizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  v72 = a4;
  v73 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v61 = a6;
  v62[0] = 0;
  v63 = 0;
  v64 = v14;
  v65 = v15;
  v66 = v16;
  v67 = v17;
  v68 = a9;
  v18 = a5;
  v69 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v61);
    if (v63 == 1)
    {
      v63 = 0;
    }

    mlir::OperationName::OperationName(v62, "mps.crop_resize", 15, Context);
    v63 = 1;
    v18 = v73;
  }

  v70 = a4;
  v71 = a5;
  if (v18 >= 2 && (v20.var0.var0 = mlir::UnknownLoc::get(this, a2), mlir::mps::CropResizeOpAdaptor::verify(&v61, v20)))
  {
    v21 = mlir::ValueRange::dereference_iterator(&v72, 0);
    v22 = *(*(*(v21 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v24 = 0;
    }

    v25 = mlir::ValueRange::dereference_iterator(&v72, 1);
    v26 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v26 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v28 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v28 = 0;
    }

    if (v24)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v34 = v66;
      if (!v66)
      {
        goto LABEL_39;
      }

      v35 = *(*v66 + 136);
      if (v35 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v34 = 0;
      }

      v58 = v34;
      if (v35 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (Value = mlir::AffineMapAttr::getValue(&v58), mlir::Type::isUnsignedInteger(&Value)))
      {
        UInt = mlir::IntegerAttr::getUInt(&v58);
      }

      else
      {
LABEL_39:
        UInt = 1;
      }

      v37 = *(&v66 + 1);
      if (!*(&v66 + 1))
      {
        goto LABEL_46;
      }

      v38 = *(**(&v66 + 1) + 136);
      if (v38 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v37 = 0;
      }

      v58 = v37;
      if (v38 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (Value = mlir::AffineMapAttr::getValue(&v58), mlir::Type::isUnsignedInteger(&Value)))
      {
        v39 = mlir::IntegerAttr::getUInt(&v58);
      }

      else
      {
LABEL_46:
        v39 = 1;
      }

      Value = v24;
      v58 = v60;
      v59 = 0x800000000;
      v56 = v28;
      if (mlir::TensorType::hasRank(&Value) && (mlir::ArrayAttr::getValue(&Value), v40 == 4))
      {
        v41 = mlir::ArrayAttr::getValue(&Value);
        v42 = *v41;
        v43 = v41[1];
        if (!mlir::TensorType::hasRank(&v56))
        {
LABEL_50:
          v44 = 0x8000000000000000;
          v45 = 0x8000000000000000;
LABEL_58:
          v49 = v59;
          if (v59 != 5)
          {
            if (v59 <= 5)
            {
              if (HIDWORD(v59) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, 5uLL, 8), v49 = v59, v59 != 5))
              {
                bzero(v58 + 8 * v49, 40 - 8 * v49);
              }
            }

            LODWORD(v59) = 5;
          }

          v50 = v58;
          *v58 = v44;
          v50[1] = v45;
          v50[2] = v43;
          v50[3] = UInt;
          v50[4] = v39;
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v24);
          v52 = mlir::RankedTensorType::get(v50, 5, ElementTypeOrSelf, 0);
          v53 = *(a11 + 8);
          if (v53 >= *(a11 + 12))
          {
            v55 = v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v53 + 1, 8);
            v52 = v55;
            LODWORD(v53) = *(a11 + 8);
          }

          *(*a11 + 8 * v53) = v52;
          ++*(a11 + 8);
          if (v58 != v60)
          {
            free(v58);
          }

          return 1;
        }
      }

      else
      {
        v42 = 0x8000000000000000;
        v43 = 0x8000000000000000;
        if (!mlir::TensorType::hasRank(&v56))
        {
          goto LABEL_50;
        }
      }

      mlir::ArrayAttr::getValue(&v56);
      v45 = 0x8000000000000000;
      if (v46 == 2)
      {
        v47 = mlir::ArrayAttr::getValue(&v56);
        v44 = *v47;
        v48 = v47[1];
        if (v48 != 0x8000000000000000)
        {
          if (v48 == 4)
          {
            v45 = v42;
          }

          else
          {
            v45 = 1;
          }
        }
      }

      else
      {
        v44 = 0x8000000000000000;
      }

      goto LABEL_58;
    }

    v30 = mlir::getElementTypeOrSelf(v24);
  }

  else
  {
    v30 = mlir::Float32Type::get(this, a2);
  }

  v31 = mlir::UnrankedTensorType::get(v30);
  v32 = *(a11 + 8);
  if (v32 >= *(a11 + 12))
  {
    v54 = v31;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
    v31 = v54;
    LODWORD(v32) = *(a11 + 8);
  }

  *(*a11 + 8 * v32) = v31;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::CropResizeOpAdaptor::verify(mlir::mps::CropResizeOpAdaptor *this, Location a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  v4 = *(this + 9);
  if (*(this + 7) && (v27[0] = *(this + 7), v29[0] = mlir::AffineMapAttr::getValue(v27), !mlir::Type::isUnsignedInteger(v29, 32)))
  {
    v27[0] = "'mps.crop_resize' op attribute 'resize_height' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v28 = 259;
    mlir::emitError(a2.var0.var0, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v35;
        v8 = __p;
        if (v35 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v35 = v6;
        operator delete(v8);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v10 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
      }

      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          operator delete[](v12);
        }
      }

      while (v10 != v9);
      goto LABEL_56;
    }
  }

  else if (v3 && (v27[0] = v3, v29[0] = mlir::AffineMapAttr::getValue(v27), !mlir::Type::isUnsignedInteger(v29, 32)))
  {
    v27[0] = "'mps.crop_resize' op attribute 'resize_width' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v28 = 259;
    mlir::emitError(a2.var0.var0, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v17 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
      }

      do
      {
        v19 = *--v17;
        v18 = v19;
        *v17 = 0;
        if (v19)
        {
          operator delete[](v18);
        }
      }

      while (v17 != v9);
      goto LABEL_56;
    }
  }

  else
  {
    if (!v4)
    {
      return 1;
    }

    v27[0] = v4;
    v29[0] = mlir::AffineMapAttr::getValue(v27);
    if (mlir::Type::isF32(v29))
    {
      return 1;
    }

    v27[0] = "'mps.crop_resize' op attribute 'spatial_scale' failed to satisfy constraint: 32-bit float attribute";
    v28 = 259;
    mlir::emitError(a2.var0.var0, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v35;
        v22 = __p;
        if (v35 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v35 = v20;
        operator delete(v22);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v23 = v33;
      v11 = v32;
      if (v33 == v32)
      {
LABEL_57:
        v33 = v9;
        operator delete(v11);
LABEL_58:
        if (v30 != &v31)
        {
          free(v30);
        }

        return v5;
      }

      do
      {
        v25 = *--v23;
        v24 = v25;
        *v23 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v23 != v9);
LABEL_56:
      v11 = v32;
      goto LABEL_57;
    }
  }

  return v5;
}

BOOL mlir::mps::CropResizeOp::verify(mlir::mps::CropResizeOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 72);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v41 = v2;
  v5 = *(*(v1 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v40 = v5;
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
    v38[0] = "cannot crop_resize a non-tensor type";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, &v42);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v49;
        v12 = __p;
        if (v49 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v49 = v10;
        operator delete(v12);
      }

      v13 = v46;
      if (!v46)
      {
        goto LABEL_77;
      }

      v14 = v47;
      v15 = v46;
      if (v47 == v46)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }
  }

  else
  {
    hasRank = mlir::TensorType::hasRank(&v41);
    if (hasRank && (mlir::ArrayAttr::getValue(&v41), v20 != 4))
    {
      v38[0] = "images tensor must have shape [N, C, H, W]";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, &v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v49;
          v27 = __p;
          if (v49 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v49 = v25;
          operator delete(v27);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_77;
        }

        v28 = v47;
        v15 = v46;
        if (v47 == v46)
        {
          goto LABEL_76;
        }

        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v28 != v13);
        goto LABEL_75;
      }
    }

    else
    {
      if (!mlir::TensorType::hasRank(&v40))
      {
        return 1;
      }

      mlir::ArrayAttr::getValue(&v40);
      if (v21 == 2)
      {
        Value = mlir::ArrayAttr::getValue(&v40);
        v24 = *(Value + 8 * v23 - 8);
        v9 = 1;
        if ((v24 - 4) >= 2 && v24 != 0x8000000000000000)
        {
          v38[0] = "boxes tensor must have shape [B, 4] or [B, 5]";
          v39 = 259;
          mlir::OpState::emitOpError(this, v38, &v42);
          v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
          if (v42)
          {
            mlir::InFlightDiagnostic::report(&v42);
          }

          if (v51 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v43);
          }
        }

        return v9;
      }

      v38[0] = "boxes tensor must have shape [B, 4] or [B, 5]";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, &v42);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v31 = __p;
        if (__p)
        {
          v32 = v49;
          v33 = __p;
          if (v49 != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          v49 = v31;
          operator delete(v33);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_77;
        }

        v34 = v47;
        v15 = v46;
        if (v47 == v46)
        {
LABEL_76:
          v47 = v13;
          operator delete(v15);
LABEL_77:
          if (v44 != &v45)
          {
            free(v44);
          }

          return v9;
        }

        do
        {
          v36 = *--v34;
          v35 = v36;
          *v34 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v34 != v13);
LABEL_75:
        v15 = v46;
        goto LABEL_76;
      }
    }
  }

  return v9;
}

uint64_t mlir::mps::LPNormOp::verify(mlir::mps::LPNormOp *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(*(*this + 72) + 56);
  v59 = 0;
  v60 = 0;
  v41[0] = &v59;
  v53 = v2;
  DefiningOp = mlir::Value::getDefiningOp(&v53);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v41, DefiningOp) & 1) != 0)
  {
    SingleInt = mlir::getSingleIntValue<long long>(v59, v60);
    v48 = SingleInt;
    v49 = v5;
    if ((v5 & 1) != 0 && SingleInt <= 0)
    {
      v53 = "failed: exponent must be positive, but got {0}";
      v54 = 46;
      v55[0] = &v58;
      v55[1] = 1;
      v56 = 1;
      v57[0] = &unk_1F5B17218;
      v57[1] = &v48;
      v58 = v57;
      v42 = 263;
      v41[0] = &v53;
      mlir::OpState::emitOpError(this, v41, &v59);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
      if (v59)
      {
        mlir::InFlightDiagnostic::report(&v59);
      }

      if (v68 != 1)
      {
        return v6;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v66;
        v9 = __p;
        if (v66 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v66 = v7;
        operator delete(v9);
      }

      v10 = v63;
      if (v63)
      {
        v11 = v64;
        v12 = v63;
        if (v64 != v63)
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
          v12 = v63;
        }

        v64 = v10;
        operator delete(v12);
      }

      v26 = v61;
      if (v61 == v62)
      {
        return v6;
      }

LABEL_69:
      free(v26);
      return v6;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v15 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = *v15;
  {
    mlir::arith::ExtUIOp::fold();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (v19)
    {
      goto LABEL_25;
    }

LABEL_39:
    v27 = 0;
    goto LABEL_40;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_39;
  }

LABEL_25:
  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 == &v18[2 * v19] || *v20 != v17)
  {
    goto LABEL_39;
  }

  v27 = v20[1];
LABEL_40:
  v47[0] = v15;
  v47[1] = v27;
  v50 = v52;
  v51 = 0x400000000;
  if (!mlir::CallOpInterface::getArgOperands(v47) || (mlir::matchConstantWithIntVector<long long>(*(*(*this + 72) + 88), &v50) & 1) == 0)
  {
    goto LABEL_67;
  }

  v53 = v55;
  v54 = 0x600000000;
  v6 = v50;
  v28 = v51;
  mlir::CallableOpInterface::getArgAttrsAttr(v47);
  if (!PositiveAxes)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v47);
    v41[0] = "failed: found an axis out of bounds for input rank {0}";
    v41[1] = 54;
    v41[2] = &v44;
    v41[3] = 1;
    LOBYTE(v42) = 1;
    v43[0] = &unk_1F5B17290;
    v43[1] = v31;
    v44 = v43;
    v45 = v41;
    v46 = 263;
    mlir::OpState::emitOpError(this, &v45, &v59);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v66;
        v34 = __p;
        if (v66 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v66 = v32;
        operator delete(v34);
      }

      v35 = v63;
      if (v63)
      {
        v36 = v64;
        v37 = v63;
        if (v64 != v63)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v63;
        }

        v64 = v35;
        operator delete(v37);
      }

      if (v61 != v62)
      {
        free(v61);
      }
    }
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (PositiveAxes)
  {
LABEL_67:
    v6 = 1;
  }

  v26 = v50;
  if (v50 != v52)
  {
    goto LABEL_69;
  }

  return v6;
}

uint64_t mlir::mps::MatrixDecompositionLUOp::inferReturnTypes(uint64_t *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v62[0] = a4;
  v62[1] = a5;
  if (a5 == 1)
  {
    v59 = a4;
    v60 = 1;
    v14 = *(mlir::ValueRange::dereference_iterator(&v59, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(a11 + 8);
    if (v15 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v15 + 1, 8);
      LODWORD(v15) = *(a11 + 8);
    }

    *(*a11 + 8 * v15) = v14;
    ++*(a11 + 8);
    v16 = mlir::ValueRange::dereference_iterator(v62, 0);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v27 = mlir::IntegerType::get(a1, 32, 2u);
      v28 = mlir::UnrankedTensorType::get(v27);
      v29 = *(a11 + 8);
      if (v29 >= *(a11 + 12))
      {
        v51 = v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
        v28 = v51;
        LODWORD(v29) = *(a11 + 8);
      }

      *(*a11 + 8 * v29) = v28;
      ++*(a11 + 8);
      v30 = mlir::IntegerType::get(a1, 32, 1u);
      v31 = mlir::UnrankedTensorType::get(v30);
      v32 = *(a11 + 8);
      if (v32 >= *(a11 + 12))
      {
        v52 = v31;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
        v31 = v52;
        LODWORD(v32) = *(a11 + 8);
      }

      *(*a11 + 8 * v32) = v31;
      ++*(a11 + 8);
    }

    else
    {
      v18 = mlir::ValueRange::dereference_iterator(v62, 0);
      v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8));
      v60 = v19;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
      v22 = v21 - 1;
      if (v21 <= 1)
      {
        v23.var0.var0 = a3;
        return mlir::emitOptionalError<char const(&)[66]>(a2, v23, "input must be rank 2 or more");
      }

      v33 = ArgAttrsAttr;
      v55 = v21 - 2;
      if (*(ArgAttrsAttr + 8 * (v21 - 2)) >= *(ArgAttrsAttr + 8 * v22))
      {
        v34 = *(ArgAttrsAttr + 8 * v22);
      }

      else
      {
        v34 = *(ArgAttrsAttr + 8 * (v21 - 2));
      }

      v35 = 8 * v21;
      v36 = v61;
      v59 = v61;
      v60 = 0x400000000;
      v37 = (8 * v21) >> 3;
      if (v37 < 5)
      {
        v38 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v37, 8);
        v38 = v60;
        v36 = v59;
      }

      memcpy(&v36[8 * v38], v33, v35);
      LODWORD(v60) = v60 + (v35 >> 3);
      v39 = v60;
      v40 = v59;
      *(v59 + v55) = 1;
      v40[v22] = v34;
      v41 = mlir::IntegerType::get(a1, 32, 2u);
      v42 = mlir::RankedTensorType::get(v40, v39, v41, 0);
      v43 = *(a11 + 8);
      if (v43 >= *(a11 + 12))
      {
        v53 = v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v43 + 1, 8);
        v42 = v53;
        LODWORD(v43) = *(a11 + 8);
      }

      *(*a11 + 8 * v43) = v42;
      ++*(a11 + 8);
      v56 = v58;
      v57 = 0x400000000;
      if (v37 < 5)
      {
        v44 = 0;
        v45 = v58;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v37, 8);
        v44 = v57;
        v45 = v56;
      }

      memcpy(&v45[8 * v44], v33, v35);
      LODWORD(v57) = v57 + (v35 >> 3);
      v46 = v57;
      v47 = v56;
      *(v56 + 8 * v55) = vdupq_n_s64(1uLL);
      v48 = mlir::IntegerType::get(a1, 32, 1u);
      v49 = mlir::RankedTensorType::get(v47, v46, v48, 0);
      v50 = *(a11 + 8);
      if (v50 >= *(a11 + 12))
      {
        v54 = v49;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v50 + 1, 8);
        v49 = v54;
        LODWORD(v50) = *(a11 + 8);
      }

      *(*a11 + 8 * v50) = v49;
      ++*(a11 + 8);
      if (v56 != v58)
      {
        free(v56);
      }

      if (v59 != v61)
      {
        free(v59);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::MatrixSolverLUOp::verify(mlir::mps::MatrixSolverLUOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v2)
  {
    if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != 0)
    {
      v6 = *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == 0;
      if (!v6 && *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        v28 = v7;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
        v10 = v9;
        v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
        v28 = v11;
        v12 = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
        v14 = v13;
        v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8));
        v28 = v15;
        v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
        if (v10 != v17 || v10 != v14)
        {
          v23 = "rank for lu matrix and rhs should match";
LABEL_22:
          v25 = v23;
          v26 = 259;
          mlir::OpState::emitOpError(this, &v25, &v27);
          v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
          return v19;
        }

        v18 = v10 - 2;
        if (v10 != 2)
        {
          v19 = 1;
          while (1)
          {
            v21 = *v16++;
            v20 = v21;
            v22 = *ArgAttrsAttr++;
            if (v20 != v22 || v20 != *v12)
            {
              break;
            }

            ++v12;
            if (!--v18)
            {
              return v19;
            }
          }

          v23 = "batch dims of rhs and lu should match";
          goto LABEL_22;
        }
      }
    }
  }

  return 1;
}

BOOL mlir::mps::MatrixSolverLUOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v45[0] = a4;
  v45[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v45, 0);
    v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
    v15 = mlir::ValueRange::dereference_iterator(v45, 2);
    v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v41[0] = v16;
    v41[1] = v17;
    if (!v14 || (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v18 = v16 == 0) : (v18 = 1), v18 || *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
    {
      isSplat = mlir::ElementsAttr::isSplat(v41);
      v37 = mlir::UnrankedTensorType::get(isSplat);
      v38 = *(a11 + 8);
      if (v38 >= *(a11 + 12))
      {
        v40 = v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v38 + 1, 8);
        v37 = v40;
        LODWORD(v38) = *(a11 + 8);
      }

      *(*a11 + 8 * v38) = v37;
      ++*(a11 + 8);
      return 1;
    }

    v19 = mlir::ValueRange::dereference_iterator(v45, 0);
    v42 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43 = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v42);
    v23 = v22;
    v24 = mlir::ValueRange::dereference_iterator(v45, 2);
    v42 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8));
    v43 = v25;
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v42);
    if (v23 >= 2 && v27 > 1)
    {
      v28 = *(ArgAttrsAttr + 8 * v23 - 8);
      llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v42, v26, &v26[8 * v27]);
      v29 = v43;
      v30 = v42;
      *(v42 + v43 - 2) = v28;
      v31 = mlir::ElementsAttr::isSplat(v41);
      v32 = mlir::RankedTensorType::get(v30, v29, v31, 0);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v32);
      if (v42 != &v44)
      {
        free(v42);
      }

      return 1;
    }

    v39.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v39, "inputs must be rank 2 or more");
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::MatrixInverseOp::verify(mlir::mps::MatrixInverseOp *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v2 || *(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v16[0] = v3;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
  v6 = *(ArgAttrsAttr + 8 * v5 - 16);
  v7 = *(ArgAttrsAttr + 8 * v5 - 8);
  v8 = v6 == 0x8000000000000000 || v7 == 0x8000000000000000;
  if (v8 || v7 == v6)
  {
    return 1;
  }

  v13 = "inverse op supported only for square matrix";
  v14 = 259;
  mlir::OpState::emitOpError(this, &v13, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
  if (v15)
  {
    v11 = result;
    mlir::InFlightDiagnostic::report(&v15);
    result = v11;
  }

  if (v17 == 1)
  {
    v12 = result;
    mlir::Diagnostic::~Diagnostic(v16);
    return v12;
  }

  return result;
}

uint64_t mlir::mps::MatrixInverseOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23 = a4;
  v24 = a5;
  if (a5 == 1)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 0;
    }

    v22 = v13;
    if (v13 && (mlir::ArrayAttr::getValue(&v22), v14 <= 1))
    {
      v15.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v15, "input must be rank 2 or more");
    }

    else
    {
      v25[0] = v23;
      v25[1] = v24;
      if (v24)
      {
        v19 = *(mlir::ValueRange::dereference_iterator(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v20 = *(a11 + 8);
        if (v20 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v20 + 1, 8);
          LODWORD(v20) = *(a11 + 8);
        }

        *(*a11 + 8 * v20) = v19;
        ++*(a11 + 8);
        return 1;
      }

      else
      {
        v21.var0.var0 = a3;
        return mlir::emitOptionalError<char const(&)[66]>(a2, v21, "invalid number of operands");
      }
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::mps::PruningOp::verify(mlir::mps::PruningOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v17[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::FloatAttr::getValue(v17, &v19);
  v2 = llvm::APFloat::convertToFloat(&v19);
  v3 = v20[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v4) == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
    if (v2 < 0.0 || v2 > 1.0)
    {
      goto LABEL_6;
    }

    return 1;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v20);
  if (v2 >= 0.0 && v2 <= 1.0)
  {
    return 1;
  }

LABEL_6:
  v18 = 259;
  mlir::OpState::emitOpError(this, v17, &v19);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v19);
  if (v19)
  {
    mlir::InFlightDiagnostic::report(&v19);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v26;
      v9 = __p;
      if (v26 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v26 = v7;
      operator delete(v9);
    }

    v10 = v23;
    if (v23)
    {
      v11 = v24;
      v12 = v23;
      if (v24 != v23)
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
        v12 = v23;
      }

      v24 = v10;
      operator delete(v12);
    }

    if (v21 != &v22)
    {
      free(v21);
    }
  }

  return v6;
}

BOOL mlir::mps::CreateTextureTensorOp::verify(mlir::mps::CreateTextureTensorOp *this)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
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
    v14 = v8[1];
    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
LABEL_18:
  v46[0] = v3;
  v46[1] = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  if (!mlir::CallOpInterface::getArgOperands(v46))
  {
    return 1;
  }

  v16 = *(ArgAttrsAttr + 24);
  if (v16 == 0x8000000000000000)
  {
    return 1;
  }

  v18 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72) + 8);
  v45 = v18;
  v44 = v16;
  if (v18 > 9)
  {
    return 1;
  }

  v19 = 1 << v18;
  if ((v19 & 0x24C) == 0)
  {
    if ((v19 & 0x91) != 0)
    {
      if (v16 != 1)
      {
        v20 = "failed: expected a number of channels equal to 1 for pixel format {0}, but found {1}";
        goto LABEL_47;
      }
    }

    else if (v16 != 2)
    {
      v20 = "failed: expected a number of channels equal to 2 for pixel format {0}, but found {1}";
LABEL_47:
      v31 = v20;
      v32 = 84;
      v33 = &v40;
      v34 = 2;
      v35 = 1;
      v36 = &unk_1F5B17EC8;
      v37 = &v45;
      v38 = &unk_1F5B17218;
      v39 = &v44;
      v40 = &v36;
      v41 = &v38;
      v43 = 263;
      v42[0] = &v31;
      mlir::OpState::emitOpError(this, v42, &v47);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
      if (v47)
      {
        v30 = result;
        mlir::InFlightDiagnostic::report(&v47);
        result = v30;
      }

      if (v56 == 1)
      {
        v21 = result;
        mlir::Diagnostic::~Diagnostic(&v48);
        return v21;
      }

      return result;
    }

    return 1;
  }

  if (v16 == 4)
  {
    return 1;
  }

  v31 = "failed: expected a number of channels equal to 4 for pixel format {0}, but found {1}";
  v32 = 84;
  v33 = &v40;
  v34 = 2;
  v35 = 1;
  v36 = &unk_1F5B17EC8;
  v37 = &v45;
  v38 = &unk_1F5B17218;
  v39 = &v44;
  v40 = &v36;
  v41 = &v38;
  v43 = 263;
  v42[0] = &v31;
  mlir::OpState::emitOpError(this, v42, &v47);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
  v21 = result;
  if (v47)
  {
    mlir::InFlightDiagnostic::report(&v47);
    result = v21;
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
      result = v21;
    }

    v22 = __p;
    if (__p)
    {
      v23 = v54;
      v24 = __p;
      if (v54 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v54 = v22;
      operator delete(v24);
      result = v21;
    }

    v25 = v51;
    if (v51)
    {
      v26 = v52;
      v27 = v51;
      if (v52 != v51)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v51;
      }

      v52 = v25;
      operator delete(v27);
      result = v21;
    }

    if (v49 != &v50)
    {
      free(v49);
      return v21;
    }
  }

  return result;
}

BOOL mlir::mps::QuantizeOp::verify(mlir::mps::QuantizeOp *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (*(*mlir::AffineMapAttr::getValue(&v35) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, &v35);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v43;
        v5 = __p;
        if (v43 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v43 = v3;
        operator delete(v5);
      }

      v6 = v40;
      if (!v40)
      {
        goto LABEL_55;
      }

      v7 = v41;
      v8 = v40;
      if (v41 == v40)
      {
LABEL_54:
        v41 = v6;
        operator delete(v8);
LABEL_55:
        if (v38 != &v39)
        {
          free(v38);
        }

        return v2;
      }

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
LABEL_53:
      v8 = v40;
      goto LABEL_54;
    }

    return v2;
  }

  v11 = *this;
  v34 = v11;
  v12 = *(*(v11 + 72) + 24);
  v28[0] = *(v11 + 80);
  if (v28[0])
  {
    mlir::IntegerAttr::getValue(v28, &v35);
    if (v36 > 0x40)
    {
      LODWORD(v13) = *v35;
      operator delete[](v35);
    }

    else if (v36)
    {
      v13 = (v35 << -v36) >> -v36;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = v13 | 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  v32 = v14;
  v33 = BYTE4(v14);
  v31[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
  v31[1] = v15;
  if (!v31[0] || !mlir::CallOpInterface::getArgOperands(v31))
  {
    return 1;
  }

  v30 = 0;
  if ((v14 & 0x100000000) == 0)
  {
LABEL_29:
    v35 = &v32;
    v36 = &v34;
    v37 = &v30;
    v38 = v31;
    {
    }

    else
    {
      return 0;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  if (v14 < 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 + v14;
  if ((v18 & 0x80000000) == 0)
  {
    v19 = v18 & 0x7FFFFFFF;
    mlir::CallableOpInterface::getArgAttrsAttr(v31);
    if (v19 <= v20)
    {
      v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v31) + 8 * v19);
      v11 = v34;
      goto LABEL_29;
    }
  }

  v29 = 259;
  mlir::OpState::emitOpError(&v34, v28, &v35);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
  if (v35)
  {
    mlir::InFlightDiagnostic::report(&v35);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v43;
      v23 = __p;
      if (v43 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v43 = v21;
      operator delete(v23);
    }

    v6 = v40;
    if (!v40)
    {
      goto LABEL_55;
    }

    v24 = v41;
    v8 = v40;
    if (v41 == v40)
    {
      goto LABEL_54;
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

    while (v24 != v6);
    goto LABEL_53;
  }

  return v2;
}

BOOL mlir::mps::DequantizeOp::verify(mlir::mps::DequantizeOp *this)
{
  v62 = *MEMORY[0x1E69E9840];
  __p = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  v2 = *(*mlir::AffineMapAttr::getValue(&__p) + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &__p);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
    v28 = result;
    if (__p)
    {
      mlir::InFlightDiagnostic::report(&__p);
      result = v28;
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
        result = v28;
      }

      v38 = v58;
      if (v58)
      {
        v39 = v59;
        v40 = v58;
        if (v59 != v58)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = v58;
        }

        v59 = v38;
        operator delete(v40);
        result = v28;
      }

      v32 = v56;
      if (!v56)
      {
        goto LABEL_108;
      }

      v41 = v57;
      v34 = v56;
      if (v57 == v56)
      {
LABEL_107:
        v57 = v32;
        operator delete(v34);
        result = v28;
LABEL_108:
        if (v54 != &v55)
        {
          free(v54);
          return v28;
        }

        return result;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          operator delete[](v42);
        }
      }

      while (v41 != v32);
LABEL_106:
      v34 = v56;
      goto LABEL_107;
    }

    return result;
  }

  v50 = *this;
  v19 = *(*(v50 + 72) + 24);
  v44[0] = *(v50 + 80);
  if (v44[0])
  {
    mlir::IntegerAttr::getValue(v44, &__p);
    if (v52 > 0x40)
    {
      LODWORD(v20) = *__p;
      operator delete[](__p);
    }

    else if (v52)
    {
      v20 = (__p << -v52) >> -v52;
    }

    else
    {
      LODWORD(v20) = 0;
    }

    v21 = v20 | 0x100000000;
  }

  else
  {
    v21 = 0;
  }

  v48 = v21;
  v49 = BYTE4(v21);
  v47[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v47[1] = v22;
  if (!v47[0] || !mlir::CallOpInterface::getArgOperands(v47))
  {
    return 1;
  }

  v46 = 0;
  if ((v21 & 0x100000000) == 0)
  {
LABEL_62:
    __p = &v48;
    v52 = &v50;
    v53 = &v46;
    v54 = v47;
    {
    }

    else
    {
      return 0;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v47);
  if (v21 < 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 + v21;
  if ((v25 & 0x80000000) == 0)
  {
    v26 = v25 & 0x7FFFFFFF;
    mlir::CallableOpInterface::getArgAttrsAttr(v47);
    if (v26 <= v27)
    {
      v46 = *(mlir::CallableOpInterface::getArgAttrsAttr(v47) + 8 * v26);
      goto LABEL_62;
    }
  }

  v45 = 259;
  mlir::OpState::emitOpError(&v50, v44, &__p);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  v28 = result;
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
    result = v28;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v28;
    }

    v29 = v58;
    if (v58)
    {
      v30 = v59;
      v31 = v58;
      if (v59 != v58)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = v58;
      }

      v59 = v29;
      operator delete(v31);
      result = v28;
    }

    v32 = v56;
    if (!v56)
    {
      goto LABEL_108;
    }

    v33 = v57;
    v34 = v56;
    if (v57 == v56)
    {
      goto LABEL_107;
    }

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
    goto LABEL_106;
  }

  return result;
}