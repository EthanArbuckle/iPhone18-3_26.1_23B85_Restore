uint64_t glpLLVMCGVariableDeclarationGroup(uint64_t a1, uint64_t a2)
{
  result = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      Declaration = glpVariableDeclarationGroupNodeGetDeclaration(a2, v5);
      glpLLVMCGNode(a1, Declaration, 1);
      ++v5;
      result = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t glpLLVMCGFunctionDefinition(uint64_t a1, uint64_t a2)
{
  v211[1] = *MEMORY[0x277D85DE8];
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
  if ((*(Extra + 9) & 0x20) != 0)
  {
    v15 = 0;
  }

  else
  {
    v6 = Extra;
    v7 = glpLLVMCGNode(a1, Prototype, 0);
    *(v6 + 144) = v7;
    *(a1 + 432) = 0;
    v177 = v7;
    *(a1 + 160) = v7;
    *(a1 + 336) = **(v6 + 152);
    v8 = *(a1 + 260);
    v9 = v8 + 1;
    v10 = *(a1 + 256);
    if (v8 + 1 <= v10)
    {
      v13 = *(a1 + 264);
      v14 = *(a1 + 260);
    }

    else
    {
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = 2 * v10;
      if (v11 <= v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v11;
      }

      v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
      memcpy(v13, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v12;
      *(a1 + 264) = v13;
      v14 = *(a1 + 260);
    }

    memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
    *(*(a1 + 264) + v8) = 18;
    v16 = *(a1 + 260);
    v17 = v16 + 1;
    *(a1 + 260) = v16 + 1;
    ++*(a1 + 296);
    v18 = (*(a1 + 832) >> 5) & 1;
    v19 = v16 + 2;
    v20 = *(a1 + 256);
    if (v19 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = v17;
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v17 + 1], &v23[v17], v24 - v17);
    *(*(a1 + 264) + v17) = v18;
    ++*(a1 + 260);
    *(a1 + 16) = 1;
    Body = glpFunctionDefinitionNodeGetBody(a2);
    v171 = glpLLVMAppendBasicBlock(a1, *(a1 + 160), "allocaBlock");
    *(a1 + 176) = v171;
    v174 = glpLLVMAppendBasicBlock(a1, *(a1 + 160), "globalBlock");
    *(a1 + 184) = v174;
    v25 = glpLLVMAppendBasicBlock(a1, *(a1 + 160), "block");
    v26 = *(a1 + 260);
    v27 = v26 + 1;
    v28 = *(a1 + 256);
    if (v26 + 1 <= v28)
    {
      v31 = *(a1 + 264);
      v32 = *(a1 + 260);
    }

    else
    {
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v29 = 2 * v28;
      if (v29 <= v27)
      {
        v30 = v27;
      }

      else
      {
        v30 = v29;
      }

      v31 = (*(a1 + 232))(*(a1 + 224), v30, "Vector Storage (uint8_t, growth)");
      memcpy(v31, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v30;
      *(a1 + 264) = v31;
      v32 = *(a1 + 260);
    }

    memmove(&v31[v26 + 1], &v31[v26], (v32 - v26));
    *(*(a1 + 264) + v26) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    v172 = v25;
    glpSerializeLLVMBlock(a1, v25);
    if (*(a1 + 24))
    {
      Name = glpFunctionPrototypeNodeGetName(Prototype);
      v35 = strndup(Name, v34);
      v36 = *(a1 + 260);
      v37 = v36 + 1;
      v38 = *(a1 + 256);
      if (v36 + 1 <= v38)
      {
        v41 = *(a1 + 264);
        v42 = *(a1 + 260);
      }

      else
      {
        if (v38 <= 1)
        {
          v38 = 1;
        }

        v39 = 2 * v38;
        if (v39 <= v37)
        {
          v40 = v37;
        }

        else
        {
          v40 = v39;
        }

        v41 = (*(a1 + 232))(*(a1 + 224), v40, "Vector Storage (uint8_t, growth)");
        memcpy(v41, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v40;
        *(a1 + 264) = v41;
        v42 = *(a1 + 260);
      }

      memmove(&v41[v36 + 1], &v41[v36], (v42 - v36));
      *(*(a1 + 264) + v36) = 103;
      ++*(a1 + 260);
      ++*(a1 + 296);
      glpSerializeLLVMValue(a1, v177);
      v43 = strlen(v35) + 1;
      v44 = *(a1 + 260);
      v45 = v43 + v44;
      v46 = *(a1 + 256);
      if (v43 + v44 <= v46)
      {
        v49 = *(a1 + 264);
        v50 = *(a1 + 260);
      }

      else
      {
        if (v46 <= 1)
        {
          v46 = 1;
        }

        v47 = 2 * v46;
        if (v47 <= v45)
        {
          v48 = v45;
        }

        else
        {
          v48 = v47;
        }

        v49 = (*(a1 + 232))(*(a1 + 224), v48, "Vector Storage (uint8_t, growth)");
        memcpy(v49, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v48;
        *(a1 + 264) = v49;
        v50 = *(a1 + 260);
      }

      memmove(&v49[v44 + 1], &v49[v44], (v50 - v44));
      memcpy((*(a1 + 264) + v44), v35, v43);
      *(a1 + 260) += v43;
      glpLLVMAddLineInformation(a1, a2);
      free(v35);
    }

    v51 = glpFunctionPrototypeNodeGetName(Prototype);
    *(a1 + 324) = glpStringsEqual(v51, v52, "main", 0x83863A00000004);
    *(a1 + 344) = glpMakePointerHash(&GLP_MALLOC_ALLOCATOR);
    *(a1 + 352) = glpMakePointerHash(&GLP_MALLOC_ALLOCATOR);
    v15 = v177;
    v53 = v174;
    if (*(a1 + 324))
    {
      v54 = *(a1 + 676);
      if (v54 >= 1)
      {
        v55 = 0;
        v56 = 0;
        v57 = 8 * v54;
        v175 = 0;
        v176 = 8 * v54;
        while (1)
        {
          v58 = *(*(a1 + 680) + v55);
          v59 = *(a1 + 320);
          if ((v59 - 1) >= 3)
          {
            if (v59 == 4)
            {
              v82 = glpLayoutObjectFind(*(v58 + 8), 34);
              v83 = glpPrecisionIndexFromSAFlags(*(v58 + 48));
              v84 = glpTypeToLLVMTypeWithUnderlying(a1, *v58, v83, v58);
              v85 = *(v82 + 4);
              if (v85 > 0x1C)
              {
                goto LABEL_74;
              }

              if (((1 << v85) & 0x8C15800) != 0)
              {
                goto LABEL_75;
              }

              if (v85 == 24)
              {
                v211[0] = glpLLVMGetParam(a1, *(a1 + 160), *(a1 + 800));
                v118 = glpLLVMVectorType(a1, *(a1 + 496), 2);
                *__dst = 0x300000001;
                v94 = glpLLVMCallFunction(a1, "air.get_sample_position.v2f32", v118, v211, 1, __dst, 2);
              }

              else
              {
                if (v85 == 28)
                {
                  if ((*(*(v58 + 144) + 32) & 1) == 0)
                  {
                    v86 = *(a1 + 644);
                    v87 = *(a1 + 640);
                    if (v86 + 1 <= v87)
                    {
                      v91 = *(a1 + 648);
                      v92 = *(a1 + 644);
                    }

                    else
                    {
                      if (v87 <= 1)
                      {
                        v87 = 1;
                      }

                      v88 = 2 * v87;
                      if (v88 <= v86 + 1)
                      {
                        v89 = v86 + 1;
                      }

                      else
                      {
                        v89 = v88;
                      }

                      v90 = *(a1 + 152);
                      v91 = (v90[1])(*v90, 8 * v89, "Vector Storage (GLPVariableObject *, growth)");
                      memcpy(v91, *(a1 + 648), 8 * *(a1 + 644));
                      (v90[3])(*v90, *(a1 + 648));
                      *(a1 + 640) = v89;
                      *(a1 + 648) = v91;
                      v92 = *(a1 + 644);
                    }

                    memmove(&v91[8 * v86 + 8], &v91[8 * v86], 8 * (v92 - v86));
                    *(*(a1 + 648) + 8 * v86) = v58;
                    ++*(a1 + 644);
                    *(*(v58 + 144) + 32) |= 1u;
                  }

LABEL_75:
                  v93 = glpLLVMGetParam(a1, *(a1 + 160), v56);
LABEL_76:
                  v94 = v93;
                  goto LABEL_77;
                }

LABEL_74:
                if (v85 - 2 < 2)
                {
                  goto LABEL_75;
                }

                if (v85 == 1)
                {
                  v115 = glpLayoutObjectFind(*(v58 + 8), 20);
                  v94 = glpLLVMGetParam(a1, *(a1 + 160), v56);
                  if (v115 && (*(a1 + 832) & 1) != 0)
                  {
                    v116 = glpLLVMConstRealCache(a1, *(a1 + 72), 0.0);
                    *__dst = glpLLVMConstRealCache(a1, *(a1 + 72), 0.5);
                    *&__dst[8] = *__dst;
                    *&v180 = v116;
                    *(&v180 + 1) = v116;
                    v117 = glpLLVMConstVectorCache(a1, __dst, 4);
                    v93 = glpLLVMBinaryOperation(a1, 56, v94, v117, "center");
                    goto LABEL_76;
                  }

LABEL_77:
                  v56 = (v56 + 1);
                }

                else
                {
                  v94 = 0;
                }
              }

              v95 = glpLLVMGetVariablePointer(a1, v58);
              v96 = glpLLVMPointerType(a1, v84, 0);
              v97 = glpLLVMCastOperation(a1, 86, v95, v96, "ptr");
              glpLLVMBuildStore(a1, v94, v97);
              v57 = v176;
              goto LABEL_106;
            }

            if (!v59)
            {
              v69 = glpLayoutObjectFind(*(v58 + 8), 34);
              v70 = glpPrecisionIndexFromSAFlags(*(v58 + 48));
              v71 = v70;
              v209 = 0u;
              v210 = 0u;
              v207 = 0u;
              v208 = 0u;
              v205 = 0u;
              v206 = 0u;
              v203 = 0u;
              v204 = 0u;
              v201 = 0u;
              v202 = 0u;
              v199 = 0u;
              v200 = 0u;
              v197 = 0u;
              v198 = 0u;
              v195 = 0u;
              v196 = 0u;
              v193 = 0u;
              v194 = 0u;
              v191 = 0u;
              v192 = 0u;
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              *__dst = 0u;
              v180 = 0u;
              if ((*(*(v58 + 144) + 32) & 1) == 0)
              {
                v173 = v69;
                v72 = v70;
                v73 = *(a1 + 644);
                v74 = *(a1 + 640);
                if (v73 + 1 <= v74)
                {
                  v78 = *(a1 + 648);
                  v81 = *(a1 + 644);
                }

                else
                {
                  if (v74 <= 1)
                  {
                    v74 = 1;
                  }

                  v75 = 2 * v74;
                  if (v75 <= v73 + 1)
                  {
                    v76 = v73 + 1;
                  }

                  else
                  {
                    v76 = v75;
                  }

                  v77 = *(a1 + 152);
                  v78 = (v77[1])(*v77, 8 * v76, "Vector Storage (GLPVariableObject *, growth)");
                  memcpy(v78, *(a1 + 648), 8 * *(a1 + 644));
                  v79 = v77[3];
                  v80 = *v77;
                  v57 = v176;
                  v79(v80, *(a1 + 648));
                  *(a1 + 640) = v76;
                  *(a1 + 648) = v78;
                  v81 = *(a1 + 644);
                }

                memmove(&v78[8 * v73 + 8], &v78[8 * v73], 8 * (v81 - v73));
                *(*(a1 + 648) + 8 * v73) = v58;
                ++*(a1 + 644);
                *(*(v58 + 144) + 32) |= 1u;
                v71 = v72;
                v69 = v173;
              }

              v178 = 0;
              v98 = v71;
              v99 = glpTypeToLLVMTypeWithUnderlying(a1, *v58, v71, v58);
              v100 = *(v69 + 4);
              switch(v100)
              {
                case 17:
                  if ((*(a1 + 832) & 1) == 0)
                  {
                    v109 = v175;
                    if (!v175)
                    {
                      strncpy(__dst, "air.get_vertex_id.i32", 0x200uLL);
                      v109 = 0;
                    }

                    v107 = 0;
                    v108 = *(a1 + 40);
                    if (!v109)
                    {
LABEL_94:
                      v211[0] = 0x400000001;
                      v110 = glpLLVMCallFunction(a1, __dst, v108, &v178, v107, v211, 2);
                      v109 = v110;
                      v111 = *(v69 + 4);
                      v112 = v175;
                      if (v111 == 17)
                      {
                        v112 = v110;
                      }

                      v175 = v112;
LABEL_100:
                      if ((v111 - 17) <= 1 && v98 && v98 != 3)
                      {
                        v109 = glpLLVMCastOperation(a1, 74, v109, v99, "vid");
                      }

                      v113 = glpLLVMGetVariablePointer(a1, v58);
                      v114 = glpLLVMPointerType(a1, v99, 0);
                      v66 = glpLLVMCastOperation(a1, 86, v113, v114, "ptr");
                      v67 = a1;
                      v68 = v109;
LABEL_105:
                      glpLLVMBuildStore(v67, v68, v66);
                      break;
                    }

LABEL_99:
                    v111 = *(v69 + 4);
                    goto LABEL_100;
                  }

LABEL_97:
                  v106 = glpLLVMGetParam(a1, *(a1 + 160), v56);
LABEL_98:
                  v109 = v106;
                  v56 = (v56 + 1);
                  v107 = 1;
                  v108 = v99;
                  if (!v106)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_99;
                case 18:
                  if ((*(a1 + 832) & 1) == 0)
                  {
                    strncpy(__dst, "air.get_instance_id.i32", 0x200uLL);
                    v107 = 0;
                    v108 = *(a1 + 40);
                    goto LABEL_94;
                  }

                  goto LABEL_97;
                case 28:
                  if (*(a1 + 832))
                  {
                    goto LABEL_97;
                  }

                  v101 = v175;
                  if (!v175)
                  {
                    v102 = *(a1 + 40);
                    v211[0] = 0x400000001;
                    v101 = glpLLVMCallFunction(a1, "air.get_vertex_id.i32", v102, &v178, 0, v211, 2);
                  }

                  v103 = v101;
                  v104 = glpLLVMGetParam(a1, *(a1 + 160), v56);
                  v175 = v103;
                  v211[0] = v103;
                  v105 = glpLLVMBuildGEP2(a1, v104, v211, 1, "attributePtr");
                  v106 = glpLLVMBuildLoad2(a1, v105, "in");
                  goto LABEL_98;
              }
            }
          }

          else
          {
            glpLayoutObjectFind(*(v58 + 8), 34);
            v60 = glpLLVMGetParam(a1, *(a1 + 160), v56);
            v56 = (v56 + 1);
            if ((*(*(v58 + 144) + 32) & 4) == 0)
            {
              v62 = glpLLVMGetVariablePointer(a1, v58);
              v63 = glpPrecisionIndexFromSAFlags(*(v58 + 48));
              v64 = glpTypeToLLVMTypeWithUnderlying(a1, *v58, v63, v58);
              v65 = glpLLVMPointerType(a1, v64, 0);
              v66 = glpLLVMCastOperation(a1, 86, v62, v65, "ptr");
              v67 = a1;
              v68 = v60;
              goto LABEL_105;
            }

            glpPointerHashPut(*(a1 + 344), v58, v60, v61);
          }

LABEL_106:
          v55 += 8;
          if (v57 == v55)
          {
            v119 = v56;
            v15 = v177;
            v53 = v174;
            goto LABEL_117;
          }
        }
      }

      v119 = 0;
LABEL_117:
      *(a1 + 168) = v15;
      *(a1 + 208) = 0;
      if ((*(a1 + 320) | 2) == 3)
      {
        v120 = *(a1 + 692);
        if (v120 >= 1)
        {
          v121 = 0;
          v122 = 8 * v120;
          do
          {
            v123 = *(*(a1 + 696) + v121);
            v124 = glpLLVMGetParam(a1, *(a1 + 160), v119);
            glpPointerHashPut(*(a1 + 344), v123, v124, v125);
            v119 = (v119 + 1);
            v121 += 8;
          }

          while (v122 != v121);
        }
      }
    }

    glpLLVMCGNode(a1, Body, 0);
    glpDestroyPointerHash(*(a1 + 344));
    *(a1 + 344) = 0;
    glpDestroyPointerHash(*(a1 + 352));
    *(a1 + 352) = 0;
    v126 = *(a1 + 260);
    if (*(a1 + 24))
    {
      v127 = v126 + 1;
      v128 = *(a1 + 256);
      if (v126 + 1 <= v128)
      {
        v131 = *(a1 + 264);
        v132 = *(a1 + 260);
      }

      else
      {
        if (v128 <= 1)
        {
          v128 = 1;
        }

        v129 = 2 * v128;
        if (v129 <= v127)
        {
          v130 = v127;
        }

        else
        {
          v130 = v129;
        }

        v131 = (*(a1 + 232))(*(a1 + 224), v130, "Vector Storage (uint8_t, growth)");
        memcpy(v131, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v130;
        *(a1 + 264) = v131;
        v132 = *(a1 + 260);
      }

      v133 = (a1 + 176);
      memmove(&v131[v126 + 1], &v131[v126], (v132 - v126));
      *(*(a1 + 264) + v126) = 105;
      LODWORD(v126) = *(a1 + 260) + 1;
      *(a1 + 260) = v126;
      ++*(a1 + 296);
    }

    else
    {
      v133 = (a1 + 176);
    }

    *(a1 + 332) = 0;
    *(a1 + 440) = 0;
    *(a1 + 324) = 0;
    *v133 = 0;
    v133[1] = 0;
    v134 = v126 + 1;
    v135 = *(a1 + 256);
    if (v126 + 1 <= v135)
    {
      v138 = *(a1 + 264);
      v139 = v126;
    }

    else
    {
      if (v135 <= 1)
      {
        v135 = 1;
      }

      v136 = 2 * v135;
      if (v136 <= v134)
      {
        v137 = v134;
      }

      else
      {
        v137 = v136;
      }

      v138 = (*(a1 + 232))(*(a1 + 224), v137, "Vector Storage (uint8_t, growth)");
      memcpy(v138, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v137;
      *(a1 + 264) = v138;
      v139 = *(a1 + 260);
    }

    memmove(&v138[v126 + 1], &v138[v126], (v139 - v126));
    *(*(a1 + 264) + v126) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v171);
    v140 = *(a1 + 260);
    v141 = v140 + 1;
    v142 = *(a1 + 256);
    if (v140 + 1 <= v142)
    {
      v145 = *(a1 + 264);
      v146 = *(a1 + 260);
    }

    else
    {
      if (v142 <= 1)
      {
        v142 = 1;
      }

      v143 = 2 * v142;
      if (v143 <= v141)
      {
        v144 = v141;
      }

      else
      {
        v144 = v143;
      }

      v145 = (*(a1 + 232))(*(a1 + 224), v144, "Vector Storage (uint8_t, growth)");
      memcpy(v145, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v144;
      *(a1 + 264) = v145;
      v146 = *(a1 + 260);
    }

    memmove(&v145[v140 + 1], &v145[v140], (v146 - v140));
    *(*(a1 + 264) + v140) = 26;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v53);
    *(a1 + 332) = 0;
    v147 = *(a1 + 260);
    v148 = v147 + 1;
    v149 = *(a1 + 256);
    if (v147 + 1 <= v149)
    {
      v152 = *(a1 + 264);
      v153 = *(a1 + 260);
    }

    else
    {
      if (v149 <= 1)
      {
        v149 = 1;
      }

      v150 = 2 * v149;
      if (v150 <= v148)
      {
        v151 = v148;
      }

      else
      {
        v151 = v150;
      }

      v152 = (*(a1 + 232))(*(a1 + 224), v151, "Vector Storage (uint8_t, growth)");
      memcpy(v152, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v151;
      *(a1 + 264) = v152;
      v153 = *(a1 + 260);
    }

    memmove(&v152[v147 + 1], &v152[v147], (v153 - v147));
    *(*(a1 + 264) + v147) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v53);
    v154 = *(a1 + 260);
    v155 = v154 + 1;
    v156 = *(a1 + 256);
    if (v154 + 1 <= v156)
    {
      v159 = *(a1 + 264);
      v160 = *(a1 + 260);
    }

    else
    {
      if (v156 <= 1)
      {
        v156 = 1;
      }

      v157 = 2 * v156;
      if (v157 <= v155)
      {
        v158 = v155;
      }

      else
      {
        v158 = v157;
      }

      v159 = (*(a1 + 232))(*(a1 + 224), v158, "Vector Storage (uint8_t, growth)");
      memcpy(v159, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v158;
      *(a1 + 264) = v159;
      v160 = *(a1 + 260);
    }

    memmove(&v159[v154 + 1], &v159[v154], (v160 - v154));
    *(*(a1 + 264) + v154) = 26;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v172);
    *(a1 + 332) = 0;
    v161 = *(a1 + 260);
    v162 = v161 + 1;
    v163 = *(a1 + 256);
    if (v161 + 1 <= v163)
    {
      v166 = *(a1 + 264);
      v167 = *(a1 + 260);
    }

    else
    {
      if (v163 <= 1)
      {
        v163 = 1;
      }

      v164 = 2 * v163;
      if (v164 <= v162)
      {
        v165 = v162;
      }

      else
      {
        v165 = v164;
      }

      v166 = (*(a1 + 232))(*(a1 + 224), v165, "Vector Storage (uint8_t, growth)");
      memcpy(v166, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v165;
      *(a1 + 264) = v166;
      v167 = *(a1 + 260);
    }

    memmove(&v166[v161 + 1], &v166[v161], (v167 - v161));
    *(*(a1 + 264) + v161) = 19;
    ++*(a1 + 260);
    ++*(a1 + 296);
    *(a1 + 16) = 0;
    *(a1 + 160) = 0;
  }

  v168 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t glpLLVMCGInterfaceBlock(uint64_t a1, uint64_t a2)
{
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
  if (result)
  {
    v5 = 0;
    v6 = 8 * result;
    do
    {
      result = glpLLVMCGDeclareVariable(a1, *(*(Extra + 72) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t glpLLVMCGBlock(void *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  result = glpBlockNodeGetStatementCount(a2);
  v46 = result;
  if (result)
  {
    v4 = 0;
    v44 = a1 + 65;
    v5 = "";
    do
    {
      Statement = glpBlockNodeGetStatement(a2, v4);
      memset(v50, 0, sizeof(v50));
      memset(v49, 0, sizeof(v49));
      v47 = 0;
      v48 = 0;
      if (!glpIsSimpleComponentAssigment(Statement, &v48, &v47, v50, v49))
      {
        goto LABEL_23;
      }

      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v48);
      if (glpPrimitiveTypeGetCategory(PrimitiveType) != 2)
      {
        goto LABEL_23;
      }

      v8 = 0;
      v43 = v4;
      v9 = v4 + 1;
      v10 = v50 + 1;
      v11 = v49 + 1;
      v12 = 1;
      while (v8 != 7)
      {
        v13 = v8;
        if (v9 + v8 >= v46)
        {
          goto LABEL_11;
        }

        v14 = glpBlockNodeGetStatement(a2, v9 + v8);
        IsSimpleComponentAssigment = glpIsSimpleComponentAssigment(v14, &v48, &v47, v10, v11);
        ++v12;
        v8 = v13 + 1;
        ++v11;
        ++v10;
        if (!IsSimpleComponentAssigment)
        {
          v12 = v13 + 1;
          goto LABEL_11;
        }
      }

      v12 = 8;
LABEL_11:
      Length = glpPrimitiveVectorGetLength(PrimitiveType);
      v17 = v47;
      v18 = glpPrimitiveTypeGetPrimitiveType(*v47);
      v19 = glpPrimitiveVectorGetLength(v18);
      v20 = v12 == Length;
      v4 = v43;
      if (v20)
      {
        v21 = v19;
        v22 = 0;
        v23 = v12;
        while (v22 == *(v50 + v22))
        {
          if (v12 == ++v22)
          {
            goto LABEL_18;
          }
        }

        if (v12 != v22)
        {
          goto LABEL_23;
        }

LABEL_18:
        v24 = glpLLVMGetVariablePointer(a1, v17);
        SourceVariable = glpLoadSourceVariable(a1, v24, v17);
        if (v21 == v12)
        {
          v26 = 0;
          v27 = v12;
          while (v26 == *(v49 + v26))
          {
            ++v26;
            if (!--v27)
            {
              v28 = glpLLVMGetVariablePointer(a1, v48);
              goto LABEL_39;
            }
          }

          v28 = glpLLVMGetVariablePointer(a1, v48);
          if (v27)
          {
            goto LABEL_28;
          }

LABEL_39:
          result = glpLLVMBuildStore(a1, SourceVariable, v28);
        }

        else
        {
          v28 = glpLLVMGetVariablePointer(a1, v48);
LABEL_28:
          v42 = v28;
          v29 = glpLLVMTypeOf(a1, v28);
          v30 = glpLLVMGetElementType(a1, v29);
          inserted = glpLLVMConstFromTypeCache(a1, 37, v30);
          v32 = v50;
          v33 = v49;
          do
          {
            v35 = *v33++;
            v34 = v35;
            if (v35 > 7)
            {
              v36 = glpLLVMConstIntCache(a1, a1[5], v34, 1);
            }

            else
            {
              v36 = v44[v34];
              if (!v36)
              {
                v36 = glpLLVMConstIntCache(a1, a1[5], v34, 0);
                v44[v34] = v36;
              }
            }

            v37 = v5;
            Element = glpLLVMBuildExtractElement(a1, SourceVariable, v36, v5);
            v39 = *v32;
            if (v39 > 7)
            {
              v40 = glpLLVMConstIntCache(a1, a1[5], v39, 1);
            }

            else
            {
              v40 = v44[v39];
              if (!v40)
              {
                v40 = glpLLVMConstIntCache(a1, a1[5], *v32, 0);
                v44[v39] = v40;
              }
            }

            v5 = v37;
            inserted = glpLLVMBuildInsertElement(a1, inserted, Element, v40, v37);
            ++v32;
            --v23;
          }

          while (v23);
          result = glpLLVMBuildStore(a1, inserted, v42);
          v4 = v43;
        }

        v4 += v12;
      }

      else
      {
LABEL_23:
        result = glpLLVMCGNode(a1, Statement, 0);
        ++v4;
      }
    }

    while (v4 < v46);
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

void *glpLLVMCGIfStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 432);
  Cond = glpIfStatementNodeGetCond(a2);
  v70 = glpLLVMCGNode(a1, Cond, 1);
  v6 = glpLLVMCGInsertBasicBlock(a1, "if.then");
  ElseStatement = glpIfStatementNodeGetElseStatement(v2);
  if (ElseStatement)
  {
    v8 = glpLLVMCGInsertBasicBlock(a1, "if.else");
  }

  else
  {
    v8 = 0;
  }

  v9 = glpLLVMCGInsertBasicBlock(a1, "if.end");
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 105;
  v17 = *(a1 + 260);
  v18 = v17 + 1;
  *(a1 + 260) = v17 + 1;
  ++*(a1 + 296);
  if (ElseStatement)
  {
    v19 = v8;
  }

  else
  {
    v19 = v9;
  }

  v20 = v17 + 2;
  v21 = *(a1 + 256);
  if (v20 <= v21)
  {
    v29 = *(a1 + 264);
    v30 = v18;
  }

  else
  {
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v22 = 2 * v21;
    v69 = v2;
    v23 = v9;
    v24 = v8;
    v25 = v6;
    v26 = ElseStatement;
    v27 = v4;
    if (v22 <= v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v22;
    }

    v29 = (*(a1 + 232))(*(a1 + 224), v28, "Vector Storage (uint8_t, growth)");
    memcpy(v29, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v28;
    v4 = v27;
    ElseStatement = v26;
    v6 = v25;
    v8 = v24;
    v9 = v23;
    v2 = v69;
    *(a1 + 264) = v29;
    v30 = *(a1 + 260);
  }

  memmove(&v29[v18 + 1], &v29[v18], v30 - v18);
  *(*(a1 + 264) + v18) = 98;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, v70);
  glpSerializeLLVMBlock(a1, v6);
  glpSerializeLLVMBlock(a1, v19);
  v31 = *(a1 + 260);
  v32 = v31 + 1;
  v33 = *(a1 + 256);
  if (v31 + 1 <= v33)
  {
    v36 = *(a1 + 264);
    v37 = *(a1 + 260);
  }

  else
  {
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = 2 * v33;
    if (v34 <= v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = v34;
    }

    v36 = (*(a1 + 232))(*(a1 + 224), v35, "Vector Storage (uint8_t, growth)");
    memcpy(v36, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v35;
    *(a1 + 264) = v36;
    v37 = *(a1 + 260);
  }

  memmove(&v36[v31 + 1], &v36[v31], (v37 - v31));
  *(*(a1 + 264) + v31) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v6);
  if (v8)
  {
    v38 = v8;
  }

  else
  {
    v38 = v9;
  }

  *(a1 + 432) = v38;
  IfStatement = glpIfStatementNodeGetIfStatement(v2);
  glpLLVMCGNode(a1, IfStatement, 0);
  v40 = *(a1 + 260);
  v41 = v40 + 1;
  v42 = *(a1 + 256);
  if (v40 + 1 <= v42)
  {
    v45 = *(a1 + 264);
    v46 = *(a1 + 260);
  }

  else
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    v43 = 2 * v42;
    if (v43 <= v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = v43;
    }

    v45 = (*(a1 + 232))(*(a1 + 224), v44, "Vector Storage (uint8_t, growth)");
    memcpy(v45, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v44;
    *(a1 + 264) = v45;
    v46 = *(a1 + 260);
  }

  memmove(&v45[v40 + 1], &v45[v40], (v46 - v40));
  *(*(a1 + 264) + v40) = 26;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v9);
  *(a1 + 332) = 0;
  if (ElseStatement)
  {
    v47 = *(a1 + 260);
    v48 = v47 + 1;
    v49 = *(a1 + 256);
    if (v47 + 1 <= v49)
    {
      v52 = *(a1 + 264);
      v53 = *(a1 + 260);
    }

    else
    {
      if (v49 <= 1)
      {
        v49 = 1;
      }

      v50 = 2 * v49;
      if (v50 <= v48)
      {
        v51 = v48;
      }

      else
      {
        v51 = v50;
      }

      v52 = (*(a1 + 232))(*(a1 + 224), v51, "Vector Storage (uint8_t, growth)");
      memcpy(v52, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v51;
      *(a1 + 264) = v52;
      v53 = *(a1 + 260);
    }

    memmove(&v52[v47 + 1], &v52[v47], (v53 - v47));
    *(*(a1 + 264) + v47) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v8);
    *(a1 + 432) = v9;
    glpLLVMCGNode(a1, ElseStatement, 0);
    v54 = *(a1 + 260);
    v55 = v54 + 1;
    v56 = *(a1 + 256);
    if (v54 + 1 <= v56)
    {
      v59 = *(a1 + 264);
      v60 = *(a1 + 260);
    }

    else
    {
      if (v56 <= 1)
      {
        v56 = 1;
      }

      v57 = 2 * v56;
      if (v57 <= v55)
      {
        v58 = v55;
      }

      else
      {
        v58 = v57;
      }

      v59 = (*(a1 + 232))(*(a1 + 224), v58, "Vector Storage (uint8_t, growth)");
      memcpy(v59, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v58;
      *(a1 + 264) = v59;
      v60 = *(a1 + 260);
    }

    memmove(&v59[v54 + 1], &v59[v54], (v60 - v54));
    *(*(a1 + 264) + v54) = 26;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v9);
    *(a1 + 332) = 0;
  }

  v61 = *(a1 + 260);
  v62 = v61 + 1;
  v63 = *(a1 + 256);
  if (v61 + 1 <= v63)
  {
    v66 = *(a1 + 264);
    v67 = *(a1 + 260);
  }

  else
  {
    if (v63 <= 1)
    {
      v63 = 1;
    }

    v64 = 2 * v63;
    if (v64 <= v62)
    {
      v65 = v62;
    }

    else
    {
      v65 = v64;
    }

    v66 = (*(a1 + 232))(*(a1 + 224), v65, "Vector Storage (uint8_t, growth)");
    memcpy(v66, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v65;
    *(a1 + 264) = v66;
    v67 = *(a1 + 260);
  }

  memmove(&v66[v61 + 1], &v66[v61], (v67 - v61));
  *(*(a1 + 264) + v61) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  result = glpSerializeLLVMBlock(a1, v9);
  *(a1 + 432) = v4;
  return result;
}

void *glpLLVMCGLoopStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v4 = *(a1 + 432);
  Body0 = glpLoopStatementNodeGetBody0(a2);
  Body1 = glpLoopStatementNodeGetBody1(a2);
  v7 = Body1;
  if (!Body0)
  {
    if (Body1)
    {
      v10 = glpLLVMCGInsertBasicBlock(a1, "while.body1");
      goto LABEL_7;
    }

    v11 = 1;
LABEL_12:
    v9 = glpLLVMCGInsertBasicBlock(a1, "while.header");
    v12 = *(a1 + 260);
    v13 = v12 + 1;
    v14 = *(a1 + 256);
    if (v12 + 1 <= v14)
    {
      v17 = *(a1 + 264);
      v18 = *(a1 + 260);
    }

    else
    {
      if (v14 <= 1)
      {
        v14 = 1;
      }

      v15 = 2 * v14;
      if (v15 <= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v15;
      }

      v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
      memcpy(v17, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v16;
      *(a1 + 264) = v17;
      v18 = *(a1 + 260);
    }

    memmove(&v17[v12 + 1], &v17[v12], (v18 - v12));
    *(*(a1 + 264) + v12) = 26;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v9);
    *(a1 + 332) = 0;
    v19 = *(a1 + 260);
    v20 = v19 + 1;
    v21 = *(a1 + 256);
    if (v19 + 1 <= v21)
    {
      v24 = *(a1 + 264);
      v25 = *(a1 + 260);
    }

    else
    {
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v22 = 2 * v21;
      if (v22 <= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      v24 = (*(a1 + 232))(*(a1 + 224), v23, "Vector Storage (uint8_t, growth)");
      memcpy(v24, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v23;
      *(a1 + 264) = v24;
      v25 = *(a1 + 260);
    }

    memmove(&v24[v19 + 1], &v24[v19], (v25 - v19));
    *(*(a1 + 264) + v19) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v9);
    goto LABEL_29;
  }

  v8 = glpLLVMCGInsertBasicBlock(a1, "while.body0");
  v9 = v8;
  if (v7)
  {
    v10 = glpLLVMCGInsertBasicBlock(a1, "while.body1");
    if (v9)
    {
      v11 = 0;
      goto LABEL_30;
    }

LABEL_7:
    v11 = 0;
    v9 = v10;
    if (v10)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  v11 = 1;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_29:
  v10 = 0;
LABEL_30:
  v26 = glpLLVMCGInsertBasicBlock(a1, "while.end");
  v27 = v26;
  v79 = *(a1 + 416);
  if (v10)
  {
    v28 = v10;
  }

  else
  {
    v28 = v9;
  }

  *(a1 + 416) = v28;
  *(a1 + 424) = v26;
  if (Body0)
  {
    v78 = v7;
    v29 = v4;
    v30 = *(a1 + 260);
    v31 = v30 + 1;
    v32 = *(a1 + 256);
    if (v30 + 1 <= v32)
    {
      v35 = *(a1 + 264);
      v36 = *(a1 + 260);
    }

    else
    {
      if (v32 <= 1)
      {
        v32 = 1;
      }

      v33 = 2 * v32;
      if (v33 <= v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v33;
      }

      v35 = (*(a1 + 232))(*(a1 + 224), v34, "Vector Storage (uint8_t, growth)");
      memcpy(v35, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v34;
      *(a1 + 264) = v35;
      v36 = *(a1 + 260);
    }

    memmove(&v35[v30 + 1], &v35[v30], (v36 - v30));
    *(*(a1 + 264) + v30) = 26;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v9);
    *(a1 + 332) = 0;
    v37 = *(a1 + 260);
    v38 = v37 + 1;
    v39 = *(a1 + 256);
    if (v37 + 1 <= v39)
    {
      v42 = *(a1 + 264);
      v43 = *(a1 + 260);
    }

    else
    {
      if (v39 <= 1)
      {
        v39 = 1;
      }

      v40 = 2 * v39;
      if (v40 <= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = v40;
      }

      v42 = (*(a1 + 232))(*(a1 + 224), v41, "Vector Storage (uint8_t, growth)");
      memcpy(v42, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v41;
      *(a1 + 264) = v42;
      v43 = *(a1 + 260);
    }

    memmove(&v42[v37 + 1], &v42[v37], (v43 - v37));
    *(*(a1 + 264) + v37) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v9);
    if (v11)
    {
      v44 = v27;
    }

    else
    {
      v44 = v10;
    }

    *(a1 + 432) = v44;
    glpLLVMCGNode(a1, Body0, 0);
    v4 = v29;
    v7 = v78;
  }

  v45 = *(a1 + 260);
  v46 = v45 + 1;
  v47 = *(a1 + 256);
  if (v11)
  {
    if (v46 > v47)
    {
      if (v47 <= 1)
      {
        v47 = 1;
      }

      v48 = 2 * v47;
      if (v48 <= v46)
      {
        v49 = v46;
      }

      else
      {
        v49 = v48;
      }

      v52 = (*(a1 + 232))(*(a1 + 224), v49, "Vector Storage (uint8_t, growth)");
      memcpy(v52, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v49;
      *(a1 + 264) = v52;
      v53 = *(a1 + 260);
    }

    else
    {
      v52 = *(a1 + 264);
      v53 = *(a1 + 260);
    }

    memmove(&v52[v45 + 1], &v52[v45], (v53 - v45));
    *(*(a1 + 264) + v45) = 26;
  }

  else
  {
    if (v46 > v47)
    {
      if (v47 <= 1)
      {
        v47 = 1;
      }

      v50 = 2 * v47;
      if (v50 <= v46)
      {
        v51 = v46;
      }

      else
      {
        v51 = v50;
      }

      v54 = (*(a1 + 232))(*(a1 + 224), v51, "Vector Storage (uint8_t, growth)");
      memcpy(v54, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v51;
      *(a1 + 264) = v54;
      v55 = *(a1 + 260);
    }

    else
    {
      v54 = *(a1 + 264);
      v55 = *(a1 + 260);
    }

    memmove(&v54[v45 + 1], &v54[v45], (v55 - v45));
    *(*(a1 + 264) + v45) = 26;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v10);
    *(a1 + 332) = 0;
    v56 = *(a1 + 260);
    v57 = v56 + 1;
    v58 = *(a1 + 256);
    if (v56 + 1 <= v58)
    {
      v61 = *(a1 + 264);
      v62 = *(a1 + 260);
    }

    else
    {
      if (v58 <= 1)
      {
        v58 = 1;
      }

      v59 = 2 * v58;
      if (v59 <= v57)
      {
        v60 = v57;
      }

      else
      {
        v60 = v59;
      }

      v61 = (*(a1 + 232))(*(a1 + 224), v60, "Vector Storage (uint8_t, growth)");
      memcpy(v61, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v60;
      *(a1 + 264) = v61;
      v62 = *(a1 + 260);
    }

    memmove(&v61[v56 + 1], &v61[v56], (v62 - v56));
    *(*(a1 + 264) + v56) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v10);
    *(a1 + 432) = v27;
    glpLLVMCGNode(a1, v7, 0);
    v63 = *(a1 + 260);
    v64 = v63 + 1;
    v65 = *(a1 + 256);
    if (v63 + 1 <= v65)
    {
      v68 = *(a1 + 264);
      v69 = *(a1 + 260);
    }

    else
    {
      if (v65 <= 1)
      {
        v65 = 1;
      }

      v66 = 2 * v65;
      if (v66 <= v64)
      {
        v67 = v64;
      }

      else
      {
        v67 = v66;
      }

      v68 = (*(a1 + 232))(*(a1 + 224), v67, "Vector Storage (uint8_t, growth)");
      memcpy(v68, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v67;
      *(a1 + 264) = v68;
      v69 = *(a1 + 260);
    }

    memmove(&v68[v63 + 1], &v68[v63], (v69 - v63));
    *(*(a1 + 264) + v63) = 26;
  }

  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v9);
  *(a1 + 332) = 0;
  *(a1 + 416) = v79;
  v70 = *(a1 + 260);
  v71 = v70 + 1;
  v72 = *(a1 + 256);
  if (v70 + 1 <= v72)
  {
    v75 = *(a1 + 264);
    v76 = *(a1 + 260);
  }

  else
  {
    if (v72 <= 1)
    {
      v72 = 1;
    }

    v73 = 2 * v72;
    if (v73 <= v71)
    {
      v74 = v71;
    }

    else
    {
      v74 = v73;
    }

    v75 = (*(a1 + 232))(*(a1 + 224), v74, "Vector Storage (uint8_t, growth)");
    memcpy(v75, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v74;
    *(a1 + 264) = v75;
    v76 = *(a1 + 260);
  }

  memmove(&v75[v70 + 1], &v75[v70], (v76 - v70));
  *(*(a1 + 264) + v70) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  result = glpSerializeLLVMBlock(a1, v27);
  *(a1 + 432) = v4;
  return result;
}

void *glpLLVMCGSwitchStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v4 = *(a1 + 432);
  Expr = glpSwitchStatementNodeGetExpr(a2);
  v6 = glpLLVMCGNode(a1, Expr, 1);
  v7 = glpLLVMCGInsertBasicBlock(a1, "afterSwitch");
  v8 = *(a1 + 424);
  *(a1 + 424) = v7;
  *(a1 + 432) = v7;
  v9 = glpLLVMCGInsertBasicBlock(a1, "default");
  Body = glpSwitchStatementNodeGetBody(a2);
  ChildCount = glpASTNodeGetChildCount(Body);
  if (ChildCount < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = ChildCount;
    LODWORD(v13) = 0;
    for (i = 0; i != v12; ++i)
    {
      Child = glpASTNodeGetChild(Body, i);
      if (glpIsCaseStatementNode(Child))
      {
        v13 = (v13 + 1);
      }

      else
      {
        v13 = v13;
      }
    }
  }

  v16 = *(a1 + 408);
  *(a1 + 408) = glpLLVMBuildSwitch(a1, v6, v9, v13);
  glpLLVMCGNode(a1, Body, 0);
  v17 = *(a1 + 260);
  v18 = v17 + 1;
  v19 = *(a1 + 256);
  if (v17 + 1 <= v19)
  {
    v22 = *(a1 + 264);
    v23 = *(a1 + 260);
  }

  else
  {
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v20 = 2 * v19;
    if (v20 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    v22 = (*(a1 + 232))(*(a1 + 224), v21, "Vector Storage (uint8_t, growth)");
    memcpy(v22, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v21;
    *(a1 + 264) = v22;
    v23 = *(a1 + 260);
  }

  memmove(&v22[v17 + 1], &v22[v17], (v23 - v17));
  *(*(a1 + 264) + v17) = 26;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v7);
  *(a1 + 332) = 0;
  v24 = *(a1 + 260);
  v25 = v24 + 1;
  v26 = *(a1 + 256);
  if (v24 + 1 <= v26)
  {
    v29 = *(a1 + 264);
    v30 = *(a1 + 260);
  }

  else
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    v27 = 2 * v26;
    if (v27 <= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v27;
    }

    v29 = (*(a1 + 232))(*(a1 + 224), v28, "Vector Storage (uint8_t, growth)");
    memcpy(v29, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v28;
    *(a1 + 264) = v29;
    v30 = *(a1 + 260);
  }

  memmove(&v29[v24 + 1], &v29[v24], (v30 - v24));
  *(*(a1 + 264) + v24) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v9);
  v31 = *(a1 + 260);
  v32 = v31 + 1;
  v33 = *(a1 + 256);
  if (v31 + 1 <= v33)
  {
    v36 = *(a1 + 264);
    v37 = *(a1 + 260);
  }

  else
  {
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = 2 * v33;
    if (v34 <= v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = v34;
    }

    v36 = (*(a1 + 232))(*(a1 + 224), v35, "Vector Storage (uint8_t, growth)");
    memcpy(v36, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v35;
    *(a1 + 264) = v36;
    v37 = *(a1 + 260);
  }

  memmove(&v36[v31 + 1], &v36[v31], (v37 - v31));
  *(*(a1 + 264) + v31) = 26;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v7);
  *(a1 + 332) = 0;
  v38 = *(a1 + 260);
  v39 = v38 + 1;
  v40 = *(a1 + 256);
  if (v38 + 1 <= v40)
  {
    v43 = *(a1 + 264);
    v44 = *(a1 + 260);
  }

  else
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    v41 = 2 * v40;
    if (v41 <= v39)
    {
      v42 = v39;
    }

    else
    {
      v42 = v41;
    }

    v43 = (*(a1 + 232))(*(a1 + 224), v42, "Vector Storage (uint8_t, growth)");
    memcpy(v43, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v42;
    *(a1 + 264) = v43;
    v44 = *(a1 + 260);
  }

  memmove(&v43[v38 + 1], &v43[v38], (v44 - v38));
  *(*(a1 + 264) + v38) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  result = glpSerializeLLVMBlock(a1, v7);
  *(a1 + 408) = v16;
  *(a1 + 424) = v8;
  *(a1 + 432) = v4;
  return result;
}

void *glpLLVMCGCaseStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  ConstValue = glpCaseStatementNodeGetConstValue(a2);
  v5 = glpLLVMCGNode(a1, ConstValue, 1);
  v6 = glpLLVMCGInsertBasicBlock(a1, "case");
  v7 = *(a1 + 260);
  v8 = v7 + 1;
  v9 = *(a1 + 256);
  if (v7 + 1 <= v9)
  {
    v12 = *(a1 + 264);
    v13 = *(a1 + 260);
  }

  else
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 2 * v9;
    if (v10 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    v12 = (*(a1 + 232))(*(a1 + 224), v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v11;
    *(a1 + 264) = v12;
    v13 = *(a1 + 260);
  }

  memmove(&v12[v7 + 1], &v12[v7], (v13 - v7));
  *(*(a1 + 264) + v7) = 26;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v6);
  *(a1 + 332) = 0;
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v6);
  v21 = *(a1 + 408);

  return glpLLVMAddCase(a1, v21, v5, v6);
}

void *glpLLVMCGDefaultStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = *(a1 + 408);
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 96;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, v3);
  v11 = *(a1 + 312);
  *(a1 + 312) = v11 + 1;
  v12 = *(a1 + 260);
  v13 = v12 + 1;
  v14 = *(a1 + 256);
  if (v12 + 1 <= v14)
  {
    v17 = *(a1 + 264);
    v18 = *(a1 + 260);
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = 2 * v14;
    if (v15 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v16;
    *(a1 + 264) = v17;
    v18 = *(a1 + 260);
  }

  memmove(&v17[v12 + 1], &v17[v12], (v18 - v12));
  *(*(a1 + 264) + v12) = 26;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v11);
  *(a1 + 332) = 0;
  v19 = *(a1 + 260);
  v20 = v19 + 1;
  v21 = *(a1 + 256);
  if (v19 + 1 <= v21)
  {
    v24 = *(a1 + 264);
    v25 = *(a1 + 260);
  }

  else
  {
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v22 = 2 * v21;
    if (v22 <= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = (*(a1 + 232))(*(a1 + 224), v23, "Vector Storage (uint8_t, growth)");
    memcpy(v24, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v23;
    *(a1 + 264) = v24;
    v25 = *(a1 + 260);
  }

  memmove(&v24[v19 + 1], &v24[v19], (v25 - v19));
  *(*(a1 + 264) + v19) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);

  return glpSerializeLLVMBlock(a1, v11);
}

void *glpLLVMCGBreakStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = *(a1 + 260);
  v4 = v3 + 1;
  v5 = *(a1 + 256);
  if (v3 + 1 <= v5)
  {
    v8 = *(a1 + 264);
    v9 = *(a1 + 260);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = 2 * v5;
    if (v6 <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    v8 = (*(a1 + 232))(*(a1 + 224), v7, "Vector Storage (uint8_t, growth)");
    memcpy(v8, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v7;
    *(a1 + 264) = v8;
    v9 = *(a1 + 260);
  }

  memmove(&v8[v3 + 1], &v8[v3], (v9 - v3));
  *(*(a1 + 264) + v3) = 105;
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  *(a1 + 260) = v10 + 1;
  ++*(a1 + 296);
  v12 = *(a1 + 424);
  v13 = v10 + 2;
  v14 = *(a1 + 256);
  if (v13 <= v14)
  {
    v17 = *(a1 + 264);
    v18 = v11;
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = 2 * v14;
    if (v15 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v16;
    *(a1 + 264) = v17;
    v18 = *(a1 + 260);
  }

  memmove(&v17[v11 + 1], &v17[v11], v18 - v11);
  *(*(a1 + 264) + v11) = 97;
  ++*(a1 + 260);
  ++*(a1 + 296);

  return glpSerializeLLVMBlock(a1, v12);
}

void *glpLLVMCGContinueStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = *(a1 + 260);
  v4 = v3 + 1;
  v5 = *(a1 + 256);
  if (v3 + 1 <= v5)
  {
    v8 = *(a1 + 264);
    v9 = *(a1 + 260);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = 2 * v5;
    if (v6 <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    v8 = (*(a1 + 232))(*(a1 + 224), v7, "Vector Storage (uint8_t, growth)");
    memcpy(v8, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v7;
    *(a1 + 264) = v8;
    v9 = *(a1 + 260);
  }

  memmove(&v8[v3 + 1], &v8[v3], (v9 - v3));
  *(*(a1 + 264) + v3) = 105;
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  *(a1 + 260) = v10 + 1;
  ++*(a1 + 296);
  v12 = *(a1 + 416);
  v13 = v10 + 2;
  v14 = *(a1 + 256);
  if (v13 <= v14)
  {
    v17 = *(a1 + 264);
    v18 = v11;
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = 2 * v14;
    if (v15 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v16;
    *(a1 + 264) = v17;
    v18 = *(a1 + 260);
  }

  memmove(&v17[v11 + 1], &v17[v11], v18 - v11);
  *(*(a1 + 264) + v11) = 97;
  ++*(a1 + 260);
  ++*(a1 + 296);

  return glpSerializeLLVMBlock(a1, v12);
}

uint64_t glpLLVMCGDiscardStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = *(a1 + 88);
  *(a1 + 744) |= 2uLL;
  v5 = 2;
  return glpLLVMCallFunction(a1, "air.discard_fragment", v3, 0, 0, &v5, (*(a1 + 832) & 0x10) == 0);
}

uint64_t glpLLVMCGReturnStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  if (!*(a1 + 408))
  {
    *(a1 + 332) = 1;
  }

  if (*(a1 + 324) && (v3 = *(a1 + 208)) != 0)
  {
    *(a1 + 208) = 0;
    v4 = *(a1 + 260);
    v5 = v4 + 1;
    v6 = *(a1 + 256);
    if (v4 + 1 <= v6)
    {
      v9 = *(a1 + 264);
      v10 = *(a1 + 260);
    }

    else
    {
      if (v6 <= 1)
      {
        v6 = 1;
      }

      v7 = 2 * v6;
      if (v7 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
      memcpy(v9, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v8;
      *(a1 + 264) = v9;
      v10 = *(a1 + 260);
    }

    memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
    *(*(a1 + 264) + v4) = 25;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMValue(a1, v3);
  }

  else
  {
    v11 = *(a1 + 260);
    v12 = v11 + 1;
    v13 = *(a1 + 256);
    if (v11 + 1 <= v13)
    {
      v16 = *(a1 + 264);
      v17 = *(a1 + 260);
    }

    else
    {
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = 2 * v13;
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = (*(a1 + 232))(*(a1 + 224), v15, "Vector Storage (uint8_t, growth)");
      memcpy(v16, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v15;
      *(a1 + 264) = v16;
      v17 = *(a1 + 260);
    }

    memmove(&v16[v11 + 1], &v16[v11], (v17 - v11));
    *(*(a1 + 264) + v11) = 24;
    ++*(a1 + 260);
    ++*(a1 + 296);
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMCGRawCallNode(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  v4 = glpRawCallNodeGetExtra(a2);
  v5 = *(v4 + 144);
  v6 = *(v4 + 152);
  v7 = *v6;
  v8 = *(*v6 + 36);
  MEMORY[0x28223BE20](v4);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  v11 = *(v7 + 32);
  if (v11)
  {
    v12 = (*(v7 + 40) + 8);
    do
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        *&v10[((v13 << 32) - 0x100000000) >> 29] = *v12;
      }

      v12 += 3;
      --v11;
    }

    while (v11);
  }

  result = glpLLVMSharedRawCall(a1, v6[2], v5, v10, v8);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *glpLLVMCGSubroutineRawCall(uint64_t a1, uint64_t a2)
{
  v74[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  v4 = glpSubroutineRawCallNodeGetExtra(a2);
  v5 = glpSubroutineRawCallNodeGetIndexExpr(a2);
  v6 = *(v4 + 16);
  v7 = glpLLVMPointerType(a1, *(a1 + 40), 2);
  v8 = glpLLVMCastOperation(a1, 86, *(a1 + 440), v7, "ptrBase");
  v9 = *(v4 + 40) + 4 * glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 136));
  if (v9 > 7)
  {
    v10 = glpLLVMConstIntCache(a1, *(a1 + 40), v9, 1);
  }

  else
  {
    v10 = *(a1 + 520 + 8 * v9);
    if (!v10)
    {
      v11 = v9;
      v10 = glpLLVMConstIntCache(a1, *(a1 + 40), v9, 0);
      *(a1 + 520 + 8 * v11) = v10;
    }
  }

  v74[0] = v10;
  if (v5)
  {
    glpArrayTypeGetElementType(v6);
    v12 = glpLLVMCGNode(a1, v5, 1);
    v74[0] = glpLLVMBinaryOperation(a1, 53, v10, v12, "idx");
  }

  v13 = glpLLVMBuildGEP2(a1, v8, v74, 1, "ptr");
  v14 = glpLLVMBuildLoad2(a1, v13, "subroutineUniformValue");
  SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(*(a1 + 136), *(a1 + 320));
  v16 = *(SubroutineUniformHash + 32);
  if (v16)
  {
    v17 = 0;
    v18 = *(SubroutineUniformHash + 40);
    do
    {
      v19 = *v18;
      if (*v18)
      {
        v20 = *(v19 + 4);
        v21 = v19 + 64;
        if (v20 == *(v4 + 40))
        {
          v17 = v21;
        }
      }

      v18 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v22 = glpLLVMCGInsertBasicBlock(a1, "afterSwitch");
  v23 = *(v17 + 4);
  v73 = v22;
  v72 = glpLLVMBuildSwitch(a1, v14, v22, v23);
  if (*(v17 + 4))
  {
    v24 = 0;
    v70 = a1 + 520;
    v71 = v17;
    do
    {
      v25 = *(*(v17 + 8) + 4 * v24);
      v26 = glpLLVMCGInsertBasicBlock(a1, "case");
      v27 = *(a1 + 260);
      v28 = v27 + 1;
      v29 = *(a1 + 256);
      if (v27 + 1 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = *(a1 + 260);
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      memmove(&v32[v27 + 1], &v32[v27], (v33 - v27));
      *(*(a1 + 264) + v27) = 23;
      ++*(a1 + 260);
      ++*(a1 + 296);
      glpSerializeLLVMBlock(a1, v26);
      glpTopLevelNodeGetDefCount(*(*(a1 + 128) + 8 * *(a1 + 320) + 184));
      v34 = 0;
      v35 = 0;
      do
      {
        Def = glpTopLevelNodeGetDef(*(*(a1 + 128) + 8 * *(a1 + 320) + 184), v35);
        if (Def)
        {
          v37 = Def;
          if (glpASTNodeGetKind(Def) == 51)
          {
            Prototype = glpFunctionDefinitionNodeGetPrototype(v37);
            Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
            if ((*(Extra + 10) & 0x10) != 0 && *(Extra + 160) == v25)
            {
              v34 = Extra;
            }
          }
        }

        ++v35;
        DefCount = glpTopLevelNodeGetDefCount(*(*(a1 + 128) + 8 * *(a1 + 320) + 184));
      }

      while (v35 < DefCount);
      v41 = *(v34 + 152);
      v42 = *v41;
      v43 = *(*v41 + 36);
      MEMORY[0x28223BE20](DefCount);
      v45 = &v70 - ((v44 + 15) & 0xFFFFFFFF0);
      bzero(v45, v44);
      v46 = *(v42 + 32);
      if (v46)
      {
        v47 = (*(v42 + 40) + 8);
        do
        {
          v48 = *(v47 - 1);
          if (v48)
          {
            *&v45[((v48 << 32) - 0x100000000) >> 29] = *v47;
          }

          v47 += 3;
          --v46;
        }

        while (v46);
      }

      v49 = *(a1 + 628);
      if (v49)
      {
        v50 = 0;
        v51 = *(a1 + 632);
        do
        {
          if (*(*v51 + 16) == v25)
          {
            v50 = *(*v51 + 8);
          }

          v51 += 8;
          --v49;
        }

        while (v49);
      }

      else
      {
        v50 = 0;
      }

      glpLLVMSharedRawCall(a1, v41[2], v50, v45, v43);
      v52 = *(a1 + 260);
      v53 = v52 + 1;
      v54 = *(a1 + 256);
      if (v52 + 1 <= v54)
      {
        v57 = *(a1 + 264);
        v58 = *(a1 + 260);
      }

      else
      {
        if (v54 <= 1)
        {
          v54 = 1;
        }

        v55 = 2 * v54;
        if (v55 <= v53)
        {
          v56 = v53;
        }

        else
        {
          v56 = v55;
        }

        v57 = (*(a1 + 232))(*(a1 + 224), v56, "Vector Storage (uint8_t, growth)");
        memcpy(v57, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v56;
        *(a1 + 264) = v57;
        v58 = *(a1 + 260);
      }

      memmove(&v57[v52 + 1], &v57[v52], (v58 - v52));
      *(*(a1 + 264) + v52) = 26;
      ++*(a1 + 260);
      ++*(a1 + 296);
      glpSerializeLLVMBlock(a1, v73);
      *(a1 + 332) = 0;
      if (v25 > 7)
      {
        v59 = glpLLVMConstIntCache(a1, *(a1 + 40), v25, 1);
      }

      else
      {
        v59 = *(v70 + 8 * v25);
        if (!v59)
        {
          v59 = glpLLVMConstIntCache(a1, *(a1 + 40), v25, 0);
          *(v70 + 8 * v25) = v59;
        }
      }

      glpLLVMAddCase(a1, v72, v59, v26);
      ++v24;
      v17 = v71;
    }

    while (v24 < *(v71 + 4));
  }

  v60 = *(a1 + 260);
  v61 = v60 + 1;
  v62 = *(a1 + 256);
  if (v60 + 1 <= v62)
  {
    v65 = *(a1 + 264);
    v66 = *(a1 + 260);
  }

  else
  {
    if (v62 <= 1)
    {
      v62 = 1;
    }

    v63 = 2 * v62;
    if (v63 <= v61)
    {
      v64 = v61;
    }

    else
    {
      v64 = v63;
    }

    v65 = (*(a1 + 232))(*(a1 + 224), v64, "Vector Storage (uint8_t, growth)");
    memcpy(v65, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v64;
    *(a1 + 264) = v65;
    v66 = *(a1 + 260);
  }

  memmove(&v65[v60 + 1], &v65[v60], (v66 - v60));
  *(*(a1 + 264) + v60) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  v67 = *MEMORY[0x277D85DE8];
  v68 = v73;

  return glpSerializeLLVMBlock(a1, v68);
}

uint64_t glpLLVMCGLValue(uint64_t *a1, uint64_t a2, int a3)
{
  v80[2] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  v7 = *(*(VariableExtra + 144) + 16);
  if (v7)
  {
    OffsetExpr = *(v7 + 16);
LABEL_3:
    v9 = *MEMORY[0x277D85DE8];
    return OffsetExpr;
  }

  v11 = VariableExtra;
  v12 = *(VariableExtra + 8);
  if (v12)
  {
    v13 = glpLayoutObjectFind(v12, 46);
    if (v13)
    {
      if (*(v13 + 4) == 9)
      {
        v14 = a1[5];
        v80[0] = 0x300000001;
        OffsetExpr = glpLLVMCallFunction(a1, "air.get_num_samples.i32", v14, 0, 0, v80, 2);
        goto LABEL_3;
      }
    }
  }

  v15 = glpLLVMGetVariablePointer(a1, v11);
  SaType = glpASTNodeGetSaType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v18 = glpPrecisionIndexFromSAFlags(SaFlags);
  if (!v18)
  {
    v19 = glpLValueNodeGetVariableExtra(a2);
    v18 = glpPrecisionIndexFromSAFlags(*(v19 + 48));
  }

  Offset = glpDerefNodeGetOffset(a2);
  v76 = a1[5];
  if (glpTypeIsAtomic(SaType))
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    if (Offset)
    {
      goto LABEL_12;
    }
  }

  else
  {
    PrimitiveType = 0;
    if (Offset)
    {
LABEL_12:
      BankIndex = glpOffsetNodeGetBankIndex(Offset);
      if (BankIndex)
      {
        v22 = *glpConstantNodeGetValue(BankIndex);
      }

      else
      {
        v22 = 0;
      }

      CompStride = glpOffsetNodeGetCompStride(Offset);
      OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      if (glpOffsetNodeGetPreSwizzlePrimitiveType(Offset))
      {
        PrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
      }

      if (!a3)
      {
        if (OffsetExpr)
        {
          glpLLVMCGNode(a1, OffsetExpr, 0);
          OffsetExpr = 0;
        }

        goto LABEL_3;
      }

      goto LABEL_21;
    }
  }

  OffsetExpr = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  v22 = 0;
  CompStride = -1;
LABEL_21:
  if (glpTypeIsAtomic(SaType))
  {
    v80[0] = 0;
    v80[1] = 0;
    v79 = 0;
    if ((*(v11 + 52) & 1) == 0)
    {
      if (OffsetExpr)
      {
        v23 = PrimitiveType;
        if ((PrimitiveType & 0xFFFFFFFE) != 0x40 || *(*(v11 + 144) + 24) == PrimitiveType)
        {
          v25 = a1;
          v26 = v11;
          v27 = v15;
          v28 = OffsetExpr;
          v24 = 0;
        }

        else
        {
          v24 = &v79;
          v25 = a1;
          v26 = v11;
          v27 = v15;
          v28 = OffsetExpr;
        }

        v15 = glpBuildArrayElementPtr(v25, v26, v27, v28, v24, 0);
      }

      else
      {
        v23 = PrimitiveType;
      }

      v37 = glpLLVMLoadVector(a1, v11, v15, v23, v18, *(*(v11 + 144) + 24), *(*(v11 + 144) + 28));
      goto LABEL_84;
    }

    v30 = glpASTNodeGetSaType(a2);
    v31 = glpPrimitiveTypeGetPrimitiveType(v30);
    if (glpPrimitiveTypeGetCategory(v31) == 4)
    {
      inserted = glpLLVMConstIntCache(a1, a1[5], *(v11 + 156), 0);
      if (!OffsetExpr)
      {
LABEL_89:
        OffsetExpr = inserted;
        goto LABEL_3;
      }

      v33 = glpLLVMCGNode(a1, OffsetExpr, 1);
      v34 = glpLLVMCastOperation(a1, 75, v33, a1[5], "off");
      Element = glpLLVMBinaryOperation(a1, 53, v34, inserted, "idx");
LABEL_88:
      inserted = Element;
      goto LABEL_89;
    }

    if ((*(v11 + 52) & 8) == 0)
    {
      LODWORD(v78) = 0;
      if (OffsetExpr)
      {
        v23 = PrimitiveType;
        if (!glpGetConstantOffset(OffsetExpr, &v78))
        {
          v47 = glpLLVMCGNode(a1, OffsetExpr, 1);
          if (v47)
          {
            v48 = v47;
            v49 = glpLLVMTypeOf(a1, v47);
            v50 = glpLLVMConstIntCache(a1, v49, *(v11 + 156), 0);
            v51 = glpLLVMBinaryOperation(a1, 53, v48, v50, "idx");
          }

          else
          {
            v51 = glpLLVMConstIntCache(a1, v76, *(v11 + 156), 0);
          }

          v80[0] = v51;
          v44 = glpLLVMBuildGEP2(a1, a1[55], v80, 1, "ptr");
          goto LABEL_65;
        }

        v36 = v78;
      }

      else
      {
        v36 = 0;
        v23 = PrimitiveType;
      }

      v44 = glpBuildUniformElementPtr(a1, v11, a1[55], 0, 0, *(v11 + 156) + v36);
LABEL_65:
      v58 = v44;
      v59 = 4;
LABEL_72:
      v74 = v59;
      if (glpPrimitiveTypeGetCategory(v23) == 2)
      {
        Length = glpPrimitiveVectorGetLength(v23);
        if (Length >= 2 && CompStride != -1)
        {
          v61 = Length;
          ScalarType = glpPrimitiveTypeGetScalarType(v23);
          v73 = ScalarType;
          v63 = glpLLVMReadUniform(a1, v58, v74, ScalarType, v18);
          v64 = glpLLVMTypeOf(a1, v63);
          v65 = glpLLVMVectorType(a1, v64, v61);
          inserted = glpLLVMConstFromTypeCache(a1, 37, v65);
          v66 = 0;
          v78 = glpLLVMConstIntCache(a1, v76, CompStride >> 2, 0);
          do
          {
            if (v66 && (v63 = glpLLVMReadUniform(a1, v58, v74, v73, v18), v66 > 7))
            {
              v68 = glpLLVMConstIntCache(a1, a1[5], v66, 1);
            }

            else
            {
              v67 = &a1[v66];
              v68 = v67[65];
              if (!v68)
              {
                v68 = glpLLVMConstIntCache(a1, a1[5], v66, 0);
                v67[65] = v68;
              }
            }

            inserted = glpLLVMBuildInsertElement(a1, inserted, v63, v68, "");
            v58 = glpLLVMBuildGEP2(a1, v58, &v78, 1, "ptr");
            ++v66;
          }

          while (v61 != v66);
          v23 = PrimitiveType;
          goto LABEL_85;
        }
      }

      v37 = glpLLVMReadUniform(a1, v58, v74, v23, v18);
LABEL_84:
      inserted = v37;
LABEL_85:
      if (!Offset)
      {
        goto LABEL_89;
      }

      Swizzle = glpOffsetNodeGetSwizzle(Offset);
      inserted = glpCGSwizzle(a1, 0, 0, inserted, v23, Swizzle);
      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
      if (!VectorElementExpr)
      {
        goto LABEL_89;
      }

      v71 = glpLLVMCGNode(a1, VectorElementExpr, 1);
      v72 = glpLLVMCastOperation(a1, 87, v71, v76, "mtc");
      Element = glpLLVMBuildExtractElement(a1, inserted, v72, "offv");
      goto LABEL_88;
    }

    v38 = *(v11 + 88);
    v39 = *(a1[89] + 8 * (v22 + *(v38 + 24) - 1));
    if (*(v38 + 8) == 1)
    {
      v40 = glpLLVMPointerType(a1, a1[9], 2);
    }

    else
    {
      v40 = 0;
    }

    v23 = PrimitiveType;
    LODWORD(v78) = 0;
    if (!OffsetExpr)
    {
      v43 = 0;
      v42 = *(v11 + 88);
      goto LABEL_52;
    }

    ConstantOffset = glpGetConstantOffset(OffsetExpr, &v78);
    v42 = *(v11 + 88);
    if (ConstantOffset)
    {
      v43 = v78;
LABEL_52:
      if (*(v42 + 8) == 1)
      {
        v45 = v43 >> 2;
      }

      else
      {
        v45 = v43;
      }

      v46 = glpBuildUniformElementPtr(a1, v11, *(v39 + 8), v40, v22, v45);
      goto LABEL_69;
    }

    v52 = *(v39 + 8);
    if (*(v42 + 8) == 1)
    {
      v52 = glpLLVMCastOperation(a1, 86, *(v39 + 8), v40, "ptr");
    }

    v53 = glpLLVMCGNode(a1, OffsetExpr, 1);
    if (v53)
    {
      v54 = v53;
      v55 = glpLLVMTypeOf(a1, v53);
      if (*(*(v11 + 88) + 8) != 1)
      {
LABEL_68:
        v80[0] = v54;
        v46 = glpLLVMBuildGEP2(a1, v52, v80, 1, "ptr ptr ptr");
LABEL_69:
        v58 = v46;
        if (*(*(v11 + 88) + 8) == 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = 4;
        }

        goto LABEL_72;
      }

      v56 = glpLLVMConstIntCache(a1, v55, 2uLL, 1);
      v57 = glpLLVMBinaryOperation(a1, 67, v54, v56, "offset");
    }

    else
    {
      v57 = glpLLVMConstIntCache(a1, v76, 0, *(*(v11 + 88) + 8) == 1);
    }

    v54 = v57;
    goto LABEL_68;
  }

  v29 = *MEMORY[0x277D85DE8];

  return glpLLVMBuildLoad2(a1, v15, "var");
}

uint64_t glpLLVMCGRValue(uint64_t a1, uint64_t a2)
{
  v26[2] = *MEMORY[0x277D85DE8];
  SaType = glpASTNodeGetSaType(a2);
  if (!glpTypeIsAtomic(SaType))
  {
    v6 = 0;
LABEL_23:
    v25 = *MEMORY[0x277D85DE8];
    return v6;
  }

  glpLLVMAddLineInformation(a1, a2);
  Base = glpRValueNodeGetBase(a2);
  v6 = glpLLVMCGNode(a1, Base, 1);
  Offset = glpDerefNodeGetOffset(a2);
  if (!Offset)
  {
    goto LABEL_23;
  }

  v8 = Offset;
  OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
  if (OffsetExpr)
  {
    v10 = glpLLVMCGNode(a1, OffsetExpr, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v11);
  if (glpOffsetNodeGetPreSwizzlePrimitiveType(v8))
  {
    PrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v8);
  }

  if (v10)
  {
    if ((*(a1 + 832) & 8) != 0 && glpASTNodeGetKind(Base) == 3 && (glpASTNodeGetSaFlags(Base) & 0x60) != 0)
    {
      v13 = glpPointerHashGet(*(a1 + 344), v6);
      if (!v13)
      {
        v14 = glpLLVMTypeOf(a1, v6);
        v13 = glpLLVMAddGlobalInAddressSpace(a1, v14);
        glpLLVMSetGlobalConstant(a1, v13);
        glpLLVMSetInitializer(a1, v13, v6);
        glpPointerHashPut(*(a1 + 344), v6, v13, v15);
      }
    }

    else
    {
      v16 = glpLLVMTypeOf(a1, v6);
      v13 = glpBuildAlloca(a1, v16);
      glpLLVMBuildStore(a1, v6, v13);
    }

    v17 = *(a1 + 520);
    if (!v17)
    {
      v17 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v17;
    }

    v26[0] = v17;
    v26[1] = v10;
    v18 = glpLLVMBuildGEP2(a1, v13, v26, 2, "ptr");
    v6 = glpLLVMBuildLoad2(a1, v18, "var");
  }

  Swizzle = glpOffsetNodeGetSwizzle(v8);
  v6 = glpCGSwizzle(a1, 0, 0, v6, PrimitiveType, Swizzle);
  VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v8);
  if (!VectorElementExpr)
  {
    goto LABEL_23;
  }

  v21 = glpLLVMCGNode(a1, VectorElementExpr, 1);
  v22 = glpLLVMCastOperation(a1, 87, v21, *(a1 + 40), "mtc");
  v23 = *MEMORY[0x277D85DE8];

  return glpLLVMBuildExtractElement(a1, v6, v22, "offv");
}

unint64_t glpLLVMWriteOutput(uint64_t a1, uint64_t a2)
{
  result = glpWriteOutputNodeGetExtra(a2);
  v4 = result;
  v5 = *(a1 + 320);
  if (v5 == 4)
  {
    if (!*(a1 + 208))
    {
      *(a1 + 208) = glpLLVMConstFromTypeCache(a1, 37, *(a1 + 200));
    }

    v6 = *(a1 + 692);
    if (v6 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      while (*(*(a1 + 696) + 8 * v7) != v4)
      {
        if (v6 == ++v7)
        {
          v7 = *(a1 + 692);
          break;
        }
      }
    }

    v8 = glpLayoutObjectFind(*(v4 + 8), 68);
    v9 = glpLLVMGetVariablePointer(a1, v4);
    v10 = glpPrecisionIndexFromSAFlags(*(v4 + 48));
    v11 = glpTypeToLLVMTypeWithUnderlying(a1, *v4, v10, v4);
    v12 = glpLLVMPointerType(a1, v11, 0);
    v13 = glpLLVMCastOperation(a1, 86, v9, v12, "ptr");
    v14 = glpLLVMBuildLoad2(a1, v13, "out");
    v15 = glpLayoutObjectFind(*(v4 + 8), 77);
    if (v15 && *(v15 + 4) == 2)
    {
      *(a1 + 760) |= 0x1000u;
    }

    if (*(v8 + 4) == 4)
    {
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v4);
      if (glpPrimitiveTypeGetCategory(PrimitiveType) != 2)
      {
        v18 = 1;
LABEL_25:
        v20 = glpLLVMVectorType(a1, v11, 4);
        inserted = glpLLVMConstFromTypeCache(a1, 37, v20);
        if (v18 >= 1)
        {
          for (i = 0; i != v18; ++i)
          {
            if (i > 7)
            {
              v23 = glpLLVMConstIntCache(a1, *(a1 + 40), i, 1);
            }

            else
            {
              v22 = a1 + 8 * i;
              v23 = *(v22 + 520);
              if (!v23)
              {
                v23 = glpLLVMConstIntCache(a1, *(a1 + 40), i, 0);
                *(v22 + 520) = v23;
              }
            }

            Element = v14;
            if (v18 != 1)
            {
              Element = glpLLVMBuildExtractElement(a1, v14, v23, "comp");
            }

            inserted = glpLLVMBuildInsertElement(a1, inserted, Element, v23, "color");
          }
        }

        goto LABEL_34;
      }

      Length = glpPrimitiveVectorGetLength(PrimitiveType);
      if (Length <= 3)
      {
        v18 = Length;
        if (Length > 1)
        {
          v11 = glpLLVMGetElementType(a1, v11);
        }

        goto LABEL_25;
      }
    }

    inserted = v14;
LABEL_34:
    result = glpLLVMBuildInsertValue(a1, *(a1 + 208), inserted, v7, "returnValue");
    *(a1 + 208) = result;
    return result;
  }

  if (v5 == 2 || !v5)
  {

    return glpLLVMCGWriteVertexOutput(a1, result);
  }

  return result;
}

void glpLLVMAddLineInformation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v49 = 0uLL;
    v50 = 0;
    Location = glpASTNodeGetLocation(a2, &v49);
    v4 = v50;
    if (v50 != -1)
    {
      v5 = *(a1 + 260);
      v6 = v5 + 1;
      v7 = *(a1 + 256);
      if (v5 + 1 <= v7)
      {
        v10 = *(a1 + 264);
        v11 = *(a1 + 260);
      }

      else
      {
        if (v7 <= 1)
        {
          v7 = 1;
        }

        v8 = 2 * v7;
        v9 = v8 <= v6 ? v6 : v8;
        v10 = (*(a1 + 232))(*(a1 + 224), v9, "Vector Storage (uint8_t, growth)", Location);
        memcpy(v10, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v9;
        *(a1 + 264) = v10;
        v11 = *(a1 + 260);
      }

      memmove(&v10[v5 + 1], &v10[v5], (v11 - v5));
      *(*(a1 + 264) + v5) = 104;
      ++*(a1 + 260);
      ++*(a1 + 296);
      v12 = glp_serialized_integer32_control(v4);
      v13 = *(a1 + 260);
      v14 = v13 + 1;
      v15 = *(a1 + 256);
      if (v13 + 1 <= v15)
      {
        v18 = *(a1 + 264);
        v19 = *(a1 + 260);
      }

      else
      {
        if (v15 <= 1)
        {
          v15 = 1;
        }

        v16 = 2 * v15;
        v17 = v16 <= v14 ? v14 : v16;
        v18 = (*(a1 + 232))(*(a1 + 224), v17, "Vector Storage (uint8_t, growth)");
        memcpy(v18, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v17;
        *(a1 + 264) = v18;
        v19 = *(a1 + 260);
      }

      memmove(&v18[v13 + 1], &v18[v13], (v19 - v13));
      *(*(a1 + 264) + v13) = v12;
      v20 = *(a1 + 260);
      v21 = v20 + 1;
      *(a1 + 260) = v20 + 1;
      if ((v12 & 0x80000000) != 0)
      {
        v22 = (v12 >> 1) & 7;
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v41 = v20 + 4;
            v42 = *(a1 + 256);
            if (v41 <= v42)
            {
              v45 = *(a1 + 264);
              v46 = v21;
            }

            else
            {
              if (v42 <= 1)
              {
                v42 = 1;
              }

              v43 = 2 * v42;
              if (v43 <= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v43;
              }

              v45 = (*(a1 + 232))(*(a1 + 224), v44, "Vector Storage (uint8_t, growth)");
              memcpy(v45, *(a1 + 264), *(a1 + 260));
              (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
              *(a1 + 256) = v44;
              *(a1 + 264) = v45;
              v46 = *(a1 + 260);
            }

            memmove(&v45[v21 + 1], &v45[v21], v46 - v21);
            v48 = *(a1 + 264) + v21;
            *(v48 + 2) = BYTE2(v4);
            *v48 = v4;
            v47 = 3;
          }

          else
          {
            if (v22 != 3)
            {
              return;
            }

            v29 = v20 + 5;
            v30 = *(a1 + 256);
            if (v29 <= v30)
            {
              v33 = *(a1 + 264);
              v34 = v21;
            }

            else
            {
              if (v30 <= 1)
              {
                v30 = 1;
              }

              v31 = 2 * v30;
              if (v31 <= v29)
              {
                v32 = v29;
              }

              else
              {
                v32 = v31;
              }

              v33 = (*(a1 + 232))(*(a1 + 224), v32, "Vector Storage (uint8_t, growth)");
              memcpy(v33, *(a1 + 264), *(a1 + 260));
              (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
              *(a1 + 256) = v32;
              *(a1 + 264) = v33;
              v34 = *(a1 + 260);
            }

            memmove(&v33[v21 + 1], &v33[v21], v34 - v21);
            *(*(a1 + 264) + v21) = v4;
            v47 = 4;
          }
        }

        else if (v22)
        {
          if (v22 != 1)
          {
            return;
          }

          v23 = v20 + 3;
          v24 = *(a1 + 256);
          if (v23 <= v24)
          {
            v27 = *(a1 + 264);
            v28 = v21;
          }

          else
          {
            if (v24 <= 1)
            {
              v24 = 1;
            }

            v25 = 2 * v24;
            if (v25 <= v23)
            {
              v26 = v23;
            }

            else
            {
              v26 = v25;
            }

            v27 = (*(a1 + 232))(*(a1 + 224), v26, "Vector Storage (uint8_t, growth)");
            memcpy(v27, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v26;
            *(a1 + 264) = v27;
            v28 = *(a1 + 260);
          }

          memmove(&v27[v21 + 1], &v27[v21], v28 - v21);
          *(*(a1 + 264) + v21) = v4;
          v47 = 2;
        }

        else
        {
          v35 = v20 + 2;
          v36 = *(a1 + 256);
          if (v35 <= v36)
          {
            v39 = *(a1 + 264);
            v40 = v21;
          }

          else
          {
            if (v36 <= 1)
            {
              v36 = 1;
            }

            v37 = 2 * v36;
            if (v37 <= v35)
            {
              v38 = v35;
            }

            else
            {
              v38 = v37;
            }

            v39 = (*(a1 + 232))(*(a1 + 224), v38, "Vector Storage (uint8_t, growth)");
            memcpy(v39, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v38;
            *(a1 + 264) = v39;
            v40 = *(a1 + 260);
          }

          memmove(&v39[v21 + 1], &v39[v21], v40 - v21);
          *(*(a1 + 264) + v21) = v4;
          v47 = 1;
        }

        *(a1 + 260) += v47;
      }
    }
  }
}

uint64_t glpPrimitiveTypeToLLVMType(void *a1, uint64_t a2, uint64_t a3)
{
  Category = glpPrimitiveTypeGetCategory(a2);
  if (Category <= 1)
  {
    if (!Category)
    {
      return a1[11];
    }

    if (Category != 1)
    {
      goto LABEL_33;
    }

    if (a2 <= 8)
    {
      if (a2 == 1)
      {
        if (a3 == 2)
        {
          return a1[61];
        }

        if (a3 == 1)
        {
          return a1[60];
        }

        return a1[62];
      }

      if (a2 != 5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a2 == 9)
      {
        return a1[8];
      }

      if (a2 != 36)
      {
        if (a2 == 62)
        {
          return a1[12];
        }

        goto LABEL_22;
      }
    }

    if (a3 == 2)
    {
      return a1[58];
    }

    if (a3 == 1)
    {
      return a1[57];
    }

    return a1[59];
  }

  if (Category == 2)
  {
LABEL_22:
    Length = glpPrimitiveVectorGetLength(a2);
    ElementType = glpPrimitiveVectorGetElementType(a2);
    v15 = glpPrimitiveTypeToLLVMType(a1, ElementType, a3);

    return glpLLVMVectorType(a1, v15, Length);
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return a1[5];
    }

LABEL_33:
    glpPrimitiveTypeToLLVMType_cold_1(a2);
  }

  ColumnType = glpPrimitiveMatrixGetColumnType(a2);
  PrimitiveType = glpGetPrimitiveType(a2);
  v10 = glpABIGetTypeSize(0, PrimitiveType, 0);
  Size = glpTypeSizeGetSize(v10);
  v12 = glpPrimitiveTypeToLLVMType(a1, ColumnType, a3);

  return glpLLVMArrayType(a1, v12, Size);
}

uint64_t glpLLVMTypeOf(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 40;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

uint64_t glpLLVMBuildFCmp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 90;
  ++*(a1 + 260);
  ++*(a1 + 296);
  v17 = glp_serialized_integer32_control(a2);
  v18 = *(a1 + 260);
  v19 = v18 + 1;
  v20 = *(a1 + 256);
  if (v18 + 1 <= v20)
  {
    v23 = *(a1 + 264);
    v24 = *(a1 + 260);
  }

  else
  {
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v21 = 2 * v20;
    if (v21 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
    memcpy(v23, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v22;
    *(a1 + 264) = v23;
    v24 = *(a1 + 260);
  }

  memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
  *(*(a1 + 264) + v18) = v17;
  v25 = *(a1 + 260);
  v26 = v25 + 1;
  *(a1 + 260) = v25 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v27 = (v17 >> 1) & 7;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v46 = v25 + 4;
        v47 = *(a1 + 256);
        if (v46 <= v47)
        {
          v50 = *(a1 + 264);
          v51 = v26;
        }

        else
        {
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = 2 * v47;
          if (v48 <= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          v50 = (*(a1 + 232))(*(a1 + 224), v49, "Vector Storage (uint8_t, growth)");
          memcpy(v50, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v49;
          *(a1 + 264) = v50;
          v51 = *(a1 + 260);
        }

        memmove(&v50[v26 + 1], &v50[v26], v51 - v26);
        v53 = *(a1 + 264) + v26;
        *(v53 + 2) = BYTE2(a2);
        *v53 = a2;
        v52 = 3;
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_60;
        }

        v34 = v25 + 5;
        v35 = *(a1 + 256);
        if (v34 <= v35)
        {
          v38 = *(a1 + 264);
          v39 = v26;
        }

        else
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = 2 * v35;
          if (v36 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          v38 = (*(a1 + 232))(*(a1 + 224), v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v37;
          *(a1 + 264) = v38;
          v39 = *(a1 + 260);
        }

        memmove(&v38[v26 + 1], &v38[v26], v39 - v26);
        *(*(a1 + 264) + v26) = a2;
        v52 = 4;
      }
    }

    else if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_60;
      }

      v28 = v25 + 3;
      v29 = *(a1 + 256);
      if (v28 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = v26;
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      memmove(&v32[v26 + 1], &v32[v26], v33 - v26);
      *(*(a1 + 264) + v26) = a2;
      v52 = 2;
    }

    else
    {
      v40 = v25 + 2;
      v41 = *(a1 + 256);
      if (v40 <= v41)
      {
        v44 = *(a1 + 264);
        v45 = v26;
      }

      else
      {
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v42 = 2 * v41;
        if (v42 <= v40)
        {
          v43 = v40;
        }

        else
        {
          v43 = v42;
        }

        v44 = (*(a1 + 232))(*(a1 + 224), v43, "Vector Storage (uint8_t, growth)");
        memcpy(v44, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v43;
        *(a1 + 264) = v44;
        v45 = *(a1 + 260);
      }

      memmove(&v44[v26 + 1], &v44[v26], v45 - v26);
      *(*(a1 + 264) + v26) = a2;
      v52 = 1;
    }

    *(a1 + 260) += v52;
  }

LABEL_60:
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMValue(a1, a4);
  if (*(a1 + 300))
  {
    v54 = strlen(a5) + 1;
    v55 = *(a1 + 260);
    v56 = v54 + v55;
    v57 = *(a1 + 256);
    if (v54 + v55 <= v57)
    {
      v60 = *(a1 + 264);
      v61 = *(a1 + 260);
    }

    else
    {
      if (v57 <= 1)
      {
        v57 = 1;
      }

      v58 = 2 * v57;
      if (v58 <= v56)
      {
        v59 = v56;
      }

      else
      {
        v59 = v58;
      }

      v60 = (*(a1 + 232))(*(a1 + 224), v59, "Vector Storage (uint8_t, growth)");
      memcpy(v60, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v59;
      *(a1 + 264) = v60;
      v61 = *(a1 + 260);
    }

    memmove(&v60[v55 + 1], &v60[v55], (v61 - v55));
    memcpy((*(a1 + 264) + v55), a5, v54);
    *(a1 + 260) += v54;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMConstFromTypeCache(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  if ((*(a1 + 832) & 4) != 0)
  {
    *v28 = a2;
    *&v28[4] = a3;
    LODWORD(v13) = 12;
    for (i = 11; i != -1; --i)
    {
      v13 = (32 * v13 + (v13 >> 2) + v28[i]) ^ v13;
    }

    v15 = (v13 << 32) | 0xC;
    v16 = glpDataHashGet(*(a1 + 392), v28, v15);
    if (!v16)
    {
      v17 = *(a1 + 260);
      v18 = v17 + 1;
      v19 = *(a1 + 256);
      if (v17 + 1 <= v19)
      {
        v22 = *(a1 + 264);
        v23 = *(a1 + 260);
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (*(a1 + 232))(*(a1 + 224), v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v21;
        *(a1 + 264) = v22;
        v23 = *(a1 + 260);
      }

      memmove(&v22[v17 + 1], &v22[v17], (v23 - v17));
      *(*(a1 + 264) + v17) = v4;
      ++*(a1 + 260);
      ++*(a1 + 296);
      glpSerializeLLVMType(a1, a3);
      v16 = *(a1 + 308);
      *(a1 + 308) = v16 + 1;
      v24 = (*(a1 + 368))(*(a1 + 360), 12, "");
      v25 = *v28;
      v24[2] = *&v28[8];
      *v24 = v25;
      glpDataHashPut(*(a1 + 392), v24, v15, v16, v26);
    }
  }

  else
  {
    v6 = *(a1 + 260);
    v7 = v6 + 1;
    v8 = *(a1 + 256);
    if (v6 + 1 <= v8)
    {
      v11 = *(a1 + 264);
      v12 = *(a1 + 260);
    }

    else
    {
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = 2 * v8;
      if (v9 <= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = v9;
      }

      v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
      memcpy(v11, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v10;
      *(a1 + 264) = v11;
      v12 = *(a1 + 260);
    }

    memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
    *(*(a1 + 264) + v6) = v4;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMType(a1, a3);
    v16 = *(a1 + 308);
    *(a1 + 308) = v16 + 1;
  }

  return v16;
}

uint64_t glpLLVMBuildICmp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 89;
  ++*(a1 + 260);
  ++*(a1 + 296);
  v17 = glp_serialized_integer32_control(a2);
  v18 = *(a1 + 260);
  v19 = v18 + 1;
  v20 = *(a1 + 256);
  if (v18 + 1 <= v20)
  {
    v23 = *(a1 + 264);
    v24 = *(a1 + 260);
  }

  else
  {
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v21 = 2 * v20;
    if (v21 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
    memcpy(v23, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v22;
    *(a1 + 264) = v23;
    v24 = *(a1 + 260);
  }

  memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
  *(*(a1 + 264) + v18) = v17;
  v25 = *(a1 + 260);
  v26 = v25 + 1;
  *(a1 + 260) = v25 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v27 = (v17 >> 1) & 7;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v46 = v25 + 4;
        v47 = *(a1 + 256);
        if (v46 <= v47)
        {
          v50 = *(a1 + 264);
          v51 = v26;
        }

        else
        {
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = 2 * v47;
          if (v48 <= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          v50 = (*(a1 + 232))(*(a1 + 224), v49, "Vector Storage (uint8_t, growth)");
          memcpy(v50, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v49;
          *(a1 + 264) = v50;
          v51 = *(a1 + 260);
        }

        memmove(&v50[v26 + 1], &v50[v26], v51 - v26);
        v53 = *(a1 + 264) + v26;
        *(v53 + 2) = BYTE2(a2);
        *v53 = a2;
        v52 = 3;
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_60;
        }

        v34 = v25 + 5;
        v35 = *(a1 + 256);
        if (v34 <= v35)
        {
          v38 = *(a1 + 264);
          v39 = v26;
        }

        else
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = 2 * v35;
          if (v36 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          v38 = (*(a1 + 232))(*(a1 + 224), v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v37;
          *(a1 + 264) = v38;
          v39 = *(a1 + 260);
        }

        memmove(&v38[v26 + 1], &v38[v26], v39 - v26);
        *(*(a1 + 264) + v26) = a2;
        v52 = 4;
      }
    }

    else if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_60;
      }

      v28 = v25 + 3;
      v29 = *(a1 + 256);
      if (v28 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = v26;
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      memmove(&v32[v26 + 1], &v32[v26], v33 - v26);
      *(*(a1 + 264) + v26) = a2;
      v52 = 2;
    }

    else
    {
      v40 = v25 + 2;
      v41 = *(a1 + 256);
      if (v40 <= v41)
      {
        v44 = *(a1 + 264);
        v45 = v26;
      }

      else
      {
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v42 = 2 * v41;
        if (v42 <= v40)
        {
          v43 = v40;
        }

        else
        {
          v43 = v42;
        }

        v44 = (*(a1 + 232))(*(a1 + 224), v43, "Vector Storage (uint8_t, growth)");
        memcpy(v44, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v43;
        *(a1 + 264) = v44;
        v45 = *(a1 + 260);
      }

      memmove(&v44[v26 + 1], &v44[v26], v45 - v26);
      *(*(a1 + 264) + v26) = a2;
      v52 = 1;
    }

    *(a1 + 260) += v52;
  }

LABEL_60:
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMValue(a1, a4);
  if (*(a1 + 300))
  {
    v54 = strlen(a5) + 1;
    v55 = *(a1 + 260);
    v56 = v54 + v55;
    v57 = *(a1 + 256);
    if (v54 + v55 <= v57)
    {
      v60 = *(a1 + 264);
      v61 = *(a1 + 260);
    }

    else
    {
      if (v57 <= 1)
      {
        v57 = 1;
      }

      v58 = 2 * v57;
      if (v58 <= v56)
      {
        v59 = v56;
      }

      else
      {
        v59 = v58;
      }

      v60 = (*(a1 + 232))(*(a1 + 224), v59, "Vector Storage (uint8_t, growth)");
      memcpy(v60, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v59;
      *(a1 + 264) = v60;
      v61 = *(a1 + 260);
    }

    memmove(&v60[v55 + 1], &v60[v55], (v61 - v55));
    memcpy((*(a1 + 264) + v55), a5, v54);
    *(a1 + 260) += v54;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMCastOperation(uint64_t a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = a2;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMType(a1, a4);
  if (*(a1 + 300))
  {
    v17 = strlen(a5) + 1;
    v18 = *(a1 + 260);
    v19 = v17 + v18;
    v20 = *(a1 + 256);
    if (v17 + v18 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = *(a1 + 260);
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
    memcpy((*(a1 + 264) + v18), a5, v17);
    *(a1 + 260) += v17;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildConversion(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = a2;
  v11 = glpLLVMGetTypeString(&v16, a4, a5);
  v15 = 0;
  v12 = glpLLVMGetTypeString(&v15, a6, a7);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  snprintf_l(v18, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", v15, v12, v16, v11);
  v50[0] = 0x300000001;
  result = glpLLVMCallFunction(a1, v18, a3, &v17, 1, v50, 2);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMVectorType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 9;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  v13 = glp_serialized_integer32_control(a3);
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = v13;
  v21 = *(a1 + 260);
  v22 = v21 + 1;
  *(a1 + 260) = v21 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v23 = (v13 >> 1) & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v42 = v21 + 4;
        v43 = *(a1 + 256);
        if (v42 <= v43)
        {
          v46 = *(a1 + 264);
          v47 = v22;
        }

        else
        {
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = 2 * v43;
          if (v44 <= v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v44;
          }

          v46 = (*(a1 + 232))(*(a1 + 224), v45, "Vector Storage (uint8_t, growth)");
          memcpy(v46, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v45;
          *(a1 + 264) = v46;
          v47 = *(a1 + 260);
        }

        memmove(&v46[v22 + 1], &v46[v22], v47 - v22);
        v49 = *(a1 + 264) + v22;
        *(v49 + 2) = BYTE2(a3);
        *v49 = a3;
        v48 = 3;
        goto LABEL_59;
      }

      if (v23 == 3)
      {
        v30 = v21 + 5;
        v31 = *(a1 + 256);
        if (v30 <= v31)
        {
          v34 = *(a1 + 264);
          v35 = v22;
        }

        else
        {
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 2 * v31;
          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
          memcpy(v34, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v33;
          *(a1 + 264) = v34;
          v35 = *(a1 + 260);
        }

        memmove(&v34[v22 + 1], &v34[v22], v35 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 4;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v23)
      {
        v36 = v21 + 2;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v22;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        memmove(&v40[v22 + 1], &v40[v22], v41 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 1;
        goto LABEL_59;
      }

      if (v23 == 1)
      {
        v24 = v21 + 3;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v22;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        memmove(&v28[v22 + 1], &v28[v22], v29 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 2;
LABEL_59:
        *(a1 + 260) += v48;
      }
    }
  }

  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

uint64_t glpTypeGetVec4s_0(uint64_t a1)
{
  v1 = glpABIGetTypeSize(0, a1, 0);

  return glpTypeSizeGetSize(v1);
}

uint64_t glpLLVMArrayType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 38;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  v13 = glp_serialized_integer32_control(a3);
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = v13;
  v21 = *(a1 + 260);
  v22 = v21 + 1;
  *(a1 + 260) = v21 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v23 = (v13 >> 1) & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v42 = v21 + 4;
        v43 = *(a1 + 256);
        if (v42 <= v43)
        {
          v46 = *(a1 + 264);
          v47 = v22;
        }

        else
        {
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = 2 * v43;
          if (v44 <= v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v44;
          }

          v46 = (*(a1 + 232))(*(a1 + 224), v45, "Vector Storage (uint8_t, growth)");
          memcpy(v46, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v45;
          *(a1 + 264) = v46;
          v47 = *(a1 + 260);
        }

        memmove(&v46[v22 + 1], &v46[v22], v47 - v22);
        v49 = *(a1 + 264) + v22;
        *(v49 + 2) = BYTE2(a3);
        *v49 = a3;
        v48 = 3;
        goto LABEL_59;
      }

      if (v23 == 3)
      {
        v30 = v21 + 5;
        v31 = *(a1 + 256);
        if (v30 <= v31)
        {
          v34 = *(a1 + 264);
          v35 = v22;
        }

        else
        {
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 2 * v31;
          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
          memcpy(v34, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v33;
          *(a1 + 264) = v34;
          v35 = *(a1 + 260);
        }

        memmove(&v34[v22 + 1], &v34[v22], v35 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 4;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v23)
      {
        v36 = v21 + 2;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v22;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        memmove(&v40[v22 + 1], &v40[v22], v41 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 1;
        goto LABEL_59;
      }

      if (v23 == 1)
      {
        v24 = v21 + 3;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v22;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        memmove(&v28[v22 + 1], &v28[v22], v29 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 2;
LABEL_59:
        *(a1 + 260) += v48;
      }
    }
  }

  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

void *glpSerializeLLVMValue(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = glp_serialized_integer32_control(a2);
  v5 = *(a1 + 260);
  v6 = v5 + 1;
  v7 = *(a1 + 256);
  if (v5 + 1 <= v7)
  {
    v10 = *(a1 + 264);
    v11 = *(a1 + 260);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 2 * v7;
    if (v8 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v10 = (*(a1 + 232))(*(a1 + 224), v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v9;
    *(a1 + 264) = v10;
    v11 = *(a1 + 260);
  }

  result = memmove(&v10[v5 + 1], &v10[v5], (v11 - v5));
  *(*(a1 + 264) + v5) = v4;
  v13 = *(a1 + 260);
  v14 = v13 + 1;
  *(a1 + 260) = v13 + 1;
  if ((v4 & 0x80000000) != 0)
  {
    v15 = (v4 >> 1) & 7;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = v13 + 4;
        v35 = *(a1 + 256);
        if (v34 <= v35)
        {
          v38 = *(a1 + 264);
          v39 = v14;
        }

        else
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = 2 * v35;
          if (v36 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          v38 = (*(a1 + 232))(*(a1 + 224), v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v37;
          *(a1 + 264) = v38;
          v39 = *(a1 + 260);
        }

        result = memmove(&v38[v14 + 1], &v38[v14], v39 - v14);
        v41 = *(a1 + 264) + v14;
        *(v41 + 2) = BYTE2(v2);
        *v41 = v2;
        v40 = 3;
      }

      else
      {
        if (v15 != 3)
        {
          return result;
        }

        v22 = v13 + 5;
        v23 = *(a1 + 256);
        if (v22 <= v23)
        {
          v26 = *(a1 + 264);
          v27 = v14;
        }

        else
        {
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = 2 * v23;
          if (v24 <= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = v24;
          }

          v26 = (*(a1 + 232))(*(a1 + 224), v25, "Vector Storage (uint8_t, growth)");
          memcpy(v26, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v25;
          *(a1 + 264) = v26;
          v27 = *(a1 + 260);
        }

        result = memmove(&v26[v14 + 1], &v26[v14], v27 - v14);
        *(*(a1 + 264) + v14) = v2;
        v40 = 4;
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
        return result;
      }

      v16 = v13 + 3;
      v17 = *(a1 + 256);
      if (v16 <= v17)
      {
        v20 = *(a1 + 264);
        v21 = v14;
      }

      else
      {
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = (*(a1 + 232))(*(a1 + 224), v19, "Vector Storage (uint8_t, growth)");
        memcpy(v20, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v19;
        *(a1 + 264) = v20;
        v21 = *(a1 + 260);
      }

      result = memmove(&v20[v14 + 1], &v20[v14], v21 - v14);
      *(*(a1 + 264) + v14) = v2;
      v40 = 2;
    }

    else
    {
      v28 = v13 + 2;
      v29 = *(a1 + 256);
      if (v28 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = v14;
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      result = memmove(&v32[v14 + 1], &v32[v14], v33 - v14);
      *(*(a1 + 264) + v14) = v2;
      v40 = 1;
    }

    *(a1 + 260) += v40;
  }

  return result;
}

const char *glpLLVMGetTypeString(const char **a1, int a2, int a3)
{
  *a1 = "";
  if (a2 > 61)
  {
    if (a2 > 63)
    {
      if (a2 == 64)
      {
        *a1 = ".f";
        return "v3f64";
      }

      else if (a2 == 65)
      {
        *a1 = ".f";
        return "v4f64";
      }

      else
      {
        return "";
      }
    }

    else
    {
      *a1 = ".f";
      if (a2 == 62)
      {
        return "f64";
      }

      else
      {
        return "v2f64";
      }
    }
  }

  else
  {
    result = "i1";
    switch(a2)
    {
      case 1:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "f32";
        v7 = "f16";
        break;
      case 2:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v2f32";
        v7 = "v2f16";
        break;
      case 3:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v3f32";
        v7 = "v3f16";
        break;
      case 4:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v4f32";
        v7 = "v4f16";
        break;
      case 5:
        v8 = ".s";
        goto LABEL_14;
      case 6:
        v9 = ".s";
        goto LABEL_20;
      case 7:
        v10 = ".s";
        goto LABEL_22;
      case 8:
        v11 = ".s";
        goto LABEL_25;
      case 9:
        return result;
      case 10:
        return "v2i1";
      case 11:
        return "v3i1";
      case 12:
        return "v4i1";
      case 36:
        v8 = ".u";
LABEL_14:
        *a1 = v8;
        v5 = a3 - 1;
        v6 = "i32";
        v7 = "i16";
        break;
      case 37:
        v9 = ".u";
LABEL_20:
        *a1 = v9;
        v5 = a3 - 1;
        v6 = "v2i32";
        v7 = "v2i16";
        break;
      case 38:
        v10 = ".u";
LABEL_22:
        *a1 = v10;
        v5 = a3 - 1;
        v6 = "v3i32";
        v7 = "v3i16";
        break;
      case 39:
        v11 = ".u";
LABEL_25:
        *a1 = v11;
        v5 = a3 - 1;
        v6 = "v4i32";
        v7 = "v4i16";
        break;
      default:
        return "";
    }

    if (v5 >= 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t glpLLVMCallFunction(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = 108;
  v21 = *(a1 + 260) + 1;
  *(a1 + 260) = v21;
  ++*(a1 + 296);
  v22 = strlen(a2) + 1;
  v23 = v22 + v21;
  v24 = *(a1 + 256);
  if (v22 + v21 <= v24)
  {
    v31 = *(a1 + 264);
    v32 = v21;
  }

  else
  {
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v25 = 2 * v24;
    v116 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a7;
    if (v25 <= v23)
    {
      v30 = v23;
    }

    else
    {
      v30 = v25;
    }

    v31 = (*(a1 + 232))(*(a1 + 224), v30, "Vector Storage (uint8_t, growth)");
    memcpy(v31, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v30;
    a7 = v29;
    a5 = v28;
    a4 = v27;
    a3 = v26;
    a2 = v116;
    *(a1 + 264) = v31;
    v32 = *(a1 + 260);
  }

  memmove(&v31[v21 + 1], &v31[v21], v32 - v21);
  memcpy((*(a1 + 264) + v21), a2, v22);
  *(a1 + 260) += v22;
  glpSerializeLLVMType(a1, a3);
  glpSerializeArrayOfLLVMValues(a1, a4, a5);
  v33 = glp_serialized_integer32_control(a7);
  v34 = *(a1 + 260);
  v35 = v34 + 1;
  v36 = *(a1 + 256);
  if (v34 + 1 <= v36)
  {
    v39 = *(a1 + 264);
    v40 = *(a1 + 260);
  }

  else
  {
    if (v36 <= 1)
    {
      v36 = 1;
    }

    v37 = 2 * v36;
    if (v37 <= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    v39 = (*(a1 + 232))(*(a1 + 224), v38, "Vector Storage (uint8_t, growth)");
    memcpy(v39, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v38;
    *(a1 + 264) = v39;
    v40 = *(a1 + 260);
  }

  memmove(&v39[v34 + 1], &v39[v34], (v40 - v34));
  *(*(a1 + 264) + v34) = v33;
  v41 = *(a1 + 260);
  v42 = v41 + 1;
  *(a1 + 260) = v41 + 1;
  if ((v33 & 0x80000000) != 0)
  {
    v43 = (v33 >> 1) & 7;
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        v62 = v41 + 4;
        v63 = *(a1 + 256);
        if (v62 <= v63)
        {
          v66 = *(a1 + 264);
          v67 = v42;
        }

        else
        {
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = 2 * v63;
          if (v64 <= v62)
          {
            v65 = v62;
          }

          else
          {
            v65 = v64;
          }

          v66 = (*(a1 + 232))(*(a1 + 224), v65, "Vector Storage (uint8_t, growth)");
          memcpy(v66, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v65;
          *(a1 + 264) = v66;
          v67 = *(a1 + 260);
        }

        memmove(&v66[v42 + 1], &v66[v42], v67 - v42);
        v69 = *(a1 + 264) + v42;
        *(v69 + 2) = BYTE2(a7);
        *v69 = a7;
        v68 = 3;
      }

      else
      {
        if (v43 != 3)
        {
          goto LABEL_67;
        }

        v50 = v41 + 5;
        v51 = *(a1 + 256);
        if (v50 <= v51)
        {
          v54 = *(a1 + 264);
          v55 = v42;
        }

        else
        {
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = 2 * v51;
          if (v52 <= v50)
          {
            v53 = v50;
          }

          else
          {
            v53 = v52;
          }

          v54 = (*(a1 + 232))(*(a1 + 224), v53, "Vector Storage (uint8_t, growth)");
          memcpy(v54, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v53;
          *(a1 + 264) = v54;
          v55 = *(a1 + 260);
        }

        memmove(&v54[v42 + 1], &v54[v42], v55 - v42);
        *(*(a1 + 264) + v42) = a7;
        v68 = 4;
      }
    }

    else if (v43)
    {
      v44 = v41 + 3;
      v45 = *(a1 + 256);
      if (v44 <= v45)
      {
        v48 = *(a1 + 264);
        v49 = v42;
      }

      else
      {
        if (v45 <= 1)
        {
          v45 = 1;
        }

        v46 = 2 * v45;
        if (v46 <= v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v46;
        }

        v48 = (*(a1 + 232))(*(a1 + 224), v47, "Vector Storage (uint8_t, growth)");
        memcpy(v48, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v47;
        *(a1 + 264) = v48;
        v49 = *(a1 + 260);
      }

      memmove(&v48[v42 + 1], &v48[v42], v49 - v42);
      *(*(a1 + 264) + v42) = a7;
      v68 = 2;
    }

    else
    {
      v56 = v41 + 2;
      v57 = *(a1 + 256);
      if (v56 <= v57)
      {
        v60 = *(a1 + 264);
        v61 = v42;
      }

      else
      {
        if (v57 <= 1)
        {
          v57 = 1;
        }

        v58 = 2 * v57;
        if (v58 <= v56)
        {
          v59 = v56;
        }

        else
        {
          v59 = v58;
        }

        v60 = (*(a1 + 232))(*(a1 + 224), v59, "Vector Storage (uint8_t, growth)");
        memcpy(v60, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v59;
        *(a1 + 264) = v60;
        v61 = *(a1 + 260);
      }

      memmove(&v60[v42 + 1], &v60[v42], v61 - v42);
      *(*(a1 + 264) + v42) = a7;
      v68 = 1;
    }

    v42 = *(a1 + 260) + v68;
    *(a1 + 260) = v42;
  }

LABEL_67:
  if (a7)
  {
    v70 = a7;
    while (1)
    {
      v72 = *a6++;
      v71 = v72;
      v73 = glp_serialized_integer32_control(v72);
      v74 = *(a1 + 260);
      v75 = v74 + 1;
      v76 = *(a1 + 256);
      if (v74 + 1 <= v76)
      {
        v79 = *(a1 + 264);
        v80 = *(a1 + 260);
      }

      else
      {
        if (v76 <= 1)
        {
          v76 = 1;
        }

        v77 = 2 * v76;
        if (v77 <= v75)
        {
          v78 = v75;
        }

        else
        {
          v78 = v77;
        }

        v79 = (*(a1 + 232))(*(a1 + 224), v78, "Vector Storage (uint8_t, growth)");
        memcpy(v79, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v78;
        *(a1 + 264) = v79;
        v80 = *(a1 + 260);
      }

      memmove(&v79[v74 + 1], &v79[v74], (v80 - v74));
      *(*(a1 + 264) + v74) = v73;
      v81 = *(a1 + 260);
      v42 = v81 + 1;
      *(a1 + 260) = v81 + 1;
      if ((v73 & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      v82 = (v73 >> 1) & 7;
      if (v82 <= 1)
      {
        break;
      }

      if (v82 == 2)
      {
        v101 = v81 + 4;
        v102 = *(a1 + 256);
        if (v101 <= v102)
        {
          v105 = *(a1 + 264);
          v106 = v42;
        }

        else
        {
          if (v102 <= 1)
          {
            v102 = 1;
          }

          v103 = 2 * v102;
          if (v103 <= v101)
          {
            v104 = v101;
          }

          else
          {
            v104 = v103;
          }

          v105 = (*(a1 + 232))(*(a1 + 224), v104, "Vector Storage (uint8_t, growth)");
          memcpy(v105, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v104;
          *(a1 + 264) = v105;
          v106 = *(a1 + 260);
        }

        memmove(&v105[v42 + 1], &v105[v42], v106 - v42);
        v108 = *(a1 + 264) + v42;
        *(v108 + 2) = BYTE2(v71);
        *v108 = v71;
        v107 = 3;
        goto LABEL_118;
      }

      if (v82 == 3)
      {
        v89 = v81 + 5;
        v90 = *(a1 + 256);
        if (v89 <= v90)
        {
          v93 = *(a1 + 264);
          v94 = v42;
        }

        else
        {
          if (v90 <= 1)
          {
            v90 = 1;
          }

          v91 = 2 * v90;
          if (v91 <= v89)
          {
            v92 = v89;
          }

          else
          {
            v92 = v91;
          }

          v93 = (*(a1 + 232))(*(a1 + 224), v92, "Vector Storage (uint8_t, growth)");
          memcpy(v93, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v92;
          *(a1 + 264) = v93;
          v94 = *(a1 + 260);
        }

        memmove(&v93[v42 + 1], &v93[v42], v94 - v42);
        *(*(a1 + 264) + v42) = v71;
        v107 = 4;
        goto LABEL_118;
      }

LABEL_119:
      if (!--v70)
      {
        goto LABEL_120;
      }
    }

    if (v82)
    {
      v83 = v81 + 3;
      v84 = *(a1 + 256);
      if (v83 <= v84)
      {
        v87 = *(a1 + 264);
        v88 = v42;
      }

      else
      {
        if (v84 <= 1)
        {
          v84 = 1;
        }

        v85 = 2 * v84;
        if (v85 <= v83)
        {
          v86 = v83;
        }

        else
        {
          v86 = v85;
        }

        v87 = (*(a1 + 232))(*(a1 + 224), v86, "Vector Storage (uint8_t, growth)");
        memcpy(v87, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v86;
        *(a1 + 264) = v87;
        v88 = *(a1 + 260);
      }

      memmove(&v87[v42 + 1], &v87[v42], v88 - v42);
      *(*(a1 + 264) + v42) = v71;
      v107 = 2;
    }

    else
    {
      v95 = v81 + 2;
      v96 = *(a1 + 256);
      if (v95 <= v96)
      {
        v99 = *(a1 + 264);
        v100 = v42;
      }

      else
      {
        if (v96 <= 1)
        {
          v96 = 1;
        }

        v97 = 2 * v96;
        if (v97 <= v95)
        {
          v98 = v95;
        }

        else
        {
          v98 = v97;
        }

        v99 = (*(a1 + 232))(*(a1 + 224), v98, "Vector Storage (uint8_t, growth)");
        memcpy(v99, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v98;
        *(a1 + 264) = v99;
        v100 = *(a1 + 260);
      }

      memmove(&v99[v42 + 1], &v99[v42], v100 - v42);
      *(*(a1 + 264) + v42) = v71;
      v107 = 1;
    }

LABEL_118:
    v42 = *(a1 + 260) + v107;
    *(a1 + 260) = v42;
    goto LABEL_119;
  }

LABEL_120:
  if (*(a1 + 300))
  {
    v109 = v42 + 1;
    v110 = *(a1 + 256);
    if (v42 + 1 <= v110)
    {
      v113 = *(a1 + 264);
      v114 = v42;
    }

    else
    {
      if (v110 <= 1)
      {
        v110 = 1;
      }

      v111 = 2 * v110;
      if (v111 <= v109)
      {
        v112 = v109;
      }

      else
      {
        v112 = v111;
      }

      v113 = (*(a1 + 232))(*(a1 + 224), v112, "Vector Storage (uint8_t, growth)");
      memcpy(v113, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v112;
      *(a1 + 264) = v113;
      v114 = *(a1 + 260);
    }

    memmove(&v113[v42 + 1], &v113[v42], v114 - v42);
    *(*(a1 + 264) + v42) = 0;
    ++*(a1 + 260);
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

void *glpSerializeArrayOfLLVMValues(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  LODWORD(v3) = a3;
  v6 = glp_serialized_integer32_control(a3);
  v7 = *(a1 + 260);
  v8 = v7 + 1;
  v9 = *(a1 + 256);
  if (v7 + 1 <= v9)
  {
    v12 = *(a1 + 264);
    v13 = *(a1 + 260);
  }

  else
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 2 * v9;
    if (v10 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    v12 = (*(a1 + 232))(*(a1 + 224), v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v11;
    *(a1 + 264) = v12;
    v13 = *(a1 + 260);
  }

  result = memmove(&v12[v7 + 1], &v12[v7], (v13 - v7));
  *(*(a1 + 264) + v7) = v6;
  v15 = *(a1 + 260);
  v16 = v15 + 1;
  *(a1 + 260) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = *(a1 + 264) + v16;
        *(v43 + 2) = BYTE2(v3);
        *v43 = v3;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_51;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(*(a1 + 264) + v16) = v3;
        v42 = 4;
      }
    }

    else if (v17)
    {
      v18 = v15 + 3;
      v19 = *(a1 + 256);
      if (v18 <= v19)
      {
        v22 = *(a1 + 264);
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (*(a1 + 232))(*(a1 + 224), v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v21;
        *(a1 + 264) = v22;
        v23 = *(a1 + 260);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(*(a1 + 264) + v16) = v3;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 256);
      if (v30 <= v31)
      {
        v34 = *(a1 + 264);
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v33;
        *(a1 + 264) = v34;
        v35 = *(a1 + 260);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(*(a1 + 264) + v16) = v3;
      v42 = 1;
    }

    *(a1 + 260) += v42;
  }

LABEL_51:
  if (v3)
  {
    v3 = v3;
    do
    {
      v44 = *a2++;
      result = glpSerializeLLVMValue(a1, v44);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t glpLLVMAggregateConstant(void *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = 1;
  v7 = glpLLVMGetMinCommonType(a2, &v20, &v19);
  v8 = glpABIGetTypeSize(0, a2, 0);
  Size = glpTypeSizeGetSize(v8);
  v10 = v20;
  VectorType = glpGetVectorType(v7, v20);
  MEMORY[0x28223BE20](VectorType);
  v13 = &v19 - v12;
  bzero(&v19 - v12, v14);
  v15 = v19;
  glpLLVMCreateConstantVectors(a1, v13, 0, a4, a2, VectorType, v19);
  v16 = glpPrimitiveTypeToLLVMType(a1, v7, v15);
  if (v10 >= 2)
  {
    v16 = glpLLVMVectorType(a1, v16, v10);
  }

  result = glpLLVMConstArrayCache(a1, v16, v13, Size);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMPrimitiveConstant(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v14 = glpPrimitiveTypeToLLVMType(a1, a6, a7);
  result = glpPrimitiveTypeGetCategory(a5);
  if ((result - 1) >= 2)
  {
    if (result == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a5);
      PrimitiveType = glpGetPrimitiveType(a5);
      v19 = glpABIGetTypeSize(0, PrimitiveType, 0);
      result = glpTypeSizeGetSize(v19);
      if (result)
      {
        v20 = result;
        do
        {
          result = glpLLVMPrimitiveConstant(a1, a2, a3, a4, ColumnType, a6, a7);
          a4 = (a4 + 1);
          a2 += 16;
          --v20;
        }

        while (v20);
      }
    }

    goto LABEL_15;
  }

  if (glpPrimitiveTypeGetCategory(a6) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a6);
  }

  else
  {
    Length = 1;
  }

  if (glpPrimitiveTypeGetCategory(a5) == 2)
  {
    v21 = glpPrimitiveVectorGetLength(a5);
  }

  else
  {
    v21 = 1;
  }

  if (Length == 1)
  {
    result = glpGetPConst(a1, v14, a6, a2, 0);
    *(a3 + 8 * a4) = result;
LABEL_15:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  ElementType = glpPrimitiveVectorGetElementType(a6);
  v24 = glpLLVMGetElementType(a1, v14);
  v33[1] = v33;
  v34 = Length;
  MEMORY[0x28223BE20](v24);
  v26 = v33 - v25;
  bzero(v33 - v25, v27);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      *&v26[8 * i] = glpGetPConst(a1, v24, ElementType, a2, i);
    }
  }

  v29 = v34;
  v30 = v34 - v21;
  if (v34 > v21)
  {
    v31 = &v26[8 * v21];
    do
    {
      *v31++ = glpLLVMConstFromTypeCache(a1, 37, v24);
      --v30;
    }

    while (v30);
  }

  result = glpLLVMConstVectorCache(a1, v26, v29);
  *(a3 + 8 * a4) = result;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMConstArrayCache(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*(a1 + 832) & 4) != 0)
  {
    v9 = 8 * a4;
    v10 = 8 * a4 + 16;
    v11 = (*(a1 + 368))(*(a1 + 360), v9 + 16, "");
    *v11 = 34;
    *(v11 + 4) = a2;
    *(v11 + 3) = a4;
    memcpy(v11 + 16, a3, 8 * a4);
    if (v10)
    {
      v12 = v9 + 16;
      LODWORD(v13) = v9 + 16;
      do
      {
        v13 = (32 * v13 + (v13 >> 2) + v11[v12 - 1]) ^ v13;
        v12 += ~(v10 >> 5);
      }

      while (v12 > v10 >> 5);
      v14 = v13 << 32;
    }

    else
    {
      v14 = 0;
    }

    v15 = v10 & 0xFFFFFFF8;
    v16 = glpDataHashGet(*(a1 + 392), v11, v14 | v15);
    if (v16)
    {
      v17 = v16;
      (*(a1 + 384))(*(a1 + 360), v11);
    }

    else
    {
      v17 = glpLLVMConstArray(a1, a2, a3, a4);
      glpDataHashPut(*(a1 + 392), v11, v14 | v15, v17, v18);
    }

    return v17;
  }

  else
  {

    return glpLLVMConstArray(a1, a2, a3, a4);
  }
}

uint64_t glpLLVMGetMinCommonType(uint64_t ElementType, int *a2, _DWORD *a3)
{
LABEL_1:
  v5 = ElementType;
  while (1)
  {
    Kind = glpTypeGetKind(v5);
    if (Kind > 2)
    {
      if (Kind == 3)
      {
        ElementType = glpBankTypeGetElementType(v5);
        goto LABEL_1;
      }

      return 0;
    }

    if (Kind != 2)
    {
      break;
    }

    do
    {
      v5 = glpArrayTypeGetElementType(v5);
    }

    while (glpTypeGetKind(v5) == 2);
  }

  if (Kind)
  {
    if (Kind == 1)
    {
      ElementCount = glpAggregateTypeGetElementCount(v5);
      if (ElementCount)
      {
        v8 = ElementCount;
        v9 = 0;
        LODWORD(v10) = 0;
        do
        {
          v11 = glpAggregateTypeGetElementType(v5, v9);
          ElementFlags = glpAggregateTypeGetElementFlags(v5, v9);
          v25 = 0;
          v24 = glpPrecisionIndexFromSAFlags(ElementFlags);
          v13 = glpLLVMGetMinCommonType(v11, &v25, &v24);
          if (v9)
          {
            if (v10 == v13)
            {
              v10 = v10;
            }

            else
            {
              v10 = 5;
            }

            if (!v24 || v24 == 3 || v24 == 2 && *a3 == 1)
            {
              *a3 = v24;
            }

            if (v25 > *a2)
            {
              *a2 = v25;
            }
          }

          else
          {
            v14 = v24;
            *a2 = v25;
            *a3 = v14;
            v10 = v13;
          }

          ++v9;
        }

        while (v8 != v9);
        return v10;
      }
    }

    return 0;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v5);
  Category = glpPrimitiveTypeGetCategory(PrimitiveType);
  v10 = 0;
  if (Category > 2)
  {
    if (Category != 3)
    {
      if (Category != 4)
      {
        return v10;
      }

      *a2 = 1;
      *a3 = 3;
      return 5;
    }

    ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
    ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
    Length = glpPrimitiveVectorGetLength(ColumnType);
    if (ScalarType != 62)
    {
      *a2 = Length;
      v19 = ColumnType;
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (Category == 1)
  {
    if (PrimitiveType != 62)
    {
      *a2 = 1;
      return PrimitiveType;
    }

    v20 = 2;
    goto LABEL_40;
  }

  if (Category != 2)
  {
    return v10;
  }

  v17 = glpPrimitiveVectorGetElementType(PrimitiveType);
  Length = glpPrimitiveVectorGetLength(PrimitiveType);
  if (v17 == 62)
  {
LABEL_38:
    v20 = 2 * Length;
    if ((2 * Length) >= 4)
    {
      v20 = 4;
    }

LABEL_40:
    *a2 = v20;
    return 5;
  }

  *a2 = Length;
  v19 = PrimitiveType;
LABEL_45:

  return glpPrimitiveVectorGetElementType(v19);
}

uint64_t glpLLVMCreateConstantVectors(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  Kind = glpTypeGetKind(a5);
  if (Kind == 2)
  {
    ElementCount = glpArrayTypeGetElementCount(v9);
    ElementType = glpArrayTypeGetElementType(v9);
    v27 = glpABIGetTypeSize(0, ElementType, 0);
    result = glpTypeSizeGetSize(v27);
    if (ElementCount)
    {
      v28 = result;
      v29 = 16 * result;
      do
      {
        result = glpLLVMCreateConstantVectors(a1, a2, a3, a4, ElementType, a6, a7);
        a3 = (a3 + v28);
        a4 += v29;
        --ElementCount;
      }

      while (ElementCount);
    }
  }

  else if (Kind == 1)
  {
    result = glpAggregateTypeGetElementCount(v9);
    if (result)
    {
      v17 = 0;
      v30 = result;
      do
      {
        v18 = a6;
        v19 = a7;
        v20 = glpAggregateTypeGetElementType(v9, v17);
        v21 = glpABIGetTypeSize(0, v20, 0);
        v22 = v9;
        Size = glpTypeSizeGetSize(v21);
        v24 = v20;
        a7 = v19;
        a6 = v18;
        glpLLVMCreateConstantVectors(a1, a2, a3, a4, v24, v18, a7);
        result = v30;
        a4 += 16 * Size;
        a3 = Size + a3;
        v9 = v22;
        ++v17;
      }

      while (v30 != v17);
    }
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v9);

    return glpLLVMPrimitiveConstant(a1, a4, a2, a3, PrimitiveType, a6, a7);
  }

  return result;
}

uint64_t glpGetComponentCount(uint64_t a1)
{
  if (glpPrimitiveTypeGetCategory(a1) != 2)
  {
    return 1;
  }

  return glpPrimitiveVectorGetLength(a1);
}

uint64_t glpGetPConst(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3 <= 8)
  {
    if (a3 == 1)
    {
      v5 = *(a4 + 4 * a5);
      return glpLLVMConstRealCache(a1, a2, v5);
    }

    if (a3 != 5)
    {
      return 0;
    }

    v6 = *(a4 + 4 * a5);
    v7 = 1;
    return glpLLVMConstIntCache(a1, a2, v6, v7);
  }

  switch(a3)
  {
    case 9:
      v6 = *(a4 + 4 * a5);
LABEL_13:
      v7 = 0;
      return glpLLVMConstIntCache(a1, a2, v6, v7);
    case 36:
      v6 = *(a4 + 4 * a5);
      goto LABEL_13;
    case 62:
      v5 = *(a4 + 8 * a5);
      return glpLLVMConstRealCache(a1, a2, v5);
  }

  return 0;
}

uint64_t glpLLVMGetElementType(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 41;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

uint64_t glpLLVMConstVectorCache(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(a1 + 832) & 4) != 0)
  {
    v7 = 8 * a3;
    v8 = 8 * a3 + 8;
    v9 = (*(a1 + 368))(*(a1 + 360), v7 + 8, "");
    *v9 = 33;
    v9[1] = a3;
    memcpy(v9 + 2, a2, 8 * a3);
    if (v8)
    {
      v10 = v7 + 8;
      LODWORD(v11) = v7 + 8;
      do
      {
        v11 = (32 * v11 + (v11 >> 2) + *(v9 + v10 - 1)) ^ v11;
        v10 += ~(v8 >> 5);
      }

      while (v10 > v8 >> 5);
      v12 = v11 << 32;
    }

    else
    {
      v12 = 0;
    }

    v13 = v8 & 0xFFFFFFF8;
    v14 = glpDataHashGet(*(a1 + 392), v9, v12 | v13);
    if (v14)
    {
      v15 = v14;
      (*(a1 + 384))(*(a1 + 360), v9);
    }

    else
    {
      v15 = glpLLVMConstVector(a1, a2, a3);
      glpDataHashPut(*(a1 + 392), v9, v12 | v13, v15, v16);
    }

    return v15;
  }

  else
  {

    return glpLLVMConstVector(a1, a2, a3);
  }
}

uint64_t glpLLVMConstIntCache(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((*(a1 + 832) & 4) != 0)
  {
    *v15 = 30;
    *&v15[4] = a2;
    *&v15[12] = a3;
    v15[20] = a4;
    LODWORD(v9) = 21;
    for (i = 20; i != -1; --i)
    {
      v9 = (32 * v9 + (v9 >> 2) + v15[i]) ^ v9;
    }

    v11 = (v9 << 32) | 0x15;
    v12 = glpDataHashGet(*(a1 + 392), v15, v11);
    if (!v12)
    {
      v12 = glpLLVMConstInt(a1, a2, a3, a4);
      v13 = (*(a1 + 368))(*(a1 + 360), 21, "");
      v14 = *v15;
      *(v13 + 13) = *&v15[13];
      *v13 = v14;
      glpDataHashPut(*(a1 + 392), v13, v11, v12, *&v14);
    }

    return v12;
  }

  else
  {

    return glpLLVMConstInt(a1, a2, a3, a4);
  }
}

uint64_t glpLLVMConstRealCache(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a1 + 832) & 4) != 0)
  {
    *v13 = 32;
    *&v13[4] = a2;
    *&v13[12] = a3;
    LODWORD(v7) = 20;
    for (i = 19; i != -1; --i)
    {
      v7 = (32 * v7 + (v7 >> 2) + v13[i]) ^ v7;
    }

    v9 = (v7 << 32) | 0x14;
    v10 = glpDataHashGet(*(a1 + 392), v13, v9);
    if (!v10)
    {
      v10 = glpLLVMConstReal(a1, a2, a3);
      v11 = (*(a1 + 368))(*(a1 + 360), 20, "");
      v12 = *v13;
      v11[4] = *&v13[16];
      *v11 = v12;
      glpDataHashPut(*(a1 + 392), v11, v9, v10, *&v12);
    }

    return v10;
  }

  else
  {

    return glpLLVMConstReal(a1, a2, a3);
  }
}

uint64_t glpLLVMConstInt(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(a1 + 260);
  v9 = v8 + 1;
  v10 = *(a1 + 256);
  if (v8 + 1 <= v10)
  {
    v13 = *(a1 + 264);
    v14 = *(a1 + 260);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 2 * v10;
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v12;
    *(a1 + 264) = v13;
    v14 = *(a1 + 260);
  }

  memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
  *(*(a1 + 264) + v8) = 30;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  v15 = *(a1 + 260);
  v16 = v15 + 1;
  v17 = *(a1 + 256);
  if (v15 + 1 <= v17)
  {
    v20 = *(a1 + 264);
    v21 = *(a1 + 260);
  }

  else
  {
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = 2 * v17;
    if (v18 <= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    v20 = (*(a1 + 232))(*(a1 + 224), v19, "Vector Storage (uint8_t, growth)");
    memcpy(v20, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v19;
    *(a1 + 264) = v20;
    v21 = *(a1 + 260);
  }

  memmove(&v20[v15 + 1], &v20[v15], (v21 - v15));
  *(*(a1 + 264) + v15) = a4;
  ++*(a1 + 260);
  v22 = glp_serialized_integer64_control(a3);
  v23 = *(a1 + 260);
  v24 = v23 + 1;
  v25 = *(a1 + 256);
  if (v23 + 1 <= v25)
  {
    v28 = *(a1 + 264);
    v29 = *(a1 + 260);
  }

  else
  {
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v26 = 2 * v25;
    if (v26 <= v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
    memcpy(v28, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v27;
    *(a1 + 264) = v28;
    v29 = *(a1 + 260);
  }

  memmove(&v28[v23 + 1], &v28[v23], (v29 - v23));
  *(*(a1 + 264) + v23) = v22;
  v30 = *(a1 + 260);
  v31 = v30 + 1;
  *(a1 + 260) = v30 + 1;
  if ((v22 & 0x80000000) != 0)
  {
    v32 = (v22 >> 1) & 7;
    if (v32 > 3)
    {
      if (((v22 >> 1) & 7) <= 5)
      {
        v39 = v30 + 5;
        if (v32 == 4)
        {
          v40 = *(a1 + 256);
          if (v39 <= v40)
          {
            v43 = *(a1 + 264);
            v44 = v31;
          }

          else
          {
            if (v40 <= 1)
            {
              v40 = 1;
            }

            v41 = 2 * v40;
            if (v41 <= v39)
            {
              v42 = v39;
            }

            else
            {
              v42 = v41;
            }

            v43 = (*(a1 + 232))(*(a1 + 224), v42, "Vector Storage (uint8_t, growth)");
            memcpy(v43, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v42;
            *(a1 + 264) = v43;
            v44 = *(a1 + 260);
          }

          memmove(&v43[v31 + 1], &v43[v31], v44 - v31);
          *(*(a1 + 264) + v31) = a3;
          v82 = *(a1 + 260);
          v31 = v82 + 4;
          *(a1 + 260) = v82 + 4;
          v83 = v82 + 5;
          v84 = *(a1 + 256);
          if (v83 <= v84)
          {
            v87 = *(a1 + 264);
            v88 = v31;
          }

          else
          {
            if (v84 <= 1)
            {
              v84 = 1;
            }

            v85 = 2 * v84;
            if (v85 <= v83)
            {
              v86 = v83;
            }

            else
            {
              v86 = v85;
            }

            v87 = (*(a1 + 232))(*(a1 + 224), v86, "Vector Storage (uint8_t, growth)");
            memcpy(v87, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v86;
            *(a1 + 264) = v87;
            v88 = *(a1 + 260);
          }

          a3 >>= 32;
          v81 = v88 - v31;
          v80 = &v87[v31];
          goto LABEL_125;
        }

        v63 = *(a1 + 256);
        if (v39 <= v63)
        {
          v66 = *(a1 + 264);
          v67 = v31;
        }

        else
        {
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = 2 * v63;
          if (v64 <= v39)
          {
            v65 = v39;
          }

          else
          {
            v65 = v64;
          }

          v66 = (*(a1 + 232))(*(a1 + 224), v65, "Vector Storage (uint8_t, growth)");
          memcpy(v66, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v65;
          *(a1 + 264) = v66;
          v67 = *(a1 + 260);
        }

        memmove(&v66[v31 + 1], &v66[v31], v67 - v31);
        *(*(a1 + 264) + v31) = a3;
        v100 = *(a1 + 260);
        v31 = v100 + 4;
        *(a1 + 260) = v100 + 4;
        v101 = v100 + 6;
        v102 = *(a1 + 256);
        if (v101 <= v102)
        {
          v105 = *(a1 + 264);
          v106 = v31;
        }

        else
        {
          if (v102 <= 1)
          {
            v102 = 1;
          }

          v103 = 2 * v102;
          if (v103 <= v101)
          {
            v104 = v101;
          }

          else
          {
            v104 = v103;
          }

          v105 = (*(a1 + 232))(*(a1 + 224), v104, "Vector Storage (uint8_t, growth)");
          memcpy(v105, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v104;
          *(a1 + 264) = v105;
          v106 = *(a1 + 260);
        }

        a3 >>= 32;
        v99 = v106 - v31;
        v98 = &v105[v31];
LABEL_131:
        memmove(v98 + 1, v98, v99);
        *(*(a1 + 264) + v31) = a3;
        v107 = 2;
        goto LABEL_132;
      }

      if (v32 != 6)
      {
        v74 = v30 + 9;
        v75 = *(a1 + 256);
        if (v74 <= v75)
        {
          v78 = *(a1 + 264);
          v79 = v31;
        }

        else
        {
          if (v75 <= 1)
          {
            v75 = 1;
          }

          v76 = 2 * v75;
          if (v76 <= v74)
          {
            v77 = v74;
          }

          else
          {
            v77 = v76;
          }

          v78 = (*(a1 + 232))(*(a1 + 224), v77, "Vector Storage (uint8_t, growth)");
          memcpy(v78, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v77;
          *(a1 + 264) = v78;
          v79 = *(a1 + 260);
        }

        memmove(&v78[v31 + 1], &v78[v31], v79 - v31);
        *(*(a1 + 264) + v31) = a3;
        v107 = 8;
        goto LABEL_132;
      }

      v51 = v30 + 5;
      v52 = *(a1 + 256);
      if (v51 <= v52)
      {
        v55 = *(a1 + 264);
        v56 = v31;
      }

      else
      {
        if (v52 <= 1)
        {
          v52 = 1;
        }

        v53 = 2 * v52;
        if (v53 <= v51)
        {
          v54 = v51;
        }

        else
        {
          v54 = v53;
        }

        v55 = (*(a1 + 232))(*(a1 + 224), v54, "Vector Storage (uint8_t, growth)");
        memcpy(v55, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v54;
        *(a1 + 264) = v55;
        v56 = *(a1 + 260);
      }

      memmove(&v55[v31 + 1], &v55[v31], v56 - v31);
      *(*(a1 + 264) + v31) = a3;
      v90 = *(a1 + 260);
      v91 = v90 + 4;
      *(a1 + 260) = v90 + 4;
      v92 = v90 + 7;
      v93 = *(a1 + 256);
      if (v92 <= v93)
      {
        v96 = *(a1 + 264);
        v97 = v91;
      }

      else
      {
        if (v93 <= 1)
        {
          v93 = 1;
        }

        v94 = 2 * v93;
        if (v94 <= v92)
        {
          v95 = v92;
        }

        else
        {
          v95 = v94;
        }

        v96 = (*(a1 + 232))(*(a1 + 224), v95, "Vector Storage (uint8_t, growth)");
        memcpy(v96, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v95;
        *(a1 + 264) = v96;
        v97 = *(a1 + 260);
      }

      memmove(&v96[v91 + 1], &v96[v91], v97 - v91);
      v108 = *(a1 + 264) + v91;
      *(v108 + 2) = BYTE6(a3);
      *v108 = WORD2(a3);
    }

    else
    {
      if (((v22 >> 1) & 7) <= 1)
      {
        if (!v32)
        {
          v33 = v30 + 2;
          v34 = *(a1 + 256);
          if (v33 <= v34)
          {
            v37 = *(a1 + 264);
            v38 = v31;
          }

          else
          {
            if (v34 <= 1)
            {
              v34 = 1;
            }

            v35 = 2 * v34;
            if (v35 <= v33)
            {
              v36 = v33;
            }

            else
            {
              v36 = v35;
            }

            v37 = (*(a1 + 232))(*(a1 + 224), v36, "Vector Storage (uint8_t, growth)");
            memcpy(v37, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v36;
            *(a1 + 264) = v37;
            v38 = *(a1 + 260);
          }

          v80 = &v37[v31];
          v81 = v38 - v31;
LABEL_125:
          memmove(v80 + 1, v80, v81);
          *(*(a1 + 264) + v31) = a3;
          v107 = 1;
LABEL_132:
          *(a1 + 260) += v107;
          goto LABEL_133;
        }

        v57 = v30 + 3;
        v58 = *(a1 + 256);
        if (v57 <= v58)
        {
          v61 = *(a1 + 264);
          v62 = v31;
        }

        else
        {
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = 2 * v58;
          if (v59 <= v57)
          {
            v60 = v57;
          }

          else
          {
            v60 = v59;
          }

          v61 = (*(a1 + 232))(*(a1 + 224), v60, "Vector Storage (uint8_t, growth)");
          memcpy(v61, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v60;
          *(a1 + 264) = v61;
          v62 = *(a1 + 260);
        }

        v98 = &v61[v31];
        v99 = v62 - v31;
        goto LABEL_131;
      }

      if (v32 != 2)
      {
        v68 = v30 + 5;
        v69 = *(a1 + 256);
        if (v68 <= v69)
        {
          v72 = *(a1 + 264);
          v73 = v31;
        }

        else
        {
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = 2 * v69;
          if (v70 <= v68)
          {
            v71 = v68;
          }

          else
          {
            v71 = v70;
          }

          v72 = (*(a1 + 232))(*(a1 + 224), v71, "Vector Storage (uint8_t, growth)");
          memcpy(v72, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v71;
          *(a1 + 264) = v72;
          v73 = *(a1 + 260);
        }

        memmove(&v72[v31 + 1], &v72[v31], v73 - v31);
        *(*(a1 + 264) + v31) = a3;
        v107 = 4;
        goto LABEL_132;
      }

      v45 = v30 + 4;
      v46 = *(a1 + 256);
      if (v45 <= v46)
      {
        v49 = *(a1 + 264);
        v50 = v31;
      }

      else
      {
        if (v46 <= 1)
        {
          v46 = 1;
        }

        v47 = 2 * v46;
        if (v47 <= v45)
        {
          v48 = v45;
        }

        else
        {
          v48 = v47;
        }

        v49 = (*(a1 + 232))(*(a1 + 224), v48, "Vector Storage (uint8_t, growth)");
        memcpy(v49, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v48;
        *(a1 + 264) = v49;
        v50 = *(a1 + 260);
      }

      memmove(&v49[v31 + 1], &v49[v31], v50 - v31);
      v89 = *(a1 + 264) + v31;
      *(v89 + 2) = BYTE2(a3);
      *v89 = a3;
    }

    v107 = 3;
    goto LABEL_132;
  }

LABEL_133:
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMConstReal(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 32;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  v13 = *(a1 + 260);
  v14 = v13 + 8;
  v15 = *(a1 + 256);
  if (v13 + 8 <= v15)
  {
    v18 = *(a1 + 264);
    v19 = *(a1 + 260);
  }

  else
  {
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = 2 * v15;
    if (v16 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    v18 = (*(a1 + 232))(*(a1 + 224), v17, "Vector Storage (uint8_t, growth)");
    memcpy(v18, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v17;
    *(a1 + 264) = v18;
    v19 = *(a1 + 260);
  }

  memmove(&v18[v13 + 1], &v18[v13], (v19 - v13));
  *(*(a1 + 264) + v13) = a3;
  *(a1 + 260) += 8;
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMConstVector(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 33;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeArrayOfLLVMValues(a1, a2, a3);
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMConstArray(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 260);
  v9 = v8 + 1;
  v10 = *(a1 + 256);
  if (v8 + 1 <= v10)
  {
    v13 = *(a1 + 264);
    v14 = *(a1 + 260);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 2 * v10;
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v12;
    *(a1 + 264) = v13;
    v14 = *(a1 + 260);
  }

  memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
  *(*(a1 + 264) + v8) = 34;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  glpSerializeArrayOfLLVMValues(a1, a3, a4);
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpBuildAlloca(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 21;
  v11 = *(a1 + 260);
  v12 = v11 + 1;
  *(a1 + 260) = v11 + 1;
  ++*(a1 + 296);
  v13 = *(a1 + 312);
  *(a1 + 312) = v13 + 1;
  v14 = *(a1 + 176);
  v15 = v11 + 2;
  v16 = *(a1 + 256);
  if (v15 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = v12;
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v12 + 1], &v19[v12], v20 - v12);
  *(*(a1 + 264) + v12) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v14);
  v21 = *(a1 + 260);
  v22 = v21 + 1;
  v23 = *(a1 + 256);
  if (v21 + 1 <= v23)
  {
    v26 = *(a1 + 264);
    v27 = *(a1 + 260);
  }

  else
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    v24 = 2 * v23;
    if (v24 <= v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = v24;
    }

    v26 = (*(a1 + 232))(*(a1 + 224), v25, "Vector Storage (uint8_t, growth)");
    memcpy(v26, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v25;
    *(a1 + 264) = v26;
    v27 = *(a1 + 260);
  }

  memmove(&v26[v21 + 1], &v26[v21], (v27 - v21));
  *(*(a1 + 264) + v21) = 44;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  v28 = *(a1 + 260);
  if (*(a1 + 300))
  {
    v29 = v28 + 1;
    v30 = *(a1 + 256);
    if (v28 + 1 <= v30)
    {
      v33 = *(a1 + 264);
      v34 = *(a1 + 260);
    }

    else
    {
      if (v30 <= 1)
      {
        v30 = 1;
      }

      v31 = 2 * v30;
      if (v31 <= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      v33 = (*(a1 + 232))(*(a1 + 224), v32, "Vector Storage (uint8_t, growth)");
      memcpy(v33, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v32;
      *(a1 + 264) = v33;
      v34 = *(a1 + 260);
    }

    memmove(&v33[v28 + 1], &v33[v28], (v34 - v28));
    *(*(a1 + 264) + v28) = 0;
    LODWORD(v28) = *(a1 + 260) + 1;
    *(a1 + 260) = v28;
  }

  v35 = *(a1 + 308);
  *(a1 + 308) = v35 + 1;
  v36 = v28 + 1;
  v37 = *(a1 + 256);
  if (v28 + 1 <= v37)
  {
    v40 = *(a1 + 264);
    v41 = v28;
  }

  else
  {
    if (v37 <= 1)
    {
      v37 = 1;
    }

    v38 = 2 * v37;
    if (v38 <= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v38;
    }

    v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
    memcpy(v40, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v39;
    *(a1 + 264) = v40;
    v41 = *(a1 + 260);
  }

  memmove(&v40[v28 + 1], &v40[v28], (v41 - v28));
  *(*(a1 + 264) + v28) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v13);
  return v35;
}

void *glpLLVMBuildStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 46;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);

  return glpSerializeLLVMValue(a1, a3);
}

uint64_t glpLLVMCGSamplerNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v95[2] = *MEMORY[0x277D85DE8];
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  Offset = glpDerefNodeGetOffset(a2);
  if (Offset)
  {
    OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
  }

  else
  {
    OffsetExpr = 0;
  }

  if (*(VariableExtra + 52))
  {
    v15 = *(*(VariableExtra + 144) + 8);
    v16 = *(v15 + 4);
    if (OffsetExpr)
    {
      if (!glpIsConstantNode(OffsetExpr))
      {
LABEL_19:
        v20 = 0;
        goto LABEL_78;
      }

      v17 = *(VariableExtra + 156);
      v18 = *glpConstantNodeGetValue(OffsetExpr) + v17;
    }

    else
    {
      v18 = *(VariableExtra + 156);
    }

    if (v16 >= 1)
    {
      v19 = (*(v15 + 8) + 8);
      while (v18 != *v19)
      {
        v19 += 4;
        if (!--v16)
        {
          goto LABEL_19;
        }
      }

      v32 = (*(a1 + 600) + 48 * *(v19 - 1));
      goto LABEL_77;
    }

    goto LABEL_19;
  }

  v9 = glpLLVMGetVariablePointer(a1, VariableExtra);
  v10 = glpLLVMPointerType(a1, *(a1 + 40), 0);
  if (OffsetExpr)
  {
    Value = glpConstantNodeGetValue(OffsetExpr);
    v12 = *(a1 + 520);
    if (!v12)
    {
      v12 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v12;
    }

    v95[0] = v12;
    v13 = *Value;
    if (v13 > 7)
    {
      v14 = glpLLVMConstIntCache(a1, *(a1 + 40), v13, 1);
    }

    else
    {
      v14 = *(a1 + 520 + 8 * v13);
      if (!v14)
      {
        v14 = glpLLVMConstIntCache(a1, *(a1 + 40), v13, 0);
        *(a1 + 520 + 8 * v13) = v14;
      }
    }

    v95[1] = v14;
    v9 = glpLLVMBuildGEP2(a1, v9, v95, 2, "struct_gep");
  }

  v21 = glpLLVMCastOperation(a1, 86, v9, v10, "ptr");
  v22 = glpLLVMBuildLoad2(a1, v21, "");
  v23 = *(a1 + 596);
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  v26 = PrimitiveType;
  if (v23 < 1)
  {
    v28 = 0;
  }

  else
  {
    v27 = 0;
    LODWORD(v28) = 0;
    v29 = 0;
    v30 = (*(a1 + 600) + 36);
    do
    {
      v31 = *v30;
      v30 += 12;
      if (v31 == PrimitiveType)
      {
        v29 = v27;
        v28 = (v28 + 1);
      }

      else
      {
        v28 = v28;
      }

      ++v27;
    }

    while (v23 != v27);
    if (v28 == 1)
    {
      v32 = (*(a1 + 600) + 48 * v29);
LABEL_77:
      *a3 = v32[1];
      v20 = *v32;
      goto LABEL_78;
    }
  }

  v95[0] = 0;
  v33 = glpLLVMGetTextureTypeFromSampler(a1, v95, PrimitiveType);
  v34 = glpLLVMCGInsertBasicBlock(a1, "afterSwitch");
  v35 = *(a1 + 432);
  v91 = v34;
  *(a1 + 432) = v34;
  v36 = *(a1 + 260);
  v37 = v36 + 1;
  v38 = *(a1 + 256);
  v85 = v33;
  v86 = a3;
  v83 = v35;
  if (v36 + 1 <= v38)
  {
    v41 = *(a1 + 264);
    v42 = v36;
  }

  else
  {
    if (v38 <= 1)
    {
      v38 = 1;
    }

    v39 = 2 * v38;
    if (v39 <= v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = v39;
    }

    v41 = (*(a1 + 232))(*(a1 + 224), v40, "Vector Storage (uint8_t, growth)");
    memcpy(v41, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v40;
    *(a1 + 264) = v41;
    v42 = *(a1 + 260);
  }

  memmove(&v41[v36 + 1], &v41[v36], (v42 - v36));
  *(*(a1 + 264) + v36) = 21;
  ++*(a1 + 260);
  ++*(a1 + 296);
  v87 = *(a1 + 312);
  *(a1 + 312) = v87 + 1;
  v90 = glpLLVMBuildSwitch(a1, v22, v91, (v28 - 1));
  v84 = &v82;
  MEMORY[0x28223BE20](v90);
  v43 = (8 * v28 + 15) & 0xFFFFFFFF0;
  v94 = (&v82 - v43);
  bzero(&v82 - v43, 8 * v28);
  MEMORY[0x28223BE20](v44);
  v92 = (&v82 - v43);
  bzero(&v82 - v43, 8 * v28);
  MEMORY[0x28223BE20](v45);
  v93 = (&v82 - v43);
  bzero(&v82 - v43, 8 * v28);
  if (v23 >= 1)
  {
    v46 = 0;
    v47 = 0;
    v48 = 48 * v23;
    v88 = a1 + 520;
    v89 = 48 * v23;
    do
    {
      v49 = *(a1 + 600);
      if (*(v49 + v46 + 36) == v26)
      {
        if (v47)
        {
          v50 = glpLLVMCGInsertBasicBlock(a1, "case");
          v51 = *(a1 + 260);
          v52 = v51 + 1;
          v53 = *(a1 + 256);
          if (v51 + 1 <= v53)
          {
            v56 = *(a1 + 264);
            v57 = *(a1 + 260);
          }

          else
          {
            if (v53 <= 1)
            {
              v53 = 1;
            }

            v54 = 2 * v53;
            if (v54 <= v52)
            {
              v55 = v52;
            }

            else
            {
              v55 = v54;
            }

            v56 = (*(a1 + 232))(*(a1 + 224), v55, "Vector Storage (uint8_t, growth)");
            memcpy(v56, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v55;
            *(a1 + 264) = v56;
            v57 = *(a1 + 260);
          }

          memmove(&v56[v51 + 1], &v56[v51], (v57 - v51));
          *(*(a1 + 264) + v51) = 23;
          ++*(a1 + 260);
          ++*(a1 + 296);
          glpSerializeLLVMBlock(a1, v50);
          v94[v47] = v50;
          v59 = *(v49 + v46 + 8);
          v92[v47] = *(v49 + v46);
          v93[v47] = v59;
          v60 = *(a1 + 260);
          v61 = v60 + 1;
          v62 = *(a1 + 256);
          if (v60 + 1 <= v62)
          {
            v65 = *(a1 + 264);
            v66 = *(a1 + 260);
          }

          else
          {
            if (v62 <= 1)
            {
              v62 = 1;
            }

            v63 = 2 * v62;
            if (v63 <= v61)
            {
              v64 = v61;
            }

            else
            {
              v64 = v63;
            }

            v65 = (*(a1 + 232))(*(a1 + 224), v64, "Vector Storage (uint8_t, growth)");
            memcpy(v65, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v64;
            *(a1 + 264) = v65;
            v66 = *(a1 + 260);
          }

          memmove(&v65[v60 + 1], &v65[v60], (v66 - v60));
          *(*(a1 + 264) + v60) = 26;
          ++*(a1 + 260);
          ++*(a1 + 296);
          glpSerializeLLVMBlock(a1, v91);
          *(a1 + 332) = 0;
          v67 = *(v49 + v46 + 32);
          if (v67 > 7)
          {
            v68 = glpLLVMConstIntCache(a1, *(a1 + 40), v67, 1);
          }

          else
          {
            v68 = *(v88 + 8 * v67);
            if (!v68)
            {
              v68 = glpLLVMConstIntCache(a1, *(a1 + 40), *(v49 + v46 + 32), 0);
              *(v88 + 8 * v67) = v68;
            }
          }

          glpLLVMAddCase(a1, v90, v68, v50);
          v48 = v89;
        }

        else
        {
          *v94 = v87;
          v58 = *(v49 + v46 + 8);
          *v92 = *(v49 + v46);
          *v93 = v58;
        }

        ++v47;
      }

      v46 += 48;
    }

    while (v48 != v46);
  }

  *(a1 + 432) = v83;
  v69 = *(a1 + 260);
  v70 = v69 + 1;
  v71 = *(a1 + 256);
  if (v69 + 1 <= v71)
  {
    v74 = *(a1 + 264);
    v75 = *(a1 + 260);
  }

  else
  {
    if (v71 <= 1)
    {
      v71 = 1;
    }

    v72 = 2 * v71;
    if (v72 <= v70)
    {
      v73 = v70;
    }

    else
    {
      v73 = v72;
    }

    v74 = (*(a1 + 232))(*(a1 + 224), v73, "Vector Storage (uint8_t, growth)");
    memcpy(v74, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v73;
    *(a1 + 264) = v74;
    v75 = *(a1 + 260);
  }

  v76 = v85;
  v77 = v86;
  memmove(&v74[v69 + 1], &v74[v69], (v75 - v69));
  *(*(a1 + 264) + v69) = 23;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMBlock(a1, v91);
  v20 = glpLLVMBuildPhi(a1, v76, "texture");
  v78 = v94;
  glpLLVMAddIncoming(a1, v20, v92, v94, v28);
  v79 = glpLLVMBuildPhi(a1, v95[0], "sampler");
  glpLLVMAddIncoming(a1, v79, v93, v78, v28);
  *v77 = v79;
LABEL_78:
  v80 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t glpMatchInputSize(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (v3 != a3[1])
  {
    v6 = result;
    if (glpPrimitiveTypeGetCategory(*a3) == 2)
    {
      Length = glpPrimitiveVectorGetLength(v3);
    }

    else
    {
      Length = 1;
    }

    v10[0] = Length;
    v8 = a3[1];
    if (glpPrimitiveTypeGetCategory(v8) == 2)
    {
      result = glpPrimitiveVectorGetLength(v8);
    }

    else
    {
      result = 1;
    }

    v10[1] = result;
    if (Length != result)
    {
      result = glpLLVMSplatScalar(v6, *(a2 + 8 * (Length > 1)), v10[Length < 2]);
      *(a2 + 8 * (Length > 1)) = result;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBinaryOperation(uint64_t a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = a2;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMValue(a1, a4);
  if (*(a1 + 300))
  {
    v17 = strlen(a5) + 1;
    v18 = *(a1 + 260);
    v19 = v17 + v18;
    v20 = *(a1 + 256);
    if (v17 + v18 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = *(a1 + 260);
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
    memcpy((*(a1 + 264) + v18), a5, v17);
    *(a1 + 260) += v17;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildBuiltinNoPrefix(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v12 = glpLLVMGetTypeString(&v15, a6, a7);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  snprintf_l(v16, 0x200uLL, 0, "%s.%s", a2, v12);
  v48[0] = 0x300000001;
  result = glpLLVMCallFunction(a1, v16, a5, a4, a3, v48, 2);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpBuildConstantIntVector(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (glpPrimitiveTypeGetCategory(a2) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a2);
  }

  else
  {
    Length = 1;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(a2);
  v10 = glpPrimitiveTypeToLLVMType(a1, ScalarType, a3);
  v11 = glpLLVMConstIntCache(a1, v10, a4, 1);
  v12 = v11;
  if (Length >= 2)
  {
    MEMORY[0x28223BE20](v11);
    v14 = (v24 - v13);
    bzero(v24 - v13, v15);
    v16 = (Length + 1) & 0xFFFFFFFE;
    v17 = vdupq_n_s64(Length - 1);
    v18 = v14 + 1;
    v19 = xmmword_23A29C340;
    v20 = vdupq_n_s64(2uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v17, v19));
      if (v21.i8[0])
      {
        *(v18 - 1) = v12;
      }

      if (v21.i8[4])
      {
        *v18 = v12;
      }

      v19 = vaddq_s64(v19, v20);
      v18 += 2;
      v16 -= 2;
    }

    while (v16);
    v12 = glpLLVMConstVectorCache(a1, v14, Length);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t glpLLVMBuildSelect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 91;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMValue(a1, a4);
  if (*(a1 + 300))
  {
    v17 = strlen(a5) + 1;
    v18 = *(a1 + 260);
    v19 = v17 + v18;
    v20 = *(a1 + 256);
    if (v17 + v18 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = *(a1 + 260);
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
    memcpy((*(a1 + 264) + v18), a5, v17);
    *(a1 + 260) += v17;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMCastToHalf(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  if (a4 == 3 || !a4)
  {
    v6 = glpLLVMGetTypeString(&v11, a3, a4);
    v7 = "v2f16";
    if (glpPrimitiveTypeGetCategory(a3) == 2 && glpPrimitiveVectorGetLength(a3) == 4)
    {
      v7 = "v4f16";
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *v13 = 0u;
    v14 = 0u;
    snprintf_l(v13, 0x200uLL, 0, "air.convert.f.%s.f.%s", v7, v6);
    v8 = *(a1 + 80);
    v45[0] = 0x300000001;
    a2 = glpLLVMCallFunction(a1, v13, v8, &v12, 1, v45, 2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t glpMatchInputSize3(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 != a3[1])
  {
    v6 = result;
    if (glpPrimitiveTypeGetCategory(*a3) == 2)
    {
      Length = glpPrimitiveVectorGetLength(v3);
    }

    else
    {
      Length = 1;
    }

    v8 = a3[1];
    if (glpPrimitiveTypeGetCategory(v8) == 2)
    {
      result = glpPrimitiveVectorGetLength(v8);
    }

    else
    {
      result = 1;
    }

    if (Length != result)
    {
      *(a2 + 8) = glpLLVMSplatScalar(v6, *(a2 + 8), Length);
      result = glpLLVMSplatScalar(v6, *(a2 + 16), Length);
      *(a2 + 16) = result;
    }
  }

  return result;
}

uint64_t glpLLVMBuildBuiltinWithPrefix(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v12 = glpLLVMGetTypeString(&v15, a6, a7);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  snprintf_l(v16, 0x200uLL, 0, "%s%s.%s", a2, v15, v12);
  v48[0] = 0x300000001;
  result = glpLLVMCallFunction(a1, v16, a5, a4, a3, v48, 2);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMUnaryOperation(uint64_t a1, char a2, uint64_t a3, const char *a4)
{
  v8 = *(a1 + 260);
  v9 = v8 + 1;
  v10 = *(a1 + 256);
  if (v8 + 1 <= v10)
  {
    v13 = *(a1 + 264);
    v14 = *(a1 + 260);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 2 * v10;
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v12;
    *(a1 + 264) = v13;
    v14 = *(a1 + 260);
  }

  memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
  *(*(a1 + 264) + v8) = a2;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a3);
  if (*(a1 + 300))
  {
    v15 = strlen(a4) + 1;
    v16 = *(a1 + 260);
    v17 = v15 + v16;
    v18 = *(a1 + 256);
    if (v15 + v16 <= v18)
    {
      v21 = *(a1 + 264);
      v22 = *(a1 + 260);
    }

    else
    {
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v19 = 2 * v18;
      if (v19 <= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v19;
      }

      v21 = (*(a1 + 232))(*(a1 + 224), v20, "Vector Storage (uint8_t, growth)");
      memcpy(v21, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v20;
      *(a1 + 264) = v21;
      v22 = *(a1 + 260);
    }

    memmove(&v21[v16 + 1], &v21[v16], (v22 - v16));
    memcpy((*(a1 + 264) + v16), a4, v15);
    *(a1 + 260) += v15;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildLength(uint64_t a1, uint64_t *a2, int *a3, int a4, uint64_t a5)
{
  v65[1] = *MEMORY[0x277D85DE8];
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v10 = glpLLVMGetTypeString(&v32, *a3, a4);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *v33 = 0u;
    v34 = 0u;
    snprintf_l(v33, 0x200uLL, 0, "%s.%s", "air.fabs", v10);
    v65[0] = 0x300000001;
    v11 = a1;
    v12 = a5;
    v13 = a2;
  }

  else
  {
    v14 = *a2;
    v15 = *a3;
    v30 = a5;
    if (glpPrimitiveTypeGetCategory(*a3) == 1)
    {
      v16 = glpLLVMBinaryOperation(a1, 58, v14, v14, "squared_length");
    }

    else
    {
      Length = glpPrimitiveVectorGetLength(v15);
      if (Length < 1)
      {
        v16 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = Length;
        do
        {
          if (v18 > 7)
          {
            v22 = glpLLVMConstIntCache(a1, *(a1 + 40), v18, 1);
          }

          else
          {
            v21 = a1 + 8 * v18;
            v22 = *(v21 + 520);
            if (!v22)
            {
              v22 = glpLLVMConstIntCache(a1, *(a1 + 40), v18, 0);
              *(v21 + 520) = v22;
            }
          }

          Element = glpLLVMBuildExtractElement(a1, v14, v22, "comp");
          v16 = glpLLVMBinaryOperation(a1, 58, Element, Element, "comp_squared");
          if (v19)
          {
            v16 = glpLLVMBinaryOperation(a1, 54, v19, v16, "squared_length");
          }

          ++v18;
          v19 = v16;
        }

        while (v20 != v18);
      }
    }

    v31 = v16;
    ScalarType = glpPrimitiveTypeGetScalarType(*a3);
    if (a4)
    {
      v25 = a4 == 3;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = "air.fast_sqrt";
    }

    else
    {
      v26 = "air.sqrt";
    }

    v27 = glpLLVMGetTypeString(&v32, ScalarType, a4);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *v33 = 0u;
    v34 = 0u;
    snprintf_l(v33, 0x200uLL, 0, "%s.%s", v26, v27);
    v65[0] = 0x300000001;
    v13 = &v31;
    v11 = a1;
    v12 = v30;
  }

  result = glpLLVMCallFunction(v11, v33, v12, v13, 1, v65, 2);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildNormalize(uint64_t a1, uint64_t *a2, int *a3, int a4, uint64_t a5)
{
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v10 = glpLLVMTypeOf(a1, *a2);
    v11 = *a2;
    v12 = glpLLVMConstFromTypeCache(a1, 35, v10);
    v13 = glpLLVMBuildFCmp(a1, 3, v11, v12, "cmp");
    v14 = glpLLVMConstRealCache(a1, a5, 1.0);
    v15 = glpLLVMConstRealCache(a1, a5, -1.0);

    return glpLLVMBuildSelect(a1, v13, v14, v15, "normalize");
  }

  else
  {
    Length = glpPrimitiveVectorGetLength(*a3);
    v18 = glpLLVMGetElementType(a1, a5);
    v19 = glpLLVMBuildLength(a1, a2, a3, a4, v18);
    v20 = glpLLVMSplatElement(a1, v19, Length);
    v21 = *a2;

    return glpLLVMBinaryOperation(a1, 61, v21, v20, "normalize");
  }
}

uint64_t glpLLVMBuildConvert(uint64_t a1, uint64_t *a2, unsigned int *a3, double a4)
{
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v8 = glpLLVMTypeOf(a1, *a2);
    v9 = glpLLVMConstRealCache(a1, v8, a4);
    v10 = "";
  }

  else
  {
    Length = glpPrimitiveVectorGetLength(*a3);
    v12 = glpLLVMTypeOf(a1, *a2);
    v13 = glpLLVMGetElementType(a1, v12);
    v14 = glpLLVMConstRealCache(a1, v13, a4);
    v9 = glpLLVMSplatElement(a1, v14, Length);
    v10 = "res";
  }

  v15 = *a2;

  return glpLLVMBinaryOperation(a1, 58, v15, v9, v10);
}

uint64_t glpLLVMBuildCross(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v21[3] = *MEMORY[0x277D85DE8];
  memset(v21, 0, 24);
  memset(v20, 0, sizeof(v20));
  do
  {
    v5 = a1 + 8 * v4;
    v6 = *(v5 + 520);
    if (!v6)
    {
      v6 = glpLLVMConstIntCache(a1, *(a1 + 40), v4, 0);
      *(v5 + 520) = v6;
    }

    v21[v4] = glpLLVMBuildExtractElement(a1, *a2, v6, "x");
    v20[v4++] = glpLLVMBuildExtractElement(a1, a2[1], v6, "y");
  }

  while (v4 != 3);
  v7 = glpLLVMTypeOf(a1, *a2);
  v8 = glpLLVMConstFromTypeCache(a1, 37, v7);
  v9 = 0;
  v19 = *(a1 + 40);
  do
  {
    v10 = v9 + 1;
    if (v9 == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v9)
    {
      v12 = v9 - 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = glpLLVMBinaryOperation(a1, 58, v21[v11], v20[v12], "");
    v14 = glpLLVMBinaryOperation(a1, 58, v20[v11], v21[v12], "");
    v15 = glpLLVMBinaryOperation(a1, 56, v13, v14, "");
    v16 = glpLLVMConstIntCache(a1, v19, v9, 1);
    result = glpLLVMBuildInsertElement(a1, v8, v15, v16, "");
    v8 = result;
    ++v9;
  }

  while (v10 != 3);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildReflect(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a3 + 4);
  if (glpPrimitiveTypeGetCategory(*(a3 + 4)) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v10);
    v12 = glpLLVMTypeOf(a1, v9);
    if (Length < 2)
    {
      v13 = 0;
    }

    else
    {
      v12 = glpLLVMGetElementType(a1, v12);
      v13 = 1;
    }
  }

  else
  {
    v12 = glpLLVMTypeOf(a1, v9);
    v13 = 0;
    Length = 1;
  }

  v14 = glpLLVMGetTypeString(&v21, *a3, a4);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  snprintf_l(v22, 0x200uLL, 0, "%s.%s", "air.dot", v14);
  v54[0] = 0x300000001;
  v15 = glpLLVMCallFunction(a1, v22, v12, a2, 2, v54, 2);
  v16 = glpLLVMConstRealCache(a1, v12, 2.0);
  v17 = glpLLVMBinaryOperation(a1, 58, v16, v15, "");
  if (v13)
  {
    v17 = glpLLVMSplatElement(a1, v17, Length);
  }

  v18 = glpLLVMBinaryOperation(a1, 58, v17, v9, "");
  result = glpLLVMBinaryOperation(a1, 56, v8, v18, "reflect");
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildExtractElement(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(a1 + 260);
  v9 = v8 + 1;
  v10 = *(a1 + 256);
  if (v8 + 1 <= v10)
  {
    v13 = *(a1 + 264);
    v14 = *(a1 + 260);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 2 * v10;
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v12;
    *(a1 + 264) = v13;
    v14 = *(a1 + 260);
  }

  memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
  *(*(a1 + 264) + v8) = 47;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMValue(a1, a3);
  if (*(a1 + 300))
  {
    v15 = strlen(a4) + 1;
    v16 = *(a1 + 260);
    v17 = v15 + v16;
    v18 = *(a1 + 256);
    if (v15 + v16 <= v18)
    {
      v21 = *(a1 + 264);
      v22 = *(a1 + 260);
    }

    else
    {
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v19 = 2 * v18;
      if (v19 <= v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v19;
      }

      v21 = (*(a1 + 232))(*(a1 + 224), v20, "Vector Storage (uint8_t, growth)");
      memcpy(v21, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v20;
      *(a1 + 264) = v21;
      v22 = *(a1 + 260);
    }

    memmove(&v21[v16 + 1], &v21[v16], (v22 - v16));
    memcpy((*(a1 + 264) + v16), a4, v15);
    *(a1 + 260) += v15;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildInsertElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 48;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMValue(a1, a4);
  if (*(a1 + 300))
  {
    v17 = strlen(a5) + 1;
    v18 = *(a1 + 260);
    v19 = v17 + v18;
    v20 = *(a1 + 256);
    if (v17 + v18 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = *(a1 + 260);
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
    memcpy((*(a1 + 264) + v18), a5, v17);
    *(a1 + 260) += v17;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildShuffleVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 49;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMValue(a1, a3);
  glpSerializeLLVMValue(a1, a4);
  if (*(a1 + 300))
  {
    v17 = strlen(a5) + 1;
    v18 = *(a1 + 260);
    v19 = v17 + v18;
    v20 = *(a1 + 256);
    if (v17 + v18 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = *(a1 + 260);
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
    memcpy((*(a1 + 264) + v18), a5, v17);
    *(a1 + 260) += v17;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildFaceForward(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = *a3;
  if (glpPrimitiveTypeGetCategory(*a3) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v9);
    v11 = glpLLVMTypeOf(a1, v8);
    if (Length < 2)
    {
      v12 = 0;
    }

    else
    {
      v11 = glpLLVMGetElementType(a1, v11);
      v12 = 1;
    }
  }

  else
  {
    v11 = glpLLVMTypeOf(a1, v8);
    v12 = 0;
    Length = 1;
  }

  v13 = glpLLVMGetTypeString(&v21, *a3, a4);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  snprintf_l(v22, 0x200uLL, 0, "%s.%s", "air.dot", v13);
  v54[0] = 0x300000001;
  v14 = glpLLVMCallFunction(a1, v22, v11, a2 + 1, 2, v54, 2);
  v15 = glpLLVMConstFromTypeCache(a1, 35, v11);
  v16 = glpLLVMBuildFCmp(a1, 4, v14, v15, "cmp");
  v17 = glpLLVMConstRealCache(a1, v11, -1.0);
  if (v12)
  {
    v17 = glpLLVMSplatElement(a1, v17, Length);
  }

  v18 = glpLLVMBinaryOperation(a1, 58, v8, v17, "");
  result = glpLLVMBuildSelect(a1, v16, v8, v18, "faceforward");
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildMix(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, int a5)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a3[2];
  if (glpPrimitiveTypeGetCategory(a3[2]) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v12);
  }

  else
  {
    Length = 1;
  }

  Category = glpPrimitiveTypeGetCategory(*a3);
  if (glpPrimitiveTypeGetScalarType(*a3) == 9)
  {
    if (Category == 1)
    {
      v10 = glpLLVMSplatElement(a1, v10, Length);
    }

    v15 = *MEMORY[0x277D85DE8];

    return glpLLVMBuildSelect(a1, v10, v9, v11, "mix");
  }

  else
  {
    if (Length >= 2 && Category == 1)
    {
      v10 = glpLLVMSplatElement(a1, v10, Length);
    }

    v20[0] = v11;
    v20[1] = v9;
    v20[2] = v10;
    v17 = glpLLVMGetTypeString(&v19, a3[2], a5);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *v21 = 0u;
    v22 = 0u;
    snprintf_l(v21, 0x200uLL, 0, "%s.%s", "air.mix", v17);
    v53[0] = 0x300000001;
    result = glpLLVMCallFunction(a1, v21, a4, v20, 3, v53, 2);
    v18 = *MEMORY[0x277D85DE8];
  }

  return result;
}