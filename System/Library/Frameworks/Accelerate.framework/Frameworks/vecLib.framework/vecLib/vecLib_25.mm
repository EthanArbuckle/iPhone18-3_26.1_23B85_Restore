uint64_t sub_2367E674C(int *a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 24))(12 * *a1);
  v5 = *a1;
  v39 = v4;
  v6 = (v4 + 8 * v5);
  bzero(v6, 4 * v5);
  v7 = a1[1];
  __n = *a1;
  v8 = *(*(a1 + 1) + 8 * v7);
  v38 = *(a1 + 28);
  v9 = v38 * v38;
  v10 = 8 * v7 + 8;
  v11 = v10 + 4 * v8 + 8 * v8 * v9 + 64;
  v12 = (*(a2 + 24))(v11);
  v13 = v12;
  if (v12)
  {
    v36 = a2;
    v14 = v12 + v11;
    v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v12 + v11 < v15 || (v16 = v15 + v10, v15 + v10 > v14) || (v17 = (v16 + 4 * v8 + 7) & 0xFFFFFFFFFFFFFFF8, v14 < v17) || v17 + 8 * v8 * v9 > v14)
    {
      __break(1u);
    }

    v18 = *(a1 + 28);
    v19 = a1[6];
    *v12 = __n;
    *(v12 + 4) = v7;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = v19;
    *(v12 + 28) = v18;
    *(v12 + 32) = v17;
    v20 = a1[1];
    if (v20 < 1)
    {
      v22 = 0;
      v33 = v7;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 1);
      v24 = 8 * v38 * v38;
      do
      {
        v25 = v21;
        *(*(v13 + 8) + 8 * v21) = v22;
        v26 = *(v23 + 8 * v21++);
        if (v26 < *(v23 + 8 * v21))
        {
          v27 = v24 * v26;
          do
          {
            v28 = *(*(a1 + 2) + 4 * v26);
            if ((v28 & 0x80000000) == 0 && v28 < *a1)
            {
              if (v25 >= v6[v28])
              {
                *(*(v13 + 16) + 4 * v22) = v28;
                v6[v28] = v21;
                *(v39 + 8 * v28) = v22;
                memcpy((*(v13 + 32) + 8 * v22 * v9), (*(a1 + 4) + 8 * v26 * v9), 8 * v9);
                ++v22;
              }

              else if (v38)
              {
                v29 = (*(v13 + 32) + 8 * *(v39 + 8 * v28) * v9);
                v30 = (*(a1 + 4) + v27);
                v31 = v38 * v38;
                do
                {
                  v32 = *v30++;
                  *v29 = vadd_f32(v32, *v29);
                  ++v29;
                  --v31;
                }

                while (v31);
              }
            }

            ++v26;
            v23 = *(a1 + 1);
            v27 += v24;
          }

          while (v26 < *(v23 + 8 * v21));
          v20 = a1[1];
        }
      }

      while (v21 < v20);
      v15 = *(v13 + 8);
      v33 = *(v13 + 4);
    }

    *(v15 + 8 * v33) = v22;
    (*(v36 + 32))(v39);
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v54 = 0u;
    v55 = 0u;
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
    *__str = 0u;
    v41 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v10 + 4 * v8 + 8 * v8 * v9 + 64);
    (*(a2 + 40))(__str);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_2367E6A60(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(*(a1 + 8) + 8 * v4);
  v6 = *(a1 + 28);
  v7 = 8 * v4 + 8;
  v42 = (v6 * v6);
  v43 = v4;
  v8 = v7 + 4 * v5 + 8 * v5 * v42 + 64;
  result = (*(a2 + 24))(v8);
  if (result)
  {
    v10 = result + v8;
    v11 = (result + 47) & 0xFFFFFFFFFFFFFFF8;
    if (result + v8 < v11 || (v12 = v11 + v7, v11 + v7 > v10) || (v13 = (v12 + 4 * v5 + 7) & 0xFFFFFFFFFFFFFFF8, v10 < v13) || v13 + 8 * v5 * v42 > v10)
    {
      __break(1u);
    }

    v14 = *(a1 + 24);
    v15 = v43;
    *result = v43;
    *(result + 4) = v43;
    *(result + 8) = v11;
    *(result + 16) = v12;
    *(result + 24) = v14;
    *(result + 28) = v6;
    *(result + 32) = v13;
    *(result + 24) = v14 & 0xFFE3;
    if (v43 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v6 * v6);
      __n = 8 * v42;
      v41 = result;
      v19 = *(a1 + 8);
      v20 = 8 * v6;
      v21 = 8 * v6 + 8;
      v22 = 8 * v6 * v6;
      while (1)
      {
        v23 = v16;
        *(*(result + 8) + 8 * v16) = v17;
        v24 = *(v19 + 8 * v16++);
        if (v24 < *(v19 + 8 * v16))
        {
          break;
        }

LABEL_35:
        if (v16 == v15)
        {
          v11 = *(result + 8);
          goto LABEL_40;
        }
      }

      v25 = v22 * v24;
      v44 = v23;
      while (1)
      {
        v26 = *(*(a1 + 16) + 4 * v24);
        v27 = *(a1 + 24);
        if ((v27 & 2) != 0 && v23 > v26)
        {
          goto LABEL_34;
        }

        v28 = (v27 >> 1) & 1;
        if (v23 >= v26)
        {
          v28 = 1;
        }

        if (v28 != 1 || v26 >= v15)
        {
          goto LABEL_34;
        }

        *(*(result + 16) + 4 * v17) = v26;
        v30 = *(a1 + 32);
        v31 = (*(result + 32) + 8 * v17 * v18);
        v45 = v17 + 1;
        if (v23 == v26)
        {
          bzero(v31, __n);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v6)
            {
              v36 = 0;
              v37 = v30 + v25;
              result = v41;
              v15 = v43;
              v23 = v44;
              v17 = v45;
              do
              {
                v38 = 0;
                do
                {
                  *&v31[8 * v38] = *(v37 + 8 * v38);
                  ++v38;
                }

                while (v36 + v38 < v6);
                ++v36;
                v31 += v21;
                v37 += v21;
              }

              while (v36 != v6);
              goto LABEL_33;
            }
          }

          else if (v6)
          {
            v32 = 0;
            v33 = v30 + v25;
            v34 = 1;
            result = v41;
            v15 = v43;
            v23 = v44;
            v17 = v45;
            do
            {
              v35 = 0;
              do
              {
                *&v31[8 * v35] = *(v33 + 8 * v35);
                ++v35;
              }

              while (v34 != v35);
              ++v32;
              ++v34;
              v31 += v20;
              v33 += v20;
            }

            while (v32 != v6);
LABEL_33:
            v18 = (v6 * v6);
            goto LABEL_34;
          }
        }

        else
        {
          memcpy(v31, (v30 + 8 * v24 * v18), __n);
        }

        result = v41;
        v18 = (v6 * v6);
        v15 = v43;
        v23 = v44;
        v17 = v45;
LABEL_34:
        ++v24;
        v19 = *(a1 + 8);
        v25 += v22;
        if (v24 >= *(v19 + 8 * v16))
        {
          goto LABEL_35;
        }
      }
    }

    v17 = 0;
LABEL_40:
    *(v11 + 8 * v15) = v17;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *__str = 0u;
    v47 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
    result = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2367E6DC4(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4);
  v5 = *(a1 + 28);
  v6 = 8 * v4 + 8;
  v56 = v4;
  v57 = (v5 * v5);
  v7 = *(*(a1 + 8) + 8 * v4) + v4;
  v8 = v6 + 4 * v7 + 8 * v7 * v57 + 64;
  v9 = (*(a2 + 24))(v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9 + v8;
    v12 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
    if (v9 + v8 < v12 || (v13 = v12 + v6, LODWORD(v14) = v56, v12 + v6 > v11) || (v15 = (v13 + 4 * v7 + 7) & 0xFFFFFFFFFFFFFFF8, v11 < v15) || v15 + 8 * v7 * v57 > v11)
    {
      __break(1u);
    }

    v16 = *(a1 + 24);
    *v9 = v56;
    *(v9 + 4) = v56;
    *(v9 + 8) = v12;
    *(v9 + 16) = v13;
    *(v9 + 24) = v16;
    *(v9 + 28) = v5;
    *(v9 + 32) = v15;
    *(v9 + 24) = v16 & 0xFFE3;
    if (v56 < 1)
    {
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      __n = 8 * v57;
      v19 = 8 * v5;
      v20 = 8 * v5 + 8;
      v21 = 8 * v5 * v5;
      v58 = v9;
      do
      {
        v22 = v17;
        v23 = v10[2];
        *(v10[1] + 8 * v17) = v18;
        *(v23 + 4 * v18) = v17;
        v24 = v18;
        v25 = (v10[4] + 8 * v18 * v57);
        bzero(v25, __n);
        v26 = v5;
        if (v5)
        {
          do
          {
            *v25 = 1065353216;
            v25 = (v25 + v20);
            --v26;
          }

          while (v26);
        }

        v18 = v24 + 1;
        v27 = *(a1 + 8);
        v28 = *(v27 + 8 * v22);
        v17 = v22 + 1;
        if (v28 >= *(v27 + 8 * (v22 + 1)))
        {
          v14 = v56;
        }

        else
        {
          v29 = v21 * v28;
          v30 = v21 * v28 + 8;
          v14 = v56;
          do
          {
            v31 = *(*(a1 + 16) + 4 * v28);
            v32 = *(a1 + 24);
            if ((v32 & 2) == 0 || v22 <= v31)
            {
              v33 = v22 >= v31 || (v32 >> 1) & 1;
              if (v33 && v31 < v14)
              {
                v35 = *(a1 + 32);
                if (v22 == v31)
                {
                  v36 = v58[4];
                  v37 = *(v58[1] + 8 * v22);
                  if ((v32 & 2) != 0)
                  {
                    if (v5)
                    {
                      v38 = 0;
                      v39 = v36 + v21 * v37 + 8;
                      v40 = (v35 + v30);
                      v41 = v5 - 1;
                      do
                      {
                        if (++v38 < v5)
                        {
                          v42 = v41;
                          v43 = v40;
                          v44 = v39;
                          do
                          {
                            v45 = *v43++;
                            *v44++ = v45;
                            --v42;
                          }

                          while (v42);
                        }

                        v39 += v20;
                        v40 = (v40 + v20);
                        --v41;
                      }

                      while (v38 != v5);
                    }
                  }

                  else if (v5)
                  {
                    v49 = 0;
                    v50 = v36 + 8 * v37 * v57;
                    v51 = v35 + v29;
                    do
                    {
                      if (v49)
                      {
                        for (i = 0; i != v49; ++i)
                        {
                          *(v50 + 8 * i) = *(v51 + 8 * i);
                        }
                      }

                      ++v49;
                      v50 += v19;
                      v51 += v19;
                    }

                    while (v49 != v5);
                  }
                }

                else
                {
                  *(v58[2] + 4 * v18) = v31;
                  v46 = v22;
                  v47 = v21;
                  v48 = v17;
                  memcpy((v58[4] + 8 * v18 * v57), (v35 + 8 * v28 * v57), __n);
                  v17 = v48;
                  v21 = v47;
                  v22 = v46;
                  v19 = 8 * v5;
                  v14 = v56;
                  ++v18;
                }
              }
            }

            ++v28;
            v29 += v21;
            v30 += v21;
          }

          while (v28 < *(*(a1 + 8) + 8 * v17));
        }

        v10 = v58;
      }

      while (v17 != v14);
      v12 = v58[1];
    }

    *(v12 + 8 * v14) = v18;
  }

  else
  {
    if (!*(a2 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23672EE40();
      }

      _SparseTrap();
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *__str = 0u;
    v60 = 0u;
    snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v8);
    (*(a2 + 40))(__str);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2367E71B8(__int128 *a1, uint64_t a2)
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = *(a1 + 28);
  v6 = (v5 * v5);
  v7 = *(*(a1 + 1) + 8 * v4);
  v89 = v4;
  v8 = 8 * (v4 + v7) + 16;
  v9 = 16 * v7;
  v10 = 16 * v7 * v6;
  v11 = v10 + v8 + 72;
  v12 = (*(a2 + 24))(v11);
  if (!v12)
  {
    if (*(a2 + 40))
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      *__str = 0u;
      v93 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v10 + v8 + 72);
LABEL_12:
      (*(a2 + 40))(__str);
      v13 = 0;
      goto LABEL_98;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v13 = v12;
  v88 = a2;
  v14 = v12 + v11;
  v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v12 + v11 < v15)
  {
    goto LABEL_99;
  }

  v16 = (v15 + v10);
  if (v16 > v14)
  {
    goto LABEL_99;
  }

  v17 = *(a1 + 28);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v12 + 28) = v17;
  *(v12 + 29) = 0;
  *(v12 + 31) = 0;
  *(v12 + 32) = v15;
  v18 = (*(a2 + 24))(v9);
  if (!v18)
  {
    if (*(a2 + 40))
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      *__str = 0u;
      v93 = 0u;
      snprintf(__str, 0x100uLL, "Failed to allocate workspace for symbolic factorization of size %ld", v9);
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_96:
      sub_23672EEB0();
    }

LABEL_97:
    _SparseTrap();
  }

  v19 = v18;
  v20 = v16 + v8;
  if ((*(a1 + 24) & 2) != 0)
  {
    v22 = a1[1];
    v90 = *a1;
    v91 = v22;
    _SparseFromStructureComplex(&v90, __str);
    if (v20 <= v14)
    {
      sub_2367861D0(__str, 0, v16, v19, 0, &v90);
      goto LABEL_15;
    }

LABEL_99:
    __break(1u);
  }

  v21 = a1[1];
  v90 = *a1;
  v91 = v21;
  _SparseFromStructureComplex(&v90, __str);
  if (v20 > v14)
  {
    goto LABEL_99;
  }

  sub_236785FB0(__str, 0, v16, v19, 0, &v90);
LABEL_15:
  _SparseToStructureComplex(&v90, __str);
  v26 = v93;
  *v13 = *__str;
  *(v13 + 16) = v26;
  v27 = v89;
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    if (v89 >= 1)
    {
      v63 = 0;
      v64 = *(v13 + 8);
      v65 = 8 * v5 * v5;
      v66 = 8 * v5;
      v67 = 8 * v5 + 8;
      do
      {
        v68 = v63;
        v69 = *(v64 + 8 * v63++);
        if (v69 < *(v64 + 8 * v63))
        {
          v70 = v65 * v69;
          do
          {
            v71 = *(v19 + 8 * v69);
            v72 = *(a1 + 4);
            if (v71 >= 0)
            {
              v24 = *(v19 + 8 * v69);
            }

            else
            {
              v24 = -v71;
            }

            v23 = *(v13 + 32);
            if (v68 == *(*(v13 + 16) + 4 * v69))
            {
              if ((*(a1 + 24) & 2) != 0)
              {
                if (v5)
                {
                  v82 = 0;
                  v83 = v23 + v70;
                  if (((v71 & 0x4000000000000000) != 0) ^ __OFSUB__(v71, -v71) | (v71 == -v71))
                  {
                    v71 = -v71;
                  }

                  v84 = v72 + v65 * (v71 - 1);
                  do
                  {
                    v85 = 0;
                    v23 = 0;
                    do
                    {
                      *(v83 + 8 * v85) = *(v84 + 8 * v85);
                      *(v83 + v23) = *(v84 + 8 * v85);
                      v23 += v66;
                      ++v85;
                      v24 = v82 + v85;
                    }

                    while (v82 + v85 < v5);
                    ++v82;
                    v83 += v67;
                    v84 += v67;
                  }

                  while (v82 != v5);
                }
              }

              else if (v5)
              {
                v73 = 0;
                v74 = v23 + v70;
                if (((v71 & 0x4000000000000000) != 0) ^ __OFSUB__(v71, -v71) | (v71 == -v71))
                {
                  v71 = -v71;
                }

                v75 = v72 + v65 * (v71 - 1);
                v76 = (v23 + v70);
                v23 = 1;
                do
                {
                  v24 = 0;
                  v25 = v76;
                  do
                  {
                    *v25 = *(v75 + 8 * v24);
                    *(v74 + 8 * v24) = *(v75 + 8 * v24);
                    ++v24;
                    v25 = (v25 + v66);
                  }

                  while (v23 != v24);
                  ++v73;
                  ++v23;
                  v76 += 2;
                  v74 += v66;
                  v75 += v66;
                }

                while (v73 != v5);
              }
            }

            else if (v5)
            {
              v77 = 0;
              v78 = 0;
              v79 = v72 + 8 * (v24 - 1) * v6;
              v23 += v70;
              do
              {
                v24 = v5;
                v25 = v78;
                v80 = v77;
                do
                {
                  if (v71 >= 0)
                  {
                    v81 = v80;
                  }

                  else
                  {
                    v81 = v25;
                  }

                  *(v23 + 8 * v80++) = *(v79 + 8 * v81);
                  v25 = (v25 + v5);
                  --v24;
                }

                while (v24);
                v78 = (v78 + 1);
                v77 += v5;
              }

              while (v78 != v5);
            }

            ++v69;
            v64 = *(v13 + 8);
            v70 += v65;
          }

          while (v69 < *(v64 + 8 * v63));
          v27 = v89;
        }
      }

      while (v63 != v27);
    }
  }

  else if (v89 >= 1)
  {
    v28 = 0;
    v29 = *(v13 + 8);
    v30 = 8 * v5 * v5;
    v31 = 8 * v5;
    v32 = 8 * v5 + 8;
    do
    {
      v33 = v28;
      v34 = *(v29 + 8 * v28++);
      if (v34 < *(v29 + 8 * v28))
      {
        v35 = v30 * v34;
        v36 = v30 * v34 + 4;
        do
        {
          v37 = *(v19 + 8 * v34);
          v25 = *(a1 + 4);
          if (v37 >= 0)
          {
            v23 = *(v19 + 8 * v34);
          }

          else
          {
            v23 = -v37;
          }

          v24 = *(v13 + 32);
          if (v33 == *(*(v13 + 16) + 4 * v34))
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              if (v5)
              {
                v56 = 0;
                v57 = (v24 + v36);
                v23 = v24 + v35;
                if (((v37 & 0x4000000000000000) != 0) ^ __OFSUB__(v37, -v37) | (v37 == -v37))
                {
                  v37 = -v37;
                }

                v58 = v25 + v30 * (v37 - 1);
                do
                {
                  v24 = v58;
                  v25 = v23;
                  v59 = v57;
                  v60 = v56;
                  do
                  {
                    *v25 = *v24;
                    v25 += 2;
                    v61 = *v24;
                    v62 = *(v24 + 4);
                    v24 += 8;
                    *(v59 - 1) = v61;
                    *v59 = -v62;
                    ++v60;
                    v59 = (v59 + v31);
                  }

                  while (v60 < v5);
                  ++v56;
                  v57 = (v57 + v32);
                  v23 += v32;
                  v58 += v32;
                }

                while (v56 != v5);
              }
            }

            else if (v5)
            {
              v38 = 0;
              v39 = (v24 + v36);
              v23 = v24 + v35;
              if (((v37 & 0x4000000000000000) != 0) ^ __OFSUB__(v37, -v37) | (v37 == -v37))
              {
                v37 = -v37;
              }

              v40 = v25 + v30 * (v37 - 1);
              v24 = 8;
              do
              {
                v25 = 0;
                v41 = v39;
                do
                {
                  v42 = -*(v25 + v40 + 4);
                  *(v41 - 1) = *(v25 + v40);
                  *v41 = v42;
                  *(v25 + v23) = *(v25 + v40);
                  v25 += 2;
                  v41 = (v41 + v31);
                }

                while (v24 != v25);
                ++v38;
                v24 += 8;
                v39 += 2;
                v23 += v31;
                v40 += v31;
              }

              while (v38 != v5);
            }
          }

          else if (v5)
          {
            v43 = 0;
            v44 = 0;
            v23 = &v25[2 * (v23 - 1) * v6];
            v24 += 8 * v34 * v6;
            if (((v37 & 0x4000000000000000) != 0) ^ __OFSUB__(v37, -v37) | (v37 == -v37))
            {
              v45 = -v37;
            }

            else
            {
              v45 = *(v19 + 8 * v34);
            }

            v25 = (v25 + v30 * (v45 - 1));
            v46 = v25 + 1;
            do
            {
              v47 = 0;
              v48 = v5;
              v49 = v46;
              v50 = v25;
              v51 = v43;
              do
              {
                if (v37 < 0)
                {
                  v54 = (v23 + 8 * v44 + 8 * v47 * v5);
                  v53 = -*v49;
                  v52 = v51;
                }

                else
                {
                  v52 = v47 + v44 * v5;
                  v53 = v50[1];
                  v54 = v50;
                }

                v55 = v24 + 8 * v52;
                ++v47;
                *v55 = *v54;
                *(v55 + 4) = v53;
                ++v51;
                v50 += 2;
                v49 = (v49 + v31);
                --v48;
              }

              while (v48);
              ++v44;
              v43 += v5;
              v25 = (v25 + v31);
              v46 += 2;
            }

            while (v44 != v5);
          }

          ++v34;
          v29 = *(v13 + 8);
          v36 += v30;
          v35 += v30;
        }

        while (v34 < *(v29 + 8 * v28));
        v27 = v89;
      }
    }

    while (v28 != v27);
  }

  (*(v88 + 32))(v19, v23, v24, v25);
LABEL_98:
  v86 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_2367E785C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a2 + 28);
  v13 = ilaenv_NEWLAPACK();
  if (a1 == 40)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = a5 + a6;
  v17 = *(a3 + 88);
  v18 = (a5 + 8 * (*(a3 + 184) + v17) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (a5 + a6 < v18 || (v14 = (v18 + 4 * v11 * v12 + 7) & 0xFFFFFFFFFFFFFFF8, v16 < v14) || (v116 = 8 * v15 * *(a3 + 176), v122 = (v14 + v116), v14 + v116 > v16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 40)
  {
    if (&v122[8 * *(a3 + 168)] <= v16)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v122 = 0;
LABEL_11:
  if (v17 < 1)
  {
    return 0;
  }

  v114 = v14;
  v19 = 0;
  v20 = (a5 + 8 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = a1;
  while (1)
  {
    if (a1 == 40)
    {
      v122 = *(*(a4 + 40) + 8 * v19);
    }

    v21 = v19 + 1;
    v23 = *(a3 + 96);
    v22 = *(a3 + 104);
    v24 = *(v22 + 8 * (v19 + 1));
    v25 = *(v22 + 8 * v19);
    v26 = *(a3 + 120);
    v27 = *(v26 + 8 * (v19 + 1));
    v28 = *(v26 + 8 * v19);
    v118 = *(v23 + 4 * v19);
    v119 = *(v23 + 4 * (v19 + 1));
    v29 = *(a2 + 28);
    v30 = *a2;
    if (v24 > v25)
    {
      v31 = 0;
      v32 = *(a3 + 112) + 4 * v25;
      do
      {
        *(v18 + 4 * *(v32 + 4 * v31)) = v31;
        ++v31;
      }

      while (v24 - v25 != v31);
    }

    v33 = v24 - v25;
    v34 = v33;
    v120 = v27 - v28;
    v121 = v33;
    bzero(v122, (v27 - v28) * 8 * v33);
    v35 = *(a3 + 120);
    v36 = *(v35 + 8 * v19);
    if (v36 < *(v35 + 8 * v21))
    {
      if (v29 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v29;
      }

      v38 = 8 * (v29 * v29);
      v39 = v122;
      do
      {
        v40 = *(a3 + 136);
        v41 = *(*(a3 + 128) + 8 * v36);
        v42 = v41 / v40;
        v43 = v41 % v40;
        if (v42)
        {
          v44 = (v42 << 32) - 0x100000000;
          v45 = *(a3 + 104);
          v46 = *(v45 + 8 * v42);
          v47 = v44 >> 29;
          v48 = *(v45 + (v44 >> 29));
          v49 = *(*(a3 + 96) + 4 * v42) - *(*(a3 + 96) + (v44 >> 30));
          v50 = v48 + v43 + v49;
          if (v50 < v46)
          {
            v51 = (*(a5 + v47) + (8 * (v46 - v48) - 8 * v49 + 8) * v43);
            do
            {
              v52 = *v51++;
              *&v39[8 * *(v18 + 4 * *(*(a3 + 112) + 4 * v50++))] = v52;
            }

            while (v50 < *(*(a3 + 104) + 8 * v42));
          }
        }

        else
        {
          v53 = v43 / v29;
          v54 = (*(a2 + 8) + 8 * v53);
          v55 = *v54;
          v56 = v54[1];
          if ((*(a2 + 24) & 0x1C) == 4)
          {
            if (v55 < v56)
            {
              v57 = (v53 * v29);
              v58 = v38 * v55;
              do
              {
                v59 = *(*(a2 + 16) + 4 * v55);
                if ((v59 & 0x80000000) == 0 && v59 < v30)
                {
                  v60 = *(a2 + 24);
                  v61 = v60 & 2;
                  if ((v53 <= v59 || v61 == 0) && (v53 >= v59 || v61 != 0))
                  {
                    v64 = *(a2 + 32);
                    v65 = v43 % v29;
                    v66 = v43 % v29 * v29;
                    v67 = *(a3 + 200);
                    if (v53 == v59)
                    {
                      if (v67)
                      {
                        v68 = (v67 + v57);
                        v69 = (v18 + 4 * v57);
                        v70 = v37;
                        v71 = v64 + 8 * v66;
                        do
                        {
                          v72 = *v68++;
                          if ((v72 & 1) == 0)
                          {
                            *&v39[8 * *v69] = *(v71 + v58);
                          }

                          ++v69;
                          v71 += 8;
                          --v70;
                        }

                        while (v70);
                      }

                      else if ((v60 & 2) != 0)
                      {
                        v79 = v65;
                        v80 = v64 + 8 * v66 + 8 * v65;
                        do
                        {
                          *&v39[8 * *(v18 + 4 * v57 + 4 * v79++)] = *(v80 + v58);
                          v80 += 8;
                        }

                        while (v79 < v29);
                      }

                      else if ((v65 & 0x80000000) == 0)
                      {
                        v84 = (v65 + 1);
                        v85 = v64 + 8 * v66;
                        v86 = (v18 + 4 * v57);
                        do
                        {
                          v87 = *v86++;
                          *&v39[8 * v87] = *(v85 + v58);
                          v85 += 8;
                          --v84;
                        }

                        while (v84);
                      }
                    }

                    else
                    {
                      v73 = (v59 * v29);
                      v74 = (v18 + 4 * v73);
                      if (v67)
                      {
                        v75 = (v67 + v73);
                        v76 = (v64 + v58 + 8 * v66);
                        v77 = v37;
                        do
                        {
                          v78 = *v75++;
                          if ((v78 & 1) == 0)
                          {
                            *&v39[8 * *v74] = *v76;
                          }

                          ++v74;
                          ++v76;
                          --v77;
                        }

                        while (v77);
                      }

                      else
                      {
                        v81 = v64 + 8 * v66;
                        v82 = v37;
                        do
                        {
                          v83 = *v74++;
                          *&v39[8 * v83] = *(v81 + v58);
                          v81 += 8;
                          --v82;
                        }

                        while (v82);
                      }
                    }
                  }
                }

                ++v55;
                v58 += v38;
              }

              while (v55 < *(*(a2 + 8) + 8 * (v43 / v29) + 8));
            }
          }

          else if (v55 < v56)
          {
            v88 = v38 * v55 + 8 * v29 * (v43 - v29 * v53);
            do
            {
              v89 = *(*(a2 + 16) + 4 * v55);
              if ((v89 & 0x80000000) == 0 && v89 < v30)
              {
                v90 = *(a2 + 32);
                v91 = *(a3 + 200);
                v92 = (v89 * v29);
                v93 = (v18 + 4 * v92);
                if (v91)
                {
                  v94 = (v91 + v92);
                  v95 = (v90 + v88);
                  v96 = v37;
                  do
                  {
                    v97 = *v94++;
                    if ((v97 & 1) == 0)
                    {
                      *&v39[8 * *v93] = *v95;
                    }

                    ++v93;
                    ++v95;
                    --v96;
                  }

                  while (v96);
                }

                else
                {
                  v98 = v37;
                  do
                  {
                    v99 = *v93++;
                    *&v39[8 * v99] = *(v90 + v88);
                    v90 += 8;
                    --v98;
                  }

                  while (v98);
                }
              }

              ++v55;
              v88 += v38;
            }

            while (v55 < *(*(a2 + 8) + 8 * v53 + 8));
          }
        }

        v39 += 8 * v34;
        ++v36;
      }

      while (v36 < *(*(a3 + 120) + 8 * v21));
    }

    v100 = *(a3 + 152);
    v101 = *(v100 + 4 * v21);
    if (v101 > *(v100 + 4 * v19))
    {
      do
      {
        v102 = v101 - 1;
        v103 = *(*(a3 + 160) + 4 * v101 - 4);
        v104 = *(*(a3 + 96) + 4 * (v103 + 1)) - *(*(a3 + 96) + 4 * v103);
        v105 = *(*(a3 + 104) + 8 * (v103 + 1)) - *(*(a3 + 104) + 8 * v103);
        v106 = *(*(a3 + 120) + 8 * (v103 + 1)) - *(*(a3 + 120) + 8 * v103);
        if (v105 < v106)
        {
          v106 = *(*(a3 + 104) + 8 * (v103 + 1)) - *(*(a3 + 104) + 8 * v103);
        }

        *(a5 + 8 * v103) = 0;
        v20 += 8 * (v106 - v104) * (v104 - v105);
        v101 = v102;
      }

      while (v102 > *(*(a3 + 152) + 4 * v19));
    }

    v107 = v119 - v118;
    a1 = v115;
    if (v121 <= v119 - v118)
    {
      v109 = v20;
      v20 = 0;
    }

    else
    {
      v108 = v121 >= v120 ? v120 : v121;
      *(a5 + 8 * v19) = v20;
      v109 = v20 + 8 * (v108 - v107) * (v121 - (v119 - v118));
    }

    v110 = *(*(a3 + 104) + 8 * v19);
    v111 = *(a3 + 144) + 4 * v110;
    if (v115 == 40 ? sub_2367760E0(v120, v121, v107, v111, v122, v121, 0, v34, *(a4 + 56) + 8 * v110, v20, v114, v116) : sub_2367760E0(v120, v121, v107, v111, v122, v121, *(*(a4 + 40) + 8 * v19), v34, 0, v20, v114, v116))
    {
      break;
    }

    ++v19;
    v20 = v109;
    if (v21 >= *(a3 + 88))
    {
      return 0;
    }
  }

  return 4294967294;
}

void _SparseConvertFromCoordinate_Complex_Float(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int *a6@<X5>, int *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11)
{
  v11 = a2;
  v12 = a4 * a4;
  *a9 = a1;
  *(a9 + 4) = a2;
  v13 = ((a10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + 1);
  v15 = (&v13[v14 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  *(a9 + 24) = 0;
  *(a9 + 32) = v15;
  *(a9 + 24) = a5;
  *(a9 + 28) = a4;
  v16 = (v15 + 8 * a3 * v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a9 + 8) = v13;
  *(a9 + 16) = v16;
  if (!a3)
  {
    if ((a2 & 0x80000000) == 0)
    {

      bzero(((a10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * (a2 + 1));
    }

    return;
  }

  v96 = (&v13[v14 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  v18 = a5;
  v105 = a1;
  v106 = a5;
  if (a2 >= 1)
  {
    v19 = a8;
    bzero(v13 + 2, 8 * a2);
    a1 = v105;
    a5 = v106;
    a8 = v19;
  }

  v20 = (v18 >> 2) & 7;
  v21 = (&v13[v14 + 1] + 7) & 0xFFFFFFFFFFFFFFF0;
  v99 = v20;
  if (v20 == 1)
  {
    goto LABEL_12;
  }

  if (v20 != 2)
  {
    v22 = a8;
    LOBYTE(v102) = 0;
    v104 = 0;
    goto LABEL_14;
  }

  if (a4 != 1)
  {
LABEL_12:
    v22 = a8;
    v104 = (a5 & 2) == 0;
    v102 = (a5 & 2) >> 1;
LABEL_14:
    v103 = 1;
    LOBYTE(v101) = 1;
    goto LABEL_15;
  }

  v22 = a8;
  LOBYTE(v102) = 0;
  v101 = (a5 & 2) >> 1;
  v103 = (a5 & 2) == 0;
  v104 = 0;
LABEL_15:
  if (a3 >= 1)
  {
    v23 = a6;
    v24 = a7;
    v25 = a3;
    do
    {
      v27 = *v23++;
      v26 = v27;
      v29 = *v24++;
      v28 = v29;
      if ((v26 & 0x80000000) == 0 && v26 < a1)
      {
        v30 = v26 > v28 && v104;
        v31 = v103;
        if (v26 > v28)
        {
          v31 = 1;
        }

        if ((v28 & 0x80000000) == 0)
        {
          v32 = v28 < v11 && !v30;
          v33 = v32 && (v102 & (v26 < v28)) == 0;
          if (v33 && v101 & 1 | (v26 < v28) && v31)
          {
            v34 = ((a5 >> 1) & 1) == 0;
            if (v26 <= v28)
            {
              v34 = 0;
            }

            if (((v20 == 3) & ((v26 < v28) & (a5 >> 1) | v34)) == 0)
            {
              v26 = v28;
            }

            ++*(((a10 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x10 + 8 * v26);
          }
        }
      }

      --v25;
    }

    while (v25);
  }

  *(((a10 + 15) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
  v97 = v13 + 1;
  *v13 = 0;
  if (v11 >= 1)
  {
    v35 = 0;
    v36 = v14 - 1;
    v37 = v13 + 2;
    do
    {
      v35 += *v37;
      *v37++ = v35;
      --v36;
    }

    while (v36);
  }

  if (a1 >= 1)
  {
    memset_pattern16(a11, &unk_23681FAD0, 4 * a1);
    a1 = v105;
    a5 = v106;
  }

  v38 = 8 * v12;
  if (a3 >= 1)
  {
    v39 = v22;
    v40 = 0;
    v41 = a4;
    v42 = 8 * a4;
    v94 = v12;
    v95 = v11;
    do
    {
      v43 = a6[v40];
      if ((v43 & 0x80000000) != 0 || v43 >= a1)
      {
        goto LABEL_122;
      }

      v44 = a7[v40];
      v45 = v43 > v44 && v104;
      v46 = v103;
      if (v43 > v44)
      {
        v46 = 1;
      }

      if ((v44 & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      v107 = v39;
      v47 = v44 < v11 && !v45;
      v48 = v47 && (v102 & (v43 < v44)) == 0;
      if (!v48 || !(v101 & 1 | (v43 < v44)) || !v46)
      {
        goto LABEL_122;
      }

      if (v99 == 3 && (v43 > v44 ? (v49 = ((a5 >> 1) & 1) == 0) : (v49 = 0), (a5 & 2) != 0 && v43 < v44 || v49))
      {
        v55 = v97[v43];
        v97[v43] = v55 + 1;
        *(v16 + 4 * v55) = v44;
        if (a4)
        {
          v56 = 0;
          v57 = (v21 + 8 * v55 * v12);
          v58 = v39;
          v110 = v57;
          do
          {
            v59 = v41;
            v60 = v58;
            v61 = v57;
            do
            {
              *v61++ = *v60;
              v60 = (v60 + v42);
              --v59;
            }

            while (v59);
            ++v56;
            v57 = (v57 + v42);
            ++v58;
          }

          while (v56 != v41);
          v100 = v43;
          v39 = v107;
LABEL_81:
          if (a4 >= 2 && v44 == v43)
          {
            switch(v99)
            {
              case 3:
                v71 = 0;
                v72 = 0;
                do
                {
                  v73 = v72 + 1;
                  if ((a5 & 2) != 0)
                  {
                    v74 = 0;
                  }

                  else
                  {
                    v74 = v72 + 1;
                  }

                  if ((a5 & 2) != 0)
                  {
                    v75 = v72;
                  }

                  else
                  {
                    v75 = a4;
                  }

                  if (v74 < v75)
                  {
                    v76 = &v110[v72 + v41 * v74];
                    v77 = &v110[v71 + v74];
                    v78 = v75 - v74;
                    do
                    {
                      *v76 = vadd_f32(*v77, *v76);
                      *v77++ = 0;
                      v76 = (v76 + v42);
                      --v78;
                    }

                    while (v78);
                  }

                  v71 += v41;
                  v72 = v73;
                }

                while (v73 != v41);
                break;
              case 2:
                v66 = 0;
                v67 = 0;
                v68 = v110;
                do
                {
                  if ((a5 & 2) != 0)
                  {
                    v69 = 0;
                  }

                  else
                  {
                    v69 = v67;
                  }

                  ++v67;
                  if ((a5 & 2) != 0)
                  {
                    v70 = v67;
                  }

                  else
                  {
                    v70 = a4;
                  }

                  if (v70 <= v69 + 1)
                  {
                    v70 = v69 + 1;
                  }

                  bzero(&v110[v66 + v69], 8 * (v70 + ~v69) + 8);
                  if (a11[v100] == -2)
                  {
                    *v68 = 1065353216;
                  }

                  v68 = (v68 + v42 + 8);
                  v41 = a4;
                  v66 += a4;
                  a1 = v105;
                  a5 = v106;
                }

                while (a4 != v67);
                break;
              case 1:
                v62 = 0;
                v63 = 0;
                do
                {
                  if ((a5 & 2) != 0)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = v63 + 1;
                  }

                  if ((a5 & 2) != 0)
                  {
                    v65 = v63;
                  }

                  else
                  {
                    v65 = a4;
                  }

                  if (v64 < v65)
                  {
                    bzero(&v110[v64 + v62], 8 * (v65 + ~v64) + 8);
                    v41 = a4;
                    a1 = v105;
                    a5 = v106;
                  }

                  ++v63;
                  v62 += a4;
                }

                while (a4 != v63);
                break;
            }

            a11[v100] = -1;
            v12 = v94;
            v11 = v95;
            v21 = v96;
            v39 = v107;
          }
        }
      }

      else
      {
        v50 = v97[v44];
        v97[v44] = v50 + 1;
        *(v16 + 4 * v50) = v43;
        v51 = (v21 + 8 * v50 * v12);
        v52 = v12;
        v53 = v39;
        v110 = v51;
        if (a4)
        {
          do
          {
            v54 = *v53++;
            *v51++ = v54;
            --v52;
          }

          while (v52);
          v100 = v44;
          goto LABEL_81;
        }
      }

LABEL_122:
      ++v40;
      v39 = (v39 + v38);
    }

    while (v40 != a3);
  }

  if (v11 < 1)
  {
    v80 = 0;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v81 = *v13;
    do
    {
      v82 = v79;
      v13[v79++] = v80;
      v83 = v13[v79];
      if (v81 < v83)
      {
        v84 = (v21 + v38 * v81);
        do
        {
          v85 = *(v16 + 4 * v81);
          v86 = a11[v85];
          if ((v86 & 0x80000000) != 0)
          {
            if (v80 != v81)
            {
              *(v16 + 4 * v80) = v85;
              if (a4)
              {
                v89 = (v21 + 8 * v80 * v12);
                v90 = v12;
                v91 = v84;
                do
                {
                  v92 = *v91++;
                  *v89++ = v92;
                  --v90;
                }

                while (v90);
              }
            }

            a11[v85] = v80++ - LODWORD(v13[v82]);
          }

          else if (a4)
          {
            v87 = 0;
            v88 = v21 + 8 * (v13[v82] + v86) * v12;
            do
            {
              *(v88 + v87) = vadd_f32(v84[v87 / 8], *(v88 + v87));
              v87 += 8;
            }

            while (v38 != v87);
          }

          ++v81;
          v83 = v13[v79];
          v84 = (v84 + v38);
        }

        while (v81 < v83);
        v93 = v13[v82];
        if (v93 < v80)
        {
          do
          {
            a11[*(v16 + 4 * v93++)] = -1;
          }

          while (v80 != v93);
        }
      }

      v81 = v83;
    }

    while (v79 != v11);
  }

  v13[v11] = v80;
}

uint64_t sub_2367E8584(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = result;
  v14 = a5[4];
  v15 = a5[1];
  if (v14 < v15)
  {
    v16 = a5[3];
    v78 = a6;
    v17 = v16 + a10;
    while (1)
    {
      if (v14 == v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      if (v14 == v16 && v17 >= v15)
      {
        goto LABEL_101;
      }

      v19 = a5[19];
      if (v19 - v15 + v18 >= 0 && (*(a6[6] + (v19 - v15 + v18)) & 1) != 0)
      {
        goto LABEL_100;
      }

      if (v18 >= v16)
      {
        break;
      }

      if (v18 < 0)
      {
        goto LABEL_19;
      }

      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v18);
      }

      else
      {
        v20 = v18 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_21:
      v24 = *(a13 + 4 * v20);
      v25 = *(a2 + 12);
      if (v24 >= v25)
      {
        v27 = *(a2 + 4);
        v28 = v27 - *(a2 + 76);
        if (v24 < v28)
        {
          result = ((v24 - v25) / a8);
          v26 = (v24 - v25) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v13) + 4 * result) * a8;
          goto LABEL_31;
        }

        if (v27 > v24)
        {
          v26 = *(*(a2 + 88) + 4 * (v24 - v28));
          goto LABEL_31;
        }
      }

      else if ((v24 & 0x80000000) == 0)
      {
        if (*(a2 + 56))
        {
          v26 = *(*(a2 + 64) + 4 * v24);
        }

        else
        {
          v26 = v24 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_31;
      }

      v26 = 0x7FFFFFFF;
LABEL_31:
      if (v26 == v20)
      {
        v29 = (v24 - v25);
        if (v24 - v25 >= 0)
        {
          if (a11 >= 1)
          {
            v30 = (v18 - v16);
            v31 = 8 * (v16 + a9) - 8 * v16;
            v32 = v16 + a9;
            v33 = a9;
            do
            {
              if (v32 >= v16)
              {
                v36 = *a5;
                v37 = a5[18];
                if (v32 < v36 - v37)
                {
                  v38 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * (v33 / a8));
                  v39 = v33 % a8;
LABEL_45:
                  v35 = v39 + v38 * a8;
                  goto LABEL_46;
                }

                if (v32 >= v36)
                {
LABEL_43:
                  v35 = 0x7FFFFFFF;
                  goto LABEL_46;
                }

                v35 = *(*(a5 + 10) + 4 * (v32 + v37 - v36));
              }

              else
              {
                if (v32 < 0)
                {
                  goto LABEL_43;
                }

                v34 = *(a5 + 7);
                if (!v34)
                {
                  v38 = *(a7[22] + 4 * a4);
                  v39 = v16 + v33;
                  goto LABEL_45;
                }

                v35 = *(v34 + 4 * v32);
              }

LABEL_46:
              v40 = *(a12 + 4 * v35);
              if (v40 >= v25)
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 8 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 8 * *(a5 + 6) * v32 + 8 * v30);
                }

                result = *(a3 + 96) + 8 * *(a3 + 16) * v29;
                v42 = (result + 8 * (v40 - v25));
              }

              else
              {
                if ((v30 & 0x80000000) != 0)
                {
                  v41 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v32);
                }

                else if (v32 >= v16)
                {
                  v41 = (a6[12] + 8 * a6[2] * v30 + v31);
                }

                else
                {
                  v41 = (*(a5 + 5) + 8 * *(a5 + 6) * v32 + 8 * v30);
                }

                result = *(a2 + 40);
                v42 = (result + 8 * *(a2 + 48) * v40 + 8 * v29);
              }

              *v42 = vadd_f32(*v41, *v42);
              ++v32;
              ++v33;
              v31 += 8;
            }

            while (v32 < v16 + a9 + a11);
          }

          v43 = a5[18];
          v17 = v16 + a10;
          if (v43 >= 1)
          {
            v44 = 0;
            v45 = *a5;
            v77 = v45 - v43;
            v46 = a6[4];
            v47 = (v18 - v16);
            v79 = v45 - v16 - v43;
            v48 = -8 * v16 + 8 * (v45 - v43);
            v49 = v45 - v43;
            while ((*(v46 + v44) & 1) != 0)
            {
LABEL_99:
              ++v49;
              ++v44;
              v48 += 8;
              if (v77 + v44 >= v45)
              {
                goto LABEL_100;
              }
            }

            v50 = v77 + v44;
            if (v50 >= v16)
            {
              if (v50 < v77)
              {
                v53 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v79 + v44) / a8));
                v54 = (v79 + v44) % a8;
                goto LABEL_73;
              }

              v52 = *(a5 + 10);
LABEL_70:
              v55 = *(v52 + 4 * v44);
            }

            else if (v50 < 0)
            {
              v55 = 0x7FFFFFFF;
            }

            else
            {
              v51 = *(a5 + 7);
              if (v51)
              {
                v52 = v51 + 4 * v77;
                goto LABEL_70;
              }

              v53 = *(a7[22] + 4 * a4);
              v54 = v77 + v44;
LABEL_73:
              v55 = v54 + v53 * a8;
            }

            result = *(a12 + 4 * v55);
            v56 = result;
            if (result >= v25)
            {
              v59 = *a2 - *(a2 + 72);
              if (result < v59)
              {
                v17 = v16 + a10;
                a6 = v78;
                v58 = (result - v25) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((result - v25) / a8)) * a8;
                goto LABEL_84;
              }

              if (*a2 > result)
              {
                v58 = *(*(a2 + 80) + 4 * (result - v59));
                goto LABEL_84;
              }
            }

            else if ((result & 0x80000000) == 0)
            {
              v57 = *(a2 + 56);
              if (v57)
              {
                v58 = *(v57 + 4 * result);
              }

              else
              {
                v58 = result + *(a7[22] + 4 * v13) * a8;
              }

LABEL_84:
              if (v58 == v55)
              {
                if (v25 <= result)
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 8 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 8 * *(a5 + 6) * v50 + 8 * v47);
                  }

                  result = *(a3 + 96);
                  v61 = (result + 8 * *(a3 + 16) * v29 + 8 * (v56 - v25));
                }

                else
                {
                  if ((v47 & 0x80000000) != 0)
                  {
                    v60 = (*(a5 + 3) + 8 * *(a5 + 4) * v18 + 8 * v49);
                  }

                  else if (v50 >= v16)
                  {
                    v60 = (a6[12] + 8 * a6[2] * v47 + v48);
                  }

                  else
                  {
                    v60 = (*(a5 + 5) + 8 * *(a5 + 6) * v50 + 8 * v47);
                  }

                  result = *(a2 + 48);
                  v61 = (*(a2 + 40) + 8 * result * v56 + 8 * v29);
                }

                *v61 = vadd_f32(*v60, *v61);
              }

              goto LABEL_99;
            }

            v58 = 0x7FFFFFFF;
            goto LABEL_84;
          }
        }
      }

LABEL_100:
      v14 = v18 + 1;
      if (v18 + 1 >= v15)
      {
        goto LABEL_101;
      }
    }

    v21 = v15 - v19;
    v22 = __OFSUB__(v18, v21);
    v23 = v18 - v21;
    if (v23 < 0 != v22)
    {
      v20 = (v18 - v16) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v18 - v16) / a8)) * a8;
      goto LABEL_21;
    }

    if (v15 > v18)
    {
      v20 = *(*(a5 + 11) + 4 * v23);
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0x7FFFFFFF;
    goto LABEL_21;
  }

LABEL_101:
  v62 = a5[18];
  if (v62 >= 1)
  {
    v63 = 0;
    v64 = *a5;
    v65 = v64 - v62;
    v66 = a6[4];
    result = v13;
    while ((*(v66 + v63) & 1) != 0)
    {
LABEL_126:
      ++v63;
      if (v65 + v63 >= v64)
      {
        return result;
      }
    }

    v67 = v65 + v63;
    v68 = a5[3];
    if (v67 < v68)
    {
      if (v67 < 0)
      {
        v71 = 0x7FFFFFFF;
      }

      else
      {
        v69 = *(a5 + 7);
        if (v69)
        {
          v70 = v69 + 4 * v65;
LABEL_111:
          v71 = *(v70 + 4 * v63);
          goto LABEL_114;
        }

        v71 = v65 + v63 + *(a7[22] + 4 * a4) * a8;
      }

LABEL_114:
      v72 = *(a12 + 4 * v71);
      v73 = *(a2 + 12);
      if (v72 >= v73)
      {
        v76 = *a2 - *(a2 + 72);
        if (v72 < v76)
        {
          v75 = (v72 - v73) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * v13) + 4 * ((v72 - v73) / a8)) * a8;
          goto LABEL_124;
        }

        if (*a2 > v72)
        {
          v75 = *(*(a2 + 80) + 4 * (v72 - v76));
          goto LABEL_124;
        }
      }

      else if ((v72 & 0x80000000) == 0)
      {
        v74 = *(a2 + 56);
        if (v74)
        {
          v75 = *(v74 + 4 * v72);
        }

        else
        {
          v75 = v72 + *(a7[22] + 4 * v13) * a8;
        }

        goto LABEL_124;
      }

      v75 = 0x7FFFFFFF;
LABEL_124:
      if (v75 == v71)
      {
        *(v66 + v63) = 1;
      }

      goto LABEL_126;
    }

    if (v67 < v65)
    {
      v71 = (v65 + v63 - v68) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((v65 + v63 - v68) / a8)) * a8;
      goto LABEL_114;
    }

    v70 = *(a5 + 10);
    goto LABEL_111;
  }

  return result;
}

uint64_t sub_2367E8CD4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v100 = result;
  v13 = a5[3];
  if (a11 >= 1)
  {
    v14 = v13 + a9;
    v15 = v13 + a10;
    v16 = *(a2 + 12);
    v104 = 4 * v14;
    v108 = a5 + 10;
    v106 = a5 + 12;
    v17 = a5 + 6;
    v18 = a5 + 8;
    v19 = 8 * v15 - 8 * v13;
    while (1)
    {
      result = v15 - v13;
      if (v15 < v13)
      {
        break;
      }

      v21 = a5[1];
      v22 = v21 - a5[19];
      v23 = __OFSUB__(v15, v22);
      v24 = v15 - v22;
      if (v24 < 0 != v23)
      {
        v20 = (v15 - v13) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v15 - v13) / a8)) * a8;
      }

      else
      {
        if (v15 >= v21)
        {
          goto LABEL_12;
        }

        v20 = *(*(a5 + 11) + 4 * v24);
      }

LABEL_14:
      v25 = *(a13 + 4 * v20);
      v26 = (v25 - v16);
      if (v25 - v16 >= 0)
      {
        v27 = a5[4];
        if (v27 < v13)
        {
          if (result >= 0)
          {
            v28 = a5 + 10;
          }

          else
          {
            v28 = a5 + 6;
          }

          if (result >= 0)
          {
            v29 = a5 + 12;
          }

          else
          {
            v29 = a5 + 8;
          }

          do
          {
            if (v27 < 0)
            {
              v31 = 0x7FFFFFFF;
            }

            else
            {
              v30 = *(a5 + 7);
              if (v30)
              {
                v31 = *(v30 + 4 * v27);
              }

              else
              {
                v31 = v27 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v32 = *(a12 + 4 * v31);
            if (v32 >= v16)
            {
              v37 = v32 - v16;
              if (result >= 0)
              {
                v38 = v27;
              }

              else
              {
                v38 = v15;
              }

              if (result >= 0)
              {
                v39 = v15 - v13;
              }

              else
              {
                v39 = v27;
              }

              v35 = (*v28 + 8 * *v29 * v38 + 8 * v39);
              v36 = (*(a3 + 96) + 8 * *(a3 + 16) * v26 + 8 * v37);
            }

            else
            {
              if (result >= 0)
              {
                v33 = v27;
              }

              else
              {
                v33 = v15;
              }

              if (result >= 0)
              {
                v34 = v15 - v13;
              }

              else
              {
                v34 = v27;
              }

              v35 = (*v28 + 8 * *v29 * v33 + 8 * v34);
              v36 = (*(a2 + 40) + 8 * *(a2 + 48) * v32 + 8 * v26);
            }

            *v36 = vadd_f32(*v35, *v36);
            ++v27;
          }

          while (v13 != v27);
        }

        v40 = *a5;
        if (v14 < v40)
        {
          v41 = 0;
          v42 = a5[18];
          v43 = v40 - v42;
          v44 = v13 + a9 + v42 - v40;
          v45 = v104 + 4 * v42 - 4 * v40;
          v46 = 8 * v14 - 8 * v13;
          v47 = v13 + a9;
          while (((v44 + v41) & 0x80000000) == 0 && (*(*(a6 + 32) + (v44 + v41)) & 1) != 0)
          {
LABEL_72:
            ++v47;
            ++v41;
            v46 += 8;
            if (v14 + v41 >= v40)
            {
              goto LABEL_73;
            }
          }

          v48 = v14 + v41;
          if (v14 + v41 >= v13)
          {
            if (v48 < v43)
            {
              v51 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v41) / a8));
              v52 = (a9 + v41) % a8;
              goto LABEL_57;
            }

            v50 = *(a5 + 10) + v45;
LABEL_54:
            v53 = *(v50 + 4 * v41);
          }

          else if (v48 < 0)
          {
            v53 = 0x7FFFFFFF;
          }

          else
          {
            v49 = *(a5 + 7);
            if (v49)
            {
              v50 = v49 + v104;
              goto LABEL_54;
            }

            v51 = *(a7[22] + 4 * a4);
            v52 = v13 + a9 + v41;
LABEL_57:
            v53 = v52 + v51 * a8;
          }

          v54 = *(a12 + 4 * v53);
          if (v54 >= v16)
          {
            if (result < 0)
            {
              v55 = (*v17 + 8 * *v18 * v15 + 8 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 8 * *v106 * v48 + 8 * result);
            }

            v56 = (*(a3 + 96) + 8 * *(a3 + 16) * v26 + 8 * (v54 - v16));
          }

          else
          {
            if (result < 0)
            {
              v55 = (*v17 + 8 * *v18 * v15 + 8 * v47);
            }

            else if (v48 >= v13)
            {
              v55 = (*(a6 + 96) + v19 * *(a6 + 16) + v46);
            }

            else
            {
              v55 = (*v108 + 8 * *v106 * v48 + 8 * result);
            }

            v56 = (*(a2 + 40) + 8 * *(a2 + 48) * v54 + 8 * v26);
          }

          *v56 = vadd_f32(*v55, *v56);
          goto LABEL_72;
        }
      }

LABEL_73:
      ++v15;
      v19 += 8;
      if (v15 >= v13 + a10 + a11)
      {
        goto LABEL_74;
      }
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (*(a5 + 7))
      {
        v20 = *(*(a5 + 8) + 4 * v15);
      }

      else
      {
        v20 = v15 + *(a7[22] + 4 * a4) * a8;
      }

      goto LABEL_14;
    }

LABEL_12:
    v20 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_74:
  v57 = a5[19];
  if (v57 < 1)
  {
    return result;
  }

  v58 = 0;
  v59 = 0;
  v60 = v13 + a9;
  v61 = a5[1];
  v62 = *(a6 + 48);
  v63 = v61 - v57;
  v102 = 4 * v60;
  v105 = a5 + 10;
  v103 = a5 + 12;
  v109 = a5 + 6;
  v107 = a5 + 8;
  v64 = 8 * v63 - 8 * v13;
  v99 = v61;
  v101 = v63;
  do
  {
    if (*(v62 + v58))
    {
      goto LABEL_153;
    }

    v65 = v63 - v13;
    if (v63 >= v13)
    {
      if (v63 >= v101)
      {
        v66 = *(*(a5 + 11) + 4 * (v63 - v101));
      }

      else
      {
        if (v65 < a10 || v65 >= a11 + a10)
        {
          __break(1u);
          return result;
        }

        v66 = v65 % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * (v65 / a8)) * a8;
      }
    }

    else if (v63 < 0)
    {
      v66 = 0x7FFFFFFF;
    }

    else if (*(a5 + 7))
    {
      v66 = *(*(a5 + 8) + 4 * v63);
    }

    else
    {
      v66 = v63 + *(a7[22] + 4 * a4) * a8;
    }

    v67 = *(a13 + 4 * v66);
    v68 = *(a2 + 12);
    if (v67 >= v68)
    {
      v70 = *(a2 + 4);
      v71 = v70 - *(a2 + 76);
      if (v67 >= v71)
      {
        if (v70 <= v67)
        {
LABEL_96:
          v69 = 0x7FFFFFFF;
          goto LABEL_98;
        }

        v69 = *(*(a2 + 88) + 4 * (v67 - v71));
      }

      else
      {
        result = ((v67 - v68) / a8);
        v69 = (v67 - v68) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * v100) + 4 * result) * a8;
      }
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        goto LABEL_96;
      }

      if (*(a2 + 56))
      {
        v69 = *(*(a2 + 64) + 4 * v67);
      }

      else
      {
        v69 = v67 + *(a7[22] + 4 * v100) * a8;
      }
    }

LABEL_98:
    if (v69 == v66)
    {
      result = (v67 - v68);
      if (v67 - v68 >= 0)
      {
        v72 = a5[4];
        if (v72 < v13)
        {
          v74 = a5 + 8;
          v73 = a5 + 6;
          if (v65 >= 0)
          {
            v73 = a5 + 10;
            v74 = a5 + 12;
          }

          do
          {
            if (v72 < 0)
            {
              v76 = 0x7FFFFFFF;
            }

            else
            {
              v75 = *(a5 + 7);
              if (v75)
              {
                v76 = *(v75 + 4 * v72);
              }

              else
              {
                v76 = v72 + *(a7[22] + 4 * a4) * a8;
              }
            }

            v77 = *(a12 + 4 * v76);
            if (v77 >= v68)
            {
              v82 = v77 - v68;
              if (v65 >= 0)
              {
                v83 = v72;
              }

              else
              {
                v83 = v63;
              }

              if (v65 >= 0)
              {
                v84 = v63 - v13;
              }

              else
              {
                v84 = v72;
              }

              v80 = (*v73 + 8 * *v74 * v83 + 8 * v84);
              v81 = (*(a3 + 96) + 8 * *(a3 + 16) * result + 8 * v82);
            }

            else
            {
              if (v65 >= 0)
              {
                v78 = v72;
              }

              else
              {
                v78 = v63;
              }

              if (v65 >= 0)
              {
                v79 = v63 - v13;
              }

              else
              {
                v79 = v72;
              }

              v80 = (*v73 + 8 * *v74 * v78 + 8 * v79);
              v81 = (*(a2 + 40) + 8 * *(a2 + 48) * v77 + 8 * result);
            }

            *v81 = vadd_f32(*v80, *v81);
            ++v72;
          }

          while (v13 != v72);
        }

        v85 = *a5;
        if (v60 < v85)
        {
          v86 = 0;
          v87 = a5[18];
          v88 = v85 - v87;
          v89 = v13 + a9 + v87 - v85;
          v90 = v102 + 4 * v87 - 4 * v85;
          v91 = 8 * v60 - 8 * v13;
          v92 = v13 + a9;
          do
          {
            if (v89 + v86 < 0 || (*(*(a6 + 32) + (v89 + v86)) & 1) == 0)
            {
              v93 = v60 + v86;
              if (v60 + v86 >= v13)
              {
                if (v93 >= v88)
                {
                  v95 = *(*(a5 + 10) + v90 + 4 * v86);
                }

                else
                {
                  v95 = (a9 + v86) % a8 + *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * ((a9 + v86) / a8)) * a8;
                }
              }

              else if (v93 < 0)
              {
                v95 = 0x7FFFFFFF;
              }

              else
              {
                v94 = *(a5 + 7);
                if (v94)
                {
                  v95 = *(v94 + v102 + 4 * v86);
                }

                else
                {
                  v95 = v13 + a9 + v86 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v96 = *(a12 + 4 * v95);
              if (v96 >= v68)
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 8 * *v107 * v63 + 8 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 8 * *v103 * v93 + 8 * v65);
                }

                v98 = (*(a3 + 96) + 8 * *(a3 + 16) * result + 8 * (v96 - v68));
              }

              else
              {
                if (v65 < 0)
                {
                  v97 = (*v109 + 8 * *v107 * v63 + 8 * v92);
                }

                else if (v93 >= v13)
                {
                  v97 = (*(a6 + 96) + v64 * *(a6 + 16) + v91);
                }

                else
                {
                  v97 = (*v105 + 8 * *v103 * v93 + 8 * v65);
                }

                v98 = (*(a2 + 40) + 8 * *(a2 + 48) * v96 + 8 * result);
              }

              *v98 = vadd_f32(*v97, *v98);
            }

            ++v92;
            ++v86;
            v91 += 8;
          }

          while (v60 + v86 < v85);
        }

        *(v62 + v58) = 1;
        ++v59;
        v61 = v99;
      }
    }

LABEL_153:
    ++v63;
    ++v58;
    v64 += 8;
  }

  while (v63 < v61);
  if (v59 > 0)
  {
    atomic_fetch_add_explicit((a6 + 24), -v59, memory_order_release);
  }

  return result;
}

uint64_t sub_2367E95C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, void *a6, void *a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = a5[3];
  v62 = a5[1];
  if (v12 + a10 < v62)
  {
    v13 = a5[19];
    v61 = v13 - v62;
    v64 = a5 + 10;
    v14 = v12 + a10;
    v63 = a5 + 12;
    v65 = a5 + 6;
    v15 = a5 + 8;
    v60 = v62 - v13;
    for (i = 8 * a10; ; i += 8)
    {
      if (v61 + v14 < 0 || (*(a6[6] + (v61 + v14)) & 1) == 0)
      {
        v17 = v14 - v12;
        if (v14 >= v12)
        {
          v18 = v14 >= v60 ? *(*(a5 + 11) + 4 * (v14 - v60)) : (v14 - v12) % a8 + *(a7[26] + 4 * *(a7[25] + 8 * a4) + 4 * ((v14 - v12) / a8)) * a8;
        }

        else if (v14 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a5 + 7) ? *(*(a5 + 8) + 4 * v14) : v14 + *(a7[22] + 4 * a4) * a8;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        v21 = (v19 - v20);
        if (v19 - v20 >= 0)
        {
          v22 = a5[4];
          if (v22 < v12)
          {
            if (v17 >= 0)
            {
              v23 = a5 + 10;
            }

            else
            {
              v23 = a5 + 6;
            }

            if (v17 >= 0)
            {
              v24 = a5 + 12;
            }

            else
            {
              v24 = a5 + 8;
            }

            do
            {
              if (v22 < 0)
              {
                v26 = 0x7FFFFFFF;
              }

              else
              {
                v25 = *(a5 + 7);
                if (v25)
                {
                  v26 = *(v25 + 4 * v22);
                }

                else
                {
                  v26 = v22 + *(a7[22] + 4 * a4) * a8;
                }
              }

              v27 = *(a11 + 4 * v26);
              if (v27 >= v20)
              {
                v32 = v27 - v20;
                if (v17 >= 0)
                {
                  v33 = v22;
                }

                else
                {
                  v33 = v14;
                }

                if (v17 >= 0)
                {
                  v34 = v14 - v12;
                }

                else
                {
                  v34 = v22;
                }

                v30 = (*v23 + 8 * *v24 * v33 + 8 * v34);
                v31 = (*(a3 + 96) + 8 * *(a3 + 16) * v21 + 8 * v32);
              }

              else
              {
                if (v17 >= 0)
                {
                  v28 = v22;
                }

                else
                {
                  v28 = v14;
                }

                if (v17 >= 0)
                {
                  v29 = v14 - v12;
                }

                else
                {
                  v29 = v22;
                }

                v30 = (*v23 + 8 * *v24 * v28 + 8 * v29);
                v31 = (*(a2 + 40) + 8 * *(a2 + 48) * v27 + 8 * v21);
              }

              *v31 = vadd_f32(*v30, *v31);
              ++v22;
            }

            while (v12 != v22);
          }

          v35 = *a5;
          v36 = a5[18];
          v37 = v35 - v36;
          if (v12 + a9 < v35 - v36)
          {
            v38 = a7[24] + 4 * *(a7[23] + 8 * a4);
            v39 = a6[12] - 8 * v12 + a6[2] * i;
            v40 = a9;
            v41 = v12 + a9;
            do
            {
              v42 = *(a11 + 4 * (v40 % a8 + *(v38 + 4 * (v40 / a8)) * a8));
              if (v42 >= v20)
              {
                v43 = (*(a3 + 96) + 8 * *(a3 + 16) * v21 + 8 * (v42 - v20));
              }

              else
              {
                v43 = (*(a2 + 40) + 8 * *(a2 + 48) * v42 + 8 * v21);
              }

              *v43 = vadd_f32(*(v39 + 8 * v41++), *v43);
              ++v40;
            }

            while (v41 < v37);
          }

          if (v36 >= 1)
          {
            break;
          }
        }
      }

LABEL_78:
      if (++v14 >= v62)
      {
        return result;
      }
    }

    v44 = 0;
    v45 = a6[4];
    v46 = v35 - v12 - v36;
    v47 = 4 * v35 - 4 * v36;
    v48 = 8 * (v35 - v12 - v36);
    v49 = v37;
    while ((*(v45 + v44) & 1) != 0)
    {
LABEL_77:
      ++v49;
      ++v44;
      v48 += 8;
      if (v37 + v44 >= v35)
      {
        goto LABEL_78;
      }
    }

    v50 = v37 + v44;
    if (v50 >= v12)
    {
      if (v50 >= v37)
      {
        v52 = *(a5 + 10);
        goto LABEL_59;
      }

      result = ((v46 + v44) / a8);
      v54 = *(a7[24] + 4 * *(a7[23] + 8 * a4) + 4 * result);
      v55 = (v46 + v44) % a8;
    }

    else
    {
      if (v50 < 0)
      {
        v56 = 0x7FFFFFFF;
        goto LABEL_63;
      }

      v51 = *(a5 + 7);
      if (v51)
      {
        v52 = v51 + v47;
LABEL_59:
        v56 = *(v52 + 4 * v44);
LABEL_63:
        v57 = *(a11 + 4 * v56);
        if (v57 >= v20)
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 8 * *v15 * v14 + 8 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 8 * *v63 * v50 + 8 * v17);
          }

          v59 = (*(a3 + 96) + 8 * *(a3 + 16) * v21 + 8 * (v57 - v20));
        }

        else
        {
          if (v17 < 0)
          {
            v58 = (*v65 + 8 * *v15 * v14 + 8 * v49);
          }

          else if (v50 >= v12)
          {
            v58 = (a6[12] + i * a6[2] + v48);
          }

          else
          {
            v58 = (*v64 + 8 * *v63 * v50 + 8 * v17);
          }

          v59 = (*(a2 + 40) + 8 * *(a2 + 48) * v57 + 8 * v21);
        }

        *v59 = vadd_f32(*v58, *v59);
        goto LABEL_77;
      }

      v54 = *(a7[22] + 4 * a4);
      v55 = v37 + v44;
    }

    v56 = v55 + v54 * a8;
    goto LABEL_63;
  }

  return result;
}

uint64_t _SparseNumericFactorLU_Complex_Float@<X0>(__int128 *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v8 = a1[2];
  *(a6 + 56) = a1[3];
  v9 = *(a1 + 17);
  v10 = *(a1 + 3);
  *a6 = -3;
  *(a6 + 4) = *(a1 + 6) & 1;
  *(a6 + 40) = v8;
  v11 = *a1;
  *(a6 + 24) = a1[1];
  *(a6 + 8) = v11;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  atomic_fetch_add((v10 + 48), 1u);
  if (*(a3 + 4) == 4)
  {
    v12 = *(v10 + 40);
    if (!v12)
    {
      v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        sub_23672AC1C(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      _SparseTrap();
    }

    memset(&v26[14] + 4, 0, 28);
    memset(&v26[9] + 4, 0, 80);
    strcpy(v26, "nfoptions->scalingMethod=SparseScalingHungarianScalingAndOrdering is only supported if a combined symbolic+numeric call to SparseFactor() is made.\n");
    result = v12(v26);
    *a6 = -4;
    v25 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *(a6 + 80) = sub_2367E9C78(v9, *(a1 + 16), v10, 2 * *(a1 + 6), a3, a4);
    _SparseRefactorLU_Complex_Float(a2, a6, a3, a5);
    v16 = *MEMORY[0x277D85DE8];

    return sub_2367D9E50(a6);
  }

  return result;
}

uint64_t sub_2367E9C78(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v48 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v6 = (*(a3 + 24))(a4);
    if (!v6)
    {
      if (!*(a3 + 40))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23672AC58();
        }

        _SparseTrap();
      }

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
      *__str = 0u;
      v33 = 0u;
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorLU.", a4);
      (*(a3 + 40))(__str);
      v6 = 0;
      goto LABEL_28;
    }
  }

  v12 = v6 + a4;
  v13 = 4 * *(a3 + 56);
  v14 = *(a5 + 4);
  if ((v14 - 2) >= 3)
  {
    if (v14 == 1)
    {
      if (!*(a5 + 8))
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = (v6 + 151) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v15)
  {
    goto LABEL_34;
  }

  v16 = v15 + 8 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60));
  if (v16 > v12)
  {
    goto LABEL_34;
  }

  if (a2 < 2)
  {
    v17 = (v15 + 8 * (a2 * a2) * *(*(a3 + 120) + 8 * *(a3 + 60)));
    v16 = 0;
  }

  else
  {
    v17 = ((v16 + 4 * (*(a3 + 100) + *(a3 + 96)) * a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 < v17)
    {
      goto LABEL_34;
    }
  }

  if (a1 != 83)
  {
    v21 = 0;
    v24 = 0;
    v19 = 0;
    v22 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_23:
    v25 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 >= v25)
    {
      v26 = (v25 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 >= v26)
      {
        v13 = v17;
        v17 = v26;
        goto LABEL_26;
      }
    }

LABEL_34:
    __break(1u);
  }

  v18 = *(a3 + 168);
  v19 = (v17 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v19)
  {
    goto LABEL_34;
  }

  v20 = 4 * v18;
  v21 = (v19 + 4 * v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v21)
  {
    goto LABEL_34;
  }

  v22 = (v21 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v22)
  {
    goto LABEL_34;
  }

  v23 = (v22 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v23)
  {
    goto LABEL_34;
  }

  v24 = v17;
  v17 = v23;
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_21:
  v25 = 0;
LABEL_26:
  v27 = (v17 + 8 * *(a3 + 168) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 < v27)
  {
    goto LABEL_34;
  }

  v28 = *(a5 + 16);
  *v6 = *a5;
  *(v6 + 16) = v28;
  *(v6 + 32) = 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = v16;
  *(v6 + 56) = 0;
  *(v6 + 64) = v24;
  *(v6 + 72) = v19;
  *(v6 + 80) = v21;
  *(v6 + 88) = v22;
  *(v6 + 96) = v13;
  *(v6 + 104) = v25;
  *(v6 + 112) = v17;
  v29 = (v27 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(v6 + 120) = v29;
  *(v6 + 128) = v12 - v29;
  *(v6 + 136) = 0;
  bzero(v17, 8 * *(a3 + 168));
LABEL_28:
  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void _SparseRefactorLU_Complex_Float(unsigned int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v6 = a1;
  v220 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 80);
  v187 = *(a2 + 25);
  v8 = *(a1 + 28);
  v9 = *(a2 + 32);
  v10 = 2 * *(a2 + 40);
  v11 = *(a3 + 4);
  v190 = v7;
  v191 = v9;
  if (v11 <= 1)
  {
    if (*(a3 + 4))
    {
      v16 = *(a3 + 8);
      if (v16)
      {
        v17 = *a1;
        if (v17 >= 1)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            if (v8)
            {
              v20 = (v16 + 4 * *(*(v191 + 152) + 4 * i) * v8);
              v21 = (*(v7 + 96) + v18);
              v22 = v8;
              do
              {
                v23 = *v20++;
                *v21++ = v23;
                --v22;
              }

              while (v22);
            }

            v18 += 4 * v8;
          }
        }

        v24 = a1[1];
        if (v24 >= 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = v16 + 4 * v17 * v8;
          do
          {
            if (v8)
            {
              v28 = (v27 + 4 * *(*(v191 + 160) + 4 * v26) * v8);
              v29 = (*(v7 + 104) + v25);
              v30 = v8;
              do
              {
                v31 = *v28++;
                *v29++ = v31;
                --v30;
              }

              while (v30);
            }

            ++v26;
            v25 += 4 * v8;
          }

          while (v26 != v24);
        }
      }
    }
  }

  else
  {
    if (v11 == 2)
    {
      v32 = (a1[1] + *a1) * v8;
      v33 = *(a1 + 1);
      v197 = *a1;
      v198 = v33;
      v199 = *(a1 + 4);
      sub_2368065BC(&v197, *(v9 + 136), *(v9 + 144), *(v7 + 96), *(v7 + 104), a4);
LABEL_25:
      v6 = a1;
      v7 = v190;
      v4 = a4;
      goto LABEL_26;
    }

    if (v11 == 3)
    {
      v12 = *a1;
      v13 = sub_2366FD568(v12, v6[1], *(*(v6 + 1) + 8 * v6[1]), v8) + 4 * v12 * v8 + 8;
      if (v10 >= v13)
      {
        v15 = 0;
        v14 = a4;
        v13 = v10;
      }

      else
      {
        v14 = (*(v191 + 24))(v13);
        v15 = v14;
      }

      v34 = (4 * (*a1 * v8) + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = *(a1 + 1);
      v197 = *a1;
      v198 = v35;
      v199 = *(a1 + 4);
      sub_236793B94(&v197, v14, *(v190 + 96), *(v190 + 104), &v14[v34], v13 - v34);
      v6 = a1;
      v7 = v190;
      v4 = a4;
      if (v15)
      {
        (*(v191 + 32))(v15);
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v36 = *(a3 + 8);
  if (v36 && *(a3 + 4) != 1)
  {
    v37 = *v6;
    v38 = &v36[4 * v37 * v8];
    v39 = *(v7 + 96);
    if (v39)
    {
      if (v37 >= 1)
      {
        for (j = 0; j != v37; ++j)
        {
          if (v8)
          {
            v41 = &v36[4 * *(*(v191 + 152) + 4 * j) * v8];
            v42 = v8;
            v43 = v39;
            do
            {
              v44 = *v43++;
              *v41 = v44;
              v41 += 4;
              --v42;
            }

            while (v42);
          }

          v39 += v8;
        }
      }

      v45 = v6[1];
      if (v45 >= 1)
      {
        v46 = 0;
        for (k = 0; k != v45; ++k)
        {
          if (v8)
          {
            v48 = &v38[4 * *(*(v191 + 160) + 4 * k) * v8];
            v49 = (*(v7 + 104) + v46);
            v50 = v8;
            do
            {
              v51 = *v49++;
              *v48 = v51;
              v48 += 4;
              --v50;
            }

            while (v50);
          }

          v46 += 4 * v8;
        }
      }
    }

    else
    {
      if (v37 * v8 >= 1)
      {
        memset_pattern16(v36, &unk_23681FB80, 4 * (v37 * v8));
        v4 = a4;
        v6 = a1;
        v7 = v190;
      }

      if ((v6[1] * v8) >= 1)
      {
        memset_pattern16(v38, &unk_23681FB80, 4 * v6[1] * v8);
        v4 = a4;
        v6 = a1;
        v7 = v190;
      }
    }
  }

  v52 = v191;
  if (*(*(v191 + 120) + 8 * *(v191 + 60)) >= 1)
  {
    v53 = *(v191 + 64);
    v54 = &v4[8 * v53 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (&v4[v10] < v54 || &v4[v10] < ((v54 + 4 * v53 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      __break(1u);
    }

    bzero((&v4[8 * v53 + 7] & 0xFFFFFFFFFFFFFFF8), 4 * v53);
    v55 = a1;
    v7 = v190;
    v56 = *(a1 + 28);
    LODWORD(v197) = v56;
    v57 = (v56 * v56);
    v58 = v191;
    v59 = a4;
    if (*(v191 + 60) >= 1)
    {
      v60 = 0;
      v61 = 8 * v57;
      v62 = 8 * v56;
      do
      {
        v63 = v60;
        v64 = *(v58 + 120);
        v65 = *(v64 + 8 * v60++);
        v66 = *(v64 + 8 * v60);
        if (v65 != v66)
        {
          if (v65 < v66)
          {
            v67 = *(v191 + 128);
            v68 = v57 * v65;
            do
            {
              v69 = *(v67 + 4 * v65);
              *(v54 + 4 * v69) = v60;
              *&v59[8 * v69] = v68;
              ++v65;
              v68 += v57;
            }

            while (v65 < *(v64 + 8 * v60));
          }

          v70 = *(*(v191 + 160) + 4 * v63);
          v71 = *(v55 + 1);
          v72 = (v71 + 8 * v70);
          v73 = *v72;
          if (*v72 < v72[1])
          {
            v74 = v61 * v73;
            do
            {
              v75 = *(*(v55 + 2) + 4 * v73);
              if ((v75 & 0x80000000) == 0 && v75 < *v55 && v63 < *(v54 + 4 * v75))
              {
                v76 = *(v7 + 96);
                v77 = (*(v7 + 40) + 8 * *&v59[8 * v75]);
                v78 = *(v55 + 4);
                if (v76)
                {
                  if (v56)
                  {
                    v79 = 0;
                    v80 = (v76 + 4 * *(*(v191 + 136) + 4 * v75));
                    v81 = *(v7 + 104) + 4 * v63;
                    v82 = (v78 + v74);
                    do
                    {
                      v83 = v80;
                      v84 = v82;
                      v85 = v77;
                      v86 = v56;
                      do
                      {
                        v87 = *v83++;
                        v88 = v87;
                        v89 = *v84++;
                        *v85++ = vmul_n_f32(vmul_n_f32(v89, v88), *(v81 + 4 * v79));
                        --v86;
                      }

                      while (v86);
                      ++v79;
                      v77 = (v77 + v62);
                      v82 = (v82 + v62);
                    }

                    while (v79 != v56);
                  }
                }

                else
                {
                  memcpy(v77, (v78 + 8 * v73 * v57), 8 * v57);
                  v59 = a4;
                  v55 = a1;
                  v7 = v190;
                  v71 = *(a1 + 1);
                }
              }

              ++v73;
              v74 += v61;
            }

            while (v73 < *(v71 + 8 * v70 + 8));
          }
        }

        v58 = v191;
      }

      while (v60 < *(v191 + 60));
    }

    LODWORD(v90) = *(v58 + 96);
    if (v56 == 1)
    {
      v52 = v191;
      if (v90 >= 1)
      {
        v91 = 0;
        v92 = *(v7 + 40);
        do
        {
          v93 = *(*(v191 + 120) + 8 * v91);
          v94 = sub_23681E680(1.0, 0.0, *(v92 + 8 * v93), *(v92 + 8 * v93 + 4));
          v7 = v190;
          v92 = *(v190 + 40);
          v95 = v92 + 8 * v93;
          *v95 = v94;
          *(v95 + 4) = v96;
          ++v91;
        }

        while (v91 < *(v191 + 96));
      }

      v97 = *(v191 + 100);
      if (v97 >= 1)
      {
        v98 = *(v191 + 60) - v97;
        v99 = *(v7 + 40);
        do
        {
          v100 = *(*(v191 + 120) + 8 * v98);
          v101 = sub_23681E680(1.0, 0.0, *(v99 + 8 * v100), *(v99 + 8 * v100 + 4));
          v7 = v190;
          v99 = *(v190 + 40);
          v102 = v99 + 8 * v100;
          *v102 = v101;
          *(v102 + 4) = v103;
          ++v98;
        }

        while (v98 < *(v191 + 60));
      }
    }

    else if (v90 < 1)
    {
LABEL_82:
      v52 = v191;
      v108 = *(v191 + 100);
      if (v108 >= 1)
      {
        v109 = *(v191 + 60) - v108;
        do
        {
          v110 = *(*(v52 + 120) + 8 * v109) * v57;
          v111 = *(v7 + 40);
          v112 = *(v7 + 48) + 4 * v90 * v56;
          LODWORD(v213[0]) = 0;
          cgetrf_NEWLAPACK();
          v7 = v190;
          v52 = v191;
          if (LODWORD(v213[0]))
          {
            break;
          }

          LODWORD(v56) = v197;
          ++v109;
          LODWORD(v90) = v90 + 1;
        }

        while (v109 < *(v191 + 60));
      }
    }

    else
    {
      v104 = 0;
      v52 = v191;
      while (1)
      {
        v105 = *(*(v52 + 120) + 8 * v104) * v57;
        v106 = *(v7 + 40);
        v107 = *(v7 + 48) + 4 * v56 * v104;
        LODWORD(v213[0]) = 0;
        cgetrf_NEWLAPACK();
        v7 = v190;
        v52 = v191;
        if (LODWORD(v213[0]))
        {
          break;
        }

        LODWORD(v56) = v197;
        ++v104;
        v90 = *(v191 + 96);
        if (v104 >= v90)
        {
          goto LABEL_82;
        }
      }
    }

    v4 = a4;
    v6 = a1;
  }

  v113 = *(v6 + 28);
  v114 = *(v52 + 168);
  v115 = &v4[8 * v114];
  v116 = *(v52 + 52);
  if (v116 >= 2)
  {
    _X0 = 0;
    v118 = *(v52 + 56);
    v119 = 6 * v118;
    v120 = 4 * v118 + 8;
    if (v187 != 82)
    {
      v120 = 0;
    }

    v121 = v120 + 4 * v119 + 48;
    LODWORD(v213[0]) = *(v52 + 52);
    atomic_store(0, v213 + 1);
    atomic_store(0, (v213 | 0xC));
    atomic_store(0, v214);
    v122 = v215;
    do
    {
      _X5 = v216;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v122;
      v122 = _X4;
    }

    while (!_ZF);
    v217 = v120 + 4 * v119 + 48;
    v218 = &v4[8 * v114];
    v129 = &v115[40 * *(v191 + 336) + ((v121 * v116 + 7) & 0xFFFFFFFFFFFFFFF8)];
    LOBYTE(v197) = v187;
    *(&v197 + 1) = v6;
    *&v198 = v191;
    DWORD2(v198) = v113;
    v199 = v7;
    v200 = v4;
    v201 = *(v7 + 120);
    v202 = &v115[(v121 * v116 + 7) & 0xFFFFFFFFFFFFFFF8];
    v203 = sub_2367921D4(256, v129 + 16 * v116);
    v204 = v130;
    v205 = 0;
    v206 = 0;
    v207 = 0;
    v208 = v129;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v219 = &v197;
    if (*(v191 + 52))
    {
      v131 = 0;
      v132 = 0;
      do
      {
        v133 = *(v191 + 56);
        madvise(v115, 8 * v133, 3);
        madvise(&v115[8 * v133], 0x64uLL, 3);
        madvise(&v115[12 * v133], 0x64uLL, 3);
        madvise(&v115[16 * v133], 0x64uLL, 3);
        madvise(&v115[20 * v133], 0x64uLL, 3);
        *(v208 + v131 + 8) = *(v191 + 392);
        v134 = (*(v191 + 24))();
        v135 = (v208 + v131);
        *v135 = v134;
        madvise(v134, v135[1], 3);
        ++v132;
        v131 += 16;
        v115 += v121;
      }

      while (v132 < *(v191 + 52));
    }

    if (*(v190 + 128) >= 0x8000000uLL)
    {
      v136 = 0x8000000;
    }

    else
    {
      v136 = *(v190 + 128);
    }

    madvise(*(v190 + 120), v136, 3);
    if (*(v191 + 336) >= 1)
    {
      _X20 = 0;
      v138 = 0;
      v139 = 0;
      do
      {
        v140 = v139;
        if (*(*(v191 + 176) + 4 * *(*(v191 + 344) + 4 * v139++)) >= *(*(v191 + 112) + 4 * (v138 + 1)))
        {
          ++v138;
        }

        v142 = *(*(v191 + 368) + 8 * v139) - *(*(v191 + 368) + 8 * v140);
        v143 = &v202[40 * v140];
        atomic_store(v142, v143);
        *(v143 + 2) = v140;
        *(v143 + 3) = v138;
        *(v143 + 2) = sub_2367EDF30;
        if (!v142)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X24] }

          *(v143 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v143 + 4) = 0;
          v147 = _X0 & 1;
          _X2 = v147 | v143;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X24] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X20, X21, [X10] }

            *(v143 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v143 + 4) = 0;
            v147 = _X0 & 1;
            _X2 = v147 | v143;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v147)
          {
            __ulock_wake();
          }
        }
      }

      while (v139 < *(v191 + 336));
    }

    _X0 = 0;
    _X1 = 0;
    v193 = xmmword_28499C308;
    v194 = off_28499C318;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    v195 = _X0 & 0xFFFFFFFFFFFFFFFELL;
    v196 = 0;
    _X2 = &v193 | _X0 & 1;
    _X5 = 0;
    __asm { CASPL           X4, X5, X2, X3, [X8] }

    if (_X4 == _X0)
    {
      if ((_X0 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      _X2 = 0;
      do
      {
        _X5 = 0;
        __asm { CASP            X4, X5, X2, X3, [X8] }

        v195 = _X4 & 0xFFFFFFFFFFFFFFFELL;
        v196 = 0;
        _X0 = &v193 | _X4 & 1;
        _X7 = 0;
        __asm { CASPL           X6, X7, X0, X1, [X8] }
      }

      while (_X6 != _X4);
      if ((_X4 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    __ulock_wake();
LABEL_124:
    v174 = sub_2366FCD2C(v213, 1);
    if (v174)
    {
      if (v205)
      {
        v206 = v205;
        operator delete(v205);
      }

      goto LABEL_135;
    }

    if (*(v191 + 52))
    {
      v183 = 0;
      v184 = 0;
      do
      {
        (*(v191 + 32))(*(v208 + v183));
        ++v184;
        v183 += 16;
      }

      while (v184 < *(v191 + 52));
    }

    if (v205)
    {
      v206 = v205;
      operator delete(v205);
    }

LABEL_134:
    v174 = 0;
    goto LABEL_135;
  }

  v160 = *(a2 + 40);
  v161 = *(v7 + 120);
  v162 = *(v7 + 128);
  v213[0] = v161;
  v192 = 0;
  LODWORD(v193) = 0;
  v163 = (*(v52 + 24))(*(v52 + 392));
  v165 = *(v191 + 392);
  *&v197 = v163;
  *(&v197 + 1) = v165;
  if (*(v191 + 168) < 1)
  {
    v175 = 0;
    v176 = 0;
    v173 = v190;
LABEL_128:
    atomic_store(v176, (v173 + 136));
    atomic_store(v175, (v173 + 140));
    (*(v191 + 32))(v163);
    goto LABEL_134;
  }

  v166 = 0;
  v167 = 0;
  v168 = 2 * v160;
  v169 = v114;
  v170 = v161 + v162;
  v171 = v168 - 8 * v114;
  v173 = v190;
  v172 = v191;
  while (1)
  {
    if (*(*(v172 + 176) + 4 * v166) >= *(*(v172 + 112) + 4 * (v167 + 1)))
    {
      ++v167;
    }

    v174 = sub_2367EE3C0(v166, v167, a1, v187, v172, v113, v173, v164, a4, v169, v213, v170, &v193, &v192, v115, v171, &v197, 0, 0);
    if (v174)
    {
      break;
    }

    ++v166;
    v173 = v190;
    v172 = v191;
    if (v166 >= *(v191 + 168))
    {
      v175 = v192;
      v176 = v193;
      v163 = v197;
      goto LABEL_128;
    }
  }

LABEL_135:
  *a2 = v174;
  v185 = *MEMORY[0x277D85DE8];
}

void sub_2367EAB94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _SparseFactorLU_Complex_Float@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v551 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a2 + 1) + 8 * v7);
  if (a1 == 80)
  {
    v9 = 83;
  }

  else
  {
    v9 = a1;
  }

  if (v6 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = -3;
  v11 = a2[6] & 1;
  *(a5 + 4) = v11;
  *(a5 + 8) = -3;
  *(a5 + 12) = v6;
  *(a5 + 16) = v7;
  *(a5 + 20) = v11;
  v529 = a2;
  *(a5 + 24) = *(a2 + 28);
  v528 = v9;
  *(a5 + 25) = v9;
  *(a5 + 80) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 57) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v524 = (a5 + 80);
  v543 = 0;
  if (sub_236720B94(v10, v8, &v543))
  {
    v12 = *(a3 + 40);
    if (!v12)
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        sub_23672B05C(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v12(__str);
LABEL_119:
    v166 = -4;
LABEL_120:
    *a5 = v166;
LABEL_121:
    v122 = *MEMORY[0x277D85DE8];
    return result;
  }

  v14 = v543;
  v15 = (*(a3 + 24))(v543);
  if (!v15)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v14);
    result = (*(a3 + 40))(__str);
    goto LABEL_121;
  }

  v16 = v15;
  __src = v15;
  if (*(a4 + 4) == 4)
  {
    if (*(v529 + 28) != 1)
    {
      v55 = *(a3 + 40);
      if (!v55)
      {
        v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          sub_23672ACD0(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        _SparseTrap();
      }

      memset(&__str[98], 0, 158);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is only supported for blockSize=1\n");
      v55(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 16))
    {
      v17 = *(a3 + 40);
      if (!v17)
      {
        v82 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v82)
        {
          sub_23672AD0C(v82, v83, v84, v85, v86, v87, v88, v89);
        }

        _SparseTrap();
      }

      memset(&__str[123], 0, 133);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.ignoreRowsAndColumns!=NULL\n");
      v17(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    if (*(a3 + 4) == 1)
    {
      v64 = *(a3 + 40);
      if (!v64)
      {
        v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v114)
        {
          sub_23672B020(v114, v115, v116, v117, v118, v119, v120, v121);
        }

        _SparseTrap();
      }

      memset(&__str[125], 0, 131);
      strcpy(__str, "nfoptions.orderMethod=SparseScalingHungarianScalingAndOrdering is not supported with sfoptions.orderMethod==SparseOrderUser\n");
      v64(__str);
      result = (*(a3 + 32))(__src);
      goto LABEL_119;
    }

    v90 = v529;
    v91 = (*(a3 + 24))(4 * *v529);
    v92 = (*(a3 + 24))(4 * (v90[1] + *v90));
    v93 = *v529;
    v94 = &v92[v93];
    v95 = sub_2366FD568(v93, v90[1], *(*(v90 + 1) + 8 * v90[1]), 1);
    v96 = v95;
    if (v95 >= v14)
    {
      v16 = (*(a3 + 24))(v95);
    }

    v97 = *(v529 + 1);
    *__str = *v529;
    *&__str[16] = v97;
    *&__str[32] = *(v529 + 4);
    v539 = v91;
    v521 = v94;
    v522 = v92;
    v98 = sub_236793B94(__str, v91, v92, v94, v16, v96);
    if (v16 != __src)
    {
      (*(a3 + 32))(v16);
    }

    if (v98 != v529[1])
    {
      v113 = *(a3 + 40);
      if (!v113)
      {
        v157 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v157)
        {
          sub_23672AD48(v157, v158, v159, v160, v161, v162, v163, v164);
        }

        _SparseTrap();
      }

      memset(&__str[39], 0, 217);
      strcpy(__str, "Matrix is structurally rank deficient\n");
      v113(__str);
      v165 = *(a3 + 32);
      v534 = (a3 + 32);
      v165(v91);
      (*v534)(v92);
      result = (*v534)(__src);
      v166 = -2;
      goto LABEL_120;
    }
  }

  else
  {
    v521 = 0;
    v522 = 0;
    v539 = 0;
  }

  v26 = *(v529 + 1);
  *__str = *v529;
  *&__str[16] = v26;
  v27 = _SparseFromStructureComplex(__str, v542);
  *a5 = -3;
  if (*v542 >= *&v542[4])
  {
    v28 = *&v542[4];
  }

  else
  {
    v28 = *v542;
  }

  if (*v542 <= *&v542[4])
  {
    v29 = *&v542[4];
  }

  else
  {
    v29 = *v542;
  }

  v30 = v542[28];
  v31 = v28 + 1;
  v32 = 4 * v28;
  v33 = v32 + 8;
  if (v528 != 83)
  {
    v33 = 0;
  }

  v34 = v542[28] * (*&v542[4] + *v542) + 8;
  if (!*(a3 + 16))
  {
    v34 = 0;
  }

  v35 = 8 * (*&v542[4] + *v542) + 24 * v31 + v33 + v34 + 464;
  result = (*(a3 + 24))(v35, v27);
  v36 = result;
  if (!result)
  {
    if (!*(a3 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F716C();
      }

      _SparseTrap();
    }

    memset(__str, 0, 256);
    snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v35);
    (*(a3 + 40))(__str);
    goto LABEL_268;
  }

  v37 = result;
  v38 = result + v35;
  v39 = (result + 407) & 0xFFFFFFFFFFFFFFF8;
  v40 = a3;
  if (v38 >= v39)
  {
    v41 = *(a3 + 16);
    v42 = *(a3 + 32);
    *__str = *a3;
    *&__str[16] = v41;
    *&__str[32] = v42;
    result = 1;
    if ((*(a3 + 3) & 0x40) == 0)
    {
      result = sub_2366FCCD0(0x10u);
      v40 = a3;
      v37 = v36;
    }

    *v37 = *__str;
    *(v37 + 16) = *&__str[16];
    *(v37 + 32) = *&__str[32];
    *(v37 + 48) = 1;
    *(v37 + 52) = result;
    *(v37 + 56) = v28 * v30;
    *(v37 + 60) = v28;
    *(v37 + 64) = v29;
    *(v37 + 84) = 0u;
    *(v37 + 100) = 0u;
    *(v37 + 116) = 0u;
    *(v37 + 132) = 0u;
    *(v37 + 148) = 0u;
    *(v37 + 164) = 0u;
    *(v37 + 180) = 0u;
    *(v37 + 196) = 0u;
    *(v37 + 212) = 0u;
    *(v37 + 228) = 0u;
    *(v37 + 244) = 0u;
    *(v37 + 384) = 0u;
    *(v37 + 68) = 0u;
    *(v37 + 260) = 0u;
    *(v37 + 276) = 0u;
    *(v37 + 292) = 0u;
    *(v37 + 308) = 0u;
    *(v37 + 324) = 0u;
    *(v37 + 340) = 0u;
    *(v37 + 356) = 0u;
    *(v37 + 372) = 0u;
    v43 = *v542;
    v44 = (v39 + 4 * *v542 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v38 >= v44)
    {
      *(v37 + 136) = v39;
      v45 = *&v542[4];
      v46 = (v44 + 4 * *&v542[4] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v38 >= v46)
      {
        *(v37 + 144) = v44;
        v47 = (v46 + 4 * v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v38 >= v47)
        {
          *(v37 + 152) = v46;
          v48 = (v47 + 4 * v45 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v38 >= v48)
          {
            *(v37 + 160) = v47;
            v49 = v48 + 8 * v31;
            if (v49 <= v38)
            {
              v50 = 8 * v31;
              *(v37 + 120) = v48;
              v51 = v49 + v50;
              if (v49 + v50 <= v38)
              {
                *(v37 + 184) = v49;
                v52 = (v51 + v50) & 0xFFFFFFFFFFFFFFF8;
                if (v38 >= v52)
                {
                  *(v37 + 200) = v51;
                  if (v528 == 83)
                  {
                    if (v38 < ((v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_553;
                    }

                    *(v37 + 304) = v52;
                    v52 = (v52 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
                  }

                  if (!*(v40 + 16))
                  {
                    goto LABEL_49;
                  }

                  v53 = v542[28];
                  if (v38 >= ((v52 + (v45 + v43) * v542[28] + 7) & 0xFFFFFFFFFFFFFFF8))
                  {
                    *(v37 + 72) = v52;
                    *(v37 + 80) = v52 + v43 * v53;
LABEL_49:
                    v546 = 0;
                    if (sub_236720B94(v28, *(*&v542[8] + 8 * v28), &v546))
                    {
                      v54 = *(a3 + 40);
                      if (!v54)
                      {
                        v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v73)
                        {
                          sub_23672AF6C(v73, v74, v75, v76, v77, v78, v79, v80);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[56], 0, 200);
                      strcpy(__str, "Symbolic workspace requirement calculation overflowed.\n");
                      v54(__str);
                      (*(a3 + 32))(v36);
                      goto LABEL_112;
                    }

                    v56 = v546;
                    v57 = *(a3 + 16);
                    if (v57)
                    {
                      bzero(*(v36 + 72), (*&v542[4] + *v542) * v542[28]);
                      v58 = *(a3 + 16);
                      v59 = *v58;
                      if ((*v58 & 0x80000000) != 0)
                      {
                        LODWORD(v57) = 0;
                        v60 = 0;
                      }

                      else
                      {
                        v60 = 0;
                        LODWORD(v57) = 0;
                        v61 = *v542 * v542[28];
                        v62 = v58 + 1;
                        do
                        {
                          if (v59 >= v61)
                          {
                            *(*(v36 + 80) + (v59 - v61)) = 1;
                            LODWORD(v57) = v57 + 1;
                          }

                          else
                          {
                            *(*(v36 + 72) + v59) = 1;
                            ++v60;
                          }

                          v63 = *v62++;
                          v59 = v63;
                        }

                        while ((v63 & 0x80000000) == 0);
                      }

                      if (v542[24])
                      {
                        *(v36 + 72) = vextq_s8(*(v36 + 72), *(v36 + 72), 8uLL);
                        v81 = v60;
                      }

                      else
                      {
                        v81 = v57;
                        LODWORD(v57) = v60;
                      }
                    }

                    else
                    {
                      v81 = 0;
                    }

                    v99 = v542[28];
                    v100 = *v542;
                    v101 = *&v542[4];
                    v102 = *v542 * v542[28] - v57;
                    if (v102 != *&v542[4] * v542[28] - v81)
                    {
                      if (!*(a3 + 40))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          sub_23672AD84();
                        }

                        _SparseTrap();
                      }

                      memset(__str, 0, 256);
                      snprintf(__str, 0x100uLL, "Sparse LU factorization only supports square matrices, but supplied matrix without any ignored rows and columns has shape %dx%d.\n", v102, *&v542[4] * v542[28] - v81);
                      (*(a3 + 40))(__str);
                      (*(a3 + 32))(v36);
LABEL_112:
                      v111 = 0;
                      v112 = -4;
LABEL_113:
                      *a5 = v112;
                      goto LABEL_269;
                    }

                    if (*(a3 + 4) == 1)
                    {
                      v103 = *(a3 + 8);
                      if (v103)
                      {
                        if (*&v542[4] >= 1)
                        {
                          v104 = 0;
                          v105 = *(v36 + 136);
                          do
                          {
                            *(v105 + 4 * v104) = *(v103 + 4 * v104);
                            ++v104;
                          }

                          while (v104 < *&v542[4]);
                          v100 = *v542;
                        }

                        if (v100 < 1)
                        {
                          goto LABEL_133;
                        }

                        v106 = 0;
                        v107 = *(v36 + 144);
                        do
                        {
                          *(v107 + 4 * v106) = *(v103 + 4 * (v106 + *&v542[4]));
                          ++v106;
                        }

                        while (v106 < *v542);
                        v100 = *v542;
                      }

                      else
                      {
                        if (*v542 >= 1)
                        {
                          v123 = 0;
                          v124 = *(v36 + 136);
                          do
                          {
                            *(v124 + 4 * v123) = v123;
                            ++v123;
                          }

                          while (v123 < *v542);
                          v101 = *&v542[4];
                          v100 = *v542;
                        }

                        if (v101 >= 1)
                        {
                          v125 = 0;
                          v126 = *(v36 + 144);
                          do
                          {
                            *(v126 + 4 * v125) = v125;
                            ++v125;
                          }

                          while (v125 < *&v542[4]);
                          v100 = *v542;
                        }
                      }

                      if (v100 >= 1)
                      {
                        v127 = 0;
                        v128 = *(v36 + 152);
                        v129 = *(v36 + 136);
                        do
                        {
                          *(v128 + 4 * *(v129 + 4 * v127)) = v127;
                          ++v127;
                        }

                        while (v127 < *v542);
                      }

LABEL_133:
                      v130 = *&v542[4];
                      if (*&v542[4] >= 1)
                      {
                        v131 = 0;
                        v132 = *(v36 + 160);
                        v133 = *(v36 + 144);
                        do
                        {
                          *(v132 + 4 * *(v133 + 4 * v131)) = v131;
                          ++v131;
                          v130 = *&v542[4];
                        }

                        while (v131 < *&v542[4]);
                      }

                      if (v57 > 0)
                      {
                        v134 = sub_236721ACC(*v542, v99, *(v36 + 136), *(v36 + 152), *(v36 + 72), __src);
                        *(v36 + 88) = v134;
                        v28 = (*(v36 + 60) - v134);
                        *(v36 + 60) = v28;
                        v130 = *&v542[4];
                      }

                      if (v81 <= 0)
                      {
                        v135 = *(v36 + 92);
                      }

                      else
                      {
                        v135 = sub_236721ACC(v130, v542[28], *(v36 + 144), *(v36 + 160), *(v36 + 80), __src);
                        *(v36 + 92) = v135;
                        v130 = *&v542[4];
                      }

                      if (*v542 - *(v36 + 88) == v130 - v135)
                      {
                        v136 = sub_236798D30(v28, v542, *(v36 + 136), *(v36 + 160), (v36 + 96), (v36 + 100), (v36 + 104), __src);
                        if (v136 >= 1)
                        {
                          if (!*(a3 + 40))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              sub_23672AEB0();
                            }

                            _SparseTrap();
                          }

                          memset(__str, 0, 256);
                          snprintf(__str, 0x100uLL, "User-supplied ordering does not place an entry on diagonal %d.", v136 - 1);
                          (*(a3 + 40))(__str);
                          (*(a3 + 32))(v36);
                          goto LABEL_112;
                        }

                        v175 = (*(a3 + 24))(4 * *(v36 + 104) + 4);
                        v176 = v36;
                        *(v36 + 112) = v175;
                        v177 = __src;
                        memcpy(v175, __src, 4 * *(v36 + 104) + 4);
                        v178 = v28;
                        v179 = v56;
                        goto LABEL_195;
                      }

                      v137 = *(a3 + 40);
                      if (!v137)
                      {
                        v167 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v167)
                        {
                          sub_23672AE38(v167, v168, v169, v170, v171, v172, v173, v174);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[74], 0, 182);
                      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
                      v137(__str);
                      *a5 = -4;
                      (*(a3 + 32))(v36);
LABEL_268:
                      v111 = 0;
LABEL_269:
                      v295 = a3;
LABEL_270:
                      v296 = v539;
LABEL_271:
                      v527 = v111;
                      if (v296)
                      {
                        (*(v295 + 32))();
                        v295 = a3;
                        v111 = v527;
                      }

                      if (!v111)
                      {
                        result = (*(v295 + 32))(__src);
                        goto LABEL_121;
                      }

                      v297 = *(v529 + 28);
                      v298 = *(v111 + 168);
                      if (v298 >= 0)
                      {
                        v299 = v298;
                      }

                      else
                      {
                        v299 = -v298;
                      }

                      v300 = 8 * v299;
                      if (v298 < 0)
                      {
                        v300 = -8 * v299;
                      }

                      v301 = v300 + 40;
                      v302 = v300 >= 0xFFFFFFFFFFFFFFD8 || v298 < 0;
                      v532 = (v297 * v297);
                      v303 = *(v111 + 336);
                      v304 = MEMORY[0x277D85FA0];
                      if (v303 < 1)
                      {
                        v308 = 0;
                        v307 = 0;
                        v350 = 0;
                        v349 = 0;
                      }

                      else
                      {
                        v517 = v299;
                        v518 = *(v111 + 168);
                        v519 = v300 + 40;
                        v305 = 0;
                        v306 = 0;
                        v307 = 0;
                        v308 = 0;
                        v309 = *(v111 + 344);
                        v310 = *(v111 + 384);
                        v520 = *(v529 + 28);
                        v525 = (2 * v297);
                        v311 = *MEMORY[0x277D85FA0] - 1;
                        v312 = -*MEMORY[0x277D85FA0];
                        v315 = *v309;
                        v313 = v309 + 1;
                        v314 = v315;
                        do
                        {
                          v535 = *v313;
                          v316 = *v313;
                          v317 = *v310;
                          v538 = v310 + 1;
                          v540 = v313 + 1;
                          v318 = *v310 >> 63;
                          v541 = 0;
                          v319 = sub_23681EB64(v317, v318, v532, 0, &v541);
                          if ((v320 << 63 >> 63) ^ v320 | v541)
                          {
                            v321 = 1;
                          }

                          else
                          {
                            v321 = v320 << 63 >> 63 == -1;
                          }

                          v322 = v321;
                          v323 = v302 | v322;
                          if ((v528 & 0xFE) == 0x52)
                          {
                            v324 = *(v527[22] + 4 * v316) - *(v527[22] + 4 * v314);
                            v325 = v525 * v324;
                            v323 |= ((((v324 * v525) >> 64) + (v324 >> 63) * v525) << 63) >> 63 == -1;
                          }

                          else
                          {
                            v325 = 0;
                          }

                          v326 = 0;
                          if (v316 - v314 < 0)
                          {
                            v331 = 0;
                            v332 = 0;
                            v333 = 0;
                            v330 = 1;
                          }

                          else
                          {
                            v327 = 24 * (v316 - v314);
                            v328 = v327 + 4 * v325;
                            v329 = __CFADD__(v327, 4 * v325);
                            v330 = 1;
                            v331 = 0;
                            v332 = 0;
                            if (v325 >> 62)
                            {
                              v333 = 0;
                            }

                            else
                            {
                              v333 = 0;
                              if (!v329)
                              {
                                v333 = v328 + 4 * v319;
                                v334 = __CFADD__(v328, 4 * v319);
                                if (v319 >> 62)
                                {
                                  v326 = 0;
                                  v331 = 0;
                                  v332 = 0;
                                }

                                else
                                {
                                  v332 = v328 + 8 * v319;
                                  v335 = __CFADD__(v328, 8 * v319);
                                  v336 = v319 >> 60 != 0;
                                  v337 = __CFADD__(v328, 16 * v319);
                                  v338 = v328 + 16 * v319;
                                  if (v337)
                                  {
                                    v336 = 1;
                                  }

                                  v339 = !v335;
                                  if (v335)
                                  {
                                    v340 = 0;
                                  }

                                  else
                                  {
                                    v340 = v338;
                                  }

                                  if (v339)
                                  {
                                    v341 = v332;
                                  }

                                  else
                                  {
                                    v341 = 0;
                                  }

                                  if (!v339)
                                  {
                                    v336 = 1;
                                  }

                                  if (v319 >> 61)
                                  {
                                    v340 = 0;
                                    v341 = 0;
                                    v342 = 1;
                                  }

                                  else
                                  {
                                    v342 = v336;
                                  }

                                  v343 = !v334;
                                  if (v334)
                                  {
                                    v326 = 0;
                                  }

                                  else
                                  {
                                    v326 = v340;
                                  }

                                  if (v343)
                                  {
                                    v331 = v341;
                                  }

                                  else
                                  {
                                    v331 = 0;
                                  }

                                  if (v343)
                                  {
                                    v330 = v342;
                                  }

                                  else
                                  {
                                    v332 = 0;
                                    v330 = 1;
                                  }
                                }
                              }
                            }
                          }

                          v344 = v330 | v323 & 1;
                          v345 = (v333 + v311) & v312;
                          v346 = (v332 + v311) & v312;
                          v347 = (v331 + v311) & v312;
                          v348 = (v326 + v311) & v312;
                          v337 = __CFADD__(v306, v348);
                          v306 += v348;
                          if (v337)
                          {
                            v344 = 1;
                          }

                          v337 = __CFADD__(v305, v347);
                          v305 += v347;
                          if (v337)
                          {
                            v344 = 1;
                          }

                          v337 = __CFADD__(v308, v346);
                          v308 += v346;
                          if (v337)
                          {
                            v344 = 1;
                          }

                          v337 = __CFADD__(v307, v345);
                          v307 += v345;
                          if (v337)
                          {
                            v302 = 1;
                          }

                          else
                          {
                            v302 = v344;
                          }

                          v310 = v538;
                          v314 = v535;
                          --v303;
                          v313 = v540;
                        }

                        while (v303);
                        v349 = (v305 + 1) >> 1;
                        v350 = (v306 + 1) >> 1;
                        v295 = a3;
                        v111 = v527;
                        v304 = MEMORY[0x277D85FA0];
                        v297 = v520;
                        v301 = v519;
                        v298 = v518;
                        v299 = v517;
                      }

                      if (v307 > v349)
                      {
                        v349 = v307;
                      }

                      if (v308 > v350)
                      {
                        v350 = v308;
                      }

                      v321 = v298 < 0;
                      v351 = v298 < 0;
                      v352 = 16 * v299;
                      if (v321)
                      {
                        v352 = -v352;
                      }

                      v337 = __CFADD__(v352, 32);
                      v353 = v352 + 32;
                      if (v337)
                      {
                        v351 = 1;
                      }

                      v337 = __CFADD__(v353, v301);
                      v354 = v353 + v301;
                      v355 = v337;
                      if (v351)
                      {
                        v354 = v301;
                      }

                      v356 = (v351 || v302) | v355;
                      if (v528 == 83)
                      {
                        v357 = v356;
                      }

                      else
                      {
                        v357 = v302;
                      }

                      if (v528 == 83)
                      {
                        v358 = v354;
                      }

                      else
                      {
                        v358 = v301;
                      }

                      v359 = *(*(v111 + 120) + 8 * *(v111 + 60));
                      v360 = v359 * v532;
                      v361 = v357 || (v359 * v532) >> 64 != (v359 * v532) >> 63;
                      if (v297 == 1)
                      {
                        v362 = 0;
                      }

                      else
                      {
                        v362 = 4 * v297 * (*(v111 + 100) + *(v111 + 96)) + 8;
                      }

                      v337 = __CFADD__(v358, v362);
                      v363 = v358 + v362;
                      if (v337)
                      {
                        v364 = (v362 >> 63) + 1;
                      }

                      else
                      {
                        v364 = v362 >> 63;
                      }

                      v366 = v364 << 63 >> 63 != v364 || v364 << 63 >> 63 == -1;
                      v337 = __CFADD__(*v304, v363);
                      v367 = *v304 + v363;
                      if (v337)
                      {
                        v366 = 1;
                      }

                      v368 = v361 || v366;
                      v369 = *(v111 + 56);
                      v370 = v360 >> 63;
                      v337 = __CFADD__(v360, 2 * v369);
                      v371 = v360 + 2 * v369;
                      if (v337)
                      {
                        v372 = v370 + 1;
                      }

                      else
                      {
                        v372 = v370;
                      }

                      v373 = v372 << 63 >> 63;
                      v374 = v373 != v372;
                      if (v368)
                      {
                        goto LABEL_427;
                      }

                      if ((*(v111 + 56) >> 63))
                      {
                        goto LABEL_427;
                      }

                      if (v374)
                      {
                        goto LABEL_427;
                      }

                      if (v373 < 0)
                      {
                        goto LABEL_427;
                      }

                      v375 = 4 * v371 + 144;
                      if (v371 >> 62 || 4 * v371 >= 0xFFFFFFFFFFFFFF70)
                      {
                        goto LABEL_427;
                      }

                      v337 = __CFADD__(v375, v367);
                      v376 = v375 + v367;
                      v377 = v337;
                      v378 = v349 + v376;
                      v379 = __CFADD__(v349, v376);
                      *(a5 + 56) = v378;
                      if (v377)
                      {
                        goto LABEL_427;
                      }

                      if (v379)
                      {
                        goto LABEL_427;
                      }

                      v380 = 8 * v371 + 144;
                      if (v371 >> 61 || 8 * v371 >= 0xFFFFFFFFFFFFFF70)
                      {
                        goto LABEL_427;
                      }

                      v337 = __CFADD__(v380, v367);
                      v381 = v380 + v367;
                      v382 = v337;
                      v337 = __CFADD__(v350, v381);
                      v383 = v350 + v381;
                      v384 = v337;
                      *(a5 + 64) = v383;
                      if (v382 || v384)
                      {
LABEL_427:
                        v397 = *(v295 + 40);
                        if (!v397)
                        {
                          v398 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                          if (v398)
                          {
                            sub_23672AFE4(v398, v399, v400, v401, v402, v403, v404, v405);
                          }

                          _SparseTrap();
                        }

                        memset(&__str[40], 0, 216);
                        strcpy(__str, "Computation of factor size overflowed.\n");
                        v397(__str);
                        (*(a3 + 32))(__src);
                        result = sub_23680EF08(v527, a3);
                        goto LABEL_121;
                      }

                      v385 = *(v111 + 64);
                      *(v111 + 392) = 8;
                      v386 = *(v111 + 56);
                      if (v386 >= 0)
                      {
                        v387 = v386;
                      }

                      else
                      {
                        v387 = -v386;
                      }

                      v388 = 8 * (v387 + 2 * v387);
                      if (v386 < 0)
                      {
                        v388 = -8 * (v387 + 2 * v387);
                      }

                      v389 = v388 + 48;
                      v390 = v388 >= 0xFFFFFFFFFFFFFFD0;
                      if (v528 == 82)
                      {
                        v321 = v386 < 0;
                        v391 = v386 < 0;
                        v392 = 4 * v387;
                        if (v321)
                        {
                          v392 = -v392;
                        }

                        v337 = __CFADD__(v392, 8);
                        v393 = v392 + 8;
                        if (v337)
                        {
                          v391 = 1;
                        }

                        v337 = __CFADD__(v393, v389);
                        v394 = v393 + v389;
                        v395 = v337;
                        if (!v391)
                        {
                          v389 = v394;
                        }

                        LOBYTE(v396) = v391 | v395;
                      }

                      else
                      {
                        v396 = v386 >> 31;
                      }

                      v406 = 0;
                      v407 = v390 | v396;
                      v408 = *(v111 + 52);
                      v409 = v408 < 0;
                      if (v408 >= 0)
                      {
                        v410 = v408;
                      }

                      else
                      {
                        v410 = -v408;
                      }

                      v411 = !is_mul_ok(v410, v389);
                      v412 = v410 * v389;
                      if (!(v410 * v389))
                      {
                        v409 = 0;
                      }

                      v413 = 1;
                      if (!v411 && !v409)
                      {
                        v406 = 0;
                        if (v408 >= 0)
                        {
                          v414 = v412;
                        }

                        else
                        {
                          v414 = -v412;
                        }

                        v415 = *(v111 + 168);
                        if (v415 >= 0)
                        {
                          v416 = *(v111 + 168);
                        }

                        else
                        {
                          v416 = -v415;
                        }

                        v417 = 8 * v416;
                        if (v415 < 0)
                        {
                          v417 = -v417;
                        }

                        v337 = __CFADD__(v414, v417);
                        v418 = v414 + v417;
                        v419 = v337;
                        v413 = 1;
                        if ((v415 & 0x80000000) == 0 && (v419 & 1) == 0)
                        {
                          v406 = v418 + 8;
                          v413 = v418 >= 0xFFFFFFFFFFFFFFF8;
                        }
                      }

                      v420 = v413 | v407 & 1;
                      if (v408 >= 2)
                      {
                        v421 = *(v111 + 336);
                        if (v421 >= 0)
                        {
                          v422 = *(v111 + 336);
                        }

                        else
                        {
                          v422 = -v421;
                        }

                        v423 = 40 * v422;
                        if (v421 < 0)
                        {
                          v423 = -v423;
                        }

                        v424 = v406 + v423;
                        v425 = __CFADD__(v406, v423);
                        v426 = 1;
                        if ((v421 & 0x80000000) == 0 && !v425)
                        {
                          v427 = v424 + 49152;
                          if (v424 >= 0xFFFFFFFFFFFF4000 || (v337 = __CFADD__(v427, 16 * v410), v428 = v427 + 16 * v410, v337))
                          {
                            v426 = 1;
                          }

                          else
                          {
                            v406 = v428 + 24;
                            v426 = v428 >= 0xFFFFFFFFFFFFFFE8;
                          }
                        }

                        v420 |= v426;
                      }

                      v481 = 12 * v385 + 16;
                      if (v481 <= v406)
                      {
                        v481 = v406;
                      }

                      *(a5 + 40) = v481;
                      *(a5 + 48) = v481;
                      if (!v420)
                      {
                        v483 = 2 * v481;
                        if (2 * v481 <= v543 || ((*(v295 + 32))(__src), __src = (*(a3 + 24))(v483), v111 = v527, __src))
                        {
                          *(a5 + 8) = 0;
                          *(a5 + 32) = v111;
                          v484 = sub_2367E9C78(v528, *(a5 + 24), v111, 2 * v378, a4, 0);
                          if (v484)
                          {
                            v485 = __src;
                            *v524 = v484;
                            if (v522)
                            {
                              v486 = *(v529 + 28);
                              v487 = *v529;
                              if (v487 >= 1)
                              {
                                v488 = 0;
                                for (i = 0; i != v487; ++i)
                                {
                                  if (v486)
                                  {
                                    v490 = (*(v484 + 96) + v488);
                                    v491 = &v522[*(v527[19] + 4 * i) * v486];
                                    v492 = v486;
                                    do
                                    {
                                      v493 = *v491++;
                                      *v490++ = v493;
                                      --v492;
                                    }

                                    while (v492);
                                  }

                                  v488 += 4 * v486;
                                }
                              }

                              v494 = v529[1];
                              if (v494 >= 1)
                              {
                                v495 = 0;
                                for (j = 0; j != v494; ++j)
                                {
                                  if (v486)
                                  {
                                    v497 = (*(v484 + 104) + v495);
                                    v498 = &v521[*(v527[20] + 4 * j) * v486];
                                    v499 = v486;
                                    do
                                    {
                                      v500 = *v498++;
                                      *v497++ = v500;
                                      --v499;
                                    }

                                    while (v499);
                                  }

                                  v495 += 4 * v486;
                                }
                              }

                              (*(a3 + 32))(v522, v521, v527, __src);
                              v485 = __src;
                            }

                            _SparseRefactorLU_Complex_Float(v529, a5, a4, v485);
                            (*(a3 + 32))(__src);
                            result = sub_2367D9E50(a5);
                          }

                          else
                          {
                            result = (*(a3 + 32))(__src);
                          }
                        }

                        else
                        {
                          if (!*(a3 + 40))
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              sub_2366F716C();
                            }

                            _SparseTrap();
                          }

                          memset(__str, 0, 256);
                          snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v483);
                          result = (*(a3 + 40))(__str);
                        }

                        goto LABEL_121;
                      }

                      v482 = *(v295 + 40);
                      if (!v482)
                      {
                        v501 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v501)
                        {
                          sub_23672AFA8(v501, v502, v503, v504, v505, v506, v507, v508);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[73], 0, 183);
                      strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
                      v482(__str);
                      result = (*(a3 + 32))(__src);
                      goto LABEL_119;
                    }

                    v545 = 0uLL;
                    *&v544 = __PAIR64__(*v542, *&v542[4]);
                    *(&v544 + 1) = __src;
                    v108 = (4 * *(*&v542[8] + 8 * *&v542[4]) + 7) & 0xFFFFFFFFFFFFFFF8;
                    v536 = v56;
                    *&v545 = &__src[2 * *v542 + 2];
                    v109 = (v545 + v108);
                    if (sub_236750FA0(v542, &v544, *(v36 + 72), *(v36 + 80), (v36 + 88), (v36 + 92), (v36 + 96), (v36 + 100), *(v36 + 152), *(v36 + 160), v545 + v108))
                    {
                      v110 = *(a3 + 40);
                      if (!v110)
                      {
                        v148 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v148)
                        {
                          sub_23672ADFC(v148, v149, v150, v151, v152, v153, v154, v155);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[33], 0, 223);
                      strcpy(__str, "Matrix is structurally singular.");
                      v110(__str);
                      (*(a3 + 32))(v36);
LABEL_156:
                      v156 = -2;
LABEL_157:
                      *a5 = v156;
LABEL_510:
                      v295 = a3;
                      v111 = 0;
                      goto LABEL_270;
                    }

                    v138 = *v542;
                    v139 = vsub_s32(*v542, *(v36 + 88));
                    v140 = *(v36 + 60) - *(v36 + 88);
                    *(v36 + 60) = v140;
                    if ((vceq_s32(v139, vdup_lane_s32(v139, 1)).u8[0] & 1) == 0)
                    {
                      v180 = *(a3 + 40);
                      if (!v180)
                      {
                        v464 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        if (v464)
                        {
                          sub_23672AE38(v464, v465, v466, v467, v468, v469, v470, v471);
                        }

                        _SparseTrap();
                      }

                      memset(&__str[74], 0, 182);
                      strcpy(__str, "After removing ignored rows and columns, resulting matrix is not square.\n");
                      v180(__str);
                      *a5 = -4;
                      (*(a3 + 32))(v36);
                      goto LABEL_510;
                    }

                    v141 = v36;
                    v142 = *(v36 + 96);
                    v143 = *(v36 + 100) + v142;
                    if (v539)
                    {
                      v144 = *(v36 + 152);
                      v145 = *(v36 + 160);
                      v146 = v109;
                      if (v138 >= 1)
                      {
                        v147 = 0;
                        do
                        {
                          *(v145 + v147) = *&v539[4 * *(v144 + v147)];
                          v147 += 4;
                        }

                        while (4 * v138 != v147);
                      }
                    }

                    else
                    {
                      *__str = *v542;
                      *&__str[16] = *&v542[16];
                      *v549 = v544;
                      *&v549[16] = v545;
                      v181 = v140;
                      if (sub_236710A64(__str, v549, v140 - v143, *(v36 + 152) + 4 * v142, v140 - v143, (*(v36 + 160) + 4 * v142), v109) != v140 - v143)
                      {
                        v472 = *(a3 + 40);
                        if (!v472)
                        {
                          v509 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                          if (v509)
                          {
                            sub_23672AE74(v509, v510, v511, v512, v513, v514, v515, v516);
                          }

                          _SparseTrap();
                        }

                        memset(&__str[74], 0, 182);
                        strcpy(__str, "Unable to construct maximal transversal, matrix is structurally singular.");
                        v472(__str);
                        goto LABEL_156;
                      }

                      v141 = v36;
                      v144 = *(v36 + 152);
                      v145 = *(v36 + 160);
                      v140 = v181;
                      v146 = v109;
                    }

                    v531 = v140;
                    *__str = *v542;
                    *&__str[16] = *&v542[16];
                    v182 = sub_2367D4EEC(__str, v140 - v143, (v144 + 4 * *(v141 + 96)), (v145 + 4 * *(v141 + 96)), v146, v146 + ((4 * (v140 - v143) + 11) & 0xFFFFFFFFFFFFFFF8));
                    *(v36 + 104) = v182;
                    v183 = (*(a3 + 24))(4 * v182 + 4);
                    v184 = v36;
                    *(v36 + 112) = v183;
                    if ((*(v36 + 104) & 0x80000000) != 0)
                    {
                      goto LABEL_186;
                    }

                    v185 = v109;
                    v186 = 0;
                    do
                    {
                      *(v183 + 4 * v186) = *(v36 + 96) + *&v109[4 * v186];
                      v187 = *(v36 + 104);
                      v321 = v186++ < v187;
                    }

                    while (v321);
                    if (v187 < 1)
                    {
LABEL_186:
                      v176 = v184;
                      if (*v542 >= 1)
                      {
                        v214 = 0;
                        v215 = *(v184 + 136);
                        v216 = *(v184 + 152);
                        do
                        {
                          *(v215 + 4 * *(v216 + 4 * v214)) = v214;
                          ++v214;
                        }

                        while (v214 < *v542);
                      }

                      v177 = __src;
                      v179 = v536;
                      if (*&v542[4] >= 1)
                      {
                        v217 = 0;
                        v218 = *(v184 + 144);
                        v219 = *(v184 + 160);
                        do
                        {
                          *(v218 + 4 * *(v219 + 4 * v217)) = v217;
                          ++v217;
                        }

                        while (v217 < *&v542[4]);
                      }

                      v220 = *(a3 + 8);
                      if (v220)
                      {
                        memcpy(v220, *(v184 + 136), 4 * *v542);
                        memcpy((*(a3 + 8) + 4 * *v542), *(v176 + 144), 4 * *&v542[4]);
                      }

                      v178 = v531;
LABEL_195:
                      v221 = v178 - (*(v176 + 96) + *(v176 + 100));
                      *__str = v221;
                      *&__str[4] = v221;
                      *&__str[16] = 0;
                      *&__str[24] = 0;
                      *&__str[8] = v177;
                      *v549 = v221;
                      *&v549[4] = v221;
                      v222 = &v177[2 * v221 + 8 + 2 * v221];
                      *&v549[16] = 0;
                      *&v549[24] = 0;
                      *&v549[8] = &v177[2 * v221 + 4];
                      v223 = 4 * *(*&v542[8] + 8 * v178);
                      v224 = (v223 + 7) & 0xFFFFFFFFFFFFFFF8;
                      v537 = v179;
                      v225 = &v222[v224];
                      v547 = *v542;
                      v548 = *&v542[16];
                      sub_236789F74(&v547, *(v176 + 104), *(v176 + 112), *(v176 + 136), *(v176 + 144), __str, v549, v222, v223, &v222[v224]);
                      v226 = 8 * v221;
                      *(v36 + 216) = (*(a3 + 24))(v226 + 8);
                      *(v36 + 240) = (*(a3 + 24))(v226 + 8);
                      sub_23676C728(v528, v221, *&__str[8], *&__str[16], *&v549[8], *&v549[16], (v36 + 168), (v36 + 176), *(v36 + 184), (v36 + 192), *(v36 + 200), (v36 + 208), *(v36 + 216), (v36 + 224), (v36 + 232), v542[28], a3, v225);
                      v227 = sub_23676DFE0(*(v36 + 60), *(v36 + 168), *(*(v36 + 216) + 8 * *(v36 + 168)));
                      if (v227 <= v537)
                      {
                        sub_23676E074(v36, v542[28], __src);
                      }

                      else
                      {
                        v228 = (*(a3 + 24))(v227);
                        sub_23676E074(v36, v542[28], v228);
                        if (v228 != __src)
                        {
                          (*(a3 + 32))(v228);
                        }
                      }

                      v229 = sub_2366F8F4C(v221, *(v36 + 168));
                      v230 = v229;
                      v231 = __src;
                      if (v229 > v537)
                      {
                        v231 = (*(a3 + 24))(v229);
                      }

                      sub_2366F8F68(v528, v221, *(v36 + 168), *(v36 + 176), *(v36 + 184), *(v36 + 192), *(v36 + 200), *(v36 + 208), *(v36 + 216), *(v36 + 224), *(v36 + 232), *(v36 + 240), (v36 + 248), (v36 + 256), *(v36 + 304), a3, v231, v230);
                      if (v231 != __src)
                      {
                        (*(a3 + 32))(v231);
                      }

                      v232 = sub_2366FAB28(*(v36 + 60), *(v36 + 168));
                      v233 = __src;
                      if (v232 > v537)
                      {
                        v233 = (*(a3 + 24))(v232, __src);
                      }

                      sub_2366FAB3C(v36, v233);
                      if ((*(v36 + 168) & 0x80000000) == 0)
                      {
                        v234 = *(v36 + 176);
                        v235 = -1;
                        do
                        {
                          *v234++ += *(v36 + 96);
                          v236 = *(v36 + 168);
                          ++v235;
                        }

                        while (v235 < v236);
                        if (v236 >= 1)
                        {
                          v237 = 0;
                          v238 = *(v36 + 184);
                          v239 = *(v36 + 200);
                          v240 = *v238;
                          do
                          {
                            v241 = v237++;
                            v242 = v238[v237];
                            v243 = v242 - v240;
                            if (v242 > v240)
                            {
                              v244 = (*(v36 + 192) + 4 * v240);
                              do
                              {
                                *v244++ += *(v36 + 96);
                                --v243;
                              }

                              while (v243);
                            }

                            v245 = *(v239 + 8 * v241);
                            v246 = *(v239 + 8 * v237);
                            v321 = v246 <= v245;
                            v247 = v246 - v245;
                            if (!v321)
                            {
                              v248 = (*(v36 + 208) + 4 * v245);
                              do
                              {
                                *v248++ += *(v36 + 96);
                                --v247;
                              }

                              while (v247);
                            }

                            v240 = v242;
                          }

                          while (v237 < *(v36 + 168));
                        }
                      }

                      if (v528 == 83)
                      {
                        LODWORD(v249) = *(v36 + 96);
                        v250 = *(v36 + 60) - *(v36 + 100);
                        if (v250 > v249)
                        {
                          v251 = *(v36 + 304) - 4;
                          do
                          {
                            *(v251 + 4 * v250) = *(v251 + 4 * v250 - 4 * v249);
                            v249 = *(v36 + 96);
                            --v250;
                          }

                          while (v250 > v249);
                        }
                      }

                      v252 = (*(a3 + 24))(8 * *v542 + 16);
                      *(v36 + 312) = v252;
                      v253 = *v542;
                      v254 = *&v542[4];
                      v255 = *&v542[8];
                      v256 = *&v542[16];
                      v257 = v252 + 2;
                      bzero(v252 + 2, 8 * *v542);
                      if (v254 >= 1)
                      {
                        v258 = 0;
                        v259 = *(v36 + 144);
                        v260 = *(v36 + 96);
                        do
                        {
                          v261 = *(v259 + 4 * v258);
                          if (v261 >= v260 && v261 < *(v36 + 60) - *(v36 + 100))
                          {
                            v262 = (v255 + 8 * v258);
                            v263 = *v262;
                            v264 = v262[1];
                            while (v263 < v264)
                            {
                              v265 = *(v256 + 4 * v263);
                              if ((v265 & 0x80000000) == 0 && v265 < v253)
                              {
                                v266 = *(*(v36 + 136) + 4 * v265);
                                if (v266 <= v261)
                                {
                                  ++v257[v266];
                                  v264 = v262[1];
                                }
                              }

                              ++v263;
                            }
                          }

                          ++v258;
                        }

                        while (v258 != v254);
                      }

                      v252[1] = 0;
                      v267 = v252 + 1;
                      if (v253 >= 1)
                      {
                        v268 = 0;
                        v269 = v253;
                        do
                        {
                          v268 += *v257;
                          *v257++ = v268;
                          --v269;
                        }

                        while (v269);
                      }

                      v270 = v267[v253];
                      v271 = (*(a3 + 24))(12 * v270 + 8);
                      v272 = (v271 + 4 * v270 + 7) & 0xFFFFFFFFFFFFFFF8;
                      *(v36 + 320) = v271;
                      *(v36 + 328) = v272;
                      *v252 = 0;
                      if (v254 > 0)
                      {
                        v273 = 0;
                        v274 = *(v36 + 144);
                        do
                        {
                          v275 = *(v274 + 4 * v273);
                          if (v275 >= *(v36 + 96) && v275 < *(v36 + 60) - *(v36 + 100))
                          {
                            v276 = (v255 + 8 * v273);
                            v277 = *v276;
                            v278 = v276[1];
                            while (v277 < v278)
                            {
                              v279 = *(v256 + 4 * v277);
                              if ((v279 & 0x80000000) == 0 && v279 < v253)
                              {
                                v280 = *(*(v36 + 136) + 4 * v279);
                                if (v280 <= v275)
                                {
                                  v281 = v267[v280];
                                  *(v271 + 4 * v281) = v275;
                                  *(v272 + 8 * v281) = v277;
                                  ++v267[v280];
                                  v278 = v276[1];
                                }
                              }

                              ++v277;
                            }
                          }

                          ++v273;
                        }

                        while (v273 != v254);
                      }

                      v282 = *(v36 + 168);
                      if (v282 < 1)
                      {
                        v284 = 0;
                      }

                      else
                      {
                        v283 = 0;
                        v284 = 0;
                        v285 = *(v36 + 176);
                        v286 = *v285;
                        do
                        {
                          v287 = v285[++v283];
                          if (v286 < v287)
                          {
                            v288 = *(v36 + 312);
                            v289 = v286;
                            v290 = *(v288 + 8 * v286);
                            do
                            {
                              *(v288 + 8 * v289++) = v284;
                              v291 = *(v288 + 8 * v289);
                              if (v290 < v291)
                              {
                                do
                                {
                                  v292 = *(v271 + 4 * v290);
                                  if (v292 >= v285[v283])
                                  {
                                    *(v271 + 4 * v284) = v292;
                                    *(v272 + 8 * v284++) = *(v272 + 8 * v290);
                                    v291 = *(v288 + 8 * v289);
                                  }

                                  ++v290;
                                }

                                while (v290 < v291);
                                v287 = v285[v283];
                              }

                              v290 = v291;
                            }

                            while (v289 < v287);
                            v282 = *(v36 + 168);
                          }

                          v286 = v287;
                        }

                        while (v283 < v282);
                      }

                      *(*(v36 + 312) + 8 * (*(v36 + 60) - *(v36 + 100))) = v284;
                      v293 = sub_2366FB334(v282);
                      if (v537 >= v293)
                      {
                        sub_2366FB348(v36, __src);
                      }

                      else
                      {
                        v294 = (*(a3 + 24))(v293);
                        sub_2366FB348(v36, v294);
                        if (v294 != __src)
                        {
                          (*(a3 + 32))(v294);
                        }
                      }

                      *__str = *v542;
                      *&__str[16] = *&v542[16];
                      if (!sub_2368124D8(__str, *(v36 + 88), *(v36 + 92), *(v36 + 96), *(v36 + 100), *(v36 + 104), *(v36 + 112), *(v36 + 136), *(v36 + 160), *(v36 + 120), (v36 + 128), a3))
                      {
                        v429 = 0;
                        v430 = 0;
                        v431 = 0;
                        v111 = v36;
                        *(v36 + 288) = 0;
                        *(v36 + 296) = 0;
                        v432 = *(v36 + 168) & ~(*(v36 + 168) >> 31);
                        v433 = v542[28];
                        v295 = a3;
                        v296 = v539;
                        while (v432 != v431)
                        {
                          v434 = (*(*(v36 + 176) + 4 * v431 + 4) - *(*(v36 + 176) + 4 * v431)) * v433;
                          v435 = *(*(v36 + 184) + 8 * v431);
                          v436 = *(*(v36 + 184) + 8 * v431 + 8);
                          v437 = __OFSUB__(v436, v435);
                          v438 = v436 - v435;
                          if (v438 >= 0)
                          {
                            v439 = v438;
                          }

                          else
                          {
                            v439 = -v438;
                          }

                          v440 = (v439 * v433) >> 64;
                          v441 = v439 * v433;
                          if (v438 < 0 != v437)
                          {
                            v442 = -v441;
                          }

                          else
                          {
                            v442 = v439 * v433;
                          }

                          v443 = v440 != 0;
                          v437 = __OFADD__(v434, v442);
                          v444 = v434 + v442;
                          v445 = v437;
                          v447 = *(*(v36 + 200) + 8 * v431);
                          v446 = *(*(v36 + 200) + 8 * v431 + 8);
                          v448 = __OFSUB__(v446, v447);
                          v449 = v446 - v447;
                          if (v449 >= 0)
                          {
                            v450 = v449;
                          }

                          else
                          {
                            v450 = -v449;
                          }

                          v451 = (v450 * v433) >> 64;
                          v452 = v450 * v433;
                          if (v449 < 0 != v448)
                          {
                            v453 = -v452;
                          }

                          else
                          {
                            v453 = v452;
                          }

                          v454 = v451 != 0;
                          v455 = v434 + v453;
                          v456 = __OFADD__(v434, v453);
                          v457 = (v444 * v434) >> 64 != (v444 * v434) >> 63;
                          v437 = __OFADD__(v430, v444 * v434);
                          v430 += v444 * v434;
                          v458 = v437;
                          v459 = v455 - v434;
                          v460 = (v455 - v434) * v434;
                          v461 = (v459 * v434) >> 64 != v460 >> 63;
                          v437 = __OFADD__(v429, v460);
                          v429 += v460;
                          v462 = v437;
                          *(v36 + 288) = v430;
                          *(v36 + 296) = v429;
                          if (!v443 && v441 <= (v438 >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v445 & 1) == 0 && !v454 && v452 <= (v449 >> 63) + 0x7FFFFFFFFFFFFFFFLL && !v456 && !v457 && (v458 & 1) == 0 && !v461)
                          {
                            ++v431;
                            if (!v462)
                            {
                              continue;
                            }
                          }

                          v463 = *(a3 + 40);
                          if (!v463)
                          {
                            v473 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                            if (v473)
                            {
                              sub_23672AF30(v473, v474, v475, v476, v477, v478, v479, v480);
                            }

                            _SparseTrap();
                          }

                          memset(&__str[36], 0, 220);
                          strcpy(__str, "factor size calculation overflowed\n");
                          v463(__str, v452, v36, v458, v457, v461, v454);
                          (*(a3 + 32))(v36);
                          v111 = 0;
                          v112 = -3;
                          goto LABEL_113;
                        }

                        goto LABEL_271;
                      }

                      (*(a3 + 32))(*(v36 + 112));
                      (*(a3 + 32))(v36);
                      goto LABEL_268;
                    }

                    v188 = 0;
                    v189 = 4 * v29;
                    while (1)
                    {
                      v190 = 8 * (*(*&v542[8] + 8 * *&v542[4]) + v531 + 2);
                      v191 = *(v184 + 112);
                      v192 = *(v191 + 4 * v188++);
                      v193 = *(v184 + 152);
                      v194 = *(v184 + 160);
                      __b = *(v184 + 136);
                      v196 = *(v184 + 144);
                      v197 = (*(v191 + 4 * v188) - v192);
                      *v549 = *v542;
                      *&v549[8] = *&v542[8];
                      *&v549[24] = *&v542[24];
                      v198 = v193 + 4 * v192;
                      v547 = v544;
                      v548 = v545;
                      v199 = v194 + 4 * v192;
                      sub_23670BC48(v549, &v547, v197, v198, v199, v185 + ((v189 + 7) & 0xFFFFFFFFFFFFFFF8), v185, __str, v189, __b, 4 * *v542, v196);
                      *v549 = *__str;
                      *&v549[16] = *&__str[16];
                      if (sub_2367E3E64(v528, v549, 0, __b, v196, a3))
                      {
                        break;
                      }

                      if (v197 <= 0)
                      {
                        v213 = v198;
                        v207 = 4 * v197;
                        memcpy(v213, v196, v207);
                        v208 = v199;
                      }

                      else
                      {
                        v200 = v198;
                        v201 = __b;
                        v202 = v197;
                        do
                        {
                          v204 = *v200++;
                          v203 = v204;
                          v205 = *v201++;
                          v196[v205] = v203;
                          --v202;
                        }

                        while (v202);
                        v206 = v198;
                        v207 = 4 * v197;
                        memcpy(v206, v196, 4 * v197);
                        v208 = v199;
                        v209 = v199;
                        do
                        {
                          v211 = *v209++;
                          v210 = v211;
                          v212 = *__b++;
                          v196[v212] = v210;
                          --v197;
                        }

                        while (v197);
                      }

                      memcpy(v208, v196, v207);
                      v184 = v36;
                      v185 = v109;
                      if (v188 >= *(v36 + 104))
                      {
                        goto LABEL_186;
                      }
                    }

                    (*(a3 + 32))(v36);
                    v156 = -3;
                    goto LABEL_157;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_553:
  __break(1u);
  return result;
}

uint64_t _SparseUpdatePartialRefactorLU_Complex_Float(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v197 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 80);
  v7 = *(a1 + 25);
  v8 = *(a4 + 28);
  v169 = v8;
  v9 = *(v5 + 168);
  v10 = *(v5 + 56);
  v11 = 8 * v9 + 16 * v10 + 4 * (9 * v10 + v9);
  v12 = v9 + 8 * v10 + 8 * v9 + 40 * *(v5 + 336) + (v11 + 120) * *(v5 + 52) + 49208;
  v13 = (*(v5 + 24))(v12);
  v14 = *(v5 + 56);
  v15 = (4 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v13 + v15;
  v145 = v14;
  if (*(v5 + 168) >= 1)
  {
    v17 = 0;
    v18 = *(v6 + 14);
    v19 = *(v5 + 176);
    while (1)
    {
      if (v7 == 83)
      {
        v20 = *(*(v6 + 9) + 4 * v17);
        v21 = *(*(v6 + 10) + 4 * v17);
        v22 = *(*(v6 + 11) + 4 * v17);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = v17 + 1;
      v24 = v20 + (*(v19 + 4 * (v17 + 1)) - *(v19 + 4 * v17)) * v8;
      if (v7 == 83)
      {
        v25 = *(*(v6 + 8) + 4 * v17);
      }

      else
      {
        v25 = v24;
        if (v7 == 81)
        {
          if (v24 >= 1)
          {
            v26 = 0;
            do
            {
              *(v13 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              *(v16 + 4 * (v26 + *(v19 + 4 * v17) * v8)) = v17;
              ++v26;
            }

            while (v24 != v26);
          }

          goto LABEL_16;
        }
      }

      if (v25 >= 1)
      {
        v27 = v24;
        v28 = v24 + v21 + (*(*(v5 + 184) + 8 * v23) - *(*(v5 + 184) + 8 * v17)) * v8;
        v29 = v25;
        v30 = *(v18 + 8 * v17) + 8;
        v31 = 8 * (v22 + (*(*(v5 + 200) + 8 * v23) - *(*(v5 + 200) + 8 * v17)) * v8) + 8 * v28;
        v32 = (v30 + (v31 | 4) * v27 + 4 * v21);
        v33 = (v30 + v31 * v27);
        do
        {
          v34 = *v33++;
          *(v13 + 4 * v34) = v17;
          v35 = *v32++;
          *(v16 + 4 * v35) = v17;
          --v29;
        }

        while (v29);
      }

LABEL_16:
      ++v17;
      if (v23 >= *(v5 + 168))
      {
        v14 = *(v5 + 56);
        break;
      }
    }
  }

  memset(__str, 0, sizeof(__str));
  v178 = 0;
  v179 = v5;
  v170[0] = v5;
  sub_23672A590(v168, v14, __str, v170);
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v179 + 32))();
  }

  v36 = *(v5 + 56);
  memset(__str, 0, sizeof(__str));
  v178 = 0;
  v179 = v5;
  v170[0] = v5;
  sub_23672A590(v167, v36, __str, v170);
  v143 = v12;
  v144 = v11;
  v151 = v7;
  v153 = v6;
  if (*__str)
  {
    *&__str[8] = *__str;
    (*(v179 + 32))();
  }

  v142 = v15;
  v37 = (v16 + v15);
  v152 = *(v5 + 168);
  bzero(v37, v152);
  if (a2 >= 1)
  {
    v38 = 0;
    v39 = (v8 * v8);
    v40 = 8 * v39;
    v155 = a2;
    v149 = -8 * v39;
    while (1)
    {
      v41 = (a3 + 8 * v38);
      v43 = *v41;
      v42 = v41[1];
      v44 = v43 / v169;
      v45 = v42 / v169;
      v46 = *(*(v5 + 136) + 4 * (v43 / v169));
      v47 = *(*(v5 + 144) + 4 * (v42 / v169));
      v48 = v43 % v169 + v46 * v169;
      LODWORD(v170[0]) = v48;
      v49 = v42 % v169 + v47 * v169;
      LODWORD(v166[0]) = v49;
      v50 = *(v5 + 72);
      if (v50 && (*(v50 + v43) & 1) != 0)
      {
        goto LABEL_60;
      }

      v51 = *(v5 + 80);
      if (v51)
      {
        if (*(v51 + v42))
        {
          goto LABEL_60;
        }
      }

      if (v47 < *(v5 + 96))
      {
        goto LABEL_35;
      }

      if (v47 >= *(v5 + 60) - *(v5 + 100))
      {
        goto LABEL_35;
      }

      v52 = *(v5 + 112);
      do
      {
        v54 = *v52++;
        v53 = v54;
      }

      while (v47 >= v54);
      if (v46 >= v53)
      {
LABEL_35:
        v59 = (*(v5 + 120) + 8 * v47);
        v61 = *v59;
        v60 = v59[1];
        v62 = v60 <= v61;
        v63 = v60 - v61;
        if (v62)
        {
LABEL_39:
          v67 = 0;
        }

        else
        {
          v64 = v149 * v61;
          v65 = (*(v5 + 128) + 4 * v61);
          while (1)
          {
            v66 = *v65++;
            if (v66 == v44)
            {
              break;
            }

            v64 -= v40;
            if (!--v63)
            {
              goto LABEL_39;
            }
          }

          v67 = (*(v153 + 5) - v64);
        }

        v68 = (*(a4 + 8) + 8 * v45);
        v70 = *v68;
        v69 = v68[1];
        v62 = v69 <= v70;
        v71 = v69 - v70;
        if (v62)
        {
LABEL_45:
          v75 = 0;
        }

        else
        {
          v72 = v149 * v70;
          v73 = (*(a4 + 16) + 4 * v70);
          while (1)
          {
            v74 = *v73++;
            if (v74 == v44)
            {
              break;
            }

            v72 -= v40;
            if (!--v71)
            {
              goto LABEL_45;
            }
          }

          v75 = (*(a4 + 32) - v72);
        }

        memcpy(v67, v75, v40);
        if (v46 == v47)
        {
          if (v169 == 1)
          {
            *v67 = sub_23681E680(1.0, 0.0, *v67, v67[1]);
            *(v67 + 1) = v76;
          }

          else
          {
            v77 = *(v5 + 96);
            if (v46 >= v77)
            {
              v46 = v77 + v46 - *(v5 + 60) + *(v5 + 100);
            }

            v78 = *(v153 + 6) + 4 * v46 * v169;
            LODWORD(v165[0]) = 0;
            cgetrf_NEWLAPACK();
          }
        }

        goto LABEL_60;
      }

      v55 = *(v13 + 4 * v48);
      v56 = *(v16 + 4 * v49);
      if (v55 < v56)
      {
        break;
      }

      if (v55 > v56)
      {
        v57 = (v168[0] + 32 * v56);
        v58 = v170;
        goto LABEL_55;
      }

LABEL_56:
      if (v55 <= v56)
      {
        v79 = v56;
      }

      else
      {
        v79 = v55;
      }

      v37[v79] = 1;
LABEL_60:
      if (++v38 == v155)
      {
        goto LABEL_61;
      }
    }

    v57 = (v167[0] + 32 * v55);
    v58 = v166;
LABEL_55:
    sub_236725158(v57, v58);
    goto LABEL_56;
  }

LABEL_61:
  v158 = &v37[(v152 + 7) & 0xFFFFFFFFFFFFFFF8];
  v80 = *(v5 + 168);
  if (v80 >= 1)
  {
    for (i = 0; i != v80; ++i)
    {
      if ((v37[i] & 1) == 0)
      {
        v82 = (*(v5 + 240) + 8 * i);
        v84 = *v82;
        v83 = v82[1];
        v62 = v83 <= v84;
        v85 = v83 - v84;
        if (!v62)
        {
          v86 = (*(v5 + 248) + 4 * v84);
          while (1)
          {
            v87 = *v86++;
            if (v37[v87] == 1)
            {
              break;
            }

            if (!--v85)
            {
              goto LABEL_70;
            }
          }

          v37[i] = 1;
        }
      }

LABEL_70:
      ;
    }
  }

  v156 = v145 & 0x3FFFFFFFFFFFFFFFLL;
  v88 = v80;
  v89 = 8 * v80;
  v90 = &v158[v89];
  bzero(v158, v89);
  v91 = *(v5 + 52);
  if (v91 != 1)
  {
    _X0 = 0;
    LODWORD(v170[0]) = *(v5 + 52);
    atomic_store(0, v170 + 1);
    atomic_store(0, (v170 | 0xC));
    atomic_store(0, v171);
    v109 = v172;
    do
    {
      _X5 = v173;
      __asm { CASPAL          X4, X5, X0, X1, [X19] }

      _ZF = _X4 == v109;
      v109 = _X4;
    }

    while (!_ZF);
    v174 = v144 + 104;
    v175 = &v158[v89];
    v176 = 0;
    v116 = &v90[40 * *(v5 + 336) + (((v144 + 104) * v91 + 7) & 0xFFFFFFFFFFFFFFF8)];
    __str[0] = v151;
    *&__str[8] = a4;
    v178 = v5;
    LODWORD(v179) = v169;
    v180 = v153;
    v181 = &v37[(v152 + 7) & 0xFFFFFFFFFFFFFFF8];
    v182 = 0;
    v183 = &v90[((v144 + 104) * v91 + 7) & 0xFFFFFFFFFFFFFFF8];
    v184 = sub_2367921D4(256, v116 + 16 * v91);
    v185 = v117;
    __p[0] = 0;
    __p[1] = 0;
    v187 = 0;
    v188 = v116;
    v189 = v37;
    v190 = v152;
    v191 = v13;
    v192 = v145 & 0x3FFFFFFFFFFFFFFFLL;
    v193 = v16;
    v194 = v145 & 0x3FFFFFFFFFFFFFFFLL;
    v195 = v168;
    v196 = v167;
    v176 = __str;
    if (*(v5 + 52))
    {
      v118 = 0;
      v119 = 0;
      do
      {
        *(v116 + v118 + 8) = *(v5 + 392);
        v120 = (*(v5 + 24))();
        v116 = v188;
        *(v188 + v118) = v120;
        ++v119;
        v118 += 16;
      }

      while (v119 < *(v5 + 52));
    }

    if (*(v5 + 336) >= 1)
    {
      _X22 = 0;
      v122 = 0;
      v123 = 0;
      do
      {
        v124 = v123;
        v62 = *(*(v5 + 176) + 4 * *(*(v5 + 344) + 4 * v123++)) < *(*(v5 + 112) + 4 * (v122 + 1));
        if (!v62)
        {
          ++v122;
        }

        v125 = *(*(v5 + 368) + 8 * v123) - *(*(v5 + 368) + 8 * v124);
        v126 = &v183[40 * v124];
        atomic_store(v125, v126);
        *(v126 + 2) = v124;
        *(v126 + 3) = v122;
        *(v126 + 2) = sub_2367F5C48;
        if (!v125)
        {
          _X0 = 0;
          _X1 = 0;
          __asm { CASP            X0, X1, X0, X1, [X27] }

          *(v126 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
          *(v126 + 4) = 0;
          v130 = _X0 & 1;
          _X2 = v130 | v126;
          _X5 = 0;
          __asm { CASPL           X4, X5, X2, X3, [X27] }

          while (_X4 != _X0)
          {
            _X1 = 0;
            __asm { CASP            X0, X1, X22, X23, [X10] }

            *(v126 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
            *(v126 + 4) = 0;
            v130 = _X0 & 1;
            _X2 = v130 | v126;
            _X5 = 0;
            __asm { CASPL           X4, X5, X2, X3, [X10] }
          }

          if (v130)
          {
            __ulock_wake();
          }
        }
      }

      while (v123 < *(v5 + 336));
    }

    v137 = sub_2366FCD2C(v170, 1);
    v107 = v137;
    if (!v137)
    {
      if (*(v5 + 52))
      {
        v138 = 0;
        v139 = 0;
        do
        {
          (*(v5 + 32))(*(v188 + v138));
          ++v139;
          v138 += 16;
        }

        while (v139 < *(v5 + 52));
      }

      v107 = -3;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v137)
    {
      goto LABEL_108;
    }

LABEL_107:
    (*(v5 + 32))(v13);
    v107 = 0;
    goto LABEL_108;
  }

  v92 = *(v5 + 56);
  v146 = (4 * v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  *__str = &v158[v89];
  *&__str[8] = v92 & 0x3FFFFFFFFFFFFFFFLL;
  LODWORD(v178) = 1;
  bzero(v90, 4 * v92);
  v93 = *(v5 + 168);
  v170[0] = &v90[v146];
  v170[1] = v93 & 0x3FFFFFFFFFFFFFFFLL;
  v171[0] = 1;
  v148 = &v90[v146];
  v94 = 4 * v93;
  bzero(&v90[v146], 4 * v93);
  v166[0] = 0;
  v166[1] = 0;
  v165[0] = 0;
  v165[1] = 0;
  v164[0] = 0;
  v164[1] = 0;
  v163[0] = 0;
  v163[1] = 0;
  v162[0] = 0;
  v162[1] = 0;
  v95 = (*(v5 + 24))(*(v5 + 392));
  v96 = *(v5 + 392);
  v161[0] = v95;
  v161[1] = v96;
  v97 = v153;
  v98 = v153 + 34;
  LODWORD(v96) = atomic_load(v153 + 34);
  v160 = v96;
  v99 = v97 + 35;
  v100 = atomic_load(v97 + 35);
  v159 = v100;
  if (*(v5 + 168) < 1)
  {
LABEL_81:
    atomic_store(v160, v98);
    atomic_store(v100, v99);
    (*(v5 + 32))(v163[0]);
    (*(v5 + 32))(v162[0]);
    (*(v5 + 32))(v166[0]);
    (*(v5 + 32))(v165[0]);
    (*(v5 + 32))(v164[0]);
    goto LABEL_107;
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v150 = v88;
  v104 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = v143 - v104 - (((v152 + 7) & 0xFFFFFFFFFFFFFFF8) + 2 * v142 + v89 + v146);
  v106 = &v148[v104];
  while (1)
  {
    if (*(*(v5 + 176) + 4 * v102) >= *(*(v5 + 112) + 4 * (v103 + 1)))
    {
      ++v103;
    }

    if (v37[v102] == 1 || (sub_2367F0D38(v102, a4, v151, v5, v169, v153, v168, v167, v163, v162, v166, v165, v164, __str, v37, v152, v106), (v37[v102] & 1) != 0))
    {
      *(v167[0] + v101 + 8) = *(v167[0] + v101);
      *(v168[0] + v101 + 8) = *(v168[0] + v101);
      v107 = sub_2367F3018(v102, v103, a4, v151, v5, v169, v153, &v160, &v159, v158, v150, v166, v165, v164, __str, v170, v37, v152, v13, v156, v16, v156, v106, v105, v161, 0, 0);
      if (v107)
      {
        break;
      }
    }

    ++v102;
    v101 += 32;
    if (v102 >= *(v5 + 168))
    {
      v100 = v159;
      v98 = v153 + 34;
      v99 = v153 + 35;
      goto LABEL_81;
    }
  }

  (*(v5 + 32))(v163[0]);
  (*(v5 + 32))(v162[0]);
  (*(v5 + 32))(v166[0]);
  (*(v5 + 32))(v165[0]);
  (*(v5 + 32))(v164[0]);
  (*(v5 + 32))(v13);
LABEL_108:
  *__str = v167;
  sub_23672A890(__str);
  *__str = v168;
  sub_23672A890(__str);
  *a1 = v107;
  result = sub_2367D9E50(a1);
  v141 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2367EDF30(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = result;
  v91 = *MEMORY[0x277D85DE8];
  v9 = result[1];
  v10 = *(v9 + 64);
  v11 = *(v10 + 2);
  v12 = *(v11 + 344);
  v13 = *(v12 + 4 * a2);
  v14 = (a2 << 32) + 0x100000000;
  v15 = *(v12 + (v14 >> 30));
  v16 = *(v10 + 6);
  v17 = 8 * (v16 * v16) * *(*(v11 + 384) + 8 * a2);
  if ((*v10 & 0xFE) == 0x52)
  {
    v17 += 8 * v16 * (*(*(v11 + 176) + 4 * v15) - *(*(v11 + 176) + 4 * v13));
  }

  v18 = result[5];
  v19 = *(v9 + 48);
  v20 = *(v11 + 168);
  v21 = (v17 + 24 * (v15 - v13) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v22 = *(v10 + 4);
  v23 = *(v10 + 5);
  v24 = *(v22 + 120) + *(v22 + 128);
  v25 = *(v10 + 6);
  v26 = (v25 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < v26)
  {
LABEL_4:
    v76 = 0;
LABEL_5:
    v27 = *(v11 + 40);
    if (!v27)
    {
      v35 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v35)
      {
        sub_23672B110(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      _SparseTrap();
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    strcpy(v77, "Failed to acquire chunkFactorStorage from pool\n");
    v78 = 0u;
    result = v27(v77);
    _X2 = 0;
    v44 = v8[1];
    atomic_store(0xFFFFFFFD, (v44 + 16));
    atomic_store(1u, (v44 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      result = __ulock_wake();
    }

    goto LABEL_22;
  }

  v28 = *(v10 + 6);
  atomic_compare_exchange_strong_explicit(v10 + 6, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  if (v28 != v25)
  {
    do
    {
      v29 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v24 < v29)
      {
        goto LABEL_4;
      }

      v25 = v28;
      v30 = v28;
      atomic_compare_exchange_strong_explicit(v10 + 6, &v30, v29, memory_order_relaxed, memory_order_relaxed);
      _ZF = v30 == v28;
      v28 = v30;
    }

    while (!_ZF);
  }

  v76 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v77[0] = 0;
  v75 = 0;
  if (v15 <= v13)
  {
    v34 = 0;
LABEL_24:
    v51 = v14 >> 32;
    v52 = *(v22 + 136);
    while (1)
    {
      v53 = *(v10 + 4);
      if (v34 <= v52)
      {
        break;
      }

      v54 = v52;
      atomic_compare_exchange_strong_explicit((v53 + 136), &v54, v34, memory_order_relaxed, memory_order_relaxed);
      _ZF = v54 == v52;
      v52 = v54;
      if (_ZF)
      {
        v53 = *(v10 + 4);
        break;
      }
    }

    v55 = *(v53 + 140);
    v56 = v75;
    do
    {
      if (v56 <= v55)
      {
        break;
      }

      v57 = v55;
      atomic_compare_exchange_strong_explicit((*(v10 + 4) + 140), &v57, v56, memory_order_relaxed, memory_order_relaxed);
      _ZF = v57 == v55;
      v55 = v57;
    }

    while (!_ZF);
    v58 = *(v10 + 2);
    v59 = *(v58 + 352);
    v60 = *(v59 + 8 * a2);
    if (v60 < *(v59 + 8 * v51))
    {
      do
      {
        v61 = (*(v10 + 7) + 40 * *(*(v58 + 360) + 4 * v60));
        if (atomic_fetch_add_explicit(v61, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v62 = v8[2];
          if (v62)
          {
            v63 = v8[1] + 32;
            v64 = v8[3];
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v62 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v62 + 32) = 0;
              _X2 = _X4 & 1 | v62;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          v8[2] = v61;
          v8[3] = 0;
        }

        ++v60;
        v58 = *(v10 + 2);
      }

      while (v60 < *(*(v58 + 352) + 8 * v51));
    }
  }

  else
  {
    v73 = (a2 << 32) + 0x100000000;
    v74 = a2;
    v32 = HIDWORD(a2);
    v33 = v25 + v21;
    while (1)
    {
      result = sub_2367EE3C0(v13, v32, *(v10 + 1), *v10, *(v10 + 2), *(v10 + 6), *(v10 + 4), a8, v23, v20, &v76, v33, v77, &v75, v18, v19, *(v10 + 13), v8, v10);
      if (result)
      {
        break;
      }

      v13 = (v13 + 1);
      if (v15 == v13)
      {
        v22 = *(v10 + 4);
        v34 = v77[0];
        v14 = v73;
        LODWORD(a2) = v74;
        goto LABEL_24;
      }
    }

    _X2 = 0;
    v70 = v8[1];
    atomic_store(result, (v70 + 16));
    atomic_store(1u, (v70 + 12));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X1] }

    if (_X2)
    {
      result = __ulock_wake();
    }
  }

LABEL_22:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2367EE338(uint64_t result)
{
  v1 = *(*(*(result + 8) + 64) + 32);
  v2 = *(v1 + 128);
  if (v2 >= 134217729)
  {
    v3 = *(v1 + 120);
    v4 = v3 + v2;
    v5 = (v3 + 0x8000000);
    v6 = v2 - 0x8000000;
    do
    {
      if (v6 >= 0x8000000)
      {
        v7 = 0x8000000;
      }

      else
      {
        v7 = v6;
      }

      result = madvise(v5, v7, 3);
      v5 += 0x8000000;
      v6 -= 0x8000000;
    }

    while (v5 < v4);
  }

  return result;
}

uint64_t sub_2367EE3C0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9, int a10, unint64_t *a11, unint64_t a12, int *a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = a6;
  v239 = *MEMORY[0x277D85DE8];
  v205 = *(&off_28499C330 + a4 - 81);
  v21 = *(a5 + 56);
  v22 = 4 * v21;
  v23 = (4 * v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v212 = a15 + v23;
  v24 = (a15 + v23 + v23);
  v25 = (v24 + v23);
  v26 = (v24 + v23 + v23);
  v27 = (v26 + v23);
  v28 = v26 + v23 + v23;
  if (a4 != 82)
  {
    v22 = 0;
  }

  v204 = v22;
  v228 = 0;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  v29 = a1;
  v30 = a1 + 1;
  v31 = *(a5 + 184);
  v32 = *(*(a5 + 176) + 4 * v30) - *(*(a5 + 176) + 4 * a1);
  v33 = v32 * a6;
  DWORD1(v223) = v32 * a6;
  v34 = *(a7[14] + 8 * a1);
  if (a4 != 82)
  {
    v28 = 0;
  }

  v203 = v28;
  *&v224 = v34 + 8;
  v35 = 8 * v30;
  v36 = 8 * a1;
  v37 = (v32 + *(v31 + 8 * v30) - *(v31 + v36)) * a6;
  v221 = v37;
  v38 = (*(*(a5 + 200) + 8 * v30) - *(*(a5 + 200) + v36)) * a6;
  v39 = v38 + v33;
  v222 = v38 + v33;
  v40 = v34 + 8 + 8 * v37 * v33;
  *(&v224 + 1) = v37;
  *&v225 = v40;
  *(&v225 + 1) = v38;
  v215 = a7;
  if (a4 == 81 || (*&v226 = v40 + 8 * v38 * v33, *(&v226 + 1) = v226 + 4 * v33, a4 != 83))
  {
    v54 = 0;
    v43 = 0;
    v47 = 0;
    v46 = 0;
    v199 = 0;
    v200 = 0;
    v55 = 0;
    v45 = 0;
    __src = 0;
    v42 = 0;
  }

  else
  {
    v41 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    sub_2367EF380(a1, 1, 83, a5, a6, a7, a9, v229, v25, v41, v27, v41);
    v42 = *&v229[8];
    v200 = *&v229[16];
    __src = *v229;
    v199 = *&v229[24];
    sub_2367EF380(a1, 2, 83, a5, v19, v215, a9, v229, v24, v41, v26, v41);
    v43 = 0;
    v45 = *&v229[8];
    v44 = *v229;
    v46 = *&v229[24];
    v47 = *&v229[16];
    a7 = v215;
    *(v215[10] + 4 * v29) = *&v229[8];
    *(v215[11] + 4 * v29) = v42;
    v48 = v215[9];
    *(v48 + 4 * v29) = 0;
    v49 = (*(a5 + 240) + 8 * v29);
    v50 = *v49;
    v51 = v49[1];
    if (v50 < v51)
    {
      v43 = 0;
      v52 = *(a5 + 256);
      do
      {
        if (*(v52 + v50) == 3)
        {
          v53 = *(*(a5 + 248) + 4 * v50);
          v43 += *(v48 + 4 * v53) + (*(*(a5 + 176) + 4 * v53 + 4) - *(*(a5 + 176) + 4 * v53)) * v19 - *(v215[8] + 4 * v53);
          *(v48 + 4 * v29) = v43;
        }

        ++v50;
      }

      while (v51 != v50);
    }

    LODWORD(v223) = v43;
    v33 = DWORD1(v223);
    v54 = 1;
    v37 = v221;
    v39 = v222;
    v55 = v44;
  }

  v206 = v42;
  v56 = v43 + v33;
  v57 = 8 * ((v39 - v33 + v42) * v56 + ((v37 + v43 + v45) * v56));
  if ((a4 & 0xFE) == 0x52)
  {
    v57 += 4 * (v45 + 2 * v56 + v42);
  }

  v58 = v57 + 8;
  v59 = (a7[14] + 8 * v29);
  v60 = *v59;
  if (*v59)
  {
    v61 = a7[15];
    if (v60 < v61 || v60 >= v61 + a7[16])
    {
      if (*v60 >= v58)
      {
        goto LABEL_22;
      }

      v62 = v55;
      v63 = v46;
      v216 = 8 * v30;
      v64 = v30;
      v65 = v45;
      v66 = v47;
      (*(a5 + 32))();
      v47 = v66;
      v45 = v65;
      v30 = v64;
      a7 = v215;
      v35 = v216;
      v46 = v63;
      v55 = v62;
      v59 = (v215[14] + 8 * v29);
    }

    *v59 = 0;
  }

LABEL_22:
  v67 = a7[14];
  if (!*(v67 + 8 * v29))
  {
    v68 = *a11;
    v69 = (*a11 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v69 <= a12)
    {
      *a11 = v69;
      *(a7[14] + 8 * v29) = v68;
      if (v68)
      {
        **(a7[14] + 8 * v29) = 0;
        goto LABEL_29;
      }
    }

    else
    {
      *(v67 + 8 * v29) = 0;
    }

    v217 = v30;
    v70 = v45;
    v71 = v47;
    v72 = v55;
    v73 = v46;
    v74 = (*(a5 + 24))(v58);
    a7 = v215;
    *(v215[14] + 8 * v29) = v74;
    v75 = *(v215[14] + 8 * v29);
    if (!v75)
    {
      v186 = *(a5 + 40);
      if (!v186)
      {
        v187 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v187)
        {
          sub_23672B14C(v187, v188, v189, v190, v191, v192, v193, v194);
        }

        _SparseTrap();
      }

      memset(v238, 0, sizeof(v238));
      v237 = 0u;
      v236 = 0u;
      v235 = 0u;
      v234 = 0u;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      memset(&v229[58], 0, 48);
      strcpy(v229, "Failed to allocate additional storage for delayed pivots\n");
      v186(v229);
      result = 4294967293;
      goto LABEL_163;
    }

    *v75 = v58;
    v46 = v73;
    v55 = v72;
    v47 = v71;
    v45 = v70;
    v30 = v217;
  }

LABEL_29:
  v197 = v47;
  if (v54)
  {
    v76 = *(a7[9] + 4 * v29);
    v77 = *(a7[10] + 4 * v29);
    v78 = *(a7[11] + 4 * v29);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  v196 = v46;
  v79 = a7[14];
  v213 = (*(v79 + 8 * v29) + 8);
  v80 = *(a5 + 176);
  v81 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
  v82 = v81 + v76;
  v83 = v81 + v76;
  if (v54)
  {
    v83 = *(a7[8] + 4 * v29);
  }

  v84 = *(a5 + 184);
  v85 = *(a5 + 200);
  v86 = *(v85 + v35);
  v87 = v82 + v77 + (*(v84 + v35) - *(v84 + 8 * v29)) * v19;
  v88 = (v86 - *(v85 + 8 * v29)) * v19;
  v89 = &v213[8 * v87 * v82];
  v90 = v88 + v78;
  v221 = v87;
  v222 = v82 + v78 + v88;
  LODWORD(v223) = v76;
  DWORD1(v223) = v81 + v76;
  *(&v223 + 1) = v83;
  if (a4 == 81)
  {
    v91 = 0;
  }

  else
  {
    v91 = &v89[8 * v90 * v82];
  }

  if (a4 == 81)
  {
    v92 = 0;
  }

  else
  {
    v92 = &v89[8 * (v88 + v78) * v82 + 4 * v82 + 4 * v77];
  }

  *&v224 = v213;
  *(&v224 + 1) = v87;
  v93 = &v91[4 * v82];
  if (v77 <= 0)
  {
    v93 = 0;
  }

  v201 = &v213[8 * v87 * v82];
  v202 = v90;
  *&v225 = v201;
  *(&v225 + 1) = v90;
  v94 = v92 + 4 * v82;
  *&v226 = v91;
  *(&v226 + 1) = v92;
  if (v78 <= 0)
  {
    v94 = 0;
  }

  *&v227 = __PAIR64__(v78, v77);
  *(&v227 + 1) = v93;
  v228 = v94;
  if (a4 != 81 && v81 >= 1)
  {
    v95 = 0;
    do
    {
      *&v91[4 * v95] = v95 + *(v80 + 4 * v29) * v19;
      *(v92 + 4 * v95) = v95 + *(v80 + 4 * v29) * v19;
      ++v95;
      v76 = v223;
    }

    while (v95 < SDWORD1(v223) - v223);
  }

  v218 = v54;
  if (v76 >= 1)
  {
    v96 = *(a5 + 240);
    v97 = *(v96 + 8 * v29);
    v98 = *(v96 + 8 * v30);
    if (v97 < v98)
    {
      v99 = (*(v80 + 4 * v30) - *(v80 + 4 * v29)) * v19;
      v100 = (v92 + 4 * v99);
      v101 = &v91[4 * v99];
      v102 = *(a5 + 256);
      do
      {
        if (*(v102 + v97) == 3)
        {
          v103 = *(*(a5 + 248) + 4 * v97);
          if (v54)
          {
            v104 = *(a7[9] + 4 * v103);
            v105 = *(a7[10] + 4 * v103);
            v106 = *(a7[11] + 4 * v103);
          }

          else
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
          }

          v107 = v104 + (*(v80 + 4 * (v103 + 1)) - *(v80 + 4 * v103)) * v19;
          v108 = v107;
          if (v54)
          {
            v108 = *(a7[8] + 4 * v103);
          }

          if (a4 == 81)
          {
            v109 = 0;
            v110 = 0;
          }

          else
          {
            v54 = v218;
            v109 = *(v79 + 8 * v103) + 8 + 8 * (v107 + v105 + (*(v84 + 8 * (v103 + 1)) - *(v84 + 8 * v103)) * v19) * v107 + 8 * (v106 + (*(v85 + 8 * (v103 + 1)) - *(v85 + 8 * v103)) * v19) * v107;
            v110 = v109 + 4 * v107 + 4 * v105;
          }

          if (v107 != *(a7[8] + 4 * v103) && v108 < v107)
          {
            v112 = (v109 + 4 * v108);
            v113 = (v110 + 4 * v108);
            v114 = v108 - v107;
            do
            {
              v116 = *v112++;
              v115 = v116;
              if (v116 < 0)
              {
                v115 = -v115;
              }

              *v101++ = v115;
              v118 = *v113++;
              v117 = v118;
              if (v118 < 0)
              {
                v117 = -v117;
              }

              *v100++ = v117;
            }

            while (!__CFADD__(v114++, 1));
          }
        }

        ++v97;
      }

      while (v97 != v98);
    }
  }

  if (v45)
  {
    memcpy(&v91[4 * SDWORD1(v223)], v55, 4 * v45);
  }

  if (v206)
  {
    memcpy((v92 + 4 * SDWORD1(v223)), __src, 4 * v206);
  }

  v120 = v221;
  if (v221 >= 1)
  {
    v121 = 0;
    v122 = *(&v227 + 1);
    v123 = v226;
    do
    {
      if (v121 >= SDWORD1(v223))
      {
        v125 = v120 - v227;
        if (v121 >= v125)
        {
          v124 = *(v122 - 4 * v125 + 4 * v121);
        }

        else
        {
          v124 = (v121 - DWORD1(v223)) % v19 + *(*(a5 + 192) + 4 * *(*(a5 + 184) + 8 * v29) + 4 * ((v121 - DWORD1(v223)) / v19)) * v19;
        }
      }

      else if (v123)
      {
        v124 = *(v123 + 4 * v121);
      }

      else
      {
        v124 = v121 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v124 < 0)
      {
        v124 = -v124;
      }

      *(a15 + 4 * v124) = v121++;
      v120 = v221;
    }

    while (v121 < v221);
  }

  v126 = v222;
  if (v222 >= 1)
  {
    v127 = 0;
    v128 = v228;
    v129 = v226;
    do
    {
      if (v127 >= SDWORD1(v223))
      {
        v131 = v126 - SDWORD1(v227);
        if (v127 >= v131)
        {
          v130 = *(v128 - 4 * v131 + 4 * v127);
        }

        else
        {
          v130 = (v127 - DWORD1(v223)) % v19 + *(*(a5 + 208) + 4 * *(*(a5 + 200) + 8 * v29) + 4 * ((v127 - DWORD1(v223)) / v19)) * v19;
        }
      }

      else if (v129)
      {
        v130 = *(*(&v129 + 1) + 4 * v127);
      }

      else
      {
        v130 = v127 + *(*(a5 + 176) + 4 * v29) * v19;
      }

      if (v130 < 0)
      {
        v130 = -v130;
      }

      *(v212 + 4 * v130) = v127++;
      v126 = v222;
    }

    while (v127 < v222);
    v120 = v221;
  }

  v132 = 8 * SDWORD1(v223);
  bzero(v213, v132 * v87);
  bzero(v201, v132 * v202);
  sub_2367EF888(a2, a1, SDWORD1(v223), a3, a5, v213, v87, v201, v202, a15, v212, v215[12], v215[13]);
  if ((v126 - DWORD1(v223)) * (v120 - DWORD1(v223)) <= 0)
  {
    v134 = 0;
  }

  else
  {
    v133 = 5 * (SDWORD1(v227) + v227);
    v134 = (*(a5 + 24))(v133 + 152);
    sub_236724DE4(v134, &v221, v197, v196, v200, v199, (v134 + 120), v133 + 32, a5);
    v135 = *(v134 + 16) * *(v134 + 8);
    v136 = (*(*v134 + 24))(8 * v135);
    *(v134 + 96) = v136;
    *(v134 + 104) = v135;
    bzero(v136, 8 * v135);
  }

  *(a9 + 8 * v29) = v134;
  v137 = (*(a5 + 240) + 8 * v29);
  v138 = *v137;
  v139 = v215;
  v140 = v218;
  if (*v137 < v137[1])
  {
    v208 = v134;
    v210 = v29;
    v214 = v19;
    do
    {
      v141 = *(*(a5 + 248) + 4 * v138);
      memset(&v229[16], 0, 56);
      if (v140)
      {
        v142 = *(v139[9] + 4 * v141);
        v143 = *(v139[10] + 4 * v141);
        v144 = *(v139[11] + 4 * v141);
      }

      else
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
      }

      v145 = *(v139[14] + 8 * v141) + 8;
      *&v229[8] = v142;
      *&v229[24] = v145;
      *&v229[72] = __PAIR64__(v144, v143);
      *&v229[12] = v142 + (*(*(a5 + 176) + 4 * (v141 + 1)) - *(*(a5 + 176) + 4 * v141)) * v19;
      v146 = *&v229[12];
      if (v140)
      {
        v146 = *(v139[8] + 4 * v141);
      }

      *&v229[16] = v146;
      v147 = 8 * (v141 + 1);
      *v229 = *&v229[12] + v143 + (*(*(a5 + 184) + v147) - *(*(a5 + 184) + 8 * v141)) * v19;
      v148 = (*(*(a5 + 200) + v147) - *(*(a5 + 200) + 8 * v141)) * v19;
      *&v229[4] = *&v229[12] + v144 + v148;
      v149 = v145 + 8 * *v229 * *&v229[12];
      *&v229[32] = *v229;
      *&v229[40] = v149;
      *&v229[48] = v148 + v144;
      if (a4 == 81)
      {
        v151 = 0;
        v150 = 0;
      }

      else
      {
        v150 = v149 + 8 * (v148 + v144) * *&v229[12];
        v151 = v150 + 4 * *&v229[12] + 4 * v143;
        *&v229[56] = v150;
        *&v229[64] = v151;
      }

      v152 = v150 + 4 * *&v229[12];
      if (v143 <= 0)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152;
      }

      v154 = v151 + 4 * *&v229[12];
      if (v144 <= 0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v154;
      }

      *&v229[80] = v153;
      *&v229[88] = v155;
      v156 = *(a9 + 8 * v141);
      if (!v156)
      {
        goto LABEL_142;
      }

      v157 = *(*(a5 + 264) + 4 * v138) * v19;
      v158 = *(*(a5 + 272) + 4 * v138) * v19;
      v159 = *(*(a5 + 256) + v138);
      switch(v159)
      {
        case 3:
          v177 = sub_2367F07B4(&v221, v141, v229, v156, a5, v214, v157, v158, a15, v212);
          v19 = v214;
          sub_2367E95C8(v177, &v221, v134, v141, v229, v156, a5, v214, v157, v158, a15, v212);
          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_140;
          }

          break;
        case 2:
          v170 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v220, *(a9 + 8 * v141));
          v171 = v170 * v19;
          sub_2367F0164(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_2367E8CD4(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v171, a15, v212);
          add_explicit = atomic_fetch_add_explicit((v156 + 24), -v171, memory_order_release);
          if (*(v220 + 112) == 1)
          {
            v173 = (v220 + 113);
            atomic_store(0, (v220 + 113));
            std::__cxx_atomic_notify_one(v173);
          }

          v139 = v215;
          v29 = v210;
          v140 = v218;
          if (add_explicit != v171)
          {
            goto LABEL_142;
          }

          v174 = *(*v156 + 32);
          v176 = *(v156 + 96);
          v175 = (v156 + 96);
          v174(v176);
          *v175 = 0;
          v175[1] = 0;
          v139 = v215;
          v140 = v218;
          if (*&v229[12] != *&v229[16] || *&v229[72])
          {
            goto LABEL_142;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (!v168)
          {
            break;
          }

LABEL_140:
          (*(*v167 + 32))(v168);
          *v169 = 0;
          v169[1] = 0;
          v178 = *(a9 + 8 * v141);
          break;
        case 1:
          v160 = *(*(a5 + 280) + 4 * v138);
          sub_236724F10(&v220, *(a9 + 8 * v141));
          v161 = v160 * v19;
          sub_2367EFCD0(a1, &v221, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
          v19 = v214;
          v134 = v208;
          sub_2367E8584(a1, &v221, v208, v141, v229, v156, a5, v214, v157, v158, v161, a15, v212);
          v162 = atomic_fetch_add_explicit((v156 + 28), -v161, memory_order_release);
          if (*(v220 + 112) == 1)
          {
            v163 = (v220 + 113);
            atomic_store(0, (v220 + 113));
            std::__cxx_atomic_notify_one(v163);
          }

          v139 = v215;
          v29 = v210;
          v140 = v218;
          if (v162 != v161)
          {
            goto LABEL_142;
          }

          v164 = *(*v156 + 32);
          v166 = *(v156 + 96);
          v165 = (v156 + 96);
          v164(v166);
          *v165 = 0;
          v165[1] = 0;
          v139 = v215;
          v140 = v218;
          if (*&v229[12] != *&v229[16] || *&v229[72])
          {
            goto LABEL_142;
          }

          v167 = *(a9 + 8 * v141);
          v169 = v167 + 12;
          v168 = v167[12];
          if (v168)
          {
            goto LABEL_140;
          }

          break;
        default:
          goto LABEL_142;
      }

      (*(a5 + 32))();
      *(a9 + 8 * v141) = 0;
      v139 = v215;
      v140 = v218;
LABEL_142:
      ++v138;
    }

    while (v138 < *(*(a5 + 240) + 8 * v29 + 8));
  }

  if (v134)
  {
    v179 = *(v134 + 96);
    v180 = *(v134 + 16);
  }

  else
  {
    v179 = 0;
    v180 = 0;
  }

  if (a19)
  {
    v181 = a19 + 64;
  }

  else
  {
    v181 = 0;
  }

  v182 = v205(v221, v222, DWORD1(v223), v224, *(&v224 + 1), v225, *(&v225 + 1), v179, v180, v226, *(&v226 + 1), a5, v139, v203, v204, a17, a18, v181);
  v183 = *a13;
  if (*a13 <= v182)
  {
    v183 = v182;
  }

  *a13 = v183;
  v184 = *a14;
  if (*a14 <= v222)
  {
    v184 = v222;
  }

  *a14 = v184;
  if (v218)
  {
    *(v215[8] + 4 * v29) = v182;
  }

  else if (v182 != DWORD1(v223))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_163;
  }

  result = 0;
LABEL_163:
  v195 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2367EF364(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2366FB870(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2367EF380(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, _DWORD *a9, unint64_t a10, _DWORD *a11, uint64_t a12)
{
  v12 = a11;
  v13 = (a4[30] + 8 * a1);
  v14 = *v13;
  if (*v13 < v13[1])
  {
    v17 = 0;
    v18 = 0;
    v83 = a1;
    v19 = a9;
    v20 = a11;
    v80 = a6;
    v78 = a2;
    v79 = a3;
    while (1)
    {
      v21 = *(a4[32] + v14);
      if ((v21 & a2) != 0)
      {
        break;
      }

LABEL_61:
      if (++v14 >= *(a4[30] + 8 * v83 + 8))
      {
        goto LABEL_64;
      }
    }

    v22 = *(a4[31] + 4 * v14);
    if (a3 == 83)
    {
      v23 = *(a6[9] + 4 * v22);
      v24 = *(a6[10] + 4 * v22);
      v25 = *(a6[11] + 4 * v22);
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v26 = a4[22];
    v27 = *(v26 + 4 * (v22 + 1));
    v28 = *(v26 + 4 * v22);
    v29 = v23 + (v27 - v28) * a5;
    if (a3 == 83)
    {
      v30 = *(a6[8] + 4 * v22);
      v31 = v29;
    }

    else
    {
      v31 = v29;
      if (a3 == 81)
      {
        v32 = 0;
        v33 = 0;
        v30 = v29;
        goto LABEL_13;
      }

      v30 = v29;
    }

    v33 = *(a6[14] + 8 * v22) + 8 + 8 * v31 * (v29 + v24 + (*(a4[23] + 8 * (v22 + 1)) - *(a4[23] + 8 * v22)) * a5) + 8 * v31 * (v25 + (*(a4[25] + 8 * (v22 + 1)) - *(a4[25] + 8 * v22)) * a5);
    v32 = v33 + 4 * v31 + 4 * v24;
LABEL_13:
    if (v24 <= 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = (v33 + 4 * v31);
    }

    v35 = (v32 + 4 * v31);
    if (v25 <= 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v21 == 3)
    {
      v38 = 0;
      v37 = 0;
    }

    else
    {
      v37 = v29 - *(a6[8] + 4 * v22);
      if (v21 == 2)
      {
        v38 = (v33 + 4 * v30);
      }

      else if (v21 == 1)
      {
        v38 = (v32 + 4 * v30);
      }

      else
      {
        v38 = 0;
      }
    }

    v39 = *(a7 + 8 * v22);
    v40 = *(a4[38] + 4 * v28);
    if (a2 == 1)
    {
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v25 == 0;
      }

      if (!v41)
      {
        v72 = *(a4[38] + 4 * v28);
        v74 = v38;
        v76 = v37;
        v45 = v25;
        v46 = v25;
        v47 = v17;
        v48 = v18;
        v70 = v25;
        v49 = v19;
        v50 = v20;
        sub_236724CB4(v84, v46);
        if (v70 >= 1)
        {
          v51 = 0;
          v52 = a4[38];
          v53 = v84[0];
          do
          {
              ;
            }

            v53[v51++] = i;
          }

          while (v51 != v45);
        }

        v12 = a11;
        sub_236724994(v49, v47, v50, v48, a9, a10, a11, &v85, v76, v74, v72, v70, v36, v84[0], a1, a4);
LABEL_53:
        v19 = v85;
        v17 = v86;
        v20 = v87;
        v18 = v88;
        if (v84[0])
        {
          v84[1] = v84[0];
          v65 = v86;
          v66 = v88;
          v67 = v85;
          v68 = v87;
          operator delete(v84[0]);
          v20 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v65;
        }

        goto LABEL_60;
      }

      if (v39)
      {
        v42 = *(v39 + 80);
      }

      else
      {
        v42 = 0;
      }

      sub_236724994(v19, v17, v20, v18, a9, a10, v12, &v85, v37, v38, v40, v25, v36, v42, a1, a4);
    }

    else
    {
      if (v39)
      {
        v43 = 1;
      }

      else
      {
        v43 = v24 == 0;
      }

      if (!v43)
      {
        v73 = *(a4[38] + 4 * v28);
        v75 = v38;
        v77 = v37;
        v55 = v24;
        v56 = v24;
        v57 = v17;
        v58 = v18;
        v59 = v19;
        v71 = v24;
        v60 = v20;
        sub_236724CB4(v84, v56);
        if (v71 >= 1)
        {
          v61 = 0;
          v62 = a4[38];
          v63 = v84[0];
          do
          {
              ;
            }

            v63[v61++] = j;
          }

          while (v61 != v55);
        }

        v12 = a11;
        sub_236724994(v59, v57, v60, v58, a9, a10, a11, &v85, v77, v75, v73, v71, v34, v84[0], a1, a4);
        goto LABEL_53;
      }

      if (v39)
      {
        v44 = *(v39 + 64);
      }

      else
      {
        v44 = 0;
      }

      sub_236724994(v19, v17, v20, v18, a9, a10, v12, &v85, v37, v38, v40, v24, v34, v44, a1, a4);
    }

    v19 = v85;
    v17 = v86;
    v20 = v87;
    v18 = v88;
LABEL_60:
    a6 = v80;
    a2 = v78;
    a3 = v79;
    goto LABEL_61;
  }

  v17 = 0;
  v18 = 0;
  v19 = a9;
  v20 = a11;
LABEL_64:
  *a8 = v19;
  a8[1] = v17;
  a8[2] = v20;
  a8[3] = v18;
}

void sub_2367EF868(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2367EF888(int a1, int a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *(a4 + 28);
  v14 = (v13 * v13);
  v15 = *(a5[14] + 4 * a1 + 4);
  v16 = a5[22];
  v17 = (v16 + 4 * a2);
  result = *v17;
  v19 = result;
  if (a12)
  {
    v20 = v17[1];
    if (result < v20)
    {
      v102 = a5[20];
      v101 = *(a4 + 8);
      v21 = 8 * v14;
      v22 = 8 * v13;
      v100 = 8 * a7 * v13;
      v23 = 8 * a7;
      v24 = result;
      do
      {
        v25 = (v101 + 8 * *(v102 + 4 * v24));
        v26 = *v25;
        v27 = v25[1];
        if (*v25 < v27)
        {
          v28 = *(a4 + 16);
          v29 = v21 * v26;
          do
          {
            v30 = *(v28 + 4 * v26);
            if ((v30 & 0x80000000) == 0 && v30 < *a4)
            {
              v31 = *(a5[17] + 4 * v30);
              v32 = v31 >= result && v31 < v15;
              if (v32 && v13)
              {
                v33 = 0;
                v34 = v31 * v13;
                v35 = (a12 + 4 * v34);
                v36 = (*(a4 + 32) + v29);
                v37 = (a6 + 8 * *(a10 + 4 * v34));
                do
                {
                  v38 = v13;
                  v39 = v37;
                  v40 = v35;
                  v41 = v36;
                  do
                  {
                    v42 = *v40++;
                    v43 = v42;
                    v44 = *v41++;
                    *v39++ = vmul_n_f32(vmul_n_f32(v44, v43), *(a13 + 4 * v24 * v13 + 4 * v33));
                    --v38;
                  }

                  while (v38);
                  ++v33;
                  v36 = (v36 + v22);
                  v37 = (v37 + v23);
                }

                while (v33 != v13);
              }
            }

            ++v26;
            v29 += v21;
          }

          while (v26 != v27);
        }

        ++v24;
        a6 += v100;
      }

      while (v24 != v20);
      v45 = a5[39];
      v46 = *(v45 + 8 * result);
      v47 = a8 - 8 * a3;
      result = 8 * a9 * v13;
      v48 = (a12 + 4 * v19 * v13);
      do
      {
        ++v19;
        v49 = *(v45 + 8 * v19);
        if (v46 < v49)
        {
          v50 = *(a4 + 32);
          v51 = a5[40];
          v52 = a5[41];
          do
          {
            if (v13)
            {
              v53 = 0;
              v54 = (v50 + 8 * *(v52 + 8 * v46) * v14);
              v55 = *(v51 + 4 * v46) * v13;
              v56 = a13 + 4 * v55;
              v57 = (v47 + 8 * *(a11 + 4 * v55));
              do
              {
                v58 = v13;
                v59 = v48;
                v60 = v57;
                v61 = v54;
                do
                {
                  v62 = *v59++;
                  v63 = v62;
                  v64 = *v61++;
                  *v60 = vmul_n_f32(vmul_n_f32(v64, v63), *(v56 + 4 * v53));
                  v60 += a9;
                  --v58;
                }

                while (v58);
                ++v53;
                v54 = (v54 + v22);
                ++v57;
              }

              while (v53 != v13);
            }

            ++v46;
          }

          while (v46 != v49);
        }

        v47 += result;
        v48 += v13;
        v46 = v49;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v65 = a2;
    v66 = a2 + 1;
    LODWORD(v67) = *(v16 + 4 * v66);
    if (result < v67)
    {
      v68 = *(a4 + 8);
      v69 = 8 * v14;
      v70 = 8 * a7;
      do
      {
        v71 = *(a5[20] + 4 * v19);
        v72 = (v68 + 8 * v71);
        v73 = *v72;
        if (*v72 < v72[1])
        {
          v74 = v69 * v73;
          do
          {
            v75 = *(*(a4 + 16) + 4 * v73);
            if ((v75 & 0x80000000) == 0 && v75 < *a4)
            {
              v76 = *(a5[17] + 4 * v75);
              v77 = *(a5[22] + 4 * v65);
              v78 = v76 >= v77 && v76 < v15;
              if (v78 && v13)
              {
                v79 = 0;
                v80 = (*(a4 + 32) + v74);
                v81 = (a6 + v70 * v13 * (v19 - v77) + 8 * *(a10 + 4 * v76 * v13));
                do
                {
                  v82 = v13;
                  v83 = v81;
                  v84 = v80;
                  do
                  {
                    v85 = *v84++;
                    *v83++ = v85;
                    --v82;
                  }

                  while (v82);
                  ++v79;
                  v80 += v13;
                  v81 = (v81 + v70);
                }

                while (v79 != v13);
                v68 = *(a4 + 8);
              }
            }

            ++v73;
            v74 += v69;
          }

          while (v73 < *(v68 + 8 * v71 + 8));
          v16 = a5[22];
        }

        ++v19;
        v67 = *(v16 + 4 * v66);
      }

      while (v19 < v67);
      result = *(v16 + 4 * v65);
    }

    if (result < v67)
    {
      v86 = result;
      v87 = a5[39];
      v88 = 8 * a9;
      v89 = a8 - 8 * a3;
      do
      {
        v90 = v86;
        result = *(v87 + 8 * v86++);
        if (result < *(v87 + 8 * v86))
        {
          do
          {
            if (v13)
            {
              v91 = 0;
              v92 = *(a4 + 32) + 8 * *(a5[41] + 8 * result) * v14;
              v93 = (v89 + v88 * v13 * (v90 - *(a5[22] + 4 * v65)) + 8 * *(a11 + 4 * *(a5[40] + 4 * result) * v13));
              do
              {
                v94 = v13;
                v95 = v93;
                v96 = v92;
                do
                {
                  v97 = *v96++;
                  *v95 = v97;
                  v95 = (v95 + v88);
                  --v94;
                }

                while (v94);
                ++v91;
                v92 += 8 * v13;
                ++v93;
              }

              while (v91 != v13);
              v87 = a5[39];
            }

            ++result;
          }

          while (result < *(v87 + 8 * v86));
          v16 = a5[22];
        }
      }

      while (v86 < *(v16 + 4 * v66));
    }
  }

  return result;
}

uint64_t sub_2367EFCD0(uint64_t result, uint64_t a2, int a3, int *a4, void *a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v59 = result;
  v12 = a4[3];
  v61 = a4[1];
  if (v12 + a9 < v61)
  {
    v55 = v12 + a8;
    v13 = v12 + a8 + a10;
    v14 = a4[19];
    v60 = v14 - v61;
    v15 = v12 + a9;
    v57 = v61 - v14;
    for (i = 8 * a9; ; i += 8)
    {
      if (v60 + v15 < 0 || (*(a5[6] + (v60 + v15)) & 1) == 0)
      {
        v17 = v15 - v12;
        if (v15 >= v12)
        {
          v18 = v15 >= v57 ? *(*(a4 + 11) + 4 * (v15 - v57)) : (v15 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v15 - v12) / a7)) * a7;
        }

        else if (v15 < 0)
        {
          v18 = 0x7FFFFFFF;
        }

        else
        {
          v18 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v15) : v15 + *(a6[22] + 4 * a3) * a7;
        }

        v19 = *(a12 + 4 * v18);
        v20 = *(a2 + 12);
        if (v20 > v19)
        {
          v21 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            v22 = 0x7FFFFFFF;
          }

          else
          {
            v22 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v19) : v19 + *(a6[22] + 4 * v59) * a7;
          }

          if (v22 == v18)
          {
            if (a10 >= 1)
            {
              v23 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
              v24 = 8 * v55 - 8 * v12;
              v25 = v55;
              v26 = a8;
              do
              {
                if (v25 >= v12)
                {
                  v29 = *a4;
                  v30 = a4[18];
                  if (v25 >= v29 - v30)
                  {
                    if (v25 < v29)
                    {
                      v28 = *(*(a4 + 10) + 4 * (v25 + v30 - v29));
                      if ((v17 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_37;
                      }

                      goto LABEL_34;
                    }

LABEL_33:
                    v28 = 0x7FFFFFFF;
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v26 / a7));
                  v32 = v26 % a7;
                }

                else
                {
                  if (v25 < 0)
                  {
                    goto LABEL_33;
                  }

                  v27 = *(a4 + 7);
                  if (v27)
                  {
                    v28 = *(v27 + 4 * v25);
                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v31 = *(a6[22] + 4 * a3);
                  v32 = v12 + v26;
                }

                v28 = v32 + v31 * a7;
                if ((v17 & 0x8000000000000000) == 0)
                {
LABEL_37:
                  if (v25 >= v12)
                  {
                    v33 = (a5[12] + i * a5[2] + v24);
                  }

                  else
                  {
                    v33 = (*(a4 + 5) + 8 * *(a4 + 6) * v25 + 8 * v17);
                  }

                  goto LABEL_40;
                }

LABEL_34:
                v33 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v25);
LABEL_40:
                v34 = *(a11 + 4 * v28);
                *(v23 + 8 * v34) = vadd_f32(*v33, *(v23 + 8 * v34));
                ++v25;
                ++v26;
                v24 += 8;
              }

              while (v25 < v13);
            }

            v35 = a4[18];
            if (v35 >= 1)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (++v15 >= v61)
      {
        return result;
      }
    }

    v36 = 0;
    v37 = *a4;
    v38 = v37 - v35;
    v39 = a5[4];
    v40 = v37 - v12 - v35;
    v58 = 4 * (v37 - v35);
    v41 = -8 * v12 + 8 * (v37 - v35);
    v42 = v37 - v35;
    while ((*(v39 + v36) & 1) != 0)
    {
LABEL_72:
      ++v42;
      ++v36;
      ++v40;
      v41 += 8;
      if (v38 + v36 >= v37)
      {
        goto LABEL_73;
      }
    }

    v43 = v38 + v36;
    if (v43 >= v12)
    {
      if (v43 >= v38)
      {
        v45 = *(a4 + 10);
        goto LABEL_51;
      }

      v46 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v40 / a7));
      v47 = v40 % a7;
    }

    else
    {
      if (v43 < 0)
      {
        v48 = 0x7FFFFFFF;
        goto LABEL_55;
      }

      v44 = *(a4 + 7);
      if (v44)
      {
        v45 = v44 + v58;
LABEL_51:
        v48 = *(v45 + 4 * v36);
        goto LABEL_55;
      }

      v46 = *(a6[22] + 4 * a3);
      v47 = v38 + v36;
    }

    v48 = v47 + v46 * a7;
LABEL_55:
    v49 = *(a11 + 4 * v48);
    v50 = v49;
    if (v49 >= v20)
    {
      result = (*a2 - *(a2 + 72));
      if (v49 < result)
      {
        result = a6[24];
        v52 = (v49 - v20) % a7 + *(result + 4 * *(a6[23] + 8 * v59) + 4 * ((v49 - v20) / a7)) * a7;
        goto LABEL_65;
      }

      if (*a2 > v49)
      {
        v52 = *(*(a2 + 80) + 4 * (v49 - result));
        goto LABEL_65;
      }
    }

    else if ((v49 & 0x80000000) == 0)
    {
      v51 = *(a2 + 56);
      if (v51)
      {
        v52 = *(v51 + 4 * v49);
      }

      else
      {
        v52 = v49 + *(a6[22] + 4 * v59) * a7;
      }

LABEL_65:
      if (v52 == v48)
      {
        if (v17 < 0)
        {
          v53 = (*(a4 + 3) + 8 * *(a4 + 4) * v15 + 8 * v42);
        }

        else if (v43 >= v12)
        {
          v53 = (a5[12] + i * a5[2] + v41);
        }

        else
        {
          v53 = (*(a4 + 5) + 8 * *(a4 + 6) * v43 + 8 * v17);
        }

        v54 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
        *(v54 + 8 * v50) = vadd_f32(*v53, *(v54 + 8 * v50));
      }

      goto LABEL_72;
    }

    v52 = 0x7FFFFFFF;
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_2367F0164(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t a5, void *a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v82 = result;
  v12 = a4[3];
  if (a10 >= 1)
  {
    v86 = v12 + a8;
    v13 = v12 + a9;
    v14 = *(a2 + 12);
    v15 = 8 * v13 - 8 * v12;
    while (1)
    {
      v16 = v13 - v12;
      if (v13 < v12)
      {
        break;
      }

      v17 = a4[1];
      v18 = v17 - a4[19];
      v19 = __OFSUB__(v13, v18);
      v20 = v13 - v18;
      if (v20 < 0 != v19)
      {
        result = ((v13 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v13 - v12) / a7)) * a7);
      }

      else
      {
        if (v13 >= v17)
        {
          goto LABEL_12;
        }

        result = *(*(a4 + 11) + 4 * v20);
      }

LABEL_14:
      v21 = *(a12 + 4 * result);
      if (v21 < v14)
      {
        result = a4[4];
        if (result < v12)
        {
          v22 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
          if (v16 >= 0)
          {
            v23 = (a4 + 10);
          }

          else
          {
            v23 = (a4 + 6);
          }

          if (v16 >= 0)
          {
            v24 = (a4 + 12);
          }

          else
          {
            v24 = (a4 + 8);
          }

          v25 = *v23;
          v26 = *v24;
          do
          {
            if (result < 0)
            {
              v28 = 0x7FFFFFFF;
            }

            else
            {
              v27 = *(a4 + 7);
              if (v27)
              {
                v28 = *(v27 + 4 * result);
              }

              else
              {
                v28 = result + *(a6[22] + 4 * a3) * a7;
              }
            }

            v29 = *(a11 + 4 * v28);
            if (v16 >= 0)
            {
              v30 = result;
            }

            else
            {
              v30 = v13;
            }

            if (v16 >= 0)
            {
              v31 = v13 - v12;
            }

            else
            {
              v31 = result;
            }

            *(v22 + 8 * v29) = vadd_f32(*(v25 + 8 * v26 * v30 + 8 * v31), *(v22 + 8 * v29));
            ++result;
          }

          while (v12 != result);
        }

        v32 = *a4;
        if (v86 < v32)
        {
          v33 = a4[18];
          v34 = v32 - v33;
          v35 = v12 + v33 - v32;
          result = 4 * v33 - 4 * v32;
          v36 = 8 * v86 - 8 * v12;
          v37 = a8;
          v38 = v86;
          while (2)
          {
            if (v35 + v37 >= 0 && (*(*(a5 + 32) + (v35 + v37)) & 1) != 0)
            {
              goto LABEL_52;
            }

            if (v38 >= v12)
            {
              if (v38 >= v34)
              {
                v40 = *(*(a4 + 10) + result + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }
              }

              else
              {
                v40 = v37 % a7 + *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v37 / a7)) * a7;
                if (v16 < 0)
                {
                  break;
                }
              }

              goto LABEL_46;
            }

            if (v38 < 0)
            {
              v40 = 0x7FFFFFFF;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v39 = *(a4 + 7);
              if (v39)
              {
                v40 = *(v39 + 4 * v38);
                if (v16 < 0)
                {
                  break;
                }

LABEL_46:
                if (v38 >= v12)
                {
                  v41 = (*(a5 + 96) + v15 * *(a5 + 16) + v36);
                }

                else
                {
                  v41 = (*(a4 + 5) + 8 * *(a4 + 6) * v38 + 8 * v16);
                }

LABEL_51:
                v42 = *(a11 + 4 * v40);
                v43 = *(a2 + 24) + 8 * *(a2 + 32) * v21;
                *(v43 + 8 * v42) = vadd_f32(*v41, *(v43 + 8 * v42));
LABEL_52:
                ++v38;
                ++v37;
                v36 += 8;
                if (v38 >= v32)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v40 = v12 + v37 + *(a6[22] + 4 * a3) * a7;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }
            }

            break;
          }

          v41 = (*(a4 + 3) + 8 * *(a4 + 4) * v13 + 8 * v38);
          goto LABEL_51;
        }
      }

LABEL_58:
      ++v13;
      v15 += 8;
      if (v13 >= v12 + a9 + a10)
      {
        goto LABEL_59;
      }
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      if (*(a4 + 7))
      {
        result = *(*(a4 + 8) + 4 * v13);
      }

      else
      {
        result = (v13 + *(a6[22] + 4 * a3) * a7);
      }

      goto LABEL_14;
    }

LABEL_12:
    result = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

LABEL_59:
  v44 = a4[19];
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = 0;
    v47 = a4[1];
    v48 = *(a5 + 48);
    v84 = v12 + a8;
    result = v47 - v44;
    v49 = 8 * result - 8 * v12;
    v50 = result;
    v83 = result;
    do
    {
      if ((*(v48 + v45) & 1) == 0)
      {
        v51 = v50 - v12;
        if (v50 >= v12)
        {
          v52 = v50 >= result ? *(*(a4 + 11) + 4 * (v50 - result)) : (v50 - v12) % a7 + *(a6[26] + 4 * *(a6[25] + 8 * a3) + 4 * ((v50 - v12) / a7)) * a7;
        }

        else if (v50 < 0)
        {
          v52 = 0x7FFFFFFF;
        }

        else
        {
          v52 = *(a4 + 7) ? *(*(a4 + 8) + 4 * v50) : v50 + *(a6[22] + 4 * a3) * a7;
        }

        v53 = *(a12 + 4 * v52);
        if (*(a2 + 12) > v53)
        {
          v54 = v53;
          if ((v53 & 0x80000000) != 0)
          {
            v55 = 0x7FFFFFFF;
          }

          else
          {
            v55 = *(a2 + 56) ? *(*(a2 + 64) + 4 * v53) : v53 + *(a6[22] + 4 * v82) * a7;
          }

          if (v55 == v52)
          {
            v56 = a4[4];
            if (v56 < v12)
            {
              v57 = *(a2 + 24) + 8 * *(a2 + 32) * v54;
              v58 = (a4 + 10);
              if (v51 >= 0)
              {
                v59 = (a4 + 12);
              }

              else
              {
                v58 = (a4 + 6);
                v59 = (a4 + 8);
              }

              v60 = *v58;
              v61 = *v59;
              do
              {
                if (v56 < 0)
                {
                  v63 = 0x7FFFFFFF;
                }

                else
                {
                  v62 = *(a4 + 7);
                  if (v62)
                  {
                    v63 = *(v62 + 4 * v56);
                  }

                  else
                  {
                    v63 = v56 + *(a6[22] + 4 * a3) * a7;
                  }
                }

                v64 = *(a11 + 4 * v63);
                if (v51 >= 0)
                {
                  v65 = v56;
                }

                else
                {
                  v65 = v50;
                }

                if (v51 >= 0)
                {
                  v66 = v50 - v12;
                }

                else
                {
                  v66 = v56;
                }

                *(v57 + 8 * v64) = vadd_f32(*(v60 + 8 * v61 * v65 + 8 * v66), *(v57 + 8 * v64));
                ++v56;
              }

              while (v12 != v56);
            }

            v67 = *a4;
            if (v84 < v67)
            {
              v68 = a4[18];
              v69 = v67 - v68;
              v70 = v12 + v68 - v67;
              v71 = 4 * v68 - 4 * v67;
              v72 = 8 * v84 - 8 * v12;
              v73 = a8;
              v74 = v12 + a8;
              while (2)
              {
                if (v70 + v73 >= 0 && (*(*(a5 + 32) + (v70 + v73)) & 1) != 0)
                {
                  goto LABEL_116;
                }

                if (v74 >= v12)
                {
                  if (v74 >= v69)
                  {
                    v76 = *(*(a4 + 10) + v71 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_112;
                  }

                  v77 = *(a6[24] + 4 * *(a6[23] + 8 * a3) + 4 * (v73 / a7));
                  v78 = v73 % a7;
                }

                else
                {
                  if (v74 < 0)
                  {
                    v76 = 0x7FFFFFFF;
                    if ((v51 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_112;
                    }

LABEL_107:
                    v79 = (*(a4 + 3) + 8 * *(a4 + 4) * v50 + 8 * v74);
                    goto LABEL_115;
                  }

                  v75 = *(a4 + 7);
                  if (v75)
                  {
                    v76 = *(v75 + 4 * v74);
                    if (v51 < 0)
                    {
                      goto LABEL_107;
                    }

LABEL_112:
                    if (v74 >= v12)
                    {
                      v79 = (*(a5 + 96) + v49 * *(a5 + 16) + v72);
                    }

                    else
                    {
                      v79 = (*(a4 + 5) + 8 * *(a4 + 6) * v74 + 8 * v51);
                    }

LABEL_115:
                    v80 = *(a11 + 4 * v76);
                    v81 = *(a2 + 24) + 8 * *(a2 + 32) * v54;
                    *(v81 + 8 * v80) = vadd_f32(*v79, *(v81 + 8 * v80));
LABEL_116:
                    ++v74;
                    ++v73;
                    v72 += 8;
                    if (v74 >= v67)
                    {
                      goto LABEL_117;
                    }

                    continue;
                  }

                  v77 = *(a6[22] + 4 * a3);
                  v78 = v12 + v73;
                }

                break;
              }

              v76 = v78 + v77 * a7;
              if (v51 < 0)
              {
                goto LABEL_107;
              }

              goto LABEL_112;
            }

LABEL_117:
            *(v48 + v45) = 1;
            ++v46;
            result = v83;
          }
        }
      }

      ++v50;
      ++v45;
      v49 += 8;
    }

    while (v50 < v47);
    if (v46 > 0)
    {
      atomic_fetch_add_explicit((a5 + 24), -v46, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_2367F07B4(uint64_t result, int a2, int *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = a3[3];
  v91 = a3[4];
  if (v91 < v10)
  {
    v11 = v10 + a7;
    v12 = *a3;
    v13 = *(a3 + 7);
    v90 = *(a3 + 8);
    v89 = *(result + 24);
    v88 = *(result + 32);
    v14 = a3[4];
    v15 = 8 * v91 - 8 * v10;
    while (1)
    {
      v16 = v91;
      v17 = *(a10 + 4 * *(v90 + 4 * v14));
      v18 = v14 - v10;
      v19 = v14 >= v10 ? a3 + 10 : a3 + 6;
      v20 = v14 >= v10 ? a3 + 12 : a3 + 8;
      v21 = *v19;
      v22 = *v20;
      do
      {
        if (v18 >= 0)
        {
          v24 = v16;
        }

        else
        {
          v24 = v14;
        }

        if (v18 >= 0)
        {
          v25 = v14 - v10;
        }

        else
        {
          v25 = v16;
        }

        v23 = *(a9 + 4 * *(v13 + 4 * v16));
        *(v89 + 8 * v88 * v17 + 8 * v23) = vadd_f32(*(v21 + 8 * v22 * v24 + 8 * v25), *(v89 + 8 * v88 * v17 + 8 * v23));
        ++v16;
      }

      while (v10 != v16);
      if (v11 < v12)
      {
        break;
      }

LABEL_39:
      ++v14;
      v15 += 8;
      if (v14 == v10)
      {
        goto LABEL_40;
      }
    }

    v26 = a3[18];
    v27 = v12 - v26;
    v28 = v10 - v12 + v26;
    v29 = -4 * v12 + 4 * v26;
    v30 = 8 * v11 - 8 * v10;
    v31 = a7;
    v32 = v10 + a7;
    while (1)
    {
      if (v28 + v31 >= 0 && (*(a4[4] + (v28 + v31)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v32 >= v10)
      {
        break;
      }

      if ((v32 & 0x8000000000000000) == 0)
      {
        v33 = *(a3 + 7);
        if (!v33)
        {
          v34 = *(a5[22] + 4 * a2);
          v35 = v10 + v31;
          goto LABEL_27;
        }

LABEL_30:
        v36 = *(v33 + 4 * v32);
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v36 = 0x7FFFFFFF;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_31:
        if (v32 >= v10)
        {
          v37 = (a4[12] + v15 * a4[2] + v30);
        }

        else
        {
          v37 = (*(a3 + 5) + 8 * *(a3 + 6) * v32 + 8 * v18);
        }

        goto LABEL_34;
      }

LABEL_28:
      v37 = (*(a3 + 3) + 8 * *(a3 + 4) * v14 + 8 * v32);
LABEL_34:
      v38 = *(a9 + 4 * v36);
      v39 = *(result + 24) + 8 * *(result + 32) * v17;
      *(v39 + 8 * v38) = vadd_f32(*v37, *(v39 + 8 * v38));
LABEL_35:
      ++v32;
      ++v31;
      v30 += 8;
      if (v32 >= v12)
      {
        goto LABEL_39;
      }
    }

    if (v32 < v27)
    {
      v34 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v31 / a6));
      v35 = v31 % a6;
LABEL_27:
      v36 = v35 + v34 * a6;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v33 = *(a3 + 10) + v29;
    goto LABEL_30;
  }

LABEL_40:
  v40 = v10 + a8;
  v41 = a3[1];
  if (v10 + a8 < v41)
  {
    v42 = a3[19];
    v43 = v42 - v41;
    v44 = v40;
    v45 = v41 - v42;
    for (i = 8 * v40 - 8 * v10; ; i += 8)
    {
      if (v43 + v44 < 0 || (*(a4[6] + (v43 + v44)) & 1) == 0)
      {
        v47 = v44 - v10;
        if (v44 >= v10)
        {
          v48 = v44 >= v45 ? *(*(a3 + 11) + 4 * (v44 - v45)) : (v44 - v10) % a6 + *(a5[26] + 4 * *(a5[25] + 8 * a2) + 4 * ((v44 - v10) / a6)) * a6;
        }

        else if (v44 < 0)
        {
          v48 = 0x7FFFFFFF;
        }

        else
        {
          v48 = *(a3 + 7) ? *(*(a3 + 8) + 4 * v44) : v44 + *(a5[22] + 4 * a2) * a6;
        }

        v49 = *(a10 + 4 * v48);
        if (v49 < *(result + 12))
        {
          if (v91 < v10)
          {
            v50 = *(a3 + 7);
            v51 = *(result + 24) + 8 * *(result + 32) * v49;
            v52 = 10;
            if (v47 < 0)
            {
              v52 = 6;
            }

            v53 = 12;
            if (v47 < 0)
            {
              v53 = 8;
            }

            v54 = *&a3[v52];
            v55 = *&a3[v53];
            v56 = v91;
            do
            {
              if (v47 >= 0)
              {
                v58 = v56;
              }

              else
              {
                v58 = v44;
              }

              if (v47 >= 0)
              {
                v59 = v44 - v10;
              }

              else
              {
                v59 = v56;
              }

              v57 = *(a9 + 4 * *(v50 + 4 * v56));
              *(v51 + 8 * v57) = vadd_f32(*(v54 + 8 * v55 * v58 + 8 * v59), *(v51 + 8 * v57));
              ++v56;
            }

            while (v10 != v56);
          }

          v60 = *a3;
          v61 = a3[18];
          v62 = v60 - v61;
          if (v10 + a7 < v60 - v61)
          {
            v63 = a5[24] + 4 * *(a5[23] + 8 * a2);
            v64 = *(result + 24) + 8 * *(result + 32) * v49;
            v65 = a4[12] - 8 * v10 + a4[2] * i;
            v66 = a7;
            v67 = v10 + a7;
            do
            {
              v68 = *(a9 + 4 * (v66 % a6 + *(v63 + 4 * (v66 / a6)) * a6));
              *(v64 + 8 * v68) = vadd_f32(*(v65 + 8 * v67++), *(v64 + 8 * v68));
              ++v66;
            }

            while (v67 < v62);
          }

          if (v61 >= 1)
          {
            break;
          }
        }
      }

LABEL_91:
      if (++v44 >= v41)
      {
        return result;
      }
    }

    v69 = 0;
    v70 = v62;
    v71 = a4[4];
    v72 = v60 - v10 - v61;
    v73 = 4 * v60 - 4 * v61;
    v74 = 8 * (v60 - v10 - v61);
    v75 = v62;
    v76 = v60 - v61;
    while ((*(v71 + v69) & 1) != 0)
    {
LABEL_90:
      ++v75;
      ++v69;
      ++v72;
      v74 += 8;
      if (v70 + v69 >= v60)
      {
        goto LABEL_91;
      }
    }

    v77 = v70 + v69;
    if (v70 + v69 >= v10)
    {
      if (v77 >= v70)
      {
        v79 = *(a3 + 10);
LABEL_80:
        v82 = *(v79 + 4 * v69);
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_88:
        v83 = (*(a3 + 3) + 8 * *(a3 + 4) * v44 + 8 * v75);
LABEL_89:
        v84 = *(a9 + 4 * v82);
        v85 = *(result + 24) + 8 * *(result + 32) * v49;
        *(v85 + 8 * v84) = vadd_f32(*v83, *(v85 + 8 * v84));
        goto LABEL_90;
      }

      v80 = *(a5[24] + 4 * *(a5[23] + 8 * a2) + 4 * (v72 / a6));
      v81 = v72 % a6;
    }

    else
    {
      if (v77 < 0)
      {
        v82 = 0x7FFFFFFF;
        if (v47 < 0)
        {
          goto LABEL_88;
        }

        goto LABEL_81;
      }

      v78 = *(a3 + 7);
      if (v78)
      {
        v79 = v78 + v73;
        goto LABEL_80;
      }

      v80 = *(a5[22] + 4 * a2);
      v81 = v76 + v69;
    }

    v82 = v81 + v80 * a6;
    if (v47 < 0)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v77 >= v10)
    {
      v83 = (a4[12] + i * a4[2] + v74);
    }

    else
    {
      v83 = (*(a3 + 5) + 8 * *(a3 + 6) * v77 + 8 * v47);
    }

    goto LABEL_89;
  }

  return result;
}

void sub_2367F0D38(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, double *a6, void *a7, void *a8, uint64_t *a9, void **a10, void *a11, void *a12, float32x2_t **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a4;
  v509 = *(a4 + 56);
  v560 = 0;
  v559 = 0u;
  v20 = (4 * v509 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = a17 + v20;
  v22 = a1;
  v558 = 0u;
  v557 = 0u;
  if (a3 == 83)
  {
    v23 = *(*(a6 + 9) + 4 * a1);
    v24 = *(*(a6 + 10) + 4 * a1);
    v25 = *(*(a6 + 11) + 4 * a1);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v26 = v21 + v20;
  v27 = *(*(a6 + 14) + 8 * v22) + 8;
  *(&v557 + 1) = v27;
  v561 = v24;
  v562 = v25;
  v528 = v22 + 1;
  v28 = v23 + (*(*(a4 + 176) + 4 * (v22 + 1)) - *(*(a4 + 176) + 4 * v22)) * a5;
  v555 = v23;
  v556 = v28;
  v29 = v28;
  if (a3 == 83)
  {
    v29 = *(*(a6 + 8) + 4 * v22);
  }

  i = v26 + v20;
  LODWORD(v557) = v29;
  v510 = 8 * v22;
  v31 = (*(*(a4 + 200) + 8 * v528) - *(*(a4 + 200) + 8 * v22)) * a5;
  v553 = v28 + v24 + (*(*(a4 + 184) + 8 * v528) - *(*(a4 + 184) + 8 * v22)) * a5;
  v554 = v28 + v25 + v31;
  v541 = v554;
  v537 = v553;
  *&v558 = v553;
  *(&v558 + 1) = v27 + 8 * v553 * v28;
  v32 = v31 + v25;
  *&v559 = v32;
  v498 = (4 * v509 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a3 == 81)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = v27 + 8 * v553 * v28 + 8 * v32 * v28;
    v33 = v34 + 4 * v28 + 4 * v24;
    *(&v559 + 1) = v34;
    v560 = v33;
  }

  v511 = v29;
  v532 = v34;
  v35 = v34 + 4 * v28;
  if (v24 <= 0)
  {
    v35 = 0;
  }

  v36 = v33 + 4 * v28;
  if (v25 <= 0)
  {
    v36 = 0;
  }

  v516 = v35;
  v563 = v35;
  v564 = v36;
  v518 = v36;
  v522 = v33;
  v37 = *(a4 + 240);
  v38 = *(v37 + 8 * v22);
  v527 = v26 + v20;
  v550 = a5;
  v531 = v21 + v20;
  v536 = v22;
  v496 = v25;
  if (v38 < *(v37 + 8 * v528))
  {
    v515 = 0;
    v39 = v553 - v24;
    v40 = v554 - v25;
    while (1)
    {
      v41 = *(*(v18 + 248) + 4 * v38);
      if ((*(*(v18 + 256) + v38) & 2) != 0)
      {
        v42 = *a7 + 32 * v41;
        v43 = *v42;
        v44 = *(v42 + 8);
        if (v44 != *v42)
        {
          if ((v515 & 1) == 0)
          {
            sub_23672A9A0(a1, &v553, a4, a5, v26);
            v22 = v536;
            v26 = v531;
            a5 = v550;
            v45 = *a7 + 32 * v41;
            v43 = *v45;
            v44 = *(v45 + 8);
          }

          while (v43 != v44)
          {
            v552 = *v43;
            v46 = *(v26 + 4 * v552);
            if (v46 < v537)
            {
              if (v46 >= v28)
              {
                if (v46 >= v39)
                {
                  v47 = *(v516 + 4 * (v46 - v39));
                }

                else
                {
                  v47 = (v46 - v28) % a5 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v22) + 4 * ((v46 - v28) / a5)) * a5;
                }
              }

              else if ((v46 & 0x80000000) != 0)
              {
                v47 = 0x7FFFFFFF;
              }

              else if (v532)
              {
                v47 = v532[v46];
              }

              else
              {
                v47 = v46 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v47 < 0)
              {
                v47 = -v47;
              }

              if (v552 == v47)
              {
                sub_236725158((*a7 + 32 * v22), &v552);
                v22 = v536;
                v26 = v531;
                a5 = v550;
              }
            }

            ++v43;
          }

          LOBYTE(v515) = 1;
        }

        v18 = a4;
      }

      if (*(*(v18 + 256) + v38))
      {
        v48 = *a8 + 32 * v41;
        v49 = *v48;
        v50 = *(v48 + 8);
        if (v50 != *v48)
        {
          if ((v515 & 0x100000000) == 0)
          {
            sub_23672AA5C(a1, &v553, a4, a5, v527);
            v22 = v536;
            v26 = v531;
            a5 = v550;
            v51 = *a8 + 32 * v41;
            v49 = *v51;
            v50 = *(v51 + 8);
          }

          for (i = v527; v49 != v50; ++v49)
          {
            v552 = *v49;
            v52 = *(v527 + 4 * v552);
            if (v52 < v541)
            {
              if (v52 >= v28)
              {
                if (v52 >= v40)
                {
                  v53 = *(v518 + 4 * (v52 - v40));
                }

                else
                {
                  v53 = (v52 - v28) % a5 + *(*(a4 + 208) + 4 * *(*(a4 + 200) + 8 * v22) + 4 * ((v52 - v28) / a5)) * a5;
                }
              }

              else if ((v52 & 0x80000000) != 0)
              {
                v53 = 0x7FFFFFFF;
              }

              else if (v532)
              {
                v53 = v522[v52];
              }

              else
              {
                v53 = v52 + *(*(a4 + 176) + 4 * v22) * a5;
              }

              if (v53 < 0)
              {
                v53 = -v53;
              }

              if (v552 == v53)
              {
                sub_236725158((*a8 + 32 * v22), &v552);
                v22 = v536;
                v26 = v531;
                a5 = v550;
              }
            }
          }

          BYTE4(v515) = 1;
          v18 = a4;
          goto LABEL_60;
        }

        v18 = a4;
      }

      i = v527;
LABEL_60:
      if (++v38 >= *(*(v18 + 240) + 8 * v528))
      {
        goto LABEL_63;
      }
    }
  }

  v515 = 0;
LABEL_63:
  if (!v511)
  {
    return;
  }

  v54 = (*a7 + 32 * v22);
  v55 = (*a8 + 32 * v22);
  if (v54[1] == *v54 && v55[1] == *v55)
  {
    return;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v56 = sub_23672AB6C(*v54, v54[1]);
  v504 = v55;
  if (v56 != v54[1])
  {
    v54[1] = v56;
  }

  v57 = *v55;
  v58 = v55[1];
  std::__sort<std::__less<int,int> &,int *>();
  v59 = sub_23672AB6C(*v55, v55[1]);
  v61 = v55[1];
  if (v59 != v61)
  {
    v60 = v55[1];
    v61 = v59;
    v55[1] = v59;
  }

  if (v532)
  {
    if (v511 >= 1)
    {
      v62 = 0;
      v63 = v532;
      v64 = v522;
      do
      {
        v65 = *v63++;
        *(a17 + 4 * v65) = v62;
        v66 = *v64++;
        *(v21 + 4 * v66) = v62--;
      }

      while (-v511 != v62);
    }
  }

  else if (v511 >= 1)
  {
    v67 = 0;
    v68 = 0;
    v69 = *(v18 + 176);
    do
    {
      *(a17 + 4 * (v68 + *(v69 + 4 * v536) * v550)) = v67;
      *(v21 + 4 * (v68 + *(v69 + 4 * v536) * v550)) = v67;
      ++v68;
      --v67;
    }

    while (v511 != v68);
  }

  v70 = a9;
  v71 = *v54;
  v72 = v54[1];
  v73 = v72 - *v54;
  if (v72 != *v54)
  {
    v74 = 0;
    v75 = v73 >> 2;
    if ((v73 >> 2) <= 1)
    {
      v75 = 1;
    }

    do
    {
      *(a17 + 4 * v71[v74]) = v74;
      ++v74;
    }

    while (v75 != v74);
  }

  v76 = *v55;
  v77 = v61 - *v55;
  if (v61 != *v55)
  {
    v78 = 0;
    v79 = v77 >> 2;
    if ((v77 >> 2) <= 1)
    {
      v79 = 1;
    }

    do
    {
      *(v21 + 4 * v76[v78]) = v78;
      ++v78;
    }

    while (v79 != v78);
  }

  v80 = i + v498;
  v81 = v77 >> 2;
  v490 = v73;
  v494 = v77;
  v82 = (v511 * (v73 >> 2));
  v505 = 8 * v82;
  v548 = i + v498;
  if (a9[1] < v82)
  {
    if (*a9)
    {
      (*(v18 + 32))(*a9, v60);
    }

    v83 = (*(v18 + 24))(v505, v60);
    v70 = a9;
    *a9 = v83;
    a9[1] = v82;
    v80 = i + v498;
  }

  v84 = v80 + 8 * v509;
  v85 = (v511 * v81);
  v530 = v84;
  if (a10[1] >= v85)
  {
    v86 = 8 * v85;
  }

  else
  {
    if (*a10)
    {
      (*(v18 + 32))();
    }

    v86 = 8 * v85;
    *a10 = (*(v18 + 24))(8 * v85);
    a10[1] = v85;
    v70 = a9;
    v84 = v530;
  }

  v517 = v84 + 8 * v509;
  bzero(*v70, v505);
  bzero(*a10, v86);
  v87 = *v54;
  v88 = v54[1] - *v54;
  v89 = *v504;
  v90 = v504[1] - *v504;
  v506 = *a9;
  v501 = *a10;
  v91 = *(a6 + 12);
  v92 = *(a2 + 28);
  v93 = (v92 * v92);
  v94 = v511;
  v95 = v88 <= 0 || v511 <= 0;
  v96 = !v95;
  if (v91)
  {
    v97 = *(a6 + 13);
    if (v96)
    {
      v98 = 0;
      v542 = *(v18 + 160);
      v519 = *(a2 + 8);
      v99 = 8 * v93;
      do
      {
        if (v522)
        {
          v100 = v522[v98];
        }

        else
        {
          v100 = v98 + *(*(v18 + 176) + 4 * v536) * v92;
        }

        v101 = (v519 + 8 * *(v542 + 4 * (v100 / v92)));
        v102 = *v101;
        v103 = v101[1];
        if (*v101 < v103)
        {
          v104 = *(a2 + 16);
          v105 = v100;
          v106 = v99 * v102 + 8 * v100 % v92 * v92;
          do
          {
            v107 = *(v104 + 4 * v102);
            if ((v107 & 0x80000000) == 0 && v107 < *a2 && v92 != 0)
            {
              v109 = *(*(a4 + 136) + 4 * v107) * v92;
              v110 = (v91 + 4 * v109);
              v111 = (a17 + 4 * v109);
              v112 = v92;
              v113 = v106;
              do
              {
                v115 = *v111++;
                v114 = v115;
                if (v115 < v88 && v109 == v87[v114])
                {
                  v506[v98 * v88 + v114] = vmul_n_f32(vmul_n_f32(*(*(a2 + 32) + v113), *v110), *(v97 + 4 * v105));
                }

                v113 += 8;
                ++v110;
                ++v109;
                --v112;
              }

              while (v112);
            }

            ++v102;
            v106 += v99;
          }

          while (v102 != v103);
        }

        ++v98;
        v18 = a4;
        i = v527;
        v94 = v511;
      }

      while (v98 != v511);
    }

    if (v90 >= 1 && v94 >= 1)
    {
      v116 = 0;
      v543 = *(v18 + 312);
      v117 = v94;
      do
      {
        if (v532)
        {
          v118 = v532[v116];
        }

        else
        {
          v118 = v116 + *(*(v18 + 176) + 4 * v536) * v92;
        }

        v119 = (v543 + 8 * (v118 / v92));
        v120 = *v119;
        v121 = v119[1];
        if (v120 < v121)
        {
          v122 = *(a4 + 320);
          v123 = v118;
          v124 = 8 * (v118 % v92);
          do
          {
            v125 = *(v122 + 4 * v120) * v92;
            v126 = (v97 + 4 * v125);
            v127 = (a17 + v498 + 4 * v125);
            v128 = v92;
            v129 = v124;
            do
            {
              v131 = *v127++;
              v130 = v131;
              if (v131 < v90 && v125 == v89[v130])
              {
                v501[v116 * v90 + v130] = vmul_n_f32(vmul_n_f32(*(*(a2 + 32) + 8 * *(*(a4 + 328) + 8 * v120) * v93 + v129), *(v91 + 4 * v123)), *v126);
              }

              v129 += 8 * v92;
              ++v126;
              ++v125;
              --v128;
            }

            while (v128);
            ++v120;
          }

          while (v120 != v121);
        }

        ++v116;
        v18 = a4;
        i = v527;
      }

      while (v116 != v117);
    }
  }

  else
  {
    if (v96)
    {
      v132 = 0;
      v133 = 8 * v93;
      do
      {
        if (v522)
        {
          v134 = v522[v132];
        }

        else
        {
          v134 = v132 + *(*(v18 + 176) + 4 * v536) * v92;
        }

        v135 = *(*(v18 + 160) + 4 * (v134 / v92));
        v136 = *(a2 + 8);
        v137 = (v136 + 8 * v135);
        v138 = *v137;
        if (*v137 < v137[1])
        {
          v139 = v133 * v138 + 8 * v134 % v92 * v92;
          do
          {
            v140 = *(*(a2 + 16) + 4 * v138);
            if ((v140 & 0x80000000) == 0 && v140 < *a2 && v92 != 0)
            {
              v142 = *(*(v18 + 136) + 4 * v140) * v92;
              v143 = (a17 + 4 * v142);
              v144 = v92;
              v145 = v139;
              do
              {
                v147 = *v143++;
                v146 = v147;
                if (v147 < v88 && v142 == v87[v146])
                {
                  v506[v132 * v88 + v146] = *(*(a2 + 32) + v145);
                }

                v145 += 8;
                ++v142;
                --v144;
              }

              while (v144);
              v136 = *(a2 + 8);
            }

            ++v138;
            v139 += v133;
          }

          while (v138 < *(v136 + 8 * v135 + 8));
        }

        ++v132;
      }

      while (v132 < v511);
    }

    if (v90 >= 1)
    {
      if (v511 >= 1)
      {
        for (j = 0; j < v511; ++j)
        {
          if (v532)
          {
            v149 = v532[j];
          }

          else
          {
            v149 = j + *(*(v18 + 176) + 4 * v536) * v92;
          }

          v150 = *(v18 + 312);
          v151 = (v150 + 8 * (v149 / v92));
          v152 = *v151;
          if (*v151 < v151[1])
          {
            do
            {
              if (v92)
              {
                v153 = *(*(v18 + 320) + 4 * v152) * v92;
                v154 = (a17 + v498 + 4 * v153);
                v155 = v92;
                v156 = 8 * (v149 % v92);
                do
                {
                  v158 = *v154++;
                  v157 = v158;
                  if (v158 < v90 && v153 == v89[v157])
                  {
                    v501[j * v90 + v157] = *(*(a2 + 32) + 8 * *(*(v18 + 328) + 8 * v152) * v93 + v156);
                  }

                  v156 += 8 * v92;
                  ++v153;
                  --v155;
                }

                while (v155);
                v150 = *(v18 + 312);
              }

              ++v152;
            }

            while (v152 < *(v150 + 8 * (v149 / v92) + 8));
          }
        }
      }

      if (v496 >= 1 && v511 < v541)
      {
        v159 = v541 - v496;
        v160 = v511;
        do
        {
          if (v160 >= v28)
          {
            if (v160 >= v159)
            {
              v161 = *(v518 + 4 * (v160 - v159));
            }

            else
            {
              v161 = (v160 - v28) % v92 + *(*(v18 + 208) + 4 * *(*(v18 + 200) + 8 * v536) + 4 * ((v160 - v28) / v92)) * v92;
            }
          }

          else if (v160 < 0)
          {
            v161 = 0x7FFFFFFF;
          }

          else if (v532)
          {
            v161 = v522[v160];
          }

          else
          {
            v161 = v160 + *(*(v18 + 176) + 4 * v536) * v92;
          }

          if (v161 < 0)
          {
            v161 = -v161;
          }

          v162 = *(v21 + 4 * v161);
          if (v162 < v90 && v89[v162] == v161 && (v160 < v28 || v161 < *(*(v18 + 176) + 4 * v536) * v92))
          {
            v163 = *(*(v18 + 160) + 4 * (v161 / v92));
            v164 = *(a2 + 8);
            v165 = (v164 + 8 * v163);
            v166 = *v165;
            if (*v165 < v165[1])
            {
              v167 = &v501[v162];
              v168 = v161 % v92 * v92;
              do
              {
                v169 = *(*(a2 + 16) + 4 * v166);
                if ((v169 & 0x80000000) == 0 && v169 < *a2 && v92 != 0)
                {
                  v171 = 0;
                  v172 = *(*(v18 + 136) + 4 * v169) * v92;
                  v173 = (a17 + 4 * v172);
                  v174 = v92;
                  do
                  {
                    v176 = *v173++;
                    v175 = v176;
                    v177 = -v176;
                    if (v176 <= 0 && v511 > v177)
                    {
                      v179 = v532 ? v532[v177] : *(*(v18 + 176) + 4 * v536) * v92 - v175;
                      if (v172 == v179)
                      {
                        v167[v177 * v90] = *(*(a2 + 32) + 8 * v166 * v93 + 8 * v171 + 8 * v168);
                      }
                    }

                    ++v171;
                    ++v172;
                    --v174;
                  }

                  while (v174);
                  v164 = *(a2 + 8);
                }

                ++v166;
              }

              while (v166 < *(v164 + 8 * v163 + 8));
            }
          }

          ++v160;
        }

        while (v160 < v541);
      }
    }
  }

  if (v54[1] == *v54)
  {
    v301 = 0;
    v302 = a14;
    v303 = v517;
    goto LABEL_380;
  }

  sub_23672AB18(a14);
  v180 = *(v18 + 240);
  v181 = *(v180 + 8 * v536);
  v182 = *(v180 + 8 * v528);
  v183 = v517;
  if (v181 >= v182)
  {
    v545 = 0;
    v189 = a6;
    goto LABEL_368;
  }

  v184 = 0;
  v185 = *(v18 + 256);
  v186 = *a14;
  v188 = v550;
  LODWORD(v187) = a3;
  v189 = a6;
  do
  {
    if ((*(v185 + v181) & 2) != 0)
    {
      v190 = *(*(v18 + 248) + 4 * v181);
      *(v517 + 4 * v184++) = v190;
      *(v186 + 4 * v190) = *(a14 + 16);
    }

    ++v181;
  }

  while (v182 != v181);
  if (v184 < 1)
  {
    v545 = v184;
    goto LABEL_368;
  }

  do
  {
    v191 = v184 - 1;
    v192 = *(v183 + 4 * v191);
    if (v187 == 83)
    {
      v193 = *(*(v189 + 9) + 4 * v192);
      LODWORD(v194) = *(*(v189 + 10) + 4 * v192);
      LODWORD(v195) = *(*(v189 + 11) + 4 * v192);
    }

    else
    {
      v193 = 0;
      LODWORD(v194) = 0;
      LODWORD(v195) = 0;
    }

    v196 = *(v18 + 176);
    v197 = v192 + 1;
    v198 = v193 + (*(v196 + 4 * (v192 + 1)) - *(v196 + 4 * v192)) * v188;
    v538 = v198;
    if (v187 == 83)
    {
      v538 = *(*(v189 + 8) + 4 * v192);
    }

    v199 = *(v189 + 14);
    v200 = *(v18 + 184);
    v201 = *(v200 + 8 * v197);
    v202 = *(v200 + 8 * v192);
    v203 = v198 + v194 + (v201 - v202) * v188;
    v204 = *(v18 + 200);
    v205 = *(v204 + 8 * v197);
    v206 = *(v204 + 8 * v192);
    v523 = *(v199 + 8 * v192) + 8;
    v207 = v195 + (v205 - v206) * v188;
    v208 = (v196 + 4 * v536);
    v544 = v191;
    v533 = *(v183 + 4 * v191);
    v520 = v523 + 8 * v203 * v198;
    v512 = v207;
    v502 = v203;
    if (v187 == 81)
    {
      v209 = 0;
      v499 = 0;
      if (v194 <= 0)
      {
        v210 = 0;
      }

      else
      {
        v210 = v198;
      }

      v211 = 4 * v210;
      if (v195 <= 0)
      {
        v212 = 0;
      }

      else
      {
        v212 = v198;
      }

      v213 = (4 * v212);
    }

    else
    {
      v209 = v523 + 8 * v203 * v198 + 8 * v207 * v198;
      if (v194 <= 0)
      {
        v211 = 0;
      }

      else
      {
        v211 = v209 + 4 * v198;
      }

      v499 = v209 + 4 * v198 + 4 * v194;
      v213 = (v499 + 4 * v198);
      if (v195 <= 0)
      {
        v213 = 0;
      }

      if (v187 == 83)
      {
        v214 = *(v189 + 8);
        v215 = *(*(v189 + 9) + 4 * v536);
        v216 = *(*(v189 + 10) + 4 * v536);
        v217 = *(*(v189 + 11) + 4 * v536);
        v218 = v550;
        v219 = v215 + (*(v196 + 4 * v528) - *v208) * v550;
        v220 = *(v214 + 4 * v536);
        goto LABEL_240;
      }
    }

    v217 = 0;
    v216 = 0;
    v218 = v550;
    v219 = (*(v196 + 4 * v528) - *v208) * v550;
    v220 = v219;
LABEL_240:
    v221 = *v54;
    v222 = (v54[1] - *v54) >> 2;
    v507 = *a9;
    v223 = *(v199 + 8 * v536) + 8 * (v216 + v219 + (*(v200 + 8 * v528) - *(v200 + v510)) * v218) * v219 + 8 * (v217 + (*(v204 + 8 * v528) - *(v204 + v510)) * v218) * v219 + 4 * v219 + 4 * v216 + 8;
    if (a3 == 81)
    {
      v224 = 0;
    }

    else
    {
      v224 = v223;
    }

    v225 = v538;
    if (v538 >= v198)
    {
      v226 = 0;
      v237 = v538;
      v230 = v548;
    }

    else
    {
      v226 = 0;
      v227 = v538 - v198;
      v228 = (v209 + 4 * v538);
      v229 = v538;
      v230 = v548;
      do
      {
        v232 = *v228++;
        v231 = v232;
        if (v232 >= 0)
        {
          v233 = v231;
        }

        else
        {
          v233 = -v231;
        }

        v234 = *(a17 + 4 * v233);
        if ((v234 & 0x80000000) == 0 && v234 < v222 && v221[v234] == v233)
        {
          v235 = (v548 + 8 * v226);
          *v235 = v229;
          v235[1] = v234;
          ++v226;
        }

        ++v229;
        v236 = __CFADD__(v227++, 1);
      }

      while (!v236);
      v237 = v198;
    }

    if (v201 > v202)
    {
      v238 = *(a4 + 192);
      do
      {
        if (v550 >= 1)
        {
          v239 = *(v238 + 4 * v202) * v550;
          v240 = v239 + v550;
          do
          {
            v241 = *(a17 + 4 * v239);
            if ((v241 & 0x80000000) == 0 && v241 < v222 && v239 == v221[v241])
            {
              v242 = &v230[v226++];
              *v242 = v237;
              v242[1] = v241;
            }

            ++v239;
            ++v237;
          }

          while (v239 < v240);
        }

        ++v202;
      }

      while (v202 != v201);
    }

    if (v194 < 1)
    {
      v18 = a4;
      v243 = v530;
    }

    else
    {
      v194 = v194;
      v18 = a4;
      v243 = v530;
      do
      {
        v244 = *v211;
        v211 += 4;
        v202 = v244;
        v201 = *(a17 + 4 * v244);
        if ((v201 & 0x80000000) == 0 && v201 < v222)
        {
          if (v221[v201] == v202)
          {
            v202 = &v230[v226];
            *v202 = v237;
            *(v202 + 4) = v201;
            ++v226;
          }

          v243 = v530;
        }

        ++v237;
        --v194;
      }

      while (v194);
    }

    v188 = v550;
    v187 = a3;
    if (v226)
    {
      if (v538 >= v198)
      {
        v245 = 0;
        v251 = v538;
      }

      else
      {
        v245 = 0;
        v246 = v538 - v198;
        v247 = (v499 + 4 * v538);
        do
        {
          v249 = *v247++;
          v248 = v249;
          if (v249 >= 0)
          {
            v201 = v248;
          }

          else
          {
            v201 = -v248;
          }

          v202 = *(v21 + 4 * v201);
          v211 = -v202;
          if (v202 <= 0 && v220 > v211)
          {
            if (v187 == 81)
            {
              v202 = (*v208 * v550 - v202);
              v187 = a3;
            }

            else
            {
              v202 = *(v223 + 4 * v211);
            }

            if (v202 == v201)
            {
              v201 = &v243[v245];
              v202 = (v245 + 1);
              *v201 = v225;
              *(v201 + 4) = v211;
              ++v245;
            }
          }

          ++v225;
          v236 = __CFADD__(v246++, 1);
        }

        while (!v236);
        v251 = v198;
      }

      if (v205 > v206)
      {
        v252 = *(v18 + 208);
        do
        {
          if (v550 >= 1)
          {
            v253 = *(v252 + 4 * v206) * v550;
            v211 = v253 + v550;
            do
            {
              v202 = *(v21 + 4 * v253);
              v201 = -v202;
              if (v202 <= 0 && v220 > v201)
              {
                if (v187 == 81)
                {
                  v202 = (*v208 * v550 - v202);
                }

                else
                {
                  v202 = *(v223 + 4 * v201);
                }

                if (v253 == v202)
                {
                  v202 = &v243[v245];
                  *v202 = v251;
                  *(v202 + 4) = v201;
                  ++v245;
                }

                v187 = a3;
              }

              ++v253;
              ++v251;
            }

            while (v253 < v211);
          }

          ++v206;
        }

        while (v206 != v205);
      }

      if (v195 < 1)
      {
        v255 = v538;
        if (!v245)
        {
          goto LABEL_355;
        }

LABEL_323:
        v262 = v226 * v255;
        if (a11[1] < (v226 * v255))
        {
          if (*a11)
          {
            (*(v18 + 32))(*a11, v211, v201, v202, v187, v550);
          }

          *a11 = (*(v18 + 24))(8 * v262);
          a11[1] = v262;
          v230 = v548;
          v243 = v530;
          v255 = v538;
        }

        v263 = v226;
        v264 = v255;
        v265 = v523;
        if (v255 >= 1)
        {
          v266 = 0;
          for (k = 0; k != v255; ++k)
          {
            if (v226 >= 1)
            {
              v268 = v230;
              v269 = v266;
              v270 = v226;
              do
              {
                v271 = *v268++;
                *(*a11 + v269) = *(v523 + 8 * k * v502 + 8 * v271);
                v269 += 8;
                --v270;
              }

              while (v270);
            }

            v266 += 8 * v226;
          }
        }

        v272 = v245 * v255;
        if (a12[1] < (v245 * v255))
        {
          v273 = a4;
          if (*a12)
          {
            (*(a4 + 32))(*a12, v226);
            v273 = a4;
          }

          *a12 = (*(v273 + 24))(8 * v272, v263);
          a12[1] = v272;
          v243 = v530;
          v255 = v538;
          v265 = v523;
        }

        v274 = v245;
        v18 = a4;
        v275 = v520;
        v276 = v512;
        if (v255 >= 1)
        {
          v277 = 0;
          v278 = 0;
          do
          {
            if (v245 >= 1)
            {
              v279 = v243;
              v280 = v277;
              v281 = v245;
              do
              {
                v282 = *v279++;
                v283 = v520 + 8 * v278 * v512 + 8 * (v282 - v198);
                v284 = (v265 + 8 * v278 + 8 * v282 * v502);
                if (v282 >= v198)
                {
                  v284 = v283;
                }

                *(*a12 + v280) = *v284;
                v280 += 8;
                --v281;
              }

              while (v281);
            }

            ++v278;
            v277 += 8 * v245;
          }

          while (v278 != v264);
        }

        v285 = v245 * v226;
        v286 = *a13;
        if (a13[1] < v245 * v226)
        {
          if (v286)
          {
            (*(a4 + 32))(v286, v520, v512, v245);
          }

          *a13 = (*(a4 + 24))(8 * v285, v275, v276, v274);
          a13[1] = v285;
        }

        v287 = *a11;
        v486 = *a12;
        cblas_cgemm_NEWLAPACK();
        v188 = v550;
        LODWORD(v187) = a3;
        if (v245 >= 1)
        {
          v288 = 0;
          v289 = *a13;
          do
          {
            if (v226 >= 1)
            {
              v290 = &v507[8 * SHIDWORD(v530[v288]) * (v490 >> 2)];
              v291 = v548;
              v292 = v289;
              v293 = v226;
              do
              {
                v294 = *v292++;
                *&v290[8 * *(v291 + 4)] = vadd_f32(v294, *&v290[8 * *(v291 + 4)]);
                v291 += 8;
                --v293;
              }

              while (v293);
            }

            ++v288;
            v289 += v226;
          }

          while (v288 != v245);
        }

        goto LABEL_355;
      }

      v195 = v195;
      v255 = v538;
      do
      {
        v257 = *v213++;
        v256 = v257;
        v258 = *(v21 + 4 * v257);
        v259 = -v258;
        v260 = v258 > 0 || v220 <= v259;
        if (!v260 && *(v224 + 4 * v259) == v256)
        {
          v261 = &v243[v245];
          *v261 = v251;
          v261[1] = v259;
          ++v245;
        }

        ++v251;
        --v195;
      }

      while (v195);
      if (v245)
      {
        goto LABEL_323;
      }
    }

LABEL_355:
    v295 = (*(v18 + 240) + 8 * v533);
    v296 = *v295;
    v297 = v295[1];
    if (v296 >= v297)
    {
      v189 = a6;
      v183 = v517;
      v184 = v544;
    }

    else
    {
      v298 = *(v18 + 256);
      v299 = *a14;
      v189 = a6;
      v183 = v517;
      v184 = v544;
      do
      {
        if ((*(v298 + v296) & 2) != 0)
        {
          v300 = *(*(v18 + 248) + 4 * v296);
          if (*(v299 + 4 * v300) < *(a14 + 16))
          {
            *(v517 + 4 * v184++) = v300;
            *(v299 + 4 * v300) = *(a14 + 16);
          }
        }

        ++v296;
      }

      while (v297 != v296);
    }
  }

  while (v184 >= 1);
  v545 = v184;
  v511 = v557;
LABEL_368:
  v304 = (v54[1] - *v54) >> 2;
  v488 = *a9;
  cblas_ctrsm_NEWLAPACK();
  if (v511 < 1)
  {
    v312 = 0.0;
  }

  else
  {
    v305 = 0;
    v539 = v54[1];
    v534 = *v54;
    v306 = v539 - *v54;
    if (v306 <= 1)
    {
      v306 = 1;
    }

    v524 = v306;
    v307 = *a9 + 4;
    v308 = 0.0;
    do
    {
      v309 = v524;
      v310 = v307;
      if (v539 != v534)
      {
        do
        {
          v311 = hypotf(*(v310 - 1), *v310);
          if (v311 >= v308)
          {
            v308 = v311;
          }

          v310 += 2;
          --v309;
        }

        while (v309);
      }

      ++v305;
      v307 += 8 * (v490 >> 2);
    }

    while (v305 != v511);
    v312 = v308;
    v18 = a4;
    v189 = a6;
  }

  v313 = 1.0 / v189[2];
  i = v527;
  v302 = a14;
  v303 = v517;
  v301 = v545;
  if (v313 < v312)
  {
    *(a15 + v536) = 1;
    v324 = *(v18 + 168);
    if (v528 >= v324)
    {
      return;
    }

    while (1)
    {
      if ((*(a15 + v528) & 1) == 0)
      {
        v325 = (*(v18 + 240) + 8 * v528);
        v327 = *v325;
        v326 = v325[1];
        v95 = v326 <= v327;
        v328 = v326 - v327;
        if (!v95)
        {
          v329 = (*(v18 + 248) + 4 * v327);
          while (1)
          {
            v330 = *v329++;
            if (*(a15 + v330) == 1)
            {
              break;
            }

            if (!--v328)
            {
              goto LABEL_395;
            }
          }

          *(a15 + v528) = 1;
        }
      }

LABEL_395:
      if (v324 == ++v528)
      {
        return;
      }
    }
  }

LABEL_380:
  v314 = (v494 >> 2);
  if (v504[1] == *v504)
  {
    goto LABEL_541;
  }

  sub_23672AB18(v302);
  v315 = v536;
  v316 = *(v18 + 240);
  v317 = *(v316 + 8 * v536);
  v503 = v316;
  v318 = *(v316 + 8 * v528);
  if (v317 >= v318)
  {
    LODWORD(v321) = v550;
    v322 = a3;
  }

  else
  {
    v319 = *(v18 + 256);
    v320 = *v302;
    LODWORD(v321) = v550;
    v322 = a3;
    do
    {
      if (*(v319 + v317))
      {
        v323 = *(*(v18 + 248) + 4 * v317);
        *(v303 + 4 * v301++) = v323;
        *(v320 + 4 * v323) = *(v302 + 16);
      }

      ++v317;
    }

    while (v318 != v317);
  }

  while (2)
  {
    if (v301 >= 1)
    {
      v331 = v301 - 1;
      v332 = *(v303 + 4 * v331);
      if (v322 == 83)
      {
        v333 = a6;
        v334 = *(*(a6 + 9) + 4 * v332);
        LODWORD(v335) = *(*(a6 + 10) + 4 * v332);
        v336 = *(*(a6 + 11) + 4 * v332);
      }

      else
      {
        v334 = 0;
        LODWORD(v335) = 0;
        v336 = 0;
        v333 = a6;
      }

      v337 = *(v18 + 176);
      v338 = v332 + 1;
      v339 = v334 + (*(v337 + 4 * (v332 + 1)) - *(v337 + 4 * v332)) * v321;
      v340 = v339;
      if (v322 == 83)
      {
        v340 = *(*(v333 + 8) + 4 * v332);
      }

      v540 = v340;
      v341 = *(v333 + 14);
      v342 = *(v18 + 184);
      v343 = *(v342 + 8 * v338);
      v344 = *(v342 + 8 * v332);
      v345 = *(v18 + 200);
      v346 = *(v345 + 8 * v338);
      v347 = *(v345 + 8 * v332);
      v493 = v339 + v335 + (v343 - v344) * v321;
      v513 = *(v341 + 8 * v332) + 8;
      v348 = v336 + (v346 - v347) * v321;
      v349 = (v337 + 4 * v315);
      v546 = v331;
      v535 = v332;
      v497 = v348;
      v500 = v513 + 8 * v493 * v339;
      v525 = v336;
      if (v322 == 81)
      {
        v508 = 0;
        v491 = 0;
        if (v335 <= 0)
        {
          v350 = 0;
        }

        else
        {
          v350 = v339;
        }

        v351 = (4 * v350);
        v352 = v339;
        if (v336 <= 0)
        {
          v353 = 0;
        }

        else
        {
          v353 = v339;
        }

        v354 = (4 * v353);
      }

      else
      {
        v508 = v513 + 8 * v493 * v339 + 8 * v348 * v339;
        v355 = v508 + 4 * v339;
        if (v335 <= 0)
        {
          v351 = 0;
        }

        else
        {
          v351 = (v508 + 4 * v339);
        }

        v352 = v339;
        v491 = v355 + 4 * v335;
        if (v336 <= 0)
        {
          v354 = 0;
        }

        else
        {
          v354 = (v355 + 4 * v335 + 4 * v339);
        }

        if (v322 == 83)
        {
          v356 = *(v333 + 8);
          v357 = *(*(v333 + 9) + 4 * v536);
          v358 = *(*(v333 + 10) + 4 * v536);
          v359 = *(*(v333 + 11) + 4 * v536);
          v360 = v550;
          v361 = v357 + (*(v337 + 4 * v528) - *v349) * v550;
          v362 = *(v356 + 4 * v536);
          v322 = a3;
          goto LABEL_420;
        }
      }

      v359 = 0;
      v358 = 0;
      v360 = v550;
      v361 = (*(v337 + 4 * v528) - *v349) * v550;
      v362 = v361;
LABEL_420:
      v363 = 0;
      v364 = *(v341 + 8 * v536);
      v365 = *v504;
      v521 = v504[1];
      v495 = *a10;
      v366 = v364 + 8 * (v358 + v361 + (*(v342 + 8 * v528) - *(v342 + v510)) * v360) * v361 + 8 * (v359 + (*(v345 + 8 * v528) - *(v345 + v510)) * v360) * v361;
      v367 = v366 + 8;
      if (v322 == 81)
      {
        v368 = 0;
      }

      else
      {
        v368 = v366 + 8;
      }

      v369 = v540;
      v370 = v352;
      if (v540 < v339)
      {
        v363 = 0;
        v371 = v540 - v352;
        v372 = (v508 + 4 * v540);
        v373 = v540;
        do
        {
          v375 = *v372++;
          v374 = v375;
          if (v375 >= 0)
          {
            v376 = v374;
          }

          else
          {
            v376 = -v374;
          }

          v377 = *(a17 + 4 * v376);
          v378 = -v377;
          if (v377 <= 0 && v362 > v378)
          {
            if (v322 == 81)
            {
              v322 = a3;
              v380 = *v349 * v550 - v377;
            }

            else
            {
              v380 = *(v367 + 4 * v378);
            }

            if (v380 == v376)
            {
              v381 = (v548 + 8 * v363++);
              *v381 = v373;
              v381[1] = v378;
            }
          }

          ++v373;
          v236 = __CFADD__(v371++, 1);
        }

        while (!v236);
        v369 = v339;
      }

      if (v343 > v344)
      {
        v382 = *(a4 + 192);
        do
        {
          if (v550 >= 1)
          {
            v383 = *(v382 + 4 * v344) * v550;
            v384 = v383 + v550;
            v385 = v383;
            do
            {
              v386 = *(a17 + 4 * v385);
              v387 = -v386;
              if (v386 <= 0 && v362 > v387)
              {
                if (v322 == 81)
                {
                  v389 = *v349 * v550 - v386;
                  v322 = a3;
                }

                else
                {
                  v389 = *(v367 + 4 * v387);
                }

                if (v385 == v389)
                {
                  v390 = (v548 + 8 * v363++);
                  *v390 = v369;
                  v390[1] = v387;
                }
              }

              ++v385;
              ++v369;
            }

            while (v385 < v384);
          }

          ++v344;
        }

        while (v344 != v343);
      }

      if (v335 < 1)
      {
        v321 = v550;
        v391 = v548;
      }

      else
      {
        v335 = v335;
        v321 = v550;
        v391 = v548;
        do
        {
          v393 = *v351++;
          v392 = v393;
          v394 = *(a17 + 4 * v393);
          v395 = -v394;
          v396 = v394 > 0 || v362 <= v395;
          if (!v396 && *(v368 + 4 * v395) == v392)
          {
            v397 = (v548 + 8 * v363++);
            *v397 = v369;
            v397[1] = v395;
          }

          ++v369;
          --v335;
        }

        while (v335);
      }

      v18 = a4;
      if (v363)
      {
        v398 = (v521 - v365) >> 2;
        v399 = v530;
        v400 = 0;
        if (v540 >= v339)
        {
          v408 = v540;
        }

        else
        {
          v401 = v540 - v370;
          v402 = (v491 + 4 * v540);
          v403 = v540;
          do
          {
            v405 = *v402++;
            v404 = v405;
            if (v405 < 0)
            {
              v404 = -v404;
            }

            v406 = *(v21 + 4 * v404);
            if ((v406 & 0x80000000) == 0 && v406 < v398)
            {
              v344 = v365[v406];
              if (v344 == v404)
              {
                v407 = &v530[v400++];
                *v407 = v403;
                v407[1] = v406;
              }
            }

            ++v403;
            v236 = __CFADD__(v401++, 1);
          }

          while (!v236);
          v408 = v339;
        }

        if (v346 > v347)
        {
          v409 = *(a4 + 208);
          do
          {
            if (v321 >= 1)
            {
              v410 = *(v409 + 4 * v347) * v321;
              v411 = v410;
              v412 = v410 + v321;
              do
              {
                v344 = *(v21 + 4 * v411);
                if ((v344 & 0x80000000) == 0 && v344 < v398 && v411 == v365[v344])
                {
                  v413 = &v530[v400++];
                  *v413 = v408;
                  v413[1] = v344;
                }

                ++v411;
                ++v408;
              }

              while (v411 < v412);
            }

            ++v347;
          }

          while (v347 != v346);
        }

        if (v525 >= 1)
        {
          v414 = v525;
          v315 = v536;
          do
          {
            v416 = *v354++;
            v415 = v416;
            v417 = *(v21 + 4 * v416);
            if ((v417 & 0x80000000) == 0 && v417 < v398 && v365[v417] == v415)
            {
              v418 = &v530[v400++];
              *v418 = v408;
              v418[1] = v417;
            }

            ++v408;
            --v414;
          }

          while (v414);
          if (!v400)
          {
            goto LABEL_530;
          }

          goto LABEL_500;
        }

        v315 = v536;
        if (v400)
        {
LABEL_500:
          v419 = v540;
          v420 = v540 * v363;
          if (a11[1] < (v540 * v363))
          {
            if (*a11)
            {
              (*(a4 + 32))(*a11, v344, v321, v530, v322, v368);
            }

            *a11 = (*(a4 + 24))(8 * v420);
            a11[1] = v420;
            v391 = v548;
            v399 = v530;
            v419 = v540;
          }

          v421 = v419;
          v422 = v513;
          if (v419 >= 1)
          {
            v423 = 0;
            v424 = 0;
            do
            {
              v425 = v391;
              v426 = v423;
              v427 = v363;
              do
              {
                v428 = *v425++;
                *(*a11 + v426) = *(v513 + 8 * v424 * v493 + 8 * v428);
                v426 += 8;
                --v427;
              }

              while (v427);
              ++v424;
              v423 += 8 * v363;
            }

            while (v424 != v421);
          }

          v429 = v540;
          v430 = v540 * v400;
          if (a12[1] < (v540 * v400))
          {
            v431 = a4;
            if (*a12)
            {
              (*(a4 + 32))(*a12, v344, v321, v399, v322, v368);
              v431 = a4;
              v430 = v540 * v400;
            }

            v526 = v430;
            *a12 = (*(v431 + 24))(8 * v430);
            a12[1] = v526;
            v399 = v530;
            v429 = v540;
            v422 = v513;
          }

          v433 = v497;
          v432 = v513 + 8 * v493 * v339;
          if (v429 >= 1)
          {
            v434 = 0;
            v435 = 0;
            do
            {
              v436 = v399;
              v437 = v434;
              v438 = v400;
              do
              {
                v439 = *v436++;
                v440 = v500 + 8 * v435 * v497 + 8 * (v439 - v339);
                v441 = (v422 + 8 * v435 + 8 * v439 * v493);
                if (v439 >= v339)
                {
                  v441 = v440;
                }

                *(*a12 + v437) = *v441;
                v437 += 8;
                --v438;
              }

              while (v438);
              ++v435;
              v434 += 8 * v400;
            }

            while (v435 != v421);
          }

          v442 = v400 * v363;
          v443 = *a13;
          if (a13[1] >= v442)
          {
            v444 = a13;
          }

          else
          {
            if (v443)
            {
              (*(a4 + 32))(v443, v500, v497, v399);
            }

            v444 = a13;
            *a13 = (*(a4 + 24))(8 * v442, v432, v433, v399);
            a13[1] = v442;
          }

          v445 = *a11;
          v487 = *a12;
          cblas_cgemm_NEWLAPACK();
          v446 = 0;
          v447 = *v444;
          v18 = a4;
          LODWORD(v321) = v550;
          v322 = a3;
          v315 = v536;
          do
          {
            v448 = &v495[8 * SHIDWORD(v530[v446])];
            v449 = v548;
            v450 = v447;
            v451 = v363;
            do
            {
              v452 = *(v449 + 4) * v314;
              v453 = *v450++;
              *&v448[8 * v452] = vadd_f32(v453, *&v448[8 * v452]);
              v449 += 8;
              --v451;
            }

            while (v451);
            ++v446;
            v447 += v363;
          }

          while (v446 != v400);
          v503 = *(a4 + 240);
        }
      }

      else
      {
        v315 = v536;
      }

LABEL_530:
      v454 = (v503 + 8 * v535);
      v455 = *v454;
      v456 = v454[1];
      if (*v454 >= v456)
      {
        i = v527;
        v303 = v517;
        v301 = v546;
      }

      else
      {
        v457 = *(v18 + 256);
        v458 = *a14;
        i = v527;
        v303 = v517;
        v301 = v546;
        do
        {
          if (*(v457 + v455))
          {
            v459 = *(*(v18 + 248) + 4 * v455);
            if (*(v458 + 4 * v459) < *(a14 + 16))
            {
              *(v517 + 4 * v301++) = v459;
              *(v458 + 4 * v459) = *(a14 + 16);
            }
          }

          ++v455;
        }

        while (v456 != v455);
      }

      continue;
    }

    break;
  }

  if (v557 > 1)
  {
    v460 = (v504[1] - *v504) >> 2;
    v489 = *a10;
    cblas_ctrsm_NEWLAPACK();
  }

LABEL_541:
  v461 = v550;
  v462 = a9;
  if ((v515 & 1) == 0 && v54[1] != *v54)
  {
    sub_23672A9A0(a1, &v553, v18, v550, v531);
    v462 = a9;
    v461 = v550;
  }

  v463 = v557;
  if (v557 >= 1)
  {
    v464 = 0;
    v465 = 0;
    v466 = *(&v557 + 1);
    v467 = v558;
    v468 = *v54;
    v469 = v54[1];
    do
    {
      if (v469 == v468)
      {
        v469 = v468;
      }

      else
      {
        v470 = 0;
        v471 = v464;
        do
        {
          *(v466 + 8 * v467 * v465 + 8 * *(v531 + 4 * v468[v470++])) = *(*v462 + v471);
          v468 = *v54;
          v469 = v54[1];
          v471 += 8;
        }

        while (v470 < v469 - *v54);
      }

      ++v465;
      v464 += 8 * (v490 >> 2);
    }

    while (v465 != v463);
  }

  if ((v515 & 0x100000000) == 0 && v504[1] != *v504)
  {
    sub_23672AA5C(a1, &v553, v18, v461, i);
  }

  if (v463 >= 1)
  {
    v472 = 0;
    v473 = 0;
    v474 = v556;
    v475 = *(&v558 + 1);
    v476 = v559;
    v477 = *(&v557 + 1);
    v478 = v558;
    v479 = *v504;
    v480 = v504[1];
    do
    {
      if (v480 == v479)
      {
        v480 = v479;
      }

      else
      {
        v481 = 0;
        v482 = v472;
        do
        {
          v483 = *(i + 4 * v479[v481]);
          v95 = v483 < v474;
          v484 = v475 + 8 * v476 * v473 + 8 * (v483 - v474);
          v485 = (v477 + 8 * v473 + 8 * v478 * v483);
          if (!v95)
          {
            v485 = v484;
          }

          *v485 = *(*a10 + v482);
          ++v481;
          v479 = *v504;
          v480 = v504[1];
          v482 += 8;
        }

        while (v481 < v480 - *v504);
      }

      ++v473;
      v472 += 8 * v314;
    }

    while (v473 != v463);
  }
}