void *__abort_calloc()
{
  result = malloc_type_calloc(1uLL, 0x148uLL, 0x1A32276BuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

_DWORD *glpDeserializeUniformBindings(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xCA0EF1E7uLL);
  if (!v2)
  {
LABEL_192:
    abort();
  }

  v3 = *(a1 + 260);
  v4 = *(a1 + 256);
  if (v3 >= v4)
  {
    goto LABEL_191;
  }

  v5 = v2;
  v6 = *(a1 + 248);
  v7 = *(v6 + v3);
  v8 = *(v6 + v3);
  v9 = v3 + 1;
  *(a1 + 260) = v3 + 1;
  if (v7 < 0)
  {
    v10 = (v8 >> 1) & 7;
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        if (v10 == 6)
        {
          if (v3 + 5 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v11) = *(v6 + v9);
          *(a1 + 260) = v3 + 5;
          LODWORD(v9) = v3 + 8;
          if (v3 + 8 > v4)
          {
            goto LABEL_191;
          }
        }

        else
        {
          if (v3 + 9 > v4)
          {
            goto LABEL_191;
          }

          v11 = *(v6 + v9);
          LODWORD(v9) = v3 + 9;
        }
      }

      else
      {
        v12 = v3 + 5;
        if (v10 == 4)
        {
          if (v12 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v11) = *(v6 + v9);
          *(a1 + 260) = v3 + 5;
          if (v3 + 5 >= v4)
          {
            goto LABEL_191;
          }

          LODWORD(v9) = v3 + 6;
        }

        else
        {
          if (v12 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v11) = *(v6 + v9);
          v14 = (v3 + 5);
          *(a1 + 260) = v14;
          if (v14 + 2 > v4)
          {
            goto LABEL_191;
          }

          LODWORD(v9) = v3 + 7;
        }
      }
    }

    else if (v10 > 1)
    {
      if (v10 == 2)
      {
        v13 = v3 + 4;
        if (v13 > v4)
        {
          goto LABEL_191;
        }

        LODWORD(v11) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
        *(a1 + 260) = v13;
        LODWORD(v9) = v13;
        goto LABEL_31;
      }

      if (v3 + 5 > v4)
      {
        goto LABEL_191;
      }

      LODWORD(v11) = *(v6 + v9);
      LODWORD(v9) = v3 + 5;
    }

    else if (v10)
    {
      if (v3 + 3 > v4)
      {
        goto LABEL_191;
      }

      LODWORD(v11) = *(v6 + v9);
      LODWORD(v9) = v3 + 3;
    }

    else
    {
      if (v9 >= v4)
      {
        goto LABEL_191;
      }

      LODWORD(v11) = *(v6 + v9);
      LODWORD(v9) = v3 + 2;
    }

    *(a1 + 260) = v9;
LABEL_31:
    v8 = -256 << (8 * v10);
    if ((v7 & 1) == 0)
    {
      LODWORD(v8) = 0;
    }

    LODWORD(v8) = v11 | v8;
  }

  v2[8] = v8;
  if (v9 >= v4)
  {
    goto LABEL_191;
  }

  v15 = *(v6 + v9);
  v16 = *(v6 + v9);
  v17 = v9 + 1;
  *(a1 + 260) = v17;
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  v18 = (v16 >> 1) & 7;
  if (v18 > 3)
  {
    if (v18 <= 5)
    {
      v20 = v9 + 5;
      if (v18 == 4)
      {
        if (v20 <= v4)
        {
          LODWORD(v6) = *(v6 + v17);
          *(a1 + 260) = v9 + 5;
          if (v9 + 5 < v4)
          {
            v19 = v9 + 6;
            goto LABEL_62;
          }
        }
      }

      else if (v20 <= v4)
      {
        LODWORD(v6) = *(v6 + v17);
        v22 = (v9 + 5);
        *(a1 + 260) = v22;
        if (v22 + 2 <= v4)
        {
          v19 = v9 + 7;
          goto LABEL_62;
        }
      }

LABEL_191:
      glpDeserialError(a1, 1u);
    }

    if (v18 != 6)
    {
      if (v9 + 9 <= v4)
      {
        v6 = *(v6 + v17);
        v19 = v9 + 9;
        goto LABEL_62;
      }

      goto LABEL_191;
    }

    if (v9 + 5 > v4)
    {
      goto LABEL_191;
    }

    LODWORD(v6) = *(v6 + v17);
    *(a1 + 260) = v9 + 5;
    v21 = v9 + 8;
    if (v21 > v4)
    {
      goto LABEL_191;
    }
  }

  else
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v9 + 3 <= v4)
        {
          LODWORD(v6) = *(v6 + v17);
          v19 = v9 + 3;
          goto LABEL_62;
        }
      }

      else if (v17 < v4)
      {
        LODWORD(v6) = *(v6 + v17);
        v19 = v9 + 2;
LABEL_62:
        *(a1 + 260) = v19;
        goto LABEL_63;
      }

      goto LABEL_191;
    }

    if (v18 != 2)
    {
      if (v9 + 5 <= v4)
      {
        LODWORD(v6) = *(v6 + v17);
        v19 = v9 + 5;
        goto LABEL_62;
      }

      goto LABEL_191;
    }

    v21 = v9 + 4;
    if (v21 > v4)
    {
      goto LABEL_191;
    }

    LODWORD(v6) = *(v6 + v17) | (*(v6 + v17 + 2) << 16);
  }

  *(a1 + 260) = v21;
LABEL_63:
  if (v15)
  {
    v23 = -256 << (8 * v18);
  }

  else
  {
    LODWORD(v23) = 0;
  }

  LODWORD(v16) = v6 | v23;
LABEL_67:
  v2[9] = v16;
  v24 = 32 * (v8 & 0x7FFFFFF);
  v25 = malloc_type_malloc(v24, 0xCA0EF1E7uLL);
  if (!v25)
  {
    goto LABEL_192;
  }

  *(v5 + 5) = v25;
  bzero(v25, v24);
  v26 = *&off_2819B9B78;
  *v5 = GLP_MALLOC_ALLOCATOR;
  *(v5 + 1) = v26;
  *(v5 + 48) = 1;
  if (v5[9])
  {
    v27 = 0;
    v28 = 0;
    v104 = *(v5 + 5);
    v29 = &GLP_MALLOC_ALLOCATOR;
    v103 = v5;
    while (1)
    {
      v30 = *(a1 + 260);
      v31 = *(a1 + 256);
      if (v30 >= v31)
      {
        goto LABEL_191;
      }

      v32 = *(a1 + 248);
      v33 = *(v32 + v30);
      v34 = *(v32 + v30);
      v35 = v30 + 1;
      *(a1 + 260) = v30 + 1;
      if (v33 < 0)
      {
        v36 = (v34 >> 1) & 7;
        if (((v34 >> 1) & 7) > 3)
        {
          if (((v34 >> 1) & 7) > 5)
          {
            if (v36 == 6)
            {
              if (v30 + 5 > v31)
              {
                goto LABEL_191;
              }

              LODWORD(v32) = *(v32 + v35);
              *(a1 + 260) = v30 + 5;
              v37 = v30 + 8;
              if (v37 > v31)
              {
                goto LABEL_191;
              }
            }

            else
            {
              if (v30 + 9 > v31)
              {
                goto LABEL_191;
              }

              v32 = *(v32 + v35);
              v37 = v30 + 9;
            }
          }

          else
          {
            v38 = v30 + 5;
            if (v36 == 4)
            {
              if (v38 > v31)
              {
                goto LABEL_191;
              }

              LODWORD(v32) = *(v32 + v35);
              *(a1 + 260) = v30 + 5;
              if (v30 + 5 >= v31)
              {
                goto LABEL_191;
              }

              v37 = v30 + 6;
            }

            else
            {
              if (v38 > v31)
              {
                goto LABEL_191;
              }

              LODWORD(v32) = *(v32 + v35);
              v39 = (v30 + 5);
              *(a1 + 260) = v39;
              if (v39 + 2 > v31)
              {
                goto LABEL_191;
              }

              v37 = v30 + 7;
            }
          }
        }

        else if (((v34 >> 1) & 7) > 1)
        {
          if (v36 == 2)
          {
            v37 = v30 + 4;
            if (v37 > v31)
            {
              goto LABEL_191;
            }

            LODWORD(v32) = *(v32 + v35) | (*(v32 + v35 + 2) << 16);
          }

          else
          {
            if (v30 + 5 > v31)
            {
              goto LABEL_191;
            }

            LODWORD(v32) = *(v32 + v35);
            v37 = v30 + 5;
          }
        }

        else if (v36)
        {
          if (v30 + 3 > v31)
          {
            goto LABEL_191;
          }

          LODWORD(v32) = *(v32 + v35);
          v37 = v30 + 3;
        }

        else
        {
          if (v35 >= v31)
          {
            goto LABEL_191;
          }

          LODWORD(v32) = *(v32 + v35);
          v37 = v30 + 2;
        }

        *(a1 + 260) = v37;
        v40 = -256 << (8 * v36);
        if (v33)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        LODWORD(v34) = v32 | v41;
      }

      v42 = deserialize_GLPString(a1);
      v44 = v43;
      v45 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
      if (!v45)
      {
        goto LABEL_192;
      }

      v46 = v45;
      v45[10] = 0;
      *(v45 + 3) = 0u;
      *(v45 + 4) = 0u;
      *(v45 + 1) = 0u;
      *(v45 + 2) = 0u;
      *v45 = 0u;
      v47 = *(a1 + 260);
      v48 = *(a1 + 256);
      if (v47 + 4 > v48)
      {
        goto LABEL_191;
      }

      v49 = *(a1 + 248);
      v50 = *(v49 + v47);
      v51 = (v47 + 4);
      *(a1 + 260) = v51;
      *v45 = v50;
      if (v51 + 4 > v48)
      {
        goto LABEL_191;
      }

      v52 = *(v49 + v51);
      v53 = (v47 + 8);
      *(a1 + 260) = v53;
      *(v45 + 1) = v52;
      if (v53 + 4 > v48)
      {
        goto LABEL_191;
      }

      v54 = *(v49 + v53);
      v55 = (v47 + 12);
      *(a1 + 260) = v55;
      *(v45 + 2) = v54;
      if (v55 + 4 > v48)
      {
        goto LABEL_191;
      }

      v56 = *(v49 + v55);
      v57 = (v47 + 16);
      *(a1 + 260) = v57;
      *(v45 + 3) = v56;
      if (v57 + 4 > v48)
      {
        goto LABEL_191;
      }

      v58 = *(v49 + v57);
      *(a1 + 260) = v47 + 20;
      *(v45 + 80) = v58;
      v106 = 0;
      deserialize_GLPType(a1, &v106);
      v59 = glpDeepCopyType(v29, v106);
      v46[3] = v59;
      v105 = 0;
      deserialize_GLPValue(a1, v59, &v105);
      v65 = v105 ? glpCopyValue(v29, v46[3], v105, v60, v61, v62, v63, v64) : 0;
      v46[2] = v65;
      v66 = *(a1 + 260);
      v67 = *(a1 + 256);
      if (v66 >= v67)
      {
        goto LABEL_191;
      }

      v68 = *(a1 + 248);
      v69 = *(v68 + v66);
      v70 = *(v68 + v66);
      v71 = v66 + 1;
      *(a1 + 260) = v66 + 1;
      if ((v69 & 0x80000000) == 0)
      {
        if (v70)
        {
          goto LABEL_114;
        }

        goto LABEL_164;
      }

      v78 = (v70 >> 1) & 7;
      if (((v70 >> 1) & 7) > 3)
      {
        if (((v70 >> 1) & 7) > 5)
        {
          if (v78 == 6)
          {
            if (v66 + 5 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v79) = *(v68 + v71);
            *(a1 + 260) = v66 + 5;
            LODWORD(v71) = v66 + 8;
            if (v66 + 8 > v67)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if (v66 + 9 > v67)
            {
              goto LABEL_191;
            }

            v79 = *(v68 + v71);
            LODWORD(v71) = v66 + 9;
          }
        }

        else
        {
          v80 = v66 + 5;
          if (v78 == 4)
          {
            if (v80 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v79) = *(v68 + v71);
            *(a1 + 260) = v66 + 5;
            if (v66 + 5 >= v67)
            {
              goto LABEL_191;
            }

            LODWORD(v71) = v66 + 6;
          }

          else
          {
            if (v80 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v79) = *(v68 + v71);
            v84 = (v66 + 5);
            *(a1 + 260) = v84;
            if (v84 + 2 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v71) = v66 + 7;
          }
        }

        goto LABEL_159;
      }

      if (((v70 >> 1) & 7) <= 1)
      {
        break;
      }

      if (v78 != 2)
      {
        if (v66 + 5 > v67)
        {
          goto LABEL_191;
        }

        LODWORD(v79) = *(v68 + v71);
        LODWORD(v71) = v66 + 5;
        goto LABEL_159;
      }

      v82 = v66 + 4;
      if (v82 > v67)
      {
        goto LABEL_191;
      }

      LODWORD(v79) = *(v68 + v71) | (*(v68 + v71 + 2) << 16);
      *(a1 + 260) = v82;
      LODWORD(v71) = v82;
LABEL_160:
      v85 = -256 << (8 * v78);
      if (v69)
      {
        v86 = v85;
      }

      else
      {
        v86 = 0;
      }

      LODWORD(v70) = v79 | v86;
      if (v79 | v86)
      {
LABEL_114:
        if (v71 >= v67)
        {
          goto LABEL_191;
        }

        v72 = v29;
        v73 = *(v68 + v71);
        v74 = *(v68 + v71);
        v75 = v71 + 1;
        *(a1 + 260) = v75;
        if (v73 < 0)
        {
          v76 = (v74 >> 1) & 7;
          if (((v74 >> 1) & 7) > 3)
          {
            if (((v74 >> 1) & 7) <= 5)
            {
              v81 = v71 + 5;
              if (v76 == 4)
              {
                if (v81 > v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                *(a1 + 260) = v71 + 5;
                if (v71 + 5 >= v67)
                {
                  goto LABEL_191;
                }

                v77 = v71 + 6;
              }

              else
              {
                if (v81 > v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                v88 = (v71 + 5);
                *(a1 + 260) = v88;
                if (v88 + 2 > v67)
                {
                  goto LABEL_191;
                }

                v77 = v71 + 7;
              }

              goto LABEL_174;
            }

            if (v76 != 6)
            {
              if (v71 + 9 > v67)
              {
                goto LABEL_191;
              }

              v68 = *(v68 + v75);
              v77 = v71 + 9;
              goto LABEL_174;
            }

            if (v71 + 5 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v68) = *(v68 + v75);
            *(a1 + 260) = v71 + 5;
            v83 = v71 + 8;
            if (v83 > v67)
            {
              goto LABEL_191;
            }

LABEL_149:
            *(a1 + 260) = v83;
          }

          else
          {
            if (((v74 >> 1) & 7) <= 1)
            {
              if (v76)
              {
                if (v71 + 3 > v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                v77 = v71 + 3;
              }

              else
              {
                if (v75 >= v67)
                {
                  goto LABEL_191;
                }

                LODWORD(v68) = *(v68 + v75);
                v77 = v71 + 2;
              }

              goto LABEL_174;
            }

            if (v76 == 2)
            {
              v83 = v71 + 4;
              if (v83 > v67)
              {
                goto LABEL_191;
              }

              LODWORD(v68) = *(v68 + v75) | (*(v68 + v75 + 2) << 16);
              goto LABEL_149;
            }

            if (v71 + 5 > v67)
            {
              goto LABEL_191;
            }

            LODWORD(v68) = *(v68 + v75);
            v77 = v71 + 5;
LABEL_174:
            *(a1 + 260) = v77;
          }

          if (v73)
          {
            v89 = -256 << (8 * v76);
          }

          else
          {
            LODWORD(v89) = 0;
          }

          LODWORD(v74) = v68 | v89;
        }

        v87 = BitSetNew(v70);
        memcpy(*(v87 + 40), (*(a1 + 248) + *(a1 + 260)), v74);
        *(a1 + 260) += v74;
        v29 = v72;
        goto LABEL_180;
      }

LABEL_164:
      v87 = 0;
LABEL_180:
      v90 = (v27 + v34);
      v46[4] = v87;
      for (i = 40; i != 60; i += 4)
      {
        v92 = *(a1 + 260);
        if (v92 + 4 > *(a1 + 256))
        {
          goto LABEL_191;
        }

        v93 = *(*(a1 + 248) + v92);
        *(a1 + 260) = v92 + 4;
        *(v46 + i) = v93;
      }

      v94 = v44;
      v95 = malloc_type_malloc(v44, 0xCA0EF1E7uLL);
      if (!v95)
      {
        goto LABEL_192;
      }

      v96 = v95;
      memcpy(v95, v42, v44);
      v97 = (v104 + 32 * v90);
      *v97 = v46;
      if (v44)
      {
        v98 = v44 >> 5;
        LODWORD(v99) = v44;
        v100 = ~(v44 >> 5);
        do
        {
          v99 = (32 * v99 + (v99 >> 2) + v96[v44 - 1]) ^ v99;
          v44 += v100;
        }

        while (v44 > v98);
        v101 = v99 << 32;
      }

      else
      {
        v101 = 0;
      }

      v97[1] = v96;
      v97[2] = v101 | v94;
      v27 = v90 + 1;
      ++v28;
      v5 = v103;
      if (v28 >= v103[9])
      {
        return v5;
      }
    }

    if (v78)
    {
      if (v66 + 3 > v67)
      {
        goto LABEL_191;
      }

      LODWORD(v79) = *(v68 + v71);
      LODWORD(v71) = v66 + 3;
    }

    else
    {
      if (v71 >= v67)
      {
        goto LABEL_191;
      }

      LODWORD(v79) = *(v68 + v71);
      LODWORD(v71) = v66 + 2;
    }

LABEL_159:
    *(a1 + 260) = v71;
    goto LABEL_160;
  }

  return v5;
}

void *glpLinkProgram(void *a1)
{
  v565[7] = *MEMORY[0x277D85DE8];
  bzero(v543, 0x230uLL);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v521, 0, sizeof(v521));
  v491 = a1 + 23;
  v518 = a1;
  v500 = a1 + 13;
  v496 = 1;
  do
  {
    v12 = &v500[2 * v6];
    v13 = *(v12 + 1);
    if (v13)
    {
      v505 = v11;
      v511 = v8;
      v14 = &v543[14 * v6];
      memset(v565, 0, 56);
      v563 = 0u;
      v564 = 0u;
      v561 = 0u;
      v562 = 0u;
      v559 = 0u;
      v560 = 0u;
      v557 = 0u;
      v558 = 0u;
      v555 = 0u;
      v556 = 0u;
      v553 = 0u;
      v554 = 0u;
      v551 = 0u;
      v552 = 0u;
      v550 = 0u;
      glpASTMergeInitContext(&v550, v518, v6);
      v15 = 0;
      v16 = 8 * v13;
      do
      {
        v17 = glpDeserializeAST(v518, *(*(v12[1] + v15) + 16), *(*(v12[1] + v15) + 8));
        if (!v17)
        {
          v491[v6] = 0;
          v24 = v518[8];
          v25 = glpLanguageToString(v6);
          *&v540 = "-1";
          *(&v540 + 1) = 0xEDA00000002;
          *&v541 = 0xFFFFFFFFLL;
          glpLogMessage(v24, 0, &v540, "Compiled %s shader was corrupt.", v26, v27, v28, v29, v25);
          goto LABEL_13;
        }

        if (!glpASTMergePhase1AddTopLevelNode(&v550, v17))
        {
          goto LABEL_13;
        }

        v15 += 8;
      }

      while (v16 != v15);
      v18 = glpASTMergePhase2(&v550);
      if (v18 != -1)
      {
        v491[v6] = v18;
        v19 = vextq_s8(v563, v563, 8uLL);
        *v14 = v562;
        *(v14 + 1) = v19;
        *(v14 + 2) = v564;
        v20 = v560;
        v14[6] = v565[0];
        v14[7] = v20;
        v21 = *(&v552 + 1);
        v14[8] = v559;
        v14[9] = v21;
        v22 = *&v565[3];
        *(v14 + 5) = *&v565[1];
        *(v14 + 6) = v22;
        goto LABEL_14;
      }

LABEL_13:
      v496 = 0;
LABEL_14:
      v23 = *(v12 + 1);
      v8 = v511;
      if (v505)
      {
LABEL_10:
        if (v23)
        {
          goto LABEL_17;
        }

LABEL_28:
        v11 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v23 = 0;
      v491[v6] = 0;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    if (v23)
    {
      glpPopulatePrecisionWidths(*(*v12[1] + 4), v521);
      v23 = *(v12 + 1);
      if (*(v12 + 1))
      {
LABEL_17:
        v30 = v12[1];
        while (1)
        {
          v31 = *(*v30 + 4);
          if (v31 > 9)
          {
            break;
          }

          if (((1 << v31) & 0x3B8) != 0)
          {
            v10 = 1;
          }

          else if (((1 << v31) & 6) != 0)
          {
            v9 = 1;
          }

          else
          {
            if (v31 != 6)
            {
              break;
            }

            v7 = 1;
          }

LABEL_27:
          v30 += 8;
          if (!--v23)
          {
            goto LABEL_28;
          }
        }

        if (v31)
        {
LABEL_510:
          abort();
        }

        v8 = 1;
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v11 = 0;
LABEL_29:
    ++v6;
  }

  while (v6 != 5);
  if (!v496)
  {
    goto LABEL_37;
  }

  if (v7 && v8)
  {
    v32 = v518[8];
    *&v550 = "-1";
    *(&v550 + 1) = 0xEDA00000002;
    *&v551 = 0xFFFFFFFFLL;
    v33 = "Error: Version 100 and Version 300 shaders may not be linked together.";
LABEL_36:
    glpLogMessage(v32, 0, &v550, v33, v2, v3, v4, v5, v466);
    goto LABEL_37;
  }

  v37 = v7 | v8;
  v38 = v518;
  if (v37)
  {
    v39 = v491;
    if (v9 | v10)
    {
      v32 = v518[8];
      *&v550 = "-1";
      *(&v550 + 1) = 0xEDA00000002;
      *&v551 = 0xFFFFFFFFLL;
      v33 = "Error: Linking ES shaders with non-ES shaders is not supported.";
      goto LABEL_36;
    }
  }

  else
  {
    v39 = v491;
    if (v9 && v10)
    {
      v32 = v518[8];
      *&v550 = "-1";
      *(&v550 + 1) = 0xEDA00000002;
      *&v551 = 0xFFFFFFFFLL;
      v33 = "Error: Linking legacy shaders with core profile shaders is not supported.";
      goto LABEL_36;
    }
  }

  v40 = v518[24];
  if (v40)
  {
    GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(v40, 0x40000000);
    if (GlobalTypeQualifier)
    {
      Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
      if (glpLayoutObjectFind(Layout, 18))
      {
        *(v518 + 80) = *(glpLayoutObjectFind(Layout, 18) + 4);
      }
    }
  }

  v43 = v518[25];
  if (v43)
  {
    v44 = glpTopLevelNodeGetGlobalTypeQualifier(v43, 0x20000000);
    if (!v44)
    {
      goto LABEL_80;
    }

    v45 = glpGlobalTypeQualifierNodeGetLayout(v44);
    if (glpLayoutObjectFind(v45, 3))
    {
      *(v518 + 81) = 4;
      v46 = 1;
    }

    else
    {
      v46 = 0;
    }

    if (glpLayoutObjectFind(v45, 10))
    {
      *(v518 + 81) = 7;
      v46 = 1;
    }

    if (glpLayoutObjectFind(v45, 11))
    {
      *(v518 + 81) = 36474;
      v46 = 1;
    }

    if (glpLayoutObjectFind(v45, 12))
    {
      *(v518 + 82) = 514;
    }

    if (glpLayoutObjectFind(v45, 13))
    {
      *(v518 + 82) = 36476;
    }

    if (glpLayoutObjectFind(v45, 14))
    {
      *(v518 + 82) = 36475;
    }

    if (glpLayoutObjectFind(v45, 15))
    {
      *(v518 + 83) = 2304;
    }

    if (glpLayoutObjectFind(v45, 16))
    {
      *(v518 + 83) = 2305;
    }

    if (glpLayoutObjectFind(v45, 17))
    {
      *(v518 + 84) = 1;
    }

    if (!v46)
    {
LABEL_80:
      v32 = v518[8];
      *&v550 = "-1";
      *(&v550 + 1) = 0xEDA00000002;
      *&v551 = 0xFFFFFFFFLL;
      v33 = "Tessellation evaluation shader must specify triangles, quads or isolines.";
      goto LABEL_36;
    }
  }

  v47 = v518[26];
  if (v47)
  {
    v48 = glpTopLevelNodeGetGlobalTypeQualifier(v47, 0x20000000);
    v49 = glpTopLevelNodeGetGlobalTypeQualifier(v518[26], 0x40000000);
    if (v48)
    {
      v50 = glpGlobalTypeQualifierNodeGetLayout(v48);
      glpLayoutObjectGetGeomInOut(v50, 0, 0, v518 + 77, 0, v518 + 79);
    }

    if (v49)
    {
      v51 = glpGlobalTypeQualifierNodeGetLayout(v49);
      glpLayoutObjectGetGeomInOut(v51, 0, v518 + 76, 0, v518 + 78, 0);
      v52 = *(v518 + 39);
      if (v52)
      {
        v53 = v518[20];
        while ((*(*v53 + 12) & 1) == 0)
        {
          v53 += 8;
          if (!--v52)
          {
            goto LABEL_83;
          }
        }

        if (*(v518 + 78))
        {
          v32 = v518[8];
          *&v550 = "-1";
          *(&v550 + 1) = 0xEDA00000002;
          *&v551 = 0xFFFFFFFFLL;
          v33 = "Use of EmitStreamVertex or EndStreamPrimitive requires layout(points) out.";
          goto LABEL_36;
        }
      }
    }
  }

LABEL_83:
  if (!glpIsLegalStageCombination(v518, v518[23] != 0, v518[24] != 0, v518[25] != 0, v518[26] != 0, v518[27] != 0))
  {
    goto LABEL_37;
  }

  if (*v39 && v518[27] && !*(*v518[14] + 4))
  {
    v273 = *v546;
    v274 = v549;
    v275 = glpStringHashGet(*v546, "gl_Position", 0x64C66BD10000000BuLL);
    v276 = glpStringHashGet(v274, "gl_FragCoord", 0xFCBC8470000000CuLL);
    if (v276 && (*(v276 + 52) & 0x80) != 0 && (!v275 || (*(v275 + 52) & 0x80) == 0))
    {
      v32 = v518[8];
      *&v550 = "-1";
      *(&v550 + 1) = 0xEDA00000002;
      *&v551 = 0xFFFFFFFFLL;
      v33 = "gl_FragCoord can be declared invariant if and only if gl_Position is declared invariant.";
      goto LABEL_36;
    }

    v277 = glpStringHashGet(v273, "gl_PointSize", 0x3BD84BA50000000CuLL);
    v278 = glpStringHashGet(v274, "gl_PointCoord", 0x15E256410000000DuLL);
    if (v278 && (*(v278 + 52) & 0x80) != 0 && (!v277 || (*(v277 + 52) & 0x80) == 0))
    {
      v32 = v518[8];
      *&v550 = "-1";
      *(&v550 + 1) = 0xEDA00000002;
      *&v551 = 0xFFFFFFFFLL;
      v33 = "gl_PointCoord can be declared invariant if and only if gl_PointSize is declared invariant.";
      goto LABEL_36;
    }
  }

  for (i = 0; i != 5; ++i)
  {
    if (v518[i + 23])
    {
      break;
    }
  }

  v55 = 4;
  do
  {
    if (v39[v55])
    {
      break;
    }

    --v55;
  }

  while (v55);
  StringHash = glpMakeStringHash(v518);
  v61 = glpMakeStringHash(v518);
  *&v552 = 0;
  v550 = 0u;
  v551 = 0u;
  v542 = 0;
  v540 = 0u;
  v541 = 0u;
  memset(v539, 0, 40);
  v538 = 0;
  memset(v537, 0, sizeof(v537));
  memset(v536, 0, 40);
  v535 = 0;
  memset(v534, 0, sizeof(v534));
  v532[0] = 0;
  v532[1] = 0;
  v533 = 0;
  if (!i && !glpMakeVertexInputBindings(v518, v543[0], &v550, v539, v536))
  {
    goto LABEL_37;
  }

  v467 = v61;
  v473 = StringHash;
  if (i <= v55)
  {
    v62 = i;
    v482 = &v539[v55];
    v478 = &v536[v55];
    v484 = &v537[v55];
    v63 = &v547[7 * i + 2];
    v64 = i;
    v65 = v55 + 1;
    v66 = &v550 + 8;
    v67 = &v539[1];
    v68 = &v536[1];
    v69 = v518 + 24;
    v480 = &v534[v55];
    do
    {
      if (v39[v62])
      {
        v501 = v69;
        v506 = v68;
        *v512 = v67;
        v70 = &v543[14 * v62];
        if (!glpMergeUniforms(*(v38 + 64), StringHash, v70[3]) || !glpMergeInterfaceBlocks(*(v38 + 64), v62, v61, v70[6], 0))
        {
          goto LABEL_37;
        }

        v492 = &v543[14 * v62];
        v494 = v66;
        v69 = v501;
        v68 = v506;
        v71 = v501;
        v72 = v506;
        v67 = *v512;
        v73 = *v512;
        v74 = v66;
        v497 = v63;
        v75 = v63;
        v76 = v62;
        do
        {
          v77 = v76;
          v78 = v75;
          v79 = v74;
          v80 = v73;
          v81 = v72;
          if (v76 > 3)
          {
            break;
          }

          v82 = v71[v64];
          v75 += 14;
          v74 += 8;
          ++v73;
          ++v72;
          ++v71;
          ++v76;
        }

        while (!v82);
        v83 = 0;
        if (v62 != 4 && v77 >= 3)
        {
          v83 = *(v518[12] + 4) != 0;
        }

        *(v532 + v62) = v83;
        if (v62 == v55)
        {
          v38 = v518;
          v39 = v491;
          StringHash = v473;
          v66 = v494;
          v63 = v497;
          if (!v55)
          {
            goto LABEL_513;
          }

          if (!*v482 && !*v478)
          {
            v487 = v83;
            InterstageBindings = glpMakeInterstageBindings(v518, v55, v55, 0, 0, 0, *v492, 0, &v550 + v55, 0, v482, 0, v478);
            v83 = v487;
            v69 = v501;
            v68 = v506;
            v67 = *v512;
            if (!InterstageBindings)
            {
              goto LABEL_37;
            }
          }

          if (v62 != 4)
          {
LABEL_513:
            if (!*v484 && !*v480)
            {
              v85 = glpMakeInterstageBindings(v518, v55, v55, v83, v492[1], v492[2], 0, &v540 + v55, 0, v484, 0, v480, 0);
              v69 = v501;
              v68 = v506;
              v67 = *v512;
              if (!v85)
              {
                goto LABEL_37;
              }
            }
          }
        }

        else
        {
          v488 = v83;
          v86 = glpMakeStringHash(v518);
          if (!glpMergeInterfaceBlocks(v518[8], v62, v86, v492[4], 0))
          {
            goto LABEL_37;
          }

          if (!glpMergeInterfaceBlocks(v518[8], v62, v86, v492[5], v62 == 3))
          {
            goto LABEL_37;
          }

          v87 = v77 + 1;
          v38 = v518;
          v88 = glpMakeInterstageBindings(v518, v62, v87, v488, v492[1], v492[2], *v78, &v540 + v62, &v79[v64 * 8], &v537[v62], &v80[v64], &v534[v62], &v81[v64]);
          v39 = v491;
          v61 = v467;
          StringHash = v473;
          v65 = v55 + 1;
          v66 = v494;
          v63 = v497;
          v68 = v506;
          v67 = *v512;
          v69 = v501;
          if (!v88)
          {
            goto LABEL_37;
          }
        }
      }

      ++v62;
      v63 += 7;
      v66 += 8;
      ++v67;
      ++v68;
      ++v69;
    }

    while (v62 != v65);
  }

  if (v55 == 4 && !glpMakeFragmentOutputBindings(v38, v548, &v542, &v538, &v535))
  {
    goto LABEL_37;
  }

  if (!v550)
  {
    v89 = *(v38 + 80);
    v90 = *(v89 + 32);
    if (v90)
    {
      v91 = 0;
      for (j = 0; j < v90; ++j)
      {
        v93 = *(v89 + 40);
        if (*(v93 + v91))
        {
          v94 = v93 + v91;
          v95 = *(v93 + v91 + 8);
          v96 = *(v38 + 64);
          LODWORD(v94) = *(v94 + 16);
          *v522 = "-1";
          *&v522[8] = 0xEDA00000002;
          *&v522[16] = 0xFFFFFFFFLL;
          glpLogMessage(v96, 1u, v522, "Do not have an attached vertex shader to match BindAttributeLocation request for '%.*s'.", v57, v58, v59, v60, v94);
          v90 = *(v89 + 32);
        }

        v91 += 32;
      }
    }
  }

  v97 = 0;
  v98 = v547;
  do
  {
    if (v491[v97])
    {
      v99 = *(v532 + v97);
      if (v99)
      {
        v100 = v38 + 224;
      }

      else
      {
        v100 = 0;
      }

      if (v99)
      {
        v101 = v38 + 240;
      }

      else
      {
        v101 = 0;
      }

      glpGenerateCopyInOut(v518, v97, v536[v97], v539[v97], v534[v97], v537[v97], v100, v101, v491[v97], *v98);
    }

    ++v97;
    v98 += 14;
  }

  while (v97 != 5);
  v102 = v518;
  v103 = v491;
  if (!v542)
  {
    v104 = v518[11];
    v105 = *(v104 + 32);
    if (v105)
    {
      v106 = 0;
      for (k = 0; k < v105; ++k)
      {
        v108 = *(v104 + 40);
        if (*(v108 + v106))
        {
          v109 = v108 + v106;
          v110 = *(v108 + v106 + 8);
          v111 = v518[8];
          LODWORD(v109) = *(v109 + 16);
          *v522 = "-1";
          *&v522[8] = 0xEDA00000002;
          *&v522[16] = 0xFFFFFFFFLL;
          glpLogMessage(v111, 1u, v522, "Do not have an attached fragment shader to match FragDataBinding request for '%.*s'.", v57, v58, v59, v60, v109);
          v105 = *(v104 + 32);
        }

        v106 += 32;
      }
    }
  }

  if (v540)
  {
    v112 = 0;
  }

  else
  {
    v112 = v541 == 0;
  }

  if (v112 && *(&v541 + 1) == 0)
  {
    v114 = v518[12];
    if (*(v114 + 4))
    {
      v115 = 0;
      v116 = 0;
      do
      {
        v117 = (*(v114 + 8) + v115);
        v118 = *v117;
        v119 = v518[8];
        LODWORD(v117) = *(v117 + 2);
        *v522 = "-1";
        *&v522[8] = 0xEDA00000002;
        *&v522[16] = 0xFFFFFFFFLL;
        glpLogMessage(v119, 0, v522, "Do not have an attached vertex or evaluation or geometry shader to match transform feedback binding for '%.*s.'. ", v57, v58, v59, v60, v117);
        ++v116;
        v114 = v518[12];
        v115 += 16;
      }

      while (v116 < *(v114 + 4));
      goto LABEL_37;
    }
  }

  v495 = __abort_calloc();
  v530[0] = 0;
  v530[1] = 0;
  v531 = 0;
  v528[0] = 0;
  v528[1] = 0;
  v529 = 0;
  v495[10] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v495[25] = 4;
  v495[26] = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16, "Vector Storage (int)");
  v474 = 0;
  __src = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 32, "Vector Storage (GLPVariableObject *)");
  v502 = 0;
  v476 = 0;
  v470 = 0;
  v471 = 0;
  v121 = v473;
  v122 = *(v473 + 32);
  v123 = v122;
  v472 = 4;
  while (2)
  {
    if (v123)
    {
      v124 = 0;
      while (1)
      {
        v125 = (*(v121 + 40) + 32 * v124);
        v126 = *v125;
        if (*v125)
        {
          break;
        }

LABEL_293:
        ++v124;
        v123 = v122;
        if (v124 >= v122)
        {
          goto LABEL_299;
        }
      }

      v127 = 0;
      v128 = 0;
      v129 = v125[1];
      v130 = v125[2];
      v479 = v124;
      ArrayType = *v126;
      v483 = *(v126 + 120);
      v131 = *(v126 + 128);
      memset(v522, 0, 20);
      v132 = v544;
      do
      {
        if (v102[v127 + 23])
        {
          v133 = glpStringHashGet(*v132, v129, v130);
          v134 = 1 << v127;
          if (!v133)
          {
            v134 = 0;
          }

          v128 |= v134;
        }

        ++v127;
        v132 += 14;
      }

      while (v127 != 5);
      v135 = v495;
      if (v128 != 1 << v471)
      {
        if (v471 != 5)
        {
          goto LABEL_187;
        }

        v120.i32[0] = v128;
        v120 = vcnt_s8(v120);
        v120.i16[0] = vaddlv_u8(v120);
        if (v120.i32[0] < 2u)
        {
          goto LABEL_187;
        }
      }

      *v513 = v129;
      if (!*(v126 + 88))
      {
        v147 = v522;
        v148 = v544;
        v149 = 23;
        v150 = v483;
        do
        {
          if (v518[v149])
          {
            v151 = glpStringHashGet(*v148, v129, v130);
            if (v151)
            {
              v152 = v151;
              v150 = BitSetOr(v150, *(v151 + 120));
              v153 = *(v152 + 128);
              if (v131 <= v153)
              {
                v131 = *(v152 + 128);
              }

              *v147 = v153;
              if (glpTypeGetKind(*v152) == 2 && *(v152 + 120))
              {
                ElementType = glpArrayTypeGetElementType(*v152);
                v155 = glpABIGetTypeSize(0, ElementType, 0);
                Size = glpTypeSizeGetSize(v155);
                v157 = *(v152 + 128);
                v158 = v157 % Size ? v157 / Size + 1 : v157 / Size;
                if (glpArrayTypeGetElementCount(*v152) != v158)
                {
                  v159 = glpArrayTypeGetElementType(*v152);
                  *v152 = glpMakeArrayType(v518, v159, v158, -1);
                }
              }
            }

            v135 = v495;
          }

          ++v149;
          ++v147;
          v148 += 14;
        }

        while (v149 != 28);
        v483 = v150;
        if (glpTypeGetKind(ArrayType) == 2)
        {
          v102 = v518;
          v103 = v491;
          if (v483)
          {
            v160 = glpArrayTypeGetElementType(ArrayType);
            v161 = glpABIGetTypeSize(0, v160, 0);
            v162 = glpTypeSizeGetSize(v161);
            v163 = v131 % v162 ? v131 / v162 + 1 : v131 / v162;
            if (glpArrayTypeGetElementCount(ArrayType) != v163)
            {
              v164 = glpArrayTypeGetElementType(ArrayType);
              ArrayType = glpMakeArrayType(v518, v164, v163, -1);
            }
          }
        }

        else
        {
          v102 = v518;
          v103 = v491;
        }
      }

      v136 = v130;
      if (v130 && *v129 == 36)
      {
        if (v130 < 9 || (v137 = strncmp("$ib$", v129, 4uLL), v136 = v130, v137) || (v138 = strncmp("$gl_", v129 + 5, 4uLL), v136 = v130, v138))
        {
          if ((v102[5] & 2) != 0 && (*(v126 + 52) & 0xC) == 0)
          {
            v165 = 0;
            v166 = v544;
            do
            {
              if (v103[v165])
              {
                glpStringHashGet(*v166, v129, v130);
              }

              ++v165;
              v166 += 14;
            }

            while (v165 != 5);
            if (v474 + 1 <= v472)
            {
              v171 = v474;
              v121 = v473;
              v172 = __src;
            }

            else
            {
              if (v472 <= 1)
              {
                v167 = 1;
              }

              else
              {
                v167 = v472;
              }

              v168 = 2 * v167;
              if (v168 <= (v474 + 1))
              {
                v169 = v474 + 1;
              }

              else
              {
                v169 = v168;
              }

              v170 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 8 * v169, "Vector Storage (GLPVariableObject *, growth)");
              v171 = v474;
              memcpy(v170, __src, 8 * v474);
              off_2819B9B80(GLP_MALLOC_ALLOCATOR, __src);
              v172 = v170;
              v472 = v169;
              v121 = v473;
            }

            v124 = v479;
            __src = v172;
            *(v172 + v171) = v126;
            ++v474;
          }

          else
          {
            if (v130 >= 9)
            {
              goto LABEL_178;
            }

LABEL_187:
            v121 = v473;
            v124 = v479;
          }

LABEL_292:
          v122 = *(v121 + 32);
          goto LABEL_293;
        }

LABEL_178:
        v139 = v136;
        if (strncmp("$ib$", v129, 4uLL))
        {
          goto LABEL_187;
        }

        v140 = strncmp("$gl_", v129 + 5, 4uLL);
        v136 = v139;
        if (v140)
        {
          goto LABEL_187;
        }
      }

      if ((*(v126 + 52) & 4) != 0)
      {
        goto LABEL_187;
      }

      v141 = v136;
      v142 = malloc_type_malloc(v136, 0xCA0EF1E7uLL);
      if (!v142)
      {
        goto LABEL_510;
      }

      v468 = v142;
      v469 = v141;
      memcpy(v142, v129, v141);
      v143 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
      if (!v143)
      {
        goto LABEL_510;
      }

      v144 = v143;
      v143[10] = 0;
      *(v143 + 3) = 0u;
      *(v143 + 4) = 0u;
      *(v143 + 1) = 0u;
      *(v143 + 2) = 0u;
      *v143 = 0u;
      if (v130 < 3)
      {
LABEL_227:
        v173 = 1;
      }

      else
      {
        v145 = *v129;
        if (v145 == 103)
        {
          v145 = *(v129 + 1);
          if (v145 == 108)
          {
            v145 = *(v129 + 2);
            v146 = 95;
          }

          else
          {
            v146 = 108;
          }
        }

        else
        {
          v146 = 103;
        }

        if (v146 == v145)
        {
          v173 = 0;
          goto LABEL_230;
        }

        if (v130 < 9 || strncmp("$ib$", v129, 4uLL))
        {
          goto LABEL_227;
        }

        v229 = strncmp("$gl_", v129 + 5, 4uLL);
        v173 = v229 != 0;
        if (!v229)
        {
LABEL_230:
          v174 = -1;
LABEL_231:
          v490 = v174;
          v175 = 0;
          v507 = 0;
          v498 = v130;
          v486 = v144;
          v485 = v173;
          do
          {
            if (v103[v175])
            {
              v176 = glpStringHashGet(v543[14 * v175 + 3], v129, v130);
              if (v176)
              {
                v177 = v176;
                v493 = v175;
                *v144 |= 1 << v175;
                *(v176 + 156) = v490;
                if (v173)
                {
                  v178 = glpABIGetTypeSize(0, *v176, 0);
                  v179 = glpTypeSizeGetSize(v178);
                }

                else
                {
                  v179 = 0;
                }

                *(v530 + v175) += v179;
                SamplerCount = glpTypeGetSamplerCount(*v177);
                *(v528 + v175) += SamplerCount;
                if (!v173 && (v102[5] & 2) != 0)
                {
                  v186 = v177[1];
                  if (!v186 || (v187 = SamplerCount, v188 = glpLayoutObjectFind(v186, 28), SamplerCount = v187, !v188))
                  {
                    if (v474 + 1 <= v472)
                    {
                      v194 = v474;
                      v193 = __src;
                    }

                    else
                    {
                      if (v472 <= 1)
                      {
                        v189 = 1;
                      }

                      else
                      {
                        v189 = v472;
                      }

                      v190 = 2 * v189;
                      if (v190 <= (v474 + 1))
                      {
                        v191 = v474 + 1;
                      }

                      else
                      {
                        v191 = v190;
                      }

                      v472 = v191;
                      v192 = SamplerCount;
                      v193 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 8 * v191, "Vector Storage (GLPVariableObject *, growth)");
                      v194 = v474;
                      memcpy(v193, __src, 8 * v474);
                      v129 = *v513;
                      off_2819B9B80(GLP_MALLOC_ALLOCATOR, __src);
                      SamplerCount = v192;
                      v103 = v491;
                    }

                    *(v193 + v194) = v177;
                    ++v474;
                    __src = v193;
                    v144 = v486;
                    v173 = v485;
                  }
                }

                v195 = v177[9];
                if (v195 && !*(v144 + 16))
                {
                  v196 = SamplerCount;
                  v197 = glpCopyValue(&GLP_MALLOC_ALLOCATOR, *v177, v195, v180, v181, v182, v183, v184);
                  SamplerCount = v196;
                  *(v144 + 16) = v197;
                }

                if ((v102[5] & 2) != 0 && SamplerCount >= 1)
                {
                  v489 = SamplerCount;
                  glpLLVMAllocVariableExtra(v102, v177);
                  v198 = glpABIGetTypeSize(0, *v177, 0);
                  v199 = glpTypeSizeGetSize(v198);
                  v200 = v102;
                  v201 = v199;
                  v202 = (v102[1])(*v102, 4 * v199, "Primitive Types");
                  v203 = (v102[1])(*v102, v199, "Flags");
                  glpTypeGetAppleVec4Types(*v177, v202, 1, 0, 0, v203, 0, 0, 0);
                  v204 = (v102[1])(*v102, 16, "Sampler Uniform");
                  *(v177[18] + 8) = v204;
                  *v204 = v507;
                  *(v204 + 8) = (v200[1])(*v200, 16 * v507, "Vector Storage (GLPLLVMSampler)");
                  if (v199)
                  {
                    v205 = 0;
                    v206 = v476;
                    do
                    {
                      if (glpPrimitiveTypeGetCategory(*v202) == 4)
                      {
                        if (!v507)
                        {
                          v207 = *(v135 + 50);
                          v208 = *(v135 + 51);
                          if (v208 + 1 <= v207)
                          {
                            v211 = v135[26];
                            v212 = *(v135 + 51);
                          }

                          else
                          {
                            if (v207 <= 1)
                            {
                              v207 = 1;
                            }

                            v209 = 2 * v207;
                            if (v209 <= v208 + 1)
                            {
                              v210 = v208 + 1;
                            }

                            else
                            {
                              v210 = v209;
                            }

                            v211 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 4 * v210, "Vector Storage (int, growth)");
                            memcpy(v211, v135[26], 4 * *(v135 + 51));
                            off_2819B9B80(GLP_MALLOC_ALLOCATOR, v135[26]);
                            *(v135 + 50) = v210;
                            v135[26] = v211;
                            v212 = *(v135 + 51);
                          }

                          memmove(&v211[4 * v208 + 4], &v211[4 * v208], 4 * (v212 - v208));
                          *(v135[26] + 4 * v208) = v206;
                          ++*(v135 + 51);
                        }

                        v213 = *v202;
                        v214 = *v204;
                        v215 = *(v204 + 4);
                        if ((v215 + 1) <= *v204)
                        {
                          v218 = *(v204 + 8);
                          v219 = *(v204 + 4);
                        }

                        else
                        {
                          if (v214 <= 1)
                          {
                            v214 = 1;
                          }

                          v216 = 2 * v214;
                          if (v216 <= v215 + 1)
                          {
                            v217 = v215 + 1;
                          }

                          else
                          {
                            v217 = v216;
                          }

                          v218 = (v518[1])(*v518, 16 * v217, "Vector Storage (GLPLLVMSampler, growth)");
                          memcpy(v218, *(v204 + 8), 16 * *(v204 + 4));
                          v135 = v495;
                          (v518[3])(*v518, *(v204 + 8));
                          *v204 = v217;
                          *(v204 + 8) = v218;
                          v219 = *(v204 + 4);
                        }

                        memmove(&v218[16 * v215 + 16], &v218[16 * v215], 16 * (v219 - v215));
                        v220 = (*(v204 + 8) + 16 * v215);
                        *v220 = v205 + v502;
                        v220[1] = -1;
                        v220[2] = v206;
                        v220[3] = v213;
                        ++*(v204 + 4);
                        ++v205;
                        v130 = v498;
                        v129 = *v513;
                      }

                      ++v206;
                      ++v202;
                      --v201;
                    }

                    while (v201);
                  }

                  v507 = v489;
                  v102 = v518;
                  v103 = v491;
                  v144 = v486;
                  v173 = v485;
                }

                v175 = v493;
              }
            }

            ++v175;
          }

          while (v175 != 5);
          *(v144 + 4) = v490;
          *(v144 + 8) = 0xFFFFFFFFLL;
          *(v144 + 24) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, ArrayType);
          v221 = v483;
          if (v483)
          {
            v221 = BitSetCloneWithAllocator(v483, GLP_MALLOC_ALLOCATOR, *(&GLP_MALLOC_ALLOCATOR + 1), off_2819B9B78, off_2819B9B80);
          }

          *(v144 + 32) = v221;
          *(v144 + 80) = 0;
          v222 = *v522;
          *(v144 + 40) = *v522;
          *(v144 + 56) = *&v522[16];
          v223 = v135[10];
          if (v130)
          {
            v224 = v130 >> 5;
            LODWORD(v225) = v130;
            v226 = ~(v130 >> 5);
            v121 = v473;
            v124 = v479;
            do
            {
              v225 = (32 * v225 + (v225 >> 2) + v468[(v130 - 1)]) ^ v225;
              LODWORD(v130) = v130 + v226;
            }

            while (v130 > v224);
            v227 = v225 << 32;
          }

          else
          {
            v227 = 0;
            v121 = v473;
            v124 = v479;
          }

          glpStringHashPut(v223, v468, v227 | v469, v144, v222);
          if (v173)
          {
            v228 = glpABIGetTypeSize(0, ArrayType, 0);
            v476 += glpTypeSizeGetSize(v228);
          }

          v502 += v507;
          v470 += glpTypeGetSamplerCount(ArrayType);
          goto LABEL_292;
        }
      }

      v174 = v476;
      goto LABEL_231;
    }

LABEL_299:
    if (++v471 != 6)
    {
      continue;
    }

    break;
  }

  v519 = 4;
  v230 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 64, "Vector Storage (GLPContextStateUniformEntry)");
  v520 = v230;
  if (v474)
  {
    v231 = v230;
    LODWORD(v232) = 0;
    v233 = 0;
    v234 = v476;
    do
    {
      *v514 = v233;
      v235 = *(__src + v233);
      *(v235 + 156) = v234;
      v236 = glpABIGetTypeSize(0, *v235, 0);
      v237 = glpTypeSizeGetSize(v236);
      v477 = v234;
      if (v237)
      {
        v238 = v237;
        v239 = 0;
        for (m = 0; m != v238; ++m)
        {
          *v522 = v234;
          v241 = glpLayoutObjectFind(*(v235 + 8), 46);
          if (!v241 || *(v241 + 4) != 9)
          {
            v242 = glpLayoutObjectFind(*(v235 + 8), 46);
            if (v242)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFFFFFFFE0FFLL | ((v242[2] & 0x1F) << 8);
            }

            v243 = glpLayoutObjectFind(*(v235 + 8), 48);
            if (v243)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFF8FFFFFFFFLL | ((v243[2] & 7) << 32);
            }

            v244 = glpLayoutObjectFind(*(v235 + 8), 49);
            if (v244)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFF07FFFFFFFFLL | ((v244[2] & 0x1F) << 35);
            }

            v245 = glpLayoutObjectFind(*(v235 + 8), 51);
            if (v245)
            {
              *&v522[8] = *&v522[8] & 0xFFFFF0FFFFFFFFFFLL | ((v245[2] & 0xF) << 40);
            }

            v246 = glpLayoutObjectFind(*(v235 + 8), 53);
            if (v246)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFEFFFFFFFFFFLL | ((v246[2] & 1) << 40);
            }

            v247 = glpLayoutObjectFind(*(v235 + 8), 54);
            if (v247)
            {
              *&v522[8] = *&v522[8] & 0xFFFFF9FFFFFFFFFFLL | ((v247[2] & 3) << 41);
            }

            v248 = glpLayoutObjectFind(*(v235 + 8), 55);
            if (v248)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFFEFFFFFFFFLL | ((v248[2] & 1) << 32);
            }

            v249 = glpLayoutObjectFind(*(v235 + 8), 56);
            if (v249)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFF1FFFFFFFFLL | ((v249[2] & 7) << 33);
            }

            v250 = glpLayoutObjectFind(*(v235 + 8), 58);
            if (v250)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFC7FFFFFFFFFLL | ((v250[2] & 7) << 39);
            }

            v251 = glpLayoutObjectFind(*(v235 + 8), 62);
            if (v251)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFCFFFFFFFFFFLL | ((v251[2] & 3) << 40);
            }

            v252 = glpLayoutObjectFind(*(v235 + 8), 64);
            if (v252)
            {
              *&v522[8] = *&v522[8] & 0xFFFF8FFFFFFFFFFFLL | ((v252[2] & 7) << 44);
            }

            v253 = glpLayoutObjectFind(*(v235 + 8), 65);
            if (v253)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFF0FFFFFFFFLL | ((v253[2] & 0xF) << 32);
            }

            v254 = glpLayoutObjectFind(*(v235 + 8), 66);
            if (v254)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFF0FFFFFFFFFLL | ((v254[2] & 0xF) << 36);
            }

            v255 = glpLayoutObjectFind(*(v235 + 8), 67);
            if (v255)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFFFFFLL | (*(v255 + 4) << 40);
            }

            v256 = glpLayoutObjectFind(*(v235 + 8), 47);
            if (v256)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFFFF0000FFFFLL | (v239 + (*(v256 + 4) << 16));
            }

            v257 = glpLayoutObjectFind(*(v235 + 8), 50);
            if (v257)
            {
              v258 = m + *(v257 + 4);
              v522[12] = m + *(v257 + 16);
            }

            v259 = glpLayoutObjectFind(*(v235 + 8), 52);
            if (v259)
            {
              v260 = m + *(v259 + 4);
              v522[12] = m + *(v259 + 16);
            }

            v261 = glpLayoutObjectFind(*(v235 + 8), 57);
            if (v261)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFF80FFFFFFFFLL | (((m + *(v261 + 4)) & 0x7F) << 32);
            }

            v262 = glpLayoutObjectFind(*(v235 + 8), 59);
            if (v262)
            {
              *&v522[8] = *&v522[8] & 0xFFFFFF80FFFFFFFFLL | (((m + *(v262 + 4)) & 0x7F) << 32);
            }

            v263 = glpLayoutObjectFind(*(v235 + 8), 60);
            if (v263)
            {
              v264 = m + *(v263 + 4);
              v522[12] = m + *(v263 + 16);
            }

            v265 = glpLayoutObjectFind(*(v235 + 8), 61);
            if (v265)
            {
              v266 = *(v265 + 4) + (m >> 2);
              v522[12] = *(v265 + 16) + (m >> 2);
            }

            v267 = glpLayoutObjectFind(*(v235 + 8), 63);
            if (v267)
            {
              *&v522[8] = *&v522[8] & 0xFFFFF3FFFFFFFFFFLL | (((m + *(v267 + 4)) & 3) << 42);
            }

            PPStreamTokenConvertParamBindingsToGeneric(&v522[8], 1);
            v526 = *v522;
            v268 = v519;
            if (v232 + 1 <= v519)
            {
              v232 = v232;
            }

            else
            {
              if (v519 <= 1)
              {
                v268 = 1;
              }

              v269 = 2 * v268;
              if (v269 <= v232 + 1)
              {
                v270 = v232 + 1;
              }

              else
              {
                v270 = v269;
              }

              v271 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16 * v270, "Vector Storage (GLPContextStateUniformEntry, growth)");
              v232 = v232;
              memcpy(v271, v231, 16 * v232);
              off_2819B9B80(GLP_MALLOC_ALLOCATOR, v231);
              LODWORD(v519) = v270;
              v520 = v271;
            }

            v231 = v520;
            *(v520 + v232) = v526;
            LODWORD(v232) = ++HIDWORD(v519);
          }

          v239 += 0x40000;
          ++v234;
        }
      }

      v272 = glpABIGetTypeSize(0, *v235, 0);
      v234 = glpTypeSizeGetSize(v272) + v477;
      v233 = *v514 + 1;
    }

    while (*v514 + 1 != v474);
  }

  else
  {
    v234 = v476;
  }

  off_2819B9B80(GLP_MALLOC_ALLOCATOR, __src);
  v495[27] = glpCopyContextState(&v519);
  off_2819B9B80(GLP_MALLOC_ALLOCATOR, v520);
  v283 = 0;
  *(v495 + 56) = v234;
  v284 = v467;
  do
  {
    if (*(v528 + v283) >= 17)
    {
      v286 = v518[8];
      glpLanguageToString(v283);
      glpLanguageToString(v283);
      *v522 = "-1";
      *&v522[8] = 0xEDA00000002;
      *&v522[16] = 0xFFFFFFFFLL;
      glpLogMessage(v286, 0, v522, "Implementation limit of %d active %s shader samplers (e.g., maximum number of supported image units) exceeded, %s shader uses %d samplers", v287, v288, v289, v290, 16);
      goto LABEL_381;
    }

    if (*(v530 + v283) >= 1025)
    {
      v291 = v518[8];
      glpLanguageToString(v283);
      *v522 = "-1";
      *&v522[8] = 0xEDA00000002;
      *&v522[16] = 0xFFFFFFFFLL;
      glpLogMessage(v291, 0, v522, "Implementation limit of %d (e.g., number of built-in plus user defined active uniforms components) exceeded, %s shader uses %d total uniforms.", v292, v293, v294, v295, 0);
      goto LABEL_381;
    }

    ++v283;
  }

  while (v283 != 5);
  if (v470 >= 33)
  {
    v285 = v518[8];
    *v522 = "-1";
    *&v522[8] = 0xEDA00000002;
    *&v522[16] = 0xFFFFFFFFLL;
    glpLogMessage(v285, 0, v522, "Implementation limit of %d active samplers (e.g., maximum number of supported image units) exceeded, linked shaders use %d samplers", v279, v280, v281, v282, 32);
LABEL_381:
    v296 = v495;
    goto LABEL_382;
  }

  v526 = 0uLL;
  v527 = 0;
  v34 = v495;
  v495[11] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v297 = *(v473 + 32);
  if (v297)
  {
    v298 = 0;
    v299 = 0;
    v300 = 0;
    do
    {
      v301 = (*(v473 + 40) + 32 * v298);
      v302 = *v301;
      if (*v301 && (*(v302 + 52) & 4) != 0)
      {
        v303 = v301[1];
        v304 = v301[2];
        v305 = __abort_malloc_0(v304);
        memcpy(v305, v303, v304);
        v306 = __abort_malloc_0(0x58uLL);
        *v306 = 0u;
        v306[1] = 0u;
        v306[2] = 0u;
        v306[3] = 0u;
        v306[4] = 0u;
        *(v306 + 10) = 0;
        v503 = v299;
        *(v306 + 1) = v299;
        *(v306 + 2) = v300;
        v515 = v300;
        *(v306 + 3) = 0;
        v307 = 0;
        *(v306 + 3) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *v302);
        *(v306 + 4) = 0;
        *(v306 + 80) = 0;
        *v306 = 0;
        v309 = v544;
        do
        {
          if (v491[v307])
          {
            v310 = glpStringHashGet(*v309, v303, v304);
            if (v310)
            {
              *v306 |= 1 << v307;
              *(*(v310 + 88) + 28) = *(v306 + 2);
              *(v306 + v307 + 10) = 0;
              ++*(&v526 + v307);
            }
          }

          ++v307;
          v309 += 14;
        }

        while (v307 != 5);
        if (v304)
        {
          v311 = v304;
          LODWORD(v312) = v304;
          v284 = v467;
          v313 = v515;
          do
          {
            v312 = (32 * v312 + (v312 >> 2) + v305[v311 - 1]) ^ v312;
            v311 += ~(v304 >> 5);
          }

          while (v311 > v304 >> 5);
          v314 = v312 << 32;
        }

        else
        {
          v314 = 0;
          v284 = v467;
          v313 = v515;
        }

        glpStringHashPut(v495[11], v305, v314 | v304, v306, v308);
        Vec4s_1 = glpTypeGetVec4s_1(*v302);
        if (16 * glpTypeGetVec4s_1(*v302) > 0x4000)
        {
          v452 = v518[8];
          glpTypeGetVec4s_1(*v302);
          *v522 = "-1";
          *&v522[8] = 0xEDA00000002;
          *&v522[16] = 0xFFFFFFFFLL;
          glpLogMessage(v452, 0, v522, "Bindable uniform %.*s too large (%d exceeds max %d)", v453, v454, v455, v456, v304);
          goto LABEL_381;
        }

        if (glpTypeGetSamplerCount(*v302))
        {
          v457 = v518[8];
          *v522 = "-1";
          *&v522[8] = 0xEDA00000002;
          *&v522[16] = 0xFFFFFFFFLL;
          glpLogMessage(v457, 0, v522, "Bindable uniform %.*s not allowed to have samplers", v316, v317, v318, v319, v304);
          goto LABEL_381;
        }

        v299 = Vec4s_1 + v503;
        v300 = v313 + 1;
        v297 = *(v473 + 32);
        v34 = v495;
      }

      ++v298;
    }

    while (v298 < v297);
  }

  v320 = 0;
  v321 = v518;
  do
  {
    if (*(&v526 + v320) > dword_23A29C788[v320])
    {
      v440 = v518[8];
      v441 = glpLanguageToString(v320);
      *v522 = "-1";
      *&v522[8] = 0xEDA00000002;
      *&v522[16] = 0xFFFFFFFFLL;
      glpLogMessage(v440, 0, v522, "Too many bindable uniforms in %s shader (%d exceeds max %d)", v442, v443, v444, v445, v441);
      goto LABEL_503;
    }

    ++v320;
  }

  while (v320 != 5);
  v524[0] = 0;
  v524[1] = 0;
  v525 = 0;
  v34[12] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v322 = *(v284 + 32);
  if (!v322)
  {
LABEL_421:
    for (n = 0; n != 5; ++n)
    {
      if (*(v524 + n) > dword_23A29C79C[n])
      {
        v446 = *(v321 + 64);
        v447 = glpLanguageToString(n);
        *v522 = "-1";
        *&v522[8] = 0xEDA00000002;
        *&v522[16] = 0xFFFFFFFFLL;
        glpLogMessage(v446, 0, v522, "Too many uniform interface blocks in %s shader (%d exceeds max %d)", v448, v449, v450, v451, v447);
        goto LABEL_503;
      }
    }

    v347 = 0;
    v348 = (v34 + 13);
    *v516 = v34 + 18;
    v499 = (v34 + 13);
    do
    {
      *&v348[8 * v347] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
      v349 = v491[v347];
      if (v349 && glpTopLevelNodeGetDefCount(v349))
      {
        v350 = 0;
        v351 = 0;
        v352 = v491;
        do
        {
          Def = glpTopLevelNodeGetDef(v352[v347], v350);
          if (Def)
          {
            v354 = Def;
            if (glpASTNodeGetKind(Def) == 51)
            {
              Prototype = glpFunctionDefinitionNodeGetPrototype(v354);
              Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
              if ((*(Extra + 10) & 0x10) != 0)
              {
                v357 = Extra;
                *(Extra + 160) = v351;
                v358 = __abort_malloc_0(0x10uLL);
                *v358 = 0;
                v358[1] = 0;
                *v358 = -1;
                *(v358 + 1) = *(v357 + 160);
                v358[1] = 0;
                v359 = __abort_malloc_0(*(v357 + 32));
                memcpy(v359, *(v357 + 24), *(v357 + 32));
                v361 = *(v357 + 32);
                if (v361)
                {
                  v362 = *(v357 + 32);
                  LODWORD(v363) = v362;
                  do
                  {
                    v363 = (32 * v363 + (v363 >> 2) + v359[v362 - 1]) ^ v363;
                    v362 += ~(v361 >> 5);
                  }

                  while (v362 > v361 >> 5);
                  v364 = v363 << 32;
                }

                else
                {
                  v364 = 0;
                }

                glpStringHashPut(*&v348[8 * v347], v359, v364 | v361, v358, v360);
                ++v351;
              }
            }
          }

          ++v350;
          v352 = v491;
        }

        while (v350 < glpTopLevelNodeGetDefCount(v491[v347]));
        if (v351 > 4096)
        {
          v464 = *(v321 + 64);
          *v522 = "-1";
          *&v522[8] = 0xEDA00000002;
          *&v522[16] = 0xFFFFFFFFLL;
          glpLogMessage(v464, 0, v522, "Too many subroutines (%d exceeds max %d)", v365, v366, v367, v368, v351);
          goto LABEL_503;
        }
      }

      *(*v516 + 8 * v347) = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
      if (v491[v347])
      {
        v509 = &v543[14 * v347];
        v373 = v509[7];
        v374 = *(v373 + 32);
        if (v374)
        {
          v375 = 0;
          v376 = 0;
          do
          {
            v377 = *(v373 + 40) + 32 * v375;
            v378 = *v377;
            if (*v377)
            {
              v379 = *(v377 + 8);
              v380 = *(v377 + 16);
              v381 = *(v378 + 16);
              if (glpTypeGetKind(v381) == 2)
              {
                v381 = glpArrayTypeGetElementType(v381);
              }

              v382 = __abort_malloc_0(v380);
              memcpy(v382, v379, v380);
              v383 = __abort_malloc_0(0x58uLL);
              *v383 = 0u;
              v383[1] = 0u;
              v383[2] = 0u;
              v383[3] = 0u;
              v383[4] = 0u;
              *(v383 + 10) = 0;
              *(v383 + 1) = v376;
              *(v383 + 1) = 0xFFFFFFFFLL;
              *(v383 + 3) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *(v378 + 16));
              *(v383 + 4) = 0;
              *(v383 + 80) = 0;
              *v383 = 1 << v347;
              v384 = glpPointerHashGet(v509[8], v381);
              v385 = *(v384 + 4);
              *(v383 + 8) = v385;
              *(v383 + 9) = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 4 * v385, "Vector Storage (int)");
              if (*(v384 + 4))
              {
                v387 = 0;
                do
                {
                  v388 = glpFunctionDefinitionNodeGetPrototype(*(*(v384 + 8) + 8 * v387));
                  *(*(v383 + 9) + 4 * (*(v383 + 17))++) = *(glpFunctionPrototypeNodeGetExtra(v388) + 160);
                  ++v387;
                }

                while (v387 < *(v384 + 4));
              }

              *(v378 + 40) = *(v383 + 1);
              if (v380)
              {
                v389 = v380;
                LODWORD(v390) = v380;
                v321 = v518;
                do
                {
                  v390 = (32 * v390 + (v390 >> 2) + v382[v389 - 1]) ^ v390;
                  v389 += ~(v380 >> 5);
                }

                while (v389 > v380 >> 5);
                v391 = v390 << 32;
              }

              else
              {
                v391 = 0;
                v321 = v518;
              }

              glpStringHashPut(*(*v516 + 8 * v347), v382, v391 | v380, v383, v386);
              v376 += glpTypeGetVec4s_1(*(v378 + 16));
              v374 = *(v373 + 32);
            }

            ++v375;
          }

          while (v375 < v374);
          v348 = v499;
          if (v376 > 4096)
          {
            v465 = *(v321 + 64);
            *v522 = "-1";
            *&v522[8] = 0xEDA00000002;
            *&v522[16] = 0xFFFFFFFFLL;
            glpLogMessage(v465, 0, v522, "Too many subroutine uniforms (%d exceeds max %d)", v369, v370, v371, v372, v376);
            goto LABEL_381;
          }
        }
      }

      ++v347;
      v34 = v495;
    }

    while (v347 != 5);
    v495[23] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
    v392 = v550;
    if (v550)
    {
      v393 = *(v550 + 32);
      if (v393)
      {
        for (ii = 0; ii < v393; ++ii)
        {
          v395 = *(v392 + 40) + 32 * ii;
          v396 = *v395;
          if (*v395)
          {
            v397 = *(v395 + 8);
            v398 = *(v395 + 16);
            v399 = __abort_malloc_0(0x10uLL);
            *v399 = 0;
            v399[1] = 0;
            *v399 = *v396;
            v399[1] = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *(v396 + 8));
            v400 = __abort_malloc_0(v398);
            memcpy(v400, v397, v398);
            if (v398)
            {
              v402 = v398;
              LODWORD(v403) = v398;
              do
              {
                v403 = (32 * v403 + (v403 >> 2) + v400[v402 - 1]) ^ v403;
                v402 += ~(v398 >> 5);
              }

              while (v402 > v398 >> 5);
              v404 = v403 << 32;
            }

            else
            {
              v404 = 0;
            }

            v405 = v404 | v398;
            v34 = v495;
            glpStringHashPut(v495[23], v400, v405, v399, v401);
            v393 = *(v392 + 32);
          }
        }
      }
    }

    v34[24] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
    v406 = v542;
    if (v542)
    {
      v407 = *(v542 + 32);
      if (v407)
      {
        for (jj = 0; jj < v407; ++jj)
        {
          v409 = *(v406 + 40) + 32 * jj;
          v410 = *v409;
          if (*v409)
          {
            v411 = *(v409 + 8);
            v412 = *(v409 + 16);
            v413 = __abort_malloc_0(0x10uLL);
            *v413 = 0;
            v413[1] = 0;
            *v413 = *v410;
            v413[1] = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, v410[1]);
            v414 = __abort_malloc_0(v412);
            memcpy(v414, v411, v412);
            if (v412)
            {
              v416 = v412;
              LODWORD(v417) = v412;
              do
              {
                v417 = (32 * v417 + (v417 >> 2) + v414[v416 - 1]) ^ v417;
                v416 += ~(v412 >> 5);
              }

              while (v416 > v412 >> 5);
              v418 = v417 << 32;
            }

            else
            {
              v418 = 0;
            }

            v419 = v418 | v412;
            v34 = v495;
            glpStringHashPut(v495[24], v414, v419, v413, v415);
            v407 = *(v406 + 32);
          }
        }
      }
    }

    v420 = 0;
    v421 = *(v321 + 296);
    v422 = *(v321 + 328);
    *(v34 + 18) = *(v321 + 312);
    *(v34 + 19) = v422;
    *(v34 + 17) = v421;
    v423 = (v34 + 5);
    v424 = v321 + 256;
    v425 = (v34 + 29);
    v426 = v321 + 276;
    v427 = v34 + 252;
    v34[40] = *(v321 + 344);
    *(v321 + 344) = 0;
    v510 = (v34 + 29);
    *v517 = v321 + 256;
    v504 = v34 + 252;
    do
    {
      v34[v420] = 0;
      *&v423[8 * v420] = 0;
      v428 = v491[v420];
      if (v428)
      {
        *v522 = v321;
        *&v522[8] = *(v321 + 64);
        v523 = v428;
        v491[v420] = glpPPTNode(v522, v428);
        *&v425[4 * v420] = *(v424 + 4 * v420);
        *&v427[4 * v420] = *(v426 + 4 * v420);
        v429 = *(v321 + 40);
        if ((v429 & 2) != 0)
        {
          v430 = v426;
          glpCreateShaderByteCode();
          *&v423[8 * v420] = v431;
          if ((*(v321 + 40) & 8) != 0)
          {
            if (*(v532 + v420))
            {
              v432 = 2;
            }

            else
            {
              v432 = 1;
            }
          }

          else
          {
            v432 = 1;
          }

          v433 = 0;
          v434 = *(v532 + v420);
          do
          {
            if (v433)
            {
              v435 = 1;
            }

            else
            {
              v435 = v434 == 0;
            }

            v436 = !v435;
            LLVMCodeGenContext = glpMakeLLVMCodeGenContext(v518, v495, *&v423[8 * v420], v420, v521, v433, v436);
            glpLLVMCGTopLevel(LLVMCodeGenContext, v491[v420]);
            glpDestroyLLVMCodeGenContext(LLVMCodeGenContext);
            ++v433;
          }

          while (v432 != v433);
          v429 = *(v518 + 10);
          v321 = v518;
          v34 = v495;
          v425 = v510;
          v424 = *v517;
          v426 = v430;
          v427 = v504;
        }

        if (v429)
        {
          v438 = PPStreamCreate();
          v34[v420] = v438;
          CodeGenContext = glpMakeCodeGenContext(v321, v438, v420);
          if (glpCGTopLevel(CodeGenContext, v491[v420], &v547[7 * v420]) == -1)
          {
            goto LABEL_503;
          }

          glpDestroyCodeGenContext(CodeGenContext);
        }
      }

      ++v420;
    }

    while (v420 != 5);
    goto LABEL_38;
  }

  v323 = 0;
  v324 = 0;
  while (2)
  {
    v325 = (*(v284 + 40) + 32 * v323);
    v326 = *v325;
    if (!*v325)
    {
LABEL_420:
      if (++v323 >= v322)
      {
        goto LABEL_421;
      }

      continue;
    }

    break;
  }

  v327 = v325[1];
  v328 = v325[2];
  v329 = __abort_malloc_0(v328);
  memcpy(v329, v327, v328);
  v330 = __abort_malloc_0(0x58uLL);
  *v330 = 0u;
  v330[1] = 0u;
  v330[2] = 0u;
  v330[3] = 0u;
  v330[4] = 0u;
  *(v330 + 10) = 0;
  *(v330 + 1) = -1;
  *(v330 + 2) = v324;
  v508 = v324;
  v331 = 0;
  *(v330 + 3) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, *(v326 + 64));
  *(v330 + 4) = 0;
  *(v330 + 80) = *(v326 + 32) == 0;
  *v330 = 0;
  v333 = &v545;
  do
  {
    if (v491[v331])
    {
      v334 = glpStringHashGet(*v333, v327, v328);
      if (v334)
      {
        *v330 |= 1 << v331;
        v335 = *(v334 + 80);
        *(v330 + 3) = *(v335 + 8);
        *(v335 + 28) = *(v330 + 2);
        *(v330 + v331 + 10) = 0;
        *(v524 + v331) += *(*(v326 + 80) + 12);
      }
    }

    ++v331;
    v333 += 14;
  }

  while (v331 != 5);
  v34 = v495;
  if (v328)
  {
    v336 = v328;
    LODWORD(v337) = v328;
    v338 = v328;
    do
    {
      v337 = (32 * v337 + (v337 >> 2) + v329[v336 - 1]) ^ v337;
      v336 += ~(v328 >> 5);
    }

    while (v336 > v328 >> 5);
    v339 = v337 << 32;
  }

  else
  {
    v339 = 0;
    v338 = v328;
  }

  glpStringHashPut(v495[12], v329, v339 | v338, v330, v332);
  v340 = *(v326 + 80);
  v341 = *(v340 + 12);
  if (glpBufferObjectGetMinimumBufferSize(v340) > 0x4000)
  {
    v458 = v518[8];
    glpBufferObjectGetMinimumBufferSize(*(v326 + 80));
    *v522 = "-1";
    *&v522[8] = 0xEDA00000002;
    *&v522[16] = 0xFFFFFFFFLL;
    glpLogMessage(v458, 0, v522, "Uniform interface block %.*s too large (%d exceeds max %d)", v459, v460, v461, v462, v328);
    goto LABEL_503;
  }

  v321 = v518;
  if (!glpTypeGetSamplerCount(*(v326 + 64)))
  {
    v324 = v341 + v508;
    v284 = v467;
    v322 = *(v467 + 32);
    goto LABEL_420;
  }

  v463 = v518[8];
  *v522 = "-1";
  *&v522[8] = 0xEDA00000002;
  *&v522[16] = 0xFFFFFFFFLL;
  glpLogMessage(v463, 0, v522, "Uniform interface block %.*s not allowed to have samplers", v342, v343, v344, v345, v328);
LABEL_503:
  v296 = v34;
LABEL_382:
  glpDestroyLinkedProgram(v296);
LABEL_37:
  v34 = 0;
LABEL_38:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t glpTypeGetVec4s_1(uint64_t a1)
{
  v1 = glpABIGetTypeSize(0, a1, 0);

  return glpTypeSizeGetSize(v1);
}

_DWORD *glpCopyContextState(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = malloc_type_malloc((16 * v2) | 8, 0xCA0EF1E7uLL);
  if (!v3)
  {
    abort();
  }

  v4 = v3;
  bzero(v3, (16 * v2) | 8);
  *v4 = v2;
  if (v2 >= 1)
  {
    v5 = 0;
    do
    {
      *&v4[v5 + 2] = *(*(a1 + 8) + v5 * 4);
      v5 += 4;
    }

    while (4 * v2 != v5);
  }

  return v4;
}

void glpDestroyLinkedProgram(uint64_t a1)
{
  for (i = 0; i != 40; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      PPStreamFree(v3);
      *(a1 + i) = 0;
    }
  }

  for (j = 40; j != 80; j += 8)
  {
    v5 = *(a1 + j);
    if (v5)
    {
      if (*v5)
      {
        free(*v5);
        *v5 = 0;
      }

      v6 = *(v5 + 8);
      if (v6)
      {
        free(v6);
        *(v5 + 8) = 0;
      }

      v7 = *(v5 + 32);
      if (v7)
      {
        free(v7);
        *(v5 + 32) = 0;
      }

      v8 = *(v5 + 40);
      if (v8)
      {
        free(v8);
        *(v5 + 40) = 0;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        free(v9);
        *(v5 + 16) = 0;
      }

      v10 = *(v5 + 24);
      if (v10)
      {
        free(v10);
      }

      free(v5);
      *(a1 + j) = 0;
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = *(v11 + 32);
    if (v12)
    {
      v13 = 0;
      for (k = 0; k < v12; ++k)
      {
        v15 = *(v11 + 40);
        v16 = *(v15 + v13);
        if (v16)
        {
          free(*(v15 + v13 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, *(v16 + 24));
          v17 = *(v16 + 32);
          if (v17)
          {
            BitSetFree(v17);
          }

          free(*(v16 + 16));
          free(v16);
          v12 = *(v11 + 32);
        }

        v13 += 32;
      }

      v11 = *(a1 + 80);
    }

    glpDestroyStringHash(v11);
  }

  off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(a1 + 208));
  v18 = *(a1 + 216);
  if (v18)
  {
    free(v18);
    *(a1 + 216) = 0;
  }

  v19 = *(a1 + 88);
  if (v19)
  {
    v20 = *(v19 + 32);
    if (v20)
    {
      v21 = 0;
      for (m = 0; m < v20; ++m)
      {
        v23 = *(v19 + 40);
        v24 = *(v23 + v21);
        if (v24)
        {
          free(*(v23 + v21 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v24[3]);
          free(v24);
          v20 = *(v19 + 32);
        }

        v21 += 32;
      }

      v19 = *(a1 + 88);
    }

    glpDestroyStringHash(v19);
  }

  v25 = *(a1 + 96);
  if (v25)
  {
    v26 = *(v25 + 32);
    if (v26)
    {
      v27 = 0;
      for (n = 0; n < v26; ++n)
      {
        v29 = *(v25 + 40);
        v30 = *(v29 + v27);
        if (v30)
        {
          free(*(v29 + v27 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v30[3]);
          free(v30);
          v26 = *(v25 + 32);
        }

        v27 += 32;
      }

      v25 = *(a1 + 96);
    }

    glpDestroyStringHash(v25);
  }

  v31 = 0;
  v32 = a1 + 104;
  v33 = a1 + 144;
  do
  {
    v34 = *(v32 + 8 * v31);
    if (v34)
    {
      v35 = *(v34 + 32);
      if (v35)
      {
        v36 = 0;
        for (ii = 0; ii < v35; ++ii)
        {
          v38 = *(v34 + 40);
          v39 = *(v38 + v36);
          if (v39)
          {
            free(*(v38 + v36 + 8));
            free(v39);
            v35 = *(v34 + 32);
          }

          v36 += 32;
        }

        v34 = *(v32 + 8 * v31);
      }

      glpDestroyStringHash(v34);
    }

    v40 = *(v33 + 8 * v31);
    if (v40)
    {
      v41 = *(v40 + 32);
      if (v41)
      {
        v42 = 0;
        for (jj = 0; jj < v41; ++jj)
        {
          v44 = *(v40 + 40);
          v45 = *(v44 + v42);
          if (v45)
          {
            free(*(v44 + v42 + 8));
            glpDestroyType(&GLP_MALLOC_ALLOCATOR, *(v45 + 24));
            off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(v45 + 72));
            free(v45);
            v41 = *(v40 + 32);
          }

          v42 += 32;
        }

        v40 = *(v33 + 8 * v31);
      }

      glpDestroyStringHash(v40);
    }

    ++v31;
  }

  while (v31 != 5);
  v46 = *(a1 + 184);
  if (v46)
  {
    v47 = *(v46 + 32);
    if (v47)
    {
      v48 = 0;
      for (kk = 0; kk < v47; ++kk)
      {
        v50 = *(v46 + 40);
        v51 = *(v50 + v48);
        if (v51)
        {
          free(*(v50 + v48 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v51[1]);
          free(v51);
          v47 = *(v46 + 32);
        }

        v48 += 32;
      }

      v46 = *(a1 + 184);
    }

    glpDestroyStringHash(v46);
  }

  v52 = *(a1 + 192);
  if (v52)
  {
    v53 = *(v52 + 32);
    if (v53)
    {
      v54 = 0;
      for (mm = 0; mm < v53; ++mm)
      {
        v56 = *(v52 + 40);
        v57 = *(v56 + v54);
        if (v57)
        {
          free(*(v56 + v54 + 8));
          glpDestroyType(&GLP_MALLOC_ALLOCATOR, v57[1]);
          free(v57);
          v53 = *(v52 + 32);
        }

        v54 += 32;
      }

      v52 = *(a1 + 192);
    }

    glpDestroyStringHash(v52);
  }

  v58 = *(a1 + 320);
  if (v58)
  {
    v59 = *(v58 + 32);
    if (v59)
    {
      v60 = 0;
      for (nn = 0; nn < v59; ++nn)
      {
        v62 = *(*(v58 + 40) + v60);
        if (v62)
        {
          free(*v62);
          free(v62);
          v59 = *(v58 + 32);
        }

        v60 += 16;
      }

      v58 = *(a1 + 320);
    }

    glpDestroyIntHash(v58);
  }

  free(a1);
}

uint64_t glpLinkedProgramGetSubroutineUniformLocationCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 144);
  v3 = *(v2 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(*(v2 + 40) + v4);
    if (v7)
    {
      v8 = glpABIGetTypeSize(0, *(v7 + 24), 0);
      v6 = glpTypeSizeGetSize(v8) + v6;
      v3 = *(v2 + 32);
    }

    ++v5;
    v4 += 32;
  }

  while (v5 < v3);
  return v6;
}

__n128 glpLinkedProgramGetOverrides(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 272);
  v3 = *(a1 + 304);
  *(a2 + 16) = *(a1 + 288);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

void glpDestroyCompiledShader(void **a1)
{
  free(a1[2]);

  free(a1);
}

void glpCleanUpLinkedProgram(uint64_t a1)
{
  for (i = 0; i != 40; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      PPStreamFree(v3);
      *(a1 + i) = 0;
    }
  }
}

double glpCreateShaderByteCode()
{
  v0 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
  if (!v0)
  {
    abort();
  }

  v0[10] = 0;
  result = 0.0;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *v0 = 0u;
  return result;
}

void *glpGenerateCopyInOut(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v266 = a8;
  v263 = a7;
  v272 = a6;
  v262 = a5;
  v268 = a2;
  v11 = a1;
  v287 = a10;
  v305 = *MEMORY[0x277D85DE8];
  SlotVars = generateSlotVars(a1, a3, "$in%u");
  PrimitiveType = glpGetPrimitiveType(5u);
  *&v297[0] = 0;
  v269 = a9;
  CopyFunction = makeCopyFunction(v11, a9, "$copy_in", 0x2CF8B77300000008uLL, v297);
  v13 = *(a4 + 32);
  v288 = v11;
  if (v13)
  {
    v14 = 0;
    v265 = a4;
    do
    {
      v15 = *(a4 + 40) + 32 * v14;
      v16 = *v15;
      if (*v15)
      {
        v18 = *(v15 + 8);
        v17 = *(v15 + 16);
        v281 = v18;
        v280 = v17;
        v282 = v16;
        ElementType = **v16;
        if (glpTypeGetKind(ElementType))
        {
          LODWORD(v279) = 0;
        }

        else
        {
          v20 = glpPrimitiveTypeGetPrimitiveType(ElementType);
          LODWORD(v279) = glpPrimitiveTypeGetCategory(v20) != 3;
        }

        if (glpTypeGetKind(ElementType) == 3)
        {
          LODWORD(v271) = glpBankTypeGetElementCount(ElementType);
          ElementType = glpBankTypeGetElementType(ElementType);
        }

        else
        {
          LODWORD(v271) = 0;
        }

        v21 = glpABIGetTypeSize(0, ElementType, 0);
        Size = glpTypeSizeGetSize(v21);
        v23 = (v11[1])(*v11, 4 * Size, "Array of vec4 types for Copy In (why not stack alloc'd?)");
        v24 = (v11[1])(*v11, Size, "Array of flags for Copy In (why not stack alloc'd?)");
        v286 = v23;
        glpTypeGetAppleVec4Types(ElementType, v23, 1, 0, 0, v24, 0, 0, 0);
        if (*(v282 + 2))
        {
          v267 = v14;
          v30 = 0;
          v31 = v271;
          if (v271 <= 1)
          {
            v31 = 1;
          }

          LODWORD(v270) = v31;
          v278 = v282 + 2;
          v32 = v282;
          v274 = Size;
          do
          {
            if (v271)
            {
              MutableValue = glpMakeMutableValue(v11, PrimitiveType, 1, v25, v26, v27, v28, v29, v30);
              v34 = glpTypedValueHashCache(v287, PrimitiveType, MutableValue, MutableValue);
              v298.n128_u64[0] = "-1";
              v298.n128_u64[1] = 0xEDA00000002;
              v299 = 0xFFFFFFFFLL;
              glpMakeConstantNode(v11, &v298, PrimitiveType, v34);
              v36 = v35;
              glpASTNodeSetSaType(v35, PrimitiveType);
              v298.n128_u64[0] = "-1";
              v298.n128_u64[1] = 0xEDA00000002;
              v299 = 0xFFFFFFFFLL;
              VRLFunctionFragment = glpMakeVRLFunctionFragment(v11, &v298, v36);
              glpBlockNodeAddStatement(v11, *&v297[0], VRLFunctionFragment);
              v38 = glpGetPrimitiveType(0);
              glpASTNodeSetSaType(VRLFunctionFragment, v38);
            }

            v273 = v30;
            if (Size)
            {
              v39 = 0;
              v40 = 0;
              LODWORD(v275) = v273 * Size;
              do
              {
                if (BitSetGetEquals(*(*v32 + 120), v39))
                {
                  ScalarCount = glpPrimitiveTypeGetScalarCount(v286[v39]);
                  v42 = (v24[v39] >> 1) & 2;
                  LODWORD(v285) = ScalarCount;
                  v43 = ScalarCount + v42;
                  v44 = v39 + 1;
                  if (v39 + 1 < Size && (v24[v44] & 4) != 0)
                  {
                    v43 += glpPrimitiveTypeGetScalarCount(v286[v44]);
                  }

                  ScalarType = glpPrimitiveTypeGetScalarType(v286[v39]);
                  LODWORD(v284) = glpGetVectorType(ScalarType, v43);
                  if (v285)
                  {
                    v276 = v39 + 1;
                    v46 = 0;
                    LODWORD(v283) = v275 + v39;
                    do
                    {
                      v47 = &v278[v40];
                      v48 = glpIntHashGet(SlotVars, *v47);
                      Extra = glpVariableDeclarationNodeGetExtra(v48);
                      v295 = 0;
                      *&v296[0] = 0;
                      v289.n128_u64[0] = 0;
                      v294 = 0;
                      v293 = 0;
                      v55 = glpMakeMutableValue(v11, PrimitiveType, 1, v50, v51, v52, v53, v54, v283 - ((v24[v39] >> 2) & 1));
                      v56 = glpTypedValueHashCache(v287, PrimitiveType, v55, v55);
                      v57 = *v32;
                      v298.n128_u64[0] = "-1";
                      v298.n128_u64[1] = 0xEDA00000002;
                      v299 = 0xFFFFFFFFLL;
                      CopyInAssignFragment = glpMakeCopyInAssignFragment(v11, &v298, v296, v281, v280, v57, &v289, &v293, v56, &v295, Extra[2], Extra[3], Extra, &v294);
                      v59 = glpPrimitiveTypeGetScalarType(v286[v39]);
                      v60 = glpGetPrimitiveType(v59);
                      glpASTNodeSetSaType(*&v296[0], v60);
                      glpASTNodeSetSaFlags(*&v296[0], Extra[6] & 0x1F);
                      glpOffsetNodeSetPreSwizzlePrimitiveType(v289.n128_i64[0], v284);
                      glpASTNodeSetSaType(v295, v60);
                      glpASTNodeSetSaFlags(v295, Extra[6] & 0x1F);
                      v61 = v294;
                      v62 = glpPrimitiveTypeGetPrimitiveType(*Extra);
                      glpOffsetNodeSetPreSwizzlePrimitiveType(v61, v62);
                      glpASTNodeSetSaType(v293, PrimitiveType);
                      v63 = v60;
                      v11 = v288;
                      glpASTNodeSetSaType(CopyInAssignFragment, v63);
                      glpASTNodeSetSaFlags(CopyInAssignFragment, Extra[6] & 0x1F);
                      v64 = v289.n128_u64[0];
                      glpMakeOffsetObject(v288);
                      v66 = glpOffsetNodeSetExtra(v64, v65);
                      if (v279)
                      {
                        v66 = glpOffsetNodeSetOffsetExpr(v289.n128_i64[0], 0);
                      }

                      v74 = v289.n128_u64[0];
                      Swizzle_1 = glpMakeSwizzle_1(v66, v67, v68, v69, v70, v71, v72, v73, v46 + ((v24[v39] >> 1) & 2u));
                      glpOffsetNodeSetSwizzle(v74, Swizzle_1);
                      v76 = v294;
                      glpMakeOffsetObject(v288);
                      v78 = glpOffsetNodeSetExtra(v76, v77);
                      v79 = v294;
                      v87 = glpMakeSwizzle_1(v78, v80, v81, v82, v83, v84, v85, v86, *(v47 + 1));
                      glpOffsetNodeSetSwizzle(v79, v87);
                      glpBlockNodeAddStatement(v288, *&v297[0], CopyInAssignFragment);
                      ++v40;
                      ++v46;
                      v32 = v282;
                    }

                    while (v285 != v46);
                    Size = v274;
                    v44 = v276;
                  }
                }

                else
                {
                  v44 = v39 + 1;
                }

                v39 = v44;
              }

              while (v44 != Size);
            }

            v30 = (v273 + 1);
          }

          while (v30 != v270);
          (v11[3])(*v11, v286);
          a4 = v265;
          v14 = v267;
        }
      }

      ++v14;
    }

    while (v14 < *(a4 + 32));
  }

  v88 = *(SlotVars + 8);
  v89 = v269;
  if (v88)
  {
    v90 = 0;
    for (i = 0; i < v88; ++i)
    {
      v92 = SlotVars[5][v90];
      if (v92)
      {
        glpTopLevelNodeInsertDef(v11, v269, v92, 0);
        v88 = *(SlotVars + 8);
      }

      v90 += 2;
    }
  }

  glpFixInterpolateAt(v11, v269, a4, SlotVars);
  if (v268 == 1)
  {
    v93 = 0;
  }

  else
  {
    v93 = generateSlotVars(v11, v262, "$out%u");
  }

  v94 = 0;
  memset(v297, 0, sizeof(v297));
  memset(v296, 0, sizeof(v296));
  v276 = v93;
  do
  {
    v285 = glpGetPrimitiveType(5u);
    v298.n128_u64[0] = "$copy_out_0";
    v298.n128_u64[1] = 0x825A57630000000BLL;
    v299 = "$copy_out_1";
    v300 = 0xB37B1E010000000BLL;
    v301 = "$copy_out_2";
    v302 = 0xF3BAF9AE0000000BLL;
    v303 = "$copy_out_3";
    v304 = 0xDFDE69E90000000BLL;
    *(v296 + v94) = 0;
    v271 = v94;
    v95 = &v298 + v94;
    v96 = v95->n128_u64[0];
    v97 = v95->n128_u64[1];
    v280 = v296 + v94;
    v270 = makeCopyFunction(v11, v89, v96, v97, v280);
    if (v268 != 1 && !v271)
    {
      v98 = v272;
      if (*(v272 + 32))
      {
        v99 = 0;
        do
        {
          v100 = *(v98 + 40) + 32 * v99;
          v101 = *v100;
          if (*v100)
          {
            v103 = *(v100 + 8);
            v102 = *(v100 + 16);
            v279 = v103;
            v278 = v102;
            v104 = **v101;
            v105 = glpABIGetTypeSize(0, v104, 0);
            v106 = glpTypeSizeGetSize(v105);
            LODWORD(v281) = 0;
            if (!glpTypeGetKind(v104))
            {
              v107 = glpPrimitiveTypeGetPrimitiveType(v104);
              LODWORD(v281) = glpPrimitiveTypeGetCategory(v107) != 3;
            }

            v108 = v106;
            v109 = (v11[1])(*v11, 4 * v106, "Array of vec4 types for Copy Out (why not stack alloc'd?)");
            v110 = (v11[1])(*v11, v106, "Array of flags for Copy Out (why not stack alloc'd?)");
            v284 = v109;
            v111 = v109;
            v112 = v110;
            glpTypeGetAppleVec4Types(v104, v111, 1, 0, 0, v110, 0, 0, 0);
            if (*(v101 + 2))
            {
              v273 = v99;
              if (v106)
              {
                v113 = 0;
                v114 = 0;
                SlotVars = v101 + 2;
                v286 = v112;
                v274 = v108;
                do
                {
                  if (BitSetGetEquals((*v101)[15], v113))
                  {
                    v115 = glpPrimitiveTypeGetScalarCount(*(v284 + 4 * v113));
                    v116 = (v112[v113] >> 1) & 2;
                    LODWORD(v283) = v115;
                    v117 = v115 + v116;
                    v118 = v113 + 1;
                    if (v113 + 1 < v108 && (v112[v118] & 4) != 0)
                    {
                      v117 += glpPrimitiveTypeGetScalarCount(*(v284 + 4 * v118));
                    }

                    v119 = glpPrimitiveTypeGetScalarType(*(v284 + 4 * v113));
                    LODWORD(v282) = glpGetVectorType(v119, v117);
                    if (v283)
                    {
                      v275 = v113 + 1;
                      v120 = 0;
                      do
                      {
                        v121 = &SlotVars[v114];
                        v122 = glpIntHashGet(v93, *v121);
                        v123 = glpVariableDeclarationNodeGetExtra(v122);
                        v294 = 0;
                        v295 = 0;
                        v293 = 0;
                        v292 = 0;
                        v291 = 0;
                        v129 = glpMakeMutableValue(v11, v285, 1, v124, v125, v126, v127, v128, v113 - ((v112[v113] >> 2) & 1));
                        v130 = glpTypedValueHashCache(v287, v285, v129, v129);
                        v131 = *v101;
                        v289.n128_u64[0] = "-1";
                        v289.n128_u64[1] = 0xEDA00000002;
                        v290 = 0xFFFFFFFFLL;
                        v132 = v112;
                        CopyOutAssignFragment = glpMakeCopyOutAssignFragment(v11, &v289, &v295, v123[2], v123[3], v123, &v294, &v293, v279, v278, v131, &v292, &v291, v130);
                        v134 = glpPrimitiveTypeGetScalarType(*(v284 + 4 * v113));
                        v135 = glpGetPrimitiveType(v134);
                        glpASTNodeSetSaType(v295, v135);
                        glpASTNodeSetSaFlags(v295, v123[6] & 0x1F);
                        v136 = v294;
                        v137 = glpPrimitiveTypeGetPrimitiveType(*v123);
                        glpOffsetNodeSetPreSwizzlePrimitiveType(v136, v137);
                        glpASTNodeSetSaType(v293, v135);
                        v138 = v293;
                        if (glpTypeGetKind(**v101) == 1)
                        {
                          v139 = v132[v113] >> 3;
                        }

                        else
                        {
                          v139 = (*v101)[6] & 0x1F;
                        }

                        glpASTNodeSetSaFlags(v138, v139);
                        glpOffsetNodeSetPreSwizzlePrimitiveType(v292, v282);
                        glpASTNodeSetSaType(CopyOutAssignFragment, v135);
                        glpASTNodeSetSaFlags(CopyOutAssignFragment, v123[6] & 0x1F);
                        glpASTNodeSetSaType(v291, v285);
                        v140 = v294;
                        glpMakeOffsetObject(v288);
                        v142 = glpOffsetNodeSetExtra(v140, v141);
                        v143 = v294;
                        v151 = glpMakeSwizzle_1(v142, v144, v145, v146, v147, v148, v149, v150, *(v121 + 1));
                        glpOffsetNodeSetSwizzle(v143, v151);
                        v152 = v292;
                        glpMakeOffsetObject(v288);
                        v154 = glpOffsetNodeSetExtra(v152, v153);
                        if (v281)
                        {
                          v154 = glpOffsetNodeSetOffsetExpr(v292, 0);
                        }

                        v162 = v292;
                        v163 = glpMakeSwizzle_1(v154, v155, v156, v157, v158, v159, v160, v161, v120 + ((*(v286 + v113) >> 1) & 2u));
                        glpOffsetNodeSetSwizzle(v162, v163);
                        v164 = v123[6] & 0x1F;
                        if (((*v101)[6] & 0x1F) != v164)
                        {
                          v289.n128_u64[0] = "-1";
                          v289.n128_u64[1] = 0xEDA00000002;
                          v290 = 0xFFFFFFFFLL;
                          glpMakeTypeConversionNode(v288, &v289, v135, v164);
                          v166 = v165;
                          glpUnaryOperatorNodeSetExpr(v165, v293);
                          glpASTNodeSetSaType(v166, v135);
                          SaFlags = glpASTNodeGetSaFlags(v293);
                          glpASTNodeSetSaFlags(v166, SaFlags & 0xFFFFFFFFFFFFFFE0 | v164);
                          glpBinaryOperatorNodeSetRhs(CopyOutAssignFragment, v166);
                        }

                        v11 = v288;
                        glpBlockNodeAddStatement(v288, *v280, CopyOutAssignFragment);
                        ++v114;
                        ++v120;
                        v93 = v276;
                        v112 = v286;
                      }

                      while (v283 != v120);
                      v108 = v274;
                      v118 = v275;
                    }
                  }

                  else
                  {
                    v118 = v113 + 1;
                  }

                  v113 = v118;
                }

                while (v118 != v108);
              }

              (v11[3])(*v11, v284);
              v99 = v273;
            }
          }

          ++v99;
          v98 = v272;
        }

        while (v99 < *(v272 + 32));
      }

      v168 = *(v93 + 32);
      v89 = v269;
      if (v168)
      {
        v169 = 0;
        for (j = 0; j < v168; ++j)
        {
          v171 = *(*(v93 + 40) + v169);
          if (v171)
          {
            v289.n128_u64[0] = "-1";
            v289.n128_u64[1] = 0xEDA00000002;
            v290 = 0xFFFFFFFFLL;
            glpMakeWriteOutputNode(v11, &v289);
            v173 = v172;
            v174 = glpVariableDeclarationNodeGetExtra(v171);
            glpWriteOutputNodeSetExtra(v173, v174);
            v175 = v173;
            v89 = v269;
            glpBlockNodeAddStatement(v11, *v280, v175);
            glpTopLevelNodeInsertDef(v11, v269, v171, 0);
            v168 = *(v93 + 32);
          }

          v169 += 16;
        }
      }
    }

    v176 = v271;
    *(v297 + v271) = v270;
    v94 = v176 + 1;
  }

  while (v94 != 4);
  v177 = v263;
  if (v263 && v266)
  {
    v178 = glpGetPrimitiveType(5u);
    v280 = &v261;
    v179 = *(v263 + 4);
    MEMORY[0x28223BE20](v178);
    v285 = (&v261 - ((v180 + 15) & 0xFFFFFFFF0));
    bzero(v285, v180);
    if (*(v177 + 4))
    {
      v181 = v89;
      v182 = 0;
      do
      {
        v183 = *(*(v177 + 8) + 8 * v182);
        StringBuffer = glpMakeStringBuffer(v11);
        glpStringBufferAppendFormat(StringBuffer, "TFBuffer%u", v185, v186, v187, v188, v189, v190, v182);
        String = glpStringBufferGetString(StringBuffer);
        v193 = v192;
        v194 = glpMakeStringBuffer(v288);
        glpStringBufferAppendCString(v194, "<TFBuffer ");
        glpStringBufferAppendString(v194, String, v193);
        glpStringBufferAppendCString(v194, ">");
        v195 = glpStringBufferGetString(v194);
        v197 = v196;
        v298.n128_u64[0] = "-1";
        v298.n128_u64[1] = 0xEDA00000002;
        v299 = 0xFFFFFFFFLL;
        CopyVarDeclFragment = glpMakeCopyVarDeclFragment(v288, &v298, String, v193);
        glpMakeVariableObject(v288, v178, *v183, 0x80000000, String, v193, v195, v197, 0, 0, 0);
        v200 = v199;
        v201 = glpABIGetTypeSize(0, v178, 0);
        *(v200 + 128) = glpTypeSizeGetSize(v201);
        glpASTNodeSetSaType(CopyVarDeclFragment, v178);
        glpASTNodeSetSaFlags(CopyVarDeclFragment, 0x80000000);
        glpVariableDeclarationNodeSetExtra(CopyVarDeclFragment, v200);
        *&v285[2 * v182] = v200;
        v11 = v288;
        glpTopLevelNodeInsertDef(v288, v181, CopyVarDeclFragment, 0);
        ++v182;
      }

      while (v182 < *(v177 + 4));
    }

    v202 = v266;
    if (*(v266 + 4))
    {
      v203 = 0;
      do
      {
        v204 = *(v202 + 8);
        v281 = v203;
        v205 = *(v204 + 8 * v203);
        v206 = glpABIGetTypeSize(0, **v205, 0);
        v207 = glpTypeSizeGetSize(v206);
        Kind = glpTypeGetKind(**v205);
        LODWORD(v286) = 0;
        if (!Kind)
        {
          v209 = glpPrimitiveTypeGetPrimitiveType(**v205);
          LODWORD(v286) = glpPrimitiveTypeGetCategory(v209) != 3;
        }

        v210 = (v11[1])(*v11, 4 * v207, "Primitive Types");
        v211 = (v11[1])(*v11, v207, "Flags");
        glpTypeGetAppleVec4Types(**v205, v210, 1, 0, 0, v211, 0, 0, 0);
        if (*(v205 + 12))
        {
          v212 = *(v205 + 8);
          v213 = *(v205 + 20);
          v284 = v207;
          v282 = v211;
          v283 = v210;
          do
          {
            v214 = glpPrimitiveTypeGetScalarCount(v210[v212]);
            v215 = (*(v211 + v212) >> 2) & 1;
            v216 = v214 + 2 * v215;
            v217 = v212 + 1;
            if (v212 + 1 < v207 && (*(v211 + v217) & 4) != 0)
            {
              ++v215;
              v216 += glpPrimitiveTypeGetScalarCount(v210[v217]);
            }

            v218 = glpPrimitiveTypeGetScalarType(v210[v212]);
            VectorType = glpGetVectorType(v218, v216);
            v289.n128_u64[0] = 0;
            v220 = v288;
            v226 = glpMakeMutableValue(v288, v178, 1, v221, v222, v223, v224, v225, v213);
            v227 = v287;
            v228 = glpTypedValueHashCache(v287, v178, v226, v226);
            v294 = 0;
            v295 = 0;
            v293 = 0;
            v292 = 0;
            v234 = glpMakeMutableValue(v220, v178, 1, v229, v230, v231, v232, v233, v212);
            v235 = glpTypedValueHashCache(v227, v178, v234, v234);
            v236 = *&v285[2 * *(v205 + 16)];
            v237 = *v205;
            v298.n128_u64[0] = "-1";
            v298.n128_u64[1] = 0xEDA00000002;
            v299 = 0xFFFFFFFFLL;
            StoreFragment = glpMakeStoreFragment(v220, &v298, VectorType, &v289, v228, &v295, *(v236 + 16), *(v236 + 24), v236, &v294, v237[2], v237[3], v237, &v293, &v292, v235);
            glpASTNodeSetSaType(v289.n128_i64[0], v178);
            glpASTNodeSetSaType(v295, v178);
            v239 = v294;
            v240 = glpGetPrimitiveType(VectorType);
            glpASTNodeSetSaType(v239, v240);
            glpASTNodeSetSaFlags(v294, *(*v205 + 48));
            v241 = v293;
            glpMakeOffsetObject(v220);
            glpOffsetNodeSetExtra(v241, v242);
            if (v286)
            {
              glpOffsetNodeSetOffsetExpr(v293, 0);
            }

            glpASTNodeSetSaType(v292, v178);
            v243 = glpGetPrimitiveType(0);
            glpASTNodeSetSaType(StoreFragment, v243);
            glpBlockNodeAddStatement(v288, *(v296 + *(v205 + 24)), StoreFragment);
            v244 = glpPrimitiveTypeGetScalarCount(VectorType);
            v213 = v213 + glpPrimitiveTypeGetBytesPerComponent(VectorType) * v244;
            v212 = v217 + v215;
            LODWORD(v207) = v284;
            v210 = v283;
            v211 = v282;
          }

          while (v217 + v215 - *(v205 + 8) < *(v205 + 12));
        }

        v203 = v281 + 1;
        v202 = v266;
        v11 = v288;
      }

      while (v281 + 1 < *(v266 + 4));
    }

    v89 = v269;
  }

  DefCount = glpTopLevelNodeGetDefCount(v89);
  Def = glpTopLevelNodeGetDef(v89, DefCount - 1);
  glpFunctionDefinitionNodeGetPrototype(Def);
  Body = glpFunctionDefinitionNodeGetBody(Def);
  StatementCount = glpBlockNodeGetStatementCount(Body);
  while (StatementCount)
  {
    if (glpBlockNodeGetStatement(Body, --StatementCount))
    {
      Statement = glpBlockNodeGetStatement(Body, StatementCount);
      if (Statement)
      {
        Expr = Statement;
        while (glpIsCommaExprNode(Expr))
        {
          ExprCount = glpCommaExprNodeGetExprCount(Expr);
          Expr = glpCommaExprNodeGetExpr(Expr, ExprCount - 1);
          if (!Expr)
          {
            goto LABEL_106;
          }
        }

        if (glpIsReturnStatementNode(Expr))
        {
          glpBlockNodeSetStatement(Body, StatementCount, 0);
        }
      }

      break;
    }
  }

LABEL_106:
  v298.n128_u64[0] = "-1";
  v298.n128_u64[1] = 0xEDA00000002;
  v299 = 0xFFFFFFFFLL;
  glpMakeRawCallNode(v11, &v298, *(CopyFunction + 24), *(CopyFunction + 32), CopyFunction);
  v253 = v252;
  v254 = glpGetPrimitiveType(0);
  glpASTNodeSetSaType(v253, v254);
  result = glpBlockNodeInsertStatement(v11, Body, v253, 0);
  if (v268 != 3)
  {
    v256 = *&v297[0];
    copyOutBeforeReturnsIn(v11, *&v297[0], Def);
    v298.n128_u64[0] = "-1";
    v298.n128_u64[1] = 0xEDA00000002;
    v299 = 0xFFFFFFFFLL;
    glpMakeRawCallNode(v11, &v298, *(v256 + 24), *(v256 + 32), v256);
    v258 = v257;
    v259 = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v258, v259);
    result = glpBlockNodeAddStatement(v11, Body, v258);
  }

  v260 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t generateSlotVars(void *a1, uint64_t a2, char *a3)
{
  IntHash = glpMakeIntHash(a1);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v33 = a2;
    do
    {
      v7 = *(a2 + 40);
      v8 = *(v7 + v5);
      if ((v8 + 1) >= 2)
      {
        v9 = *(v7 + v5 + 8);
        v38 = v9;
        StringBuffer = glpMakeStringBuffer(a1);
        glpStringBufferAppendFormat(StringBuffer, a3, v11, v12, v13, v14, v15, v16, v9);
        String = glpStringBufferGetString(StringBuffer);
        v19 = v18;
        v20 = glpMakeStringBuffer(a1);
        glpStringBufferAppendCString(v20, "<Compiler Temporary ");
        glpStringBufferAppendString(v20, String, v19);
        glpStringBufferAppendCString(v20, ">");
        v37 = glpStringBufferGetString(v20);
        v22 = v21;
        v39.n128_u64[0] = "-1";
        v39.n128_u64[1] = 0xEDA00000002;
        v40 = 0xFFFFFFFFLL;
        CopyVarDeclFragment = glpMakeCopyVarDeclFragment(a1, &v39, String, v19);
        v24 = *(v8 + 24);
        PrimitiveType = glpGetPrimitiveType(*(v8 + 4));
        v26 = *(v8 + 8);
        glpMakeVariableObject(a1, PrimitiveType, v24, v26 | 0x80000000, String, v19, v37, v22, 0, 0, 0);
        v28 = v27;
        v29 = glpABIGetTypeSize(0, PrimitiveType, 0);
        *(v28 + 128) = glpTypeSizeGetSize(v29);
        glpASTNodeSetSaType(CopyVarDeclFragment, PrimitiveType);
        glpASTNodeSetSaFlags(CopyVarDeclFragment, v26 | 0x80000000);
        v30 = v28;
        a2 = v33;
        glpVariableDeclarationNodeSetExtra(CopyVarDeclFragment, v30);
        glpIntHashPut(IntHash, v38, CopyVarDeclFragment, v31);
        v4 = *(v33 + 32);
      }

      ++v6;
      v5 += 16;
    }

    while (v6 < v4);
  }

  return IntHash;
}

uint64_t makeCopyFunction(void *a1, uint64_t a2, const char *a3, size_t a4, uint64_t *a5)
{
  PrimitiveType = glpGetPrimitiveType(0);
  FunctionType = glpMakeFunctionType(a1, PrimitiveType, 0, 0, 0, 0);
  if (!glpTopLevelNodeGetDefCount(a2))
  {
    goto LABEL_9;
  }

  v12 = 0;
  Extra = 0;
  v14 = 0;
  do
  {
    Def = glpTopLevelNodeGetDef(a2, v14);
    if (Def)
    {
      v16 = Def;
      if (glpIsFunctionPrototypeNode(Def))
      {
        Name = glpFunctionPrototypeNodeGetName(v16);
        if (glpStringsEqual(a3, a4, Name, v18))
        {
          Extra = glpFunctionPrototypeNodeGetExtra(v16);
          glpTopLevelNodeSetDef(a2, v14, 0);
          v12 = v16;
        }
      }
    }

    ++v14;
  }

  while (v14 < glpTopLevelNodeGetDefCount(a2));
  if (!v12)
  {
LABEL_9:
    v19 = glpAggregateTypeMangleName(FunctionType, a3, a4, a1);
    glpMakeFunctionObject(a1, FunctionType, 139264, a3, a4, v19, v20);
    Extra = v21;
    v25.n128_u64[0] = "-1";
    v25.n128_u64[1] = 0xEDA00000002;
    v26 = 0xFFFFFFFFLL;
    glpMakeFunctionPrototypeNode(a1, &v25, a3, a4);
    v12 = v22;
    glpASTNodeSetSaType(v22, FunctionType);
    glpFunctionPrototypeNodeSetExtra(v12, Extra);
    glpFunctionPrototypeNodeSetReturnOutParam(v12, 0);
  }

  v25.n128_u64[0] = "-1";
  v25.n128_u64[1] = 0xEDA00000002;
  v26 = 0xFFFFFFFFLL;
  CopyFunctionDefinitionFragment = glpMakeCopyFunctionDefinitionFragment(a1, &v25, v12, a5);
  glpTopLevelNodeInsertDef(a1, a2, CopyFunctionDefinitionFragment, 0);
  return Extra;
}

uint64_t copyOutBeforeReturnsIn(void *a1, uint64_t a2, uint64_t a3)
{
  MainReturnFragment = a3;
  if (a3)
  {
    if (glpIsReturnStatementNode(a3))
    {
      v14 = 0;
      v12.n128_u64[0] = "-1";
      v12.n128_u64[1] = 0xEDA00000002;
      v13 = 0xFFFFFFFFLL;
      MainReturnFragment = glpMakeMainReturnFragment(a1, &v12, &v14, *(a2 + 24), *(a2 + 32), a2);
      v6 = v14;
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v6, PrimitiveType);
    }

    else if (glpASTNodeGetChildCount(MainReturnFragment))
    {
      v8 = 0;
      do
      {
        Child = glpASTNodeGetChild(MainReturnFragment, v8);
        v10 = copyOutBeforeReturnsIn(a1, a2, Child);
        glpASTNodeSetChild(MainReturnFragment, v8++, v10);
      }

      while (v8 < glpASTNodeGetChildCount(MainReturnFragment));
    }
  }

  return MainReturnFragment;
}

uint64_t glpIsLegalStageCombination(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a1 + 296);
  if (!a2 && a5 && !v6)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v17 = "-1";
    v18 = 0xEDA00000002;
    v19 = 0xFFFFFFFFLL;
    v12 = "Can't have a geometry shader without a vertex shader";
LABEL_27:
    glpLogMessage(InfoLog, 0, &v17, v12, v8, v9, v10, v11, v16);
    return 0;
  }

  if (!a2 && a4 && !v6)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v17 = "-1";
    v18 = 0xEDA00000002;
    v19 = 0xFFFFFFFFLL;
    v12 = "Can't have a tessellation evaluation shader without a vertex shader";
    goto LABEL_27;
  }

  if (a3)
  {
    v13 = v6 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v13;
  if (!a2 && (v14 & 1) == 0)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v17 = "-1";
    v18 = 0xEDA00000002;
    v19 = 0xFFFFFFFFLL;
    v12 = "Can't have a tessellation control shader without a vertex shader";
    goto LABEL_27;
  }

  if (a4)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v17 = "-1";
    v18 = 0xEDA00000002;
    v19 = 0xFFFFFFFFLL;
    v12 = "Can't have a tessellation control shader without a tessellation evaluation shader";
    goto LABEL_27;
  }

  if ((!a2 || !a6) && !v6 && (*(a1 + 60) - 3) <= 1)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v17 = "-1";
    v18 = 0xEDA00000002;
    v19 = 0xFFFFFFFFLL;
    v12 = "OpenGL ES requires exactly one vertex and one fragment shader to validly link.";
    goto LABEL_27;
  }

  if (!(a6 | a2) && (*(a1 + 60) - 3) <= 1)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v17 = "-1";
    v18 = 0xEDA00000002;
    v19 = 0xFFFFFFFFLL;
    v12 = "Must have at least one shader stage in a program";
    goto LABEL_27;
  }

  return 1;
}

uint64_t glpMergeUniforms(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = *(a3 + 40);
      v10 = *(v9 + v6);
      if (v10)
      {
        v11 = v9 + v6;
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v14 = glpStringHashGet(a2, v12, v13);
        if (v14)
        {
          v16 = v14;
          if (!glpTypesEqual(*v10, *v14))
          {
            v27 = *(v10 + 32);
            v28 = *(v10 + 40);
            v30 = "-1";
            v31 = 0xEDA00000002;
            v32 = 0xFFFFFFFFLL;
            glpLogMessage(a1, 0, &v30, "Uniform type mismatch '%.*s'", v17, v18, v19, v20, v28);
            goto LABEL_14;
          }

          v21 = *(v10 + 72);
          if (v21)
          {
            v22 = v16[9];
            if (v22)
            {
              if (glpCompareValues(v21, *v10, v22))
              {
                v23 = *(v10 + 32);
                v24 = *(v10 + 40);
                v30 = "-1";
                v31 = 0xEDA00000002;
                v32 = 0xFFFFFFFFLL;
                glpLogMessage(a1, 0, &v30, "Uniform initializer mismatch '%.*s'", v17, v18, v19, v20, v24);
LABEL_14:
                v8 = 0;
                goto LABEL_15;
              }
            }
          }

          if (((*(v16 + 12) ^ *(v10 + 48)) & 0x1FLL) != 0)
          {
            v25 = *(v10 + 32);
            v26 = *(v10 + 40);
            v30 = "-1";
            v31 = 0xEDA00000002;
            v32 = 0xFFFFFFFFLL;
            glpLogMessage(a1, 0, &v30, "Uniform precision mismatch '%.*s'", v17, v18, v19, v20, v26);
            goto LABEL_14;
          }
        }

        glpStringHashPut(a2, v12, v13, v10, v15);
      }

LABEL_15:
      ++v7;
      v6 += 32;
      if (v7 >= *(a3 + 32))
      {
        return v8;
      }
    }
  }

  return 1;
}

uint64_t glpMergeInterfaceBlocks(uint64_t **a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!*(a4 + 32))
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = *(a4 + 40);
    v12 = *(v11 + v8);
    if (v12)
    {
      v13 = v11 + v8;
      v15 = *(v13 + 8);
      v14 = *(v13 + 16);
      v16 = glpStringHashGet(a3, v15, v14);
      if (!v16 || ((*(**(v16 + 72) + 48) ^ *(**(v12 + 72) + 48)) & 0x160000000) != 0)
      {
        goto LABEL_9;
      }

      ElementType = *(v16 + 64);
      if (a5)
      {
        ElementType = glpArrayTypeGetElementType(*(v16 + 64));
      }

      if (glpTypesEqual(*(v12 + 64), ElementType))
      {
LABEL_9:
        glpStringHashPut(a3, v15, v14, v12, v17);
      }

      else
      {
        glpLanguageToString(a2);
        v26[0] = "-1";
        v26[1] = 0xEDA00000002;
        v26[2] = 0xFFFFFFFFLL;
        glpLogMessage(a1, 0, v26, "Multiple declarations of interface block '%.*s' in %s shader do not match", v19, v20, v21, v22, v14);
        v10 = 0;
      }
    }

    ++v9;
    v8 += 32;
  }

  while (v9 < *(a4 + 32));
  return v10;
}

uint64_t glpMakeVertexInputBindings(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1;
  Allocator = glpLinkerGetAllocator(a1);
  v202 = a3;
  *a3 = glpMakeStringHash(Allocator);
  v11 = glpLinkerGetAllocator(v9);
  *a4 = glpMakeStringHash(v11);
  v12 = glpLinkerGetAllocator(v9);
  *a5 = glpMakeIntHash(v12);
  LODWORD(v13) = *(a2 + 32);
  v228 = v9;
  v203 = a4;
  v224 = a5;
  v193 = a2;
  if (v13)
  {
    v14 = 0;
    v229 = 0;
    v208 = 1;
    while (1)
    {
      v15 = (*(a2 + 40) + 32 * v14);
      v16 = *v15;
      if (*v15)
      {
        v17 = v15[1];
        v18 = v15[2];
        v19 = *(v16 + 8);
        if (v19)
        {
          v20 = glpLayoutObjectFind(v19, 26);
          if (!v18)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v20 = 0;
          if (!v18)
          {
            goto LABEL_12;
          }
        }

        if (*v17 != 36 || v18 >= 9 && !strncmp("$ib$", v17, 4uLL) && !strncmp("$gl_", v17 + 5, 4uLL))
        {
LABEL_12:
          if (v20)
          {
            v21 = *(v16 + 8);
            v212 = v20;
            if (v21)
            {
              v194 = glpLayoutObjectFind(v21, 79) != 0;
            }

            else
            {
              v194 = 0;
            }

            v22 = glpABIGetTypeSize(0, *v16, 0);
            LODWORD(v23) = glpTypeSizeGetSize(v22);
            v24 = glpLinkerPoolAlloc(v9);
            v225 = glpLinkerPoolAlloc(v9);
            glpTypeGetAppleVec4Types(*v16, v24, 1, 0, 0, v225, 0, 0, 0);
            v220 = v23;
            v25 = glpLinkerPoolAlloc(v9);
            *v25 = v16;
            v25[1] = 0;
            __n = v17;
            v198 = v18;
            glpStringHashPut(*v203, v17, v18, v25, v26);
            if (v23)
            {
              v27 = 0;
              v28 = *(v212 + 16) - 1;
              v23 = v23;
              v216 = v16;
              do
              {
                v29 = (v225[v27] >> 2) & 1;
                v28 += (v225[v27] & 4) == 0;
                if (glpIntHashGet(*v224, v28 | (v29 << 16)))
                {
                  InfoLog = glpLinkerGetInfoLog(v228);
                  v31 = *(v16 + 32);
                  v32 = *(v16 + 40);
                  v230 = "-1";
                  v231 = 0xEDA00000002;
                  v232 = 0xFFFFFFFFLL;
                  glpLogMessage(InfoLog, 0, &v230, "Active attribute aliasing. Slot %d unavailable for '%.*s' from layout location request.", v33, v34, v35, v36, v28);
                  v208 = 0;
                }

                else
                {
                  v37 = glpLinkerPoolAlloc(v228);
                  *v37 = 0u;
                  *(v37 + 16) = 0u;
                  glpIntHashPut(*v224, v28 | (v29 << 16), v37, 0.0);
                  if (v229 <= v28)
                  {
                    v38 = v28;
                  }

                  else
                  {
                    v38 = v229;
                  }

                  v229 = v38;
                  if (BitSetGetEquals(*(v16 + 120), v27) && glpPrimitiveTypeGetScalarCount(v24[v27]))
                  {
                    v39 = 0;
                    do
                    {
                      v40 = *(v25 + 2);
                      v41 = &v25[v40 + 2];
                      *v41 = v28 | (v29 << 16);
                      v41[1] = v39;
                      *(v25 + 2) = v40 + 1;
                      *v37 |= 1 << v39++;
                    }

                    while (v39 < glpPrimitiveTypeGetScalarCount(v24[v27]));
                  }

                  v16 = v216;
                  *(v37 + 8) = *(v216 + 48) & 0x7F00000001FLL | (v225[v27] >> 3);
                  *(v37 + 4) = v24[v27];
                  v42 = *(v216 + 8);
                  if (v42 && glpLayoutObjectFind(v42, 33))
                  {
                    *(v37 + 24) = offsetLayout(v228, *(v216 + 8), v29);
                  }

                  else
                  {
                    v43 = glpLinkerGetAllocator(v228);
                    *(v37 + 24) = glpMakeLayoutObject(v43);
                    v44 = glpLinkerGetAllocator(v228);
                    v45 = *(v37 + 24);
                    v230 = "-1";
                    v231 = 0xEDA00000002;
                    v232 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v44, 0, &v230, 0, 0, v45, 33, 0);
                    v46 = glpLinkerGetAllocator(v228);
                    v47 = *(v37 + 24);
                    v230 = "-1";
                    v231 = 0xEDA00000002;
                    v232 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v46, 0, &v230, 0, 0, v47, 34, 28);
                    v48 = glpLinkerGetAllocator(v228);
                    v49 = *(v37 + 24);
                    if (v28 >= 15)
                    {
                      v50 = 15;
                    }

                    else
                    {
                      v50 = v28;
                    }

                    v230 = "-1";
                    v231 = 0xEDA00000002;
                    v232 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v48, 0, &v230, 0, 0, v49, 35, v50 + 16);
                    v51 = glpLinkerGetAllocator(v228);
                    v52 = *(v37 + 24);
                    v230 = "-1";
                    v231 = 0xEDA00000002;
                    v232 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v51, 0, &v230, 0, 0, v52, 37, v29);
                  }

                  v23 = v220;
                }

                ++v27;
              }

              while (v27 != v23);
            }

            v9 = v228;
            if (!v194)
            {
              *(v228 + 256) += *(v25 + 2);
            }

            v53 = glpLinkerPoolAlloc(v228);
            *v53 = 0;
            v53[1] = 0;
            *v53 = *(v212 + 16);
            v53[1] = *v16;
            glpStringHashPut(*v202, __n, v198, v53, v54);
            a2 = v193;
          }
        }
      }

      ++v14;
      v13 = *(a2 + 32);
      if (v14 >= v13)
      {
        goto LABEL_42;
      }
    }
  }

  v229 = 0;
  v208 = 1;
LABEL_42:
  v55 = *(v9 + 80);
  if (!*(v55 + 32))
  {
    goto LABEL_77;
  }

  v56 = 0;
  v191 = *(v9 + 80);
  do
  {
    v57 = (*(v55 + 40) + 32 * v56);
    v58 = *v57;
    if (!*v57)
    {
      goto LABEL_75;
    }

    v60 = v57[1];
    v59 = v57[2];
    v61 = glpStringHashGet(a2, v60, v59);
    if (v61)
    {
      v217 = v61;
      v62 = *(v61 + 8);
      if (v62)
      {
        if (glpLayoutObjectFind(v62, 26))
        {
          v9 = v228;
          goto LABEL_75;
        }

        v68 = v217[1];
        v213 = v58;
        if (v68)
        {
          v195 = glpLayoutObjectFind(v68, 79) != 0;
        }

        else
        {
          v195 = 0;
        }
      }

      else
      {
        v213 = v58;
        v195 = 0;
      }

      v209 = v56;
      v69 = glpABIGetTypeSize(0, *v217, 0);
      Size = glpTypeSizeGetSize(v69);
      v71 = glpLinkerPoolAlloc(v228);
      v226 = glpLinkerPoolAlloc(v228);
      glpTypeGetAppleVec4Types(*v217, v71, 1, 0, 0, v226, 0, 0, 0);
      v221 = Size;
      v72 = glpLinkerPoolAlloc(v228);
      *v72 = v217;
      v72[1] = 0;
      v199 = v60;
      __na = v59;
      glpStringHashPut(*v203, v60, v59, v72, v73);
      if (Size)
      {
        v74 = 0;
        v75 = v217;
        v76 = *v213 - 1;
        do
        {
          v77 = (v226[v74] >> 2) & 1;
          v76 += (v226[v74] & 4) == 0;
          if (glpIntHashGet(*v224, v76 | (v77 << 16)))
          {
            v78 = glpLinkerGetInfoLog(v228);
            v79 = v75[4];
            v80 = *(v75 + 10);
            v230 = "-1";
            v231 = 0xEDA00000002;
            v232 = 0xFFFFFFFFLL;
            glpLogMessage(v78, 0, &v230, "Active attribute aliasing. Slot %d unavailable for '%.*s' from BindAttributeLocation request.", v81, v82, v83, v84, v76);
            v208 = 0;
          }

          else
          {
            v85 = glpLinkerPoolAlloc(v228);
            *v85 = 0u;
            *(v85 + 16) = 0u;
            glpIntHashPut(*v224, v76 | (v77 << 16), v85, 0.0);
            if (v229 <= v76)
            {
              v86 = v76;
            }

            else
            {
              v86 = v229;
            }

            v229 = v86;
            if (BitSetGetEquals(v75[15], v74) && glpPrimitiveTypeGetScalarCount(v71[v74]))
            {
              v87 = 0;
              do
              {
                v88 = *(v72 + 2);
                v89 = &v72[v88 + 2];
                *v89 = v76 | (v77 << 16);
                v89[1] = v87;
                *(v72 + 2) = v88 + 1;
                *v85 |= 1 << v87++;
              }

              while (v87 < glpPrimitiveTypeGetScalarCount(v71[v74]));
            }

            *(v85 + 8) = v217[6] & 0x7F00000001FLL | (v226[v74] >> 3);
            *(v85 + 4) = v71[v74];
            v90 = glpLinkerGetAllocator(v228);
            *(v85 + 24) = glpMakeLayoutObject(v90);
            v91 = glpLinkerGetAllocator(v228);
            v92 = *(v85 + 24);
            v230 = "-1";
            v231 = 0xEDA00000002;
            v232 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v91, 0, &v230, 0, 0, v92, 33, 0);
            v93 = glpLinkerGetAllocator(v228);
            v94 = *(v85 + 24);
            v230 = "-1";
            v231 = 0xEDA00000002;
            v232 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v93, 0, &v230, 0, 0, v94, 34, 28);
            v95 = glpLinkerGetAllocator(v228);
            v96 = *(v85 + 24);
            if (v76 >= 15)
            {
              v97 = 15;
            }

            else
            {
              v97 = v76;
            }

            v230 = "-1";
            v231 = 0xEDA00000002;
            v232 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v95, 0, &v230, 0, 0, v96, 35, v97 + 16);
            v98 = glpLinkerGetAllocator(v228);
            v99 = *(v85 + 24);
            v75 = v217;
            v230 = "-1";
            v231 = 0xEDA00000002;
            v232 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v98, 0, &v230, 0, 0, v99, 37, v77);
          }

          ++v74;
        }

        while (v74 != v221);
      }

      else
      {
        v75 = v217;
      }

      if (!v195)
      {
        *(v228 + 256) += *(v72 + 2);
      }

      v9 = v228;
      v100 = glpLinkerPoolAlloc(v228);
      *v100 = 0;
      v100[1] = 0;
      *v100 = *v213;
      v100[1] = *v75;
      glpStringHashPut(*v202, v199, __na, v100, v101);
      v55 = v191;
      a2 = v193;
      v56 = v209;
    }

    else
    {
      v9 = v228;
      v63 = glpLinkerGetInfoLog(v228);
      v230 = "-1";
      v231 = 0xEDA00000002;
      v232 = 0xFFFFFFFFLL;
      glpLogMessage(v63, 1u, &v230, "Could not find vertex shader attribute '%.*s' to match BindAttributeLocation request.", v64, v65, v66, v67, v59);
    }

LABEL_75:
    ++v56;
  }

  while (v56 < *(v55 + 32));
  LODWORD(v13) = *(a2 + 32);
LABEL_77:
  v102 = 8;
  v103 = v13;
  while (2)
  {
    if (!v103)
    {
      goto LABEL_131;
    }

    v104 = 0;
    while (2)
    {
      v105 = *(a2 + 40) + 32 * v104;
      v106 = *v105;
      if (*v105)
      {
        v107 = *(v105 + 8);
        v222 = *(v105 + 16);
        v108 = glpStringHashGet(*(v9 + 80), v107, v222);
        v109 = v106[1];
        if (v109)
        {
          v110 = glpLayoutObjectFind(v109, 26) != 0;
          if (v108)
          {
            goto LABEL_129;
          }

LABEL_85:
          if (v222 < 3)
          {
            goto LABEL_96;
          }

          v111 = *v107;
          if (v111 == 103)
          {
            v112 = *(v107 + 1);
            if (v112 == 108)
            {
              v112 = *(v107 + 2);
              v113 = 95;
            }

            else
            {
              v113 = 108;
            }

            if (v113 != v112)
            {
LABEL_93:
              if (v222 < 9 || strncmp("$ib$", v107, 4uLL) || strncmp("$gl_", v107 + 5, 4uLL))
              {
LABEL_96:
                if (v222 && *v107 == 36)
                {
                  if (v222 < 9 || strncmp("$ib$", v107, 4uLL) || strncmp("$gl_", v107 + 5, 4uLL) != 0 || v110)
                  {
                    goto LABEL_129;
                  }
                }

                else if (v110)
                {
                  goto LABEL_129;
                }

                v114 = glpABIGetTypeSize(0, *v106, 0);
                if (glpTypeSizeGetSize(v114) == v102)
                {
                  v115 = v106[1];
                  __nb = v107;
                  if (v115)
                  {
                    v200 = glpLayoutObjectFind(v115, 79) != 0;
                  }

                  else
                  {
                    v200 = 0;
                  }

                  v116 = glpABIGetTypeSize(0, *v106, 0);
                  v117 = glpTypeSizeGetSize(v116);
                  v118 = v106;
                  v119 = glpLinkerPoolAlloc(v9);
                  v120 = glpLinkerPoolAlloc(v9);
                  glpTypeGetAppleVec4Types(*v118, v119, 1, 0, 0, v120, 0, 0, 0);
                  v121 = glpLinkerPoolAlloc(v9);
                  *v121 = v118;
                  v121[1] = 0;
                  glpStringHashPut(*v203, __nb, v222, v121, v122);
                  if (v117)
                  {
                    v123 = 0;
                    v124 = v117;
                    v125 = v120;
                    do
                    {
                      v126 = *v125++;
                      if ((v126 & 4) == 0)
                      {
                        ++v123;
                      }

                      --v124;
                    }

                    while (v124);
                    AttribForSize = allocateAttribForSize(*v224, v123);
                    v192 = v102;
                    v127 = 0;
                    v128 = AttribForSize - 1;
                    v129 = v118;
                    v210 = v117;
                    v218 = v120;
                    do
                    {
                      v128 += (v120[v127] & 4) == 0;
                      v214 = (v120[v127] >> 2) & 1;
                      v130 = v128 | (v214 << 16);
                      v131 = glpLinkerPoolAlloc(v9);
                      *v131 = 0u;
                      *(v131 + 16) = 0u;
                      glpIntHashPut(*v224, v130, v131, 0.0);
                      if (v229 <= v128)
                      {
                        v132 = v128;
                      }

                      else
                      {
                        v132 = v229;
                      }

                      v229 = v132;
                      if (BitSetGetEquals(v129[15], v127) && glpPrimitiveTypeGetScalarCount(v119[v127]))
                      {
                        v133 = 0;
                        do
                        {
                          v134 = *(v121 + 2);
                          v135 = &v121[v134 + 2];
                          *v135 = v130;
                          v135[1] = v133;
                          *(v121 + 2) = v134 + 1;
                          *v131 |= 1 << v133++;
                        }

                        while (v133 < glpPrimitiveTypeGetScalarCount(v119[v127]));
                      }

                      v9 = v228;
                      *(v131 + 8) = v118[6] & 0x7F00000001FLL | (v218[v127] >> 3);
                      *(v131 + 4) = v119[v127];
                      v136 = glpLinkerGetAllocator(v228);
                      *(v131 + 24) = glpMakeLayoutObject(v136);
                      v137 = glpLinkerGetAllocator(v228);
                      v138 = *(v131 + 24);
                      v230 = "-1";
                      v231 = 0xEDA00000002;
                      v232 = 0xFFFFFFFFLL;
                      glpLayoutObjectAppendInteger(v137, 0, &v230, 0, 0, v138, 33, 0);
                      v139 = glpLinkerGetAllocator(v228);
                      v140 = *(v131 + 24);
                      v230 = "-1";
                      v231 = 0xEDA00000002;
                      v232 = 0xFFFFFFFFLL;
                      glpLayoutObjectAppendInteger(v139, 0, &v230, 0, 0, v140, 34, 28);
                      v141 = glpLinkerGetAllocator(v228);
                      v142 = *(v131 + 24);
                      if (v128 >= 15)
                      {
                        v143 = 15;
                      }

                      else
                      {
                        v143 = v128;
                      }

                      v230 = "-1";
                      v231 = 0xEDA00000002;
                      v232 = 0xFFFFFFFFLL;
                      glpLayoutObjectAppendInteger(v141, 0, &v230, 0, 0, v142, 35, v143 + 16);
                      v144 = glpLinkerGetAllocator(v228);
                      v145 = *(v131 + 24);
                      v230 = "-1";
                      v231 = 0xEDA00000002;
                      v129 = v118;
                      v120 = v218;
                      v232 = 0xFFFFFFFFLL;
                      glpLayoutObjectAppendInteger(v144, 0, &v230, 0, 0, v145, 37, v214);
                      ++v127;
                    }

                    while (v127 != v210);
                    a2 = v193;
                    v102 = v192;
                  }

                  else
                  {
                    AttribForSize = allocateAttribForSize(*v224, 0);
                  }

                  if (!v200)
                  {
                    *(v9 + 256) += *(v121 + 2);
                  }

                  v146 = glpLinkerPoolAlloc(v9);
                  *v146 = 0;
                  v146[1] = 0;
                  *v146 = AttribForSize;
                  v146[1] = *v118;
                  glpStringHashPut(*v202, __nb, v222, v146, v147);
                }
              }
            }
          }

          else if (103 != v111)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v110 = 0;
          if (!v108)
          {
            goto LABEL_85;
          }
        }
      }

LABEL_129:
      ++v104;
      v13 = *(a2 + 32);
      if (v104 < v13)
      {
        continue;
      }

      break;
    }

    v103 = *(a2 + 32);
LABEL_131:
    if (--v102)
    {
      continue;
    }

    break;
  }

  v148 = 8;
  while (2)
  {
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v150 = (*(a2 + 40) + 32 * i);
        if (!*v150)
        {
          goto LABEL_176;
        }

        v151 = v150[1];
        v152 = v150[2];
        v227 = *v150;
        v153 = (*v150)[1];
        v154 = v153 && glpLayoutObjectFind(v153, 26) != 0;
        if (v152 < 3)
        {
          goto LABEL_176;
        }

        v155 = *v151;
        if (v155 == 103)
        {
          v156 = *(v151 + 1);
          if (v156 == 108)
          {
            if (95 == v151[2])
            {
              goto LABEL_150;
            }
          }

          else if (108 == v156)
          {
LABEL_150:
            if (!v154)
            {
              goto LABEL_151;
            }

            goto LABEL_176;
          }
        }

        else if (103 == v155)
        {
          goto LABEL_150;
        }

        if (v152 >= 9 && !strncmp("$ib$", v151, 4uLL) && strncmp("$gl_", v151 + 5, 4uLL) == 0 && !v154)
        {
LABEL_151:
          v215 = v152;
          v157 = glpABIGetTypeSize(0, *v227, 0);
          if (glpTypeSizeGetSize(v157) == v148)
          {
            v211 = v151;
            v158 = v227[1];
            if (v158)
            {
              __nc = glpLayoutObjectFind(v158, 79) != 0;
            }

            else
            {
              __nc = 0;
            }

            v159 = glpABIGetTypeSize(0, *v227, 0);
            v160 = glpTypeSizeGetSize(v159);
            v161 = glpLinkerPoolAlloc(v9);
            v162 = v9;
            v163 = glpLinkerPoolAlloc(v9);
            glpTypeGetAppleVec4Types(*v227, v161, 1, 0, 0, v163, 0, 0, 0);
            v164 = glpLinkerPoolAlloc(v162);
            *v164 = v227;
            v164[1] = 0;
            glpStringHashPut(*v203, v151, v152, v164, v165);
            if (v160)
            {
              v166 = 0;
              v167 = v160;
              v223 = v163;
              do
              {
                v168 = *v163++;
                if ((v168 & 4) == 0)
                {
                  ++v166;
                }

                --v167;
              }

              while (v167);
              v197 = allocateAttribForSize(*v224, v166);
              v201 = v148;
              v169 = 0;
              v170 = v228;
              v171 = v197 - 1;
              v172 = v223;
              v219 = v160;
              do
              {
                v171 += (*(v172 + v169) & 4) == 0;
                v173 = v171 | (((*(v172 + v169) >> 2) & 1) << 16);
                v174 = glpLinkerPoolAlloc(v170);
                *v174 = 0u;
                *(v174 + 16) = 0u;
                glpIntHashPut(*v224, v173, v174, 0.0);
                if (v229 <= v171)
                {
                  v175 = v171;
                }

                else
                {
                  v175 = v229;
                }

                v229 = v175;
                if (BitSetGetEquals(v227[15], v169) && glpPrimitiveTypeGetScalarCount(v161[v169]))
                {
                  v176 = 0;
                  do
                  {
                    v177 = *(v164 + 2);
                    v178 = &v164[v177 + 2];
                    *v178 = v173;
                    v178[1] = v176;
                    *(v164 + 2) = v177 + 1;
                    *v174 |= 1 << v176++;
                  }

                  while (v176 < glpPrimitiveTypeGetScalarCount(v161[v169]));
                }

                v172 = v223;
                *(v174 + 8) = v227[6] & 0x7F00000001FLL | (*(v223 + v169) >> 3);
                *(v174 + 4) = v161[v169];
                *(v174 + 24) = offsetLayout(v228, v227[1], v169);
                v179 = v227[1];
                if (v179)
                {
                  glpLayoutObjectFind(v179, 33);
                }

                ++v169;
                v170 = v228;
              }

              while (v169 != v219);
              a2 = v193;
              v9 = v228;
              v180 = v197;
              v148 = v201;
              v151 = v211;
            }

            else
            {
              v180 = allocateAttribForSize(*v224, 0);
              v9 = v228;
            }

            if (!__nc)
            {
              *(v9 + 256) += *(v164 + 2);
            }

            v181 = glpLinkerPoolAlloc(v9);
            *v181 = 0;
            v181[1] = 0;
            *v181 = v180;
            v181[1] = *v227;
            glpStringHashPut(*v202, v151, v215, v181, v182);
          }
        }

LABEL_176:
        v13 = *(a2 + 32);
      }
    }

    if (--v148)
    {
      continue;
    }

    break;
  }

  v183 = *(*v203 + 32);
  result = v208;
  if (v183)
  {
    v185 = *(*v203 + 40);
    do
    {
      if (*v185)
      {
        *(**v185 + 8) = 0;
      }

      v185 += 32;
      --v183;
    }

    while (v183);
  }

  if (v229 >= 0x10)
  {
    v186 = glpLinkerGetInfoLog(v9);
    v230 = "-1";
    v231 = 0xEDA00000002;
    v232 = 0xFFFFFFFFLL;
    glpLogMessage(v186, 0, &v230, "Implementation limit of %d MAX_VERTEX_ATTRIBS (e.g., number of generic plus conventional active vec4 attributes) exceeded, shader uses up to vec4 attribute %d.", v187, v188, v189, v190, 16);
    return 0;
  }

  return result;
}

uint64_t *offsetLayout(uint64_t a1, void **a2, unsigned int a3)
{
  Allocator = glpLinkerGetAllocator(a1);
  v6 = glpCopyLayoutObject(Allocator, a2);
  v7 = glpLayoutObjectFind(v6, 35);
  if (v7)
  {
    *(v7 + 4) += a3;
  }

  v8 = glpLayoutObjectFind(v6, 43);
  if (v8)
  {
    *(v8 + 4) += a3;
  }

  v9 = glpLayoutObjectFind(v6, 45);
  if (v9)
  {
    *(v9 + 4) += a3;
  }

  v10 = glpLayoutObjectFind(v6, 47);
  if (v10)
  {
    *(v10 + 4) += 4 * a3;
  }

  v11 = glpLayoutObjectFind(v6, 50);
  if (v11)
  {
    *(v11 + 4) += a3;
  }

  v12 = glpLayoutObjectFind(v6, 52);
  if (v12)
  {
    *(v12 + 4) += a3;
  }

  v13 = glpLayoutObjectFind(v6, 57);
  if (v13)
  {
    *(v13 + 4) += a3;
  }

  v14 = glpLayoutObjectFind(v6, 59);
  if (v14)
  {
    *(v14 + 4) += a3;
  }

  v15 = glpLayoutObjectFind(v6, 60);
  if (v15)
  {
    *(v15 + 4) += a3;
  }

  v16 = glpLayoutObjectFind(v6, 61);
  if (v16)
  {
    *(v16 + 4) += a3 >> 2;
  }

  v17 = glpLayoutObjectFind(v6, 63);
  if (v17)
  {
    *(v17 + 4) += a3 & 3;
  }

  v18 = glpLayoutObjectFind(v6, 69);
  if (v18)
  {
    *(v18 + 4) += a3;
  }

  v19 = glpLayoutObjectFind(v6, 72);
  if (v19)
  {
    *(v19 + 4) += a3;
  }

  v20 = glpLayoutObjectFind(v6, 75);
  if (v20)
  {
    *(v20 + 4) += a3;
  }

  return v6;
}

BOOL isBuiltinName(char *__s2, unsigned int a2)
{
  if (a2 < 3)
  {
    return 0;
  }

  v3 = *__s2;
  if (v3 == 103)
  {
    v3 = __s2[1];
    if (v3 == 108)
    {
      v3 = __s2[2];
      v4 = 95;
    }

    else
    {
      v4 = 108;
    }
  }

  else
  {
    v4 = 103;
  }

  if (v4 == v3)
  {
    return 1;
  }

  if (a2 >= 9 && !strncmp("$ib$", __s2, 4uLL))
  {
    return strncmp("$gl_", __s2 + 5, 4uLL) == 0;
  }

  return 0;
}

uint64_t allocateAttribForSize(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = a2;
    for (i = v4; !glpIntHashGet(a1, i); ++i)
    {
      if (!--v5)
      {
        return v4;
      }
    }

    v4 = (v4 + 1);
  }

  while (v4 < v4 + a2);
  return v4;
}

uint64_t glpMakeFragmentOutputBindings(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1;
  Allocator = glpLinkerGetAllocator(a1);
  v265 = a3;
  *a3 = glpMakeStringHash(Allocator);
  v11 = glpLinkerGetAllocator(v9);
  v266 = a4;
  *a4 = glpMakeStringHash(v11);
  v12 = glpLinkerGetAllocator(v9);
  v290 = a5;
  *a5 = glpMakeIntHash(v12);
  v13 = *(a2 + 32);
  v288 = 1;
  v287 = v9;
  v264 = a2;
  if (!v13)
  {
    v48 = 0;
    LODWORD(v110) = 0;
    v47 = 0;
    v274 = 0;
    v45 = 0;
    goto LABEL_103;
  }

  v14 = 0;
  v279 = 0;
  v285 = 0;
  v15 = 0x80000000;
  while (1)
  {
    v16 = (*(a2 + 40) + 32 * v14);
    v289 = *v16;
    if (!*v16)
    {
      goto LABEL_46;
    }

    v17 = v16[2];
    if (v17 < 3)
    {
      goto LABEL_46;
    }

    v18 = v16[1];
    v19 = *v18;
    if (v19 == 103)
    {
      v20 = *(v18 + 1);
      if (v20 == 108)
      {
        v20 = *(v18 + 2);
        v21 = 95;
      }

      else
      {
        v21 = 108;
      }

      if (v21 == v20)
      {
        goto LABEL_15;
      }
    }

    else if (103 == v19)
    {
      goto LABEL_15;
    }

    if (v17 < 9 || strncmp("$ib$", v18, 4uLL) || strncmp("$gl_", v18 + 5, 4uLL))
    {
      goto LABEL_46;
    }

LABEL_15:
    if (v19 != 36 || v17 >= 9 && !strncmp("$ib$", v18, 4uLL) && !strncmp("$gl_", v18 + 5, 4uLL))
    {
      break;
    }

LABEL_46:
    if (++v14 >= v13)
    {
      v288 = 1;
      goto LABEL_48;
    }
  }

  __n = v18;
  v22 = *(v289 + 8);
  if (v22)
  {
    v23 = glpLayoutObjectFind(v22, 79) != 0;
    v22 = *(v289 + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = v285;
  v25 = glpLayoutObjectFind(v22, 72);
  v26 = glpLayoutObjectFind(*(v289 + 8), 77);
  if (!v285 || !v26)
  {
    v252 = v23;
    v273 = v26;
    if (v26)
    {
      v24 = v289;
    }

    v285 = v24;
    v27 = glpABIGetTypeSize(0, *v289, 0);
    Size = glpTypeSizeGetSize(v27);
    v29 = glpLinkerPoolAlloc(v9);
    v270 = glpLinkerPoolAlloc(v9);
    glpTypeGetAppleVec4Types(*v289, v29, 1, 0, 0, v270, 0, 0, 0);
    v30 = v289;
    v31 = glpLinkerPoolAlloc(v9);
    v32 = v17;
    v33 = v31;
    *v31 = v289;
    v31[1] = 0;
    v256 = v32;
    glpStringHashPut(*v266, v18, v32, v31, v34);
    v275 = v15;
    if (v25)
    {
      v275 = *(v25 + 4);
    }

    if (Size)
    {
      for (i = 0; i != Size; ++i)
      {
        if (BitSetGetEquals(v30[15], i))
        {
          v36 = v15;
          v37 = glpLinkerPoolAlloc(v287);
          *v37 = 0u;
          *(v37 + 16) = 0u;
          glpIntHashPut(*v290, v275 + i, v37, 0.0);
          if (v279 <= v275 + i)
          {
            v38 = v275 + i;
          }

          else
          {
            v38 = v279;
          }

          if (v273)
          {
            v39 = v38;
          }

          else
          {
            v39 = v279;
          }

          v279 = v39;
          if (glpPrimitiveTypeGetScalarCount(v29[i]))
          {
            v40 = 0;
            do
            {
              v41 = *(v33 + 2);
              v42 = &v33[v41 + 2];
              *v42 = v275 + i;
              v42[1] = v40;
              *(v33 + 2) = v41 + 1;
              *v37 |= 1 << v40++;
            }

            while (v40 < glpPrimitiveTypeGetScalarCount(v29[i]));
          }

          v30 = v289;
          *(v37 + 8) = *(v289 + 48) & 0x7F00000001FLL | (v270[i] >> 3);
          *(v37 + 4) = v29[i];
          *(v37 + 24) = offsetLayout(v287, *(v289 + 8), i);
          v15 = v36 + (v273 == 0);
        }
      }
    }

    v9 = v287;
    if (!v252)
    {
      *(v287 + 292) += *(v33 + 2);
    }

    v43 = glpLinkerPoolAlloc(v287);
    *v43 = 0;
    v43[1] = 0;
    *v43 = v275;
    v43[1] = *v30;
    glpStringHashPut(*v265, __n, v256, v43, v44);
    a2 = v264;
    v13 = *(v264 + 32);
    goto LABEL_46;
  }

  InfoLog = glpLinkerGetInfoLog(v9);
  v239 = *(v289 + 32);
  v240 = *(v285 + 32);
  v241 = *(v289 + 40);
  v242 = *(v285 + 40);
  v291 = "-1";
  v292 = 0xEDA00000002;
  v293 = 0xFFFFFFFFLL;
  glpLogMessage(InfoLog, 0, &v291, "Cannot mix builtin fragment outputs '%.*s' and '%.*s'.", v243, v244, v245, v246, v241);
  v288 = 0;
  v13 = *(a2 + 32);
LABEL_48:
  v45 = v279;
  if (v13)
  {
    v46 = 0;
    v274 = 0;
    v47 = 0;
    v48 = v285;
    do
    {
      v49 = (*(a2 + 40) + 32 * v46);
      v50 = *v49;
      if (*v49)
      {
        v52 = v49[1];
        v51 = v49[2];
        v53 = *(v50 + 8);
        if (v53)
        {
          v54 = v49[2];
          v55 = glpLayoutObjectFind(v53, 26);
          v51 = v54;
          v282 = v55;
        }

        else
        {
          v282 = 0;
        }

        if (v51 < 3)
        {
          goto LABEL_213;
        }

        v56 = *v52;
        if (v56 == 103)
        {
          v56 = *(v52 + 1);
          if (v56 == 108)
          {
            v56 = *(v52 + 2);
            v57 = 95;
          }

          else
          {
            v57 = 108;
          }
        }

        else
        {
          v57 = 103;
        }

        if (v57 != v56)
        {
          if (v51 < 9 || (v58 = v51, v59 = strncmp("$ib$", v52, 4uLL), v51 = v58, v59) || (v60 = strncmp("$gl_", v52 + 5, 4uLL), v51 = v58, v60))
          {
LABEL_213:
            if (!v51 || *v52 != 36 || v51 >= 9 && (v61 = v51, !strncmp("$ib$", v52, 4uLL)) && (v62 = strncmp("$gl_", v52 + 5, 4uLL) == 0, v51 = v61, v62))
            {
              if (v282)
              {
                __na = v51;
                v63 = *(v50 + 8);
                v271 = v47;
                if (v63)
                {
                  v248 = glpLayoutObjectFind(v63, 79) != 0;
                }

                else
                {
                  v248 = 0;
                }

                v64 = glpABIGetTypeSize(0, *v50, 0);
                v65 = glpTypeSizeGetSize(v64);
                v66 = glpLinkerPoolAlloc(v9);
                v67 = v9;
                v68 = v66;
                v257 = glpLinkerPoolAlloc(v67);
                glpTypeGetAppleVec4Types(*v50, v68, 1, 0, 0, v257, 0, 0, 0);
                v69 = *(v50 + 8);
                v253 = v46;
                if (v69 && (v70 = glpLayoutObjectFind(v69, 27)) != 0)
                {
                  v267 = *(v70 + 4);
                }

                else
                {
                  v267 = 0;
                }

                v71 = glpLinkerPoolAlloc(v287);
                *v71 = v50;
                v71[1] = 0;
                v249 = v52;
                glpStringHashPut(*v266, v52, __na, v71, v72);
                if (v65)
                {
                  for (j = 0; j != v65; ++j)
                  {
                    v74 = (*(v282 + 4) + j) | (v267 << 16);
                    v75 = glpIntHashGet(*v290, v74);
                    if (v48)
                    {
                      v76 = glpLinkerGetInfoLog(v287);
                      v77 = *(v50 + 32);
                      v78 = *(v48 + 32);
                      v79 = *(v50 + 40);
                      v80 = *(v48 + 40);
                      v291 = "-1";
                      v292 = 0xEDA00000002;
                      v293 = 0xFFFFFFFFLL;
                      glpLogMessage(v76, 0, &v291, "Cannot mix builtin and user defined fragment outputs '%.*s' and '%.*s'.", v81, v82, v83, v84, v79);
                    }

                    else
                    {
                      if (!v75)
                      {
                        if (BitSetGetEquals(*(v50 + 120), j))
                        {
                          v93 = glpLinkerPoolAlloc(v287);
                          *v93 = 0u;
                          *(v93 + 16) = 0u;
                          glpIntHashPut(*v290, v74, v93, 0.0);
                          if (v279 <= *(v282 + 4) + j)
                          {
                            v94 = *(v282 + 4) + j;
                          }

                          else
                          {
                            v94 = v279;
                          }

                          v279 = v94;
                          v95 = v274;
                          if (v274 <= v267)
                          {
                            v95 = v267;
                          }

                          v274 = v95;
                          if (glpPrimitiveTypeGetScalarCount(v68[j]))
                          {
                            v96 = 0;
                            do
                            {
                              v97 = *(v71 + 2);
                              v98 = &v71[v97 + 2];
                              *v98 = v74;
                              v98[1] = v96;
                              *(v71 + 2) = v97 + 1;
                              *v93 |= 1 << v96++;
                            }

                            while (v96 < glpPrimitiveTypeGetScalarCount(v68[j]));
                          }

                          *(v93 + 8) = *(v50 + 48) & 0x7F00000001FLL | (v257[j] >> 3);
                          *(v93 + 4) = v68[j];
                          *(v93 + 24) = addPPDrawBuffersToLayout(v287, *(v93 + 24));
                          v99 = glpLinkerGetAllocator(v287);
                          v100 = *(v93 + 24);
                          v291 = "-1";
                          v292 = 0xEDA00000002;
                          v293 = 0xFFFFFFFFLL;
                          glpLayoutObjectAppendInteger(v99, 0, &v291, 0, 0, v100, 33, 3);
                          v101 = glpLinkerGetAllocator(v287);
                          v102 = *(v93 + 24);
                          v291 = "-1";
                          v292 = 0xEDA00000002;
                          v293 = 0xFFFFFFFFLL;
                          glpLayoutObjectAppendInteger(v101, 0, &v291, 0, 0, v102, 68, 4);
                          v103 = glpLinkerGetAllocator(v287);
                          v104 = *(v93 + 24);
                          v105 = *(v282 + 4);
                          v291 = "-1";
                          v292 = 0xEDA00000002;
                          v293 = 0xFFFFFFFFLL;
                          glpLayoutObjectAppendInteger(v103, 0, &v291, 0, 0, v104, 72, v105 + j);
                          v106 = glpLinkerGetAllocator(v287);
                          v107 = *(v93 + 24);
                          v291 = "-1";
                          v292 = 0xEDA00000002;
                          v293 = 0xFFFFFFFFLL;
                          glpLayoutObjectAppendInteger(v106, 0, &v291, 0, 0, v107, 73, v267);
                          v48 = v285;
                        }

                        continue;
                      }

                      v85 = glpLinkerGetInfoLog(v287);
                      v86 = *(v282 + 4) + j;
                      v87 = *(v50 + 32);
                      v88 = *(v50 + 40);
                      v291 = "-1";
                      v292 = 0xEDA00000002;
                      v293 = 0xFFFFFFFFLL;
                      glpLogMessage(v85, 0, &v291, "Active output aliasing. Slot %d unavailable for '%.*s' from layout location request.", v89, v90, v91, v92, v86);
                    }

                    v288 = 0;
                  }
                }

                v9 = v287;
                if (!v248)
                {
                  *(v287 + 292) += *(v71 + 2);
                }

                v108 = glpLinkerPoolAlloc(v287);
                *v108 = 0;
                *(v108 + 8) = 0;
                *v108 = *(v282 + 4);
                *(v108 + 4) = v267;
                *(v108 + 8) = *v50;
                glpStringHashPut(*v265, v249, __na, v108, v109);
                v47 = v271 + 1;
                a2 = v264;
                v46 = v253;
              }
            }
          }
        }
      }

      ++v46;
      v110 = *(a2 + 32);
    }

    while (v46 < v110);
    v45 = v279;
  }

  else
  {
    LODWORD(v110) = 0;
    v47 = 0;
    v274 = 0;
    v48 = v285;
  }

LABEL_103:
  v286 = v48;
  v111 = *(v9 + 88);
  if (!*(v111 + 32))
  {
    goto LABEL_138;
  }

  v280 = v45;
  v112 = 0;
  *v250 = *(v9 + 88);
  while (2)
  {
    v113 = *(v111 + 40) + 32 * v112;
    v114 = *v113;
    if (*v113)
    {
      v115 = *(v113 + 8);
      v116 = *(v113 + 16);
      v117 = glpStringHashGet(a2, v115, v116);
      if (v117)
      {
        v118 = v117;
        v119 = *(v117 + 8);
        if (!v119)
        {
          v276 = v115;
          __nb = v112;
          goto LABEL_113;
        }

        if (!glpLayoutObjectFind(v119, 26))
        {
          v120 = *(v118 + 8);
          __nb = v112;
          v276 = v115;
          if (v120)
          {
            v254 = glpLayoutObjectFind(v120, 79) != 0;
            goto LABEL_114;
          }

LABEL_113:
          v254 = 0;
LABEL_114:
          v272 = v47;
          v126 = glpABIGetTypeSize(0, *v118, 0);
          v127 = glpTypeSizeGetSize(v126);
          v128 = glpLinkerPoolAlloc(v9);
          v268 = glpLinkerPoolAlloc(v9);
          glpTypeGetAppleVec4Types(*v118, v128, 1, 0, 0, v268, 0, 0, 0);
          v283 = v127;
          v129 = v9;
          v130 = glpLinkerPoolAlloc(v9);
          *v130 = v118;
          v130[1] = 0;
          v258 = v116;
          glpStringHashPut(*v266, v276, v116, v130, v131);
          if (v127)
          {
            for (k = 0; k != v283; ++k)
            {
              v133 = (*v114 + k) | (*(v114 + 1) << 16);
              v134 = glpIntHashGet(*v290, v133);
              if (v286)
              {
                v135 = glpLinkerGetInfoLog(v129);
                v136 = *(v118 + 32);
                v137 = *(v286 + 32);
                v138 = *(v118 + 40);
                v139 = *(v286 + 40);
                v291 = "-1";
                v292 = 0xEDA00000002;
                v293 = 0xFFFFFFFFLL;
                glpLogMessage(v135, 0, &v291, "Cannot mix builtin and user defined fragment outputs '%.*s' and '%.*s'.", v140, v141, v142, v143, v138);
              }

              else
              {
                if (!v134)
                {
                  if (BitSetGetEquals(*(v118 + 120), k))
                  {
                    v152 = glpLinkerPoolAlloc(v129);
                    *v152 = 0u;
                    *(v152 + 16) = 0u;
                    glpIntHashPut(*v290, v133, v152, 0.0);
                    if (v280 <= *v114 + k)
                    {
                      v153 = *v114 + k;
                    }

                    else
                    {
                      v153 = v280;
                    }

                    v280 = v153;
                    v154 = v274;
                    if (v274 <= *(v114 + 1))
                    {
                      v154 = *(v114 + 1);
                    }

                    v274 = v154;
                    if (glpPrimitiveTypeGetScalarCount(v128[k]))
                    {
                      v155 = 0;
                      do
                      {
                        v156 = *(v130 + 2);
                        v157 = &v130[v156 + 2];
                        *v157 = v133;
                        v157[1] = v155;
                        *(v130 + 2) = v156 + 1;
                        *v152 |= 1 << v155++;
                      }

                      while (v155 < glpPrimitiveTypeGetScalarCount(v128[k]));
                    }

                    *(v152 + 8) = *(v118 + 48) & 0x7F00000001FLL | (v268[k] >> 3);
                    *(v152 + 4) = v128[k];
                    *(v152 + 24) = addPPDrawBuffersToLayout(v287, *(v152 + 24));
                    v158 = glpLinkerGetAllocator(v287);
                    v159 = *(v152 + 24);
                    v291 = "-1";
                    v292 = 0xEDA00000002;
                    v293 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v158, 0, &v291, 0, 0, v159, 33, 3);
                    v160 = glpLinkerGetAllocator(v287);
                    v161 = *(v152 + 24);
                    v291 = "-1";
                    v292 = 0xEDA00000002;
                    v293 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v160, 0, &v291, 0, 0, v161, 68, 4);
                    v162 = glpLinkerGetAllocator(v287);
                    v163 = *(v152 + 24);
                    v164 = *v114;
                    v291 = "-1";
                    v292 = 0xEDA00000002;
                    v293 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v162, 0, &v291, 0, 0, v163, 72, v164 + k);
                    v129 = v287;
                    v165 = glpLinkerGetAllocator(v287);
                    v166 = *(v152 + 24);
                    v167 = *(v114 + 1);
                    v291 = "-1";
                    v292 = 0xEDA00000002;
                    v293 = 0xFFFFFFFFLL;
                    glpLayoutObjectAppendInteger(v165, 0, &v291, 0, 0, v166, 73, v167);
                  }

                  continue;
                }

                v144 = glpLinkerGetInfoLog(v129);
                v145 = *v114 + k;
                v146 = *(v118 + 32);
                v147 = *(v118 + 40);
                v291 = "-1";
                v292 = 0xEDA00000002;
                v293 = 0xFFFFFFFFLL;
                glpLogMessage(v144, 0, &v291, "Active output aliasing. Slot %d unavailable for '%.*s' from FragDataBinding request.", v148, v149, v150, v151, v145);
              }

              v288 = 0;
            }
          }

          v9 = v129;
          if (!v254)
          {
            *(v129 + 292) += *(v130 + 2);
          }

          v168 = glpLinkerPoolAlloc(v129);
          *v168 = 0;
          v168[1] = 0;
          v169 = *v114;
          *v168 = *v114;
          v168[1] = *v118;
          glpStringHashPut(*v265, v276, v258, v168, v169);
          v47 = v272 + 1;
          v112 = __nb;
          a2 = v264;
          v111 = *v250;
        }
      }

      else
      {
        v121 = glpLinkerGetInfoLog(v9);
        v291 = "-1";
        v292 = 0xEDA00000002;
        v293 = 0xFFFFFFFFLL;
        glpLogMessage(v121, 1u, &v291, "Could not find fragment shader output '%.*s' to match FragDataBinding request.", v122, v123, v124, v125, v116);
      }
    }

    if (++v112 < *(v111 + 32))
    {
      continue;
    }

    break;
  }

  LODWORD(v110) = *(a2 + 32);
  v45 = v280;
LABEL_138:
  if (!v110)
  {
LABEL_197:
    result = v288;
    goto LABEL_198;
  }

  v281 = v45;
  v170 = 0;
  v171 = 0;
  while (2)
  {
    v172 = (*(a2 + 40) + 32 * v170);
    v173 = *v172;
    if (!*v172)
    {
      goto LABEL_165;
    }

    v175 = v172[1];
    v174 = v172[2];
    v176 = glpStringHashGet(*(v9 + 88), v175, v174);
    v177 = *(v173 + 8);
    if (!v177)
    {
      v178 = 0;
LABEL_146:
      if (v176)
      {
        goto LABEL_165;
      }

      goto LABEL_147;
    }

    v178 = glpLayoutObjectFind(v177, 26) != 0;
    v179 = *(v173 + 8);
    if (!v179)
    {
      goto LABEL_146;
    }

    if (glpLayoutObjectFind(v179, 29) | v176)
    {
      goto LABEL_165;
    }

LABEL_147:
    if (v174 < 3 || ((v180 = *v175, v180 != 103) ? (v181 = 103) : (v180 = *(v175 + 1), v180 != 108) ? (v181 = 108) : (v180 = *(v175 + 2), v181 = 95), v181 != v180 && (v174 < 9 || strncmp("$ib$", v175, 4uLL) || strncmp("$gl_", v175 + 5, 4uLL))))
    {
      if (v174 && *v175 == 36)
      {
        if (v174 >= 9 && !strncmp("$ib$", v175, 4uLL) && strncmp("$gl_", v175 + 5, 4uLL) == 0 && !v178)
        {
          goto LABEL_162;
        }
      }

      else
      {
        if (v178)
        {
          goto LABEL_165;
        }

LABEL_162:
        v182 = *(v173 + 8);
        v259 = v171;
        __nc = v174;
        if (v182)
        {
          v183 = glpLayoutObjectFind(v182, 79) != 0;
        }

        else
        {
          v183 = 0;
        }

        v184 = glpABIGetTypeSize(0, *v173, 0);
        v185 = glpTypeSizeGetSize(v184);
        v186 = glpLinkerPoolAlloc(v9);
        v269 = glpLinkerPoolAlloc(v9);
        glpTypeGetAppleVec4Types(*v173, v186, 1, 0, 0, v269, 0, 0, 0);
        v284 = v185;
        v187 = glpLinkerPoolAlloc(v9);
        *v187 = v173;
        v187[1] = 0;
        glpStringHashPut(*v266, v175, __nc, v187, v188);
        if (v185)
        {
          v251 = v183;
          v255 = v175;
          v189 = 0;
          v190 = *v290;
          do
          {
            v191 = v185;
            v277 = v189;
            while (!glpIntHashGet(v190, v189))
            {
              ++v189;
              if (!--v191)
              {
                v189 = v277;
                goto LABEL_175;
              }
            }

            v189 = v277 + 1;
          }

          while (v277 + 1 < v277 + 1 + v185);
LABEL_175:
          v278 = v189;
          v192 = 0;
          v193 = v286;
          do
          {
            if (v193)
            {
              v194 = glpLinkerGetInfoLog(v287);
              v195 = *(v173 + 32);
              v196 = *(v193 + 32);
              v197 = *(v173 + 40);
              v198 = *(v193 + 40);
              v291 = "-1";
              v292 = 0xEDA00000002;
              v293 = 0xFFFFFFFFLL;
              glpLogMessage(v194, 0, &v291, "Cannot mix builtin and user defined fragment outputs '%.*s' and '%.*s'.", v199, v200, v201, v202, v197);
              v288 = 0;
            }

            else if (BitSetGetEquals(*(v173 + 120), v192))
            {
              v203 = glpLinkerPoolAlloc(v287);
              *v203 = 0u;
              *(v203 + 16) = 0u;
              v204 = v278 + v192;
              glpIntHashPut(*v290, v278 + v192, v203, 0.0);
              if (v281 <= v278 + v192)
              {
                v205 = v278 + v192;
              }

              else
              {
                v205 = v281;
              }

              v281 = v205;
              if (glpPrimitiveTypeGetScalarCount(v186[v192]))
              {
                v206 = 0;
                do
                {
                  v207 = *(v187 + 2);
                  v208 = &v187[v207 + 2];
                  *v208 = v204;
                  v208[1] = v206;
                  *(v187 + 2) = v207 + 1;
                  *v203 |= 1 << v206++;
                }

                while (v206 < glpPrimitiveTypeGetScalarCount(v186[v192]));
              }

              *(v203 + 8) = *(v173 + 48) & 0x7F00000001FLL | (v269[v192] >> 3);
              *(v203 + 4) = v186[v192];
              *(v203 + 24) = addPPDrawBuffersToLayout(v287, *(v203 + 24));
              v209 = glpLinkerGetAllocator(v287);
              v210 = *(v203 + 24);
              v291 = "-1";
              v292 = 0xEDA00000002;
              v293 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v209, 0, &v291, 0, 0, v210, 33, 3);
              v211 = glpLinkerGetAllocator(v287);
              v212 = *(v203 + 24);
              v291 = "-1";
              v292 = 0xEDA00000002;
              v293 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v211, 0, &v291, 0, 0, v212, 68, 4);
              v213 = glpLinkerGetAllocator(v287);
              v214 = *(v203 + 24);
              v291 = "-1";
              v292 = 0xEDA00000002;
              v293 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v213, 0, &v291, 0, 0, v214, 72, v204);
              v215 = glpLinkerGetAllocator(v287);
              v216 = *(v203 + 24);
              v291 = "-1";
              v292 = 0xEDA00000002;
              v293 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v215, 0, &v291, 0, 0, v216, 73, 0);
              v193 = v286;
            }

            ++v192;
          }

          while (v192 != v284);
          v9 = v287;
          a2 = v264;
          v175 = v255;
          v183 = v251;
        }

        else
        {
          v278 = 0;
        }

        if (!v183)
        {
          *(v9 + 292) += *(v187 + 2);
        }

        v217 = glpLinkerPoolAlloc(v9);
        *v217 = 0;
        v217[1] = 0;
        *v217 = v278;
        v217[1] = *v173;
        glpStringHashPut(*v265, v175, __nc, v217, v218);
        ++v47;
        v171 = v259 + 1;
      }
    }

LABEL_165:
    if (++v170 < *(a2 + 32))
    {
      continue;
    }

    break;
  }

  if (v47 < 2)
  {
    v45 = v281;
    goto LABEL_197;
  }

  v45 = v281;
  result = v288;
  if (v171 && *(**(v9 + 176) + 4) == 6)
  {
    v220 = glpLinkerGetInfoLog(v9);
    v291 = "-1";
    v292 = 0xEDA00000002;
    v293 = 0xFFFFFFFFLL;
    glpLogMessage(v220, 0, &v291, "GLSL 300 requires that all fragment shader outputs have a location if there is more than one output.", v221, v222, v223, v224, v247);
    result = 0;
  }

LABEL_198:
  v225 = *(*v266 + 32);
  if (v225)
  {
    v226 = *(*v266 + 40);
    do
    {
      if (*v226)
      {
        *(**v226 + 8) = 0;
      }

      v226 += 32;
      --v225;
    }

    while (v225);
  }

  if (v274 && v45)
  {
    v227 = glpLinkerGetInfoLog(v9);
    v291 = "-1";
    v292 = 0xEDA00000002;
    v293 = 0xFFFFFFFFLL;
    glpLogMessage(v227, 0, &v291, "Exceeded max dual source draw buffers of %d, shader uses up to %d.", v228, v229, v230, v231, 1);
    return 0;
  }

  if (v45 >= glpBuiltInConstantValues[8 * (*(v9 + 60) == 4) + 7])
  {
    v232 = glpLinkerGetInfoLog(v9);
    v233 = glpBuiltInConstantValues[8 * (*(v9 + 60) == 4) + 7];
    v291 = "-1";
    v292 = 0xEDA00000002;
    v293 = 0xFFFFFFFFLL;
    glpLogMessage(v232, 0, &v291, "Exceeded max draw buffers of %d, shader uses up to %d.", v234, v235, v236, v237, v233);
    return 0;
  }

  return result;
}

void *addPPDrawBuffersToLayout(uint64_t a1, void **a2)
{
  Allocator = glpLinkerGetAllocator(a1);
  LayoutObject = glpCopyLayoutObject(Allocator, a2);
  if (!LayoutObject)
  {
    v6 = glpLinkerGetAllocator(a1);
    LayoutObject = glpMakeLayoutObject(v6);
  }

  v7 = glpLinkerGetAllocator(a1);
  v9[0] = "-1";
  v9[1] = 0xEDA00000002;
  v9[2] = 0xFFFFFFFFLL;
  glpLayoutObjectAppendInteger(v7, 0, v9, 0, 0, LayoutObject, 77, 2);
  return LayoutObject;
}

uint64_t glpMakeInterstageBindings(uint64_t StringHash, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v552 = a8;
  v13 = a7;
  v564 = a3;
  v556 = a2;
  v17 = StringHash;
  v582[1] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    Allocator = glpLinkerGetAllocator(StringHash);
    StringHash = glpMakeStringHash(Allocator);
    *a9 = StringHash;
  }

  v553 = a11;
  if (a5)
  {
    v19 = glpLinkerGetAllocator(v17);
    StringHash = glpMakeStringHash(v19);
    *v552 = StringHash;
  }

  v550 = a10;
  if (v13)
  {
    v20 = glpLinkerGetAllocator(v17);
    StringHash = glpMakeStringHash(v20);
    *v553 = StringHash;
  }

  v563 = a13;
  if (a5)
  {
    v21 = glpLinkerGetAllocator(v17);
    StringHash = glpMakeStringHash(v21);
    *v550 = StringHash;
  }

  v558 = a12;
  if (v13)
  {
    v22 = glpLinkerGetAllocator(v17);
    StringHash = glpMakeIntHash(v22);
    *v563 = StringHash;
  }

  if (a5)
  {
    v23 = glpLinkerGetAllocator(v17);
    StringHash = glpMakeIntHash(v23);
    *v558 = StringHash;
  }

  v24 = 1;
  v561 = v13;
  v562 = a5;
  v565 = v17;
  v554 = a9;
  if (a4 && a6)
  {
    LODWORD(v560) = *(v17 + 60);
    v25 = glpLinkerGetAllocator(v17);
    v26 = glpMakeStringHash(v25);
    *(v17 + 344) = glpMakeIntHash(&GLP_MALLOC_ALLOCATOR);
    v27 = *(v17 + 96);
    LODWORD(v28) = *(v27 + 4);
    if (v28)
    {
      v547 = a6;
      v29 = 0;
      LODWORD(v551) = 0;
      LODWORD(v549) = 0;
      v555 = 0;
      v30 = 0;
      LODWORD(v548) = -1;
      v557 = v26;
      v31 = v560;
      while (1)
      {
        v32 = v29 == v28 - 1 || *(v17 + 300) == 35981;
        v33 = *(v27 + 8) + 16 * v29;
        v34 = *v33;
        v35 = *(v33 + 8);
        if (glpStringsEqual("gl_NextBuffer", 0xD22C7DA40000000DLL, *v33, v35) && v31 == 1)
        {
          break;
        }

        if (glpStringsEqual("gl_SkipComponents1", 0x17BA0E7C00000012uLL, v34, v35) && v31 == 1)
        {
          v30 += 4;
          ElementCount = 1;
          goto LABEL_43;
        }

        if (glpStringsEqual("gl_SkipComponents2", 0xB5F2691B00000012, v34, v35) && v31 == 1)
        {
          v30 += 8;
          ElementCount = 2;
          goto LABEL_43;
        }

        if (glpStringsEqual("gl_SkipComponents3", 0x74D9376D00000012uLL, v34, v35) && v31 == 1)
        {
          v30 += 12;
          ElementCount = 3;
          goto LABEL_43;
        }

        if (glpStringsEqual("gl_SkipComponents4", 0x635B431500000012uLL, v34, v35) && v31 == 1)
        {
          v30 += 16;
          ElementCount = 4;
LABEL_43:
          if (*(v17 + 300) != 35980)
          {
            InfoLog = glpLinkerGetInfoLog(v17);
            *&v571 = "-1";
            *(&v571 + 1) = 0xEDA00000002;
            *&v572 = 0xFFFFFFFFLL;
            glpLogMessage(InfoLog, 0, &v571, "Usage of '%.*s' disallowed if transformFeedbackBufferMode != GL_INTERLEAVED_ATTRIBS.", v53, v54, v55, v56, v35);
            v24 = 0;
            a5 = v562;
LABEL_58:
            v31 = v560;
            goto LABEL_59;
          }

          LODWORD(v559) = v24;
          PrimitiveType = 0;
          goto LABEL_45;
        }

        v567 = 0;
        v566 = 0;
        v581 = 0;
        v582[0] = 0;
        if (!glpTypeParseDeref(v547, topLevelLookUpObjectTypeFromStringHash, v34, v35, &v566, v582, &v581))
        {
          v96 = glpLinkerGetInfoLog(v17);
          *&v571 = "-1";
          *(&v571 + 1) = 0xEDA00000002;
          *&v572 = 0xFFFFFFFFLL;
          glpLogMessage(v96, 0, &v571, "Could not find transform feedback binding for '%.*s.'", v97, v98, v99, v100, v35);
          goto LABEL_88;
        }

        v86 = glpStringHashGet(v547, v566, v567);
        v87 = *(v86 + 8);
        if (v87)
        {
          v88 = glpLayoutObjectFind(v87, 9);
          if (v88)
          {
            if (*(v88 + 4))
            {
              v89 = glpLinkerGetInfoLog(v565);
              *&v571 = "-1";
              *(&v571 + 1) = 0xEDA00000002;
              *&v572 = 0xFFFFFFFFLL;
              v17 = v565;
              glpLogMessage(v89, 0, &v571, "Exceeded max vertex streams of %d, with %d.", v90, v91, v92, v93, 1);
              goto LABEL_88;
            }
          }
        }

        v548 = v86;
        Kind = glpTypeGetKind(v582[0]);
        ElementType = v582[0];
        if (Kind == 2)
        {
          ElementCount = glpArrayTypeGetElementCount(v582[0]);
          ElementType = glpArrayTypeGetElementType(v582[0]);
          v582[0] = ElementType;
        }

        else
        {
          ElementCount = 1;
        }

        v17 = v565;
        if (glpTypeGetKind(ElementType))
        {
          v101 = glpLinkerGetInfoLog(v565);
          *&v571 = "-1";
          *(&v571 + 1) = 0xEDA00000002;
          *&v572 = 0xFFFFFFFFLL;
          glpLogMessage(v101, 0, &v571, "Type of '%.*s' not valid for transform feedback.", v102, v103, v104, v105, v35);
          goto LABEL_87;
        }

        LODWORD(v559) = v24;
        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v582[0]);
        if (glpStringHashGet(v26, v34, v35))
        {
          v107 = glpLinkerGetInfoLog(v565);
          *&v571 = "-1";
          *(&v571 + 1) = 0xEDA00000002;
          *&v572 = 0xFFFFFFFFLL;
          glpLogMessage(v107, 0, &v571, "Duplicate transform feedback bindings specified for '%.*s.'", v108, v109, v110, v111, v35);
LABEL_87:
          LODWORD(v548) = 0;
LABEL_88:
          v31 = v560;
          goto LABEL_56;
        }

        glpStringHashPut(v26, v34, v35, 1, v106);
        v112 = v565;
        v113 = glpLinkerPoolAlloc(v565);
        *v113 = v548;
        *(v113 + 8) = v581;
        *(v113 + 16) = v555;
        *(v113 + 20) = v30;
        *(v113 + 24) = 0;
        v114 = *(v112 + 240);
        v115 = *(v112 + 244);
        LODWORD(v116) = v115 + 1;
        if (v115 + 1 <= v114)
        {
          v118 = *(v112 + 248);
          v119 = *(v112 + 244);
        }

        else
        {
          if (v114 <= 1)
          {
            v114 = 1;
          }

          v117 = 2 * v114;
          if (v117 <= v116)
          {
            v116 = v116;
          }

          else
          {
            v116 = v117;
          }

          Size = v116;
          v545 = glpLinkerGetAllocator(v112);
          v544 = (*(v545 + 8))(*v545, 8 * Size, "Vector Storage (GLPTFStore *, growth)");
          memcpy(v544, *(v112 + 248), 8 * *(v112 + 244));
          (*(v545 + 24))(*v545, *(v112 + 248));
          v118 = v544;
          *(v112 + 240) = Size;
          *(v112 + 248) = v118;
          v119 = *(v112 + 244);
        }

        memmove(&v118[8 * v115 + 8], &v118[8 * v115], 8 * (v119 - v115));
        *(*(v112 + 248) + 8 * v115) = v113;
        ++*(v112 + 244);
        v120 = v548;
        *(v548 + 112) = 1;
        v121 = glpABIGetTypeSize(0, *v120, 0);
        Size = glpTypeSizeGetSize(v121);
        v122 = glpLinkerPoolAlloc(v112);
        v123 = glpLinkerPoolAlloc(v112);
        glpTypeGetAppleVec4Types(*v120, v122, 1, 0, 0, v123, 0, 0, 0);
        if (HIDWORD(v581))
        {
          v124 = v581;
          do
          {
            ScalarCount = glpPrimitiveTypeGetScalarCount(v122[v124]);
            v30 += glpPrimitiveTypeGetBytesPerComponent(v122[v124++]) * ScalarCount;
          }

          while ((v124 - v581) < HIDWORD(v581));
        }

        LODWORD(v548) = 0;
LABEL_45:
        v42 = malloc_type_malloc(0x18uLL, 0xCA0EF1E7uLL);
        if (!v42 || (v43 = v42, *v42 = 0, v42[1] = 0, v44 = v35, v42[2] = 0, (v45 = malloc_type_malloc(v35, 0xCA0EF1E7uLL)) == 0))
        {
          abort();
        }

        v46 = v45;
        memcpy(v45, v34, v35);
        if (v35)
        {
          v48 = v35 >> 5;
          LODWORD(v49) = v35;
          v50 = ~(v35 >> 5);
          do
          {
            v49 = (32 * v49 + (v49 >> 2) + v46[(v35 - 1)]) ^ v49;
            LODWORD(v35) = v35 + v50;
          }

          while (v35 > v48);
          v51 = v49 << 32;
        }

        else
        {
          v51 = 0;
        }

        *v43 = v46;
        *(v43 + 8) = v51 | v44;
        *(v43 + 16) = ElementCount;
        *(v43 + 20) = PrimitiveType;
        glpIntHashPut(*(v565 + 344), v29, v43, v47);
        if (!v32)
        {
          v13 = v561;
          a5 = v562;
          v17 = v565;
          v24 = v559;
          v26 = v557;
          goto LABEL_58;
        }

        v57 = v555;
        v13 = v561;
        v26 = v557;
        v31 = v560;
        if (v555 < 4)
        {
          v63 = v565;
          v64 = glpLinkerPoolAlloc(v565);
          v65 = glpLinkerGetAllocator(v565);
          *v64 = glpMakeLayoutObject(v65);
          a5 = v562;
          if (v30)
          {
            v66 = glpLinkerGetAllocator(v63);
            v67 = *v64;
            *&v571 = "-1";
            *(&v571 + 1) = 0xEDA00000002;
            *&v572 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v66, 0, &v571, 0, 0, v67, 33, 2);
            v68 = glpLinkerGetAllocator(v63);
            v69 = *v64;
            *&v571 = "-1";
            *(&v571 + 1) = 0xEDA00000002;
            *&v572 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v68, 0, &v571, 0, 0, v69, 46, 10);
            v70 = glpLinkerGetAllocator(v63);
            v71 = *v64;
            *&v571 = "-1";
            *(&v571 + 1) = 0xEDA00000002;
            *&v572 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v70, 0, &v571, 0, 0, v71, 65, v57);
            v72 = glpLinkerGetAllocator(v63);
            v73 = *v64;
            *&v571 = "-1";
            *(&v571 + 1) = 0xEDA00000002;
            *&v572 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v72, 0, &v571, 0, 0, v73, 66, v548);
            v74 = glpLinkerGetAllocator(v63);
            v75 = *v64;
            *&v571 = "-1";
            *(&v571 + 1) = 0xEDA00000002;
            *&v572 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v74, 0, &v571, 0, 0, v75, 67, v30);
          }

          v76 = *(v63 + 224);
          v77 = *(v63 + 228);
          if (v77 + 1 <= v76)
          {
            v81 = v63;
            v82 = *(v63 + 232);
            v83 = v77;
          }

          else
          {
            if (v76 <= 1)
            {
              v76 = 1;
            }

            v78 = 2 * v76;
            if (v78 <= v77 + 1)
            {
              v79 = v77 + 1;
            }

            else
            {
              v79 = v78;
            }

            v80 = glpLinkerGetAllocator(v63);
            v81 = v63;
            v82 = (v80[1])(*v80, 8 * v79, "Vector Storage (GLPTFBuffer *, growth)");
            memcpy(v82, *(v81 + 232), 8 * *(v81 + 228));
            (v80[3])(*v80, *(v81 + 232));
            *(v81 + 224) = v79;
            v31 = v560;
            *(v81 + 232) = v82;
            v83 = *(v81 + 228);
          }

          memmove(&v82[8 * v77 + 8], &v82[8 * v77], 8 * (v83 - v77));
          *(*(v81 + 232) + 8 * v77) = v64;
          v84 = *(v81 + 228) + 1;
          v85 = v551;
          if (v551 <= v30)
          {
            v85 = v30;
          }

          LODWORD(v551) = v85;
          *(v81 + 228) = v84;
          LODWORD(v549) = v30 + v549;
          v555 = (v555 + 1);
          LODWORD(v548) = -1;
          v30 = 0;
          v17 = v81;
          v24 = v559;
          v26 = v557;
          goto LABEL_59;
        }

        v17 = v565;
        v58 = glpLinkerGetInfoLog(v565);
        *&v571 = "-1";
        *(&v571 + 1) = 0xEDA00000002;
        *&v572 = 0xFFFFFFFFLL;
        glpLogMessage(v58, 0, &v571, "Exceeded max transform feedback buffers of %d, with %d.", v59, v60, v61, v62, 4);
LABEL_56:
        v24 = 0;
        a5 = v562;
LABEL_59:
        ++v29;
        v27 = *(v17 + 96);
        v28 = *(v27 + 4);
        if (v29 >= v28)
        {
          goto LABEL_102;
        }
      }

      ElementCount = 0;
      v32 = 1;
      goto LABEL_43;
    }

    LODWORD(v549) = 0;
    LODWORD(v551) = 0;
LABEL_102:
    StringHash = glpDestroyStringHash(v26);
    v126 = *(v17 + 300);
    if (v126 == 35980)
    {
      if (v549 >= 0x104)
      {
        v132 = glpLinkerGetInfoLog(v17);
        *&v571 = "-1";
        *(&v571 + 1) = 0xEDA00000002;
        *&v572 = 0xFFFFFFFFLL;
        glpLogMessage(v132, 0, &v571, "Exceeded max transform feedback interleaved components of %d, with %d.", v133, v134, v135, v136, 64);
        goto LABEL_108;
      }
    }

    else if (v126 == 35981 && v551 >= 0x14)
    {
      v127 = glpLinkerGetInfoLog(v17);
      *&v571 = "-1";
      *(&v571 + 1) = 0xEDA00000002;
      *&v572 = 0xFFFFFFFFLL;
      glpLogMessage(v127, 0, &v571, "Exceeded max transform feedback separate components of %d, with %d.", v128, v129, v130, v131, 4);
LABEL_108:
      v24 = 0;
      goto LABEL_516;
    }

    if (!v24)
    {
      goto LABEL_516;
    }
  }

  if (!a5 || (v137 = *(a5 + 32), !v137))
  {
    LODWORD(v139) = 0x80000000;
    if (v13)
    {
      goto LABEL_204;
    }

LABEL_201:
    if (!a5)
    {
      goto LABEL_501;
    }

LABEL_332:
    v335 = v24;
    v541 = &v541;
    v336 = *(a5 + 36);
    MEMORY[0x28223BE20](StringHash);
    v560 = &v541 - ((v337 + 15) & 0xFFFFFFFF0);
    bzero(v560, v337);
    v338 = *(a5 + 32);
    if (v338)
    {
      v339 = 0;
      v340 = (*(a5 + 40) + 16);
      while (1)
      {
        v341 = *(v340 - 2);
        if (v341)
        {
          break;
        }

LABEL_357:
        v340 += 4;
        if (!--v338)
        {
          goto LABEL_360;
        }
      }

      v343 = *(v340 - 1);
      v342 = *v340;
      if (*v340 < 3)
      {
        goto LABEL_346;
      }

      v344 = *v343;
      if (v344 == 103)
      {
        v345 = *(v343 + 1);
        if (v345 == 108)
        {
          v345 = *(v343 + 2);
          v346 = 95;
        }

        else
        {
          v346 = 108;
        }

        if (v346 == v345)
        {
          goto LABEL_356;
        }
      }

      else if (103 == v344)
      {
        goto LABEL_356;
      }

      if (v342 < 9 || (StringHash = strncmp("$ib$", *(v340 - 1), 4uLL), StringHash) || (StringHash = strncmp("$gl_", v343 + 5, 4uLL), StringHash))
      {
LABEL_346:
        if (!v342)
        {
          goto LABEL_355;
        }

        if (*v343 != 36)
        {
          goto LABEL_355;
        }

        if (v342 >= 9)
        {
          StringHash = strncmp("$ib$", v343, 4uLL);
          if (!StringHash)
          {
            StringHash = strncmp("$gl_", v343 + 5, 4uLL);
            if (!StringHash)
            {
              goto LABEL_355;
            }
          }
        }

        if ((v342 & 0xFFFFFFFC) != 0)
        {
          v17 = v565;
          if (v343[1] != 105 || v343[2] != 98)
          {
            goto LABEL_357;
          }

          if (v343[3] == 36)
          {
LABEL_355:
            *&v560[8 * v339++] = v341;
          }
        }
      }

LABEL_356:
      v17 = v565;
      goto LABEL_357;
    }

    v339 = 0;
LABEL_360:
    if (*(v17 + 296))
    {
      qsort(v560, v339, 8uLL, compareVariableObjectsLocationFirstNameSecond);
    }

    v13 = v561;
    if (!v339)
    {
      v24 = v335;
LABEL_434:
      a5 = v562;
      if (v13)
      {
        goto LABEL_435;
      }

      goto LABEL_501;
    }

    v347 = 0;
    if (v556 == 1)
    {
      v348 = 5;
    }

    else
    {
      v348 = 3;
    }

    LODWORD(v544) = v348;
    v542 = v17 + 276;
    v557 = v339;
    v24 = v335;
    while (1)
    {
      v349 = *&v560[8 * v347];
      v582[0] = *(v349 + 15);
      v581 = *v349;
      v579 = 0u;
      v580 = 0u;
      v577 = 0u;
      v578 = 0u;
      v575 = 0u;
      v576 = 0u;
      v574 = 0u;
      v573 = 0u;
      v572 = 0u;
      v571 = 0u;
      v350 = *v349;
      v572 = v349[1];
      v351 = v349[2];
      v352 = v349[3];
      v353 = v349[5];
      v575 = v349[4];
      v576 = v353;
      v574 = v352;
      v573 = v351;
      v354 = v349[6];
      v355 = v349[7];
      v356 = v349[9];
      v579 = v349[8];
      v580 = v356;
      v577 = v354;
      v578 = v355;
      v571 = v350;
      v357 = *(v349 + 2);
      v358 = *(v349 + 3);
      v359 = *(v349 + 1);
      if (v359)
      {
        v360 = glpLayoutObjectFind(v359, 79) != 0;
        if (!v13)
        {
          break;
        }
      }

      else
      {
        v360 = 0;
        if (!v13)
        {
          break;
        }
      }

      if (*(v17 + 296))
      {
        break;
      }

      v361 = inputForOutput(v13, v357, v358);
      if (!v361)
      {
        break;
      }

      v362 = v361;
      v570 = *(v361 + 120);
      v569 = *v361;
      InputOutputBitsType = getInputOutputBitsType(v17, v564, v361, &v570, &v569, v556, v582, &v581);
      StringHash = v581;
      *(&v578 + 1) = v582[0];
      *&v571 = v581;
      if (v24)
      {
        v364 = InputOutputBitsType == 0;
      }

      else
      {
        v364 = 1;
      }

      v24 = !v364;
      if (InputOutputBitsType)
      {
        if (!glpTypesEqual(v581, v569) || ((*(v362 + 48) ^ *(v349 + 6)) & 0x6F000000000) != 0)
        {
          v365 = v360;
          v366 = glpLinkerGetInfoLog(v17);
          v367 = glpLanguageToString(v564);
          v368 = *(v362 + 32);
          v369 = *(v362 + 40);
          glpLanguageToString(v556);
          v566 = "-1";
          v567 = 0xEDA00000002;
          v568 = 0xFFFFFFFFLL;
          v13 = v561;
          v539 = v367;
          v17 = v565;
          v370 = v366;
          v360 = v365;
          glpLogMessage(v370, 0, &v566, "Input of %s shader '%.*s' differs in type/qualifiers to that written by %s shader", v371, v372, v373, v374, v539);
          goto LABEL_383;
        }

        if (v24)
        {
          LODWORD(v555) = v360;
          SizeInBits = BitSetGetSizeInBits(*(&v578 + 1));
          if (SizeInBits < BitSetGetSizeInBits(v570))
          {
            v434 = glpLinkerGetAllocator(v17);
            v435 = BitSetGetSizeInBits(v570);
            v436 = BitSetNewWithAllocator(v435, *v434, *(v434 + 8), *(v434 + 16), *(v434 + 24));
            if (BitSetGetSizeInBits(*(&v578 + 1)))
            {
              v437 = 0;
              do
              {
                if (BitSetGetEquals(*(&v578 + 1), v437))
                {
                  BitSetSetEquals(v436, v437);
                }

                ++v437;
              }

              while (v437 < BitSetGetSizeInBits(*(&v578 + 1)));
            }

            *(&v578 + 1) = v436;
            *(v349 + 15) = v436;
            v17 = v565;
          }

          BitSetAndEquals(*(&v578 + 1), v570);
          v438 = BitSetEqualsTest(*(&v578 + 1), v570);
          v360 = v555;
          if (!v438)
          {
            v439 = glpLinkerGetInfoLog(v17);
            v440 = glpLanguageToString(v564);
            v441 = *(v362 + 32);
            v442 = *(v362 + 40);
            glpLanguageToString(v556);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            v13 = v561;
            v540 = v440;
            v17 = v565;
            v443 = v439;
            v360 = v555;
            glpLogMessage(v443, 0, &v566, "Input of %s shader '%.*s' not properly written by %s shader", v444, v445, v446, v447, v540);
            goto LABEL_383;
          }
        }

        else
        {
LABEL_383:
          v24 = 0;
        }

        v375 = 1;
LABEL_387:
        StringHash = *(v349 + 1);
        v376 = StringHash && (StringHash = glpLayoutObjectFind(StringHash, 9)) != 0 && *(StringHash + 16) != 0;
        if (*(v17 + 296))
        {
          v377 = 1;
        }

        else
        {
          v377 = v375;
        }

        if (v377)
        {
          if (!v376 && v24)
          {
            LODWORD(v555) = v360;
            v378 = glpABIGetTypeSize(0, v571, 0);
            glpTypeSizeGetSize(v378);
            v379 = glpLinkerPoolAlloc(v17);
            *v379 = 0;
            *(v379 + 8) = 0;
            *v379 = &v571;
            Size = *(v349 + 6);
            v380 = Size & 0x7F00000001FLL;
            v549 = (Size & 0x7F00000001FLL);
            if (v375)
            {
              v380 = *(v362 + 48) & 0x7F00000001FLL;
            }

            v548 = v380;
            v381 = *(v349 + 1);
            LODWORD(v559) = v24;
            v551 = v358;
            if (v381 && (v382 = glpLayoutObjectFind(v381, 26)) != 0)
            {
              LODWORD(v545) = 0;
              v543 = v382;
              v383 = remapSlotToCode[*(v382 + 4)];
              v384 = &v575;
            }

            else
            {
              v543 = 0;
              LODWORD(v547) = -1;
              v383 = 1;
              v384 = &v574;
            }

            *(v384 - 64) = v383;
            v394 = glpLinkerGetAllocator(v17);
            LayoutObject = glpMakeLayoutObject(v394);
            v396 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v396, 0, &v566, 0, 0, LayoutObject, 33, v544);
            v397 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v397, 0, &v566, 0, 0, LayoutObject, 68, 17);
            v398 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v398, 0, &v566, 0, 0, LayoutObject, 69, 0);
            v399 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v399, 0, &v566, 0, 0, LayoutObject, 70, 1);
            v400 = glpLinkerGetAllocator(v17);
            v401 = glpMakeLayoutObject(v400);
            v402 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v402, 0, &v566, 0, 0, v401, 33, 0);
            v403 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v403, 0, &v566, 0, 0, v401, 34, 28);
            v404 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v404, 0, &v566, 0, 0, v401, 35, 0);
            v405 = glpLinkerGetAllocator(v17);
            v566 = "-1";
            v567 = 0xEDA00000002;
            v568 = 0xFFFFFFFFLL;
            glpLayoutObjectAppendInteger(v405, 0, &v566, 0, 0, v401, 38, 1);
            v406 = 0;
            v407 = v375 ^ 1;
            if (!v563)
            {
              v407 = 1;
            }

            if ((v407 & 1) == 0)
            {
              v406 = *v563;
            }

            v408 = v547;
            SlotsWithGLPType = allocateSlotsWithGLPType(v565, *v558, v406, v379, v548, v549, LayoutObject, v401, v547, glpBuiltInConstantValues[8 * (*(v565 + 60) == 4) + 2]);
            v411 = SlotsWithGLPType;
            v24 = v559;
            v412 = v551;
            if (v556 == 1)
            {
              if (SlotsWithGLPType)
              {
                v413 = glpIntHashGet(*v558, v408);
                if (v413)
                {
                  *(v349 + 1) = *(v413 + 24);
                }
              }
            }

            v13 = v561;
            if ((v555 & 1) == 0)
            {
              *(v542 + 4 * v556) += *(v379 + 8);
            }

            v414 = v565;
            if (!v411)
            {
              v415 = glpLinkerGetInfoLog(v565);
              v416 = 4 * glpBuiltInConstantValues[8 * (*(v414 + 60) == 4) + 2];
              v417 = *(v349 + 4);
              v418 = *(v349 + 10);
              v566 = "-1";
              v567 = 0xEDA00000002;
              v568 = 0xFFFFFFFFLL;
              glpLogMessage(v415, 0, &v566, "Implementation limit of %d %s components exceeded. Unable to allocate '%.*s'.", v419, v420, v421, v422, v416);
              v24 = 0;
              if ((v545 & 1) == 0)
              {
                v423 = glpLinkerGetInfoLog(v414);
                v424 = *(v349 + 4);
                v425 = *(v543 + 4);
                v426 = *(v349 + 10);
                v566 = "-1";
                v567 = 0xEDA00000002;
                v568 = 0xFFFFFFFFLL;
                glpLogMessage(v423, 0, &v566, "Or active varying aliasing. One or more slots starting at %d unavailable for '%.*s' from layout location request.", v427, v428, v429, v430, v425);
                v24 = 0;
              }
            }

            *v379 = v349;
            glpStringHashPut(*v550, v357, v412, v379, v410);
            v431 = glpLinkerPoolAlloc(v414);
            *v431 = 0;
            v431[1] = 0;
            *v431 = -1;
            v431[1] = *v349;
            StringHash = glpStringHashPut(*v552, v357, v412, v431, v432);
            v17 = v414;
          }
        }

        else if (*(v349 + 112) == 0 && !v376)
        {
          v385 = v24;
          v386 = glpLinkerGetInfoLog(v17);
          v391 = glpLanguageToString(v556);
          v392 = *(v349 + 10);
          v393 = *(v349 + 4);
          if (v13)
          {
            glpLanguageToString(v564);
          }

          v566 = "-1";
          v567 = 0xEDA00000002;
          v568 = 0xFFFFFFFFLL;
          StringHash = glpLogMessage(v386, 1u, &v566, "Output of %s shader '%.*s' not read by %s %s", v387, v388, v389, v390, v391);
          v17 = v565;
          v24 = v385;
        }
      }

      if (++v347 == v557)
      {
        goto LABEL_434;
      }
    }

    v375 = 0;
    v362 = 0;
    if (glpTypeGetKind(v571) == 3)
    {
      *&v571 = glpBankTypeGetElementType(v571);
    }

    goto LABEL_387;
  }

  v138 = 0;
  v545 = v17 + 276;
  v139 = 0x80000000;
  do
  {
    v140 = (*(a5 + 40) + 32 * v138);
    v141 = *v140;
    if (!*v140)
    {
      goto LABEL_199;
    }

    v143 = v140[1];
    v142 = v140[2];
    v582[0] = *(v141 + 15);
    StringHash = *(v141 + 1);
    v581 = *v141;
    if (StringHash)
    {
      StringHash = glpLayoutObjectFind(StringHash, 28);
      if (StringHash)
      {
        goto LABEL_198;
      }

      StringHash = glpLayoutObjectFind(*(v141 + 1), 29);
      if (StringHash)
      {
        goto LABEL_198;
      }
    }

    v579 = 0u;
    v580 = 0u;
    v577 = 0u;
    v578 = 0u;
    v575 = 0u;
    v576 = 0u;
    v574 = 0u;
    v573 = 0u;
    v572 = 0u;
    v571 = 0u;
    v144 = *v141;
    v572 = v141[1];
    v571 = v144;
    v145 = v141[2];
    v146 = v141[3];
    v147 = v141[5];
    v575 = v141[4];
    v576 = v147;
    v574 = v146;
    v573 = v145;
    v148 = v141[6];
    v149 = v141[7];
    v150 = v141[9];
    v579 = v141[8];
    v580 = v150;
    v577 = v148;
    v578 = v149;
    if (v142 < 3)
    {
      goto LABEL_198;
    }

    v549 = v142;
    v151 = *v143;
    if (v151 == 103)
    {
      v152 = v143[1];
      if (v152 == 108)
      {
        v152 = v143[2];
        v153 = 95;
      }

      else
      {
        v153 = 108;
      }

      if (v153 == v152)
      {
        goto LABEL_128;
      }
    }

    else if (103 == v151)
    {
      goto LABEL_128;
    }

    if (v549 < 9)
    {
      goto LABEL_198;
    }

    StringHash = strncmp("$ib$", v143, 4uLL);
    if (StringHash)
    {
      goto LABEL_198;
    }

    StringHash = strncmp("$gl_", v143 + 5, 4uLL);
    if (StringHash)
    {
      goto LABEL_198;
    }

LABEL_128:
    if (v549)
    {
      if (v151 == 36)
      {
        if (v549 < 9)
        {
          goto LABEL_198;
        }

        StringHash = strncmp("$ib$", v143, 4uLL);
        if (StringHash)
        {
          goto LABEL_198;
        }

        StringHash = strncmp("$gl_", v143 + 5, 4uLL);
        if (StringHash)
        {
          goto LABEL_198;
        }
      }
    }

    v154 = *(v141 + 1);
    if (!v154)
    {
      LODWORD(Size) = 0;
LABEL_138:
      v156 = 0;
      if (!v13)
      {
        goto LABEL_153;
      }

      goto LABEL_139;
    }

    LODWORD(Size) = glpLayoutObjectFind(v154, 79) != 0;
    v155 = *(v141 + 1);
    if (!v155)
    {
      goto LABEL_138;
    }

    v156 = glpLayoutObjectFind(v155, 80) != 0;
    if (!v13)
    {
      goto LABEL_153;
    }

LABEL_139:
    if (*(v565 + 296) || (v157 = inputForOutput(v13, v143, v549), v157 == 0 || !v156) || !*(v141 + 32) || (v158 = v157, !*(v157 + 128)))
    {
LABEL_153:
      if (glpTypeGetKind(v571) == 3)
      {
        *&v571 = glpBankTypeGetElementType(v571);
      }

LABEL_155:
      v169 = glpABIGetTypeSize(0, v571, 0);
      v170 = glpTypeSizeGetSize(v169);
      StringHash = glpLinkerPoolAlloc(v565);
      *StringHash = 0;
      *(StringHash + 8) = 0;
      v560 = StringHash;
      *StringHash = &v571;
      if (v24)
      {
        v171 = *(v141 + 6);
        v172 = glpLayoutObjectFind(*(v141 + 1), 78);
        if (v172)
        {
          glpIntHashPut(*v558, *(v172 + 4), -1, v173);
        }

        LODWORD(v559) = v24;
        v174 = glpLayoutObjectFind(*(v141 + 1), 69);
        v555 = v141;
        v544 = v138;
        if (v174)
        {
          v175 = v565;
          v176 = glpLinkerGetAllocator(v565);
          v177 = glpCopyLayoutObject(v176, *(v141 + 1));
          v178 = glpLayoutObjectFind(v177, 69);
          v179 = *(v178 + 4);
          *(v178 + 4) = 0;
          v180 = allocateSlotsWithGLPType(v175, *v558, 0, v560, v171 & 0x7F00000001FLL, v171 & 0x7F00000001FLL, v177, 0, v179, 0x20u);
          if (v556 == 1 && v180)
          {
            *(v141 + 1) = *(glpIntHashGet(*v558, v179) + 24);
          }
        }

        else
        {
          v182 = glpLinkerPoolAlloc(v565);
          v548 = v170;
          v551 = glpLinkerPoolAlloc(v565);
          glpTypeGetAppleVec4Types(v571, v182, 1, 0, 0, v551, 0, 0, 0);
          if (glpLayoutObjectFind(*(v141 + 1), 31))
          {
            if (v170)
            {
              v183 = 0;
              v184 = 0;
              v185 = 0;
              v186 = 0;
              v187 = 0;
              v557 = (v560 + 16);
              v547 = v143;
              do
              {
                if (glpPrimitiveTypeGetScalarCount(v182[v183]))
                {
                  v188 = 0;
                  do
                  {
                    if (v186 <= 3)
                    {
                      v189 = v187;
                    }

                    else
                    {
                      v189 = 0;
                    }

                    if (v186 <= 3)
                    {
                      v190 = v186;
                    }

                    else
                    {
                      v190 = 0;
                    }

                    if (v186 > 3)
                    {
                      ++v185;
                    }

                    if (BitSetGetEquals(*(&v578 + 1), v183))
                    {
                      if (v189)
                      {
                        v191 = v184;
                      }

                      else
                      {
                        v192 = v565;
                        v187 = glpLinkerPoolAlloc(v565);
                        *v187 = 0u;
                        *(v187 + 16) = 0u;
                        glpIntHashPut(*v558, v139, v187, 0.0);
                        v193 = v555;
                        *(v187 + 8) = *(v555 + 48) & 0x7F00000001FLL | (v551[v183] >> 3);
                        *(v187 + 4) = glpPrimitiveTypeGetScalarType(v182[v183]);
                        *(v187 + 24) = offsetLayout(v192, *(v193 + 8), v185);
                        v191 = v139;
                        v139 = (v139 + 1);
                      }

                      v194 = v560;
                      v195 = *(v560 + 2);
                      v196 = (v557 + 8 * v195);
                      v184 = v191;
                      *v196 = v191;
                      v196[1] = v190;
                      *(v194 + 2) = v195 + 1;
                      *v187 |= 1 << v190;
                      ScalarType = glpPrimitiveTypeGetScalarType(v182[v183]);
                      v198 = componentCountForSet(*v187);
                      *(v187 + 4) = glpGetVectorType(ScalarType, v198);
                      v189 = v187;
                    }

                    else
                    {
                      v187 = v189;
                    }

                    ++v188;
                    v186 = v190 + 1;
                  }

                  while (v188 < glpPrimitiveTypeGetScalarCount(v182[v183]));
                }

                else
                {
                  v189 = v187;
                }

                ++v183;
                v187 = v189;
                a5 = v562;
                v143 = v547;
              }

              while (v183 != v548);
            }
          }

          else if (v170)
          {
            v199 = 0;
            v200 = v560 + 16;
            v547 = v143;
            do
            {
              if (BitSetGetEquals(*(&v578 + 1), v199))
              {
                v201 = glpLinkerPoolAlloc(v565);
                *v201 = 0u;
                *(v201 + 16) = 0u;
                glpIntHashPut(*v558, v139, v201, 0.0);
                v202 = v560;
                if (glpPrimitiveTypeGetScalarCount(v182[v199]))
                {
                  v203 = 0;
                  do
                  {
                    v204 = *(v202 + 2);
                    v205 = &v200[8 * v204];
                    *v205 = v139;
                    *(v205 + 1) = v203;
                    *(v202 + 2) = v204 + 1;
                    *v201 |= 1 << v203++;
                  }

                  while (v203 < glpPrimitiveTypeGetScalarCount(v182[v199]));
                }

                v206 = v555;
                *(v201 + 8) = *(v555 + 48) & 0x7F00000001FLL | (v551[v199] >> 3);
                *(v201 + 4) = v182[v199];
                *(v201 + 24) = offsetLayout(v565, *(v206 + 8), v199);
                v139 = (v139 + 1);
                v143 = v547;
              }

              ++v199;
            }

            while (v199 != v548);
          }
        }

        v207 = v560;
        v208 = v555;
        *v560 = v555;
        v209 = v549;
        glpStringHashPut(*v550, v143, v549, v207, v181);
        if ((Size & 1) == 0)
        {
          *(v545 + 4 * v556) += *(v207 + 2);
        }

        v17 = v565;
        v210 = glpLinkerPoolAlloc(v565);
        *v210 = 0;
        v210[1] = 0;
        *v210 = -1;
        v210[1] = *v208;
        StringHash = glpStringHashPut(*v552, v143, v209, v210, v211);
        v13 = v561;
        v24 = v559;
        v138 = v544;
      }

      else
      {
        v17 = v565;
      }

      goto LABEL_198;
    }

    v570 = *(v157 + 120);
    v569 = *v157;
    v17 = v565;
    v159 = getInputOutputBitsType(v565, v564, v157, &v570, &v569, v556, v582, &v581);
    StringHash = v581;
    *(&v578 + 1) = v582[0];
    *&v571 = v581;
    if (v24)
    {
      v160 = v159 == 0;
    }

    else
    {
      v160 = 1;
    }

    v24 = !v160;
    if (v159)
    {
      if (!glpTypesEqual(v581, v569) || ((*(v158 + 48) ^ *(v141 + 6)) & 0x6F000000000) != 0)
      {
        v161 = glpLinkerGetInfoLog(v565);
        v162 = glpLanguageToString(v564);
        v163 = *(v158 + 32);
        v164 = *(v158 + 40);
        glpLanguageToString(v556);
        v566 = "-1";
        v567 = 0xEDA00000002;
        v568 = 0xFFFFFFFFLL;
        glpLogMessage(v161, 0, &v566, "Input of %s shader '%.*s' differs in type/qualifiers to that written by %s shader", v165, v166, v167, v168, v162);
        v24 = 0;
      }

      goto LABEL_155;
    }

LABEL_198:
    v137 = *(a5 + 32);
LABEL_199:
    ++v138;
  }

  while (v138 < v137);
  if (!v13)
  {
    goto LABEL_201;
  }

LABEL_204:
  if (*(v13 + 32))
  {
    v212 = 0;
    v545 = v17 + 256;
    while (1)
    {
      v213 = *(v13 + 40) + 32 * v212;
      v214 = *v213;
      if (!*v213)
      {
        goto LABEL_265;
      }

      v215 = *(v213 + 8);
      v216 = *(v213 + 16);
      StringHash = v214[1];
      if (StringHash)
      {
        v217 = *(v213 + 8);
        StringHash = glpLayoutObjectFind(StringHash, 28);
        if (StringHash)
        {
          goto LABEL_265;
        }

        StringHash = glpLayoutObjectFind(v214[1], 29);
        v215 = v217;
        if (StringHash)
        {
          goto LABEL_265;
        }
      }

      v560 = v214;
      if (v216 >= 3)
      {
        break;
      }

LABEL_225:
      if (v564 != 4 || (v214[6] & 0x40000000) == 0)
      {
        goto LABEL_265;
      }

      v549 = v215;
      v223 = v214[1];
      if (v223)
      {
        LODWORD(v547) = glpLayoutObjectFind(v223, 79) != 0;
      }

      else
      {
        LODWORD(v547) = 0;
      }

      v224 = v214[15];
      v225 = *v214;
      LODWORD(v551) = v24 != 0;
      v579 = 0u;
      v580 = 0u;
      v577 = 0u;
      v578 = 0u;
      v575 = 0u;
      v576 = 0u;
      v574 = 0u;
      v573 = 0u;
      v572 = 0u;
      v571 = 0u;
      v226 = *(v214 + 8);
      v227 = *(v214 + 9);
      v228 = *(v214 + 6);
      v578 = *(v214 + 7);
      v229 = *(v214 + 1);
      v571 = *v214;
      v572 = v229;
      v230 = *(v214 + 2);
      v231 = *(v214 + 3);
      v232 = *(v214 + 5);
      v575 = *(v214 + 4);
      v576 = v232;
      v574 = v231;
      v573 = v230;
      v579 = v226;
      v580 = v227;
      v577 = v228;
      *(&v578 + 1) = v224;
      *&v571 = v225;
      v233 = glpTypeGetKind(v225);
      v234 = v571;
      if (v233 == 3)
      {
        v234 = glpBankTypeGetElementType(v571);
      }

      v235 = glpABIGetTypeSize(0, v234, 0);
      v236 = glpTypeSizeGetSize(v235);
      StringHash = glpLinkerPoolAlloc(v565);
      *StringHash = &v571;
      *(StringHash + 8) = 0;
      if (v24)
      {
        v237 = StringHash;
        Size = v212;
        v238 = v214[1];
        if (v238)
        {
          v239 = glpLayoutObjectFind(v238, 78);
          if (v239)
          {
            glpIntHashPut(*v563, *(v239 + 4), -1, v240);
          }
        }

        v241 = glpLinkerPoolAlloc(v565);
        v559 = v236;
        v557 = glpLinkerPoolAlloc(v565);
        v242 = v571;
        if (glpTypeGetKind(v571) == 3)
        {
          v242 = glpBankTypeGetElementType(v242);
        }

        glpTypeGetAppleVec4Types(v242, v241, 1, 0, 0, v557, 0, 0, 0);
        v243 = v214[1];
        if (v243)
        {
          v244 = glpLayoutObjectFind(v243, 26);
        }

        else
        {
          v244 = 0;
        }

        v247 = glpStringHashGet(*(v565 + 80), v214[2], v214[3]);
        if (v244)
        {
          v247 = v244 + 2;
          goto LABEL_247;
        }

        if (v247)
        {
LABEL_247:
          LODWORD(v555) = *v247;
        }

        else
        {
          LODWORD(v555) = 0;
        }

        v548 = v216;
        if (v236)
        {
          v248 = 0;
          do
          {
            if (BitSetGetEquals(*(&v578 + 1), v248))
            {
              v249 = glpLinkerPoolAlloc(v565);
              *v249 = 0u;
              *(v249 + 16) = 0u;
              glpIntHashPut(*v563, v139, v249, 0.0);
              if (glpPrimitiveTypeGetScalarCount(v241[v248]))
              {
                v250 = 0;
                do
                {
                  v251 = *(v237 + 8);
                  v252 = (v237 + 16 + 8 * v251);
                  *v252 = v139;
                  v252[1] = v250;
                  *(v237 + 8) = v251 + 1;
                  *v249 |= 1 << v250++;
                }

                while (v250 < glpPrimitiveTypeGetScalarCount(v241[v248]));
              }

              *(v249 + 8) = v214[6] & 0x7F00000001FLL | (*(v557 + v248) >> 3);
              *(v249 + 4) = v241[v248];
              v253 = v565;
              v254 = glpLinkerGetAllocator(v565);
              v255 = glpCopyLayoutObject(v254, *(v249 + 24));
              *(v249 + 24) = v255;
              if (!v255)
              {
                v256 = glpLinkerGetAllocator(v253);
                *(v249 + 24) = glpMakeLayoutObject(v256);
              }

              v257 = glpLinkerGetAllocator(v253);
              v258 = *(v249 + 24);
              v566 = "-1";
              v567 = 0xEDA00000002;
              v568 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v257, 0, &v566, 0, 0, v258, 33, 0);
              v259 = glpLinkerGetAllocator(v253);
              v260 = *(v249 + 24);
              v566 = "-1";
              v567 = 0xEDA00000002;
              v568 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v259, 0, &v566, 0, 0, v260, 34, 27);
              v261 = glpLinkerGetAllocator(v253);
              v262 = *(v249 + 24);
              v566 = "-1";
              v567 = 0xEDA00000002;
              v568 = 0xFFFFFFFFLL;
              glpLayoutObjectAppendInteger(v261, 0, &v566, 0, 0, v262, 45, v555 + v248);
              LODWORD(v139) = v139 + 1;
              v214 = v560;
            }

            ++v248;
          }

          while (v248 != v559);
        }

        v17 = v565;
        v263 = propagateCopyBindings(v565, v214, v237);
        v264 = v548;
        glpStringHashPut(*v553, v549, v548, v263, v265);
        v13 = v561;
        v212 = Size;
        if ((v547 & 1) == 0)
        {
          if (glpTypeGetKind(v571) == 3)
          {
            v266 = glpBankTypeGetElementCount(v571);
          }

          else
          {
            v266 = 1;
          }

          *(v565 + 272) += *(v263 + 2) * v266;
        }

        v267 = glpLinkerPoolAlloc(v17);
        *v267 = 0;
        v267[1] = 0;
        *v267 = -1;
        v267[1] = *v214;
        StringHash = glpStringHashPut(*v554, v549, v264, v267, v268);
        goto LABEL_264;
      }

      v17 = v565;
LABEL_264:
      v24 = v551;
LABEL_265:
      if (++v212 >= *(v13 + 32))
      {
        goto LABEL_318;
      }
    }

    v218 = *v215;
    if (v218 == 103)
    {
      v219 = *(v215 + 1);
      if (v219 == 108)
      {
        v219 = *(v215 + 2);
        v220 = 95;
      }

      else
      {
        v220 = 108;
      }

      if (v220 != v219)
      {
        goto LABEL_218;
      }
    }

    else if (103 != v218)
    {
LABEL_218:
      if (v216 < 9)
      {
        goto LABEL_225;
      }

      v221 = v215;
      StringHash = strncmp("$ib$", v215, 4uLL);
      v215 = v221;
      if (StringHash)
      {
        goto LABEL_225;
      }

      StringHash = strncmp("$gl_", v221 + 5, 4uLL);
      v215 = v221;
      if (StringHash)
      {
        goto LABEL_225;
      }
    }

    if (v218 != 36 || v216 >= 9 && (v222 = v215, StringHash = strncmp("$ib$", v215, 4uLL), v215 = v222, !StringHash) && (StringHash = strncmp("$gl_", v222 + 5, 4uLL), v215 = v222, !StringHash))
    {
      v549 = v215;
      v245 = v214[1];
      if (v245)
      {
        v246 = glpLayoutObjectFind(v245, 79) != 0;
      }

      else
      {
        v246 = 0;
      }

      v269 = v214[15];
      v566 = v269;
      v270 = *v214;
      v582[0] = *v214;
      if (v24)
      {
        v24 = getInputOutputBitsType(v17, v564, v214, &v566, v582, 5, 0, 0) != 0;
        v269 = v566;
        v270 = v582[0];
      }

      v579 = 0u;
      v580 = 0u;
      v577 = 0u;
      v578 = 0u;
      v575 = 0u;
      v576 = 0u;
      v574 = 0u;
      v573 = 0u;
      v572 = 0u;
      v571 = 0u;
      v271 = *(v214 + 8);
      v272 = *(v214 + 9);
      v273 = *(v214 + 6);
      v578 = *(v214 + 7);
      v274 = *(v214 + 1);
      v571 = *v214;
      v572 = v274;
      v275 = *(v214 + 2);
      v276 = *(v214 + 3);
      v277 = *(v214 + 5);
      v575 = *(v214 + 4);
      v576 = v277;
      v574 = v276;
      v573 = v275;
      v579 = v271;
      v580 = v272;
      v577 = v273;
      *(&v578 + 1) = v269;
      *&v571 = v270;
      v278 = glpTypeGetKind(v270);
      v279 = v571;
      if (v278 == 3)
      {
        v279 = glpBankTypeGetElementType(v571);
      }

      v280 = glpABIGetTypeSize(0, v279, 0);
      v281 = glpTypeSizeGetSize(v280);
      StringHash = glpLinkerPoolAlloc(v565);
      *StringHash = 0;
      *(StringHash + 8) = 0;
      v557 = StringHash;
      *StringHash = &v571;
      if (v24)
      {
        LODWORD(v544) = v246;
        v282 = v214[6];
        v283 = glpLayoutObjectFind(v214[1], 78);
        if (v283)
        {
          glpIntHashPut(*v563, *(v283 + 4), -1, v284);
        }

        Size = v212;
        if (glpLayoutObjectFind(v214[1], 35))
        {
          v285 = v565;
          v286 = glpLinkerGetAllocator(v565);
          v287 = glpCopyLayoutObject(v286, v214[1]);
          v288 = glpLayoutObjectFind(v287, 35);
          v289 = *(v288 + 4);
          *(v288 + 4) = 0;
          allocateSlotsWithGLPType(v285, 0, *v563, v557, v282 & 0x7F00000001FLL, v282 & 0x7F00000001FLL, 0, v287, v289, 0x20u);
        }

        else
        {
          v294 = glpLinkerPoolAlloc(v565);
          v547 = v281;
          v551 = glpLinkerPoolAlloc(v565);
          v295 = v571;
          if (glpTypeGetKind(v571) == 3)
          {
            v295 = glpBankTypeGetElementType(v295);
          }

          glpTypeGetAppleVec4Types(v295, v294, 1, 0, 0, v551, 0, 0, 0);
          v296 = glpLayoutObjectFind(v214[1], 31);
          LODWORD(v559) = v24;
          if (v296)
          {
            if (v281)
            {
              v297 = 0;
              v298 = 0;
              v299 = 0;
              v300 = 0;
              v301 = 0;
              v555 = v557 + 16;
              v548 = v216;
              do
              {
                if (glpPrimitiveTypeGetScalarCount(v294[v297]))
                {
                  v302 = 0;
                  do
                  {
                    v303 = v300 > 3;
                    if (v300 <= 3)
                    {
                      v304 = v301;
                    }

                    else
                    {
                      v304 = 0;
                    }

                    if (v300 > 3)
                    {
                      v300 = 0;
                    }

                    if (v303)
                    {
                      ++v299;
                    }

                    if (BitSetGetEquals(*(&v578 + 1), v297))
                    {
                      if (!v304)
                      {
                        v305 = v565;
                        v301 = glpLinkerPoolAlloc(v565);
                        *v301 = 0u;
                        *(v301 + 16) = 0u;
                        glpIntHashPut(*v563, v139, v301, 0.0);
                        v306 = v560;
                        *(v301 + 8) = *(v560 + 6) & 0x7F00000001FLL | (v551[v297] >> 3);
                        *(v301 + 4) = glpPrimitiveTypeGetScalarType(v294[v297]);
                        *(v301 + 24) = offsetLayout(v305, *(v306 + 1), v299);
                        v298 = v139;
                        LODWORD(v139) = v139 + 1;
                      }

                      v307 = v557;
                      v308 = *(v557 + 8);
                      v309 = (v555 + 8 * v308);
                      *v309 = v298;
                      v309[1] = v300;
                      *(v307 + 8) = v308 + 1;
                      *v301 |= 1 << v300;
                      v310 = glpPrimitiveTypeGetScalarType(v294[v297]);
                      v311 = componentCountForSet(*v301);
                      *(v301 + 4) = glpGetVectorType(v310, v311);
                      v304 = v301;
                    }

                    else
                    {
                      v301 = v304;
                    }

                    ++v302;
                    ++v300;
                  }

                  while (v302 < glpPrimitiveTypeGetScalarCount(v294[v297]));
                }

                else
                {
                  v304 = v301;
                }

                ++v297;
                v301 = v304;
                v24 = v559;
                v216 = v548;
              }

              while (v297 != v547);
            }
          }

          else if (v281)
          {
            v314 = 0;
            v315 = (v557 + 16);
            do
            {
              if (BitSetGetEquals(*(&v578 + 1), v314))
              {
                v316 = glpLinkerPoolAlloc(v565);
                *v316 = 0u;
                *(v316 + 16) = 0u;
                glpIntHashPut(*v563, v139, v316, 0.0);
                v317 = v557;
                if (glpPrimitiveTypeGetScalarCount(v294[v314]))
                {
                  v318 = 0;
                  do
                  {
                    v319 = *(v317 + 8);
                    v320 = &v315[8 * v319];
                    *v320 = v139;
                    v320[1] = v318;
                    *(v317 + 8) = v319 + 1;
                    *v316 |= 1 << v318++;
                  }

                  while (v318 < glpPrimitiveTypeGetScalarCount(v294[v314]));
                }

                v321 = v560;
                *(v316 + 8) = *(v560 + 6) & 0x7F00000001FLL | (v551[v314] >> 3);
                *(v316 + 4) = v294[v314];
                *(v316 + 24) = offsetLayout(v565, *(v321 + 1), v314);
                LODWORD(v139) = v139 + 1;
                v24 = v559;
              }

              ++v314;
            }

            while (v314 != v547);
          }
        }

        v17 = v565;
        v290 = v560;
        v291 = propagateCopyBindings(v565, v560, v557);
        glpStringHashPut(*v553, v549, v216, v291, v292);
        v13 = v561;
        v212 = Size;
        if ((v544 & 1) == 0)
        {
          if (glpTypeGetKind(v571) == 3)
          {
            v293 = glpBankTypeGetElementCount(v571);
          }

          else
          {
            v293 = 1;
          }

          *(v545 + 4 * v564) += *(v291 + 2) * v293;
        }

        v312 = glpLinkerPoolAlloc(v17);
        *v312 = 0;
        v312[1] = 0;
        *v312 = -1;
        v312[1] = *v290;
        StringHash = glpStringHashPut(*v554, v549, v216, v312, v313);
      }

      else
      {
        v17 = v565;
      }

      goto LABEL_265;
    }

    goto LABEL_225;
  }

LABEL_318:
  a5 = v562;
  if (v562)
  {
    v322 = v24;
    v323 = *v558;
    if (*(*v558 + 32))
    {
      v324 = 0;
      v325 = 0;
      do
      {
        v326 = *(v323 + 40);
        if (*(v326 + v324))
        {
          v327 = *(v326 + v324 + 8);
          StringHash = glpIntHashGet(*v563, v327);
          if (!StringHash)
          {
            StringHash = glpIntHashPut(*v563, v327, -1, v328);
          }
        }

        ++v325;
        v324 += 16;
      }

      while (v325 < *(v323 + 32));
    }

    v329 = *v563;
    if (*(*v563 + 32))
    {
      v330 = 0;
      v331 = 0;
      do
      {
        v332 = *(v329 + 40);
        if (*(v332 + v330))
        {
          v333 = *(v332 + v330 + 8);
          StringHash = glpIntHashGet(*v558, v333);
          if (!StringHash)
          {
            StringHash = glpIntHashPut(*v558, v333, -1, v334);
          }
        }

        ++v331;
        v330 += 16;
      }

      while (v331 < *(v329 + 32));
    }

    v17 = v565;
    v24 = v322;
    goto LABEL_332;
  }

LABEL_435:
  v448 = v24;
  v549 = &v541;
  v449 = *(v13 + 36);
  MEMORY[0x28223BE20](StringHash);
  v451 = &v541 - ((v450 + 15) & 0xFFFFFFFF0);
  bzero(v451, v450);
  v452 = *(v13 + 32);
  if (v452)
  {
    v453 = 0;
    v454 = (*(v13 + 40) + 16);
    do
    {
      v455 = *(v454 - 2);
      if (v455)
      {
        v456 = *(v454 - 1);
        v457 = *v454;
        if (*v454 < 3 || ((v458 = *v456, v458 != 103) ? (v459 = 103) : (v458 = *(v456 + 1), v458 != 108) ? (v459 = 108) : (v458 = *(v456 + 2), v459 = 95), v459 != v458 && (v457 < 9 || strncmp("$ib$", *(v454 - 1), 4uLL) || strncmp("$gl_", v456 + 5, 4uLL))))
        {
          if ((!v457 || *v456 != 36 || v457 >= 9 && !strncmp("$ib$", v456, 4uLL) && !strncmp("$gl_", v456 + 5, 4uLL) || (v457 & 0xFFFFFFFC) != 0 && v456[1] == 105 && v456[2] == 98 && v456[3] == 36) && (v564 != 4 || (*(v455 + 51) & 0x40) == 0))
          {
            *&v451[8 * v453++] = v455;
          }
        }
      }

      v454 += 4;
      --v452;
    }

    while (v452);
  }

  else
  {
    v453 = 0;
  }

  v460 = v565;
  if (*(v565 + 296))
  {
    qsort(v451, v453, 8uLL, compareVariableObjectsLocationFirstNameSecond);
  }

  v13 = v561;
  v461 = v554;
  if (v453)
  {
    v462 = v453;
    v551 = (v460 + 256);
    do
    {
      v463 = *v451;
      v465 = *(*v451 + 16);
      v464 = *(*v451 + 24);
      v466 = *(*v451 + 8);
      if (v466)
      {
        v467 = glpLayoutObjectFind(v466, 79) != 0;
      }

      else
      {
        v467 = 0;
      }

      if (!*(v460 + 296))
      {
        if (v562 && (v471 = outputForInput(*v552, v465, v464)) != 0)
        {
          if (v448)
          {
            glpStringHashPut(*v461, v465, v464, v471, v472);
            v473 = outputForInput(*v550, v465, v464);
            v474 = propagateCopyBindings(v460, v463, v473);
            glpStringHashPut(*v553, v465, v464, v474, v475);
            if (!v467)
            {
              *&v551[4 * v564] += *(v474 + 2);
            }
          }
        }

        else
        {
          v508 = glpLinkerGetInfoLog(v460);
          v513 = glpLanguageToString(v564);
          v514 = *(v463 + 40);
          v515 = *(v463 + 32);
          if (v562)
          {
            glpLanguageToString(v556);
          }

          *&v571 = "-1";
          *(&v571 + 1) = 0xEDA00000002;
          *&v572 = 0xFFFFFFFFLL;
          glpLogMessage(v508, 0, &v571, "Input of %s shader '%.*s' not written by %s %s", v509, v510, v511, v512, v513);
          v448 = 0;
          v460 = v565;
        }

        goto LABEL_499;
      }

      LODWORD(v560) = v467;
      v468 = *(v463 + 120);
      v582[0] = v468;
      v469 = *v463;
      v581 = *v463;
      if (v448)
      {
        v470 = getInputOutputBitsType(v460, v564, v463, v582, &v581, 5, 0, 0) != 0;
        v469 = v581;
        v468 = v582[0];
      }

      else
      {
        v470 = 0;
      }

      v579 = 0u;
      v580 = 0u;
      v577 = 0u;
      v578 = 0u;
      v575 = 0u;
      v576 = 0u;
      v574 = 0u;
      v573 = 0u;
      v572 = 0u;
      v571 = 0u;
      v476 = *(v463 + 128);
      v477 = *(v463 + 144);
      v478 = *(v463 + 96);
      v578 = *(v463 + 112);
      v479 = *(v463 + 16);
      v571 = *v463;
      v572 = v479;
      v480 = *(v463 + 32);
      v481 = *(v463 + 48);
      v482 = *(v463 + 80);
      v575 = *(v463 + 64);
      v576 = v482;
      v574 = v481;
      v573 = v480;
      v579 = v476;
      v580 = v477;
      v577 = v478;
      *(&v578 + 1) = v468;
      *&v571 = v469;
      v483 = glpTypeGetKind(v469);
      v484 = v571;
      if (v483 == 3)
      {
        v484 = glpBankTypeGetElementType(v571);
      }

      v485 = glpABIGetTypeSize(0, v484, 0);
      glpTypeSizeGetSize(v485);
      v486 = glpLinkerPoolAlloc(v460);
      *v486 = 0;
      *(v486 + 8) = 0;
      *v486 = &v571;
      v487 = *(v463 + 48);
      v488 = *(v463 + 8);
      if (v488)
      {
        v489 = glpLayoutObjectFind(v488, 26);
        v490 = v489;
        if (v489)
        {
          v491 = 0;
          v492 = remapSlotToCode[*(v489 + 4)];
          if (!v470)
          {
            goto LABEL_484;
          }

          goto LABEL_487;
        }
      }

      else
      {
        v490 = 0;
      }

      v492 = -1;
      v491 = 1;
      if (!v470)
      {
LABEL_484:
        v448 = 0;
        v460 = v565;
LABEL_496:
        v461 = v554;
        goto LABEL_497;
      }

LABEL_487:
      LODWORD(v555) = v491;
      v558 = v465;
      v559 = v464;
      v493 = v565;
      LODWORD(v557) = v492;
      v494 = glpLinkerGetAllocator(v565);
      v495 = glpMakeLayoutObject(v494);
      v496 = glpLinkerGetAllocator(v493);
      v566 = "-1";
      v567 = 0xEDA00000002;
      v568 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v496, 0, &v566, 0, 0, v495, 33, 0);
      v497 = glpLinkerGetAllocator(v493);
      v566 = "-1";
      v567 = 0xEDA00000002;
      v568 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v497, 0, &v566, 0, 0, v495, 34, 28);
      v498 = glpLinkerGetAllocator(v493);
      v566 = "-1";
      v567 = 0xEDA00000002;
      v568 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v498, 0, &v566, 0, 0, v495, 35, 0);
      v499 = glpLinkerGetAllocator(v493);
      v566 = "-1";
      v567 = 0xEDA00000002;
      v568 = 0xFFFFFFFFLL;
      glpLayoutObjectAppendInteger(v499, 0, &v566, 0, 0, v495, 38, 1);
      v500 = allocateSlotsWithGLPType(v493, 0, *v563, v486, v487 & 0x7F00000001FLL, v487 & 0x7F00000001FLL, 0, v495, v557, glpBuiltInConstantValues[8 * (*(v493 + 60) == 4) + 2]);
      if ((v560 & 1) == 0)
      {
        *&v551[4 * v564] += *(v486 + 8);
      }

      v501 = v559;
      v502 = v558;
      if (!v500)
      {
        v460 = v565;
        v516 = glpLinkerGetInfoLog(v565);
        v517 = 4 * glpBuiltInConstantValues[8 * (*(v460 + 60) == 4) + 2];
        v518 = *(v463 + 32);
        v519 = *(v463 + 40);
        v566 = "-1";
        v567 = 0xEDA00000002;
        v568 = 0xFFFFFFFFLL;
        glpLogMessage(v516, 0, &v566, "Implementation limit of %d %s components exceeded. Unable to allocate '%.*s'.", v520, v521, v522, v523, v517);
        if ((v555 & 1) == 0)
        {
          v524 = glpLinkerGetInfoLog(v460);
          v525 = *(v463 + 32);
          v526 = *(v490 + 4);
          v527 = *(v463 + 40);
          v566 = "-1";
          v567 = 0xEDA00000002;
          v568 = 0xFFFFFFFFLL;
          glpLogMessage(v524, 0, &v566, "Or active varying aliasing. One or more slots starting at %d unavailable for '%.*s' from layout location request.", v528, v529, v530, v531, v526);
        }

        v448 = 0;
        goto LABEL_496;
      }

      v503 = v486;
      v460 = v565;
      v504 = propagateCopyBindings(v565, v463, v503);
      glpStringHashPut(*v553, v502, v501, v504, v505);
      v506 = glpLinkerPoolAlloc(v460);
      *v506 = 0;
      v506[1] = 0;
      *v506 = -1;
      v506[1] = *v463;
      v461 = v554;
      glpStringHashPut(*v554, v502, v501, v506, v507);
      v448 = 1;
LABEL_497:
      v13 = v561;
LABEL_499:
      v451 += 8;
      --v462;
    }

    while (v462);
  }

  a5 = v562;
  v24 = v448;
LABEL_501:
  if (v556 != 1)
  {
    if (a5)
    {
      v532 = *(*v550 + 32);
      if (v532)
      {
        v533 = *(*v550 + 40);
        do
        {
          if (*v533)
          {
            *(**v533 + 8) = 0;
          }

          v533 += 32;
          --v532;
        }

        while (v532);
      }
    }
  }

  if (v13)
  {
    v534 = *(*v553 + 32);
    if (v534)
    {
      v535 = *(*v553 + 40);
      do
      {
        if (*v535)
        {
          v536 = **v535;
          if (v564 != 4 || (*(v536 + 48) & 0x40000000) == 0)
          {
            *(v536 + 8) = 0;
          }
        }

        v535 += 4;
        --v534;
      }

      while (v534);
    }
  }

LABEL_516:
  v537 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t inputForOutput(uint64_t a1, _BYTE *a2, size_t __n)
{
  v3 = __n;
  v15[1] = *MEMORY[0x277D85DE8];
  if ((__n & 0xFFFFFFFC) != 0 && *a2 == 36 && a2[1] == 105 && a2[2] == 98 && a2[3] == 36)
  {
    v6 = __n;
    MEMORY[0x28223BE20](a1);
    v7 = v15 - ((v3 + 15) & 0x1FFFFFFF0);
    bzero(v7, v3);
    memcpy(v15 - ((v6 + 15) & 0x1FFFFFFF0), a2, v3);
    v7[4] = 105;
    if (v3)
    {
      v8 = v3 >> 5;
      v9 = ~(v3 >> 5);
      LODWORD(v10) = v3;
      do
      {
        v10 = (32 * v10 + (v10 >> 2) + v7[v3 - 1]) ^ v10;
        v3 += v9;
      }

      while (v3 > v8);
      v11 = v10 << 32;
    }

    else
    {
      v11 = 0;
    }

    result = glpStringHashGet(a1, v15 - ((v6 + 15) & 0x1FFFFFFF0), v11 | v6);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    return glpStringHashGet(a1, a2, __n);
  }

  return result;
}

uint64_t getInputOutputBitsType(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, unsigned int **a5, int a6, uint64_t *a7, unsigned int **a8)
{
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  if (a2 - 1 > 2)
  {
    return 1;
  }

  v17 = *a5;
  if (glpTypeGetKind(*a5) != 3 && isBuiltinName(*(a3 + 16), *(a3 + 24)))
  {
    return 1;
  }

  if ((*(a3 + 53) & 2) != 0)
  {
    return 1;
  }

  if (a2 != 3)
  {
    v19 = 32;
    goto LABEL_14;
  }

  v18 = *(a1 + 308);
  if (v18 > 3)
  {
    if (v18 == 4)
    {
      v19 = 3;
      goto LABEL_14;
    }

    if (v18 == 10)
    {
      v19 = 4;
      goto LABEL_14;
    }

LABEL_34:
    v19 = 6;
    goto LABEL_14;
  }

  if (!v18)
  {
    v19 = 1;
    goto LABEL_14;
  }

  if (v18 != 1)
  {
    goto LABEL_34;
  }

  v19 = 2;
LABEL_14:
  v45 = v19;
  if (glpTypeGetKind(v17) != 3)
  {
    InfoLog = glpLinkerGetInfoLog(a1);
    v29 = glpLanguageToString(a2);
    v30 = *(a3 + 32);
    v31 = *(a3 + 40);
    v46 = "-1";
    v47 = 0xEDA00000002;
    v48 = 0xFFFFFFFFLL;
    glpLogMessage(InfoLog, 0, &v46, "Input of %s shader '%.*s' not an array", v32, v33, v34, v35, v29);
    return 0;
  }

  if (glpBankTypeGetElementCount(v17) != v45 && glpBankTypeGetElementCount(v17) != -1)
  {
    v20 = glpLinkerGetInfoLog(a1);
    if (a2 == 3)
    {
      v21 = glpLanguageToString(3u);
      v22 = *(a3 + 32);
      v23 = *(a3 + 40);
      v46 = "-1";
      v47 = 0xEDA00000002;
      v48 = 0xFFFFFFFFLL;
      glpBankTypeGetElementCount(v17);
      glpLogMessage(v20, 0, &v46, "Input of %s shader '%.*s' must be an array, with size matching input type (input type expects %u, got %u)", v24, v25, v26, v27, v21);
    }

    else
    {
      v38 = glpLanguageToString(a2);
      v39 = *(a3 + 32);
      v40 = *(a3 + 40);
      v46 = "-1";
      v47 = 0xEDA00000002;
      v48 = 0xFFFFFFFFLL;
      glpBankTypeGetElementCount(v17);
      glpLogMessage(v20, 0, &v46, "Input of %s shader '%.*s' must be an array, with size matching gl_MaxPatchVertices (expected %u, got %u)", v41, v42, v43, v44, v38);
    }

    return 0;
  }

  *a5 = glpBankTypeGetElementType(v17);
  if (a8)
  {
    Kind = glpTypeGetKind(*a8);
    if (a6 == 1 && Kind == 3)
    {
      *a8 = glpBankTypeGetElementType(*a8);
    }
  }

  if (a4)
  {
    *a4 = *(a3 + 120);
  }

  if (a7)
  {
    *a7 = v16;
  }

  return 1;
}

uint64_t allocateSlotsWithGLPType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t *a7, void **a8, int a9, unsigned int a10)
{
  v12 = a4;
  v16 = glpABIGetTypeSize(0, **a4, 0);
  Size = glpTypeSizeGetSize(v16);
  v18 = glpLinkerPoolAlloc(a1);
  v100 = a1;
  v96 = Size;
  v91 = glpLinkerPoolAlloc(a1);
  v92 = v18;
  glpTypeGetAppleVec4Types(**v12, v18, 1, 0, 0, v91, 0, 0, 0);
  v93 = a5;
  if ((a5 & 0x1Fu) >= (a6 & 0x1F))
  {
    v19 = a6;
  }

  else
  {
    v19 = a6 & 0xFFFFFFFFFFFFFFE0 | a5 & 0x1F;
  }

  if (!Size)
  {
    return 1;
  }

  v20 = 0;
  v89 = v19;
  v95 = v12 + 2;
  v22 = 1;
  v101 = v12;
  v106 = (v19 >> 11) & 0x40000000;
  do
  {
    Equals = BitSetGetEquals((*v12)[15], v20);
    if (!Equals && !*(v100 + 296) || !v22)
    {
      goto LABEL_9;
    }

    v23 = v91[v20];
    v103 = v89 | (v23 >> 3);
    v104 = v93 | (v23 >> 3);
    v105 = v92[v20];
    v99 = v20;
    v24 = a10;
    if (!a10)
    {
      v22 = 0;
      v35 = a9;
      v36 = a7;
      if (a7)
      {
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    v25 = &remapSlotToCode;
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      v28 = v27 | v106;
      if (a2)
      {
        v29 = glpIntHashGet(a2, v28);
        if (a3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = 0;
        if (a3)
        {
LABEL_18:
          v30 = glpIntHashGet(a3, v28);
          goto LABEL_21;
        }
      }

      v30 = 0;
LABEL_21:
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v30;
      }

      if (v31 == -1)
      {
        goto LABEL_37;
      }

      if (v31)
      {
        break;
      }

      if (a9 == -1 || v28 == a9)
      {
        goto LABEL_41;
      }

LABEL_37:
      if (!--v24)
      {
        goto LABEL_38;
      }
    }

    v32 = *v31;
    v33 = a9 == -1 || v28 == a9;
    v34 = v33;
    if (v32 || (v34 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    if (!(v29 | v30))
    {
      if (a2)
      {
        v29 = glpLinkerPoolAlloc(v100);
        *v29 = 0u;
        *(v29 + 16) = 0u;
        glpIntHashPut(a2, v28, v29, 0.0);
        if (!a3)
        {
          if (v29)
          {
            v30 = 0;
            goto LABEL_50;
          }

LABEL_38:
          v22 = 0;
          v35 = a9;
          goto LABEL_70;
        }
      }

      else
      {
        if (!a3)
        {
          goto LABEL_38;
        }

        v29 = 0;
      }

      v30 = glpLinkerPoolAlloc(v100);
      *v30 = 0u;
      *(v30 + 16) = 0u;
      glpIntHashPut(a3, v28, v30, 0.0);
    }

    if (v29)
    {
LABEL_50:
      *(v29 + 8) = v103;
      ScalarType = glpPrimitiveTypeGetScalarType(v105);
      *(v29 + 4) = glpGetVectorType(ScalarType, 4);
      *(v29 + 24) = offsetLayout(v100, a7, v26);
      if (!v30)
      {
        v38 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_38;
      }

      v29 = 0;
    }

    *(v30 + 8) = v104;
    v39 = glpPrimitiveTypeGetScalarType(v105);
    *(v30 + 4) = glpGetVectorType(v39, 4);
    *(v30 + 24) = offsetLayout(v100, a8, v26);
    v38 = 1;
    if (v29)
    {
LABEL_55:
      v97 = a9;
      v40 = 1;
      v41 = v29;
    }

    else
    {
      v97 = a9;
      v40 = 0;
      v41 = v30;
    }

    v42 = *v41;
    if (glpPrimitiveTypeGetScalarCount(v105))
    {
      v43 = 0;
      do
      {
        if (Equals)
        {
          v44 = *(v101 + 2);
          v45 = &v95[v44];
          *v45 = v28;
          v45[1] = v43;
          *(v101 + 2) = v44 + 1;
        }

        v42 |= 1 << v43;
        if (v40)
        {
          *v29 = v42;
          v46 = glpPrimitiveTypeGetScalarType(*(v29 + 4));
          v47 = componentCountForSet(*v29);
          *(v29 + 4) = glpGetVectorType(v46, v47);
        }

        if (v38)
        {
          *v30 = v42;
          v48 = glpPrimitiveTypeGetScalarType(*(v30 + 4));
          v49 = componentCountForSet(*v30);
          *(v30 + 4) = glpGetVectorType(v48, v49);
        }

        ++v43;
      }

      while (v43 < glpPrimitiveTypeGetScalarCount(v105));
    }

    a9 = v97;
    if (v97 == -1)
    {
      v35 = -1;
    }

    else
    {
      v35 = v97 + 1;
    }

    v22 = 1;
    v12 = v101;
LABEL_70:
    v36 = a7;
    v20 = v99;
    if (a7)
    {
LABEL_71:
      v50 = glpLayoutObjectFind(v36, 33);
      if (v50)
      {
        v51 = *(v50 + 4) == 5;
        goto LABEL_74;
      }
    }

LABEL_73:
    v51 = 0;
LABEL_74:
    if (*(v100 + 296))
    {
      v52 = 1;
    }

    else
    {
      v52 = v22;
    }

    if (v52)
    {
      goto LABEL_9;
    }

    if (v51)
    {
      goto LABEL_9;
    }

    if (v35 != -1)
    {
      goto LABEL_9;
    }

    v53 = v106;
    if (glpPrimitiveTypeGetScalarType(v105) == 62)
    {
      goto LABEL_9;
    }

    if (!glpPrimitiveTypeGetScalarCount(v105))
    {
      v22 = 1;
      goto LABEL_9;
    }

    v54 = 0;
    v98 = a9;
    while (2)
    {
      if (!a10)
      {
        v64 = 0;
        v22 = 0;
        goto LABEL_138;
      }

      v55 = &remapSlotToCode;
      v56 = a10;
      while (2)
      {
        v58 = *v55++;
        v57 = v58;
        v59 = v58 | v53;
        if (a2)
        {
          v22 = glpIntHashGet(a2, v59);
          if (a3)
          {
            goto LABEL_87;
          }

LABEL_89:
          v60 = 0;
        }

        else
        {
          v22 = 0;
          if (!a3)
          {
            goto LABEL_89;
          }

LABEL_87:
          v60 = glpIntHashGet(a3, v59);
        }

        if (v22)
        {
          v61 = v22;
        }

        else
        {
          v61 = v60;
        }

        if (v61 == -1)
        {
          goto LABEL_105;
        }

        if (!v61)
        {
          goto LABEL_108;
        }

        if (*v61 == 15)
        {
          goto LABEL_105;
        }

        if (!*v61)
        {
          goto LABEL_108;
        }

        v62 = v103;
        if (!v22)
        {
          v62 = v104;
        }

        if (*(v61 + 8) != v62 || (v63 = glpPrimitiveTypeGetScalarType(*(v61 + 4)), v33 = v63 == glpPrimitiveTypeGetScalarType(v105), v53 = v106, !v33))
        {
LABEL_105:
          if (!--v56)
          {
            v64 = 0;
            v22 = 0;
            v12 = v101;
            v20 = v99;
            a9 = v98;
            goto LABEL_138;
          }

          continue;
        }

        break;
      }

      if (v22 && v60)
      {
        if (*(v60 + 8) == v104)
        {
          goto LABEL_117;
        }

        goto LABEL_105;
      }

LABEL_108:
      v12 = v101;
      a9 = v98;
      if (v22 | v60)
      {
        goto LABEL_116;
      }

      if (!a2)
      {
        if (a3)
        {
          v22 = 0;
LABEL_115:
          v60 = glpLinkerPoolAlloc(v100);
          *v60 = 0u;
          *(v60 + 16) = 0u;
          glpIntHashPut(a3, v59, v60, 0.0);
LABEL_116:
          if (v22)
          {
LABEL_117:
            *(v22 + 8) = v103;
            *(v22 + 4) = glpPrimitiveTypeGetScalarType(v105);
            *(v22 + 24) = offsetLayout(v100, a7, v57);
            if (v60)
            {
              v12 = v101;
              a9 = v98;
              goto LABEL_121;
            }

            v65 = 0;
            v12 = v101;
            a9 = v98;
LABEL_124:
            v66 = 1;
            v67 = v22;
            goto LABEL_126;
          }

          if (v60)
          {
            v22 = 0;
LABEL_121:
            *(v60 + 8) = v104;
            *(v60 + 4) = glpPrimitiveTypeGetScalarType(v105);
            *(v60 + 24) = offsetLayout(v100, a8, v57);
            v65 = 1;
            if (v22)
            {
              goto LABEL_124;
            }

            v66 = 0;
            v67 = v60;
LABEL_126:
            v68 = 0;
            v69 = *v67;
            while (((1 << v68) & v69) != 0)
            {
              if (++v68 == 4)
              {
                goto LABEL_136;
              }
            }

            if (Equals)
            {
              v70 = *(v12 + 2);
              v71 = &v95[v70];
              *v71 = v59;
              v71[1] = v68;
              *(v12 + 2) = v70 + 1;
            }

            v72 = (1 << v68) | v69;
            if (v66)
            {
              *v22 = v72;
              v73 = glpPrimitiveTypeGetScalarType(*(v22 + 4));
              v74 = componentCountForSet(*v22);
              *(v22 + 4) = glpGetVectorType(v73, v74);
            }

            if (v65)
            {
              *v60 = v72;
              v75 = glpPrimitiveTypeGetScalarType(*(v60 + 4));
              v76 = componentCountForSet(*v60);
              *(v60 + 4) = glpGetVectorType(v75, v76);
            }

LABEL_136:
            v64 = 1;
            v22 = 1;
            goto LABEL_137;
          }
        }

        v64 = 0;
        v22 = 0;
        goto LABEL_137;
      }

      v22 = glpLinkerPoolAlloc(v100);
      *v22 = 0u;
      *(v22 + 16) = 0u;
      glpIntHashPut(a2, v59, v22, 0.0);
      if (a3)
      {
        goto LABEL_115;
      }

      if (v22)
      {
        v60 = 0;
        goto LABEL_117;
      }

      v64 = 0;
LABEL_137:
      v20 = v99;
LABEL_138:
      ScalarCount = glpPrimitiveTypeGetScalarCount(v105);
      if (v64)
      {
        ++v54;
        v53 = v106;
        if (v54 < ScalarCount)
        {
          continue;
        }
      }

      break;
    }

LABEL_9:
    if (a9 == -1)
    {
      a9 = -1;
    }

    else
    {
      ++a9;
    }

    ++v20;
  }

  while (v20 != v96);
  if (!v22)
  {
    if (*(v12 + 2))
    {
      v78 = 0;
      v79 = v12 + 5;
      do
      {
        if (a2)
        {
          v80 = glpIntHashGet(a2, *(v79 - 1));
          if (a3)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v80 = 0;
          if (a3)
          {
LABEL_149:
            v81 = glpIntHashGet(a3, *(v79 - 1));
            if (v80)
            {
              goto LABEL_153;
            }

            goto LABEL_156;
          }
        }

        v81 = 0;
        if (v80)
        {
LABEL_153:
          v82 = 1;
          v83 = v80[1];
          *v80 &= ~(1 << *v79);
          v84 = glpPrimitiveTypeGetScalarType(v83);
          if (*v80)
          {
            v82 = componentCountForSet(*v80);
          }

          v80[1] = glpGetVectorType(v84, v82);
        }

LABEL_156:
        if (v81)
        {
          v85 = 1;
          v86 = v81[1];
          *v81 &= ~(1 << *v79);
          v87 = glpPrimitiveTypeGetScalarType(v86);
          if (*v81)
          {
            v85 = componentCountForSet(*v81);
          }

          v81[1] = glpGetVectorType(v87, v85);
        }

        ++v78;
        v79 += 2;
      }

      while (v78 < *(v12 + 2));
    }

    *(v12 + 2) = 0;
  }

  return v22;
}