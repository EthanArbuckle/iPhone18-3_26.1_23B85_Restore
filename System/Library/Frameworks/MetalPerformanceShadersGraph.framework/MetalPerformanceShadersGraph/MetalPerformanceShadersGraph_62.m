uint64_t mlir::OpBuilder::create<mlir::mps::ReductionArgMinOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionArgMinOp,mlir::Value &,mlir::Value &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionArgMinOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionMaxOp>::~CanonicalizeReductionAxes(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionMaxOp>::~CanonicalizeReductionAxes(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionMaxOp>::matchAndRewriteImpl(int a1, mlir::Operation *this, uint64_t a3)
{
  v227[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v228.var0 = "keep_dims", v228.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v228), (v6 & 1) == 0))
  {
    v229.var0 = "keep_dims";
    v229.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v229);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v9 = *(*(this + 9) + 24);
  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v217[0] = v10;
  v217[1] = v11;
  v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v215 = v12;
    v216 = v13;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v215 = 0;
    v216 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v217))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v217);
    if (v15)
    {
      v16 = 8 * v15;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v199 = this;
    if ((*(this + 46) & 0x80) != 0)
    {
      v17 = *(this + 9);
      v18 = *(this + 17) > 1u;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    __p = 0;
    v213 = 0;
    v214 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_301;
      }

      v20 = 8 * v19;
      v21 = operator new(8 * v19);
      v22 = &v21[v213 - __p];
      memcpy(v21, 0, v213 - __p);
      __p = v21;
      v213 = v22;
      v214 = &v21[v20];
    }

    v200 = a3;
    if (!v18)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v215);
      if (v37)
      {
        v38 = v213;
        v39 = -v37;
        do
        {
          if (v38 < v214)
          {
            *v38++ = v39;
          }

          else
          {
            v41 = __p;
            v42 = v38 - __p;
            v43 = (v38 - __p) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              goto LABEL_301;
            }

            v45 = v214 - __p;
            if ((v214 - __p) >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (v46 >> 61)
              {
LABEL_302:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v47 = operator new(8 * v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = &v47[8 * v43];
            *v48 = v39;
            v38 = v48 + 1;
            memcpy(v47, v41, v42);
            __p = v47;
            v214 = &v47[8 * v46];
            if (v41)
            {
              operator delete(v41);
            }
          }

          v213 = v38;
          v40 = __CFADD__(v39++, 1);
        }

        while (!v40);
      }

LABEL_69:
      v54 = __p;
      if (v213 == __p)
      {
        v222 = *(*(v199 + 9) + 24);
        v7 = 1;
        mlir::ValueRange::ValueRange(&v225, &v222, 1uLL);
        (**a3)(a3, v199, v225, v226);
        goto LABEL_298;
      }

      if (*__p > -5)
      {
        v7 = 1;
        goto LABEL_299;
      }

      v211 = *(v17 + 24);
      while (1)
      {
        if (__p == v213)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v225 = v191;
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
          v193 = mlir::RankedTensorType::get(&v225, 1, IntegerType, 0);
          v194 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v195 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v225, v194, (v195 + 8 * v196));
          v197 = *(v199 + 3);
          if (v193)
          {
            v198 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v193 + 8);
          }

          else
          {
            v198 = 0;
          }

          v221 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v198, v225, 8 * v226, 8, 1, 1);
          v222 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v197, &v221);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3, v199, &v211, &v222);
          if (v225 != v227)
          {
            free(v225);
          }

LABEL_297:
          v7 = 1;
LABEL_298:
          v54 = __p;
          if (!__p)
          {
            return v7;
          }

LABEL_299:
          v213 = v54;
          operator delete(v54);
          return v7;
        }

        v58 = v211;
        v218 = v211;
        v59 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        }

        else
        {
          v59 = 0;
        }

        v225 = v59;
        v226 = v60;
        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        v62 = v61;
        v63 = v213;
        v206 = __p;
        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        if (v64)
        {
          if (v64 >> 61)
          {
            goto LABEL_301;
          }

          v65 = 8 * v64;
          __src = operator new(8 * v64);
          v66 = &__src[v65];
        }

        else
        {
          v66 = 0;
          __src = 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        if (v67)
        {
          if (v67 >> 61)
          {
            goto LABEL_301;
          }

          v68 = v67;
          v69 = operator new(8 * v67);
          v207 = &v69[v68];
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = v69;
            v72 = v69;
            goto LABEL_102;
          }

          *v69 = -1;
          v72 = v69 + 1;
        }

        else
        {
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = 0;
            v72 = 0;
            v207 = 0;
            goto LABEL_102;
          }

          v69 = operator new(8uLL);
          *v69 = -1;
          v72 = v69 + 1;
          v207 = (v69 + 1);
        }

        v205 = v69;
        if (v70 == v206)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = *(v63 - 2);
        }

        v63 = v70;
LABEL_102:
        v73 = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        v202 = v71;
        if (v74)
        {
          v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        }

        else
        {
          v73 = 0;
        }

        v222 = v73;
        v223 = v74;
        v75 = mlir::CallableOpInterface::getArgAttrsAttr(&v222);
        PositiveAxis = mlir::getPositiveAxis(-1, v62);
        v77 = PositiveAxis;
        v78 = v66;
        v209 = v75;
        if (__src >= v66)
        {
          v80 = (v66 - __src) >> 2;
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 0x1FFFFFFFFFFFFFFFLL;
          if ((v66 - __src) < 0x7FFFFFFFFFFFFFF8)
          {
            v81 = v80;
          }

          if (v81 >> 61)
          {
            goto LABEL_302;
          }

          v82 = v81;
          v83 = operator new(8 * v81);
          v78 = &v83[v82];
          *v83 = *(v75 + 8 * v77);
          v79 = v83 + 1;
          if (__src)
          {
            operator delete(__src);
          }

          __src = v83;
        }

        else
        {
          *__src = *(v75 + 8 * PositiveAxis);
          v79 = (__src + 8);
        }

        v84 = v202;
        v85 = v202 == -2;
        if (v62 >= 2)
        {
          v89 = -v62;
          v90 = -2;
          v86 = 1;
          v204 = v62;
          v201 = -v62;
          while (1)
          {
            if (v85)
            {
              if (v90 == v84)
              {
                v86 *= *(v209 + 8 * mlir::getPositiveAxis(v84, v62));
LABEL_155:
                v91 = v63 - 1;
                if (v63 - 1 == v206)
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = *(v63 - 2);
                }

                v85 = 1;
                goto LABEL_122;
              }

              if (v79 >= v78)
              {
                v100 = v79 - __src;
                v101 = (v79 - __src) >> 3;
                v102 = v101 + 1;
                if ((v101 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v78 - __src) >> 2 > v102)
                {
                  v102 = (v78 - __src) >> 2;
                }

                if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  if (v103 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v104 = v86;
                  v105 = v84;
                  v106 = operator new(8 * v103);
                  v86 = v104;
                }

                else
                {
                  v105 = v84;
                  v106 = 0;
                }

                v109 = &v106[8 * v101];
                v78 = &v106[8 * v103];
                *v109 = v86;
                v79 = v109 + 1;
                memcpy(v106, __src, v100);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v106;
                v62 = v204;
                v84 = v105;
                v89 = v201;
              }

              else
              {
                *v79++ = v86;
              }

              v110 = *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              NegativeAxis = mlir::getNegativeAxis(0, (v79 - __src) >> 3);
              if (v72 >= v207)
              {
                v112 = v205;
                v113 = v72 - v205;
                v114 = v72 - v205;
                v115 = v114 + 1;
                if ((v114 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v207 - v205) >> 2 > v115)
                {
                  v115 = (v207 - v205) >> 2;
                }

                if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v115;
                }

                v203 = v84;
                if (v116)
                {
                  v208 = v63;
                  if (v116 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v117 = v78;
                  v118 = NegativeAxis;
                  v119 = operator new(8 * v116);
                  NegativeAxis = v118;
                  v112 = v205;
                  v78 = v117;
                  v63 = v208;
                  v89 = v201;
                }

                else
                {
                  v119 = 0;
                }

                v207 = &v119[8 * v116];
                v120 = &v119[8 * v114];
                *v120 = NegativeAxis;
                v72 = v120 + 1;
                v121 = v112;
                memcpy(v119, v112, v113);
                if (v121)
                {
                  operator delete(v121);
                }

                v85 = 0;
                v205 = v119;
                v91 = v63;
                v84 = v203;
                v62 = v204;
                v86 = v110;
              }

              else
              {
                v85 = 0;
                *v72++ = NegativeAxis;
                v91 = v63;
                v86 = v110;
              }
            }

            else
            {
              if (v90 == v84)
              {
                if (v79 >= v78)
                {
                  v93 = v79 - __src;
                  v94 = (v79 - __src) >> 3;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v78 - __src) >> 2 > v95)
                  {
                    v95 = (v78 - __src) >> 2;
                  }

                  if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v96 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  if (v96)
                  {
                    if (v96 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v97 = v86;
                    v98 = v84;
                    v99 = operator new(8 * v96);
                    v86 = v97;
                  }

                  else
                  {
                    v98 = v84;
                    v99 = 0;
                  }

                  v107 = &v99[8 * v94];
                  v108 = &v99[8 * v96];
                  *v107 = v86;
                  v79 = v107 + 1;
                  memcpy(v99, __src, v93);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v99;
                  v84 = v98;
                  v92 = v209;
                  v78 = v108;
                  v62 = v204;
                  v89 = v201;
                }

                else
                {
                  *v79++ = v86;
                  v92 = v209;
                }

                v86 = *(v92 + 8 * mlir::getPositiveAxis(v84, v62));
                goto LABEL_155;
              }

              v85 = 0;
              v86 *= *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              v91 = v63;
            }

LABEL_122:
            v63 = v91;
            v137 = v90-- <= v89;
            if (v137)
            {
              goto LABEL_117;
            }
          }
        }

        v86 = 1;
LABEL_117:
        if (v79 >= v78)
        {
          v122 = v72;
          v123 = v79 - __src;
          v124 = (v79 - __src) >> 3;
          v125 = v124 + 1;
          if ((v124 + 1) >> 61)
          {
            goto LABEL_301;
          }

          if ((v78 - __src) >> 2 > v125)
          {
            v125 = (v78 - __src) >> 2;
          }

          if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            if (v125 >> 61)
            {
              goto LABEL_302;
            }

            v126 = v86;
            v127 = operator new(8 * v125);
            v86 = v126;
          }

          else
          {
            v127 = 0;
          }

          v133 = &v127[8 * v124];
          *v133 = v86;
          v87 = (v133 + 1);
          memcpy(v127, __src, v123);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v127;
          v72 = v122;
          if (!v85)
          {
LABEL_198:
            a3 = v200;
            goto LABEL_203;
          }
        }

        else
        {
          *v79 = v86;
          v87 = (v79 + 1);
          if (!v85)
          {
            goto LABEL_198;
          }
        }

        v88 = mlir::getNegativeAxis(0, (v87 - __src) >> 3);
        if (v72 >= v207)
        {
          v128 = v205;
          v129 = v72 - v205;
          v130 = (v129 >> 3) + 1;
          a3 = v200;
          if (v130 >> 61)
          {
            goto LABEL_301;
          }

          if ((v207 - v205) >> 2 > v130)
          {
            v130 = (v207 - v205) >> 2;
          }

          if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
          {
            v130 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v130)
          {
            if (v130 >> 61)
            {
              goto LABEL_302;
            }

            v131 = v88;
            v132 = operator new(8 * v130);
            v88 = v131;
            v128 = v205;
          }

          else
          {
            v132 = 0;
          }

          v134 = &v132[8 * (v129 >> 3)];
          *v134 = v88;
          v135 = v134 + 1;
          memcpy(v132, v128, v129);
          if (v205)
          {
            operator delete(v205);
          }

          v205 = v132;
          v72 = v135;
        }

        else
        {
          *v72++ = v88;
          a3 = v200;
        }

LABEL_203:
        v136 = v87 - 8;
        v137 = __src != v87 && v136 > __src;
        if (v137)
        {
          v138 = __src + 8;
          do
          {
            v139 = *(v138 - 1);
            *(v138 - 1) = *v136;
            *v136 = v139;
            v136 -= 8;
            v40 = v138 >= v136;
            v138 += 8;
          }

          while (!v40);
        }

        v140 = v87;
        if (v205 != v72)
        {
          v141 = (v72 - 1);
          if (v72 - 1 > v205)
          {
            v142 = (v205 + 1);
            do
            {
              v143 = *(v142 - 1);
              *(v142 - 1) = *v141;
              *v141 = v143;
              v141 -= 8;
              v40 = v142 >= v141;
              v142 += 8;
            }

            while (!v40);
          }
        }

        v144 = v72;
        Loc = mlir::Value::getLoc(&v218);
        v222 = v211;
        v221 = (v140 - __src) >> 3;
        v146 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v147 = mlir::RankedTensorType::get(&v221, 1, v146, 0);
        if (v147)
        {
          v148 = v147;
          v149 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          v147 = v148;
        }

        else
        {
          v149 = 0;
        }

        v220 = mlir::DenseElementsAttr::getFromRawBuffer(v147, v149, __src, v140 - __src, 8, 1, 1);
        v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v220);
        v211 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v222, &v221) - 16;
        std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v205, v144, (v144 - v205) >> 3);
        if (v205)
        {
          operator delete(v205);
        }

        if (__src)
        {
          operator delete(__src);
        }

        v218 = v211;
        v150 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        if (v151)
        {
          v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        }

        else
        {
          v150 = 0;
        }

        v225 = v150;
        v226 = v151;
        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        if (v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_301;
          }

          v153 = v152;
          v154 = operator new(8 * v152);
          v155 = &v154[v153];
        }

        else
        {
          v155 = 0;
          v154 = 0;
        }

        v156 = (v213 - __p) >> 3;
        v157 = v156 - 1;
        if (v156 < 1)
        {
          goto LABEL_256;
        }

        v158 = v154;
        while (1)
        {
          v159 = *(__p + v157);
          if (v159 < -4)
          {
            break;
          }

          if (v158 < v155)
          {
            *v158++ = v159;
          }

          else
          {
            v160 = v158 - v154;
            v161 = v158 - v154;
            v162 = v161 + 1;
            if ((v161 + 1) >> 61)
            {
              goto LABEL_301;
            }

            if ((v155 - v154) >> 2 > v162)
            {
              v162 = (v155 - v154) >> 2;
            }

            if ((v155 - v154) >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v162;
            }

            if (v163)
            {
              if (v163 >> 61)
              {
                goto LABEL_302;
              }

              v164 = operator new(8 * v163);
            }

            else
            {
              v164 = 0;
            }

            v165 = &v164[8 * v161];
            v155 = &v164[8 * v163];
            *v165 = v159;
            v158 = v165 + 1;
            memcpy(v164, v154, v160);
            if (v154)
            {
              operator delete(v154);
            }

            v154 = v164;
          }

          v137 = v157-- <= 0;
          if (v137)
          {
            v157 = -1;
            break;
          }
        }

        v166 = v158 - v154;
        if (v158 == v154)
        {
          goto LABEL_256;
        }

        v167 = mlir::Value::getLoc(&v218);
        v222 = v218;
        v221 = v166 >> 3;
        v168 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v169 = mlir::RankedTensorType::get(&v221, 1, v168, 0);
        if (v169)
        {
          v170 = v169;
          v171 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v169 + 8);
          v169 = v170;
        }

        else
        {
          v171 = 0;
        }

        v172 = 1;
        v220 = mlir::DenseElementsAttr::getFromRawBuffer(v169, v171, v154, v166, 8, 1, 1);
        v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, &v220) - 16;
        LOBYTE(v220) = 1;
        v219 = 0;
        v173 = mlir::OpBuilder::create<mlir::mps::ReductionMaxOp,mlir::Value &,mlir::Value &,BOOL,BOOL>((a3 + 8), v167, &v222, &v221, &v220, &v219);
        if (mlir::mps::inferTypes(v173, v174))
        {
          v211 = v173 - 16;
LABEL_256:
          mlir::CallableOpInterface::getArgAttrsAttr(&v225);
          if (v175)
          {
            if (v175 >> 61)
            {
              goto LABEL_301;
            }

            v176 = 8 * v175;
            v177 = operator new(8 * v175);
            v178 = &v177[v176];
            v179 = v177;
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            if ((v157 & 0x8000000000000000) == 0)
            {
              do
              {
LABEL_264:
                v180 = *(__p + v157);
                if (v177 < v178)
                {
                  *v177 = v180;
                  v177 += 8;
                }

                else
                {
                  v181 = v177 - v179;
                  v182 = (v177 - v179) >> 3;
                  v183 = v182 + 1;
                  if ((v182 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v178 - v179) >> 2 > v183)
                  {
                    v183 = (v178 - v179) >> 2;
                  }

                  if ((v178 - v179) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v184 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v184 = v183;
                  }

                  if (v184)
                  {
                    if (v184 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v185 = operator new(8 * v184);
                  }

                  else
                  {
                    v185 = 0;
                  }

                  v186 = &v185[8 * v182];
                  v178 = &v185[8 * v184];
                  *v186 = v180;
                  v177 = v186 + 8;
                  memcpy(v185, v179, v181);
                  if (v179)
                  {
                    operator delete(v179);
                  }

                  v179 = v185;
                }

                v137 = v157-- <= 0;
              }

              while (!v137);
              v187 = v177 - 8;
              if (v179 != v177 && v187 > v179)
              {
                v189 = v179 + 8;
                do
                {
                  v190 = *(v189 - 1);
                  *(v189 - 1) = *v187;
                  *v187 = v190;
                  v187 -= 8;
                  v40 = v189 >= v187;
                  v189 += 8;
                }

                while (!v40);
              }
            }
          }

          std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v179, v177, (v177 - v179) >> 3);
          if (v179)
          {
            operator delete(v179);
          }

          v172 = 0;
        }

        if (v154)
        {
          operator delete(v154);
        }

        if (v172)
        {
          v7 = 0;
          goto LABEL_298;
        }
      }
    }

    v23 = *(v17 + 56);
    v225 = v227;
    v226 = 0x400000000;
    matched = mlir::matchConstantWithIntVector<long long>(v23, &v225);
    if ((matched & 1) == 0)
    {
LABEL_66:
      if (v225 != v227)
      {
        free(v225);
      }

      if ((matched & 1) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_69;
    }

    v223 = 0;
    v224 = 0;
    v222 = &v223;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v226)
    {
      v26 = v25;
      v27 = v225;
      v28 = &v225[8 * v226];
      do
      {
        v30 = mlir::getNegativeAxis(*v27, v26);
        v31 = v30;
        v32 = v223;
        v33 = &v223;
        v34 = &v223;
        if (v223)
        {
          while (1)
          {
            while (1)
            {
              v34 = v32;
              v35 = v32[4];
              if (v30 >= v35)
              {
                break;
              }

              v32 = *v34;
              v33 = v34;
              if (!*v34)
              {
                goto LABEL_39;
              }
            }

            if (v35 >= v30)
            {
              break;
            }

            v32 = v34[1];
            if (!v32)
            {
              v33 = v34 + 1;
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v36 = operator new(0x28uLL);
          v36[4] = v31;
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v34;
          *v33 = v36;
          if (*v222)
          {
            v222 = *v222;
            v29 = *v33;
          }

          else
          {
            v29 = v36;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v223, v29);
          ++v224;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    if (!v224)
    {
      v51 = 0;
      v52 = 0;
      v50 = 0;
      a3 = v200;
      goto LABEL_62;
    }

    a3 = v200;
    if (!(v224 >> 61))
    {
      v49 = v224;
      v50 = operator new(8 * v224);
      v51 = &v50[v49];
      bzero(v50, v49 * 8);
      v52 = &v50[v49];
LABEL_62:
      if (__p)
      {
        v213 = __p;
        operator delete(__p);
      }

      __p = v50;
      v213 = v52;
      v214 = v51;
      v53 = v222;
      if (v222 != &v223)
      {
        do
        {
          *v50 = v53[4];
          v55 = v53[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v53[2];
              v57 = *v56 == v53;
              v53 = v56;
            }

            while (!v57);
          }

          ++v50;
          v53 = v56;
        }

        while (v56 != &v223);
      }

      std::__tree<unsigned long long>::destroy(&v222, v223);
      goto LABEL_66;
    }

LABEL_301:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMaxOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMaxOp,mlir::Value &,mlir::Value &,mlir::UnitAttr,mlir::UnitAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionMaxOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void *mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionMinOp>::~CanonicalizeReductionAxes(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionMinOp>::~CanonicalizeReductionAxes(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionMinOp>::matchAndRewriteImpl(int a1, mlir::Operation *this, uint64_t a3)
{
  v227[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v228.var0 = "keep_dims", v228.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v228), (v6 & 1) == 0))
  {
    v229.var0 = "keep_dims";
    v229.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v229);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v9 = *(*(this + 9) + 24);
  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v217[0] = v10;
  v217[1] = v11;
  v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v215 = v12;
    v216 = v13;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v215 = 0;
    v216 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v217))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v217);
    if (v15)
    {
      v16 = 8 * v15;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v199 = this;
    if ((*(this + 46) & 0x80) != 0)
    {
      v17 = *(this + 9);
      v18 = *(this + 17) > 1u;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    __p = 0;
    v213 = 0;
    v214 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_301;
      }

      v20 = 8 * v19;
      v21 = operator new(8 * v19);
      v22 = &v21[v213 - __p];
      memcpy(v21, 0, v213 - __p);
      __p = v21;
      v213 = v22;
      v214 = &v21[v20];
    }

    v200 = a3;
    if (!v18)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v215);
      if (v37)
      {
        v38 = v213;
        v39 = -v37;
        do
        {
          if (v38 < v214)
          {
            *v38++ = v39;
          }

          else
          {
            v41 = __p;
            v42 = v38 - __p;
            v43 = (v38 - __p) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              goto LABEL_301;
            }

            v45 = v214 - __p;
            if ((v214 - __p) >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (v46 >> 61)
              {
LABEL_302:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v47 = operator new(8 * v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = &v47[8 * v43];
            *v48 = v39;
            v38 = v48 + 1;
            memcpy(v47, v41, v42);
            __p = v47;
            v214 = &v47[8 * v46];
            if (v41)
            {
              operator delete(v41);
            }
          }

          v213 = v38;
          v40 = __CFADD__(v39++, 1);
        }

        while (!v40);
      }

LABEL_69:
      v54 = __p;
      if (v213 == __p)
      {
        v222 = *(*(v199 + 9) + 24);
        v7 = 1;
        mlir::ValueRange::ValueRange(&v225, &v222, 1uLL);
        (**a3)(a3, v199, v225, v226);
        goto LABEL_298;
      }

      if (*__p > -5)
      {
        v7 = 1;
        goto LABEL_299;
      }

      v211 = *(v17 + 24);
      while (1)
      {
        if (__p == v213)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v225 = v191;
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
          v193 = mlir::RankedTensorType::get(&v225, 1, IntegerType, 0);
          v194 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v195 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v225, v194, (v195 + 8 * v196));
          v197 = *(v199 + 3);
          if (v193)
          {
            v198 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v193 + 8);
          }

          else
          {
            v198 = 0;
          }

          v221 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v198, v225, 8 * v226, 8, 1, 1);
          v222 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v197, &v221);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3, v199, &v211, &v222);
          if (v225 != v227)
          {
            free(v225);
          }

LABEL_297:
          v7 = 1;
LABEL_298:
          v54 = __p;
          if (!__p)
          {
            return v7;
          }

LABEL_299:
          v213 = v54;
          operator delete(v54);
          return v7;
        }

        v58 = v211;
        v218 = v211;
        v59 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        }

        else
        {
          v59 = 0;
        }

        v225 = v59;
        v226 = v60;
        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        v62 = v61;
        v63 = v213;
        v206 = __p;
        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        if (v64)
        {
          if (v64 >> 61)
          {
            goto LABEL_301;
          }

          v65 = 8 * v64;
          __src = operator new(8 * v64);
          v66 = &__src[v65];
        }

        else
        {
          v66 = 0;
          __src = 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        if (v67)
        {
          if (v67 >> 61)
          {
            goto LABEL_301;
          }

          v68 = v67;
          v69 = operator new(8 * v67);
          v207 = &v69[v68];
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = v69;
            v72 = v69;
            goto LABEL_102;
          }

          *v69 = -1;
          v72 = v69 + 1;
        }

        else
        {
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = 0;
            v72 = 0;
            v207 = 0;
            goto LABEL_102;
          }

          v69 = operator new(8uLL);
          *v69 = -1;
          v72 = v69 + 1;
          v207 = (v69 + 1);
        }

        v205 = v69;
        if (v70 == v206)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = *(v63 - 2);
        }

        v63 = v70;
LABEL_102:
        v73 = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        v202 = v71;
        if (v74)
        {
          v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        }

        else
        {
          v73 = 0;
        }

        v222 = v73;
        v223 = v74;
        v75 = mlir::CallableOpInterface::getArgAttrsAttr(&v222);
        PositiveAxis = mlir::getPositiveAxis(-1, v62);
        v77 = PositiveAxis;
        v78 = v66;
        v209 = v75;
        if (__src >= v66)
        {
          v80 = (v66 - __src) >> 2;
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 0x1FFFFFFFFFFFFFFFLL;
          if ((v66 - __src) < 0x7FFFFFFFFFFFFFF8)
          {
            v81 = v80;
          }

          if (v81 >> 61)
          {
            goto LABEL_302;
          }

          v82 = v81;
          v83 = operator new(8 * v81);
          v78 = &v83[v82];
          *v83 = *(v75 + 8 * v77);
          v79 = v83 + 1;
          if (__src)
          {
            operator delete(__src);
          }

          __src = v83;
        }

        else
        {
          *__src = *(v75 + 8 * PositiveAxis);
          v79 = (__src + 8);
        }

        v84 = v202;
        v85 = v202 == -2;
        if (v62 >= 2)
        {
          v89 = -v62;
          v90 = -2;
          v86 = 1;
          v204 = v62;
          v201 = -v62;
          while (1)
          {
            if (v85)
            {
              if (v90 == v84)
              {
                v86 *= *(v209 + 8 * mlir::getPositiveAxis(v84, v62));
LABEL_155:
                v91 = v63 - 1;
                if (v63 - 1 == v206)
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = *(v63 - 2);
                }

                v85 = 1;
                goto LABEL_122;
              }

              if (v79 >= v78)
              {
                v100 = v79 - __src;
                v101 = (v79 - __src) >> 3;
                v102 = v101 + 1;
                if ((v101 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v78 - __src) >> 2 > v102)
                {
                  v102 = (v78 - __src) >> 2;
                }

                if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  if (v103 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v104 = v86;
                  v105 = v84;
                  v106 = operator new(8 * v103);
                  v86 = v104;
                }

                else
                {
                  v105 = v84;
                  v106 = 0;
                }

                v109 = &v106[8 * v101];
                v78 = &v106[8 * v103];
                *v109 = v86;
                v79 = v109 + 1;
                memcpy(v106, __src, v100);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v106;
                v62 = v204;
                v84 = v105;
                v89 = v201;
              }

              else
              {
                *v79++ = v86;
              }

              v110 = *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              NegativeAxis = mlir::getNegativeAxis(0, (v79 - __src) >> 3);
              if (v72 >= v207)
              {
                v112 = v205;
                v113 = v72 - v205;
                v114 = v72 - v205;
                v115 = v114 + 1;
                if ((v114 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v207 - v205) >> 2 > v115)
                {
                  v115 = (v207 - v205) >> 2;
                }

                if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v115;
                }

                v203 = v84;
                if (v116)
                {
                  v208 = v63;
                  if (v116 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v117 = v78;
                  v118 = NegativeAxis;
                  v119 = operator new(8 * v116);
                  NegativeAxis = v118;
                  v112 = v205;
                  v78 = v117;
                  v63 = v208;
                  v89 = v201;
                }

                else
                {
                  v119 = 0;
                }

                v207 = &v119[8 * v116];
                v120 = &v119[8 * v114];
                *v120 = NegativeAxis;
                v72 = v120 + 1;
                v121 = v112;
                memcpy(v119, v112, v113);
                if (v121)
                {
                  operator delete(v121);
                }

                v85 = 0;
                v205 = v119;
                v91 = v63;
                v84 = v203;
                v62 = v204;
                v86 = v110;
              }

              else
              {
                v85 = 0;
                *v72++ = NegativeAxis;
                v91 = v63;
                v86 = v110;
              }
            }

            else
            {
              if (v90 == v84)
              {
                if (v79 >= v78)
                {
                  v93 = v79 - __src;
                  v94 = (v79 - __src) >> 3;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v78 - __src) >> 2 > v95)
                  {
                    v95 = (v78 - __src) >> 2;
                  }

                  if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v96 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  if (v96)
                  {
                    if (v96 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v97 = v86;
                    v98 = v84;
                    v99 = operator new(8 * v96);
                    v86 = v97;
                  }

                  else
                  {
                    v98 = v84;
                    v99 = 0;
                  }

                  v107 = &v99[8 * v94];
                  v108 = &v99[8 * v96];
                  *v107 = v86;
                  v79 = v107 + 1;
                  memcpy(v99, __src, v93);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v99;
                  v84 = v98;
                  v92 = v209;
                  v78 = v108;
                  v62 = v204;
                  v89 = v201;
                }

                else
                {
                  *v79++ = v86;
                  v92 = v209;
                }

                v86 = *(v92 + 8 * mlir::getPositiveAxis(v84, v62));
                goto LABEL_155;
              }

              v85 = 0;
              v86 *= *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              v91 = v63;
            }

LABEL_122:
            v63 = v91;
            v137 = v90-- <= v89;
            if (v137)
            {
              goto LABEL_117;
            }
          }
        }

        v86 = 1;
LABEL_117:
        if (v79 >= v78)
        {
          v122 = v72;
          v123 = v79 - __src;
          v124 = (v79 - __src) >> 3;
          v125 = v124 + 1;
          if ((v124 + 1) >> 61)
          {
            goto LABEL_301;
          }

          if ((v78 - __src) >> 2 > v125)
          {
            v125 = (v78 - __src) >> 2;
          }

          if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            if (v125 >> 61)
            {
              goto LABEL_302;
            }

            v126 = v86;
            v127 = operator new(8 * v125);
            v86 = v126;
          }

          else
          {
            v127 = 0;
          }

          v133 = &v127[8 * v124];
          *v133 = v86;
          v87 = (v133 + 1);
          memcpy(v127, __src, v123);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v127;
          v72 = v122;
          if (!v85)
          {
LABEL_198:
            a3 = v200;
            goto LABEL_203;
          }
        }

        else
        {
          *v79 = v86;
          v87 = (v79 + 1);
          if (!v85)
          {
            goto LABEL_198;
          }
        }

        v88 = mlir::getNegativeAxis(0, (v87 - __src) >> 3);
        if (v72 >= v207)
        {
          v128 = v205;
          v129 = v72 - v205;
          v130 = (v129 >> 3) + 1;
          a3 = v200;
          if (v130 >> 61)
          {
            goto LABEL_301;
          }

          if ((v207 - v205) >> 2 > v130)
          {
            v130 = (v207 - v205) >> 2;
          }

          if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
          {
            v130 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v130)
          {
            if (v130 >> 61)
            {
              goto LABEL_302;
            }

            v131 = v88;
            v132 = operator new(8 * v130);
            v88 = v131;
            v128 = v205;
          }

          else
          {
            v132 = 0;
          }

          v134 = &v132[8 * (v129 >> 3)];
          *v134 = v88;
          v135 = v134 + 1;
          memcpy(v132, v128, v129);
          if (v205)
          {
            operator delete(v205);
          }

          v205 = v132;
          v72 = v135;
        }

        else
        {
          *v72++ = v88;
          a3 = v200;
        }

LABEL_203:
        v136 = v87 - 8;
        v137 = __src != v87 && v136 > __src;
        if (v137)
        {
          v138 = __src + 8;
          do
          {
            v139 = *(v138 - 1);
            *(v138 - 1) = *v136;
            *v136 = v139;
            v136 -= 8;
            v40 = v138 >= v136;
            v138 += 8;
          }

          while (!v40);
        }

        v140 = v87;
        if (v205 != v72)
        {
          v141 = (v72 - 1);
          if (v72 - 1 > v205)
          {
            v142 = (v205 + 1);
            do
            {
              v143 = *(v142 - 1);
              *(v142 - 1) = *v141;
              *v141 = v143;
              v141 -= 8;
              v40 = v142 >= v141;
              v142 += 8;
            }

            while (!v40);
          }
        }

        v144 = v72;
        Loc = mlir::Value::getLoc(&v218);
        v222 = v211;
        v221 = (v140 - __src) >> 3;
        v146 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v147 = mlir::RankedTensorType::get(&v221, 1, v146, 0);
        if (v147)
        {
          v148 = v147;
          v149 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          v147 = v148;
        }

        else
        {
          v149 = 0;
        }

        v220 = mlir::DenseElementsAttr::getFromRawBuffer(v147, v149, __src, v140 - __src, 8, 1, 1);
        v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v220);
        v211 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v222, &v221) - 16;
        std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v205, v144, (v144 - v205) >> 3);
        if (v205)
        {
          operator delete(v205);
        }

        if (__src)
        {
          operator delete(__src);
        }

        v218 = v211;
        v150 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        if (v151)
        {
          v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        }

        else
        {
          v150 = 0;
        }

        v225 = v150;
        v226 = v151;
        mlir::CallableOpInterface::getArgAttrsAttr(&v225);
        if (v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_301;
          }

          v153 = v152;
          v154 = operator new(8 * v152);
          v155 = &v154[v153];
        }

        else
        {
          v155 = 0;
          v154 = 0;
        }

        v156 = (v213 - __p) >> 3;
        v157 = v156 - 1;
        if (v156 < 1)
        {
          goto LABEL_256;
        }

        v158 = v154;
        while (1)
        {
          v159 = *(__p + v157);
          if (v159 < -4)
          {
            break;
          }

          if (v158 < v155)
          {
            *v158++ = v159;
          }

          else
          {
            v160 = v158 - v154;
            v161 = v158 - v154;
            v162 = v161 + 1;
            if ((v161 + 1) >> 61)
            {
              goto LABEL_301;
            }

            if ((v155 - v154) >> 2 > v162)
            {
              v162 = (v155 - v154) >> 2;
            }

            if ((v155 - v154) >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v162;
            }

            if (v163)
            {
              if (v163 >> 61)
              {
                goto LABEL_302;
              }

              v164 = operator new(8 * v163);
            }

            else
            {
              v164 = 0;
            }

            v165 = &v164[8 * v161];
            v155 = &v164[8 * v163];
            *v165 = v159;
            v158 = v165 + 1;
            memcpy(v164, v154, v160);
            if (v154)
            {
              operator delete(v154);
            }

            v154 = v164;
          }

          v137 = v157-- <= 0;
          if (v137)
          {
            v157 = -1;
            break;
          }
        }

        v166 = v158 - v154;
        if (v158 == v154)
        {
          goto LABEL_256;
        }

        v167 = mlir::Value::getLoc(&v218);
        v222 = v218;
        v221 = v166 >> 3;
        v168 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v169 = mlir::RankedTensorType::get(&v221, 1, v168, 0);
        if (v169)
        {
          v170 = v169;
          v171 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v169 + 8);
          v169 = v170;
        }

        else
        {
          v171 = 0;
        }

        v172 = 1;
        v220 = mlir::DenseElementsAttr::getFromRawBuffer(v169, v171, v154, v166, 8, 1, 1);
        v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, &v220) - 16;
        LOBYTE(v220) = 1;
        v219 = 0;
        v173 = mlir::OpBuilder::create<mlir::mps::ReductionMinOp,mlir::Value &,mlir::Value &,BOOL,BOOL>((a3 + 8), v167, &v222, &v221, &v220, &v219);
        if (mlir::mps::inferTypes(v173, v174))
        {
          v211 = v173 - 16;
LABEL_256:
          mlir::CallableOpInterface::getArgAttrsAttr(&v225);
          if (v175)
          {
            if (v175 >> 61)
            {
              goto LABEL_301;
            }

            v176 = 8 * v175;
            v177 = operator new(8 * v175);
            v178 = &v177[v176];
            v179 = v177;
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            if ((v157 & 0x8000000000000000) == 0)
            {
              do
              {
LABEL_264:
                v180 = *(__p + v157);
                if (v177 < v178)
                {
                  *v177 = v180;
                  v177 += 8;
                }

                else
                {
                  v181 = v177 - v179;
                  v182 = (v177 - v179) >> 3;
                  v183 = v182 + 1;
                  if ((v182 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v178 - v179) >> 2 > v183)
                  {
                    v183 = (v178 - v179) >> 2;
                  }

                  if ((v178 - v179) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v184 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v184 = v183;
                  }

                  if (v184)
                  {
                    if (v184 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v185 = operator new(8 * v184);
                  }

                  else
                  {
                    v185 = 0;
                  }

                  v186 = &v185[8 * v182];
                  v178 = &v185[8 * v184];
                  *v186 = v180;
                  v177 = v186 + 8;
                  memcpy(v185, v179, v181);
                  if (v179)
                  {
                    operator delete(v179);
                  }

                  v179 = v185;
                }

                v137 = v157-- <= 0;
              }

              while (!v137);
              v187 = v177 - 8;
              if (v179 != v177 && v187 > v179)
              {
                v189 = v179 + 8;
                do
                {
                  v190 = *(v189 - 1);
                  *(v189 - 1) = *v187;
                  *v187 = v190;
                  v187 -= 8;
                  v40 = v189 >= v187;
                  v189 += 8;
                }

                while (!v40);
              }
            }
          }

          std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v179, v177, (v177 - v179) >> 3);
          if (v179)
          {
            operator delete(v179);
          }

          v172 = 0;
        }

        if (v154)
        {
          operator delete(v154);
        }

        if (v172)
        {
          v7 = 0;
          goto LABEL_298;
        }
      }
    }

    v23 = *(v17 + 56);
    v225 = v227;
    v226 = 0x400000000;
    matched = mlir::matchConstantWithIntVector<long long>(v23, &v225);
    if ((matched & 1) == 0)
    {
LABEL_66:
      if (v225 != v227)
      {
        free(v225);
      }

      if ((matched & 1) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_69;
    }

    v223 = 0;
    v224 = 0;
    v222 = &v223;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v226)
    {
      v26 = v25;
      v27 = v225;
      v28 = &v225[8 * v226];
      do
      {
        v30 = mlir::getNegativeAxis(*v27, v26);
        v31 = v30;
        v32 = v223;
        v33 = &v223;
        v34 = &v223;
        if (v223)
        {
          while (1)
          {
            while (1)
            {
              v34 = v32;
              v35 = v32[4];
              if (v30 >= v35)
              {
                break;
              }

              v32 = *v34;
              v33 = v34;
              if (!*v34)
              {
                goto LABEL_39;
              }
            }

            if (v35 >= v30)
            {
              break;
            }

            v32 = v34[1];
            if (!v32)
            {
              v33 = v34 + 1;
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v36 = operator new(0x28uLL);
          v36[4] = v31;
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v34;
          *v33 = v36;
          if (*v222)
          {
            v222 = *v222;
            v29 = *v33;
          }

          else
          {
            v29 = v36;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v223, v29);
          ++v224;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    if (!v224)
    {
      v51 = 0;
      v52 = 0;
      v50 = 0;
      a3 = v200;
      goto LABEL_62;
    }

    a3 = v200;
    if (!(v224 >> 61))
    {
      v49 = v224;
      v50 = operator new(8 * v224);
      v51 = &v50[v49];
      bzero(v50, v49 * 8);
      v52 = &v50[v49];
LABEL_62:
      if (__p)
      {
        v213 = __p;
        operator delete(__p);
      }

      __p = v50;
      v213 = v52;
      v214 = v51;
      v53 = v222;
      if (v222 != &v223)
      {
        do
        {
          *v50 = v53[4];
          v55 = v53[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v53[2];
              v57 = *v56 == v53;
              v53 = v56;
            }

            while (!v57);
          }

          ++v50;
          v53 = v56;
        }

        while (v56 != &v223);
      }

      std::__tree<unsigned long long>::destroy(&v222, v223);
      goto LABEL_66;
    }

LABEL_301:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMinOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMinOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionMinOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void *mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionProdOp>::~CanonicalizeReductionAxes(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionProdOp>::~CanonicalizeReductionAxes(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionProdOp>::matchAndRewriteImpl(int a1, mlir::Operation *this, uint64_t a3)
{
  v226[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v227.var0 = "keep_dims", v227.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v227), (v6 & 1) == 0))
  {
    v228.var0 = "keep_dims";
    v228.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v228);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v9 = *(*(this + 9) + 24);
  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v217[0] = v10;
  v217[1] = v11;
  v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v215 = v12;
    v216 = v13;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v215 = 0;
    v216 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v217))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v217);
    if (v15)
    {
      v16 = 8 * v15;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v199 = this;
    if ((*(this + 46) & 0x80) != 0)
    {
      v17 = *(this + 9);
      v18 = *(this + 17) > 1u;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    __p = 0;
    v213 = 0;
    v214 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_301;
      }

      v20 = 8 * v19;
      v21 = operator new(8 * v19);
      v22 = &v21[v213 - __p];
      memcpy(v21, 0, v213 - __p);
      __p = v21;
      v213 = v22;
      v214 = &v21[v20];
    }

    v200 = a3;
    if (!v18)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v215);
      if (v37)
      {
        v38 = v213;
        v39 = -v37;
        do
        {
          if (v38 < v214)
          {
            *v38++ = v39;
          }

          else
          {
            v41 = __p;
            v42 = v38 - __p;
            v43 = (v38 - __p) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              goto LABEL_301;
            }

            v45 = v214 - __p;
            if ((v214 - __p) >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (v46 >> 61)
              {
LABEL_302:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v47 = operator new(8 * v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = &v47[8 * v43];
            *v48 = v39;
            v38 = v48 + 1;
            memcpy(v47, v41, v42);
            __p = v47;
            v214 = &v47[8 * v46];
            if (v41)
            {
              operator delete(v41);
            }
          }

          v213 = v38;
          v40 = __CFADD__(v39++, 1);
        }

        while (!v40);
      }

LABEL_69:
      v54 = __p;
      if (v213 == __p)
      {
        v221 = *(*(v199 + 9) + 24);
        v7 = 1;
        mlir::ValueRange::ValueRange(&v224, &v221, 1uLL);
        (**a3)(a3, v199, v224, v225);
        goto LABEL_298;
      }

      if (*__p > -5)
      {
        v7 = 1;
        goto LABEL_299;
      }

      v211 = *(v17 + 24);
      while (1)
      {
        if (__p == v213)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v224 = v191;
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
          v193 = mlir::RankedTensorType::get(&v224, 1, IntegerType, 0);
          v194 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v195 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v224, v194, (v195 + 8 * v196));
          v197 = *(v199 + 3);
          if (v193)
          {
            v198 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v193 + 8);
          }

          else
          {
            v198 = 0;
          }

          v220 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v198, v224, 8 * v225, 8, 1, 1);
          v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v197, &v220);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3, v199, &v211, &v221);
          if (v224 != v226)
          {
            free(v224);
          }

LABEL_297:
          v7 = 1;
LABEL_298:
          v54 = __p;
          if (!__p)
          {
            return v7;
          }

LABEL_299:
          v213 = v54;
          operator delete(v54);
          return v7;
        }

        v58 = v211;
        v218 = v211;
        v59 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        }

        else
        {
          v59 = 0;
        }

        v224 = v59;
        v225 = v60;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        v62 = v61;
        v63 = v213;
        v206 = __p;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v64)
        {
          if (v64 >> 61)
          {
            goto LABEL_301;
          }

          v65 = 8 * v64;
          __src = operator new(8 * v64);
          v66 = &__src[v65];
        }

        else
        {
          v66 = 0;
          __src = 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v67)
        {
          if (v67 >> 61)
          {
            goto LABEL_301;
          }

          v68 = v67;
          v69 = operator new(8 * v67);
          v207 = &v69[v68];
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = v69;
            v72 = v69;
            goto LABEL_102;
          }

          *v69 = -1;
          v72 = v69 + 1;
        }

        else
        {
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = 0;
            v72 = 0;
            v207 = 0;
            goto LABEL_102;
          }

          v69 = operator new(8uLL);
          *v69 = -1;
          v72 = v69 + 1;
          v207 = (v69 + 1);
        }

        v205 = v69;
        if (v70 == v206)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = *(v63 - 2);
        }

        v63 = v70;
LABEL_102:
        v73 = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        v202 = v71;
        if (v74)
        {
          v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        }

        else
        {
          v73 = 0;
        }

        v221 = v73;
        v222 = v74;
        v75 = mlir::CallableOpInterface::getArgAttrsAttr(&v221);
        PositiveAxis = mlir::getPositiveAxis(-1, v62);
        v77 = PositiveAxis;
        v78 = v66;
        v209 = v75;
        if (__src >= v66)
        {
          v80 = (v66 - __src) >> 2;
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 0x1FFFFFFFFFFFFFFFLL;
          if ((v66 - __src) < 0x7FFFFFFFFFFFFFF8)
          {
            v81 = v80;
          }

          if (v81 >> 61)
          {
            goto LABEL_302;
          }

          v82 = v81;
          v83 = operator new(8 * v81);
          v78 = &v83[v82];
          *v83 = *(v75 + 8 * v77);
          v79 = v83 + 1;
          if (__src)
          {
            operator delete(__src);
          }

          __src = v83;
        }

        else
        {
          *__src = *(v75 + 8 * PositiveAxis);
          v79 = (__src + 8);
        }

        v84 = v202;
        v85 = v202 == -2;
        if (v62 >= 2)
        {
          v89 = -v62;
          v90 = -2;
          v86 = 1;
          v204 = v62;
          v201 = -v62;
          while (1)
          {
            if (v85)
            {
              if (v90 == v84)
              {
                v86 *= *(v209 + 8 * mlir::getPositiveAxis(v84, v62));
LABEL_155:
                v91 = v63 - 1;
                if (v63 - 1 == v206)
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = *(v63 - 2);
                }

                v85 = 1;
                goto LABEL_122;
              }

              if (v79 >= v78)
              {
                v100 = v79 - __src;
                v101 = (v79 - __src) >> 3;
                v102 = v101 + 1;
                if ((v101 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v78 - __src) >> 2 > v102)
                {
                  v102 = (v78 - __src) >> 2;
                }

                if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  if (v103 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v104 = v86;
                  v105 = v84;
                  v106 = operator new(8 * v103);
                  v86 = v104;
                }

                else
                {
                  v105 = v84;
                  v106 = 0;
                }

                v109 = &v106[8 * v101];
                v78 = &v106[8 * v103];
                *v109 = v86;
                v79 = v109 + 1;
                memcpy(v106, __src, v100);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v106;
                v62 = v204;
                v84 = v105;
                v89 = v201;
              }

              else
              {
                *v79++ = v86;
              }

              v110 = *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              NegativeAxis = mlir::getNegativeAxis(0, (v79 - __src) >> 3);
              if (v72 >= v207)
              {
                v112 = v205;
                v113 = v72 - v205;
                v114 = v72 - v205;
                v115 = v114 + 1;
                if ((v114 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v207 - v205) >> 2 > v115)
                {
                  v115 = (v207 - v205) >> 2;
                }

                if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v115;
                }

                v203 = v84;
                if (v116)
                {
                  v208 = v63;
                  if (v116 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v117 = v78;
                  v118 = NegativeAxis;
                  v119 = operator new(8 * v116);
                  NegativeAxis = v118;
                  v112 = v205;
                  v78 = v117;
                  v63 = v208;
                  v89 = v201;
                }

                else
                {
                  v119 = 0;
                }

                v207 = &v119[8 * v116];
                v120 = &v119[8 * v114];
                *v120 = NegativeAxis;
                v72 = v120 + 1;
                v121 = v112;
                memcpy(v119, v112, v113);
                if (v121)
                {
                  operator delete(v121);
                }

                v85 = 0;
                v205 = v119;
                v91 = v63;
                v84 = v203;
                v62 = v204;
                v86 = v110;
              }

              else
              {
                v85 = 0;
                *v72++ = NegativeAxis;
                v91 = v63;
                v86 = v110;
              }
            }

            else
            {
              if (v90 == v84)
              {
                if (v79 >= v78)
                {
                  v93 = v79 - __src;
                  v94 = (v79 - __src) >> 3;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v78 - __src) >> 2 > v95)
                  {
                    v95 = (v78 - __src) >> 2;
                  }

                  if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v96 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  if (v96)
                  {
                    if (v96 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v97 = v86;
                    v98 = v84;
                    v99 = operator new(8 * v96);
                    v86 = v97;
                  }

                  else
                  {
                    v98 = v84;
                    v99 = 0;
                  }

                  v107 = &v99[8 * v94];
                  v108 = &v99[8 * v96];
                  *v107 = v86;
                  v79 = v107 + 1;
                  memcpy(v99, __src, v93);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v99;
                  v84 = v98;
                  v92 = v209;
                  v78 = v108;
                  v62 = v204;
                  v89 = v201;
                }

                else
                {
                  *v79++ = v86;
                  v92 = v209;
                }

                v86 = *(v92 + 8 * mlir::getPositiveAxis(v84, v62));
                goto LABEL_155;
              }

              v85 = 0;
              v86 *= *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              v91 = v63;
            }

LABEL_122:
            v63 = v91;
            v137 = v90-- <= v89;
            if (v137)
            {
              goto LABEL_117;
            }
          }
        }

        v86 = 1;
LABEL_117:
        if (v79 >= v78)
        {
          v122 = v72;
          v123 = v79 - __src;
          v124 = (v79 - __src) >> 3;
          v125 = v124 + 1;
          if ((v124 + 1) >> 61)
          {
            goto LABEL_301;
          }

          if ((v78 - __src) >> 2 > v125)
          {
            v125 = (v78 - __src) >> 2;
          }

          if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            if (v125 >> 61)
            {
              goto LABEL_302;
            }

            v126 = v86;
            v127 = operator new(8 * v125);
            v86 = v126;
          }

          else
          {
            v127 = 0;
          }

          v133 = &v127[8 * v124];
          *v133 = v86;
          v87 = (v133 + 1);
          memcpy(v127, __src, v123);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v127;
          v72 = v122;
          if (!v85)
          {
LABEL_198:
            a3 = v200;
            goto LABEL_203;
          }
        }

        else
        {
          *v79 = v86;
          v87 = (v79 + 1);
          if (!v85)
          {
            goto LABEL_198;
          }
        }

        v88 = mlir::getNegativeAxis(0, (v87 - __src) >> 3);
        if (v72 >= v207)
        {
          v128 = v205;
          v129 = v72 - v205;
          v130 = (v129 >> 3) + 1;
          a3 = v200;
          if (v130 >> 61)
          {
            goto LABEL_301;
          }

          if ((v207 - v205) >> 2 > v130)
          {
            v130 = (v207 - v205) >> 2;
          }

          if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
          {
            v130 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v130)
          {
            if (v130 >> 61)
            {
              goto LABEL_302;
            }

            v131 = v88;
            v132 = operator new(8 * v130);
            v88 = v131;
            v128 = v205;
          }

          else
          {
            v132 = 0;
          }

          v134 = &v132[8 * (v129 >> 3)];
          *v134 = v88;
          v135 = v134 + 1;
          memcpy(v132, v128, v129);
          if (v205)
          {
            operator delete(v205);
          }

          v205 = v132;
          v72 = v135;
        }

        else
        {
          *v72++ = v88;
          a3 = v200;
        }

LABEL_203:
        v136 = v87 - 8;
        v137 = __src != v87 && v136 > __src;
        if (v137)
        {
          v138 = __src + 8;
          do
          {
            v139 = *(v138 - 1);
            *(v138 - 1) = *v136;
            *v136 = v139;
            v136 -= 8;
            v40 = v138 >= v136;
            v138 += 8;
          }

          while (!v40);
        }

        v140 = v87;
        if (v205 != v72)
        {
          v141 = (v72 - 1);
          if (v72 - 1 > v205)
          {
            v142 = (v205 + 1);
            do
            {
              v143 = *(v142 - 1);
              *(v142 - 1) = *v141;
              *v141 = v143;
              v141 -= 8;
              v40 = v142 >= v141;
              v142 += 8;
            }

            while (!v40);
          }
        }

        v144 = v72;
        Loc = mlir::Value::getLoc(&v218);
        v220 = (v140 - __src) >> 3;
        v221 = v211;
        v146 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v147 = mlir::RankedTensorType::get(&v220, 1, v146, 0);
        if (v147)
        {
          v148 = v147;
          v149 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          v147 = v148;
        }

        else
        {
          v149 = 0;
        }

        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v147, v149, __src, v140 - __src, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v219);
        v211 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v221, &v220) - 16;
        std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v205, v144, (v144 - v205) >> 3);
        if (v205)
        {
          operator delete(v205);
        }

        if (__src)
        {
          operator delete(__src);
        }

        v218 = v211;
        v150 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        if (v151)
        {
          v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        }

        else
        {
          v150 = 0;
        }

        v224 = v150;
        v225 = v151;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_301;
          }

          v153 = v152;
          v154 = operator new(8 * v152);
          v155 = &v154[v153];
        }

        else
        {
          v155 = 0;
          v154 = 0;
        }

        v156 = (v213 - __p) >> 3;
        v157 = v156 - 1;
        if (v156 < 1)
        {
          goto LABEL_256;
        }

        v158 = v154;
        while (1)
        {
          v159 = *(__p + v157);
          if (v159 < -4)
          {
            break;
          }

          if (v158 < v155)
          {
            *v158++ = v159;
          }

          else
          {
            v160 = v158 - v154;
            v161 = v158 - v154;
            v162 = v161 + 1;
            if ((v161 + 1) >> 61)
            {
              goto LABEL_301;
            }

            if ((v155 - v154) >> 2 > v162)
            {
              v162 = (v155 - v154) >> 2;
            }

            if ((v155 - v154) >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v162;
            }

            if (v163)
            {
              if (v163 >> 61)
              {
                goto LABEL_302;
              }

              v164 = operator new(8 * v163);
            }

            else
            {
              v164 = 0;
            }

            v165 = &v164[8 * v161];
            v155 = &v164[8 * v163];
            *v165 = v159;
            v158 = v165 + 1;
            memcpy(v164, v154, v160);
            if (v154)
            {
              operator delete(v154);
            }

            v154 = v164;
          }

          v137 = v157-- <= 0;
          if (v137)
          {
            v157 = -1;
            break;
          }
        }

        v166 = v158 - v154;
        if (v158 == v154)
        {
          goto LABEL_256;
        }

        v167 = mlir::Value::getLoc(&v218);
        v220 = v166 >> 3;
        v221 = v218;
        v168 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v169 = mlir::RankedTensorType::get(&v220, 1, v168, 0);
        if (v169)
        {
          v170 = v169;
          v171 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v169 + 8);
          v169 = v170;
        }

        else
        {
          v171 = 0;
        }

        v172 = 1;
        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v169, v171, v154, v166, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, &v219) - 16;
        LOBYTE(v219) = 1;
        v173 = mlir::OpBuilder::create<mlir::mps::ReductionProdOp,mlir::Value &,mlir::Value &,BOOL>((a3 + 8), v167, &v221, &v220, &v219);
        if (mlir::mps::inferTypes(v173, v174))
        {
          v211 = v173 - 16;
LABEL_256:
          mlir::CallableOpInterface::getArgAttrsAttr(&v224);
          if (v175)
          {
            if (v175 >> 61)
            {
              goto LABEL_301;
            }

            v176 = 8 * v175;
            v177 = operator new(8 * v175);
            v178 = &v177[v176];
            v179 = v177;
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            if ((v157 & 0x8000000000000000) == 0)
            {
              do
              {
LABEL_264:
                v180 = *(__p + v157);
                if (v177 < v178)
                {
                  *v177 = v180;
                  v177 += 8;
                }

                else
                {
                  v181 = v177 - v179;
                  v182 = (v177 - v179) >> 3;
                  v183 = v182 + 1;
                  if ((v182 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v178 - v179) >> 2 > v183)
                  {
                    v183 = (v178 - v179) >> 2;
                  }

                  if ((v178 - v179) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v184 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v184 = v183;
                  }

                  if (v184)
                  {
                    if (v184 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v185 = operator new(8 * v184);
                  }

                  else
                  {
                    v185 = 0;
                  }

                  v186 = &v185[8 * v182];
                  v178 = &v185[8 * v184];
                  *v186 = v180;
                  v177 = v186 + 8;
                  memcpy(v185, v179, v181);
                  if (v179)
                  {
                    operator delete(v179);
                  }

                  v179 = v185;
                }

                v137 = v157-- <= 0;
              }

              while (!v137);
              v187 = v177 - 8;
              if (v179 != v177 && v187 > v179)
              {
                v189 = v179 + 8;
                do
                {
                  v190 = *(v189 - 1);
                  *(v189 - 1) = *v187;
                  *v187 = v190;
                  v187 -= 8;
                  v40 = v189 >= v187;
                  v189 += 8;
                }

                while (!v40);
              }
            }
          }

          std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v179, v177, (v177 - v179) >> 3);
          if (v179)
          {
            operator delete(v179);
          }

          v172 = 0;
        }

        if (v154)
        {
          operator delete(v154);
        }

        if (v172)
        {
          v7 = 0;
          goto LABEL_298;
        }
      }
    }

    v23 = *(v17 + 56);
    v224 = v226;
    v225 = 0x400000000;
    matched = mlir::matchConstantWithIntVector<long long>(v23, &v224);
    if ((matched & 1) == 0)
    {
LABEL_66:
      if (v224 != v226)
      {
        free(v224);
      }

      if ((matched & 1) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_69;
    }

    v222 = 0;
    v223 = 0;
    v221 = &v222;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v225)
    {
      v26 = v25;
      v27 = v224;
      v28 = &v224[8 * v225];
      do
      {
        v30 = mlir::getNegativeAxis(*v27, v26);
        v31 = v30;
        v32 = v222;
        v33 = &v222;
        v34 = &v222;
        if (v222)
        {
          while (1)
          {
            while (1)
            {
              v34 = v32;
              v35 = v32[4];
              if (v30 >= v35)
              {
                break;
              }

              v32 = *v34;
              v33 = v34;
              if (!*v34)
              {
                goto LABEL_39;
              }
            }

            if (v35 >= v30)
            {
              break;
            }

            v32 = v34[1];
            if (!v32)
            {
              v33 = v34 + 1;
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v36 = operator new(0x28uLL);
          v36[4] = v31;
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v34;
          *v33 = v36;
          if (*v221)
          {
            v221 = *v221;
            v29 = *v33;
          }

          else
          {
            v29 = v36;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v222, v29);
          ++v223;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    if (!v223)
    {
      v51 = 0;
      v52 = 0;
      v50 = 0;
      a3 = v200;
      goto LABEL_62;
    }

    a3 = v200;
    if (!(v223 >> 61))
    {
      v49 = v223;
      v50 = operator new(8 * v223);
      v51 = &v50[v49];
      bzero(v50, v49 * 8);
      v52 = &v50[v49];
LABEL_62:
      if (__p)
      {
        v213 = __p;
        operator delete(__p);
      }

      __p = v50;
      v213 = v52;
      v214 = v51;
      v53 = v221;
      if (v221 != &v222)
      {
        do
        {
          *v50 = v53[4];
          v55 = v53[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v53[2];
              v57 = *v56 == v53;
              v53 = v56;
            }

            while (!v57);
          }

          ++v50;
          v53 = v56;
        }

        while (v56 != &v222);
      }

      std::__tree<unsigned long long>::destroy(&v221, v222);
      goto LABEL_66;
    }

LABEL_301:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionProdOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionProdOp,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionProdOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionSumOp>::~CanonicalizeReductionAxes(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionSumOp>::~CanonicalizeReductionAxes(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionSumOp>::matchAndRewriteImpl(int a1, mlir::Operation *this, uint64_t a3)
{
  v226[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v227.var0 = "keep_dims", v227.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v227), (v6 & 1) == 0))
  {
    v228.var0 = "keep_dims";
    v228.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v228);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v9 = *(*(this + 9) + 24);
  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v217[0] = v10;
  v217[1] = v11;
  v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v215 = v12;
    v216 = v13;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v215 = 0;
    v216 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v217))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v217);
    if (v15)
    {
      v16 = 8 * v15;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v199 = this;
    if ((*(this + 46) & 0x80) != 0)
    {
      v17 = *(this + 9);
      v18 = *(this + 17) > 1u;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    __p = 0;
    v213 = 0;
    v214 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_301;
      }

      v20 = 8 * v19;
      v21 = operator new(8 * v19);
      v22 = &v21[v213 - __p];
      memcpy(v21, 0, v213 - __p);
      __p = v21;
      v213 = v22;
      v214 = &v21[v20];
    }

    v200 = a3;
    if (!v18)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v215);
      if (v37)
      {
        v38 = v213;
        v39 = -v37;
        do
        {
          if (v38 < v214)
          {
            *v38++ = v39;
          }

          else
          {
            v41 = __p;
            v42 = v38 - __p;
            v43 = (v38 - __p) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              goto LABEL_301;
            }

            v45 = v214 - __p;
            if ((v214 - __p) >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (v46 >> 61)
              {
LABEL_302:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v47 = operator new(8 * v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = &v47[8 * v43];
            *v48 = v39;
            v38 = v48 + 1;
            memcpy(v47, v41, v42);
            __p = v47;
            v214 = &v47[8 * v46];
            if (v41)
            {
              operator delete(v41);
            }
          }

          v213 = v38;
          v40 = __CFADD__(v39++, 1);
        }

        while (!v40);
      }

LABEL_69:
      v54 = __p;
      if (v213 == __p)
      {
        v221 = *(*(v199 + 9) + 24);
        v7 = 1;
        mlir::ValueRange::ValueRange(&v224, &v221, 1uLL);
        (**a3)(a3, v199, v224, v225);
        goto LABEL_298;
      }

      if (*__p > -5)
      {
        v7 = 1;
        goto LABEL_299;
      }

      v211 = *(v17 + 24);
      while (1)
      {
        if (__p == v213)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v224 = v191;
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
          v193 = mlir::RankedTensorType::get(&v224, 1, IntegerType, 0);
          v194 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v195 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v224, v194, (v195 + 8 * v196));
          v197 = *(v199 + 3);
          if (v193)
          {
            v198 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v193 + 8);
          }

          else
          {
            v198 = 0;
          }

          v220 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v198, v224, 8 * v225, 8, 1, 1);
          v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v197, &v220);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3, v199, &v211, &v221);
          if (v224 != v226)
          {
            free(v224);
          }

LABEL_297:
          v7 = 1;
LABEL_298:
          v54 = __p;
          if (!__p)
          {
            return v7;
          }

LABEL_299:
          v213 = v54;
          operator delete(v54);
          return v7;
        }

        v58 = v211;
        v218 = v211;
        v59 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        }

        else
        {
          v59 = 0;
        }

        v224 = v59;
        v225 = v60;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        v62 = v61;
        v63 = v213;
        v206 = __p;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v64)
        {
          if (v64 >> 61)
          {
            goto LABEL_301;
          }

          v65 = 8 * v64;
          __src = operator new(8 * v64);
          v66 = &__src[v65];
        }

        else
        {
          v66 = 0;
          __src = 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v67)
        {
          if (v67 >> 61)
          {
            goto LABEL_301;
          }

          v68 = v67;
          v69 = operator new(8 * v67);
          v207 = &v69[v68];
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = v69;
            v72 = v69;
            goto LABEL_102;
          }

          *v69 = -1;
          v72 = v69 + 1;
        }

        else
        {
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = 0;
            v72 = 0;
            v207 = 0;
            goto LABEL_102;
          }

          v69 = operator new(8uLL);
          *v69 = -1;
          v72 = v69 + 1;
          v207 = (v69 + 1);
        }

        v205 = v69;
        if (v70 == v206)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = *(v63 - 2);
        }

        v63 = v70;
LABEL_102:
        v73 = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        v202 = v71;
        if (v74)
        {
          v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        }

        else
        {
          v73 = 0;
        }

        v221 = v73;
        v222 = v74;
        v75 = mlir::CallableOpInterface::getArgAttrsAttr(&v221);
        PositiveAxis = mlir::getPositiveAxis(-1, v62);
        v77 = PositiveAxis;
        v78 = v66;
        v209 = v75;
        if (__src >= v66)
        {
          v80 = (v66 - __src) >> 2;
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 0x1FFFFFFFFFFFFFFFLL;
          if ((v66 - __src) < 0x7FFFFFFFFFFFFFF8)
          {
            v81 = v80;
          }

          if (v81 >> 61)
          {
            goto LABEL_302;
          }

          v82 = v81;
          v83 = operator new(8 * v81);
          v78 = &v83[v82];
          *v83 = *(v75 + 8 * v77);
          v79 = v83 + 1;
          if (__src)
          {
            operator delete(__src);
          }

          __src = v83;
        }

        else
        {
          *__src = *(v75 + 8 * PositiveAxis);
          v79 = (__src + 8);
        }

        v84 = v202;
        v85 = v202 == -2;
        if (v62 >= 2)
        {
          v89 = -v62;
          v90 = -2;
          v86 = 1;
          v204 = v62;
          v201 = -v62;
          while (1)
          {
            if (v85)
            {
              if (v90 == v84)
              {
                v86 *= *(v209 + 8 * mlir::getPositiveAxis(v84, v62));
LABEL_155:
                v91 = v63 - 1;
                if (v63 - 1 == v206)
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = *(v63 - 2);
                }

                v85 = 1;
                goto LABEL_122;
              }

              if (v79 >= v78)
              {
                v100 = v79 - __src;
                v101 = (v79 - __src) >> 3;
                v102 = v101 + 1;
                if ((v101 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v78 - __src) >> 2 > v102)
                {
                  v102 = (v78 - __src) >> 2;
                }

                if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  if (v103 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v104 = v86;
                  v105 = v84;
                  v106 = operator new(8 * v103);
                  v86 = v104;
                }

                else
                {
                  v105 = v84;
                  v106 = 0;
                }

                v109 = &v106[8 * v101];
                v78 = &v106[8 * v103];
                *v109 = v86;
                v79 = v109 + 1;
                memcpy(v106, __src, v100);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v106;
                v62 = v204;
                v84 = v105;
                v89 = v201;
              }

              else
              {
                *v79++ = v86;
              }

              v110 = *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              NegativeAxis = mlir::getNegativeAxis(0, (v79 - __src) >> 3);
              if (v72 >= v207)
              {
                v112 = v205;
                v113 = v72 - v205;
                v114 = v72 - v205;
                v115 = v114 + 1;
                if ((v114 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v207 - v205) >> 2 > v115)
                {
                  v115 = (v207 - v205) >> 2;
                }

                if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v115;
                }

                v203 = v84;
                if (v116)
                {
                  v208 = v63;
                  if (v116 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v117 = v78;
                  v118 = NegativeAxis;
                  v119 = operator new(8 * v116);
                  NegativeAxis = v118;
                  v112 = v205;
                  v78 = v117;
                  v63 = v208;
                  v89 = v201;
                }

                else
                {
                  v119 = 0;
                }

                v207 = &v119[8 * v116];
                v120 = &v119[8 * v114];
                *v120 = NegativeAxis;
                v72 = v120 + 1;
                v121 = v112;
                memcpy(v119, v112, v113);
                if (v121)
                {
                  operator delete(v121);
                }

                v85 = 0;
                v205 = v119;
                v91 = v63;
                v84 = v203;
                v62 = v204;
                v86 = v110;
              }

              else
              {
                v85 = 0;
                *v72++ = NegativeAxis;
                v91 = v63;
                v86 = v110;
              }
            }

            else
            {
              if (v90 == v84)
              {
                if (v79 >= v78)
                {
                  v93 = v79 - __src;
                  v94 = (v79 - __src) >> 3;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v78 - __src) >> 2 > v95)
                  {
                    v95 = (v78 - __src) >> 2;
                  }

                  if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v96 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  if (v96)
                  {
                    if (v96 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v97 = v86;
                    v98 = v84;
                    v99 = operator new(8 * v96);
                    v86 = v97;
                  }

                  else
                  {
                    v98 = v84;
                    v99 = 0;
                  }

                  v107 = &v99[8 * v94];
                  v108 = &v99[8 * v96];
                  *v107 = v86;
                  v79 = v107 + 1;
                  memcpy(v99, __src, v93);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v99;
                  v84 = v98;
                  v92 = v209;
                  v78 = v108;
                  v62 = v204;
                  v89 = v201;
                }

                else
                {
                  *v79++ = v86;
                  v92 = v209;
                }

                v86 = *(v92 + 8 * mlir::getPositiveAxis(v84, v62));
                goto LABEL_155;
              }

              v85 = 0;
              v86 *= *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              v91 = v63;
            }

LABEL_122:
            v63 = v91;
            v137 = v90-- <= v89;
            if (v137)
            {
              goto LABEL_117;
            }
          }
        }

        v86 = 1;
LABEL_117:
        if (v79 >= v78)
        {
          v122 = v72;
          v123 = v79 - __src;
          v124 = (v79 - __src) >> 3;
          v125 = v124 + 1;
          if ((v124 + 1) >> 61)
          {
            goto LABEL_301;
          }

          if ((v78 - __src) >> 2 > v125)
          {
            v125 = (v78 - __src) >> 2;
          }

          if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            if (v125 >> 61)
            {
              goto LABEL_302;
            }

            v126 = v86;
            v127 = operator new(8 * v125);
            v86 = v126;
          }

          else
          {
            v127 = 0;
          }

          v133 = &v127[8 * v124];
          *v133 = v86;
          v87 = (v133 + 1);
          memcpy(v127, __src, v123);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v127;
          v72 = v122;
          if (!v85)
          {
LABEL_198:
            a3 = v200;
            goto LABEL_203;
          }
        }

        else
        {
          *v79 = v86;
          v87 = (v79 + 1);
          if (!v85)
          {
            goto LABEL_198;
          }
        }

        v88 = mlir::getNegativeAxis(0, (v87 - __src) >> 3);
        if (v72 >= v207)
        {
          v128 = v205;
          v129 = v72 - v205;
          v130 = (v129 >> 3) + 1;
          a3 = v200;
          if (v130 >> 61)
          {
            goto LABEL_301;
          }

          if ((v207 - v205) >> 2 > v130)
          {
            v130 = (v207 - v205) >> 2;
          }

          if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
          {
            v130 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v130)
          {
            if (v130 >> 61)
            {
              goto LABEL_302;
            }

            v131 = v88;
            v132 = operator new(8 * v130);
            v88 = v131;
            v128 = v205;
          }

          else
          {
            v132 = 0;
          }

          v134 = &v132[8 * (v129 >> 3)];
          *v134 = v88;
          v135 = v134 + 1;
          memcpy(v132, v128, v129);
          if (v205)
          {
            operator delete(v205);
          }

          v205 = v132;
          v72 = v135;
        }

        else
        {
          *v72++ = v88;
          a3 = v200;
        }

LABEL_203:
        v136 = v87 - 8;
        v137 = __src != v87 && v136 > __src;
        if (v137)
        {
          v138 = __src + 8;
          do
          {
            v139 = *(v138 - 1);
            *(v138 - 1) = *v136;
            *v136 = v139;
            v136 -= 8;
            v40 = v138 >= v136;
            v138 += 8;
          }

          while (!v40);
        }

        v140 = v87;
        if (v205 != v72)
        {
          v141 = (v72 - 1);
          if (v72 - 1 > v205)
          {
            v142 = (v205 + 1);
            do
            {
              v143 = *(v142 - 1);
              *(v142 - 1) = *v141;
              *v141 = v143;
              v141 -= 8;
              v40 = v142 >= v141;
              v142 += 8;
            }

            while (!v40);
          }
        }

        v144 = v72;
        Loc = mlir::Value::getLoc(&v218);
        v220 = (v140 - __src) >> 3;
        v221 = v211;
        v146 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v147 = mlir::RankedTensorType::get(&v220, 1, v146, 0);
        if (v147)
        {
          v148 = v147;
          v149 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          v147 = v148;
        }

        else
        {
          v149 = 0;
        }

        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v147, v149, __src, v140 - __src, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v219);
        v211 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v221, &v220) - 16;
        std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v205, v144, (v144 - v205) >> 3);
        if (v205)
        {
          operator delete(v205);
        }

        if (__src)
        {
          operator delete(__src);
        }

        v218 = v211;
        v150 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        if (v151)
        {
          v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        }

        else
        {
          v150 = 0;
        }

        v224 = v150;
        v225 = v151;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_301;
          }

          v153 = v152;
          v154 = operator new(8 * v152);
          v155 = &v154[v153];
        }

        else
        {
          v155 = 0;
          v154 = 0;
        }

        v156 = (v213 - __p) >> 3;
        v157 = v156 - 1;
        if (v156 < 1)
        {
          goto LABEL_256;
        }

        v158 = v154;
        while (1)
        {
          v159 = *(__p + v157);
          if (v159 < -4)
          {
            break;
          }

          if (v158 < v155)
          {
            *v158++ = v159;
          }

          else
          {
            v160 = v158 - v154;
            v161 = v158 - v154;
            v162 = v161 + 1;
            if ((v161 + 1) >> 61)
            {
              goto LABEL_301;
            }

            if ((v155 - v154) >> 2 > v162)
            {
              v162 = (v155 - v154) >> 2;
            }

            if ((v155 - v154) >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v162;
            }

            if (v163)
            {
              if (v163 >> 61)
              {
                goto LABEL_302;
              }

              v164 = operator new(8 * v163);
            }

            else
            {
              v164 = 0;
            }

            v165 = &v164[8 * v161];
            v155 = &v164[8 * v163];
            *v165 = v159;
            v158 = v165 + 1;
            memcpy(v164, v154, v160);
            if (v154)
            {
              operator delete(v154);
            }

            v154 = v164;
          }

          v137 = v157-- <= 0;
          if (v137)
          {
            v157 = -1;
            break;
          }
        }

        v166 = v158 - v154;
        if (v158 == v154)
        {
          goto LABEL_256;
        }

        v167 = mlir::Value::getLoc(&v218);
        v220 = v166 >> 3;
        v221 = v218;
        v168 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v169 = mlir::RankedTensorType::get(&v220, 1, v168, 0);
        if (v169)
        {
          v170 = v169;
          v171 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v169 + 8);
          v169 = v170;
        }

        else
        {
          v171 = 0;
        }

        v172 = 1;
        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v169, v171, v154, v166, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, &v219) - 16;
        LOBYTE(v219) = 1;
        v173 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>((a3 + 8), v167, &v221, &v220, &v219);
        if (mlir::mps::inferTypes(v173, v174))
        {
          v211 = v173 - 16;
LABEL_256:
          mlir::CallableOpInterface::getArgAttrsAttr(&v224);
          if (v175)
          {
            if (v175 >> 61)
            {
              goto LABEL_301;
            }

            v176 = 8 * v175;
            v177 = operator new(8 * v175);
            v178 = &v177[v176];
            v179 = v177;
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            if ((v157 & 0x8000000000000000) == 0)
            {
              do
              {
LABEL_264:
                v180 = *(__p + v157);
                if (v177 < v178)
                {
                  *v177 = v180;
                  v177 += 8;
                }

                else
                {
                  v181 = v177 - v179;
                  v182 = (v177 - v179) >> 3;
                  v183 = v182 + 1;
                  if ((v182 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v178 - v179) >> 2 > v183)
                  {
                    v183 = (v178 - v179) >> 2;
                  }

                  if ((v178 - v179) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v184 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v184 = v183;
                  }

                  if (v184)
                  {
                    if (v184 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v185 = operator new(8 * v184);
                  }

                  else
                  {
                    v185 = 0;
                  }

                  v186 = &v185[8 * v182];
                  v178 = &v185[8 * v184];
                  *v186 = v180;
                  v177 = v186 + 8;
                  memcpy(v185, v179, v181);
                  if (v179)
                  {
                    operator delete(v179);
                  }

                  v179 = v185;
                }

                v137 = v157-- <= 0;
              }

              while (!v137);
              v187 = v177 - 8;
              if (v179 != v177 && v187 > v179)
              {
                v189 = v179 + 8;
                do
                {
                  v190 = *(v189 - 1);
                  *(v189 - 1) = *v187;
                  *v187 = v190;
                  v187 -= 8;
                  v40 = v189 >= v187;
                  v189 += 8;
                }

                while (!v40);
              }
            }
          }

          std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v179, v177, (v177 - v179) >> 3);
          if (v179)
          {
            operator delete(v179);
          }

          v172 = 0;
        }

        if (v154)
        {
          operator delete(v154);
        }

        if (v172)
        {
          v7 = 0;
          goto LABEL_298;
        }
      }
    }

    v23 = *(v17 + 56);
    v224 = v226;
    v225 = 0x400000000;
    matched = mlir::matchConstantWithIntVector<long long>(v23, &v224);
    if ((matched & 1) == 0)
    {
LABEL_66:
      if (v224 != v226)
      {
        free(v224);
      }

      if ((matched & 1) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_69;
    }

    v222 = 0;
    v223 = 0;
    v221 = &v222;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v225)
    {
      v26 = v25;
      v27 = v224;
      v28 = &v224[8 * v225];
      do
      {
        v30 = mlir::getNegativeAxis(*v27, v26);
        v31 = v30;
        v32 = v222;
        v33 = &v222;
        v34 = &v222;
        if (v222)
        {
          while (1)
          {
            while (1)
            {
              v34 = v32;
              v35 = v32[4];
              if (v30 >= v35)
              {
                break;
              }

              v32 = *v34;
              v33 = v34;
              if (!*v34)
              {
                goto LABEL_39;
              }
            }

            if (v35 >= v30)
            {
              break;
            }

            v32 = v34[1];
            if (!v32)
            {
              v33 = v34 + 1;
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v36 = operator new(0x28uLL);
          v36[4] = v31;
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v34;
          *v33 = v36;
          if (*v221)
          {
            v221 = *v221;
            v29 = *v33;
          }

          else
          {
            v29 = v36;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v222, v29);
          ++v223;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    if (!v223)
    {
      v51 = 0;
      v52 = 0;
      v50 = 0;
      a3 = v200;
      goto LABEL_62;
    }

    a3 = v200;
    if (!(v223 >> 61))
    {
      v49 = v223;
      v50 = operator new(8 * v223);
      v51 = &v50[v49];
      bzero(v50, v49 * 8);
      v52 = &v50[v49];
LABEL_62:
      if (__p)
      {
        v213 = __p;
        operator delete(__p);
      }

      __p = v50;
      v213 = v52;
      v214 = v51;
      v53 = v221;
      if (v221 != &v222)
      {
        do
        {
          *v50 = v53[4];
          v55 = v53[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v53[2];
              v57 = *v56 == v53;
              v53 = v56;
            }

            while (!v57);
          }

          ++v50;
          v53 = v56;
        }

        while (v56 != &v222);
      }

      std::__tree<unsigned long long>::destroy(&v221, v222);
      goto LABEL_66;
    }

LABEL_301:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

void mlir::mps::anonymous namespace::CanonicalizeMatMulTranspose::~CanonicalizeMatMulTranspose(mlir::mps::_anonymous_namespace_::CanonicalizeMatMulTranspose *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::MatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

BOOL mlir::mps::anonymous namespace::CanonicalizeMatMulTranspose::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v15 = a2;
  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v15) || (result = mlir::mps::MatMulOp::getTransposeRhs(&v15)))
  {
    v5 = *(v15 + 72);
    v6 = *(v5 + 24);
    v13 = *(v5 + 56);
    v14 = v6;
    if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v15))
    {
      v7 = *(v15 + 24);
      v11 = -2;
      v12 = -1;
      v14 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 1, v7, &v14, &v12, &v11) - 16;
    }

    if (mlir::mps::MatMulOp::getTransposeRhs(&v15))
    {
      v8 = *(v15 + 24);
      v11 = -2;
      v12 = -1;
      v13 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 1, v8, &v13, &v12, &v11) - 16;
    }

    v9 = v15;
    v10 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &>(a3 + 1, *(v15 + 24), &v14, &v13);
    ((*a3)[1])(a3, v9, v10);
    return 1;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::TransposeOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::MatMulOp::build(a1, v17, *a3, *a4, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeMatMul1D::~CanonicalizeMatMul1D(mlir::mps::_anonymous_namespace_::CanonicalizeMatMul1D *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeMatMul1D::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v35[0] = v5;
  v35[1] = v6;
  v7 = *(a2 + 72);
  v8 = (*(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v34[0] = v8;
  v34[1] = v9;
  v10 = (*(*(v7 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v33[0] = v10;
  v33[1] = v11;
  if (!mlir::CallOpInterface::getArgOperands(v35))
  {
    return 0;
  }

  if (!mlir::CallOpInterface::getArgOperands(v34))
  {
    return 0;
  }

  if (!mlir::CallOpInterface::getArgOperands(v33))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v35);
  if (v12)
  {
    return 0;
  }

  isSplat = mlir::ElementsAttr::isSplat(v34);
  if (isSplat != mlir::ElementsAttr::isSplat(v33))
  {
    return 0;
  }

  v14 = mlir::ElementsAttr::isSplat(v35);
  if (v14 != mlir::ElementsAttr::isSplat(v34))
  {
    return 0;
  }

  v15 = *(a2 + 24);
  v16 = *(a2 + 72);
  v31[0] = *(v16 + 24);
  v37 = *(v16 + 56);
  v17 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a3 + 8), v15, v31, &v37);
  if (*(v17 + 36))
  {
    v18 = v17 - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v32 = NextResultAtOffset;
  v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v20)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  v31[0] = v20;
  v31[1] = v21;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  if (v24)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
    v27 = *(a2 + 24);
    if (*(ArgAttrsAttr + 8 * v26 - 8) == 1)
    {
      v37 = mlir::CallableOpInterface::getArgAttrsAttr(v35);
      v38 = v28;
      v29 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>((a3 + 8), v27, &v32, &v37);
    }

    else
    {
      v29 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &>((a3 + 8), *(a2 + 24), &v32);
    }

    if (*(v29 + 36))
    {
      v30 = v29 - 16;
    }

    else
    {
      v30 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
    v32 = NextResultAtOffset;
  }

  v36 = NextResultAtOffset;
  v22 = 1;
  mlir::ValueRange::ValueRange(&v37, &v36, 1uLL);
  (**a3)(a3, a2, v37, v38);
  return v22;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ReductionSumOp::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
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

void *mlir::mps::anonymous namespace::CanonicalizeConvToDepthwise<mlir::mps::Conv2DOp>::~CanonicalizeConvToDepthwise(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToDepthwise<mlir::mps::Conv2DOp>::~CanonicalizeConvToDepthwise(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToDepthwise<mlir::mps::Conv2DOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103[4] = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = a2;
  v4 = *(a2 + 24);
  v82 = 0;
  v5 = *(a2 + 72);
  v6 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v5 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v82 = v6;
  v83 = v8;
  v9 = (*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v81[0] = v9;
  v81[1] = v10;
  if (mlir::CallOpInterface::getArgOperands(&v82) && (mlir::CallOpInterface::getArgOperands(v81) & 1) != 0)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
    v13 = v11;
    v101 = v103;
    v102 = 0x400000000;
    v14 = (8 * v11) >> 3;
    if (v14 < 5)
    {
      v15 = 0;
      v16 = 8 * v11;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v103, v14, 8);
      v15 = v102;
      v16 = 8 * v13;
      if (!v13)
      {
LABEL_19:
        LODWORD(v102) = v15 + (v16 >> 3);
        StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v84);
        if (StorageType)
        {
          if (StorageType != 1)
          {
            v28 = "failed: unsupported data layout";
            goto LABEL_33;
          }

          v21 = -1;
          v22 = 24;
        }

        else
        {
          v21 = -3;
          v22 = 8;
        }

        v80 = v21;
        v23 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v82) + v22);
        WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v84);
        if (WeightsLayout == 2)
        {
          v27 = 0;
          v25 = 2;
          v26 = 1;
        }

        else
        {
          if (WeightsLayout != 3)
          {
            v28 = "failed: unsupported weights layout";
            goto LABEL_33;
          }

          v25 = 0;
          v26 = 2;
          v27 = 3;
        }

        if (v23 != 0x8000000000000000)
        {
          v29 = v101[v26];
          if (v29 != 0x8000000000000000)
          {
            v30 = v101[v27];
            if (v30 != 0x8000000000000000)
            {
              if (v29 == 1)
              {
                v34 = v30 / v23;
                if (v30 / v23 * v23 == v30 && mlir::mps::Conv3DOp::getGroups(&v84) == v23)
                {
                  if (v34 < 2)
                  {
                    if (mlir::ShapedType::hasStaticShape(v81))
                    {
                      v98 = v100;
                      v99 = 0x400000000;
                      if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v84))
                      {
                        v92 = v26;
                        v93 = v25;
                        v94 = v25 | 1;
                        v95 = v27;
                      }

                      else
                      {
                        v92 = v26;
                        v93 = v27;
                        v94 = v25;
                        v95 = v25 | 1;
                      }

                      llvm::SmallVector<long long,4u>::operator=(&v98, &v92, 4);
                      v92 = *(*(v84 + 72) + 56);
                      v97 = 4;
                      IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
                      v37 = mlir::RankedTensorType::get(&v97, 1, IntegerType, 0);
                      if (v37)
                      {
                        v38 = v37;
                        v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
                        v37 = v38;
                      }

                      else
                      {
                        v39 = 0;
                      }

                      v86 = mlir::DenseElementsAttr::getFromRawBuffer(v37, v39, v98, 8 * v99, 8, 1, 1);
                      v89 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v4, &v86);
                      v79 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>((a3 + 8), v4, &v92, &v89) - 16;
                      if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v84))
                      {
                        v40 = 3;
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v92 = &v94;
                      v93 = 0x600000000;
                      Strides = mlir::mps::Conv3DOp::getStrides(&v84);
                      if (Strides)
                      {
                        v42 = Strides;
                        v43 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                        Strides = v42;
                      }

                      else
                      {
                        v43 = 0;
                      }

                      mlir::getIntValues<unsigned long long>(Strides, v43, &v92, 1);
                      v44 = &v92[v40];
                      v45 = v93;
                      v46 = &v92[v93];
                      if (v46 != v44 + 1)
                      {
                        memmove(v44, v44 + 1, v46 - (v44 + 1));
                        v45 = v93;
                      }

                      LODWORD(v93) = v45 - 1;
                      v89 = 3;
                      v47 = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
                      v48 = mlir::RankedTensorType::get(&v89, 1, v47, 0);
                      if (v48)
                      {
                        v49 = v48;
                        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
                        v48 = v49;
                      }

                      else
                      {
                        v50 = 0;
                      }

                      v97 = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, v92, 8 * v93, 8, 1, 0);
                      v89 = v91;
                      v90 = 0x600000000;
                      InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v84);
                      if (InputAttributeNames)
                      {
                        v52 = InputAttributeNames;
                        v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
                        InputAttributeNames = v52;
                      }

                      else
                      {
                        v53 = 0;
                      }

                      mlir::getIntValues<unsigned long long>(InputAttributeNames, v53, &v89, 1);
                      v54 = (v89 + 8 * v40);
                      v55 = v90;
                      v56 = (v89 + 8 * v90);
                      if (v56 != v54 + 8)
                      {
                        memmove(v54, v54 + 8, v56 - (v54 + 8));
                        v55 = v90;
                      }

                      LODWORD(v90) = v55 - 1;
                      v86 = 3;
                      v57 = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
                      v58 = mlir::RankedTensorType::get(&v86, 1, v57, 0);
                      if (v58)
                      {
                        v59 = v58;
                        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
                        v58 = v59;
                      }

                      else
                      {
                        v60 = 0;
                      }

                      v78 = mlir::DenseElementsAttr::getFromRawBuffer(v58, v60, v89, 8 * v90, 8, 1, 0);
                      v86 = v88;
                      v87 = 0x600000000;
                      Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v84);
                      if (Rewriter)
                      {
                        v62 = Rewriter;
                        v63 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
                        Rewriter = v62;
                      }

                      else
                      {
                        v63 = 0;
                      }

                      mlir::getIntValues<unsigned long long>(Rewriter, v63, &v86, 1);
                      v64 = v86;
                      v65 = v86 + 16 * v40;
                      v66 = v87;
                      v67 = v86 + 8 * v87;
                      if (v67 != v65 + 8)
                      {
                        memmove(v65, v65 + 8, v67 - (v65 + 8));
                        v66 = v87;
                        v64 = v86;
                      }

                      v68 = v66 - 1;
                      LODWORD(v87) = v68;
                      v69 = &v64[16 * v40];
                      v70 = &v64[8 * v68];
                      if (v70 != v69 + 8)
                      {
                        memmove(v69, v69 + 8, v70 - (v69 + 8));
                        v68 = v87;
                      }

                      LODWORD(v87) = v68 - 1;
                      v85 = 6;
                      v71 = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
                      v72 = mlir::RankedTensorType::get(&v85, 1, v71, 0);
                      if (v72)
                      {
                        v73 = v72;
                        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
                        v72 = v73;
                      }

                      else
                      {
                        v74 = 0;
                      }

                      v77 = mlir::DenseElementsAttr::getFromRawBuffer(v72, v74, v86, 8 * v87, 8, 1, 0);
                      v75 = v84;
                      v85 = *(*(v84 + 72) + 24);
                      PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v84);
                      mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(a3, v75, &v85, &v79, &v97, &v78, &v77, &PaddingStyle, &v80);
                      if (v86 != v88)
                      {
                        free(v86);
                      }

                      if (v89 != v91)
                      {
                        free(v89);
                      }

                      if (v92 != &v94)
                      {
                        free(v92);
                      }

                      if (v98 != v100)
                      {
                        free(v98);
                      }

                      result = 1;
                      goto LABEL_37;
                    }

                    v35 = "failed: weights must have a static shape";
                  }

                  else
                  {
                    v35 = "failed: channelsMultiplier must be 1";
                  }
                }

                else
                {
                  v35 = "failed: input channels must match the number of groups";
                }
              }

              else
              {
                v35 = "failed: weights must have only one input channel";
              }

              result = mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(a3, &v84, v35);
LABEL_37:
              if (v101 != v103)
              {
                v33 = result;
                free(v101);
                return v33;
              }

              return result;
            }
          }
        }

        v28 = "failed: op has dynamic channels count";
LABEL_33:
        v92 = v28;
        v96 = 259;
        v31 = v84;
        v89 = &v92;
        v32 = *(a3 + 16);
        if (v32 && mlir::RewriterBase::Listener::classof(v32))
        {
          (*(*v32 + 88))(v32, *(v31 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v89);
        }

        result = 0;
        goto LABEL_37;
      }
    }

    memcpy(&v101[v15], ArgAttrsAttr, v16);
    v15 = v102;
    goto LABEL_19;
  }

  v92 = "failed: op has dynamic channels count";
  v96 = 259;
  v17 = v84;
  v89 = &v92;
  v18 = *(a3 + 16);
  if (v18 && mlir::RewriterBase::Listener::classof(*(a3 + 16)))
  {
    (*(*v18 + 88))(v18, *(v17 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v89);
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

void *llvm::SmallVector<long long,4u>::SmallVector<long long,void>(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 5)
  {
    v6 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v5, 8);
    a2 = v6;
    v7 = *(a1 + 2);
    v8 = 8 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 8 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 3);
  return a1;
}

uint64_t llvm::SmallVector<long long,4u>::operator=(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = 0;
  *(a1 + 8) = 0;
  v6 = (8 * a3) >> 3;
  if (v6 > *(a1 + 12))
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6, 8);
    a2 = v7;
    v5 = *(a1 + 8);
  }

  if (a3)
  {
    memcpy((*a1 + 8 * v5), a2, 8 * a3);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + a3;
  return a1;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, void *a9)
{
  v11 = mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7, a8, a9);
  (*(*a1 + 1))(a1, a2, v11);
  return v11;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, void *a9)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,int>(v26, v25, v24);
  }

  mlir::OperationState::OperationState(v26, a2, v18);
  mlir::mps::DepthwiseConv3DOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v20 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v21;
}

void *mlir::mps::anonymous namespace::CanonicalizeConvToDepthwise<mlir::mps::Conv2DDataGradientOp>::~CanonicalizeConvToDepthwise(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeConvToDepthwise<mlir::mps::Conv2DDataGradientOp>::~CanonicalizeConvToDepthwise(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::Conv2DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeConvToDepthwise<mlir::mps::Conv2DDataGradientOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v86 = 0;
  v87 = a2;
  v4 = *(a2 + 24);
  v85 = 0;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v85 = v6;
  v86 = v7;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v87, 1u);
  v9 = (*(*(*(v87 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v84[0] = v9;
  v84[1] = v10;
  if (mlir::CallOpInterface::getArgOperands(&v85) && (mlir::CallOpInterface::getArgOperands(v84) & 1) != 0)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v84);
    v13 = v11;
    v104 = v106;
    v105 = 0x400000000;
    v14 = (8 * v11) >> 3;
    if (v14 < 5)
    {
      v15 = 0;
      v16 = 8 * v11;
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v14, 8);
      v15 = v105;
      v16 = 8 * v13;
      if (!v13)
      {
LABEL_22:
        LODWORD(v105) = v15 + (v16 >> 3);
        StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v87);
        if (StorageType)
        {
          if (StorageType != 1)
          {
            v28 = "failed: unsupported data layout";
            goto LABEL_36;
          }

          v21 = -1;
          v22 = 24;
        }

        else
        {
          v21 = -3;
          v22 = 8;
        }

        v83 = v21;
        v23 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v85) + v22);
        WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v87);
        if (WeightsLayout == 2)
        {
          v27 = 0;
          v25 = 2;
          v26 = 1;
        }

        else
        {
          if (WeightsLayout != 3)
          {
            v28 = "failed: unsupported weights layout";
            goto LABEL_36;
          }

          v25 = 0;
          v26 = 2;
          v27 = 3;
        }

        if (v23 != 0x8000000000000000)
        {
          v29 = v104[v26];
          if (v29 != 0x8000000000000000)
          {
            v30 = v104[v27];
            if (v30 != 0x8000000000000000)
            {
              if (v29 == 1)
              {
                v34 = v30 / v23;
                if (v30 / v23 * v23 == v30 && mlir::mps::Conv3DOp::getGroups(&v87) == v23)
                {
                  if (v34 < 2)
                  {
                    if (mlir::ShapedType::hasStaticShape(v84))
                    {
                      v101 = v103;
                      v102 = 0x400000000;
                      if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v87))
                      {
                        v95 = v26;
                        v96 = v25;
                        v97 = v25 | 1;
                        v98 = v27;
                      }

                      else
                      {
                        v95 = v26;
                        v96 = v27;
                        v97 = v25;
                        v98 = v25 | 1;
                      }

                      llvm::SmallVector<long long,4u>::operator=(&v101, &v95, 4);
                      v36 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v87, 1u);
                      v95 = *(*(v87 + 72) + 32 * v36 + 24);
                      v100 = 4;
                      IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
                      v38 = mlir::RankedTensorType::get(&v100, 1, IntegerType, 0);
                      v39 = v38;
                      v40 = 0;
                      if (v38)
                      {
                        v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
                      }

                      v89 = mlir::DenseElementsAttr::getFromRawBuffer(v39, v40, v101, 8 * v102, 8, 1, 1);
                      v92 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v4, &v89);
                      v82 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>((a3 + 8), v4, &v95, &v92) - 16;
                      if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v87))
                      {
                        v41 = 3;
                      }

                      else
                      {
                        v41 = 0;
                      }

                      v95 = &v97;
                      v96 = 0x600000000;
                      Strides = mlir::mps::Conv3DOp::getStrides(&v87);
                      v43 = Strides;
                      if (Strides)
                      {
                        v44 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                      }

                      else
                      {
                        v44 = 0;
                      }

                      mlir::getIntValues<unsigned long long>(v43, v44, &v95, 1);
                      v45 = &v95[v41];
                      v46 = v96;
                      v47 = &v95[v96];
                      if (v47 != v45 + 1)
                      {
                        memmove(v45, v45 + 1, v47 - (v45 + 1));
                        v46 = v96;
                      }

                      LODWORD(v96) = v46 - 1;
                      v92 = 3;
                      v48 = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
                      v49 = mlir::RankedTensorType::get(&v92, 1, v48, 0);
                      v50 = v49;
                      v51 = 0;
                      if (v49)
                      {
                        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
                      }

                      v100 = mlir::DenseElementsAttr::getFromRawBuffer(v50, v51, v95, 8 * v96, 8, 1, 0);
                      v92 = v94;
                      v93 = 0x600000000;
                      InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v87);
                      v53 = InputAttributeNames;
                      if (InputAttributeNames)
                      {
                        v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
                      }

                      else
                      {
                        v54 = 0;
                      }

                      mlir::getIntValues<unsigned long long>(v53, v54, &v92, 1);
                      v55 = (v92 + 8 * v41);
                      v56 = v93;
                      v57 = (v92 + 8 * v93);
                      if (v57 != v55 + 8)
                      {
                        memmove(v55, v55 + 8, v57 - (v55 + 8));
                        v56 = v93;
                      }

                      LODWORD(v93) = v56 - 1;
                      v89 = 3;
                      v58 = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
                      v59 = mlir::RankedTensorType::get(&v89, 1, v58, 0);
                      v60 = v59;
                      v61 = 0;
                      if (v59)
                      {
                        v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
                      }

                      v81 = mlir::DenseElementsAttr::getFromRawBuffer(v60, v61, v92, 8 * v93, 8, 1, 0);
                      v89 = v91;
                      v90 = 0x600000000;
                      Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v87);
                      v63 = Rewriter;
                      if (Rewriter)
                      {
                        v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
                      }

                      else
                      {
                        v64 = 0;
                      }

                      mlir::getIntValues<unsigned long long>(v63, v64, &v89, 1);
                      v65 = v89;
                      v66 = v89 + 16 * v41;
                      v67 = v90;
                      v68 = v89 + 8 * v90;
                      if (v68 != v66 + 8)
                      {
                        memmove(v66, v66 + 8, v68 - (v66 + 8));
                        v67 = v90;
                        v65 = v89;
                      }

                      v69 = v67 - 1;
                      LODWORD(v90) = v69;
                      v70 = &v65[16 * v41];
                      v71 = &v65[8 * v69];
                      if (v71 != v70 + 8)
                      {
                        memmove(v70, v70 + 8, v71 - (v70 + 8));
                        v69 = v90;
                      }

                      LODWORD(v90) = v69 - 1;
                      v88 = 6;
                      v72 = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
                      v73 = mlir::RankedTensorType::get(&v88, 1, v72, 0);
                      v74 = v73;
                      v75 = 0;
                      if (v73)
                      {
                        v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v73 + 8);
                      }

                      v80 = mlir::DenseElementsAttr::getFromRawBuffer(v74, v75, v89, 8 * v90, 8, 1, 0);
                      v76 = v87;
                      v77 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v87, 0);
                      v88 = *(*(v87 + 72) + 32 * v77 + 24);
                      OutputShape = mlir::mps::Conv2DDataGradientOp::getOutputShape(&v87);
                      PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v87);
                      mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value,mlir::Value&,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(a3, v76, &v88, &v82, &OutputShape, &v100, &v81, &v80, &PaddingStyle, &v83);
                      if (v89 != v91)
                      {
                        free(v89);
                      }

                      if (v92 != v94)
                      {
                        free(v92);
                      }

                      if (v95 != &v97)
                      {
                        free(v95);
                      }

                      if (v101 != v103)
                      {
                        free(v101);
                      }

                      result = 1;
                      goto LABEL_40;
                    }

                    v35 = "failed: weights must have a static shape";
                  }

                  else
                  {
                    v35 = "failed: channelsMultiplier must be 1";
                  }
                }

                else
                {
                  v35 = "failed: input channels must match the number of groups";
                }
              }

              else
              {
                v35 = "failed: weights must have only one input channel";
              }

              result = mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(a3, &v87, v35);
LABEL_40:
              if (v104 != v106)
              {
                v33 = result;
                free(v104);
                return v33;
              }

              return result;
            }
          }
        }

        v28 = "failed: op has dynamic channels count";
LABEL_36:
        v95 = v28;
        v99 = 259;
        v31 = v87;
        v92 = &v95;
        v32 = *(a3 + 16);
        if (v32 && mlir::RewriterBase::Listener::classof(v32))
        {
          (*(*v32 + 88))(v32, *(v31 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(mlir::mps::Conv2DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v92);
        }

        result = 0;
        goto LABEL_40;
      }
    }

    memcpy(&v104[v15], ArgAttrsAttr, v16);
    v15 = v105;
    goto LABEL_22;
  }

  v95 = "failed: op has dynamic channels count";
  v99 = 259;
  v17 = v87;
  v92 = &v95;
  v18 = *(a3 + 16);
  if (v18 && mlir::RewriterBase::Listener::classof(*(a3 + 16)))
  {
    (*(*v18 + 88))(v18, *(v17 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(mlir::mps::Conv2DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v92);
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DDataGradientOp &>(mlir::mps::Conv2DDataGradientOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value,mlir::Value&,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned int *a9, void *a10)
{
  v12 = mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value,mlir::Value&,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7, a8, a9, a10);
  (*(*a1 + 1))(a1, a2, v12);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value,mlir::Value&,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned int *a9, void *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value,mlir::Value&,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,long long &>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::DepthwiseConv3DDataGradientOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void mlir::mps::anonymous namespace::CanonicalizeSparseMatMulTranspose::~CanonicalizeSparseMatMulTranspose(mlir::mps::_anonymous_namespace_::CanonicalizeSparseMatMulTranspose *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mpsx::SparseDenseMatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

BOOL mlir::mps::anonymous namespace::CanonicalizeSparseMatMulTranspose::matchAndRewriteImpl(uint64_t a1, mlir::Operation *a2, uint64_t **a3)
{
  v19 = a2;
  result = mlir::mpsx::SparseDenseMatMulOp::getTransposeRhs(&v19);
  if (result)
  {
    v5 = *(v19 + 3);
    v17 = *(*(v19 + 9) + 152);
    LODWORD(v16) = -1;
    LODWORD(v15) = -2;
    v6 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 1, v5, &v17, &v16, &v15);
    v7 = v19;
    v8 = *(v19 + 9);
    v17 = v8[3];
    v18 = v6;
    v9 = v8[7];
    v15 = v8[11];
    v16 = v9;
    v14 = v8[15];
    TransposeLhs = mlir::mpsx::SparseDenseMatMulOp::getTransposeLhs(&v19);
    v12 = 0;
    StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(&v19);
    v10 = mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::mps::TransposeOp &,BOOL,BOOL,mlir::mps::SparseTensorStorage>(a3 + 1, *(v7 + 3), &v17, &v16, &v15, &v14, &v18, &TransposeLhs, &v12, &StorageType);
    ((*a3)[1])(a3, v7, v10);
    return 1;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::mps::TransposeOp &,BOOL,BOOL,mlir::mps::SparseTensorStorage>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, unsigned __int8 *a8, unsigned __int8 *a9, unsigned int *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::SparseDenseMatMulOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::SparseDenseMatMulOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::mps::TransposeOp &,BOOL,BOOL,mlir::mps::SparseTensorStorage>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mpsx::SparseDenseMatMulOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7 - 16, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::SparseDenseMatMulOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void mlir::mps::anonymous namespace::CanonicalizeQuantizedMatmulTranpose::~CanonicalizeQuantizedMatmulTranpose(mlir::mps::_anonymous_namespace_::CanonicalizeQuantizedMatmulTranpose *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mpsx::QuantizedMatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedMatmulTranpose::getTransposedInput(uint64_t a1)
{
  v27 = a1;
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v1)
  {
    v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v26[0] = v1;
  v26[1] = v2;
  result = mlir::Value::getDefiningOp(&v27);
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    return 0;
  }

  v5 = *(*(result + 72) + 56);
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v31 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v31);
  if (!DefiningOp)
  {
    goto LABEL_14;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v28, DefiningOp) & 1) == 0)
  {
    goto LABEL_14;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v29, v30);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((SingleInt & 0x8000000000000000) == 0)
  {
    v9 = SingleInt;
    if (mlir::CallOpInterface::getArgOperands(v26))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v26);
      SingleInt = v9 - v10;
      goto LABEL_13;
    }

LABEL_14:
    LOBYTE(SingleInt) = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v11 = SingleInt & 0xFFFFFFFFFFFFFF00;
  v12 = 1;
LABEL_15:
  v13 = v11 | SingleInt;
  v14 = *(*(v4 + 72) + 88);
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v31 = v14;
  v15 = mlir::Value::getDefiningOp(&v31);
  if (!v15)
  {
    goto LABEL_22;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v28, v15) & 1) == 0)
  {
    goto LABEL_22;
  }

  v16 = mlir::getSingleIntValue<long long>(v29, v30);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = v16;
    if (mlir::CallOpInterface::getArgOperands(v26))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v26);
      v16 = v18 - v19;
      goto LABEL_21;
    }

LABEL_22:
    LOBYTE(v16) = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_23;
  }

LABEL_21:
  v20 = v16 & 0xFFFFFFFFFFFFFF00;
  v21 = 1;
LABEL_23:
  v22 = v20 | v16;
  v23 = v12 & v21;
  if (v22 >= v13)
  {
    v24 = v13;
  }

  else
  {
    v24 = v20 | v16;
  }

  if (v13 <= v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = v13;
  }

  if (v23 != 1 || v24 != -2)
  {
    return 0;
  }

  result = 0;
  if (v25 == -1)
  {
    return *(*(v4 + 72) + 24);
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedMatmulTranpose::transposeParam(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  if (a2)
  {
    v4 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v11[0] = v4;
    v11[1] = v5;
    if (mlir::CallOpInterface::getArgOperands(v11))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v11);
      if (v6 >= 2)
      {
        Loc = mlir::Value::getLoc(&v12);
        v9 = -2;
        v10 = -1;
        return mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>((a1 + 8), Loc, &v12, &v10, &v9) - 16;
      }
    }
  }

  return v2;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizedMatmulTranpose::transposeAxisAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  if (!a2)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v15, &__p);
  if (v14 > 0x40)
  {
    NegativeAxis = *__p;
    operator delete[](__p);
    if (NegativeAxis < 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v10 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v10)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    __p = v10;
    v14 = v11;
    mlir::CallableOpInterface::getArgAttrsAttr(&__p);
    NegativeAxis = mlir::getNegativeAxis(NegativeAxis, v12);
    if (NegativeAxis != -2)
    {
      goto LABEL_9;
    }

LABEL_17:
    IntegerType = mlir::Builder::getIntegerType((a1 + 8), 32, 1);
    v8 = a1 + 8;
    v9 = -1;
    return mlir::Builder::getIntegerAttr(v8, IntegerType, v9);
  }

  if (!v14)
  {
    NegativeAxis = 0;
    goto LABEL_13;
  }

  NegativeAxis = (__p << -v14) >> -v14;
  if ((NegativeAxis & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (NegativeAxis == -2)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (NegativeAxis != -1)
  {
    return v15;
  }

  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 32, 1);
  v8 = a1 + 8;
  v9 = -2;
  return mlir::Builder::getIntegerAttr(v8, IntegerType, v9);
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::matchConstantWithIntValue<long long>(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v6 = &v7;
  v9 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp)
  {
    v3 = 0;
LABEL_6:
    v4 = 0;
    return v4 | v3;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v6, DefiningOp))
  {
    v3 = 0;
    goto LABEL_6;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v7, v8);
  v3 = SingleInt & 0xFFFFFFFFFFFFFF00;
  v4 = SingleInt;
  return v4 | v3;
}

void *mlir::mps::anonymous namespace::FuseRMS<mlir::mps::MultiplyOp>::~FuseRMS(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::FuseRMS<mlir::mps::MultiplyOp>::~FuseRMS(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::MultiplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

BOOL mlir::mps::anonymous namespace::FuseRMS<mlir::mps::MultiplyOp>::matchAndRewriteImpl(uint64_t a1, uint64_t *a2, mlir::UnknownLoc **a3)
{
  v34[1] = 0;
  v35 = 0;
  v34[0] = &v35;
  v31 = v34;
  LOBYTE(v32) = 0;
  v33 = 0;
  if (*(a2[6] + 16) != &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
  {
    return 0;
  }

  v6 = *(a2[9] + 24);
  if ((mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReciprocalSquareRootOp,mlir::detail::any_value_binder>>>(a2, 1u, &v31) & 1) == 0)
  {
    v7 = v33;
    v8 = v31;
    **v31 = 0;
    v8[1] = 0;
    if (v7 == 1 && v33 == 1)
    {
      v33 = 0;
    }

    if (!mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReciprocalSquareRootOp,mlir::detail::any_value_binder>>>(a2, 0, &v31))
    {
      return 0;
    }

    v6 = *(a2[9] + 56);
  }

  v9 = v33 ? v32 : 0;
  v53 = v6;
  v49 = 0;
  v50 = &v53;
  LOBYTE(v51) = 0;
  v52 = 0;
  v45 = 0;
  v46 = &v49;
  LOBYTE(v47) = 0;
  v48 = 0;
  v44[0] = &v50;
  v44[1] = 0;
  v42[0] = v44;
  v42[1] = &v45;
  v43 = 0;
  v39 = v42;
  LOBYTE(v40) = 0;
  v41 = 0;
  v36.i64[0] = &v39;
  v36.i64[1] = &v46;
  v37 = 0;
  v38 = 0;
  v27 = v35;
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  if (!DefiningOp || (mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder>>::match(&v36, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    v11 = v52 ? v51 : 0;
    {
      return 0;
    }
  }

  if (v41 == 1)
  {
    v12 = v52 ? v51 : 0;
    {
      return 0;
    }
  }

  v27 = v6;
  v28 = v49;
  v29 = v43;
  v30 = 1;
  result = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v29);
  if (!result)
  {
    return result;
  }

  v13 = (*(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8) : 0;
  v36.i64[0] = v13;
  v36.i64[1] = v14;
  v15 = v28;
  v39 = v28;
  v16 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8) : 0;
  v50 = v16;
  v51 = v17;
  v46 = 0;
  v47 = 0;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v50);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v19) != 1)
  {
    v31 = &v46;
    v42[0] = v15;
    v25 = mlir::Value::getDefiningOp(v42);
    if (!v25 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v31, v25) || (mlir::ElementsAttr::isSplat(&v46) & 1) == 0)
    {
      return 0;
    }
  }

  isSplat = mlir::ElementsAttr::isSplat(&v36);
  if (isSplat != mlir::ElementsAttr::isSplat(&v50))
  {
    Loc = mlir::Value::getLoc(&v39);
    v46 = mlir::ElementsAttr::isSplat(&v36);
    v39 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, Loc, &v39, &v46) - 16);
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v29, 1u);
  if ((*(v29 + 46) & 0x80) != 0)
  {
    v23 = *(v29 + 72);
  }

  else
  {
    v23 = 0;
  }

  if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v23 + 32 * ODSOperandIndexAndLength + 24);
  }

  v46 = v24;
  v26 = mlir::OpBuilder::create<mlir::mps_spi::RMSNormOp,mlir::Value &,mlir::Value &,mlir::Value &>(a3 + 1, a2[3], &v27, &v39, &v46);
  (*(*a3 + 1))(a3, a2, v26);
  return 1;
}

uint64_t mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReciprocalSquareRootOp,mlir::detail::any_value_binder>>>(uint64_t a1, unsigned int a2, uint64_t ***a3)
{
  v11 = *(*(a1 + 72) + 32 * a2 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v11);
  if (DefiningOp)
  {
    return mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReciprocalSquareRootOp,mlir::detail::any_value_binder>>::match(a3, DefiningOp);
  }

  v5 = *a3;
  v12 = v11;
  v6 = mlir::Value::getDefiningOp(&v12);
  if (v6)
  {
    if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id || (*(v6 + 46) & 0x80) == 0 || *(v6 + 68) != 1)
    {
      goto LABEL_8;
    }

    v8 = *(*(v6 + 72) + 24);
    v9 = **v5;
    if (v9)
    {
      if (v9 != v8)
      {
LABEL_8:
        v7 = 0;
        return (v6 != 0) & v7;
      }
    }

    else
    {
      **v5 = v8;
    }

    v5[1] = v6;
    v7 = 1;
  }

  return (v6 != 0) & v7;
}

BOOL mlir::mps::anonymous namespace::FuseRMS<mlir::mps::MultiplyOp>::matchAndRewriteImpl(mlir::mps::MultiplyOp,mlir::PatternRewriter &)::{lambda(mlir::Value,mlir::Value,mlir::mps::CastOp)#1}::operator() const(mlir::Value,mlir::Value,mlir::mps::CastOp)::{lambda(mlir::mps::CastOp,mlir::mps::CastOp)#1}::operator()(_BOOL8 result, uint64_t a2)
{
  v28 = result;
  if (result)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(result + 72) + 24));
    v27 = ElementTypeOrSelf;
    if (*(a2 + 36))
    {
      v4 = a2 - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(NextResultAtOffset) && ((Type = mlir::pdl_interp::CheckTypeOp::getType(&v28), v26 = Type, v7 = *(*ElementTypeOrSelf + 136), v7 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v8 = v7 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v7 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v9 = 1), !v9 ? (v10 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v10 = 1), !v10 ? (v11 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v11 = 1), !v11 ? (v12 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v12 = 1), !v12 ? (v13 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v15 = 1), !v15 ? (v16 = v7 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v16 = 1), !v16 ? (v17 = v7 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v7 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v18 = 1), !v18 ? (v19 = v7 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v7 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v20 = 1), !v20 ? (v21 = v7 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v21 = 1), !v21 ? (v22 = v7 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v22 = 1), !v22 ? (v23 = v7 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v23 = 1), v23 && ((v24 = *(*Type + 136), v24 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) || v24 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)))
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v27);
      return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v26);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder>>::match(int8x16_t *a1, uint64_t a2)
{
  v15 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
  {
    return 0;
  }

  v14 = 1;
  v13 = *a1;
  v12.i64[0] = &v14;
  v12.i64[1] = &v15;
  mlir::detail::enumerate<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder> * *)#1}>(&v13, &v12);
  if ((v14 & 1) == 0)
  {
    v14 = 1;
    v5 = a1->i64[1];
    v6 = *(v5 + 16);
    **v5 = 0;
    if (v6 == 1)
    {
      *(v5 + 16) = 0;
    }

    v7 = a1->i64[0];
    v8 = *a1->i64[0];
    v9 = *v8;
    v10 = **v8;
    if (*(a1->i64[0] + 16) == 1)
    {
      if (*(v10 + 16))
      {
        *(v10 + 16) = 0;
      }

      v9[1] = 0;
      *v8[1] = 0;
      v8[2] = 0;
      if (*(v7 + 16) == 1)
      {
        *(v7 + 16) = 0;
      }
    }

    else
    {
      if (*(v10 + 16))
      {
        *(v10 + 16) = 0;
      }

      v9[1] = 0;
      *v8[1] = 0;
      v8[2] = 0;
    }

    v12 = vextq_s8(*a1, *a1, 8uLL);
    v11[0] = &v14;
    v11[1] = &v15;
    mlir::detail::enumerate<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>> * *)#2}>(&v12, v11);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = v15;
  if ((a1[1].i8[8] & 1) == 0)
  {
    a1[1].i8[8] = 1;
  }

  a1[1].i64[0] = v4;
  return 1;
}

uint64_t mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>>(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v10 = *(*(a1 + 72) + 32 * a2 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp)
  {
    return mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>::match(a3, DefiningOp);
  }

  v5 = *a3;
  v11 = v10;
  result = mlir::Value::getDefiningOp(&v11);
  if (result)
  {
    v15 = result;
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id && (*(result + 46) & 0x80) != 0 && *(result + 68) == 2)
    {
      v14 = 1;
      v12 = &v14;
      v13 = &v15;
      mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::ReductionMeanOp *)#1}::operator()<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>>(&v12, 0, *v5);
      v7 = *(v5 + 8);
      v8 = *(*(*v13 + 72) + 56);
      if (*v7)
      {
        v9 = *v7 == v8;
      }

      else
      {
        *v7 = v8;
        v9 = 1;
      }

      *v12 &= v9;
      result = v14;
      if (v14 == 1)
      {
        *(v5 + 16) = v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder> *> &,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder> *> & *)#1},0ul>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = *(*(**(a2 + 8) + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result && (v12 = result, *(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id) && (*(result + 46) & 0x80) != 0 && *(result + 68) == 2)
  {
    v11 = 1;
    v9 = &v11;
    v10 = &v12;
    result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::ReductionMeanOp *)#1}::operator()<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>>(&v9, 0, *v3);
    v6 = *(v3 + 8);
    v7 = *(*(*v10 + 72) + 56);
    if (*v6)
    {
      v8 = *v6 == v7;
    }

    else
    {
      *v6 = v7;
      v8 = 1;
    }

    *v9 &= v8;
    v5 = v11;
    if (v11 == 1)
    {
      *(v3 + 16) = v12;
    }
  }

  else
  {
    v5 = 0;
  }

  **a2 &= v5;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps_spi::RMSNormOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps_spi::RMSNormOp,mlir::Value &,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps_spi::RMSNormOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *mlir::mps::anonymous namespace::FuseRMS<mlir::mps::DivideOp>::~FuseRMS(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::FuseRMS<mlir::mps::DivideOp>::~FuseRMS(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

BOOL mlir::mps::anonymous namespace::FuseRMS<mlir::mps::DivideOp>::matchAndRewriteImpl(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v37 = 0;
  v38 = 0;
  v36 = &v38;
  v33 = &v36;
  LOBYTE(v34) = 0;
  v35 = 0;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
    return 0;
  }

  v5 = *(a2 + 72);
  v6 = *(v5 + 24);
  v29 = *(v5 + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v29);
  if (DefiningOp)
  {
    if (mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareRootOp,mlir::detail::any_value_binder>>::match(&v33, DefiningOp))
    {
      goto LABEL_16;
    }

    return 0;
  }

  v39.i64[0] = v29;
  v8 = mlir::Value::getDefiningOp(&v39);
  if (!v8 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id || (*(v8 + 46) & 0x80) == 0 || *(v8 + 68) != 1)
  {
    return 0;
  }

  v9 = *(*(v8 + 72) + 24);
  if (*v36)
  {
    if (*v36 == v9)
    {
      goto LABEL_15;
    }

    return 0;
  }

  *v36 = v9;
LABEL_15:
  v37 = v8;
LABEL_16:
  if (v35)
  {
    v10 = v34;
  }

  else
  {
    v10 = 0;
  }

  v56 = v6;
  v52 = 0;
  v53 = &v56;
  LOBYTE(v54) = 0;
  v55 = 0;
  v48 = 0;
  v49 = &v52;
  LOBYTE(v50) = 0;
  v51 = 0;
  v47[0] = &v53;
  v47[1] = 0;
  v45[0] = v47;
  v45[1] = &v48;
  v46 = 0;
  v42 = v45;
  LOBYTE(v43) = 0;
  v44 = 0;
  v39.i64[0] = &v42;
  v39.i64[1] = &v49;
  v40 = 0;
  v41 = 0;
  v29 = v38;
  v11 = mlir::Value::getDefiningOp(&v29);
  if (!v11 || (mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SquareOp,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::value_binder>>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::CastOp,0,mlir::detail::any_value_binder>>::match(&v39, v11) & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    v12 = v55 ? v54 : 0;
    {
      return 0;
    }
  }

  if (v44 == 1)
  {
    v13 = v55 ? v54 : 0;
    {
      return 0;
    }
  }

  v29 = v6;
  v30 = v52;
  v31 = v46;
  v32 = 1;
  result = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v31);
  if (!result)
  {
    return result;
  }

  v15 = (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8) : 0;
  v39.i64[0] = v15;
  v39.i64[1] = v16;
  v17 = v30;
  v42 = v30;
  v18 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = v18 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8) : 0;
  v53 = v18;
  v54 = v19;
  v49 = 0;
  v50 = 0;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v53);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v21) != 1)
  {
    v33 = &v49;
    v45[0] = v17;
    v27 = mlir::Value::getDefiningOp(v45);
    if (!v27 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v27) || (mlir::ElementsAttr::isSplat(&v49) & 1) == 0)
    {
      return 0;
    }
  }

  isSplat = mlir::ElementsAttr::isSplat(&v39);
  if (isSplat != mlir::ElementsAttr::isSplat(&v53))
  {
    Loc = mlir::Value::getLoc(&v42);
    v49 = mlir::ElementsAttr::isSplat(&v39);
    v42 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, Loc, &v42, &v49) - 16);
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v31, 1u);
  if ((*(v31 + 46) & 0x80) != 0)
  {
    v25 = *(v31 + 72);
  }

  else
  {
    v25 = 0;
  }

  if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength == ODSOperandIndexAndLength)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 + 32 * ODSOperandIndexAndLength + 24);
  }

  v49 = v26;
  v28 = mlir::OpBuilder::create<mlir::mps_spi::RMSNormOp,mlir::Value &,mlir::Value &,mlir::Value &>(a3 + 1, *(a2 + 24), &v29, &v42, &v49);
  (*(*a3 + 1))(a3, a2, v28);
  return 1;
}

void mlir::mps::anonymous namespace::CanonicalizeRoPE::~CanonicalizeRoPE(mlir::mps::_anonymous_namespace_::CanonicalizeRoPE *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeRoPE::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v163 = *MEMORY[0x1E69E9840];
  v132 = 0;
  v131 = 0;
  v129[0] = &v132;
  v129[1] = &v131;
  v130 = 0;
  v128 = 0;
  v126[0] = v129;
  v126[1] = v129;
  v126[2] = &v128;
  v127 = 0;
  v125 = 0;
  v124[0] = v126;
  v124[1] = &v125;
  v124[2] = 0;
  v123 = 0;
  v122[0] = &v123;
  v122[1] = &v131;
  v122[2] = 0;
  v121[0] = v122;
  v121[1] = v122;
  v121[2] = &v128;
  v121[3] = 0;
  v120[0] = v121;
  v120[1] = &v125;
  v120[2] = 0;
  v119 = 0;
  v118 = 0;
  v116[0] = &v119;
  v116[1] = &v118;
  v117 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v111 = 0;
  v112 = 0;
  v109[0] = v116;
  v109[1] = &v115;
  v109[2] = &v114;
  v109[3] = &v113;
  v110 = 0;
  v107[0] = v116;
  v107[1] = &v112;
  v107[2] = &v111;
  v107[3] = &v113;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v104[0] = v107;
  v104[1] = &v106;
  v102[2] = 0;
  v103 = 0;
  v102[0] = v104;
  v102[1] = &v103;
  v100[2] = 0;
  v101 = 0;
  v100[0] = v102;
  v100[1] = &v101;
  v99[0] = v100;
  v99[1] = v109;
  v99[2] = &v128;
  v99[3] = 0;
  v97[2] = 0;
  v98 = 0;
  v97[0] = v99;
  v97[1] = &v98;
  v96[0] = v97;
  v96[1] = v124;
  v96[2] = 0;
  v95[0] = &v119;
  v95[1] = v120;
  v95[2] = 0;
  v92.i64[0] = v95;
  v92.i64[1] = v96;
  v93 = 0;
  v5 = a2 - 16;
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v94 = 0;
  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v91[0] = v7;
  v91[1] = v8;
  result = mlir::CallOpInterface::getArgOperands(v91);
  if (result)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v91);
    mlir::CallableOpInterface::getArgAttrsAttr(v91);
    if (*(a2 + 36))
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>::match(&v92, a2))
    {
      v160 = v162;
      v161 = 0x600000000;
      v12 = (*(v132 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v12)
      {
        v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
      }

      else
      {
        v13 = 0;
      }

      v89[0] = v12;
      v89[1] = v13;
      result = mlir::CallOpInterface::getArgOperands(v89);
      if (!result)
      {
        goto LABEL_39;
      }

      if ((mlir::matchConstantWithIntVector<long long>(v131, &v160) & 1) == 0)
      {
        goto LABEL_38;
      }

      v15 = v161;
      mlir::CallableOpInterface::getArgAttrsAttr(v89);
      if (v16 + 1 != v15)
      {
        goto LABEL_38;
      }

      if (*&v160[8 * v161 - 8] != 1)
      {
        goto LABEL_38;
      }

      matched = mlir::matchConstantWithIntValue<long long>(v128);
      if ((v18 & 1) == 0)
      {
        goto LABEL_38;
      }

      v19 = matched;
      if (*(v130 + 36))
      {
        v20 = v130 - 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v21)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
      }

      else
      {
        v22 = 0;
      }

      v88[0] = v21;
      v88[1] = v22;
      result = mlir::CallOpInterface::getArgOperands(v88);
      if (!result)
      {
        goto LABEL_39;
      }

      if (v19 != -1)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v88);
        if (v19 != v23 - 1)
        {
LABEL_38:
          result = 0;
LABEL_39:
          if (v160 != v162)
          {
            v27 = result;
            free(v160);
            return v27;
          }

          return result;
        }
      }

      if (*(v127 + 36))
      {
        v24 = v127 - 16;
      }

      else
      {
        v24 = 0;
      }

      v25 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25)
      {
        v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      }

      else
      {
        v26 = 0;
      }

      v87[0] = v25;
      v87[1] = v26;
      result = mlir::CallOpInterface::getArgOperands(v87);
      if (!result)
      {
        goto LABEL_39;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v87);
      mlir::CallableOpInterface::getArgAttrsAttr(v87);
      v30 = v29;
      v157 = v159;
      v158 = 0x600000000;
      if ((mlir::matchConstantWithIntVector<long long>(v125, &v157) & 1) != 0 && (v31 = v158, mlir::CallableOpInterface::getArgAttrsAttr(v87), v32 - 1 == v31) && v157[v31 - 1] == (*(ArgAttrsAttr + 8 * v30 - 16) * *(ArgAttrsAttr + 8 * v30 - 8)))
      {
        v33 = (*(v119 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v33)
        {
          v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
        }

        else
        {
          v34 = 0;
        }

        v86[0] = v33;
        v86[1] = v34;
        result = mlir::CallOpInterface::getArgOperands(v86);
        if (result)
        {
          v36 = mlir::CallableOpInterface::getArgAttrsAttr(v86);
          mlir::CallableOpInterface::getArgAttrsAttr(v86);
          v38 = v37;
          v154 = v156;
          v155 = 0x600000000;
          if ((mlir::matchConstantWithIntVector<long long>(v118, &v154) & 1) != 0 && v38 + 1 == v155 && *(v154 + v155 - 2) * *(v154 + v155 - 1) == *(v36 + 8 * v38 - 8))
          {
            v39 = mlir::matchConstantWithFloatValue<float>(v103);
            v40 = 0;
            if ((v39 & 0x100000000) != 0 && *&v39 == -1.0)
            {
              v151 = v153;
              v152 = 0x600000000;
              v148 = v150;
              v149 = 0x600000000;
              v145 = v147;
              v146 = 0x600000000;
              v142 = v144;
              v143 = 0x600000000;
              v139 = v141;
              v140 = 0x600000000;
              if ((mlir::matchConstantWithIntVector<long long>(v115, &v151) & 1) == 0 || (mlir::matchConstantWithIntVector<long long>(v114, &v148) & 1) == 0 || (mlir::matchConstantWithIntVector<long long>(v112, &v145) & 1) == 0 || (mlir::matchConstantWithIntVector<long long>(v111, &v142) & 1) == 0 || (mlir::matchConstantWithIntVector<long long>(v113, &v139) & 1) == 0)
              {
                goto LABEL_115;
              }

              v41 = *(v117 + 36) ? v117 - 16 : 0;
              v42 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
              v43 = v42 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8) : 0;
              v85[0] = v42;
              v85[1] = v43;
              if (!mlir::CallOpInterface::getArgOperands(v85))
              {
                goto LABEL_115;
              }

              mlir::CallableOpInterface::getArgAttrsAttr(v85);
              v44 = mlir::CallableOpInterface::getArgAttrsAttr(v85);
              v45 = v152;
              if (v152)
              {
                v46 = v151;
                do
                {
                  if (*v46++)
                  {
                    goto LABEL_115;
                  }
                }

                while (--v45);
              }

              v136 = v110;
              Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v136);
              if (v149 != 1)
              {
                v49 = 0;
                do
                {
                  if (((Offset >> v49) & 1) == 0)
                  {
                    v50 = *(v44 + 8 * v49);
                    if (v50 == 0x8000000000000000 || v50 != *(v148 + v49))
                    {
                      goto LABEL_115;
                    }
                  }
                }

                while (v149 - 1 != ++v49);
              }

              if (*(v148 + v149 - 1) != 1)
              {
                goto LABEL_115;
              }

              v52 = v146 - 1;
              if (v146 != 1)
              {
                v53 = v145;
                do
                {
                  if (*v53++)
                  {
                    goto LABEL_115;
                  }
                }

                while (--v52);
              }

              if (*(v145 + v146 - 1) != 1)
              {
                goto LABEL_115;
              }

              v136 = v108;
              v55 = mlir::mps::ReadDataFromFileOp::getOffset(&v136);
              if (v143 != 1)
              {
                v56 = 0;
                do
                {
                  if (((v55 >> v56) & 1) == 0)
                  {
                    v57 = *(v44 + 8 * v56);
                    if (v57 == 0x8000000000000000 || v57 != *(v142 + v56))
                    {
                      goto LABEL_115;
                    }
                  }
                }

                while (v143 - 1 != ++v56);
              }

              if (*(v142 + v143 - 1) != 2)
              {
LABEL_115:
                v40 = 0;
LABEL_116:
                if (v139 != v141)
                {
                  free(v139);
                }

                if (v142 != v144)
                {
                  free(v142);
                }

                if (v145 != v147)
                {
                  free(v145);
                }

                if (v148 != v150)
                {
                  free(v148);
                }

                if (v151 != v153)
                {
                  free(v151);
                }

                goto LABEL_70;
              }

              if (v140)
              {
                v59 = v139;
                v60 = 8 * v140;
                while (*v59 == 1)
                {
                  ++v59;
                  v60 -= 8;
                  if (!v60)
                  {
                    goto LABEL_108;
                  }
                }

                goto LABEL_115;
              }

LABEL_108:
              v136 = v138;
              v137 = 0x600000000;
              v133 = v135;
              v134 = 0x600000000;
              if (mlir::matchConstantWithIntVector<long long>(v106, &v136) & 1) != 0 && (mlir::matchConstantWithIntVector<long long>(v101, &v133))
              {
                v61 = *(v105 + 36) ? v105 - 16 : 0;
                v62 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                v63 = v62 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8) : 0;
                v84[0] = v62;
                v84[1] = v63;
                if (mlir::CallOpInterface::getArgOperands(v84))
                {
                  v64 = mlir::CallableOpInterface::getArgAttrsAttr(v84);
                  mlir::CallableOpInterface::getArgAttrsAttr(v84);
                  if (v65 == v137 && v65 + 1 == v134)
                  {
                    if (v65)
                    {
                      v66 = v136;
                      v67 = v65;
                      v68 = v133;
                      while (1)
                      {
                        v70 = *v64++;
                        v69 = v70;
                        v72 = *v66++;
                        v71 = v72;
                        v73 = v69 == 0x8000000000000000 || v71 == -1;
                        if (!v73 && v69 != v71)
                        {
                          break;
                        }

                        v75 = *v68;
                        v76 = v69 == 0x8000000000000000 || v75 == -1;
                        if (!v76 && v69 != v75)
                        {
                          break;
                        }

                        ++v68;
                        if (!--v67)
                        {
                          goto LABEL_149;
                        }
                      }
                    }

                    else
                    {
LABEL_149:
                      if (*(v133 + v65) == 1)
                      {
                        v78 = *(a2 + 24);
                        v81 = v132;
                        v82 = v123;
                        v83 = mlir::OpBuilder::create<mlir::mps::CreateComplexOp,mlir::Value,mlir::Value>((a3 + 8), v78, &v82, &v81);
                        v79 = *(a2 + 24);
                        v81 = v119;
                        v80 = mlir::ComplexType::get(ElementTypeOrSelf);
                        v82 = mlir::OpBuilder::create<mlir::mps::ReinterpretCastOp,mlir::Value,mlir::ComplexType>((a3 + 8), v79, &v81, &v80);
                        v81 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>((a3 + 8), *(a2 + 24), &v83, &v82);
                        mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReinterpretCastOp,mlir::mps::MultiplyOp &,mlir::Type &>(a3, a2, &v81, &ElementTypeOrSelf);
                        v40 = 1;
LABEL_152:
                        if (v133 != v135)
                        {
                          free(v133);
                        }

                        if (v136 != v138)
                        {
                          free(v136);
                        }

                        goto LABEL_116;
                      }
                    }
                  }
                }
              }

              v40 = 0;
              goto LABEL_152;
            }
          }

          else
          {
            v40 = 0;
          }

LABEL_70:
          if (v154 != v156)
          {
            free(v154);
          }

          result = v40;
        }
      }

      else
      {
        result = 0;
      }

      if (v157 != v159)
      {
        v35 = result;
        free(v157);
        result = v35;
      }

      goto LABEL_39;
    }

    v160 = "failed: RoPE pattern did not match";
    v162[8] = 259;
    v157 = &v160;
    v14 = *(a3 + 16);
    if (v14 && mlir::RewriterBase::Listener::classof(v14))
    {
      (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::AddOp &>(mlir::mps::AddOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v157);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::matchConstantWithFloatValue<float>(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    SingleFloat = mlir::getSingleFloatValue<float>(v8, v9);
    v3 = SingleFloat & 0xFF00000000;
    v4 = SingleFloat & 0xFFFFFF00;
    v5 = SingleFloat;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  return v5 | v3 | v4;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CreateComplexOp,mlir::Value,mlir::Value>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CreateComplexOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::CreateComplexOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReinterpretCastOp,mlir::Value,mlir::ComplexType>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReinterpretCastOp,mlir::Value,mlir::ComplexType>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ReinterpretCastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id)
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

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReinterpretCastOp,mlir::mps::MultiplyOp &,mlir::Type &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = mlir::OpBuilder::create<mlir::mps::ReinterpretCastOp,mlir::mps::MultiplyOp &,mlir::Type &>(a1 + 1, *(a2 + 24), a3, a4);
  (*(*a1 + 1))(a1, a2, v6);
  return v6;
}

uint64_t mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>::match(int8x16_t *a1, uint64_t a2)
{
  v28 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
  {
    return 0;
  }

  v27 = 1;
  v26 = *a1;
  v25.i64[0] = &v27;
  v25.i64[1] = &v28;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *> &,mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *> & *)#1},0ul,1ul>( &v26,  &v25);
  if ((v27 & 1) == 0)
  {
    v27 = 1;
    v4 = a1->i64[1];
    v5 = *v4;
    v6 = **v4;
    v7 = *v6;
    v8 = **v6;
    v9 = *v8;
    v10 = **v8;
    v11 = *v10;
    ***v10 = 0;
    *v11[1] = 0;
    v11[2] = 0;
    **(v10 + 8) = 0;
    **(v10 + 16) = 0;
    **(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *v9[1] = 0;
    v9[2] = 0;
    *v8[1] = 0;
    v8[2] = 0;
    *v7[1] = 0;
    v7[2] = 0;
    v12 = v6[1];
    v13 = *v12;
    ***v12 = 0;
    *v13[1] = 0;
    v13[2] = 0;
    *v12[1] = 0;
    *v12[2] = 0;
    *v12[3] = 0;
    v12[4] = 0;
    *v6[2] = 0;
    v6[3] = 0;
    *v5[1] = 0;
    v5[2] = 0;
    v14 = *(v4 + 8);
    v15 = *v14;
    v16 = **v14;
    **v16 = 0;
    **(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v17 = v15[1];
    **v17 = 0;
    **(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v15[2] = 0;
    v15[3] = 0;
    *v14[1] = 0;
    v14[2] = 0;
    *(v4 + 16) = 0;
    v18 = a1->i64[0];
    **a1->i64[0] = 0;
    v19 = *(v18 + 8);
    v20 = *v19;
    v21 = **v19;
    **v21 = 0;
    **(v21 + 8) = 0;
    *(v21 + 16) = 0;
    v22 = v20[1];
    **v22 = 0;
    **(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v20[2] = 0;
    v20[3] = 0;
    *v19[1] = 0;
    v19[2] = 0;
    *(v18 + 16) = 0;
    v25 = vextq_s8(*a1, *a1, 8uLL);
    v24[0] = &v27;
    v24[1] = &v28;
    mlir::detail::enumerate<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> * *)#2}>( v25.i64,  v24);
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = v28;
  if ((a1[1].i8[8] & 1) == 0)
  {
    a1[1].i8[8] = 1;
  }

  a1[1].i64[0] = v23;
  return 1;
}

uint64_t mlir::detail::enumerate<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> * *)#2}>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v10[0] = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v10);
  if (DefiningOp)
  {
    v12 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 2)
    {
      v7 = DefiningOp;
      v11 = 1;
      v10[0] = &v11;
      v10[1] = &v12;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *> & *)#1},0ul,1ul>( v4,  v10);
      v6 = v11;
      if (v11 == 1)
      {
        *(v4 + 16) = v12;
      }

      DefiningOp = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!DefiningOp)
  {
    v8 = 0;
  }

  **a2 = v8;
  result = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>(**(a2 + 8), 1u, a1[1]);
  **a2 &= result;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *> &,mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>> *> & *)#1},0ul,1ul>(uint64_t a1, uint64_t a2)
{
  **a2 &= mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>>(**(a2 + 8), 0, *a1);
  v4 = *(a1 + 8);
  v9[0] = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(v9);
  if (result)
  {
    v11 = result;
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id && (*(result + 46) & 0x80) != 0 && *(result + 68) == 2)
    {
      v7 = result;
      v10 = 1;
      v9[0] = &v10;
      v9[1] = &v11;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *> & *)#1},0ul,1ul>( v4,  v9);
      v6 = v10;
      if (v10 == 1)
      {
        *(v4 + 16) = v11;
      }

      result = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!result)
  {
    v8 = 0;
  }

  **a2 = v8;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v8 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v8);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v4, DefiningOp);
  }

  **a2 &= DefiningOp;
  v6 = a1[1];
  v8 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v8);
  if (result)
  {
    result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ConcatOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v6, result);
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::getSingleFloatValue<float>(uint64_t a1, uint64_t a2)
{
  v79[5] = *MEMORY[0x1E69E9840];
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v72[0] = mlir::CallOpInterface::getArgOperands(&v73);
  v72[1] = v2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v72);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v4) == 1)
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v73);
    v78 = v5;
    v6 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
    _ZF = v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v8 = _ZF || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v9 = v8 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v10 = v9 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v11 = v10 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v12 = v11 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v13 = v12 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v14 = v13 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v15 = v14 || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v16 = v15 || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v17 = v16 || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v18 = v17 || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v19 = v18 || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v20 = v19 || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    if (v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v71 = 0.0;
      v76 = v73;
      Type = mlir::ElementsAttr::getType(&v76);
      v22 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v75[0] = v22;
      v75[1] = Type;
      isSplat = mlir::ElementsAttr::isSplat(v75);
      v23 = mlir::ElementsAttr::isSplat(&v76);
      ElementsAttrRawData = mlir::getElementsAttrRawData(v76);
      v26 = v25;
      NumElements = mlir::ElementsAttr::getNumElements(v76, *(&v76 + 1));
      if (mlir::Type::isUnsignedInteger(&isSplat, 8))
      {
        if (NumElements >= 1)
        {
          if (NumElements == 1)
          {
            v31 = 0;
          }

          else
          {
            v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
            v32 = NumElements & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v32 -= 2;
            }

            while (v32);
            if (NumElements == v31)
            {
              v33 = v31 - 1;
LABEL_69:
              if (v23)
              {
                v33 = 0;
              }

              LOBYTE(v28) = ElementsAttrRawData[v33];
LABEL_72:
              _S0 = v28;
LABEL_88:
              v43 = _S0;
LABEL_133:
              v49 = LODWORD(v43);
              v48 = 0x100000000;
              return v49 | v48;
            }
          }

          v34 = 1 - v31;
          v35 = NumElements - v31;
          do
          {
            --v34;
            --v35;
          }

          while (v35);
          v33 = -v34;
          goto LABEL_69;
        }

LABEL_132:
        v43 = 0.0;
        goto LABEL_133;
      }

      if (mlir::Type::isInteger(&isSplat, 8))
      {
        if (NumElements < 1)
        {
          goto LABEL_132;
        }

        if (NumElements == 1)
        {
          v38 = 0;
        }

        else
        {
          v38 = NumElements & 0x7FFFFFFFFFFFFFFELL;
          v39 = NumElements & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v39 -= 2;
          }

          while (v39);
          if (NumElements == v38)
          {
            v40 = v38 - 1;
LABEL_84:
            if (v23)
            {
              v40 = 0;
            }

            v29.i8[0] = ElementsAttrRawData[v40];
            v29.i32[0] = vmovl_s16(*&vmovl_s8(v29)).u32[0];
            goto LABEL_87;
          }
        }

        v41 = 1 - v38;
        v42 = NumElements - v38;
        do
        {
          --v41;
          --v42;
        }

        while (v42);
        v40 = -v41;
        goto LABEL_84;
      }

      if (mlir::Type::isUnsignedInteger(&isSplat, 16))
      {
        v30 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v30 = 0;
          }

          LOWORD(v28) = *&ElementsAttrRawData[2 * v30];
          goto LABEL_72;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isInteger(&isSplat, 16))
      {
        v37 = NumElements - 1;
        if (NumElements < 1)
        {
          goto LABEL_132;
        }

        if (v23)
        {
          v37 = 0;
        }

        v29.i16[0] = *&ElementsAttrRawData[2 * v37];
        v29.i32[0] = vmovl_s16(v29).u32[0];
LABEL_87:
        _S0 = v29.i32[0];
        goto LABEL_88;
      }

      if (mlir::Type::isUnsignedInteger(&isSplat, 32))
      {
        v44 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v44 = 0;
          }

          v28 = *&ElementsAttrRawData[4 * v44];
          goto LABEL_72;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isInteger(&isSplat, 32))
      {
        v45 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v45 = 0;
          }

          _S0 = *&ElementsAttrRawData[4 * v45];
          goto LABEL_88;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        v46 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v46 = 0;
          }

          _S0 = *&ElementsAttrRawData[8 * v46];
          goto LABEL_88;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isInteger(&isSplat, 64))
      {
        v47 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v47 = 0;
          }

          _S0 = *&ElementsAttrRawData[8 * v47];
          goto LABEL_88;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isF16(&isSplat))
      {
        v50 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v50 = 0;
          }

          _H0 = *&ElementsAttrRawData[2 * v50];
          __asm { FCVT            S0, H0 }

          goto LABEL_88;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isF32(&isSplat))
      {
        if (NumElements < 1)
        {
          goto LABEL_132;
        }

        if (NumElements == 1)
        {
          v58 = 0;
        }

        else
        {
          v58 = NumElements & 0x7FFFFFFFFFFFFFFELL;
          v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v59 -= 2;
          }

          while (v59);
          if (NumElements == v58)
          {
            v60 = v58 - 1;
LABEL_141:
            if (v23)
            {
              v60 = 0;
            }

            v43 = *&ElementsAttrRawData[4 * v60];
            goto LABEL_133;
          }
        }

        v61 = 1 - v58;
        v62 = NumElements - v58;
        do
        {
          --v61;
          --v62;
        }

        while (v62);
        v60 = -v61;
        goto LABEL_141;
      }

      if (mlir::Type::isF64(&isSplat))
      {
        v55 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v55 = 0;
          }

          _S0 = *&ElementsAttrRawData[8 * v55];
          goto LABEL_88;
        }

        goto LABEL_132;
      }

      if (mlir::Type::isBF16(&isSplat))
      {
        v56 = NumElements - 1;
        if (NumElements >= 1)
        {
          if (v23)
          {
            v56 = 0;
          }

          LODWORD(v43) = *&ElementsAttrRawData[2 * v56] << 16;
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      if (!mlir::Type::isInteger(&isSplat, 1))
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<float>(ElementsAttrRawData, v26, &v71, NumElements, IntOrFloatBitWidth);
        v43 = v71;
        goto LABEL_133;
      }

      if (v23)
      {
        v63 = 1;
      }

      else
      {
        v63 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(&ArgOperands, v63);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v26, ArgOperands, v78);
      if (NumElements < 1)
      {
        v43 = 0.0;
LABEL_163:
        if (ArgOperands != v79)
        {
          free(ArgOperands);
        }

        goto LABEL_133;
      }

      if (NumElements == 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v67 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v67 -= 2;
        }

        while (v67);
        if (NumElements == v66)
        {
          v68 = v66 - 1;
LABEL_160:
          if (v23)
          {
            v68 = 0;
          }

          v64.i8[0] = *(ArgOperands + v68);
          v43 = vmovl_s16(*&vmovl_s8(v64)).i32[0];
          goto LABEL_163;
        }
      }

      v69 = 1 - v66;
      v70 = NumElements - v66;
      do
      {
        --v69;
        --v70;
      }

      while (v70);
      v68 = -v69;
      goto LABEL_160;
    }
  }

  v48 = 0;
  v49 = 0;
  return v49 | v48;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReinterpretCastOp,mlir::mps::MultiplyOp &,mlir::Type &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReinterpretCastOp,mlir::Value,mlir::ComplexType>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ReinterpretCastOp::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id)
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

void mlir::mps::anonymous namespace::SpaceToBatchDWConvBatchToSpace::~SpaceToBatchDWConvBatchToSpace(mlir::mps::_anonymous_namespace_::SpaceToBatchDWConvBatchToSpace *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::BatchToSpaceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::SpaceToBatchDWConvBatchToSpace::matchAndRewriteImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55[1] = &v59;
  v55[2] = &v58;
  v55[3] = &v57;
  v56 = 0;
  v54 = 0;
  v55[0] = &v60;
  v51 = 0;
  v52[0] = v55;
  v52[1] = &v54;
  v53 = 0;
  v50[0] = v52;
  v50[1] = &v59;
  v50[2] = &v58;
  v50[3] = &v57;
  v48[0] = a2;
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 4)
  {
    v4 = a3;
    LOBYTE(v47[0]) = 1;
    v62 = v47;
    v63 = v48;
    mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BatchToSpaceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> & *)#1},0ul,1ul,2ul,3ul>(v50, &v62);
    if (v47[0])
    {
      v51 = v48[0];
      v49 = v53;
      v62 = v64;
      v63 = 0x600000000;
      InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v49);
      if (InputAttributeNames)
      {
        v6 = InputAttributeNames;
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
        InputAttributeNames = v6;
      }

      else
      {
        v7 = 0;
      }

      mlir::getIntValues<unsigned long long>(InputAttributeNames, v7, &v62, 1);
      v10 = v62;
      if (v63 != 3 || *v62 != 1 || *(v62 + 1) != 1 || *(v62 + 2) != 1)
      {
        result = 0;
        if (v62 == v64)
        {
          return result;
        }

        goto LABEL_21;
      }

      v11 = (*(v60 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }

      v48[0] = v11;
      v48[1] = v12;
      if (*(v56 + 36))
      {
        v14 = v56 - 16;
      }

      else
      {
        v14 = 0;
      }

      v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v15)
      {
        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      }

      else
      {
        v16 = 0;
      }

      v47[0] = v15;
      v47[1] = v16;
      if (!v11)
      {
        goto LABEL_50;
      }

      result = mlir::CallOpInterface::getArgOperands(v48);
      if (!result)
      {
        goto LABEL_51;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v48);
      if (v18)
      {
        v19 = 8 * v18;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_50;
      }

LABEL_35:
      if (v15)
      {
        result = mlir::ShapedType::hasStaticShape(v47);
        if (!result)
        {
          goto LABEL_51;
        }

        v20 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
        v22 = v21;
        v24 = mlir::CallableOpInterface::getArgAttrsAttr(v47);
        result = 0;
        if (v22 != 4 || v23 != 4)
        {
          goto LABEL_51;
        }

        v25 = v24[2];
        if (v25 >= 1)
        {
          v26 = v24[3];
          if (v26 >= 1)
          {
            v27 = *v20;
            if (*v20 >= 1)
            {
              result = 0;
              v28 = v20[2];
              v29 = v20[3];
              v30 = v29 / v26;
              v31 = v28 / v25;
              v32 = *v24;
              if (v32 / v27 == v28 / v25 * (v29 / v26) && v30 * v26 == v29 && v31 * v25 == v28 && v32 / v27 * v27 == v32)
              {
                ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v49);
                v46 = ChannelAxis;
                if (ChannelAxis == 1 || ChannelAxis == -3)
                {
                  v34 = v62;
                  *(v62 + 1) = v31;
                  *(v34 + 2) = v30;
                  v61 = 3;
                  IntegerType = mlir::Builder::getIntegerType((v4 + 8), 64, 0);
                  v36 = mlir::RankedTensorType::get(&v61, 1, IntegerType, 0);
                  v37 = v36;
                  if (v36)
                  {
                    v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v39 = 1;
                  v40 = mlir::DenseElementsAttr::getFromRawBuffer(v37, v38, v62, 8 * v63, 8, 1, 0);
                  v61 = v60;
                  v44 = v54;
                  v45 = v40;
                  Strides = mlir::mps::ColToImOp::getStrides(&v49);
                  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v49);
                  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v49);
                  mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle,int &>(v4, a2, &v61, &v44, &Strides, &v45, &Rewriter, &PaddingStyle, &v46);
                }

                else
                {
                  v39 = 0;
                }

                result = v39;
              }

LABEL_51:
              v10 = v62;
              if (v62 == v64)
              {
                return result;
              }

LABEL_21:
              v13 = result;
              free(v10);
              return v13;
            }
          }
        }
      }

LABEL_50:
      result = 0;
      goto LABEL_51;
    }

    a3 = v4;
  }

  v62 = "could not detect s2b->dwConv->b2s op pattern";
  v64[8] = 259;
  v48[0] = &v62;
  v8 = *(a3 + 16);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 16)))
  {
    (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::BatchToSpaceOp &>(mlir::mps::BatchToSpaceOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v48);
  }

  return 0;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle,int &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, int *a9)
{
  v11 = mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,int>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7, a8, a9);
  (*(*a1 + 1))(a1, a2, v11);
  return v11;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BatchToSpaceOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*> & *)#1},0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v21 = *(*(**(a2 + 8) + 72) + 24);
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DepthwiseConv3DOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v4, result);
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = result & **a2;
  **a2 = v8;
  v9 = *(a1 + 8);
  v10 = *(*v7 + 72);
  v11 = v10[7];
  if (*v9)
  {
    v12 = *v9 == v11;
  }

  else
  {
    *v9 = v11;
    v6 = *a2;
    v10 = *(**(a2 + 8) + 72);
    v8 = **a2 != 0;
    v12 = 1;
  }

  v13 = v12 & v8;
  *v6 = v13;
  v14 = *(a1 + 16);
  v15 = v10[11];
  if (*v14)
  {
    v16 = *v14 == v15;
  }

  else
  {
    *v14 = v15;
    v6 = *a2;
    v10 = *(**(a2 + 8) + 72);
    v13 = **a2 != 0;
    v16 = 1;
  }

  v17 = v16 & v13;
  *v6 = v17;
  v18 = *(a1 + 24);
  v19 = v10[15];
  if (*v18)
  {
    v20 = *v18 == v19;
  }

  else
  {
    *v18 = v19;
    v6 = *a2;
    v17 = **a2 != 0;
    v20 = 1;
  }

  *v6 = v20 & v17;
  return result;
}

uint64_t **mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SpaceToBatchOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> & *)#1},0ul,1ul,2ul,3ul>(uint64_t **result, uint64_t a2)
{
  v2 = *(**(a2 + 8) + 72);
  v3 = v2[3];
  v4 = **result;
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    **result = v3;
    v2 = *(**(a2 + 8) + 72);
    v5 = 1;
  }

  v6 = *a2;
  v7 = v5 & **a2;
  **a2 = v7;
  v8 = result[1];
  v9 = v2[7];
  if (*v8)
  {
    v10 = *v8 == v9;
  }

  else
  {
    *v8 = v9;
    v6 = *a2;
    v2 = *(**(a2 + 8) + 72);
    v7 = **a2 != 0;
    v10 = 1;
  }

  v11 = v10 & v7;
  *v6 = v11;
  v12 = result[2];
  v13 = v2[11];
  if (*v12)
  {
    v14 = *v12 == v13;
  }

  else
  {
    *v12 = v13;
    v6 = *a2;
    v2 = *(**(a2 + 8) + 72);
    v11 = **a2 != 0;
    v14 = 1;
  }

  v15 = v14 & v11;
  *v6 = v15;
  v16 = result[3];
  v17 = v2[15];
  if (*v16)
  {
    v18 = *v16 == v17;
  }

  else
  {
    *v16 = v17;
    v6 = *a2;
    v15 = **a2 != 0;
    v18 = 1;
  }

  *v6 = v18 & v15;
  return result;
}