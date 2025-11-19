void sub_2367898A8(uint64_t a1, int a2, int a3, unsigned int a4, void *a5, void *a6, signed int a7, uint64_t a8, int *a9, int *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_23671548C;
  v15 = sub_2367154DC;
  if (a4 <= 2)
  {
    if (a4)
    {
      v14 = sub_236800158;
      v15 = sub_236800F3C;
    }

    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v14 = sub_23673EC4C;
    v15 = sub_236743138;
LABEL_6:
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = a5[10];
    v20 = a4 - 3 < 2;
    v21 = a1;
    goto LABEL_8;
  }

  v19 = a5[10];
  v21 = a1;
  v18 = atomic_load((a6[6] + 4 * a1));
  v16 = sub_236743138;
  v14 = sub_23673EC4C;
  v20 = 1;
  v17 = 1;
LABEL_8:
  v22 = a5[15];
  v23 = a1;
  v24 = a1 + 1;
  v25 = a5[11];
  v26 = *(v25 + 4 * v24);
  v27 = v18 + *(v22 + 8 * v24) - *(v22 + 8 * v21);
  v28 = v26 - *(v25 + 4 * v21) + v18;
  v29 = v28;
  if (v17)
  {
    v29 = *(a6[7] + 4 * v21);
  }

  v30 = v28 * v27;
  if (!v20)
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = *(a6[5] + 8 * v21) + 8;
    v32 = v27;
    v33 = v31 + 16 * v30;
    v34 = v28 + a3;
    v35 = v27 - (v28 + a3);
    if (v35 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = v35;
    }

    v37 = v27 - v28;
    if ((v27 - v28) >= a7)
    {
      v38 = a7;
    }

    else
    {
      v38 = v27 - v28;
    }

    v39 = v38;
    v40 = *(v22 + 8 * v23) + v26 - *(v25 + 4 * v23);
    v41 = v40 + a3;
    v42 = v41 + v36;
    if (a2 == a3)
    {
      (v14)(v36, v29, v31 + 16 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      for (i = *(a5[14] + 4 * v23); i != -1; i = *(a5[14] + 4 * v45))
      {
        v44 = a5[16];
        v45 = i;
        v46 = (a5[11] + 4 * i);
        if (*(v19 + 4 * *(v44 + 4 * v61[0])) < v46[1])
        {
          if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v44 + 4 * v42)) < *v46)
          {
            return;
          }

          v47 = (a8 + 16 * (v61[0] - v41) * (v39 + 1));
          if (a12)
          {
            sub_23673A7C4(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, (a12 + v45));
          }

          else
          {
            sub_23673A7C4(a1, v45, v61, v41 + v36, a4, a5, a6, v47, v39, v19, a11, a10, 0);
          }
        }
      }
    }

    else
    {
      if (v37 - a2 >= a7)
      {
        v48 = a7;
      }

      else
      {
        v48 = (v37 - a2);
      }

      v16(v48, v36, v29, v31 + 16 * (v28 + a2), v31 + 16 * v34, v32, v33, a8, v38, a13);
      v61[0] = v41;
      v49 = *(a5[14] + 4 * v23);
      if (v49 != -1)
      {
        v50 = v40 + a2;
        v51 = v50 + v48;
        do
        {
          v52 = a5[16];
          v53 = v49;
          v54 = (a5[11] + 4 * v49);
          if (*(v19 + 4 * *(v52 + 4 * v61[0])) < v54[1])
          {
            if (v42 < *(a5[15] + 8 * v24) && *(v19 + 4 * *(v52 + 4 * v42)) < *v54)
            {
              return;
            }

            v55 = (a8 + 16 * (v61[0] - v41) * v39);
            if (a12)
            {
              sub_23673A9B0(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, (a12 + v53));
            }

            else
            {
              sub_23673A9B0(a1, v53, v50, v61, v51, v41 + v36, a4, a5, a6, v55, v39, v19, a11, a9, a10, 0);
            }
          }

          v49 = *(a5[14] + 4 * v53);
        }

        while (v49 != -1);
      }
    }
  }
}

void sub_236789CA4(uint64_t a1, atomic_uint *volatile *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 64);
  v12 = *(a1 + 40);
  v13 = v12 + *(v10 + 48);
  v14 = *(v11 + 2);
  v15 = ((v12 + 4 * *(v14 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v15)
  {
    goto LABEL_7;
  }

  a7 = *(v11 + 8);
  v8 = ((&v15[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v8)
  {
    goto LABEL_7;
  }

  a8 = (&v8[a7 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13 < a8)
  {
    goto LABEL_7;
  }

  v16 = a8 + 16 * a7 * a7;
  if (v16 > v13)
  {
    goto LABEL_7;
  }

  v9 = a2;
  a4 = *v11;
  if (a4 - 2 > 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v16 + 66560 > v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_2367898A8(*v9, *(v9 + 1), *(v9 + 2), a4, v14, *(v11 + 3), a7, a8, v15, v8, v12, *(v11 + 7), v16);
  atomic_fetch_add(v9[2], 1u);
}

void _SparseRetainNumeric_Float(SparseOpaqueFactorization_Float *numericFactor)
{
  _SparseRetainSymbolic(&numericFactor->symbolicFactorization);
  v2 = BYTE1(numericFactor->symbolicFactorization.factorization);
  v3 = v2 > 0x29 || ((1 << v2) & 0x3000000001DLL) == 0;
  if (!v3 || v2 - 81 < 3)
  {
    atomic_fetch_add((numericFactor->solveWorkspaceRequiredStatic + 32), 1u);
  }
}

void _SparseDestroyOpaqueNumeric_Float(SparseOpaqueFactorization_Float *toFree)
{
  solveWorkspaceRequiredStatic = toFree->solveWorkspaceRequiredStatic;
  if (solveWorkspaceRequiredStatic)
  {
    v3 = BYTE1(toFree->symbolicFactorization.factorization);
    if (v3 <= 0x29)
    {
      if (((1 << v3) & 0x1D) != 0)
      {
        workspaceSize_Float = toFree->symbolicFactorization.workspaceSize_Float;
        numericFactorization = toFree->numericFactorization;
        if (atomic_fetch_add((solveWorkspaceRequiredStatic + 32), 0xFFFFFFFF) != 1)
        {
          goto LABEL_24;
        }

        v6 = *(workspaceSize_Float + 64);
        if (v6 >= 1)
        {
          for (i = 0; i < v6; ++i)
          {
            if (**(*(solveWorkspaceRequiredStatic + 40) + 8 * i))
            {
              (*(workspaceSize_Float + 32))();
              v6 = *(workspaceSize_Float + 64);
            }
          }
        }

LABEL_22:
        if ((numericFactorization & 1) == 0)
        {
LABEL_23:
          (*(workspaceSize_Float + 32))(solveWorkspaceRequiredStatic);
        }

LABEL_24:
        toFree->solveWorkspaceRequiredStatic = 0;
        goto LABEL_25;
      }

      if (((1 << v3) & 0x30000000000) != 0)
      {
        workspaceSize_Float = toFree->symbolicFactorization.workspaceSize_Float;
        v8 = toFree->numericFactorization;
        if (atomic_fetch_add((solveWorkspaceRequiredStatic + 32), 0xFFFFFFFF) != 1 || (v8 & 1) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    workspaceSize_Float = toFree->symbolicFactorization.workspaceSize_Float;
    numericFactorization = toFree->numericFactorization;
    if (atomic_fetch_add((solveWorkspaceRequiredStatic + 32), 0xFFFFFFFF) != 1)
    {
      goto LABEL_24;
    }

    if (*(solveWorkspaceRequiredStatic + 72))
    {
      v9 = *(workspaceSize_Float + 168);
      if (v9 >= 1)
      {
        for (j = 0; j < v9; ++j)
        {
          if (**(*(solveWorkspaceRequiredStatic + 112) + 8 * j))
          {
            (*(workspaceSize_Float + 32))();
            v9 = *(workspaceSize_Float + 168);
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_25:
  _SparseDestroyOpaqueSymbolic(&toFree->symbolicFactorization);
  toFree->status = SparseStatusReleased;
}

void _SparseReleaseOpaquePreconditioner_Float(SparseOpaquePreconditioner_Float *toFree)
{
  if ((toFree->type & 0xFFFFFFFE) == 2)
  {
    free(toFree->mem);
  }
}

uint64_t sub_236789F74(uint64_t result, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, _DWORD *__b)
{
  v12 = a3[a2];
  v13 = *a3;
  v14 = (v12 - *a3);
  if (v12 == *a3)
  {
    **(a6 + 8) = 0;
    **(a7 + 8) = 0;
    *(a6 + 16) = 0;
    *(a7 + 16) = 0;
  }

  else
  {
    v117 = result;
    if (a2 < 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = __b;
      __pattern4 = -1;
      v20 = v14;
      memset_pattern4(__b, &__pattern4, 4 * *result);
      v14 = v20;
      v21 = 0;
      LODWORD(v22) = *a3;
      do
      {
        v23 = v21++;
        LODWORD(v24) = a3[v21];
        if (v22 < v24)
        {
          v22 = v22;
          do
          {
            __b[v22++] = v23;
            v24 = a3[v21];
          }

          while (v22 < v24);
        }

        LODWORD(v22) = v24;
      }

      while (v21 != a2);
      v13 = *a3;
    }

    v25 = (*(a6 + 8) + 16);
    v118 = a7;
    v26 = (*(a7 + 8) + 16);
    v114 = v14;
    v27 = 8 * v14;
    bzero(v25, v27);
    bzero(v26, v27);
    if (a2 == 1)
    {
      v28 = *(v117 + 4);
      v29 = a8;
      if (v28 >= 1)
      {
        v30 = 0;
        v31 = a3[1];
        v32 = *v117;
        v33 = *(v117 + 8);
        v34 = *(v117 + 16);
        do
        {
          v35 = *(a5 + 4 * v30);
          if (v35 >= v13 && v35 < v31)
          {
            v37 = (v33 + 8 * v30);
            v39 = *v37;
            v38 = v37[1];
            if (*v37 < v38)
            {
              do
              {
                v40 = *(v34 + 4 * v39);
                if ((v40 & 0x80000000) == 0 && v40 < v32)
                {
                  v41 = *(a4 + 4 * v40);
                  v42 = v41 == v35 || v41 < v13;
                  if (!v42 && v41 < v31)
                  {
                    v44 = &v26[8 * (v41 - v13)];
                    if (v41 >= v35)
                    {
                      v44 = &v25[8 * (v35 - v13)];
                    }

                    ++*v44;
                    v38 = v37[1];
                  }
                }

                ++v39;
              }

              while (v39 < v38);
            }
          }

          ++v30;
        }

        while (v30 != v28);
      }
    }

    else
    {
      v45 = *(v117 + 4);
      v29 = a8;
      if (v45 >= 1)
      {
        v46 = 0;
        v47 = *v117;
        v48 = *(v117 + 8);
        v49 = *(v117 + 16);
        v50 = *v48;
        do
        {
          v51 = v46++;
          v52 = v48[v46];
          while (v50 < v52)
          {
            v53 = *(v49 + 4 * v50);
            if ((v53 & 0x80000000) == 0 && v53 < v47)
            {
              v54 = *(a4 + 4 * v53);
              v55 = *(a5 + 4 * v51);
              if (v54 != v55)
              {
                v56 = v19[v54];
                if (v56 != -1 && v56 == v19[v55])
                {
                  if (v54 >= v55)
                  {
                    v58 = *(a5 + 4 * v51);
                  }

                  else
                  {
                    v58 = v54;
                  }

                  if (v54 >= v55)
                  {
                    v59 = v25;
                  }

                  else
                  {
                    v59 = v26;
                  }

                  ++*&v59[8 * (v58 - v13)];
                  v52 = v48[v46];
                }
              }
            }

            ++v50;
          }

          v50 = v52;
        }

        while (v46 != v45);
      }
    }

    v60 = *(a6 + 8);
    *(v60 + 8) = 0;
    v61 = v60 + 8;
    v62 = *(a7 + 8);
    *(v62 + 8) = 0;
    v63 = v62 + 8;
    if (v114 > 1)
    {
      v64 = v114 - 1;
      v65 = (v60 + 16);
      v66 = (v62 + 16);
      v67 = v26;
      v68 = v25;
      do
      {
        v69 = *v68++;
        *v65 = v69 + *(v65 - 1);
        ++v65;
        v70 = *v67++;
        *v66 = v70 + *(v66 - 1);
        ++v66;
        --v64;
      }

      while (v64);
    }

    v71 = 8 * v114 - 8;
    v72 = *&v25[v71] + *(v61 + v71);
    v73 = *(v63 + v71);
    v74 = *&v26[v71];
    *(a6 + 16) = v29;
    *(v118 + 16) = &v29[4 * v72];
    result = madvise(v29, 4 * (v72 + v73 + v74), 3);
    if (a2 == 1)
    {
      v75 = a3[1];
      v76 = *v117;
      v77 = *(v117 + 4);
      v78 = *(v117 + 8);
      v79 = *(v117 + 16);
      **(a6 + 8) = 0;
      **(v118 + 8) = 0;
      if (v77 >= 1)
      {
        for (i = 0; i != v77; ++i)
        {
          v81 = *(a5 + 4 * i);
          if (v81 < v75)
          {
            v82 = v81 - v13;
            if (((v81 - v13) & 0x80000000) == 0)
            {
              v83 = (v78 + 8 * i);
              v85 = *v83;
              v84 = v83[1];
              if (*v83 < v84)
              {
                result = v61 + 8 * v82;
                do
                {
                  v86 = *(v79 + 4 * v85);
                  if ((v86 & 0x80000000) == 0 && v86 < v76)
                  {
                    v87 = *(a4 + 4 * v86);
                    if (v87 != v81 && v87 < v75)
                    {
                      v89 = v87 - v13;
                      if (((v87 - v13) & 0x80000000) == 0)
                      {
                        v90 = (v63 + 8 * v89);
                        v91 = v87 < v81;
                        if (v87 < v81)
                        {
                          v92 = v118;
                        }

                        else
                        {
                          v90 = (v61 + 8 * v82);
                          v92 = a6;
                        }

                        if (v91)
                        {
                          v89 = v81 - v13;
                        }

                        v93 = *(v92 + 16);
                        v94 = (*v90)++;
                        *(v93 + 4 * v94) = v89;
                        v84 = v83[1];
                      }
                    }
                  }

                  ++v85;
                }

                while (v85 < v84);
              }
            }
          }
        }
      }
    }

    else
    {
      v95 = *v117;
      v96 = *(v117 + 4);
      v97 = *(v117 + 8);
      v98 = *(v117 + 16);
      **(a6 + 8) = 0;
      **(v118 + 8) = 0;
      if (v96 >= 1)
      {
        v99 = 0;
        v100 = *v97;
        do
        {
          v101 = v99++;
          v102 = v97[v99];
          while (v100 < v102)
          {
            v103 = *(v98 + 4 * v100);
            if ((v103 & 0x80000000) == 0 && v103 < v95)
            {
              v104 = *(a4 + 4 * v103);
              v105 = *(a5 + 4 * v101);
              if (v104 != v105)
              {
                result = v19[v104];
                if (result != -1 && result == v19[v105])
                {
                  v107 = v105 - v13;
                  v108 = v104 - v13;
                  v109 = v104 < v105;
                  if (v104 >= v105)
                  {
                    v110 = a6;
                  }

                  else
                  {
                    v110 = v118;
                  }

                  if (v109)
                  {
                    v111 = v108;
                  }

                  else
                  {
                    v111 = v105 - v13;
                  }

                  if (v109)
                  {
                    v112 = v63;
                  }

                  else
                  {
                    v112 = v61;
                  }

                  if (!v109)
                  {
                    v107 = v108;
                  }

                  v113 = *(v110 + 16);
                  result = *(v112 + 8 * v111);
                  *(v112 + 8 * v111) = result + 1;
                  *(v113 + 4 * result) = v107;
                  v102 = v97[v99];
                }
              }
            }

            ++v100;
          }

          v100 = v102;
        }

        while (v99 != v96);
      }
    }
  }

  return result;
}

uint64_t sub_23678A440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 144);
  v6 = *(a2 + 64);
  if (v6 <= 0)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 152);
    v10 = *(a2 + 120);
    v11 = *(a2 + 88);
    do
    {
      v12 = v7;
      *(v5 + 8 * v7++) = v8;
      v13 = *(v10 + 8 * v7);
      v14 = *(v10 + 8 * v12);
      if (v13 > v14)
      {
        v15 = *(result + 28);
        v16 = *(a2 + 128) - 4;
        v17 = *(v10 + 8 * v7);
        do
        {
          *(a5 + 4 * (*(v16 + 4 * v17) / v15)) = ~v14 + v17;
          --v17;
        }

        while (v17 > v14);
      }

      v18 = *(v11 + 4 * v12);
      v19 = *(v11 + 4 * v7);
      if (v18 < v19)
      {
        v20 = v13 - v14;
        v21 = *(a2 + 128);
        v22 = *(result + 28);
        v23 = 0xFFFFFFFFLL;
        v24 = *(v11 + 4 * v12);
        do
        {
          v25 = v24 - v18;
          v26 = (*(v21 + 4 * *(v10 + 8 * v12) + 4 * (v24 - v18)) / v22);
          if (v26 == v23)
          {
            v26 = v23;
          }

          else
          {
            v27 = *(a4 + 8 * v26);
            if (v27)
            {
              v28 = (v9 + 8 * v8);
              v29 = *(a5 + 4 * v26) + v20 * v25;
              v8 += 2;
              *v28 = v27;
              v28[1] = v29;
            }

            v30 = (*(result + 8) + 8 * v26);
            v31 = *v30;
            v32 = v30[1];
            if (*v30 < v32)
            {
              v33 = *(result + 16);
              v34 = *(a2 + 72);
              v35 = *(v34 + 4 * v26);
              v36 = v20 * v25;
              do
              {
                v37 = *(v33 + 4 * v31);
                if (*(v34 + 4 * v37) >= v35)
                {
                  v38 = (v9 + 8 * v8);
                  v39 = v36 + *(a5 + 4 * v37);
                  v8 += 2;
                  *v38 = *(a3 + 8 * v31);
                  v38[1] = v39;
                  v32 = v30[1];
                }

                ++v31;
              }

              while (v31 < v32);
            }
          }

          ++v24;
          v23 = v26;
        }

        while (v24 != v19);
      }

      v6 = *(a2 + 64);
    }

    while (v7 < v6);
  }

  *(v5 + 8 * v6) = v8;
  return result;
}

void sub_23678A5D0(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, int *a12, atomic_uchar *a13)
{
  v13 = *a3;
  v14 = a4 - *a3;
  if (a4 > *a3)
  {
    v15 = a6[16];
    v16 = a6[11];
    v17 = a2;
    v18 = a2 + 1;
    if (*(a10 + 4 * *(v15 + 4 * v13)) < *(v16 + 4 * v18))
    {
      v19 = a6[15];
      v20 = *(v19 + 8 * v18);
      v21 = *(v19 + 8 * v17);
      v22 = *(*(a7 + 40) + 8 * v17);
      v23 = v20 - v21;
      v24 = v20 <= v21;
      v25 = v20 - v21;
      if (!v24)
      {
        v26 = 0;
        v27 = v15 + 4 * v21;
        do
        {
          *(a11 + 4 * *(v27 + 4 * v26)) = v26;
          ++v26;
        }

        while (v25 != v26);
      }

      v28 = 0;
      v29 = v22 + 8;
      v30 = a4 - v13;
      v31 = v15 + 4 * v13;
      while (1)
      {
        v32 = *(v31 + 4 * v28);
        if (*(a10 + 4 * v32) >= *(v16 + 4 * v18))
        {
          break;
        }

        a12[v28] = *(a11 + 4 * v32);
        *a3 = v13 + v28++ + 1;
        if (v14 == v28)
        {
          LODWORD(v28) = a4 - v13;
          if (!a13)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      if (v13 + v28 >= a4)
      {
        v30 = v28;
        if (!a13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = &a12[v28];
        v34 = v28;
        do
        {
          *v33++ = *(a11 + 4 * *(v31 + 4 * v34++));
        }

        while (v14 != v34);
        v30 = v28;
        LODWORD(v28) = v34;
        if (!a13)
        {
LABEL_24:
          if (v30)
          {
            v46 = 0;
            v47 = v28;
            v48 = a12;
            v28 = v28;
            do
            {
              if (v46 < v47)
              {
                v49 = v29 + 4 * v23 * a12[v46];
                v50 = v48;
                v51 = a8;
                v52 = v28;
                do
                {
                  v54 = *v50++;
                  v53 = v54;
                  LODWORD(v54) = *v51++;
                  *(v49 + 4 * v53) = *&v54 + *(v49 + 4 * v53);
                  --v52;
                }

                while (v52);
              }

              ++v46;
              --v28;
              a8 += a9 + 1;
              ++v48;
            }

            while (v46 != v30);
          }

          return;
        }
      }

LABEL_15:
        ;
      }

      if (v30)
      {
        v35 = 0;
        v36 = v28;
        v37 = v30;
        v38 = a12;
        v39 = v36;
        do
        {
          if (v35 < v36)
          {
            v40 = v29 + 4 * v23 * a12[v35];
            v41 = v38;
            v42 = a8;
            v43 = v39;
            do
            {
              v45 = *v41++;
              v44 = v45;
              LODWORD(v45) = *v42++;
              *(v40 + 4 * v44) = *&v45 + *(v40 + 4 * v44);
              --v43;
            }

            while (v43);
          }

          ++v35;
          --v39;
          a8 += a9 + 1;
          ++v38;
        }

        while (v35 != v37);
      }

      atomic_store(0, a13);
    }
  }
}

void sub_23678A7EC(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, atomic_uchar *a16)
{
  v16 = *a4;
  v17 = a6 - *a4;
  if (a6 <= *a4)
  {
    return;
  }

  v18 = a8[16];
  v19 = a8[11];
  v20 = a2;
  v21 = a2 + 1;
  if (*(a12 + 4 * *(v18 + 4 * v16)) >= *(v19 + 4 * v21))
  {
    return;
  }

  v23 = a8[15];
  v24 = *(v23 + 8 * v21);
  v25 = *(v23 + 8 * v20);
  v26 = *(*(a9 + 40) + 8 * v20);
  v27 = v24 - v25;
  v28 = v24 - v25;
  if (v24 > v25)
  {
    v29 = 0;
    v30 = v18 + 4 * v25;
    do
    {
      *(a13 + 4 * *(v30 + 4 * v29)) = v29;
      ++v29;
    }

    while (v28 != v29);
  }

  v31 = 0;
  v32 = v26 + 8;
  v33 = a6 - v16;
  v34 = v16 + 1;
  v35 = v18 + 4 * v16;
  while (1)
  {
    v36 = *(v35 + 4 * v31);
    if (*(a12 + 4 * v36) >= *(v19 + 4 * v21))
    {
      break;
    }

    *(a15 + 4 * v31) = *(a13 + 4 * v36);
    *a4 = v34 + v31++;
    if (v17 == v31)
    {
      goto LABEL_11;
    }
  }

  v33 = v31;
LABEL_11:
  v37 = a5 - a3;
  if (a5 <= a3)
  {
    v37 = 0;
    if (a16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v38 = (v18 + 4 * a3);
    v39 = a5 - a3;
    v40 = a14;
    do
    {
      v41 = *v38++;
      *v40++ = *(a13 + 4 * v41);
      --v39;
    }

    while (v39);
    if (a16)
    {
LABEL_15:
        ;
      }

      if (v33)
      {
        v42 = 0;
        v43 = v33;
        do
        {
          if (v37)
          {
            v44 = v32 + 4 * v27 * *(a15 + 4 * v42);
            v45 = a14;
            v46 = a10;
            v47 = v37;
            do
            {
              v49 = *v45++;
              v48 = v49;
              LODWORD(v49) = *v46++;
              *(v44 + 4 * v48) = *&v49 + *(v44 + 4 * v48);
              --v47;
            }

            while (v47);
          }

          ++v42;
          a10 += a11;
        }

        while (v42 != v43);
      }

      atomic_store(0, a16);
      return;
    }
  }

  if (v33)
  {
    v50 = 0;
    v51 = v33;
    do
    {
      if (v37)
      {
        v52 = v32 + 4 * v27 * *(a15 + 4 * v50);
        v53 = a14;
        v54 = a10;
        v55 = v37;
        do
        {
          v57 = *v53++;
          v56 = v57;
          LODWORD(v57) = *v54++;
          *(v52 + 4 * v56) = *&v57 + *(v52 + 4 * v56);
          --v55;
        }

        while (v55);
      }

      ++v50;
      a10 += a11;
    }

    while (v50 != v51);
  }
}

uint64_t sub_23678B078(int a1, uint64_t a2, void *a3, void *a4)
{
  result = ilaenv_NEWLAPACK();
  *a3 = 8 * *(a2 + 88) + 32;
  *a4 = 8 * (result + a1 + *(a2 + 192));
  return result;
}

void sub_23678B11C(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v614 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 25);
  v579 = v8;
  if (v8 <= 0x27)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 80);
    sub_23678D570(*(v27 + 64), *(v26 + 136), a2, a3);
    sub_23678D660(v579, v26, v27, a3, a4);
    sub_23678DAD0(v579, v26, v27, 0, a3);
    sub_23678DE2C(v579, v26, v27, a3, a4);
    v28 = *(v27 + 64);
    v29 = *(v26 + 136);
    v30 = *MEMORY[0x277D85DE8];

    sub_23678D570(v28, v29, 0, a3);
  }

  else
  {
    v9 = a4 + a5;
    v571 = a4 + a5;
    if (v8 - 81 < 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 80);
      if (a2)
      {
        sub_2366FD390(a2, a3);
      }

      v12 = *(a1 + 24);
      v562 = v12 * v12;
      v584 = v11;
      v561 = a3;
      if (*(a1 + 4))
      {
        v13 = 4;
        if (*(a3 + 12))
        {
          v13 = 0;
        }

        v14 = *(a3 + v13);
        LODWORD(v609) = v14;
        v15 = *(v10 + 56);
        v596 = v15;
        LODWORD(v598) = v12;
        v16 = (&a4[v15 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v9 >= v16)
        {
          v580 = v16 + 8 * v15 * v14;
          if (v580 <= v9)
          {
            v17 = *(v11 + 13);
            if (v17)
            {
              if (v14 >= 1)
              {
                v18 = 0;
                do
                {
                  if (v15 >= 1)
                  {
                    v19 = 0;
                    v20 = *(v10 + 144);
                    v21 = *(a3 + 16);
                    v22 = *(a3 + 8);
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v24 = v19;
                      }

                      else
                      {
                        v24 = v18;
                      }

                      if (*(a3 + 12))
                      {
                        v25 = v18;
                      }

                      else
                      {
                        v25 = v19;
                      }

                      v23 = v19 % v12 + *(v20 + 4 * (v19 / v12)) * v12;
                      *&a4[v23 + v18 * v15] = *(v21 + 8 * (v25 + v24 * v22)) * *(v17 + 8 * v23);
                      ++v19;
                    }

                    while (v15 != v19);
                  }

                  ++v18;
                }

                while (v18 != v14);
              }
            }

            else if (v14 >= 1)
            {
              v64 = 0;
              do
              {
                if (v15 >= 1)
                {
                  v65 = 0;
                  v66 = *(v10 + 144);
                  v67 = *(a3 + 16);
                  v68 = *(a3 + 8);
                  do
                  {
                    if (*(a3 + 12))
                    {
                      v69 = v65;
                    }

                    else
                    {
                      v69 = v64;
                    }

                    if (*(a3 + 12))
                    {
                      v70 = v64;
                    }

                    else
                    {
                      v70 = v65;
                    }

                    a4[v65 % v12 + v64 * v15 + *(v66 + 4 * (v65 / v12)) * v12] = *(v67 + 8 * (v70 + v69 * v68));
                    ++v65;
                  }

                  while (v15 != v65);
                }

                ++v64;
              }

              while (v64 != v14);
            }

            v585 = v15;
            v592 = (&a4[v15 * v14] + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v12 == 1)
            {
              v71 = *(v10 + 100);
              if (v71 >= 1)
              {
                v72 = *(v10 + 60);
                v73 = v72 - v71;
                v74 = *(v10 + 120);
                v75 = *(v11 + 5);
                v76 = *(v74 + 8 * v72);
                v77 = 8 * v72 - 8;
                v78 = 8 * v15;
                do
                {
                  --v72;
                  v79 = *(v74 + 8 * v72);
                  v80 = v79 + 1;
                  if (v79 + 1 < v76)
                  {
                    v81 = *(v10 + 128);
                    v82 = *(v10 + 136);
                    do
                    {
                      if (v14 >= 1)
                      {
                        v83 = *(v82 + 4 * *(v81 + 4 * v80));
                        v84 = -*(v75 + 8 * v80);
                        v85 = a4;
                        v86 = v14;
                        do
                        {
                          *(v85 + v77) = *(v85 + v77) + v84 * *&v85[v83];
                          v85 = (v85 + v78);
                          --v86;
                        }

                        while (v86);
                      }

                      ++v80;
                    }

                    while (v80 != v76);
                  }

                  v76 = v79;
                  if (v14 >= 1)
                  {
                    v87 = *(v75 + 8 * v79);
                    v88 = a4;
                    v89 = v14;
                    do
                    {
                      *(v88 + v77) = v87 * *(v88 + v77);
                      v88 = (v88 + v78);
                      --v89;
                    }

                    while (v89);
                  }

                  v77 -= 8;
                }

                while (v72 > v73);
              }
            }

            else
            {
              v90 = *(v10 + 100);
              if (v90 >= 1)
              {
                v91 = *(v10 + 60);
                v92 = *(v10 + 96) + v90;
                v93 = 8 * v562;
                do
                {
                  v94 = *(v10 + 120);
                  v95 = *(v94 + 8 * v91--);
                  v96 = *(v94 + 8 * v91) + 1;
                  v97 = v598;
                  v98 = v598;
                  if (v96 < v95)
                  {
                    v99 = *(v10 + 128);
                    v100 = *(v10 + 136);
                    v101 = v609;
                    v102 = *(v584 + 5) + v93 * v96;
                    do
                    {
                      if (v101 >= 1)
                      {
                        v103 = 0;
                        v104 = *(v100 + 4 * *(v99 + 4 * v96)) * v97;
                        do
                        {
                          if (v97 >= 1)
                          {
                            v105 = 0;
                            v106 = v98 * v91 + v103 * v596;
                            v107 = v102;
                            do
                            {
                              v108 = *&a4[v106 + v105];
                              v109 = v107;
                              v110 = v104;
                              v111 = v98;
                              do
                              {
                                v112 = *v109++;
                                v108 = v108 - v112 * *&a4[v110];
                                *&a4[v106 + v105] = v108;
                                ++v110;
                                --v111;
                              }

                              while (v111);
                              ++v105;
                              v107 += v97;
                            }

                            while (v105 != v98);
                          }

                          ++v103;
                          v104 += v596;
                        }

                        while (v103 != v101);
                      }

                      ++v96;
                      v102 += v93;
                    }

                    while (v96 != v95);
                  }

                  --v92;
                  v113 = *(v584 + 6) + 4 * v98 * v92;
                  dgetrs_NEWLAPACK();
                }

                while (v91 > *(v10 + 60) - *(v10 + 100));
              }
            }

            v564 = *(v10 + 104);
            if (v564 <= 0)
            {
              v114 = v598;
              goto LABEL_431;
            }

            v114 = v598;
            LODWORD(v115) = v609;
            v116 = 8 * v562;
            __n = 8 * v585;
            while (1)
            {
              v117 = *(v10 + 112);
              v563 = v564--;
              v118 = *(v117 + 4 * v563);
              v576 = *(v117 + 4 * v564);
              if (v576 < v118)
              {
                v119 = v576;
                v120 = *(v10 + 120);
                v121 = *(v120 + 8 * v576);
                do
                {
                  v122 = v119 + 1;
                  v123 = *(v120 + 8 * (v119 + 1));
                  if (v121 < v123)
                  {
                    v124 = *(v10 + 128);
                    v125 = *(v10 + 136);
                    v126 = v114 * v119;
                    v127 = *(v584 + 5) + v116 * v121;
                    do
                    {
                      if (v115 >= 1)
                      {
                        v128 = 0;
                        v129 = *(v125 + 4 * *(v124 + 4 * v121)) * v114;
                        do
                        {
                          if (v114 >= 1)
                          {
                            v130 = 0;
                            v131 = v126 + v128 * v596;
                            v132 = v127;
                            do
                            {
                              v133 = *&a4[v131 + v130];
                              v134 = v132;
                              v135 = v129;
                              v136 = v114;
                              do
                              {
                                v137 = *v134++;
                                v133 = v133 - v137 * *&a4[v135];
                                *&a4[v131 + v130] = v133;
                                ++v135;
                                --v136;
                              }

                              while (v136);
                              ++v130;
                              v132 += v114;
                            }

                            while (v130 != v114);
                          }

                          ++v128;
                          v129 += v596;
                        }

                        while (v128 != v115);
                      }

                      ++v121;
                      v127 += v116;
                    }

                    while (v121 != v123);
                  }

                  v121 = v123;
                  v119 = v122;
                }

                while (v122 != v118);
              }

              if (*(v10 + 168) < 1)
              {
                v215 = v576;
                goto LABEL_258;
              }

              v138 = 0;
              v139 = 8 * v596;
              v140 = v579;
              v141 = v576;
              v566 = v118;
              do
              {
                v142 = *(v10 + 176);
                v143 = *(v142 + 4 * v138);
                v144 = v143 >= v141 && v143 < v118;
                if (!v144)
                {
                  v145 = v138 + 1;
                  goto LABEL_190;
                }

                if (v140 == 83)
                {
                  v146 = *(*(v584 + 9) + 4 * v138);
                  v147 = *(*(v584 + 10) + 4 * v138);
                  v148 = *(*(v584 + 11) + 4 * v138);
                }

                else
                {
                  v146 = 0;
                  v147 = 0;
                  v148 = 0;
                }

                v145 = v138 + 1;
                v149 = v146 + (*(v142 + 4 * (v138 + 1)) - v143) * v114;
                v150 = v149;
                if (v140 == 83)
                {
                  v150 = *(*(v584 + 8) + 4 * v138);
                }

                v151 = v114 * (*(*(v10 + 200) + 8 * v145) - *(*(v10 + 200) + 8 * v138));
                v152 = *(*(v584 + 14) + 8 * v138) + 8 + 8 * (v149 + v147 + v114 * (*(*(v10 + 184) + 8 * v145) - *(*(v10 + 184) + 8 * v138))) * v149 + 8 * (v151 + v148) * v149 + 4 * v149 + 4 * v147;
                if (v140 == 81)
                {
                  v153 = 0;
                }

                else
                {
                  v153 = v152;
                }

                v154 = &v153[v149];
                if (v148 <= 0)
                {
                  v154 = 0;
                }

                v568 = v154;
                if (v150)
                {
                  v582 = v148;
                  v574 = v146 + (*(v142 + 4 * (v138 + 1)) - v143) * v114;
                  v572 = v153;
                  if (v140 == 81)
                  {
                    if (v115 >= 1)
                    {
                      v155 = 0;
                      v156 = &a4[v143 * v114];
                      v157 = v580;
                      do
                      {
                        v158 = v156;
                        v159 = v157;
                        v160 = v150;
                        if (v150 >= 1)
                        {
                          do
                          {
                            v161 = *v158++;
                            *v159++ = v161;
                            --v160;
                          }

                          while (v160);
                        }

                        ++v155;
                        v157 += v150;
                        v156 = (v156 + v139);
                      }

                      while (v155 != v115);
                      goto LABEL_153;
                    }

LABEL_160:
                    cblas_dtrsm_NEWLAPACK();
                    v170 = v572;
                    v169 = v574;
                    v168 = v582;
                    v139 = 8 * v596;
                    LODWORD(v118) = v566;
                    v141 = v576;
                    v140 = v579;
                  }

                  else
                  {
                    if (v115 < 1)
                    {
                      goto LABEL_160;
                    }

                    v162 = 0;
                    v163 = v580;
                    do
                    {
                      if (v150 >= 1)
                      {
                        v164 = v153;
                        v165 = v163;
                        v166 = v150;
                        do
                        {
                          v167 = *v164++;
                          *v165++ = a4[v162 * v596 + v167];
                          --v166;
                        }

                        while (v166);
                      }

                      ++v162;
                      v163 += v150;
                    }

                    while (v162 != v115);
LABEL_153:
                    cblas_dtrsm_NEWLAPACK();
                    v140 = v579;
                    if (v579 == 81)
                    {
                      v141 = v576;
                      v139 = 8 * v596;
                      LODWORD(v118) = v566;
                      v168 = v582;
                      v169 = v574;
                      v170 = v572;
                      v171 = 0;
                      v172 = v580;
                      v173 = a4;
                      do
                      {
                        if (v150 >= 1)
                        {
                          v174 = &v173[*(*(v10 + 176) + 4 * v138) * v114];
                          v175 = v172;
                          v176 = v150;
                          do
                          {
                            v177 = *v175++;
                            *v174++ = v177;
                            --v176;
                          }

                          while (v176);
                        }

                        ++v171;
                        v173 += v596;
                        v172 += v150;
                      }

                      while (v171 != v115);
                    }

                    else
                    {
                      v141 = v576;
                      v139 = 8 * v596;
                      LODWORD(v118) = v566;
                      v168 = v582;
                      v169 = v574;
                      v170 = v572;
                      v178 = 0;
                      v179 = v580;
                      do
                      {
                        if (v150 >= 1)
                        {
                          v180 = v179;
                          v181 = v572;
                          v182 = v150;
                          do
                          {
                            v183 = *v180++;
                            v184 = v183;
                            v185 = *v181++;
                            a4[v178 * v596 + v185] = v184;
                            --v182;
                          }

                          while (v182);
                        }

                        ++v178;
                        v179 += v150;
                      }

                      while (v178 != v115);
                    }
                  }

                  v186 = v169 + v168 + v151;
                  if (v186 > v150)
                  {
                    v187 = (v580 + 8 * v150 * v115);
                    v587 = (v169 - v150);
                    v565 = v186;
                    if (v169 > v150)
                    {
                      cblas_dgemm_NEWLAPACK();
                      v186 = v565;
                      v170 = v572;
                      v169 = v574;
                      v168 = v582;
                      v139 = 8 * v596;
                      LODWORD(v118) = v566;
                      v141 = v576;
                      v140 = v579;
                    }

                    if (v186 > v169)
                    {
                      cblas_dgemm_NEWLAPACK();
                      v186 = v565;
                      v170 = v572;
                      v169 = v574;
                      v168 = v582;
                      v139 = 8 * v596;
                      LODWORD(v118) = v566;
                      v141 = v576;
                      v140 = v579;
                    }

                    if (v115 >= 1)
                    {
                      v188 = 0;
                      v189 = (*(v10 + 200) + 8 * v138);
                      v190 = *v189;
                      v191 = v189[1];
                      v192 = 8 * v186 - 8 * v150;
                      v193 = &v170[v150];
                      v194 = a4;
                      do
                      {
                        v195 = v188 * v596;
                        if (v169 <= v150)
                        {
                          v202 = 0;
                        }

                        else
                        {
                          v196 = v193;
                          v197 = v187;
                          v198 = v587;
                          do
                          {
                            v199 = *v197++;
                            v200 = v199;
                            LODWORD(v199) = *v196++;
                            v201 = LODWORD(v199);
                            if (SLODWORD(v199) < 0)
                            {
                              v201 = -v201;
                            }

                            *&a4[v195 + v201] = v200 + *&a4[v195 + v201];
                            --v198;
                          }

                          while (v198);
                          v202 = v587;
                        }

                        v203 = v190;
                        if (v190 < v191)
                        {
                          do
                          {
                            if (v114 >= 1)
                            {
                              v204 = v202;
                              v205 = &v194[*(*(v10 + 208) + 4 * v203) * v114];
                              v202 += v114;
                              v206 = v114;
                              do
                              {
                                *v205 = v187[v204] + *v205;
                                ++v205;
                                ++v204;
                                --v206;
                              }

                              while (v206);
                            }

                            ++v203;
                          }

                          while (v203 != v191);
                        }

                        if (v168 >= 1)
                        {
                          v207 = &a4[v195];
                          v208 = v202;
                          v209 = v568;
                          v210 = v168;
                          do
                          {
                            v211 = *v209++;
                            *&v207[v211] = v187[v208++] + *&v207[v211];
                            --v210;
                          }

                          while (v210);
                        }

                        ++v188;
                        v187 = (v187 + v192);
                        v194 = (v194 + v139);
                      }

                      while (v188 != v115);
                    }
                  }

                  v145 = v138 + 1;
                }

LABEL_190:
                v212 = *(v10 + 168);
                v138 = v145;
              }

              while (v145 < v212);
              v213 = v598;
              v115 = v609;
              v117 = *(v10 + 112);
              v214 = (v117 + 4 * v564);
              v215 = *v214;
              if (v212 < 1)
              {
                v114 = v598;
              }

              else
              {
                v216 = v214[1];
                v577 = *v214;
                v567 = v216;
                do
                {
                  v217 = v212--;
                  v218 = *(v10 + 176);
                  v219 = *(v218 + 4 * v212);
                  if (v219 >= v215 && v219 < v216)
                  {
                    if (v140 == 83)
                    {
                      v221 = v584;
                      v222 = *(*(v584 + 10) + 4 * v212);
                      v223 = *(*(v584 + 11) + 4 * v212);
                      v224 = *(v218 + 4 * v217);
                      v225 = *(*(v584 + 9) + 4 * v212) + (v224 - v219) * v213;
                      v226 = *(*(v584 + 8) + 4 * v212);
                    }

                    else
                    {
                      v223 = 0;
                      v222 = 0;
                      v224 = *(v218 + 4 * v217);
                      v225 = (v224 - v219) * v213;
                      v226 = v225;
                      v221 = v584;
                    }

                    v227 = *(*(v221 + 14) + 8 * v212) + 8;
                    v228 = *(v10 + 184);
                    v229 = *(v228 + 8 * v217);
                    v230 = *(v228 + 8 * v212);
                    v231 = *(v10 + 200);
                    v232 = *(v231 + 8 * v217);
                    v233 = *(v231 + 8 * v212);
                    v234 = v222 + v225 + v213 * (v229 - v230);
                    v235 = v223 + v225 + v213 * (v232 - v233);
                    if (v140 == 81)
                    {
                      v236 = 0;
                      v237 = 0;
                    }

                    else
                    {
                      v236 = v227 + 8 * v225 * v234 + 8 * v225 * (v223 + v213 * (v232 - v233));
                      v237 = v236 + 4 * v225 + 4 * v222;
                    }

                    v238 = (v236 + 4 * v225);
                    if (v222 <= 0)
                    {
                      v238 = 0;
                    }

                    if (v226)
                    {
                      v569 = v217;
                      v573 = v235;
                      if (v115 >= 1)
                      {
                        v239 = 0;
                        v240 = v224 * v213;
                        v241 = v219 * v213;
                        v242 = &a4[v241];
                        v243 = v592;
                        v244 = v580;
                        do
                        {
                          if (v236)
                          {
                            if (v226 < 1)
                            {
                              LODWORD(v250) = 0;
                            }

                            else
                            {
                              v245 = v237;
                              v246 = v244;
                              v247 = v226;
                              do
                              {
                                v249 = *v245++;
                                v248 = v249;
                                if (v249 < 0)
                                {
                                  v248 = -v248;
                                }

                                *v246++ = a4[v239 * v596 + v248];
                                --v247;
                              }

                              while (v247);
                              LODWORD(v250) = v226;
                            }

                            if (v250 < v225)
                            {
                              v250 = v250;
                              do
                              {
                                v252 = *(v236 + 4 * v250);
                                if (v252 < 0)
                                {
                                  v252 = -v252;
                                }

                                v244[v250++] = *(v592 + 8 * v239 * v585 + 8 * v252);
                              }

                              while (v225 != v250);
                              LODWORD(v250) = v225;
                            }
                          }

                          else if (v241 >= v240)
                          {
                            LODWORD(v250) = 0;
                          }

                          else
                          {
                            v251 = 0;
                            do
                            {
                              v244[v251] = v242[v251];
                              ++v251;
                            }

                            while (v240 - v241 != v251);
                            LODWORD(v250) = v240 - v241;
                          }

                          v253 = v230;
                          if (v229 > v230)
                          {
                            do
                            {
                              if (v213 >= 1)
                              {
                                v254 = v250;
                                v255 = (v243 + 8 * *(*(v10 + 192) + 4 * v253) * v213);
                                LODWORD(v250) = v213 + v250;
                                v256 = v213;
                                do
                                {
                                  v257 = *v255++;
                                  v244[v254++] = v257;
                                  --v256;
                                }

                                while (v256);
                              }

                              ++v253;
                            }

                            while (v253 != v229);
                          }

                          if (v222 >= 1)
                          {
                            v258 = v250;
                            v259 = v238;
                            v260 = v222;
                            do
                            {
                              v261 = *v259++;
                              v244[v258++] = *(v592 + 8 * v239 * v585 + 8 * v261);
                              --v260;
                            }

                            while (v260);
                          }

                          ++v239;
                          v244 += v235;
                          v242 += v596;
                          v243 += __n;
                        }

                        while (v239 != v115);
                      }

                      if (v234 > v226)
                      {
                        cblas_dgemm_NEWLAPACK();
                      }

                      if (v226 >= 2)
                      {
                        cblas_dtrsm_NEWLAPACK();
                      }

                      if (v236)
                      {
                        v140 = v579;
                        v215 = v577;
                        v216 = v567;
                        v217 = v569;
                        if (v115 >= 1)
                        {
                          v262 = 0;
                          v263 = v580;
                          do
                          {
                            if (v226 >= 1)
                            {
                              v264 = v263;
                              v265 = v236;
                              v266 = v226;
                              do
                              {
                                v267 = *v264++;
                                v268 = v267;
                                v269 = *v265++;
                                *(v592 + 8 * v262 * v585 + 8 * v269) = v268;
                                --v266;
                              }

                              while (v266);
                            }

                            ++v262;
                            v263 += v573;
                          }

                          while (v262 != v115);
                        }
                      }

                      else
                      {
                        v140 = v579;
                        v215 = v577;
                        v216 = v567;
                        v217 = v569;
                        if (v115 >= 1)
                        {
                          v270 = 0;
                          v271 = *(v10 + 176);
                          v272 = *(v271 + 4 * v212);
                          v273 = v272 * v213;
                          v274 = *(v271 + 4 * v569);
                          v275 = ((v274 - v272) * v213);
                          v276 = (v592 + 8 * v273);
                          v277 = v580;
                          do
                          {
                            v278 = v276;
                            v279 = v277;
                            v280 = v275;
                            if (v273 < v274 * v213)
                            {
                              do
                              {
                                v281 = *v279++;
                                *v278++ = v281;
                                --v280;
                              }

                              while (v280);
                            }

                            ++v270;
                            v277 += v573;
                            v276 = (v276 + __n);
                          }

                          while (v270 != v115);
                        }
                      }
                    }
                  }
                }

                while (v217 > 1);
                v117 = *(v10 + 112);
                v215 = *(v117 + 4 * v564);
                v114 = v598;
                LODWORD(v115) = v609;
              }

LABEL_258:
              if (v115 >= 1)
              {
                v282 = 8 * (*(v117 + 4 * v563) - v215) * v114;
                v283 = v115;
                v284 = v215 * v114;
                do
                {
                  memcpy(&a4[v284], (v592 + v284 * 8), v282);
                  v284 += v596;
                  --v283;
                }

                while (v283);
              }

              v116 = 8 * v562;
              if (v563 <= 1)
              {
LABEL_431:
                v489 = *(v10 + 96);
                if (v114 == 1)
                {
                  if (v489 >= 1)
                  {
                    v490 = *(v10 + 120);
                    v491 = v609;
                    v492 = *(v584 + 5);
                    v493 = *(v490 + 8 * v489);
                    v494 = 8 * v489 - 8;
                    v495 = 8 * v596;
                    do
                    {
                      v496 = *(v490 + 8 * (v489 - 1));
                      v497 = v496 + 1;
                      if (v496 + 1 < v493)
                      {
                        v499 = *(v10 + 128);
                        v498 = *(v10 + 136);
                        do
                        {
                          if (v491 >= 1)
                          {
                            v500 = *(v498 + 4 * *(v499 + 4 * v497));
                            v501 = -*(v492 + 8 * v497);
                            v502 = a4;
                            v503 = v491;
                            do
                            {
                              *(v502 + v494) = *(v502 + v494) + v501 * *&v502[v500];
                              v502 = (v502 + v495);
                              --v503;
                            }

                            while (v503);
                          }

                          ++v497;
                        }

                        while (v497 != v493);
                      }

                      v493 = v496;
                      if (v491 >= 1)
                      {
                        v504 = *(v492 + 8 * v496);
                        v505 = a4;
                        v506 = v491;
                        do
                        {
                          *(v505 + v494) = v504 * *(v505 + v494);
                          v505 = (v505 + v495);
                          --v506;
                        }

                        while (v506);
                      }

                      v494 -= 8;
                      v144 = v489-- < 2;
                    }

                    while (!v144);
                  }
                }

                else if (v489 >= 1)
                {
                  v507 = 8 * v562;
                  do
                  {
                    v508 = v489 - 1;
                    v509 = *(v10 + 120);
                    v510 = *(v509 + 8 * v489);
                    v511 = *(v509 + 8 * (v489 - 1)) + 1;
                    v512 = v598;
                    if (v511 < v510)
                    {
                      v513 = *(v10 + 128);
                      v514 = *(v10 + 136);
                      v515 = v609;
                      v516 = *(v584 + 5) + v507 * v511;
                      do
                      {
                        if (v515 >= 1)
                        {
                          v517 = 0;
                          v518 = *(v514 + 4 * *(v513 + 4 * v511)) * v512;
                          do
                          {
                            if (v512 >= 1)
                            {
                              v519 = 0;
                              v520 = v512 * v508 + v517 * v596;
                              v521 = v516;
                              do
                              {
                                v522 = *&a4[v520 + v519];
                                v523 = v521;
                                v524 = v518;
                                v525 = v512;
                                do
                                {
                                  v526 = *v523++;
                                  v522 = v522 - v526 * *&a4[v524];
                                  *&a4[v520 + v519] = v522;
                                  ++v524;
                                  --v525;
                                }

                                while (v525);
                                ++v519;
                                v521 += v512;
                              }

                              while (v519 != v512);
                            }

                            ++v517;
                            v518 += v596;
                          }

                          while (v517 != v515);
                        }

                        ++v511;
                        v516 += v507;
                      }

                      while (v511 != v510);
                    }

                    v527 = *(v584 + 6) + 4 * v512 * v508;
                    dgetrs_NEWLAPACK();
                    v144 = v489-- <= 1;
                  }

                  while (!v144);
                }

                v528 = *(v584 + 12);
                v529 = v609;
                if (v528)
                {
                  if (v609 >= 1)
                  {
                    v530 = 0;
                    v531 = 0;
                    v532 = v598;
                    do
                    {
                      if (v585 >= 1)
                      {
                        v533 = 0;
                        v534 = *(v10 + 136);
                        v535 = *(v561 + 16);
                        v536 = *(v561 + 8);
                        do
                        {
                          v537 = v533 + *(v534 + 4 * (v533 / v532)) * v532 - v533 / v532 * v532;
                          v538 = *&a4[v537 + v530] * *(v528 + 8 * v537);
                          if (*(v561 + 12))
                          {
                            v539 = v533;
                          }

                          else
                          {
                            v539 = v531;
                          }

                          if (*(v561 + 12))
                          {
                            v540 = v531;
                          }

                          else
                          {
                            v540 = v533;
                          }

                          *(v535 + 8 * (v540 + v539 * v536)) = v538;
                          ++v533;
                        }

                        while (v585 != v533);
                      }

                      ++v531;
                      v530 += v596;
                    }

                    while (v531 != v529);
                  }
                }

                else if (v609 >= 1)
                {
                  v541 = 0;
                  v542 = 0;
                  v543 = v598;
                  do
                  {
                    if (v585 >= 1)
                    {
                      v544 = 0;
                      v545 = *(v10 + 136);
                      v546 = *(v561 + 16);
                      v547 = *(v561 + 8);
                      do
                      {
                        if (*(v561 + 12))
                        {
                          v548 = v544;
                        }

                        else
                        {
                          v548 = v542;
                        }

                        if (*(v561 + 12))
                        {
                          v549 = v542;
                        }

                        else
                        {
                          v549 = v544;
                        }

                        *(v546 + 8 * (v549 + v548 * v547)) = a4[v541 + v544 + *(v545 + 4 * (v544 / v543)) * v543 - v544 / v543 * v543];
                        ++v544;
                      }

                      while (v585 != v544);
                    }

                    ++v542;
                    v541 += v596;
                  }

                  while (v542 != v529);
                }

                goto LABEL_502;
              }
            }
          }
        }

LABEL_503:
        __break(1u);
      }

      v47 = 4;
      if (*(a3 + 12))
      {
        v47 = 0;
      }

      v48 = *(a3 + v47);
      v595 = v48;
      v597 = *(a1 + 24);
      v49 = *(v10 + 56);
      v594 = v49;
      v50 = (&a4[v49 * v48] + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v9 < v50)
      {
        goto LABEL_503;
      }

      v51 = (v50 + 8 * v49 * v48);
      if (v51 > v9)
      {
        goto LABEL_503;
      }

      v52 = *(v11 + 12);
      if (v52)
      {
        if (v48 >= 1)
        {
          v53 = 0;
          do
          {
            if (v49 >= 1)
            {
              v54 = 0;
              v55 = *(v10 + 136);
              v56 = *(a3 + 16);
              v57 = *(a3 + 8);
              do
              {
                if (*(a3 + 12))
                {
                  v59 = v54;
                }

                else
                {
                  v59 = v53;
                }

                if (*(a3 + 12))
                {
                  v60 = v53;
                }

                else
                {
                  v60 = v54;
                }

                v58 = v54 % v12 + *(v55 + 4 * (v54 / v12)) * v12;
                *&a4[v58 + v53 * v49] = *(v56 + 8 * (v60 + v59 * v57)) * *(v52 + 8 * v58);
                ++v54;
              }

              while (v49 != v54);
            }

            ++v53;
          }

          while (v53 != v48);
        }
      }

      else if (v48 >= 1)
      {
        v285 = 0;
        do
        {
          v286 = 0;
          do
          {
            if (v49 >= 1)
            {
              v287 = 0;
              v288 = *(v10 + 136);
              v289 = *(a3 + 16);
              v290 = *(a3 + 8);
              do
              {
                v291 = *(a3 + 12);
                if (v291)
                {
                  v292 = v287;
                }

                else
                {
                  v292 = v286;
                }

                if (v291)
                {
                  v293 = v286;
                }

                else
                {
                  v293 = v287;
                }

                a4[(v287 % v12 + v286 * v49 + *(v288 + 4 * (v287 / v12)) * v12)] = *(v289 + 8 * (v293 + v292 * v290));
                ++v287;
              }

              while (v49 != v287);
            }

            ++v286;
          }

          while (v286 != v48);
          ++v285;
        }

        while (v285 != v48);
      }

      v294 = *(v10 + 96);
      v581 = (&a4[v49 * v48] + 7) & 0xFFFFFFFFFFFFFFF8;
      v586 = (v50 + 8 * v49 * v48);
      if (v12 == 1)
      {
        if (v294 >= 1)
        {
          v295 = 0;
          v296 = *(v10 + 120);
          v297 = *(v11 + 5);
          v298 = *v296;
          v299 = 8 * v49;
          v300 = a4;
          do
          {
            if (v48 >= 1)
            {
              v301 = *(v297 + 8 * v298);
              v302 = v300;
              v303 = v48;
              do
              {
                *v302 = v301 * *v302;
                v302 = (v302 + v299);
                --v303;
              }

              while (v303);
            }

            v304 = v296[++v295];
            v305 = v298 + 1;
            if (v305 < v304)
            {
              v307 = *(v10 + 128);
              v306 = *(v10 + 136);
              do
              {
                if (v48 >= 1)
                {
                  v308 = 0;
                  v309 = -*(v297 + 8 * v305);
                  v310 = &a4[*(v306 + 4 * *(v307 + 4 * v305))];
                  v311 = v48;
                  do
                  {
                    *(v310 + v308) = *(v310 + v308) + v309 * *(v300 + v308);
                    v308 += v299;
                    --v311;
                  }

                  while (v311);
                }

                ++v305;
              }

              while (v305 != v304);
            }

            ++v300;
            v298 = v304;
          }

          while (v295 != v294);
        }

        v12 = 1;
      }

      else if (v294 >= 1)
      {
        v312 = 0;
        v313 = **(v10 + 120);
        v314 = 8 * v562;
        do
        {
          v315 = *(v584 + 5);
          v316 = *(v584 + 6) + 4 * v597 * v312;
          LODWORD(v598) = 0;
          dgetrs_NEWLAPACK();
          v317 = v312 + 1;
          v318 = *(*(v10 + 120) + 8 * (v312 + 1));
          v319 = v313 + 1;
          if (v313 + 1 < v318)
          {
            v320 = *(v10 + 128);
            v321 = *(v10 + 136);
            v322 = v597 * v312;
            v323 = *(v584 + 5) + v314 * v319;
            do
            {
              if (v595 >= 1)
              {
                v324 = 0;
                v325 = *(v321 + 4 * *(v320 + 4 * v319)) * v597;
                do
                {
                  if (v597 >= 1)
                  {
                    v326 = 0;
                    v327 = v323;
                    do
                    {
                      v328 = v327;
                      v329 = v325;
                      v330 = v597;
                      do
                      {
                        v331 = *v328++;
                        *&a4[v329] = *&a4[v329] - v331 * *&a4[v322 + v324 * v49 + v326];
                        ++v329;
                        --v330;
                      }

                      while (v330);
                      ++v326;
                      v327 += v597;
                    }

                    while (v326 != v597);
                  }

                  ++v324;
                  v325 += v49;
                }

                while (v324 != v595);
              }

              ++v319;
              v323 += v314;
            }

            while (v319 != v318);
          }

          v313 = v318;
          v312 = v317;
        }

        while (v317 < *(v10 + 96));
        v12 = v597;
        v9 = v571;
        v51 = v586;
      }

      if (*(v10 + 104) >= 1)
      {
        _X24 = 0;
        v333 = v595;
        v334 = *(v10 + 112);
        __na = *v334;
        v593 = 8 * v562;
        v335 = 0;
        v578 = v49;
        do
        {
          v336 = *(v10 + 168);
          v337 = &v51[8 * v336];
          if (v9 < v337)
          {
            goto LABEL_503;
          }

          v575 = v335;
          v588 = v334[v335 + 1];
          v338 = v51;
          bzero(v51, 8 * v336);
          v339 = &v337[4 * *(v10 + 168) + 7] & 0xFFFFFFFFFFFFFFF8;
          if (v9 < v339)
          {
            goto LABEL_503;
          }

          v340 = v339 + 40 * *(v10 + 336);
          if (v340 > v9)
          {
            goto LABEL_503;
          }

          v341 = (v340 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
          v342 = atomic_load(v584 + 34);
          v343 = *(v10 + 52);
          v344 = 4 * *(v10 + 56);
          v345 = v588;
          if (v343 < 2)
          {
            v371 = ((v341 + v344 + 7) & 0xFFFFFFFFFFFFFFF8);
            if (v9 < v371)
            {
              goto LABEL_503;
            }

            v372 = atomic_load(v584 + 34);
            v373 = __na;
            if (&v371[8 * v372 * v333] > v9)
            {
              goto LABEL_503;
            }

            v374 = *(v10 + 168);
            if (v374 >= 1)
            {
              for (i = 0; i < v374; ++i)
              {
                v376 = *(*(v10 + 176) + 4 * i);
                if (v376 >= v373 && v376 < v345)
                {
                  v560 = v337;
                  v378 = v337;
                  v379 = v341;
                  v380 = v371;
                  sub_236790F98(i, v579, v12, v10, v584, v333, a4, v594, v586, v560, v371, v341);
                  v371 = v380;
                  v49 = v578;
                  v341 = v379;
                  v337 = v378;
                  v345 = v588;
                  v373 = __na;
                  v374 = *(v10 + 168);
                }
              }
            }
          }

          else
          {
            v346 = (v344 + 8 * (v342 * v333) + *MEMORY[0x277D85FA0] + 7) & -*MEMORY[0x277D85FA0];
            v612 = 0u;
            v613 = 0u;
            v611 = 0u;
            v609 = 0u;
            v610 = 0u;
            LODWORD(v609) = v343;
            atomic_store(0, &v609 + 1);
            atomic_store(0, (&v609 | 0xC));
            atomic_store(0, &v610);
            v347 = v611;
            do
            {
              _X2 = 0;
              _X5 = *(&v611 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X10] }

              _ZF = _X4 == v347;
              v347 = _X4;
            }

            while (!_ZF);
            *&v612 = v346;
            *(&v612 + 1) = v341;
            v604 = 0;
            v598 = v579;
            v599 = v10;
            v600 = v12;
            v601 = v584;
            *&v602 = v338;
            *(&v602 + 1) = v337;
            v603 = v333;
            v605 = a4;
            v606 = 0;
            v607 = v594;
            v608 = v339;
            *&v613 = &v598;
            v355 = __na;
            if (*(v10 + 336) >= 1)
            {
              v356 = 0;
              do
              {
                v357 = *(*(v10 + 176) + 4 * *(*(v10 + 344) + 4 * v356));
                if (v357 >= v355 && v357 < v345)
                {
                  v359 = *(v10 + 368) + 8 * v356;
                  v360 = *(v359 + 8);
                  v361 = *v359;
                  v362 = &v608[40 * v356];
                  v363 = v360 - v361;
                  atomic_store(v363, v362);
                  *(v362 + 2) = v356;
                  *(v362 + 2) = sub_236790DDC;
                  if (!v363)
                  {
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X10] }

                    while (1)
                    {
                      *(v362 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v362 + 4) = 0;
                      _X2 = _X0 & 1 | v362;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }

                      if (_X4 == _X0)
                      {
                        break;
                      }

                      _X1 = 0;
                      __asm { CASP            X0, X1, X24, X25, [X10] }
                    }

                    if (_X0)
                    {
                      __ulock_wake();
                      v345 = v588;
                      v355 = __na;
                    }
                  }
                }

                ++v356;
              }

              while (v356 < *(v10 + 336));
            }

            sub_2366FCD2C(&v609, 1);
          }

          v381 = &v586[40 * *(v10 + 336)];
          if (v571 < v381)
          {
            goto LABEL_503;
          }

          v382 = v595;
          v383 = (*(v10 + 112) + 4 * v575);
          v385 = *v383;
          v384 = v383[1];
          v386 = (&v381[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0]);
          v387 = atomic_load(v584 + 35);
          v388 = v382;
          if (*(v10 + 52) < 2)
          {
            v409 = atomic_load(v584 + 35);
            if (v571 < ((&v386[v409 * v595] + 7) & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_503;
            }

            v410 = *(v10 + 168);
            v411 = v579;
            if (v410 >= 1)
            {
              do
              {
                v412 = *(*(v10 + 176) + 4 * v410 - 4);
                if (v412 >= v385 && v412 < v384)
                {
                  sub_236791CF4(v410 - 1, v411, v597, v10, v584, v388, a4, v594, v581, v49, v386);
                  v411 = v579;
                }

                --v410;
              }

              while ((v410 + 1) > 1);
            }
          }

          else
          {
            v389 = v387 * v595;
            v390 = *MEMORY[0x277D85FA0];
            v612 = 0u;
            v613 = 0u;
            v583 = (v390 + 8 * v389 - 1) & -v390;
            v611 = 0u;
            v609 = 0u;
            v610 = 0u;
            v570 = &v610;
            LODWORD(v609) = sub_2366FCCD0(0);
            atomic_store(0, &v609 + 1);
            atomic_store(0, (&v609 | 0xC));
            atomic_store(0, v570);
            v391 = v611;
            do
            {
              _X2 = 0;
              _X5 = *(&v611 + 1);
              __asm { CASPAL          X4, X5, X2, X3, [X8] }

              _ZF = _X4 == v391;
              v391 = _X4;
            }

            while (!_ZF);
            *&v612 = v583;
            *(&v612 + 1) = v386;
            v598 = v579;
            v599 = v10;
            v600 = v597;
            v601 = v584;
            v602 = 0uLL;
            v603 = v388;
            v604 = v581;
            v605 = a4;
            v606 = v49;
            v607 = v594;
            v608 = v586;
            *&v613 = &v598;
            v395 = *(v10 + 336);
            if (v395 >= 1)
            {
              do
              {
                v396 = v395--;
                v397 = *(*(v10 + 176) + 4 * *(*(v10 + 344) + 4 * v395));
                if (v397 >= v385 && v397 < v384)
                {
                  v399 = *(v10 + 352);
                  v400 = *(v399 + 8 * v396);
                  v401 = *(v399 + 8 * v395);
                  v402 = &v608[40 * v395];
                  LODWORD(v400) = v400 - v401;
                  atomic_store(v400, v402);
                  *(v402 + 2) = v395;
                  *(v402 + 2) = sub_236791B58;
                  if (!v400)
                  {
                    do
                    {
                      _X0 = 0;
                      _X1 = 0;
                      __asm { CASP            X0, X1, X0, X1, [X10] }

                      *(v402 + 3) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v402 + 4) = 0;
                      _X2 = _X0 & 1 | v402;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    while (_X4 != _X0);
                    if (_X0)
                    {
                      __ulock_wake();
                    }
                  }
                }
              }

              while (v396 > 1);
            }

            sub_2366FCD2C(&v609, 1);
          }

          v334 = *(v10 + 112);
          v414 = v334[v575];
          v333 = v595;
          v12 = v597;
          v415 = v575 + 1;
          if (v595 < 1)
          {
            v418 = v584;
          }

          else
          {
            __nb = 8 * (v334[v415] - v414) * v597;
            v416 = v597 * v414;
            v417 = v595;
            do
            {
              memcpy(&a4[v416], (v581 + v416 * 8), __nb);
              v416 += v594;
              --v417;
            }

            while (v417);
            v334 = *(v10 + 112);
            v49 = v578;
            v414 = v334[v575];
            v418 = v584;
            v415 = v575 + 1;
          }

          __na = v334[v415];
          if (v414 < __na)
          {
            v419 = *(v10 + 120);
            v420 = v414;
            v421 = *(v419 + 8 * v414);
            do
            {
              v422 = v420 + 1;
              v423 = *(v419 + 8 * (v420 + 1));
              if (v421 < v423)
              {
                v424 = *(v10 + 128);
                v425 = *(v10 + 136);
                v426 = v597 * v420;
                v427 = *(v418 + 5) + v593 * v421;
                do
                {
                  if (v595 >= 1)
                  {
                    v428 = 0;
                    v429 = *(v425 + 4 * *(v424 + 4 * v421)) * v597;
                    do
                    {
                      if (v597 >= 1)
                      {
                        v430 = 0;
                        v431 = v427;
                        do
                        {
                          v432 = v431;
                          v433 = v429;
                          v434 = v597;
                          do
                          {
                            v435 = *v432++;
                            *&a4[v433] = *&a4[v433] - v435 * *&a4[v426 + v428 * v594 + v430];
                            ++v433;
                            --v434;
                          }

                          while (v434);
                          ++v430;
                          v431 += v597;
                        }

                        while (v430 != v597);
                      }

                      ++v428;
                      v429 += v594;
                    }

                    while (v428 != v595);
                  }

                  ++v421;
                  v427 += v593;
                }

                while (v421 != v423);
              }

              v421 = v423;
              v420 = v422;
            }

            while (v422 != __na);
          }

          v51 = v586;
          v335 = v575 + 1;
          v9 = v571;
        }

        while (v575 + 1 < *(v10 + 104));
      }

      if (v12 == 1)
      {
        v436 = *(v10 + 100);
        if (v436 >= 1)
        {
          v437 = *(v10 + 60);
          v438 = v437 - v436;
          v439 = *(v10 + 120);
          v440 = *(v584 + 5);
          v441 = v438;
          v442 = *(v439 + 8 * v438);
          v443 = &a4[v438];
          v444 = 8 * v594;
          do
          {
            if (v595 >= 1)
            {
              v445 = *(v440 + 8 * v442);
              v446 = v443;
              v447 = v595;
              do
              {
                *v446 = v445 * *v446;
                v446 = (v446 + v444);
                --v447;
              }

              while (v447);
            }

            ++v441;
            v448 = *(v439 + 8 * v441);
            v449 = v442 + 1;
            if (v449 < v448)
            {
              v451 = *(v10 + 128);
              v450 = *(v10 + 136);
              do
              {
                if (v595 >= 1)
                {
                  v452 = 0;
                  v453 = -*(v440 + 8 * v449);
                  v454 = &a4[*(v450 + 4 * *(v451 + 4 * v449))];
                  v455 = v595;
                  do
                  {
                    *(v454 + v452) = *(v454 + v452) + v453 * *(v443 + v452);
                    v452 += v444;
                    --v455;
                  }

                  while (v455);
                }

                ++v449;
              }

              while (v449 != v448);
            }

            ++v443;
            v442 = v448;
          }

          while (v441 < v437);
        }
      }

      else
      {
        v456 = *(v10 + 100);
        if (v456 >= 1)
        {
          v457 = *(v10 + 96);
          v458 = *(v10 + 60) - v456;
          v459 = *(*(v10 + 120) + 8 * v458);
          v460 = 8 * v562;
          do
          {
            v461 = *(v584 + 5);
            v462 = *(v584 + 6) + 4 * v597 * v457;
            LODWORD(v598) = 0;
            dgetrs_NEWLAPACK();
            if (v598)
            {
              goto LABEL_503;
            }

            v463 = v458 + 1;
            v464 = *(*(v10 + 120) + 8 * (v458 + 1));
            v465 = v459 + 1;
            if (v459 + 1 < v464)
            {
              v466 = *(v10 + 128);
              v467 = *(v10 + 136);
              v468 = v597 * v458;
              v469 = *(v584 + 5) + v460 * v465;
              do
              {
                if (v595 >= 1)
                {
                  v470 = 0;
                  v471 = *(v467 + 4 * *(v466 + 4 * v465)) * v597;
                  do
                  {
                    if (v597 >= 1)
                    {
                      v472 = 0;
                      v473 = v469;
                      do
                      {
                        v474 = v473;
                        v475 = v471;
                        v476 = v597;
                        do
                        {
                          v477 = *v474++;
                          *&a4[v475] = *&a4[v475] - v477 * *&a4[v468 + v470 * v594 + v472];
                          ++v475;
                          --v476;
                        }

                        while (v476);
                        ++v472;
                        v473 += v597;
                      }

                      while (v472 != v597);
                    }

                    ++v470;
                    v471 += v594;
                  }

                  while (v470 != v595);
                }

                ++v465;
                v469 += v460;
              }

              while (v465 != v464);
            }

            ++v457;
            v459 = v464;
            v458 = v463;
          }

          while (v463 < *(v10 + 60));
        }
      }

      v478 = *(v584 + 13);
      if (v478)
      {
        if (v595 >= 1)
        {
          v479 = 0;
          for (j = 0; j != v595; ++j)
          {
            if (v49 >= 1)
            {
              v481 = 0;
              v482 = *(v10 + 144);
              v483 = *(v561 + 16);
              v484 = *(v561 + 8);
              do
              {
                v485 = v481 + *(v482 + 4 * (v481 / v597)) * v597 - v481 / v597 * v597;
                v486 = *&a4[v485 + v479] * *(v478 + 8 * v485);
                if (*(v561 + 12))
                {
                  v487 = v481;
                }

                else
                {
                  v487 = j;
                }

                if (*(v561 + 12))
                {
                  v488 = j;
                }

                else
                {
                  v488 = v481;
                }

                *(v483 + 8 * (v488 + v487 * v484)) = v486;
                ++v481;
              }

              while (v49 != v481);
            }

            v479 += v594;
          }
        }
      }

      else if (v595 >= 1)
      {
        v550 = 0;
        for (k = 0; k != v595; ++k)
        {
          if (v49 >= 1)
          {
            v552 = 0;
            v553 = *(v10 + 144);
            v554 = *(v561 + 16);
            v555 = *(v561 + 8);
            do
            {
              if (*(v561 + 12))
              {
                v556 = v552;
              }

              else
              {
                v556 = k;
              }

              if (*(v561 + 12))
              {
                v557 = k;
              }

              else
              {
                v557 = v552;
              }

              *(v554 + 8 * (v557 + v556 * v555)) = a4[v550 + v552 + *(v553 + 4 * (v552 / v597)) * v597 - v552 / v597 * v597];
              ++v552;
            }

            while (v49 != v552);
          }

          v550 += v594;
        }
      }

      goto LABEL_502;
    }

    if (v8 == 40)
    {
      v31 = *(a1 + 24);
      v32 = *(a1 + 4);
      v33 = *(a1 + 20);
      v34 = 12;
      if ((v33 ^ v32))
      {
        v35 = 16;
      }

      else
      {
        v35 = 12;
      }

      if (((v33 ^ v32) & 1) == 0)
      {
        v34 = 16;
      }

      v36 = *(a1 + v35) * v31;
      v37 = *(a1 + v34) * v31;
      if (v36 <= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      v39 = 4;
      if (*(a3 + 12))
      {
        v39 = 0;
      }

      v40 = *(a3 + v39);
      v41 = *(a1 + 32);
      v42 = *(a1 + 80);
      v598 = __PAIR64__(v40, v38);
      v600 = a4;
      v599 = v38;
      v44 = v33 & 1 ^ *(v41 + 52);
      v45 = v32 & 1;
      if (a2)
      {
        v46 = a2;
      }

      else
      {
        v46 = a3;
      }

      sub_2366FD390(v46, &v598);
      if (v44 == v45)
      {
        sub_23678E160(*(v41 + 56), v41, v42, &v598, a3, &a4[v40 * v38], v571);
        sub_23678E600(v41, v42, a3, a4);
      }

      else
      {
        v558 = &a4[v40 * v38];
        sub_23678E828(v41, v42, &v598, v558);
        sub_23678EB18(*(v41 + 56), v41, v42, &v598, a3, v558);
      }

LABEL_502:
      v559 = *MEMORY[0x277D85DE8];
      return;
    }

    v61 = *(a1 + 32);
    v62 = *(a1 + 80);
    if (a2)
    {
      sub_2366FD390(a2, a3);
    }

    sub_23678E828(v61, v62, a3, a4);
    v63 = *MEMORY[0x277D85DE8];

    sub_23678E600(v61, v62, a3, a4);
  }
}

int *sub_23678D570(int *result, uint64_t a2, int *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (*(a4 + 12))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (*(a4 + 12))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = *(a4 + v5);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(a4 + v6);
      while (v9 < 1)
      {
LABEL_30:
        if (++v8 == v7)
        {
          return result;
        }
      }

      v10 = 0;
      while (a2)
      {
        v11 = *(v4 + 2);
        if (*(a2 + v10) != 1)
        {
          goto LABEL_23;
        }

        v12 = v4[2];
        v13 = v8 + v12 * v10;
        v14 = v10 + v8 * v12;
        if (v4[3])
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        v16 = *(v11 + 8 * v15);
        v17 = *(a4 + 16);
        v18 = *(a4 + 8);
        if (*(a4 + 12))
        {
          goto LABEL_27;
        }

        v19 = v10 + v18 * v8;
LABEL_29:
        *(v17 + 8 * v19) = v16;
        if (v9 == ++v10)
        {
          goto LABEL_30;
        }
      }

      v11 = *(v4 + 2);
LABEL_23:
      v20 = v4[2];
      v21 = v8 + v20 * v10;
      v22 = v10 + v8 * v20;
      if (v4[3])
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v16 = *&result[2 * v10] * *(v11 + 8 * v23);
      v17 = *(a4 + 16);
      v18 = *(a4 + 8);
      if ((*(a4 + 12) & 1) == 0)
      {
        v19 = v10 + v8 * v18;
        goto LABEL_29;
      }

LABEL_27:
      v19 = v8 + v18 * v10;
      goto LABEL_29;
    }
  }

  else if (a3)
  {
    return sub_2366FD390(a3, a4);
  }

  return result;
}

uint64_t sub_23678D660(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  if (*(a2 + 64) >= 1)
  {
    v8 = 0;
    v9 = *(a4 + v5);
    v55 = result;
    v56 = result - 3;
    do
    {
      v10 = v8;
      if (result == 4)
      {
        v11 = atomic_load((a3[6] + 4 * v8));
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 120);
      ++v8;
      v13 = *(v12 + 8 * (v10 + 1));
      v14 = *(v12 + 8 * v10);
      v15 = *(*(a2 + 88) + 4 * (v10 + 1)) - *(*(a2 + 88) + 4 * v10) + v11;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v10);
      }

      v17 = 2 * v15;
      if (v56 >= 2)
      {
        v17 = 0;
      }

      v61 = v17;
      if (v16)
      {
        v18 = v11 + v13 - v14;
        v58 = v18;
        v59 = v10 + 1;
        v57 = *(a3[5] + 8 * v10);
        v54 = v18;
        if (v9 <= 0)
        {
          cblas_dtrsm_NEWLAPACK();
          v8 = v10 + 1;
          result = v55;
        }

        else
        {
          v19 = 0;
          v20 = 8 * v16;
          v53 = 8 * v15 * v18;
          v21 = *(a3[5] + 8 * v10) + v53 + 8 * v17 + 8;
          v22 = a5;
          do
          {
            if (v16 >= 1)
            {
              v23 = *(a4 + 16);
              v24 = v16;
              v25 = v21;
              v26 = v22;
              do
              {
                if (*(a4 + 12))
                {
                  v27 = v19 + *(a4 + 8) * *v25;
                }

                else
                {
                  v27 = *v25 + *(a4 + 8) * v19;
                }

                *v26++ = *(v23 + 8 * v27);
                ++v25;
                --v24;
              }

              while (v24);
            }

            ++v19;
            v22 = (v22 + v20);
          }

          while (v19 != v9);
          cblas_dtrsm_NEWLAPACK();
          v28 = 0;
          v29 = a5;
          result = v55;
          v8 = v10 + 1;
          do
          {
            if (v16 >= 1)
            {
              v30 = *(a4 + 16);
              v31 = v16;
              v32 = (v57 + v53 + 8 * v61 + 8);
              v33 = v29;
              do
              {
                if (*(a4 + 12))
                {
                  v34 = v28 + *(a4 + 8) * *v32;
                }

                else
                {
                  v34 = *v32 + *(a4 + 8) * v28;
                }

                v35 = *v33++;
                *(v30 + 8 * v34) = v35;
                ++v32;
                --v31;
              }

              while (v31);
            }

            ++v28;
            v29 = (v29 + v20);
          }

          while (v28 != v9);
        }

        v36 = v58 - v16;
        if (v58 > v16)
        {
          cblas_dgemm_NEWLAPACK();
          v8 = v10 + 1;
          result = v55;
          if (v9 >= 1)
          {
            v37 = 0;
            v38 = 0;
            v39 = *(a2 + 120);
            v40 = *(v39 + 8 * v10) - *(*(a2 + 88) + 4 * v10) + *(*(a2 + 88) + 4 * v59);
            v41 = v15 - v16;
            v42 = *(v39 + 8 * v59);
            do
            {
              if (v15 > v16)
              {
                v43 = *(a4 + 16);
                v44 = v37;
                v45 = (v57 + 8 * v15 * v54 + 8 * v61 + 4 * v16 + 8);
                v46 = v16;
                do
                {
                  if (*(a4 + 12))
                  {
                    v47 = v38 + *(a4 + 8) * *v45;
                  }

                  else
                  {
                    v47 = *v45 + *(a4 + 8) * v38;
                  }

                  *(v43 + 8 * v47) = *&a5[v16 * v9 + v44] + *(v43 + 8 * v47);
                  ++v46;
                  ++v45;
                  ++v44;
                }

                while (v46 < v15);
              }

              if (v40 < v42)
              {
                v48 = &a5[v16 * v9 + v41];
                v49 = *(a4 + 16);
                v50 = v40;
                do
                {
                  if (*(a4 + 12))
                  {
                    v51 = v38 + *(a4 + 8) * *(*(a2 + 128) + 4 * v50);
                  }

                  else
                  {
                    v51 = *(*(a2 + 128) + 4 * v50) + *(a4 + 8) * v38;
                  }

                  v52 = *v48++;
                  *(v49 + 8 * v51) = v52 + *(v49 + 8 * v51);
                  ++v50;
                }

                while (v50 < v42);
              }

              ++v38;
              v37 += v36;
              v41 += v36;
            }

            while (v38 != v9);
          }
        }
      }
    }

    while (v8 < *(a2 + 64));
  }

  return result;
}

int *sub_23678DAD0(int *result, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v6 = 4;
  if (*(a5 + 12))
  {
    v6 = 0;
  }

  v7 = *(a5 + v6);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a5;
  }

  if ((result - 3) >= 2)
  {
    if (result)
    {
      v27 = *(a2 + 64);
      if (v27 >= 1)
      {
        result = 0;
        v28 = *(a2 + 120);
        v29 = *(a2 + 88);
        v30 = a3[5];
        v31 = *v28;
        v32 = *v29;
        do
        {
          v33 = (result + 1);
          v34 = v28[result + 1];
          v35 = v29[result + 1];
          if (v7 >= 1)
          {
            v36 = 0;
            LODWORD(v37) = v35 - v32;
            v38 = *(v30 + 8 * result) + 8;
            v39 = v34 - v31;
            v40 = v37;
            v41 = (v38 + 8 * v39 * v37);
            if (v37 <= 1)
            {
              v37 = 1;
            }

            else
            {
              v37 = v37;
            }

            v42 = 8 * v39 + 8;
            do
            {
              if (v40 >= 1)
              {
                v43 = *(v8 + 2);
                v44 = *(a5 + 16);
                v45 = v38;
                v46 = v37;
                v47 = v41;
                v48 = *(a5 + 8);
                do
                {
                  v49 = *v47;
                  if (v8[3])
                  {
                    v50 = v36 + v8[2] * *v47;
                  }

                  else
                  {
                    v50 = *v47 + v8[2] * v36;
                  }

                  v51 = *(v43 + 8 * v50);
                  if (*(a5 + 12))
                  {
                    v52 = *v47;
                  }

                  else
                  {
                    v52 = v36;
                  }

                  if (*(a5 + 12))
                  {
                    v49 = v36;
                  }

                  *(v44 + 8 * (v49 + v48 * v52)) = v51 / *v45;
                  ++v47;
                  v45 = (v45 + v42);
                  --v46;
                }

                while (v46);
              }

              ++v36;
            }

            while (v36 != v7);
          }

          v32 = v35;
          LODWORD(v31) = v34;
          result = v33;
        }

        while (v33 != v27);
      }
    }

    else if (a4)
    {

      return sub_2366FD390(a4, a5);
    }
  }

  else if (*(a2 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      if (result == 4)
      {
        v10 = atomic_load((a3[6] + 4 * v9));
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a2 + 120);
      v12 = v9 + 1;
      v13 = *(v11 + 8 * (v9 + 1));
      v14 = *(v11 + 8 * v9);
      v15 = *(*(a2 + 88) + 4 * (v9 + 1)) - *(*(a2 + 88) + 4 * v9) + v10;
      v16 = v15;
      if (result == 4)
      {
        v16 = *(a3[7] + 4 * v9);
      }

      if (v7 >= 1)
      {
        v17 = 0;
        v18 = *(a3[5] + 8 * v9) + 8 * (v10 + v13 - v14) * v15 + 8;
        v19 = v18 + 16 * v15;
        do
        {
          if (v16 >= 1)
          {
            v20 = 0;
            do
            {
              v21 = v20 + 1;
              if (v20 + 1 < v16)
              {
                v22 = *(v18 + 16 * v20 + 16);
              }

              v23 = *(v19 + 4 * v20);
              if (v8[3])
              {
                v24 = *(v19 + 4 * v20);
              }

              else
              {
                v24 = v17;
              }

              if (v8[3])
              {
                v25 = v17;
              }

              else
              {
                v25 = *(v19 + 4 * v20);
              }

              if (*(a5 + 12))
              {
                v26 = *(v19 + 4 * v20);
              }

              else
              {
                v26 = v17;
              }

              if (*(a5 + 12))
              {
                v23 = v17;
              }

              *(*(a5 + 16) + 8 * (v23 + *(a5 + 8) * v26)) = *(*(v8 + 2) + 8 * (v25 + v8[2] * v24)) / *(v18 + 16 * v20++);
            }

            while (v21 < v16);
          }

          ++v17;
        }

        while (v17 != v7);
      }

      v9 = v12;
    }

    while (v12 < *(a2 + 64));
  }

  return result;
}

uint64_t sub_23678DE2C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v5 = 4;
  if (*(a4 + 12))
  {
    v5 = 0;
  }

  v6 = *(a2 + 64);
  if (v6 >= 1)
  {
    v10 = *(a4 + v5);
    v47 = result - 3;
    v44 = result;
    do
    {
      v11 = v6--;
      if (result == 4)
      {
        v12 = atomic_load((a3[6] + 4 * v6));
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 120);
      v14 = *(v13 + 8 * v11);
      v15 = *(v13 + 8 * v6);
      v16 = *(*(a2 + 88) + 4 * v11) - *(*(a2 + 88) + 4 * v6);
      v17 = (v16 + v12);
      v18 = v16 + v12;
      if (result == 4)
      {
        v18 = *(a3[7] + 4 * v6);
      }

      if (v47 >= 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 2 * v17;
      }

      if (v18)
      {
        v20 = v12 + v14 - v15;
        v21 = *(a3[5] + 8 * v6);
        v22 = 8 * v20;
        if (v10 >= 1)
        {
          v23 = 0;
          v24 = v15 + v16;
          v25 = 8 * v12 + 8 * v16;
          v26 = a5;
          do
          {
            if (v17 >= 1)
            {
              v27 = *(a4 + 16);
              v28 = v17;
              v29 = (v21 + 8 * v17 * v20 + 8 * v19 + 8);
              v30 = v26;
              do
              {
                if (*(a4 + 12))
                {
                  v31 = v23 + *(a4 + 8) * *v29;
                }

                else
                {
                  v31 = *v29 + *(a4 + 8) * v23;
                }

                *v30++ = *(v27 + 8 * v31);
                ++v29;
                --v28;
              }

              while (v28);
            }

            if (v24 < v14)
            {
              v32 = *(a4 + 16);
              v33 = v25;
              v34 = v24;
              do
              {
                if (*(a4 + 12))
                {
                  v35 = v23 + *(a4 + 8) * *(*(a2 + 128) + 4 * v34);
                }

                else
                {
                  v35 = *(*(a2 + 128) + 4 * v34) + *(a4 + 8) * v23;
                }

                *(v26 + v33) = *(v32 + 8 * v35);
                ++v34;
                v33 += 8;
              }

              while (v34 < v14);
            }

            ++v23;
            v26 = (v26 + v22);
          }

          while (v23 != v10);
        }

        v45 = v17;
        v48 = v19;
        v46 = v21;
        if (v20 > v18)
        {
          cblas_dgemm_NEWLAPACK();
        }

        cblas_dtrsm_NEWLAPACK();
        result = v44;
        if (v10 >= 1)
        {
          v36 = 0;
          v37 = a5;
          do
          {
            if (v18 >= 1)
            {
              v38 = *(a4 + 16);
              v39 = v18;
              v40 = (v46 + 8 * v45 * v20 + 8 * v48 + 8);
              v41 = v37;
              do
              {
                if (*(a4 + 12))
                {
                  v42 = v36 + *(a4 + 8) * *v40;
                }

                else
                {
                  v42 = *v40 + *(a4 + 8) * v36;
                }

                v43 = *v41++;
                *(v38 + 8 * v42) = v43;
                ++v40;
                --v39;
              }

              while (v39);
            }

            ++v36;
            v37 = (v37 + v22);
          }

          while (v36 != v10);
        }
      }
    }

    while (v11 > 1);
  }

  return result;
}

_DWORD *sub_23678E160(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7)
{
  v13 = 4;
  if (*(a4 + 12))
  {
    v13 = 0;
  }

  v14 = *(a4 + v13);
  result = sub_23678B078(a1, a2, &v87, &v86);
  v85 = a6;
  v16 = (&a6[v14 * a1] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 > a7 || (v17 = v16 + 8 * v14 * *(a2 + 192), v17 > a7) || (v18 = v17 + 8 * *(a2 + 88), v18 > a7) || (v90 = -1, v91 = 1, v88 = 10000, v89 = 8, result = ilaenv_NEWLAPACK(), ((v18 + 8 * result * v14) & 0xFFFFFFFFFFFFFFF8) > a7))
  {
    __break(1u);
  }

  else
  {
    v19 = *(a2 + 88);
    if (v19 >= 1)
    {
      v20 = 0;
      do
      {
        v21 = *(a2 + 120);
        v22 = (v21 + 8 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(a2 + 104);
        v26 = v20 + 1;
        v27 = v24 - *v22;
        v28 = *(v25 + 8 * (v20 + 1)) - *(v25 + 8 * v20);
        if (v27)
        {
          v29 = *(v25 + 8 * (v20 + 1)) == *(v25 + 8 * v20);
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = *(a2 + 96);
          v83 = *(v30 + 4 * v26);
          v84 = *(v30 + 4 * v20);
          v31 = *(*(a3 + 40) + 8 * v20);
          v32 = *(a3 + 56);
          v82 = *(a2 + 64);
          v33 = 8 * v27;
          if (v24 > v23)
          {
            v34 = 0;
            v36 = *(a2 + 128);
            v35 = *(a2 + 136);
            v37 = v85;
            do
            {
              v38 = *(v36 + 8 * v23);
              v39 = v38 / v35;
              v40 = v38 % v35;
              if (v39 <= 0)
              {
                if (v14 >= 1)
                {
                  v49 = *(a4 + 16);
                  v50 = *(a4 + 8);
                  v51 = v50 * v40;
                  v52 = v14;
                  v53 = v37;
                  do
                  {
                    if (*(a4 + 12))
                    {
                      v54 = v51;
                    }

                    else
                    {
                      v54 = v40;
                    }

                    *v53 = *(v49 + 8 * v54);
                    LODWORD(v40) = v40 + v50;
                    ++v51;
                    v53 = (v53 + v33);
                    --v52;
                  }

                  while (v52);
                }
              }

              else
              {
                v41 = v39 - 1;
                v42 = 8 * (v39 - 1);
                v43 = v39 & 0x7FFFFFFF;
                v44 = *(v25 + 8 * v43) - *(v25 + v42);
                if (v44 >= *(v21 + 8 * v41 + 8) - *(v21 + 8 * v41))
                {
                  v44 = *(v21 + 8 * v41 + 8) - *(v21 + 8 * v41);
                }

                if (v14 >= 1)
                {
                  v45 = (*(v17 + 8 * v41) + 8 * v40);
                  v46 = 8 * (*(v30 + 4 * v41) - *(v30 + 4 * v43) + v44);
                  v47 = v14;
                  v48 = v37;
                  do
                  {
                    *v48 = *v45;
                    v48 = (v48 + v33);
                    v45 = (v45 + v46);
                    --v47;
                  }

                  while (v47);
                }
              }

              ++v23;
              ++v34;
              ++v37;
            }

            while (v34 != v27);
          }

          v55 = *(a2 + 152);
          v56 = *(v55 + 4 * v20);
          if (v56 < *(v55 + 4 * v26))
          {
            do
            {
              v57 = *(*(a2 + 160) + 4 * v56);
              v58 = *(*(a2 + 120) + 8 * v57 + 8) - *(*(a2 + 120) + 8 * v57);
              v59 = *(*(a2 + 96) + 4 * (v57 + 1)) - *(*(a2 + 96) + 4 * v57);
              if (v58 >= (*(*(a2 + 104) + 8 * (v57 + 1)) - *(*(a2 + 104) + 8 * v57)))
              {
                v58 = *(*(a2 + 104) + 8 * (v57 + 1)) - *(*(a2 + 104) + 8 * v57);
              }

              *(v17 + 8 * v57) = 0;
              v16 += 8 * (v59 - v58) * v14;
              ++v56;
            }

            while (v56 < *(*(a2 + 152) + 4 * v26));
          }

          v90 = v14;
          v91 = v27;
          if (v27 >= v28)
          {
            v60 = v28;
          }

          else
          {
            v60 = v27;
          }

          v88 = v28;
          v89 = v60;
          result = dormlq_NEWLAPACK();
          v61 = v83 - v84;
          if (v14 <= 0)
          {
            LODWORD(v73) = v60 - v61;
            *(v17 + 8 * v20) = v16;
          }

          else
          {
            v62 = 0;
            v63 = *(a2 + 96);
            v64 = *(v63 + 4 * v20);
            v65 = *(v63 + 4 * v26);
            v66 = v85;
            do
            {
              if (v65 > v64)
              {
                v67 = *(a5 + 16);
                v68 = (v65 - v64);
                v69 = v66;
                result = (v82 + 4 * v84);
                do
                {
                  if (*(a5 + 12))
                  {
                    v70 = v62 + *(a5 + 8) * *result;
                  }

                  else
                  {
                    v70 = *result + *(a5 + 8) * v62;
                  }

                  v71 = *v69++;
                  *(v67 + 8 * v70) = v71;
                  ++result;
                  --v68;
                }

                while (v68);
              }

              ++v62;
              v66 = (v66 + v33);
            }

            while (v62 != v14);
            v72 = 0;
            v73 = (v60 - v61);
            *(v17 + 8 * v20) = v16;
            v74 = &v85[v61];
            v75 = v16;
            do
            {
              v76 = -v73;
              v77 = v75;
              v78 = v74;
              if (v60 > v61)
              {
                do
                {
                  v79 = *v78++;
                  *v77++ = v79;
                }

                while (!__CFADD__(v76++, 1));
              }

              ++v72;
              v74 = (v74 + v33);
              v75 += v73;
            }

            while (v72 != v14);
          }

          v16 += 8 * v73 * v14;
          v19 = *(a2 + 88);
        }

        ++v20;
      }

      while (v26 < v19);
    }
  }

  return result;
}

uint64_t sub_23678E600(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(result + 88);
  if (v5 >= 1)
  {
    v7 = result;
    v8 = *(a3 + v4);
    do
    {
      v10 = v7[12];
      v9 = v7[13];
      v11 = *(v9 + 8 * v5);
      v12 = *(v9 + 8 * (v5 - 1));
      v13 = *(v10 + 4 * v5);
      v14 = *(v10 + 4 * (v5 - 1));
      v15 = *(*(a2 + 40) + 8 * (v5 - 1));
      v34 = v7[8];
      v16 = v11 - v12;
      if (v8 >= 1)
      {
        v17 = 0;
        v18 = a4;
        do
        {
          if (v11 > v12)
          {
            v19 = *(a3 + 16);
            v20 = v18;
            v21 = v12;
            do
            {
              if (*(a3 + 12))
              {
                v22 = v17 + *(a3 + 8) * *(v7[14] + 4 * v21);
              }

              else
              {
                v22 = *(v7[14] + 4 * v21) + *(a3 + 8) * v17;
              }

              *v20++ = *(v19 + 8 * v22);
              ++v21;
            }

            while (v11 != v21);
          }

          ++v17;
          v18 += v16;
        }

        while (v17 != v8);
      }

      v23 = (v13 - v14);
      if (v11 - v12 > v23)
      {
        cblas_dgemm_NEWLAPACK();
      }

      result = cblas_dtrsm_NEWLAPACK();
      if (v8 >= 1)
      {
        v24 = 0;
        v25 = a4;
        do
        {
          if (v23 >= 1)
          {
            v26 = *(a3 + 16);
            v27 = v23;
            v28 = (v34 + 4 * v14);
            v29 = v25;
            do
            {
              if (*(a3 + 12))
              {
                v30 = v24 + *(a3 + 8) * *v28;
              }

              else
              {
                v30 = *v28 + *(a3 + 8) * v24;
              }

              v31 = *v29++;
              *(v26 + 8 * v30) = v31;
              ++v28;
              --v27;
            }

            while (v27);
          }

          ++v24;
          v25 += v16;
        }

        while (v24 != v8);
      }
    }

    while (v5-- > 1);
  }

  return result;
}

uint64_t sub_23678E828(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  if (*(result + 88) >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(a3 + v4);
    do
    {
      v9 = v7 + 1;
      v10 = *(v6 + 96);
      v11 = *(v10 + 4 * (v7 + 1));
      v12 = *(v10 + 4 * v7);
      v13 = *(*(v6 + 104) + 8 * (v7 + 1)) - *(*(v6 + 104) + 8 * v7);
      v14 = (v11 - v12);
      v44 = *(*(a2 + 40) + 8 * v7);
      if (v8 <= 0)
      {
        result = cblas_dtrsm_NEWLAPACK();
      }

      else
      {
        v15 = 0;
        v16 = *(v6 + 64) + 4 * v12;
        v17 = 8 * (v11 - v12);
        v18 = a4;
        do
        {
          if (v14 >= 1)
          {
            v19 = *(a3 + 16);
            v20 = v14;
            v21 = v16;
            v22 = v18;
            do
            {
              if (*(a3 + 12))
              {
                v23 = v15 + *(a3 + 8) * *v21;
              }

              else
              {
                v23 = *v21 + *(a3 + 8) * v15;
              }

              *v22++ = *(v19 + 8 * v23);
              ++v21;
              --v20;
            }

            while (v20);
          }

          ++v15;
          v18 = (v18 + v17);
        }

        while (v15 != v8);
        result = cblas_dtrsm_NEWLAPACK();
        v24 = 0;
        v25 = a4;
        do
        {
          if (v14 >= 1)
          {
            v26 = *(a3 + 16);
            v27 = v14;
            v28 = v16;
            v29 = v25;
            do
            {
              if (*(a3 + 12))
              {
                v30 = v24 + *(a3 + 8) * *v28;
              }

              else
              {
                v30 = *v28 + *(a3 + 8) * v24;
              }

              v31 = *v29++;
              *(v26 + 8 * v30) = v31;
              ++v28;
              --v27;
            }

            while (v27);
          }

          ++v24;
          v25 = (v25 + v17);
        }

        while (v24 != v8);
      }

      if (v13 > v14)
      {
        v32 = &a4[v14 * v8];
        result = cblas_dgemm_NEWLAPACK();
        if (v8 >= 1)
        {
          v33 = 0;
          v34 = (*(v6 + 104) + 8 * v7);
          v36 = *v34;
          v35 = v34[1];
          v37 = v36 + v14;
          do
          {
            if (v37 < v35)
            {
              v38 = *(a3 + 16);
              v39 = v32;
              v40 = v37;
              do
              {
                if (*(a3 + 12))
                {
                  v41 = v33 + *(a3 + 8) * *(*(v6 + 112) + 4 * v40);
                }

                else
                {
                  v41 = *(*(v6 + 112) + 4 * v40) + *(a3 + 8) * v33;
                }

                v42 = *v39++;
                *(v38 + 8 * v41) = v42 + *(v38 + 8 * v41);
                ++v40;
              }

              while (v40 < v35);
            }

            ++v33;
            v32 = (v32 + 8 * v13 - 8 * v14);
          }

          while (v33 != v8);
        }
      }

      ++v7;
    }

    while (v9 < *(v6 + 88));
  }

  return result;
}

void sub_23678EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, void *a6)
{
  v9 = 4;
  if (*(a4 + 12))
  {
    v9 = 0;
  }

  v10 = *(a4 + v9);
  ilaenv_NEWLAPACK();
  if (a5[1] >= 1)
  {
    v11 = 0;
    do
    {
      bzero((*(a5 + 2) + 8 * a5[2] * v11++), 8 * *a5);
    }

    while (v11 < a5[1]);
  }

  v12 = *(a2 + 88);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 96);
    LODWORD(v15) = *v14;
    do
    {
      v16 = v13++;
      v17 = v14[v13];
      v18 = (v17 - v15);
      if (v17 > v15)
      {
        v19 = 0;
        v20 = *(a2 + 120);
        v21 = *(v20 + 8 * v16);
        v22 = *(v20 + 8 * v13);
        v15 = v15;
        if (v21 > v22)
        {
          v22 = v21;
        }

        v23 = v22 - v21;
        do
        {
          if (v19 == v23)
          {
            break;
          }

          v24 = *(a2 + 128);
          v25 = *(a2 + 136);
            ;
          }

          if (v10 >= 1)
          {
            v27 = 0;
            v28 = *(a4 + 16);
            v29 = *(a5 + 2);
            v30 = a5[2];
            do
            {
              if (*(a4 + 12))
              {
                v31 = v27 + *(a4 + 8) * *(*(a2 + 64) + 4 * v15);
              }

              else
              {
                v31 = *(*(a2 + 64) + 4 * v15) + *(a4 + 8) * v27;
              }

              v32 = *(v28 + 8 * v31);
              if (a5[3])
              {
                v33 = i;
              }

              else
              {
                v33 = v27;
              }

              if (a5[3])
              {
                v34 = v27;
              }

              else
              {
                v34 = i;
              }

              *(v29 + 8 * (v34 + v30 * v33)) = v32;
              ++v27;
            }

            while (v10 != v27);
          }

          ++v15;
          ++v19;
        }

        while (v19 != v18);
      }

      LODWORD(v15) = v17;
    }

    while (v13 != v12);
    v35 = *(a2 + 120);
    do
    {
      v36 = v12 - 1;
      v37 = (v35 + 8 * (v12 - 1));
      v38 = *v37;
      v39 = v37[1];
      v40 = v39 - *v37;
      v41 = *(*(a2 + 104) + 8 * v12) - *(*(a2 + 104) + 8 * (v12 - 1));
      if (v40)
      {
        v42 = *(*(a2 + 104) + 8 * v12) == *(*(a2 + 104) + 8 * (v12 - 1));
      }

      else
      {
        v42 = 1;
      }

      if (!v42)
      {
        v43 = *(*(a3 + 40) + 8 * v36);
        v44 = *(a3 + 56);
        v45 = v40;
        if (v39 > v38)
        {
          v46 = 0;
          v47 = *(a2 + 96);
          v48 = a6;
          v49 = *(a2 + 128);
          v50 = *(a2 + 136);
          do
          {
              ;
            }

            if (v10 >= 1)
            {
              v52 = 0;
              v53 = *(a5 + 2);
              v54 = a5[2];
              v55 = j * v54;
              v56 = v10;
              v57 = v48;
              do
              {
                if (a5[3])
                {
                  v58 = v55;
                }

                else
                {
                  v58 = j + v52;
                }

                *v57 = *(v53 + 8 * v58);
                v52 += v54;
                ++v55;
                v57 += v40;
                --v56;
              }

              while (v56);
            }

            ++v38;
            ++v46;
            ++v48;
          }

          while (v46 != v40);
        }

        dormlq_NEWLAPACK();
        v35 = *(a2 + 120);
        v59 = *(v35 + 8 * v36);
        v60 = *(v35 + 8 * v12);
        v61 = v60 <= v59;
        v62 = v60 - v59;
        if (!v61)
        {
          v63 = 0;
          v64 = *(a2 + 128);
          v65 = *(a2 + 136);
          v66 = a6;
          do
          {
              ;
            }

            if (v10 >= 1)
            {
              v68 = 0;
              v69 = *(a5 + 2);
              v70 = a5[2];
              v71 = k * v70;
              v72 = v10;
              v73 = v66;
              do
              {
                if (a5[3])
                {
                  v74 = v71;
                }

                else
                {
                  v74 = k + v68;
                }

                *(v69 + 8 * v74) = *v73;
                v68 += v70;
                ++v71;
                v73 += v45;
                --v72;
              }

              while (v72);
            }

            ++v59;
            ++v63;
            ++v66;
          }

          while (v63 != v62);
        }
      }

      v61 = v12-- <= 1;
    }

    while (!v61);
  }
}

void _SparseSolveOpaque_Double(const SparseOpaqueFactorization_Double *Factored, const DenseMatrix_Double *RHS, const DenseMatrix_Double *Soln, void *workspace)
{
  v4 = 4;
  if (*&Soln->attributes)
  {
    v4 = 0;
  }

  sub_23678B11C(Factored, &RHS->rowCount, Soln, workspace, Factored->solveWorkspaceRequiredPerRHS + *&Factored[1].status * *(&Soln->rowCount + v4));
}

void sub_23678EFD4(__int16 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v265 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 33);
  v12 = *(a3 + 12);
  v13 = 4;
  if (v12)
  {
    v13 = 0;
  }

  if (v11 <= 0x29)
  {
    v14 = *(a3 + v13);
    if (((1 << v11) & 0x1D) != 0)
    {
      v15 = *(a1 + 5);
      if (*(a1 + 4) <= 2u)
      {
        if (v10 != 1)
        {
          if (v10 == 2)
          {
            v16 = *(*(a1 + 11) + 64);
            v17 = *(v15 + 136);
            goto LABEL_109;
          }

LABEL_251:
          __break(1u);
          return;
        }

        LODWORD(v23) = *(v15 + 60);
        v25 = *(v15 + 80);
        goto LABEL_60;
      }

      v261 = *(a1 + 11);
      if (v10 == 3)
      {
        v58 = 4;
        if ((v12 & 1) == 0)
        {
          v58 = 0;
        }

        v59 = *(a3 + v58);
        *&v264[0] = __PAIR64__(v14, v59);
        *(&v264[0] + 1) = v59;
        *&v264[1] = a4;
        v262 = a4 + 8 * *(a3 + 4) * *a3;
        sub_23679019C(0, *(v15 + 60), *(v15 + 80), a2, a3, a4);
        v258 = v11;
        if (v9)
        {
          v60 = *(v15 + 64);
          v61 = v261;
          if (v60 >= 1)
          {
            v254 = v11 - 3;
            do
            {
              v62 = v60--;
              if (v11 == 4)
              {
                v63 = atomic_load((v61[6] + 4 * v60));
              }

              else
              {
                v63 = 0;
              }

              v64 = *(v15 + 120);
              v65 = *(v64 + 8 * v62);
              v66 = *(v64 + 8 * v60);
              v67 = *(*(v15 + 88) + 4 * v62) - *(*(v15 + 88) + 4 * v60);
              v68 = (v67 + v63);
              v69 = v67 + v63;
              if (v11 == 4)
              {
                v69 = *(v61[7] + 4 * v60);
              }

              if (v254 >= 2)
              {
                v70 = 0;
              }

              else
              {
                v70 = 2 * v68;
              }

              if (v69)
              {
                v71 = v63 + v65 - v66;
                v72 = *(v61[5] + 8 * v60);
                v73 = 8 * v71;
                if (v14 >= 1)
                {
                  v74 = 0;
                  v75 = v66 + v67;
                  v76 = 8 * v63 + 8 * v67;
                  v77 = v262;
                  do
                  {
                    if (v68 >= 1)
                    {
                      v78 = *(a3 + 16);
                      v79 = v77;
                      v80 = v68;
                      v81 = (v72 + 8 * v68 * v71 + 8 * v70 + 8);
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v82 = v74 + *(a3 + 8) * *v81;
                        }

                        else
                        {
                          v82 = *v81 + *(a3 + 8) * v74;
                        }

                        *v79++ = *(v78 + 8 * v82);
                        ++v81;
                        --v80;
                      }

                      while (v80);
                    }

                    if (v75 < v65)
                    {
                      v83 = *(a3 + 16);
                      v84 = v76;
                      v85 = v75;
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v86 = v74 + *(a3 + 8) * *(*(v15 + 128) + 4 * v85);
                        }

                        else
                        {
                          v86 = *(*(v15 + 128) + 4 * v85) + *(a3 + 8) * v74;
                        }

                        *(v77 + v84) = *(v83 + 8 * v86);
                        ++v85;
                        v84 += 8;
                      }

                      while (v85 < v65);
                    }

                    ++v74;
                    v77 = (v77 + v73);
                  }

                  while (v74 != v14);
                }

                v247 = v68;
                v248 = v71;
                v250 = v72;
                cblas_dtrmm_NEWLAPACK();
                if (v71 > v69)
                {
                  cblas_dgemm_NEWLAPACK();
                }

                v11 = v258;
                v61 = v261;
                if (v14 >= 1)
                {
                  v87 = 0;
                  v88 = *&v264[1];
                  v89 = v262;
                  do
                  {
                    if (v69 >= 1)
                    {
                      v90 = DWORD2(v264[0]);
                      v91 = BYTE12(v264[0]);
                      v92 = DWORD2(v264[0]) * v87;
                      v93 = v89;
                      v94 = v69;
                      v95 = (v250 + 8 * v247 * v248 + 8 * v70 + 8);
                      do
                      {
                        v96 = *v93++;
                        v97 = v96;
                        LODWORD(v96) = *v95++;
                        v98 = v87 + v90 * v96;
                        v99 = v92 + v96;
                        if (v91)
                        {
                          v99 = v98;
                        }

                        *(v88 + 8 * v99) = v97;
                        --v94;
                      }

                      while (v94);
                    }

                    ++v87;
                    v89 = (v89 + v73);
                  }

                  while (v87 != v14);
                }
              }
            }

            while (v62 > 1);
          }
        }

        else
        {
          if (v14 >= 1)
          {
            for (i = 0; i < v14; ++i)
            {
              if (v59 >= 1)
              {
                v148 = v59;
                do
                {
                  bzero((a4 + 8 * i * v59), 8 * v59);
                  --v148;
                }

                while (v148);
              }
            }
          }

          v149 = v11;
          v150 = v261;
          if (*(v15 + 64) >= 1)
          {
            v151 = 0;
            v253 = v11 - 3;
            do
            {
              v152 = v151;
              if (v149 == 4)
              {
                v153 = atomic_load((v150[6] + 4 * v151));
              }

              else
              {
                v153 = 0;
              }

              v154 = *(v15 + 120);
              ++v151;
              v155 = *(v154 + 8 * (v152 + 1));
              v156 = *(v154 + 8 * v152);
              v157 = *(*(v15 + 88) + 4 * (v152 + 1)) - *(*(v15 + 88) + 4 * v152) + v153;
              v158 = *(*(v15 + 88) + 4 * (v152 + 1)) - *(*(v15 + 88) + 4 * v152) + v153;
              if (v149 == 4)
              {
                v158 = *(v150[7] + 4 * v152);
              }

              if (v253 >= 2)
              {
                v159 = 0;
              }

              else
              {
                v159 = 2 * v157;
              }

              if (v158)
              {
                v160 = v153 + v155 - v156;
                v161 = *(v150[5] + 8 * v152);
                v162 = 8 * v160;
                if (v14 >= 1)
                {
                  v163 = 0;
                  v164 = v262;
                  do
                  {
                    if (v158 >= 1)
                    {
                      v165 = *(a3 + 16);
                      v166 = v164;
                      v167 = v158;
                      v168 = (v161 + 8 * v157 * v160 + 8 * v159 + 8);
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v169 = v163 + *(a3 + 8) * *v168;
                        }

                        else
                        {
                          v169 = *v168 + *(a3 + 8) * v163;
                        }

                        *v166++ = *(v165 + 8 * v169);
                        ++v168;
                        --v167;
                      }

                      while (v167);
                    }

                    ++v163;
                    v164 = (v164 + v162);
                  }

                  while (v163 != v14);
                }

                v255 = v159;
                v249 = v161;
                if (v160 > v158)
                {
                  cblas_dgemm_NEWLAPACK();
                }

                cblas_dtrmm_NEWLAPACK();
                v149 = v258;
                v150 = v261;
                if (v14 >= 1)
                {
                  v170 = 0;
                  v171 = *(v15 + 120);
                  v172 = *(v171 + 8 * v152) - *(*(v15 + 88) + 4 * v152) + *(*(v15 + 88) + 4 * v151);
                  v173 = *(v171 + 8 * v151);
                  v174 = *&v264[1];
                  v175 = v262;
                  do
                  {
                    if (v157 >= 1)
                    {
                      v176 = DWORD2(v264[0]);
                      v177 = BYTE12(v264[0]);
                      v178 = DWORD2(v264[0]) * v170;
                      v179 = v175;
                      v180 = v157;
                      v181 = (v249 + 8 * v157 * v160 + 8 * v255 + 8);
                      do
                      {
                        v182 = *v179++;
                        v183 = v182;
                        LODWORD(v182) = *v181++;
                        v184 = v170 + v176 * LODWORD(v182);
                        v185 = v178 + LODWORD(v182);
                        if (v177)
                        {
                          v185 = v184;
                        }

                        *(v174 + 8 * v185) = v183 + *(v174 + 8 * v185);
                        --v180;
                      }

                      while (v180);
                    }

                    if (v172 < v173)
                    {
                      v186 = DWORD2(v264[0]);
                      v187 = BYTE12(v264[0]);
                      v188 = DWORD2(v264[0]) * v170;
                      v189 = *(v15 + 128);
                      v190 = v157;
                      v191 = v172;
                      do
                      {
                        v192 = *(v189 + 4 * v191);
                        v193 = v170 + v186 * v192;
                        v194 = v192 + v188;
                        if (v187)
                        {
                          v194 = v193;
                        }

                        *(v174 + 8 * v194) = v175[v190] + *(v174 + 8 * v194);
                        ++v191;
                        ++v190;
                      }

                      while (v191 < v173);
                    }

                    ++v170;
                    v175 = (v175 + v162);
                  }

                  while (v170 != v14);
                }
              }
            }

            while (v151 < *(v15 + 64));
          }
        }
      }

      else
      {
        if (v10 != 4)
        {
          goto LABEL_251;
        }

        v30 = 4;
        if ((v12 & 1) == 0)
        {
          v30 = 0;
        }

        v31 = *(a3 + v30);
        *&v264[0] = __PAIR64__(v14, v31);
        *(&v264[0] + 1) = v31;
        *&v264[1] = a4;
        sub_23679019C(0, *(v15 + 60), *(v15 + 80), a2, a3, a4);
        if (v11 - 3 >= 2)
        {
          if (v11 != 2)
          {
            goto LABEL_251;
          }

          v195 = *(v15 + 64);
          if (v195 >= 1)
          {
            v196 = 0;
            v197 = *(v15 + 120);
            v198 = *(v15 + 88);
            v199 = v261[5];
            v200 = *v197;
            v201 = *v198;
            do
            {
              v202 = v196 + 1;
              v203 = v197[v196 + 1];
              v204 = v198[v196 + 1];
              if (v14 >= 1)
              {
                v205 = 0;
                LODWORD(v206) = v204 - v201;
                v207 = *(v199 + 8 * v196) + 8;
                v208 = v203 - v200;
                v209 = v206;
                v210 = (v207 + 8 * v208 * v206);
                if (v206 <= 1)
                {
                  v206 = 1;
                }

                else
                {
                  v206 = v206;
                }

                v211 = 8 * v208 + 8;
                do
                {
                  if (v209 >= 1)
                  {
                    v212 = *(a3 + 16);
                    v213 = v207;
                    v214 = v206;
                    v215 = v210;
                    do
                    {
                      if (*(a3 + 12))
                      {
                        v216 = v205 + *(a3 + 8) * *v215;
                      }

                      else
                      {
                        v216 = *v215 + *(a3 + 8) * v205;
                      }

                      *(a4 + 8 * (v205 * v31 + *v215++)) = *(v212 + 8 * v216) * *v213;
                      v213 = (v213 + v211);
                      --v214;
                    }

                    while (v214);
                  }

                  ++v205;
                }

                while (v205 != v14);
              }

              v201 = v204;
              LODWORD(v200) = v203;
              v196 = v202;
            }

            while (v202 != v195);
          }
        }

        else if (*(v15 + 64) >= 1)
        {
          v32 = 0;
          do
          {
            if (v11 == 4)
            {
              v33 = atomic_load((v261[6] + 4 * v32));
            }

            else
            {
              v33 = 0;
            }

            v34 = *(v15 + 120);
            v35 = v32 + 1;
            v36 = *(v34 + 8 * (v32 + 1));
            v37 = *(v34 + 8 * v32);
            v38 = *(*(v15 + 88) + 4 * (v32 + 1)) - *(*(v15 + 88) + 4 * v32) + v33;
            v39 = v38;
            if (v11 == 4)
            {
              v39 = *(v261[7] + 4 * v32);
            }

            if (v14 >= 1)
            {
              v40 = 0;
              v41 = *(v261[5] + 8 * v32) + 8 * v38 * (v33 + v36 - v37) + 8;
              v42 = v41 + 16 * v38;
              do
              {
                if (v39 >= 1)
                {
                  v43 = 0;
                  v44 = *&v264[1];
                  v45 = DWORD2(v264[0]);
                  do
                  {
                    v46 = v43 + 1;
                    if (v43 + 1 >= v39)
                    {
                      v49 = *(a3 + 16);
                      v50 = *(a3 + 8);
                      v47 = 2 * v43;
                    }

                    else
                    {
                      v47 = 2 * v43;
                      v48 = *(v41 + 16 * v43 + 16);
                      v49 = *(a3 + 16);
                      v50 = *(a3 + 8);
                    }

                    v51 = *(v42 + 4 * v43);
                    if (*(a3 + 12))
                    {
                      v52 = v51;
                    }

                    else
                    {
                      v52 = v40;
                    }

                    if (*(a3 + 12))
                    {
                      v53 = v40;
                    }

                    else
                    {
                      v53 = v51;
                    }

                    v54 = *(v49 + 8 * (v53 + v52 * v50)) * *(v41 + 8 * v47);
                    if (BYTE12(v264[0]))
                    {
                      v55 = v51;
                    }

                    else
                    {
                      v55 = v40;
                    }

                    if (BYTE12(v264[0]))
                    {
                      v51 = v40;
                    }

                    *(v44 + 8 * (v51 + v55 * v45)) = v54;
                    v43 = v46;
                  }

                  while (v46 < v39);
                }

                ++v40;
              }

              while (v40 != v14);
            }

            v32 = v35;
          }

          while (v35 < *(v15 + 64));
        }
      }

      v107 = *(v15 + 60);
      v105 = *(v15 + 80);
      v108 = v264;
      v106 = 1;
      v109 = a3;
      v110 = 0;
      goto LABEL_246;
    }

    if (((1 << v11) & 0x30000000000) != 0)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 5);
      v20 = *(a1 + 6);
      v21 = v19 * v18;
      v22 = v20 * v18;
      if (v20 * v18 >= v19 * v18)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      if (v22 <= v21)
      {
        v22 = v19 * v18;
      }

      v24 = *(a1 + 5);
      v260 = *(a1 + 11);
      switch(v10)
      {
        case 7:
          v111 = 4;
          if ((v12 & 1) == 0)
          {
            v111 = 0;
          }

          v112 = *(a3 + v111);
          *&v264[0] = __PAIR64__(v14, v112);
          *(&v264[0] + 1) = v112;
          *&v264[1] = a4;
          v113 = a4 + 8 * (v112 * v14);
          if (v7)
          {
            v114 = v7;
          }

          else
          {
            v114 = a3;
          }

          v252 = v23;
          v263 = a4 + 8 * (v112 * v14);
          sub_23679019C(1, v23, *(v24 + 64), v114, v264, v113);
          v115 = 4;
          if (*(a3 + 12))
          {
            v115 = 0;
          }

          if (v9)
          {
            v116 = *(a3 + v115);
            v117 = *(a3 + 4);
            if (v117 >= 1)
            {
              v118 = 0;
              v119 = *a3;
              do
              {
                if (v119 >= 1)
                {
                  v120 = 0;
                  do
                  {
                    bzero((*(a3 + 16) + 8 * *(a3 + 8) * v118), 8 * v119);
                    ++v120;
                    v119 = *a3;
                  }

                  while (v120 < *a3);
                  v117 = *(a3 + 4);
                }

                ++v118;
              }

              while (v118 < v117);
            }

            if (*(v24 + 88) >= 1)
            {
              v121 = 0;
              do
              {
                v122 = v121 + 1;
                v123 = *(v24 + 96);
                v124 = *(*(v24 + 104) + 8 * (v121 + 1)) - *(*(v24 + 104) + 8 * v121);
                v125 = *(v123 + 4 * (v121 + 1));
                v126 = *(v123 + 4 * v121);
                v127 = (v125 - v126);
                v128 = *(*(v260 + 40) + 8 * v121);
                if (v116 >= 1)
                {
                  v129 = 0;
                  v130 = *(v24 + 64) + 4 * v126;
                  v131 = v263;
                  do
                  {
                    if (v127 >= 1)
                    {
                      v132 = v130;
                      v133 = v131;
                      v134 = v127;
                      do
                      {
                        v135 = *v132++;
                        *v133++ = *(a4 + 8 * (v135 + v112 * v129));
                        --v134;
                      }

                      while (v134);
                    }

                    ++v129;
                    v131 += v124;
                  }

                  while (v129 != v116);
                }

                if (v124 > v127)
                {
                  cblas_dgemm_NEWLAPACK();
                }

                cblas_dtrmm_NEWLAPACK();
                if (v116 >= 1)
                {
                  v136 = 0;
                  v137 = (*(v24 + 104) + 8 * v121);
                  v138 = *v137;
                  v139 = v137[1];
                  v140 = v263;
                  do
                  {
                    if (v138 < v139)
                    {
                      v141 = *(a3 + 16);
                      v142 = v140;
                      v143 = v138;
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v144 = v136 + *(a3 + 8) * *(*(v24 + 112) + 4 * v143);
                        }

                        else
                        {
                          v144 = *(*(v24 + 112) + 4 * v143) + *(a3 + 8) * v136;
                        }

                        v145 = *v142++;
                        *(v141 + 8 * v144) = v145 + *(v141 + 8 * v144);
                        ++v143;
                      }

                      while (v139 != v143);
                    }

                    ++v136;
                    v140 += v124;
                  }

                  while (v136 != v116);
                }

                ++v121;
              }

              while (v122 < *(v24 + 88));
            }
          }

          else
          {
            v220 = *(v24 + 88);
            if (v220 >= 1)
            {
              v221 = *(a3 + v115);
              do
              {
                v223 = *(v24 + 96);
                v222 = *(v24 + 104);
                v224 = *(v222 + 8 * v220);
                v225 = *(v222 + 8 * (v220 - 1));
                v226 = v224 - v225;
                v227 = *(v223 + 4 * v220);
                v228 = *(v223 + 4 * (v220 - 1));
                v229 = *(*(v260 + 40) + 8 * (v220 - 1));
                v257 = *(v24 + 64);
                if (v221 >= 1)
                {
                  v230 = 0;
                  v231 = (a4 + 8 * (v112 * v14));
                  do
                  {
                    if (v224 > v225)
                    {
                      v232 = (*(v24 + 112) + 4 * v225);
                      v233 = v231;
                      v234 = v224 - v225;
                      do
                      {
                        v235 = *v232++;
                        *v233++ = *(a4 + 8 * (v235 + v112 * v230));
                        --v234;
                      }

                      while (v234);
                    }

                    ++v230;
                    v231 += v224 - v225;
                  }

                  while (v230 != v221);
                }

                v256 = v224 - v225;
                v259 = v228;
                v236 = (v227 - v228);
                cblas_dtrmm_NEWLAPACK();
                if (v226 > v236)
                {
                  cblas_dgemm_NEWLAPACK();
                }

                if (v221 >= 1)
                {
                  v237 = 0;
                  v238 = (a4 + 8 * (v112 * v14));
                  do
                  {
                    if (v236 >= 1)
                    {
                      v239 = *(a3 + 16);
                      v240 = v238;
                      v241 = v236;
                      v242 = (v257 + 4 * v259);
                      do
                      {
                        if (*(a3 + 12))
                        {
                          v243 = v237 + *(a3 + 8) * *v242;
                        }

                        else
                        {
                          v243 = *v242 + *(a3 + 8) * v237;
                        }

                        v244 = *v240++;
                        *(v239 + 8 * v243) = v244;
                        ++v242;
                        --v241;
                      }

                      while (v241);
                    }

                    ++v237;
                    v238 += v256;
                  }

                  while (v237 != v221);
                }
              }

              while (v220-- >= 2);
            }
          }

          v105 = *(v24 + 64);
          v106 = 0;
          v107 = v252;
          v108 = 0;
          v109 = a3;
          v110 = v263;
          break;
        case 6:
          if ((v9 & 1) == 0)
          {
            *&v264[0] = __PAIR64__(v14, v23);
            *&v264[1] = a4;
            *(&v264[0] + 1) = v23;
            if (v7)
            {
              v217 = v7;
            }

            else
            {
              v217 = a3;
            }

            v218 = (a4 + 8 * v23 * v14);
            sub_23679019C(1, v23, *(v24 + 64), v217, v264, v218);
            if (v19 <= v20)
            {
              v219 = v20;
            }

            else
            {
              v219 = v19;
            }

            sub_23678EB18(v219 * *(a1 + 32), v24, v260, v264, a3, v218);
            goto LABEL_247;
          }

          v251 = v23;
          *&v264[0] = __PAIR64__(v14, v22);
          *&v264[1] = a4;
          *(&v264[0] + 1) = v22;
          if (!v7)
          {
            v7 = v264;
            v103 = v22;
            sub_2366FD390(a3, v264);
            v22 = v103;
            v18 = *(a1 + 32);
          }

          if (v19 <= v20)
          {
            v104 = v20;
          }

          else
          {
            v104 = v19;
          }

          sub_23678E160(v104 * v18, v24, v260, v7, a3, (a4 + 8 * (v22 * v14)), a4 + a5);
          v105 = *(v24 + 64);
          v106 = 0;
          v107 = v251;
          v108 = 0;
          v109 = a3;
          v110 = a4;
          break;
        case 1:
          v25 = *(v24 + 64);
LABEL_60:
          v57 = *MEMORY[0x277D85DE8];

          sub_23679019C((v9 & 1), v23, v25, v7, a3, a4);
          return;
        default:
          v146 = *(v24 + 40);
          if (!v146)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_23673A550();
            }

            _SparseTrap();
          }

          memset(&v264[14] + 10, 0, 22);
          memset(&v264[3] + 10, 0, 176);
          strcpy(v264, "Invalid operation for this type of object/factorization.\n");
          v146(v264, v23);
LABEL_247:
          v246 = *MEMORY[0x277D85DE8];
          return;
      }

LABEL_246:
      sub_23679019C(v106, v107, v105, v108, v109, v110);
      goto LABEL_247;
    }
  }

  if (v11 - 81 >= 3)
  {
    goto LABEL_251;
  }

  v26 = *(a1 + 5);
  if (*(a1 + 4) > 8u)
  {
    v56 = *(a1 + 11);
    if (v10 == 9)
    {
      v16 = *(v56 + 96);
      v17 = *(v26 + 72);
    }

    else
    {
      v16 = *(v56 + 104);
      v17 = *(v26 + 80);
    }

LABEL_109:
    v101 = *MEMORY[0x277D85DE8];

    sub_23678D570(v16, v17, v7, a3);
    return;
  }

  v27 = *(a1 + 32);
  v28 = *(v26 + 60);
  if (v10 == 1)
  {
    v29 = *(v26 + 136);
  }

  else
  {
    v29 = *(v26 + 144);
  }

  v100 = *MEMORY[0x277D85DE8];

  sub_236790344((v9 & 1), v28, v27, v29, v7, a3, a4);
}

int *sub_23679019C(int *result, int a2, _DWORD *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  v10 = 4;
  if (*(a5 + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a5 + v11);
  if ((*(a5 + 12) & 1) == 0)
  {
    v10 = 0;
  }

  v13 = *(a5 + v10);
  *(&v39 + 1) = 0;
  if (a4)
  {
    v39 = *a4;
    v40 = *(a4 + 2);
  }

  else
  {
    *&v39 = __PAIR64__(v12, v13);
    DWORD2(v39) = v13;
    v40 = a6;
    result = sub_2366FD390(a5, &v39);
  }

  if (v9)
  {
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = v40;
      v18 = DWORD2(v39);
      v17 = BYTE12(v39);
      do
      {
        if (a2 >= 1)
        {
          v19 = *(a5 + 16);
          v20 = a2;
          v21 = a3;
          v22 = v15;
          LODWORD(result) = v14;
          do
          {
            if (v17)
            {
              v23 = v22;
            }

            else
            {
              v23 = result;
            }

            if (*(a5 + 12))
            {
              v24 = v15 + *(a5 + 8) * *v21;
            }

            else
            {
              v24 = *v21 + *(a5 + 8) * v15;
            }

            *(v19 + 8 * v24) = *(v16 + 8 * v23);
            result = (result + 1);
            v22 += v18;
            ++v21;
            --v20;
          }

          while (v20);
        }

        ++v15;
        v14 += v18;
      }

      while (v15 != v12);
    }
  }

  else if (v12 >= 1)
  {
    v25 = 0;
    v26 = v40;
    v28 = DWORD2(v39);
    v27 = BYTE12(v39);
    do
    {
      if (a2 >= 1)
      {
        v29 = *(a5 + 16);
        v30 = *(a5 + 8);
        v31 = v30 * v25;
        v32 = a2;
        result = a3;
        v33 = v25;
        do
        {
          v34 = *result++;
          v35 = v25 + v28 * v34;
          v36 = v28 * v25 + v34;
          if (v27)
          {
            v36 = v35;
          }

          v37 = *(v26 + 8 * v36);
          if (*(a5 + 12))
          {
            v38 = v33;
          }

          else
          {
            v38 = v31;
          }

          *(v29 + 8 * v38) = v37;
          ++v31;
          v33 += v30;
          --v32;
        }

        while (v32);
      }

      ++v25;
    }

    while (v25 != v12);
  }

  return result;
}

int *sub_236790344(int *result, int a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v11 = result;
  v12 = 4;
  if (*(a6 + 12))
  {
    v13 = 0;
  }

  else
  {
    v13 = 4;
  }

  v14 = *(a6 + v13);
  if ((*(a6 + 12) & 1) == 0)
  {
    v12 = 0;
  }

  v15 = *(a6 + v12);
  *(&v44 + 1) = 0;
  if (a5)
  {
    v44 = *a5;
    v45 = *(a5 + 2);
  }

  else
  {
    *&v44 = __PAIR64__(v14, v15);
    DWORD2(v44) = v15;
    v45 = a7;
    result = sub_2366FD390(a6, &v44);
  }

  if (v11)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = v45;
      v20 = DWORD2(v44);
      v19 = BYTE12(v44);
      v21 = DWORD2(v44) * a3;
      do
      {
        if (a2 >= 1)
        {
          v22 = 0;
          v23 = v17;
          v24 = v16;
          do
          {
            if (a3 >= 1)
            {
              LODWORD(result) = 0;
              v25 = *(a6 + 16);
              v26 = v23;
              do
              {
                v27 = v24 + result;
                if (v19)
                {
                  v27 = v26;
                }

                if (*(a6 + 12))
                {
                  v28 = v17 + (result + *(a4 + 4 * v22) * a3) * *(a6 + 8);
                }

                else
                {
                  v28 = result + v17 * *(a6 + 8) + *(a4 + 4 * v22) * a3;
                }

                *(v25 + 8 * v28) = *(v18 + 8 * v27);
                result = (result + 1);
                v26 += v20;
              }

              while (a3 != result);
            }

            ++v22;
            v24 += a3;
            v23 += v21;
          }

          while (v22 != a2);
        }

        ++v17;
        v16 += v20;
      }

      while (v17 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v29 = 0;
    v30 = v45;
    v32 = DWORD2(v44);
    v31 = BYTE12(v44);
    v33 = DWORD2(v44) * a3;
    do
    {
      if (a2 >= 1)
      {
        v34 = 0;
        v35 = 0;
        do
        {
          if (a3 >= 1)
          {
            v36 = 0;
            result = *(a6 + 16);
            v37 = *(a4 + 4 * v35);
            v38 = v37 * a3;
            v39 = v29 + v33 * v37;
            v40 = a3;
            v41 = v34;
            do
            {
              v42 = v39;
              if ((v31 & 1) == 0)
              {
                v42 = v32 * v29 + v36 + v38;
              }

              if (*(a6 + 12))
              {
                v43 = v29 + *(a6 + 8) * v41;
              }

              else
              {
                v43 = v41 + v29 * *(a6 + 8);
              }

              *&result[2 * v43] = *(v30 + 8 * v42);
              ++v36;
              ++v41;
              v39 += v32;
              --v40;
            }

            while (v40);
          }

          ++v35;
          v34 += a3;
        }

        while (v35 != a2);
      }

      ++v29;
    }

    while (v29 != v14);
  }

  return result;
}

void _SparseMultiplySubfactor_Double(const SparseOpaqueSubfactor_Double *Subfactor, const DenseMatrix_Double *x, const DenseMatrix_Double *y, char *workspace)
{
  v4 = 4;
  if (*&y->attributes)
  {
    v4 = 0;
  }

  sub_23678EFD4(Subfactor, &x->rowCount, y, workspace, Subfactor->workspaceRequiredPerRHS + *&Subfactor[1].attributes * *(&y->rowCount + v4));
}

void sub_236790578(__int16 *a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 4);
  v11 = *(a1 + 33);
  if (v11 > 0x29)
  {
    goto LABEL_17;
  }

  if (((1 << v11) & 0x1D) == 0)
  {
    if (((1 << v11) & 0x30000000000) != 0)
    {
      v14 = *(a1 + 32);
      v16 = *(a1 + 5);
      v15 = *(a1 + 6);
      v17 = v16 * v14;
      v18 = v15 * v14;
      if (v15 * v14 >= v16 * v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (v18 <= v17)
      {
        v20 = v16 * v14;
      }

      else
      {
        v20 = v15 * v14;
      }

      v21 = *(a1 + 5);
      v22 = *(a1 + 11);
      if (*(a1 + 4) <= 6u)
      {
        if (v10 == 1)
        {
          v23 = *(v21 + 64);
LABEL_22:
          v28 = *MEMORY[0x277D85DE8];
          v29 = (v9 & 1) == 0;
          v30 = a2;
LABEL_56:

          sub_23679019C(v29, v19, v23, v30, a3, a4);
          return;
        }

        if (v11 == 41)
        {
          v44 = *(v21 + 40);
          if (!v44)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_23673A598();
            }

            _SparseTrap();
          }

          memset(&v72[14] + 3, 0, 29);
          memset(&v72[3] + 3, 0, 176);
          strcpy(v72, "Invalid operation for this type of factorization.\n");
          v44(v72, v19, a3, a4, a2);
LABEL_83:
          v66 = *MEMORY[0x277D85DE8];
          return;
        }

        if (v9)
        {
          v49 = 4;
          if (*(a3 + 12))
          {
            v49 = 0;
          }

          v50 = *(a3 + v49);
          *&v72[0] = __PAIR64__(v50, v20);
          *(&v72[0] + 1) = v20;
          *&v72[1] = a4;
          if (a2)
          {
            v51 = a2;
          }

          else
          {
            v51 = a3;
          }

          v52 = &a4[v50 * v20];
          v53 = v22;
          sub_23679019C(1, v19, *(v21 + 64), v51, v72, v52);
          if (v16 <= v15)
          {
            v54 = v15;
          }

          else
          {
            v54 = v16;
          }

          sub_23678EB18((v54 * v14), v21, v53, v72, a3, v52);
          goto LABEL_83;
        }

        v57 = *(a1 + 11);
        v71 = v19;
        if (a2)
        {
          if (v16 <= v15)
          {
            v58 = *(a1 + 6);
          }

          else
          {
            v58 = *(a1 + 5);
          }

          v59 = v58 * v14;
          v60 = a4 + a5;
          v61 = v21;
          v62 = v22;
          v63 = a2;
          v64 = a3;
          v65 = a4;
        }

        else
        {
          v67 = 4;
          if (*(a3 + 12))
          {
            v67 = 0;
          }

          v68 = *(a3 + v67);
          *&v72[0] = __PAIR64__(v68, v20);
          *(&v72[0] + 1) = v20;
          *&v72[1] = a4;
          sub_2366FD390(a3, v72);
          if (v16 <= v15)
          {
            v69 = v15;
          }

          else
          {
            v69 = v16;
          }

          v59 = v69 * v14;
          v65 = &a4[v68 * v20];
          v63 = v72;
          v60 = a4 + a5;
          v61 = v21;
          v62 = v57;
          v64 = a3;
        }

        sub_23678E160(v59, v61, v62, v63, v64, v65, v60);
        v23 = *(v21 + 64);
        v70 = *MEMORY[0x277D85DE8];
        LODWORD(v19) = v71;
LABEL_52:
        v29 = 0;
LABEL_55:
        v30 = 0;
        goto LABEL_56;
      }

      if (v10 == 7)
      {
        v33 = *(a1 + 11);
        v34 = v19;
        sub_23679019C(1, v19, *(v21 + 64), a2, a3, a4);
        v35 = v21;
        v36 = v33;
        v37 = a3;
        v38 = a4;
        if ((v9 & 1) == 0)
        {
          sub_23678E600(v21, v33, a3, a4);
LABEL_51:
          v23 = *(v21 + 64);
          v46 = *MEMORY[0x277D85DE8];
          LODWORD(v19) = v34;
          goto LABEL_52;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          v55 = *(a1 + 11);
          sub_23679019C(1, v19, *(v21 + 64), a2, a3, a4);
          v56 = *MEMORY[0x277D85DE8];

          sub_23678E600(v21, v55, a3, a4);
          return;
        }

        v45 = *(a1 + 11);
        v34 = v19;
        if (a2)
        {
          sub_2366FD390(a2, a3);
        }

        v35 = v21;
        v36 = v45;
        v37 = a3;
        v38 = a4;
      }

      sub_23678E828(v35, v36, v37, v38);
      goto LABEL_51;
    }

LABEL_17:
    if (*(a1 + 4) <= 8u)
    {
      v24 = *(a1 + 5);
      v25 = *(a1 + 32);
      v26 = *(v24 + 60);
      if (v10 == 1)
      {
        v27 = *(v24 + 136);
      }

      else
      {
        v27 = *(v24 + 144);
      }

      v42 = *MEMORY[0x277D85DE8];

      sub_236790344(((v9 & 1) == 0), v26, v25, v27, a2, a3, a4);
      return;
    }

    v31 = *(a1 + 11);
    if (v10 == 9)
    {
      v32 = *(v31 + 96);
    }

    else
    {
      v32 = *(v31 + 104);
    }

    goto LABEL_40;
  }

  v12 = *(a1 + 5);
  v13 = *(a1 + 11);
  if (*(a1 + 4) <= 2u)
  {
    if (v10 == 1)
    {
      LODWORD(v19) = *(v12 + 60);
      v23 = *(v12 + 80);
      goto LABEL_22;
    }

    v32 = *(v13 + 64);
LABEL_40:
    v43 = *MEMORY[0x277D85DE8];

    sub_236790C58(v32, a2, a3);
    return;
  }

  if (v10 == 3)
  {
    sub_23679019C(0, *(v12 + 60), *(v12 + 80), a2, a3, a4);
    if (v9)
    {
      sub_23678DE2C(v11, v12, v13, a3, a4);
    }

    else
    {
      sub_23678D660(v11, v12, v13, a3, a4);
    }

    goto LABEL_54;
  }

  if (v10 == 4)
  {
    sub_23679019C(0, *(v12 + 60), *(v12 + 80), a2, a3, a4);
    sub_23678DAD0(v11, v12, v13, 0, a3);
LABEL_54:
    LODWORD(v19) = *(v12 + 60);
    v23 = *(v12 + 80);
    v47 = *MEMORY[0x277D85DE8];
    v29 = 1;
    goto LABEL_55;
  }

  if (v9)
  {
    sub_23678DAD0(*(a1 + 33), v12, v13, a2, a3);
    sub_23678DE2C(v11, v12, v13, a3, a4);
    v39 = *(v13 + 64);
    v40 = *(v12 + 136);
    v41 = *MEMORY[0x277D85DE8];

    sub_23678D570(v39, v40, 0, a3);
  }

  else
  {
    sub_23678D570(*(v13 + 64), *(v12 + 136), a2, a3);
    v48 = *MEMORY[0x277D85DE8];

    sub_23678D660(v11, v12, v13, a3, a4);
  }
}

int *sub_236790C58(int *result, int *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (*(a3 + 12))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  if (*(a3 + 12))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (result)
  {
    v6 = *(a3 + v4);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a3 + v5);
      do
      {
        if (v8 >= 1)
        {
          v9 = *(v3 + 2);
          v10 = v3[2];
          v11 = *(a3 + 8);
          v12 = v11 * v7;
          v13 = v10 * v7;
          v14 = *(a3 + 16);
          v15 = v8;
          v16 = result;
          v17 = v7;
          v18 = v7;
          do
          {
            if (v3[3])
            {
              v19 = v17;
            }

            else
            {
              v19 = v13;
            }

            v20 = *v16++;
            v21 = *(v9 + 8 * v19) / v20;
            if (*(a3 + 12))
            {
              v22 = v18;
            }

            else
            {
              v22 = v12;
            }

            *(v14 + 8 * v22) = v21;
            ++v12;
            v18 += v11;
            ++v13;
            v17 += v10;
            --v15;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  else if (a2)
  {
    return sub_2366FD390(a2, a3);
  }

  return result;
}

void _SparseSolveSubfactor_Double(const SparseOpaqueSubfactor_Double *Subfactor, const DenseMatrix_Double *b, const DenseMatrix_Double *x, char *workspace)
{
  v4 = 4;
  if (*&x->attributes)
  {
    v4 = 0;
  }

  sub_236790578(Subfactor, &b->rowCount, x, workspace, Subfactor->workspaceRequiredPerRHS + *&Subfactor[1].attributes * *(&x->rowCount + v4));
}

void _SparseGetWorkspaceRequired_Double(SparseSubfactor_t Subfactor, SparseOpaqueFactorization_Double *Factor, size_t *workStatic, size_t *workPerRHS)
{
  rowCount = Factor->symbolicFactorization.rowCount;
  if (rowCount <= Factor->symbolicFactorization.columnCount)
  {
    rowCount = Factor->symbolicFactorization.columnCount;
  }

  v6 = rowCount * LOBYTE(Factor->symbolicFactorization.factorization);
  v7 = BYTE1(Factor->symbolicFactorization.factorization);
  if (v7 <= 0x29 && ((1 << v7) & 0x1D) == 0 && ((1 << v7) & 0x30000000000) != 0 && Subfactor == SparseSubfactorQ)
  {
    sub_23678B078(v6, Factor->symbolicFactorization.workspaceSize_Float, workStatic, workPerRHS);
    v8 = *workPerRHS + 16 * v6;
  }

  else
  {
    *workStatic = 0;
    v8 = 16 * v6;
  }

  *workPerRHS = v8;
}

void sub_236790DDC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(v2 + 64);
  v4 = a1[5];
  v5 = &v4[*(v2 + 48)];
  LODWORD(v2) = *(v3 + 12);
  v6 = atomic_load((*(v3 + 3) + 136));
  v7 = &v4[8 * (v6 * v2) + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v5 < v7 || (v8 = *(v3 + 1), v5 < ((v7 + 4 * *(v8 + 56) + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
    __break(1u);
  }

  else
  {
    v9 = a2;
    v11 = *(v8 + 344);
    v12 = *(v11 + 4 * a2);
    v13 = (a2 << 32) + 0x100000000;
    v14 = v13 >> 32;
    v15 = *(v11 + (v13 >> 30));
    if (v12 < v15)
    {
      do
      {
        sub_236790F98(v12++, *v3, *(v3 + 4), *(v3 + 1), *(v3 + 3), *(v3 + 12), *(v3 + 8), *(v3 + 10), *(v3 + 4), *(v3 + 5), v4, v7);
      }

      while (v15 != v12);
      v8 = *(v3 + 1);
    }

    v16 = *(v8 + 352);
    v17 = *(v16 + 8 * v9);
    if (v17 < *(v16 + 8 * v14))
    {
      do
      {
        v18 = (*(v3 + 11) + 40 * *(*(v8 + 360) + 4 * v17));
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v19 = a1[2];
          if (v19)
          {
            v20 = a1[1] + 32;
            v21 = a1[3];
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v19 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v19 + 32) = 0;
              _X2 = _X4 & 1 | v19;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              __ulock_wake();
            }
          }

          a1[2] = v18;
          a1[3] = 0;
        }

        ++v17;
        v8 = *(v3 + 1);
      }

      while (v17 < *(*(v8 + 352) + 8 * v14));
    }
  }
}

void sub_236790F98(int a1, int a2, int a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  v14 = a1;
  if (a2 == 83)
  {
    v15 = *(a5[9] + 4 * a1);
    v16 = *(a5[10] + 4 * a1);
    v17 = *(a5[11] + 4 * a1);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v18 = *(a5[14] + 8 * a1);
  v19 = v18 + 8;
  v20 = *(a4 + 176);
  v21 = a1 + 1;
  v22 = *(v20 + 4 * v21) - *(v20 + 4 * a1);
  v23 = v15 + v22 * a3;
  v24 = v23;
  if (a2 == 83)
  {
    v24 = *(a5[8] + 4 * a1);
  }

  v25 = *(a4 + 184);
  v26 = 8 * v21;
  v27 = *(v25 + 8 * v21);
  v28 = *(v25 + 8 * a1);
  v29 = v23 + v16 + (v27 - v28) * a3;
  v30 = v17 + (*(*(a4 + 200) + v26) - *(*(a4 + 200) + 8 * a1)) * a3;
  v164 = v19 + 8 * v29 * v23 + 8 * v30 * v23;
  if (a2 == 81)
  {
    v31 = 0;
  }

  else
  {
    v31 = v19 + 8 * v29 * v23 + 8 * v30 * v23;
  }

  v32 = v31 + 4 * v23;
  if (v16 <= 0)
  {
    v32 = 0;
  }

  v162 = v32;
  v33 = 8 * v29;
  if (v29 >= 1)
  {
    v34 = 0;
    v35 = -(v15 + a3 * v22);
    v36 = v18 + (v33 + 8 * v30) * v23 + 8;
    do
    {
      if (v34 >= v23)
      {
        if (v34 >= v29 - v16)
        {
          v37 = *(v162 - 4 * v29 + 4 * v16 + 4 * v34);
        }

        else
        {
          v37 = v35 % a3 + *(*(a4 + 192) + 4 * v28 + 4 * (v35 / a3)) * a3;
        }
      }

      else if (a2 == 81)
      {
        v37 = v34 + *(v20 + 4 * v14) * a3;
      }

      else
      {
        v37 = *(v36 + 4 * v34);
      }

      *(a12 + 4 * v37) = v34++;
      ++v35;
    }

    while (v34 < v29);
  }

  v146 = v23;
  v169 = v23;
  v143 = v31;
  v166 = v29;
  v38 = v29 - v24;
  v147 = v16;
  if (v29 <= v24)
  {
    v40 = a6;
  }

  else
  {
    *(a9 + 8 * v14) = (*(a4 + 24))(8 * v38 * a6 + v16);
    *(a10 + 4 * v14) = v38;
    bzero(*(a9 + 8 * v14), 8 * v38 * a6);
    v39 = v38;
    v40 = a6;
    if (v147 >= 1)
    {
      bzero((*(a9 + 8 * v14) + 8 * v39 * a6), v147);
    }
  }

  v41 = *(a9 + 8 * v14);
  bzero(a11, 8 * v40 * v24);
  v42 = v14;
  v43 = a4;
  v44 = (*(a4 + 240) + 8 * v14);
  v45 = *v44;
  if (*v44 < v44[1])
  {
    v170 = v166 - v147;
    v46 = 8 * v24;
    v47 = v33 - v46;
    do
    {
      v48 = *(*(v43 + 248) + 4 * v45);
      v49 = (a10 + 4 * v48);
      if (!atomic_load_explicit(v49, memory_order_acquire))
      {
        goto LABEL_128;
      }

      if (a2 == 83)
      {
        v50 = *(a5[9] + 4 * v48);
        v51 = *(a5[10] + 4 * v48);
        v52 = *(a5[11] + 4 * v48);
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
      }

      v53 = *(v43 + 176);
      v54 = v48 + 1;
      v55 = *(v53 + 4 * v48);
      v161 = *(v53 + 4 * (v48 + 1));
      v56 = v50 + (v161 - v55) * a3;
      v57 = v56;
      if (a2 == 83)
      {
        v57 = *(a5[8] + 4 * v48);
      }

      v58 = *(v43 + 184);
      v59 = *(v58 + 8 * v54);
      v60 = *(v58 + 8 * v48);
      v61 = v56 + v51 + (v59 - v60) * a3;
      if (a2 == 81)
      {
        v62 = 0;
      }

      else
      {
        v62 = *(a5[14] + 8 * v48) + 8 + 8 * v56 * v61 + 8 * v56 * (v52 + (*(*(v43 + 200) + 8 * v54) - *(*(v43 + 200) + 8 * v48)) * a3);
      }

      v63 = v62 + 4 * v56;
      if (v51 <= 0)
      {
        v63 = 0;
      }

      v167 = v63;
      v168 = v48;
      v64 = *(a9 + 8 * v48);
      if (v51 <= 0 || v64 == 0)
      {
        v66 = 0;
      }

      else
      {
        v66 = v64 + 8 * (v61 - v57) * a6;
      }

      v67 = *(v43 + 256);
      LODWORD(v68) = *(*(v43 + 264) + 4 * v45);
      v69 = *(*(v43 + 272) + 4 * v45);
      v70 = *(v67 + v45);
      v165 = v45;
      v158 = v56 + v51 + (v59 - v60) * a3;
      if ((v70 - 2) >= 2)
      {
        if (v70 == 1)
        {
          v72 = 0;
          v71 = *(*(a4 + 280) + 4 * v45);
          if (!v69)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v71 = 0;
          v72 = 0;
          if (!v69)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v71 = v59 - (v60 + v68);
        v72 = v56 - v57;
        if (v56 > v57 && v70 == 3)
        {
          v149 = v59 - (v60 + v68);
          v74 = 0;
          v75 = v55 * a3;
          v154 = v55;
          v156 = v50;
          v151 = v59;
          v152 = v60;
          v76 = v50 + v51 + a3 * (v161 + v59 - v55 - v60) - v57;
          v77 = v57;
          do
          {
            if ((v77 & 0x80000000) != 0)
            {
              v78 = 0x7FFFFFFF;
            }

            else if (v62)
            {
              v78 = *(v62 + 4 * v77);
            }

            else
            {
              v78 = v77 + v75;
            }

            v79 = *(a12 + 4 * v78);
            if (v79 >= v24)
            {
              if (a6 >= 1)
              {
                v83 = (v41 + 8 * (v79 - v24));
                v84 = a6;
                v85 = v74;
                do
                {
                  *v83 = *(v64 + 8 * v85) + *v83;
                  v85 += v76;
                  v83 = (v83 + v47);
                  --v84;
                }

                while (v84);
              }
            }

            else if (a6 >= 1)
            {
              v80 = &a11[8 * v79];
              v81 = a6;
              v82 = v74;
              do
              {
                *v80 = *(v64 + 8 * v82) + *v80;
                v82 += v76;
                v80 = (v80 + v46);
                --v81;
              }

              while (v81);
            }

            ++v77;
            ++v74;
          }

          while (v77 != v56);
          v45 = v165;
          v55 = v154;
          v50 = v156;
          LODWORD(v59) = v151;
          v60 = v152;
          v71 = v149;
          if (v69)
          {
            goto LABEL_88;
          }

LABEL_71:
          if (v71 >= 1)
          {
            v148 = v49;
            v150 = v71;
            v86 = v71 + v68;
            v68 = v68;
            v87 = *(a4 + 192) + 4 * v60;
            v155 = v55;
            v157 = v50;
            v153 = v60;
            v88 = v50 + v51 + a3 * (v161 + v59 - v55 - v60) - v57;
            do
            {
              if (a3 >= 1)
              {
                v89 = 0;
                v90 = *(v87 + 4 * v68) * a3;
                v91 = v64 + 8 * v68 * a3;
                do
                {
                  v92 = *(a12 + 4 * v90 + 4 * v89);
                  if (v92 >= v24)
                  {
                    if (a6 >= 1)
                    {
                      v96 = (v41 + 8 * (v92 - v24));
                      v97 = a6;
                      v98 = v56 - v57;
                      do
                      {
                        *v96 = *(v91 + 8 * v89 + 8 * v98) + *v96;
                        v98 += v88;
                        v96 = (v96 + v47);
                        --v97;
                      }

                      while (v97);
                    }
                  }

                  else if (a6 >= 1)
                  {
                    v93 = a6;
                    v94 = v56 - v57;
                    v95 = &a11[8 * v92];
                    do
                    {
                      *v95 = *(v91 + 8 * v89 + 8 * v94) + *v95;
                      v94 += v88;
                      v95 = (v95 + v46);
                      --v93;
                    }

                    while (v93);
                  }

                  ++v89;
                }

                while (v89 != a3);
              }

              ++v68;
            }

            while (v68 < v86);
            v42 = v14;
            v45 = v165;
            v49 = v148;
            v55 = v155;
            v50 = v157;
            LODWORD(v60) = v153;
            v71 = v150;
          }

LABEL_87:
          v72 += v71 * a3;
          goto LABEL_88;
        }

        v72 = 0;
        if (!v69)
        {
          goto LABEL_71;
        }
      }

LABEL_88:
      if (v66)
      {
        v160 = v72;
        if (v51 >= 1)
        {
          v99 = 0;
          v100 = 0;
          v101 = v50 + (v161 + v59 - (v55 + v60)) * a3;
          v102 = v50 + v51;
          v103 = v161 + v59 - v55;
          v104 = v101;
          v105 = v158 - v51;
          v106 = v101 - v57;
          v107 = v102 + a3 * (v103 - v60) - v57;
          v43 = a4;
          v108 = v169;
          while (1)
          {
            if (v104 >= v56)
            {
              if (v104 >= v105)
              {
                v109 = *(v167 + 4 * (v104 - v105));
              }

              else
              {
                v109 = (v104 - v56) % a3 + *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v168) + 4 * ((v104 - v56) / a3)) * a3;
              }
            }

            else if (v104 < 0)
            {
              v109 = 0x7FFFFFFF;
            }

            else if (v62)
            {
              v109 = *(v62 + 4 * v104);
            }

            else
            {
              v109 = v104 + *(*(a4 + 176) + 4 * v168) * a3;
            }

            v110 = *(a12 + 4 * v109);
            v111 = v110;
            if (v110 >= v108)
            {
              if (v110 < v170)
              {
                v113 = *(*(a4 + 192) + 4 * *(*(a4 + 184) + 8 * v42) + 4 * ((v110 - v169) / a3));
                v108 = v169;
                v42 = v14;
                v112 = (v110 - v169) % a3 + v113 * a3;
                goto LABEL_110;
              }

              if (v166 > v110)
              {
                v112 = *(v162 + 4 * (v110 - v170));
                goto LABEL_110;
              }
            }

            else if ((v110 & 0x80000000) == 0)
            {
              if (a2 == 81)
              {
                v112 = v110 + *(*(a4 + 176) + 4 * v42) * a3;
              }

              else
              {
                v112 = *(v164 + 4 * v110);
              }

              goto LABEL_110;
            }

            v112 = 0x7FFFFFFF;
LABEL_110:
            if (v112 == v109)
            {
              __swp(v66 + v99, (v66 + v99));
              if (((v66 + v99) & 1) == 0)
              {
                ++v100;
                if (v111 >= v24)
                {
                  if (a6 >= 1)
                  {
                    v117 = (v41 + 8 * (v111 - v24));
                    v118 = a6;
                    v119 = v106;
                    do
                    {
                      *v117 = *(v64 + 8 * v119) + *v117;
                      v119 += v107;
                      v117 = (v117 + v47);
                      --v118;
                    }

                    while (v118);
                  }
                }

                else if (a6 >= 1)
                {
                  v114 = &a11[8 * v111];
                  v115 = a6;
                  v116 = v106;
                  do
                  {
                    *v114 = *(v64 + 8 * v116) + *v114;
                    v116 += v107;
                    v114 = (v114 + v46);
                    --v115;
                  }

                  while (v115);
                }
              }
            }

            ++v104;
            ++v99;
            ++v106;
            if (v104 >= v158)
            {
              goto LABEL_124;
            }
          }
        }

        v100 = 0;
        v43 = a4;
LABEL_124:
        v72 = v100 + v160;
        v45 = v165;
      }

      else
      {
        v43 = a4;
      }

      add_explicit = atomic_fetch_add_explicit(v49, -v72, memory_order_release);
      if (*(a9 + 8 * v168) && add_explicit == v72)
      {
        (*(v43 + 32))();
        v45 = v165;
        v42 = v14;
        v43 = a4;
        *(a9 + 8 * v168) = 0;
      }

LABEL_128:
      ++v45;
    }

    while (v45 < *(*(v43 + 240) + 8 * v42 + 8));
  }

  if (v24)
  {
    v121 = a7;
    if (v24 >= 1)
    {
      v122 = 0;
      v123 = v166 - v147;
      v124 = a11;
      do
      {
        if (v122 >= v146)
        {
          if (v122 >= v123)
          {
            if (v122 >= v166)
            {
              v125 = 0x7FFFFFFF;
            }

            else
            {
              v125 = *(v162 + 4 * (v122 - v123));
            }
          }

          else
          {
            v125 = (v122 - v169) % a3 + *(*(v43 + 192) + 4 * *(*(v43 + 184) + 8 * v42) + 4 * ((v122 - v169) / a3)) * a3;
          }
        }

        else if (a2 == 81)
        {
          v125 = v122 + *(*(v43 + 176) + 4 * v42) * a3;
        }

        else
        {
          v125 = *(v164 + 4 * v122);
        }

        if (a6 >= 1)
        {
          v126 = (a7 + 8 * v125);
          v127 = a6;
          v128 = v124;
          do
          {
            *v128 = *v126 + *v128;
            v128 += v24;
            v126 += a8;
            --v127;
          }

          while (v127);
        }

        ++v122;
        ++v124;
      }

      while (v122 != v24);
      if (v24 != 1)
      {
        cblas_dtrsm_NEWLAPACK();
        v42 = v14;
        v43 = a4;
      }
    }

    if (a2 == 81)
    {
      if (a6 >= 1)
      {
        v129 = 0;
        v130 = a11;
        do
        {
          if (v24 >= 1)
          {
            v131 = (v121 + 8 * *(*(v43 + 176) + 4 * v42) * a3);
            v132 = v24;
            v133 = v130;
            do
            {
              v134 = *v133++;
              *v131++ = v134;
              --v132;
            }

            while (v132);
          }

          ++v129;
          v130 += v24;
          v121 += 8 * a8;
        }

        while (v129 != a6);
      }
    }

    else if (a6 >= 1)
    {
      v135 = 0;
      v136 = a11;
      do
      {
        if (v24 >= 1)
        {
          v137 = v24;
          v138 = v143;
          v139 = v136;
          do
          {
            v140 = *v139++;
            v141 = v140;
            v142 = *v138++;
            *(a7 + 8 * v135 * a8 + 8 * v142) = v141;
            --v137;
          }

          while (v137);
        }

        ++v135;
        v136 += v24;
      }

      while (v135 != a6);
    }

    if (v166 > v24)
    {

      cblas_dgemm_NEWLAPACK();
    }
  }
}

uint64_t sub_236791B58(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = *(result + 8);
  v4 = *(v3 + 64);
  v5 = *(*(v4 + 1) + 344);
  v6 = *(v5 + 4 * a2);
  v7 = (a2 << 32) + 0x100000000;
  v8 = *(v5 + (v7 >> 30));
  v9 = *(result + 40);
  v10 = v9 + *(v3 + 48);
  LODWORD(v5) = *(v4 + 12);
  v11 = atomic_load((*(v4 + 3) + 140));
  if (v10 < ((&v9[(v11 * v5)] + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = v7 >> 32;
    while (v8 > v6)
    {
      result = sub_236791CF4(--v8, *v4, *(v4 + 4), *(v4 + 1), *(v4 + 3), *(v4 + 12), *(v4 + 8), *(v4 + 10), *(v4 + 7), *(v4 + 9), v9);
    }

    v14 = *(v4 + 1);
    v15 = *(v14 + 368);
    v16 = *(v15 + 8 * v2);
    if (v16 < *(v15 + 8 * v13))
    {
      do
      {
        v17 = (*(v4 + 11) + 40 * *(*(v14 + 376) + 4 * v16));
        if (atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v18 = v12[2];
          if (v18)
          {
            v19 = v12[1] + 32;
            v20 = v12[3];
            do
            {
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v18 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v18 + 32) = 0;
              _X2 = _X4 & 1 | v18;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }
            }

            while (_X6 != _X4);
            if (_X4)
            {
              result = __ulock_wake();
            }
          }

          v12[2] = v17;
          v12[3] = 0;
        }

        ++v16;
        v14 = *(v4 + 1);
      }

      while (v16 < *(*(v14 + 368) + 8 * v13));
    }
  }

  return result;
}

uint64_t *sub_236791CF4(int a1, int a2, int a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = a1;
  if (a2 == 83)
  {
    v15 = *(a5[9] + 4 * a1);
    v16 = *(a5[10] + 4 * a1);
    v17 = *(a5[11] + 4 * a1);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  result = (*(a5[14] + 8 * a1) + 8);
  v19 = a4[22];
  v20 = v14 + 1;
  v21 = *(v19 + 4 * (v14 + 1));
  v22 = *(v19 + 4 * v14);
  v23 = (v15 + (v21 - v22) * a3);
  v24 = v15 + (v21 - v22) * a3;
  if (a2 == 83)
  {
    v24 = *(a5[8] + 4 * v14);
  }

  v25 = *(a4[23] + 8 * v20) - *(a4[23] + 8 * v14);
  v26 = a4[25];
  v27 = *(v26 + 8 * v20);
  v28 = *(v26 + 8 * v14);
  v29 = (v27 - v28) * a3;
  v30 = &result[(v23 + v16 + v25 * a3) * v23 + (v29 + v17) * v23];
  v31 = v30 + 4 * v23 + 4 * v16;
  if (a2 == 81)
  {
    v30 = 0;
  }

  v80 = v30;
  if (a2 == 81)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  if (v17 <= 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = &v32[v23];
  }

  if (v24)
  {
    v77 = v14;
    v34 = a11;
    v79 = v23 + v17 + v29;
    if (a6 >= 1)
    {
      v35 = 0;
      v36 = v22 * a3;
      v83 = v21 * a3;
      v37 = v21 * a3 - v36;
      v38 = a9;
      v39 = a11;
      v40 = a7 + 8 * v36;
      do
      {
        if (a2 == 81)
        {
          if (v36 >= v83)
          {
            v42 = 0;
          }

          else
          {
            v41 = 0;
            do
            {
              v39[v41] = *(v40 + 8 * v41);
              ++v41;
            }

            while (v37 != v41);
            v42 = v37;
          }
        }

        else
        {
          if (v24 < 1)
          {
            v42 = 0;
          }

          else
          {
            v44 = v24;
            v43 = v80;
            v45 = v39;
            do
            {
              v47 = *v43++;
              v46 = v47;
              if (v47 < 0)
              {
                v46 = -v46;
              }

              *v45++ = *(a7 + 8 * v35 * a8 + 8 * v46);
              --v44;
            }

            while (v44);
            v42 = v24;
          }

          if (v42 < v23)
          {
            v48 = v42;
            do
            {
              v49 = v32[v48];
              if (v49 < 0)
              {
                v49 = -v49;
              }

              v39[v48++] = *(a9 + 8 * v35 * a10 + 8 * v49);
            }

            while (v23 != v48);
            v42 = v23;
          }
        }

        v50 = v28;
        if (v27 > v28)
        {
          do
          {
            if (a3 >= 1)
            {
              v51 = v42;
              v52 = (v38 + 8 * *(a4[26] + 4 * v50) * a3);
              v42 += a3;
              v53 = a3;
              do
              {
                v54 = *v52++;
                v39[v51++] = v54;
                --v53;
              }

              while (v53);
            }

            ++v50;
          }

          while (v50 != v27);
        }

        if (v17 >= 1)
        {
          v55 = v42;
          v56 = v17;
          v57 = v33;
          do
          {
            v58 = *v57++;
            v39[v55++] = *(a9 + 8 * v35 * a10 + 8 * v58);
            --v56;
          }

          while (v56);
        }

        ++v35;
        v39 += v79;
        v40 += 8 * a8;
        v38 += 8 * a10;
      }

      while (v35 != a6);
    }

    if (v23 > v24)
    {
      cblas_dgemm_NEWLAPACK();
    }

    if (v79 > v23)
    {
      cblas_dgemm_NEWLAPACK();
    }

    result = cblas_dtrsm_NEWLAPACK();
    if (a2 == 81)
    {
      if (a6 >= 1)
      {
        v59 = 0;
        v60 = (a4[22] + 4 * v77);
        v61 = *v60;
        v62 = v60[1];
        v63 = *v60 * a3;
        v64 = v62 * a3;
        v65 = ((v62 - v61) * a3);
        v66 = (a9 + 8 * v63);
        do
        {
          v67 = v66;
          v68 = v65;
          result = v34;
          if (v63 < v64)
          {
            do
            {
              v69 = *result++;
              *v67++ = v69;
              --v68;
            }

            while (v68);
          }

          ++v59;
          v34 += v79;
          v66 += a10;
        }

        while (v59 != a6);
      }
    }

    else if (a6 >= 1)
    {
      v70 = 0;
      do
      {
        if (v24 >= 1)
        {
          v71 = v24;
          v72 = v32;
          v73 = v34;
          do
          {
            v74 = *v73++;
            v75 = v74;
            v76 = *v72++;
            *(a9 + 8 * v70 * a10 + 8 * v76) = v75;
            --v71;
          }

          while (v71);
        }

        ++v70;
        v34 += v79;
      }

      while (v70 != a6);
    }
  }

  return result;
}

uint64_t sub_2367921D4(int a1, uint64_t a2)
{
  if (a1 >= 2)
  {
    v2 = (a2 + 72);
    v3 = a2 + 192;
    v4 = (a1 - 1);
    do
    {
      *(v2 - 1) = v3;
      *v2 = 0;
      v2 += 24;
      v3 += 192;
      --v4;
    }

    while (v4);
  }

  v5 = a2 + 192 * (a1 - 1);
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  return a2;
}

uint64_t sub_236792218@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_236792228(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4 > 3)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    _X24 = 0;
    v93 = result;
    while (2)
    {
      v14 = *(v12 + 8);
      while (1)
      {
        _X5 = 0;
        __asm { CASPAL          X4, X5, X24, X25, [X8] }

        if (!_X4)
        {
          break;
        }

        _X0 = *(_X4 + 64);
        v22 = *(_X4 + 72);
        _X3 = 0;
        __asm { CASPAL          X2, X3, X0, X1, [X8] }

        if (_X2 == _X4)
        {
          atomic_fetch_add((v12 + 16), 1u);
          v94 = _X4;
          result = _X4;
          *(_X4 + 16) = sub_2367926C0;
          v25 = _X4;
          atomic_store(1u, _X4);
          *(_X4 + 176) = _X4;
          *(_X4 + 184) = 0;
          *(_X4 + 8) = _X4;
          *(_X4 + 40) = v12;
          *(_X4 + 48) = a3;
          *(_X4 + 56) = a2;
          v26 = a4;
          v98 = &a9;
          v92 = a4;
          if (a4 > 0)
          {
            v27 = (_X4 + 96);
            v28 = a4;
            do
            {
              v29 = v98;
              v98 += 2;
              v30 = *v29;
              v31 = *(v29 + 2);
              if (v31)
              {
                v32 = 4;
              }

              else
              {
                v32 = 8;
              }

              v33 = *(v30 + v32);
              v34 = *(v30 + 4) + 1;
              *(v30 + 4) = v34;
              if (v31)
              {
                *(v30 + 8) = v34;
              }

              *(v27 - 2) = v30;
              *(v27 - 1) = _X4;
              *v27 = v33;
              v27 += 8;
              --v28;
            }

            while (v28);
            v26 = a4;
            if (a4 == 3)
            {
              goto LABEL_25;
            }
          }

          v35 = 0;
          v36 = (2 - a4);
          v37 = vdupq_n_s64(v36);
          v38 = (_X4 + 32 * a4 + 112);
          do
          {
            v39 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(vdupq_n_s64(v35), xmmword_23681F920)));
            if (v39.i8[0])
            {
              *(v38 - 4) = 0;
            }

            if (v39.i8[4])
            {
              *v38 = 0;
            }

            v35 += 2;
            v38 += 8;
          }

          while (((v36 + 2) & 0x1FFFFFFFELL) != v35);
          if (a4 >= 1)
          {
LABEL_25:
            _X22 = 0;
            v41 = _X4 + 80;
            v42 = 0;
            do
            {
              _X20 = v41 + 32 * v42;
              explicit = atomic_load_explicit(*_X20, memory_order_acquire);
              if (explicit < *(_X20 + 16))
              {
                v45 = *_X20;
                *(_X20 + 24) = 0;
                atomic_fetch_add(v25, 1u);
                  ;
                }

                _X0 = 0;
                _X1 = 0;
                __asm { CASPAL          X0, X1, X0, X1, [X9] }

                if (result)
                {
                  *(*(v45 + 4) + 24) = _X20;
                }

                else
                {
                  result = *(v45 + 2);
                  do
                  {
                    _X3 = *(v45 + 3);
                    __asm { CASPAL          X2, X3, X20, X21, [X9] }

                    _ZF = _X2 == result;
                    result = _X2;
                  }

                  while (!_ZF);
                }

                atomic_store(0, v45 + 40);
                v50 = atomic_load(*_X20);
                if (v50 > explicit)
                {
                  v51 = *v12;
                  _X0 = 0;
                  _X1 = 0;
                  __asm { CASPAL          X0, X1, X0, X1, [X8] }

                  if (result)
                  {
                    v96 = v50;
                    v95 = *v12;
                    do
                    {
                      if (*(result + 16) > v50)
                      {
                        break;
                      }

                        ;
                      }

                      _X2 = 0;
                      _X3 = 0;
                      __asm { CASPAL          X2, X3, X2, X3, [X8] }

                      if (result == _X2)
                      {
                        _X24 = *(result + 24);
                        v58 = *(v45 + 2);
                        do
                        {
                          _X5 = *(v45 + 3);
                          __asm { CASPAL          X4, X5, X24, X25, [X8] }

                          _ZF = _X4 == v58;
                          v58 = _X4;
                        }

                        while (!_ZF);
                        atomic_store(0, v45 + 40);
                        v61 = *(result + 8);
                        v62 = *(v61 + 184);
                        if (atomic_fetch_add_explicit(v61, 0xFFFFFFFF, memory_order_release) == 1)
                        {
                          v63 = v51[2];
                          if (v63)
                          {
                            v64 = v51[1] + 32;
                            v65 = v51[3];
                            _X4 = 0;
                            _X5 = 0;
                            __asm { CASP            X4, X5, X4, X5, [X1] }

                            while (1)
                            {
                              *(v63 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
                              *(v63 + 32) = 0;
                              _X2 = _X4 & 1 | v63;
                              _X7 = 0;
                              __asm { CASPL           X6, X7, X2, X3, [X1] }

                              if (_X6 == _X4)
                              {
                                break;
                              }

                              _X5 = 0;
                              __asm { CASP            X4, X5, X22, X23, [X1] }
                            }

                            if (_X4)
                            {
                              v97 = v62;
                              __ulock_wake();
                              v62 = v97;
                              v51 = v95;
                              v50 = v96;
                              v26 = v92;
                              v12 = v93;
                              v25 = v94;
                            }
                          }

                          v51[2] = v61;
                          v51[3] = v62;
                        }
                      }

                      else
                      {
                        atomic_store(0, v45 + 40);
                      }

                      _X0 = 0;
                      _X1 = 0;
                      __asm { CASPAL          X0, X1, X0, X1, [X8] }
                    }

                    while (result);
                  }
                }

                *(v45 + 4) = _X20;
              }

              ++v42;
            }

            while (v42 != v26);
          }

          v75 = *v12;
          if (atomic_fetch_add_explicit(v25, 0xFFFFFFFF, memory_order_release) == 1)
          {
            v76 = v75[2];
            if (v76)
            {
              _X4 = 0;
              _X5 = 0;
              v79 = v75[1] + 32;
              v80 = v75[3];
              __asm { CASP            X4, X5, X4, X5, [X1] }

              *(v76 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
              *(v76 + 32) = 0;
              v82 = _X4 & 1;
              _X2 = v82 | v76;
              _X7 = 0;
              __asm { CASPL           X6, X7, X2, X3, [X1] }

              if (_X6 != _X4)
              {
                _X4 = 0;
                do
                {
                  _X7 = 0;
                  __asm { CASP            X6, X7, X4, X5, [X1] }

                  *(v76 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
                  *(v76 + 32) = 0;
                  v82 = _X6 & 1;
                  _X2 = v82 | v76;
                  _X11 = 0;
                  __asm { CASPL           X10, X11, X2, X3, [X1] }
                }

                while (_X10 != _X6);
              }

              if (v82)
              {
                result = __ulock_wake();
                v25 = v94;
              }
            }

            v75[2] = v25;
            v75[3] = 0;
          }

          return result;
        }
      }

      v99 = 0;
      result = sub_2366FCDE4(*v12, &v99);
      v12 = v93;
      if (!v99)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2367926C0(void *a1, void *a2)
{
  v4 = a2[6];
  v53[0] = a2[5];
  v53[1] = a1;
  v4(v53, a2[7]);
  _X22 = 0;
  v51 = a2;
  v52 = a2 + 10;
  for (i = 0; i != 3; ++i)
  {
    v7 = v52[4 * i];
    if (!v7)
    {
      break;
    }

    add = atomic_fetch_add(v7, 1u);
    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    if (_X0)
    {
      v16 = add + 1;
      do
      {
        if (*(_X0 + 16) > v16)
        {
          break;
        }

          ;
        }

        _X2 = 0;
        _X3 = 0;
        __asm { CASPAL          X2, X3, X2, X3, [X8] }

        if (_X0 == _X2)
        {
          _X26 = *(_X0 + 24);
          v21 = *(v7 + 16);
          do
          {
            _X5 = *(v7 + 24);
            __asm { CASPAL          X4, X5, X26, X27, [X8] }

            _ZF = _X4 == v21;
            v21 = _X4;
          }

          while (!_ZF);
          atomic_store(0, (v7 + 40));
          v24 = *(_X0 + 8);
          v25 = *(v24 + 184);
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFF, memory_order_release) == 1)
          {
            v26 = a1[2];
            if (v26)
            {
              v27 = a1[1] + 32;
              v28 = a1[3];
              _X4 = 0;
              _X5 = 0;
              __asm { CASP            X4, X5, X4, X5, [X1] }

              while (1)
              {
                *(v26 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
                *(v26 + 32) = 0;
                _X2 = _X4 & 1 | v26;
                _X7 = 0;
                __asm { CASPL           X6, X7, X2, X3, [X1] }

                if (_X6 == _X4)
                {
                  break;
                }

                _X5 = 0;
                __asm { CASP            X4, X5, X22, X23, [X1] }
              }

              if (_X4)
              {
                __ulock_wake();
              }
            }

            a1[2] = v24;
            a1[3] = v25;
          }
        }

        else
        {
          atomic_store(0, (v7 + 40));
        }

        _X0 = 0;
        _X1 = 0;
        __asm { CASPAL          X0, X1, X0, X1, [X8] }
      }

      while (_X0);
    }
  }

  _X4 = 0;
  _X5 = 0;
  v40 = v51[5];
  v41 = *(v40 + 8);
  result = v51[22];
  v43 = v51[23] + 1;
  __asm { CASPAL          X4, X5, X4, X5, [X9] }

  *(result + 64) = _X4;
  *(result + 72) = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X0, X1, [X9] }

  if (_X2 != _X4)
  {
    _X4 = 0;
    do
    {
      *(result + 64) = _X2;
      *(result + 72) = 0;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X9] }

      *(result + 64) = _X6;
      *(result + 72) = 0;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X9] }
    }

    while (_X2 != _X6);
  }

  atomic_fetch_add((v40 + 16), 0xFFFFFFFF);
  return result;
}

uint64_t sub_236792900(unsigned int *a1)
{
  if (!atomic_load(a1 + 4))
  {
    return 0;
  }

  while (1)
  {
    v15 = 0;
    v3 = sub_2366FCDE4(*a1, &v15);
    if (!v15 && (v3 & 1) == 0)
    {
      for (_X0 = 0; ; _X0 = 0)
      {
        _X1 = 0;
        __asm { CASPAL          X0, X1, X0, X1, [X9] }

        if ((_X0 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          break;
        }

        v11 = atomic_load((*(*a1 + 8) + 12));
        if (v11)
        {
          return 1;
        }

        if (!atomic_load(a1 + 4))
        {
          break;
        }
      }

      goto LABEL_10;
    }

    if (v15)
    {
      return 1;
    }

LABEL_10:
    if (!atomic_load(a1 + 4))
    {
      return 0;
    }
  }
}

uint64_t _SparseAMDWorkspaceSizeWithOverflowCheck(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v6 = a1;
  if (a1 <= a3)
  {
    v6 = a3;
  }

  v7 = 3 * a1;
  v8 = __CFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    v10 = (a2 >> 63) + 1;
  }

  else
  {
    v10 = a2 >> 63;
  }

  v11 = v10 << 63 >> 63;
  v12 = v11 != v10;
  v13 = 1;
  if ((a1 & 0x80000000) == 0 && !v12 && (v11 & 0x8000000000000000) == 0)
  {
    v15 = a2 / 5 + v9;
    v14 = (a2 / 5 + __PAIR128__(v11, v9)) >> 64;
    v5 = v15;
    v13 = v14 << 63 >> 63 != v14 || v14 << 63 >> 63 == -1;
  }

  v17 = a1 + 1;
  v18 = 1;
  if (a1 >= -1)
  {
    v19 = a1 + 1;
  }

  else
  {
    v19 = -v17;
  }

  if (a1 >= -1 && !(v19 >> 61))
  {
    v20 = v5 + 6 * v17;
    if (__CFADD__(v5, 6 * v17))
    {
      v18 = 1;
    }

    else
    {
      v29 = 0;
      v22 = sub_23681EB64(v6 + 1, (v6 + 1) >> 63, 3uLL, 0, &v29);
      v24 = v23 << 63 >> 63;
      v25 = v20 + v22;
      v26 = __CFADD__(v20, v22);
      v18 = 1;
      if (!(v24 ^ v23 | v29) && (v24 & 0x8000000000000000) == 0 && !v26)
      {
        v27 = 8 * v19 + 4 * v25;
        v28 = __CFADD__(8 * v19, 4 * v25);
        if (!(v25 >> 62) && !v28)
        {
          v18 = v27 >= 0xFFFFFFFFFFFFFFB0;
          *a4 = v27 + 80;
        }
      }
    }
  }

  return v18 | v13;
}

uint64_t _SparseAMDWorkspaceSize(int a1, uint64_t a2, int a3)
{
  v4 = 0;
  if (_SparseAMDWorkspaceSizeWithOverflowCheck(a1, a2, a3, &v4))
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

unint64_t _SparseAMD(uint64_t a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  v7 = *(a1 + 4);
  v8 = *(*(a1 + 8) + 8 * v7);
  v9 = *(a1 + 4);
  if (a2)
  {
    if (v7 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a1 + 4);
      v11 = a2;
      do
      {
        v12 = *v11++;
        v9 += v12;
        --v10;
      }

      while (v10);
    }
  }

  v243 = *(a1 + 8);
  if (a3)
  {
    v13 = *a3;
    if (v7 < 2)
    {
      v16 = *a3;
    }

    else
    {
      v14 = a3 + 1;
      v15 = v7 - 1;
      v16 = *a3;
      do
      {
        v18 = *v14++;
        v17 = v18;
        if (v18 < v13)
        {
          v13 = v17;
        }

        if (v17 > v16)
        {
          v16 = v17;
        }

        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v16 = -1;
    v13 = -1;
  }

  v256 = 0;
  v19 = v9;
  v20 = v9;
  result = _SparseAMDWorkspaceSizeWithOverflowCheck(v7, v8, v9, &v256);
  if ((result & 1) == 0)
  {
    v233 = v20;
    if (v20 <= v7)
    {
      v22 = v7;
    }

    else
    {
      v22 = v20;
    }

    v257 = 0;
    v236 = v19;
    result = _SparseAMDWorkspaceSizeWithOverflowCheck(v7, v8, v19, &v257);
    v23 = v257;
    if (result)
    {
      v23 = -1;
    }

    v24 = a5 + v23;
    v25 = v7 + 1;
    v26 = (&a5[v7 + 1] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v24 < v26)
    {
      goto LABEL_302;
    }

    v27 = v7;
    v28 = v7;
    v232 = v8 + 2 * v7 + v8 / 5;
    v29 = (v26 + 4 * (v232 + v7) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v24 < v29)
    {
      goto LABEL_302;
    }

    v30 = v8;
    v230 = v16;
    v31 = v25;
    v32 = (v29 + 4 * v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v24 < v32)
    {
      goto LABEL_302;
    }

    v227 = v13;
    v33 = 4 * v25;
    v34 = (v32 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v24 < v34 || (v35 = (v34 + v33 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v35) || (v36 = (v35 + v33 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < v36) || (v37 = ((v36 + v33 + 7) & 0xFFFFFFFFFFFFFFF8), v24 < v37) || (v38 = 4 * v22 + 4, result = (v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8, v24 < result) || (v39 = ((result + v38 + 7) & 0xFFFFFFFFFFFFFFF8), v24 < v39) || (v40 = ((v39 + v38 + 7) & 0xFFFFFFFFFFFFFFF8), v24 < v40) || v24 < ((&v40[v33 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_302:
      __break(1u);
      return result;
    }

    v253 = v27;
    v255 = result;
    v228 = v28;
    v254 = v40;
    v239 = v31;
    if (v233 >= 1)
    {
      memset_pattern16(result, &unk_23681FBC0, 4 * v236);
      LODWORD(v31) = v239;
      v27 = v253;
      v40 = v254;
      v28 = v228;
    }

    v226 = 4 * v28;
    if (v27 < 1)
    {
      v41 = a4;
      v42 = v243;
      if ((v27 & 0x80000000) != 0)
      {
        v229 = 0;
        v53 = 1;
        result = v255;
        v44 = v228;
        v45 = v233;
        v47 = a1;
        v46 = a2;
LABEL_48:
        v54 = v42[v44];
        if (v54 >= 1)
        {
          v55 = *(v47 + 16);
          v56 = v26;
          do
          {
            v57 = *v55++;
            *v56++ = v57;
            --v54;
          }

          while (v54);
        }

        *(v29 + 4 * v44) = 0;
        if (v46)
        {
          if (v229)
          {
            v58 = 0;
            v59 = *v42;
            do
            {
              *(v32 + 4 * v58) = v46[v58];
              *(v35 + 4 * v58) = 1;
              *(v34 + 4 * v58) = 0;
              *(v36 + 4 * v58) = 0;
              v60 = v58 + 1;
              v61 = v42[v58 + 1];
              v62 = v61 - v59;
              if (v61 > v59)
              {
                v63 = 0;
                v64 = (*(v47 + 16) + 4 * v59);
                do
                {
                  v65 = *v64++;
                  v63 += v46[v65];
                  *(v36 + 4 * v58) = v63;
                  --v62;
                }

                while (v62);
              }

              v59 = v61;
              ++v58;
            }

            while (v60 != v27);
          }

          *(v32 + 4 * v44) = 1;
          *(v35 + 4 * v44) = 1;
          *(v34 + 4 * v44) = 0;
          *(v36 + 4 * v44) = 0;
        }

        else if ((v53 & 1) == 0)
        {
          v66 = v31;
          v67 = v32;
          v68 = v35;
          v69 = v34;
          v70 = v29;
          v71 = v36;
          do
          {
            *v67++ = 1;
            *v68++ = 1;
            *v69++ = 0;
            v72 = *v70++;
            *v71++ = v72;
            --v66;
          }

          while (v66);
        }

        if (v27 >= 1)
        {
          v73 = v35;
          v74 = v27;
          do
          {
            if (*v73)
            {
              *v73 = 1;
            }

            ++v73;
            --v74;
          }

          while (v74);
        }

        *(v34 + 4 * v44) = -2;
        a5[v44] = -1;
        *(v35 + 4 * v44) = 0;
        v75 = sqrt(v45) * 10.0;
        if (v75 < 16.0)
        {
          v75 = 16.0;
        }

        if (v45 - 2 >= v75)
        {
          v76 = v75;
        }

        else
        {
          v76 = v45 - 2;
        }

        if ((v45 & 0x80000000) == 0)
        {
          __lenc = 4 * (v45 + 1);
          v246 = v76;
          memset_pattern16(result, &unk_23681FBC0, __lenc);
          memset_pattern16(v39, &unk_23681FBC0, __lenc);
          memset_pattern16(v37, &unk_23681FBC0, __lenc);
          v76 = v246;
          v41 = a4;
          v45 = v233;
          v44 = v228;
          result = v255;
          v27 = v253;
        }

        if (!v229)
        {
          v78 = 0;
          v234 = v27;
LABEL_87:
          if (v78 >= v45)
          {
            v85 = 0;
            goto LABEL_252;
          }

          v85 = 0;
          v238 = 0;
          v86 = result + 4;
          v240 = v236 - 1;
          v87 = 2;
          v88 = v227;
          v231 = result + 4;
LABEL_89:
          if (!a3)
          {
            v242 = v88;
            if (v45 >= 1 && *result == -2147483647)
            {
              v89 = 0;
              do
              {
                if (v240 == v89)
                {
                  goto LABEL_113;
                }

                v96 = *(v86 + 4 * v89++);
              }

              while (v96 == -2147483647);
            }

            else
            {
              LODWORD(v89) = 0;
            }

            if (v89 != v45)
            {
              i = *(result + 4 * v89);
              v95 = i;
              goto LABEL_115;
            }

            goto LABEL_113;
          }

          while (1)
          {
            LODWORD(v89) = 0;
            v90 = v88;
            while (v89 >= v45 || *(result + 4 * v89) != -2147483647)
            {
LABEL_96:
              if (v89 == v45)
              {
                goto LABEL_102;
              }

              for (i = *(result + 4 * v89); i != -2147483647; i = v37[i])
              {
                v95 = i;
                if (a3[i] == v88)
                {
                  v242 = v88;
LABEL_115:
                  v97 = v39[v95];
                  v98 = v37[v95];
                  if (v97 == -2147483647)
                  {
                    v99 = result;
                  }

                  else
                  {
                    LODWORD(v89) = v97;
                    v99 = v37;
                  }

                  v99[v89] = v98;
                  if (v98 != -2147483647)
                  {
                    v39[v98] = v97;
                  }

LABEL_120:
                  v41[v85] = i;
                  v100 = *(v32 + 4 * i);
                  v237 = *(v34 + 4 * i);
                  v101 = v237 < 1 || v30 < v232;
                  if (v101)
                  {
                    v102 = v30;
                  }

                  else
                  {
                    if (v253 >= 1)
                    {
                      v103 = -2;
                      v104 = a5;
                      v105 = v253;
                      do
                      {
                        v106 = *v104;
                        if ((*v104 & 0x8000000000000000) == 0)
                        {
                          *v104 = *(v26 + 4 * v106);
                          *(v26 + 4 * v106) = v103;
                        }

                        --v103;
                        ++v104;
                        --v105;
                      }

                      while (v105);
                    }

                    if (v30 < 1)
                    {
                      v102 = 0;
                    }

                    else
                    {
                      v107 = 0;
                      v102 = 0;
                      do
                      {
                        v108 = v107 + 1;
                        v109 = -2 - *(v26 + 4 * v107);
                        if ((v109 & 0x80000000) != 0 || (*(v26 + 4 * v102) = a5[v109], a5[v109] = v102, ++v102, *(v29 + 4 * v109) < 2))
                        {
                          ++v107;
                        }

                        else
                        {
                          v110 = 0;
                          do
                          {
                            v107 = v108 + 1;
                            *(v26 + 4 * v102) = *(v26 + 4 * v108);
                            ++v110;
                            ++v102;
                            ++v108;
                          }

                          while (v110 < *(v29 + 4 * v109) - 1);
                        }
                      }

                      while (v107 < v30);
                    }
                  }

                  __lena = v78;
                  v247 = v85;
                  *(v32 + 4 * i) = -*(v32 + 4 * i);
                  v111 = a5[i];
                  v112 = *(v34 + 4 * i);
                  if (v112)
                  {
                    v113 = v102;
                  }

                  else
                  {
                    v113 = a5[i];
                  }

                  v114 = 0;
                  if (v112 < 0)
                  {
                    v235 = v113;
                    v116 = v113;
                  }

                  else
                  {
                    v115 = 1;
                    v116 = v113;
                    do
                    {
                      if (v115 <= v112)
                      {
                        v119 = *(v26 + 4 * v111++);
                        v118 = a5[v119];
                        v117 = *(v29 + 4 * v119);
                      }

                      else
                      {
                        v117 = *(v29 + 4 * i) - v112;
                        v118 = v111;
                        LODWORD(v119) = i;
                      }

                      if (v117 >= 1)
                      {
                        v120 = (v26 + 4 * v118);
                        do
                        {
                          v122 = *v120++;
                          v121 = v122;
                          v123 = *(v32 + 4 * v122);
                          if (v123 >= 1)
                          {
                            *(v32 + 4 * v121) = -v123;
                            *(v26 + 4 * v116) = v121;
                            v124 = v39[v121];
                            if (v124 == -2147483647)
                            {
                              v124 = *(v36 + 4 * v121);
                              v125 = v255;
                            }

                            else
                            {
                              v125 = v37;
                            }

                            v114 += v123;
                            ++v116;
                            v126 = v37[v121];
                            v125[v124] = v126;
                            if (v126 != -2147483647)
                            {
                              v39[v126] = v39[v121];
                            }
                          }

                          --v117;
                        }

                        while (v117);
                      }

                      if (v119 != i)
                      {
                        a5[v119] = -1;
                        *(v35 + 4 * v119) = 0;
                      }

                      v112 = *(v34 + 4 * i);
                      v101 = v115++ <= v112;
                    }

                    while (v101);
                    if (v112)
                    {
                      v127 = v116;
                    }

                    else
                    {
                      v127 = v102;
                    }

                    v235 = v127;
                  }

                  *(v36 + 4 * i) = v114;
                  a5[i] = v113;
                  *(v29 + 4 * i) = v116 - v113;
                  *(v34 + 4 * i) = -2;
                  v128 = *(v29 + 4 * i);
                  v129 = v113;
                  if (v128 < 1)
                  {
                    v137 = v113 + v128;
                    goto LABEL_180;
                  }

                  while (2)
                  {
                    v130 = *(v26 + 4 * v129);
                    v131 = *(v34 + 4 * v130);
                    if (v131 < 1)
                    {
                      goto LABEL_177;
                    }

                    v132 = a5[v130];
                    v133 = v132;
                    while (2)
                    {
                      v134 = *(v26 + 4 * v133);
                      v135 = *(v35 + 4 * v134);
                      if (v135 >= v87)
                      {
                        v136 = *(v32 + 4 * v130) + v135;
LABEL_174:
                        *(v35 + 4 * v134) = v136;
                        v131 = *(v34 + 4 * v130);
                      }

                      else if (v135)
                      {
                        v136 = *(v36 + 4 * v134) + v87 + *(v32 + 4 * v130);
                        goto LABEL_174;
                      }

                      if (++v133 < v132 + v131)
                      {
                        continue;
                      }

                      break;
                    }

                    v128 = *(v29 + 4 * i);
LABEL_177:
                    ++v129;
                    v137 = v113 + v128;
                    if (v129 < v137)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_180:
                  v248 = v247 + 1;
                  __lenb = v100 + __lena;
                  v244 = -*(v32 + 4 * i);
                  v138 = v113;
                  v139 = v113;
                  if (v113 < v137)
                  {
                    do
                    {
                      v140 = *(v26 + 4 * v139);
                      v141 = a5[v140];
                      v142 = *(v34 + 4 * v140);
                      if (v142 < 1)
                      {
                        v144 = 0;
                        v143 = 0;
                        v150 = v141 + v142;
                        v146 = a5[v140];
                      }

                      else
                      {
                        v143 = 0;
                        v144 = 0;
                        v145 = a5[v140];
                        v146 = v145;
                        do
                        {
                          v147 = *(v26 + 4 * v145);
                          v148 = *(v35 + 4 * v147);
                          if (v148)
                          {
                            v149 = v148 - v87;
                            if (v149 < 1)
                            {
                              *(v35 + 4 * v147) = 0;
                            }

                            else
                            {
                              v144 += v149;
                              *(v26 + 4 * v146++) = v147;
                              v143 += v147;
                            }
                          }

                          ++v145;
                          v150 = v141 + *(v34 + 4 * v140);
                        }

                        while (v145 < v150);
                      }

                      *(v34 + 4 * v140) = v146 - v141 + 1;
                      v151 = *(v29 + 4 * v140);
                      for (j = v141 + v151; v150 < j; j = v141 + v151)
                      {
                        v153 = *(v26 + 4 * v150);
                        v154 = *(v32 + 4 * v153);
                        if (v154 >= 1)
                        {
                          *(v26 + 4 * v146) = v153;
                          v144 += v154;
                          ++v146;
                          v143 += v153;
                          LODWORD(v151) = *(v29 + 4 * v140);
                        }

                        ++v150;
                      }

                      if (v144 || a3 && a3[v140] != v242)
                      {
                        v155 = *(v36 + 4 * v140);
                        if (v155 >= v144)
                        {
                          v155 = v144;
                        }

                        *(v36 + 4 * v140) = v155;
                        v156 = (v26 + 4 * v141);
                        v157 = &v156[*(v34 + 4 * v140)];
                        *(v26 + 4 * v146) = *(v157 - 1);
                        *(v157 - 1) = *v156;
                        *v156 = i;
                        *(v29 + 4 * v140) = v146 - v141 + 1;
                        if (v143 >= 0)
                        {
                          v158 = v143;
                        }

                        else
                        {
                          v158 = -v143;
                        }

                        v159 = v158 % v253;
                        v37[v140] = v254[v159];
                        v254[v159] = v140;
                        v39[v140] = v159;
                      }

                      else
                      {
                        a4[v248] = v140;
                        a5[v140] = -1;
                        v160 = *(v32 + 4 * v140);
                        v114 += v160;
                        v244 -= v160;
                        *(v32 + 4 * v140) = 0;
                        __lenb -= v160;
                        *(v34 + 4 * v140) = -1;
                        v138 = a5[i];
                        ++v248;
                      }

                      ++v139;
                    }

                    while (v139 < v138 + *(v29 + 4 * i));
                  }

                  *(v36 + 4 * i) = v114;
                  v161 = v238;
                  if (v238 <= v114)
                  {
                    v161 = v114;
                  }

                  v238 = v161;
                  v87 += v161;
                  v162 = v113;
                  v163 = v113;
                  if (v116 > v113)
                  {
                    do
                    {
                      v164 = *(v26 + 4 * v162);
                      if ((*(v32 + 4 * v164) & 0x80000000) != 0)
                      {
                        v165 = v39[v164];
                        v166 = v254[v165];
                        v254[v165] = -2147483647;
                        while (v166 != -2147483647)
                        {
                          v167 = v37[v166];
                          if (v167 == -2147483647)
                          {
                            break;
                          }

                          if (*(v29 + 4 * v166) >= 2)
                          {
                            v168 = a5[v166];
                            v169 = v168 + 1;
                            do
                            {
                              *(v35 + 4 * *(v26 + 4 * v169++)) = v87;
                            }

                            while (v169 < v168 + *(v29 + 4 * v166));
                            v167 = v37[v166];
                            if (v167 == -2147483647)
                            {
                              ++v87;
                              break;
                            }
                          }

                          v170 = v166;
                          do
                          {
                            v171 = *(v29 + 4 * v167);
                            if (v171 != *(v29 + 4 * v166))
                            {
                              goto LABEL_228;
                            }

                            v172 = *(v34 + 4 * v167);
                            v173 = *(v34 + 4 * v166);
                            if (a3 && v172 == v173)
                            {
                              v172 = a3[v166];
                              v173 = a3[v167];
                            }

                            if (v172 == v173)
                            {
                              v174 = a5[v167];
                              v175 = v174 + v171;
                              v176 = v174 + 1;
                              while (v176 < v175)
                              {
                                v177 = *(v35 + 4 * *(v26 + 4 * v176++));
                                if (v177 != v87)
                                {
                                  goto LABEL_228;
                                }
                              }

                              a5[v167] = -2 - v166;
                              *(v32 + 4 * v166) += *(v32 + 4 * v167);
                              *(v32 + 4 * v167) = 0;
                              *(v34 + 4 * v167) = -1;
                              v178 = v37[v167];
                              v37[v170] = v178;
                              v167 = v170;
                            }

                            else
                            {
LABEL_228:
                              v178 = v37[v167];
                            }

                            v170 = v167;
                            v167 = v178;
                          }

                          while (v178 != -2147483647);
                          v166 = v37[v166];
                          ++v87;
                        }
                      }

                      ++v162;
                    }

                    while (v162 != v116);
                    v179 = v116 - v113;
                    if (v116 <= v113)
                    {
                      v163 = v113;
                    }

                    else
                    {
                      v180 = (v26 + 4 * v113);
                      v163 = v113;
                      do
                      {
                        v182 = *v180++;
                        v181 = v182;
                        v183 = *(v32 + 4 * v182);
                        if (v183 < 0)
                        {
                          *(v32 + 4 * v181) = -v183;
                          v184 = *(v36 + 4 * v181) + v114;
                          if (v184 >= v233 - __lenb)
                          {
                            v184 = v233 - __lenb;
                          }

                          v185 = v184 + v183;
                          *(v36 + 4 * v181) = v185;
                          v186 = *(v255 + 4 * v185);
                          if (v186 != -2147483647)
                          {
                            v39[v186] = v181;
                          }

                          v39[v181] = -2147483647;
                          v37[v181] = *(v255 + 4 * v185);
                          *(v255 + 4 * v185) = v181;
                          *(v26 + 4 * v163++) = v181;
                        }

                        --v179;
                      }

                      while (v179);
                    }
                  }

                  *(v32 + 4 * i) = v244;
                  *(v29 + 4 * i) = v163 - v113;
                  if (v163 == v113)
                  {
                    a5[i] = -1;
                    *(v35 + 4 * i) = 0;
                  }

                  if (v237)
                  {
                    v30 = v163;
                  }

                  else
                  {
                    v30 = v235;
                  }

                  v45 = v233;
                  v78 = __lenb;
                  v41 = a4;
                  result = v255;
                  v85 = v248;
                  v86 = v231;
                  v88 = v242;
                  if (v233 <= __lenb)
                  {
LABEL_252:
                    v187 = v253;
                    if (v229)
                    {
                      v188 = v253;
                      v189 = a5;
                      do
                      {
                        *v189 = -2 - *v189;
                        ++v189;
                        --v188;
                      }

                      while (v188);
                    }

                    v190 = v227;
                    if (a3)
                    {
                      if (v85 < 1)
                      {
                        v85 = 0;
                      }

                      else
                      {
                        v191 = 0;
                        v192 = 0;
                        v193 = v85;
                        do
                        {
                          v194 = v41[v191];
                          for (k = a3[v194]; v190 < k; k = a3[v194])
                          {
                            v196 = v228 - v234;
                            v197 = &v41[v234];
                            if (v234 < v253)
                            {
                              do
                              {
                                v199 = *v197++;
                                v198 = v199;
                                if (a3[v199] == v190)
                                {
                                  *(v36 + 4 * v192++) = v198;
                                }

                                --v196;
                              }

                              while (v196);
                              LODWORD(v194) = v41[v191];
                            }

                            ++v190;
                          }

                          v85 = v192 + 1;
                          *(v36 + 4 * v192) = v194;
                          ++v191;
                          ++v192;
                        }

                        while (v191 != v193);
                      }

                      if (v190 <= v230)
                      {
                        do
                        {
                          v208 = v228 - v234;
                          v209 = &v41[v234];
                          if (v234 < v253)
                          {
                            do
                            {
                              v211 = *v209++;
                              v210 = v211;
                              if (a3[v211] == v190)
                              {
                                *(v36 + 4 * v85++) = v210;
                              }

                              --v208;
                            }

                            while (v208);
                          }
                        }

                        while (v190++ != v230);
                      }
                    }

                    else
                    {
                      if (v85 >= 1)
                      {
                        v200 = v85;
                        v201 = v41;
                        v202 = v36;
                        do
                        {
                          v203 = *v201++;
                          *v202++ = v203;
                          --v200;
                        }

                        while (v200);
                      }

                      if (v234 < v253)
                      {
                        v204 = (v36 + 4 * v85);
                        v205 = &v41[v234];
                        v85 = v85 + v253 - v234;
                        v206 = v228 - v234;
                        do
                        {
                          v207 = *v205++;
                          *v204++ = v207;
                          --v206;
                        }

                        while (v206);
                      }
                    }

                    v213 = v85;
                    if (v85 >= 1)
                    {
                      v214 = v85;
                      v215 = v36;
                      do
                      {
                        v216 = *v215++;
                        a5[v216] = -1;
                        --v214;
                      }

                      while (v214);
                    }

                    if (v253 >= 1)
                    {
                      v217 = v85;
                      memset_pattern16(result, &unk_23681FBC0, v226);
                      v85 = v217;
                      result = v255;
                      v187 = v253;
                      v41 = a4;
                    }

                    if (v229)
                    {
                      v218 = 0;
                      do
                      {
                        if (*(v32 + 4 * v218) <= 0)
                        {
                          v219 = a5[v218];
                          if (v219 != -1)
                          {
                            do
                            {
                              v220 = v219;
                              v219 = a5[v219];
                            }

                            while (v219 != -1);
                            v37[v218] = *(result + 4 * v220);
                            *(result + 4 * v220) = v218;
                          }
                        }

                        ++v218;
                      }

                      while (v218 != v187);
                    }

                    if (v85 >= 1)
                    {
                      v221 = 0;
                      v222 = 0;
                      do
                      {
                        v223 = *(v36 + 4 * v221);
                        v41[v222] = v223;
                        v224 = *(result + 4 * v223);
                        ++v222;
                        if (v224 != -2147483647)
                        {
                          v225 = &v41[v222];
                          do
                          {
                            *v225++ = v224;
                            v224 = v37[v224];
                            ++v222;
                          }

                          while (v224 != -2147483647);
                        }

                        ++v221;
                      }

                      while (v221 != v213);
                    }

                    return result;
                  }

                  goto LABEL_89;
                }
              }

              LODWORD(v89) = v89 + 1;
            }

            v91 = (v86 + 4 * v89);
            v92 = v240 - v89;
            while (v92)
            {
              v93 = *v91++;
              LODWORD(v89) = v89 + 1;
              --v92;
              if (v93 != -2147483647)
              {
                goto LABEL_96;
              }
            }

LABEL_102:
            ++v88;
            if (v90 >= v230)
            {
              v242 = v88;
LABEL_113:
              i = -1;
              goto LABEL_120;
            }
          }
        }

        v77 = 0;
        v78 = 0;
        v234 = v27;
        while (1)
        {
          v79 = *(v36 + 4 * v77);
          if (v79)
          {
            if (v79 <= v76)
            {
              v84 = *(result + 4 * v79);
              if (v84 != -2147483647)
              {
                v39[v84] = v77;
              }

              v39[v77] = -2147483647;
              v37[v77] = *(result + 4 * v79);
              *(result + 4 * v79) = v77;
              goto LABEL_84;
            }

            v80 = *(v32 + 4 * v77);
            *(v32 + 4 * v77) = 0;
            *(v34 + 4 * v77) = -1;
            a5[v77] = -1;
            v78 += v80;
            *(v32 + 4 * v44) += v80;
            v81 = v234;
          }

          else
          {
            *(v34 + 4 * v77) = -2;
            v82 = *(v32 + 4 * v77);
            a5[v77] = -1;
            *(v35 + 4 * v77) = 0;
            v78 += v82;
            v81 = v234;
          }

          v83 = v81 - 1;
          v41[v83] = v77;
          v234 = v83;
LABEL_84:
          if (v27 == ++v77)
          {
            goto LABEL_87;
          }
        }
      }
    }

    else
    {
      memset_pattern16(v40, &unk_23681FBC0, 4 * v28);
      LODWORD(v31) = v239;
      v41 = a4;
      v42 = v243;
      v27 = v253;
    }

    v43 = 0;
    do
    {
      a5[v43] = v42[v43];
      ++v43;
    }

    while (v31 != v43);
    result = v255;
    v44 = v228;
    v45 = v233;
    v47 = a1;
    v46 = a2;
    if (v27 < 1)
    {
      v229 = 0;
      v53 = 0;
    }

    else
    {
      v48 = a5 + 1;
      v49 = *a5;
      v50 = v27;
      v51 = v29;
      do
      {
        v52 = *v48++;
        *v51++ = v52 - v49;
        LODWORD(v49) = v52;
        --v50;
      }

      while (v50);
      v53 = 0;
      v229 = 1;
    }

    goto LABEL_48;
  }

  return result;
}