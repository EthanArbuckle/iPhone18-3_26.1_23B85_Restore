@interface GLPType
@end

@implementation GLPType

void __deserialize_GLPType_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 260);
  v4 = *(v2 + 256);
  if (v3 >= v4)
  {
    goto LABEL_351;
  }

  v5 = *(v2 + 248);
  v6 = *(v5 + v3);
  v7 = *(v5 + v3);
  v8 = v3 + 1;
  *(v2 + 260) = v3 + 1;
  if (v6 < 0)
  {
    v9 = (v7 >> 1) & 7;
    if (v9 > 3)
    {
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          if (v3 + 5 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v10) = *(v5 + v8);
          *(v2 + 260) = v3 + 5;
          LODWORD(v8) = v3 + 8;
          if (v3 + 8 > v4)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (v3 + 9 > v4)
          {
            goto LABEL_351;
          }

          v10 = *(v5 + v8);
          LODWORD(v8) = v3 + 9;
        }
      }

      else
      {
        v11 = v3 + 5;
        if (v9 == 4)
        {
          if (v11 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v10) = *(v5 + v8);
          *(v2 + 260) = v3 + 5;
          if (v3 + 5 >= v4)
          {
            goto LABEL_351;
          }

          LODWORD(v8) = v3 + 6;
        }

        else
        {
          if (v11 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v10) = *(v5 + v8);
          v13 = (v3 + 5);
          *(v2 + 260) = v13;
          if (v13 + 2 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v8) = v3 + 7;
        }
      }
    }

    else if (v9 > 1)
    {
      if (v9 == 2)
      {
        v12 = v3 + 4;
        if (v12 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v10) = *(v5 + v8) | (*(v5 + v8 + 2) << 16);
        *(v2 + 260) = v12;
        LODWORD(v8) = v12;
        goto LABEL_30;
      }

      if (v3 + 5 > v4)
      {
        goto LABEL_351;
      }

      LODWORD(v10) = *(v5 + v8);
      LODWORD(v8) = v3 + 5;
    }

    else if (v9)
    {
      if (v3 + 3 > v4)
      {
        goto LABEL_351;
      }

      LODWORD(v10) = *(v5 + v8);
      LODWORD(v8) = v3 + 3;
    }

    else
    {
      if (v8 >= v4)
      {
        goto LABEL_351;
      }

      LODWORD(v10) = *(v5 + v8);
      LODWORD(v8) = v3 + 2;
    }

    *(v2 + 260) = v8;
LABEL_30:
    v14 = -256 << (8 * v9);
    if (v6)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v7) = v10 | v15;
  }

  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          v24 = deserialize_GLPString(v2);
          v26 = v25;
          v27 = *(a1 + 32);
          v146 = 0;
          v147 = MEMORY[0x277D85DD0];
          v148 = 0x40000000;
          v149 = __deserialize_GLPFunctionObject_block_invoke;
          v150 = &__block_descriptor_tmp_5;
          v151 = v27;
          deserialize_pointer(v27, &v147, &v146);
          glpMakeSubroutineType(*(*(a1 + 32) + 240), v24, v26, v146);
          return;
        }

        goto LABEL_353;
      }

      if (v8 >= v4)
      {
        goto LABEL_351;
      }

      v33 = *(v5 + v8);
      v34 = *(v5 + v8);
      v35 = v8 + 1;
      *(v2 + 260) = v35;
      if (v33 < 0)
      {
        v36 = (v34 >> 1) & 7;
        if (((v34 >> 1) & 7) > 3)
        {
          if (((v34 >> 1) & 7) > 5)
          {
            if (v36 == 6)
            {
              if (v8 + 5 > v4)
              {
                goto LABEL_351;
              }

              LODWORD(v5) = *(v5 + v35);
              *(v2 + 260) = v8 + 5;
              v37 = v8 + 8;
              if (v37 > v4)
              {
                goto LABEL_351;
              }
            }

            else
            {
              if (v8 + 9 > v4)
              {
                goto LABEL_351;
              }

              v5 = *(v5 + v35);
              v37 = v8 + 9;
            }
          }

          else
          {
            v52 = v8 + 5;
            if (v36 == 4)
            {
              if (v52 > v4)
              {
                goto LABEL_351;
              }

              LODWORD(v5) = *(v5 + v35);
              *(v2 + 260) = v8 + 5;
              if (v8 + 5 >= v4)
              {
                goto LABEL_351;
              }

              v37 = v8 + 6;
            }

            else
            {
              if (v52 > v4)
              {
                goto LABEL_351;
              }

              LODWORD(v5) = *(v5 + v35);
              v59 = (v8 + 5);
              *(v2 + 260) = v59;
              if (v59 + 2 > v4)
              {
                goto LABEL_351;
              }

              v37 = v8 + 7;
            }
          }
        }

        else if (((v34 >> 1) & 7) > 1)
        {
          if (v36 == 2)
          {
            v37 = v8 + 4;
            if (v37 > v4)
            {
              goto LABEL_351;
            }

            LODWORD(v5) = *(v5 + v35) | (*(v5 + v35 + 2) << 16);
          }

          else
          {
            if (v8 + 5 > v4)
            {
              goto LABEL_351;
            }

            LODWORD(v5) = *(v5 + v35);
            v37 = v8 + 5;
          }
        }

        else if (v36)
        {
          if (v8 + 3 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v35);
          v37 = v8 + 3;
        }

        else
        {
          if (v35 >= v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v35);
          v37 = v8 + 2;
        }

        *(v2 + 260) = v37;
        if (v33)
        {
          v88 = -256 << (8 * v36);
        }

        else
        {
          LODWORD(v88) = 0;
        }

        LODWORD(v34) = v5 | v88;
      }

      v144 = (*(*(v2 + 240) + 8))(**(v2 + 240), 8 * v34, "Deserialized");
      v142 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v34, "Deserialized");
      v140 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v34, "Deserialized");
      if (!v34)
      {
LABEL_238:
        v112 = *(a1 + 32);
        v146 = 0;
        v147 = MEMORY[0x277D85DD0];
        v148 = 0x40000000;
        v149 = __deserialize_GLPType_block_invoke;
        v150 = &__block_descriptor_tmp_12;
        v151 = v112;
        deserialize_pointer(v112, &v147, &v146);
        glpMakeFunctionType(*(*(a1 + 32) + 240), v146, v34, v144, v142, v140);
        return;
      }

      v89 = MEMORY[0x277D85DD0];
      v90 = v144;
      v91 = v34;
      v92 = v140;
      v93 = v142;
      while (1)
      {
        v94 = *(a1 + 32);
        v147 = v89;
        v148 = 0x40000000;
        v149 = __deserialize_GLPType_block_invoke;
        v150 = &__block_descriptor_tmp_12;
        v151 = v94;
        deserialize_pointer(v94, &v147, v90);
        v2 = *(a1 + 32);
        v95 = *(v2 + 260);
        v96 = *(v2 + 256);
        if (v95 >= v96)
        {
          goto LABEL_351;
        }

        v97 = *(v2 + 248);
        v98 = *(v97 + v95);
        v99 = *(v97 + v95);
        v100 = v95 + 1;
        *(v2 + 260) = v95 + 1;
        if (v98 < 0)
        {
          break;
        }

LABEL_237:
        *v93++ = v99;
        v147 = MEMORY[0x277D85DD0];
        v148 = 0x40000000;
        v149 = __deserialize_GLPLayoutObject_block_invoke;
        v150 = &__block_descriptor_tmp_3;
        v151 = v2;
        deserialize_pointer(v2, &v147, v92);
        ++v90;
        ++v92;
        if (!--v91)
        {
          goto LABEL_238;
        }
      }

      v101 = (v99 >> 1) & 7;
      if (v101 <= 3)
      {
        if (v101 > 1)
        {
          if (v101 == 2)
          {
            v103 = v95 + 4;
            if (v103 > v96)
            {
              goto LABEL_351;
            }

            v102 = *(v97 + v100) | (*(v97 + v100 + 2) << 16);
          }

          else
          {
            if (v95 + 5 > v96)
            {
              goto LABEL_351;
            }

            v102 = *(v97 + v100);
            v103 = v95 + 5;
          }
        }

        else if (v101)
        {
          if (v95 + 3 > v96)
          {
            goto LABEL_351;
          }

          v102 = *(v97 + v100);
          v103 = v95 + 3;
        }

        else
        {
          if (v100 >= v96)
          {
            goto LABEL_351;
          }

          v102 = *(v97 + v100);
          v103 = v95 + 2;
        }

LABEL_232:
        *(v2 + 260) = v103;
        goto LABEL_233;
      }

      if (v101 > 5)
      {
        if (v101 != 6)
        {
          if (v95 + 9 > v96)
          {
            goto LABEL_351;
          }

          v102 = *(v97 + v100);
          v103 = v95 + 9;
          goto LABEL_232;
        }

        if (v95 + 5 > v96)
        {
          goto LABEL_351;
        }

        v105 = *(v97 + v100);
        v108 = v95 + 5;
        *(v2 + 260) = v95 + 5;
        v107 = v95 + 8;
        if (v107 > v96)
        {
          goto LABEL_351;
        }

        v106 = *(v97 + v108) | (*(v97 + v108 + 2) << 16);
      }

      else
      {
        v104 = v95 + 5;
        if (v101 == 4)
        {
          if (v104 > v96)
          {
            goto LABEL_351;
          }

          v105 = *(v97 + v100);
          *(v2 + 260) = v95 + 5;
          if (v95 + 5 >= v96)
          {
            goto LABEL_351;
          }

          v106 = *(v97 + (v95 + 5));
          v107 = v95 + 6;
        }

        else
        {
          if (v104 > v96)
          {
            goto LABEL_351;
          }

          v105 = *(v97 + v100);
          v109 = (v95 + 5);
          *(v2 + 260) = v109;
          if (v109 + 2 > v96)
          {
            goto LABEL_351;
          }

          v106 = *(v97 + v109);
          v107 = v95 + 7;
        }
      }

      *(v2 + 260) = v107;
      v102 = v105 | (v106 << 32);
LABEL_233:
      v110 = -256 << (8 * v101);
      if (v98)
      {
        v111 = v110;
      }

      else
      {
        v111 = 0;
      }

      v99 = v102 | v111;
      goto LABEL_237;
    }

    v146 = 0;
    v147 = MEMORY[0x277D85DD0];
    v148 = 0x40000000;
    v149 = __deserialize_GLPType_block_invoke;
    v150 = &__block_descriptor_tmp_12;
    v151 = v2;
    deserialize_pointer(v2, &v147, &v146);
    v2 = *(a1 + 32);
    v43 = *(v2 + 260);
    v44 = *(v2 + 256);
    if (v43 >= v44)
    {
      goto LABEL_351;
    }

    v45 = *(v2 + 248);
    v46 = *(v45 + v43);
    v47 = *(v45 + v43);
    v48 = v43 + 1;
    *(v2 + 260) = v43 + 1;
    if ((v46 & 0x80000000) == 0)
    {
LABEL_302:
      if (v48 >= v44)
      {
        goto LABEL_351;
      }

      v127 = *(v45 + v48);
      v128 = *(v45 + v48);
      v129 = v48 + 1;
      *(v2 + 260) = v129;
      if ((v127 & 0x80000000) == 0)
      {
        goto LABEL_350;
      }

      v130 = (v128 >> 1) & 7;
      if (((v128 >> 1) & 7) > 3)
      {
        if (((v128 >> 1) & 7) <= 5)
        {
          v132 = v48 + 5;
          if (v130 == 4)
          {
            if (v132 > v44)
            {
              goto LABEL_351;
            }

            LODWORD(v45) = *(v45 + v129);
            *(v2 + 260) = v48 + 5;
            if (v48 + 5 >= v44)
            {
              goto LABEL_351;
            }

            v131 = v48 + 6;
          }

          else
          {
            if (v132 > v44)
            {
              goto LABEL_351;
            }

            LODWORD(v45) = *(v45 + v129);
            v136 = (v48 + 5);
            *(v2 + 260) = v136;
            if (v136 + 2 > v44)
            {
              goto LABEL_351;
            }

            v131 = v48 + 7;
          }

          goto LABEL_345;
        }

        if (v130 != 6)
        {
          if (v48 + 9 > v44)
          {
            goto LABEL_351;
          }

          v45 = *(v45 + v129);
          v131 = v48 + 9;
          goto LABEL_345;
        }

        if (v48 + 5 > v44)
        {
          goto LABEL_351;
        }

        LODWORD(v45) = *(v45 + v129);
        *(v2 + 260) = v48 + 5;
        v133 = v48 + 8;
        if (v133 > v44)
        {
          goto LABEL_351;
        }
      }

      else
      {
        if (((v128 >> 1) & 7) <= 1)
        {
          if (v130)
          {
            if (v48 + 3 > v44)
            {
              goto LABEL_351;
            }

            LODWORD(v45) = *(v45 + v129);
            v131 = v48 + 3;
          }

          else
          {
            if (v129 >= v44)
            {
              goto LABEL_351;
            }

            LODWORD(v45) = *(v45 + v129);
            v131 = v48 + 2;
          }

LABEL_345:
          *(v2 + 260) = v131;
          goto LABEL_346;
        }

        if (v130 != 2)
        {
          if (v48 + 5 > v44)
          {
            goto LABEL_351;
          }

          LODWORD(v45) = *(v45 + v129);
          v131 = v48 + 5;
          goto LABEL_345;
        }

        v133 = v48 + 4;
        if (v133 > v44)
        {
          goto LABEL_351;
        }

        LODWORD(v45) = *(v45 + v129) | (*(v45 + v129 + 2) << 16);
      }

      *(v2 + 260) = v133;
LABEL_346:
      if (v127)
      {
        v137 = -256 << (8 * v130);
      }

      else
      {
        LODWORD(v137) = 0;
      }

      LODWORD(v128) = v45 | v137;
LABEL_350:
      glpMakeBankType(*(v2 + 240), v128, v146, v47);
      return;
    }

    v49 = (v47 >> 1) & 7;
    if (((v47 >> 1) & 7) > 3)
    {
      if (((v47 >> 1) & 7) > 5)
      {
        if (v49 == 6)
        {
          if (v43 + 5 > v44)
          {
            goto LABEL_351;
          }

          LODWORD(v50) = *(v45 + v48);
          *(v2 + 260) = v43 + 5;
          LODWORD(v48) = v43 + 8;
          if (v43 + 8 > v44)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (v43 + 9 > v44)
          {
            goto LABEL_351;
          }

          v50 = *(v45 + v48);
          LODWORD(v48) = v43 + 9;
        }
      }

      else
      {
        v55 = v43 + 5;
        if (v49 == 4)
        {
          if (v55 > v44)
          {
            goto LABEL_351;
          }

          LODWORD(v50) = *(v45 + v48);
          *(v2 + 260) = v43 + 5;
          if (v43 + 5 >= v44)
          {
            goto LABEL_351;
          }

          LODWORD(v48) = v43 + 6;
        }

        else
        {
          if (v55 > v44)
          {
            goto LABEL_351;
          }

          LODWORD(v50) = *(v45 + v48);
          v124 = (v43 + 5);
          *(v2 + 260) = v124;
          if (v124 + 2 > v44)
          {
            goto LABEL_351;
          }

          LODWORD(v48) = v43 + 7;
        }
      }
    }

    else if (((v47 >> 1) & 7) > 1)
    {
      if (v49 == 2)
      {
        v57 = v43 + 4;
        if (v57 > v44)
        {
          goto LABEL_351;
        }

        LODWORD(v50) = *(v45 + v48) | (*(v45 + v48 + 2) << 16);
        *(v2 + 260) = v57;
        LODWORD(v48) = v57;
        goto LABEL_298;
      }

      if (v43 + 5 > v44)
      {
        goto LABEL_351;
      }

      LODWORD(v50) = *(v45 + v48);
      LODWORD(v48) = v43 + 5;
    }

    else if (v49)
    {
      if (v43 + 3 > v44)
      {
        goto LABEL_351;
      }

      LODWORD(v50) = *(v45 + v48);
      LODWORD(v48) = v43 + 3;
    }

    else
    {
      if (v48 >= v44)
      {
        goto LABEL_351;
      }

      LODWORD(v50) = *(v45 + v48);
      LODWORD(v48) = v43 + 2;
    }

    *(v2 + 260) = v48;
LABEL_298:
    v125 = -256 << (8 * v49);
    if (v46)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    LODWORD(v47) = v50 | v126;
    goto LABEL_302;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v146 = 0;
        v147 = MEMORY[0x277D85DD0];
        v148 = 0x40000000;
        v149 = __deserialize_GLPType_block_invoke;
        v150 = &__block_descriptor_tmp_12;
        v151 = v2;
        deserialize_pointer(v2, &v147, &v146);
        v2 = *(a1 + 32);
        v16 = *(v2 + 260);
        v17 = *(v2 + 256);
        if (v16 >= v17)
        {
          goto LABEL_351;
        }

        v18 = *(v2 + 248);
        v19 = *(v18 + v16);
        v20 = *(v18 + v16);
        v21 = v16 + 1;
        *(v2 + 260) = v16 + 1;
        if ((v19 & 0x80000000) == 0)
        {
LABEL_253:
          if (v21 >= v17)
          {
            goto LABEL_351;
          }

          v116 = *(v18 + v21);
          v117 = *(v18 + v21);
          v118 = v21 + 1;
          *(v2 + 260) = v118;
          if ((v116 & 0x80000000) == 0)
          {
LABEL_335:
            glpMakeArrayType(*(v2 + 240), v146, v20, v117);
            return;
          }

          v119 = (v117 >> 1) & 7;
          if (((v117 >> 1) & 7) > 3)
          {
            if (((v117 >> 1) & 7) <= 5)
            {
              v121 = v21 + 5;
              if (v119 == 4)
              {
                if (v121 <= v17)
                {
                  LODWORD(v18) = *(v18 + v118);
                  *(v2 + 260) = v21 + 5;
                  if (v21 + 5 < v17)
                  {
                    v120 = v21 + 6;
                    goto LABEL_330;
                  }
                }
              }

              else if (v121 <= v17)
              {
                LODWORD(v18) = *(v18 + v118);
                v134 = (v21 + 5);
                *(v2 + 260) = v134;
                if (v134 + 2 <= v17)
                {
                  v120 = v21 + 7;
                  goto LABEL_330;
                }
              }

LABEL_351:
              glpDeserialError(v2, 1u);
            }

            if (v119 != 6)
            {
              if (v21 + 9 <= v17)
              {
                v18 = *(v18 + v118);
                v120 = v21 + 9;
                goto LABEL_330;
              }

              goto LABEL_351;
            }

            if (v21 + 5 > v17)
            {
              goto LABEL_351;
            }

            LODWORD(v18) = *(v18 + v118);
            *(v2 + 260) = v21 + 5;
            v122 = v21 + 8;
            if (v122 > v17)
            {
              goto LABEL_351;
            }
          }

          else
          {
            if (((v117 >> 1) & 7) <= 1)
            {
              if (v119)
              {
                if (v21 + 3 <= v17)
                {
                  LODWORD(v18) = *(v18 + v118);
                  v120 = v21 + 3;
                  goto LABEL_330;
                }
              }

              else if (v118 < v17)
              {
                LODWORD(v18) = *(v18 + v118);
                v120 = v21 + 2;
LABEL_330:
                *(v2 + 260) = v120;
                goto LABEL_331;
              }

              goto LABEL_351;
            }

            if (v119 != 2)
            {
              if (v21 + 5 <= v17)
              {
                LODWORD(v18) = *(v18 + v118);
                v120 = v21 + 5;
                goto LABEL_330;
              }

              goto LABEL_351;
            }

            v122 = v21 + 4;
            if (v122 > v17)
            {
              goto LABEL_351;
            }

            LODWORD(v18) = *(v18 + v118) | (*(v18 + v118 + 2) << 16);
          }

          *(v2 + 260) = v122;
LABEL_331:
          if (v116)
          {
            v135 = -256 << (8 * v119);
          }

          else
          {
            LODWORD(v135) = 0;
          }

          LODWORD(v117) = v18 | v135;
          goto LABEL_335;
        }

        v22 = (v20 >> 1) & 7;
        if (((v20 >> 1) & 7) > 3)
        {
          if (((v20 >> 1) & 7) > 5)
          {
            if (v22 == 6)
            {
              if (v16 + 5 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v23) = *(v18 + v21);
              *(v2 + 260) = v16 + 5;
              LODWORD(v21) = v16 + 8;
              if (v16 + 8 > v17)
              {
                goto LABEL_351;
              }
            }

            else
            {
              if (v16 + 9 > v17)
              {
                goto LABEL_351;
              }

              v23 = *(v18 + v21);
              LODWORD(v21) = v16 + 9;
            }
          }

          else
          {
            v53 = v16 + 5;
            if (v22 == 4)
            {
              if (v53 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v23) = *(v18 + v21);
              *(v2 + 260) = v16 + 5;
              if (v16 + 5 >= v17)
              {
                goto LABEL_351;
              }

              LODWORD(v21) = v16 + 6;
            }

            else
            {
              if (v53 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v23) = *(v18 + v21);
              v113 = (v16 + 5);
              *(v2 + 260) = v113;
              if (v113 + 2 > v17)
              {
                goto LABEL_351;
              }

              LODWORD(v21) = v16 + 7;
            }
          }
        }

        else if (((v20 >> 1) & 7) > 1)
        {
          if (v22 == 2)
          {
            v56 = v16 + 4;
            if (v56 > v17)
            {
              goto LABEL_351;
            }

            LODWORD(v23) = *(v18 + v21) | (*(v18 + v21 + 2) << 16);
            *(v2 + 260) = v56;
            LODWORD(v21) = v56;
            goto LABEL_249;
          }

          if (v16 + 5 > v17)
          {
            goto LABEL_351;
          }

          LODWORD(v23) = *(v18 + v21);
          LODWORD(v21) = v16 + 5;
        }

        else if (v22)
        {
          if (v16 + 3 > v17)
          {
            goto LABEL_351;
          }

          LODWORD(v23) = *(v18 + v21);
          LODWORD(v21) = v16 + 3;
        }

        else
        {
          if (v21 >= v17)
          {
            goto LABEL_351;
          }

          LODWORD(v23) = *(v18 + v21);
          LODWORD(v21) = v16 + 2;
        }

        *(v2 + 260) = v21;
LABEL_249:
        v114 = -256 << (8 * v22);
        if (v19)
        {
          v115 = v114;
        }

        else
        {
          v115 = 0;
        }

        LODWORD(v20) = v23 | v115;
        goto LABEL_253;
      }

LABEL_353:
      glpDeserialError(v2, 7u);
    }

    if (v8 >= v4)
    {
      goto LABEL_351;
    }

    v28 = *(v5 + v8);
    v29 = *(v5 + v8);
    v30 = v8 + 1;
    *(v2 + 260) = v30;
    if (v28 < 0)
    {
      v31 = (v29 >> 1) & 7;
      if (((v29 >> 1) & 7) > 3)
      {
        if (((v29 >> 1) & 7) > 5)
        {
          if (v31 == 6)
          {
            if (v8 + 5 > v4)
            {
              goto LABEL_351;
            }

            LODWORD(v5) = *(v5 + v30);
            *(v2 + 260) = v8 + 5;
            v32 = v8 + 8;
            if (v32 > v4)
            {
              goto LABEL_351;
            }
          }

          else
          {
            if (v8 + 9 > v4)
            {
              goto LABEL_351;
            }

            v5 = *(v5 + v30);
            v32 = v8 + 9;
          }
        }

        else
        {
          v51 = v8 + 5;
          if (v31 == 4)
          {
            if (v51 > v4)
            {
              goto LABEL_351;
            }

            LODWORD(v5) = *(v5 + v30);
            *(v2 + 260) = v8 + 5;
            if (v8 + 5 >= v4)
            {
              goto LABEL_351;
            }

            v32 = v8 + 6;
          }

          else
          {
            if (v51 > v4)
            {
              goto LABEL_351;
            }

            LODWORD(v5) = *(v5 + v30);
            v58 = (v8 + 5);
            *(v2 + 260) = v58;
            if (v58 + 2 > v4)
            {
              goto LABEL_351;
            }

            v32 = v8 + 7;
          }
        }
      }

      else if (((v29 >> 1) & 7) > 1)
      {
        if (v31 == 2)
        {
          v32 = v8 + 4;
          if (v32 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v30) | (*(v5 + v30 + 2) << 16);
        }

        else
        {
          if (v8 + 5 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v30);
          v32 = v8 + 5;
        }
      }

      else if (v31)
      {
        if (v8 + 3 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v5) = *(v5 + v30);
        v32 = v8 + 3;
      }

      else
      {
        if (v30 >= v4)
        {
          goto LABEL_351;
        }

        LODWORD(v5) = *(v5 + v30);
        v32 = v8 + 2;
      }

      *(v2 + 260) = v32;
      if (v28)
      {
        v60 = -256 << (8 * v31);
      }

      else
      {
        LODWORD(v60) = 0;
      }

      LODWORD(v29) = v5 | v60;
    }

    v61 = v29;
    v145 = (*(*(v2 + 240) + 8))(**(v2 + 240), 8 * v29, "Deserialized");
    v143 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v29, "Deserialized");
    v141 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 8 * v29, "Deserialized");
    v138 = v29;
    v139 = (*(*(*(a1 + 32) + 240) + 8))(**(*(a1 + 32) + 240), 16 * v29, "Deserialized");
    if (!v29)
    {
LABEL_194:
      v86 = deserialize_GLPString(*(a1 + 32));
      glpMakeStructType(*(*(a1 + 32) + 240), v86, v87, v138, v139, v145, v143, v141);
      return;
    }

    v62 = MEMORY[0x277D85DD0];
    v63 = v141;
    v64 = (v139 + 8);
    v65 = v143;
    v66 = v145;
    while (1)
    {
      v67 = *(a1 + 32);
      v147 = v62;
      v148 = 0x40000000;
      v149 = __deserialize_GLPType_block_invoke;
      v150 = &__block_descriptor_tmp_12;
      v151 = v67;
      deserialize_pointer(v67, &v147, v66);
      v2 = *(a1 + 32);
      v68 = *(v2 + 260);
      v69 = *(v2 + 256);
      if (v68 >= v69)
      {
        goto LABEL_351;
      }

      v70 = *(v2 + 248);
      v71 = *(v70 + v68);
      v72 = *(v70 + v68);
      v73 = v68 + 1;
      *(v2 + 260) = v68 + 1;
      if (v71 < 0)
      {
        break;
      }

LABEL_193:
      *v65++ = v72;
      v147 = MEMORY[0x277D85DD0];
      v148 = 0x40000000;
      v149 = __deserialize_GLPLayoutObject_block_invoke;
      v150 = &__block_descriptor_tmp_3;
      v151 = v2;
      deserialize_pointer(v2, &v147, v63);
      *(v64 - 1) = deserialize_GLPString(*(a1 + 32));
      *v64 = v85;
      ++v66;
      ++v63;
      v64 += 2;
      if (!--v61)
      {
        goto LABEL_194;
      }
    }

    v74 = (v72 >> 1) & 7;
    if (v74 <= 3)
    {
      if (v74 > 1)
      {
        if (v74 == 2)
        {
          v76 = v68 + 4;
          if (v76 > v69)
          {
            goto LABEL_351;
          }

          v75 = *(v70 + v73) | (*(v70 + v73 + 2) << 16);
        }

        else
        {
          if (v68 + 5 > v69)
          {
            goto LABEL_351;
          }

          v75 = *(v70 + v73);
          v76 = v68 + 5;
        }
      }

      else if (v74)
      {
        if (v68 + 3 > v69)
        {
          goto LABEL_351;
        }

        v75 = *(v70 + v73);
        v76 = v68 + 3;
      }

      else
      {
        if (v73 >= v69)
        {
          goto LABEL_351;
        }

        v75 = *(v70 + v73);
        v76 = v68 + 2;
      }

LABEL_188:
      *(v2 + 260) = v76;
      goto LABEL_189;
    }

    if (v74 > 5)
    {
      if (v74 != 6)
      {
        if (v68 + 9 > v69)
        {
          goto LABEL_351;
        }

        v75 = *(v70 + v73);
        v76 = v68 + 9;
        goto LABEL_188;
      }

      if (v68 + 5 > v69)
      {
        goto LABEL_351;
      }

      v78 = *(v70 + v73);
      v81 = v68 + 5;
      *(v2 + 260) = v68 + 5;
      v80 = v68 + 8;
      if (v80 > v69)
      {
        goto LABEL_351;
      }

      v79 = *(v70 + v81) | (*(v70 + v81 + 2) << 16);
    }

    else
    {
      v77 = v68 + 5;
      if (v74 == 4)
      {
        if (v77 > v69)
        {
          goto LABEL_351;
        }

        v78 = *(v70 + v73);
        *(v2 + 260) = v68 + 5;
        if (v68 + 5 >= v69)
        {
          goto LABEL_351;
        }

        v79 = *(v70 + (v68 + 5));
        v80 = v68 + 6;
      }

      else
      {
        if (v77 > v69)
        {
          goto LABEL_351;
        }

        v78 = *(v70 + v73);
        v82 = (v68 + 5);
        *(v2 + 260) = v82;
        if (v82 + 2 > v69)
        {
          goto LABEL_351;
        }

        v79 = *(v70 + v82);
        v80 = v68 + 7;
      }
    }

    *(v2 + 260) = v80;
    v75 = v78 | (v79 << 32);
LABEL_189:
    v83 = -256 << (8 * v74);
    if (v71)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    v72 = v75 | v84;
    goto LABEL_193;
  }

  if (v8 >= v4)
  {
    goto LABEL_351;
  }

  v38 = *(v5 + v8);
  v39 = *(v5 + v8);
  v40 = v8 + 1;
  *(v2 + 260) = v40;
  if (v38 < 0)
  {
    v41 = (v39 >> 1) & 7;
    if (v41 > 3)
    {
      if (v41 > 5)
      {
        if (v41 == 6)
        {
          if (v8 + 5 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v40);
          *(v2 + 260) = v8 + 5;
          v42 = v8 + 8;
          if (v42 > v4)
          {
            goto LABEL_351;
          }
        }

        else
        {
          if (v8 + 9 > v4)
          {
            goto LABEL_351;
          }

          v5 = *(v5 + v40);
          v42 = v8 + 9;
        }
      }

      else
      {
        v54 = v8 + 5;
        if (v41 == 4)
        {
          if (v54 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v40);
          *(v2 + 260) = v8 + 5;
          if (v8 + 5 >= v4)
          {
            goto LABEL_351;
          }

          v42 = v8 + 6;
        }

        else
        {
          if (v54 > v4)
          {
            goto LABEL_351;
          }

          LODWORD(v5) = *(v5 + v40);
          v123 = (v8 + 5);
          *(v2 + 260) = v123;
          if (v123 + 2 > v4)
          {
            goto LABEL_351;
          }

          v42 = v8 + 7;
        }
      }
    }

    else if (v41 > 1)
    {
      if (v41 == 2)
      {
        v42 = v8 + 4;
        if (v42 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v5) = *(v5 + v40) | (*(v5 + v40 + 2) << 16);
      }

      else
      {
        if (v8 + 5 > v4)
        {
          goto LABEL_351;
        }

        LODWORD(v5) = *(v5 + v40);
        v42 = v8 + 5;
      }
    }

    else if (v41)
    {
      if (v8 + 3 > v4)
      {
        goto LABEL_351;
      }

      LODWORD(v5) = *(v5 + v40);
      v42 = v8 + 3;
    }

    else
    {
      if (v40 >= v4)
      {
        goto LABEL_351;
      }

      LODWORD(v5) = *(v5 + v40);
      v42 = v8 + 2;
    }

    *(v2 + 260) = v42;
    v39 = -256 << (8 * v41);
    if ((v38 & 1) == 0)
    {
      LODWORD(v39) = 0;
    }

    LODWORD(v39) = v5 | v39;
  }

  if (v39 >= 0x4F)
  {
    glpDeserialError(v2, 8u);
  }

  glpGetPrimitiveType(v39);
}

@end