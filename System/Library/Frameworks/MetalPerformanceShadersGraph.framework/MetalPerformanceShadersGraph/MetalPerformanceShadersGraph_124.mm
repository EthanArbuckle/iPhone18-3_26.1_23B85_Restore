void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v210[0] = ElementType;
  v208 = ***a1;
  v9 = mlir::TensorType::getElementType(&v208);
  Value = v9;
  v207 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v207);
  v207 = ElementType;
  v208 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v206 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v205 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v204 = v13;
    v210[0] = mlir::AffineMapAttr::getValue(&v206);
    Value = mlir::AffineMapAttr::getValue(&v205);
    v208 = mlir::AffineMapAttr::getValue(&v204);
  }

  if (mlir::Type::isF32(v210) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v208))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v98 = *a3;
      v99 = a3[1] - *a3;
      if (v99)
      {
        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v100 = operator new(v99);
        v101 = &v100[v99];
        v201 = v100;
        v203 = &v100[v99];
        memcpy(v100, v98, v99);
        v202 = v101;
      }

      v198 = 0;
      v199 = 0;
      v200 = 0;
      v102 = *a4;
      v103 = a4[1] - *a4;
      if (v103)
      {
        if ((v103 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v104 = operator new(v103);
        v105 = (v104 + v103);
        v198 = v104;
        v200 = v104 + v103;
        memcpy(v104, v102, v103);
        v199 = v105;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v201, &v198);
      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }

      v22 = v201;
      if (v201)
      {
        v202 = v201;
        goto LABEL_173;
      }

      return;
    }

    v195 = 0;
    v196 = 0;
    v197 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v195 = v16;
      v197 = &v16[v15];
      memcpy(v16, v14, v15);
      v196 = v17;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v192 = v20;
      v194 = v20 + v19;
      memcpy(v20, v18, v19);
      v193 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v195, &v192);
      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      v22 = v195;
      if (v195)
      {
        v196 = v195;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v210) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v208))
  {
    if (!mlir::Type::isF32(v210) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v208))
    {
      if (mlir::Type::isF32(v210) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v208))
      {
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v42 = *a3;
        v43 = a3[1] - *a3;
        if (v43)
        {
          if ((v43 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v44 = operator new(v43);
          v45 = &v44[v43];
          v165 = v44;
          v167 = &v44[v43];
          memcpy(v44, v42, v43);
          v166 = v45;
        }

        v162 = 0;
        v163 = 0;
        v164 = 0;
        v46 = *a4;
        v47 = a4[1] - *a4;
        if (v47)
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v48 = operator new(v47);
          v49 = &v48[v47];
          v162 = v48;
          v164 = &v48[v47];
          memcpy(v48, v46, v47);
          v163 = v49;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v165, &v162);
        if (v162)
        {
          v163 = v162;
          operator delete(v162);
        }

        v22 = v165;
        if (v165)
        {
          v166 = v165;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v210) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v208))
      {
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v50 = *a3;
        v51 = a3[1] - *a3;
        if (v51)
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v52 = operator new(v51);
          v53 = &v52[v51];
          v159 = v52;
          v161 = &v52[v51];
          memcpy(v52, v50, v51);
          v160 = v53;
        }

        v156 = 0;
        v157 = 0;
        v158 = 0;
        v54 = *a4;
        v55 = a4[1] - *a4;
        if (v55)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v56 = operator new(v55);
          v57 = &v56[v55];
          v156 = v56;
          v158 = &v56[v55];
          memcpy(v56, v54, v55);
          v157 = v57;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v159, &v156);
        if (v156)
        {
          v157 = v156;
          operator delete(v156);
        }

        v22 = v159;
        if (v159)
        {
          v160 = v159;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v210))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v147 = 0;
          v148 = 0;
          v149 = 0;
          v58 = *a3;
          v59 = a3[1] - *a3;
          if (v59)
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v60 = operator new(v59);
            v61 = &v60[v59];
            v147 = v60;
            v149 = &v60[v59];
            memcpy(v60, v58, v59);
            v148 = v61;
          }

          v144 = 0;
          v145 = 0;
          v146 = 0;
          v62 = *a4;
          v63 = a4[1] - *a4;
          if (v63)
          {
            if ((v63 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v64 = operator new(v63);
            v65 = &v64[v63];
            v144 = v64;
            v146 = &v64[v63];
            memcpy(v64, v62, v63);
            v145 = v65;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)0>(a1, a2, &v147, &v144);
          if (v144)
          {
            v145 = v144;
            operator delete(v144);
          }

          v22 = v147;
          if (v147)
          {
            v148 = v147;
            goto LABEL_173;
          }

          return;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v82 = *a3;
        v83 = a3[1] - *a3;
        if (v83)
        {
          if ((v83 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v84 = operator new(v83);
          v85 = &v84[v83];
          v153 = v84;
          v155 = &v84[v83];
          memcpy(v84, v82, v83);
          v154 = v85;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v86 = *a4;
        v87 = a4[1] - *a4;
        if (v87)
        {
          if ((v87 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v88 = operator new(v87);
          v89 = &v88[v87];
          v150 = v88;
          v152 = &v88[v87];
          memcpy(v88, v86, v87);
          v151 = v89;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v153, &v150);
        if (v150)
        {
          v151 = v150;
          operator delete(v150);
        }

        v22 = v153;
        if (v153)
        {
          v154 = v153;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v210))
      {
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v66 = *a3;
        v67 = a3[1] - *a3;
        if (v67)
        {
          if ((v67 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v68 = operator new(v67);
          v69 = &v68[v67];
          v141 = v68;
          v143 = &v68[v67];
          memcpy(v68, v66, v67);
          v142 = v69;
        }

        v138 = 0;
        v139 = 0;
        v140 = 0;
        v70 = *a4;
        v71 = a4[1] - *a4;
        if (v71)
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v72 = operator new(v71);
          v73 = &v72[v71];
          v138 = v72;
          v140 = &v72[v71];
          memcpy(v72, v70, v71);
          v139 = v73;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)0>(a1, a2, &v141, &v138);
        if (v138)
        {
          v139 = v138;
          operator delete(v138);
        }

        v22 = v141;
        if (v141)
        {
          v142 = v141;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v210, 64))
      {
        v135 = 0;
        v136 = 0;
        v137 = 0;
        v74 = *a3;
        v75 = a3[1] - *a3;
        if (v75)
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v76 = operator new(v75);
          v77 = &v76[v75];
          v135 = v76;
          v137 = &v76[v75];
          memcpy(v76, v74, v75);
          v136 = v77;
        }

        v132 = 0;
        v133 = 0;
        v134 = 0;
        v78 = *a4;
        v79 = a4[1] - *a4;
        if (v79)
        {
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v80 = operator new(v79);
          v81 = &v80[v79];
          v132 = v80;
          v134 = &v80[v79];
          memcpy(v80, v78, v79);
          v133 = v81;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)0>(a1, a2, &v135, &v132);
        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        v22 = v135;
        if (v135)
        {
          v136 = v135;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v210, 32))
      {
        if (mlir::Type::isInteger(v210, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v125, a3);
          std::vector<long long>::vector[abi:nn200100](v124, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)0>(a1, a2, v125, v124);
          if (v124[0])
          {
            v124[1] = v124[0];
            operator delete(v124[0]);
          }

          v22 = v125[0];
          if (v125[0])
          {
            v125[1] = v125[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v210, 8) && !mlir::Type::isInteger(v210, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v207);
          }

          std::vector<long long>::vector[abi:nn200100](v123, a3);
          std::vector<long long>::vector[abi:nn200100](v122, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)0>(a1, a2, v123, v122);
          if (v122[0])
          {
            v122[1] = v122[0];
            operator delete(v122[0]);
          }

          v22 = v123[0];
          if (v123[0])
          {
            v123[1] = v123[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v129 = 0;
      v130 = 0;
      v131 = 0;
      v90 = *a3;
      v91 = a3[1] - *a3;
      if (v91)
      {
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v92 = operator new(v91);
        v93 = &v92[v91];
        v129 = v92;
        v131 = &v92[v91];
        memcpy(v92, v90, v91);
        v130 = v93;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v94 = *a4;
      v95 = a4[1] - *a4;
      if (v95)
      {
        if ((v95 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v96 = operator new(v95);
        v97 = &v96[v95];
        v126 = v96;
        v128 = &v96[v95];
        memcpy(v96, v94, v95);
        v127 = v97;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)0>(a1, a2, &v129, &v126);
      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      v22 = v129;
      if (v129)
      {
        v130 = v129;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v34 = *a3;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v36 = operator new(v35);
        v37 = &v36[v35];
        v171 = v36;
        v173 = &v36[v35];
        memcpy(v36, v34, v35);
        v172 = v37;
      }

      v168 = 0;
      v169 = 0;
      v170 = 0;
      v38 = *a4;
      v39 = a4[1] - *a4;
      if (v39)
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v40 = operator new(v39);
        v41 = &v40[v39];
        v168 = v40;
        v170 = &v40[v39];
        memcpy(v40, v38, v39);
        v169 = v41;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v171, &v168);
      if (v168)
      {
        v169 = v168;
        operator delete(v168);
      }

      v22 = v171;
      if (v171)
      {
        v172 = v171;
        goto LABEL_173;
      }

      return;
    }

    v177 = 0;
    v178 = 0;
    v179 = 0;
    v114 = *a3;
    v115 = a3[1] - *a3;
    if (v115)
    {
      if ((v115 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v116 = operator new(v115);
      v117 = &v116[v115];
      v177 = v116;
      v179 = &v116[v115];
      memcpy(v116, v114, v115);
      v178 = v117;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v118 = *a4;
    v119 = a4[1] - *a4;
    if (v119)
    {
      if ((v119 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v120 = operator new(v119);
      v121 = &v120[v119];
      v174 = v120;
      v176 = &v120[v119];
      memcpy(v120, v118, v119);
      v175 = v121;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v177, &v174, v32, v33);
    if (v174)
    {
      v175 = v174;
      operator delete(v174);
    }

    v22 = v177;
    if (v177)
    {
      v178 = v177;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v190 = 0;
    v189 = 0;
    v191 = 0;
    v106 = *a3;
    v107 = a3[1] - *a3;
    if (v107)
    {
      if ((v107 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v108 = operator new(v107);
      v109 = &v108[v107];
      v189 = v108;
      v191 = &v108[v107];
      memcpy(v108, v106, v107);
      v190 = v109;
    }

    v187 = 0;
    v186 = 0;
    v188 = 0;
    v110 = *a4;
    v111 = a4[1] - *a4;
    if (v111)
    {
      if ((v111 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v112 = operator new(v111);
      v113 = &v112[v111];
      v186 = v112;
      v188 = &v112[v111];
      memcpy(v112, v110, v111);
      v187 = v113;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v189, &v186, v23);
    if (v186)
    {
      v187 = v186;
      operator delete(v186);
    }

    v22 = v189;
    if (v189)
    {
      v190 = v189;
      goto LABEL_173;
    }

    return;
  }

  v184 = 0;
  v183 = 0;
  v185 = 0;
  v24 = *a3;
  v25 = a3[1] - *a3;
  if (v25)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v26 = operator new(v25);
    v27 = &v26[v25];
    v183 = v26;
    v185 = &v26[v25];
    memcpy(v26, v24, v25);
    v184 = v27;
  }

  v181 = 0;
  __p = 0;
  v182 = 0;
  v28 = *a4;
  v29 = a4[1] - *a4;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v30 = operator new(v29);
    v31 = &v30[v29];
    __p = v30;
    v182 = &v30[v29];
    memcpy(v30, v28, v29);
    v181 = v31;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v183, &__p);
  if (__p)
  {
    v181 = __p;
    operator delete(__p);
  }

  v22 = v183;
  if (v183)
  {
    v184 = v183;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)1>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v210[0] = ElementType;
  v208 = ***a1;
  v9 = mlir::TensorType::getElementType(&v208);
  Value = v9;
  v207 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v207);
  v207 = ElementType;
  v208 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v206 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v205 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v204 = v13;
    v210[0] = mlir::AffineMapAttr::getValue(&v206);
    Value = mlir::AffineMapAttr::getValue(&v205);
    v208 = mlir::AffineMapAttr::getValue(&v204);
  }

  if (mlir::Type::isF32(v210) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v208))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v98 = *a3;
      v99 = a3[1] - *a3;
      if (v99)
      {
        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v100 = operator new(v99);
        v101 = &v100[v99];
        v201 = v100;
        v203 = &v100[v99];
        memcpy(v100, v98, v99);
        v202 = v101;
      }

      v198 = 0;
      v199 = 0;
      v200 = 0;
      v102 = *a4;
      v103 = a4[1] - *a4;
      if (v103)
      {
        if ((v103 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v104 = operator new(v103);
        v105 = (v104 + v103);
        v198 = v104;
        v200 = v104 + v103;
        memcpy(v104, v102, v103);
        v199 = v105;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v201, &v198);
      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }

      v22 = v201;
      if (v201)
      {
        v202 = v201;
        goto LABEL_173;
      }

      return;
    }

    v195 = 0;
    v196 = 0;
    v197 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v195 = v16;
      v197 = &v16[v15];
      memcpy(v16, v14, v15);
      v196 = v17;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v192 = v20;
      v194 = v20 + v19;
      memcpy(v20, v18, v19);
      v193 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v195, &v192);
      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      v22 = v195;
      if (v195)
      {
        v196 = v195;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v210) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v208))
  {
    if (!mlir::Type::isF32(v210) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v208))
    {
      if (mlir::Type::isF32(v210) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v208))
      {
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v42 = *a3;
        v43 = a3[1] - *a3;
        if (v43)
        {
          if ((v43 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v44 = operator new(v43);
          v45 = &v44[v43];
          v165 = v44;
          v167 = &v44[v43];
          memcpy(v44, v42, v43);
          v166 = v45;
        }

        v162 = 0;
        v163 = 0;
        v164 = 0;
        v46 = *a4;
        v47 = a4[1] - *a4;
        if (v47)
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v48 = operator new(v47);
          v49 = &v48[v47];
          v162 = v48;
          v164 = &v48[v47];
          memcpy(v48, v46, v47);
          v163 = v49;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v165, &v162);
        if (v162)
        {
          v163 = v162;
          operator delete(v162);
        }

        v22 = v165;
        if (v165)
        {
          v166 = v165;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v210) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v208))
      {
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v50 = *a3;
        v51 = a3[1] - *a3;
        if (v51)
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v52 = operator new(v51);
          v53 = &v52[v51];
          v159 = v52;
          v161 = &v52[v51];
          memcpy(v52, v50, v51);
          v160 = v53;
        }

        v156 = 0;
        v157 = 0;
        v158 = 0;
        v54 = *a4;
        v55 = a4[1] - *a4;
        if (v55)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v56 = operator new(v55);
          v57 = &v56[v55];
          v156 = v56;
          v158 = &v56[v55];
          memcpy(v56, v54, v55);
          v157 = v57;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v159, &v156);
        if (v156)
        {
          v157 = v156;
          operator delete(v156);
        }

        v22 = v159;
        if (v159)
        {
          v160 = v159;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v210))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v147 = 0;
          v148 = 0;
          v149 = 0;
          v58 = *a3;
          v59 = a3[1] - *a3;
          if (v59)
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v60 = operator new(v59);
            v61 = &v60[v59];
            v147 = v60;
            v149 = &v60[v59];
            memcpy(v60, v58, v59);
            v148 = v61;
          }

          v144 = 0;
          v145 = 0;
          v146 = 0;
          v62 = *a4;
          v63 = a4[1] - *a4;
          if (v63)
          {
            if ((v63 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v64 = operator new(v63);
            v65 = &v64[v63];
            v144 = v64;
            v146 = &v64[v63];
            memcpy(v64, v62, v63);
            v145 = v65;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)1>(a1, a2, &v147, &v144);
          if (v144)
          {
            v145 = v144;
            operator delete(v144);
          }

          v22 = v147;
          if (v147)
          {
            v148 = v147;
            goto LABEL_173;
          }

          return;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v82 = *a3;
        v83 = a3[1] - *a3;
        if (v83)
        {
          if ((v83 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v84 = operator new(v83);
          v85 = &v84[v83];
          v153 = v84;
          v155 = &v84[v83];
          memcpy(v84, v82, v83);
          v154 = v85;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v86 = *a4;
        v87 = a4[1] - *a4;
        if (v87)
        {
          if ((v87 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v88 = operator new(v87);
          v89 = &v88[v87];
          v150 = v88;
          v152 = &v88[v87];
          memcpy(v88, v86, v87);
          v151 = v89;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v153, &v150);
        if (v150)
        {
          v151 = v150;
          operator delete(v150);
        }

        v22 = v153;
        if (v153)
        {
          v154 = v153;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v210))
      {
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v66 = *a3;
        v67 = a3[1] - *a3;
        if (v67)
        {
          if ((v67 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v68 = operator new(v67);
          v69 = &v68[v67];
          v141 = v68;
          v143 = &v68[v67];
          memcpy(v68, v66, v67);
          v142 = v69;
        }

        v138 = 0;
        v139 = 0;
        v140 = 0;
        v70 = *a4;
        v71 = a4[1] - *a4;
        if (v71)
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v72 = operator new(v71);
          v73 = &v72[v71];
          v138 = v72;
          v140 = &v72[v71];
          memcpy(v72, v70, v71);
          v139 = v73;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)1>(a1, a2, &v141, &v138);
        if (v138)
        {
          v139 = v138;
          operator delete(v138);
        }

        v22 = v141;
        if (v141)
        {
          v142 = v141;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v210, 64))
      {
        v135 = 0;
        v136 = 0;
        v137 = 0;
        v74 = *a3;
        v75 = a3[1] - *a3;
        if (v75)
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v76 = operator new(v75);
          v77 = &v76[v75];
          v135 = v76;
          v137 = &v76[v75];
          memcpy(v76, v74, v75);
          v136 = v77;
        }

        v132 = 0;
        v133 = 0;
        v134 = 0;
        v78 = *a4;
        v79 = a4[1] - *a4;
        if (v79)
        {
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v80 = operator new(v79);
          v81 = &v80[v79];
          v132 = v80;
          v134 = &v80[v79];
          memcpy(v80, v78, v79);
          v133 = v81;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)1>(a1, a2, &v135, &v132);
        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        v22 = v135;
        if (v135)
        {
          v136 = v135;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v210, 32))
      {
        if (mlir::Type::isInteger(v210, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v125, a3);
          std::vector<long long>::vector[abi:nn200100](v124, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)1>(a1, a2, v125, v124);
          if (v124[0])
          {
            v124[1] = v124[0];
            operator delete(v124[0]);
          }

          v22 = v125[0];
          if (v125[0])
          {
            v125[1] = v125[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v210, 8) && !mlir::Type::isInteger(v210, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v207);
          }

          std::vector<long long>::vector[abi:nn200100](v123, a3);
          std::vector<long long>::vector[abi:nn200100](v122, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)1>(a1, a2, v123, v122);
          if (v122[0])
          {
            v122[1] = v122[0];
            operator delete(v122[0]);
          }

          v22 = v123[0];
          if (v123[0])
          {
            v123[1] = v123[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v129 = 0;
      v130 = 0;
      v131 = 0;
      v90 = *a3;
      v91 = a3[1] - *a3;
      if (v91)
      {
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v92 = operator new(v91);
        v93 = &v92[v91];
        v129 = v92;
        v131 = &v92[v91];
        memcpy(v92, v90, v91);
        v130 = v93;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v94 = *a4;
      v95 = a4[1] - *a4;
      if (v95)
      {
        if ((v95 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v96 = operator new(v95);
        v97 = &v96[v95];
        v126 = v96;
        v128 = &v96[v95];
        memcpy(v96, v94, v95);
        v127 = v97;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)1>(a1, a2, &v129, &v126);
      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      v22 = v129;
      if (v129)
      {
        v130 = v129;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v34 = *a3;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v36 = operator new(v35);
        v37 = &v36[v35];
        v171 = v36;
        v173 = &v36[v35];
        memcpy(v36, v34, v35);
        v172 = v37;
      }

      v168 = 0;
      v169 = 0;
      v170 = 0;
      v38 = *a4;
      v39 = a4[1] - *a4;
      if (v39)
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v40 = operator new(v39);
        v41 = &v40[v39];
        v168 = v40;
        v170 = &v40[v39];
        memcpy(v40, v38, v39);
        v169 = v41;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v171, &v168);
      if (v168)
      {
        v169 = v168;
        operator delete(v168);
      }

      v22 = v171;
      if (v171)
      {
        v172 = v171;
        goto LABEL_173;
      }

      return;
    }

    v177 = 0;
    v178 = 0;
    v179 = 0;
    v114 = *a3;
    v115 = a3[1] - *a3;
    if (v115)
    {
      if ((v115 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v116 = operator new(v115);
      v117 = &v116[v115];
      v177 = v116;
      v179 = &v116[v115];
      memcpy(v116, v114, v115);
      v178 = v117;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v118 = *a4;
    v119 = a4[1] - *a4;
    if (v119)
    {
      if ((v119 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v120 = operator new(v119);
      v121 = &v120[v119];
      v174 = v120;
      v176 = &v120[v119];
      memcpy(v120, v118, v119);
      v175 = v121;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v177, &v174, v32, v33);
    if (v174)
    {
      v175 = v174;
      operator delete(v174);
    }

    v22 = v177;
    if (v177)
    {
      v178 = v177;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v190 = 0;
    v189 = 0;
    v191 = 0;
    v106 = *a3;
    v107 = a3[1] - *a3;
    if (v107)
    {
      if ((v107 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v108 = operator new(v107);
      v109 = &v108[v107];
      v189 = v108;
      v191 = &v108[v107];
      memcpy(v108, v106, v107);
      v190 = v109;
    }

    v187 = 0;
    v186 = 0;
    v188 = 0;
    v110 = *a4;
    v111 = a4[1] - *a4;
    if (v111)
    {
      if ((v111 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v112 = operator new(v111);
      v113 = &v112[v111];
      v186 = v112;
      v188 = &v112[v111];
      memcpy(v112, v110, v111);
      v187 = v113;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v189, &v186, v23);
    if (v186)
    {
      v187 = v186;
      operator delete(v186);
    }

    v22 = v189;
    if (v189)
    {
      v190 = v189;
      goto LABEL_173;
    }

    return;
  }

  v184 = 0;
  v183 = 0;
  v185 = 0;
  v24 = *a3;
  v25 = a3[1] - *a3;
  if (v25)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v26 = operator new(v25);
    v27 = &v26[v25];
    v183 = v26;
    v185 = &v26[v25];
    memcpy(v26, v24, v25);
    v184 = v27;
  }

  v181 = 0;
  __p = 0;
  v182 = 0;
  v28 = *a4;
  v29 = a4[1] - *a4;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v30 = operator new(v29);
    v31 = &v30[v29];
    __p = v30;
    v182 = &v30[v29];
    memcpy(v30, v28, v29);
    v181 = v31;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v183, &__p);
  if (__p)
  {
    v181 = __p;
    operator delete(__p);
  }

  v22 = v183;
  if (v183)
  {
    v184 = v183;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)2>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207[0] = ElementType;
  v205 = ***a1;
  v9 = mlir::TensorType::getElementType(&v205);
  Value = v9;
  v204 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v204);
  v204 = ElementType;
  v205 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v202 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    v207[0] = mlir::AffineMapAttr::getValue(&v203);
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v97 = operator new(v96);
        v98 = (v97 + v96);
        v198 = v97;
        v200 = v97 + v96;
        memcpy(v97, v95, v96);
        v199 = v98;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v101 = operator new(v100);
        v102 = (v101 + v100);
        v195 = v101;
        v197 = v101 + v100;
        memcpy(v101, v99, v100);
        v196 = v102;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_173;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v192 = v16;
      v194 = &v16[v15];
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v207) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
  {
    if (!mlir::Type::isF32(v207) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
    {
      if (mlir::Type::isF32(v207) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v39 = *a3;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v41 = operator new(v40);
          v42 = &v41[v40];
          v162 = v41;
          v164 = &v41[v40];
          memcpy(v41, v39, v40);
          v163 = v42;
        }

        v159 = 0;
        v160 = 0;
        v161 = 0;
        v43 = *a4;
        v44 = a4[1] - *a4;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v45 = operator new(v44);
          v46 = &v45[v44];
          v159 = v45;
          v161 = &v45[v44];
          memcpy(v45, v43, v44);
          v160 = v46;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v162, &v159);
        if (v159)
        {
          v160 = v159;
          operator delete(v159);
        }

        v22 = v162;
        if (v162)
        {
          v163 = v162;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v49 = operator new(v48);
          v50 = &v49[v48];
          v156 = v49;
          v158 = &v49[v48];
          memcpy(v49, v47, v48);
          v157 = v50;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v153 = v53;
          v155 = &v53[v52];
          memcpy(v53, v51, v52);
          v154 = v54;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v156, &v153);
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        v22 = v156;
        if (v156)
        {
          v157 = v156;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v207))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v55 = *a3;
          v56 = a3[1] - *a3;
          if (v56)
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v57 = operator new(v56);
            v58 = &v57[v56];
            v144 = v57;
            v146 = &v57[v56];
            memcpy(v57, v55, v56);
            v145 = v58;
          }

          v141 = 0;
          v142 = 0;
          v143 = 0;
          v59 = *a4;
          v60 = a4[1] - *a4;
          if (v60)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v61 = operator new(v60);
            v62 = &v61[v60];
            v141 = v61;
            v143 = &v61[v60];
            memcpy(v61, v59, v60);
            v142 = v62;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)2>(a1, a2, &v144, &v141);
          if (v141)
          {
            v142 = v141;
            operator delete(v141);
          }

          v22 = v144;
          if (v144)
          {
            v145 = v144;
            goto LABEL_173;
          }

          return;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v79 = *a3;
        v80 = a3[1] - *a3;
        if (v80)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v81 = operator new(v80);
          v82 = (v81 + v80);
          v150 = v81;
          v152 = v81 + v80;
          memcpy(v81, v79, v80);
          v151 = v82;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v83 = *a4;
        v84 = a4[1] - *a4;
        if (v84)
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v85 = operator new(v84);
          v86 = &v85[v84];
          v147 = v85;
          v149 = &v85[v84];
          memcpy(v85, v83, v84);
          v148 = v86;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v207))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v65 = operator new(v64);
          v66 = &v65[v64];
          v138 = v65;
          v140 = &v65[v64];
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)2>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v207, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v73 = operator new(v72);
          v74 = &v73[v72];
          v132 = v73;
          v134 = &v73[v72];
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)2>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v207, 32))
      {
        if (mlir::Type::isInteger(v207, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)2>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v207, 8) && !mlir::Type::isInteger(v207, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)2>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v87 = *a3;
      v88 = a3[1] - *a3;
      if (v88)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v89 = operator new(v88);
        v90 = &v89[v88];
        v126 = v89;
        v128 = &v89[v88];
        memcpy(v89, v87, v88);
        v127 = v90;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v91 = *a4;
      v92 = a4[1] - *a4;
      if (v92)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v93 = operator new(v92);
        v94 = &v93[v92];
        v123 = v93;
        v125 = &v93[v92];
        memcpy(v93, v91, v92);
        v124 = v94;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)2>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v31 = *a3;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v33 = operator new(v32);
        v34 = &v33[v32];
        v168 = v33;
        v170 = &v33[v32];
        memcpy(v33, v31, v32);
        v169 = v34;
      }

      v165 = 0;
      v166 = 0;
      v167 = 0;
      v35 = *a4;
      v36 = a4[1] - *a4;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v37 = operator new(v36);
        v38 = &v37[v36];
        v165 = v37;
        v167 = &v37[v36];
        memcpy(v37, v35, v36);
        v166 = v38;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v168, &v165);
      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      v22 = v168;
      if (v168)
      {
        v169 = v168;
        goto LABEL_173;
      }

      return;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v113 = operator new(v112);
      v114 = (v113 + v112);
      v174 = v113;
      v176 = v113 + v112;
      memcpy(v113, v111, v112);
      v175 = v114;
    }

    v171 = 0;
    v172 = 0;
    v173 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v171 = v117;
      v173 = &v117[v116];
      memcpy(v117, v115, v116);
      v172 = v118;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v174, &v171);
    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    v22 = v174;
    if (v174)
    {
      v175 = v174;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v186 = 0;
    v188 = 0;
    v103 = *a3;
    v104 = a3[1] - *a3;
    if (v104)
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v105 = operator new(v104);
      v106 = (v105 + v104);
      v186 = v105;
      v188 = v105 + v104;
      memcpy(v105, v103, v104);
      v187 = v106;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v107 = *a4;
    v108 = a4[1] - *a4;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v109 = operator new(v108);
      v110 = &v109[v108];
      v183 = v109;
      v185 = &v109[v108];
      memcpy(v109, v107, v108);
      v184 = v110;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v186, &v183);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_173;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v25 = operator new(v24);
    v26 = &v25[v24];
    v180 = v25;
    v182 = &v25[v24];
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207[0] = ElementType;
  v205 = ***a1;
  v9 = mlir::TensorType::getElementType(&v205);
  Value = v9;
  v204 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v204);
  v204 = ElementType;
  v205 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v202 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    v207[0] = mlir::AffineMapAttr::getValue(&v203);
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v97 = operator new(v96);
        v98 = &v97[v96];
        v198 = v97;
        v200 = &v97[v96];
        memcpy(v97, v95, v96);
        v199 = v98;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v101 = operator new(v100);
        v102 = (v101 + v100);
        v195 = v101;
        v197 = v101 + v100;
        memcpy(v101, v99, v100);
        v196 = v102;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_173;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v192 = v16;
      v194 = &v16[v15];
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v207) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
  {
    if (!mlir::Type::isF32(v207) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
    {
      if (mlir::Type::isF32(v207) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v39 = *a3;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v41 = operator new(v40);
          v42 = &v41[v40];
          v162 = v41;
          v164 = &v41[v40];
          memcpy(v41, v39, v40);
          v163 = v42;
        }

        v159 = 0;
        v160 = 0;
        v161 = 0;
        v43 = *a4;
        v44 = a4[1] - *a4;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v45 = operator new(v44);
          v46 = &v45[v44];
          v159 = v45;
          v161 = &v45[v44];
          memcpy(v45, v43, v44);
          v160 = v46;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v162, &v159);
        if (v159)
        {
          v160 = v159;
          operator delete(v159);
        }

        v22 = v162;
        if (v162)
        {
          v163 = v162;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v49 = operator new(v48);
          v50 = &v49[v48];
          v156 = v49;
          v158 = &v49[v48];
          memcpy(v49, v47, v48);
          v157 = v50;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v153 = v53;
          v155 = &v53[v52];
          memcpy(v53, v51, v52);
          v154 = v54;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v156, &v153);
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        v22 = v156;
        if (v156)
        {
          v157 = v156;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v207))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v55 = *a3;
          v56 = a3[1] - *a3;
          if (v56)
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v57 = operator new(v56);
            v58 = &v57[v56];
            v144 = v57;
            v146 = &v57[v56];
            memcpy(v57, v55, v56);
            v145 = v58;
          }

          v141 = 0;
          v142 = 0;
          v143 = 0;
          v59 = *a4;
          v60 = a4[1] - *a4;
          if (v60)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v61 = operator new(v60);
            v62 = &v61[v60];
            v141 = v61;
            v143 = &v61[v60];
            memcpy(v61, v59, v60);
            v142 = v62;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)3>(a1, a2, &v144, &v141);
          if (v141)
          {
            v142 = v141;
            operator delete(v141);
          }

          v22 = v144;
          if (v144)
          {
            v145 = v144;
            goto LABEL_173;
          }

          return;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v79 = *a3;
        v80 = a3[1] - *a3;
        if (v80)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v81 = operator new(v80);
          v82 = &v81[v80];
          v150 = v81;
          v152 = &v81[v80];
          memcpy(v81, v79, v80);
          v151 = v82;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v83 = *a4;
        v84 = a4[1] - *a4;
        if (v84)
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v85 = operator new(v84);
          v86 = &v85[v84];
          v147 = v85;
          v149 = &v85[v84];
          memcpy(v85, v83, v84);
          v148 = v86;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v207))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v65 = operator new(v64);
          v66 = &v65[v64];
          v138 = v65;
          v140 = &v65[v64];
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)3>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v207, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v73 = operator new(v72);
          v74 = &v73[v72];
          v132 = v73;
          v134 = &v73[v72];
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)3>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v207, 32))
      {
        if (mlir::Type::isInteger(v207, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)3>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v207, 8) && !mlir::Type::isInteger(v207, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)3>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v87 = *a3;
      v88 = a3[1] - *a3;
      if (v88)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v89 = operator new(v88);
        v90 = &v89[v88];
        v126 = v89;
        v128 = &v89[v88];
        memcpy(v89, v87, v88);
        v127 = v90;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v91 = *a4;
      v92 = a4[1] - *a4;
      if (v92)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v93 = operator new(v92);
        v94 = &v93[v92];
        v123 = v93;
        v125 = &v93[v92];
        memcpy(v93, v91, v92);
        v124 = v94;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)3>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v31 = *a3;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v33 = operator new(v32);
        v34 = &v33[v32];
        v168 = v33;
        v170 = &v33[v32];
        memcpy(v33, v31, v32);
        v169 = v34;
      }

      v165 = 0;
      v166 = 0;
      v167 = 0;
      v35 = *a4;
      v36 = a4[1] - *a4;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v37 = operator new(v36);
        v38 = &v37[v36];
        v165 = v37;
        v167 = &v37[v36];
        memcpy(v37, v35, v36);
        v166 = v38;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v168, &v165);
      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      v22 = v168;
      if (v168)
      {
        v169 = v168;
        goto LABEL_173;
      }

      return;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v113 = operator new(v112);
      v114 = &v113[v112];
      v174 = v113;
      v176 = &v113[v112];
      memcpy(v113, v111, v112);
      v175 = v114;
    }

    v171 = 0;
    v172 = 0;
    v173 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v171 = v117;
      v173 = &v117[v116];
      memcpy(v117, v115, v116);
      v172 = v118;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v174, &v171);
    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    v22 = v174;
    if (v174)
    {
      v175 = v174;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v186 = 0;
    v188 = 0;
    v103 = *a3;
    v104 = a3[1] - *a3;
    if (v104)
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v105 = operator new(v104);
      v106 = &v105[v104];
      v186 = v105;
      v188 = &v105[v104];
      memcpy(v105, v103, v104);
      v187 = v106;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v107 = *a4;
    v108 = a4[1] - *a4;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v109 = operator new(v108);
      v110 = &v109[v108];
      v183 = v109;
      v185 = &v109[v108];
      memcpy(v109, v107, v108);
      v184 = v110;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v186, &v183);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_173;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v25 = operator new(v24);
    v26 = &v25[v24];
    v180 = v25;
    v182 = &v25[v24];
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v209[0] = ElementType;
  v207 = ***a1;
  v9 = mlir::TensorType::getElementType(&v207);
  Value = v9;
  v206 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v206);
  v206 = ElementType;
  v207 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v204 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v203 = v13;
    v209[0] = mlir::AffineMapAttr::getValue(&v205);
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v97 = operator new(v96);
        v98 = &v97[v96];
        v200 = v97;
        v202 = &v97[v96];
        memcpy(v97, v95, v96);
        v201 = v98;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v101 = operator new(v100);
        v102 = (v101 + v100);
        v197 = v101;
        v199 = v101 + v100;
        memcpy(v101, v99, v100);
        v198 = v102;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v22 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_173;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v194 = v16;
      v196 = &v16[v15];
      memcpy(v16, v14, v15);
      v195 = v17;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v191 = v20;
      v193 = v20 + v19;
      memcpy(v20, v18, v19);
      v192 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v22 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v209) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
  {
    if (!mlir::Type::isF32(v209) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
    {
      if (mlir::Type::isF32(v209) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v39 = *a3;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v41 = operator new(v40);
          v42 = &v41[v40];
          v164 = v41;
          v166 = &v41[v40];
          memcpy(v41, v39, v40);
          v165 = v42;
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v43 = *a4;
        v44 = a4[1] - *a4;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v45 = operator new(v44);
          v46 = &v45[v44];
          v161 = v45;
          v163 = &v45[v44];
          memcpy(v45, v43, v44);
          v162 = v46;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v164, &v161);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v22 = v164;
        if (v164)
        {
          v165 = v164;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v49 = operator new(v48);
          v50 = &v49[v48];
          v158 = v49;
          v160 = &v49[v48];
          memcpy(v49, v47, v48);
          v159 = v50;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v155 = v53;
          v157 = &v53[v52];
          memcpy(v53, v51, v52);
          v156 = v54;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v158, &v155);
        if (v155)
        {
          v156 = v155;
          operator delete(v155);
        }

        v22 = v158;
        if (v158)
        {
          v159 = v158;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v209))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v55 = *a3;
          v56 = a3[1] - *a3;
          if (v56)
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v57 = operator new(v56);
            v58 = &v57[v56];
            v146 = v57;
            v148 = &v57[v56];
            memcpy(v57, v55, v56);
            v147 = v58;
          }

          v143 = 0;
          v144 = 0;
          v145 = 0;
          v59 = *a4;
          v60 = a4[1] - *a4;
          if (v60)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v61 = operator new(v60);
            v62 = &v61[v60];
            v143 = v61;
            v145 = &v61[v60];
            memcpy(v61, v59, v60);
            v144 = v62;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)4>(a1, a2, &v146, &v143);
          if (v143)
          {
            v144 = v143;
            operator delete(v143);
          }

          v22 = v146;
          if (v146)
          {
            v147 = v146;
            goto LABEL_173;
          }

          return;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v79 = *a3;
        v80 = a3[1] - *a3;
        if (v80)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v81 = operator new(v80);
          v82 = &v81[v80];
          v152 = v81;
          v154 = &v81[v80];
          memcpy(v81, v79, v80);
          v153 = v82;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v83 = *a4;
        v84 = a4[1] - *a4;
        if (v84)
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v85 = operator new(v84);
          v86 = &v85[v84];
          v149 = v85;
          v151 = &v85[v84];
          memcpy(v85, v83, v84);
          v150 = v86;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v22 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v209))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v65 = operator new(v64);
          v66 = &v65[v64];
          v140 = v65;
          v142 = &v65[v64];
          memcpy(v65, v63, v64);
          v141 = v66;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v137 = v69;
          v139 = &v69[v68];
          memcpy(v69, v67, v68);
          v138 = v70;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)4>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v22 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v209, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v73 = operator new(v72);
          v74 = &v73[v72];
          v134 = v73;
          v136 = &v73[v72];
          memcpy(v73, v71, v72);
          v135 = v74;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v131 = v77;
          v133 = &v77[v76];
          memcpy(v77, v75, v76);
          v132 = v78;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)4>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v22 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v209, 32))
      {
        if (mlir::Type::isInteger(v209, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)4>(a1, a2, v124, v123, v119, v120);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v22 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v209, 8) && !mlir::Type::isInteger(v209, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)4>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v87 = *a3;
      v88 = a3[1] - *a3;
      if (v88)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v89 = operator new(v88);
        v90 = &v89[v88];
        v128 = v89;
        v130 = &v89[v88];
        memcpy(v89, v87, v88);
        v129 = v90;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v91 = *a4;
      v92 = a4[1] - *a4;
      if (v92)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v93 = operator new(v92);
        v94 = &v93[v92];
        v125 = v93;
        v127 = &v93[v92];
        memcpy(v93, v91, v92);
        v126 = v94;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)4>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v22 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v31 = *a3;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v33 = operator new(v32);
        v34 = &v33[v32];
        v170 = v33;
        v172 = &v33[v32];
        memcpy(v33, v31, v32);
        v171 = v34;
      }

      v167 = 0;
      v168 = 0;
      v169 = 0;
      v35 = *a4;
      v36 = a4[1] - *a4;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v37 = operator new(v36);
        v38 = &v37[v36];
        v167 = v37;
        v169 = &v37[v36];
        memcpy(v37, v35, v36);
        v168 = v38;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v170, &v167);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v22 = v170;
      if (v170)
      {
        v171 = v170;
        goto LABEL_173;
      }

      return;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v113 = operator new(v112);
      v114 = &v113[v112];
      v176 = v113;
      v178 = &v113[v112];
      memcpy(v113, v111, v112);
      v177 = v114;
    }

    v173 = 0;
    v174 = 0;
    v175 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v173 = v117;
      v175 = &v117[v116];
      memcpy(v117, v115, v116);
      v174 = v118;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v176, &v173);
    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    v22 = v176;
    if (v176)
    {
      v177 = v176;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v188 = 0;
    v190 = 0;
    v103 = *a3;
    v104 = a3[1] - *a3;
    if (v104)
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v105 = operator new(v104);
      v106 = &v105[v104];
      v188 = v105;
      v190 = &v105[v104];
      memcpy(v105, v103, v104);
      v189 = v106;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v107 = *a4;
    v108 = a4[1] - *a4;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v109 = operator new(v108);
      v110 = &v109[v108];
      v185 = v109;
      v187 = &v109[v108];
      memcpy(v109, v107, v108);
      v186 = v110;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v188, &v185);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v22 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_173;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v25 = operator new(v24);
    v26 = &v25[v24];
    v182 = v25;
    v184 = &v25[v24];
    memcpy(v25, v23, v24);
    v183 = v26;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v181 = &v29[v28];
    memcpy(v29, v27, v28);
    v180 = v30;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v22 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)5>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207[0] = ElementType;
  v205 = ***a1;
  v9 = mlir::TensorType::getElementType(&v205);
  Value = v9;
  v204 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v204);
  v204 = ElementType;
  v205 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v202 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    v207[0] = mlir::AffineMapAttr::getValue(&v203);
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v97 = operator new(v96);
        v98 = &v97[v96];
        v198 = v97;
        v200 = &v97[v96];
        memcpy(v97, v95, v96);
        v199 = v98;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v101 = operator new(v100);
        v102 = (v101 + v100);
        v195 = v101;
        v197 = v101 + v100;
        memcpy(v101, v99, v100);
        v196 = v102;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_173;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v192 = v16;
      v194 = &v16[v15];
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v207) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
  {
    if (!mlir::Type::isF32(v207) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
    {
      if (mlir::Type::isF32(v207) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v39 = *a3;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v41 = operator new(v40);
          v42 = &v41[v40];
          v162 = v41;
          v164 = &v41[v40];
          memcpy(v41, v39, v40);
          v163 = v42;
        }

        v159 = 0;
        v160 = 0;
        v161 = 0;
        v43 = *a4;
        v44 = a4[1] - *a4;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v45 = operator new(v44);
          v46 = &v45[v44];
          v159 = v45;
          v161 = &v45[v44];
          memcpy(v45, v43, v44);
          v160 = v46;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v162, &v159);
        if (v159)
        {
          v160 = v159;
          operator delete(v159);
        }

        v22 = v162;
        if (v162)
        {
          v163 = v162;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v49 = operator new(v48);
          v50 = &v49[v48];
          v156 = v49;
          v158 = &v49[v48];
          memcpy(v49, v47, v48);
          v157 = v50;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v153 = v53;
          v155 = &v53[v52];
          memcpy(v53, v51, v52);
          v154 = v54;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v156, &v153);
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        v22 = v156;
        if (v156)
        {
          v157 = v156;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v207))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v55 = *a3;
          v56 = a3[1] - *a3;
          if (v56)
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v57 = operator new(v56);
            v58 = &v57[v56];
            v144 = v57;
            v146 = &v57[v56];
            memcpy(v57, v55, v56);
            v145 = v58;
          }

          v141 = 0;
          v142 = 0;
          v143 = 0;
          v59 = *a4;
          v60 = a4[1] - *a4;
          if (v60)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v61 = operator new(v60);
            v62 = &v61[v60];
            v141 = v61;
            v143 = &v61[v60];
            memcpy(v61, v59, v60);
            v142 = v62;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)5>(a1, a2, &v144, &v141);
          if (v141)
          {
            v142 = v141;
            operator delete(v141);
          }

          v22 = v144;
          if (v144)
          {
            v145 = v144;
            goto LABEL_173;
          }

          return;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v79 = *a3;
        v80 = a3[1] - *a3;
        if (v80)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v81 = operator new(v80);
          v82 = &v81[v80];
          v150 = v81;
          v152 = &v81[v80];
          memcpy(v81, v79, v80);
          v151 = v82;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v83 = *a4;
        v84 = a4[1] - *a4;
        if (v84)
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v85 = operator new(v84);
          v86 = &v85[v84];
          v147 = v85;
          v149 = &v85[v84];
          memcpy(v85, v83, v84);
          v148 = v86;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v207))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v65 = operator new(v64);
          v66 = &v65[v64];
          v138 = v65;
          v140 = &v65[v64];
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)5>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v207, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v73 = operator new(v72);
          v74 = &v73[v72];
          v132 = v73;
          v134 = &v73[v72];
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)5>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v207, 32))
      {
        if (mlir::Type::isInteger(v207, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)5>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v207, 8) && !mlir::Type::isInteger(v207, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)5>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v87 = *a3;
      v88 = a3[1] - *a3;
      if (v88)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v89 = operator new(v88);
        v90 = &v89[v88];
        v126 = v89;
        v128 = &v89[v88];
        memcpy(v89, v87, v88);
        v127 = v90;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v91 = *a4;
      v92 = a4[1] - *a4;
      if (v92)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v93 = operator new(v92);
        v94 = &v93[v92];
        v123 = v93;
        v125 = &v93[v92];
        memcpy(v93, v91, v92);
        v124 = v94;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)5>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v31 = *a3;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v33 = operator new(v32);
        v34 = &v33[v32];
        v168 = v33;
        v170 = &v33[v32];
        memcpy(v33, v31, v32);
        v169 = v34;
      }

      v165 = 0;
      v166 = 0;
      v167 = 0;
      v35 = *a4;
      v36 = a4[1] - *a4;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v37 = operator new(v36);
        v38 = &v37[v36];
        v165 = v37;
        v167 = &v37[v36];
        memcpy(v37, v35, v36);
        v166 = v38;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v168, &v165);
      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      v22 = v168;
      if (v168)
      {
        v169 = v168;
        goto LABEL_173;
      }

      return;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v113 = operator new(v112);
      v114 = &v113[v112];
      v174 = v113;
      v176 = &v113[v112];
      memcpy(v113, v111, v112);
      v175 = v114;
    }

    v171 = 0;
    v172 = 0;
    v173 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v171 = v117;
      v173 = &v117[v116];
      memcpy(v117, v115, v116);
      v172 = v118;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v174, &v171);
    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    v22 = v174;
    if (v174)
    {
      v175 = v174;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v186 = 0;
    v188 = 0;
    v103 = *a3;
    v104 = a3[1] - *a3;
    if (v104)
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v105 = operator new(v104);
      v106 = &v105[v104];
      v186 = v105;
      v188 = &v105[v104];
      memcpy(v105, v103, v104);
      v187 = v106;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v107 = *a4;
    v108 = a4[1] - *a4;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v109 = operator new(v108);
      v110 = &v109[v108];
      v183 = v109;
      v185 = &v109[v108];
      memcpy(v109, v107, v108);
      v184 = v110;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v186, &v183);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_173;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v25 = operator new(v24);
    v26 = &v25[v24];
    v180 = v25;
    v182 = &v25[v24];
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207[0] = ElementType;
  v205 = ***a1;
  v9 = mlir::TensorType::getElementType(&v205);
  Value = v9;
  v204 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v204);
  v204 = ElementType;
  v205 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v202 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    v207[0] = mlir::AffineMapAttr::getValue(&v203);
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v97 = operator new(v96);
        v98 = &v97[v96];
        v198 = v97;
        v200 = &v97[v96];
        memcpy(v97, v95, v96);
        v199 = v98;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v101 = operator new(v100);
        v102 = (v101 + v100);
        v195 = v101;
        v197 = v101 + v100;
        memcpy(v101, v99, v100);
        v196 = v102;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_173;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v192 = v16;
      v194 = &v16[v15];
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v207) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
  {
    if (!mlir::Type::isF32(v207) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
    {
      if (mlir::Type::isF32(v207) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v39 = *a3;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v41 = operator new(v40);
          v42 = &v41[v40];
          v162 = v41;
          v164 = &v41[v40];
          memcpy(v41, v39, v40);
          v163 = v42;
        }

        v159 = 0;
        v160 = 0;
        v161 = 0;
        v43 = *a4;
        v44 = a4[1] - *a4;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v45 = operator new(v44);
          v46 = &v45[v44];
          v159 = v45;
          v161 = &v45[v44];
          memcpy(v45, v43, v44);
          v160 = v46;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v162, &v159);
        if (v159)
        {
          v160 = v159;
          operator delete(v159);
        }

        v22 = v162;
        if (v162)
        {
          v163 = v162;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v49 = operator new(v48);
          v50 = &v49[v48];
          v156 = v49;
          v158 = &v49[v48];
          memcpy(v49, v47, v48);
          v157 = v50;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v153 = v53;
          v155 = &v53[v52];
          memcpy(v53, v51, v52);
          v154 = v54;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v156, &v153);
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        v22 = v156;
        if (v156)
        {
          v157 = v156;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v207))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v55 = *a3;
          v56 = a3[1] - *a3;
          if (v56)
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v57 = operator new(v56);
            v58 = &v57[v56];
            v144 = v57;
            v146 = &v57[v56];
            memcpy(v57, v55, v56);
            v145 = v58;
          }

          v141 = 0;
          v142 = 0;
          v143 = 0;
          v59 = *a4;
          v60 = a4[1] - *a4;
          if (v60)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v61 = operator new(v60);
            v62 = &v61[v60];
            v141 = v61;
            v143 = &v61[v60];
            memcpy(v61, v59, v60);
            v142 = v62;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)15>(a1, a2, &v144, &v141);
          if (v141)
          {
            v142 = v141;
            operator delete(v141);
          }

          v22 = v144;
          if (v144)
          {
            v145 = v144;
            goto LABEL_173;
          }

          return;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v79 = *a3;
        v80 = a3[1] - *a3;
        if (v80)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v81 = operator new(v80);
          v82 = &v81[v80];
          v150 = v81;
          v152 = &v81[v80];
          memcpy(v81, v79, v80);
          v151 = v82;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v83 = *a4;
        v84 = a4[1] - *a4;
        if (v84)
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v85 = operator new(v84);
          v86 = &v85[v84];
          v147 = v85;
          v149 = &v85[v84];
          memcpy(v85, v83, v84);
          v148 = v86;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v207))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v65 = operator new(v64);
          v66 = &v65[v64];
          v138 = v65;
          v140 = &v65[v64];
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)15>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v207, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v73 = operator new(v72);
          v74 = &v73[v72];
          v132 = v73;
          v134 = &v73[v72];
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)15>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v207, 32))
      {
        if (mlir::Type::isInteger(v207, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)15>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v207, 8) && !mlir::Type::isInteger(v207, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)15>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v87 = *a3;
      v88 = a3[1] - *a3;
      if (v88)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v89 = operator new(v88);
        v90 = &v89[v88];
        v126 = v89;
        v128 = &v89[v88];
        memcpy(v89, v87, v88);
        v127 = v90;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v91 = *a4;
      v92 = a4[1] - *a4;
      if (v92)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v93 = operator new(v92);
        v94 = &v93[v92];
        v123 = v93;
        v125 = &v93[v92];
        memcpy(v93, v91, v92);
        v124 = v94;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)15>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v31 = *a3;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v33 = operator new(v32);
        v34 = &v33[v32];
        v168 = v33;
        v170 = &v33[v32];
        memcpy(v33, v31, v32);
        v169 = v34;
      }

      v165 = 0;
      v166 = 0;
      v167 = 0;
      v35 = *a4;
      v36 = a4[1] - *a4;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v37 = operator new(v36);
        v38 = &v37[v36];
        v165 = v37;
        v167 = &v37[v36];
        memcpy(v37, v35, v36);
        v166 = v38;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v168, &v165);
      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      v22 = v168;
      if (v168)
      {
        v169 = v168;
        goto LABEL_173;
      }

      return;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v113 = operator new(v112);
      v114 = &v113[v112];
      v174 = v113;
      v176 = &v113[v112];
      memcpy(v113, v111, v112);
      v175 = v114;
    }

    v171 = 0;
    v172 = 0;
    v173 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v171 = v117;
      v173 = &v117[v116];
      memcpy(v117, v115, v116);
      v172 = v118;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v174, &v171);
    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    v22 = v174;
    if (v174)
    {
      v175 = v174;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v186 = 0;
    v188 = 0;
    v103 = *a3;
    v104 = a3[1] - *a3;
    if (v104)
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v105 = operator new(v104);
      v106 = &v105[v104];
      v186 = v105;
      v188 = &v105[v104];
      memcpy(v105, v103, v104);
      v187 = v106;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v107 = *a4;
    v108 = a4[1] - *a4;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v109 = operator new(v108);
      v110 = &v109[v108];
      v183 = v109;
      v185 = &v109[v108];
      memcpy(v109, v107, v108);
      v184 = v110;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v186, &v183);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_173;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v25 = operator new(v24);
    v26 = &v25[v24];
    v180 = v25;
    v182 = &v25[v24];
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207[0] = ElementType;
  v205 = ***a1;
  v9 = mlir::TensorType::getElementType(&v205);
  Value = v9;
  v204 = *(*a1)[1];
  v10 = mlir::TensorType::getElementType(&v204);
  v204 = ElementType;
  v205 = v10;
  v11 = *(*ElementType + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = ElementType;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v202 = v12;
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    v207[0] = mlir::AffineMapAttr::getValue(&v203);
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v97 = operator new(v96);
        v98 = &v97[v96];
        v198 = v97;
        v200 = &v97[v96];
        memcpy(v97, v95, v96);
        v199 = v98;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v101 = operator new(v100);
        v102 = (v101 + v100);
        v195 = v101;
        v197 = v101 + v100;
        memcpy(v101, v99, v100);
        v196 = v102;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_173;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v16 = operator new(v15);
      v17 = &v16[v15];
      v192 = v16;
      v194 = &v16[v15];
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_19;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_173:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v207) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
  {
    if (!mlir::Type::isF32(v207) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
    {
      if (mlir::Type::isF32(v207) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v39 = *a3;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v41 = operator new(v40);
          v42 = &v41[v40];
          v162 = v41;
          v164 = &v41[v40];
          memcpy(v41, v39, v40);
          v163 = v42;
        }

        v159 = 0;
        v160 = 0;
        v161 = 0;
        v43 = *a4;
        v44 = a4[1] - *a4;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v45 = operator new(v44);
          v46 = &v45[v44];
          v159 = v45;
          v161 = &v45[v44];
          memcpy(v45, v43, v44);
          v160 = v46;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v162, &v159);
        if (v159)
        {
          v160 = v159;
          operator delete(v159);
        }

        v22 = v162;
        if (v162)
        {
          v163 = v162;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v207) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v156 = 0;
        v157 = 0;
        v158 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v49 = operator new(v48);
          v50 = &v49[v48];
          v156 = v49;
          v158 = &v49[v48];
          memcpy(v49, v47, v48);
          v157 = v50;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v153 = v53;
          v155 = &v53[v52];
          memcpy(v53, v51, v52);
          v154 = v54;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v156, &v153);
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        v22 = v156;
        if (v156)
        {
          v157 = v156;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v207))
      {
        if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v55 = *a3;
          v56 = a3[1] - *a3;
          if (v56)
          {
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v57 = operator new(v56);
            v58 = &v57[v56];
            v144 = v57;
            v146 = &v57[v56];
            memcpy(v57, v55, v56);
            v145 = v58;
          }

          v141 = 0;
          v142 = 0;
          v143 = 0;
          v59 = *a4;
          v60 = a4[1] - *a4;
          if (v60)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v61 = operator new(v60);
            v62 = &v61[v60];
            v141 = v61;
            v143 = &v61[v60];
            memcpy(v61, v59, v60);
            v142 = v62;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)16>(a1, a2, &v144, &v141);
          if (v141)
          {
            v142 = v141;
            operator delete(v141);
          }

          v22 = v144;
          if (v144)
          {
            v145 = v144;
            goto LABEL_173;
          }

          return;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v79 = *a3;
        v80 = a3[1] - *a3;
        if (v80)
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v81 = operator new(v80);
          v82 = &v81[v80];
          v150 = v81;
          v152 = &v81[v80];
          memcpy(v81, v79, v80);
          v151 = v82;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v83 = *a4;
        v84 = a4[1] - *a4;
        if (v84)
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v85 = operator new(v84);
          v86 = &v85[v84];
          v147 = v85;
          v149 = &v85[v84];
          memcpy(v85, v83, v84);
          v148 = v86;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v207))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v65 = operator new(v64);
          v66 = &v65[v64];
          v138 = v65;
          v140 = &v65[v64];
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)16>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v207, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v73 = operator new(v72);
          v74 = &v73[v72];
          v132 = v73;
          v134 = &v73[v72];
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)16>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v207, 32))
      {
        if (mlir::Type::isInteger(v207, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)16>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v207, 8) && !mlir::Type::isInteger(v207, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)16>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v87 = *a3;
      v88 = a3[1] - *a3;
      if (v88)
      {
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v89 = operator new(v88);
        v90 = &v89[v88];
        v126 = v89;
        v128 = &v89[v88];
        memcpy(v89, v87, v88);
        v127 = v90;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v91 = *a4;
      v92 = a4[1] - *a4;
      if (v92)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v93 = operator new(v92);
        v94 = &v93[v92];
        v123 = v93;
        v125 = &v93[v92];
        memcpy(v93, v91, v92);
        v124 = v94;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)16>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_173;
      }

      return;
    }

    if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v31 = *a3;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v33 = operator new(v32);
        v34 = &v33[v32];
        v168 = v33;
        v170 = &v33[v32];
        memcpy(v33, v31, v32);
        v169 = v34;
      }

      v165 = 0;
      v166 = 0;
      v167 = 0;
      v35 = *a4;
      v36 = a4[1] - *a4;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v37 = operator new(v36);
        v38 = &v37[v36];
        v165 = v37;
        v167 = &v37[v36];
        memcpy(v37, v35, v36);
        v166 = v38;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v168, &v165);
      if (v165)
      {
        v166 = v165;
        operator delete(v165);
      }

      v22 = v168;
      if (v168)
      {
        v169 = v168;
        goto LABEL_173;
      }

      return;
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v113 = operator new(v112);
      v114 = &v113[v112];
      v174 = v113;
      v176 = &v113[v112];
      memcpy(v113, v111, v112);
      v175 = v114;
    }

    v171 = 0;
    v172 = 0;
    v173 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v171 = v117;
      v173 = &v117[v116];
      memcpy(v117, v115, v116);
      v172 = v118;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v174, &v171);
    if (v171)
    {
      v172 = v171;
      operator delete(v171);
    }

    v22 = v174;
    if (v174)
    {
      v175 = v174;
      goto LABEL_173;
    }

    return;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v186 = 0;
    v188 = 0;
    v103 = *a3;
    v104 = a3[1] - *a3;
    if (v104)
    {
      if ((v104 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v105 = operator new(v104);
      v106 = &v105[v104];
      v186 = v105;
      v188 = &v105[v104];
      memcpy(v105, v103, v104);
      v187 = v106;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v107 = *a4;
    v108 = a4[1] - *a4;
    if (v108)
    {
      if ((v108 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v109 = operator new(v108);
      v110 = &v109[v108];
      v183 = v109;
      v185 = &v109[v108];
      memcpy(v109, v107, v108);
      v184 = v110;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v186, &v183);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_173;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v25 = operator new(v24);
    v26 = &v25[v24];
    v180 = v25;
    v182 = &v25[v24];
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_173;
  }
}

uint64_t mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(uint64_t result, int a2)
{
  *result = mlir::mps::CPUNDArrayArithmeticBinaryKernel::arithmeticBinaryTileKernel;
  *(result + 8) = 4;
  *(result + 16) = a2;
  return result;
}

void mlir::mps::CPUNDArrayArithmeticUnaryKernel::arithmeticUnaryTileKernel(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 16);
  if (v10 <= 10)
  {
    if (v10 <= 7)
    {
      if (v10 == 6)
      {
        v30 = *(a7 + 24);
        v155 = 0;
        v156 = 0;
        v154 = 0;
        v32 = *a3;
        v31 = *(a3 + 8);
        v33 = v31 - *a3;
        if (v31 != *a3)
        {
          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_112;
          }

          v34 = operator new(v31 - *a3);
          v35 = &v34[v33];
          v154 = v34;
          v156 = &v34[v33];
          memcpy(v34, v32, v33);
          v155 = v35;
        }

        v151 = 0;
        v152 = 0;
        v153 = 0;
        v36 = *a4;
        v37 = *(a4 + 8) - *a4;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_112;
          }

          v38 = operator new(v37);
          v39 = &v38[v37];
          v151 = v38;
          v153 = &v38[v37];
          memcpy(v38, v36, v37);
          v152 = v39;
        }

        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(a1, a2, &v154, &v151, v30);
        if (v151)
        {
          v152 = v151;
          operator delete(v151);
        }

        v20 = v154;
        if (v154)
        {
          v155 = v154;
          goto LABEL_110;
        }

        return;
      }

      v148 = 0;
      v149 = 0;
      v150 = 0;
      v86 = *a3;
      v85 = *(a3 + 8);
      v87 = v85 - *a3;
      if (v85 != *a3)
      {
        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v88 = operator new(v85 - *a3);
        v89 = &v88[v87];
        v148 = v88;
        v150 = &v88[v87];
        memcpy(v88, v86, v87);
        v149 = v89;
      }

      v145 = 0;
      v146 = 0;
      v147 = 0;
      v90 = *a4;
      v91 = *(a4 + 8) - *a4;
      if (v91)
      {
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v92 = operator new(v91);
        v93 = &v92[v91];
        v145 = v92;
        v147 = &v92[v91];
        memcpy(v92, v90, v91);
        v146 = v93;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(a1, a2, &v148, &v145, 0);
      if (v145)
      {
        v146 = v145;
        operator delete(v145);
      }

      v20 = v148;
      if (v148)
      {
        v149 = v148;
        goto LABEL_110;
      }

      return;
    }

    if (v10 == 8)
    {
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v50 = *a3;
      v49 = *(a3 + 8);
      v51 = v49 - *a3;
      if (v49 != *a3)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v52 = operator new(v49 - *a3);
        v53 = &v52[v51];
        v142 = v52;
        v144 = &v52[v51];
        memcpy(v52, v50, v51);
        v143 = v53;
      }

      v139 = 0;
      v140 = 0;
      v141 = 0;
      v54 = *a4;
      v55 = *(a4 + 8) - *a4;
      if (v55)
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v56 = operator new(v55);
        v57 = &v56[v55];
        v139 = v56;
        v141 = &v56[v55];
        memcpy(v56, v54, v55);
        v140 = v57;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(a1, a2, &v142, &v139, 0);
      if (v139)
      {
        v140 = v139;
        operator delete(v139);
      }

      v20 = v142;
      if (v142)
      {
        v143 = v142;
        goto LABEL_110;
      }

      return;
    }

    if (v10 != 9)
    {
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v68 = *a3;
      v67 = *(a3 + 8);
      v69 = v67 - *a3;
      if (v67 != *a3)
      {
        if ((v69 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v70 = operator new(v67 - *a3);
        v71 = &v70[v69];
        v130 = v70;
        v132 = &v70[v69];
        memcpy(v70, v68, v69);
        v131 = v71;
      }

      v127 = 0;
      v128 = 0;
      v129 = 0;
      v72 = *a4;
      v73 = *(a4 + 8) - *a4;
      if (v73)
      {
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v74 = operator new(v73);
        v75 = &v74[v73];
        v127 = v74;
        v129 = &v74[v73];
        memcpy(v74, v72, v73);
        v128 = v75;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(a1, a2, &v130, &v127);
      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      v20 = v130;
      if (v130)
      {
        v131 = v130;
        goto LABEL_110;
      }

      return;
    }

    v136 = 0;
    v137 = 0;
    v138 = 0;
    v12 = *a3;
    v11 = *(a3 + 8);
    v13 = v11 - *a3;
    if (v11 != *a3)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v14 = operator new(v11 - *a3);
      v15 = &v14[v13];
      v136 = v14;
      v138 = &v14[v13];
      memcpy(v14, v12, v13);
      v137 = v15;
    }

    __p = 0;
    v134 = 0;
    v135 = 0;
    v16 = *a4;
    v17 = *(a4 + 8) - *a4;
    if (!v17)
    {
      goto LABEL_11;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = operator new(v17);
      v19 = &v18[v17];
      __p = v18;
      v135 = &v18[v17];
      memcpy(v18, v16, v17);
      v134 = v19;
LABEL_11:
      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(a1, a2, &v136, &__p, 0);
      if (__p)
      {
        v134 = __p;
        operator delete(__p);
      }

      v20 = v136;
      if (v136)
      {
        v137 = v136;
LABEL_110:
        operator delete(v20);
        return;
      }

      return;
    }

LABEL_112:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v10 <= 12)
  {
    if (v10 == 11)
    {
      v124 = 0;
      v125 = 0;
      v126 = 0;
      v41 = *a3;
      v40 = *(a3 + 8);
      v42 = v40 - *a3;
      if (v40 != *a3)
      {
        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v43 = operator new(v40 - *a3);
        v44 = &v43[v42];
        v124 = v43;
        v126 = &v43[v42];
        memcpy(v43, v41, v42);
        v125 = v44;
      }

      v121 = 0;
      v122 = 0;
      v123 = 0;
      v45 = *a4;
      v46 = *(a4 + 8) - *a4;
      if (v46)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v47 = operator new(v46);
        v48 = &v47[v46];
        v121 = v47;
        v123 = &v47[v46];
        memcpy(v47, v45, v46);
        v122 = v48;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(a1, a2, &v124, &v121, 0);
      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      v20 = v124;
      if (v124)
      {
        v125 = v124;
        goto LABEL_110;
      }

      return;
    }

    v118 = 0;
    v119 = 0;
    v120 = 0;
    v95 = *a3;
    v94 = *(a3 + 8);
    v96 = v94 - *a3;
    if (v94 != *a3)
    {
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v97 = operator new(v94 - *a3);
      v98 = &v97[v96];
      v118 = v97;
      v120 = &v97[v96];
      memcpy(v97, v95, v96);
      v119 = v98;
    }

    v115 = 0;
    v116 = 0;
    v117 = 0;
    v99 = *a4;
    v100 = *(a4 + 8) - *a4;
    if (v100)
    {
      if ((v100 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v101 = operator new(v100);
      v102 = &v101[v100];
      v115 = v101;
      v117 = &v101[v100];
      memcpy(v101, v99, v100);
      v116 = v102;
    }

    mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(a1, a2, &v118, &v115);
    if (v115)
    {
      v116 = v115;
      operator delete(v115);
    }

    v20 = v118;
    if (v118)
    {
      v119 = v118;
      goto LABEL_110;
    }

    return;
  }

  if (v10 == 13)
  {
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v59 = *a3;
    v58 = *(a3 + 8);
    v60 = v58 - *a3;
    if (v58 != *a3)
    {
      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v61 = operator new(v58 - *a3);
      v62 = &v61[v60];
      v112 = v61;
      v114 = &v61[v60];
      memcpy(v61, v59, v60);
      v113 = v62;
    }

    v109 = 0;
    v110 = 0;
    v111 = 0;
    v63 = *a4;
    v64 = *(a4 + 8) - *a4;
    if (v64)
    {
      if ((v64 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v65 = operator new(v64);
      v66 = &v65[v64];
      v109 = v65;
      v111 = &v65[v64];
      memcpy(v65, v63, v64);
      v110 = v66;
    }

    mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(a1, a2, &v112, &v109, 0);
    if (v109)
    {
      v110 = v109;
      operator delete(v109);
    }

    v20 = v112;
    if (v112)
    {
      v113 = v112;
      goto LABEL_110;
    }

    return;
  }

  if (v10 != 14)
  {
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v77 = *a3;
    v76 = *(a3 + 8);
    v78 = v76 - *a3;
    if (v76 != *a3)
    {
      if ((v78 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v79 = operator new(v76 - *a3);
      v80 = &v79[v78];
      v160 = v79;
      v162 = &v79[v78];
      memcpy(v79, v77, v78);
      v161 = v80;
    }

    v157 = 0;
    v158 = 0;
    v159 = 0;
    v81 = *a4;
    v82 = *(a4 + 8) - *a4;
    if (v82)
    {
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v83 = operator new(v82);
      v84 = &v83[v82];
      v157 = v83;
      v159 = &v83[v82];
      memcpy(v83, v81, v82);
      v158 = v84;
    }

    mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(a1, a2, &v160, &v157, 0);
    if (v157)
    {
      v158 = v157;
      operator delete(v157);
    }

    v20 = v160;
    if (v160)
    {
      v161 = v160;
      goto LABEL_110;
    }

    return;
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  v22 = *a3;
  v21 = *(a3 + 8);
  v23 = v21 - *a3;
  if (v21 != *a3)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v24 = operator new(v21 - *a3);
    v25 = &v24[v23];
    v106 = v24;
    v108 = &v24[v23];
    memcpy(v24, v22, v23);
    v107 = v25;
  }

  v103 = 0;
  v104 = 0;
  v105 = 0;
  v26 = *a4;
  v27 = *(a4 + 8) - *a4;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v28 = operator new(v27);
    v29 = &v28[v27];
    v103 = v28;
    v105 = &v28[v27];
    memcpy(v28, v26, v27);
    v104 = v29;
  }

  mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(a1, a2, &v106, &v103, 0.0);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  v20 = v106;
  if (v106)
  {
    v107 = v106;
    goto LABEL_110;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4, int16x4_t a5)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v205 = ElementType;
  v203 = ***a2;
  v11 = mlir::TensorType::getElementType(&v203);
  v203 = v11;
  Value = v11;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v202 = v11;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = ElementType;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v79 = *a3;
      v80 = a3[1] - *a3;
      if (v80)
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v81 = operator new(v80);
        v82 = (v81 + v80);
        v198 = v81;
        v200 = v81 + v80;
        memcpy(v81, v79, v80);
        v199 = v82;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v83 = *a4;
      v84 = a4[1] - *a4;
      if (v84)
      {
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v85 = operator new(v84);
        v86 = (v85 + v84);
        v195 = v85;
        v197 = v85 + v84;
        memcpy(v85, v83, v84);
        v196 = v86;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_167;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v16 = operator new(v15);
      v17 = (v16 + v15);
      v192 = v16;
      v194 = v16 + v15;
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_15;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_167:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v205))
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v31 = *a3;
        v32 = a3[1] - *a3;
        if (v32)
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v33 = operator new(v32);
          v34 = (v33 + v32);
          v168 = v33;
          v170 = v33 + v32;
          memcpy(v33, v31, v32);
          v169 = v34;
        }

        v165 = 0;
        v166 = 0;
        v167 = 0;
        v35 = *a4;
        v36 = a4[1] - *a4;
        if (v36)
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v37 = operator new(v36);
          v38 = &v37[v36];
          v165 = v37;
          v167 = &v37[v36];
          memcpy(v37, v35, v36);
          v166 = v38;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v168, &v165);
        if (v165)
        {
          v166 = v165;
          operator delete(v165);
        }

        v22 = v168;
        if (v168)
        {
          v169 = v168;
          goto LABEL_167;
        }

        return;
      }

      v175 = 0;
      v174 = 0;
      v176 = 0;
      v103 = *a3;
      v104 = a3[1] - *a3;
      if (v104)
      {
        if ((v104 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v105 = operator new(v104);
        v106 = (v105 + v104);
        v174 = v105;
        v176 = v105 + v104;
        memcpy(v105, v103, v104);
        v175 = v106;
      }

      v171 = 0;
      v172 = 0;
      v173 = 0;
      v107 = *a4;
      v108 = a4[1] - *a4;
      if (v108)
      {
        if ((v108 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v109 = operator new(v108);
        v110 = &v109[v108];
        v171 = v109;
        v173 = &v109[v108];
        memcpy(v109, v107, v108);
        v172 = v110;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v174, &v171, *&a5);
      if (v171)
      {
        v172 = v171;
        operator delete(v171);
      }

      v22 = v174;
      if (v174)
      {
        v175 = v174;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v49 = operator new(v48);
          v50 = (v49 + v48);
          v150 = v49;
          v152 = v49 + v48;
          memcpy(v49, v47, v48);
          v151 = v50;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v147 = v53;
          v149 = &v53[v52];
          memcpy(v53, v51, v52);
          v148 = v54;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v205))
      {
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v55 = *a3;
        v56 = a3[1] - *a3;
        if (v56)
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v57 = operator new(v56);
          v58 = (v57 + v56);
          v144 = v57;
          v146 = v57 + v56;
          memcpy(v57, v55, v56);
          v145 = v58;
        }

        v141 = 0;
        v142 = 0;
        v143 = 0;
        v59 = *a4;
        v60 = a4[1] - *a4;
        if (v60)
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v61 = operator new(v60);
          v62 = &v61[v60];
          v141 = v61;
          v143 = &v61[v60];
          memcpy(v61, v59, v60);
          v142 = v62;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v144, &v141);
        if (v141)
        {
          v142 = v141;
          operator delete(v141);
        }

        v22 = v144;
        if (v144)
        {
          v145 = v144;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v65 = operator new(v64);
          v66 = (v65 + v64);
          v138 = v65;
          v140 = v65 + v64;
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v73 = operator new(v72);
          v74 = (v73 + v72);
          v132 = v73;
          v134 = v73 + v72;
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)17>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)17>(a1, a2, v122, v121, a5);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v203);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)17>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v97 = operator new(v96);
        v98 = (v97 + v96);
        v126 = v97;
        v128 = v97 + v96;
        memcpy(v97, v95, v96);
        v127 = v98;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v101 = operator new(v100);
        v102 = &v101[v100];
        v123 = v101;
        v125 = &v101[v100];
        memcpy(v101, v99, v100);
        v124 = v102;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)17>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_167;
      }

      return;
    }

    if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v39 = *a3;
      v40 = a3[1] - *a3;
      if (v40)
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v41 = operator new(v40);
        v42 = (v41 + v40);
        v156 = v41;
        v158 = v41 + v40;
        memcpy(v41, v39, v40);
        v157 = v42;
      }

      v153 = 0;
      v154 = 0;
      v155 = 0;
      v43 = *a4;
      v44 = a4[1] - *a4;
      if (v44)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v45 = operator new(v44);
        v46 = &v45[v44];
        v153 = v45;
        v155 = &v45[v44];
        memcpy(v45, v43, v44);
        v154 = v46;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v156, &v153);
      if (v153)
      {
        v154 = v153;
        operator delete(v153);
      }

      v22 = v156;
      if (v156)
      {
        v157 = v156;
        goto LABEL_167;
      }

      return;
    }

    v162 = 0;
    v163 = 0;
    v164 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v113 = operator new(v112);
      v114 = (v113 + v112);
      v162 = v113;
      v164 = v113 + v112;
      memcpy(v113, v111, v112);
      v163 = v114;
    }

    v159 = 0;
    v160 = 0;
    v161 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v159 = v117;
      v161 = &v117[v116];
      memcpy(v117, v115, v116);
      v160 = v118;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v162, &v159);
    if (v159)
    {
      v160 = v159;
      operator delete(v159);
    }

    v22 = v162;
    if (v162)
    {
      v163 = v162;
      goto LABEL_167;
    }

    return;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v87 = *a3;
    v88 = a3[1] - *a3;
    if (v88)
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v89 = operator new(v88);
      v90 = (v89 + v88);
      v186 = v89;
      v188 = v89 + v88;
      memcpy(v89, v87, v88);
      v187 = v90;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v91 = *a4;
    v92 = a4[1] - *a4;
    if (v92)
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v93 = operator new(v92);
      v94 = &v93[v92];
      v183 = v93;
      v185 = &v93[v92];
      memcpy(v93, v91, v92);
      v184 = v94;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v186, &v183, a5);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_167;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v25 = operator new(v24);
    v26 = (v25 + v24);
    v180 = v25;
    v182 = v25 + v24;
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4, double a5)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v205 = ElementType;
  v203 = ***a2;
  v11 = mlir::TensorType::getElementType(&v203);
  v203 = v11;
  Value = v11;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v202 = v11;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = ElementType;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v79 = *a3;
      v80 = a3[1] - *a3;
      if (v80)
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v81 = operator new(v80);
        v82 = (v81 + v80);
        v198 = v81;
        v200 = v81 + v80;
        memcpy(v81, v79, v80);
        v199 = v82;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v83 = *a4;
      v84 = a4[1] - *a4;
      if (v84)
      {
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v85 = operator new(v84);
        v86 = (v85 + v84);
        v195 = v85;
        v197 = v85 + v84;
        memcpy(v85, v83, v84);
        v196 = v86;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v198, &v195, a5);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_167;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v16 = operator new(v15);
      v17 = (v16 + v15);
      v192 = v16;
      v194 = v16 + v15;
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_15;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v192, &v189, a5);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_167:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v205))
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v31 = *a3;
        v32 = a3[1] - *a3;
        if (v32)
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v33 = operator new(v32);
          v34 = (v33 + v32);
          v168 = v33;
          v170 = v33 + v32;
          memcpy(v33, v31, v32);
          v169 = v34;
        }

        v165 = 0;
        v166 = 0;
        v167 = 0;
        v35 = *a4;
        v36 = a4[1] - *a4;
        if (v36)
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v37 = operator new(v36);
          v38 = &v37[v36];
          v165 = v37;
          v167 = &v37[v36];
          memcpy(v37, v35, v36);
          v166 = v38;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v168, &v165, a5);
        if (v165)
        {
          v166 = v165;
          operator delete(v165);
        }

        v22 = v168;
        if (v168)
        {
          v169 = v168;
          goto LABEL_167;
        }

        return;
      }

      v175 = 0;
      v174 = 0;
      v176 = 0;
      v103 = *a3;
      v104 = a3[1] - *a3;
      if (v104)
      {
        if ((v104 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v105 = operator new(v104);
        v106 = (v105 + v104);
        v174 = v105;
        v176 = v105 + v104;
        memcpy(v105, v103, v104);
        v175 = v106;
      }

      v171 = 0;
      v172 = 0;
      v173 = 0;
      v107 = *a4;
      v108 = a4[1] - *a4;
      if (v108)
      {
        if ((v108 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v109 = operator new(v108);
        v110 = &v109[v108];
        v171 = v109;
        v173 = &v109[v108];
        memcpy(v109, v107, v108);
        v172 = v110;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v174, &v171, a5);
      if (v171)
      {
        v172 = v171;
        operator delete(v171);
      }

      v22 = v174;
      if (v174)
      {
        v175 = v174;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v49 = operator new(v48);
          v50 = (v49 + v48);
          v150 = v49;
          v152 = v49 + v48;
          memcpy(v49, v47, v48);
          v151 = v50;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v147 = v53;
          v149 = &v53[v52];
          memcpy(v53, v51, v52);
          v148 = v54;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v150, &v147, a5);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v205))
      {
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v55 = *a3;
        v56 = a3[1] - *a3;
        if (v56)
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v57 = operator new(v56);
          v58 = (v57 + v56);
          v144 = v57;
          v146 = v57 + v56;
          memcpy(v57, v55, v56);
          v145 = v58;
        }

        v141 = 0;
        v142 = 0;
        v143 = 0;
        v59 = *a4;
        v60 = a4[1] - *a4;
        if (v60)
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v61 = operator new(v60);
          v62 = &v61[v60];
          v141 = v61;
          v143 = &v61[v60];
          memcpy(v61, v59, v60);
          v142 = v62;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v144, &v141, a5);
        if (v141)
        {
          v142 = v141;
          operator delete(v141);
        }

        v22 = v144;
        if (v144)
        {
          v145 = v144;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v65 = operator new(v64);
          v66 = (v65 + v64);
          v138 = v65;
          v140 = v65 + v64;
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v138, &v135, a5);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v73 = operator new(v72);
          v74 = (v73 + v72);
          v132 = v73;
          v134 = v73 + v72;
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)6>(a1, a2, &v132, &v129, a5);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)6>(a1, a2, v122, v121, a5);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v203);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)6>(a1, a2, v120, v119, a5);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v97 = operator new(v96);
        v98 = (v97 + v96);
        v126 = v97;
        v128 = v97 + v96;
        memcpy(v97, v95, v96);
        v127 = v98;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v101 = operator new(v100);
        v102 = &v101[v100];
        v123 = v101;
        v125 = &v101[v100];
        memcpy(v101, v99, v100);
        v124 = v102;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)6>(a1, a2, &v126, &v123, a5);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_167;
      }

      return;
    }

    if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v39 = *a3;
      v40 = a3[1] - *a3;
      if (v40)
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v41 = operator new(v40);
        v42 = (v41 + v40);
        v156 = v41;
        v158 = v41 + v40;
        memcpy(v41, v39, v40);
        v157 = v42;
      }

      v153 = 0;
      v154 = 0;
      v155 = 0;
      v43 = *a4;
      v44 = a4[1] - *a4;
      if (v44)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v45 = operator new(v44);
        v46 = &v45[v44];
        v153 = v45;
        v155 = &v45[v44];
        memcpy(v45, v43, v44);
        v154 = v46;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v156, &v153, a5);
      if (v153)
      {
        v154 = v153;
        operator delete(v153);
      }

      v22 = v156;
      if (v156)
      {
        v157 = v156;
        goto LABEL_167;
      }

      return;
    }

    v162 = 0;
    v163 = 0;
    v164 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v113 = operator new(v112);
      v114 = (v113 + v112);
      v162 = v113;
      v164 = v113 + v112;
      memcpy(v113, v111, v112);
      v163 = v114;
    }

    v159 = 0;
    v160 = 0;
    v161 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v159 = v117;
      v161 = &v117[v116];
      memcpy(v117, v115, v116);
      v160 = v118;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v162, &v159, a5);
    if (v159)
    {
      v160 = v159;
      operator delete(v159);
    }

    v22 = v162;
    if (v162)
    {
      v163 = v162;
      goto LABEL_167;
    }

    return;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v87 = *a3;
    v88 = a3[1] - *a3;
    if (v88)
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v89 = operator new(v88);
      v90 = (v89 + v88);
      v186 = v89;
      v188 = v89 + v88;
      memcpy(v89, v87, v88);
      v187 = v90;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v91 = *a4;
    v92 = a4[1] - *a4;
    if (v92)
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v93 = operator new(v92);
      v94 = &v93[v92];
      v183 = v93;
      v185 = &v93[v92];
      memcpy(v93, v91, v92);
      v184 = v94;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v186, &v183, a5);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_167;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v25 = operator new(v24);
    v26 = (v25 + v24);
    v180 = v25;
    v182 = v25 + v24;
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v180, &__p, a5);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(uint64_t **a1, uint64_t **a2, const void **a3, const void **a4, float16x4_t a5)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v205 = ElementType;
  v203 = ***a2;
  v11 = mlir::TensorType::getElementType(&v203);
  v203 = v11;
  Value = v11;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v202 = v11;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v13 = ElementType;
    }

    else
    {
      v13 = 0;
    }

    v201 = v13;
    Value = mlir::AffineMapAttr::getValue(&v202);
    v205 = mlir::AffineMapAttr::getValue(&v201);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v205))
  {
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v79 = *a3;
      v80 = a3[1] - *a3;
      if (v80)
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v81 = operator new(v80);
        v82 = (v81 + v80);
        v198 = v81;
        v200 = v81 + v80;
        memcpy(v81, v79, v80);
        v199 = v82;
      }

      v195 = 0;
      v196 = 0;
      v197 = 0;
      v83 = *a4;
      v84 = a4[1] - *a4;
      if (v84)
      {
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v85 = operator new(v84);
        v86 = (v85 + v84);
        v195 = v85;
        v197 = v85 + v84;
        memcpy(v85, v83, v84);
        v196 = v86;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v198, &v195);
      if (v195)
      {
        v196 = v195;
        operator delete(v195);
      }

      v22 = v198;
      if (v198)
      {
        v199 = v198;
        goto LABEL_167;
      }

      return;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
    v14 = *a3;
    v15 = a3[1] - *a3;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v16 = operator new(v15);
      v17 = (v16 + v15);
      v192 = v16;
      v194 = v16 + v15;
      memcpy(v16, v14, v15);
      v193 = v17;
    }

    v189 = 0;
    v190 = 0;
    v191 = 0;
    v18 = *a4;
    v19 = a4[1] - *a4;
    if (!v19)
    {
      goto LABEL_15;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = (v20 + v19);
      v189 = v20;
      v191 = v20 + v19;
      memcpy(v20, v18, v19);
      v190 = v21;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v192, &v189);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v22 = v192;
      if (v192)
      {
        v193 = v192;
LABEL_167:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v205))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v205))
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v31 = *a3;
        v32 = a3[1] - *a3;
        if (v32)
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v33 = operator new(v32);
          v34 = (v33 + v32);
          v168 = v33;
          v170 = v33 + v32;
          memcpy(v33, v31, v32);
          v169 = v34;
        }

        v165 = 0;
        v166 = 0;
        v167 = 0;
        v35 = *a4;
        v36 = a4[1] - *a4;
        if (v36)
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v37 = operator new(v36);
          v38 = &v37[v36];
          v165 = v37;
          v167 = &v37[v36];
          memcpy(v37, v35, v36);
          v166 = v38;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v168, &v165);
        if (v165)
        {
          v166 = v165;
          operator delete(v165);
        }

        v22 = v168;
        if (v168)
        {
          v169 = v168;
          goto LABEL_167;
        }

        return;
      }

      v175 = 0;
      v174 = 0;
      v176 = 0;
      v103 = *a3;
      v104 = a3[1] - *a3;
      if (v104)
      {
        if ((v104 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v105 = operator new(v104);
        v106 = (v105 + v104);
        v174 = v105;
        v176 = v105 + v104;
        memcpy(v105, v103, v104);
        v175 = v106;
      }

      v171 = 0;
      v172 = 0;
      v173 = 0;
      v107 = *a4;
      v108 = a4[1] - *a4;
      if (v108)
      {
        if ((v108 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v109 = operator new(v108);
        v110 = &v109[v108];
        v171 = v109;
        v173 = &v109[v108];
        memcpy(v109, v107, v108);
        v172 = v110;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v174, &v171);
      if (v171)
      {
        v172 = v171;
        operator delete(v171);
      }

      v22 = v174;
      if (v174)
      {
        v175 = v174;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v205))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v205))
      {
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v47 = *a3;
        v48 = a3[1] - *a3;
        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v49 = operator new(v48);
          v50 = (v49 + v48);
          v150 = v49;
          v152 = v49 + v48;
          memcpy(v49, v47, v48);
          v151 = v50;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        v51 = *a4;
        v52 = a4[1] - *a4;
        if (v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v53 = operator new(v52);
          v54 = &v53[v52];
          v147 = v53;
          v149 = &v53[v52];
          memcpy(v53, v51, v52);
          v148 = v54;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v150, &v147);
        if (v147)
        {
          v148 = v147;
          operator delete(v147);
        }

        v22 = v150;
        if (v150)
        {
          v151 = v150;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v205))
      {
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v55 = *a3;
        v56 = a3[1] - *a3;
        if (v56)
        {
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v57 = operator new(v56);
          v58 = (v57 + v56);
          v144 = v57;
          v146 = v57 + v56;
          memcpy(v57, v55, v56);
          v145 = v58;
        }

        v141 = 0;
        v142 = 0;
        v143 = 0;
        v59 = *a4;
        v60 = a4[1] - *a4;
        if (v60)
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v61 = operator new(v60);
          v62 = &v61[v60];
          v141 = v61;
          v143 = &v61[v60];
          memcpy(v61, v59, v60);
          v142 = v62;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v144, &v141);
        if (v141)
        {
          v142 = v141;
          operator delete(v141);
        }

        v22 = v144;
        if (v144)
        {
          v145 = v144;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v205))
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v63 = *a3;
        v64 = a3[1] - *a3;
        if (v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v65 = operator new(v64);
          v66 = (v65 + v64);
          v138 = v65;
          v140 = v65 + v64;
          memcpy(v65, v63, v64);
          v139 = v66;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        v67 = *a4;
        v68 = a4[1] - *a4;
        if (v68)
        {
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v69 = operator new(v68);
          v70 = &v69[v68];
          v135 = v69;
          v137 = &v69[v68];
          memcpy(v69, v67, v68);
          v136 = v70;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v138, &v135);
        if (v135)
        {
          v136 = v135;
          operator delete(v135);
        }

        v22 = v138;
        if (v138)
        {
          v139 = v138;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v71 = *a3;
        v72 = a3[1] - *a3;
        if (v72)
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v73 = operator new(v72);
          v74 = (v73 + v72);
          v132 = v73;
          v134 = v73 + v72;
          memcpy(v73, v71, v72);
          v133 = v74;
        }

        v129 = 0;
        v130 = 0;
        v131 = 0;
        v75 = *a4;
        v76 = a4[1] - *a4;
        if (v76)
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v77 = operator new(v76);
          v78 = &v77[v76];
          v129 = v77;
          v131 = &v77[v76];
          memcpy(v77, v75, v76);
          v130 = v78;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v132, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v22 = v132;
        if (v132)
        {
          v133 = v132;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v22 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v203);
          }

          std::vector<long long>::vector[abi:nn200100](v120, a3);
          std::vector<long long>::vector[abi:nn200100](v119, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v120, v119);
          if (v119[0])
          {
            v119[1] = v119[0];
            operator delete(v119[0]);
          }

          v22 = v120[0];
          if (v120[0])
          {
            v120[1] = v120[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v95 = *a3;
      v96 = a3[1] - *a3;
      if (v96)
      {
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v97 = operator new(v96);
        v98 = (v97 + v96);
        v126 = v97;
        v128 = v97 + v96;
        memcpy(v97, v95, v96);
        v127 = v98;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v99 = *a4;
      v100 = a4[1] - *a4;
      if (v100)
      {
        if ((v100 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v101 = operator new(v100);
        v102 = &v101[v100];
        v123 = v101;
        v125 = &v101[v100];
        memcpy(v101, v99, v100);
        v124 = v102;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v126, &v123);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_167;
      }

      return;
    }

    if (v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v39 = *a3;
      v40 = a3[1] - *a3;
      if (v40)
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v41 = operator new(v40);
        v42 = (v41 + v40);
        v156 = v41;
        v158 = v41 + v40;
        memcpy(v41, v39, v40);
        v157 = v42;
      }

      v153 = 0;
      v154 = 0;
      v155 = 0;
      v43 = *a4;
      v44 = a4[1] - *a4;
      if (v44)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v45 = operator new(v44);
        v46 = &v45[v44];
        v153 = v45;
        v155 = &v45[v44];
        memcpy(v45, v43, v44);
        v154 = v46;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v156, &v153);
      if (v153)
      {
        v154 = v153;
        operator delete(v153);
      }

      v22 = v156;
      if (v156)
      {
        v157 = v156;
        goto LABEL_167;
      }

      return;
    }

    v162 = 0;
    v163 = 0;
    v164 = 0;
    v111 = *a3;
    v112 = a3[1] - *a3;
    if (v112)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v113 = operator new(v112);
      v114 = (v113 + v112);
      v162 = v113;
      v164 = v113 + v112;
      memcpy(v113, v111, v112);
      v163 = v114;
    }

    v159 = 0;
    v160 = 0;
    v161 = 0;
    v115 = *a4;
    v116 = a4[1] - *a4;
    if (v116)
    {
      if ((v116 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v117 = operator new(v116);
      v118 = &v117[v116];
      v159 = v117;
      v161 = &v117[v116];
      memcpy(v117, v115, v116);
      v160 = v118;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v162, &v159);
    if (v159)
    {
      v160 = v159;
      operator delete(v159);
    }

    v22 = v162;
    if (v162)
    {
      v163 = v162;
      goto LABEL_167;
    }

    return;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v87 = *a3;
    v88 = a3[1] - *a3;
    if (v88)
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v89 = operator new(v88);
      v90 = (v89 + v88);
      v186 = v89;
      v188 = v89 + v88;
      memcpy(v89, v87, v88);
      v187 = v90;
    }

    v184 = 0;
    v183 = 0;
    v185 = 0;
    v91 = *a4;
    v92 = a4[1] - *a4;
    if (v92)
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v93 = operator new(v92);
      v94 = &v93[v92];
      v183 = v93;
      v185 = &v93[v92];
      memcpy(v93, v91, v92);
      v184 = v94;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v186, &v183, a5);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }

    v22 = v186;
    if (v186)
    {
      v187 = v186;
      goto LABEL_167;
    }

    return;
  }

  v181 = 0;
  v180 = 0;
  v182 = 0;
  v23 = *a3;
  v24 = a3[1] - *a3;
  if (v24)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v25 = operator new(v24);
    v26 = (v25 + v24);
    v180 = v25;
    v182 = v25 + v24;
    memcpy(v25, v23, v24);
    v181 = v26;
  }

  v178 = 0;
  __p = 0;
  v179 = 0;
  v27 = *a4;
  v28 = a4[1] - *a4;
  if (v28)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v29 = operator new(v28);
    v30 = &v29[v28];
    __p = v29;
    v179 = &v29[v28];
    memcpy(v29, v27, v28);
    v178 = v30;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v180, &__p);
  if (__p)
  {
    v178 = __p;
    operator delete(__p);
  }

  v22 = v180;
  if (v180)
  {
    v181 = v180;
    goto LABEL_167;
  }
}