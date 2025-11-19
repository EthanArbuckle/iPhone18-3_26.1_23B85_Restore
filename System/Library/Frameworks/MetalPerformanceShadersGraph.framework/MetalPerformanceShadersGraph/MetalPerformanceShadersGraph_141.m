uint64_t mlir::mps::DepthwiseConv3DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v220[8] = *MEMORY[0x1E69E9840];
  v194 = a4;
  v195 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = *(a7 + 4);
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v184 = a6;
  v185[0] = 0;
  v186 = 0;
  v187 = v14;
  v188 = v15;
  v189 = v16;
  v190 = a9;
  v17 = a5;
  v191 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v184);
    if (v186 == 1)
    {
      v186 = 0;
    }

    mlir::OperationName::OperationName(v185, "mps.depthwise_conv_3d", 21, Context);
    v186 = 1;
    v17 = v195;
  }

  v192 = a4;
  v193 = a5;
  if (v17 < 2 || (v19.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv3DOpAdaptor::verify(&v184, v19)))
  {
    v39 = mlir::Float32Type::get(this, a2);
LABEL_21:
    v40 = mlir::UnrankedTensorType::get(v39);
    goto LABEL_22;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v194, 0);
  v21 = mlir::ValueRange::dereference_iterator(&v194, 1);
  v22 = (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = v187;
  v25 = v188;
  v26 = v189;
  v209 = v22;
  v210 = v23;
  mlir::ValueRange::ValueRange(&v218, &v209, 2uLL);
  v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
  v179[0] = v28;
  v179[1] = v29;
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v23);
  v178[0] = v30;
  v178[1] = v31;
  if (!v28 || (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v32 = v30 == 0) : (v32 = 1), v32 || *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
    v39 = v27;
    goto LABEL_21;
  }

  v177 = v27;
  v215 = v217;
  v216 = 0x500000000;
  v212 = v214;
  v213 = 0x500000000;
  v209 = v211;
  v210 = 0x600000000;
  v206 = v208;
  v207 = 0x300000000;
  v203 = v205;
  v204 = 0x300000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v179);
  v35 = v34;
  v182 = *(&v24 + 1);
  v183 = v26;
  v180 = v24;
  v181 = v25;
  if (v24)
  {
    Int = mlir::IntegerAttr::getInt(&v180);
    v37 = v210;
    v38 = v210 > 6;
    if (v210 == 6)
    {
      goto LABEL_31;
    }
  }

  else
  {
    Int = -4;
    v37 = v210;
    v38 = v210 > 6;
    if (v210 == 6)
    {
      goto LABEL_31;
    }
  }

  if (!v38)
  {
    if (HIDWORD(v210) > 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v209, v211, 6uLL, 8), v37 = v210, v210 != 6))
    {
      bzero(v209 + 8 * v37, 48 - 8 * v37);
    }
  }

  LODWORD(v210) = 6;
LABEL_31:
  v43 = v207;
  if (v207 == 3)
  {
    v44 = v204;
    v45 = v204 > 3;
    if (v204 == 3)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v207 <= 3)
    {
      v52 = v207;
      v53 = v207;
      if (HIDWORD(v207) <= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v206, v208, 3uLL, 8);
        v52 = v207;
        v53 = v207;
      }

      memset_pattern16(v206 + 8 * v52, &unk_1E096FAE0, 24 - 8 * v43);
      v51 = v53 - v43 + 3;
    }

    else
    {
      v51 = 3;
    }

    LODWORD(v207) = v51;
    v44 = v204;
    v45 = v204 > 3;
    if (v204 == 3)
    {
LABEL_33:
      v46 = v216;
      v47 = v216 > 5;
      if (v216 == 5)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }
  }

  if (v45)
  {
    v54 = 3;
  }

  else
  {
    v55 = v44;
    v56 = v44;
    if (HIDWORD(v204) <= 2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v203, v205, 3uLL, 8);
      v55 = v204;
      v56 = v204;
    }

    memset_pattern16(v203 + 8 * v55, &unk_1E096FAE0, 24 - 8 * v44);
    v54 = v56 - v44 + 3;
  }

  LODWORD(v204) = v54;
  v46 = v216;
  v47 = v216 > 5;
  if (v216 == 5)
  {
LABEL_34:
    v48 = v213;
    v49 = v213 > 5;
    if (v213 == 5)
    {
      goto LABEL_35;
    }

    goto LABEL_55;
  }

LABEL_50:
  if (!v47)
  {
    if (HIDWORD(v216) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v217, 5uLL, 8), v46 = v216, v216 != 5))
    {
      bzero(&v215[8 * v46], 40 - 8 * v46);
    }
  }

  LODWORD(v216) = 5;
  v48 = v213;
  v49 = v213 > 5;
  if (v213 == 5)
  {
LABEL_35:
    v50 = v35 - 4;
    if (v35 < 4)
    {
      goto LABEL_95;
    }

LABEL_60:
    v57 = (v35 & (Int >> 63)) + Int;
    if (v57 <= v50)
    {
      v58 = v50;
    }

    else
    {
      v58 = (v35 & (Int >> 63)) + Int;
    }

    if (v57 >= v35)
    {
      v59 = v50;
    }

    else
    {
      v59 = v58;
    }

    v60 = v35 - 4;
    if (v35 != 4)
    {
      if (v35 == 5)
      {
        goto LABEL_74;
      }

      if (v35 <= HIDWORD(v213))
      {
        v61 = 5;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v212, v214, v35, 8);
        v61 = v213;
      }

      if (v35 != v61)
      {
        bzero(v212 + 8 * v61, 8 * (v35 - v61));
      }
    }

    LODWORD(v213) = v35;
LABEL_74:
    v62 = v212;
    v63 = v35 & 0x7FFFFFFFFFFFFFFCLL;
    v64 = vdupq_n_s64(v59);
    v65 = vdupq_n_s64(v60);
    v66 = xmmword_1E09700F0;
    v67 = (v212 + 16);
    v68 = vdupq_n_s64(2uLL);
    v69 = vdupq_n_s64(1uLL);
    v70 = vdupq_n_s64(3uLL);
    v71 = vdupq_n_s64(4uLL);
    v72 = v35 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v73 = vaddq_s64(v66, v68);
      v67[-1] = vbslq_s8(vorrq_s8(vcgtq_s64(v66, v64), vcgtq_s64(v65, v66)), v66, vbslq_s8(vcgtq_s64(v64, v66), vaddq_s64(v66, v69), v65));
      *v67 = vbslq_s8(vorrq_s8(vcgtq_s64(v73, v64), vcgtq_s64(v65, v73)), v73, vbslq_s8(vcgtq_s64(v64, v73), vaddq_s64(v66, v70), v65));
      v66 = vaddq_s64(v66, v71);
      v67 += 2;
      v72 -= 4;
    }

    while (v72);
    for (; v35 != v63; ++v63)
    {
      if (v63 < v59)
      {
        v74 = v63 + 1;
      }

      else
      {
        v74 = v35 - 4;
      }

      if (v63 < v60 || v63 > v59)
      {
        v74 = v63;
      }

      v62[v63] = v74;
    }

    v76 = v216;
    if (v35 != v216)
    {
      if (v35 >= v216)
      {
        if (v35 > HIDWORD(v216))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v215, v217, v35, 8);
          v76 = v216;
        }

        if (v35 != v76)
        {
          bzero(&v215[8 * v76], 8 * (v35 - v76));
        }
      }

      LODWORD(v216) = v35;
    }

    v77 = v212;
    v78 = v215;
    v79 = v35;
    do
    {
      v81 = *ArgAttrsAttr++;
      v80 = v81;
      v82 = *v77++;
      v78[v82] = v80;
      --v79;
    }

    while (v79);
    goto LABEL_95;
  }

LABEL_55:
  if (!v49)
  {
    if (HIDWORD(v213) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v212, v214, 5uLL, 8), v48 = v213, v213 != 5))
    {
      bzero(v212 + 8 * v48, 40 - 8 * v48);
    }
  }

  LODWORD(v213) = 5;
  v50 = v35 - 4;
  if (v35 >= 4)
  {
    goto LABEL_60;
  }

LABEL_95:
  if (v183 && mlir::DenseElementsAttr::getNumElements(&v183) == 3)
  {
    LODWORD(v207) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v218, v183, 0);
    v83 = v183;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v183);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v196, v83, NumElements);
    for (i = v220[0]; i != v198[0]; i = ++v220[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v218, &__p);
      if (v200 > 0x40)
      {
        v86 = *__p;
      }

      else if (v200)
      {
        v86 = (__p << -v200) >> -v200;
      }

      else
      {
        v86 = 0;
      }

      v87 = v207;
      if (v207 >= HIDWORD(v207))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v206, v208, v207 + 1, 8);
        v87 = v207;
      }

      *(v206 + v87) = v86;
      LODWORD(v207) = v207 + 1;
      if (v200 >= 0x41)
      {
        if (__p)
        {
          operator delete[](__p);
        }
      }
    }
  }

  if (*(&v24 + 1) && mlir::DenseElementsAttr::getNumElements(&v182) == 3)
  {
    LODWORD(v204) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v218, v182, 0);
    v88 = v182;
    v89 = mlir::DenseElementsAttr::getNumElements(&v182);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v196, v88, v89);
    for (j = v220[0]; j != v198[0]; j = ++v220[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v218, &__p);
      if (v200 > 0x40)
      {
        v91 = *__p;
      }

      else if (v200)
      {
        v91 = (__p << -v200) >> -v200;
      }

      else
      {
        v91 = 0;
      }

      v92 = v204;
      if (v204 >= HIDWORD(v204))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v203, v205, v204 + 1, 8);
        v92 = v204;
      }

      *(v203 + v92) = v91;
      LODWORD(v204) = v204 + 1;
      if (v200 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }

  if (v25 && mlir::DenseElementsAttr::getNumElements(&v181) == 6)
  {
    LODWORD(v210) = 0;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v218, v181, 0);
    v93 = v181;
    v94 = mlir::DenseElementsAttr::getNumElements(&v181);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v196, v93, v94);
    for (k = v220[0]; k != v198[0]; k = ++v220[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v218, &__p);
      if (v200 > 0x40)
      {
        v96 = *__p;
      }

      else if (v200)
      {
        v96 = (__p << -v200) >> -v200;
      }

      else
      {
        v96 = 0;
      }

      v97 = v210;
      if (v210 >= HIDWORD(v210))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v209, v211, v210 + 1, 8);
        v97 = v210;
      }

      *(v209 + v97) = v96;
      LODWORD(v210) = v210 + 1;
      if (v200 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }
  }

  if (*(&v25 + 1))
  {
    v98 = *(*(&v25 + 1) + 8);
  }

  else
  {
    v98 = 2;
  }

  v99 = mlir::CallableOpInterface::getArgAttrsAttr(v178);
  __p = &v201;
  v201 = 0u;
  v202 = 0u;
  v200 = 0x400000004;
  if (Int >= 0)
  {
    v101 = v35;
  }

  else
  {
    v101 = 0;
  }

  if (v100 == 4)
  {
    v102 = Int - v101 + 4;
    if (v102 <= 3)
    {
      *&v201 = *(v99 + 8 * v102);
      if (v102)
      {
        v103 = -1;
      }

      else
      {
        v103 = 0;
      }

      *(&v201 + 1) = *(v99 + 8 * v103 + 8);
      if (v102 <= 1)
      {
        v104 = 0;
      }

      else
      {
        v104 = -1;
      }

      *&v202 = *(v99 + 8 * v104 + 16);
      if (v102 <= 2)
      {
        v105 = 0;
      }

      else
      {
        v105 = -1;
      }

      *(&v202 + 1) = *(v99 + 8 * v105 + 24);
    }
  }

  v196 = v198;
  v197 = 0x500000000;
  v106 = v216;
  v218 = v220;
  v219 = 0x800000000;
  if (!v216)
  {
    v109 = -4;
    v110 = v215;
    v108 = v220;
LABEL_166:
    v111 = 0;
    if (v109 < 4 || (v108 - v110) <= 0x1F)
    {
      goto LABEL_171;
    }

    v112 = 0;
    v111 = v109 & 0xFFFFFFFFFFFFFFFCLL;
    v113 = v109 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v114 = *&v110[v112 + 16];
      v115 = &v108[v112];
      *v115 = *&v110[v112];
      *(v115 + 1) = v114;
      v112 += 32;
      v113 -= 4;
    }

    while (v113);
    while (v109 != v111)
    {
LABEL_171:
      *&v108[8 * v111] = *&v110[8 * v111];
      ++v111;
    }

    goto LABEL_172;
  }

  if (v216 < 9)
  {
    v107 = 0;
    v108 = v220;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v218, v220, v216, 8);
    v107 = v219;
    v108 = v218;
  }

  if (v106 != v107)
  {
    bzero(&v108[8 * v107], 8 * (v106 - v107));
  }

  LODWORD(v219) = v106;
  v110 = v215;
  v109 = v106 - 4;
  if (v106 != 4)
  {
    goto LABEL_166;
  }

LABEL_172:
  v117 = v106 - 3;
  v118 = __p;
  *&v108[8 * v109] = *__p;
  v119 = v206;
  if (v98 == 2 || v98 == 4)
  {
    v120 = *&v110[8 * v117];
    if (*v206 <= 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = *v206;
    }

    v122 = *&v110[8 * v117];
    if (*v206 >= 2)
    {
      v122 = 0x8000000000000000;
      if (v120 != 0x8000000000000000)
      {
        v122 = v120 / v121;
        v123 = v120 / v121 * v121;
        if (v120 >= 0 && v123 != v120)
        {
          ++v122;
        }
      }
    }

    *&v108[8 * v117] = v122;
    v125 = *&v110[8 * v106 - 16];
    v126 = v119[1];
    if (v126 <= 1)
    {
      v127 = 1;
    }

    else
    {
      v127 = v119[1];
    }

    v128 = *&v110[8 * v106 - 16];
    if (v126 >= 2)
    {
      v128 = 0x8000000000000000;
      if (v125 != 0x8000000000000000)
      {
        v128 = v125 / v127;
        v129 = v125 / v127 * v127;
        if (v125 >= 0 && v129 != v125)
        {
          ++v128;
        }
      }
    }

    *&v108[8 * v106 - 16] = v128;
    v131 = v106 - 1;
    v132 = *&v110[8 * v106 - 8];
    v133 = v119[2];
    if (v133 <= 1)
    {
      v134 = 1;
    }

    else
    {
      v134 = v133;
    }

    if (v133 >= 2)
    {
      if (v132 == 0x8000000000000000)
      {
        v132 = 0x8000000000000000;
      }

      else
      {
        v168 = v132 / v134;
        v169 = v132 / v134 * v134;
        if (v132 < 0 || v169 == v132)
        {
          v132 = v168;
        }

        else
        {
          v132 = v168 + 1;
        }
      }
    }
  }

  else
  {
    v135 = v203;
    v136 = *&v110[8 * v117];
    v137 = v209;
    v138 = v118[1];
    v139 = 0x8000000000000000;
    v140 = v138 == 0x8000000000000000 || v136 == 0x8000000000000000;
    v141 = 0x8000000000000000;
    if (!v140)
    {
      v142 = *(v209 + 1) & ~(*(v209 + 1) >> 63);
      v143 = *v209 & ~(*v209 >> 63);
      v144 = *v203;
      if (*v203 <= 1)
      {
        v144 = 1;
      }

      v145 = *v206;
      if (*v206 <= 1)
      {
        v145 = 1;
      }

      if (v98 == 1)
      {
        v142 = 0;
        v143 = 0;
      }

      v146 = v142 + v136 + v143 + v145 + ~(v144 * (v138 - 1));
      v147 = v146 / v145;
      if (v146 / v145 * v145 == v146)
      {
        v148 = 0;
      }

      else
      {
        v148 = v146 >> 63;
      }

      v141 = (v148 + v147) & ~((v148 + v147) >> 63);
    }

    *&v108[8 * v117] = v141;
    v149 = *&v110[8 * v106 - 16];
    v150 = v118[2];
    if (v150 != 0x8000000000000000 && v149 != 0x8000000000000000)
    {
      v152 = v137[3] & ~(v137[3] >> 63);
      v153 = v137[2] & ~(v137[2] >> 63);
      v154 = v135[1];
      if (v154 <= 1)
      {
        v154 = 1;
      }

      v155 = v119[1];
      if (v155 <= 1)
      {
        v155 = 1;
      }

      if (v98 == 1)
      {
        v152 = 0;
        v153 = 0;
      }

      v156 = v152 + v149 + v153 + v155 + ~(v154 * (v150 - 1));
      v157 = v156 / v155;
      if (v156 / v155 * v155 == v156)
      {
        v158 = 0;
      }

      else
      {
        v158 = v156 >> 63;
      }

      v139 = (v158 + v157) & ~((v158 + v157) >> 63);
    }

    *&v108[8 * v106 - 16] = v139;
    v131 = v106 - 1;
    v159 = v118[3];
    v132 = 0x8000000000000000;
    if (v159 != 0x8000000000000000)
    {
      v160 = *&v110[8 * v131];
      if (v160 != 0x8000000000000000)
      {
        v161 = v137[5] & ~(v137[5] >> 63);
        v162 = v137[4] & ~(v137[4] >> 63);
        v163 = v135[2];
        if (v163 <= 1)
        {
          v163 = 1;
        }

        v164 = v119[2];
        if (v164 <= 1)
        {
          v164 = 1;
        }

        if (v98 == 1)
        {
          v161 = 0;
          v162 = 0;
        }

        v165 = v161 + v160 + v162 + v164 + ~(v163 * (v159 - 1));
        v166 = v165 / v164;
        if (v165 / v164 * v164 == v165)
        {
          v167 = 0;
        }

        else
        {
          v167 = v165 >> 63;
        }

        v132 = (v167 + v166) & ~((v167 + v166) >> 63);
      }
    }
  }

  *&v108[8 * v131] = v132;
  v171 = v197;
  if (v197 != v106)
  {
    if (v197 <= v106)
    {
      if (HIDWORD(v197) < v106)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v196, v198, v106, 8);
        v171 = v197;
      }

      if (v171 != v106)
      {
        bzero(v196 + 8 * v171, 8 * (v106 - v171));
      }
    }

    LODWORD(v197) = v106;
    v108 = v218;
  }

  if (v106)
  {
    v172 = v212;
    v173 = v196;
    v174 = v106;
    do
    {
      v175 = *v172++;
      *v173++ = *&v108[8 * v175];
      --v174;
    }

    while (v174);
  }

  if (v108 != v220)
  {
    free(v108);
    v106 = v197;
  }

  v40 = mlir::RankedTensorType::get(v196, v106, v177, 0);
  v176 = v40;
  if (v196 != v198)
  {
    free(v196);
    v40 = v176;
  }

  if (__p != &v201)
  {
    free(__p);
    v40 = v176;
  }

  if (v203 != v205)
  {
    free(v203);
    v40 = v176;
  }

  if (v206 != v208)
  {
    free(v206);
    v40 = v176;
  }

  if (v209 != v211)
  {
    free(v209);
    v40 = v176;
  }

  if (v212 != v214)
  {
    free(v212);
    v40 = v176;
  }

  if (v215 != v217)
  {
    free(v215);
    v40 = v176;
  }

LABEL_22:
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    v116 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v41 + 1, 8);
    v40 = v116;
    v41 = *(a11 + 8);
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::DepthwiseConv3DOpAdaptor::verify(mlir::mps::DepthwiseConv3DOpAdaptor *this, Location a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v58 = *(this + 4);
  if (!v58)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v67;
      v22 = __p;
      if (v67 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v67 = v20;
      operator delete(v22);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

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
LABEL_85:
      v25 = v64;
LABEL_86:
      v65 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v19;
  }

  v54 = *(this + 5);
  if (!v54)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v23 = v64;
    if (v64)
    {
      v31 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!*(this + 6))
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'padding_style'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v67;
      v36 = __p;
      if (v67 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v67 = v34;
      operator delete(v36);
    }

    v23 = v64;
    if (v64)
    {
      v37 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          operator delete[](v38);
        }
      }

      while (v37 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v53 = *(this + 7);
  if (!v53)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'strides'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v23 = v64;
    if (v64)
    {
      v43 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

      do
      {
        v45 = *--v43;
        v44 = v45;
        *v43 = 0;
        if (v45)
        {
          operator delete[](v44);
        }
      }

      while (v43 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
  v56 = v4;
  Type = mlir::ElementsAttr::getType(&v55);
  v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
  v61 = v5;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  v59 = 3;
  if (v7 == 1 && *ArgAttrsAttr == v59)
  {
    v48 = v53;
    Value = mlir::ArrayAttr::getValue(&v48);
    v50 = v8;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v58);
      v56 = v9;
      Type = mlir::ElementsAttr::getType(&v55);
      v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
      v61 = v10;
      v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
      v59 = 3;
      if (v12 == 1 && *v11 == v59 && (v48 = v58, Value = mlir::ArrayAttr::getValue(&v48), v50 = v13, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
        v56 = v14;
        Type = mlir::ElementsAttr::getType(&v55);
        v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
        v61 = v15;
        v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
        v59 = 6;
        if (v17 == 1 && *v16 == v59 && (v48 = v54, Value = mlir::ArrayAttr::getValue(&v48), v50 = v18, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          if (!v3)
          {
            return 1;
          }

          v55 = v3;
          v60 = mlir::AffineMapAttr::getValue(&v55);
          if (mlir::Type::isSignedInteger(&v60, 32))
          {
            return 1;
          }

          v47 = "'mps.depthwise_conv_3d' op attribute 'channelAxis' failed to satisfy constraint: 32-bit signed integer attribute";
        }

        else
        {
          v47 = "'mps.depthwise_conv_3d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        }
      }

      else
      {
        v47 = "'mps.depthwise_conv_3d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      }

      v55 = v47;
      v57 = 259;
      mlir::emitError(a2.var0.var0, &v55, &v60);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      return v19;
    }
  }

  v55 = "'mps.depthwise_conv_3d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v57 = 259;
  mlir::emitError(a2.var0.var0, &v55, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::verify(mlir::mps::DepthwiseConv3DDataGradientOp *this)
{
  v273 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 72);
  v4 = v3[3];
  v5 = v3[7];
  if (*(*this + 68) == 2)
  {
    v6 = 0;
    v252 = v2[14];
    v253 = v2;
    v7 = v2[11];
    v250 = v2[12];
    v251 = v7;
    if (v252)
    {
LABEL_3:
      if (mlir::DenseElementsAttr::getNumElements(&v252) != 3 || (mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v240, v252, 0), v1 = v252, NumElements = mlir::DenseElementsAttr::getNumElements(&v252), mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v247, v1, NumElements), v242 == v249))
      {
LABEL_5:
        if (!v251)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }

      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v240, &v245);
        if (v246 > 0x40)
        {
          if (*v245 <= 0)
          {
            goto LABEL_98;
          }
        }

        else if (!v246 || (v245 << -v246) >> -v246 <= 0)
        {
LABEL_98:
          v260 = 259;
          mlir::OpState::emitOpError(&v253, &v257, &__p);
          if (v246 > 0x40)
          {
            v79 = *v245;
            if (!__p)
            {
              goto LABEL_114;
            }
          }

          else
          {
            if (v246)
            {
              v79 = (v245 << -v246) >> -v246;
            }

            else
            {
              v79 = 0;
            }

            if (!__p)
            {
              goto LABEL_114;
            }
          }

          LODWORD(v254) = 2;
          v255 = v79;
          v81 = v263;
          if (v264 >= v265)
          {
            if (v263 <= &v254 && v263 + 24 * v264 > &v254)
            {
              v98 = &v254 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
              v81 = v263;
              v82 = v263 + v98;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
              v82 = &v254;
              v81 = v263;
            }
          }

          else
          {
            v82 = &v254;
          }

          v83 = &v81[24 * v264];
          v84 = *v82;
          *(v83 + 2) = *(v82 + 2);
          *v83 = v84;
          v85 = ++v264;
          if (__p)
          {
            LODWORD(v254) = 3;
            v255 = ", all values should be positive.";
            v256 = 32;
            v86 = v263;
            if (v85 >= v265)
            {
              if (v263 <= &v254 && v263 + 24 * v85 > &v254)
              {
                v99 = &v254 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v85 + 1, 24);
                v86 = v263;
                v87 = v263 + v99;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v85 + 1, 24);
                v87 = &v254;
                v86 = v263;
              }
            }

            else
            {
              v87 = &v254;
            }

            v88 = &v86[24 * v264];
            v89 = *v87;
            *(v88 + 2) = *(v87 + 2);
            *v88 = v89;
            ++v264;
          }

LABEL_114:
          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
          if (__p)
          {
            mlir::InFlightDiagnostic::report(&__p);
          }

          if (v272 == 1)
          {
            if (v271 != &v272)
            {
              free(v271);
            }

            v90 = v269;
            if (v269)
            {
              v91 = v270;
              v92 = v269;
              if (v270 != v269)
              {
                do
                {
                  v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
                }

                while (v91 != v90);
                v92 = v269;
              }

              v270 = v90;
              operator delete(v92);
            }

            v93 = v267;
            if (v267)
            {
              v94 = v268;
              v95 = v267;
              if (v268 != v267)
              {
                do
                {
                  v97 = *--v94;
                  v96 = v97;
                  *v94 = 0;
                  if (v97)
                  {
                    operator delete[](v96);
                  }
                }

                while (v94 != v93);
                v95 = v267;
              }

              v268 = v93;
              operator delete(v95);
            }

            if (v263 != v266)
            {
              free(v263);
            }
          }

          v80 = 0;
          if (v246 < 0x41)
          {
            goto LABEL_137;
          }

LABEL_135:
          if (v245)
          {
            operator delete[](v245);
          }

          goto LABEL_137;
        }

        v80 = 1;
        if (v246 >= 0x41)
        {
          goto LABEL_135;
        }

LABEL_137:
        if (!v80)
        {
          return v1;
        }

        if (++v242 == v249)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    v6 = v3[11];
    v252 = v2[14];
    v253 = v2;
    v9 = v2[11];
    v250 = v2[12];
    v251 = v9;
    if (v252)
    {
      goto LABEL_3;
    }
  }

  if (!v251)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (mlir::DenseElementsAttr::getNumElements(&v251) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v240, v251, 0);
    v10 = v251;
    v11 = mlir::DenseElementsAttr::getNumElements(&v251);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v247, v10, v11);
    while (v242 != v249)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v240, &v245);
      if (v246 > 0x40)
      {
        if (*v245 <= 0)
        {
          goto LABEL_151;
        }
      }

      else if (!v246 || (v245 << -v246) >> -v246 <= 0)
      {
LABEL_151:
        v260 = 259;
        mlir::OpState::emitOpError(&v253, &v257, &__p);
        if (v246 > 0x40)
        {
          v100 = *v245;
          if (!__p)
          {
            goto LABEL_167;
          }
        }

        else
        {
          if (v246)
          {
            v100 = (v245 << -v246) >> -v246;
          }

          else
          {
            v100 = 0;
          }

          if (!__p)
          {
            goto LABEL_167;
          }
        }

        LODWORD(v254) = 2;
        v255 = v100;
        v102 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v254 && v263 + 24 * v264 > &v254)
          {
            v119 = &v254 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v102 = v263;
            v103 = v263 + v119;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v103 = &v254;
            v102 = v263;
          }
        }

        else
        {
          v103 = &v254;
        }

        v104 = &v102[24 * v264];
        v105 = *v103;
        *(v104 + 2) = *(v103 + 2);
        *v104 = v105;
        v106 = ++v264;
        if (__p)
        {
          LODWORD(v254) = 3;
          v255 = ", all values should be positive.";
          v256 = 32;
          v107 = v263;
          if (v106 >= v265)
          {
            if (v263 <= &v254 && v263 + 24 * v106 > &v254)
            {
              v120 = &v254 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v106 + 1, 24);
              v107 = v263;
              v108 = v263 + v120;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v106 + 1, 24);
              v108 = &v254;
              v107 = v263;
            }
          }

          else
          {
            v108 = &v254;
          }

          v109 = &v107[24 * v264];
          v110 = *v108;
          *(v109 + 2) = *(v108 + 2);
          *v109 = v110;
          ++v264;
        }

LABEL_167:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v272 == 1)
        {
          if (v271 != &v272)
          {
            free(v271);
          }

          v111 = v269;
          if (v269)
          {
            v112 = v270;
            v113 = v269;
            if (v270 != v269)
            {
              do
              {
                v112 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v112 - 1);
              }

              while (v112 != v111);
              v113 = v269;
            }

            v270 = v111;
            operator delete(v113);
          }

          v114 = v267;
          if (v267)
          {
            v115 = v268;
            v116 = v267;
            if (v268 != v267)
            {
              do
              {
                v118 = *--v115;
                v117 = v118;
                *v115 = 0;
                if (v118)
                {
                  operator delete[](v117);
                }
              }

              while (v115 != v114);
              v116 = v267;
            }

            v268 = v114;
            operator delete(v116);
          }

          if (v263 != v266)
          {
            free(v263);
          }
        }

        v101 = 0;
        if (v246 < 0x41)
        {
          goto LABEL_190;
        }

LABEL_188:
        if (v245)
        {
          operator delete[](v245);
        }

        goto LABEL_190;
      }

      v101 = 1;
      if (v246 >= 0x41)
      {
        goto LABEL_188;
      }

LABEL_190:
      if (!v101)
      {
        return v1;
      }

      ++v242;
    }
  }

LABEL_11:
  if (v250)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v250) == 6)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v240, v250, 0);
      v12 = v250;
      v13 = mlir::DenseElementsAttr::getNumElements(&v250);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v247, v12, v13);
      if (v242 != v249)
      {
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v240, &v245);
          if (v246 > 0x40)
          {
            break;
          }

          if (v246)
          {
            v122 = (v245 << -v246) >> -v246;
            if (v122 < 0)
            {
              goto LABEL_207;
            }

LABEL_214:
            if (v246 >= 0x41)
            {
LABEL_244:
              if (v245)
              {
                operator delete[](v245);
              }
            }

LABEL_202:
            if (v122 < 0)
            {
              return v1;
            }
          }

          if (++v242 == v249)
          {
            goto LABEL_14;
          }
        }

        v122 = *v245;
        if ((*v245 & 0x8000000000000000) == 0)
        {
          goto LABEL_214;
        }

LABEL_207:
        v257 = v121;
        v260 = 259;
        mlir::OpState::emitOpError(&v253, &v257, &__p);
        if (v246 > 0x40)
        {
          v123 = *v245;
          if (!__p)
          {
            goto LABEL_223;
          }
        }

        else
        {
          if (v246)
          {
            v123 = (v245 << -v246) >> -v246;
          }

          else
          {
            v123 = 0;
          }

          if (!__p)
          {
            goto LABEL_223;
          }
        }

        LODWORD(v254) = 2;
        v255 = v123;
        v124 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v254 && v263 + 24 * v264 > &v254)
          {
            v143 = &v254 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v124 = v263;
            v125 = v263 + v143;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v125 = &v254;
            v124 = v263;
          }
        }

        else
        {
          v125 = &v254;
        }

        v126 = &v124[24 * v264];
        v127 = *v125;
        *(v126 + 2) = *(v125 + 2);
        *v126 = v127;
        v128 = ++v264;
        if (__p)
        {
          LODWORD(v254) = 3;
          v255 = ", all values should be non-negative.";
          v256 = 36;
          v129 = v263;
          if (v128 >= v265)
          {
            if (v263 <= &v254 && v263 + 24 * v128 > &v254)
            {
              v144 = &v254 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v128 + 1, 24);
              v129 = v263;
              v130 = v263 + v144;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v128 + 1, 24);
              v130 = &v254;
              v129 = v263;
            }
          }

          else
          {
            v130 = &v254;
          }

          v131 = &v129[24 * v264];
          v132 = *v130;
          *(v131 + 2) = *(v130 + 2);
          *v131 = v132;
          ++v264;
        }

LABEL_223:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v272 == 1)
        {
          if (v271 != &v272)
          {
            free(v271);
          }

          v133 = v121;
          v134 = v269;
          if (v269)
          {
            v135 = v270;
            v136 = v269;
            if (v270 != v269)
            {
              do
              {
                v135 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v135 - 1);
              }

              while (v135 != v134);
              v136 = v269;
            }

            v270 = v134;
            operator delete(v136);
          }

          v137 = v267;
          if (v267)
          {
            v138 = v6;
            v139 = v268;
            v140 = v267;
            if (v268 != v267)
            {
              do
              {
                v142 = *--v139;
                v141 = v142;
                *v139 = 0;
                if (v142)
                {
                  operator delete[](v141);
                }
              }

              while (v139 != v137);
              v140 = v267;
            }

            v268 = v137;
            operator delete(v140);
            v6 = v138;
          }

          v121 = v133;
          if (v263 != v266)
          {
            free(v263);
          }
        }

        if (v246 >= 0x41)
        {
          goto LABEL_244;
        }

        goto LABEL_202;
      }
    }
  }

LABEL_14:
  v257 = v253[2 * ((*(v253 + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v257, &__p);
  if (v262[0] > 0x40)
  {
    v14 = *__p;
    operator delete[](__p);
    v254 = 0;
    if (!v4)
    {
LABEL_44:
      v245 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    if (v262[0])
    {
      v14 = (__p << -LOBYTE(v262[0])) >> -LOBYTE(v262[0]);
    }

    else
    {
      LODWORD(v14) = 0;
    }

    v254 = 0;
    if (!v4)
    {
      goto LABEL_44;
    }
  }

  v15 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = *(*v15 + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = 0;
  }

  v245 = v15;
  if (v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    mlir::ArrayAttr::getValue(&v245);
    v18 = v17;
    if (v17 <= 3)
    {
      v260 = 259;
      mlir::OpState::emitOpError(&v253, &v257, &__p);
      if (__p)
      {
        LODWORD(v240) = 2;
        v241 = v18;
        v19 = &v240;
        v20 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v240 && v263 + 24 * v264 > &v240)
          {
            v223 = &v240 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v20 = v263;
            v19 = (v263 + v223);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v19 = &v240;
            v20 = v263;
          }
        }

        v21 = &v20[24 * v264];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        v23 = ++v264;
        if (__p)
        {
          LODWORD(v240) = 3;
          v241 = ".";
          v242 = 1;
          v24 = &v240;
          v25 = v263;
          if (v23 >= v265)
          {
            if (v263 <= &v240 && v263 + 24 * v23 > &v240)
            {
              v228 = &v240 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v23 + 1, 24);
              v25 = v263;
              v24 = (v263 + v228);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v23 + 1, 24);
              v24 = &v240;
              v25 = v263;
            }
          }

          v26 = &v25[24 * v264];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v264;
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v272 != 1)
      {
        return v1;
      }

      if (v271 != &v272)
      {
        free(v271);
      }

      v28 = v269;
      if (v269)
      {
        v29 = v270;
        v30 = v269;
        if (v270 != v269)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v269;
        }

        v270 = v28;
        operator delete(v30);
      }

      v31 = v267;
      if (!v267)
      {
        goto LABEL_338;
      }

      v32 = v268;
      v33 = v267;
      if (v268 == v267)
      {
        goto LABEL_337;
      }

      do
      {
        v76 = *--v32;
        v75 = v76;
        *v32 = 0;
        if (v76)
        {
          operator delete[](v75);
        }
      }

      while (v32 != v31);
      goto LABEL_336;
    }

    if (v14 >= 0)
    {
      v195 = v17;
    }

    else
    {
      v195 = 0;
    }

    if ((v14 - v195) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v260 = 259;
      mlir::OpState::emitOpError(&v253, &v257, &__p);
      if (__p)
      {
        LODWORD(v240) = 2;
        v241 = v14;
        v196 = &v240;
        v197 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v240 && v263 + 24 * v264 > &v240)
          {
            v230 = &v240 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v197 = v263;
            v196 = (v263 + v230);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v196 = &v240;
            v197 = v263;
          }
        }

        v198 = &v197[24 * v264];
        v199 = *v196;
        *(v198 + 2) = v196[2];
        *v198 = v199;
        v200 = ++v264;
        if (__p)
        {
          LODWORD(v240) = 3;
          v241 = " for input gradient rank ";
          v242 = 25;
          v201 = &v240;
          v202 = v263;
          if (v200 >= v265)
          {
            if (v263 <= &v240 && v263 + 24 * v200 > &v240)
            {
              v234 = &v240 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v200 + 1, 24);
              v202 = v263;
              v201 = (v263 + v234);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v200 + 1, 24);
              v201 = &v240;
              v202 = v263;
            }
          }

          v203 = &v202[24 * v264];
          v204 = *v201;
          *(v203 + 2) = v201[2];
          *v203 = v204;
          v205 = ++v264;
          if (__p)
          {
            LODWORD(v240) = 2;
            v241 = v18;
            v206 = &v240;
            v207 = v263;
            if (v205 >= v265)
            {
              if (v263 <= &v240 && v263 + 24 * v205 > &v240)
              {
                v237 = &v240 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v205 + 1, 24);
                v207 = v263;
                v206 = (v263 + v237);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v205 + 1, 24);
                v206 = &v240;
                v207 = v263;
              }
            }

            v208 = &v207[24 * v264];
            v209 = *v206;
            *(v208 + 2) = v206[2];
            *v208 = v209;
            v210 = ++v264;
            if (__p)
            {
              LODWORD(v240) = 3;
              v241 = ".";
              v242 = 1;
              v211 = &v240;
              v212 = v263;
              if (v210 >= v265)
              {
                if (v263 <= &v240 && v263 + 24 * v210 > &v240)
                {
                  v239 = &v240 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v210 + 1, 24);
                  v212 = v263;
                  v211 = (v263 + v239);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v210 + 1, 24);
                  v211 = &v240;
                  v212 = v263;
                }
              }

              v213 = &v212[24 * v264];
              v214 = *v211;
              *(v213 + 2) = v211[2];
              *v213 = v214;
              ++v264;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v272 != 1)
      {
        return v1;
      }

      if (v271 != &v272)
      {
        free(v271);
      }

      v215 = v269;
      if (v269)
      {
        v216 = v270;
        v217 = v269;
        if (v270 != v269)
        {
          do
          {
            v216 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v216 - 1);
          }

          while (v216 != v215);
          v217 = v269;
        }

        v270 = v215;
        operator delete(v217);
      }

      v31 = v267;
      if (!v267)
      {
        goto LABEL_338;
      }

      v218 = v268;
      v33 = v267;
      if (v268 == v267)
      {
        goto LABEL_337;
      }

      do
      {
        v220 = *--v218;
        v219 = v220;
        *v218 = 0;
        if (v220)
        {
          operator delete[](v219);
        }
      }

      while (v218 != v31);
LABEL_336:
      v33 = v267;
LABEL_337:
      v268 = v31;
      operator delete(v33);
      goto LABEL_338;
    }
  }

LABEL_45:
  if (!v5 || (v34 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v244 = 0;
    goto LABEL_70;
  }

  v35 = *(*v34 + 136);
  if (v35 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v34 = 0;
  }

  v244 = v34;
  if (v35 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (mlir::ArrayAttr::getValue(&v244), v36 == 4))
  {
LABEL_70:
    v257 = v259;
    v258 = 0x500000000;
    if ((mlir::matchConstantWithIntVector<long long>(v6, &v257) & 1) == 0)
    {
      goto LABEL_255;
    }

    if (v5)
    {
      if (!v254 || (v51 = v258, mlir::ArrayAttr::getValue(&v254), v52 == v51))
      {
        if (v245)
        {
          v53 = v258;
          mlir::ArrayAttr::getValue(&v245);
          if (v54 != v53)
          {
            v243 = 259;
            mlir::OpState::emitOpError(&v253, &v240, &__p);
            mlir::ArrayAttr::getValue(&v245);
            if (__p)
            {
              LODWORD(v247) = 5;
              v248 = v55;
              v56 = &v247;
              v57 = v263;
              if (v264 >= v265)
              {
                if (v263 <= &v247 && v263 + 24 * v264 > &v247)
                {
                  v225 = &v247 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
                  v57 = v263;
                  v56 = v263 + v225;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
                  v56 = &v247;
                  v57 = v263;
                }
              }

              v58 = &v57[24 * v264];
              v59 = *v56;
              *(v58 + 2) = *(v56 + 2);
              *v58 = v59;
              v60 = ++v264;
              if (__p)
              {
                LODWORD(v247) = 3;
                v249 = 38;
                v61 = &v247;
                v62 = v263;
                if (v60 >= v265)
                {
                  if (v263 <= &v247 && v263 + 24 * v60 > &v247)
                  {
                    v231 = &v247 - v263;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v60 + 1, 24);
                    v62 = v263;
                    v61 = v263 + v231;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v60 + 1, 24);
                    v61 = &v247;
                    v62 = v263;
                  }
                }

                v63 = &v62[24 * v264];
                v64 = *v61;
                *(v63 + 2) = *(v61 + 2);
                *v63 = v64;
                v65 = ++v264;
                if (__p)
                {
                  LODWORD(v247) = 5;
                  v248 = v258;
                  v66 = &v247;
                  v67 = v263;
                  if (v65 >= v265)
                  {
                    if (v263 <= &v247 && v263 + 24 * v65 > &v247)
                    {
                      v235 = &v247 - v263;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v65 + 1, 24);
                      v67 = v263;
                      v66 = v263 + v235;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v65 + 1, 24);
                      v66 = &v247;
                      v67 = v263;
                    }
                  }

                  v68 = &v67[24 * v264];
                  v69 = *v66;
                  *(v68 + 2) = *(v66 + 2);
                  *v68 = v69;
                  v70 = ++v264;
                  if (__p)
                  {
                    LODWORD(v247) = 3;
                    v248 = " values.";
                    v249 = 8;
                    v71 = &v247;
                    v72 = v263;
                    if (v70 >= v265)
                    {
                      if (v263 <= &v247 && v263 + 24 * v70 > &v247)
                      {
                        v238 = &v247 - v263;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v70 + 1, 24);
                        v72 = v263;
                        v71 = v263 + v238;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v70 + 1, 24);
                        v71 = &v247;
                        v72 = v263;
                      }
                    }

                    v73 = &v72[24 * v264];
                    v74 = *v71;
                    *(v73 + 2) = *(v71 + 2);
                    *v73 = v74;
                    ++v264;
                  }
                }
              }
            }

            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
            if (__p)
            {
              mlir::InFlightDiagnostic::report(&__p);
            }

            if (v272 == 1)
            {
              mlir::Diagnostic::~Diagnostic(v262);
            }

            goto LABEL_256;
          }
        }

LABEL_255:
        v1 = 1;
        goto LABEL_256;
      }

      v243 = 259;
      mlir::OpState::emitOpError(&v253, &v240, &__p);
      mlir::ArrayAttr::getValue(&v254);
      if (__p)
      {
        LODWORD(v247) = 5;
        v248 = v147;
        v148 = &v247;
        v149 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v247 && v263 + 24 * v264 > &v247)
          {
            v221 = &v247 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v149 = v263;
            v148 = v263 + v221;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v148 = &v247;
            v149 = v263;
          }
        }

        v150 = &v149[24 * v264];
        v151 = *v148;
        *(v150 + 2) = *(v148 + 2);
        *v150 = v151;
        v152 = ++v264;
        if (__p)
        {
          LODWORD(v247) = 3;
          v249 = 35;
          v153 = &v247;
          v154 = v263;
          if (v152 >= v265)
          {
            if (v263 <= &v247 && v263 + 24 * v152 > &v247)
            {
              v226 = &v247 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v152 + 1, 24);
              v154 = v263;
              v153 = v263 + v226;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v152 + 1, 24);
              v153 = &v247;
              v154 = v263;
            }
          }

          v155 = &v154[24 * v264];
          v156 = *v153;
          *(v155 + 2) = *(v153 + 2);
          *v155 = v156;
          v157 = ++v264;
          if (__p)
          {
            LODWORD(v247) = 5;
            v248 = v258;
            v158 = &v247;
            v159 = v263;
            if (v157 >= v265)
            {
              if (v263 <= &v247 && v263 + 24 * v157 > &v247)
              {
                v232 = &v247 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v157 + 1, 24);
                v159 = v263;
                v158 = v263 + v232;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v157 + 1, 24);
                v158 = &v247;
                v159 = v263;
              }
            }

            v160 = &v159[24 * v264];
            v161 = *v158;
            *(v160 + 2) = *(v158 + 2);
            *v160 = v161;
            v162 = ++v264;
            if (__p)
            {
              LODWORD(v247) = 3;
              v248 = " values.";
              v249 = 8;
              v163 = &v247;
              v164 = v263;
              if (v162 >= v265)
              {
                if (v263 <= &v247 && v263 + 24 * v162 > &v247)
                {
                  v236 = &v247 - v263;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v162 + 1, 24);
                  v164 = v263;
                  v163 = v263 + v236;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v162 + 1, 24);
                  v163 = &v247;
                  v164 = v263;
                }
              }

              v165 = &v164[24 * v264];
              v166 = *v163;
              *(v165 + 2) = *(v163 + 2);
              *v165 = v166;
              ++v264;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v272 == 1)
      {
        if (v271 != &v272)
        {
          free(v271);
        }

        v167 = v269;
        if (v269)
        {
          v168 = v270;
          v169 = v269;
          if (v270 != v269)
          {
            do
            {
              v168 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v168 - 1);
            }

            while (v168 != v167);
            v169 = v269;
          }

          v270 = v167;
          operator delete(v169);
        }

        v170 = v267;
        if (!v267)
        {
          goto LABEL_342;
        }

        v171 = v268;
        v172 = v267;
        if (v268 == v267)
        {
LABEL_341:
          v268 = v170;
          operator delete(v172);
LABEL_342:
          if (v263 != v266)
          {
            free(v263);
          }

          goto LABEL_256;
        }

        do
        {
          v174 = *--v171;
          v173 = v174;
          *v171 = 0;
          if (v174)
          {
            operator delete[](v173);
          }
        }

        while (v171 != v170);
LABEL_340:
        v172 = v267;
        goto LABEL_341;
      }
    }

    else
    {
      if (v258 == 4)
      {
        goto LABEL_255;
      }

      v243 = 259;
      mlir::OpState::emitOpError(&v253, &v240, &__p);
      if (__p)
      {
        LODWORD(v247) = 3;
        v249 = 21;
        v175 = &v247;
        v176 = v263;
        if (v264 >= v265)
        {
          if (v263 <= &v247 && v263 + 24 * v264 > &v247)
          {
            v222 = &v247 - v263;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v176 = v263;
            v175 = v263 + v222;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
            v175 = &v247;
            v176 = v263;
          }
        }

        v177 = &v176[24 * v264];
        v178 = *v175;
        *(v177 + 2) = *(v175 + 2);
        *v177 = v178;
        v179 = ++v264;
        if (__p)
        {
          LODWORD(v247) = 5;
          v248 = v258;
          v180 = &v247;
          v181 = v263;
          if (v179 >= v265)
          {
            if (v263 <= &v247 && v263 + 24 * v179 > &v247)
            {
              v227 = &v247 - v263;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v179 + 1, 24);
              v181 = v263;
              v180 = v263 + v227;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v179 + 1, 24);
              v180 = &v247;
              v181 = v263;
            }
          }

          v182 = &v181[24 * v264];
          v183 = *v180;
          *(v182 + 2) = *(v180 + 2);
          *v182 = v183;
          v184 = ++v264;
          if (__p)
          {
            LODWORD(v247) = 3;
            v248 = " values.";
            v249 = 8;
            v185 = &v247;
            v186 = v263;
            if (v184 >= v265)
            {
              if (v263 <= &v247 && v263 + 24 * v184 > &v247)
              {
                v233 = &v247 - v263;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v184 + 1, 24);
                v186 = v263;
                v185 = v263 + v233;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v184 + 1, 24);
                v185 = &v247;
                v186 = v263;
              }
            }

            v187 = &v186[24 * v264];
            v188 = *v185;
            *(v187 + 2) = *(v185 + 2);
            *v187 = v188;
            ++v264;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v272 == 1)
      {
        if (v271 != &v272)
        {
          free(v271);
        }

        v189 = v269;
        if (v269)
        {
          v190 = v270;
          v191 = v269;
          if (v270 != v269)
          {
            do
            {
              v190 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v190 - 1);
            }

            while (v190 != v189);
            v191 = v269;
          }

          v270 = v189;
          operator delete(v191);
        }

        v170 = v267;
        if (!v267)
        {
          goto LABEL_342;
        }

        v192 = v268;
        v172 = v267;
        if (v268 == v267)
        {
          goto LABEL_341;
        }

        do
        {
          v194 = *--v192;
          v193 = v194;
          *v192 = 0;
          if (v194)
          {
            operator delete[](v193);
          }
        }

        while (v192 != v170);
        goto LABEL_340;
      }
    }

LABEL_256:
    v145 = v257;
    if (v257 != v259)
    {
LABEL_257:
      free(v145);
      return v1;
    }

    return v1;
  }

  v260 = 259;
  mlir::OpState::emitOpError(&v253, &v257, &__p);
  mlir::ArrayAttr::getValue(&v244);
  if (__p)
  {
    LODWORD(v240) = 5;
    v241 = v37;
    v38 = &v240;
    v39 = v263;
    if (v264 >= v265)
    {
      if (v263 <= &v240 && v263 + 24 * v264 > &v240)
      {
        v224 = &v240 - v263;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
        v39 = v263;
        v38 = (v263 + v224);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v264 + 1, 24);
        v38 = &v240;
        v39 = v263;
      }
    }

    v40 = &v39[24 * v264];
    v41 = *v38;
    *(v40 + 2) = v38[2];
    *v40 = v41;
    v42 = ++v264;
    if (__p)
    {
      LODWORD(v240) = 3;
      v241 = ".";
      v242 = 1;
      v43 = &v240;
      v44 = v263;
      if (v42 >= v265)
      {
        if (v263 <= &v240 && v263 + 24 * v42 > &v240)
        {
          v229 = &v240 - v263;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v42 + 1, 24);
          v44 = v263;
          v43 = (v263 + v229);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v263, v266, v42 + 1, 24);
          v43 = &v240;
          v44 = v263;
        }
      }

      v45 = &v44[24 * v264];
      v46 = *v43;
      *(v45 + 2) = v43[2];
      *v45 = v46;
      ++v264;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v272 == 1)
  {
    if (v271 != &v272)
    {
      free(v271);
    }

    v47 = v269;
    if (v269)
    {
      v48 = v270;
      v49 = v269;
      if (v270 != v269)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = v269;
      }

      v270 = v47;
      operator delete(v49);
    }

    v31 = v267;
    if (v267)
    {
      v50 = v268;
      v33 = v267;
      if (v268 == v267)
      {
        goto LABEL_337;
      }

      do
      {
        v78 = *--v50;
        v77 = v78;
        *v50 = 0;
        if (v78)
        {
          operator delete[](v77);
        }
      }

      while (v50 != v31);
      goto LABEL_336;
    }

LABEL_338:
    v145 = v263;
    if (v263 == v266)
    {
      return v1;
    }

    goto LABEL_257;
  }

  return v1;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v218[8] = *MEMORY[0x1E69E9840];
  v189 = a4;
  v190 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = *(a7 + 4);
  }

  else
  {
    v18 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v179 = a6;
  v180[0] = 0;
  v181 = 0;
  v182 = v16;
  v183 = v17;
  v184 = v18;
  v185 = a9;
  v19 = a5;
  v186 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v179);
    if (v181 == 1)
    {
      v181 = 0;
    }

    mlir::OperationName::OperationName(v180, "mps.depthwise_conv_3d_data_gradient", 35, Context);
    v181 = 1;
    v19 = v190;
  }

  v187 = a4;
  v188 = a5;
  if (v19 < 2 || (v21.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv3DDataGradientOpAdaptor::verify(&v179, v21)))
  {
    v42 = mlir::Float32Type::get(this, a2);
LABEL_25:
    v43 = mlir::UnrankedTensorType::get(v42);
    goto LABEL_26;
  }

  v22 = mlir::ValueRange::dereference_iterator(&v189, 0);
  v23 = mlir::ValueRange::dereference_iterator(&v189, 1);
  v24 = 0;
  if (v190 == 3)
  {
    v24 = mlir::ValueRange::dereference_iterator(&v189, 2);
  }

  v25 = v182;
  v26 = *(&v183 + 1);
  v171 = *(&v182 + 1);
  v172 = v183;
  v170 = v184;
  v28 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v204 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = v204;
  v205 = v28;
  mlir::ValueRange::ValueRange(&v216, &v204, 2uLL);
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v27);
  v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28);
  if (!v30 || ((v32 = *(*v30 + 136), v32 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) ? (v33 = v31 == 0) : (v33 = 1), v33 || *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
    v42 = v29;
    goto LABEL_25;
  }

  v169 = v26;
  v213 = v215;
  v214 = 0x500000000;
  if (!v24)
  {
    if (v32 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v48 = v30;
    }

    else
    {
      v48 = 0;
    }

    v174 = v48;
    if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v49 = v28;
    }

    else
    {
      v49 = 0;
    }

    v173 = v49;
    Value = mlir::ArrayAttr::getValue(&v174);
    v52 = v51;
    v210 = v212;
    v211 = 0x500000000;
    v207 = v209;
    v208 = 0x500000000;
    v204 = v206;
    v205 = 0x600000000;
    v201 = v203;
    v202 = 0x300000000;
    v198 = v200;
    v199 = 0x300000000;
    v177 = v171;
    v178 = v170;
    v175 = v25;
    v176 = v172;
    if (v25)
    {
      Int = mlir::IntegerAttr::getInt(&v175);
      v54 = v205;
      if (v205 == 6)
      {
        v55 = v202;
        v56 = v202 > 3;
        if (v202 == 3)
        {
          goto LABEL_48;
        }

        goto LABEL_58;
      }

      if (v205 > 6 || HIDWORD(v205) <= 5 && (llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v206, 6uLL, 8), v54 = v205, v205 == 6))
      {
LABEL_57:
        LODWORD(v205) = 6;
        v55 = v202;
        v56 = v202 > 3;
        if (v202 == 3)
        {
LABEL_48:
          v57 = v199;
          v58 = v199 > 3;
          if (v199 == 3)
          {
            goto LABEL_49;
          }

          goto LABEL_76;
        }

LABEL_58:
        if (v56)
        {
          v64 = 3;
        }

        else
        {
          v73 = v55;
          v74 = v55;
          if (HIDWORD(v202) <= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v201, v203, 3uLL, 8);
            v73 = v202;
            v74 = v202;
          }

          memset_pattern16(v201 + 8 * v73, &unk_1E096FAE0, 24 - 8 * v55);
          v64 = v74 - v55 + 3;
        }

        LODWORD(v202) = v64;
        v57 = v199;
        v58 = v199 > 3;
        if (v199 == 3)
        {
LABEL_49:
          v59 = v211;
          v60 = v211 > 5;
          if (v211 == 5)
          {
            goto LABEL_50;
          }

          goto LABEL_83;
        }

LABEL_76:
        if (v58)
        {
          v75 = 3;
        }

        else
        {
          v76 = v57;
          v77 = v57;
          if (HIDWORD(v199) <= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v200, 3uLL, 8);
            v76 = v199;
            v77 = v199;
          }

          memset_pattern16(v198 + 8 * v76, &unk_1E096FAE0, 24 - 8 * v57);
          v75 = v77 - v57 + 3;
        }

        LODWORD(v199) = v75;
        v59 = v211;
        v60 = v211 > 5;
        if (v211 == 5)
        {
LABEL_50:
          v61 = v208;
          v62 = v208 > 5;
          if (v208 == 5)
          {
            goto LABEL_51;
          }

          goto LABEL_88;
        }

LABEL_83:
        if (!v60)
        {
          if (HIDWORD(v211) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v210, v212, 5uLL, 8), v59 = v211, v211 != 5))
          {
            bzero(v210 + 8 * v59, 40 - 8 * v59);
          }
        }

        LODWORD(v211) = 5;
        v61 = v208;
        v62 = v208 > 5;
        if (v208 == 5)
        {
LABEL_51:
          v63 = v52 - 4;
          if (v52 < 4)
          {
            goto LABEL_131;
          }

          goto LABEL_93;
        }

LABEL_88:
        if (!v62)
        {
          if (HIDWORD(v208) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v207, v209, 5uLL, 8), v61 = v208, v208 != 5))
          {
            bzero(v207 + 8 * v61, 40 - 8 * v61);
          }
        }

        LODWORD(v208) = 5;
        v63 = v52 - 4;
        if (v52 < 4)
        {
LABEL_131:
          if (v178 && mlir::DenseElementsAttr::getNumElements(&v178) == 3)
          {
            LODWORD(v202) = 0;
            mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v216, v178, 0);
            v104 = v178;
            NumElements = mlir::DenseElementsAttr::getNumElements(&v178);
            mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v191, v104, NumElements);
            for (i = v218[0]; i != v193[0]; i = ++v218[0])
            {
              mlir::DenseElementsAttr::IntElementIterator::operator*(&v216, &__p);
              if (v195 > 0x40)
              {
                v107 = *__p;
              }

              else if (v195)
              {
                v107 = (__p << -v195) >> -v195;
              }

              else
              {
                v107 = 0;
              }

              v108 = v202;
              if (v202 >= HIDWORD(v202))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v201, v203, v202 + 1, 8);
                v108 = v202;
              }

              *(v201 + v108) = v107;
              LODWORD(v202) = v202 + 1;
              if (v195 >= 0x41 && __p)
              {
                operator delete[](__p);
              }
            }
          }

          if (v171 && mlir::DenseElementsAttr::getNumElements(&v177) == 3)
          {
            LODWORD(v199) = 0;
            mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v216, v177, 0);
            v109 = v177;
            v110 = mlir::DenseElementsAttr::getNumElements(&v177);
            mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v191, v109, v110);
            for (j = v218[0]; j != v193[0]; j = ++v218[0])
            {
              mlir::DenseElementsAttr::IntElementIterator::operator*(&v216, &__p);
              if (v195 > 0x40)
              {
                v112 = *__p;
              }

              else if (v195)
              {
                v112 = (__p << -v195) >> -v195;
              }

              else
              {
                v112 = 0;
              }

              v113 = v199;
              if (v199 >= HIDWORD(v199))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v200, v199 + 1, 8);
                v113 = v199;
              }

              *(v198 + v113) = v112;
              LODWORD(v199) = v199 + 1;
              if (v195 >= 0x41 && __p)
              {
                operator delete[](__p);
              }
            }
          }

          if (v172 && mlir::DenseElementsAttr::getNumElements(&v176) == 6)
          {
            LODWORD(v205) = 0;
            mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v216, v176, 0);
            v114 = v176;
            v115 = mlir::DenseElementsAttr::getNumElements(&v176);
            mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v191, v114, v115);
            for (k = v218[0]; k != v193[0]; k = ++v218[0])
            {
              mlir::DenseElementsAttr::IntElementIterator::operator*(&v216, &__p);
              if (v195 > 0x40)
              {
                v117 = *__p;
              }

              else if (v195)
              {
                v117 = (__p << -v195) >> -v195;
              }

              else
              {
                v117 = 0;
              }

              v118 = v205;
              if (v205 >= HIDWORD(v205))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v206, v205 + 1, 8);
                v118 = v205;
              }

              *(v204 + v118) = v117;
              LODWORD(v205) = v205 + 1;
              if (v195 >= 0x41 && __p)
              {
                operator delete[](__p);
              }
            }
          }

          if (v169)
          {
            v119 = *(v169 + 8);
          }

          else
          {
            v119 = 2;
          }

          v120 = mlir::ArrayAttr::getValue(&v173);
          __p = &v196;
          v196 = xmmword_1E098C990;
          v197 = unk_1E098C9A0;
          v195 = 0x400000004;
          if (Int >= 0)
          {
            v122 = v52;
          }

          else
          {
            v122 = 0;
          }

          if (v121 == 4)
          {
            v123 = Int - v122 + 4;
            if (v123 <= 3)
            {
              *&v196 = *(v120 + 8 * v123);
              if (v123)
              {
                v124 = -1;
              }

              else
              {
                v124 = 0;
              }

              *(&v196 + 1) = *(v120 + 8 * v124 + 8);
              if (v123 <= 1)
              {
                v125 = 0;
              }

              else
              {
                v125 = -1;
              }

              *&v197 = *(v120 + 8 * v125 + 16);
              if (v123 <= 2)
              {
                v126 = 0;
              }

              else
              {
                v126 = -1;
              }

              *(&v197 + 1) = *(v120 + 8 * v126 + 24);
            }
          }

          v191 = v193;
          v192 = 0x500000000;
          v127 = v211;
          v216 = v218;
          v217 = 0x800000000;
          if (!v211)
          {
            goto LABEL_256;
          }

          if (v211 < 9)
          {
            v128 = 0;
            v129 = v218;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v216, v218, v211, 8);
            v128 = v217;
            v129 = v216;
          }

          if (v127 != v128)
          {
            bzero(&v129[v128], 8 * (v127 - v128));
          }

          LODWORD(v217) = v127;
          if (v127 < 4)
          {
LABEL_254:
            if (v129 != v218)
            {
              free(v129);
            }

LABEL_256:
            v43 = mlir::RankedTensorType::get(v191, v192, v29, 0);
            v166 = v43;
            if (v191 != v193)
            {
              free(v191);
              v43 = v166;
            }

            if (__p != &v196)
            {
              free(__p);
              v43 = v166;
            }

            if (v198 != v200)
            {
              free(v198);
              v43 = v166;
            }

            if (v201 != v203)
            {
              free(v201);
              v43 = v166;
            }

            if (v204 != v206)
            {
              free(v204);
              v43 = v166;
            }

            if (v207 != v209)
            {
              free(v207);
              v43 = v166;
            }

            if (v210 != v212)
            {
              free(v210);
              v43 = v166;
            }

            goto LABEL_270;
          }

          v130 = v127 - 3;
          v131 = v210;
          v132 = v127 - 4;
          if (v127 != 4)
          {
            v133 = 0;
            if (v132 < 4)
            {
              goto LABEL_207;
            }

            if ((v129 - v210) <= 0x1F)
            {
              goto LABEL_207;
            }

            v133 = v132 & 0xFFFFFFFFFFFFFFFCLL;
            v134 = (v210 + 16);
            v135 = v129 + 2;
            v136 = v132 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v137 = *v134;
              *(v135 - 1) = *(v134 - 1);
              *v135 = v137;
              v134 += 2;
              v135 += 2;
              v136 -= 4;
            }

            while (v136);
            if (v132 != v133)
            {
LABEL_207:
              v138 = v127 - v133 - 4;
              v139 = v133;
              v140 = &v129[v133];
              v141 = &v131[v139];
              do
              {
                v142 = *v141++;
                *v140++ = v142;
                --v138;
              }

              while (v138);
            }
          }

          v143 = __p;
          v129[v132] = *__p;
          v144 = v201;
          v145 = v198;
          v146 = v204;
          v147 = v131[v130];
          v148 = 0x8000000000000000;
          v149 = 0x8000000000000000;
          if (v147 != 0x8000000000000000)
          {
            v150 = *v201;
            v151 = v143[1];
            if (v119 > 1)
            {
              if (v119 == 4 || v119 == 2)
              {
                v147 *= v150;
              }

LABEL_219:
              v149 = v147;
              if (v151 == 0x8000000000000000)
              {
                goto LABEL_221;
              }

              goto LABEL_220;
            }

            v152 = *v198 * (v151 - 1) + 1;
            if (v119)
            {
              if (v119 == 1)
              {
                v147 = v152 + v150 * (v147 - 1);
                if (v151 == 0x8000000000000000)
                {
                  v147 = 0x8000000000000000;
                }
              }

              goto LABEL_219;
            }

            v149 = 0x8000000000000000;
            if (v151 != 0x8000000000000000)
            {
              v147 = v152 + v150 * (v147 - 1) - (*v204 + *(v204 + 1));
LABEL_220:
              v149 = v147 & ~(v147 >> 63);
            }
          }

LABEL_221:
          v129[v130] = v149;
          v153 = v131[v127 - 2];
          if (v153 == 0x8000000000000000)
          {
            goto LABEL_233;
          }

          v154 = v144[1];
          v155 = v143[2];
          if (v119 > 1)
          {
            if (v119 == 2 || v119 == 4)
            {
              v153 *= v154;
            }
          }

          else
          {
            v156 = v145[1] * (v155 - 1) + 1;
            if (!v119)
            {
              v148 = 0x8000000000000000;
              if (v155 == 0x8000000000000000)
              {
LABEL_233:
                v129[v127 - 2] = v148;
                v157 = v131[v127 - 1];
                v158 = 0x8000000000000000;
                if (v157 != 0x8000000000000000)
                {
                  v159 = v144[2];
                  v160 = v143[3];
                  if (v119 > 1)
                  {
                    if (v119 == 2 || v119 == 4)
                    {
                      v157 *= v159;
                    }
                  }

                  else
                  {
                    v161 = v145[2] * (v160 - 1) + 1;
                    if (!v119)
                    {
                      v158 = 0x8000000000000000;
                      if (v160 == 0x8000000000000000)
                      {
                        goto LABEL_245;
                      }

                      v157 = v161 + v159 * (v157 - 1) - (v146[4] + v146[5]);
                      goto LABEL_244;
                    }

                    if (v119 == 1)
                    {
                      v157 = v161 + v159 * (v157 - 1);
                      if (v160 == 0x8000000000000000)
                      {
                        v157 = 0x8000000000000000;
                      }
                    }
                  }

                  v158 = v157;
                  if (v160 != 0x8000000000000000)
                  {
LABEL_244:
                    v158 = v157 & ~(v157 >> 63);
                  }
                }

LABEL_245:
                v129[v127 - 1] = v158;
                v162 = v192;
                if (v192 != v127)
                {
                  if (v192 <= v127)
                  {
                    if (HIDWORD(v192) < v127)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v193, v127, 8);
                      v162 = v192;
                    }

                    if (v162 != v127)
                    {
                      bzero(v191 + 8 * v162, 8 * (v127 - v162));
                    }
                  }

                  LODWORD(v192) = v127;
                  v129 = v216;
                }

                v163 = v207;
                v164 = v191;
                do
                {
                  v165 = *v163++;
                  *v164++ = v129[v165];
                  --v127;
                }

                while (v127);
                goto LABEL_254;
              }

              v153 = v156 + v154 * (v153 - 1) - (v146[2] + v146[3]);
LABEL_232:
              v148 = v153 & ~(v153 >> 63);
              goto LABEL_233;
            }

            if (v119 == 1)
            {
              if (v155 == 0x8000000000000000)
              {
                v153 = 0x8000000000000000;
              }

              else
              {
                v153 = v156 + v154 * (v153 - 1);
              }
            }
          }

          v148 = v153;
          if (v155 == 0x8000000000000000)
          {
            goto LABEL_233;
          }

          goto LABEL_232;
        }

LABEL_93:
        v78 = (v52 & (Int >> 63)) + Int;
        if (v78 <= v63)
        {
          v79 = v63;
        }

        else
        {
          v79 = (v52 & (Int >> 63)) + Int;
        }

        if (v78 >= v52)
        {
          v80 = v63;
        }

        else
        {
          v80 = v79;
        }

        v81 = v52 - 4;
        if (v52 != 4)
        {
          if (v52 == 5)
          {
            goto LABEL_110;
          }

          if (v52 <= HIDWORD(v208))
          {
            v82 = 5;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v207, v209, v52, 8);
            v82 = v208;
          }

          if (v52 != v82)
          {
            bzero(v207 + 8 * v82, 8 * (v52 - v82));
          }
        }

        LODWORD(v208) = v52;
LABEL_110:
        v83 = v207;
        v84 = v52 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v80);
        v86 = vdupq_n_s64(v81);
        v87 = xmmword_1E09700F0;
        v88 = (v207 + 16);
        v89 = vdupq_n_s64(2uLL);
        v90 = vdupq_n_s64(1uLL);
        v91 = vdupq_n_s64(3uLL);
        v92 = vdupq_n_s64(4uLL);
        v93 = v52 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v94 = vaddq_s64(v87, v89);
          v88[-1] = vbslq_s8(vorrq_s8(vcgtq_s64(v87, v85), vcgtq_s64(v86, v87)), v87, vbslq_s8(vcgtq_s64(v85, v87), vaddq_s64(v87, v90), v86));
          *v88 = vbslq_s8(vorrq_s8(vcgtq_s64(v94, v85), vcgtq_s64(v86, v94)), v94, vbslq_s8(vcgtq_s64(v85, v94), vaddq_s64(v87, v91), v86));
          v87 = vaddq_s64(v87, v92);
          v88 += 2;
          v93 -= 4;
        }

        while (v93);
        for (; v52 != v84; ++v84)
        {
          if (v84 < v80)
          {
            v95 = v84 + 1;
          }

          else
          {
            v95 = v52 - 4;
          }

          if (v84 < v81 || v84 > v80)
          {
            v95 = v84;
          }

          v83[v84] = v95;
        }

        v97 = v211;
        if (v52 != v211)
        {
          if (v52 >= v211)
          {
            if (v52 > HIDWORD(v211))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v210, v212, v52, 8);
              v97 = v211;
            }

            if (v52 != v97)
            {
              bzero(v210 + 8 * v97, 8 * (v52 - v97));
            }
          }

          LODWORD(v211) = v52;
        }

        v98 = v207;
        v99 = v210;
        v100 = v52;
        do
        {
          v102 = *Value++;
          v101 = v102;
          v103 = *v98++;
          v99[v103] = v101;
          --v100;
        }

        while (v100);
        goto LABEL_131;
      }
    }

    else
    {
      v54 = 0;
      Int = -4;
    }

    bzero(v204 + 8 * v54, 48 - 8 * v54);
    goto LABEL_57;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v24, &v213) & 1) == 0)
  {
    v43 = mlir::UnrankedTensorType::get(v29);
LABEL_270:
    v71 = 0;
    goto LABEL_271;
  }

  v34 = v214;
  if (!v214)
  {
    goto LABEL_62;
  }

  v35 = v213;
  v36 = (v214 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v213;
  if (v36 >= 3)
  {
    v38 = v36 + 1;
    v37 = &v213->i8[8 * (v38 & 0x3FFFFFFFFFFFFFFCLL)];
    v39 = v213 + 1;
    v40.i64[0] = -1;
    v40.i64[1] = -1;
    v41 = v38 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v46 = vmovn_s64(vceqq_s64(v39[-1], v40));
      if (v46.i8[0])
      {
        v39[-1].i64[0] = 0x8000000000000000;
        if ((v46.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v46.i8[4] & 1) == 0)
      {
LABEL_32:
        v47 = vmovn_s64(vceqq_s64(*v39, v40));
        if (v47.i8[0])
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v39[-1].i64[1] = 0x8000000000000000;
      v47 = vmovn_s64(vceqq_s64(*v39, v40));
      if (v47.i8[0])
      {
LABEL_33:
        v39->i64[0] = 0x8000000000000000;
        if (v47.i8[4])
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

LABEL_37:
      if (v47.i8[4])
      {
LABEL_38:
        v39->i64[1] = 0x8000000000000000;
      }

LABEL_29:
      v39 += 2;
      v41 -= 4;
      if (!v41)
      {
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_62;
        }

        break;
      }
    }
  }

  v72 = &v35->i8[8 * v34];
  do
  {
    if (*v37 == -1)
    {
      *v37 = 0x8000000000000000;
    }

    v37 += 8;
  }

  while (v37 != v72);
LABEL_62:
  v216 = v27;
  v65 = mlir::ArrayAttr::getValue(&v216);
  v67 = v66;
  v216 = v218;
  v217 = 0x500000000;
  v68.var0.var0 = a3;
  if (v69)
  {
    v43 = mlir::RankedTensorType::get(v216, v217, v29, 0);
  }

  else
  {
    v43 = 0;
  }

  if (v216 != v218)
  {
    v70 = v43;
    free(v216);
    v43 = v70;
  }

  v71 = v69 ^ 1;
LABEL_271:
  if (v213 != v215)
  {
    v167 = v43;
    free(v213);
    v43 = v167;
  }

  if (v71)
  {
    return 0;
  }

LABEL_26:
  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    v168 = v43;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v44 + 1, 8);
    v43 = v168;
    v44 = *(a11 + 8);
  }

  *(*a11 + 8 * v44) = v43;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::DepthwiseConv3DDataGradientOpAdaptor::verify(mlir::mps::DepthwiseConv3DDataGradientOpAdaptor *this, Location a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v58 = *(this + 4);
  if (!v58)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v67;
      v22 = __p;
      if (v67 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v67 = v20;
      operator delete(v22);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

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
LABEL_85:
      v25 = v64;
LABEL_86:
      v65 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v19;
  }

  v54 = *(this + 5);
  if (!v54)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v23 = v64;
    if (v64)
    {
      v31 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!*(this + 6))
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'padding_style'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v67;
      v36 = __p;
      if (v67 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v67 = v34;
      operator delete(v36);
    }

    v23 = v64;
    if (v64)
    {
      v37 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          operator delete[](v38);
        }
      }

      while (v37 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v53 = *(this + 7);
  if (!v53)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'strides'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v23 = v64;
    if (v64)
    {
      v43 = v65;
      v25 = v64;
      if (v65 == v64)
      {
        goto LABEL_86;
      }

      do
      {
        v45 = *--v43;
        v44 = v45;
        *v43 = 0;
        if (v45)
        {
          operator delete[](v44);
        }
      }

      while (v43 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
  v56 = v4;
  Type = mlir::ElementsAttr::getType(&v55);
  v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
  v61 = v5;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  v59 = 3;
  if (v7 == 1 && *ArgAttrsAttr == v59)
  {
    v48 = v53;
    Value = mlir::ArrayAttr::getValue(&v48);
    v50 = v8;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v58);
      v56 = v9;
      Type = mlir::ElementsAttr::getType(&v55);
      v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
      v61 = v10;
      v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
      v59 = 3;
      if (v12 == 1 && *v11 == v59 && (v48 = v58, Value = mlir::ArrayAttr::getValue(&v48), v50 = v13, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
        v56 = v14;
        Type = mlir::ElementsAttr::getType(&v55);
        v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
        v61 = v15;
        v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
        v59 = 6;
        if (v17 == 1 && *v16 == v59 && (v48 = v54, Value = mlir::ArrayAttr::getValue(&v48), v50 = v18, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          if (!v3)
          {
            return 1;
          }

          v55 = v3;
          v60 = mlir::AffineMapAttr::getValue(&v55);
          if (mlir::Type::isSignedInteger(&v60, 32))
          {
            return 1;
          }

          v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'channelAxis' failed to satisfy constraint: 32-bit signed integer attribute";
        }

        else
        {
          v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        }
      }

      else
      {
        v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      }

      v55 = v47;
      v57 = 259;
      mlir::emitError(a2.var0.var0, &v55, &v60);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      return v19;
    }
  }

  v55 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v57 = 259;
  mlir::emitError(a2.var0.var0, &v55, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::verify(mlir::mps::DepthwiseConv3DWeightsGradientOp *this)
{
  v245 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 72);
  v4 = v3[7];
  v5 = v3[3];
  v6 = v3[11];
  v224 = *(*this + 112);
  v225 = v2;
  v7 = *(v2 + 88);
  v222 = *(v2 + 96);
  v223 = v7;
  if (v224)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v224) != 3 || (mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v213, v224, 0), v1 = v224, NumElements = mlir::DenseElementsAttr::getNumElements(&v224), mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v219, v1, NumElements), v215 == v221))
    {
LABEL_4:
      if (!v223)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v213, &v217);
      if (v218 > 0x40)
      {
        if (*v217 <= 0)
        {
          goto LABEL_102;
        }
      }

      else if (!v218 || (v217 << -v218) >> -v218 <= 0)
      {
LABEL_102:
        v232 = 259;
        mlir::OpState::emitOpError(&v225, &v229, &__p);
        if (v218 > 0x40)
        {
          v78 = *v217;
          if (!__p)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v218)
          {
            v78 = (v217 << -v218) >> -v218;
          }

          else
          {
            v78 = 0;
          }

          if (!__p)
          {
            goto LABEL_118;
          }
        }

        LODWORD(v226) = 2;
        v227 = v78;
        v80 = v235;
        if (v236 >= v237)
        {
          if (v235 <= &v226 && v235 + 24 * v236 > &v226)
          {
            v97 = &v226 - v235;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v80 = v235;
            v81 = (v235 + v97);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v81 = &v226;
            v80 = v235;
          }
        }

        else
        {
          v81 = &v226;
        }

        v82 = &v80[24 * v236];
        v83 = *v81;
        *(v82 + 2) = v81[2];
        *v82 = v83;
        v84 = ++v236;
        if (__p)
        {
          LODWORD(v226) = 3;
          v227 = ", all values should be positive.";
          v228 = 32;
          v85 = v235;
          if (v84 >= v237)
          {
            if (v235 <= &v226 && v235 + 24 * v84 > &v226)
            {
              v98 = &v226 - v235;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v84 + 1, 24);
              v85 = v235;
              v86 = (v235 + v98);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v84 + 1, 24);
              v86 = &v226;
              v85 = v235;
            }
          }

          else
          {
            v86 = &v226;
          }

          v87 = &v85[24 * v236];
          v88 = *v86;
          *(v87 + 2) = v86[2];
          *v87 = v88;
          ++v236;
        }

LABEL_118:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v244 == 1)
        {
          if (v243 != &v244)
          {
            free(v243);
          }

          v89 = v241;
          if (v241)
          {
            v90 = v242;
            v91 = v241;
            if (v242 != v241)
            {
              do
              {
                v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
              }

              while (v90 != v89);
              v91 = v241;
            }

            v242 = v89;
            operator delete(v91);
          }

          v92 = v239;
          if (v239)
          {
            v93 = v240;
            v94 = v239;
            if (v240 != v239)
            {
              do
              {
                v96 = *--v93;
                v95 = v96;
                *v93 = 0;
                if (v96)
                {
                  operator delete[](v95);
                }
              }

              while (v93 != v92);
              v94 = v239;
            }

            v240 = v92;
            operator delete(v94);
          }

          if (v235 != v238)
          {
            free(v235);
          }
        }

        v79 = 0;
        if (v218 < 0x41)
        {
          goto LABEL_141;
        }

LABEL_139:
        if (v217)
        {
          operator delete[](v217);
        }

        goto LABEL_141;
      }

      v79 = 1;
      if (v218 >= 0x41)
      {
        goto LABEL_139;
      }

LABEL_141:
      if (!v79)
      {
        return v1;
      }

      if (++v215 == v221)
      {
        goto LABEL_4;
      }
    }
  }

  if (!v223)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (mlir::DenseElementsAttr::getNumElements(&v223) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v213, v223, 0);
    v9 = v223;
    v10 = mlir::DenseElementsAttr::getNumElements(&v223);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v219, v9, v10);
    while (v215 != v221)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v213, &v217);
      if (v218 > 0x40)
      {
        if (*v217 <= 0)
        {
          goto LABEL_155;
        }
      }

      else if (!v218 || (v217 << -v218) >> -v218 <= 0)
      {
LABEL_155:
        v232 = 259;
        mlir::OpState::emitOpError(&v225, &v229, &__p);
        if (v218 > 0x40)
        {
          v99 = *v217;
          if (!__p)
          {
            goto LABEL_171;
          }
        }

        else
        {
          if (v218)
          {
            v99 = (v217 << -v218) >> -v218;
          }

          else
          {
            v99 = 0;
          }

          if (!__p)
          {
            goto LABEL_171;
          }
        }

        LODWORD(v226) = 2;
        v227 = v99;
        v101 = v235;
        if (v236 >= v237)
        {
          if (v235 <= &v226 && v235 + 24 * v236 > &v226)
          {
            v118 = &v226 - v235;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v101 = v235;
            v102 = (v235 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v102 = &v226;
            v101 = v235;
          }
        }

        else
        {
          v102 = &v226;
        }

        v103 = &v101[24 * v236];
        v104 = *v102;
        *(v103 + 2) = v102[2];
        *v103 = v104;
        v105 = ++v236;
        if (__p)
        {
          LODWORD(v226) = 3;
          v227 = ", all values should be positive.";
          v228 = 32;
          v106 = v235;
          if (v105 >= v237)
          {
            if (v235 <= &v226 && v235 + 24 * v105 > &v226)
            {
              v119 = &v226 - v235;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v105 + 1, 24);
              v106 = v235;
              v107 = (v235 + v119);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v105 + 1, 24);
              v107 = &v226;
              v106 = v235;
            }
          }

          else
          {
            v107 = &v226;
          }

          v108 = &v106[24 * v236];
          v109 = *v107;
          *(v108 + 2) = v107[2];
          *v108 = v109;
          ++v236;
        }

LABEL_171:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v244 == 1)
        {
          if (v243 != &v244)
          {
            free(v243);
          }

          v110 = v241;
          if (v241)
          {
            v111 = v242;
            v112 = v241;
            if (v242 != v241)
            {
              do
              {
                v111 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v111 - 1);
              }

              while (v111 != v110);
              v112 = v241;
            }

            v242 = v110;
            operator delete(v112);
          }

          v113 = v239;
          if (v239)
          {
            v114 = v240;
            v115 = v239;
            if (v240 != v239)
            {
              do
              {
                v117 = *--v114;
                v116 = v117;
                *v114 = 0;
                if (v117)
                {
                  operator delete[](v116);
                }
              }

              while (v114 != v113);
              v115 = v239;
            }

            v240 = v113;
            operator delete(v115);
          }

          if (v235 != v238)
          {
            free(v235);
          }
        }

        v100 = 0;
        if (v218 < 0x41)
        {
          goto LABEL_194;
        }

LABEL_192:
        if (v217)
        {
          operator delete[](v217);
        }

        goto LABEL_194;
      }

      v100 = 1;
      if (v218 >= 0x41)
      {
        goto LABEL_192;
      }

LABEL_194:
      if (!v100)
      {
        return v1;
      }

      ++v215;
    }
  }

LABEL_9:
  if (v222)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v222) == 6)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v213, v222, 0);
      v11 = v222;
      v12 = mlir::DenseElementsAttr::getNumElements(&v222);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v219, v11, v12);
      if (v215 != v221)
      {
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v213, &v217);
          if (v218 > 0x40)
          {
            break;
          }

          if (v218)
          {
            v121 = (v217 << -v218) >> -v218;
            if ((v121 & 0x8000000000000000) == 0)
            {
              goto LABEL_211;
            }

LABEL_214:
            v229 = v120;
            v232 = 259;
            mlir::OpState::emitOpError(&v225, &v229, &__p);
            if (v218 > 0x40)
            {
              v122 = *v217;
              if (!__p)
              {
                goto LABEL_227;
              }
            }

            else
            {
              if (v218)
              {
                v122 = (v217 << -v218) >> -v218;
              }

              else
              {
                v122 = 0;
              }

              if (!__p)
              {
                goto LABEL_227;
              }
            }

            LODWORD(v226) = 2;
            v227 = v122;
            v123 = v235;
            if (v236 >= v237)
            {
              if (v235 <= &v226 && v235 + 24 * v236 > &v226)
              {
                v142 = &v226 - v235;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
                v123 = v235;
                v124 = (v235 + v142);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
                v124 = &v226;
                v123 = v235;
              }
            }

            else
            {
              v124 = &v226;
            }

            v125 = &v123[24 * v236];
            v126 = *v124;
            *(v125 + 2) = v124[2];
            *v125 = v126;
            v127 = ++v236;
            if (__p)
            {
              LODWORD(v226) = 3;
              v227 = ", all values should be non-negative.";
              v228 = 36;
              v128 = v235;
              if (v127 >= v237)
              {
                if (v235 <= &v226 && v235 + 24 * v127 > &v226)
                {
                  v143 = &v226 - v235;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v127 + 1, 24);
                  v128 = v235;
                  v129 = (v235 + v143);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v127 + 1, 24);
                  v129 = &v226;
                  v128 = v235;
                }
              }

              else
              {
                v129 = &v226;
              }

              v130 = &v128[24 * v236];
              v131 = *v129;
              *(v130 + 2) = v129[2];
              *v130 = v131;
              ++v236;
            }

LABEL_227:
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
            if (__p)
            {
              mlir::InFlightDiagnostic::report(&__p);
            }

            if (v244 == 1)
            {
              if (v243 != &v244)
              {
                free(v243);
              }

              v132 = v120;
              v133 = v241;
              if (v241)
              {
                v134 = v242;
                v135 = v241;
                if (v242 != v241)
                {
                  do
                  {
                    v134 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v134 - 1);
                  }

                  while (v134 != v133);
                  v135 = v241;
                }

                v242 = v133;
                operator delete(v135);
              }

              v136 = v239;
              if (v239)
              {
                v137 = v6;
                v138 = v240;
                v139 = v239;
                if (v240 != v239)
                {
                  do
                  {
                    v141 = *--v138;
                    v140 = v141;
                    *v138 = 0;
                    if (v141)
                    {
                      operator delete[](v140);
                    }
                  }

                  while (v138 != v136);
                  v139 = v239;
                }

                v240 = v136;
                operator delete(v139);
                v6 = v137;
              }

              v120 = v132;
              if (v235 != v238)
              {
                free(v235);
              }
            }

            if (v218 >= 0x41)
            {
LABEL_248:
              if (v217)
              {
                operator delete[](v217);
              }
            }

LABEL_206:
            if (v121 < 0)
            {
              return v1;
            }
          }

          if (++v215 == v221)
          {
            goto LABEL_12;
          }
        }

        v121 = *v217;
        if ((*v217 & 0x8000000000000000) != 0)
        {
          goto LABEL_214;
        }

LABEL_211:
        if (v218 >= 0x41)
        {
          goto LABEL_248;
        }

        goto LABEL_206;
      }
    }
  }

LABEL_12:
  v229 = *(v225 + 16 * ((*(v225 + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v229, &__p);
  if (v234 > 0x40)
  {
    v15 = *__p;
    operator delete[](__p);
    v14 = v15;
    if (!v4)
    {
LABEL_42:
      v226 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    if (v234)
    {
      v13 = (__p << -v234) >> -v234;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = v13;
    if (!v4)
    {
      goto LABEL_42;
    }
  }

  v16 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v16)
  {
    goto LABEL_42;
  }

  v17 = *(*v16 + 136);
  if (v17 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  v226 = v16;
  if (v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    mlir::ArrayAttr::getValue(&v226);
    v19 = v18;
    if (v18 <= 3)
    {
      v232 = 259;
      mlir::OpState::emitOpError(&v225, &v229, &__p);
      if (__p)
      {
        LODWORD(v213) = 2;
        v214 = v19;
        v20 = &v213;
        v21 = v235;
        if (v236 >= v237)
        {
          if (v235 <= &v213 && v235 + 24 * v236 > &v213)
          {
            v201 = &v213 - v235;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v21 = v235;
            v20 = (v235 + v201);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v20 = &v213;
            v21 = v235;
          }
        }

        v22 = &v21[24 * v236];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        v24 = ++v236;
        if (__p)
        {
          LODWORD(v213) = 3;
          v214 = ".";
          v215 = 1;
          v25 = &v213;
          v26 = v235;
          if (v24 >= v237)
          {
            if (v235 <= &v213 && v235 + 24 * v24 > &v213)
            {
              v203 = &v213 - v235;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v24 + 1, 24);
              v26 = v235;
              v25 = (v235 + v203);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v24 + 1, 24);
              v25 = &v213;
              v26 = v235;
            }
          }

          v27 = &v26[24 * v236];
          v28 = *v25;
          *(v27 + 2) = v25[2];
          *v27 = v28;
          ++v236;
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v244 != 1)
      {
        return v1;
      }

      if (v243 != &v244)
      {
        free(v243);
      }

      v29 = v241;
      if (v241)
      {
        v30 = v242;
        v31 = v241;
        if (v242 != v241)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = v241;
        }

        v242 = v29;
        operator delete(v31);
      }

      v32 = v239;
      if (!v239)
      {
        goto LABEL_325;
      }

      v33 = v240;
      v34 = v239;
      if (v240 == v239)
      {
        goto LABEL_324;
      }

      do
      {
        v75 = *--v33;
        v74 = v75;
        *v33 = 0;
        if (v75)
        {
          operator delete[](v74);
        }
      }

      while (v33 != v32);
      goto LABEL_323;
    }

    if (v14 >= 0)
    {
      v146 = v18;
    }

    else
    {
      v146 = 0;
    }

    if ((v14 - v146) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v232 = 259;
      mlir::OpState::emitOpError(&v225, &v229, &__p);
      if (__p)
      {
        LODWORD(v213) = 2;
        v214 = v14;
        v147 = &v213;
        v148 = v235;
        if (v236 >= v237)
        {
          if (v235 <= &v213 && v235 + 24 * v236 > &v213)
          {
            v205 = &v213 - v235;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v148 = v235;
            v147 = (v235 + v205);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v147 = &v213;
            v148 = v235;
          }
        }

        v149 = &v148[24 * v236];
        v150 = *v147;
        *(v149 + 2) = v147[2];
        *v149 = v150;
        v151 = ++v236;
        if (__p)
        {
          LODWORD(v213) = 3;
          v214 = " for input rank ";
          v215 = 16;
          v152 = &v213;
          v153 = v235;
          if (v151 >= v237)
          {
            if (v235 <= &v213 && v235 + 24 * v151 > &v213)
            {
              v207 = &v213 - v235;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v151 + 1, 24);
              v153 = v235;
              v152 = (v235 + v207);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v151 + 1, 24);
              v152 = &v213;
              v153 = v235;
            }
          }

          v154 = &v153[24 * v236];
          v155 = *v152;
          *(v154 + 2) = v152[2];
          *v154 = v155;
          v156 = ++v236;
          if (__p)
          {
            LODWORD(v213) = 2;
            v214 = v19;
            v157 = &v213;
            v158 = v235;
            if (v156 >= v237)
            {
              if (v235 <= &v213 && v235 + 24 * v156 > &v213)
              {
                v209 = &v213 - v235;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v156 + 1, 24);
                v158 = v235;
                v157 = (v235 + v209);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v156 + 1, 24);
                v157 = &v213;
                v158 = v235;
              }
            }

            v159 = &v158[24 * v236];
            v160 = *v157;
            *(v159 + 2) = v157[2];
            *v159 = v160;
            v161 = ++v236;
            if (__p)
            {
              LODWORD(v213) = 3;
              v214 = ".";
              v215 = 1;
              v162 = &v213;
              v163 = v235;
              if (v161 >= v237)
              {
                if (v235 <= &v213 && v235 + 24 * v161 > &v213)
                {
                  v211 = &v213 - v235;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v161 + 1, 24);
                  v163 = v235;
                  v162 = (v235 + v211);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v161 + 1, 24);
                  v162 = &v213;
                  v163 = v235;
                }
              }

              v164 = &v163[24 * v236];
              v165 = *v162;
              *(v164 + 2) = v162[2];
              *v164 = v165;
              ++v236;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v244 != 1)
      {
        return v1;
      }

      if (v243 != &v244)
      {
        free(v243);
      }

      v166 = v241;
      if (v241)
      {
        v167 = v242;
        v168 = v241;
        if (v242 != v241)
        {
          do
          {
            v167 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v167 - 1);
          }

          while (v167 != v166);
          v168 = v241;
        }

        v242 = v166;
        operator delete(v168);
      }

      v32 = v239;
      if (!v239)
      {
        goto LABEL_325;
      }

      v169 = v240;
      v34 = v239;
      if (v240 == v239)
      {
        goto LABEL_324;
      }

      do
      {
        v171 = *--v169;
        v170 = v171;
        *v169 = 0;
        if (v171)
        {
          operator delete[](v170);
        }
      }

      while (v169 != v32);
LABEL_323:
      v34 = v239;
LABEL_324:
      v240 = v32;
      operator delete(v34);
      goto LABEL_325;
    }
  }

LABEL_43:
  if (!v5 || (v35 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8)) == 0)
  {
    v217 = 0;
    goto LABEL_68;
  }

  v36 = *(*v35 + 136);
  if (v36 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v35 = 0;
  }

  v217 = v35;
  if (v36 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_68:
    v229 = v231;
    v230 = 0x500000000;
    v1 = 1;
    if ((mlir::matchConstantWithIntVector<long long>(v6, &v229) & 1) != 0 && v230 != 4)
    {
      v216 = 259;
      mlir::OpState::emitOpError(&v225, &v213, &__p);
      if (__p)
      {
        LODWORD(v219) = 3;
        v221 = 21;
        v52 = &v219;
        v53 = v235;
        if (v236 >= v237)
        {
          if (v235 <= &v219 && v235 + 24 * v236 > &v219)
          {
            v198 = &v219 - v235;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v53 = v235;
            v52 = v235 + v198;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v52 = &v219;
            v53 = v235;
          }
        }

        v54 = &v53[24 * v236];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
        v56 = ++v236;
        if (__p)
        {
          LODWORD(v219) = 5;
          v220 = v230;
          v57 = &v219;
          v58 = v235;
          if (v56 >= v237)
          {
            if (v235 <= &v219 && v235 + 24 * v56 > &v219)
            {
              v199 = &v219 - v235;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v56 + 1, 24);
              v58 = v235;
              v57 = v235 + v199;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v56 + 1, 24);
              v57 = &v219;
              v58 = v235;
            }
          }

          v59 = &v58[24 * v236];
          v60 = *v57;
          *(v59 + 2) = *(v57 + 2);
          *v59 = v60;
          v61 = ++v236;
          if (__p)
          {
            LODWORD(v219) = 3;
            v220 = " values.";
            v221 = 8;
            v62 = &v219;
            v63 = v235;
            if (v61 >= v237)
            {
              if (v235 <= &v219 && v235 + 24 * v61 > &v219)
              {
                v200 = &v219 - v235;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v61 + 1, 24);
                v63 = v235;
                v62 = v235 + v200;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v61 + 1, 24);
                v62 = &v219;
                v63 = v235;
              }
            }

            v64 = &v63[24 * v236];
            v65 = *v62;
            *(v64 + 2) = *(v62 + 2);
            *v64 = v65;
            ++v236;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v244 == 1)
      {
        if (v243 != &v244)
        {
          free(v243);
        }

        v66 = v241;
        if (v241)
        {
          v67 = v242;
          v68 = v241;
          if (v242 != v241)
          {
            do
            {
              v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
            }

            while (v67 != v66);
            v68 = v241;
          }

          v242 = v66;
          operator delete(v68);
        }

        v69 = v239;
        if (v239)
        {
          v70 = v240;
          v71 = v239;
          if (v240 != v239)
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
            v71 = v239;
          }

          v240 = v69;
          operator delete(v71);
        }

        if (v235 != v238)
        {
          free(v235);
        }
      }
    }

    v144 = v229;
    if (v229 != v231)
    {
LABEL_263:
      free(v144);
      return v1;
    }

    return v1;
  }

  mlir::ArrayAttr::getValue(&v217);
  v38 = v37;
  if (v37 > 3)
  {
    if (v14 >= 0)
    {
      v172 = v37;
    }

    else
    {
      v172 = 0;
    }

    if ((v14 - v172) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v232 = 259;
      mlir::OpState::emitOpError(&v225, &v229, &__p);
      if (__p)
      {
        LODWORD(v213) = 2;
        v214 = v14;
        v173 = &v213;
        v174 = v235;
        if (v236 >= v237)
        {
          if (v235 <= &v213 && v235 + 24 * v236 > &v213)
          {
            v206 = &v213 - v235;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v174 = v235;
            v173 = (v235 + v206);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
            v173 = &v213;
            v174 = v235;
          }
        }

        v175 = &v174[24 * v236];
        v176 = *v173;
        *(v175 + 2) = v173[2];
        *v175 = v176;
        v177 = ++v236;
        if (__p)
        {
          LODWORD(v213) = 3;
          v214 = " for input gradient rank ";
          v215 = 25;
          v178 = &v213;
          v179 = v235;
          if (v177 >= v237)
          {
            if (v235 <= &v213 && v235 + 24 * v177 > &v213)
            {
              v208 = &v213 - v235;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v177 + 1, 24);
              v179 = v235;
              v178 = (v235 + v208);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v177 + 1, 24);
              v178 = &v213;
              v179 = v235;
            }
          }

          v180 = &v179[24 * v236];
          v181 = *v178;
          *(v180 + 2) = v178[2];
          *v180 = v181;
          v182 = ++v236;
          if (__p)
          {
            LODWORD(v213) = 2;
            v214 = v38;
            v183 = &v213;
            v184 = v235;
            if (v182 >= v237)
            {
              if (v235 <= &v213 && v235 + 24 * v182 > &v213)
              {
                v210 = &v213 - v235;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v182 + 1, 24);
                v184 = v235;
                v183 = (v235 + v210);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v182 + 1, 24);
                v183 = &v213;
                v184 = v235;
              }
            }

            v185 = &v184[24 * v236];
            v186 = *v183;
            *(v185 + 2) = v183[2];
            *v185 = v186;
            v187 = ++v236;
            if (__p)
            {
              LODWORD(v213) = 3;
              v214 = ".";
              v215 = 1;
              v188 = &v213;
              v189 = v235;
              if (v187 >= v237)
              {
                if (v235 <= &v213 && v235 + 24 * v187 > &v213)
                {
                  v212 = &v213 - v235;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v187 + 1, 24);
                  v189 = v235;
                  v188 = (v235 + v212);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v187 + 1, 24);
                  v188 = &v213;
                  v189 = v235;
                }
              }

              v190 = &v189[24 * v236];
              v191 = *v188;
              *(v190 + 2) = v188[2];
              *v190 = v191;
              ++v236;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
      if (__p)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }

      if (v244 != 1)
      {
        return v1;
      }

      if (v243 != &v244)
      {
        free(v243);
      }

      v192 = v241;
      if (v241)
      {
        v193 = v242;
        v194 = v241;
        if (v242 != v241)
        {
          do
          {
            v193 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v193 - 1);
          }

          while (v193 != v192);
          v194 = v241;
        }

        v242 = v192;
        operator delete(v194);
      }

      v32 = v239;
      if (!v239)
      {
        goto LABEL_325;
      }

      v195 = v240;
      v34 = v239;
      if (v240 == v239)
      {
        goto LABEL_324;
      }

      do
      {
        v197 = *--v195;
        v196 = v197;
        *v195 = 0;
        if (v197)
        {
          operator delete[](v196);
        }
      }

      while (v195 != v32);
      goto LABEL_323;
    }

    goto LABEL_68;
  }

  v232 = 259;
  mlir::OpState::emitOpError(&v225, &v229, &__p);
  if (__p)
  {
    LODWORD(v213) = 2;
    v214 = v38;
    v39 = &v213;
    v40 = v235;
    if (v236 >= v237)
    {
      if (v235 <= &v213 && v235 + 24 * v236 > &v213)
      {
        v202 = &v213 - v235;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
        v40 = v235;
        v39 = (v235 + v202);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v236 + 1, 24);
        v39 = &v213;
        v40 = v235;
      }
    }

    v41 = &v40[24 * v236];
    v42 = *v39;
    *(v41 + 2) = v39[2];
    *v41 = v42;
    v43 = ++v236;
    if (__p)
    {
      LODWORD(v213) = 3;
      v214 = ".";
      v215 = 1;
      v44 = &v213;
      v45 = v235;
      if (v43 >= v237)
      {
        if (v235 <= &v213 && v235 + 24 * v43 > &v213)
        {
          v204 = &v213 - v235;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v43 + 1, 24);
          v45 = v235;
          v44 = (v235 + v204);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v235, v238, v43 + 1, 24);
          v44 = &v213;
          v45 = v235;
        }
      }

      v46 = &v45[24 * v236];
      v47 = *v44;
      *(v46 + 2) = v44[2];
      *v46 = v47;
      ++v236;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v244 == 1)
  {
    if (v243 != &v244)
    {
      free(v243);
    }

    v48 = v241;
    if (v241)
    {
      v49 = v242;
      v50 = v241;
      if (v242 != v241)
      {
        do
        {
          v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
        }

        while (v49 != v48);
        v50 = v241;
      }

      v242 = v48;
      operator delete(v50);
    }

    v32 = v239;
    if (v239)
    {
      v51 = v240;
      v34 = v239;
      if (v240 == v239)
      {
        goto LABEL_324;
      }

      do
      {
        v77 = *--v51;
        v76 = v77;
        *v51 = 0;
        if (v77)
        {
          operator delete[](v76);
        }
      }

      while (v51 != v32);
      goto LABEL_323;
    }

LABEL_325:
    v144 = v235;
    if (v235 == v238)
    {
      return v1;
    }

    goto LABEL_263;
  }

  return v1;
}

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::inferReturnTypes(uint64_t a1, mlir *a2, Location a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v28[0] = a4;
  v28[1] = a5;
  if (a5 == 3)
  {
    v11 = mlir::ValueRange::dereference_iterator(v28, 0);
    v12 = mlir::ValueRange::dereference_iterator(v28, 1);
    v13 = mlir::ValueRange::dereference_iterator(v28, 2);
    v15 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
    v32[0] = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = v32[0];
    v32[1] = v15;
    mlir::ValueRange::ValueRange(&v29, v32, 2uLL);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v15);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
    if (!v17 || (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v19 = v18 == 0) : (v19 = 1), v19 || *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
    {
      v21 = mlir::UnrankedTensorType::get(v16);
    }

    else
    {
      v29 = v31;
      v30 = 0x400000000;
      if (mlir::matchConstantWithIntVector<long long>(v13, &v29))
      {
        v20 = v30;
        if (v30 <= 3)
        {
          if (HIDWORD(v30) > 3 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, 4uLL, 8), v20 = v30, v30 != 4))
          {
            bzero(v29 + 8 * v20, 32 - 8 * v20);
          }

          v20 = 4;
          LODWORD(v30) = 4;
        }

        v21 = mlir::RankedTensorType::get(v29, v20, v16, 0);
      }

      else
      {
        v21 = mlir::UnrankedTensorType::get(v16);
      }

      if (v29 != v31)
      {
        v26 = v21;
        free(v29);
        v21 = v26;
      }
    }

    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      v27 = v21;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v25 + 1, 8);
      v21 = v27;
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = v21;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::inferPool4DShape(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8, unsigned __int8 a9, uint64_t a10)
{
  v10 = *(a4 + 2);
  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(a4 + 2);
  }

  if (v10 <= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 - v11;
  }

  v13 = *(a10 + 8);
  if (v10 != v13)
  {
    v14 = *(a4 + 2);
    if (v10 >= v13)
    {
      v122 = v11;
      v123 = a5;
      v124 = a4;
      v15 = a3;
      v16 = a6;
      v17 = a7;
      v18 = a8;
      v19 = *(a10 + 8);
      v20 = *(a10 + 8);
      if (*(a10 + 12) < v10)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v10, 8);
        v19 = *(a10 + 8);
        v20 = *(a10 + 8);
      }

      bzero((*a10 + 8 * v19), 8 * (v10 - v13));
      v14 = v20 + v10 - v13;
      a8 = v18;
      a7 = v17;
      a6 = v16;
      a3 = v15;
      a5 = v123;
      a4 = v124;
      v11 = v122;
    }

    *(a10 + 8) = v14;
  }

  if (v12)
  {
    v21 = *a4;
    v22 = *a10;
    if (v12 < 4 || (*a10 - *a4) <= 0x1F)
    {
      v24 = 0;
LABEL_22:
      v29 = v12 - v24;
      v30 = 8 * v24;
      v31 = (v21 + v30);
      v32 = (v22 + v30);
      do
      {
        v33 = *v31++;
        *v32++ = v33;
        --v29;
      }

      while (v29);
      goto LABEL_24;
    }

    v24 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = (v21 + 16);
    v26 = (v22 + 16);
    v27 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v28 = *v25;
      *(v26 - 1) = *(v25 - 1);
      *v26 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if (v12 != v24)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v10)
  {
    v34 = *a4;
    v35 = *a5;
    v36 = *a10;
    if (a8 == 4 || a8 == 2)
    {
      v37 = v35 + 32;
      v38 = *(v34 + 8 * v12);
      v39 = (v37 - 8 * v11);
      v40 = *v39;
      if (*v39 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = *v39;
      }

      v42 = *(v34 + 8 * v12);
      if (v40 >= 2)
      {
        v42 = 0x8000000000000000;
        if (v38 != 0x8000000000000000)
        {
          v42 = v38 / v41;
          v43 = v38 / v41 * v41;
          if (v38 >= 0 && v43 != v38)
          {
            ++v42;
          }
        }
      }

      *(v36 + 8 * v12) = v42;
      if (v10 != 1)
      {
        v45 = *(v34 + 8 * (v12 + 1));
        v46 = *(v37 + 8 * (1 - v11));
        if (v46 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = *(v37 + 8 * (1 - v11));
        }

        v48 = *(v34 + 8 * (v12 + 1));
        if (v46 >= 2)
        {
          v48 = 0x8000000000000000;
          if (v45 != 0x8000000000000000)
          {
            v48 = v45 / v47;
            v49 = v45 / v47 * v47;
            if (v45 >= 0 && v49 != v45)
            {
              ++v48;
            }
          }
        }

        *(v36 + 8 * (v12 + 1)) = v48;
        if (v10 != 2)
        {
          v51 = *(v34 + 8 * (v12 + 2));
          v52 = *(v37 + 8 * (2 - v11));
          if (v52 <= 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = *(v37 + 8 * (2 - v11));
          }

          v54 = *(v34 + 8 * (v12 + 2));
          if (v52 >= 2)
          {
            v54 = 0x8000000000000000;
            if (v51 != 0x8000000000000000)
            {
              v54 = v51 / v53;
              v55 = v51 / v53 * v53;
              if (v51 >= 0 && v55 != v51)
              {
                ++v54;
              }
            }
          }

          *(v36 + 8 * (v12 + 2)) = v54;
          if (v10 != 3)
          {
            v57 = v12 + 3;
            v58 = *(v34 + 8 * (v12 + 3));
            v59 = *(v37 + 8 * (3 - v11));
            if (v59 <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = v59;
            }

            if (v59 >= 2)
            {
              if (v58 == 0x8000000000000000)
              {
                v58 = 0x8000000000000000;
              }

              else
              {
                v118 = v58 / v60;
                v119 = v58 / v60 * v60;
                if (v58 < 0 || v119 == v58)
                {
                  v58 = v118;
                }

                else
                {
                  v58 = v118 + 1;
                }
              }
            }

LABEL_136:
            *(v36 + 8 * v57) = v58;
          }
        }
      }
    }

    else
    {
      v61 = a9;
      v62 = *a3;
      v63 = *a6;
      v64 = *a7;
      v65 = *(v34 + 8 * v12);
      v66 = 4 - v11;
      v67 = *(*a3 + 8 * (4 - v11));
      v68 = 0x8000000000000000;
      if (v67 != 0x8000000000000000 && v65 != 0x8000000000000000)
      {
        v70 = *(v64 + 16 * v66 + 8) & ~(*(v64 + 16 * v66 + 8) >> 63);
        v71 = *(v64 + 16 * v66) & ~(*(v64 + 16 * v66) >> 63);
        v72 = *(v63 + 8 * v66);
        if (v72 <= 1)
        {
          v72 = 1;
        }

        v73 = *(v35 + 8 * v66);
        if (v73 <= 1)
        {
          v73 = 1;
        }

        if (a8 == 1)
        {
          v70 = 0;
          v71 = 0;
        }

        v74 = v73 + v65 + v71 + v70 + ~(v72 * (v67 - 1));
        v75 = v74 / v73;
        v76 = v74 / v73 * v73;
        if (v74 >= 0)
        {
          v77 = a9;
        }

        else
        {
          v77 = a9 - 1;
        }

        if (v76 == v74)
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        v68 = (v75 + v78) & ~((v75 + v78) >> 63);
      }

      *(v36 + 8 * v12) = v68;
      if (v10 != 1)
      {
        v79 = v12 + 1;
        v80 = 5 - v11;
        v81 = *(v62 + 8 * (5 - v11));
        v82 = 0x8000000000000000;
        if (v81 != 0x8000000000000000)
        {
          v83 = *(v34 + 8 * v79);
          if (v83 != 0x8000000000000000)
          {
            v84 = *(v64 + 16 * v80 + 8) & ~(*(v64 + 16 * v80 + 8) >> 63);
            v85 = *(v64 + 16 * v80) & ~(*(v64 + 16 * v80) >> 63);
            v86 = *(v63 + 8 * v80);
            if (v86 <= 1)
            {
              v86 = 1;
            }

            v87 = *(v35 + 8 * v80);
            if (v87 <= 1)
            {
              v87 = 1;
            }

            if (a8 == 1)
            {
              v84 = 0;
              v85 = 0;
            }

            v88 = v87 + v83 + v85 + v84 + ~(v86 * (v81 - 1));
            v89 = v88 / v87;
            v90 = v88 / v87 * v87;
            if (v88 >= 0)
            {
              v91 = a9;
            }

            else
            {
              v91 = a9 - 1;
            }

            if (v90 == v88)
            {
              v92 = 0;
            }

            else
            {
              v92 = v91;
            }

            v82 = (v89 + v92) & ~((v89 + v92) >> 63);
          }
        }

        *(v36 + 8 * v79) = v82;
        if (v10 != 2)
        {
          v93 = v12 + 2;
          v94 = 6 - v11;
          v95 = *(v62 + 8 * (6 - v11));
          v96 = 0x8000000000000000;
          if (v95 != 0x8000000000000000)
          {
            v97 = *(v34 + 8 * v93);
            if (v97 != 0x8000000000000000)
            {
              v98 = *(v64 + 16 * v94 + 8) & ~(*(v64 + 16 * v94 + 8) >> 63);
              v99 = *(v64 + 16 * v94) & ~(*(v64 + 16 * v94) >> 63);
              v100 = *(v63 + 8 * v94);
              if (v100 <= 1)
              {
                v100 = 1;
              }

              v101 = *(v35 + 8 * v94);
              if (v101 <= 1)
              {
                v101 = 1;
              }

              if (a8 == 1)
              {
                v98 = 0;
                v99 = 0;
              }

              v102 = v101 + v97 + v99 + v98 + ~(v100 * (v95 - 1));
              v103 = v102 / v101;
              v104 = v102 / v101 * v101;
              if (v102 >= 0)
              {
                v105 = a9;
              }

              else
              {
                v105 = a9 - 1;
              }

              if (v104 == v102)
              {
                v106 = 0;
              }

              else
              {
                v106 = v105;
              }

              v96 = (v103 + v106) & ~((v103 + v106) >> 63);
            }
          }

          *(v36 + 8 * v93) = v96;
          if (v10 != 3)
          {
            v57 = v12 + 3;
            v107 = v11 ^ 7;
            v108 = *(v62 + 8 * (v11 ^ 7));
            v58 = 0x8000000000000000;
            if (v108 != 0x8000000000000000)
            {
              v109 = *(v34 + 8 * v57);
              if (v109 != 0x8000000000000000)
              {
                v110 = *(v64 + 16 * v107 + 8) & ~(*(v64 + 16 * v107 + 8) >> 63);
                v111 = *(v64 + 16 * v107) & ~(*(v64 + 16 * v107) >> 63);
                v112 = *(v63 + 8 * v107);
                if (v112 <= 1)
                {
                  v112 = 1;
                }

                v113 = *(v35 + 8 * v107);
                if (v113 <= 1)
                {
                  v113 = 1;
                }

                if (a8 == 1)
                {
                  v110 = 0;
                  v111 = 0;
                }

                v114 = v113 + v109 + v111 + v110 + ~(v112 * (v108 - 1));
                v115 = v114 / v113;
                v116 = v114 / v113 * v113;
                if (v114 < 0)
                {
                  v61 = a9 - 1;
                }

                if (v116 == v114)
                {
                  v117 = 0;
                }

                else
                {
                  v117 = v61;
                }

                v58 = (v115 + v117) & ~((v115 + v117) >> 63);
              }
            }

            goto LABEL_136;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::mps::inferPool4DGradientOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v45[0] = a3;
  v45[1] = a4;
  v7 = (*(mlir::ValueRange::dereference_iterator(v45, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
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
      v34 = v12[1];
      v40 = v7;
      v41 = v34;
      if (a4 == 3)
      {
        goto LABEL_15;
      }

LABEL_34:
      v35 = mlir::ValueRange::dereference_iterator(v45, 1);
    }
  }

LABEL_14:
  v40 = v7;
  v41 = 0;
  if (a4 != 3)
  {
    goto LABEL_34;
  }

LABEL_15:
  v42 = v44;
  v43 = 0x400000000;
  v18 = mlir::ValueRange::dereference_iterator(v45, 2);
  if (mlir::matchConstantWithIntVector<long long>(v18, &v42))
  {
    v19 = v43;
    if (v43 >= 4)
    {
      v21 = v42;
      v23 = v42 + 8 * v43;
      v24 = 8 * v43 - 8;
      if (v24 >= 0x18)
      {
LABEL_21:
        v25 = (v24 >> 3) + 1;
        v26 = &v21->i64[v25 & 0x3FFFFFFFFFFFFFFCLL];
        v27 = v21 + 1;
        v28.i64[0] = -1;
        v28.i64[1] = -1;
        v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
        while (1)
        {
          v30 = vmovn_s64(vceqq_s64(v27[-1], v28));
          if (v30.i8[0])
          {
            v27[-1].i64[0] = 0x8000000000000000;
            if ((v30.i8[4] & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else if ((v30.i8[4] & 1) == 0)
          {
LABEL_25:
            v31 = vmovn_s64(vceqq_s64(*v27, v28));
            if (v31.i8[0])
            {
              goto LABEL_26;
            }

            goto LABEL_30;
          }

          v27[-1].i64[1] = 0x8000000000000000;
          v31 = vmovn_s64(vceqq_s64(*v27, v28));
          if (v31.i8[0])
          {
LABEL_26:
            v27->i64[0] = 0x8000000000000000;
            if (v31.i8[4])
            {
              goto LABEL_31;
            }

            goto LABEL_22;
          }

LABEL_30:
          if (v31.i8[4])
          {
LABEL_31:
            v27->i64[1] = 0x8000000000000000;
          }

LABEL_22:
          v27 += 2;
          v29 -= 4;
          if (!v29)
          {
            if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_40;
            }

            goto LABEL_43;
          }
        }
      }
    }

    else
    {
      if (HIDWORD(v43) <= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, 4uLL, 8);
      }

      v20 = v43;
      v21 = v42;
      memset_pattern16(v42 + 8 * v43, &unk_1E096FAE0, 32 - 8 * v19);
      v22 = v20 - v19;
      v19 = (v20 - v19 + 4);
      LODWORD(v43) = v22 + 4;
      if (v22 == -4)
      {
        v19 = 0;
        goto LABEL_43;
      }

      v23 = &v21->i8[8 * v19];
      v24 = 8 * v19 - 8;
      if (v24 >= 0x18)
      {
        goto LABEL_21;
      }
    }

    v26 = v21;
    do
    {
LABEL_40:
      if (*v26 == -1)
      {
        *v26 = 0x8000000000000000;
      }

      ++v26;
    }

    while (v26 != v23);
LABEL_43:
    isSplat = mlir::ElementsAttr::isSplat(&v40);
    v33 = mlir::RankedTensorType::get(v21, v19, isSplat, 0);
  }

  else
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
    v33 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

  v38 = *(a5 + 8);
  if (v38 >= *(a5 + 12))
  {
    v39 = v33;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v38 + 1, 8);
    v33 = v39;
    LODWORD(v38) = *(a5 + 8);
  }

  *(*a5 + 8 * v38) = v33;
  ++*(a5 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::mps::PoolAvgOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v27 = a6;
  BYTE8(v27) = 0;
  v28[0] = 0;
  *&v28[8] = v15;
  *&v28[24] = v16;
  *&v28[40] = v17;
  *&v28[56] = v18;
  v29 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v27);
    if (v28[0] == 1)
    {
      v28[0] = 0;
    }

    mlir::OperationName::OperationName(&v27 + 8, "mps.pooling_average", 19, Context);
    v28[0] = 1;
  }

  *&v30 = a4;
  *(&v30 + 1) = a5;
  if (a5 && (v20.var0.var0 = mlir::UnknownLoc::get(this, a2), mlir::mps::PoolAvgOpAdaptor::verify(&v27, v20)))
  {
    v26[4] = *&v28[48];
    v26[5] = v29;
    v26[6] = v30;
    v26[0] = v27;
    v26[1] = *v28;
    v26[2] = *&v28[16];
    v26[3] = *&v28[32];
    return mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(a2, a3, v26, a10);
  }

  else
  {
    v22 = mlir::Float32Type::get(this, a2);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a10 + 8);
    if (v24 >= *(a10 + 12))
    {
      v25 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v24 + 1, 8);
      v23 = v25;
      LODWORD(v24) = *(a10 + 8);
    }

    *(*a10 + 8 * v24) = v23;
    ++*(a10 + 8);
    return 1;
  }
}

BOOL mlir::mps::PoolAvgOpAdaptor::verify(mlir::mps::PoolAvgOpAdaptor *this, Location a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v129 = *(this + 5);
  v4 = *(this + 9);
  if (!v4)
  {
    v126 = "'mps.pooling_average' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2.var0.var0, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = *(this + 8);
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::arith::ExtUIOp::fold();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
  v131 = 4;
  if (v40 != 1 || *ArgAttrsAttr != v131 || (v123 = v4, Value = mlir::ArrayAttr::getValue(&v123), v125 = v41, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
  {
    v126 = "'mps.pooling_average' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2.var0.var0, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          operator delete[](v56);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
        v78 = v76;
        v79 = v77;
        do
        {
          v80 = v79 >> 1;
          v81 = &v78[2 * (v79 >> 1)];
          v83 = *v81;
          v82 = v81 + 2;
          v79 += ~(v79 >> 1);
          if (v83 < v75)
          {
            v78 = v82;
          }

          else
          {
            v79 = v80;
          }
        }

        while (v79);
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::arith::ExtUIOp::fold();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              Value = mlir::ArrayAttr::getValue(&v123);
              v125 = v106;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = llvm::cast<mlir::ShapedType,mlir::Type>(&v131);
                v133 = v108;
                v109 = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
                isSplat = 8;
                if (v110 == 1 && *v109 == isSplat)
                {
                  v122 = v129;
                  Value = mlir::ArrayAttr::getValue(&v122);
                  v125 = v111;
                  v123 = mlir::ElementsAttr::isSplat(&Value);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_average' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2.var0.var0, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_average' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2.var0.var0, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
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

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
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
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::arith::ExtUIOp::fold();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    Value = mlir::ArrayAttr::getValue(&v123);
    v125 = v73;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_average' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2.var0.var0, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        operator delete[](v88);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}

uint64_t mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = a3[6];
  v15 = 0;
  v8 = *(mlir::ValueRange::dereference_iterator(&v18, 0) + 8);
  v9 = a3[5];
  v17[4] = a3[4];
  v17[5] = v9;
  v17[6] = a3[6];
  v10 = a3[1];
  v17[0] = *a3;
  v17[1] = v10;
  v11 = a3[3];
  v17[2] = a3[2];
  v17[3] = v11;
  v16 = *(mlir::ValueRange::dereference_iterator(&v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::Attribute::getContext(&v16);
  if ((mlir::mps::inferPool4DReturnType<mlir::mps::PoolAvgOpAdaptor>(a1, a2, (v8 & 0xFFFFFFFFFFFFFFF8), v17, &v15) & 1) == 0)
  {
    return 0;
  }

  v12 = v15;
  v13 = *(a4 + 8);
  if (v13 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v13 + 1, 8);
    LODWORD(v13) = *(a4 + 8);
  }

  *(*a4 + 8 * v13) = v12;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolAvgOp>(uint64_t a1, void *a2, uint64_t a3)
{
  v174 = *MEMORY[0x1E69E9840];
  v159 = a1;
  v5 = (a1 + 16 * ((*(a1 + 44) >> 23) & 1));
  v158 = v5[13];
  v157 = v5[9];
  v156 = v5[14];
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
  v34 = *(*(v159 + 16 * ((*(v159 + 44) >> 23) & 1) + 96) + 8);
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

uint64_t mlir::mps::PoolL2NormOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v27 = a6;
  BYTE8(v27) = 0;
  v28[0] = 0;
  *&v28[8] = v15;
  *&v28[24] = v16;
  *&v28[40] = v17;
  *&v28[56] = v18;
  v29 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v27);
    if (v28[0] == 1)
    {
      v28[0] = 0;
    }

    mlir::OperationName::OperationName(&v27 + 8, "mps.pooling_l2_norm", 19, Context);
    v28[0] = 1;
  }

  *&v30 = a4;
  *(&v30 + 1) = a5;
  if (a5 && (v20.var0.var0 = mlir::UnknownLoc::get(this, a2), mlir::mps::PoolL2NormOpAdaptor::verify(&v27, v20)))
  {
    v26[4] = *&v28[48];
    v26[5] = v29;
    v26[6] = v30;
    v26[0] = v27;
    v26[1] = *v28;
    v26[2] = *&v28[16];
    v26[3] = *&v28[32];
    return mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(a2, a3, v26, a10);
  }

  else
  {
    v22 = mlir::Float32Type::get(this, a2);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a10 + 8);
    if (v24 >= *(a10 + 12))
    {
      v25 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 16, v24 + 1, 8);
      v23 = v25;
      LODWORD(v24) = *(a10 + 8);
    }

    *(*a10 + 8 * v24) = v23;
    ++*(a10 + 8);
    return 1;
  }
}

BOOL mlir::mps::PoolL2NormOpAdaptor::verify(mlir::mps::PoolL2NormOpAdaptor *this, Location a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v129 = *(this + 5);
  v4 = *(this + 9);
  if (!v4)
  {
    v126 = "'mps.pooling_l2_norm' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2.var0.var0, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = *(this + 8);
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::arith::ExtUIOp::fold();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
  v131 = 4;
  if (v40 != 1 || *ArgAttrsAttr != v131 || (v123 = v4, Value = mlir::ArrayAttr::getValue(&v123), v125 = v41, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
  {
    v126 = "'mps.pooling_l2_norm' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2.var0.var0, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          operator delete[](v56);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
        v78 = v76;
        v79 = v77;
        do
        {
          v80 = v79 >> 1;
          v81 = &v78[2 * (v79 >> 1)];
          v83 = *v81;
          v82 = v81 + 2;
          v79 += ~(v79 >> 1);
          if (v83 < v75)
          {
            v78 = v82;
          }

          else
          {
            v79 = v80;
          }
        }

        while (v79);
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::arith::ExtUIOp::fold();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              Value = mlir::ArrayAttr::getValue(&v123);
              v125 = v106;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = llvm::cast<mlir::ShapedType,mlir::Type>(&v131);
                v133 = v108;
                v109 = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
                isSplat = 8;
                if (v110 == 1 && *v109 == isSplat)
                {
                  v122 = v129;
                  Value = mlir::ArrayAttr::getValue(&v122);
                  v125 = v111;
                  v123 = mlir::ElementsAttr::isSplat(&Value);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_l2_norm' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2.var0.var0, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_l2_norm' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2.var0.var0, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
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

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
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
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::arith::ExtUIOp::fold();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::CallableOpInterface::getArgAttrsAttr(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    Value = mlir::ArrayAttr::getValue(&v123);
    v125 = v73;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_l2_norm' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2.var0.var0, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        operator delete[](v88);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}