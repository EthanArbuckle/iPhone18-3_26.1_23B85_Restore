void *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 104);
  if (v4)
  {
    v5 = *(a3 + 88);
    v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v4)
      {
        v8 = *(v5 + 16 * v6 + 8);
        if (*(a3 + 32) > v8)
        {
          v9 = *(*(a3 + 24) + 8 * v8);
          if (v9)
          {
            return v9;
          }
        }
      }
    }

    else
    {
      v11 = 1;
      while (v7 != -4096)
      {
        v12 = v6 + v11++;
        v6 = v12 & (v4 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v17 = a2;
  v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v17);
  NodeForBlock = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(a1, v15[2], a3);
  return llvm::DominatorTreeBase<mlir::Block,false>::createNode(a3, a2, NodeForBlock);
}

void llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom(uint64_t a1, _DWORD *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1 + 8;
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *(a1 + 8);
  }

  v7 = (v6 + 56);
  v8 = 72 * v5;
  do
  {
    if ((*(v7 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v9 = *(v7 - 2);
      if (v7 != v9)
      {
        free(v9);
      }

      v10 = *(v7 - 6);
      if (v7 - 4 != v10)
      {
        free(v10);
      }
    }

    v7 += 9;
    v8 -= 72;
  }

  while (v8);
  v4 = *a1;
LABEL_13:
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 8), (72 * *(a1 + 16)));
  }

  *a1 = v4 | 1;
  if ((*a2 & 1) == 0 && a2[4] >= 5u)
  {
    *a1 = v4 & 0xFFFFFFFE;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v11 = a2[4];
    }

    *(a1 + 8) = llvm::allocate_buffer(8 * (v11 + 8 * v11), 8uLL);
    *(a1 + 16) = v11;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>>(a1, a2);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>>(unsigned int *a1, _DWORD *a2)
{
  v2 = *a1 & 1;
  *a1 = *a2 & 0xFFFFFFFE | v2;
  a1[1] = a2[1];
  v3 = (a1 + 2);
  if (v2)
  {
    v4 = (a2 + 2);
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *v3;
    v4 = (a2 + 2);
    if (*a2)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_12:
      v5 = 4;
      if (v3 == v4)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  v4 = *v4;
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_4:
  v5 = a1[4];
  if (!v5)
  {
    return;
  }

  if (v3 != v4)
  {
LABEL_13:
    for (i = 0; ; i += 9)
    {
      v10 = v4[i];
      v3[i] = v10;
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_17;
      }

      v11 = &v3[i];
      v12 = &v3[i + 3];
      v3[i + 1] = v12;
      v13 = &v4[i];
      v3[i + 2] = 0x200000000;
      v14 = LODWORD(v4[i + 2]);
      if (v14)
      {
        break;
      }

LABEL_26:
      v16 = v11 + 7;
      v11[5] = (v11 + 7);
      v11[6] = 0x200000000;
      v17 = *(v13 + 12);
      if (!v17)
      {
        goto LABEL_17;
      }

      if (v17 < 3)
      {
        v9 = *(v13 + 12);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v11 + 5), (v11 + 7), *(v13 + 12), 8);
        v9 = *(v13 + 12);
        if (!v9)
        {
          goto LABEL_16;
        }

        v16 = v11[5];
      }

      memcpy(v16, v13[5], 8 * v9);
LABEL_16:
      *(v11 + 12) = v17;
LABEL_17:
      if (!--v5)
      {
        return;
      }
    }

    if (v14 < 3)
    {
      v15 = LODWORD(v4[i + 2]);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v3[i + 1], &v3[i + 3], LODWORD(v4[i + 2]), 8);
      v15 = *(v13 + 4);
      if (!v15)
      {
LABEL_25:
        *(v11 + 4) = v14;
        goto LABEL_26;
      }

      v12 = v3[i + 1];
    }

    memcpy(v12, v13[1], 8 * v15);
    goto LABEL_25;
  }

LABEL_6:
  v6 = v3 + 7;
  do
  {
    v7 = *v4;
    *(v6 - 7) = *v4;
    if ((v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *(v6 - 6) = v6 - 4;
      *(v6 - 5) = 0x200000000;
      *(v6 - 2) = v6;
      *(v6 - 1) = 0x200000000;
    }

    v4 += 9;
    v6 += 9;
    --v5;
  }

  while (v5);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v33 = a2;
  v34 = a5;
  v32 = 0x4000000001;
  v28 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28) + 1) = a5;
  v11 = v32;
  while (v32)
  {
    v12 = v31 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v32) = v11 - 1;
    v28 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      v25 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod((v15 + 3), (v15 + 5), v16 + 1, 4);
      v15 = v25;
      v16 = *(v25 + 8);
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v17 + 1, 8);
      v17 = *(a1 + 8);
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v18 + 8), v13, &v28);
      v19 = v29;
      if (a6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v13, &v28);
      v19 = v29;
      if (a6)
      {
LABEL_13:
        if (v19 >= 2)
        {
          v27 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v28, v28 + v19, &v27, 126 - 2 * __clz(v19), 1);
          v19 = v29;
        }
      }
    }

    v20 = v28;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          v24 = v32;
          if (v32 >= HIDWORD(v32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, &v33, v32 + 1, 16);
            v24 = v32;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = v31 + 16 * v24;
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v32) = v32 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v28;
    }

    if (v20 != &v30)
    {
      free(v20);
    }

LABEL_3:
    v11 = v32;
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return a3;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v11;
        v12 = a2 - v11;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:

              return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v10, a3);
            case 4:

              return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v11 + 2, v10, a3);
            case 5:

              return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v32 = *(a2 - 1);
            v33 = *v11;
            v34 = **a3;
            v35 = *(*a3 + 4);
            if (v35)
            {
              v36 = v35 - 1;
              v37 = (v35 - 1) & ((v32 >> 4) ^ (v32 >> 9));
              v38 = *(v34 + 16 * v37);
              if (v38 == v32)
              {
                v39 = *(v34 + 16 * v37 + 8);
LABEL_75:
                v47 = v36 & ((v33 >> 4) ^ (v33 >> 9));
                v48 = *(v34 + 16 * v47);
                if (v48 == v33)
                {
LABEL_76:
                  v35 = v47;
                }

                else
                {
                  v49 = 1;
                  while (v48 != -4096)
                  {
                    v50 = v47 + v49++;
                    v47 = v50 & v36;
                    v48 = *(v34 + 16 * v47);
                    if (v48 == v33)
                    {
                      goto LABEL_76;
                    }
                  }
                }

                goto LABEL_77;
              }

              v45 = 1;
              while (v38 != -4096)
              {
                v46 = v37 + v45++;
                v37 = v46 & v36;
                v38 = *(v34 + 16 * v37);
                if (v38 == v32)
                {
                  goto LABEL_73;
                }
              }
            }

            v37 = *(*a3 + 4);
LABEL_73:
            v39 = *(v34 + 16 * v37 + 8);
            if (v35)
            {
              v36 = v35 - 1;
              goto LABEL_75;
            }

LABEL_77:
            if (v39 < *(v34 + 16 * v35 + 8))
            {
              *v11 = v32;
              *(a2 - 1) = v33;
            }

            return result;
          }
        }

        if (v12 <= 23)
        {
          if (a5)
          {

            return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a2, a3);
          }

          else
          {

            return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a2, a3);
          }
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v40 = (v12 - 2) >> 1;
            v41 = v40 + 1;
            v42 = &v11[v40];
            do
            {
              std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a3, v12, v42--);
              --v41;
            }

            while (v41);
            do
            {
              while (1)
              {
                v44 = *v11;
                result = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a3, v12);
                if (v10 == result)
                {
                  break;
                }

                *result = *v10;
                *v10-- = v44;
                result = std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, result + 8, a3, (result + 8 - v11) >> 3);
                v43 = v12-- <= 2;
                if (v43)
                {
                  return result;
                }
              }

              *result = v44;
              --v10;
              v43 = v12-- <= 2;
            }

            while (!v43);
          }

          return result;
        }

        if (v12 >= 0x81)
        {
          break;
        }

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(&v11[v12 >> 1], v11, v10, a3);
        --a4;
        if (a5)
        {
          goto LABEL_29;
        }

LABEL_16:
        v15 = *v11;
        v16 = **a3;
        v17 = *(*a3 + 4);
        if (v17)
        {
          v18 = *(v11 - 1);
          v19 = v17 - 1;
          v20 = (v17 - 1) & ((v18 >> 4) ^ (v18 >> 9));
          v21 = *(v16 + 16 * v20);
          if (v21 == v18)
          {
            v22 = *(v16 + 16 * v20 + 8);
            goto LABEL_26;
          }

          v23 = 1;
          while (v21 != -4096)
          {
            v24 = v20 + v23++;
            v20 = v24 & v19;
            v21 = *(v16 + 16 * v20);
            if (v21 == v18)
            {
              goto LABEL_24;
            }
          }
        }

        v20 = *(*a3 + 4);
LABEL_24:
        v22 = *(v16 + 16 * v20 + 8);
        if (v17)
        {
          v19 = v17 - 1;
LABEL_26:
          v25 = v19 & ((v15 >> 4) ^ (v15 >> 9));
          v26 = *(v16 + 16 * v25);
          if (v26 == v15)
          {
LABEL_27:
            v17 = v25;
          }

          else
          {
            v30 = 1;
            while (v26 != -4096)
            {
              v31 = v25 + v30++;
              v25 = v31 & v19;
              v26 = *(v16 + 16 * v25);
              if (v26 == v15)
              {
                goto LABEL_27;
              }
            }
          }
        }

        if (v22 < *(v16 + 16 * v17 + 8))
        {
          goto LABEL_29;
        }

        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(v11, a2, a3);
        v11 = result;
        a5 = 0;
      }

      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, &v11[v12 >> 1], v10, a3);
      v13 = v12 >> 1;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11 + 1, &v11[v13 - 1], a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11 + 2, &v11[v13 + 1], a2 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(&v11[v13 - 1], &v11[v13], &v11[v13 + 1], a3);
      v14 = *v11;
      *v11 = v11[v13];
      v11[v13] = v14;
      v10 = a2 - 1;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_29:
      v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(v11, a2, a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, v27, a3);
      v11 = v27 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v27 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v29)
      {
LABEL_32:
        result = std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v27 + 1;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = *(*a4 + 4);
  v8 = *a2 >> 4;
  v9 = *a1 >> 4;
  if (v7)
  {
    v10 = v7 - 1;
    v11 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v12 = *(v6 + 16 * v11);
    if (v12 == v4)
    {
      v13 = *(v6 + 16 * v11 + 8);
      v14 = v10 & (v9 ^ (v5 >> 9));
      v15 = *(v6 + 16 * v14);
      if (v15 == v5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    v30 = 1;
    while (v12 != -4096)
    {
      v31 = v11 + v30++;
      v11 = v31 & v10;
      v12 = *(v6 + 16 * v11);
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = *(*a4 + 4);
LABEL_22:
  v13 = *(v6 + 16 * v11 + 8);
  if (!v7)
  {
    goto LABEL_28;
  }

  v10 = v7 - 1;
  v14 = (v7 - 1) & (v9 ^ (v5 >> 9));
  v15 = *(v6 + 16 * v14);
  if (v15 == v5)
  {
LABEL_4:
    v16 = *(v6 + 16 * v14 + 8);
    v17 = *a3;
    if (v13 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  v32 = 1;
  while (v15 != -4096)
  {
    v33 = v14 + v32++;
    v14 = v33 & v10;
    v15 = *(v6 + 16 * v14);
    if (v15 == v5)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  v14 = v7;
LABEL_29:
  v34 = *(v6 + 16 * v14 + 8);
  v17 = *a3;
  if (v13 < v34)
  {
    if (!v7)
    {
      goto LABEL_45;
    }

    v10 = v7 - 1;
LABEL_5:
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
    v19 = *(v6 + 16 * v18);
    if (v19 == v17)
    {
      v20 = *(v6 + 16 * v18 + 8);
      v21 = v10 & (v8 ^ (v4 >> 9));
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
LABEL_7:
        if (v20 < *(v6 + 16 * v21 + 8))
        {
LABEL_8:
          *a1 = v17;
          goto LABEL_15;
        }

        *a1 = v4;
        *a2 = v5;
        v23 = *a3;
        goto LABEL_10;
      }

      goto LABEL_48;
    }

    v46 = 1;
    while (v19 != -4096)
    {
      v47 = v18 + v46++;
      v18 = v47 & v10;
      v19 = *(v6 + 16 * v18);
      if (v19 == v17)
      {
        goto LABEL_46;
      }
    }

LABEL_45:
    v18 = v7;
LABEL_46:
    v20 = *(v6 + 16 * v18 + 8);
    if (!v7)
    {
      goto LABEL_52;
    }

    v10 = v7 - 1;
    v21 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v22 = *(v6 + 16 * v21);
    if (v22 == v4)
    {
      goto LABEL_7;
    }

LABEL_48:
    v48 = 1;
    while (v22 != -4096)
    {
      v49 = v21 + v48++;
      v21 = v49 & v10;
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    if (v20 < *(v6 + 16 * v21 + 8))
    {
      goto LABEL_8;
    }

    *a1 = v4;
    *a2 = v5;
    v23 = *a3;
    if (!v7)
    {
      goto LABEL_72;
    }

    v10 = v7 - 1;
LABEL_10:
    v24 = ((v23 >> 4) ^ (v23 >> 9)) & v10;
    v25 = *(v6 + 16 * v24);
    if (v25 == v23)
    {
      v26 = *(v6 + 16 * v24 + 8);
      v27 = v10 & (v9 ^ (v5 >> 9));
      v28 = *(v6 + 16 * v27);
      if (v28 == v5)
      {
LABEL_12:
        v7 = v27;
LABEL_13:
        if (v26 >= *(v6 + 16 * v7 + 8))
        {
          return 1;
        }

        *a2 = v23;
LABEL_15:
        *a3 = v5;
        return 1;
      }

LABEL_75:
      v56 = 1;
      while (v28 != -4096)
      {
        v57 = v27 + v56++;
        v27 = v57 & v10;
        v28 = *(v6 + 16 * v27);
        if (v28 == v5)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    v54 = 1;
    while (v25 != -4096)
    {
      v55 = v24 + v54++;
      v24 = v55 & v10;
      v25 = *(v6 + 16 * v24);
      if (v25 == v23)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v24 = v7;
LABEL_73:
    v26 = *(v6 + 16 * v24 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = v7 - 1;
    v27 = (v7 - 1) & (v9 ^ (v5 >> 9));
    v28 = *(v6 + 16 * v27);
    if (v28 == v5)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_60;
  }

  v10 = v7 - 1;
LABEL_34:
  v35 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
  v36 = *(v6 + 16 * v35);
  if (v36 == v17)
  {
    v37 = *(v6 + 16 * v35 + 8);
    v38 = v10 & (v8 ^ (v4 >> 9));
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  v50 = 1;
  while (v36 != -4096)
  {
    v51 = v35 + v50++;
    v35 = v51 & v10;
    v36 = *(v6 + 16 * v35);
    if (v36 == v17)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  v35 = v7;
LABEL_61:
  v37 = *(v6 + 16 * v35 + 8);
  if (!v7)
  {
    goto LABEL_67;
  }

  v10 = v7 - 1;
  v38 = (v7 - 1) & (v8 ^ (v4 >> 9));
  v39 = *(v6 + 16 * v38);
  if (v39 == v4)
  {
    goto LABEL_36;
  }

LABEL_63:
  v52 = 1;
  while (v39 != -4096)
  {
    v53 = v38 + v52++;
    v38 = v53 & v10;
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }
  }

LABEL_67:
  v38 = v7;
LABEL_36:
  if (v37 >= *(v6 + 16 * v38 + 8))
  {
    return 0;
  }

  *a2 = v17;
  *a3 = v4;
  v40 = *a2;
  v41 = *a1;
  if (v7)
  {
    v42 = v7 - 1;
    v43 = ((v40 >> 4) ^ (v40 >> 9)) & (v7 - 1);
    v44 = *(v6 + 16 * v43);
    if (v44 == v40)
    {
      v45 = *(v6 + 16 * v43 + 8);
      goto LABEL_86;
    }

    v58 = 1;
    while (v44 != -4096)
    {
      v59 = v43 + v58++;
      v43 = v59 & v42;
      v44 = *(v6 + 16 * v43);
      if (v44 == v40)
      {
        goto LABEL_84;
      }
    }
  }

  v43 = v7;
LABEL_84:
  v45 = *(v6 + 16 * v43 + 8);
  if (!v7)
  {
    goto LABEL_88;
  }

  v42 = v7 - 1;
LABEL_86:
  v60 = ((v41 >> 4) ^ (v41 >> 9)) & v42;
  v61 = *(v6 + 16 * v60);
  if (v61 == v41)
  {
LABEL_87:
    v7 = v60;
  }

  else
  {
    v62 = 1;
    while (v61 != -4096)
    {
      v63 = v60 + v62++;
      v60 = v63 & v42;
      v61 = *(v6 + 16 * v60);
      if (v61 == v41)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_88:
  if (v45 >= *(v6 + 16 * v7 + 8))
  {
    return 1;
  }

  *a1 = v40;
  *a2 = v41;
  return 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a2, a3, a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = *(*a5 + 4);
  if (v14)
  {
    v15 = v14 - 1;
    v16 = (v14 - 1) & ((v11 >> 4) ^ (v11 >> 9));
    v17 = *(v13 + 16 * v16);
    if (v17 == v11)
    {
      v18 = *(v13 + 16 * v16 + 8);
      goto LABEL_11;
    }

    v19 = 1;
    while (v17 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & v15;
      v17 = *(v13 + 16 * v16);
      if (v17 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*a5 + 4);
LABEL_9:
  v18 = *(v13 + 16 * v16 + 8);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14 - 1;
LABEL_11:
  v21 = v15 & ((v12 >> 4) ^ (v12 >> 9));
  v22 = *(v13 + 16 * v21);
  if (v22 == v12)
  {
    goto LABEL_12;
  }

  v29 = 1;
  while (v22 != -4096)
  {
    v30 = v21 + v29++;
    v21 = v30 & v15;
    v22 = *(v13 + 16 * v21);
    if (v22 == v12)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v21 = *(*a5 + 4);
LABEL_12:
  if (v18 >= *(v13 + 16 * v21 + 8))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v12;
  v23 = *a3;
  v24 = *a2;
  if (v14)
  {
    v25 = v14 - 1;
    v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v14 - 1);
    v27 = *(v13 + 16 * v26);
    if (v27 == v23)
    {
      v28 = *(v13 + 16 * v26 + 8);
      goto LABEL_28;
    }

    v31 = 1;
    while (v27 != -4096)
    {
      v32 = v26 + v31++;
      v26 = v32 & v25;
      v27 = *(v13 + 16 * v26);
      if (v27 == v23)
      {
        goto LABEL_26;
      }
    }
  }

  v26 = v14;
LABEL_26:
  v28 = *(v13 + 16 * v26 + 8);
  if (!v14)
  {
    goto LABEL_37;
  }

  v25 = v14 - 1;
LABEL_28:
  v33 = ((v24 >> 4) ^ (v24 >> 9)) & v25;
  v34 = *(v13 + 16 * v33);
  if (v34 == v24)
  {
    goto LABEL_29;
  }

  v41 = 1;
  while (v34 != -4096)
  {
    v42 = v33 + v41++;
    v33 = v42 & v25;
    v34 = *(v13 + 16 * v33);
    if (v34 == v24)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v33 = v14;
LABEL_29:
  if (v28 >= *(v13 + 16 * v33 + 8))
  {
    return result;
  }

  *a2 = v23;
  *a3 = v24;
  v35 = *a2;
  v36 = *a1;
  if (v14)
  {
    v37 = v14 - 1;
    v38 = ((v35 >> 4) ^ (v35 >> 9)) & (v14 - 1);
    v39 = *(v13 + 16 * v38);
    if (v39 == v35)
    {
      v40 = *(v13 + 16 * v38 + 8);
      goto LABEL_45;
    }

    v43 = 1;
    while (v39 != -4096)
    {
      v44 = v38 + v43++;
      v38 = v44 & v37;
      v39 = *(v13 + 16 * v38);
      if (v39 == v35)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = v14;
LABEL_43:
  v40 = *(v13 + 16 * v38 + 8);
  if (!v14)
  {
    goto LABEL_47;
  }

  v37 = v14 - 1;
LABEL_45:
  v45 = ((v36 >> 4) ^ (v36 >> 9)) & v37;
  v46 = *(v13 + 16 * v45);
  if (v46 == v36)
  {
LABEL_46:
    v14 = v45;
  }

  else
  {
    v47 = 1;
    while (v46 != -4096)
    {
      v48 = v45 + v47++;
      v45 = v48 & v37;
      v46 = *(v13 + 16 * v45);
      if (v46 == v36)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  if (v40 < *(v13 + 16 * v14 + 8))
  {
    *a1 = v35;
    *a2 = v36;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = *(*a6 + 4);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = (v16 - 1) & ((v13 >> 4) ^ (v13 >> 9));
    v19 = *(v15 + 16 * v18);
    if (v19 == v13)
    {
      v20 = *(v15 + 16 * v18 + 8);
      goto LABEL_11;
    }

    v21 = 1;
    while (v19 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v19 = *(v15 + 16 * v18);
      if (v19 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = *(*a6 + 4);
LABEL_9:
  v20 = *(v15 + 16 * v18 + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16 - 1;
LABEL_11:
  v23 = v17 & ((v14 >> 4) ^ (v14 >> 9));
  v24 = *(v15 + 16 * v23);
  if (v24 == v14)
  {
    goto LABEL_12;
  }

  v31 = 1;
  while (v24 != -4096)
  {
    v32 = v23 + v31++;
    v23 = v32 & v17;
    v24 = *(v15 + 16 * v23);
    if (v24 == v14)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v23 = *(*a6 + 4);
LABEL_12:
  if (v20 >= *(v15 + 16 * v23 + 8))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v14;
  v25 = *a4;
  v26 = *a3;
  if (v16)
  {
    v27 = v16 - 1;
    v28 = ((v25 >> 4) ^ (v25 >> 9)) & (v16 - 1);
    v29 = *(v15 + 16 * v28);
    if (v29 == v25)
    {
      v30 = *(v15 + 16 * v28 + 8);
      goto LABEL_28;
    }

    v33 = 1;
    while (v29 != -4096)
    {
      v34 = v28 + v33++;
      v28 = v34 & v27;
      v29 = *(v15 + 16 * v28);
      if (v29 == v25)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = v16;
LABEL_26:
  v30 = *(v15 + 16 * v28 + 8);
  if (!v16)
  {
    goto LABEL_37;
  }

  v27 = v16 - 1;
LABEL_28:
  v35 = ((v26 >> 4) ^ (v26 >> 9)) & v27;
  v36 = *(v15 + 16 * v35);
  if (v36 == v26)
  {
    goto LABEL_29;
  }

  v43 = 1;
  while (v36 != -4096)
  {
    v44 = v35 + v43++;
    v35 = v44 & v27;
    v36 = *(v15 + 16 * v35);
    if (v36 == v26)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v35 = v16;
LABEL_29:
  if (v30 >= *(v15 + 16 * v35 + 8))
  {
    return result;
  }

  *a3 = v25;
  *a4 = v26;
  v37 = *a3;
  v38 = *a2;
  if (v16)
  {
    v39 = v16 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v16 - 1);
    v41 = *(v15 + 16 * v40);
    if (v41 == v37)
    {
      v42 = *(v15 + 16 * v40 + 8);
      goto LABEL_45;
    }

    v45 = 1;
    while (v41 != -4096)
    {
      v46 = v40 + v45++;
      v40 = v46 & v39;
      v41 = *(v15 + 16 * v40);
      if (v41 == v37)
      {
        goto LABEL_43;
      }
    }
  }

  v40 = v16;
LABEL_43:
  v42 = *(v15 + 16 * v40 + 8);
  if (!v16)
  {
    goto LABEL_54;
  }

  v39 = v16 - 1;
LABEL_45:
  v47 = ((v38 >> 4) ^ (v38 >> 9)) & v39;
  v48 = *(v15 + 16 * v47);
  if (v48 == v38)
  {
    goto LABEL_46;
  }

  v55 = 1;
  while (v48 != -4096)
  {
    v56 = v47 + v55++;
    v47 = v56 & v39;
    v48 = *(v15 + 16 * v47);
    if (v48 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  v47 = v16;
LABEL_46:
  if (v42 >= *(v15 + 16 * v47 + 8))
  {
    return result;
  }

  *a2 = v37;
  *a3 = v38;
  v49 = *a2;
  v50 = *a1;
  if (v16)
  {
    v51 = v16 - 1;
    v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v16 - 1);
    v53 = *(v15 + 16 * v52);
    if (v53 == v49)
    {
      v54 = *(v15 + 16 * v52 + 8);
      goto LABEL_62;
    }

    v57 = 1;
    while (v53 != -4096)
    {
      v58 = v52 + v57++;
      v52 = v58 & v51;
      v53 = *(v15 + 16 * v52);
      if (v53 == v49)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = v16;
LABEL_60:
  v54 = *(v15 + 16 * v52 + 8);
  if (!v16)
  {
    goto LABEL_64;
  }

  v51 = v16 - 1;
LABEL_62:
  v59 = ((v50 >> 4) ^ (v50 >> 9)) & v51;
  v60 = *(v15 + 16 * v59);
  if (v60 == v50)
  {
LABEL_63:
    v16 = v59;
  }

  else
  {
    v61 = 1;
    while (v60 != -4096)
    {
      v62 = v59 + v61++;
      v59 = v62 & v51;
      v60 = *(v15 + 16 * v59);
      if (v60 == v50)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  if (v54 < *(v15 + 16 * v16 + 8))
  {
    *a1 = v49;
    *a2 = v50;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      v8 = result;
      do
      {
        v10 = v3;
        v12 = *v8;
        v11 = v8[1];
        v13 = v11 >> 4;
        if (v5)
        {
          v14 = v6 & (v13 ^ (v11 >> 9));
          v15 = *(v4 + 16 * v14);
          if (v15 != v11)
          {
            v33 = 1;
            while (v15 != -4096)
            {
              v34 = v14 + v33++;
              v14 = v34 & v6;
              v15 = *(v4 + 16 * v14);
              if (v15 == v11)
              {
                goto LABEL_9;
              }
            }

            v14 = v5;
          }

LABEL_9:
          v16 = *(v4 + 16 * v14 + 8);
          v17 = v6 & ((v12 >> 4) ^ (v12 >> 9));
          v18 = *(v4 + 16 * v17);
          if (v18 != v12)
          {
            v19 = 1;
            while (v18 != -4096)
            {
              v20 = v17 + v19++;
              v17 = v20 & v6;
              v18 = *(v4 + 16 * v17);
              if (v18 == v12)
              {
                goto LABEL_15;
              }
            }

            if (v16 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_6;
            }

LABEL_16:
            v21 = v6 & (v13 ^ (v11 >> 9));
            v22 = (v4 + 16 * v21);
            v9 = v10;
            while (1)
            {
              *v9 = v12;
              if (v8 == result)
              {
                break;
              }

              v9 = v8;
              v25 = *--v8;
              v12 = v25;
              if (v5)
              {
                v26 = *v22;
                v27 = v21;
                if (*v22 != v11)
                {
                  v31 = 1;
                  LODWORD(v27) = v21;
                  while (v26 != -4096)
                  {
                    v32 = v27 + v31++;
                    v27 = v32 & v6;
                    v26 = *(v4 + 16 * v27);
                    if (v26 == v11)
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v5;
                }

LABEL_22:
                v24 = *(v4 + 16 * v27 + 8);
                v23 = ((v12 >> 4) ^ (v12 >> 9)) & v6;
                v28 = *(v4 + 16 * v23);
                if (v28 != v12)
                {
                  v29 = 1;
                  while (v28 != -4096)
                  {
                    v30 = v23 + v29++;
                    v23 = v30 & v6;
                    v28 = *(v4 + 16 * v23);
                    if (v28 == v12)
                    {
                      goto LABEL_18;
                    }
                  }

                  v23 = v5;
                }
              }

              else
              {
                v23 = 0;
                v24 = *(v7 + 8);
              }

LABEL_18:
              if (v24 >= *(v4 + 16 * v23 + 8))
              {
                goto LABEL_5;
              }
            }

            v9 = result;
LABEL_5:
            *v9 = v11;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = 0;
          v16 = *(v7 + 8);
        }

LABEL_15:
        if (v16 < *(v4 + 16 * v17 + 8))
        {
          goto LABEL_16;
        }

LABEL_6:
        v3 = v10 + 1;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      do
      {
        v8 = v3;
        v10 = *result;
        v9 = result[1];
        v11 = v9 >> 4;
        if (v5)
        {
          v12 = v6 & (v11 ^ (v9 >> 9));
          v13 = *(v4 + 16 * v12);
          if (v13 != v9)
          {
            v32 = 1;
            while (v13 != -4096)
            {
              v33 = v12 + v32++;
              v12 = v33 & v6;
              v13 = *(v4 + 16 * v12);
              if (v13 == v9)
              {
                goto LABEL_8;
              }
            }

            v12 = v5;
          }

LABEL_8:
          v14 = *(v4 + 16 * v12 + 8);
          v15 = v6 & ((v10 >> 4) ^ (v10 >> 9));
          v16 = *(v4 + 16 * v15);
          if (v16 != v10)
          {
            v17 = 1;
            while (v16 != -4096)
            {
              v18 = v15 + v17++;
              v15 = v18 & v6;
              v16 = *(v4 + 16 * v15);
              if (v16 == v10)
              {
                goto LABEL_14;
              }
            }

            if (v14 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_5;
            }

LABEL_15:
            v19 = v6 & (v11 ^ (v9 >> 9));
            v20 = (v4 + 16 * v19);
            v21 = v8;
            do
            {
              *v21 = v10;
              v21 = result;
              v24 = *--result;
              v10 = v24;
              if (v5)
              {
                v25 = *v20;
                v26 = v19;
                if (*v20 != v9)
                {
                  v30 = 1;
                  LODWORD(v26) = v19;
                  while (v25 != -4096)
                  {
                    v31 = v26 + v30++;
                    v26 = v31 & v6;
                    v25 = *(v4 + 16 * v26);
                    if (v25 == v9)
                    {
                      goto LABEL_20;
                    }
                  }

                  v26 = v5;
                }

LABEL_20:
                v23 = *(v4 + 16 * v26 + 8);
                v22 = ((v10 >> 4) ^ (v10 >> 9)) & v6;
                v27 = *(v4 + 16 * v22);
                if (v27 != v10)
                {
                  v28 = 1;
                  while (v27 != -4096)
                  {
                    v29 = v22 + v28++;
                    v22 = v29 & v6;
                    v27 = *(v4 + 16 * v22);
                    if (v27 == v10)
                    {
                      goto LABEL_17;
                    }
                  }

                  v22 = v5;
                }
              }

              else
              {
                v22 = 0;
                v23 = *(v7 + 8);
              }

LABEL_17:
              ;
            }

            while (v23 < *(v4 + 16 * v22 + 8));
            *v21 = v9;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0;
          v14 = *(v7 + 8);
        }

LABEL_14:
        if (v14 < *(v4 + 16 * v15 + 8))
        {
          goto LABEL_15;
        }

LABEL_5:
        v3 = v8 + 1;
        result = v8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = *(*a3 + 4);
  v7 = *a1 >> 4;
  if (v6)
  {
    v8 = v6 - 1;
    v9 = (v6 - 1) & (v7 ^ (v3 >> 9));
    v10 = *(v5 + 16 * v9);
    if (v10 == v3)
    {
      v11 = *(v5 + 16 * v9 + 8);
      goto LABEL_11;
    }

    v12 = 1;
    while (v10 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = *(*a3 + 4);
LABEL_9:
  v11 = *(v5 + 16 * v9 + 8);
  if (!v6)
  {
    goto LABEL_107;
  }

  v8 = v6 - 1;
LABEL_11:
  v14 = v8 & ((v4 >> 4) ^ (v4 >> 9));
  v15 = *(v5 + 16 * v14);
  if (v15 == v4)
  {
    goto LABEL_12;
  }

  v81 = 1;
  while (v15 != -4096)
  {
    v82 = v14 + v81++;
    v14 = v82 & v8;
    v15 = *(v5 + 16 * v14);
    if (v15 == v4)
    {
      goto LABEL_12;
    }
  }

LABEL_107:
  v14 = *(*a3 + 4);
LABEL_12:
  v16 = *(v5 + 16 * v14 + 8);
  v17 = v6 - 1;
  v18 = (v6 - 1) & (v7 ^ (v3 >> 9));
  v19 = (v5 + 16 * v18);
  v20 = v5 + 16 * v6;
  v21 = a1;
  if (v11 < v16)
  {
    do
    {
      v25 = v21[1];
      ++v21;
      v24 = v25;
      if (v6)
      {
        v26 = *v19;
        v27 = (v19 + 1);
        if (*v19 != v3)
        {
          v31 = 1;
          LODWORD(v32) = v18;
          while (v26 != -4096)
          {
            v33 = v32 + v31++;
            v32 = v33 & v17;
            v26 = *(v5 + 16 * v32);
            if (v26 == v3)
            {
              goto LABEL_29;
            }
          }

          v32 = v6;
LABEL_29:
          v27 = (v5 + 16 * v32 + 8);
        }

        v23 = *v27;
        v22 = ((v24 >> 4) ^ (v24 >> 9)) & v17;
        v28 = *(v5 + 16 * v22);
        if (v28 != v24)
        {
          v29 = 1;
          while (v28 != -4096)
          {
            v30 = v22 + v29++;
            v22 = v30 & v17;
            v28 = *(v5 + 16 * v22);
            if (v28 == v24)
            {
              goto LABEL_15;
            }
          }

          v22 = v6;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v20 + 8);
      }

LABEL_15:
      ;
    }

    while (v23 >= *(v5 + 16 * v22 + 8));
  }

  else
  {
    do
    {
      if (++v21 >= a2)
      {
        break;
      }

      if (v6)
      {
        v36 = *v19;
        v37 = (v19 + 1);
        if (*v19 != v3)
        {
          v41 = 1;
          LODWORD(v42) = v18;
          while (v36 != -4096)
          {
            v43 = v42 + v41++;
            v42 = v43 & v17;
            v36 = *(v5 + 16 * v42);
            if (v36 == v3)
            {
              goto LABEL_46;
            }
          }

          v42 = v6;
LABEL_46:
          v37 = (v5 + 16 * v42 + 8);
        }

        v35 = *v37;
        v34 = ((*v21 >> 4) ^ (*v21 >> 9)) & v17;
        v38 = *(v5 + 16 * v34);
        if (v38 != *v21)
        {
          v39 = 1;
          while (v38 != -4096)
          {
            v40 = v34 + v39++;
            v34 = v40 & v17;
            v38 = *(v5 + 16 * v34);
            if (v38 == *v21)
            {
              goto LABEL_31;
            }
          }

          v34 = v6;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v20 + 8);
      }

LABEL_31:
      ;
    }

    while (v35 >= *(v5 + 16 * v34 + 8));
  }

  if (v21 < a2)
  {
    do
    {
      v71 = *--a2;
      v70 = v71;
      if (v6)
      {
        v72 = *v19;
        v73 = (v19 + 1);
        if (*v19 != v3)
        {
          v77 = 1;
          LODWORD(v78) = v18;
          while (v72 != -4096)
          {
            v79 = v78 + v77++;
            v78 = v79 & v17;
            v72 = *(v5 + 16 * v78);
            if (v72 == v3)
            {
              goto LABEL_99;
            }
          }

          v78 = v6;
LABEL_99:
          v73 = (v5 + 16 * v78 + 8);
        }

        v69 = *v73;
        v68 = ((v70 >> 4) ^ (v70 >> 9)) & v17;
        v74 = *(v5 + 16 * v68);
        if (v74 != v70)
        {
          v75 = 1;
          while (v74 != -4096)
          {
            v76 = v68 + v75++;
            v68 = v76 & v17;
            v74 = *(v5 + 16 * v68);
            if (v74 == v70)
            {
              goto LABEL_85;
            }
          }

          v68 = v6;
        }
      }

      else
      {
        v68 = 0;
        v69 = *(v20 + 8);
      }

LABEL_85:
      ;
    }

    while (v69 < *(v5 + 16 * v68 + 8));
  }

  if (v21 < a2)
  {
    v44 = *v21;
    v45 = *a2;
    do
    {
      *v21 = v45;
      *a2 = v44;
      do
      {
        v48 = v21[1];
        ++v21;
        v44 = v48;
        if (v6)
        {
          v49 = *v19;
          v50 = (v19 + 1);
          if (*v19 != v3)
          {
            v54 = 1;
            LODWORD(v55) = v18;
            while (v49 != -4096)
            {
              v56 = v55 + v54++;
              v55 = v56 & v17;
              v49 = *(v5 + 16 * v55);
              if (v49 == v3)
              {
                goto LABEL_67;
              }
            }

            v55 = v6;
LABEL_67:
            v50 = (v5 + 16 * v55 + 8);
          }

          v47 = *v50;
          v46 = ((v44 >> 4) ^ (v44 >> 9)) & v17;
          v51 = *(v5 + 16 * v46);
          if (v51 != v44)
          {
            v52 = 1;
            while (v51 != -4096)
            {
              v53 = v46 + v52++;
              v46 = v53 & v17;
              v51 = *(v5 + 16 * v46);
              if (v51 == v44)
              {
                goto LABEL_53;
              }
            }

            v46 = v6;
          }
        }

        else
        {
          v46 = 0;
          v47 = *(v20 + 8);
        }

LABEL_53:
        ;
      }

      while (v47 >= *(v5 + 16 * v46 + 8));
      do
      {
        v59 = *--a2;
        v45 = v59;
        if (v6)
        {
          v60 = *v19;
          v61 = (v19 + 1);
          if (*v19 != v3)
          {
            v65 = 1;
            LODWORD(v66) = v18;
            while (v60 != -4096)
            {
              v67 = v66 + v65++;
              v66 = v67 & v17;
              v60 = *(v5 + 16 * v66);
              if (v60 == v3)
              {
                goto LABEL_83;
              }
            }

            v66 = v6;
LABEL_83:
            v61 = (v5 + 16 * v66 + 8);
          }

          v58 = *v61;
          v57 = ((v45 >> 4) ^ (v45 >> 9)) & v17;
          v62 = *(v5 + 16 * v57);
          if (v62 != v45)
          {
            v63 = 1;
            while (v62 != -4096)
            {
              v64 = v57 + v63++;
              v57 = v64 & v17;
              v62 = *(v5 + 16 * v57);
              if (v62 == v45)
              {
                goto LABEL_69;
              }
            }

            v57 = v6;
          }
        }

        else
        {
          v57 = 0;
          v58 = *(v20 + 8);
        }

LABEL_69:
        ;
      }

      while (v58 < *(v5 + 16 * v57 + 8));
    }

    while (v21 < a2);
  }

  if (v21 - 1 != a1)
  {
    *a1 = *(v21 - 1);
  }

  *(v21 - 1) = v3;
  return v21;
}

void *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block *,mlir::Block *)>(mlir::Block *,unsigned int,BOOL (*)(mlir::Block *,mlir::Block *),unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(void *a1, void *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(*a3 + 4);
  v6 = v5 - 1;
  v7 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
  v8 = (v4 + 16 * v7);
  v9 = v4 + 16 * v5;
  v10 = a1;
  do
  {
    v13 = v10;
    v15 = v10[1];
    ++v10;
    v14 = v15;
    if (v5)
    {
      v16 = v6 & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v4 + 16 * v16);
      if (v17 != v14)
      {
        v19 = 1;
        while (v17 != -4096)
        {
          v20 = v16 + v19++;
          v16 = v20 & v6;
          v17 = *(v4 + 16 * v16);
          if (v17 == v14)
          {
            goto LABEL_6;
          }
        }

        v16 = v5;
      }

LABEL_6:
      v12 = *(v4 + 16 * v16 + 8);
      v18 = *v8;
      if (*v8 == v3)
      {
        v11 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
      }

      else
      {
        v21 = 1;
        LODWORD(v11) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        while (v18 != -4096)
        {
          v22 = v11 + v21++;
          v11 = v22 & v6;
          v18 = *(v4 + 16 * v11);
          if (v18 == v3)
          {
            goto LABEL_3;
          }
        }

        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v9 + 8);
    }

LABEL_3:
    ;
  }

  while (v12 < *(v4 + 16 * v11 + 8));
  if (v13 == a1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v37 = *--a2;
      v36 = v37;
      if (v5)
      {
        v38 = ((v36 >> 4) ^ (v36 >> 9)) & v6;
        v39 = *(v4 + 16 * v38);
        if (v39 != v36)
        {
          v41 = 1;
          while (v39 != -4096)
          {
            v42 = v38 + v41++;
            v38 = v42 & v6;
            v39 = *(v4 + 16 * v38);
            if (v39 == v36)
            {
              goto LABEL_41;
            }
          }

          v38 = v5;
        }

LABEL_41:
        v35 = *(v4 + 16 * v38 + 8);
        v40 = *v8;
        if (*v8 == v3)
        {
          v34 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v43 = 1;
          LODWORD(v34) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v40 != -4096)
          {
            v44 = v34 + v43++;
            v34 = v44 & v6;
            v40 = *(v4 + 16 * v34);
            if (v40 == v3)
            {
              goto LABEL_37;
            }
          }

          v34 = v5;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v9 + 8);
      }

LABEL_37:
      ;
    }

    while (v35 >= *(v4 + 16 * v34 + 8));
  }

  else
  {
    do
    {
      v26 = *--a2;
      v25 = v26;
      if (v5)
      {
        v27 = ((v25 >> 4) ^ (v25 >> 9)) & v6;
        v28 = *(v4 + 16 * v27);
        if (v28 != v25)
        {
          v30 = 1;
          while (v28 != -4096)
          {
            v31 = v27 + v30++;
            v27 = v31 & v6;
            v28 = *(v4 + 16 * v27);
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          v27 = v5;
        }

LABEL_24:
        v24 = *(v4 + 16 * v27 + 8);
        v29 = *v8;
        if (*v8 == v3)
        {
          v23 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v32 = 1;
          LODWORD(v23) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v29 != -4096)
          {
            v33 = v23 + v32++;
            v23 = v33 & v6;
            v29 = *(v4 + 16 * v23);
            if (v29 == v3)
            {
              goto LABEL_21;
            }
          }

          v23 = v5;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v9 + 8);
      }

LABEL_21:
      ;
    }

    while (v24 >= *(v4 + 16 * v23 + 8));
  }

  if (v10 < a2)
  {
    v45 = *a2;
    v46 = v10;
    v47 = a2;
    do
    {
      *v46 = v45;
      *v47 = v14;
      do
      {
        v13 = v46;
        v50 = v46[1];
        ++v46;
        v14 = v50;
        if (v5)
        {
          v51 = ((v14 >> 4) ^ (v14 >> 9)) & v6;
          v52 = *(v4 + 16 * v51);
          if (v52 != v14)
          {
            v54 = 1;
            while (v52 != -4096)
            {
              v55 = v51 + v54++;
              v51 = v55 & v6;
              v52 = *(v4 + 16 * v51);
              if (v52 == v14)
              {
                goto LABEL_61;
              }
            }

            v51 = v5;
          }

LABEL_61:
          v49 = *(v4 + 16 * v51 + 8);
          v53 = *v8;
          if (*v8 == v3)
          {
            v48 = v7;
          }

          else
          {
            v56 = 1;
            LODWORD(v48) = v7;
            while (v53 != -4096)
            {
              v57 = v48 + v56++;
              v48 = v57 & v6;
              v53 = *(v4 + 16 * v48);
              if (v53 == v3)
              {
                goto LABEL_58;
              }
            }

            v48 = v5;
          }
        }

        else
        {
          v48 = 0;
          v49 = *(v9 + 8);
        }

LABEL_58:
        ;
      }

      while (v49 < *(v4 + 16 * v48 + 8));
      do
      {
        v60 = *--v47;
        v45 = v60;
        if (v5)
        {
          v61 = ((v45 >> 4) ^ (v45 >> 9)) & v6;
          v62 = *(v4 + 16 * v61);
          if (v62 != v45)
          {
            v64 = 1;
            while (v62 != -4096)
            {
              v65 = v61 + v64++;
              v61 = v65 & v6;
              v62 = *(v4 + 16 * v61);
              if (v62 == v45)
              {
                goto LABEL_77;
              }
            }

            v61 = v5;
          }

LABEL_77:
          v59 = *(v4 + 16 * v61 + 8);
          v63 = *v8;
          if (*v8 == v3)
          {
            v58 = v7;
          }

          else
          {
            v66 = 1;
            LODWORD(v58) = v7;
            while (v63 != -4096)
            {
              v67 = v58 + v66++;
              v58 = v67 & v6;
              v63 = *(v4 + 16 * v58);
              if (v63 == v3)
              {
                goto LABEL_74;
              }
            }

            v58 = v5;
          }
        }

        else
        {
          v58 = 0;
          v59 = *(v9 + 8);
        }

LABEL_74:
        ;
      }

      while (v59 >= *(v4 + 16 * v58 + 8));
    }

    while (v46 < v47);
  }

  if (v13 != a1)
  {
    *a1 = *v13;
  }

  *v13 = v3;
  return v13;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = *(*a3 + 4);
      if (v8)
      {
        v9 = v8 - 1;
        v10 = (v8 - 1) & ((v5 >> 4) ^ (v5 >> 9));
        v11 = *(v7 + 16 * v10);
        if (v11 == v5)
        {
          v12 = *(v7 + 16 * v10 + 8);
          goto LABEL_59;
        }

        v48 = 1;
        while (v11 != -4096)
        {
          v49 = v10 + v48++;
          v10 = v49 & v9;
          v11 = *(v7 + 16 * v10);
          if (v11 == v5)
          {
            goto LABEL_57;
          }
        }
      }

      v10 = *(*a3 + 4);
LABEL_57:
      v12 = *(v7 + 16 * v10 + 8);
      if (!v8)
      {
        goto LABEL_61;
      }

      v9 = v8 - 1;
LABEL_59:
      v50 = v9 & ((v6 >> 4) ^ (v6 >> 9));
      v51 = *(v7 + 16 * v50);
      if (v51 == v6)
      {
LABEL_60:
        v8 = v50;
      }

      else
      {
        v52 = 1;
        while (v51 != -4096)
        {
          v53 = v50 + v52++;
          v50 = v53 & v9;
          v51 = *(v7 + 16 * v50);
          if (v51 == v6)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      if (v12 < *(v7 + 16 * v8 + 8))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v18 = 0;
    v19 = **a3;
    v20 = *(*a3 + 4);
    v21 = v20 - 1;
    v22 = v19 + 16 * v20;
    while (1)
    {
      v24 = *v17;
      v25 = *v14;
      v26 = *v17 >> 4;
      if (!v20)
      {
        break;
      }

      v27 = v21 & (v26 ^ (v24 >> 9));
      v28 = *(v19 + 16 * v27);
      if (v28 != v24)
      {
        v46 = 1;
        while (v28 != -4096)
        {
          v47 = v27 + v46++;
          v27 = v47 & v21;
          v28 = *(v19 + 16 * v27);
          if (v28 == v24)
          {
            goto LABEL_19;
          }
        }

        v27 = v20;
      }

LABEL_19:
      v29 = *(v19 + 16 * v27 + 8);
      v30 = v21 & ((v25 >> 4) ^ (v25 >> 9));
      v31 = *(v19 + 16 * v30);
      if (v31 == v25)
      {
        goto LABEL_25;
      }

      v32 = 1;
      while (v31 != -4096)
      {
        v33 = v30 + v32++;
        v30 = v33 & v21;
        v31 = *(v19 + 16 * v30);
        if (v31 == v25)
        {
          goto LABEL_25;
        }
      }

      if (v29 >= *(v19 + 16 * v20 + 8))
      {
        goto LABEL_16;
      }

LABEL_26:
      v34 = v21 & (v26 ^ (v24 >> 9));
      v35 = (v19 + 16 * v34);
      v23 = v17;
      while (1)
      {
        *v23 = v25;
        if (v14 == a1)
        {
          break;
        }

        v23 = v14;
        v38 = *--v14;
        v25 = v38;
        if (v20)
        {
          v39 = *v35;
          v40 = v34;
          if (*v35 != v24)
          {
            v44 = 1;
            LODWORD(v40) = v34;
            while (v39 != -4096)
            {
              v45 = v40 + v44++;
              v40 = v45 & v21;
              v39 = *(v19 + 16 * v40);
              if (v39 == v24)
              {
                goto LABEL_32;
              }
            }

            v40 = v20;
          }

LABEL_32:
          v37 = *(v19 + 16 * v40 + 8);
          v36 = ((v25 >> 4) ^ (v25 >> 9)) & v21;
          v41 = *(v19 + 16 * v36);
          if (v41 != v25)
          {
            v42 = 1;
            while (v41 != -4096)
            {
              v43 = v36 + v42++;
              v36 = v43 & v21;
              v41 = *(v19 + 16 * v36);
              if (v41 == v25)
              {
                goto LABEL_28;
              }
            }

            v36 = v20;
          }
        }

        else
        {
          v36 = 0;
          v37 = *(v22 + 8);
        }

LABEL_28:
        if (v37 >= *(v19 + 16 * v36 + 8))
        {
          goto LABEL_15;
        }
      }

      v23 = a1;
LABEL_15:
      *v23 = v24;
      if (++v18 == 8)
      {
        return v17 + 1 == a2;
      }

LABEL_16:
      v14 = v17++;
      if (v17 == a2)
      {
        return 1;
      }
    }

    v30 = 0;
    v29 = *(v22 + 8);
LABEL_25:
    if (v29 >= *(v19 + 16 * v30 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  return 1;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      v10 = **a2;
      if (v8 >= a3)
      {
        LODWORD(v9) = *(v9 + 4);
        v16 = *v7;
        v17 = *a4;
        v18 = *a4 >> 4;
        if (!v9)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v11 = v7[1];
      v9 = *(v9 + 4);
      if (v9)
      {
        v12 = v9 - 1;
        v13 = (v9 - 1) & ((*v7 >> 4) ^ (*v7 >> 9));
        v14 = *(v10 + 16 * v13);
        if (v14 == *v7)
        {
          v15 = *(v10 + 16 * v13 + 8);
          goto LABEL_16;
        }

        v19 = 1;
        while (v14 != -4096)
        {
          v20 = v13 + v19++;
          v13 = v20 & v12;
          v14 = *(v10 + 16 * v13);
          if (v14 == *v7)
          {
            goto LABEL_14;
          }
        }
      }

      v13 = v9;
LABEL_14:
      v15 = *(v10 + 16 * v13 + 8);
      if (!v9)
      {
        goto LABEL_80;
      }

      v12 = v9 - 1;
LABEL_16:
      v21 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v22 = *(v10 + 16 * v21);
      if (v22 == v11)
      {
        goto LABEL_17;
      }

      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & v12;
        v22 = *(v10 + 16 * v21);
        if (v22 == v11)
        {
          goto LABEL_17;
        }
      }

LABEL_80:
      v21 = v9;
LABEL_17:
      if (v15 < *(v10 + 16 * v21 + 8))
      {
        ++v7;
        v6 = v8;
      }

      v16 = *v7;
      v17 = *a4;
      v18 = *a4 >> 4;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_20:
      v23 = v9 - 1;
      v24 = (v9 - 1) & ((v16 >> 4) ^ (v16 >> 9));
      v25 = *(v10 + 16 * v24);
      if (v25 == v16)
      {
        v26 = *(v10 + 16 * v24 + 8);
        v27 = v23 & (v18 ^ (v17 >> 9));
        v28 = *(v10 + 16 * v27);
        if (v28 != v17)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v29 = 1;
      while (v25 != -4096)
      {
        v30 = v24 + v29++;
        v24 = v30 & v23;
        v25 = *(v10 + 16 * v24);
        if (v25 == v16)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      v24 = v9;
LABEL_28:
      v26 = *(v10 + 16 * v24 + 8);
      if (!v9)
      {
        goto LABEL_34;
      }

      v23 = v9 - 1;
      v27 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v28 = *(v10 + 16 * v27);
      if (v28 != v17)
      {
LABEL_30:
        v31 = 1;
        while (v28 != -4096)
        {
          v32 = v27 + v31++;
          v27 = v32 & v23;
          v28 = *(v10 + 16 * v27);
          if (v28 == v17)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        v27 = v9;
      }

LABEL_35:
      if (v26 < *(v10 + 16 * v27 + 8))
      {
        return result;
      }

      v33 = v9 - 1;
      v34 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v35 = (v10 + 16 * v34);
      v36 = v10 + 16 * v9;
      while (1)
      {
        v40 = v7;
        *a4 = v16;
        if (v4 < v6)
        {
LABEL_74:
          *v40 = v17;
          return result;
        }

        v41 = (2 * v6) | 1;
        v7 = (result + 8 * v41);
        v6 = 2 * v6 + 2;
        if (v6 >= a3)
        {
          v6 = v41;
          v16 = *v7;
          if (v9)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v42 = v7[1];
          if (v9)
          {
            v43 = ((*v7 >> 4) ^ (*v7 >> 9)) & v33;
            v44 = *(v10 + 16 * v43);
            if (v44 != *v7)
            {
              v57 = 1;
              while (v44 != -4096)
              {
                v58 = v43 + v57++;
                v43 = v58 & v33;
                v44 = *(v10 + 16 * v43);
                if (v44 == *v7)
                {
                  goto LABEL_43;
                }
              }

              v43 = v9;
            }

LABEL_43:
            v45 = *(v10 + 16 * v43 + 8);
            v46 = ((v42 >> 4) ^ (v42 >> 9)) & v33;
            v47 = *(v10 + 16 * v46);
            if (v47 != v42)
            {
              v48 = 1;
              while (v47 != -4096)
              {
                v49 = v46 + v48++;
                v46 = v49 & v33;
                v47 = *(v10 + 16 * v46);
                if (v47 == v42)
                {
                  goto LABEL_51;
                }
              }

              v46 = v9;
            }
          }

          else
          {
            v46 = 0;
            v45 = *(v36 + 8);
          }

LABEL_51:
          if (v45 >= *(v10 + 16 * v46 + 8))
          {
            v6 = v41;
          }

          else
          {
            ++v7;
          }

          v16 = *v7;
          if (v9)
          {
LABEL_55:
            v50 = ((v16 >> 4) ^ (v16 >> 9)) & v33;
            v51 = *(v10 + 16 * v50);
            if (v51 != v16)
            {
              v53 = 1;
              while (v51 != -4096)
              {
                v54 = v50 + v53++;
                v50 = v54 & v33;
                v51 = *(v10 + 16 * v50);
                if (v51 == v16)
                {
                  goto LABEL_56;
                }
              }

              v50 = v9;
            }

LABEL_56:
            v38 = *(v10 + 16 * v50 + 8);
            v52 = *v35;
            if (*v35 == v17)
            {
              v37 = v34;
            }

            else
            {
              v55 = 1;
              LODWORD(v37) = v34;
              while (v52 != -4096)
              {
                v56 = v37 + v55++;
                v37 = v56 & v33;
                v52 = *(v10 + 16 * v37);
                if (v52 == v17)
                {
                  goto LABEL_38;
                }
              }

              v37 = v9;
            }

            goto LABEL_38;
          }
        }

        v37 = 0;
        v38 = *(v36 + 8);
LABEL_38:
        v39 = *(v10 + 16 * v37 + 8);
        a4 = v40;
        if (v38 < v39)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *a1, uint64_t **a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a3 - 2) / 2;
  v5 = *a2;
  do
  {
    while (1)
    {
      v6 = &a1[v3];
      v7 = v6 + 1;
      v8 = (2 * v3) | 1;
      v3 = 2 * v3 + 2;
      if (v3 < a3)
      {
        break;
      }

      v3 = v8;
      *a1 = *v7;
      a1 = v6 + 1;
      if (v8 > v4)
      {
        return v7;
      }
    }

    v11 = v6[2];
    v9 = v6 + 2;
    v10 = v11;
    v12 = *v5;
    v13 = *(v5 + 4);
    if (v13)
    {
      v14 = *(v9 - 1);
      v15 = v13 - 1;
      v16 = (v13 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v12 + 16 * v16);
      if (v17 == v14)
      {
        v18 = *(v12 + 16 * v16 + 8);
        goto LABEL_14;
      }

      v19 = 1;
      while (v17 != -4096)
      {
        v20 = v16 + v19++;
        v16 = v20 & v15;
        v17 = *(v12 + 16 * v16);
        if (v17 == v14)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = *(v5 + 4);
LABEL_12:
    v18 = *(v12 + 16 * v16 + 8);
    if (v13)
    {
      v15 = v13 - 1;
LABEL_14:
      v21 = v15 & ((v10 >> 4) ^ (v10 >> 9));
      v22 = *(v12 + 16 * v21);
      if (v22 == v10)
      {
LABEL_15:
        v13 = v21;
      }

      else
      {
        v23 = 1;
        while (v22 != -4096)
        {
          v24 = v21 + v23++;
          v21 = v24 & v15;
          v22 = *(v12 + 16 * v21);
          if (v22 == v10)
          {
            goto LABEL_15;
          }
        }
      }
    }

    if (v18 >= *(v12 + 16 * v13 + 8))
    {
      v3 = v8;
    }

    else
    {
      v7 = v9;
    }

    *a1 = *v7;
    a1 = v7;
  }

  while (v3 <= v4);
  return v7;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 8 * (v4 >> 1));
  v7 = *v6;
  v10 = *(a2 - 8);
  v8 = (a2 - 8);
  v9 = v10;
  v11 = **a3;
  v12 = *(*a3 + 4);
  v13 = v10 >> 4;
  if (v12)
  {
    v14 = v12 - 1;
    v15 = (v12 - 1) & ((v7 >> 4) ^ (v7 >> 9));
    v16 = *(v11 + 16 * v15);
    if (v16 == v7)
    {
      v17 = *(v11 + 16 * v15 + 8);
      v18 = v14 & (v13 ^ (v9 >> 9));
      v19 = *(v11 + 16 * v18);
      if (v19 == v9)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v20 = 1;
    while (v16 != -4096)
    {
      v21 = v15 + v20++;
      v15 = v21 & v14;
      v16 = *(v11 + 16 * v15);
      if (v16 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v15 = v12;
LABEL_11:
  v17 = *(v11 + 16 * v15 + 8);
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = v12 - 1;
  v18 = (v12 - 1) & (v13 ^ (v9 >> 9));
  v19 = *(v11 + 16 * v18);
  if (v19 == v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  v22 = 1;
  while (v19 != -4096)
  {
    v23 = v18 + v22++;
    v18 = v23 & v14;
    v19 = *(v11 + 16 * v18);
    if (v19 == v9)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v18 = v12;
LABEL_18:
  if (v17 < *(v11 + 16 * v18 + 8))
  {
    if (v12)
    {
      v24 = v12 - 1;
      v25 = (v12 - 1) & (v13 ^ (v9 >> 9));
      v26 = (v11 + 16 * v25);
      do
      {
        v27 = v6;
        *v8 = v7;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
        v7 = *v6;
        v28 = ((*v6 >> 4) ^ (*v6 >> 9)) & v24;
        v29 = *(v11 + 16 * v28);
        if (v29 != *v6)
        {
          v33 = 1;
          while (v29 != -4096)
          {
            v34 = v28 + v33++;
            v28 = v34 & v24;
            v29 = *(v11 + 16 * v28);
            if (v29 == v7)
            {
              goto LABEL_23;
            }
          }

          v28 = v12;
        }

LABEL_23:
        v30 = *v26;
        v31 = v25;
        if (*v26 != v9)
        {
          v35 = 1;
          LODWORD(v31) = v25;
          while (v30 != -4096)
          {
            v36 = v31 + v35++;
            v31 = v36 & v24;
            v30 = *(v11 + 16 * v31);
            if (v30 == v9)
            {
              goto LABEL_24;
            }
          }

          v31 = v12;
        }

LABEL_24:
        v32 = *(v11 + 16 * v28 + 8);
        v8 = v27;
      }

      while (v32 < *(v11 + 16 * v31 + 8));
    }

    else
    {
      *v8 = v7;
      v27 = v6;
    }

    *v27 = v9;
  }

  return result;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::CalculateFromScratch(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 144);
  llvm::DominatorTreeBase<mlir::Block,true>::reset(a1);
  *(a1 + 144) = v4;
  if (!a2)
  {
    v13 = v15;
    v14 = 0x4000000001;
    v15[0] = 0;
    v16 = 0u;
    v17 = 0;
    v18 = 0;
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(a1, 0, &__src);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v6 = *(a2 + 8);
  if (v5 == v6)
  {
    *(v6 + 592) = *(v5 + 592);
LABEL_17:
    v11 = a2;
LABEL_18:
    v13 = v15;
    v14 = 0x4000000001;
    v15[0] = 0;
    v16 = 0u;
    v17 = 0;
    v18 = v11;
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(a1, v11, &__src);
  }

  llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom(*(a2 + 8), *(a2 + 16));
  llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom(v6 + 296, (v5 + 296));
  *(v6 + 592) = *(v5 + 592);
  v7 = (v6 + 600);
  v8 = *(v5 + 608);
  v9 = *(v6 + 608);
  if (v9 >= v8)
  {
    if (v8)
    {
      memmove(*v7, *(v5 + 600), 16 * v8);
    }

    goto LABEL_16;
  }

  if (*(v6 + 612) >= v8)
  {
    if (v9)
    {
      memmove(*v7, *(v5 + 600), 16 * v9);
      v10 = *(v5 + 608) - v9;
      if (!v10)
      {
LABEL_16:
        *(v6 + 608) = v8;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(v5 + 608);
      if (!*(v5 + 608))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    *(v6 + 608) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 600, v6 + 616, v8, 16);
    v9 = 0;
    v10 = *(v5 + 608);
    if (!*(v5 + 608))
    {
      goto LABEL_16;
    }
  }

  memcpy(*v7 + 16 * v9, (*(v5 + 600) + 16 * v9), 16 * v10);
  goto LABEL_16;
}

uint64_t *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::attachNewSubtree(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v20 = *(*a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v20);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    for (i = (*a1 + 8); i != v8; ++i)
    {
      v12 = *i;
      v13 = *(a2 + 128);
      if (v13)
      {
        v14 = *(a2 + 112);
        v15 = ((v12 >> 4) ^ (v12 >> 9)) & (v13 - 1);
        v16 = *(v14 + 16 * v15);
        if (v16 == v12)
        {
LABEL_8:
          if (v15 != v13)
          {
            v17 = *(v14 + 16 * v15 + 8);
            if (*(a2 + 56) > v17)
            {
              if (*(*(a2 + 48) + 8 * v17))
              {
                continue;
              }
            }
          }
        }

        else
        {
          v18 = 1;
          while (v16 != -4096)
          {
            v19 = v15 + v18++;
            v15 = v19 & (v13 - 1);
            v16 = *(v14 + 16 * v15);
            if (v16 == v12)
            {
              goto LABEL_8;
            }
          }
        }
      }

      v20 = *i;
      v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v20);
      NodeForBlock = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getNodeForBlock(a1, v10[2], a2);
      result = llvm::DominatorTreeBase<mlir::Block,true>::createNode(a2, v12, NodeForBlock);
    }
  }

  return result;
}

char *llvm::GraphDiff<mlir::Block *,true>::getChildren<true>@<X0>(char *result@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = result;
  v6 = *a2;
  v7 = (a3 + 2);
  *a3 = (a3 + 2);
  a3[1] = 0x800000000;
  if (v6)
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v9 = *v9;
      --v8;
    }

    while (v9);
    if (v8 > 0xFFFFFFFFFFFFFFF7)
    {
      v10 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v7, -v8, 8);
      v10 = *(a3 + 2);
      v7 = *a3;
    }

    v12 = (v7 + 8 * v10);
    do
    {
      result = mlir::PredecessorIterator::unwrap(v6);
      *v12++ = result;
      v6 = *v6;
    }

    while (v6);
    v13 = *(a3 + 2);
    v7 = *a3;
    v11 = *a3;
    v14 = *a3 + 8 * (v13 - v8);
    if (v13 != v8)
    {
      v18 = 8 * (v13 - v8);
      v11 = *a3;
      while (*v11)
      {
        ++v11;
        v18 -= 8;
        if (!v18)
        {
          v11 = (*a3 + 8 * (v13 - v8));
          goto LABEL_21;
        }
      }
    }

    if (v11 != v14 && v11 + 1 != v14)
    {
      v15 = 8 * (v13 - v8);
      v16 = v11 - v7 + 8;
      do
      {
        v17 = *(v7 + v16);
        if (v17)
        {
          *v11++ = v17;
        }

        v16 += 8;
      }

      while (v15 != v16);
    }
  }

  else
  {
    v11 = a3 + 2;
  }

LABEL_21:
  v19 = v11 - v7;
  v20 = (v11 - v7) >> 3;
  *(a3 + 2) = v20;
  v21 = v4 + 8;
  v22 = *v4;
  if (*v4)
  {
    v23 = 4;
  }

  else
  {
    v21 = *(v4 + 1);
    v23 = *(v4 + 4);
    if (!v23)
    {
      v24 = 0;
LABEL_24:
      v25 = &v21[72 * v24];
      goto LABEL_28;
    }
  }

  v26 = v23 - 1;
  v27 = (v23 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v25 = &v21[72 * v27];
  v28 = *v25;
  if (*v25 != a2)
  {
    v44 = 1;
    while (v28 != -4096)
    {
      v45 = v27 + v44++;
      v27 = v45 & v26;
      v25 = &v21[72 * (v45 & v26)];
      v28 = *v25;
      if (*v25 == a2)
      {
        goto LABEL_27;
      }
    }

    if ((v22 & 1) == 0)
    {
      v21 = *(v4 + 1);
      v24 = *(v4 + 4);
      goto LABEL_24;
    }

    v25 = v4 + 296;
LABEL_57:
    if (v25 == v4 + 296)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  if (v22)
  {
    goto LABEL_57;
  }

LABEL_28:
  if (v25 == (*(v4 + 1) + 72 * *(v4 + 4)))
  {
    return result;
  }

LABEL_29:
  v29 = *(v25 + 4);
  if (v29)
  {
    v30 = (v19 >> 3);
    v31 = *(v25 + 1);
    v32 = &v31[v29];
    do
    {
      v33 = *v31;
      v34 = (v7 + 8 * v30);
      if (v30)
      {
        v35 = 8 * v30;
        v36 = v7;
        v37 = v7;
        while (*v37 != v33)
        {
          ++v37;
          ++v36;
          v35 -= 8;
          if (!v35)
          {
            v36 = (v7 + 8 * v30);
            goto LABEL_31;
          }
        }
      }

      else
      {
        v36 = v7;
        v37 = v7;
      }

      v38 = v36 + 1;
      if (v37 != v34 && v38 != v34)
      {
        v40 = v7 - 8 + 8 * v30 - v36;
        do
        {
          if (*v38 != v33)
          {
            *v36++ = *v38;
          }

          ++v38;
          v40 -= 8;
        }

        while (v40);
      }

LABEL_31:
      v30 = ((v36 - v7) >> 3);
      ++v31;
    }

    while (v31 != v32);
    v20 = (v36 - v7) >> 3;
    *(a3 + 2) = v30;
  }

  v41 = v7 + 8 * v20;
  v42 = *(v25 + 5);
  v43 = &v42[8 * *(v25 + 12)];

  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, v41, v42, v43);
}

void **llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getChildren<true>@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = a2 + 2;
  *a2 = a2 + 2;
  a2[1] = 0x800000000;
  if (v3)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v6 = *v6;
      --v5;
    }

    while (v6);
    if (v5 > 0xFFFFFFFFFFFFFFF7)
    {
      v7 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v4, -v5, 8);
      v7 = *(a2 + 2);
      v4 = *a2;
    }

    v9 = &v4[v7];
    do
    {
      result = mlir::PredecessorIterator::unwrap(v3);
      *v9++ = result;
      v3 = *v3;
    }

    while (v3);
    v10 = *(a2 + 2);
    v8 = *a2;
    v4 = *a2;
    v11 = *a2 + 8 * (v10 - v5);
    if (v10 != v5)
    {
      v14 = 8 * (v10 - v5);
      v4 = *a2;
      while (*v4)
      {
        ++v4;
        v14 -= 8;
        if (!v14)
        {
          v4 = (*a2 + 8 * (v10 - v5));
          goto LABEL_21;
        }
      }
    }

    if (v4 != v11)
    {
      v12 = v4 + 1;
      if (v4 + 1 != v11)
      {
        v13 = v8 - v4 + 8 * (v10 - v5) - 8;
        do
        {
          if (*v12)
          {
            *v4++ = *v12;
          }

          ++v12;
          v13 -= 8;
        }

        while (v13);
      }
    }
  }

  else
  {
    v8 = (a2 + 2);
  }

LABEL_21:
  *(a2 + 2) = (v4 - v8) >> 3;
  return result;
}

void *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 128);
  if (v4)
  {
    v5 = *(a3 + 112);
    v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v4)
      {
        v8 = *(v5 + 16 * v6 + 8);
        if (*(a3 + 56) > v8)
        {
          v9 = *(*(a3 + 48) + 8 * v8);
          if (v9)
          {
            return v9;
          }
        }
      }
    }

    else
    {
      v11 = 1;
      while (v7 != -4096)
      {
        v12 = v6 + v11++;
        v6 = v12 & (v4 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v17 = a2;
  v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v17);
  NodeForBlock = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getNodeForBlock(a1, v15[2], a3);
  return llvm::DominatorTreeBase<mlir::Block,true>::createNode(a3, a2, NodeForBlock);
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86[5] = *MEMORY[0x1E69E9840];
  v67 = a3 + 16;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x400000000;
  v76 = v78;
  v77 = 0x4000000001;
  v78[0] = 0;
  v79 = 0u;
  v80 = 0;
  v81 = a2;
  *&v82 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v79, &v82);
  v4[1] = 0x100000001;
  *v4 = 1;
  v5 = v77;
  if (v77 >= HIDWORD(v77))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v77 + 1, 8);
    v5 = v77;
  }

  *(v76 + v5) = 0;
  LODWORD(v77) = v77 + 1;
  v6 = *(a1 + 144);
  v7 = *(v6 + 8);
  v8 = a1;
  if (v7 == v6)
  {
    v9 = 0;
    v10 = 1;
  }

  else if (a2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v7)
      {
        v11 = (v7 - 8);
      }

      else
      {
        v11 = 0;
      }

      llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(a2 + 8), v11, &v82);
      v12 = DWORD2(v82);
      if (v82 != &v83)
      {
        free(v82);
      }

      if (!v12)
      {
        v13 = *(a3 + 8);
        if (v13 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v67, v13 + 1, 8);
          v13 = *(a3 + 8);
        }

        *(*a3 + 8 * v13) = v11;
        ++*(a3 + 8);
        v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v76, v11, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
      }

      v7 = *(v7 + 8);
      ++v9;
    }

    while (v7 != v6);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v7)
      {
        v63 = (v7 - 8);
      }

      else
      {
        v63 = 0;
      }

      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v63, &v82);
      v64 = DWORD2(v82);
      if (v82 != &v83)
      {
        free(v82);
      }

      if (!v64)
      {
        v65 = *(a3 + 8);
        if (v65 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v67, v65 + 1, 8);
          v65 = *(a3 + 8);
        }

        *(*a3 + 8 * v65) = v63;
        ++*(a3 + 8);
        v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v76, v63, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
      }

      v7 = *(v7 + 8);
      ++v9;
    }

    while (v7 != v6);
  }

  if (v9 + 1 == v10)
  {
    if (v80)
    {
      v60 = v79 + 48;
      v61 = v80 << 6;
      while (1)
      {
        if ((*(v60 - 48) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v62 = *(v60 - 16);
          if (v60 != v62)
          {
            free(v62);
          }
        }

        v60 += 64;
        v61 -= 64;
        if (!v61)
        {
          llvm::deallocate_buffer(v79, (v80 << 6));
        }
      }
    }

    llvm::deallocate_buffer(v79, 0);
  }

  LOBYTE(v73[0]) = 0;
  v75 = 0;
  v72[0] = v73;
  v72[1] = v8;
  v14 = v8;
  v72[2] = &v76;
  v15 = *(v8 + 144);
  v16 = *(v15 + 8);
  if (v16 == v15)
  {
LABEL_104:
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::RemoveRedundantRoots(v14, a2, a3);
  }

  v66 = v8;
  v68 = *(v8 + 144);
  while (1)
  {
    if (v16)
    {
      v17 = (v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    *&v82 = v17;
    if (*llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v79, &v82))
    {
      goto LABEL_21;
    }

    if ((v75 & 1) == 0)
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(llvm::DominatorTreeBase<mlir::Block,true> const&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *)::{lambda(void)#1}::operator()(v72);
    }

    v18 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<true,BOOL (*)(mlir::Block*,mlir::Block*)>(&v76, v17, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, v10, v73);
    v19 = *(v76 + v18);
    v20 = *(a3 + 8);
    if (v20 >= *(a3 + 12))
    {
      v58 = v18;
      v59 = *(v76 + v18);
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v67, v20 + 1, 8);
      v19 = v59;
      v18 = v58;
      v20 = *(a3 + 8);
    }

    v21 = v18;
    v69 = v19;
    *(*a3 + 8 * v20) = v19;
    ++*(a3 + 8);
    if (v18 > v10)
    {
      break;
    }

LABEL_20:
    v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v76, v69, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
    v15 = v68;
LABEL_21:
    v16 = *(v16 + 8);
    if (v16 == v15)
    {
      v14 = v66;
      if (v75)
      {
        llvm::deallocate_buffer(v73[0], (16 * v74));
      }

      goto LABEL_104;
    }
  }

  while (1)
  {
    v22 = v79;
    v23 = *(v76 + v21);
    v82 = 0u;
    v83 = 0;
    v84 = v86;
    v85 = 0x400000000;
    v24 = v80;
    if (!v80)
    {
      break;
    }

    v25 = (v80 - 1) & ((v23 >> 4) ^ (v23 >> 9));
    v26 = (v79 + (v25 << 6));
    v27 = *v26;
    if (v23 == *v26)
    {
      goto LABEL_49;
    }

    v28 = 0;
    v29 = 1;
    while (v27 != -4096)
    {
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v27 == -8192;
      }

      if (v30)
      {
        v28 = v26;
      }

      v31 = v25 + v29++;
      v25 = v31 & (v80 - 1);
      v26 = (v79 + (v25 << 6));
      v27 = *v26;
      if (v23 == *v26)
      {
        goto LABEL_49;
      }
    }

    if (v28)
    {
      v26 = v28;
    }

    if (4 * DWORD2(v79) + 4 >= 3 * v80)
    {
      break;
    }

    if (v80 + ~DWORD2(v79) - HIDWORD(v79) <= v80 >> 3)
    {
      v39 = v80;
LABEL_74:
      v40 = (v39 - 1) | ((v39 - 1) >> 1);
      v41 = v40 | (v40 >> 2) | ((v40 | (v40 >> 2)) >> 4);
      v42 = ((v41 | (v41 >> 8)) >> 16) | v41 | (v41 >> 8);
      if ((v42 + 1) > 0x40)
      {
        v43 = v42 + 1;
      }

      else
      {
        v43 = 64;
      }

      v80 = v43;
      buffer = llvm::allocate_buffer(v43 << 6, 8uLL);
      *&v79 = buffer;
      if (v22)
      {
        v45 = (v24 << 6);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(&v79, v22, &v45[v22]);
        llvm::deallocate_buffer(v22, v45);
      }

      *(&v79 + 1) = 0;
      v46 = v80;
      if (!v80)
      {
        goto LABEL_96;
      }

      v47 = buffer;
      if (((v80 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_126;
      }

      v48 = ((v80 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
      v47 = &buffer[8 * (v48 & 0x7FFFFFFFFFFFFFELL)];
      v49 = buffer + 8;
      v50 = v48 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v49 - 8) = -4096;
        *v49 = -4096;
        v49 += 16;
        v50 -= 2;
      }

      while (v50);
      if (v48 != (v48 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_126:
        do
        {
          *v47 = -4096;
          v47 += 8;
        }

        while (v47 != &buffer[8 * v46]);
      }

      if (v46)
      {
        v51 = v46 - 1;
        v52 = v51 & ((v23 >> 4) ^ (v23 >> 9));
        v26 = &buffer[8 * v52];
        v53 = *v26;
        if (v23 != *v26)
        {
          v54 = 0;
          v55 = 1;
          while (v53 != -4096)
          {
            if (v54)
            {
              v56 = 0;
            }

            else
            {
              v56 = v53 == -8192;
            }

            if (v56)
            {
              v54 = v26;
            }

            v57 = v52 + v55++;
            v52 = v57 & v51;
            v26 = &buffer[8 * v52];
            v53 = *v26;
            if (v23 == *v26)
            {
              goto LABEL_97;
            }
          }

          if (v54)
          {
            v26 = v54;
          }
        }
      }

      else
      {
LABEL_96:
        v26 = 0;
      }

LABEL_97:
      ++DWORD2(v79);
      if (*v26 == -4096)
      {
        goto LABEL_48;
      }

LABEL_47:
      --HIDWORD(v79);
      goto LABEL_48;
    }

    ++DWORD2(v79);
    if (*v26 != -4096)
    {
      goto LABEL_47;
    }

LABEL_48:
    *v26 = v23;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 8) = 0u;
    *(v26 + 7) = 0;
    *(v26 + 4) = v26 + 48;
    *(v26 + 11) = 4;
LABEL_49:
    v32 = v82;
    *(v26 + 3) = v83;
    *(v26 + 8) = v32;
    v33 = (v26 + 32);
    v34 = v84;
    if (v26 + 32 != &v84)
    {
      if (v84 != v86)
      {
        v35 = *(v26 + 4);
        if (v35 != v26 + 48)
        {
          free(v35);
          v34 = v84;
        }

        *(v26 + 4) = v34;
        *(v26 + 5) = v85;
        v84 = v86;
        HIDWORD(v85) = 0;
        goto LABEL_64;
      }

      v36 = v85;
      v37 = *(v26 + 10);
      if (v37 >= v85)
      {
        if (v85)
        {
          memmove(*v33, v84, 4 * v85);
        }

        goto LABEL_63;
      }

      if (*(v26 + 11) >= v85)
      {
        if (!v37)
        {
          v37 = 0;
          v38 = v85;
          if (!v85)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        memmove(*v33, v84, 4 * v37);
        v38 = v85 - v37;
        if (v85 != v37)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *(v26 + 10) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod((v26 + 32), (v26 + 48), v36, 4);
        v37 = 0;
        v38 = v85;
        if (!v85)
        {
          goto LABEL_63;
        }

LABEL_62:
        memcpy(*v33 + 4 * v37, &v84[4 * v37], 4 * v38);
      }

LABEL_63:
      *(v26 + 10) = v36;
LABEL_64:
      LODWORD(v85) = 0;
      v34 = v84;
    }

    if (v34 != v86)
    {
      free(v34);
    }

    LODWORD(v77) = v77 - 1;
    if (v10 >= --v21)
    {
      goto LABEL_20;
    }
  }

  v39 = 2 * v80;
  goto LABEL_74;
}

void llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(uint64_t a1@<X0>, mlir::Block *a2@<X1>, void *a3@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v45, a2);
  mlir::SuccessorRange::SuccessorRange(v45, a2);
  v7 = v45[0];
  v6 = v45[1];
  v8 = (a3 + 2);
  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  if (v6 < 9)
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v8, v6, 8);
    v9 = *(a3 + 2);
    v8 = *a3;
    v10 = v9;
  }

  v11 = (v7 + 32 * v6 - 8);
  v12 = 8 * v10;
  v13 = v6;
  do
  {
    v14 = *v11;
    v11 -= 4;
    *(v8 + v12) = v14;
    v12 += 8;
    --v13;
  }

  while (v13);
LABEL_7:
  v15 = v8;
  v16 = v9 + v6;
  v17 = (v8 + 8 * v16);
  if (v16)
  {
    v18 = 8 * v16;
    v15 = v8;
    while (*v15)
    {
      ++v15;
      v18 -= 8;
      if (!v18)
      {
        v15 = (v8 + 8 * v16);
        goto LABEL_18;
      }
    }
  }

  if (v15 != v17)
  {
    v19 = v15 + 1;
    if (v15 + 1 != v17)
    {
      v20 = v8 + 8 * v16 - v15 - 8;
      do
      {
        if (*v19)
        {
          *v15++ = *v19;
        }

        ++v19;
        v20 -= 8;
      }

      while (v20);
    }
  }

LABEL_18:
  v21 = v15 - v8;
  v22 = (v15 - v8) >> 3;
  *(a3 + 2) = v22;
  v23 = *(a1 + 296);
  if (v23)
  {
    v24 = a1 + 304;
    v25 = 4;
  }

  else
  {
    v24 = *(a1 + 304);
    v25 = *(a1 + 312);
    if (!v25)
    {
      v26 = 0;
LABEL_21:
      v27 = v24 + 72 * v26;
      goto LABEL_25;
    }
  }

  v28 = v25 - 1;
  v29 = (v25 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v27 = v24 + 72 * v29;
  v30 = *v27;
  if (*v27 != a2)
  {
    v31 = 1;
    while (v30 != -4096)
    {
      v32 = v29 + v31++;
      v29 = v32 & v28;
      v27 = v24 + 72 * (v32 & v28);
      v30 = *v27;
      if (*v27 == a2)
      {
        goto LABEL_24;
      }
    }

    if ((v23 & 1) == 0)
    {
      v24 = *(a1 + 304);
      v26 = *(a1 + 312);
      goto LABEL_21;
    }

    v27 = a1 + 592;
LABEL_34:
    if (v27 == a1 + 592)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_24:
  if (v23)
  {
    goto LABEL_34;
  }

LABEL_25:
  if (v27 == *(a1 + 304) + 72 * *(a1 + 312))
  {
    return;
  }

LABEL_35:
  v33 = *(v27 + 16);
  if (v33)
  {
    v34 = (v21 >> 3);
    v35 = *(v27 + 8);
    v36 = &v35[v33];
    do
    {
      v37 = *v35;
      v38 = (v8 + 8 * v34);
      if (v34)
      {
        v39 = 8 * v34;
        v40 = v8;
        v41 = v8;
        while (*v41 != v37)
        {
          ++v41;
          ++v40;
          v39 -= 8;
          if (!v39)
          {
            v40 = (v8 + 8 * v34);
            goto LABEL_37;
          }
        }
      }

      else
      {
        v40 = v8;
        v41 = v8;
      }

      v42 = v40 + 1;
      if (v41 != v38 && v42 != v38)
      {
        v44 = v8 - 8 + 8 * v34 - v40;
        do
        {
          if (*v42 != v37)
          {
            *v40++ = *v42;
          }

          ++v42;
          v44 -= 8;
        }

        while (v44);
      }

LABEL_37:
      v34 = ((v40 - v8) >> 3);
      ++v35;
    }

    while (v35 != v36);
    v22 = (v40 - v8) >> 3;
    *(a3 + 2) = v34;
  }

  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, v8 + 8 * v22, *(v27 + 40), (*(v27 + 40) + 8 * *(v27 + 48)));
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v33 = a2;
  v34 = a5;
  v32 = 0x4000000001;
  v28 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28) + 1) = a5;
  v11 = v32;
  while (v32)
  {
    v12 = v31 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v32) = v11 - 1;
    v28 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      v25 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod((v15 + 3), (v15 + 5), v16 + 1, 4);
      v15 = v25;
      v16 = *(v25 + 8);
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v17 + 1, 8);
      v17 = *(a1 + 8);
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,true>::getChildren<true>(*(v18 + 8), v13, &v28);
      v19 = v29;
      if (a6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getChildren<true>(v13, &v28);
      v19 = v29;
      if (a6)
      {
LABEL_13:
        if (v19 >= 2)
        {
          v27 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v28, v28 + v19, &v27, 126 - 2 * __clz(v19), 1);
          v19 = v29;
        }
      }
    }

    v20 = v28;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          v24 = v32;
          if (v32 >= HIDWORD(v32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, &v33, v32 + 1, 16);
            v24 = v32;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = v31 + 16 * v24;
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v32) = v32 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v28;
    }

    if (v20 != &v30)
    {
      free(v20);
    }

LABEL_3:
    v11 = v32;
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return a3;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(llvm::DominatorTreeBase<mlir::Block,true> const&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 24) == 1)
  {
    llvm::deallocate_buffer(*v1, (16 * *(v1 + 16)));
  }

  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  llvm::deallocate_buffer(0, 0);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<true,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v33 = a2;
  v34 = a5;
  v32 = 0x4000000001;
  v28 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28) + 1) = a5;
  v11 = v32;
  while (v32)
  {
    v12 = v31 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v32) = v11 - 1;
    v28 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v28);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      v25 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod((v15 + 3), (v15 + 5), v16 + 1, 4);
      v15 = v25;
      v16 = *(v25 + 8);
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v17 + 1, 8);
      v17 = *(a1 + 8);
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(v18 + 8), v13, &v28);
      v19 = v29;
      if (a6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v13, &v28);
      v19 = v29;
      if (a6)
      {
LABEL_13:
        if (v19 >= 2)
        {
          v27 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(mlir::Block*,unsigned int,BOOL (*)(mlir::Block*,mlir::Block*),unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v28, v28 + v19, &v27, 126 - 2 * __clz(v19), 1);
          v19 = v29;
        }
      }
    }

    v20 = v28;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          v24 = v32;
          if (v32 >= HIDWORD(v32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, &v33, v32 + 1, 16);
            v24 = v32;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = v31 + 16 * v24;
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v32) = v32 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v28;
    }

    if (v20 != &v30)
    {
      free(v20);
    }

LABEL_3:
    v11 = v32;
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  return a3;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::RemoveRedundantRoots(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[8] = *MEMORY[0x1E69E9840];
  v19[0] = &v20;
  v19[1] = 0x4000000001;
  v20 = 0;
  v21 = 0u;
  v22 = 0;
  v23 = a2;
  if (!*(a3 + 8))
  {
    llvm::deallocate_buffer(0, 0);
  }

  v5 = 0;
  while (1)
  {
    v7 = *a3;
    if (a2)
    {
      break;
    }

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(*(*a3 + 8 * v5), &v24);
    v8 = v25;
    v9 = v24;
    if (v24 != v26)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v8)
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::clear(v19);
      v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<true,BOOL (*)(mlir::Block*,mlir::Block*)>(v19, v7[v5], 0, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 0, 0);
      v6 = *(a3 + 8);
      if (v10 >= 2)
      {
        if (!v6)
        {
LABEL_21:
          if (v22)
          {
            v16 = (v21 + 48);
            v17 = v22 << 6;
            while (1)
            {
              if ((*(v16 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                v18 = *(v16 - 2);
                if (v16 != v18)
                {
                  free(v18);
                }
              }

              v16 += 8;
              v17 -= 64;
              if (!v17)
              {
                llvm::deallocate_buffer(v21, (v22 << 6));
              }
            }
          }

          llvm::deallocate_buffer(v21, 0);
        }

        v11 = *a3 + 8 * v6;
        v12 = 2;
        while (1)
        {
          v13 = 8 * v6;
          v14 = *a3;
          while (*v14 != *(v19[0] + v12))
          {
            ++v14;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_13;
            }
          }

          if (v13)
          {
            break;
          }

LABEL_13:
          if (++v12 > v10)
          {
            goto LABEL_4;
          }
        }

        v15 = v7[v5];
        v7[v5] = *(v11 - 8);
        *(v11 - 8) = v15;
        LODWORD(v6) = v6 - 1;
        *(a3 + 8) = v6;
        --v5;
      }
    }

    else
    {
      LODWORD(v6) = *(a3 + 8);
    }

LABEL_4:
    if (v6 <= ++v5)
    {
      goto LABEL_21;
    }
  }

  llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(a2 + 8), *(*a3 + 8 * v5), &v24);
  v8 = v25;
  v9 = v24;
  if (v24 == v26)
  {
    goto LABEL_8;
  }

LABEL_7:
  free(v9);
  goto LABEL_8;
}

double llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  if (*(a1 + 12))
  {
    v2 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, 1uLL, 8);
    v2 = *(a1 + 8);
  }

  *(*a1 + 8 * v2) = 0;
  ++*(a1 + 8);
  v4 = *(a1 + 536);
  if (!v4 && !*(a1 + 540))
  {
    return result;
  }

  v5 = (a1 + 528);
  v6 = *(a1 + 544);
  if (v6 <= 4 * v4 || v6 < 0x41)
  {
    if (!v6)
    {
LABEL_19:
      result = 0.0;
      *(a1 + 536) = 0;
      return result;
    }

    v7 = *v5 + 48;
    v8 = v6 << 6;
    while (1)
    {
      v9 = *(v7 - 48);
      if (v9 != -8192)
      {
        if (v9 == -4096)
        {
          goto LABEL_14;
        }

        v10 = *(v7 - 16);
        if (v7 != v10)
        {
          free(v10);
        }
      }

      *(v7 - 48) = -4096;
LABEL_14:
      v7 += 64;
      v8 -= 64;
      if (!v8)
      {
        goto LABEL_19;
      }
    }
  }

  llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InfoRec>>::shrink_and_clear(v5);
  return result;
}

void llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InfoRec>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = (v2 << 6);
  if (v2)
  {
    v5 = *a1 + 48;
    v6 = v2 << 6;
    do
    {
      if ((*(v5 - 48) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  if (!v3)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 8) = 0;
      return;
    }

LABEL_18:
    llvm::deallocate_buffer(*a1, v4);
  }

  v8 = 1 << (33 - __clz(v3 - 1));
  if (v8 <= 64)
  {
    v9 = 64;
  }

  else
  {
    v9 = v8;
  }

  if (v9 != *(a1 + 16))
  {
    goto LABEL_18;
  }

  *(a1 + 8) = 0;
  v10 = *a1;
  v11 = (v9 - 1) & 0x3FFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v14 = *a1;
LABEL_21:
    v17 = (v10 + 64 * v9);
    do
    {
      *v14 = -4096;
      v14 = (v14 + 64);
    }

    while (v14 != v17);
    return;
  }

  v12 = v11 + 1;
  v13 = (v11 + 1) & 0x7FFFFFFFFFFFFFELL;
  v14 = (v10 + 64 * v13);
  v15 = (v10 + 64);
  v16 = v13;
  do
  {
    *(v15 - 8) = -4096;
    *v15 = -4096;
    v15 += 16;
    v16 -= 2;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_21;
  }
}

uint64_t mlir::IntegerSet::getNumEqualities(mlir::IntegerSet *this, double a2, int32x4_t a3)
{
  v3 = *(*this + 16);
  if (!*(*this + 16))
  {
    return 0;
  }

  v4 = *(*this + 24);
  if (v3 < 4)
  {
    v5 = 0;
    LODWORD(result) = 0;
    goto LABEL_14;
  }

  if (v3 >= 0x20)
  {
    v7 = 0uLL;
    v8 = 0uLL;
    v5 = v3 & 0xFFFFFFE0;
    v9 = v4 + 2;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v9[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v9);
      v21 = vmovl_high_u8(*v9->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v8 = vaddw_high_u16(v8, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v9 += 4;
      v10 -= 32;
    }

    while (v10);
    a3 = vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12));
    result = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a3));
    if ((v3 & 0x1F) == 0)
    {
      return result;
    }

    if ((v3 & 0x1F) <= 3)
    {
LABEL_14:
      v27 = (v4 + v5);
      v28 = v3 - v5;
      do
      {
        v29 = v27->u8[0];
        v27 = (v27 + 1);
        result = (result + v29);
        --v28;
      }

      while (v28);
      return result;
    }
  }

  else
  {
    LODWORD(result) = 0;
    v5 = 0;
  }

  v22 = (v4 + v5);
  v23 = v5 + (v3 & 3);
  v5 = v3 & 0xFFFFFFFC;
  v24 = result;
  v25 = v23 - v3;
  do
  {
    v26 = *v22++;
    a3.i32[0] = v26;
    a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
    v24 = vaddw_u16(v24, *a3.i8);
    v25 += 4;
  }

  while (v25);
  result = vaddvq_s32(v24);
  if ((v3 & 3) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t mlir::IntegerSet::getNumInequalities(mlir::IntegerSet *this, double a2, int32x4_t a3)
{
  v3 = *(*this + 16);
  if (!*(*this + 16))
  {
    return v3;
  }

  v4 = *(*this + 24);
  if (v3 >= 4)
  {
    if (v3 >= 0x20)
    {
      v8 = 0uLL;
      v9 = 0uLL;
      v5 = v3 & 0xFFFFFFE0;
      v10 = v4 + 2;
      v11 = v5;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = *v10[-2].i8;
        v19 = vmovl_u8(*v18.i8);
        v20 = vmovl_high_u8(v18);
        v21 = vmovl_u8(*v10);
        v22 = vmovl_high_u8(*v10->i8);
        v13 = vaddw_high_u16(v13, v20);
        v12 = vaddw_u16(v12, *v20.i8);
        v9 = vaddw_high_u16(v9, v19);
        v8 = vaddw_u16(v8, *v19.i8);
        v17 = vaddw_high_u16(v17, v22);
        v16 = vaddw_u16(v16, *v22.i8);
        v15 = vaddw_high_u16(v15, v21);
        v14 = vaddw_u16(v14, *v21.i8);
        v10 += 4;
        v11 -= 32;
      }

      while (v11);
      a3 = vaddq_s32(vaddq_s32(v15, v9), vaddq_s32(v17, v13));
      v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a3));
      if ((v3 & 0x1F) == 0)
      {
        return v3 - v6;
      }

      if ((v3 & 0x1F) < 4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v23 = (v4 + v5);
    v24 = v5 + (v3 & 3);
    v5 = v3 & 0xFFFFFFFC;
    v25 = v6;
    v26 = v24 - v3;
    do
    {
      v27 = *v23++;
      a3.i32[0] = v27;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v25 = vaddw_u16(v25, *a3.i8);
      v26 += 4;
    }

    while (v26);
    v6 = vaddvq_s32(v25);
    if ((v3 & 3) == 0)
    {
      return v3 - v6;
    }

    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
LABEL_14:
  v28 = v3 - v5;
  v29 = (v4 + v5);
  do
  {
    v30 = v29->u8[0];
    v29 = (v29 + 1);
    v6 += v30;
    --v28;
  }

  while (v28);
  return v3 - v6;
}

BOOL mlir::IntegerSet::isEmptyIntegerSet(int **this)
{
  v2 = **this;
  v3 = (*this)[1];
  AffineConstantExpr = **(*this + 1);
  DesiredBytecodeVersion = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(&AffineConstantExpr);
  AffineConstantExpr = mlir::getAffineConstantExpr(1, DesiredBytecodeVersion, v5);
  v7 = 1;
  return *this == mlir::IntegerSet::get(v2, v3, &AffineConstantExpr, 1, &v7, 1);
}

uint64_t mlir::IntegerSet::walkExprs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*result + 16);
  if (v3)
  {
    v6 = *(*result + 8);
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      result = mlir::AffineExpr::walk<void>(v8, a2, a3);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::IntegerSet::replaceDimsAndSymbols(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7)
{
  v27[8] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15 >= 9uLL)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v15, 8);
    v14 = *a1;
    v15 = *(*a1 + 16);
  }

  if (v15)
  {
    v16 = v14[1];
    v17 = 8 * v15;
    do
    {
      v24 = *v16;
      v18 = mlir::AffineExpr::replaceDimsAndSymbols(&v24, a2, a3, a4, a5);
      v19 = v26;
      if (v26 >= HIDWORD(v26))
      {
        v23 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
        v18 = v23;
        v19 = v26;
      }

      *(v25 + v19) = v18;
      v20 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++v16;
      v17 -= 8;
    }

    while (v17);
    v14 = *a1;
  }

  else
  {
    v20 = v26;
  }

  result = mlir::IntegerSet::get(a6, a7, v25, v20, v14[3], v14[4]);
  if (v25 != v27)
  {
    v22 = result;
    free(v25);
    return v22;
  }

  return result;
}

uint64_t mlir::CallSiteLoc::get(mlir::CallSiteLoc *this, Location a2, Location a3)
{
  v10 = this;
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = a2.var0.var0;
  v6 = (LODWORD(a2.var0.var0) >> 4) ^ (LODWORD(a2.var0.var0) >> 9);
  v7 = __ROR8__((v6 + 16), 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ (v10 >> 4) ^ (v10 >> 9));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::FileLineColLoc::get(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v11[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail25FileLineColLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14FileLineColLocEJRNS1_10StringAttrERjSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v16[1] = v11;
  v14 = v10;
  v15 = a2 | (a3 << 32);
  v7 = __ROR8__(v15 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ (v10 >> 4) ^ (v10 >> 9));
  v12[0] = &v14;
  v12[1] = v16;
  v13 = &v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ a2, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::FileLineColLoc::get(mlir::StringAttr *a1, const char *a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = "-";
  v16 = 261;
  if (a3)
  {
    v9 = a2;
  }

  v15[0] = v9;
  v15[1] = v8;
  v10 = mlir::StringAttr::get(a1, v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v17[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail25FileLineColLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14FileLineColLocEJNS1_10StringAttrERjSC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v22[1] = v17;
  v20 = v10;
  v21 = a4 | (a5 << 32);
  v12 = __ROR8__(v21 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v18[0] = &v20;
  v18[1] = v22;
  v19 = &v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13)))) ^ a4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::FusedLoc::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v10 = (a4 >> 4) ^ (a4 >> 9);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::NameLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::NameLoc::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  v4 = mlir::UnknownLoc::get(v2, v3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrENS1_10UnknownLocEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = v4;
  v6 = (v4 >> 4) ^ (v4 >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::OpaqueLoc::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  Context = mlir::Attribute::getContext(&v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail20OpaqueLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9OpaqueLocEJRmRNS1_6TypeIDERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextESC_DpOT0_EUlPSK_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = v14;
  v7 = (a2 >> 4) ^ (a2 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v14 >> 4) ^ (v14 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * a1 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * a1 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::BuiltinDialect::registerLocationAttributes(mlir::BuiltinDialect *this)
{
  mlir::Dialect::addAttribute<mlir::CallSiteLoc>(this);
  mlir::Dialect::addAttribute<mlir::FileLineColLoc>(this);
  mlir::Dialect::addAttribute<mlir::FusedLoc>(this);
  mlir::Dialect::addAttribute<mlir::NameLoc>(this);
  mlir::Dialect::addAttribute<mlir::OpaqueLoc>(this);

  return mlir::Dialect::addAttribute<mlir::UnknownLoc>(this);
}

uint64_t mlir::LocationAttr::walk(void *a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  result = a2(a3, *a1);
  if (!result)
  {
    return result;
  }

  v7 = *a1;
  v8 = *(*v7 + 136);
  if (v7)
  {
    v9 = v8 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v15 = v7[1];
    result = mlir::LocationAttr::walk(&v15, a2, a3);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v10 = v8 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = v7[2];
    if (!v12)
    {
      return 1;
    }

    v13 = v7[1];
    v14 = 8 * v12;
    while (1)
    {
      v15 = *v13;
      result = mlir::LocationAttr::walk(&v15, a2, a3);
      if (!result)
      {
        break;
      }

      ++v13;
      v14 -= 8;
      if (!v14)
      {
        return 1;
      }
    }

    return result;
  }

  if (v7 && v8 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
LABEL_16:
    v11 = v7[2];
    goto LABEL_17;
  }

  result = 1;
  if (v7 && v8 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v11 = v7[3];
LABEL_17:
    v15 = v11;
    return mlir::LocationAttr::walk(&v15, a2, a3);
  }

  return result;
}

BOOL mlir::LocationAttr::classof(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
    return 1;
  }

  return v1 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
}

void mlir::FusedLoc::get(uint64_t **a1, mlir::MLIRContext *a2, uint64_t a3, mlir::UnknownLoc *this)
{
  v84[4] = *MEMORY[0x1E69E9840];
  v81 = 0;
  *v80 = 0u;
  v82 = v84;
  v83 = 0x400000000;
  if (!a2)
  {
    goto LABEL_110;
  }

  v6 = a1;
  v7 = &a1[a2];
  while (1)
  {
    v8 = *v6;
    v74 = v8;
    v9 = *(*v8 + 136);
    if (v8 && v9 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
    {
      break;
    }

    if (v9 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (++v6 == v7)
    {
      v52 = v83;
      if (v83)
      {
        v53 = v82;
        if (v83 == 1 && !a3)
        {
          v68 = v82;
          if (v82 == v84)
          {
LABEL_116:
            llvm::deallocate_buffer(v80[0], (8 * v81));
          }

LABEL_115:
          free(v68);
          goto LABEL_116;
        }

        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
        v69 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
        v70 = this;
        v77 = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJRNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
        v78 = &v69;
        v74 = v53;
        v75 = v52;
        v76 = a3;
        v55 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v53, &v53[v52]);
        v56 = (a3 >> 4) ^ (a3 >> 9);
        v57 = __ROR8__(v56 + 16, 16);
        v58 = 0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ 0xFF51AFD7ED558CCDLL ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ 0xFF51AFD7ED558CCDLL ^ v55)));
        v71 = &v74;
        v72 = &v77;
        v73 = &v74;
        v59 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
        v60 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
        v61 = (-348639895 * ((v58 >> 47) ^ v58)) ^ v56;
        v62 = AttributeUniquer;
LABEL_112:
        mlir::StorageUniquer::getParametricStorageTypeImpl(v62, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, v61, v59, &v73, v60, &v71);
        v68 = v82;
        if (v82 == v84)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

LABEL_110:
      if (!a3)
      {
        mlir::UnknownLoc::get(this, a2);
        v68 = v82;
        if (v82 == v84)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

      v79 = mlir::UnknownLoc::get(this, a2);
      v63 = mlir::MLIRContext::getAttributeUniquer(this);
      v69 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
      v70 = this;
      v77 = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
      v78 = &v69;
      v74 = &v79;
      v75 = 1;
      v76 = a3;
      v64 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(&v79, v80);
      v65 = (a3 >> 4) ^ (a3 >> 9);
      v66 = __ROR8__(v65 + 16, 16);
      v67 = 0x9DDFEA08EB382D69 * (v66 ^ ((0x9DDFEA08EB382D69 * (v66 ^ v64 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v66 ^ v64 ^ 0xFF51AFD7ED558CCDLL)));
      v71 = &v74;
      v72 = &v77;
      v73 = &v74;
      v59 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
      v60 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
      v61 = (-348639895 * ((v67 >> 47) ^ v67)) ^ v65;
      v62 = v63;
      goto LABEL_112;
    }
  }

  if (v8[3] == a3)
  {
    v11 = v8[2];
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v8[1];
    v13 = &v12[v11];
    while (2)
    {
      if (LODWORD(v80[1]))
      {
        a2 = v81;
        if (!v81)
        {
          goto LABEL_88;
        }

        v14 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v81 - 1);
        v15 = v80[0] + 8 * v14;
        v16 = *v15;
        if (*v12 == *v15)
        {
LABEL_15:
          if (++v12 == v13)
          {
            goto LABEL_5;
          }

          continue;
        }

        v40 = 0;
        v41 = 1;
        while (v16 != -4096)
        {
          if (v40)
          {
            v42 = 0;
          }

          else
          {
            v42 = v16 == -8192;
          }

          if (v42)
          {
            v40 = v15;
          }

          v43 = v14 + v41++;
          v14 = v43 & (v81 - 1);
          v15 = v80[0] + 8 * v14;
          v16 = *v15;
          if (*v12 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v15;
        }

        if (4 * LODWORD(v80[1]) + 4 < 3 * v81)
        {
          if (v81 + ~LODWORD(v80[1]) - HIDWORD(v80[1]) <= v81 >> 3)
          {
            goto LABEL_89;
          }

          ++LODWORD(v80[1]);
          if (*v44 == -4096)
          {
LABEL_22:
            v17 = *v12;
            *v44 = *v12;
            v18 = v83;
            if (v83 >= HIDWORD(v83))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v83 + 1, 8);
              v18 = v83;
            }

            *(v82 + v18) = v17;
            LODWORD(v83) = v83 + 1;
            goto LABEL_15;
          }
        }

        else
        {
LABEL_88:
          LODWORD(a2) = 2 * v81;
LABEL_89:
          llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::grow(v80, a2);
          if (v81)
          {
            v45 = v81 - 1;
            v46 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v81 - 1);
            v44 = v80[0] + 8 * v46;
            v47 = *v44;
            if (*v12 != *v44)
            {
              v48 = 0;
              v49 = 1;
              while (v47 != -4096)
              {
                if (v48)
                {
                  v50 = 0;
                }

                else
                {
                  v50 = v47 == -8192;
                }

                if (v50)
                {
                  v48 = v44;
                }

                v51 = v46 + v49++;
                v46 = v51 & v45;
                v44 = v80[0] + 8 * (v51 & v45);
                v47 = *v44;
                if (*v12 == *v44)
                {
                  goto LABEL_101;
                }
              }

              if (v48)
              {
                v44 = v48;
              }
            }
          }

          else
          {
            v44 = 0;
          }

LABEL_101:
          ++LODWORD(v80[1]);
          if (*v44 == -4096)
          {
            goto LABEL_22;
          }
        }

        --HIDWORD(v80[1]);
        goto LABEL_22;
      }

      break;
    }

    v19 = v82;
    if (v83)
    {
      v20 = *v12;
      v21 = 8 * v83;
      v19 = v82;
      do
      {
        if (*v19 == v20)
        {
          goto LABEL_71;
        }

        ++v19;
        v21 -= 8;
      }

      while (v21);
      if (v83 < HIDWORD(v83))
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_71:
      if (v19 != (v82 + 8 * v83))
      {
        goto LABEL_15;
      }

      v20 = *v12;
      if (v83 < HIDWORD(v83))
      {
LABEL_30:
        *(v82 + v83) = v20;
        v22 = v83 + 1;
        LODWORD(v83) = v22;
        if (v22 >= 5)
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v83 + 1, 8);
    *(v82 + v83) = v20;
    v22 = v83 + 1;
    LODWORD(v83) = v22;
    if (v22 < 5)
    {
      goto LABEL_15;
    }

LABEL_31:
    v23 = v82;
    v24 = v82 + 8 * v22;
    while (2)
    {
      a2 = v81;
      if (!v81)
      {
LABEL_53:
        LODWORD(a2) = 2 * v81;
        goto LABEL_54;
      }

      v25 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v81 - 1);
      v26 = v80[0] + 8 * v25;
      v27 = *v26;
      if (*v23 == *v26)
      {
LABEL_33:
        if (++v23 == v24)
        {
          goto LABEL_15;
        }

        continue;
      }

      break;
    }

    v28 = 0;
    v29 = 1;
    while (v27 != -4096)
    {
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v27 == -8192;
      }

      if (v30)
      {
        v28 = v26;
      }

      v31 = v25 + v29++;
      v25 = v31 & (v81 - 1);
      v26 = v80[0] + 8 * v25;
      v27 = *v26;
      if (*v23 == *v26)
      {
        goto LABEL_33;
      }
    }

    if (v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v26;
    }

    if (4 * LODWORD(v80[1]) + 4 >= 3 * v81)
    {
      goto LABEL_53;
    }

    if (v81 + ~LODWORD(v80[1]) - HIDWORD(v80[1]) <= v81 >> 3)
    {
LABEL_54:
      llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::grow(v80, a2);
      if (v81)
      {
        v33 = v81 - 1;
        v34 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v81 - 1);
        v32 = v80[0] + 8 * v34;
        v35 = *v32;
        if (*v23 != *v32)
        {
          v36 = 0;
          v37 = 1;
          while (v35 != -4096)
          {
            if (v36)
            {
              v38 = 0;
            }

            else
            {
              v38 = v35 == -8192;
            }

            if (v38)
            {
              v36 = v32;
            }

            v39 = v34 + v37++;
            v34 = v39 & v33;
            v32 = v80[0] + 8 * (v39 & v33);
            v35 = *v32;
            if (*v23 == *v32)
            {
              goto LABEL_66;
            }
          }

          if (v36)
          {
            v32 = v36;
          }
        }
      }

      else
      {
        v32 = 0;
      }

LABEL_66:
      ++LODWORD(v80[1]);
      if (*v32 != -4096)
      {
LABEL_38:
        --HIDWORD(v80[1]);
      }
    }

    else
    {
      ++LODWORD(v80[1]);
      if (*v32 != -4096)
      {
        goto LABEL_38;
      }
    }

    *v32 = *v23;
    goto LABEL_33;
  }

LABEL_4:
  llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(v80, &v74);
  goto LABEL_5;
}

uint64_t llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 24;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = Slow + 3;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    Slow[1] = v2;
    Slow[2] = v3;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  Slow[1] = v2;
  Slow[2] = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 24;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = Slow + 3;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    Slow[1] = v2;
    Slow[2] = v3;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  Slow[1] = v2;
  Slow[2] = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::FusedLocAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v5 = 8 * v2;
    a1[10] += 8 * v2;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = Slow + 8 * v2;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = Slow;
        v11 = v4;
        if (Slow - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (Slow + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (Slow + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = Slow;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v2));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = Slow;
  v20[2] = v2;
  v20[3] = v3;
  return v20;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 1);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
    *(Slow + 16) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 16) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], Slow);
  }

  return Slow;
}

uint64_t *mlir::Dialect::addAttribute<mlir::CallSiteLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::CallSiteLoc,mlir::LocationAttr,mlir::detail::CallSiteLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSB_22CallSiteLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSA_22CallSiteLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v24 = "builtin.call_site_loc";
  v25 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::FileLineColLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::FileLineColLoc,mlir::LocationAttr,mlir::detail::FileLineColLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSB_25FileLineColLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSA_25FileLineColLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v24 = "builtin.file_line_loc";
  v25 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::FusedLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::FusedLoc,mlir::LocationAttr,mlir::detail::FusedLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSB_19FusedLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSA_19FusedLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v24 = "builtin.fused_loc";
  v25 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::NameLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::NameLoc,mlir::LocationAttr,mlir::detail::NameLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSB_18NameLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSA_18NameLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v24 = "builtin.name_loc";
  v25 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addAttribute<mlir::OpaqueLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::OpaqueLoc,mlir::LocationAttr,mlir::detail::OpaqueLocAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSB_20OpaqueLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSA_20OpaqueLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v24 = "builtin.opaque_loc";
  v25 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, 0, v9);
}

uint64_t mlir::Dialect::addAttribute<mlir::UnknownLoc>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::UnknownLoc,mlir::LocationAttr,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10UnknownLocENS1_12LocationAttrENS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = v11;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10UnknownLocENS1_12LocationAttrENS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v24 = "builtin.unknown_loc";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_10UnknownLocEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSB_22CallSiteLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSA_22CallSiteLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v3 = *a3;
  v4 = a3[1];
  mlir::Attribute::getContext(&v11);
  v12 = v3;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = v4;
  v7 = (v4 >> 4) ^ (v4 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v12 >> 4) ^ (v12 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSB_25FileLineColLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14FileLineColLocENS1_12LocationAttrENSA_25FileLineColLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FileLineColLoc>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FileLineColLoc>(uint64_t a1, uint64_t **a2)
{
  v9 = a1;
  v2 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v3 = **a2;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v9);
  v10 = v3;
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail25FileLineColLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14FileLineColLocEJRNS1_10StringAttrERjSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = v2;
  v6 = __ROR8__(v2 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v10 >> 4) ^ (v10 >> 9));
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v2, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColLocAttrStorage,mlir::StringAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::detail::FileLineColLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSB_19FusedLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  if (v6)
  {
    v9 = 8 * v6;
    do
    {
      v10 = *v7++;
      mlir::AttrTypeImmediateSubElementWalker::walk(v12, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return mlir::AttrTypeImmediateSubElementWalker::walk(v12, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSA_19FusedLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5.i64[0] = a3;
  v5.i64[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FusedLoc>(a2, &v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FusedLoc>(uint64_t a1, int64x2_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v2 = *(a1 + 8);
  v18 = *(a1 + 24);
  v16 = *a2;
  v17 = v2;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::Location>,mlir::Attribute>,void>::replace(&v17, &v16, &v28);
  Context = mlir::Attribute::getContext(&v19);
  v25 = v27;
  v26 = 0x600000000;
  v4 = v29;
  if (!v29)
  {
    v4 = 0;
    v7 = v27;
    goto LABEL_9;
  }

  if (v29 < 7)
  {
    v6 = v27;
    v5 = v29;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v29, 8);
  v5 = v29;
  if (v29)
  {
    v6 = v25;
LABEL_7:
    memcpy(v6, v28, 8 * v5);
  }

  LODWORD(v26) = v4;
  v7 = v25;
LABEL_9:
  v8 = v31;
  v27[6] = v31;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v20[1] = Context;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v24[1] = v20;
  v23[0] = v7;
  v23[1] = v4;
  v23[2] = v8;
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v7, &v7[2 * v4]);
  v11 = (v8 >> 4) ^ (v8 >> 9);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v10 ^ 0xFF51AFD7ED558CCDLL)));
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::Location>,mlir::Attribute>,void>::replace(uint64_t a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::Location>,void>::replace(*(a1 + 8), a2, &__src);
  if (*(a1 + 16))
  {
    v6 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_1E09721B0);
    v7 = *v6.i64[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v9 = v14;
  v10 = __src;
  if (!v14 || &__src == a3)
  {
    goto LABEL_15;
  }

  if (__src == v16)
  {
    if (v14 < 7)
    {
      v12 = v14;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v14, 8);
      v12 = v14;
      v10 = __src;
      if (!v14)
      {
LABEL_13:
        *(a3 + 8) = v9;
        goto LABEL_14;
      }

      v8 = *a3;
    }

    memcpy(v8, v10, 8 * v12);
    v10 = __src;
    goto LABEL_13;
  }

  *a3 = __src;
  v11 = v15;
  *(a3 + 8) = v9;
  *(a3 + 12) = v11;
  __src = v16;
  v15 = 0;
  v10 = v16;
LABEL_14:
  v14 = 0;
LABEL_15:
  *(a3 + 64) = v7;
  if (v10 != v16)
  {
    free(v10);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::Location>,void>::replace(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v19[6] = *MEMORY[0x1E69E9840];
  __src = v19;
  v18 = 0x600000000;
  if (a1)
  {
    v3 = 8 * a1;
    v4 = xmmword_1E09721B0;
    do
    {
      while (1)
      {
        v5 = *a2;
        *a2 = vaddq_s64(*a2, v4);
        v6 = *v5.i64[0];
        v16 = *v5.i64[0];
        if (v18 >= HIDWORD(v18))
        {
          break;
        }

        *(__src + v18) = v6;
        LODWORD(v18) = v18 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v7 = a3;
      v8 = a2;
      v15 = v4;
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&__src, &v16);
      v4 = v15;
      a2 = v8;
      a3 = v7;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v9 = v18;
    v10 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v9 && &__src != a3)
    {
      if (v10 == v19)
      {
        v12 = v9;
        if (v9 < 7 || (v13 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v9, 8), a3 = v13, v12 = v18, v10 = __src, v18))
        {
          v14 = a3;
          memcpy(*a3, v10, 8 * v12);
          a3 = v14;
          v10 = __src;
        }

        *(a3 + 8) = v9;
      }

      else
      {
        *a3 = v10;
        v11 = HIDWORD(v18);
        *(a3 + 8) = v9;
        *(a3 + 12) = v11;
        __src = v19;
        HIDWORD(v18) = 0;
        v10 = v19;
      }

      LODWORD(v18) = 0;
    }

    if (v10 != v19)
    {
      free(v10);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSB_18NameLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSA_18NameLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::NameLoc>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::NameLoc>(uint64_t a1, uint64_t **a2)
{
  v12 = a1;
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = *v2++;
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5 = *v2;
  mlir::Attribute::getContext(&v12);
  v13 = v3;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v14[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v13;
  v17[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSB_20OpaqueLocAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSA_20OpaqueLocAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueLoc>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueLoc>(uint64_t a1, uint64_t **a2)
{
  v14 = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **a2;
  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v16[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail20OpaqueLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9OpaqueLocEJRmRNS1_6TypeIDERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextESC_DpOT0_EUlPSK_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v15;
  v7 = (v3 >> 4) ^ (v3 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v15 >> 4) ^ (v15 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * v2 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * v2 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v17 = &result->i8[8 * v11];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = *(a1 + 16) - 1;
          v29 = v28 & ((v27 >> 4) ^ (v27 >> 9));
          v26 = (*a1 + 8 * v29);
          v30 = *v26;
          if (v27 != *v26)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v26;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v26 = (*a1 + 8 * (v34 & v28));
              v30 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v26 = v31;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 < 3)
    {
      goto LABEL_19;
    }

    v21 = v20 + 1;
    v10 = &result->i8[8 * (v21 & 0x3FFFFFFFFFFFFFFCLL)];
    v22 = result + 1;
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22[-1] = v23;
      *v22 = v23;
      v22 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v25 = &result->i8[8 * v19];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v25);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t *mlir::MLIRContext::MLIRContext(uint64_t *a1, _BYTE *a2, int a3)
{
  v6 = operator new(0x340uLL);
  v7 = v6;
  if (a3 == 1)
  {
    if (atomic_load(clOptions))
    {
      if (!atomic_load_explicit(clOptions, memory_order_acquire))
      {
      }

      mlir::MLIRContextImpl::MLIRContextImpl(v7, (*(clOptions[0] + 128) ^ 1) & 1);
      *a1 = v7;
      if (!atomic_load(clOptions))
      {
        goto LABEL_14;
      }

LABEL_8:
      if (atomic_load_explicit(clOptions, memory_order_acquire))
      {
        *(*a1 + 42) = *(clOptions[0] + 320);
        if (atomic_load_explicit(clOptions, memory_order_acquire))
        {
LABEL_10:
          v11 = *a1;
          *(*a1 + 43) = *(clOptions[0] + 512);
          goto LABEL_15;
        }
      }

      else
      {
        *(*a1 + 42) = *(clOptions[0] + 320);
        if (atomic_load_explicit(clOptions, memory_order_acquire))
        {
          goto LABEL_10;
        }
      }

      goto LABEL_10;
    }

    mlir::MLIRContextImpl::MLIRContextImpl(v6, 1);
    *a1 = v7;
    if (atomic_load(clOptions))
    {
      goto LABEL_8;
    }
  }

  else
  {
    mlir::MLIRContextImpl::MLIRContextImpl(v6, 0);
    *a1 = v7;
    if (atomic_load(clOptions))
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  v11 = *a1;
LABEL_15:
  mlir::DialectRegistry::appendTo(a2, (v11 + 272));
  v39 = a1;
  mlir::MLIRContext::getOrLoadDialect(a1, "builtin", 7, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, &v39);
  *(*a1 + 416) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id);
  *(*a1 + 424) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id);
  *(*a1 + 432) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id);
  *(*a1 + 440) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id);
  *(*a1 + 448) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id);
  *(*a1 + 456) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id);
  *(*a1 + 464) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id);
  *(*a1 + 472) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id);
  *(*a1 + 480) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id);
  *(*a1 + 488) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id);
  *(*a1 + 496) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id);
  *(*a1 + 504) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id);
  *(*a1 + 512) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id);
  *(*a1 + 520) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id);
  *(*a1 + 528) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id);
  *(*a1 + 536) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id);
  *(*a1 + 544) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id);
  *(*a1 + 552) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id);
  v34 = a1;
  v13 = *a1;
  v32 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v33 = &v34;
  v39 = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v40 = &v32;
  v37 = &v38;
  v38 = 1;
  v35 = &v38;
  v36 = &v39;
  *(*a1 + 560) = mlir::StorageUniquer::getParametricStorageTypeImpl((v13 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0x3436C3Fu, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v33 = &v34;
  v34 = a1;
  v14 = *a1;
  v32 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v39 = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v40 = &v32;
  v37 = &v38;
  v38 = 8;
  v35 = &v38;
  v36 = &v39;
  *(*a1 + 568) = mlir::StorageUniquer::getParametricStorageTypeImpl((v14 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0xF890D9D8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v33 = &v34;
  v34 = a1;
  v15 = *a1;
  v32 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v39 = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v40 = &v32;
  v37 = &v38;
  v38 = 16;
  v35 = &v38;
  v36 = &v39;
  *(*a1 + 576) = mlir::StorageUniquer::getParametricStorageTypeImpl((v15 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0x35D2C18Du, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v33 = &v34;
  v34 = a1;
  v16 = *a1;
  v32 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v39 = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v40 = &v32;
  v37 = &v38;
  v38 = 32;
  v35 = &v38;
  v36 = &v39;
  *(*a1 + 584) = mlir::StorageUniquer::getParametricStorageTypeImpl((v16 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0xF977FA0B, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v33 = &v34;
  v34 = a1;
  v17 = *a1;
  v32 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v39 = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v40 = &v32;
  v37 = &v38;
  v38 = 64;
  v35 = &v38;
  v36 = &v39;
  *(*a1 + 592) = mlir::StorageUniquer::getParametricStorageTypeImpl((v17 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0xE489BF0D, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v33 = &v34;
  v34 = a1;
  v18 = *a1;
  v32 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v39 = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_;
  v40 = &v32;
  v37 = &v38;
  v38 = 128;
  v35 = &v38;
  v36 = &v39;
  *(*a1 + 600) = mlir::StorageUniquer::getParametricStorageTypeImpl((v18 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0xB19B4417, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  *(*a1 + 608) = mlir::StorageUniquer::getSingletonImpl((*a1 + 384), &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id);
  *(*a1 + 696) = mlir::StorageUniquer::getSingletonImpl((*a1 + 640), &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id);
  *(*a1 + 672) = mlir::IntegerAttr::getBoolAttrUnchecked(*(*a1 + 560), 0);
  *(*a1 + 680) = mlir::IntegerAttr::getBoolAttrUnchecked(*(*a1 + 560), 1u);
  *(*a1 + 688) = mlir::StorageUniquer::getSingletonImpl((*a1 + 640), &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id);
  *(*a1 + 704) = mlir::DictionaryAttr::getEmptyUnchecked(a1, v19);
  *(*a1 + 712) = mlir::StringAttr::getEmptyStringAttrUnchecked(a1, v20);
  v22 = *a1;
  {
    mlir::MLIRContext::MLIRContext();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl((v22 + 352), mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID(void)::id, 0, v21);
  v24 = *a1;
  {
    mlir::MLIRContext::MLIRContext();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl((v24 + 352), mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID(void)::id, 0, v23);
  v26 = *a1;
  {
    mlir::MLIRContext::MLIRContext();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl((v26 + 352), mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID(void)::id, 0, v25);
  v28 = *a1;
  {
    mlir::MLIRContext::MLIRContext();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl((v28 + 352), mlir::detail::TypeIDResolver<mlir::detail::AffineMapStorage,void>::resolveTypeID(void)::id, 0, v27);
  v30 = *a1;
  {
    mlir::MLIRContext::MLIRContext();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl((v30 + 352), mlir::detail::TypeIDResolver<mlir::detail::IntegerSetStorage,void>::resolveTypeID(void)::id, 0, v29);
  return a1;
}

void mlir::MLIRContext::MLIRContext(uint64_t *a1, int a2)
{
  mlir::DialectRegistry::DialectRegistry(v8);
  mlir::MLIRContext::MLIRContext(a1, v8, a2);
  v4 = v11;
  if (v12)
  {
    v5 = v11 - 8;
    v6 = 16 * v12;
    do
    {
      v7 = *&v5[v6];
      *&v5[v6] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v6 -= 16;
    }

    while (v6);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  llvm::deallocate_buffer(v9, (16 * v10));
}

_BYTE *mlir::DialectRegistry::appendTo(_BYTE *this, uint64_t **a2)
{
  v3 = this;
  v4 = this + 8;
  v5 = *this;
  if (*this != this + 8)
  {
    do
    {
      v9 = *(v5 + 55);
      if (v9 >= 0)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 = v5[4];
      }

      if (v9 >= 0)
      {
        v11 = *(v5 + 55);
      }

      else
      {
        v11 = v5[5];
      }

      this = mlir::DialectRegistry::insert(a2, v5[7], v10, v11, (v5 + 8));
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  v6 = *(v3 + 14);
  if (v6)
  {
    v7 = *(v3 + 6);
    for (i = 16 * v6; i; i -= 16)
    {
      (*(**(v7 + 8) + 24))(&v18);
      v20 = *v7;
      v21 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>((a2 + 3), &v20, &v21, &v22);
      if (v23 == 1)
      {
        v15 = *(a2 + 14);
        *(v22 + 8) = v15;
        v19 = &v18;
        v20 = v7;
        if (v15 >= *(a2 + 15))
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>((a2 + 6), &std::piecewise_construct, &v20, &v19);
          this = v18;
          v18 = 0;
          if (!this)
          {
            goto LABEL_17;
          }

LABEL_22:
          this = (*(*this + 8))(this);
          goto LABEL_17;
        }

        v16 = &a2[6][2 * v15];
        *v16 = *v7;
        v17 = v18;
        v18 = 0;
        v16[1] = v17;
        *(a2 + 14) = v15 + 1;
      }

      this = v18;
      v18 = 0;
      if (this)
      {
        goto LABEL_22;
      }

LABEL_17:
      v7 += 16;
    }
  }

  return this;
}

void mlir::MLIRContext::~MLIRContext(mlir::MLIRContextImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::MLIRContextImpl::~MLIRContextImpl(v2);
  }
}

uint64_t mlir::MLIRContext::executeActionInternal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v8[0] = a2;
  v8[1] = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, v8, a4);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::MLIRContext::hasActionHandler(v7);
}

void mlir::MLIRContext::appendDialectRegistry(mlir::MLIRContext *this, const mlir::DialectRegistry *a2)
{
  if ((mlir::DialectRegistry::isSubsetOf(a2, (*this + 272)) & 1) == 0)
  {
    mlir::DialectRegistry::appendTo(a2, (*this + 272));

    mlir::DialectRegistry::applyExtensions(a2, this);
  }
}

void mlir::MLIRContext::getLoadedDialects(mlir::MLIRContext *this@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *this;
  v4 = *(*this + 256);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = operator new(8 * v4);
    v7 = v6;
    v8 = &v6[v5];
    *a2 = v6;
    a2[1] = v6;
    a2[2] = &v6[v5];
    v9 = *(v3 + 264);
    if (v9)
    {
      v10 = 24 * v9;
      v11 = *(v3 + 248);
      while (*v11 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v11 += 3;
        v10 -= 24;
        if (!v10)
        {
          v12 = v6;
          goto LABEL_8;
        }
      }
    }

    else
    {
      v11 = *(v3 + 248);
    }

    v14 = *(v3 + 248) + 24 * v9;
    v12 = v6;
    while (v11 != v14)
    {
      v15 = v11[2];
      if (v7 >= v8)
      {
        v16 = v7 - v12;
        v17 = (v7 - v12) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          a2[2] = v8;
          *a2 = v12;
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v8 - v12) >> 2 > v18)
        {
          v18 = (v8 - v12) >> 2;
        }

        if ((v8 - v12) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            a2[2] = v8;
            *a2 = v12;
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * v17];
        v8 = &v20[8 * v19];
        *v21 = v15;
        v7 = v21 + 8;
        memcpy(v20, v12, v16);
        a2[1] = v7;
        if (v12)
        {
          operator delete(v12);
        }

        v12 = v20;
      }

      else
      {
        *v7 = v15;
        v7 += 8;
      }

      a2[1] = v7;
      do
      {
        v11 += 3;
      }

      while (v11 != v14 && *v11 >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

  else
  {
    v7 = 0;
    v12 = 0;
    v8 = 0;
  }

LABEL_8:
  a2[2] = v8;
  *a2 = v12;
  v13 = (v7 - v12) >> 3;
  if (v13 >= 2)
  {

    qsort(v12, v13, 8uLL, mlir::MLIRContext::getLoadedDialects(void)::$_0::__invoke);
  }
}

void mlir::MLIRContext::getAvailableDialects(mlir::MLIRContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(*this + 272);
  v4 = *this + 280;
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v3 + 55);
      if (v7 >= 0)
      {
        v8 = v3 + 4;
      }

      else
      {
        v8 = v3[4];
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 55);
      }

      else
      {
        v9 = v3[5];
      }

      v10 = a2[2];
      if (v5 >= v10)
      {
        v12 = v5 - v6;
        v13 = (v5 - v6) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v15 = v10 - v6;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 >> 60)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v17 = operator new(16 * v16);
        }

        else
        {
          v17 = 0;
        }

        v18 = &v17[16 * v13];
        *v18 = v8;
        *(v18 + 1) = v9;
        v5 = v18 + 16;
        memcpy(v17, v6, v12);
        *a2 = v17;
        a2[1] = v5;
        a2[2] = &v17[16 * v16];
        if (v6)
        {
          operator delete(v6);
        }

        v6 = v17;
        a2[1] = v5;
        v11 = v3[1];
        if (v11)
        {
          do
          {
LABEL_26:
            v19 = v11;
            v11 = *v11;
          }

          while (v11);
          goto LABEL_3;
        }
      }

      else
      {
        *v5 = v8;
        *(v5 + 1) = v9;
        v5 += 16;
        a2[1] = v5;
        v11 = v3[1];
        if (v11)
        {
          goto LABEL_26;
        }
      }

      do
      {
        v19 = v3[2];
        v20 = *v19 == v3;
        v3 = v19;
      }

      while (!v20);
LABEL_3:
      v3 = v19;
    }

    while (v19 != v4);
  }
}

uint64_t mlir::MLIRContext::getLoadedDialect(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v4 = *a1;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((*a1 + 248), v8);
  v6 = *(v4 + 248) + 24 * *(v4 + 264);
  if (v5)
  {
    v6 = v5;
  }

  if (v6 == *(*a1 + 248) + 24 * *(*a1 + 264))
  {
    return 0;
  }

  else
  {
    return *(v6 + 16);
  }
}

uint64_t (*mlir::MLIRContext::getOrLoadDialect(uint64_t a1, char *a2, unint64_t a3))(uint64_t a1, uint64_t a2)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = *a1;
  v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((*a1 + 248), v11);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v6 + 248) + 24 * *(v6 + 264);
  }

  if (v8 == *(*a1 + 248) + 24 * *(*a1 + 264) || (result = *(v8 + 16)) == 0)
  {
    v12.var0 = a2;
    v12.var1 = a3;
    result = mlir::DialectRegistry::getDialectAllocator((*a1 + 272), v12);
    if (result)
    {
      return result(v10, a1);
    }
  }

  return result;
}

size_t *mlir::MLIRContext::getOrLoadDialect(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v9 = *a1;
  v32[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::try_emplace<decltype(nullptr)>(v9 + 248, &v35, &v33);
  if (v34 == 1)
  {
    a5(v32, a6);
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::operator[](v9 + 248, &v35);
    v11 = v32[0];
    v32[0] = 0;
    v12 = *v10;
    *v10 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v32[0];
    v32[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *v10;
    v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::doFind<llvm::StringRef>((v9 + 792), &v35);
    if (v15 && v15 != *(v9 + 792) + 80 * *(v9 + 808))
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v17)
      {
        v18 = *(v15 + 16);
        if (((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_13;
        }

        v19 = ((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v18 = &v16[v19 & 0x3FFFFFFFFFFFFFFELL];
        v20 = v16 + 1;
        v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v22 = *v20;
          *(*(v20 - 1) + 32) = v14;
          *(v22 + 32) = v14;
          v20 += 2;
          v21 -= 2;
        }

        while (v21);
        if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_13:
          v23 = &v16[v17];
          do
          {
            v24 = *v18++;
            *(v24 + 32) = v14;
          }

          while (v18 != v23);
        }
      }

      if (v16 != (v15 + 32))
      {
        v25 = v15;
        free(v16);
        v15 = v25;
      }

      *v15 = xmmword_1E0971DA0;
      *(v9 + 800) = vadd_s32(*(v9 + 800), 0x1FFFFFFFFLL);
    }

    mlir::DialectRegistry::applyExtensions((v9 + 272), v14);
    return v14;
  }

  else
  {
    if (*(*(v33 + 16) + 24) != a4)
    {
      v31 = 1283;
      v29 = "a dialect with namespace '";
      v30 = v35;
      v27 = "' has already been registered";
      v28 = 259;
      llvm::operator+(&v29, &v27, v32);
      llvm::report_fatal_error(v32, 1);
    }

    return *(v33 + 16);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v12);
  v7 = v12;
  if (!result)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*v7 == -1)
      {
LABEL_7:
        *v7 = *a2;
        v7[2] = 0;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(a1, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 24 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::operator[](uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

BOOL mlir::MLIRContext::isDialectLoading(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v4 = *a1;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((*a1 + 248), v8);
  v6 = *(v4 + 248) + 24 * *(v4 + 264);
  if (v5)
  {
    v6 = v5;
  }

  return v6 != *(*a1 + 248) + 24 * *(*a1 + 264) && *(v6 + 16) == 0;
}

unint64_t mlir::MLIRContext::getRegistryHash(mlir::MLIRContext *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*this + 256);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = 0;
  LODWORD(v11) = v2;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
  v4 = *(*this + 624);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = v3;
  LODWORD(v11) = v4;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
  v6 = *(*this + 192);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = v5;
  LODWORD(v11) = v6;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
  v8 = *(*this + 368);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  v10 = v7;
  LODWORD(v11) = v8;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v10, 0, &v11 + 4, &v14 + 8);
}

uint64_t mlir::MLIRContext::getNumThreads(mlir::MLIRContext *this)
{
  if (*(*this + 41) == 1)
  {
    return (*(**(*this + 48) + 40))();
  }

  else
  {
    return 1;
  }
}

uint64_t mlir::RegisteredOperationName::lookup(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3)
{
  v5 = *a3;
  v6 = llvm::StringMapImpl::hash(a1, a2, a3);
  Key = llvm::StringMapImpl::FindKey((v5 + 208), a1, a2, v6);
  if (Key == -1 || Key == *(v5 + 216))
  {
    return 0;
  }

  else
  {
    return *(*(*(v5 + 208) + 8 * Key) + 8);
  }
}

uint64_t mlir::Dialect::addType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = Slow + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *Slow = *a3;
  *(Slow + 8) = Slow + 24;
  *(Slow + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(Slow + 8, (a3 + 8));
  }

  *(Slow + 96) = 0;
  v11 = *(a3 + 96);
  *(Slow + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(Slow + 72, a3 + 72);
      (*((*(Slow + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(Slow + 88) = *(a3 + 88);
      *(Slow + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(Slow + 152) = *(a3 + 152);
  *(Slow + 136) = v15;
  *(Slow + 120) = v14;
  *(Slow + 104) = v13;
  *&v21 = a2;
  *(&v21 + 1) = Slow;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((v5 + 45), &v21, &v21 + 1, v24);
  if ((v25 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Type already registered.", 1);
  }

  v21 = *(Slow + 144);
  v22[0] = Slow;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>((v5 + 49), &v21, v22, v24);
  if ((v25 & 1) == 0)
  {
    v17 = *(Slow + 144);
    v18 = *(Slow + 152);
    v23 = 1283;
    *&v21 = "Dialect Type with name ";
    v22[0] = v17;
    v22[1] = v18;
    v19 = " is already registered.";
    v20 = 259;
    llvm::operator+(&v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  return result;
}

uint64_t mlir::Dialect::addAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = Slow + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *Slow = *a3;
  *(Slow + 8) = Slow + 24;
  *(Slow + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(Slow + 8, (a3 + 8));
  }

  *(Slow + 96) = 0;
  v11 = *(a3 + 96);
  *(Slow + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(Slow + 72, a3 + 72);
      (*((*(Slow + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(Slow + 88) = *(a3 + 88);
      *(Slow + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(Slow + 152) = *(a3 + 152);
  *(Slow + 136) = v15;
  *(Slow + 120) = v14;
  *(Slow + 104) = v13;
  *&v21 = a2;
  *(&v21 + 1) = Slow;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((v5 + 77), &v21, &v21 + 1, v24);
  if ((v25 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Attribute already registered.", 1);
  }

  v21 = *(Slow + 144);
  v22[0] = Slow;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>((v5 + 81), &v21, v22, v24);
  if ((v25 & 1) == 0)
  {
    v17 = *(Slow + 144);
    v18 = *(Slow + 152);
    v23 = 1283;
    *&v21 = "Dialect Attribute with name ";
    v22[0] = v17;
    v22[1] = v18;
    v19 = " is already registered.";
    v20 = 259;
    llvm::operator+(&v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  return result;
}

uint64_t mlir::AbstractAttribute::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 632);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*a2 + 616);
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 != a1)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  result = *(v3 + 16 * v5 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

void *mlir::OperationName::Impl::Impl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v10 = *(a4 + 32);
  v20 = 261;
  v19[0] = a2;
  v19[1] = a3;
  v11 = mlir::StringAttr::get(v10, v19);
  v21 = v23;
  v22 = 0x300000000;
  if (*(a6 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(&v21, a6);
    v12 = v22 == 0;
  }

  else
  {
    v12 = 1;
  }

  *a1 = &unk_1F5B05788;
  a1[1] = v11;
  a1[2] = a5;
  a1[3] = a4;
  a1[4] = a1 + 6;
  a1[5] = 0x300000000;
  if (v12)
  {
    a1[12] = 0;
    a1[13] = 0;
  }

  else
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=((a1 + 4), &v21);
    v13 = v22;
    a1[12] = 0;
    a1[13] = 0;
    v14 = v21;
    if (!v13)
    {
      goto LABEL_10;
    }

    v15 = 16 * v13;
    v16 = (v21 + 8);
    do
    {
      v17 = *v16;
      v16 += 2;
      free(v17);
      v15 -= 16;
    }

    while (v15);
  }

  v14 = v21;
LABEL_10:
  if (v14 != v23)
  {
    free(v14);
  }

  return a1;
}

void *mlir::OperationName::OperationName(void *a1, unsigned int *a2, const unsigned __int8 *a3, mlir::StringAttr *a4)
{
  v8 = 0;
  v32 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v9 = *a4;
  if (*(*a4 + 41) == 1)
  {
    v10 = llvm::StringMapImpl::hash(a2, a3, a3);
    Key = llvm::StringMapImpl::FindKey((v9 + 208), a2, a3, v10);
    if (Key != -1 && Key != *(v9 + 216))
    {
      *a1 = *(*(*(v9 + 208) + 8 * Key) + 8);
      return a1;
    }

    if ((mlir::OperationName::OperationName(v9, a2, a3, a1, &v27) & 1) == 0)
    {
      return a1;
    }

    v8 = v27;
  }

  v25[1] = a2;
  v25[2] = a3;
  v26 = 0;
  v12 = llvm::StringMapImpl::hash(a2, a3, a3);
  v13 = llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::OperationName::Impl>>((v9 + 160), a2, a3, v12, &v26);
  v15 = v14;
  v16 = v26;
  v26 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (v15)
  {
    LOWORD(v30) = 261;
    v27 = a2;
    v28 = a3;
    v25[0] = mlir::StringAttr::get(a4, &v27);
    Values = mlir::SparseElementsAttr::getValues(v25);
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v27 = &v29;
    v28 = 0x300000000;
    v18 = operator new(0x70uLL);
    v18[1] = v25[0];
    v18[2] = &mlir::detail::TypeIDResolver<void,void>::id;
    v18[3] = Values;
    v18[4] = v18 + 6;
    v18[5] = 0x300000000;
    v18[12] = 0;
    v18[13] = 0;
    *v18 = &unk_1F5AF7FC0;
    v19 = *(*v13 + 8);
    *(*v13 + 8) = v18;
    if (v19)
    {
      (*(*v19 + 8))(v19);
      v20 = v27;
      if (v28)
      {
        v21 = 16 * v28;
        v22 = (v27 + 8);
        do
        {
          v23 = *v22;
          v22 += 2;
          free(v23);
          v21 -= 16;
        }

        while (v21);
        v20 = v27;
      }

      if (v20 != &v29)
      {
        free(v20);
      }
    }
  }

  *a1 = *(*v13 + 8);
  if (v8)
  {
    llvm::sys::RWMutexImpl::unlock_shared(v8);
  }

  return a1;
}

uint64_t llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::find(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  v8 = *a1;
  if (Key == -1)
  {
    return v8 + 8 * *(a1 + 8);
  }

  else
  {
    return v8 + 8 * Key;
  }
}

uint64_t mlir::OperationName::getDialectNamespace(mlir::OperationName *this)
{
  v2 = *this;
  if (*(*this + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v6[0] = *(v2 + 8);
    Values = mlir::SparseElementsAttr::getValues(v6);
    if (Values)
    {
      return *(Values + 8);
    }
  }

  else
  {
    Values = *(v2 + 24);
    if (Values)
    {
      return *(Values + 8);
    }
  }

  v6[0] = *(*this + 8);
  v6[0] = mlir::OpaqueAttr::getAttrData(v6);
  v6[1] = v5;
  v7 = 46;
  llvm::StringRef::find(v6, &v7, 1uLL, 0);
  return v6[0];
}

unint64_t mlir::OperationName::UnregisteredOpModel::getInherentAttr(mlir::OperationName::UnregisteredOpModel *this, Operation *a2, StringRef a3)
{
  v3 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    return 0;
  }

  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v3 = 0;
  }

  v8 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = mlir::DictionaryAttr::get(&v8, a3);
  v5 = v4 & 0xFFFFFFFFFFFFFF00;
  v6 = v4;
  if (!v4)
  {
    v6 = 0;
    v5 = 0;
  }

  return v5 | v6;
}

void mlir::OperationName::UnregisteredOpModel::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[9] = *MEMORY[0x1E69E9840];
  v7 = a2 + 64;
  v8 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v8)
  {
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  mlir::NamedAttrList::NamedAttrList(v13, v9);
  mlir::NamedAttrList::set(v13, a3, a4);
  Context = mlir::Attribute::getContext((a2 + 24));
  Dictionary = mlir::NamedAttrList::getDictionary(v13, Context);
  if (HIBYTE(*(a2 + 44)))
  {
    v12 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  }

  else
  {
    v12 = 0;
  }

  *v12 = Dictionary;
  if (v13[0] != v14)
  {
    free(v13[0]);
  }
}

uint64_t mlir::RegisteredOperationName::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 200);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a2 + 184);
  v4 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != a1)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a1)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8);
}

void mlir::RegisteredOperationName::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*(*a1 + 24) + 32);
  v6 = *v5;
  if (a3)
  {
    v8 = (v6 + 64);
    v9 = *(v6 + 64);
    v10 = 8 * a3;
    *(v6 + 144) += v10;
    v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11 + v10;
    if (v9)
    {
      v13 = v12 > *(v6 + 72);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v51 = a2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v8, v10, v10, 3);
      a2 = v51;
      v11 = Slow;
      v14 = a3;
      if (a3)
      {
LABEL_7:
        v15 = (a2 + 8);
        v16 = v11;
        do
        {
          v55 = 261;
          v54[0] = *(v15 - 1);
          v17 = *v15;
          v15 += 2;
          v54[1] = v17;
          *v16++ = mlir::StringAttr::get(v5, v54);
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      *v8 = v12;
      v14 = a3;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    v4[12] = v11;
    v4[13] = a3;
  }

  v54[0] = v4[1];
  AttrData = mlir::OpaqueAttr::getAttrData(v54);
  v20 = v19;
  v53 = 0;
  v22 = llvm::StringMapImpl::hash(AttrData, v19, v21);
  v23 = llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::OperationName::Impl>>((v6 + 160), AttrData, v20, v22, &v53);
  v24 = v53;
  v53 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *v23;
  v26 = *a1;
  *a1 = 0;
  v27 = *(v25 + 8);
  *(v25 + 8) = v26;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v4[2];
  v56 = v4;
  v57 = v28;
  llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>(v6 + 184, &v57, &v56, v54);
  v57 = v4;
  v30 = llvm::StringMapImpl::hash(AttrData, v20, v29);
  llvm::StringMap<mlir::Type,llvm::MallocAllocator>::try_emplace_with_hash<mlir::Type&>((v6 + 208), AttrData, v20, v30, &v57);
  v31 = v54[0];
  v32 = *(v6 + 232);
  v33 = *(v6 + 240);
  if (v33)
  {
    v34 = *(v6 + 232);
    do
    {
      v35 = v33 >> 1;
      v36 = v34 + 8 * (v33 >> 1);
      v37 = *(*v36 + 8);
      v56 = *(*(v31 + 8) + 8);
      v57 = v37;
      if (v56 == v37 || ((v38 = mlir::OpaqueAttr::getAttrData(&v56), v40 = v39, v41 = mlir::OpaqueAttr::getAttrData(&v57), v43 = v42, v42 >= v40) ? (v44 = v40) : (v44 = v42), (!v44 || !memcmp(v38, v41, v44)) && v40 == v43))
      {
        v34 = v36 + 8;
        v35 = v33 + ~v35;
      }

      v33 = v35;
    }

    while (v35);
    v32 = *(v6 + 232);
    v45 = *(v31 + 8);
    v46 = *(v6 + 240);
    if (v32 + 8 * v46 != v34)
    {
      v47 = v34 - v32;
      if (v46 >= *(v6 + 244))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, v6 + 248, v46 + 1, 8);
        v32 = *(v6 + 232);
        v46 = *(v6 + 240);
      }

      v48 = (v32 + v47);
      *(v32 + 8 * v46) = *(v32 + 8 * v46 - 8);
      v49 = *(v6 + 240);
      v50 = *(v6 + 232) + 8 * v49 - 8;
      if (v50 != v48)
      {
        memmove(v48 + 1, v48, v50 - v48);
        LODWORD(v49) = *(v6 + 240);
      }

      *(v6 + 240) = v49 + 1;
      *v48 = v45;
      return;
    }
  }

  else
  {
    v45 = *(v54[0] + 8);
    v46 = 0;
  }

  if (v46 >= *(v6 + 244))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, v6 + 248, v46 + 1, 8);
    v46 = *(v6 + 240);
    v32 = *(v6 + 232);
  }

  *(v32 + 8 * v46) = v45;
  ++*(v6 + 240);
}