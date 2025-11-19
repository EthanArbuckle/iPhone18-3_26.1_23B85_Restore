uint64_t deleteDeadness(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v121[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    v7 = 0;
    v83 = &a2[3 * a3];
    while (*v5 == v5)
    {
LABEL_3:
      v5 += 3;
      if (v5 == v83)
      {
        return v7 & 1;
      }
    }

    v8 = v5[1];
    v84 = v5;
    v86 = v8 != v5 && v8[1] == v5;
    if (v8)
    {
      v9 = (v8 - 1);
    }

    else
    {
      v9 = 0;
    }

    v98 = v9;
    llvm::post_order<mlir::Block *>(&v98, &v106);
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v98, &v102, &v106);
    __dst = v105;
    v104 = 0x800000000;
    v10 = v109;
    if (!v109)
    {
LABEL_17:
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v92, &v94, &v111);
      v95 = v97;
      v96 = 0x800000000;
      v14 = v114;
      if (!v114)
      {
LABEL_23:
        v17 = v104;
        while (1)
        {
          if (v17 == v14)
          {
            if (!v14)
            {
LABEL_106:
              if (v95 != v97)
              {
                free(v95);
              }

              v5 = v84;
              if (v93 != v92)
              {
                free(v93);
              }

              if (__dst != v105)
              {
                free(__dst);
              }

              if (v99 != v98)
              {
                free(v99);
              }

              if (v113 != &v115)
              {
                free(v113);
              }

              if (v112 != v111)
              {
                free(v112);
              }

              if (__src != &v110)
              {
                free(__src);
              }

              if (v107 != v106)
              {
                free(v107);
              }

              for (i = *(v84[1] + 8); i != v84; i = i[1])
              {
                if (i)
                {
                  v81 = (i - 1);
                }

                else
                {
                  v81 = 0;
                }

                v106 = a4;
              }

              goto LABEL_3;
            }

            v18 = v95;
            v19 = __dst;
            while (1)
            {
              v20 = *v19 == *v18 && v19[2] == v18[2];
              if (!v20 || v19[4] != v18[4])
              {
                break;
              }

              v19 += 5;
              v18 += 5;
              if (v19 == (__dst + 40 * v14))
              {
                goto LABEL_106;
              }
            }
          }

          v21 = *(__dst + 5 * v17 - 5);
          if (!v86)
          {
            Terminator = mlir::Block::getTerminator(v21, v13);
            v85 = v7;
            v88 = Terminator;
            if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
            {
              if (Terminator)
              {
                InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
                v90 = Terminator;
                v91 = InterfaceFor;
                v24 = *(Terminator + 40);
                if (v24)
                {
                  v25 = 0;
                  v87 = Terminator + 64;
                  while (1)
                  {
                    mlir::BranchOpInterface::getSuccessorOperands(&v90, (v24 + ~v25));
                    v26 = (HIDWORD(v118) + v116);
                    if (HIDWORD(v118) + v116)
                    {
                      break;
                    }

LABEL_55:
                    if (v119 != v121)
                    {
                      free(v119);
                    }

                    if (++v25 == v24)
                    {
                      goto LABEL_57;
                    }
                  }

                  v27 = 0;
                  v28 = *(((v87 + 16 * ((*(v88 + 44) >> 23) & 1) + ((*(v88 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * (v24 + ~v25) + 24);
                  while (1)
                  {
                    v29 = v26 + ~v27;
                    v30 = *(a4 + 24);
                    if (v30)
                    {
                      v31 = *(*(v28 + 48) + 8 * v29);
                      v32 = *(a4 + 8);
                      v33 = 0x9DDFEA08EB382D69 * ((8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31));
                      v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ (v33 >> 47) ^ v33);
                      v35 = v30 - 1;
                      v36 = (-348639895 * ((v34 >> 47) ^ v34)) & v35;
                      v37 = *(v32 + 8 * v36);
                      if (v37 == v31)
                      {
                        goto LABEL_48;
                      }

                      v38 = 1;
                      while (v37 != -4096)
                      {
                        v39 = v36 + v38++;
                        v36 = v39 & v35;
                        v37 = *(v32 + 8 * v36);
                        if (v37 == v31)
                        {
                          goto LABEL_48;
                        }
                      }
                    }

                    mlir::MutableOperandRange::erase(&v117, v29 - v116, 1u);
LABEL_48:
                    if (++v27 == v26)
                    {
                      goto LABEL_55;
                    }
                  }
                }
              }

              else
              {
                v90 = 0;
                v91 = 0;
              }
            }

            else
            {
              v90 = 0;
              v91 = 0;
            }

LABEL_57:
            v6 = a1;
            v7 = v85;
          }

          v42 = *(v21 + 4);
          v41 = (v21 + 32);
          v40 = v42;
          if (v42 != v41)
          {
            do
            {
              while (1)
              {
                v45 = *v40;
                v46 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v40, v13);
                v47 = v46;
                v48 = *(a4 + 48);
                if (v48)
                {
                  break;
                }

LABEL_74:
                v57 = v46[9];
                if (v57)
                {
                  v58 = (v46 - 4);
                }

                else
                {
                  v58 = 0;
                }

                if (v57)
                {
                  for (j = 0; j != v57; ++j)
                  {
                    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v58, j);
                    while (1)
                    {
                      v61 = *NextResultAtOffset;
                      if (!*NextResultAtOffset)
                      {
                        break;
                      }

                      v62 = v61[1];
                      if (v62)
                      {
                        v63 = *v61;
                        *v62 = *v61;
                        if (v63)
                        {
                          *(v63 + 8) = v62;
                        }
                      }

                      *v61 = 0;
                      v61[1] = 0;
                      v61[3] = 0;
                    }
                  }
                }

                v6 = a1;
                (*(*a1 + 16))(a1, v47);
                v7 = 1;
                v40 = v45;
                if (v45 == v41)
                {
                  goto LABEL_59;
                }
              }

              v49 = *(a4 + 32);
              v50 = v48 - 1;
              v51 = ((v46 >> 4) ^ (v46 >> 9)) & v50;
              v52 = *(v49 + 8 * v51);
              if (v52 != v46)
              {
                v55 = 1;
                while (v52 != -4096)
                {
                  v56 = v51 + v55++;
                  v51 = v56 & v50;
                  v52 = *(v49 + 8 * v51);
                  if (v52 == v46)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_74;
              }

LABEL_65:
              v53 = v46[11];
              if ((v53 & 0x7FFFFF) != 0)
              {
                v54 = &v46[8 * v46[10] + 16 + 4 * ((v53 >> 23) & 1)] + ((v53 >> 21) & 0x7F8);
              }

              else
              {
                v54 = 0;
              }

              v7 |= deleteDeadness(v6, v54);
              v40 = v45;
            }

            while (v45 != v41);
          }

LABEL_59:
          v17 = v104 - 1;
          LODWORD(v104) = v104 - 1;
          if (v104)
          {
            v43 = __dst + 40 * v17;
            v44 = *(v43 - 3);
            if (v44 != *(v43 - 1))
            {
              while (1)
              {
                v64 = *(v43 - 4);
                *(v43 - 3) = v44 + 1;
                v65 = *(v64 + 32 * v44 + 24);
                if (v99 != v98)
                {
                  goto LABEL_88;
                }

                v66 = v101;
                if (v101)
                {
                  v67 = 8 * v101;
                  v68 = v98;
                  while (*v68 != v65)
                  {
                    v68 = (v68 + 8);
                    v67 -= 8;
                    if (!v67)
                    {
                      goto LABEL_94;
                    }
                  }

                  goto LABEL_99;
                }

LABEL_94:
                if (v101 < v100)
                {
                  ++v101;
                  *(v98 + v66) = v65;
LABEL_96:
                  v69 = mlir::SuccessorRange::SuccessorRange(&v116, v65);
                  v70 = v116;
                  mlir::SuccessorRange::SuccessorRange(v69, v65);
                  v72 = v116;
                  v71 = v117;
                  if (v104 >= HIDWORD(v104))
                  {
                    v116 = v65;
                    v117 = v70;
                    v118 = 0;
                    v119 = v72;
                    v120 = v71;
                    if (__dst <= &v116 && __dst + 40 * v104 > &v116)
                    {
                      v79 = &v116 - __dst;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v105, v104 + 1, 40);
                      v75 = __dst;
                      v74 = (__dst + v79);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v105, v104 + 1, 40);
                      v74 = &v116;
                      v75 = __dst;
                    }

                    v76 = &v75[40 * v104];
                    v77 = *v74;
                    v78 = *(v74 + 1);
                    *(v76 + 4) = v74[4];
                    *v76 = v77;
                    *(v76 + 1) = v78;
                  }

                  else
                  {
                    v73 = (__dst + 40 * v104);
                    *v73 = v65;
                    v73[1] = v70;
                    v73[2] = 0;
                    v73[3] = v72;
                    v73[4] = v71;
                  }

                  v17 = v104 + 1;
                  LODWORD(v104) = v104 + 1;
LABEL_99:
                  v43 = __dst + 40 * v17;
                  v44 = *(v43 - 3);
                  if (v44 == *(v43 - 1))
                  {
                    break;
                  }
                }

                else
                {
LABEL_88:
                  llvm::SmallPtrSetImplBase::insert_imp_big(&v98, v65);
                  if (v13)
                  {
                    goto LABEL_96;
                  }

                  v17 = v104;
                  v43 = __dst + 40 * v104;
                  v44 = *(v43 - 3);
                  if (v44 == *(v43 - 1))
                  {
                    break;
                  }
                }
              }
            }
          }

          v14 = v96;
        }
      }

      v15 = v97;
      v16 = v114;
      if (v114 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v97, v114, 40);
        v16 = v114;
        if (!v114)
        {
LABEL_22:
          LODWORD(v96) = v14;
          goto LABEL_23;
        }

        v15 = v95;
      }

      memcpy(v15, v113, 40 * v16);
      goto LABEL_22;
    }

    v11 = v105;
    v12 = v109;
    if (v109 >= 9uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v105, v109, 40);
      v12 = v109;
      if (!v109)
      {
LABEL_16:
        LODWORD(v104) = v10;
        goto LABEL_17;
      }

      v11 = __dst;
    }

    memcpy(v11, __src, 40 * v12);
    goto LABEL_16;
  }

  LOBYTE(v7) = 0;
  return v7 & 1;
}

void mlir::simplifyRegions(uint64_t a1, void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  mlir::eraseUnreachableBlocks(a1, a2, a3);
  v8[1] = 0;
  v8[2] = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    do
    {
      LOBYTE(v8[0]) = 0;
      v6 = 24 * a3;
      v7 = a2;
      do
      {
        propagateLiveness(v7, v8);
        v7 += 3;
        v6 -= 24;
      }

      while (v6);
    }

    while ((v8[0] & 1) != 0);
  }

  else
  {
    LOBYTE(v8[0]) = 0;
  }

  deleteDeadness(a1, a2, a3, v8);
  llvm::deallocate_buffer(v10, (8 * v12));
}

void mergeIdenticalBlocks(uint64_t a1, char *a2, uint64_t a3)
{
  v358 = *MEMORY[0x1E69E9840];
  v341 = 0;
  v340 = 0u;
  v342 = &v344;
  v343 = 0x100000000;
  if (a3)
  {
    v4 = 24 * a3;
    do
    {
      v356[0] = a2;
      llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(&v340, v356);
      a2 += 24;
      v4 -= 24;
    }

    while (v4);
    v6 = v343;
    if (v343)
    {
      v335 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      while (1)
      {
        v7 = *(v342 + v6 - 1);
        if (v341)
        {
          v8 = ((v7 >> 4) ^ (v7 >> 9)) & (v341 - 1);
          v9 = *(v340 + 8 * v8);
          if (v7 == v9)
          {
LABEL_9:
            *(v340 + 8 * v8) = -8192;
            *(&v340 + 1) = vadd_s32(*(&v340 + 8), 0x1FFFFFFFFLL);
          }

          else
          {
            v326 = 1;
            while (v9 != -4096)
            {
              v327 = v8 + v326++;
              v8 = v327 & (v341 - 1);
              v9 = *(v340 + 8 * v8);
              if (v7 == v9)
              {
                goto LABEL_9;
              }
            }
          }
        }

        LODWORD(v343) = v6 - 1;
        v336 = v7;
        if (*v7 != v7)
        {
          v10 = v7[1];
          if (v10 == v7 || v10[1] != v7)
          {
            v339 = 0;
            v337 = 0;
            v338 = 0;
            v11 = v10[1];
            if (v11 == v7)
            {
              llvm::deallocate_buffer(0, 0);
            }

            while (1)
            {
              if (v11)
              {
                v15 = (v11 - 1);
              }

              else
              {
                v15 = 0;
              }

              mlir::SuccessorRange::SuccessorRange(v356, v15);
              NextResultAtOffset = 0;
              v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(&v337, v356, &NextResultAtOffset);
              v18 = NextResultAtOffset;
              if (v16)
              {
                v12 = *(NextResultAtOffset + 6);
                v14 = NextResultAtOffset + 24;
                v13 = NextResultAtOffset + 16;
                if (v12 >= *(NextResultAtOffset + 7))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(NextResultAtOffset + 16, NextResultAtOffset + 32, v12 + 1, 8);
                  v12 = v18[6];
                }

                goto LABEL_16;
              }

              *&v350 = NextResultAtOffset;
              v17 = v339;
              if (4 * v338 + 4 >= 3 * v339)
              {
                break;
              }

              if (v339 + ~v338 - HIDWORD(v338) <= v339 >> 3)
              {
                goto LABEL_28;
              }

              LODWORD(v338) = v338 + 1;
              if (*NextResultAtOffset != -4096)
              {
                goto LABEL_26;
              }

LABEL_15:
              v12 = 0;
              *v18 = *v356;
              *(v18 + 2) = v18 + 8;
              v13 = v18 + 4;
              *(v18 + 3) = 0x100000000;
              v14 = v18 + 6;
LABEL_16:
              *(*v13 + 8 * v12) = v15;
              ++*v14;
              v11 = v11[1];
              if (v11 == v7)
              {
                v19 = v337;
                v20 = v339;
                if (!v338)
                {
                  goto LABEL_325;
                }

                v21 = v337;
                if (v339)
                {
                  v22 = 40 * v339;
                  v21 = v337;
                  while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v21 = (v21 + 40);
                    v22 -= 40;
                    if (!v22)
                    {
                      goto LABEL_325;
                    }
                  }
                }

                v23 = (v337 + 40 * v339);
                if (v21 == v23)
                {
LABEL_325:
                  if (!v339)
                  {
LABEL_324:
                    llvm::deallocate_buffer(v19, 0);
                  }

LABEL_326:
                  v218 = v19 + 32;
                  v219 = 40 * v20;
                  while (1)
                  {
                    if ((*(v218 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
                    {
                      v220 = *(v218 - 2);
                      if (v218 != v220)
                      {
                        free(v220);
                      }
                    }

                    v218 += 40;
                    v219 -= 40;
                    if (!v219)
                    {
                      llvm::deallocate_buffer(v337, (40 * v339));
                    }
                  }
                }

                while (1)
                {
                  v24 = *(v21 + 6);
                  if (v24 != 1)
                  {
                    v25 = *(v21 + 2);
                    v345 = v347;
                    v346 = 0x100000000;
                    if (v24)
                    {
                      break;
                    }
                  }

                  do
                  {
                    v21 = (v21 + 40);
                    if (v21 == v23)
                    {
                      goto LABEL_323;
                    }
                  }

                  while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000);
                  if (v21 == v23)
                  {
LABEL_323:
                    v20 = v339;
                    v19 = v337;
                    if (!v339)
                    {
                      goto LABEL_324;
                    }

                    goto LABEL_326;
                  }
                }

                v350 = *v25;
                v31 = v350;
                v351 = 0;
                v352 = 0;
                v353 = 0;
                v32 = v350 + 32;
                v33 = *(v350 + 40);
                if (v33 == v350 + 32)
                {
                  goto LABEL_89;
                }

                v34 = (*(v350 + 56) - *(v350 + 48)) >> 3;
                while (2)
                {
                  v40 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v33, v17);
                  v41 = *(v40 + 36);
                  if (v41)
                  {
                    if (!v353)
                    {
                      goto LABEL_69;
                    }

                    v35 = (v353 - 1) & ((v40 >> 4) ^ (v40 >> 9));
                    v36 = v351 + 16 * v35;
                    v37 = *v36;
                    if (v40 == *v36)
                    {
LABEL_47:
                      LODWORD(v34) = v41 + v34;
                      goto LABEL_48;
                    }

                    v42 = 0;
                    v43 = 1;
                    while (v37 != -4096)
                    {
                      if (v42)
                      {
                        v44 = 0;
                      }

                      else
                      {
                        v44 = v37 == -8192;
                      }

                      if (v44)
                      {
                        v42 = v36;
                      }

                      v45 = v35 + v43++;
                      v35 = v45 & (v353 - 1);
                      v36 = v351 + 16 * v35;
                      v37 = *v36;
                      if (v40 == *v36)
                      {
                        goto LABEL_47;
                      }
                    }

                    if (v42)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = v36;
                    }

                    if (4 * v352 + 4 < 3 * v353)
                    {
                      if (v353 + ~v352 - HIDWORD(v352) > v353 >> 3)
                      {
                        LODWORD(v352) = v352 + 1;
                        if (*v46 == -4096)
                        {
                          goto LABEL_55;
                        }

                        goto LABEL_54;
                      }

                      v47 = v40;
                      llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(&v351, v353);
                      v48 = v353;
                      if (v353)
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
LABEL_69:
                      v47 = v40;
                      llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(&v351, 2 * v353);
                      v48 = v353;
                      if (v353)
                      {
LABEL_70:
                        v40 = v47;
                        v49 = v48 - 1;
                        v50 = (v48 - 1) & ((v47 >> 4) ^ (v47 >> 9));
                        v46 = v351 + 16 * v50;
                        v51 = *v46;
                        if (v47 != *v46)
                        {
                          v52 = 0;
                          v53 = 1;
                          while (v51 != -4096)
                          {
                            if (v52)
                            {
                              v54 = 0;
                            }

                            else
                            {
                              v54 = v51 == -8192;
                            }

                            if (v54)
                            {
                              v52 = v46;
                            }

                            v55 = v50 + v53++;
                            v50 = v55 & v49;
                            v46 = v351 + 16 * (v55 & v49);
                            v51 = *v46;
                            if (v47 == *v46)
                            {
                              goto LABEL_82;
                            }
                          }

                          if (v52)
                          {
                            v46 = v52;
                          }
                        }

LABEL_82:
                        LODWORD(v352) = v352 + 1;
                        if (*v46 == -4096)
                        {
LABEL_55:
                          *v46 = v40;
                          *(v46 + 2) = v34;
                          goto LABEL_47;
                        }

LABEL_54:
                        --HIDWORD(v352);
                        goto LABEL_55;
                      }
                    }

                    v46 = 0;
                    v40 = v47;
                    goto LABEL_82;
                  }

LABEL_48:
                  v38 = mlir::OperationEquivalence::computeHash(v40, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
                  v39 = __ROR8__(v38 + 16, 16);
                  *(&v350 + 1) = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (*(&v350 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v39)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(&v350 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v39)))) ^ ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (*(&v350 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v39)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(&v350 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v39)))) >> 47))) ^ v38;
                  v33 = *(v33 + 8);
                  if (v33 != v32)
                  {
                    continue;
                  }

                  break;
                }

                v33 = *(v31 + 5);
LABEL_89:
                while (v33 != v32)
                {
                  v56 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v33, v17);
                  v57 = *(v56 + 44);
                  v58 = v57 & 0x7FFFFF;
                  if ((v57 & 0x7FFFFF) != 0)
                  {
                    v59 = (v56 + 16 * ((v57 >> 23) & 1) + ((v57 >> 21) & 0x7F8) + 32 * *(v56 + 40) + 64);
                    v60 = 24 * v58;
                    while (v59 == *v59)
                    {
                      v59 += 3;
                      v60 -= 24;
                      if (!v60)
                      {
                        goto LABEL_88;
                      }
                    }

                    goto LABEL_43;
                  }

LABEL_88:
                  v33 = *(v33 + 8);
                }

                v62 = *(v31 + 6);
                for (i = *(v31 + 7); v62 != i; v62 = (v62 + 8))
                {
                  if (mlir::Value::isUsedOutsideOfBlock(v62, v31))
                  {
                    goto LABEL_43;
                  }
                }

                if (!v346)
                {
                  v26 = 0;
                  if (HIDWORD(v346))
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_305;
                }

                v63 = v345;
                v64 = v345 + 112 * v346;
                v332 = v64;
LABEL_102:
                if (*(v63 + 1) != *(&v350 + 1))
                {
                  goto LABEL_101;
                }

                v65 = *v63;
                v66 = v350;
                ArgumentTypes = mlir::Block::getArgumentTypes(*v63);
                v69 = v68;
                v70 = mlir::Block::getArgumentTypes(v66);
                if (v69 - ArgumentTypes != v71 - v70)
                {
                  goto LABEL_101;
                }

                for (; ArgumentTypes != v69; v70 += 8)
                {
                  if ((*(*v70 + 8) ^ *(*ArgumentTypes + 8)) > 7)
                  {
                    goto LABEL_101;
                  }

                  ArgumentTypes += 8;
                }

                v356[0] = &v357;
                v356[1] = 0x800000000;
                v72 = *(v65 + 5);
                v73 = *(v350 + 40);
                v74 = v350 + 32;
                if (v72 != (v65 + 32))
                {
                  v333 = 0;
                  v330 = v350 + 32;
                  do
                  {
                    if (v73 == v74)
                    {
                      goto LABEL_186;
                    }

                    v75 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v72, v71);
                    v77 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v73, v76);
                    if (!mlir::OperationEquivalence::isEquivalentTo(v75, v77, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<llvm::LogicalResult ()(mlir::Value,mlir::Value)>, mlir::OperationEquivalence::ignoreValueEquivalence, 0, v78, 1u, v79, 0, v329))
                    {
                      goto LABEL_186;
                    }

                    v81 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v72, v80);
                    if ((*(v81 + 46) & 0x80) != 0)
                    {
                      v334 = *(v81 + 72);
                      v83 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v73, v82);
                      v331 = v73;
                      if ((*(v83 + 46) & 0x80) != 0)
                      {
                        goto LABEL_113;
                      }
                    }

                    else
                    {
                      v334 = 0;
                      v83 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v73, v82);
                      v331 = v73;
                      if ((*(v83 + 46) & 0x80) != 0)
                      {
LABEL_113:
                        v85 = *(v83 + 72);
                        v86 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v72, v84);
                        if ((*(v86 + 46) & 0x80) == 0)
                        {
                          goto LABEL_170;
                        }

                        goto LABEL_114;
                      }
                    }

                    v85 = 0;
                    v86 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v72, v84);
                    if ((*(v86 + 46) & 0x80) == 0)
                    {
                      goto LABEL_170;
                    }

LABEL_114:
                    v88 = *(v86 + 68);
                    if (v88)
                    {
                      v89 = 0;
                      while (1)
                      {
                        v90 = 32 * v89;
                        v91 = *(v334 + v90 + 24);
                        v355 = v91;
                        v92 = *(v85 + v90 + 24);
                        v354 = v92;
                        if (v91 == v92)
                        {
                          goto LABEL_117;
                        }

                        if ((v92[1] ^ v91[1]) > 7)
                        {
                          goto LABEL_186;
                        }

                        ParentBlock = mlir::Value::getParentBlock(&v355);
                        if ((ParentBlock == v65) == (mlir::Value::getParentBlock(&v354) != v66))
                        {
                          goto LABEL_186;
                        }

                        if (ParentBlock == v65)
                        {
                          break;
                        }

                        NextResultAtOffset = v355;
                        DefiningOp = mlir::Value::getDefiningOp(&NextResultAtOffset);
                        v95 = mlir::Value::getParentBlock(&NextResultAtOffset);
                        if (DefiningOp == mlir::Block::getTerminator(v95, v96))
                        {
                          v104 = *v65;
                          v105 = mlir::Value::getParentBlock(&NextResultAtOffset);
                          if (v104)
                          {
                            v106 = v105;
                            while (mlir::PredecessorIterator::unwrap(v104) != v106)
                            {
                              v104 = *v104;
                              if (!v104)
                              {
                                goto LABEL_123;
                              }
                            }

LABEL_186:
                            v133 = 0;
LABEL_187:
                            if (v356[0] != &v357)
                            {
                              free(v356[0]);
                            }

                            v64 = v332;
                            if ((v133 & 1) == 0)
                            {
LABEL_101:
                              v63 += 112;
                              if (v63 != v64)
                              {
                                goto LABEL_102;
                              }

                              v26 = v346;
                              if (v346 < HIDWORD(v346))
                              {
LABEL_41:
                                v27 = v345 + 112 * v26;
                                *v27 = v350;
                                *(v27 + 8) = 0;
                                *(v27 + 2) = 0;
                                *(v27 + 3) = 0;
                                *(v27 + 2) = v351;
                                v351 = 0;
                                *(v27 + 6) = v352;
                                LODWORD(v352) = 0;
                                v28 = *(v27 + 7);
                                *(v27 + 7) = HIDWORD(v352);
                                HIDWORD(v352) = v28;
                                v29 = *(v27 + 8);
                                *(v27 + 8) = v353;
                                v353 = v29;
                                *(v27 + 12) = 0;
                                v27 += 96;
                                *(v27 - 7) = 0;
                                *(v27 - 6) = 0;
                                *(v27 - 10) = 0;
                                *(v27 - 4) = v27 - 16;
                                *(v27 - 3) = 0x100000000;
                                *(v27 + 1) = 0;
                                *(v27 - 1) = v27;
                                v30 = v346 + 1;
                                goto LABEL_42;
                              }

LABEL_305:
                              v356[0] = 0;
                              llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v345, v347, 0, 112, v356);
                              v198 = v197;
                              v199 = &v197[112 * v346];
                              *v199 = v350;
                              *(v199 + 8) = 0;
                              *(v199 + 2) = 0;
                              *(v199 + 3) = 0;
                              *(v199 + 2) = v351;
                              v351 = 0;
                              *(v199 + 6) = v352;
                              LODWORD(v352) = 0;
                              v200 = *(v199 + 7);
                              *(v199 + 7) = HIDWORD(v352);
                              HIDWORD(v352) = v200;
                              v201 = *(v199 + 8);
                              *(v199 + 8) = v353;
                              v353 = v201;
                              *(v199 + 12) = 0;
                              v199 += 96;
                              *(v199 - 7) = 0;
                              *(v199 - 6) = 0;
                              *(v199 - 10) = 0;
                              *(v199 - 4) = v199 - 16;
                              *(v199 - 3) = 0x100000000;
                              *(v199 + 1) = 0;
                              *(v199 - 1) = v199;
                              v202 = v345;
                              if (v346)
                              {
                                v203 = 0;
                                v204 = 112 * v346;
                                do
                                {
                                  while (1)
                                  {
                                    v205 = &v202[v203];
                                    v206 = &v198[v203];
                                    *v206 = *&v202[v203];
                                    *(v206 + 8) = 0;
                                    *(v206 + 2) = 0;
                                    *(v206 + 3) = 0;
                                    *(v206 + 2) = *&v202[v203 + 16];
                                    *(v205 + 2) = 0;
                                    *(v206 + 6) = *&v202[v203 + 24];
                                    *(v205 + 6) = 0;
                                    v207 = *&v198[v203 + 28];
                                    *(v206 + 7) = *&v202[v203 + 28];
                                    *(v205 + 7) = v207;
                                    v208 = *&v198[v203 + 32];
                                    *(v206 + 8) = *&v202[v203 + 32];
                                    *(v205 + 8) = v208;
                                    *(v206 + 5) = 0;
                                    *(v206 + 6) = 0;
                                    *(v206 + 14) = 0;
                                    *(v206 + 5) = *&v202[v203 + 40];
                                    *(v205 + 5) = 0;
                                    *(v206 + 12) = *&v202[v203 + 48];
                                    *(v205 + 12) = 0;
                                    v209 = *&v198[v203 + 52];
                                    *(v206 + 13) = *&v202[v203 + 52];
                                    *(v205 + 13) = v209;
                                    v210 = *&v198[v203 + 56];
                                    *(v206 + 14) = *&v202[v203 + 56];
                                    *(v205 + 14) = v210;
                                    *&v198[v203 + 64] = &v198[v203 + 80];
                                    *&v198[v203 + 72] = 0x100000000;
                                    if (*&v202[v203 + 72])
                                    {
                                      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&v198[v203 + 64], v205 + 8);
                                    }

                                    *(v206 + 11) = *(v205 + 11);
                                    v211 = v205 + 96;
                                    v212 = *(v205 + 12);
                                    *(v206 + 12) = v212;
                                    v213 = v206 + 96;
                                    v214 = *(v205 + 13);
                                    *(v206 + 13) = v214;
                                    if (v214)
                                    {
                                      break;
                                    }

                                    *(v206 + 11) = v213;
                                    v203 += 112;
                                    if (v204 == v203)
                                    {
                                      goto LABEL_312;
                                    }
                                  }

                                  *(v212 + 16) = v213;
                                  *(v205 + 11) = v211;
                                  *v211 = 0;
                                  *(v205 + 13) = 0;
                                  v203 += 112;
                                }

                                while (v204 != v203);
LABEL_312:
                                v202 = v345;
                                if (v346)
                                {
                                  v215 = v345 + 112 * v346;
                                  std::__tree<unsigned long long>::destroy((v215 - 24), *(v215 - 2));
                                  v216 = *(v215 - 6);
                                  if (v215 - 32 != v216)
                                  {
                                    free(v216);
                                  }

                                  llvm::deallocate_buffer(*(v215 - 9), (8 * *(v215 - 14)));
                                }
                              }

                              v217 = v356[0];
                              if (v202 != v347)
                              {
                                free(v202);
                              }

                              v345 = v198;
                              v30 = v346 + 1;
                              HIDWORD(v346) = v217;
LABEL_42:
                              LODWORD(v346) = v30;
                            }

LABEL_43:
                            llvm::deallocate_buffer(v351, (16 * v353));
                          }
                        }

LABEL_123:
                        NextResultAtOffset = v354;
                        v97 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                        v98 = mlir::Value::getParentBlock(&NextResultAtOffset);
                        if (v97 == mlir::Block::getTerminator(v98, v99))
                        {
                          v107 = *v66;
                          v108 = mlir::Value::getParentBlock(&NextResultAtOffset);
                          if (v107)
                          {
                            v109 = v108;
                            while (mlir::PredecessorIterator::unwrap(v107) != v109)
                            {
                              v107 = *v107;
                              if (!v107)
                              {
                                goto LABEL_124;
                              }
                            }

                            goto LABEL_186;
                          }
                        }

LABEL_124:
                        v100 = v356[1];
                        if (LODWORD(v356[1]) >= HIDWORD(v356[1]))
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(v356, &v357, LODWORD(v356[1]) + 1, 8);
                          *(v356[0] + LODWORD(v356[1])) = (v89 << 32) | v333;
                          v100 = v356[1];
                        }

                        else
                        {
                          v101 = v356[0] + 8 * LODWORD(v356[1]);
                          *v101 = v333;
                          v101[1] = v89;
                        }

                        LODWORD(v356[1]) = v100 + 1;
LABEL_117:
                        if (++v89 == v88)
                        {
                          goto LABEL_170;
                        }
                      }

                      if (v355 && (*(v355 + 1) & 7) == 7)
                      {
                        v102 = *(v355 + 6);
                        v103 = v354;
                        if (!v354)
                        {
                          goto LABEL_156;
                        }

LABEL_153:
                        if ((*(v103 + 1) & 7) == 7)
                        {
                          if (v102 != v103[6])
                          {
                            goto LABEL_186;
                          }

                          goto LABEL_117;
                        }

                        goto LABEL_156;
                      }

                      NextResultAtOffset = v355;
                      v110 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                      v111 = *(v63 + 2);
                      v112 = *(v63 + 8);
                      if (v112)
                      {
                        v113 = ((v110 >> 4) ^ (v110 >> 9)) & (v112 - 1);
                        v114 = *(v111 + 16 * v113);
                        if (v114 != v110)
                        {
                          v115 = 1;
                          while (v114 != -4096)
                          {
                            v116 = v113 + v115++;
                            v113 = v116 & (v112 - 1);
                            v114 = *(v111 + 16 * v113);
                            if (v114 == v110)
                            {
                              goto LABEL_148;
                            }
                          }

                          goto LABEL_147;
                        }
                      }

                      else
                      {
LABEL_147:
                        v113 = *(v63 + 8);
                      }

LABEL_148:
                      v117 = *(v111 + 16 * v113 + 8);
                      if (!NextResultAtOffset || (*(NextResultAtOffset + 1) & 7) != 6)
                      {
                        v102 = (*(NextResultAtOffset + 1) & 7) + v117;
                        v103 = v354;
                        if (!v354)
                        {
                          goto LABEL_156;
                        }

                        goto LABEL_153;
                      }

                      v102 = *(NextResultAtOffset + 4) + 6 + v117;
                      v103 = v354;
                      if (v354)
                      {
                        goto LABEL_153;
                      }

LABEL_156:
                      NextResultAtOffset = v103;
                      v118 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                      if (v353)
                      {
                        v119 = ((v118 >> 4) ^ (v118 >> 9)) & (v353 - 1);
                        v120 = *(v351 + 2 * v119);
                        if (v120 != v118)
                        {
                          v121 = 1;
                          while (v120 != -4096)
                          {
                            v122 = v119 + v121++;
                            v119 = v122 & (v353 - 1);
                            v120 = *(v351 + 2 * v119);
                            if (v120 == v118)
                            {
                              goto LABEL_163;
                            }
                          }

                          goto LABEL_162;
                        }
                      }

                      else
                      {
LABEL_162:
                        v119 = v353;
                      }

LABEL_163:
                      v123 = *(v351 + 4 * v119 + 2);
                      if (NextResultAtOffset && (*(NextResultAtOffset + 1) & 7) == 6)
                      {
                        if (v102 != *(NextResultAtOffset + 4) + 6 + v123)
                        {
                          goto LABEL_186;
                        }
                      }

                      else if (v102 != (*(NextResultAtOffset + 1) & 7) + v123)
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_117;
                    }

LABEL_170:
                    v124 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v331, v87);
                    v126 = *(v124 + 36);
                    if (v126)
                    {
                      v127 = v124 - 16;
                    }

                    else
                    {
                      v127 = 0;
                    }

                    if (v126)
                    {
                      v128 = 0;
                      do
                      {
                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v127, v128);
                        if (mlir::Value::isUsedOutsideOfBlock(&NextResultAtOffset, v66))
                        {
                          goto LABEL_186;
                        }
                      }

                      while (v126 != ++v128);
                    }

                    v129 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v72, v125);
                    v130 = *(v129 + 36);
                    if (v130)
                    {
                      v131 = v129 - 16;
                    }

                    else
                    {
                      v131 = 0;
                    }

                    if (v130)
                    {
                      v132 = 0;
                      do
                      {
                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v131, v132);
                        if (mlir::Value::isUsedOutsideOfBlock(&NextResultAtOffset, v65))
                        {
                          goto LABEL_186;
                        }
                      }

                      while (v130 != ++v132);
                    }

                    v72 = v72[1];
                    v73 = *(v331 + 8);
                    ++v333;
                    v74 = v330;
                  }

                  while (v72 != (v65 + 32));
                }

                if (v73 != v74)
                {
                  goto LABEL_186;
                }

                if (LODWORD(v356[1]))
                {
                  v134 = v356[0];
                  v135 = v356[0] + 8 * LODWORD(v356[1]);
                  v136 = (v63 + 96);
                  while (1)
                  {
                    v138 = *(v63 + 12);
                    v139 = v63 + 96;
                    if (*(v63 + 11) != v136)
                    {
                      v140 = *(v63 + 12);
                      v141 = v63 + 96;
                      if (v138)
                      {
                        do
                        {
                          v139 = v140;
                          v140 = *(v140 + 1);
                        }

                        while (v140);
                      }

                      else
                      {
                        do
                        {
                          v139 = *(v141 + 2);
                          v44 = *v139 == v141;
                          v141 = v139;
                        }

                        while (v44);
                      }

                      v142 = *(v139 + 7);
                      v143 = *v134;
                      if (v142 >= *v134 && (v143 < v142 || *(v139 + 8) >= *(v134 + 1)))
                      {
                        break;
                      }
                    }

                    if (v138)
                    {
                      v144 = v139;
                    }

                    else
                    {
                      v144 = v63 + 96;
                    }

                    if (v138)
                    {
                      v145 = v139 + 8;
                    }

                    else
                    {
                      v145 = v63 + 96;
                    }

                    if (!*v145)
                    {
LABEL_220:
                      v149 = operator new(0x28uLL);
                      *(v149 + 28) = *v134;
                      *v149 = 0;
                      v149[1] = 0;
                      v149[2] = v144;
                      *v145 = v149;
                      v150 = **(v63 + 11);
                      if (v150)
                      {
                        *(v63 + 11) = v150;
                      }

                      v151 = *v136;
                      v44 = v149 == *v136;
                      *(v149 + 24) = v44;
                      if (!v44)
                      {
                        do
                        {
                          v153 = v149[2];
                          if (v153[3])
                          {
                            break;
                          }

                          v154 = v153[2];
                          v155 = *v154;
                          if (*v154 == v153)
                          {
                            v158 = *(v154 + 1);
                            if (!v158 || (v159 = *(v158 + 24), v152 = (v158 + 24), v159 == 1))
                            {
                              if (*v153 != v149)
                              {
                                v160 = v153[1];
                                v161 = *v160;
                                v153[1] = *v160;
                                v162 = v153;
                                if (v161)
                                {
                                  *(v161 + 16) = v153;
                                  v154 = v153[2];
                                  v162 = *v154;
                                }

                                v160[2] = v154;
                                *&v154[8 * (v162 != v153)] = v160;
                                *v160 = v153;
                                v153[2] = v160;
                                v154 = v160[2];
                                v155 = *v154;
                                v153 = v160;
                              }

                              *(v153 + 24) = 1;
                              v154[24] = 0;
                              v163 = *(v155 + 8);
                              *v154 = v163;
                              if (v163)
                              {
                                *(v163 + 16) = v154;
                              }

                              v164 = *(v154 + 2);
                              *(v155 + 16) = v164;
                              v164[*v164 != v154] = v155;
                              *(v155 + 8) = v154;
                              *(v154 + 2) = v155;
                              break;
                            }
                          }

                          else
                          {
                            if (!v155 || (v157 = *(v155 + 24), v156 = (v155 + 24), v157 == 1))
                            {
                              v165 = *v153;
                              if (*v153 == v149)
                              {
                                v168 = v165[1];
                                *v153 = v168;
                                if (v168)
                                {
                                  *(v168 + 16) = v153;
                                  v154 = v153[2];
                                }

                                v165[2] = v154;
                                *&v154[8 * (*v154 != v153)] = v165;
                                v165[1] = v153;
                                v153[2] = v165;
                                v154 = v165[2];
                                *(v165 + 24) = 1;
                                v154[24] = 0;
                                v166 = *(v154 + 1);
                                v167 = *v166;
                                *(v154 + 1) = *v166;
                                if (!v167)
                                {
                                  goto LABEL_192;
                                }
                              }

                              else
                              {
                                *(v153 + 24) = 1;
                                v154[24] = 0;
                                v166 = *(v154 + 1);
                                v167 = *v166;
                                *(v154 + 1) = *v166;
                                if (!v167)
                                {
                                  goto LABEL_192;
                                }
                              }

                              *(v167 + 16) = v154;
LABEL_192:
                              v137 = *(v154 + 2);
                              v166[2] = v137;
                              v137[*v137 != v154] = v166;
                              *v166 = v154;
                              *(v154 + 2) = v166;
                              break;
                            }

                            v152 = v156;
                          }

                          *(v153 + 24) = 1;
                          v149 = v154;
                          v154[24] = v154 == v151;
                          *v152 = 1;
                        }

                        while (v154 != v151);
                      }

                      ++*(v63 + 13);
                    }

LABEL_194:
                    v134 += 8;
                    if (v134 == v135)
                    {
                      goto LABEL_248;
                    }
                  }

                  v145 = v63 + 96;
                  v144 = v63 + 96;
                  if (!v138)
                  {
                    goto LABEL_220;
                  }

                  v146 = *(v134 + 1);
                  while (2)
                  {
                    while (1)
                    {
                      v144 = v138;
                      v147 = *(v138 + 7);
                      if (v143 < v147)
                      {
                        break;
                      }

                      if (v147 >= v143)
                      {
                        v148 = *(v144 + 8);
                        if (v146 < v148)
                        {
                          break;
                        }

                        if (v148 >= v146)
                        {
                          goto LABEL_194;
                        }
                      }

                      v138 = *(v144 + 1);
                      if (!v138)
                      {
                        v145 = v144 + 8;
                        goto LABEL_220;
                      }
                    }

                    v138 = *v144;
                    v145 = v144;
                    if (!*v144)
                    {
                      goto LABEL_220;
                    }

                    continue;
                  }
                }

LABEL_248:
                if (*(v63 + 12))
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v63 + 40), &v350, &NextResultAtOffset);
                  if (v349 == 1)
                  {
                    v169 = v350;
                    v170 = *(v63 + 18);
                    if (v170 >= *(v63 + 19))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod((v63 + 64), (v63 + 80), v170 + 1, 8);
                      v170 = *(v63 + 18);
                    }

                    *(*(v63 + 8) + 8 * v170) = v169;
                    ++*(v63 + 18);
                  }

                  goto LABEL_300;
                }

                v171 = *(v63 + 8);
                v172 = *(v63 + 18);
                v173 = v171;
                if (v172)
                {
                  v174 = v350;
                  v175 = 8 * v172;
                  v173 = *(v63 + 8);
                  do
                  {
                    if (*v173 == v350)
                    {
                      goto LABEL_299;
                    }

                    ++v173;
                    v175 -= 8;
                  }

                  while (v175);
                  if (v172 < *(v63 + 19))
                  {
LABEL_258:
                    v171[v172] = v174;
                    v176 = *(v63 + 18) + 1;
                    *(v63 + 18) = v176;
                    if (v176 >= 2)
                    {
                      goto LABEL_259;
                    }

LABEL_300:
                    v133 = 1;
                    goto LABEL_187;
                  }
                }

                else
                {
LABEL_299:
                  if (v173 != &v171[v172])
                  {
                    goto LABEL_300;
                  }

                  v174 = v350;
                  if (v172 < *(v63 + 19))
                  {
                    goto LABEL_258;
                  }
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod((v63 + 64), (v63 + 80), v172 + 1, 8);
                *(*(v63 + 8) + 8 * *(v63 + 18)) = v174;
                v176 = *(v63 + 18) + 1;
                *(v63 + 18) = v176;
                if (v176 < 2)
                {
                  goto LABEL_300;
                }

LABEL_259:
                v177 = *(v63 + 8);
                v178 = &v177[v176];
                v179 = *(v63 + 5);
                v180 = *(v63 + 14);
                while (2)
                {
                  if (!v180)
                  {
LABEL_281:
                    v180 *= 2;
                    goto LABEL_282;
                  }

                  v181 = ((*v177 >> 4) ^ (*v177 >> 9)) & (v180 - 1);
                  v182 = (v179 + 8 * v181);
                  v183 = *v182;
                  if (*v177 == *v182)
                  {
LABEL_261:
                    ++v177;
                    v133 = 1;
                    if (v177 == v178)
                    {
                      goto LABEL_187;
                    }

                    continue;
                  }

                  break;
                }

                v184 = 0;
                v185 = 1;
                while (v183 != -4096)
                {
                  if (v184)
                  {
                    v186 = 0;
                  }

                  else
                  {
                    v186 = v183 == -8192;
                  }

                  if (v186)
                  {
                    v184 = v182;
                  }

                  v187 = v181 + v185++;
                  v181 = v187 & (v180 - 1);
                  v182 = (v179 + 8 * v181);
                  v183 = *v182;
                  if (*v177 == *v182)
                  {
                    goto LABEL_261;
                  }
                }

                if (v184)
                {
                  v188 = v184;
                }

                else
                {
                  v188 = v182;
                }

                v189 = *(v63 + 12);
                if (4 * v189 + 4 >= 3 * v180)
                {
                  goto LABEL_281;
                }

                if (v180 + ~v189 - *(v63 + 13) <= v180 >> 3)
                {
LABEL_282:
                  llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow((v63 + 40), v180);
                  v179 = *(v63 + 5);
                  v180 = *(v63 + 14);
                  if (v180)
                  {
                    v190 = v180 - 1;
                    v191 = ((*v177 >> 4) ^ (*v177 >> 9)) & (v180 - 1);
                    v188 = (v179 + 8 * v191);
                    v192 = *v188;
                    if (*v177 != *v188)
                    {
                      v193 = 0;
                      v194 = 1;
                      while (v192 != -4096)
                      {
                        if (v193)
                        {
                          v195 = 0;
                        }

                        else
                        {
                          v195 = v192 == -8192;
                        }

                        if (v195)
                        {
                          v193 = v188;
                        }

                        v196 = v191 + v194++;
                        v191 = v196 & v190;
                        v188 = (v179 + 8 * (v196 & v190));
                        v192 = *v188;
                        if (*v177 == *v188)
                        {
                          goto LABEL_294;
                        }
                      }

                      if (v193)
                      {
                        v188 = v193;
                      }
                    }
                  }

                  else
                  {
                    v188 = 0;
                  }

LABEL_294:
                  ++*(v63 + 12);
                  if (*v188 != -4096)
                  {
LABEL_266:
                    --*(v63 + 13);
                  }
                }

                else
                {
                  *(v63 + 12) = v189 + 1;
                  if (*v188 != -4096)
                  {
                    goto LABEL_266;
                  }
                }

                *v188 = *v177;
                goto LABEL_261;
              }
            }

            LODWORD(v17) = 2 * v339;
LABEL_28:
            llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::grow(&v337, v17);
            llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(&v337, v356, &v350);
            v18 = v350;
            LODWORD(v338) = v338 + 1;
            if (*v350 == -4096)
            {
              goto LABEL_15;
            }

LABEL_26:
            --HIDWORD(v338);
            goto LABEL_15;
          }
        }

        v221 = v7[1];
        if (v221 != v7)
        {
          break;
        }

LABEL_6:
        v6 = v343;
        if (!v343)
        {
          goto LABEL_506;
        }
      }

      while (1)
      {
        v222 = v221 - 1;
        if (!v221)
        {
          v222 = 0;
        }

        v223 = v222 + 4;
        for (j = v222[5]; j != v223; j = j[1])
        {
          v225 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(j, v5);
          v226 = *(v225 + 44);
          if ((v226 & 0x7FFFFF) != 0)
          {
            v227 = v225 + 16 * ((v226 >> 23) & 1) + ((v226 >> 21) & 0x7F8) + 32 * *(v225 + 40) + 64;
            v228 = v227 + 24 * (v226 & 0x7FFFFF);
            do
            {
              if (DWORD2(v340))
              {
                v232 = v340;
                v233 = v341;
                if (!v341)
                {
                  v234 = 0;
                  if (4 * DWORD2(v340) + 4 < 3 * v341)
                  {
                    goto LABEL_347;
                  }

                  goto LABEL_448;
                }

                v229 = (v341 - 1) & ((v227 >> 4) ^ (v227 >> 9));
                v230 = (v340 + 8 * v229);
                v231 = *v230;
                if (v227 != *v230)
                {
                  v287 = 0;
                  v288 = 1;
                  while (v231 != -4096)
                  {
                    if (v287)
                    {
                      v289 = 0;
                    }

                    else
                    {
                      v289 = v231 == -8192;
                    }

                    if (v289)
                    {
                      v287 = v230;
                    }

                    v290 = v229 + v288++;
                    v229 = v290 & (v341 - 1);
                    v230 = (v340 + 8 * v229);
                    v231 = *v230;
                    if (v227 == *v230)
                    {
                      goto LABEL_343;
                    }
                  }

                  if (v287)
                  {
                    v234 = v287;
                  }

                  else
                  {
                    v234 = v230;
                  }

                  if (4 * DWORD2(v340) + 4 < 3 * v341)
                  {
LABEL_347:
                    v235 = v341;
                    if (v341 + ~DWORD2(v340) - HIDWORD(v340) > v341 >> 3)
                    {
                      ++DWORD2(v340);
                      if (*v234 == -4096)
                      {
LABEL_350:
                        *v234 = v227;
                        v236 = v343;
                        if (v343 >= HIDWORD(v343))
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v342, &v344, v343 + 1, 8);
                          v236 = v343;
                        }

                        *(v342 + v236) = v227;
                        LODWORD(v343) = v343 + 1;
                        goto LABEL_343;
                      }

LABEL_349:
                      --HIDWORD(v340);
                      goto LABEL_350;
                    }

LABEL_449:
                    v291 = (v235 - 1) | ((v235 - 1) >> 1);
                    v292 = v291 | (v291 >> 2) | ((v291 | (v291 >> 2)) >> 4);
                    v293 = ((v292 | (v292 >> 8)) >> 16) | v292 | (v292 >> 8);
                    if ((v293 + 1) > 0x40)
                    {
                      v294 = v293 + 1;
                    }

                    else
                    {
                      v294 = 64;
                    }

                    v341 = v294;
                    buffer = llvm::allocate_buffer(8 * v294, 8uLL);
                    *&v340 = buffer;
                    if (v232)
                    {
                      *(&v340 + 1) = 0;
                      v296 = v341;
                      if (v341)
                      {
                        v297 = (v341 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                        v298 = buffer;
                        if (v297 < 3)
                        {
                          goto LABEL_513;
                        }

                        v299 = v297 + 1;
                        v298 = &buffer->i8[8 * (v299 & 0x3FFFFFFFFFFFFFFCLL)];
                        v300 = buffer + 1;
                        v301 = v299 & 0x3FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v300[-1] = v335;
                          *v300 = v335;
                          v300 += 2;
                          v301 -= 4;
                        }

                        while (v301);
                        if (v299 != (v299 & 0x3FFFFFFFFFFFFFFCLL))
                        {
LABEL_513:
                          do
                          {
                            *v298 = -4096;
                            v298 += 8;
                          }

                          while (v298 != buffer + 8 * v296);
                        }
                      }

                      if (v233)
                      {
                        v302 = 0;
                        v303 = v296 - 1;
                        v304 = v232;
                        do
                        {
                          v319 = *v304;
                          if ((*v304 | 0x1000) != 0xFFFFFFFFFFFFF000)
                          {
                            v320 = ((v319 >> 4) ^ (v319 >> 9)) & v303;
                            v318 = &buffer->i8[8 * v320];
                            v321 = *v318;
                            if (v319 != *v318)
                            {
                              v322 = 0;
                              v323 = 1;
                              while (v321 != -4096)
                              {
                                if (v322)
                                {
                                  v324 = 0;
                                }

                                else
                                {
                                  v324 = v321 == -8192;
                                }

                                if (v324)
                                {
                                  v322 = v318;
                                }

                                v325 = v320 + v323++;
                                v320 = v325 & v303;
                                v318 = &buffer->i8[8 * (v325 & v303)];
                                v321 = *v318;
                                if (v319 == *v318)
                                {
                                  goto LABEL_482;
                                }
                              }

                              if (v322)
                              {
                                v318 = v322;
                              }
                            }

LABEL_482:
                            *v318 = v319;
                            DWORD2(v340) = ++v302;
                          }

                          v304 = (v304 + 8);
                        }

                        while (v304 != (v232 + 8 * v233));
                      }

                      llvm::deallocate_buffer(v232, (8 * v233));
                    }

                    *(&v340 + 1) = 0;
                    v305 = v341;
                    if (!v341)
                    {
                      goto LABEL_496;
                    }

                    v306 = (v341 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                    v307 = buffer;
                    if (v306 < 3)
                    {
                      goto LABEL_514;
                    }

                    v308 = v306 + 1;
                    v307 = &buffer->i8[8 * (v308 & 0x3FFFFFFFFFFFFFFCLL)];
                    v309 = buffer + 1;
                    v310 = v308 & 0x3FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v309[-1] = v335;
                      *v309 = v335;
                      v309 += 2;
                      v310 -= 4;
                    }

                    while (v310);
                    if (v308 != (v308 & 0x3FFFFFFFFFFFFFFCLL))
                    {
LABEL_514:
                      do
                      {
                        *v307 = -4096;
                        v307 += 8;
                      }

                      while (v307 != buffer + 8 * v305);
                    }

                    if (v305)
                    {
                      v311 = v305 - 1;
                      v312 = v311 & ((v227 >> 4) ^ (v227 >> 9));
                      v234 = &buffer->i64[v312];
                      v313 = *v234;
                      if (v227 != *v234)
                      {
                        v314 = 0;
                        v315 = 1;
                        while (v313 != -4096)
                        {
                          if (v314)
                          {
                            v316 = 0;
                          }

                          else
                          {
                            v316 = v313 == -8192;
                          }

                          if (v316)
                          {
                            v314 = v234;
                          }

                          v317 = v312 + v315++;
                          v312 = v317 & v311;
                          v234 = &buffer->i64[v317 & v311];
                          v313 = *v234;
                          if (v227 == *v234)
                          {
                            goto LABEL_497;
                          }
                        }

                        if (v314)
                        {
                          v234 = v314;
                        }
                      }
                    }

                    else
                    {
LABEL_496:
                      v234 = 0;
                    }

LABEL_497:
                    ++DWORD2(v340);
                    if (*v234 == -4096)
                    {
                      goto LABEL_350;
                    }

                    goto LABEL_349;
                  }

LABEL_448:
                  v235 = 2 * v341;
                  goto LABEL_449;
                }
              }

              else
              {
                v237 = v342;
                if (v343)
                {
                  v238 = 8 * v343;
                  v237 = v342;
                  while (*v237 != v227)
                  {
                    ++v237;
                    v238 -= 8;
                    if (!v238)
                    {
                      goto LABEL_359;
                    }
                  }
                }

                if (v237 != (v342 + 8 * v343))
                {
                  goto LABEL_343;
                }

LABEL_359:
                if (v343 >= HIDWORD(v343))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v342, &v344, v343 + 1, 8);
                  *(v342 + v343) = v227;
                  v239 = v343 + 1;
                  LODWORD(v343) = v239;
                  if (v239 < 2)
                  {
                    goto LABEL_343;
                  }

LABEL_361:
                  v240 = v342;
                  v241 = v342 + 8 * v239;
                  v242 = v340;
                  v243 = v341;
                  while (2)
                  {
                    if (!v243)
                    {
LABEL_383:
                      v247 = 2 * v243;
                      goto LABEL_384;
                    }

                    v244 = ((*v240 >> 4) ^ (*v240 >> 9)) & (v243 - 1);
                    v245 = v242 + 8 * v244;
                    v246 = *v245;
                    if (*v240 == *v245)
                    {
LABEL_363:
                      if (++v240 == v241)
                      {
                        goto LABEL_343;
                      }

                      continue;
                    }

                    break;
                  }

                  v248 = 0;
                  v249 = 1;
                  while (v246 != -4096)
                  {
                    if (v248)
                    {
                      v250 = 0;
                    }

                    else
                    {
                      v250 = v246 == -8192;
                    }

                    if (v250)
                    {
                      v248 = v245;
                    }

                    v251 = v244 + v249++;
                    v244 = v251 & (v243 - 1);
                    v245 = v242 + 8 * v244;
                    v246 = *v245;
                    if (*v240 == *v245)
                    {
                      goto LABEL_363;
                    }
                  }

                  if (v248)
                  {
                    v252 = v248;
                  }

                  else
                  {
                    v252 = v245;
                  }

                  if (4 * DWORD2(v340) + 4 >= 3 * v243)
                  {
                    goto LABEL_383;
                  }

                  v247 = v243;
                  if (v243 + ~DWORD2(v340) - HIDWORD(v340) <= v243 >> 3)
                  {
LABEL_384:
                    v253 = (v247 - 1) | ((v247 - 1) >> 1);
                    v254 = v253 | (v253 >> 2) | ((v253 | (v253 >> 2)) >> 4);
                    v255 = ((v254 | (v254 >> 8)) >> 16) | v254 | (v254 >> 8);
                    if ((v255 + 1) > 0x40)
                    {
                      v256 = v255 + 1;
                    }

                    else
                    {
                      v256 = 64;
                    }

                    v341 = v256;
                    v257 = llvm::allocate_buffer(8 * v256, 8uLL);
                    *&v340 = v257;
                    if (v242)
                    {
                      *(&v340 + 1) = 0;
                      v258 = v341;
                      if (v341)
                      {
                        v259 = (v341 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                        v260 = v257;
                        if (v259 < 3)
                        {
                          goto LABEL_515;
                        }

                        v261 = v259 + 1;
                        v260 = &v257->i8[8 * (v261 & 0x3FFFFFFFFFFFFFFCLL)];
                        v262 = v257 + 1;
                        v263 = v261 & 0x3FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v262[-1] = v335;
                          *v262 = v335;
                          v262 += 2;
                          v263 -= 4;
                        }

                        while (v263);
                        if (v261 != (v261 & 0x3FFFFFFFFFFFFFFCLL))
                        {
LABEL_515:
                          do
                          {
                            *v260 = -4096;
                            v260 += 8;
                          }

                          while (v260 != v257 + 8 * v258);
                        }
                      }

                      if (v243)
                      {
                        v264 = 0;
                        v265 = v258 - 1;
                        v266 = v242;
                        do
                        {
                          v280 = *v266;
                          if ((*v266 | 0x1000) != 0xFFFFFFFFFFFFF000)
                          {
                            v281 = ((v280 >> 4) ^ (v280 >> 9)) & v265;
                            v279 = &v257->i8[8 * v281];
                            v282 = *v279;
                            if (v280 != *v279)
                            {
                              v283 = 0;
                              v284 = 1;
                              while (v282 != -4096)
                              {
                                if (v283)
                                {
                                  v285 = 0;
                                }

                                else
                                {
                                  v285 = v282 == -8192;
                                }

                                if (v285)
                                {
                                  v283 = v279;
                                }

                                v286 = v281 + v284++;
                                v281 = v286 & v265;
                                v279 = &v257->i8[8 * (v286 & v265)];
                                v282 = *v279;
                                if (v280 == *v279)
                                {
                                  goto LABEL_415;
                                }
                              }

                              if (v283)
                              {
                                v279 = v283;
                              }
                            }

LABEL_415:
                            *v279 = v280;
                            DWORD2(v340) = ++v264;
                          }

                          v266 = (v266 + 8);
                        }

                        while (v266 != (v242 + 8 * v243));
                      }

                      llvm::deallocate_buffer(v242, (8 * v243));
                    }

                    *(&v340 + 1) = 0;
                    v243 = v341;
                    if (!v341)
                    {
                      goto LABEL_429;
                    }

                    v267 = (v341 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                    v268 = v257;
                    if (v267 < 3)
                    {
                      goto LABEL_516;
                    }

                    v269 = v267 + 1;
                    v268 = &v257->i8[8 * (v269 & 0x3FFFFFFFFFFFFFFCLL)];
                    v270 = v257 + 1;
                    v271 = v269 & 0x3FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v270[-1] = v335;
                      *v270 = v335;
                      v270 += 2;
                      v271 -= 4;
                    }

                    while (v271);
                    if (v269 != (v269 & 0x3FFFFFFFFFFFFFFCLL))
                    {
LABEL_516:
                      do
                      {
                        *v268 = -4096;
                        v268 += 8;
                      }

                      while (v268 != v257 + 8 * v243);
                    }

                    if (v243)
                    {
                      v272 = v243 - 1;
                      v273 = ((*v240 >> 4) ^ (*v240 >> 9)) & (v243 - 1);
                      v252 = &v257->i8[8 * v273];
                      v274 = *v252;
                      if (*v240 != *v252)
                      {
                        v275 = 0;
                        v276 = 1;
                        while (v274 != -4096)
                        {
                          if (v275)
                          {
                            v277 = 0;
                          }

                          else
                          {
                            v277 = v274 == -8192;
                          }

                          if (v277)
                          {
                            v275 = v252;
                          }

                          v278 = v273 + v276++;
                          v273 = v278 & v272;
                          v252 = &v257->i8[8 * (v278 & v272)];
                          v274 = *v252;
                          if (*v240 == *v252)
                          {
                            goto LABEL_430;
                          }
                        }

                        if (v275)
                        {
                          v252 = v275;
                        }
                      }
                    }

                    else
                    {
LABEL_429:
                      v252 = 0;
                    }

LABEL_430:
                    v242 = v257;
                    ++DWORD2(v340);
                    if (*v252 != -4096)
                    {
LABEL_368:
                      --HIDWORD(v340);
                    }
                  }

                  else
                  {
                    ++DWORD2(v340);
                    if (*v252 != -4096)
                    {
                      goto LABEL_368;
                    }
                  }

                  *v252 = *v240;
                  goto LABEL_363;
                }

                *(v342 + v343) = v227;
                v239 = v343 + 1;
                LODWORD(v343) = v239;
                if (v239 >= 2)
                {
                  goto LABEL_361;
                }
              }

LABEL_343:
              v227 += 24;
            }

            while (v227 != v228);
          }
        }

        v221 = v221[1];
        if (v221 == v336)
        {
          goto LABEL_6;
        }
      }
    }

    v328 = v342;
    if (v342 == &v344)
    {
LABEL_508:
      llvm::deallocate_buffer(v340, (8 * v341));
    }
  }

  else
  {
LABEL_506:
    v328 = v342;
    if (v342 == &v344)
    {
      goto LABEL_508;
    }
  }

  free(v328);
  goto LABEL_508;
}

void llvm::post_order<mlir::Block *>(mlir::Block **a1@<X0>, void *a2@<X8>)
{
  v13[40] = *MEMORY[0x1E69E9840];
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&v10, *a1);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7[0] = 0;
  memset(v6, 0, sizeof(v6));
  v3 = v6 + 8;
  v4 = v6 + 8;
  v5 = 8;
  v7[1] = v8 + 8;
  DWORD1(v8[0]) = 8;
  llvm::make_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v10, &v3, a2);
  if (v7[1] != v8 + 8)
  {
    free(v7[1]);
  }

  if (v4 != v3)
  {
    free(v4);
  }

  if (v12 != v13)
  {
    free(v12);
  }

  if (v11 != v10)
  {
    free(v11);
  }
}

unint64_t processValue(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  while (1)
  {
    v5 = *(v2 + 2);
    OperandNumber = mlir::OpOperand::getOperandNumber(v2);
    {
    }

    result = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (!result)
    {
      break;
    }

    result = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    if (!result)
    {
      v26 = 0;
      v27 = 0;
      break;
    }

    result = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    v26 = v5;
    v27 = result;
    if (!v5)
    {
      break;
    }

    result = mlir::BranchOpInterface::getSuccessorBlockArgument(&v26, OperandNumber);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = *(a2 + 8);
      v10 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
      v11 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v10 >> 47) ^ v10);
      v12 = v8 - 1;
      v13 = v12 & (-348639895 * ((v11 >> 47) ^ v11));
      v14 = *(v9 + 8 * v13);
      if (v14 != result)
      {
        v23 = 1;
        while (v14 != -4096)
        {
          v24 = v13 + v23++;
          v13 = v24 & v12;
          v14 = *(v9 + 8 * v13);
          if (v14 == result)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_23;
      }

      break;
    }

LABEL_23:
    v2 = *v2;
    if (!v2)
    {
      return result;
    }
  }

LABEL_13:
  v15 = *(a2 + 48);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = *(v2 + 2);
  v17 = *(a2 + 32);
  v18 = v15 - 1;
  v19 = ((v16 >> 4) ^ (v16 >> 9)) & v18;
  v20 = *(v17 + 8 * v19);
  if (v20 != v16)
  {
    v21 = 1;
    while (v20 != -4096)
    {
      v22 = v19 + v21++;
      v19 = v22 & v18;
      v20 = *(v17 + 8 * v19);
      if (v20 == v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
  if (!v4 || (*(v4 + 1) & 7) == 7)
  {
    Owner = v4;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 8, &Owner, &v26);
  }

  else
  {
    Owner = mlir::detail::OpResultImpl::getOwner(v4);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &Owner, &v26);
  }

  *a2 |= v28;
  return result;
}

void llvm::make_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, 8, a1);
  v17 = v19;
  v18 = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v17, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, 8, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v11, (a2 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, a3 + 4, 8, &v14);
  *(v6 + 96) = a3 + 14;
  v7 = v6 + 96;
  *(v7 + 8) = 0x800000000;
  if (v18)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, &v17);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((a3 + 54), a3 + 58, 8, &v8);
  a3[66] = a3 + 68;
  a3[67] = 0x800000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a3 + 66), &v11);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v15 != v14)
  {
    free(v15);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::BlockArgument)>::callback_fn<deleteDeadness(mlir::RewriterBase &,llvm::MutableArrayRef<mlir::Region>,anonymous namespace::LiveMap &)::$_0>(uint64_t a1, unint64_t a2)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 1;
  }

  v3 = *(*a1 + 8);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = v2 - 1;
  v7 = v6 & (-348639895 * ((v5 >> 47) ^ v5));
  v8 = *(v3 + 8 * v7);
  if (v8 == a2)
  {
    return 0;
  }

  v10 = 1;
  do
  {
    result = v8 == -4096;
    if (v8 == -4096)
    {
      break;
    }

    result = 0;
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v3 + 8 * v7);
  }

  while (v8 != a2);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    result = 0;
LABEL_19:
    *a3 = v14;
    return result;
  }

  v5 = *a1;
  v7 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(*a2, 0, *a2, a2[1]);
  v8 = v4 - 1;
  v9 = (v4 - 1) & v7;
  v10 = *a2;
  v11 = a2[1];
  if (!v11)
  {
    if (v10 != -8192)
    {
      v12 = 0;
      v32 = 1;
      v14 = (v5 + 40 * v9);
      v33 = *v14;
      if (*v14 == -8192)
      {
        goto LABEL_49;
      }

      while (v33 != -4096)
      {
        if (!v14[1])
        {
          goto LABEL_28;
        }

        do
        {
LABEL_49:
          if (v12)
          {
            v34 = 0;
          }

          else
          {
            v34 = v33 == -8192;
          }

          if (v34)
          {
            v12 = v14;
          }

          v35 = v9 + v32++;
          v9 = v35 & v8;
          v14 = (v5 + 40 * v9);
          v33 = *v14;
        }

        while (*v14 == -8192);
      }

      goto LABEL_27;
    }

    v22 = 1;
    v14 = (v5 + 40 * v9);
    v23 = *v14;
    if (*v14 != -8192)
    {
      while (v23 != -4096)
      {
        if (v14[1])
        {
          v24 = v9 + v22++;
          v9 = v24 & v8;
          v14 = (v5 + 40 * v9);
          v23 = *v14;
          if (*v14 != -8192)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v12 = 0;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v10 != -8192)
  {
    v12 = 0;
    v25 = 1;
    v14 = (v5 + 40 * v9);
    v26 = *v14;
    if (*v14 == -8192)
    {
      goto LABEL_39;
    }

    while (v26 != -4096)
    {
      if (v11 == v14[1])
      {
        v27 = (v26 + 24);
        v28 = (v10 + 24);
        v29 = a2[1];
        while (*v28 == *v27)
        {
          v27 += 4;
          v28 += 4;
          result = 1;
          if (!--v29)
          {
            goto LABEL_19;
          }
        }
      }

      do
      {
LABEL_39:
        if (v12)
        {
          v30 = 0;
        }

        else
        {
          v30 = v26 == -8192;
        }

        if (v30)
        {
          v12 = v14;
        }

        v31 = v9 + v25++;
        v9 = v31 & v8;
        v14 = (v5 + 40 * v9);
        v26 = *v14;
      }

      while (*v14 == -8192);
    }

    goto LABEL_27;
  }

  v12 = 0;
  v13 = 1;
  v14 = (v5 + 40 * v9);
  v15 = *v14;
  if (*v14 == -8192)
  {
LABEL_28:
    result = 1;
    *a3 = v14;
    return result;
  }

  while (v15 != -4096)
  {
    if (v11 == v14[1])
    {
      v16 = (v15 + 24);
      v17 = -8168;
      v18 = a2[1];
      while (*v17 == *v16)
      {
        v16 += 4;
        v17 += 32;
        if (!--v18)
        {
          goto LABEL_28;
        }
      }
    }

    if (v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 == -8192;
    }

    if (v19)
    {
      v12 = v14;
    }

    v20 = v9 + v13++;
    v9 = v20 & v8;
    v14 = (v5 + 40 * v9);
    v15 = *v14;
    if (*v14 == -8192)
    {
      goto LABEL_28;
    }
  }

LABEL_27:
  if (v10 == -4096)
  {
    goto LABEL_28;
  }

  result = 0;
  if (v12)
  {
    v14 = v12;
  }

  *a3 = v14;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (a2 == a4)
  {
    v5 = 0;
  }

  else
  {
    *&v63 = *(a1 + 32 * a2 + 24);
    if (a2 + 1 == a4)
    {
      v5 = 8;
      v4 = a2 + 1;
    }

    else
    {
      *(&v63 + 1) = *(a1 + 32 * (a2 + 1) + 24);
      if (a2 + 2 == a4)
      {
        v5 = 16;
        v4 = a2 + 2;
      }

      else
      {
        *&v64 = *(a1 + 32 * (a2 + 2) + 24);
        if (a2 + 3 == a4)
        {
          v5 = 24;
          v4 = a2 + 3;
        }

        else
        {
          *(&v64 + 1) = *(a1 + 32 * (a2 + 3) + 24);
          if (a2 + 4 == a4)
          {
            v5 = 32;
            v4 = a2 + 4;
          }

          else
          {
            *&v65 = *(a1 + 32 * (a2 + 4) + 24);
            if (a2 + 5 == a4)
            {
              v5 = 40;
              v4 = a2 + 5;
            }

            else
            {
              *(&v65 + 1) = *(a1 + 32 * (a2 + 5) + 24);
              if (a2 + 6 == a4)
              {
                v5 = 48;
                v4 = a2 + 6;
              }

              else
              {
                *&v66 = *(a1 + 32 * (a2 + 6) + 24);
                if (a2 + 7 == a4)
                {
                  v5 = 56;
                  v4 = a2 + 7;
                }

                else
                {
                  *(&v66 + 1) = *(a1 + 32 * (a2 + 7) + 24);
                  v4 = a2 + 8;
                  v5 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  if (v4 == a4)
  {
    return llvm::hashing::detail::hash_short(&v63, v5, 0xFF51AFD7ED558CCDLL);
  }

  v7 = (0xB492B66FBE98F273 * __ROR8__(*(&v63 + 1) - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
  v8 = *(&v65 + 1) - 0x4B6D499041670D8DLL * __ROR8__(v66 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
  v9 = __ROR8__(v63 + 0x298DF016A9F64655 + *(&v63 + 1) + v64, 44) + v63 + 0x298DF016A9F64655 + __ROR8__(v7 + v63 + 0x298DF016A9F64655 + *(&v64 + 1) - 0xAE502812AB8D92, 21);
  v10 = v63 + 0x298DF016A9F64655 + *(&v63 + 1) + v64 + *(&v64 + 1);
  v11 = __ROR8__(*(&v65 + 1) + v66 + v65 + 0x4BF62CB950C3753ALL, 44) + v65 + 0x4BF62CB950C3753ALL + __ROR8__(v8 + v64 + v65 + 0x4BF62CB950C3753ALL + *(&v66 + 1), 21);
  v12 = *(&v65 + 1) + v66 + v65 + 0x4BF62CB950C3753ALL + *(&v66 + 1);
  v13 = 0x544962662A7EE1A4;
  v14 = 64;
  do
  {
    v21 = v4;
    *&v63 = *(a1 + 32 * v4++ + 24);
    v22 = v4 == a4;
    if (v4 == a4)
    {
      v23 = &v63;
      v24 = 56;
      v25 = &v63 + 8;
      v26 = 8;
    }

    else
    {
      *(&v63 + 1) = *(a1 + 32 * v4 + 24);
      v4 = v21 + 2;
      v22 = v21 + 2 == a4;
      if (v21 + 2 == a4)
      {
        v24 = 48;
        v23 = (&v63 + 8);
        v25 = &v64;
        v26 = 16;
      }

      else
      {
        *&v64 = *(a1 + 32 * v4 + 24);
        v4 = v21 + 3;
        v22 = v21 + 3 == a4;
        if (v21 + 3 == a4)
        {
          v24 = 40;
          v23 = &v64;
          v25 = &v64 + 8;
          v26 = 24;
        }

        else
        {
          *(&v64 + 1) = *(a1 + 32 * v4 + 24);
          v4 = v21 + 4;
          v22 = v21 + 4 == a4;
          if (v21 + 4 == a4)
          {
            v24 = 32;
            v23 = (&v64 + 8);
            v25 = &v65;
            v26 = 32;
          }

          else
          {
            *&v65 = *(a1 + 32 * v4 + 24);
            v4 = v21 + 5;
            v22 = v21 + 5 == a4;
            if (v21 + 5 == a4)
            {
              v24 = 24;
              v23 = &v65;
              v25 = &v65 + 8;
              v26 = 40;
            }

            else
            {
              *(&v65 + 1) = *(a1 + 32 * v4 + 24);
              v4 = v21 + 6;
              v22 = v21 + 6 == a4;
              if (v21 + 6 == a4)
              {
                v24 = 16;
                v23 = (&v65 + 8);
                v25 = &v66;
                v26 = 48;
              }

              else
              {
                *&v66 = *(a1 + 32 * v4 + 24);
                v4 = v21 + 7;
                v22 = v21 + 7 == a4;
                if (v21 + 7 != a4)
                {
                  *(&v66 + 1) = *(a1 + 32 * v4 + 24);
                  v4 = v21 + 8;
                  v22 = v21 + 8 == a4;
                  v26 = 64;
                  goto LABEL_21;
                }

                v24 = 8;
                v23 = &v66;
                v25 = &v66 + 8;
                v26 = 56;
              }
            }
          }
        }
      }
    }

    v27 = v26;
    if (v26 == v24)
    {
      v28 = a4 + ~v21;
      if (v28 >= 7)
      {
        v28 = 7;
      }

      if (55 - 8 * v28 >= ((8 * (v28 & 0xFFFFFFFFFFFFFFFLL)) | 7))
      {
        v29 = (8 * (v28 & 0xFFFFFFFFFFFFFFFLL)) | 7;
      }

      else
      {
        v29 = 55 - 8 * v28;
      }

      v30 = &v63;
      v31 = &v63 >= (v23 + v29 + 9) || v25 >= &v63 + v29 + 1;
      v32 = v26;
      if (!v31)
      {
        goto LABEL_72;
      }

      if (v29 < 0x1F)
      {
        v33 = 0;
LABEL_68:
        v52 = &v25[v33];
        v53 = (&v63 + v33);
        v54 = ~v29 + v33;
        do
        {
          v55 = *v53;
          *v53++ = *v52;
          *v52 = v55;
          v52 += 8;
          v54 += 8;
        }

        while (v54);
        goto LABEL_21;
      }

      v45 = v29 + 1;
      v33 = (v29 + 1) & 0x60;
      v46 = v63;
      v47 = v64;
      v48 = *(v25 + 1);
      v63 = *(&v63 + v26);
      v64 = v48;
      *(&v63 + v26) = v46;
      *(v25 + 1) = v47;
      if (v33 != 32)
      {
        v49 = v65;
        v50 = v66;
        v51 = *(v25 + 3);
        v65 = *(v25 + 2);
        v66 = v51;
        *(v25 + 2) = v49;
        *(v25 + 3) = v50;
      }

      if (v45 != v33)
      {
        if ((v45 & 0x18) != 0)
        {
          goto LABEL_68;
        }

        v30 = &v63 + v33;
        v32 = v26 + v33;
LABEL_72:
        v56 = v30 + 1;
        do
        {
          v57 = *(v56 - 1);
          *(v56 - 1) = *(&v63 + v32);
          *(&v63 + v32) = v57;
          if (v56 == v25)
          {
            break;
          }

          ++v56;
        }

        while (v32++ != 63);
      }
    }

    else
    {
      do
      {
        v34 = v27;
        v27 = v24;
        v24 = v34 % v24;
      }

      while (v24);
      v35 = (&v63 + v27);
      do
      {
        v37 = *(v35 - 1);
        v35 = (v35 - 1);
        v36 = v37;
        v38 = (v35 + v26);
        v39 = v35;
        do
        {
          v40 = v39;
          v39 = v38;
          *v40 = *v38;
          v41 = (&v67 - v38);
          v42 = __OFSUB__(v26, v41);
          v44 = v26 - v41;
          v43 = (v44 < 0) ^ v42;
          v38 = (&v63 + v44);
          if (v43)
          {
            v38 = (v39 + v26);
          }
        }

        while (v38 != v35);
        *v39 = v36;
      }

      while (v35 != &v63);
    }

LABEL_21:
    v15 = v8 + v10 + v13 + *(&v63 + 1);
    v8 = *(&v65 + 1) + v10 - 0x4B6D499041670D8DLL * __ROR8__(v8 + v9 + v66, 42);
    v16 = v63 - 0x4B6D499041670D8DLL * v9;
    v17 = 0xB492B66FBE98F273 * __ROR8__(v15, 37);
    v18 = __ROR8__(v7 + v12, 33);
    v19 = v17 ^ v11;
    v9 = __ROR8__(v16 + *(&v63 + 1) + v64, 44) + v16 + __ROR8__(v19 + v12 + v16 + *(&v64 + 1), 21);
    v13 = 0xB492B66FBE98F273 * v18;
    v20 = 0xB492B66FBE98F273 * v18 + v11 + v65;
    v10 = v16 + *(&v63 + 1) + v64 + *(&v64 + 1);
    v11 = __ROR8__(v8 + v64 + v20 + *(&v66 + 1), 21) + v20 + __ROR8__(*(&v65 + 1) + v66 + v20, 44);
    v12 = *(&v65 + 1) + v66 + v20 + *(&v66 + 1);
    v14 += v26;
    v7 = v19;
  }

  while (!v22);
  v59 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v12)));
  v60 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v11)));
  v61 = 0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47)) - 0x4B6D499041670D8DLL * ((v14 ^ (v14 >> 47)) + v18);
  v62 = 0x9DDFEA08EB382D69 * (v61 ^ (v19 - 0x4B6D499041670D8DLL * (v8 ^ (v8 >> 47)) - 0x622015F714C7D297 * (v59 ^ (v59 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
}

_OWORD *llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 40 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::moveFromOldBuckets(a1, v4, v4 + v10);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = (result + 40 * v11);
      do
      {
        *v13 = xmmword_1E0970190;
        v13 = (v13 + 40);
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = (result + 40 * (v14 & 0xFFFFFFFFFFFFFFELL));
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_1E0970190;
      *(v15 + 40) = xmmword_1E0970190;
      v15 += 5;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = (v7 + 40 * v6);
      do
      {
        *v9 = xmmword_1E0970190;
        v9 = (v9 + 40);
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = (v7 + 40 * (v10 & 0xFFFFFFFFFFFFFFELL));
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = xmmword_1E0970190;
      *(v11 + 40) = xmmword_1E0970190;
      v11 += 5;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(a1, v4, &v17);
        v14 = v17;
        *v17 = *v4;
        *(v14 + 3) = 0x100000000;
        *(v14 + 2) = v14 + 2;
        v15 = (v14 + 1);
        if (*(v4 + 24))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v15, (v4 + 16));
        }

        ++*(a1 + 8);
        v16 = *(v4 + 16);
        if ((v4 + 32) != v16)
        {
          free(v16);
        }
      }

      v4 += 40;
    }

    while (v4 != a3);
  }
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) < a2)
  {

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::growAndAssign(a1, a2, a3);
    return;
  }

  v6 = *(a1 + 8);
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v7)
  {
    v8 = *a1;
    while (1)
    {
      if (v8 == a3)
      {
        goto LABEL_11;
      }

      v9 = *(a3 + 8);
      v10 = *(v8 + 8);
      if (v10 >= v9)
      {
        if (v9)
        {
          memmove(*v8, *a3, 8 * v9);
        }

        goto LABEL_10;
      }

      if (*(v8 + 12) >= v9)
      {
        if (v10)
        {
          memmove(*v8, *a3, 8 * v10);
          v11 = *(a3 + 8) - v10;
          if (v11)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v10 = 0;
          v11 = *(a3 + 8);
          if (*(a3 + 8))
          {
LABEL_23:
            memcpy((*v8 + 8 * v10), (*a3 + 8 * v10), 8 * v11);
          }
        }
      }

      else
      {
        *(v8 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 16, v9, 8);
        v10 = 0;
        v11 = *(a3 + 8);
        if (*(a3 + 8))
        {
          goto LABEL_23;
        }
      }

LABEL_10:
      *(v8 + 8) = v9;
LABEL_11:
      v8 += 80;
      if (!--v7)
      {
        v6 = *(a1 + 8);
        break;
      }
    }
  }

  v12 = v6 - a2;
  if (v6 < a2)
  {
    v13 = (*a1 + 80 * v6);
    while (1)
    {
      v16 = v13 + 2;
      *v13 = v13 + 2;
      v13[1] = 0x800000000;
      if (v13 == a3)
      {
        goto LABEL_30;
      }

      v17 = *(a3 + 8);
      if (!*(a3 + 8))
      {
        goto LABEL_30;
      }

      if (v17 < 9)
      {
        v14 = *(a3 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v13 + 2), *(a3 + 8), 8);
        v14 = *(a3 + 8);
        if (!v14)
        {
          goto LABEL_29;
        }

        v16 = *v13;
      }

      memcpy(v16, *a3, 8 * v14);
LABEL_29:
      *(v13 + 2) = v17;
LABEL_30:
      v13 += 10;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_41;
      }
    }
  }

  if (v6 > a2)
  {
    v18 = 80 * v6;
    v19 = (v18 + *a1 - 80);
    v20 = 80 * a2 - v18;
    do
    {
      if (v19 + 2 != *v19)
      {
        free(*v19);
      }

      v19 -= 10;
      v20 += 80;
    }

    while (v20);
  }

LABEL_41:
  *(a1 + 8) = a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v19);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    for (i = a2; i; --i)
    {
      v12 = v9 + 2;
      *v9 = v9 + 2;
      v9[1] = 0x800000000;
      if (v9 == a3)
      {
        goto LABEL_6;
      }

      v13 = *(a3 + 8);
      if (!*(a3 + 8))
      {
        goto LABEL_6;
      }

      if (v13 < 9)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 2), *(a3 + 8), 8);
        v11 = *(a3 + 8);
        if (!v11)
        {
          goto LABEL_5;
        }

        v12 = *v9;
      }

      memcpy(v12, *a3, 8 * v11);
LABEL_5:
      *(v9 + 2) = v13;
LABEL_6:
      v9 += 10;
    }
  }

  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = &v14[80 * v15 - 80];
    v17 = -80 * v15;
    do
    {
      if (v16 + 2 != *v16)
      {
        free(*v16);
      }

      v16 -= 10;
      v17 += 80;
    }

    while (v17);
    v14 = *a1;
  }

  v18 = v19;
  if (v14 != v6)
  {
    free(v14);
  }

  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = v18;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 80 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x800000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v9, v6);
      }

      v9 += 10;
      v6 += 80;
      v8 -= 80;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = (v6 + 80 * v10 - 80);
      v12 = -80 * v10;
      do
      {
        if (v11 + 2 != *v11)
        {
          free(*v11);
        }

        v11 -= 10;
        v12 += 80;
      }

      while (v12);
      v6 = *a1;
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

_DWORD *llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(8 * v8, 4uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x3FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFD)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & (37 * v24);
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &result[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 8);
      }

      while (v17 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x3FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[80 * v7 - 80];
        v9 = -80 * v7;
        do
        {
          if (v8 + 2 != *v8)
          {
            free(*v8);
          }

          v8 -= 10;
          v9 += 80;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_12:
      *v10 = 0;
      return a1;
    }

    v10 = (a2 + 8);
    v12 = *(a2 + 8);
    v13 = *(a1 + 8);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = 80 * v12;
        do
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(v16, v5);
          v5 += 10;
          v16 += 80;
          v17 -= 80;
        }

        while (v17);
        v18 = *a1;
        LODWORD(v13) = *(a1 + 8);
      }

      else
      {
        v18 = *a1;
      }

      v30 = v18 + 80 * v13;
      while (v30 != v16)
      {
        v32 = *(v30 - 80);
        v30 -= 80;
        v31 = v32;
        if ((v30 + 16) != v32)
        {
          free(v31);
        }
      }

      *(a1 + 8) = v12;
      v33 = *(a2 + 8);
      if (v33)
      {
        v34 = (*a2 + 80 * v33 - 80);
        v35 = -80 * v33;
        do
        {
          if (v34 + 2 != *v34)
          {
            free(*v34);
          }

          v34 -= 10;
          v35 += 80;
        }

        while (v35);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v12)
    {
      if (!v13)
      {
        v13 = 0;
        v21 = *a2;
        v22 = *(a2 + 8);
        if (*(a2 + 8))
        {
LABEL_31:
          v23 = *a1;
          v24 = 80 * v13;
          v25 = 80 * v22;
          do
          {
            v26 = (v23 + v24);
            *v26 = v23 + v24 + 16;
            v26[1] = 0x800000000;
            if (LODWORD(v21[v24 / 8 + 1]))
            {
              llvm::SmallVectorImpl<unsigned long long>::operator=(v26, &v21[v24 / 8]);
            }

            v23 += 80;
            v25 -= 80;
            v21 += 10;
          }

          while (v24 != v25);
          v21 = *a2;
        }

LABEL_36:
        *(a1 + 8) = v12;
        v27 = *v10;
        if (v27)
        {
          v28 = &v21[10 * v27 - 10];
          v29 = -80 * v27;
          do
          {
            if (v28 + 2 != *v28)
            {
              free(*v28);
            }

            v28 -= 10;
            v29 += 80;
          }

          while (v29);
        }

        goto LABEL_12;
      }

      v19 = *a1;
      v20 = 80 * v13;
      do
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v19, v5);
        v5 += 10;
        v19 += 80;
        v20 -= 80;
      }

      while (v20);
    }

    else
    {
      if (v13)
      {
        v14 = (*a1 + 80 * v13 - 80);
        v15 = -80 * v13;
        do
        {
          if (v14 + 2 != *v14)
          {
            free(*v14);
          }

          v14 -= 10;
          v15 += 80;
        }

        while (v15);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::grow(a1, v12);
      v13 = 0;
    }

    v21 = *a2;
    v22 = *(a2 + 8);
    if (v13 != v22)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  return a1;
}

void ****llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,16u>,true,llvm::GraphTraits<mlir::Block *>>::df_iterator(void ****a1, char *a2, void ***this)
{
  a1[1] = 0;
  v5 = (a1 + 1);
  *a1 = this;
  a1[2] = 0;
  a1[3] = 0;
  v6 = *this;
  if (this[1] == *this)
  {
    v11 = *(this + 5);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = *this;
      while (*v13 != a2)
      {
        ++v13;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      return a1;
    }

LABEL_9:
    if (v11 < *(this + 4))
    {
      *(this + 5) = v11 + 1;
      v6[v11] = a2;
      v8 = a1[2];
      v9 = a1[3];
      if (v8 < v9)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  if (v7)
  {
    v8 = a1[2];
    v9 = a1[3];
    if (v8 < v9)
    {
LABEL_4:
      *v8 = a2;
      *(v8 + 8) = 0;
      v10 = (v8 + 4);
      *(v8 + 24) = 0;
LABEL_23:
      a1[2] = v10;
      return a1;
    }

LABEL_11:
    v14 = *v5;
    v15 = v8 - v14;
    v16 = (v8 - v14) >> 5;
    v17 = v16 + 1;
    if ((v16 + 1) >> 59)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v18 = v9 - v14;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 >> 59)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v20 = operator new(32 * v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[32 * v16];
    *v21 = a2;
    v21[8] = 0;
    v21[24] = 0;
    v10 = v21 + 32;
    memcpy(v20, v14, v15);
    a1[1] = v20;
    a1[2] = v10;
    a1[3] = &v20[32 * v19];
    if (v14)
    {
      operator delete(v14);
    }

    goto LABEL_23;
  }

  return a1;
}

void llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,16u>,true,llvm::GraphTraits<mlir::Block *>>::toNext(llvm::SmallPtrSetImplBase **a1)
{
  v2 = a1[2];
LABEL_3:
  v4 = *(v2 - 32);
  if ((*(v2 - 8) & 1) == 0)
  {
    mlir::SuccessorRange::SuccessorRange(v25, *(v2 - 32));
    *(v2 - 24) = v25[0];
    *(v2 - 16) = 0;
    *(v2 - 8) = 1;
  }

  while (1)
  {
    while (1)
    {
      mlir::SuccessorRange::SuccessorRange(v25, v4);
      v6 = *(v2 - 16);
      if (v6 == v25[1])
      {
        v3 = a1[1];
        v2 = a1[2] - 32;
        a1[2] = v2;
        if (v3 == v2)
        {
          return;
        }

        goto LABEL_3;
      }

      v7 = *(v2 - 24);
      *(v2 - 16) = v6 + 1;
      v8 = *(v7 + 32 * v6 + 24);
      v9 = *a1;
      v10 = **a1;
      if (*(*a1 + 1) == v10)
      {
        break;
      }

LABEL_6:
      llvm::SmallPtrSetImplBase::insert_imp_big(v9, v8);
      if (v5)
      {
        goto LABEL_15;
      }
    }

    v11 = *(v9 + 5);
    if (!v11)
    {
      break;
    }

    v12 = 8 * v11;
    v13 = **a1;
    while (*v13 != v8)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_5:
  if (v11 >= *(v9 + 4))
  {
    goto LABEL_6;
  }

  *(v9 + 5) = v11 + 1;
  v10[v11] = v8;
LABEL_15:
  v14 = a1[2];
  v15 = a1[3];
  if (v14 >= v15)
  {
    v17 = a1[1];
    v18 = v14 - v17;
    v19 = (v14 - v17) >> 5;
    v20 = v19 + 1;
    if ((v19 + 1) >> 59)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v21 = v15 - v17;
    if (v21 >> 4 > v20)
    {
      v20 = v21 >> 4;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFE0)
    {
      v22 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 >> 59)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v23 = operator new(32 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[32 * v19];
    *v24 = v8;
    v24[8] = 0;
    v24[24] = 0;
    v16 = v24 + 32;
    memcpy(v23, v17, v18);
    a1[1] = v23;
    a1[2] = v16;
    a1[3] = &v23[32 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v14 = v8;
    v14[8] = 0;
    v16 = v14 + 32;
    v14[24] = 0;
  }

  a1[2] = v16;
}

uint64_t mlir::verifyListOfOperandsOrIntegers(mlir::Block **a1, void *a2, const char *a3, unsigned int a4, int64x2_t *a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v11 = a4;
  if (a6 == a4)
  {
    if (!a6)
    {
      v42 = 0;
      if (!a8)
      {
        return 1;
      }

LABEL_32:
      v78[0] = "expected ";
      v79 = 259;
      mlir::Operation::emitError(a1, v78, &v84);
      if (v84)
      {
        LODWORD(v80) = 5;
        v81 = v42;
        v43 = &v80;
        v44 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v80 && v86 + 24 * v87 > &v80)
          {
            v73 = &v80 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v44 = v86;
            v43 = v86 + v73;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v43 = &v80;
            v44 = v86;
          }
        }

        v45 = &v44[24 * v87];
        v46 = *v43;
        *(v45 + 2) = *(v43 + 2);
        *v45 = v46;
        v47 = ++v87;
        if (v84)
        {
          LODWORD(v80) = 3;
          v81 = " dynamic ";
          v82 = 9;
          v48 = &v80;
          v49 = v86;
          if (v47 >= v88)
          {
            if (v86 <= &v80 && v86 + 24 * v47 > &v80)
            {
              v74 = &v80 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v47 + 1, 24);
              v49 = v86;
              v48 = v86 + v74;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v47 + 1, 24);
              v48 = &v80;
              v49 = v86;
            }
          }

          v50 = &v49[24 * v87];
          v51 = *v48;
          *(v50 + 2) = *(v48 + 2);
          *v50 = v51;
          ++v87;
          if (v84)
          {
            v83 = 261;
            v80 = a2;
            v81 = a3;
            mlir::Diagnostic::operator<<(v85, &v80);
            if (v84)
            {
              LODWORD(v80) = 3;
              v81 = " values";
              v82 = 7;
              v52 = &v80;
              v53 = v86;
              if (v87 >= v88)
              {
                if (v86 <= &v80 && v86 + 24 * v87 > &v80)
                {
                  v77 = &v80 - v86;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                  v53 = v86;
                  v52 = v86 + v77;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                  v52 = &v80;
                  v53 = v86;
                }
              }

              v54 = &v53[24 * v87];
              v55 = *v52;
              *(v54 + 2) = *(v52 + 2);
              *v54 = v55;
              ++v87;
            }
          }
        }
      }

      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v56 = __p;
        if (__p)
        {
          v57 = v93;
          v58 = __p;
          if (v93 != __p)
          {
            do
            {
              v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
            }

            while (v57 != v56);
            v58 = __p;
          }

          v93 = v56;
          operator delete(v58);
        }

        v37 = v90;
        if (!v90)
        {
          goto LABEL_66;
        }

        v59 = v91;
        v39 = v90;
        if (v91 == v90)
        {
LABEL_65:
          v91 = v37;
          operator delete(v39);
LABEL_66:
          if (v86 != v89)
          {
            free(v86);
          }

          return v33;
        }

        do
        {
          v61 = *--v59;
          v60 = v61;
          *v59 = 0;
          if (v61)
          {
            operator delete[](v60);
          }
        }

        while (v59 != v37);
LABEL_64:
        v39 = v90;
        goto LABEL_65;
      }

      return v33;
    }

    v12 = (a6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= 3)
    {
      v62 = v12 + 1;
      v63 = (v12 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v14 = &a5->i64[v63];
      v64 = a5 + 1;
      v65 = 0uLL;
      v66 = vnegq_f64(0);
      v67 = v63;
      v68 = 0uLL;
      do
      {
        v65 = vsubq_s64(v65, vceqq_s64(v64[-1], v66));
        v68 = vsubq_s64(v68, vceqq_s64(*v64, v66));
        v64 += 2;
        v67 -= 4;
      }

      while (v67);
      v13 = vaddvq_s64(vaddq_s64(v68, v65));
      if (v62 == v63)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v13 = 0;
      v14 = a5;
    }

    do
    {
      v69 = *v14++;
      if (v69 == 0x8000000000000000)
      {
        ++v13;
      }
    }

    while (v14 != (a5 + 8 * a6));
LABEL_62:
    v42 = v13;
    if (a8 == v13)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v78[0] = "expected ";
  v79 = 259;
  mlir::Operation::emitError(a1, v78, &v84);
  if (v84)
  {
    LODWORD(v80) = 5;
    v81 = v11;
    v15 = &v80;
    v16 = v86;
    if (v87 >= v88)
    {
      if (v86 <= &v80 && v86 + 24 * v87 > &v80)
      {
        v71 = &v80 - v86;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
        v16 = v86;
        v15 = v86 + v71;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
        v15 = &v80;
        v16 = v86;
      }
    }

    v17 = &v16[24 * v87];
    v18 = *v15;
    *(v17 + 2) = *(v15 + 2);
    *v17 = v18;
    v19 = ++v87;
    if (v84)
    {
      LODWORD(v80) = 3;
      v81 = " ";
      v82 = 1;
      v20 = &v80;
      v21 = v86;
      if (v19 >= v88)
      {
        if (v86 <= &v80 && v86 + 24 * v19 > &v80)
        {
          v72 = &v80 - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v19 + 1, 24);
          v21 = v86;
          v20 = v86 + v72;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v19 + 1, 24);
          v20 = &v80;
          v21 = v86;
        }
      }

      v22 = &v21[24 * v87];
      v23 = *v20;
      *(v22 + 2) = *(v20 + 2);
      *v22 = v23;
      ++v87;
      if (v84)
      {
        v83 = 261;
        v80 = a2;
        v81 = a3;
        mlir::Diagnostic::operator<<(v85, &v80);
        if (v84)
        {
          LODWORD(v80) = 3;
          v81 = " values, got ";
          v82 = 13;
          v24 = &v80;
          v25 = v86;
          if (v87 >= v88)
          {
            if (v86 <= &v80 && v86 + 24 * v87 > &v80)
            {
              v75 = &v80 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v25 = v86;
              v24 = v86 + v75;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v24 = &v80;
              v25 = v86;
            }
          }

          v26 = &v25[24 * v87];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          v28 = ++v87;
          if (v84)
          {
            LODWORD(v80) = 5;
            v81 = a6;
            v29 = &v80;
            v30 = v86;
            if (v28 >= v88)
            {
              if (v86 <= &v80 && v86 + 24 * v28 > &v80)
              {
                v76 = &v80 - v86;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v28 + 1, 24);
                v30 = v86;
                v29 = v86 + v76;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v28 + 1, 24);
                v29 = &v80;
                v30 = v86;
              }
            }

            v31 = &v30[24 * v87];
            v32 = *v29;
            *(v31 + 2) = *(v29 + 2);
            *v31 = v32;
            ++v87;
          }
        }
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
  if (v84)
  {
    mlir::InFlightDiagnostic::report(&v84);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
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
    }

    v37 = v90;
    if (!v90)
    {
      goto LABEL_66;
    }

    v38 = v91;
    v39 = v90;
    if (v91 == v90)
    {
      goto LABEL_65;
    }

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
    goto LABEL_64;
  }

  return v33;
}

uint64_t mlir::detail::verifyOffsetSizeAndStrideOp(mlir::Block **a1, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  v4 = (*(a2 + 8))(a2, a1);
  v6 = v5;
  (*(a2 + 64))(&v116, a2, a1);
  if (v117 == 1 && v4 == 1)
  {
    v9 = 0;
  }

  else
  {
    (*(a2 + 64))(&v132, a2, a1);
    v8 = v133;
    (*(a2 + 72))(&v129, a2, a1);
    v9 = v8 != v130;
    if (v129 != v131)
    {
      free(v129);
    }

    if (v132 != v134)
    {
      free(v132);
    }
  }

  if (v116 != &v118)
  {
    free(v116);
  }

  if (v9)
  {
    v111[0] = "expected mixed offsets rank to match mixed sizes rank (";
    v112 = 259;
    mlir::Operation::emitError(a1, v111, &v116);
    (*(a2 + 64))(&v132, a2, a1);
    if (v116)
    {
      LODWORD(v129) = 5;
      v130 = v133;
      v10 = &v129;
      v11 = v119;
      if (v120 >= v121)
      {
        if (v119 <= &v129 && v119 + 24 * v120 > &v129)
        {
          v101 = &v129 - v119;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v11 = v119;
          v10 = v119 + v101;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v10 = &v129;
          v11 = v119;
        }
      }

      v12 = &v11[24 * v120];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v120;
      if (v116)
      {
        LODWORD(v129) = 3;
        v130 = " vs ";
        v131[0] = 4;
        v15 = &v129;
        v16 = v119;
        if (v14 >= v121)
        {
          if (v119 <= &v129 && v119 + 24 * v14 > &v129)
          {
            v103 = &v129 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v14 + 1, 24);
            v16 = v119;
            v15 = v119 + v103;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v14 + 1, 24);
            v15 = &v129;
            v16 = v119;
          }
        }

        v17 = &v16[24 * v120];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v120;
      }
    }

    (*(a2 + 72))(&v129, a2, a1);
    if (v116)
    {
      v113 = 5;
      v114 = v130;
      v19 = &v113;
      v20 = v119;
      if (v120 >= v121)
      {
        if (v119 <= &v113 && v119 + 24 * v120 > &v113)
        {
          v102 = &v113 - v119;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v20 = v119;
          v19 = (v119 + v102);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v19 = &v113;
          v20 = v119;
        }
      }

      v21 = &v20[24 * v120];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      v23 = ++v120;
      if (v116)
      {
        v113 = 3;
        v114 = ") so the rank of the result type is well-formed.";
        v115 = 48;
        v24 = &v113;
        v25 = v119;
        if (v23 >= v121)
        {
          if (v119 <= &v113 && v119 + 24 * v23 > &v113)
          {
            v104 = &v113 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v23 + 1, 24);
            v25 = v119;
            v24 = (v119 + v104);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v23 + 1, 24);
            v24 = &v113;
            v25 = v119;
          }
        }

        v26 = &v25[24 * v120];
        v27 = *v24;
        *(v26 + 2) = *(v24 + 2);
        *v26 = v27;
        ++v120;
      }
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
    if (v129 != v131)
    {
      free(v129);
    }

    if (v132 != v134)
    {
      free(v132);
    }

    if (v116)
    {
      mlir::InFlightDiagnostic::report(&v116);
    }

    if (v128 == 1)
    {
      if (v127 != &v128)
      {
        free(v127);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v126;
        v31 = __p;
        if (v126 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v126 = v29;
        operator delete(v31);
      }

      v32 = v123;
      if (!v123)
      {
        goto LABEL_112;
      }

      v33 = v124;
      v34 = v123;
      if (v124 == v123)
      {
LABEL_111:
        v124 = v32;
        operator delete(v34);
LABEL_112:
        if (v119 != v122)
        {
          free(v119);
        }

        return v28;
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
LABEL_110:
      v34 = v123;
      goto LABEL_111;
    }
  }

  else
  {
    (*(a2 + 72))(&v116, a2, a1);
    v37 = v117;
    (*(a2 + 80))(&v132, a2, a1);
    v38 = v133;
    if (v132 != v134)
    {
      free(v132);
    }

    if (v116 != &v118)
    {
      free(v116);
    }

    if (v37 == v38)
    {
      v39 = (*(a2 + 40))(a2, a1);
      v41 = v40;
      v42 = (*(a2 + 16))(a2, a1);
      mlir::ValueRange::ValueRange(&v116, v42, v43);
      if ((mlir::verifyListOfOperandsOrIntegers(a1, "offset", 6, v4, v39, v41, v116, v117) & 1) == 0)
      {
        return 0;
      }

      v44 = (*(a2 + 48))(a2, a1);
      v46 = v45;
      v47 = (*(a2 + 24))(a2, a1);
      mlir::ValueRange::ValueRange(&v116, v47, v48);
      if ((mlir::verifyListOfOperandsOrIntegers(a1, "size", 4, HIDWORD(v4), v44, v46, v116, v117) & 1) == 0)
      {
        return 0;
      }

      v49 = (*(a2 + 56))(a2, a1);
      v51 = v50;
      v52 = (*(a2 + 32))(a2, a1);
      mlir::ValueRange::ValueRange(&v116, v52, v53);
      if ((mlir::verifyListOfOperandsOrIntegers(a1, "stride", 6, v6, v49, v51, v116, v117) & 1) == 0)
      {
        return 0;
      }

      v54 = (*(a2 + 40))(a2, a1);
      if (v55)
      {
        v56 = 8 * v55;
        while (1)
        {
          v57 = *v54;
          if (*v54 >= 0x8000000000000001)
          {
            break;
          }

          ++v54;
          v56 -= 8;
          if (!v56)
          {
            goto LABEL_55;
          }
        }

        v132 = "expected offsets to be non-negative, but got ";
        v135 = 259;
        mlir::Operation::emitError(a1, &v132, &v116);
        if (v116)
        {
          LODWORD(v129) = 2;
          v130 = v57;
          v86 = &v129;
          v87 = v119;
          if (v120 >= v121)
          {
            if (v119 <= &v129 && v119 + 24 * v120 > &v129)
            {
              v109 = &v129 - v119;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
              v87 = v119;
              v86 = v119 + v109;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
              v86 = &v129;
              v87 = v119;
            }
          }

          v88 = &v87[24 * v120];
          v89 = *v86;
          *(v88 + 2) = *(v86 + 2);
          *v88 = v89;
          ++v120;
        }

        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
        if (v116)
        {
          mlir::InFlightDiagnostic::report(&v116);
        }

        if (v128)
        {
          if (v127 != &v128)
          {
            free(v127);
          }

          v90 = __p;
          if (__p)
          {
            v91 = v126;
            v92 = __p;
            if (v126 != __p)
            {
              do
              {
                v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
              }

              while (v91 != v90);
              v92 = __p;
            }

            v126 = v90;
            operator delete(v92);
          }

          v32 = v123;
          if (!v123)
          {
            goto LABEL_112;
          }

          v93 = v124;
          v34 = v123;
          if (v124 == v123)
          {
            goto LABEL_111;
          }

          do
          {
            v95 = *--v93;
            v94 = v95;
            *v93 = 0;
            if (v95)
            {
              operator delete[](v94);
            }
          }

          while (v93 != v32);
          goto LABEL_110;
        }
      }

      else
      {
LABEL_55:
        v58 = (*(a2 + 48))(a2, a1);
        if (v59)
        {
          v60 = 8 * v59;
          v28 = 1;
          while (1)
          {
            v61 = *v58;
            if (*v58 >= 0x8000000000000001)
            {
              break;
            }

            ++v58;
            v60 -= 8;
            if (!v60)
            {
              return v28;
            }
          }

          v132 = "expected sizes to be non-negative, but got ";
          v135 = 259;
          mlir::Operation::emitError(a1, &v132, &v116);
          if (v116)
          {
            LODWORD(v129) = 2;
            v130 = v61;
            v97 = &v129;
            v98 = v119;
            if (v120 >= v121)
            {
              if (v119 <= &v129 && v119 + 24 * v120 > &v129)
              {
                v110 = &v129 - v119;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v98 = v119;
                v97 = v119 + v110;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v97 = &v129;
                v98 = v119;
              }
            }

            v99 = &v98[24 * v120];
            v100 = *v97;
            *(v99 + 2) = *(v97 + 2);
            *v99 = v100;
            ++v120;
          }

          v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
          if (v116)
          {
            mlir::InFlightDiagnostic::report(&v116);
          }

          if (v128 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v117);
          }
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      v111[0] = "expected mixed sizes rank to match mixed strides rank (";
      v112 = 259;
      mlir::Operation::emitError(a1, v111, &v116);
      (*(a2 + 72))(&v132, a2, a1);
      if (v116)
      {
        LODWORD(v129) = 5;
        v130 = v133;
        v62 = &v129;
        v63 = v119;
        if (v120 >= v121)
        {
          if (v119 <= &v129 && v119 + 24 * v120 > &v129)
          {
            v105 = &v129 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v63 = v119;
            v62 = v119 + v105;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v62 = &v129;
            v63 = v119;
          }
        }

        v64 = &v63[24 * v120];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        v66 = ++v120;
        if (v116)
        {
          LODWORD(v129) = 3;
          v130 = " vs ";
          v131[0] = 4;
          v67 = &v129;
          v68 = v119;
          if (v66 >= v121)
          {
            if (v119 <= &v129 && v119 + 24 * v66 > &v129)
            {
              v107 = &v129 - v119;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v66 + 1, 24);
              v68 = v119;
              v67 = v119 + v107;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v66 + 1, 24);
              v67 = &v129;
              v68 = v119;
            }
          }

          v69 = &v68[24 * v120];
          v70 = *v67;
          *(v69 + 2) = *(v67 + 2);
          *v69 = v70;
          ++v120;
        }
      }

      (*(a2 + 80))(&v129, a2, a1);
      if (v116)
      {
        v113 = 5;
        v114 = v130;
        v71 = &v113;
        v72 = v119;
        if (v120 >= v121)
        {
          if (v119 <= &v113 && v119 + 24 * v120 > &v113)
          {
            v106 = &v113 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v72 = v119;
            v71 = (v119 + v106);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v71 = &v113;
            v72 = v119;
          }
        }

        v73 = &v72[24 * v120];
        v74 = *v71;
        *(v73 + 2) = *(v71 + 2);
        *v73 = v74;
        v75 = ++v120;
        if (v116)
        {
          v113 = 3;
          v114 = ") so the rank of the result type is well-formed.";
          v115 = 48;
          v76 = &v113;
          v77 = v119;
          if (v75 >= v121)
          {
            if (v119 <= &v113 && v119 + 24 * v75 > &v113)
            {
              v108 = &v113 - v119;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v75 + 1, 24);
              v77 = v119;
              v76 = (v119 + v108);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v75 + 1, 24);
              v76 = &v113;
              v77 = v119;
            }
          }

          v78 = &v77[24 * v120];
          v79 = *v76;
          *(v78 + 2) = *(v76 + 2);
          *v78 = v79;
          ++v120;
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
      if (v129 != v131)
      {
        free(v129);
      }

      if (v132 != v134)
      {
        free(v132);
      }

      if (v116)
      {
        mlir::InFlightDiagnostic::report(&v116);
      }

      if (v128 == 1)
      {
        if (v127 != &v128)
        {
          free(v127);
        }

        v80 = __p;
        if (__p)
        {
          v81 = v126;
          v82 = __p;
          if (v126 != __p)
          {
            do
            {
              v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
            }

            while (v81 != v80);
            v82 = __p;
          }

          v126 = v80;
          operator delete(v82);
        }

        v32 = v123;
        if (!v123)
        {
          goto LABEL_112;
        }

        v83 = v124;
        v34 = v123;
        if (v124 == v123)
        {
          goto LABEL_111;
        }

        do
        {
          v85 = *--v83;
          v84 = v85;
          *v83 = 0;
          if (v85)
          {
            operator delete[](v84);
          }
        }

        while (v83 != v32);
        goto LABEL_110;
      }
    }
  }

  return v28;
}

llvm::raw_ostream *mlir::printDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v30[0] = a3;
  v30[1] = a4;
  v29[0] = a7;
  v29[1] = a8;
  v32[0] = a9;
  v32[1] = a10;
  v14 = 8 * a11 - 8;
  v15 = 0x7B3C5B28u >> v14;
  v16 = 0x7D3E5D29u >> v14;
  v17 = (*(*a1 + 16))(a1);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, v15);
    if (a6)
    {
LABEL_3:
      v28 = 0;
      v31[0] = v29;
      v31[1] = &v28;
      v31[2] = a1;
      v31[3] = v30;
      v31[4] = &v28 + 4;
      v31[5] = v32;
      mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, *a5);
      if (a6 != 1)
      {
        v19 = 8 * a6;
        v20 = a5 + 1;
        v21 = v19 - 8;
        do
        {
          while (1)
          {
            v23 = (*(*a1 + 16))(a1);
            v24 = v23[4];
            if (v23[3] - v24 > 1uLL)
            {
              break;
            }

            llvm::raw_ostream::write(v23, ", ", 2uLL);
            v22 = *v20++;
            mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, v22);
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_8;
            }
          }

          *v24 = 8236;
          v23[4] += 2;
          v25 = *v20++;
          mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, v25);
          v21 -= 8;
        }

        while (v21);
      }

LABEL_8:
      result = (*(*a1 + 16))(a1);
      v27 = *(result + 4);
      if (v27 >= *(result + 3))
      {
        return llvm::raw_ostream::write(result, v16);
      }

      goto LABEL_12;
    }
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = v15;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a1 + 16))(a1);
  v27 = *(result + 4);
  if (v27 < *(result + 3))
  {
LABEL_12:
    *(result + 4) = v27 + 1;
    *v27 = v16;
    return result;
  }

  return llvm::raw_ostream::write(result, v16);
}

BOOL mlir::parseDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v36 = a5;
  v51 = v53;
  v52 = 0x400000000;
  v34 = xmmword_1E096FAF0;
  v28 = a1;
  v29 = &v33;
  v30 = a2;
  v31 = &v51;
  v32 = &v36;
  v33 = &v35;
  if ((*(*a1 + 392))())
  {
    v8 = (*(*a1 + 32))(a1);
    *a3 = mlir::Builder::getDenseI64ArrayAttr(v8, v51, v52);
    v9 = (*(*a1 + 32))(a1);
    *a4 = mlir::Builder::getDenseBoolArrayAttr(v9, v33, v34);
    v10 = 1;
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    v27 = 257;
    (*(*a1 + 24))(v40, a1, v11, v26);
    if (v40[0])
    {
      v37 = 3;
      v38 = "expected SSA value or integer";
      v39 = 29;
      v12 = &v37;
      v13 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v37 && v41 + 24 * v42 > &v37)
        {
          v25 = &v37 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v13 = v41;
          v12 = (v41 + v25);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v12 = &v37;
          v13 = v41;
        }
      }

      v14 = &v13[24 * v42];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v42;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v48;
        v18 = __p;
        if (v48 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v48 = v16;
        operator delete(v18);
      }

      v19 = v45;
      if (v45)
      {
        v20 = v46;
        v21 = v45;
        if (v46 != v45)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              operator delete[](v22);
            }
          }

          while (v20 != v19);
          v21 = v45;
        }

        v46 = v19;
        operator delete(v21);
      }

      if (v41 != v44)
      {
        free(v41);
      }
    }
  }

  if (v33 != &v35)
  {
    free(v33);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  return v10;
}

uint64_t mlir::detail::sameOffsetsSizesAndStrides(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v64[4] = *MEMORY[0x1E69E9840];
  (*(a2 + 40))(a2, a1);
  v13 = v12;
  (*(a4 + 40))(a4, a3);
  if (v13 != v14)
  {
    return 0;
  }

  (*(a2 + 48))(a2, a1);
  v16 = v15;
  (*(a4 + 48))(a4, a3);
  if (v16 != v17)
  {
    return 0;
  }

  (*(a2 + 56))(a2, a1);
  v19 = v18;
  (*(a4 + 56))(a4, a3);
  if (v19 != v20)
  {
    return 0;
  }

  (*(a2 + 64))(&__src, a2, a1);
  (*(a4 + 64))(&v53, a4, a3);
  __dst = v61;
  v60 = 0x400000000;
  v21 = v57;
  if (v57)
  {
    if (__src == v58)
    {
      v23 = v57;
      if (v57 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v61, v57, 8), (v23 = v57) != 0))
      {
        memcpy(__dst, __src, 8 * v23);
      }

      LODWORD(v60) = v21;
    }

    else
    {
      __dst = __src;
      v60 = v57;
      __src = v58;
      HIDWORD(v57) = 0;
    }

    LODWORD(v57) = 0;
  }

  v62 = v64;
  v63 = 0x400000000;
  v24 = v54;
  v25 = v53;
  if (v54)
  {
    if (v53 != v55)
    {
      v62 = v53;
      v63 = v54;
      v53 = v55;
      HIDWORD(v54) = 0;
      v25 = v55;
LABEL_23:
      LODWORD(v54) = 0;
      goto LABEL_24;
    }

    if (v54 < 5)
    {
      v26 = v54;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v54, 8);
      v26 = v54;
      v25 = v53;
      if (!v54)
      {
        goto LABEL_22;
      }
    }

    memcpy(v62, v25, 8 * v26);
    v25 = v53;
LABEL_22:
    LODWORD(v63) = v24;
    goto LABEL_23;
  }

LABEL_24:
  if (v25 != v55)
  {
    free(v25);
  }

  if (__src != v58)
  {
    free(__src);
  }

  v27 = v62;
  result = 1;
  if (v60 && v63)
  {
    v28 = __dst;
    v29 = 8 * v63 - 8;
    v30 = 8 * v60 - 8;
    do
    {
      result = a5(a6, *v28, *v27);
      if (!result)
      {
        break;
      }

      if (!v30)
      {
        break;
      }

      ++v28;
      ++v27;
      v31 = v29;
      v29 -= 8;
      v30 -= 8;
    }

    while (v31);
    v27 = v62;
  }

  if (v27 != v64)
  {
    v32 = result;
    free(v27);
    result = v32;
  }

  if (__dst != v61)
  {
    v33 = result;
    free(__dst);
    result = v33;
  }

  if (result)
  {
    (*(a2 + 72))(&__src, a2, a1);
    (*(a4 + 72))(&v53, a4, a3);
    __dst = v61;
    v60 = 0x400000000;
    v34 = v57;
    if (v57)
    {
      if (__src == v58)
      {
        v35 = v57;
        if (v57 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v61, v57, 8), (v35 = v57) != 0))
        {
          memcpy(__dst, __src, 8 * v35);
        }

        LODWORD(v60) = v34;
      }

      else
      {
        __dst = __src;
        v60 = v57;
        __src = v58;
        HIDWORD(v57) = 0;
      }

      LODWORD(v57) = 0;
    }

    v62 = v64;
    v63 = 0x400000000;
    v36 = v54;
    v37 = v53;
    if (!v54)
    {
      goto LABEL_58;
    }

    if (v53 != v55)
    {
      v62 = v53;
      v63 = v54;
      v53 = v55;
      HIDWORD(v54) = 0;
      v37 = v55;
LABEL_57:
      LODWORD(v54) = 0;
LABEL_58:
      if (v37 != v55)
      {
        free(v37);
      }

      if (__src != v58)
      {
        free(__src);
      }

      v39 = v62;
      result = 1;
      if (v60 && v63)
      {
        v40 = __dst;
        v41 = 8 * v63 - 8;
        v42 = 8 * v60 - 8;
        do
        {
          result = a5(a6, *v40, *v39);
          if (!result)
          {
            break;
          }

          if (!v42)
          {
            break;
          }

          ++v40;
          ++v39;
          v43 = v41;
          v41 -= 8;
          v42 -= 8;
        }

        while (v43);
        v39 = v62;
      }

      if (v39 != v64)
      {
        v44 = result;
        free(v39);
        result = v44;
      }

      if (__dst != v61)
      {
        v45 = result;
        free(__dst);
        result = v45;
      }

      if (result)
      {
        (*(a2 + 80))(&__src, a2, a1);
        (*(a4 + 80))(&v53, a4, a3);
        __dst = v61;
        v60 = 0x400000000;
        if (v57)
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(&__dst, &__src);
        }

        v62 = v64;
        v63 = 0x400000000;
        if (v54)
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(&v62, &v53);
        }

        if (v53 != v55)
        {
          free(v53);
        }

        if (__src != v58)
        {
          free(__src);
        }

        v46 = v62;
        result = 1;
        if (v60 && v63)
        {
          v47 = __dst;
          v48 = 8 * v60 - 8;
          v49 = 8 * v63 - 8;
          do
          {
            result = a5(a6, *v47, *v46);
            if (!result)
            {
              break;
            }

            if (!v48)
            {
              break;
            }

            ++v47;
            ++v46;
            v48 -= 8;
            v50 = v49;
            v49 -= 8;
          }

          while (v50);
          v46 = v62;
        }

        if (v46 != v64)
        {
          v51 = result;
          free(v46);
          result = v51;
        }

        if (__dst != v61)
        {
          v52 = result;
          free(__dst);
          return v52;
        }
      }

      return result;
    }

    if (v54 < 5)
    {
      v38 = v54;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v54, 8);
      v38 = v54;
      v37 = v53;
      if (!v54)
      {
        goto LABEL_56;
      }
    }

    memcpy(v62, v37, 8 * v38);
    v37 = v53;
LABEL_56:
    LODWORD(v63) = v36;
    goto LABEL_57;
  }

  return result;
}

uint64_t mlir::detail::getNumDynamicEntriesUpToIdx(int64x2_t *a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 < 7)
  {
    LODWORD(v4) = 0;
    v5 = a1;
    do
    {
LABEL_8:
      v18 = *v5++;
      if (v18 == 0x8000000000000000)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }
    }

    while (v5 != (a1 + 8 * a3));
    return v4;
  }

  v7 = v3 + 1;
  v8 = (v3 + 1) & 0x3FFFFFFFFFFFFFF8;
  v5 = &a1->i64[v8];
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = vnegq_f64(0);
  v12 = v8;
  v13 = 0uLL;
  do
  {
    v14 = v9[-2];
    v15 = v9[-1];
    v16 = *v9;
    v17 = v9[1];
    v9 += 4;
    v10 = vsubq_s32(v10, vuzp1q_s32(vceqq_s64(v14, v11), vceqq_s64(v15, v11)));
    v13 = vsubq_s32(v13, vuzp1q_s32(vceqq_s64(v16, v11), vceqq_s64(v17, v11)));
    v12 -= 8;
  }

  while (v12);
  v4 = vaddvq_s32(vaddq_s32(v13, v10));
  if (v7 != v8)
  {
    goto LABEL_8;
  }

  return v4;
}

void *mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(uint64_t a1, unint64_t a2)
{
  if (!*(*a1 + 8) || *(**a1 + **(a1 + 8)) != 1)
  {
LABEL_5:
    v6 = *(a1 + 16);
    if (a2 == 0x8000000000000000)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = (*(*v6 + 16))(v6);
    result = llvm::raw_ostream::operator<<(v13, a2);
    v12 = *a1;
    if (!*(*a1 + 8))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 91;
    ++v4[4];
    goto LABEL_5;
  }

  llvm::raw_ostream::write(v4, "[", 1uLL);
  v6 = *(a1 + 16);
  if (a2 != 0x8000000000000000)
  {
    goto LABEL_14;
  }

LABEL_6:
  result = (*(*v6 + 160))(v6, *(**(a1 + 24) + 32 * **(a1 + 32) + 24));
  if (*(*(a1 + 40) + 8))
  {
    v8 = *(a1 + 16);
    v9 = (*(*v8 + 16))(v8);
    v10 = v9[4];
    if ((v9[3] - v10) > 2)
    {
      *(v10 + 2) = 32;
      *v10 = 14880;
      v9[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v9, " : ", 3uLL);
    }

    v11 = mlir::TypeRange::dereference_iterator(**(a1 + 40), **(a1 + 32));
    result = (*(*v8 + 32))(v8, v11);
  }

  ++**(a1 + 32);
  v12 = *a1;
  if (*(*a1 + 8))
  {
LABEL_15:
    if (*(*v12 + **(a1 + 8)) == 1)
    {
      result = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v14 = result[4];
      if (result[3] == v14)
      {
        result = llvm::raw_ostream::write(result, "]", 1uLL);
      }

      else
      {
        *v14 = 93;
        ++result[4];
      }
    }
  }

LABEL_19:
  ++**(a1 + 8);
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::parseDynamicIndexList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<long long> &,mlir::detail::DenseArrayAttrImpl<BOOL> &,llvm::SmallVectorImpl<mlir::Type> *,mlir::AsmParser::Delimiter)::$_0>(uint64_t *a1)
{
  memset(v28, 0, 24);
  v2 = (*(**a1 + 712))(*a1, v28, 1);
  v3 = a1[1];
  v4 = (*(**a1 + 320))();
  v5 = v3[1];
  if ((v5 + 1) > v3[2])
  {
    v23 = v4;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v3, v3 + 3, v5 + 1, 1);
    v4 = v23;
    v5 = v3[1];
  }

  *(*v3 + v5) = v4 & 1;
  ++v3[1];
  if (v2 & 0x100) != 0 && (v2)
  {
    v6 = a1[2];
    v7 = *(v6 + 8);
    v8 = *v6;
    v9 = v28;
    if (v7 >= *(v6 + 12))
    {
      if (v8 <= v28 && v8 + 32 * v7 > v28)
      {
        v26 = v28 - v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1[2], v6 + 16, v7 + 1, 32);
        v8 = *v6;
        v9 = &v26[*v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1[2], v6 + 16, v7 + 1, 32);
        v8 = *v6;
        v9 = v28;
      }
    }

    v10 = (v8 + 32 * *(v6 + 8));
    v11 = *(v9 + 1);
    *v10 = *v9;
    v10[1] = v11;
    ++*(v6 + 8);
    v12 = a1[3];
    v13 = *(v12 + 8);
    if (v13 >= *(v12 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1[3], v12 + 16, v13 + 1, 8);
      LODWORD(v13) = *(v12 + 8);
    }

    *(*v12 + 8 * v13) = 0x8000000000000000;
    ++*(v12 + 8);
    v14 = *a1[4];
    if (v14)
    {
      v15 = *a1;
      v16 = *(v14 + 2);
      if (v16 >= *(v14 + 3))
      {
        v24 = *a1;
        v25 = llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(*a1[4]);
        if (((*(*v24 + 576))(v24, v25) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v17 = *v14;
        *(*v14 + 8 * v16) = 0;
        v18 = v16 + 1;
        *(v14 + 2) = v18;
        if (((*(*v15 + 576))(v15, v17 + 8 * v18 - 8) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (*(*a1[1] + *(a1[1] + 8) - 1) != 1)
    {
      return 1;
    }
  }

  else
  {
    v27 = 0;
    if ((mlir::AsmParser::parseInteger<long long>(*a1, &v27) & 1) == 0)
    {
      return 0;
    }

    v19 = a1[3];
    v20 = v27;
    v21 = *(v19 + 8);
    if (v21 >= *(v19 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1[3], v19 + 16, v21 + 1, 8);
      LODWORD(v21) = *(v19 + 8);
    }

    *(*v19 + 8 * v21) = v20;
    ++*(v19 + 8);
    if (*(*a1[1] + *(a1[1] + 8) - 1) != 1)
    {
      return 1;
    }
  }

  return ((*(**a1 + 336))(*a1) & 1) != 0;
}

void mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MPSToANECTypeConverter **a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, char a7, char a8, char a9, char a10, char a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v64 = *MEMORY[0x1E69E9840];
  v41 = a15;
  v42 = a16;
  v40 = a3;
  v39 = a4;
  v38 = a10;
  v37 = a11;
  v36 = a17;
  v22 = operator new(0x218uLL);
  v23 = mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(v22);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v23;
  a1[1] = &unk_1F5AFD7B0;
  *(a1 + 8) = 0;
  a1[7] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[5] = (a1 + 7);
  a1[6] = 0;
  a1[8] = 0;
  *(a1 + 18) = 0;
  a1[12] = 0x1000000000;
  a1[13] = 0;
  a1[21] = a2;
  a1[14] = 0;
  a1[15] = 0x2800000000;
  *(a1 + 200) = 1;
  v24 = (a1 + 25);
  a1[19] = 0;
  a1[20] = a2;
  a1[22] = 0;
  a1[23] = 0;
  a1[24] = 0;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 29) = 0u;
  a1[31] = 978433816;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  a1[35] = 0;
  __p = 0u;
  v51 = 0u;
  v49 = a2;
  v52 = &v54;
  v53 = 0x600000000;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0x2800000000;
  v61 = 0;
  v62 = 0;
  v63 = 0x2800000000;
  mlir::populateMPSToANECConversionPatterns(a3, a4, &v49, v22);
  *&v44 = "func";
  *(&v44 + 1) = 4;
  mlir::ConversionTarget::setDialectAction(a1 + 1, &v44, 1, 2);
  *&v44 = "memref";
  *(&v44 + 1) = 6;
  mlir::ConversionTarget::setDialectAction(a1 + 1, &v44, 1, 2);
  *&v44 = "mps";
  *(&v44 + 1) = 3;
  mlir::ConversionTarget::setDialectAction(a1 + 1, &v44, 1, 2);
  *&v44 = "mpsx";
  *(&v44 + 1) = 4;
  mlir::ConversionTarget::setDialectAction(a1 + 1, &v44, 1, 2);
  *&v44 = "mps_spi";
  *(&v44 + 1) = 7;
  mlir::ConversionTarget::setDialectAction(a1 + 1, &v44, 1, 2);
  v47[0] = &unk_1F5B0C5B8;
  v48 = v47;
  v43[0] = &v44;
  *&v44 = "silc";
  *(&v44 + 1) = 4;
  v43[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(a1 + 1, &v44, 1, 1);
  mlir::ConversionTarget::setLegalityCallback((a1 + 1), &v44, 1, v47);
  if (v48 == v47)
  {
    (*(*v48 + 32))(v48);
  }

  else if (v48)
  {
    (*(*v48 + 40))();
  }

  v43[0] = &unk_1F5B0C600;
  LOBYTE(v43[1]) = 0;
  *(&v44 + 1) = v43;
  mlir::OperationName::OperationName(v34, "mps.constant", 12, a1[20]);
  v25 = v34[0];
  mlir::ConversionTarget::setOpAction((a1 + 1), v34[0], 1);
  mlir::ConversionTarget::setLegalityCallback((a1 + 1), v25, v43);
  if (*(&v44 + 1) == v43)
  {
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  }

  else if (*(&v44 + 1))
  {
    (*(**(&v44 + 1) + 40))();
  }

  v43[0] = &unk_1F5B0C648;
  LOBYTE(v43[1]) = v36;
  *(&v44 + 1) = v43;
  mlir::OperationName::OperationName(v34, "mps.read_data_from_file", 23, a1[20]);
  v26 = v34[0];
  mlir::ConversionTarget::setOpAction((a1 + 1), v34[0], 1);
  mlir::ConversionTarget::setLegalityCallback((a1 + 1), v26, v43);
  if (*(&v44 + 1) == v43)
  {
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  }

  else if (*(&v44 + 1))
  {
    (*(**(&v44 + 1) + 40))();
  }

  v43[0] = &unk_1F5B0C690;
  LOBYTE(v43[1]) = v36;
  *(&v44 + 1) = v43;
  mlir::OperationName::OperationName(v34, "anec.state", 10, a1[20]);
  v27 = v34[0];
  mlir::ConversionTarget::setOpAction((a1 + 1), v34[0], 1);
  mlir::ConversionTarget::setLegalityCallback((a1 + 1), v27, v43);
  if (*(&v44 + 1) == v43)
  {
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  }

  else if (*(&v44 + 1))
  {
    (*(**(&v44 + 1) + 40))();
  }

  v43[0] = &unk_1F5B0C6D8;
  LOBYTE(v43[1]) = v36;
  *(&v44 + 1) = v43;
  mlir::OperationName::OperationName(v34, "anec.sdpa", 9, a1[20]);
  v28 = v34[0];
  mlir::ConversionTarget::setOpAction((a1 + 1), v34[0], 1);
  mlir::ConversionTarget::setLegalityCallback((a1 + 1), v28, v43);
  if (*(&v44 + 1) == v43)
  {
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    if (!a6)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*(&v44 + 1))
    {
      (*(**(&v44 + 1) + 40))();
    }

    if (!a6)
    {
LABEL_26:
      v31 = *a1;
      *v43 = xmmword_1E86D3560;
      v44 = *&off_1E86D3570;
      v45 = xmmword_1E86D3580;
      v46 = *&off_1E86D3590;
      v34[0] = v43;
      v34[1] = 4;
      v35 = (a1 + 25);
      std::make_unique[abi:nn200100]<mlir::ANECRegionOpCreator,mlir::OpBuilder &,mlir::ConversionTarget &,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family &,mlir::DeviceInfo *,llvm::ArrayRef<llvm::StringRef>,long long &,long long &,BOOL &,BOOL &,llvm::StringRef&,BOOL &,BOOL &,0>((a1 + 21), (a1 + 1), &v49, v31, &v40, &v35, v34, &a13, &a14);
    }
  }

  mlir::getDeviceInfo(v40, a12, v43);
  v29 = v44;
  *v24 = *v43;
  *(a1 + 27) = v29;
  *(a1 + 29) = v45;
  a1[31] = v46;
  v30 = *(a1 + 272);
  a1[32] = 0;
  if ((v30 & 1) == 0)
  {
    *(a1 + 272) = 1;
  }

  *(a1 + 256) = a7;
  *(a1 + 257) = a8;
  *(a1 + 258) = a9;
  a1[33] = v24;
  goto LABEL_26;
}

void std::make_unique[abi:nn200100]<mlir::ANECRegionOpCreator,mlir::OpBuilder &,mlir::ConversionTarget &,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family &,mlir::DeviceInfo *,llvm::ArrayRef<llvm::StringRef>,long long &,long long &,BOOL &,BOOL &,llvm::StringRef&,BOOL &,BOOL &,0>(uint64_t a1, mlir::ConversionTarget *a2, uint64_t a3, int a4, int *a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = operator new(0x168uLL);
  v15 = *(a3 + 16);
  *__p = *a3;
  v22 = v15;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v16 = *(a3 + 32);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v23 = v16;
  v24[0] = &v25;
  v24[1] = 0x600000000;
  if (*(a3 + 48))
  {
    llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(v24, a3 + 40);
  }

  v26 = *(a3 + 104);
  v27 = *(a3 + 112);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  v28 = *(a3 + 120);
  *(a3 + 120) = 0;
  v29 = *(a3 + 128);
  v30 = *(a3 + 136);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  v31 = *(a3 + 152);
  v32 = *(a3 + 160);
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  mlir::ANECRegionOpCreator::ANECRegionOpCreator(v14, a1, a2, __p, a4, *a5, *a6, v13, *a7, a7[1], *a8, *a9);
}

void mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MPSToANECTypeConverter **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v3 = a3 + 32;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v4 = v3;
  }

  if (v6 < 0)
  {
    v6 = *(v3 + 8);
  }

  mlir::MPSToANECOpCreator::MPSToANECOpCreator(a1, a2, *(v3 + 24), *(v3 + 28), 0, *(v3 - 31), *(v3 - 30), *(v3 - 29), *(v3 - 28), 0, *(v3 - 27), *(v3 - 24), *(v3 - 16), *(v3 - 8), v4, v6, *(v3 + 29));
}

uint64_t mlir::createMPSToANECPass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xF58uLL);
  *v5 = &unk_1F5B0C9F0;
  *(v5 + 472) = *(a1 + 56);
  v6 = *(v5 + 936);
  if (v6 && ((*(*v6 + 48))(v6, a1 + 56), *(v4 + 318) = *(a1 + 16), (v7 = *(v4 + 326)) != 0) && ((*(*v7 + 48))(v7, a1 + 16), *(v4 + 345) = *(a1 + 24), (v8 = *(v4 + 353)) != 0) && ((*(*v8 + 48))(v8, a1 + 24), v4[1088] = *(a1 + 5), (v9 = *(v4 + 143)) != 0) && ((*(*v9 + 48))(v9, a1 + 5), v4[1296] = *a1, (v10 = *(v4 + 169)) != 0) && ((*(*v10 + 48))(v10, a1), v4[1504] = *(a1 + 1), (v11 = *(v4 + 195)) != 0) && ((*(*v11 + 48))(v11, a1 + 1), v4[1920] = *(a1 + 2), (v12 = *(v4 + 247)) != 0) && ((*(*v12 + 48))(v12, a1 + 2), v4[1712] = *(a1 + 3), (v13 = *(v4 + 221)) != 0) && ((*(*v13 + 48))(v13, a1 + 3), v4[2128] = *(a1 + 4), (v14 = *(v4 + 273)) != 0) && ((*(*v14 + 48))(v14, a1 + 4), v15 = *(a1 + 8), *(v4 + 744) = v15, v25 = v15, (v16 = *(v4 + 379)) != 0) && ((*(*v16 + 48))(v16, &v25), v4[3184] = *(a1 + 6), (v17 = *(v4 + 405)) != 0) && ((*(*v17 + 48))(v17, a1 + 6), std::string::operator=((v4 + 3392), (a1 + 32)), (v18 = *(v4 + 436)) != 0) && ((*(*v18 + 48))(v18, a1 + 32), v4[3640] = *(a1 + 60), (v19 = *(v4 + 462)) != 0) && ((*(*v19 + 48))(v19, a1 + 60), v21 = *(a1 + 61), v20 = a1 + 61, v4[3848] = v21, (v22 = *(v4 + 488)) != 0))
  {
    result = (*(*v22 + 48))(v22, v20);
    *a2 = v4;
  }

  else
  {
    v24 = std::__throw_bad_function_call[abi:nn200100]();
    return mlir::createMPSPlacementPass(v24);
  }

  return result;
}

mlir::MPSToANECTypeConverter *mlir::createMPSPlacementPass@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = operator new(0x978uLL);
  v20 = a1;
  v19 = a3;
  v18 = a4;
  *v11 = &unk_1F5B0CD68;
  *(v11 + 472) = a1;
  v12 = *(v11 + 936);
  if (v12 && ((*(*v12 + 48))(v12, &v20), v10[376] = a2, v21 = a2, (v13 = *(v10 + 195)) != 0) && ((*(*v13 + 48))(v13, &v21), *(v10 + 292) = a3, (v14 = *(v10 + 300)) != 0) && ((*(*v14 + 48))(v14, &v19), *(v10 + 1296) = a4, (v15 = *(v10 + 169)) != 0))
  {
    result = (*(*v15 + 48))(v15, &v18);
    *a5 = v10;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(v17);
  }

  return result;
}

mlir::MPSToANECTypeConverter *mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(mlir::MPSToANECTypeConverter *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 264) = 0u;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  v2 = this + 232;
  *(this + 168) = 0u;
  *this = &unk_1F5AFD910;
  *(this + 1) = this + 24;
  *(this + 2) = 0x400000000;
  *(this + 19) = this + 168;
  *(this + 41) = 2;
  *(this + 29) = this + 248;
  *(this + 61) = 2;
  *(this + 39) = this + 328;
  *(this + 81) = 2;
  *(this + 49) = this + 408;
  *(this + 101) = 2;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 520));
  *(this + 66) = 0;
  *this = &unk_1F5B0C598;
  v6 = &unk_1F5B01278;
  v7 = mlir::MPSToANECTypeConverter::canonicalizeType;
  v8 = &v6;
  mlir::TypeConverter::registerConversion(this, &v6);
  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v6 = &unk_1F5B012C0;
  v7 = mlir::MPSToANECTypeConverter::tensorToMemRef;
  v8 = &v6;
  mlir::TypeConverter::registerConversion(this, &v6);
  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v6 = &unk_1F5AFD978;
  v7 = mlir::MPSToANECTypeConverter::materializeTypeChange;
  v8 = &v6;
  v3 = *(this + 60);
  if (v3 >= *(this + 61))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(v2, &v6);
  }

  else
  {
    *(*(this + 29) + 32 * v3 + 24) = *(this + 29) + 32 * v3;
    (*(*v8 + 3))(v8);
    ++*(this + 60);
  }

  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v6 = &unk_1F5AFD978;
  v7 = mlir::MPSToANECTypeConverter::materializeTypeChangeWithPromotion;
  v8 = &v6;
  v4 = *(this + 80);
  if (v4 >= *(this + 81))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(this + 312, &v6);
  }

  else
  {
    *(*(this + 39) + 32 * v4 + 24) = *(this + 39) + 32 * v4;
    (*(*v8 + 3))(v8);
    ++*(this + 80);
  }

  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  return this;
}

uint64_t mlir::MPSToANECTypeConverter::canonicalizeType(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::MPSToANECTypeConverter::canonicalizeIntegerType(a1);
  }

  return a1;
}

uint64_t mlir::MPSToANECTypeConverter::tensorToMemRef(uint64_t a1)
{
  v12 = a1;
  ElementType = mlir::TensorType::getElementType(&v12);
  v2 = ElementType;
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = mlir::MPSToANECTypeConverter::canonicalizeIntegerType(ElementType);
  }

  if (!mlir::TensorType::hasRank(&v12))
  {
    return mlir::UnrankedMemRefType::get(v2, 0);
  }

  LOBYTE(v13[0]) = 0;
  v14 = 0;
  v3 = mlir::TensorType::cloneWith(&v12, v13, v2);
  if (v3)
  {
    v4 = v3;
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v3 = v4;
  }

  else
  {
    v5 = 0;
  }

  v13[0] = mlir::getRankPromotionTypeForANE(v3, v5);
  v13[1] = v7;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v13);
  v10 = v9;
  isSplat = mlir::ElementsAttr::isSplat(v13);
  return mlir::MemRefType::get(ArgAttrsAttr, v10, isSplat, 0, 0, 0);
}

uint64_t mlir::MPSToANECTypeConverter::materializeTypeChange(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10[0] = a3;
  v10[1] = a4;
  v8 = mlir::ValueRange::dereference_iterator(v10, 0);
  return mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(a1, a5, &v9, &v8) - 16;
}

uint64_t mlir::MPSToANECTypeConverter::materializeTypeChangeWithPromotion(mlir::OpBuilder *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a3;
  v12[1] = a4;
  if (a2)
  {
    a2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
  }

  v11[0] = mlir::getRankPromotionTypeForANE(v6, a2);
  v11[1] = v8;
  v10 = mlir::ValueRange::dereference_iterator(v12, 0);
  return mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(a1, a5, v11, &v10) - 16;
}

void sub_1DFEE6140(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::MPSToANECTypeConverter::canonicalizeIntegerType(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::getIntOrFloatBitWidth(&v5) == 4 && mlir::Type::isSignedInteger(&v5))
  {
    Context = mlir::Attribute::getContext(&v5);
    Width = 4;
  }

  else if (mlir::Type::getIntOrFloatBitWidth(&v5) > 7)
  {
    if (mlir::IntegerType::getSignedness(&v5))
    {
      return v5;
    }

    v4 = mlir::Attribute::getContext(&v5);
    Width = mlir::IntegerType::getWidth(&v5);
    Context = v4;
  }

  else
  {
    Context = mlir::Attribute::getContext(&v5);
    Width = 8;
  }

  return mlir::IntegerType::get(Context, Width, 1u);
}

uint64_t mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::UnrealizedConversionCast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::UnrealizedConversionCast,void>::id)
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

void *std::__function::__func<mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MLIRContext *,mlir::anec::Family,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,unsigned int,long long,long long,llvm::StringRef,BOOL)::$_0,std::allocator<mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MLIRContext *,mlir::anec::Family,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,unsigned int,long long,long long,llvm::StringRef,BOOL)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0C5B8;
  return result;
}

uint64_t std::__function::__func<mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MLIRContext *,mlir::anec::Family,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,unsigned int,long long,long long,llvm::StringRef,BOOL)::$_0,std::allocator<mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MLIRContext *,mlir::anec::Family,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,unsigned int,long long,long long,llvm::StringRef,BOOL)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor(*a2))
  {
    v5 = 0;
    InterfaceFor = 0;
LABEL_6:
    CallableForCallee = 1;
    return CallableForCallee | 0x100u;
  }

  if (!v2)
  {
    v5 = 0;
    InterfaceFor = 0;
    goto LABEL_6;
  }

  v5 = v2;
  InterfaceFor = mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor(v2);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v5);
  return CallableForCallee | 0x100u;
}

uint64_t mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::silc::BufferizationInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::silc::BufferizationInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::silc::BufferizationInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::BufferizationInterface]";
  v6 = 84;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps10ConstantOpEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS2_4anec6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__1EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSG_EUlSI_E_NS_9allocatorISM_EEFNS_8optionalIbEESI_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0C600;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps10ConstantOpEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS2_4anec6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__1EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSG_EUlSI_E_NS_9allocatorISM_EEFNS_8optionalIbEESI_EE7__cloneEPNS0_6__baseISR_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5B0C600;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps10ConstantOpEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS2_4anec6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__1EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSG_EUlSI_E_NS_9allocatorISM_EEFNS_8optionalIbEESI_EEclEOSI_(uint64_t a1, void *a2)
{
  v2 = *(*a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  if (v2)
  {
    mlir::ArrayAttr::getValue(&v5);
    LODWORD(v2) = v3 > 3;
  }

  return v2 | 0x100;
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps18ReadDataFromFileOpEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS2_4anec6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__2EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSG_EUlSI_E_NS_9allocatorISM_EEFNS_8optionalIbEESI_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0C648;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps18ReadDataFromFileOpEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS2_4anec6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__2EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSG_EUlSI_E_NS_9allocatorISM_EEFNS_8optionalIbEESI_EE7__cloneEPNS0_6__baseISR_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5B0C648;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps18ReadDataFromFileOpEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS2_4anec6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__2EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSG_EUlSI_E_NS_9allocatorISM_EEFNS_8optionalIbEESI_EEclEOSI_(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 256;
  }

  v7[1] = v2;
  v7[2] = v3;
  v4 = *(*a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v4 = 0;
  }

  v7[0] = v4;
  if (v4)
  {
    mlir::ArrayAttr::getValue(v7);
    LODWORD(v4) = v5 > 3;
  }

  return v4 | 0x100;
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec5StateEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS5_6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__3EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSF_EUlSH_E_NS_9allocatorISL_EEFNS_8optionalIbEESH_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0C690;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec5StateEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS5_6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__3EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSF_EUlSH_E_NS_9allocatorISL_EEFNS_8optionalIbEESH_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5B0C690;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec25ScaledDotProductAttentionEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS5_6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__4EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSF_EUlSH_E_NS_9allocatorISL_EEFNS_8optionalIbEESH_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0C6D8;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec25ScaledDotProductAttentionEZNS2_18MPSToANECOpCreatorC1EPNS2_11MLIRContextENS5_6FamilyEbbbbbbbbjxxN4llvm9StringRefEbE3__4EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSF_EUlSH_E_NS_9allocatorISL_EEFNS_8optionalIbEESH_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5B0C6D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void mlir::ANECRegionOpCreator::ANECRegionOpCreator(uint64_t a1, uint64_t a2, mlir::ConversionTarget *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a11;
  *(a1 + 24) = a12;
  *(a1 + 32) = 0;
  *a1 = &unk_1F5B13EC8;
  mlir::ConversionTarget::ConversionTarget((a1 + 40), a3);
}

uint64_t sub_1DFEE69A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v32 + 200) = v33;
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v32 + 208, v36, 0, 0, 0, 0);
  v39 = 0;
  *(v32 + 232) = v32 + 248;
  *(v32 + 224) = &unk_1F5B175E8;
  *(v32 + 240) = 0x400000000;
  v40 = (16 * v37) >> 4;
  if (v40 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v32 + 232, v32 + 248, v40, 16);
    v39 = *(v32 + 240);
  }

  v41 = *(v38 + 64);
  v42 = *(v38 + 48);
  v43 = *(v38 + 49);
  if (v37)
  {
    memcpy((*(v32 + 232) + 16 * v39), *(v38 + 16), 16 * v37);
    v39 = *(v32 + 240);
  }

  *(v32 + 240) = v39 + v37;
  *(v32 + 312) = v34;
  *(v32 + 316) = v42;
  *(v32 + 317) = v43;
  *(v32 + 320) = v35;
  if (v41 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v44 = *(v38 + 73);
  v45 = *(v38 + 72);
  if (v41 >= 0x17)
  {
    if ((v41 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v41 | 7) + 1;
    }

    v46 = operator new(v47);
    *(v32 + 336) = v41;
    *(v32 + 344) = v47 | 0x8000000000000000;
    *(v32 + 328) = v46;
    goto LABEL_13;
  }

  v46 = (v32 + 328);
  *(v32 + 351) = v41;
  if (v41)
  {
LABEL_13:
    memmove(v46, *(v38 + 56), v41);
  }

  *(v46 + v41) = 0;
  *(v32 + 352) = v45;
  *(v32 + 353) = v44;
  v48 = 0x100000000;
  if (!v44)
  {
    v48 = 0;
  }

  v50 = &unk_1F5B0C720;
  v51 = v48 | v34;
  *(&v51 + 5) = 0;
  HIBYTE(v51) = 0;
  v52 = &v50;
  v53 = v55;
  v55[0] = "anec";
  v55[1] = 4;
  v54 = 0x200000001;
  mlir::ConversionTarget::setDialectAction((v32 + 40), v55, 1, 1);
  mlir::ConversionTarget::setLegalityCallback(v32 + 40, v53, v54, &v50);
  if (v53 != v55)
  {
    free(v53);
  }

  if (v52 == &v50)
  {
    (*(*v52 + 4))(v52);
  }

  else if (v52)
  {
    (*(*v52 + 5))();
  }

  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A12,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A12)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A13,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A13)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A14,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A14)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A15,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A15)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A16,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A16)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A17,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A17)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A18,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A18)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A11Legacy,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A11Legacy)#1}>(v32 + 40, &v53);
  v53 = v33;
  mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::RegionReturn,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::RegionReturn)#1}>(v32 + 40, &v53);
  mlir::OperationName::OperationName(&v53, "anec.unrealized_conversion_cast", 31, *(v32 + 192));
  mlir::ConversionTarget::setOpAction(v32 + 40, v53, 2);
  return v32;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A12,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A12)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C768;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A12", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A13,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A13)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C7B0;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A13", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A14,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A14)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C7F8;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A14", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A15,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A15)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C840;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A15", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A16,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A16)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C888;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A16", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A17,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A17)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C8D0;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A17", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A18,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A18)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C918;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A18", 8, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::A11Legacy,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::A11Legacy)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C960;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.A11Legacy", 14, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

uint64_t mlir::ConversionTarget::addDynamicallyLegalOp<mlir::anec::RegionReturn,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::anec::RegionReturn)#1}>(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v7[0] = &unk_1F5B0C9A8;
  v7[1] = v3;
  v8 = v7;
  mlir::OperationName::OperationName(&v6, "anec.region_return", 18, *(a1 + 152));
  v4 = v6;
  mlir::ConversionTarget::setOpAction(a1, v6, 1);
  mlir::ConversionTarget::setLegalityCallback(a1, v4, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

char *std::__function::__func<mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1},std::allocator<mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C720;
  *(result + 1) = v3;
  result[15] = 0;
  *(result + 13) = 0;
  return result;
}

uint64_t std::__function::__func<mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1},std::allocator<mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5B0C720;
  *(a2 + 8) = *(result + 8);
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  return result;
}

uint64_t mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()(int *a1, uint64_t a2)
{
  {
    mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  if (mlir::verifyCompatibleTypesWithANE(a2, *a1, 1, 1, *(a1 + 4)))
  {
    {
      mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()();
    }

    if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id) || (v6 = a2, InterfaceFor = mlir::OpInterface<mlir::anec::VerifyAttributesWithFamilyInterface,mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits>::getInterfaceFor(a2), (mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v6, *a1) & 1) != 0))
    {
      {
        mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()();
      }

      if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return mlir::anec::isCompatibleWithFamily(a2, *a1);
      }

      {
        mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator()();
      }

      if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::ConstantFoldable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::ConstantFoldable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return mlir::anec::isCompatibleWithFamily(a2, *a1);
      }

      if ((*(a2 + 46) & 0x80) == 0)
      {
        return mlir::anec::isCompatibleWithFamily(a2, *a1);
      }

      v5 = *(a2 + 68);
      if (!v5)
      {
        return mlir::anec::isCompatibleWithFamily(a2, *a1);
      }

      v6 = *(a2 + 72);
      InterfaceFor = v5;
      if ((llvm::all_of<mlir::OperandRange,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator() const(mlir::Operation *)::{lambda(mlir::Value)#1}>(&v6) & 1) == 0)
      {
        return mlir::anec::isCompatibleWithFamily(a2, *a1);
      }
    }
  }

  return 0;
}

uint64_t llvm::all_of<mlir::OperandRange,mlir::ANECRegionOpCreator::ANECRegionOpCreator(mlir::OpBuilder &,mlir::ConversionTarget const&,mlir::RewritePatternSet,mlir::TypeConverter &,mlir::anec::Family,mlir::DeviceInfo const*,llvm::ArrayRef<llvm::StringRef>,long long,long long,BOOL,BOOL,std::string_view,BOOL,BOOL)::{lambda(mlir::Operation *)#1}::operator() const(mlir::Operation *)::{lambda(mlir::Value)#1}>(void *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 1;
  }

  v2 = v1 - 1;
  v3 = (*a1 + 24);
  do
  {
    v8 = *v3;
    result = mlir::Value::getDefiningOp(&v8);
    if (!result)
    {
      break;
    }

    {
      v7 = result;
      result = v7;
    }

    result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
    v5 = v2-- != 0;
    v6 = v5;
    if (!result)
    {
      break;
    }

    v3 += 4;
  }

  while (v6);
  return result;
}

const char *llvm::getTypeName<mlir::anec::VerifyAttributesWithFamilyInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::VerifyAttributesWithFamilyInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::VerifyAttributesWithFamilyInterface::Trait<Empty>]";
  v6 = 111;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::anec::VerifyAttributesWithFamilyInterface,mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::anec::VerifyAttributesWithFamilyInterface,mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::anec::VerifyAttributesWithFamilyInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::anec::VerifyAttributesWithFamilyInterface,mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::anec::VerifyAttributesWithFamilyInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::anec::VerifyAttributesWithFamilyInterface,mlir::anec::detail::VerifyAttributesWithFamilyInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::anec::VerifyAttributesWithFamilyInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::anec::VerifyAttributesWithFamilyInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::VerifyAttributesWithFamilyInterface]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::SupportConstantOperands<Empty>]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::anec::ConstantFoldable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::ConstantFoldable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::ConstantFoldable<Empty>]";
  v6 = 94;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A12EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C768;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A12EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C768;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A12EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A13EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C7B0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A13EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C7B0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A13EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A14EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C7F8;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A14EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C7F8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A14EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A15EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C840;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A15EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C840;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A15EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A16EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C888;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A16EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C888;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A16EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A17EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C8D0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A17EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C8D0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A17EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A18EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C918;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A18EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C918;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec3A18EZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec9A11LegacyEZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C960;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec9A11LegacyEZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C960;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec9A11LegacyEZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EEclEOSV_(uint64_t a1, mlir::Operation **a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v5);
  return mlir::TypeConverter::isSignatureLegal(v2, FunctionType) | 0x100;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec12RegionReturnEZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C9A8;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4anec12RegionReturnEZNS2_19ANECRegionOpCreatorC1ERNS2_9OpBuilderERKS3_NS2_17RewritePatternSetERNS2_13TypeConverterENS5_6FamilyEPKNS2_10DeviceInfoEN4llvm8ArrayRefINSJ_9StringRefEEExxbbNS_17basic_string_viewIcNS_11char_traitsIcEEEEbbEUlS6_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOST_EUlSV_E_NS_9allocatorISZ_EEFNS_8optionalIbEESV_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C9A8;
  a2[1] = v2;
  return result;
}

uint64_t mlir::MPSToANECBase<mlir::anonymous namespace::MPSToANEC>::MPSToANECBase(uint64_t a1)
{
  v10[20] = *MEMORY[0x1E69E9840];
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F5B0CA60;
  v2 = a1 + 344;
  *&v8 = "The family to target for ANEC region formation (default A12).";
  *(&v8 + 1) = 61;
  v6 = 0;
  v7 = &v6;
  *&v9 = v10;
  *(&v9 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v9, v10, 8uLL, 40);
  v3 = DWORD2(v9);
  v4 = v9 + 40 * DWORD2(v9);
  *v4 = "A12";
  *(v4 + 8) = 3;
  *(v4 + 16) = 0;
  *(v4 + 24) = "A12 family";
  *(v4 + 32) = 10;
  *(v4 + 40) = "A13";
  *(v4 + 48) = 3;
  *(v4 + 56) = 1;
  *(v4 + 64) = "A13 family";
  *(v4 + 72) = 10;
  *(v4 + 80) = "A14";
  *(v4 + 88) = 3;
  *(v4 + 96) = 2;
  *(v4 + 104) = "A14 family";
  *(v4 + 112) = 10;
  *(v4 + 120) = "A15";
  *(v4 + 128) = 3;
  *(v4 + 136) = 3;
  *(v4 + 144) = "A15 family";
  *(v4 + 152) = 10;
  *(v4 + 160) = "A16";
  *(v4 + 168) = 3;
  *(v4 + 176) = 4;
  *(v4 + 184) = "A16 family";
  *(v4 + 192) = 10;
  *(v4 + 200) = "A17";
  *(v4 + 208) = 3;
  *(v4 + 216) = 5;
  *(v4 + 224) = "A17 family";
  *(v4 + 232) = 10;
  *(v4 + 240) = "A18";
  *(v4 + 248) = 3;
  *(v4 + 256) = 6;
  *(v4 + 264) = "A18 family";
  *(v4 + 272) = 10;
  *(v4 + 280) = "A11Legacy";
  *(v4 + 288) = 9;
  *(v4 + 296) = 7;
  *(v4 + 304) = "A11 Legacy family";
  *(v4 + 312) = 17;
  DWORD2(v9) = v3 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(v2, (a1 + 152), "target-family", 13, &v8, &v7, &v9);
  *(a1 + 344) = &unk_1F5B00EC0;
  *(a1 + 944) = &unk_1F5B00F40;
  if (v9 != v10)
  {
    free(v9);
  }

  *&v9 = "If device hints cannot be followed then compilation has failed.";
  *(&v9 + 1) = 63;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 960, (a1 + 152), "strict-hints", 12, &v9, &v8);
  *(a1 + 960) = &unk_1F5AFB130;
  *(a1 + 1152) = &unk_1F5AFB1B0;
  *&v9 = "If true, the ANEC macho procedure will follow the MPS host function name. If false, it will use the ANEC region symbol name instead.";
  *(&v9 + 1) = 132;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1168, (a1 + 152), "use-function-name-for-anec-procedure", 36, &v9, &v8);
  *(a1 + 1168) = &unk_1F5AFB130;
  *(a1 + 1360) = &unk_1F5AFB1B0;
  *&v9 = "If true, placement uses the cost model.";
  *(&v9 + 1) = 39;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1376, (a1 + 152), "use-cost-model", 14, &v9, &v8);
  *(a1 + 1376) = &unk_1F5AFB130;
  *(a1 + 1568) = &unk_1F5AFB1B0;
  *&v9 = "If true, everything will be placed on the host. (requires use-cost-model)";
  *(&v9 + 1) = 73;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1584, (a1 + 152), "force-host-placement", 20, &v9, &v8);
  *(a1 + 1584) = &unk_1F5AFB130;
  *(a1 + 1776) = &unk_1F5AFB1B0;
  *&v9 = "If true, everything will be placed on the ane if possible. (requires use-cost-model)";
  *(&v9 + 1) = 84;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1792, (a1 + 152), "force-ane-placement", 19, &v9, &v8);
  *(a1 + 1792) = &unk_1F5AFB130;
  *(a1 + 1984) = &unk_1F5AFB1B0;
  *&v9 = "If true, print the estimated cost of the resulting module (requires use-cost-model).";
  *(&v9 + 1) = 84;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 2000, (a1 + 152), "print-estimated-cost", 20, &v9, &v8);
  *(a1 + 2000) = &unk_1F5AFB130;
  *(a1 + 2192) = &unk_1F5AFB1B0;
  *&v9 = "Insert instrumentation to enable performance recording.";
  *(&v9 + 1) = 55;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 2208, (a1 + 152), "insert-instrumentation", 22, &v9, &v8);
  *(a1 + 2208) = &unk_1F5AFB130;
  *(a1 + 2400) = &unk_1F5AFB1B0;
  *&v9 = "The maximum number of mps operations that will be used to create an ANE region.";
  *(&v9 + 1) = 79;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<long long>>(a1 + 2416, (a1 + 152), "ane-max-ops", 11, &v9, &v8);
  *(a1 + 2416) = &unk_1F5B0CAD0;
  *(a1 + 2616) = &unk_1F5B0CB50;
  *&v9 = "The maximum number of cumulative liveIns and liveOuts for an ANE region.";
  *(&v9 + 1) = 72;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<long long>>(a1 + 2632, (a1 + 152), "ane-max-liveio", 14, &v9, &v8);
  *(a1 + 2632) = &unk_1F5B0CAD0;
  *(a1 + 2832) = &unk_1F5B0CB50;
  *&v9 = "The number of gpu cores.";
  *(&v9 + 1) = 24;
  LODWORD(v7) = 1;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 2848, (a1 + 152), "gpu-core-count", 14, &v9, &v8);
  *(a1 + 2848) = &unk_1F5AFEE68;
  *(a1 + 3040) = &unk_1F5AFEEE8;
  *&v9 = "If true, print a report of which ops failed to be placed on ANE.";
  *(&v9 + 1) = 64;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 3056, (a1 + 152), "print-placement-report", 22, &v9, &v8);
  *(a1 + 3056) = &unk_1F5AFB130;
  *(a1 + 3248) = &unk_1F5AFB1B0;
  *&v9 = "Postfix appended to the name of the ANE regions created.";
  *(&v9 + 1) = 56;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 3264, (a1 + 152), "region-name-postfix", 19, &v9);
  *(a1 + 3264) = &unk_1F5AFC930;
  *(a1 + 3496) = &unk_1F5AFC9B0;
  *&v9 = "If true, use GOC and quantimization patterns to optimzie the ANEC IR.";
  *(&v9 + 1) = 69;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 3512, (a1 + 152), "legacy-quant-conversion", 23, &v9, &v8);
  *(a1 + 3512) = &unk_1F5AFB130;
  *(a1 + 3704) = &unk_1F5AFB1B0;
  *&v9 = "If true, features required for AFM model, including 16-bit int support and fused ops.";
  *(&v9 + 1) = 85;
  LOBYTE(v7) = 0;
  *&v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 3720, (a1 + 152), "enable-afm-mlir-features", 24, &v9, &v8);
  *(a1 + 3720) = &unk_1F5AFB130;
  *(a1 + 3912) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::anonymous namespace::MPSToANEC::~MPSToANEC(mlir::_anonymous_namespace_::MPSToANEC *this)
{
  *this = &unk_1F5B0CA60;
  *(this + 465) = &unk_1F5B3E720;
  v2 = this + 3880;
  v3 = *(this + 488);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 465) = &unk_1F5B3E1D8;
  v4 = *(this + 477);
  if (v4 != *(this + 476))
  {
    free(v4);
  }

  v5 = *(this + 473);
  if (v5 != this + 3800)
  {
    free(v5);
  }

  *(this + 439) = &unk_1F5B3E720;
  v6 = *(this + 462);
  if (v6 == (this + 3672))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 439) = &unk_1F5B3E1D8;
  v7 = *(this + 451);
  if (v7 != *(this + 450))
  {
    free(v7);
  }

  v8 = *(this + 447);
  if (v8 != this + 3592)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 3264);
  *(this + 382) = &unk_1F5B3E720;
  v9 = *(this + 405);
  if (v9 == (this + 3216))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 382) = &unk_1F5B3E1D8;
  v10 = *(this + 394);
  if (v10 != *(this + 393))
  {
    free(v10);
  }

  v11 = *(this + 390);
  if (v11 != this + 3136)
  {
    free(v11);
  }

  *(this + 356) = &unk_1F5B3E5A8;
  v12 = *(this + 379);
  if (v12 == (this + 3008))
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *(this + 356) = &unk_1F5B3E1D8;
  v13 = *(this + 368);
  if (v13 != *(this + 367))
  {
    free(v13);
  }

  v14 = *(this + 364);
  if (v14 != this + 2928)
  {
    free(v14);
  }

  *(this + 329) = &unk_1F5B0CC50;
  v15 = *(this + 353);
  if (v15 == (this + 2800))
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  *(this + 329) = &unk_1F5B3E1D8;
  v16 = *(this + 341);
  if (v16 != *(this + 340))
  {
    free(v16);
  }

  v17 = *(this + 337);
  if (v17 != this + 2712)
  {
    free(v17);
  }

  *(this + 302) = &unk_1F5B0CC50;
  v18 = *(this + 326);
  if (v18 == (this + 2584))
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  *(this + 302) = &unk_1F5B3E1D8;
  v19 = *(this + 314);
  if (v19 != *(this + 313))
  {
    free(v19);
  }

  v20 = *(this + 310);
  if (v20 != this + 2496)
  {
    free(v20);
  }

  *(this + 276) = &unk_1F5B3E720;
  v21 = *(this + 299);
  if (v21 == (this + 2368))
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  *(this + 276) = &unk_1F5B3E1D8;
  v22 = *(this + 288);
  if (v22 != *(this + 287))
  {
    free(v22);
  }

  v23 = *(this + 284);
  if (v23 != this + 2288)
  {
    free(v23);
  }

  *(this + 250) = &unk_1F5B3E720;
  v24 = *(this + 273);
  if (v24 == (this + 2160))
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  *(this + 250) = &unk_1F5B3E1D8;
  v25 = *(this + 262);
  if (v25 != *(this + 261))
  {
    free(v25);
  }

  v26 = *(this + 258);
  if (v26 != this + 2080)
  {
    free(v26);
  }

  *(this + 224) = &unk_1F5B3E720;
  v27 = *(this + 247);
  if (v27 == (this + 1952))
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }

  *(this + 224) = &unk_1F5B3E1D8;
  v28 = *(this + 236);
  if (v28 != *(this + 235))
  {
    free(v28);
  }

  v29 = *(this + 232);
  if (v29 != this + 1872)
  {
    free(v29);
  }

  *(this + 198) = &unk_1F5B3E720;
  v30 = *(this + 221);
  if (v30 == (this + 1744))
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))(v30);
  }

  *(this + 198) = &unk_1F5B3E1D8;
  v31 = *(this + 210);
  if (v31 != *(this + 209))
  {
    free(v31);
  }

  v32 = *(this + 206);
  if (v32 != this + 1664)
  {
    free(v32);
  }

  *(this + 172) = &unk_1F5B3E720;
  v33 = *(this + 195);
  if (v33 == (this + 1536))
  {
    (*(*v33 + 32))(v33);
  }

  else if (v33)
  {
    (*(*v33 + 40))(v33);
  }

  *(this + 172) = &unk_1F5B3E1D8;
  v34 = *(this + 184);
  if (v34 != *(this + 183))
  {
    free(v34);
  }

  v35 = *(this + 180);
  if (v35 != this + 1456)
  {
    free(v35);
  }

  *(this + 146) = &unk_1F5B3E720;
  v36 = *(this + 169);
  if (v36 == (this + 1328))
  {
    (*(*v36 + 32))(v36);
  }

  else if (v36)
  {
    (*(*v36 + 40))(v36);
  }

  *(this + 146) = &unk_1F5B3E1D8;
  v37 = *(this + 158);
  if (v37 != *(this + 157))
  {
    free(v37);
  }

  v38 = *(this + 154);
  if (v38 != this + 1248)
  {
    free(v38);
  }

  *(this + 120) = &unk_1F5B3E720;
  v39 = *(this + 143);
  if (v39 == (this + 1120))
  {
    (*(*v39 + 32))(v39);
  }

  else if (v39)
  {
    (*(*v39 + 40))(v39);
  }

  *(this + 120) = &unk_1F5B3E1D8;
  v40 = *(this + 132);
  if (v40 != *(this + 131))
  {
    free(v40);
  }

  v41 = *(this + 128);
  if (v41 != this + 1040)
  {
    free(v41);
  }

  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(this + 43);

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

void *mlir::MPSToANECBase<mlir::anonymous namespace::MPSToANEC>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5B017D8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::anec::ANECDialect,void>::id, "anec", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::anonymous namespace::MPSToANEC::runOnOperation(mlir::_anonymous_namespace_::MPSToANEC *this, mlir::Operation *a2)
{
  v11[36] = *MEMORY[0x1E69E9840];
  llvm::DebugFlag = 0;
  v3 = mlir::ANEProperties::createFromModule((*(this + 5) & 0xFFFFFFFFFFFFFFF8), a2);
  v9 = v3;
  v10 = BYTE2(v3);
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  mlir::ScopedANEProperties::ScopedANEProperties(v8, Context, &v9);
  v5 = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v6 = this + 3392;
  v7 = *(this + 3415);
  if (v7 < 0)
  {
    v6 = *(this + 424);
  }

  if (v7 < 0)
  {
    v7 = *(this + 425);
  }

  mlir::MPSToANECOpCreator::MPSToANECOpCreator(v11, v5, *(this + 118), *(this + 3640), 0, *(this + 1504), *(this + 1920), *(this + 1712), *(this + 2128), *(this + 2336), *(this + 1088), *(this + 744), *(this + 318), *(this + 345), v6, v7, *(this + 3848));
}

void sub_1DFEE9EF8()
{
  v0 = v2;
  v2 = 0;
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  mlir::ScopedANEProperties::~ScopedANEProperties(&v1);
}

uint64_t mlir::MPSToANECBase<mlir::anonymous namespace::MPSToANEC>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13[20] = *MEMORY[0x1E69E9840];
  v4 = operator new(0xF58uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B0CA60;
  *&v11 = "The family to target for ANEC region formation (default A12).";
  *(&v11 + 1) = 61;
  v9 = 0;
  v10 = &v9;
  *&v12 = v13;
  *(&v12 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v13, 8uLL, 40);
  v6 = DWORD2(v12);
  v7 = v12 + 40 * DWORD2(v12);
  *v7 = "A12";
  *(v7 + 8) = 3;
  *(v7 + 16) = 0;
  *(v7 + 24) = "A12 family";
  *(v7 + 32) = 10;
  *(v7 + 40) = "A13";
  *(v7 + 48) = 3;
  *(v7 + 56) = 1;
  *(v7 + 64) = "A13 family";
  *(v7 + 72) = 10;
  *(v7 + 80) = "A14";
  *(v7 + 88) = 3;
  *(v7 + 96) = 2;
  *(v7 + 104) = "A14 family";
  *(v7 + 112) = 10;
  *(v7 + 120) = "A15";
  *(v7 + 128) = 3;
  *(v7 + 136) = 3;
  *(v7 + 144) = "A15 family";
  *(v7 + 152) = 10;
  *(v7 + 160) = "A16";
  *(v7 + 168) = 3;
  *(v7 + 176) = 4;
  *(v7 + 184) = "A16 family";
  *(v7 + 192) = 10;
  *(v7 + 200) = "A17";
  *(v7 + 208) = 3;
  *(v7 + 216) = 5;
  *(v7 + 224) = "A17 family";
  *(v7 + 232) = 10;
  *(v7 + 240) = "A18";
  *(v7 + 248) = 3;
  *(v7 + 256) = 6;
  *(v7 + 264) = "A18 family";
  *(v7 + 272) = 10;
  *(v7 + 280) = "A11Legacy";
  *(v7 + 288) = 9;
  *(v7 + 296) = 7;
  *(v7 + 304) = "A11 Legacy family";
  *(v7 + 312) = 17;
  DWORD2(v12) = v6 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(v4 + 344, v4 + 152, "target-family", 13, &v11, &v10, &v12);
  *(v4 + 43) = &unk_1F5B00EC0;
  *(v4 + 118) = &unk_1F5B00F40;
  if (v12 != v13)
  {
    free(v12);
  }

  *&v12 = "If device hints cannot be followed then compilation has failed.";
  *(&v12 + 1) = 63;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 60), v4 + 19, "strict-hints", 12, &v12, &v11);
  *(v4 + 120) = &unk_1F5AFB130;
  *(v4 + 144) = &unk_1F5AFB1B0;
  *&v12 = "If true, the ANEC macho procedure will follow the MPS host function name. If false, it will use the ANEC region symbol name instead.";
  *(&v12 + 1) = 132;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 73), v4 + 19, "use-function-name-for-anec-procedure", 36, &v12, &v11);
  *(v4 + 146) = &unk_1F5AFB130;
  *(v4 + 170) = &unk_1F5AFB1B0;
  *&v12 = "If true, placement uses the cost model.";
  *(&v12 + 1) = 39;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 86), v4 + 19, "use-cost-model", 14, &v12, &v11);
  *(v4 + 172) = &unk_1F5AFB130;
  *(v4 + 196) = &unk_1F5AFB1B0;
  *&v12 = "If true, everything will be placed on the host. (requires use-cost-model)";
  *(&v12 + 1) = 73;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 99), v4 + 19, "force-host-placement", 20, &v12, &v11);
  *(v4 + 198) = &unk_1F5AFB130;
  *(v4 + 222) = &unk_1F5AFB1B0;
  *&v12 = "If true, everything will be placed on the ane if possible. (requires use-cost-model)";
  *(&v12 + 1) = 84;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 112), v4 + 19, "force-ane-placement", 19, &v12, &v11);
  *(v4 + 224) = &unk_1F5AFB130;
  *(v4 + 248) = &unk_1F5AFB1B0;
  *&v12 = "If true, print the estimated cost of the resulting module (requires use-cost-model).";
  *(&v12 + 1) = 84;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 125), v4 + 19, "print-estimated-cost", 20, &v12, &v11);
  *(v4 + 250) = &unk_1F5AFB130;
  *(v4 + 274) = &unk_1F5AFB1B0;
  *&v12 = "Insert instrumentation to enable performance recording.";
  *(&v12 + 1) = 55;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 138), v4 + 19, "insert-instrumentation", 22, &v12, &v11);
  *(v4 + 276) = &unk_1F5AFB130;
  *(v4 + 300) = &unk_1F5AFB1B0;
  *&v12 = "The maximum number of mps operations that will be used to create an ANE region.";
  *(&v12 + 1) = 79;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<long long>>((v4 + 151), v4 + 152, "ane-max-ops", 11, &v12, &v11);
  *(v4 + 302) = &unk_1F5B0CAD0;
  *(v4 + 327) = &unk_1F5B0CB50;
  *&v12 = "The maximum number of cumulative liveIns and liveOuts for an ANE region.";
  *(&v12 + 1) = 72;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<long long>>(v4 + 2632, v4 + 152, "ane-max-liveio", 14, &v12, &v11);
  *(v4 + 329) = &unk_1F5B0CAD0;
  *(v4 + 354) = &unk_1F5B0CB50;
  *&v12 = "The number of gpu cores.";
  *(&v12 + 1) = 24;
  LODWORD(v10) = 1;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 178), v4 + 19, "gpu-core-count", 14, &v12, &v11);
  *(v4 + 356) = &unk_1F5AFEE68;
  *(v4 + 380) = &unk_1F5AFEEE8;
  *&v12 = "If true, print a report of which ops failed to be placed on ANE.";
  *(&v12 + 1) = 64;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 191), v4 + 19, "print-placement-report", 22, &v12, &v11);
  *(v4 + 382) = &unk_1F5AFB130;
  *(v4 + 406) = &unk_1F5AFB1B0;
  *&v12 = "Postfix appended to the name of the ANE regions created.";
  *(&v12 + 1) = 56;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 204), v4 + 152, "region-name-postfix", 19, &v12);
  *(v4 + 408) = &unk_1F5AFC930;
  *(v4 + 437) = &unk_1F5AFC9B0;
  *&v12 = "If true, use GOC and quantimization patterns to optimzie the ANEC IR.";
  *(&v12 + 1) = 69;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 3512, v4 + 19, "legacy-quant-conversion", 23, &v12, &v11);
  *(v4 + 439) = &unk_1F5AFB130;
  *(v4 + 463) = &unk_1F5AFB1B0;
  *&v12 = "If true, features required for AFM model, including 16-bit int support and fused ops.";
  *(&v12 + 1) = 85;
  LOBYTE(v10) = 0;
  *&v11 = &v10;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 3720, v4 + 19, "enable-afm-mlir-features", 24, &v12, &v11);
  *(v4 + 465) = &unk_1F5AFB130;
  *(v4 + 489) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B0C9F0;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<long long>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t **a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<long long>>(a1, v10, &v13, a5, a6);
  *(v8 + 208) = 0;
  *v8 = &unk_1F5B0CB90;
  *(v8 + 200) = &unk_1F5B0CC10;
  v13 = (v8 + 200);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v13);
  v11[0] = &unk_1F5B0CD20;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_1F5B0CD20;
  v14 = a1;
  std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](&v13, a1 + 168);
  if (v15 == &v13)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<long long>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, uint64_t **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v16 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v16;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F5B0CCB8;
  *a1 = &unk_1F5B0CC50;
  *(a1 + 160) = &unk_1F5B3E3E0;
  *(a1 + 168) = &unk_1F5B0CCD8;
  *(a1 + 192) = a1 + 168;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v14 = **a5;
  *(a1 + 128) = v14;
  *(a1 + 152) = 1;
  *(a1 + 144) = v14;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIxEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0CD20;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIxEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0CD20;
  a2[1] = v2;
  return result;
}

void mlir::anonymous namespace::runFusionOpConversion(unsigned int *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((a1 + 6));
  *__p = 0u;
  *v26 = 0u;
  v27 = &v29;
  v28 = 0x600000000;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0x2800000000;
  v36 = 0;
  v37 = 0;
  v38 = 0x2800000000;
  mlir::populateMPSToANECFusionOpsConversionPatterns(&Context, a2);
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v16, &Context, 0, 0, 0, 0);
  v4 = a1[11];
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((&a1[4 * ((v4 >> 23) & 1) + 17] + ((v4 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    v23 = 0;
    v17 = 0;
    v18 = 2;
    v19 = xmmword_1E0982650;
    v20 = 0;
    v21 = 2;
    v22 = 0;
    mlir::applyPatternsAndFoldGreedily(v5, v16, &v17, &v23);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v16);
  if (HIDWORD(v37) && v37)
  {
    v6 = 0;
    do
    {
      v7 = *(v36 + v6);
      if (v7 != -8 && v7 != 0)
      {
        v9 = *v7;
        v10 = *(v7 + 4);
        if (v10 == (v7 + 8))
        {
          (*(*v10 + 32))(v10);
        }

        else if (v10)
        {
          (*(*v10 + 40))(v10);
        }

        llvm::deallocate_buffer(v7, (v9 + 41));
      }

      v6 += 8;
    }

    while (8 * v37 != v6);
  }

  free(v36);
  if (HIDWORD(v34) && v34)
  {
    v11 = 0;
    do
    {
      v12 = *(v33 + v11);
      if (v12 != -8 && v12 != 0)
      {
        v14 = *v12;
        v15 = *(v12 + 4);
        if (v15 == (v12 + 8))
        {
          (*(*v15 + 32))(v15);
        }

        else if (v15)
        {
          (*(*v15 + 40))(v15);
        }

        llvm::deallocate_buffer(v12, (v14 + 41));
      }

      v11 += 8;
    }

    while (8 * v34 != v11);
  }

  free(v33);
  llvm::deallocate_buffer(v30, (16 * v32));
}

BOOL _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZNS1_12_GLOBAL__N_19MPSToANEC12assignIOAttrEvE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESP_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void **a1, mlir::Operation *this)
{
  v35[4] = *MEMORY[0x1E69E9840];
  result = 1;
  if (!this || *(*(this + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    return result;
  }

  v5 = *a1;
  v28 = this;
  if (!*(this + 47) || (v36.var0 = "io_info", v36.var1 = 7, InherentAttr = mlir::Operation::getInherentAttr(this, v36), (v7 & 1) == 0))
  {
    v41.var0 = "io_info";
    v41.var1 = 7;
    if (mlir::DictionaryAttr::contains((this + 56), v41))
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (!InherentAttr)
  {
    return 1;
  }

LABEL_6:
  if (!*(this + 47) || (v37.var0 = "io_info", v37.var1 = 7, v8 = mlir::Operation::getInherentAttr(this, v37), (v9 & 1) == 0))
  {
    v38.var0 = "io_info";
    v38.var1 = 7;
    v8 = mlir::DictionaryAttr::get((this + 56), v38);
  }

  v27 = v8;
  v39.var0 = "input";
  v39.var1 = 5;
  v26 = mlir::DictionaryAttr::get(&v27, v39);
  v40.var0 = "output";
  v40.var1 = 6;
  v25 = mlir::DictionaryAttr::get(&v27, v40);
  Value = mlir::ArrayAttr::getValue(&v26);
  v11 = mlir::ArrayAttr::getValue(&v26);
  v13 = (v11 + 8 * v12);
  v33 = v35;
  v34 = 0x400000000;
  v14 = (v13 - Value) >> 3;
  if (v14 < 5)
  {
    v15 = 0;
    if (v13 == Value)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v14, 8);
  v15 = v34;
  if (v13 != Value)
  {
LABEL_15:
    memcpy(v33 + 8 * v15, Value, v13 - Value);
    v15 = v34;
  }

LABEL_16:
  LODWORD(v34) = v15 + ((v13 - Value) >> 3);
  v16 = mlir::ArrayAttr::getValue(&v25);
  v17 = mlir::ArrayAttr::getValue(&v25);
  v19 = (v17 + 8 * v18);
  v30 = v32;
  v31 = 0x400000000;
  v20 = (v19 - v16) >> 3;
  if (v20 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v20, 8);
    v21 = v31;
    if (v19 == v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v21 = 0;
  if (v19 != v16)
  {
LABEL_20:
    memcpy(v30 + 8 * v21, v16, v19 - v16);
    v21 = v31;
  }

LABEL_21:
  LODWORD(v31) = v21 + ((v19 - v16) >> 3);
  v24[0] = &v33;
  v24[1] = &v30;
  v24[2] = &v28;
  v24[3] = *v5;
  v24[4] = v5[1];
  v24[5] = v5[2];
  v29 = v24;
  result = mlir::detail::walk<mlir::ForwardIterator>(this, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_12_GLOBAL__N_19MPSToANEC12assignIOAttrEvENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v29, 1) != 0;
  if (v30 != v32)
  {
    v22 = result;
    free(v30);
    result = v22;
  }

  if (v33 != v35)
  {
    v23 = result;
    free(v33);
    return v23;
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_12_GLOBAL__N_19MPSToANEC12assignIOAttrEvENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ***a1, uint64_t a2)
{
  v148 = *MEMORY[0x1E69E9840];
  result = 1;
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    return result;
  }

  v4 = *a1;
  v125 = a2;
  v5 = *(a2 + 44);
  if ((v5 & 0x800000) != 0)
  {
    if (*(a2 + 68) == *(*v4 + 2))
    {
      goto LABEL_5;
    }
  }

  else if (!*(*v4 + 2))
  {
LABEL_5:
    if (*(v4[1] + 2) == *(a2 + 36))
    {
      v135 = v137;
      v136 = 0x600000000;
      v132 = v134;
      v133 = 0x600000000;
      v129 = v131;
      v130 = 0x400000000;
      v126 = v128;
      v127 = 0x400000000;
      v123[0] = 0;
      v123[1] = 0;
      v124 = 0;
      if ((v5 & 0x800000) != 0 && (v6 = *(a2 + 68), v6))
      {
        v7 = *(a2 + 72);
        v8 = (v7 + 32 * v6);
        do
        {
          OperandNumber = mlir::OpOperand::getOperandNumber(v7);
          *&v138 = *(v7 + 3);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v123, &v138) = OperandNumber;
          v7 = (v7 + 32);
        }

        while (v7 != v8);
        LODWORD(v10) = v136;
      }

      else
      {
        LODWORD(v10) = 0;
      }

      v11 = *v4[2];
      v12 = *(v11 + 44);
      v13 = (v12 >> 23) & 1;
      v14 = (v12 >> 21) & 0x7F8;
      v15 = 32 * *(v11 + 40);
      v16 = *(((v11 + 16 * v13 + v14 + 71) & 0xFFFFFFFFFFFFFFF8) + v15 + 8);
      if (v16)
      {
        v17 = v16 - 8;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v17 + 56) - *(v17 + 48);
      v19 = (v18 >> 3);
      v20 = v10;
      v21 = v19 >= v10;
      if (v19 != v10)
      {
        v10 = v18 >> 3;
        if (v21)
        {
          if (v19 > HIDWORD(v136))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v137, (v18 >> 3), 8);
            v20 = v136;
          }

          if (v19 != v20)
          {
            bzero(v135 + 8 * v20, 8 * (v19 - v20));
          }
        }

        LODWORD(v136) = v10;
        v11 = *v4[2];
        v22 = *(v11 + 44);
        v13 = (v22 >> 23) & 1;
        v14 = (v22 >> 21) & 0x7F8;
        v15 = 32 * *(v11 + 40);
      }

      v23 = *(((v11 + 16 * v13 + v14 + 71) & 0xFFFFFFFFFFFFFFF8) + v15 + 8);
      if (v23)
      {
        v24 = v23 - 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v24 + 48);
      v26 = *(v24 + 56);
      if (v25 != v26)
      {
        do
        {
          v27 = *v25;
          if (!**v25)
          {
            goto LABEL_29;
          }

          *&v138 = *v25;
          v28 = *(*v27 + 16);
          if (!v28)
          {
            goto LABEL_29;
          }

          do
          {
            if (*(*(v28 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
            {
              goto LABEL_43;
            }

            v29 = *(v28 + 36);
            v30 = v29 ? v28 - 16 : 0;
            if (!v29)
            {
              break;
            }

            v31 = 0;
            while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v31))
            {
              if (v29 == ++v31)
              {
                if (*(*(v28 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
                {
                  goto LABEL_29;
                }

LABEL_43:
                v32 = v27[6];
                v33 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v123, &v138);
                *(v135 + *v33) = v32;
                goto LABEL_29;
              }
            }

            *&v138 = v28 - 16;
            v28 = *(*(v28 - 16) + 16);
          }

          while (v28);
LABEL_29:
          ++v25;
        }

        while (v25 != v26);
        LODWORD(v10) = v136;
      }

      if (v10)
      {
        v34 = *v4;
        v35 = v135;
        v36 = v130;
        v37 = 8 * v10;
        do
        {
          v38 = *(*v34 + 8 * *v35);
          if (v36 >= HIDWORD(v130))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v131, v36 + 1, 8);
            v36 = v130;
          }

          *(v129 + v36) = v38;
          v36 = v130 + 1;
          LODWORD(v130) = v130 + 1;
          ++v35;
          v37 -= 8;
        }

        while (v37);
      }

      v39 = *v4[2];
      v40 = *(((v39 + 16 * ((*(v39 + 44) >> 23) & 1) + ((*(v39 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v39 + 40) + 8);
      if (v40)
      {
        v41 = (v40 - 8);
      }

      else
      {
        v41 = 0;
      }

      Terminator = mlir::Block::getTerminator(v41, a2);
      v121[0] = 0;
      v121[1] = 0;
      v122 = 0;
      if ((*(Terminator + 46) & 0x80) != 0)
      {
        v43 = *(Terminator + 68);
        if (v43)
        {
          v44 = *(Terminator + 72);
          v45 = (v44 + 32 * v43);
          do
          {
            v46 = mlir::OpOperand::getOperandNumber(v44);
            *&v138 = *(v44 + 3);
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v121, &v138) = v46;
            v44 = (v44 + 32);
          }

          while (v44 != v45);
        }
      }

      v47 = v125;
      if (*(v125 + 9))
      {
        v48 = 0;
        do
        {
          v49 = v47 - 24 * (v48 - 5) - 96;
          v50 = v47 + 16 * ~v48;
          if (v48 > 5)
          {
            v50 = v49;
          }

          *&v138 = v50;
          v51 = *(*v50 + 16);
          if (v51)
          {
            while (1)
            {
              {
                _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_12_GLOBAL__N_19MPSToANEC12assignIOAttrEvENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4__cold_1();
              }

              if ((*(**(v51 + 48) + 32))(*(v51 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
              {
                break;
              }

              v52 = *(v51 + 36);
              v53 = v52 ? v51 - 16 : 0;
              if (!v52)
              {
                break;
              }

              v54 = 0;
              while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v53, v54))
              {
                if (v52 == ++v54)
                {
                  goto LABEL_77;
                }
              }

              *&v138 = v51 - 16;
              v51 = *(*(v51 - 16) + 16);
              if (!v51)
              {
                goto LABEL_60;
              }
            }

LABEL_77:
            {
              _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_12_GLOBAL__N_19MPSToANEC12assignIOAttrEvENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SI_S2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESR_E4typeES4_OT1_EUlS4_E_EES2_lS4__cold_1();
            }

            if ((*(**(v51 + 48) + 32))(*(v51 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              v55 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v121, &v138);
              v56 = v133;
              if (v133 >= HIDWORD(v133))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v134, v133 + 1, 8);
                v56 = v133;
              }

              *(v132 + v56) = v55;
              LODWORD(v133) = v133 + 1;
            }
          }

LABEL_60:
          ++v48;
          v47 = v125;
        }

        while (v48 < *(v125 + 9));
      }

      if (v133)
      {
        v57 = v4[1];
        v58 = v132;
        v59 = 8 * v133;
        v60 = v127;
        do
        {
          v61 = *(*v57 + 8 * *v58);
          if (v60 >= HIDWORD(v127))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v128, v60 + 1, 8);
            v60 = v127;
          }

          *(v126 + v60) = v61;
          v60 = v127 + 1;
          LODWORD(v127) = v127 + 1;
          ++v58;
          v59 -= 8;
        }

        while (v59);
      }

      v62 = *v4[3];
      *&v138 = "input";
      v140 = 259;
      v63 = mlir::StringAttr::get(v62, &v138);
      v64 = mlir::ArrayAttr::get(*v4[3], v129, v130);
      mlir::NamedAttribute::NamedAttribute(&v120, v63, v64);
      v65 = *v4[3];
      *&v138 = "output";
      v140 = 259;
      v66 = mlir::StringAttr::get(v65, &v138);
      v67 = mlir::ArrayAttr::get(*v4[3], v126, v127);
      mlir::NamedAttribute::NamedAttribute(&v119, v66, v67);
      v68 = *v4[3];
      v138 = v120;
      *v139 = v119;
      v69 = mlir::DictionaryAttr::get(v68, &v138, 2);
      Callee = mlir::placement::RegionCall::getCallee(&v125);
      v72 = Callee;
      v73 = v71;
      v118[0] = Callee;
      v118[1] = v71;
      v74 = v4[4];
      v75 = *v74;
      v76 = *(v74 + 4);
      if (!v76)
      {
        LODWORD(v83) = 0;
        v81 = *v74;
        goto LABEL_99;
      }

      HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(Callee, v71);
      v78 = v76 - 1;
      for (i = 1; ; ++i)
      {
        v80 = HashValue & v78;
        v81 = v75 + 16 * (HashValue & v78);
        v82 = *v81;
        if (*v81 == -2)
        {
          if (v72 == -2)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v82 == -1)
          {
            v75 = *v74;
            v83 = *(v74 + 4);
            if (v72 != -1)
            {
              v81 = v75 + 16 * v83;
            }

LABEL_99:
            if (v75 + 16 * v83 == v81)
            {
              v93 = *v4[5];
              Context = mlir::Attribute::getContext((v93 + 6));
              v140 = 261;
              *&v138 = v72;
              *(&v138 + 1) = v73;
              v95 = mlir::StringAttr::get(Context, &v138);
              v96 = mlir::SymbolTable::lookupSymbolIn(v93, v95);
              if (v96)
              {
                v97 = v96;
                v98 = mlir::Attribute::getContext((v96 + 24));
                v140 = 261;
                *&v138 = "io_info";
                *(&v138 + 1) = 7;
                v99 = mlir::StringAttr::get(v98, &v138);
                mlir::Operation::setAttr(v97, v99, v69);
                llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(v4[4], v118, &v138);
              }

              else
              {
                v100 = *v4[2];
                v116[0] = "Error: can not find ANEC region";
                v117 = 259;
                mlir::Operation::emitError(v100, v116, &v138);
                if (v138)
                {
                  mlir::InFlightDiagnostic::report(&v138);
                }

                if (v147 == 1)
                {
                  if (v146 != &v147)
                  {
                    free(v146);
                  }

                  v101 = __p;
                  if (__p)
                  {
                    v102 = v145;
                    v103 = __p;
                    if (v145 != __p)
                    {
                      do
                      {
                        v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
                      }

                      while (v102 != v101);
                      v103 = __p;
                    }

                    v145 = v101;
                    operator delete(v103);
                  }

                  v88 = v142;
                  if (v142)
                  {
                    v104 = v143;
                    v90 = v142;
                    if (v143 != v142)
                    {
                      do
                      {
                        v106 = *--v104;
                        v105 = v106;
                        *v104 = 0;
                        if (v106)
                        {
                          operator delete[](v105);
                        }
                      }

                      while (v104 != v88);
                      goto LABEL_134;
                    }

LABEL_135:
                    v143 = v88;
                    operator delete(v90);
                  }

LABEL_136:
                  if (v139[1] != v141)
                  {
                    free(v139[1]);
                  }
                }
              }
            }

            else
            {
              v84 = *v4[2];
              v116[0] = "Error: the ANEC region has more than one caller";
              v117 = 259;
              mlir::Operation::emitError(v84, v116, &v138);
              if (v138)
              {
                mlir::InFlightDiagnostic::report(&v138);
              }

              if (v147 == 1)
              {
                if (v146 != &v147)
                {
                  free(v146);
                }

                v85 = __p;
                if (__p)
                {
                  v86 = v145;
                  v87 = __p;
                  if (v145 != __p)
                  {
                    do
                    {
                      v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
                    }

                    while (v86 != v85);
                    v87 = __p;
                  }

                  v145 = v85;
                  operator delete(v87);
                }

                v88 = v142;
                if (v142)
                {
                  v89 = v143;
                  v90 = v142;
                  if (v143 == v142)
                  {
                    goto LABEL_135;
                  }

                  do
                  {
                    v92 = *--v89;
                    v91 = v92;
                    *v89 = 0;
                    if (v92)
                    {
                      operator delete[](v91);
                    }
                  }

                  while (v89 != v88);
LABEL_134:
                  v90 = v142;
                  goto LABEL_135;
                }

                goto LABEL_136;
              }
            }

            llvm::deallocate_buffer(v121[0], (16 * v122));
          }

          if (v73 == *(v81 + 8) && (!v73 || !memcmp(v72, v82, v73)))
          {
LABEL_97:
            v75 = *v74;
            LODWORD(v83) = *(v74 + 4);
            goto LABEL_99;
          }
        }

        HashValue = i + v80;
      }
    }
  }

  v107 = *v4[2];
  v135 = "Error: custom IO info does not match the IO count of ANE region";
  v137[8] = 259;
  mlir::Operation::emitError(v107, &v135, &v138);
  if (v138)
  {
    mlir::InFlightDiagnostic::report(&v138);
  }

  if (v147 == 1)
  {
    if (v146 != &v147)
    {
      free(v146);
    }

    v108 = __p;
    if (__p)
    {
      v109 = v145;
      v110 = __p;
      if (v145 != __p)
      {
        do
        {
          v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
        }

        while (v109 != v108);
        v110 = __p;
      }

      v145 = v108;
      operator delete(v110);
    }

    v111 = v142;
    if (v142)
    {
      v112 = v143;
      v113 = v142;
      if (v143 != v142)
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
        v113 = v142;
      }

      v143 = v111;
      operator delete(v113);
    }

    if (v139[1] != v141)
    {
      free(v139[1]);
    }
  }

  return 0;
}