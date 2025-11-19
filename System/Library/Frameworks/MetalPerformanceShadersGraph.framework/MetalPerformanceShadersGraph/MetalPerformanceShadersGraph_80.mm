void mlir::anonymous namespace::RegionQueue::pushFront(mlir::_anonymous_namespace_::RegionQueue *this, mlir::Operation *a2)
{
  v12 = a2;
  v4 = *(this + 4);
  if (!v4)
  {
    std::deque<mlir::Operation *>::__add_front_capacity(this);
    v4 = *(this + 4);
  }

  v5 = *(this + 1);
  v6 = (v5 + 8 * (v4 >> 9));
  if (*(this + 2) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = a2;
  v8 = *(this + 5) + 1;
  *(this + 4) = v4 - 1;
  *(this + 5) = v8;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 48, &v12, v13);
  v9 = v12;
  v10 = (*(**(this + 15) + 16))(*(this + 15));
  I32IntegerAttr = mlir::Builder::getI32IntegerAttr(*(*(this + 15) + 8), *(this + 32));
  mlir::Operation::setAttr(v9, v10, I32IntegerAttr);
}

void std::deque<mlir::Operation *>::__add_front_capacity(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x200)
  {
    *(a1 + 32) = v5 + 512;
    v38 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v38 = operator new(0x1000uLL);
      v13 = *(a1 + 16);
      v38 = *(v13 - 8);
      *(a1 + 16) = v13 - 8;
    }

    else
    {
      v38 = operator new(0x1000uLL);
    }

    if (*(a1 + 16) - *(a1 + 8) == 8)
    {
      *(a1 + 32) = 256;
    }

    else
    {
      *(a1 + 32) += 512;
    }

    return;
  }

  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 >> 2;
  }

  if (v9 >> 61)
  {
LABEL_52:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v10 = operator new(8 * v9);
  v11 = operator new(0x1000uLL);
  if (v9)
  {
    v12 = &v10[8 * v9];
  }

  else
  {
    v14 = operator new(8uLL);
    v12 = v14 + 8;
    operator delete(v10);
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v10 = v14;
  }

  *v10 = v11;
  v15 = v10 + 8;
  v16 = v10;
  if (v3 != v2)
  {
    while (1)
    {
      if (v15 == v12)
      {
        if (v10 <= v16)
        {
          v21 = (v15 - v16) >> 2;
          if (v15 == v16)
          {
            v21 = 1;
          }

          if (v21 >> 61)
          {
            goto LABEL_52;
          }

          v22 = v21 >> 2;
          v23 = 8 * v21;
          v24 = operator new(8 * v21);
          v25 = v24;
          v17 = &v24[8 * v22];
          v27 = v15 - v10;
          v26 = v15 == v10;
          v15 = v17;
          if (!v26)
          {
            v15 = &v17[v27];
            v28 = v27 - 8;
            if (v28 < 0x18 || (&v24[8 * v22] - v10) < 0x20)
            {
              v29 = &v24[8 * v22];
              v30 = v10;
              goto LABEL_40;
            }

            v32 = (v28 >> 3) + 1;
            v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
            v29 = &v17[v33];
            v30 = &v10[v33];
            v34 = (v10 + 16);
            v35 = &v24[8 * v22 + 16];
            v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v37 = *v34;
              *(v35 - 1) = *(v34 - 1);
              *v35 = v37;
              v34 += 2;
              v35 += 32;
              v36 -= 4;
            }

            while (v36);
            if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_40:
                v31 = *v30;
                v30 += 8;
                *v29 = v31;
                v29 += 8;
              }

              while (v29 != v15);
            }
          }

          v12 = &v24[v23];
          if (v16)
          {
            operator delete(v16);
          }

          v16 = v25;
          goto LABEL_27;
        }

        v20 = (((v10 - v16) >> 3) + 1 + ((((v10 - v16) >> 3) + 1) >> 63)) >> 1;
        v17 = &v10[-8 * v20];
        if (v15 != v10)
        {
          memmove(&v10[-8 * v20], v10, v15 - v10);
        }

        v15 = &v17[v15 - v10];
      }

      else
      {
        v17 = v10;
      }

LABEL_27:
      v19 = *v3;
      v3 += 8;
      *v15 = v19;
      v15 += 8;
      v10 = v17;
      if (v3 == *(a1 + 16))
      {
        goto LABEL_23;
      }
    }
  }

  v17 = v10;
LABEL_23:
  v18 = *a1;
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v12;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 256;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 512;
    if (!v18)
    {
      return;
    }
  }

  operator delete(v18);
}

void std::__for_each_segment[abi:nn200100]<std::__deque_iterator<mlir::Operation *,mlir::Operation **,mlir::Operation *&,mlir::Operation ***,long,512l>,std::__copy_impl::_CopySegment<std::__deque_iterator<mlir::Operation *,mlir::Operation **,mlir::Operation *&,mlir::Operation ***,long,512l>,std::back_insert_iterator<llvm::SmallVector<mlir::Operation *,6u>>>>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v5 = *a5;
    if (a2 != a4)
    {
      v6 = *(v5 + 8);
      do
      {
        v7 = *a2;
        if (v6 >= *(v5 + 12))
        {
          v8 = a2;
          v9 = a4;
          v10 = a5;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v6 + 1, 8);
          a2 = v8;
          a4 = v9;
          a5 = v10;
          v6 = *(v5 + 8);
        }

        *(*v5 + 8 * v6) = v7;
        v6 = *(v5 + 8) + 1;
        *(v5 + 8) = v6;
        ++a2;
      }

      while (a2 != a4);
    }
  }

  else
  {
    v11 = (*a1 + 512);
    v5 = *a5;
    if (v11 != a2)
    {
      v12 = *(v5 + 8);
      do
      {
        v13 = *a2;
        if (v12 >= *(v5 + 12))
        {
          v14 = a2;
          v15 = a3;
          v16 = a1;
          v17 = a4;
          v18 = a5;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v12 + 1, 8);
          a1 = v16;
          a2 = v14;
          a3 = v15;
          a4 = v17;
          a5 = v18;
          v12 = *(v5 + 8);
        }

        *(*v5 + 8 * v12) = v13;
        v12 = *(v5 + 8) + 1;
        *(v5 + 8) = v12;
        ++a2;
      }

      while (a2 != v11);
    }

    *a5 = v5;
    for (i = a1 + 1; i != a3; ++i)
    {
      v20 = 0;
      v21 = *i;
      v22 = *(v5 + 8);
      do
      {
        v23 = v21[v20];
        if (v22 >= *(v5 + 12))
        {
          v24 = a3;
          v25 = a4;
          v26 = a5;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v22 + 1, 8);
          a3 = v24;
          a4 = v25;
          a5 = v26;
          v22 = *(v5 + 8);
        }

        *(*v5 + 8 * v22) = v23;
        v22 = *(v5 + 8) + 1;
        *(v5 + 8) = v22;
        ++v20;
      }

      while (v20 != 512);
      *a5 = v5;
    }

    v27 = *i;
    if (v27 != a4)
    {
      v28 = *(v5 + 8);
      do
      {
        v29 = *v27;
        if (v28 >= *(v5 + 12))
        {
          v30 = a4;
          v31 = a5;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v5, v5 + 16, v28 + 1, 8);
          a4 = v30;
          a5 = v31;
          v28 = *(v5 + 8);
        }

        *(*v5 + 8 * v28) = v29;
        v28 = *(v5 + 8) + 1;
        *(v5 + 8) = v28;
        ++v27;
      }

      while (v27 != a4);
    }
  }

  *a5 = v5;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v139 = a2;
    v140 = a2 - 2;
    v138 = a2 - 3;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(v9, v9 + 1, v8);
              case 4:
                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(v9, v9 + 1, v9 + 2, v8);
              case 5:
                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(v9, v9 + 1, v9 + 2, v9 + 3, v8);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v62 = *(a2 - 1);
              v143 = *v9;
              v144 = v62;
              DefiningOp = mlir::Value::getDefiningOp(&v144);
              v64 = mlir::Value::getDefiningOp(&v143);
              result = mlir::Operation::isBeforeInBlock(DefiningOp, v64);
              if (result)
              {
                v65 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v65;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v66 = v9 + 1;
            v68 = v9 == a2 || v66 == a2;
            if (a4)
            {
              if (!v68)
              {
                v69 = 0;
                v70 = v9;
                do
                {
                  v73 = *v70;
                  v72 = v70[1];
                  v70 = v66;
                  v143 = v73;
                  v144 = v72;
                  v74 = mlir::Value::getDefiningOp(&v144);
                  v75 = mlir::Value::getDefiningOp(&v143);
                  result = mlir::Operation::isBeforeInBlock(v74, v75);
                  if (result)
                  {
                    v76 = *v70;
                    v77 = v69;
                    do
                    {
                      *(v9 + v77 + 8) = *(v9 + v77);
                      if (!v77)
                      {
                        v71 = v9;
                        goto LABEL_75;
                      }

                      v143 = *(v9 + v77 - 8);
                      v144 = v76;
                      v78 = mlir::Value::getDefiningOp(&v144);
                      v79 = mlir::Value::getDefiningOp(&v143);
                      result = mlir::Operation::isBeforeInBlock(v78, v79);
                      v77 -= 8;
                    }

                    while ((result & 1) != 0);
                    v71 = (v9 + v77 + 8);
LABEL_75:
                    *v71 = v76;
                    a2 = v139;
                  }

                  v66 = v70 + 1;
                  v69 += 8;
                }

                while (v70 + 1 != a2);
              }
            }

            else if (!v68)
            {
              do
              {
                v129 = *v7;
                v128 = v7[1];
                v7 = v66;
                v143 = v129;
                v144 = v128;
                v130 = mlir::Value::getDefiningOp(&v144);
                v131 = mlir::Value::getDefiningOp(&v143);
                result = mlir::Operation::isBeforeInBlock(v130, v131);
                if (result)
                {
                  v132 = *v7;
                  v133 = v7;
                  do
                  {
                    v134 = v133;
                    v135 = *--v133;
                    *v134 = v135;
                    v143 = *(v134 - 2);
                    v144 = v132;
                    v136 = mlir::Value::getDefiningOp(&v144);
                    v137 = mlir::Value::getDefiningOp(&v143);
                    result = mlir::Operation::isBeforeInBlock(v136, v137);
                  }

                  while ((result & 1) != 0);
                  *v133 = v132;
                }

                v66 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v80 = (v10 - 2) >> 1;
              v141 = v80;
              do
              {
                v81 = v80;
                if (v141 >= v80)
                {
                  v82 = (2 * v80) | 1;
                  v83 = &v7[v82];
                  if (2 * v80 + 2 < v10)
                  {
                    v84 = *v83;
                    v143 = v83[1];
                    v144 = v84;
                    v85 = mlir::Value::getDefiningOp(&v144);
                    v86 = mlir::Value::getDefiningOp(&v143);
                    v87 = mlir::Operation::isBeforeInBlock(v85, v86);
                    if (v87)
                    {
                      ++v83;
                    }

                    a2 = v139;
                    if (v87)
                    {
                      v82 = 2 * v81 + 2;
                    }
                  }

                  v88 = &v7[v81];
                  v89 = *v83;
                  v143 = *v88;
                  v144 = v89;
                  v90 = mlir::Value::getDefiningOp(&v144);
                  v91 = mlir::Value::getDefiningOp(&v143);
                  result = mlir::Operation::isBeforeInBlock(v90, v91);
                  if ((result & 1) == 0)
                  {
                    v92 = *v88;
                    do
                    {
                      v96 = v83;
                      *v88 = *v83;
                      if (v141 < v82)
                      {
                        break;
                      }

                      v97 = (2 * v82) | 1;
                      v83 = &v7[v97];
                      v98 = 2 * v82 + 2;
                      if (v98 < v10)
                      {
                        v99 = *v83;
                        v143 = v83[1];
                        v144 = v99;
                        v100 = mlir::Value::getDefiningOp(&v144);
                        v101 = mlir::Value::getDefiningOp(&v143);
                        if (mlir::Operation::isBeforeInBlock(v100, v101))
                        {
                          ++v83;
                          v97 = v98;
                        }
                      }

                      v93 = *v83;
                      v143 = v92;
                      v144 = v93;
                      v94 = mlir::Value::getDefiningOp(&v144);
                      v95 = mlir::Value::getDefiningOp(&v143);
                      result = mlir::Operation::isBeforeInBlock(v94, v95);
                      v88 = v96;
                      v82 = v97;
                    }

                    while (!result);
                    *v96 = v92;
                    a2 = v139;
                  }
                }

                v80 = v81 - 1;
              }

              while (v81);
              do
              {
                v103 = a2;
                v104 = 0;
                v142 = *v7;
                v105 = v7;
                do
                {
                  v112 = &v105[v104];
                  v111 = v112 + 1;
                  v113 = (2 * v104) | 1;
                  v114 = 2 * v104 + 2;
                  if (v114 < v10)
                  {
                    v107 = v112[2];
                    v106 = v112 + 2;
                    v108 = *(v106 - 1);
                    v143 = v107;
                    v144 = v108;
                    v109 = mlir::Value::getDefiningOp(&v144);
                    v110 = mlir::Value::getDefiningOp(&v143);
                    result = mlir::Operation::isBeforeInBlock(v109, v110);
                    if (result)
                    {
                      v111 = v106;
                      v104 = v114;
                    }

                    else
                    {
                      v104 = v113;
                    }
                  }

                  else
                  {
                    v104 = (2 * v104) | 1;
                  }

                  *v105 = *v111;
                  v105 = v111;
                }

                while (v104 <= ((v10 - 2) >> 1));
                a2 = v103 - 1;
                if (v111 == v103 - 1)
                {
                  *v111 = v142;
                }

                else
                {
                  *v111 = *a2;
                  *a2 = v142;
                  v115 = (v111 - v7 + 8) >> 3;
                  v102 = v115 < 2;
                  v116 = v115 - 2;
                  if (!v102)
                  {
                    v117 = v116 >> 1;
                    v118 = &v7[v116 >> 1];
                    v119 = *v118;
                    v143 = *v111;
                    v144 = v119;
                    v120 = mlir::Value::getDefiningOp(&v144);
                    v121 = mlir::Value::getDefiningOp(&v143);
                    result = mlir::Operation::isBeforeInBlock(v120, v121);
                    if (result)
                    {
                      v122 = a2;
                      v123 = *v111;
                      do
                      {
                        v124 = v118;
                        *v111 = *v118;
                        if (!v117)
                        {
                          break;
                        }

                        v117 = (v117 - 1) >> 1;
                        v118 = &v7[v117];
                        v125 = *v118;
                        v143 = v123;
                        v144 = v125;
                        v126 = mlir::Value::getDefiningOp(&v144);
                        v127 = mlir::Value::getDefiningOp(&v143);
                        result = mlir::Operation::isBeforeInBlock(v126, v127);
                        v111 = v124;
                      }

                      while ((result & 1) != 0);
                      *v124 = v123;
                      a2 = v122;
                    }
                  }
                }

                v102 = v10-- <= 2;
              }

              while (!v102);
            }

            return result;
          }

          v11 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            break;
          }

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(v7, &v7[v10 >> 1], v8);
          v12 = v10 >> 1;
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(v7 + 1, &v7[v12 - 1], v140);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(v7 + 2, &v7[v12 + 1], v138);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(&v7[v12 - 1], v11, &v7[v12 + 1]);
          v13 = *v7;
          *v7 = v7[v12];
          v7[v12] = v13;
          --a3;
          if (a4)
          {
            goto LABEL_17;
          }

LABEL_16:
          v14 = *(v7 - 1);
          v143 = *v7;
          v144 = v14;
          v15 = mlir::Value::getDefiningOp(&v144);
          v16 = mlir::Value::getDefiningOp(&v143);
          if (mlir::Operation::isBeforeInBlock(v15, v16))
          {
            goto LABEL_17;
          }

          v41 = *v7;
          v143 = *v8;
          v144 = v41;
          v42 = mlir::Value::getDefiningOp(&v144);
          v43 = mlir::Value::getDefiningOp(&v143);
          result = mlir::Operation::isBeforeInBlock(v42, v43);
          if (result)
          {
            v9 = v7;
            do
            {
              v44 = v9[1];
              ++v9;
              v143 = v44;
              v144 = v41;
              v45 = mlir::Value::getDefiningOp(&v144);
              v46 = mlir::Value::getDefiningOp(&v143);
              result = mlir::Operation::isBeforeInBlock(v45, v46);
            }

            while ((result & 1) == 0);
          }

          else
          {
            v47 = v7 + 1;
            do
            {
              v9 = v47;
              if (v47 >= a2)
              {
                break;
              }

              ++v47;
              v143 = *v9;
              v144 = v41;
              v48 = mlir::Value::getDefiningOp(&v144);
              v49 = mlir::Value::getDefiningOp(&v143);
              result = mlir::Operation::isBeforeInBlock(v48, v49);
            }

            while (!result);
          }

          v50 = a2;
          if (v9 < a2)
          {
            v50 = a2;
            do
            {
              v51 = *--v50;
              v143 = v51;
              v144 = v41;
              v52 = mlir::Value::getDefiningOp(&v144);
              v53 = mlir::Value::getDefiningOp(&v143);
              result = mlir::Operation::isBeforeInBlock(v52, v53);
            }

            while ((result & 1) != 0);
          }

          while (v9 < v50)
          {
            v54 = *v9;
            *v9 = *v50;
            *v50 = v54;
            do
            {
              v55 = v9[1];
              ++v9;
              v143 = v55;
              v144 = v41;
              v56 = mlir::Value::getDefiningOp(&v144);
              v57 = mlir::Value::getDefiningOp(&v143);
            }

            while (!mlir::Operation::isBeforeInBlock(v56, v57));
            do
            {
              v58 = *--v50;
              v143 = v58;
              v144 = v41;
              v59 = mlir::Value::getDefiningOp(&v144);
              v60 = mlir::Value::getDefiningOp(&v143);
              result = mlir::Operation::isBeforeInBlock(v59, v60);
            }

            while ((result & 1) != 0);
          }

          v61 = v9 - 1;
          if (v9 - 1 != v7)
          {
            *v7 = *v61;
          }

          a4 = 0;
          *v61 = v41;
        }

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(&v7[v10 >> 1], v7, v8);
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_17:
        v17 = 0;
        v18 = *v7;
        do
        {
          v19 = v7[v17 + 1];
          v143 = v18;
          v144 = v19;
          v20 = mlir::Value::getDefiningOp(&v144);
          v21 = mlir::Value::getDefiningOp(&v143);
          ++v17;
        }

        while (mlir::Operation::isBeforeInBlock(v20, v21));
        v22 = &v7[v17];
        if (v17 == 1)
        {
          a2 = v139;
          do
          {
            if (v22 >= a2)
            {
              break;
            }

            v26 = *--a2;
            v143 = v18;
            v144 = v26;
            v27 = mlir::Value::getDefiningOp(&v144);
            v28 = mlir::Value::getDefiningOp(&v143);
          }

          while (!mlir::Operation::isBeforeInBlock(v27, v28));
        }

        else
        {
          do
          {
            v23 = *--a2;
            v143 = v18;
            v144 = v23;
            v24 = mlir::Value::getDefiningOp(&v144);
            v25 = mlir::Value::getDefiningOp(&v143);
          }

          while (!mlir::Operation::isBeforeInBlock(v24, v25));
        }

        if (v22 >= a2)
        {
          v38 = v22 - 1;
          if (v22 - 1 == v7)
          {
            goto LABEL_35;
          }

LABEL_34:
          *v7 = *v38;
          goto LABEL_35;
        }

        v29 = &v7[v17];
        v30 = a2;
        do
        {
          v31 = *v29;
          *v29 = *v30;
          *v30 = v31;
          do
          {
            v32 = v29[1];
            ++v29;
            v143 = v18;
            v144 = v32;
            v33 = mlir::Value::getDefiningOp(&v144);
            v34 = mlir::Value::getDefiningOp(&v143);
          }

          while (mlir::Operation::isBeforeInBlock(v33, v34));
          do
          {
            v35 = *--v30;
            v143 = v18;
            v144 = v35;
            v36 = mlir::Value::getDefiningOp(&v144);
            v37 = mlir::Value::getDefiningOp(&v143);
          }

          while (!mlir::Operation::isBeforeInBlock(v36, v37));
        }

        while (v29 < v30);
        v38 = v29 - 1;
        if (v38 != v7)
        {
          goto LABEL_34;
        }

LABEL_35:
        *v38 = v18;
        v39 = v22 >= a2;
        a2 = v139;
        if (v39)
        {
          break;
        }

LABEL_39:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,false>(v7, v38, a3, a4 & 1);
        a4 = 0;
        v9 = v38 + 1;
      }

      v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *>(v7, v38);
      v9 = v38 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *>(v38 + 1, v139);
      if (result)
      {
        break;
      }

      if (!v40)
      {
        goto LABEL_39;
      }
    }

    a2 = v38;
    if (!v40)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v25 = *a1;
  v26 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v26);
  v8 = mlir::Value::getDefiningOp(&v25);
  v9 = mlir::Operation::isBeforeInBlock(DefiningOp, v8);
  v10 = *a3;
  if (v9)
  {
    v25 = *a2;
    v26 = v10;
    v11 = mlir::Value::getDefiningOp(&v26);
    v12 = mlir::Value::getDefiningOp(&v25);
    result = mlir::Operation::isBeforeInBlock(v11, v12);
    v14 = *a1;
    if (result)
    {
      *a1 = *a3;
    }

    else
    {
      *a1 = *a2;
      *a2 = v14;
      v22 = *a3;
      v25 = v14;
      v26 = v22;
      v23 = mlir::Value::getDefiningOp(&v26);
      v24 = mlir::Value::getDefiningOp(&v25);
      result = mlir::Operation::isBeforeInBlock(v23, v24);
      if (!result)
      {
        return result;
      }

      v14 = *a2;
      *a2 = *a3;
    }

    *a3 = v14;
  }

  else
  {
    v25 = *a2;
    v26 = v10;
    v15 = mlir::Value::getDefiningOp(&v26);
    v16 = mlir::Value::getDefiningOp(&v25);
    result = mlir::Operation::isBeforeInBlock(v15, v16);
    if (result)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      v18 = *a2;
      v25 = *a1;
      v26 = v18;
      v19 = mlir::Value::getDefiningOp(&v26);
      v20 = mlir::Value::getDefiningOp(&v25);
      result = mlir::Operation::isBeforeInBlock(v19, v20);
      if (result)
      {
        v21 = *a1;
        *a1 = *a2;
        *a2 = v21;
      }
    }
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(a1, a2, a3);
  v8 = *a4;
  v21 = *a3;
  v22 = v8;
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  v10 = mlir::Value::getDefiningOp(&v21);
  result = mlir::Operation::isBeforeInBlock(DefiningOp, v10);
  if (result)
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    v13 = *a3;
    v21 = *a2;
    v22 = v13;
    v14 = mlir::Value::getDefiningOp(&v22);
    v15 = mlir::Value::getDefiningOp(&v21);
    result = mlir::Operation::isBeforeInBlock(v14, v15);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a2;
      v21 = *a1;
      v22 = v17;
      v18 = mlir::Value::getDefiningOp(&v22);
      v19 = mlir::Value::getDefiningOp(&v21);
      result = mlir::Operation::isBeforeInBlock(v18, v19);
      if (result)
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(a1, a2, a3, a4);
  v10 = *a5;
  v27 = *a4;
  v28 = v10;
  DefiningOp = mlir::Value::getDefiningOp(&v28);
  v12 = mlir::Value::getDefiningOp(&v27);
  result = mlir::Operation::isBeforeInBlock(DefiningOp, v12);
  if (result)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    v15 = *a4;
    v27 = *a3;
    v28 = v15;
    v16 = mlir::Value::getDefiningOp(&v28);
    v17 = mlir::Value::getDefiningOp(&v27);
    result = mlir::Operation::isBeforeInBlock(v16, v17);
    if (result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a3;
      v27 = *a2;
      v28 = v19;
      v20 = mlir::Value::getDefiningOp(&v28);
      v21 = mlir::Value::getDefiningOp(&v27);
      result = mlir::Operation::isBeforeInBlock(v20, v21);
      if (result)
      {
        v22 = *a2;
        *a2 = *a3;
        *a3 = v22;
        v23 = *a2;
        v27 = *a1;
        v28 = v23;
        v24 = mlir::Value::getDefiningOp(&v28);
        v25 = mlir::Value::getDefiningOp(&v27);
        result = mlir::Operation::isBeforeInBlock(v24, v25);
        if (result)
        {
          v26 = *a1;
          *a1 = *a2;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v22 = *a1;
        v23 = v5;
        DefiningOp = mlir::Value::getDefiningOp(&v23);
        v7 = mlir::Value::getDefiningOp(&v22);
        if (mlir::Operation::isBeforeInBlock(DefiningOp, v7))
        {
          v8 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v9 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_4 &,mlir::Value *,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v14 = *v10;
    v22 = *v9;
    v23 = v14;
    v15 = mlir::Value::getDefiningOp(&v23);
    v16 = mlir::Value::getDefiningOp(&v22);
    if (mlir::Operation::isBeforeInBlock(v15, v16))
    {
      v17 = *v10;
      v18 = v11;
      do
      {
        *(a1 + v18 + 24) = *(a1 + v18 + 16);
        if (v18 == -16)
        {
          v13 = a1;
          goto LABEL_14;
        }

        v22 = *(a1 + v18 + 8);
        v23 = v17;
        v19 = mlir::Value::getDefiningOp(&v23);
        v20 = mlir::Value::getDefiningOp(&v22);
        v18 -= 8;
      }

      while (mlir::Operation::isBeforeInBlock(v19, v20));
      v13 = (a1 + v18 + 24);
LABEL_14:
      *v13 = v17;
      if (++v12 == 8)
      {
        return v10 + 1 == a2;
      }
    }

    v9 = v10;
    v11 += 8;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>(_BYTE **a1, uint64_t a2)
{
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  {
    llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = 0;
  **a1 = 0;
  return result;
}

uint64_t *mlir::ResultRange::replaceAllUsesWith<llvm::SmallVector<mlir::Value,4u> &>(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = *a2 + 8 * v3;
    do
    {
      result = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v5);
      v9 = *result;
      if (*result)
      {
        v10 = *v7;
        do
        {
          v11 = v9[1];
          if (v11)
          {
            v12 = *v9;
            *v11 = *v9;
            if (v12)
            {
              *(v12 + 8) = v9[1];
            }
          }

          v9[3] = v10;
          v13 = *v10;
          *v9 = *v10;
          v9[1] = v10;
          if (v13)
          {
            *(v13 + 8) = v9;
          }

          *v10 = v9;
          v9 = *result;
        }

        while (*result);
      }

      if (++v5 == v2)
      {
        break;
      }

      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(mlir::Operation *,mlir::Operation *)>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_9>(v5);
  }
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_9>(uint64_t a1, uint64_t a2)
{
  {
    llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id);
  if ((result & 1) == 0)
  {
    result = mlir::collect_regions::detail::verifyShouldAddToQueue(**a1, *(*a1 + 8), **(a1 + 8), a2, 0);
    if (result)
    {
      **(a1 + 16) = 1;
    }
  }

  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_15legalizeRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEE3__0NS1_9placement12HostTypeCastEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
  {
    v3 = *a1;
    v4 = **a1;
    v5 = (v4 + 16);
    v27 = *(v4 + 16);
    v6 = *(a2 + 16);
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
    *(v4 + 16) = v6;
    *(v4 + 24) = v7;
    v8 = *v3[1];
    v9 = *(a2 + 24);
    v10 = *(*(a2 + 72) + 24);
    if (*(a2 + 36))
    {
      v11 = a2 - 16;
    }

    else
    {
      v11 = 0;
    }

    v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v12)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    }

    else
    {
      v13 = 0;
    }

    (*(*v8 + 120))(v8, v9, v10, v12, v13, v3[2]);
    v14 = v3[2];
    v15 = *(*(a2 + 72) + 24);
    v16 = *(v14 + 4);
    if (v16)
    {
      v17 = *v14;
      v18 = 0x9DDFEA08EB382D69 * ((8 * *(*(a2 + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(a2 + 72) + 24)));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v18 >> 47) ^ v18);
      v20 = (-348639895 * ((v19 >> 47) ^ v19)) & (v16 - 1);
      v21 = *(v17 + 16 * v20);
      if (v21 == v15)
      {
LABEL_11:
        if (v20 != v16)
        {
          v15 = *(v17 + 16 * v20 + 8);
        }
      }

      else
      {
        v25 = 1;
        while (v21 != -4096)
        {
          v26 = v20 + v25++;
          v20 = v26 & (v16 - 1);
          v21 = *(v17 + 16 * v20);
          if (v21 == v15)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v28 = v15;
    DefiningOp = mlir::Value::getDefiningOp(&v28);
    v23 = *(a2 + 36);
    if (v23)
    {
      v24 = a2 - 16;
    }

    else
    {
      v24 = 0;
    }

    v29[0] = v24;
    v29[1] = v23;
    mlir::ResultRange::replaceAllUsesWith(v29, DefiningOp);
    mlir::Operation::erase(a2);
    if (v4)
    {
      if (v27)
      {
        *v5 = v27;
      }

      else
      {
        *v5 = 0;
        *(v4 + 24) = 0;
      }
    }
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_15legalizeRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEE3__1NS1_24TargetLegalizerInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::Operation *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v5 = *a1;
  v90[0] = a2;
  v90[1] = InterfaceFor;
  mlir::SymbolTable::getSymbolUses(a2, **v5, &v87);
  if (v89)
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(v90);
    *(*(v5 + 8) + 8) = 0;
    if ((v89 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      goto LABEL_133;
    }

    v7 = ArgOperands;
    v8 = v87;
    v9 = v88;
    if (v87 != v88)
    {
      do
      {
        v10 = *v8;
        if (*(*(*v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id)
        {
          v11 = *(v5 + 8);
          v12 = *(v11 + 8);
          if (v12 >= *(v11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(*(v5 + 8), v11 + 16, v12 + 1, 8);
            v12 = *(v11 + 8);
          }

          *(*v11 + 8 * v12) = v10;
          ++*(v11 + 8);
        }

        v8 += 16;
      }

      while (v8 != v9);
    }

    v22 = *(v5 + 16);
    v23 = *(v22 + 8);
    if (!v23 && !*(v22 + 12))
    {
LABEL_45:
      v33 = mlir::TargetLegalizerInterface::legalizeBody(v90, **(v5 + 8), *(*(v5 + 8) + 8), **(v5 + 24), *(v5 + 16));
      if (v33)
      {
        v34 = v33;
        mlir::TargetLegalizerInterface::getBodyBlock(v90);
        v35 = *(v5 + 8);
        v36 = *(v35 + 8);
        if (!v36)
        {
LABEL_75:
          if (v34 != v7)
          {
            mlir::Operation::cloneWithoutRegions(v90[0]);
          }

          result = 1;
          goto LABEL_120;
        }

        v37 = *v35;
        v38 = *v35 + 8 * v36;
        v85 = &v105;
        v86 = v99;
        v83 = v7;
        v84 = v38;
        while (1)
        {
          v39 = *v37;
          *(*(v5 + 32) + 8) = 0;
          v40 = v39[9];
          v41 = v40 ? (v39 - 4) : 0;
          if (v40)
          {
            break;
          }

LABEL_74:
          if (++v37 == v38)
          {
            goto LABEL_75;
          }
        }

        v42 = 0;
        v43 = 0;
        while (1)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, v43);
          v45 = *(v5 + 16);
          v46 = *(v45 + 4);
          if (!v46)
          {
            break;
          }

          v47 = *v45;
          v48 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
          v49 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v48 >> 47) ^ v48);
          v50 = (-348639895 * ((v49 >> 47) ^ v49)) & (v46 - 1);
          v51 = *(v47 + 16 * v50);
          if (v51 != NextResultAtOffset)
          {
            v57 = 1;
            while (v51 != -4096)
            {
              v58 = v50 + v57++;
              v50 = v58 & (v46 - 1);
              v51 = *(v47 + 16 * v50);
              if (v51 == NextResultAtOffset)
              {
                goto LABEL_57;
              }
            }

            break;
          }

LABEL_57:
          if (v50 == v46)
          {
            break;
          }

          v52 = *(v47 + 16 * v50 + 8);
          if (!v52)
          {
            break;
          }

          if (v52 != NextResultAtOffset)
          {
            while (1)
            {
              v53 = *NextResultAtOffset;
              if (!*NextResultAtOffset)
              {
                break;
              }

              v54 = v53[1];
              if (v54)
              {
                v55 = *v53;
                *v54 = *v53;
                if (v55)
                {
                  *(v55 + 8) = v53[1];
                }
              }

              v53[3] = v52;
              v53[1] = v52;
              v56 = *v52;
              *v53 = *v52;
              if (v56)
              {
                *(v56 + 8) = v53;
              }

              *v52 = v53;
            }

            v42 = 1;
          }

          if (++v43 == v40)
          {
            v7 = v83;
            v38 = v84;
            if (v42)
            {
              mlir::Operation::erase(v39);
              v38 = v84;
            }

            goto LABEL_74;
          }
        }

        v93 = "Result has no mapping in the valueMap (result #";
        v94 = 259;
        v59 = NextResultAtOffset;
        mlir::Operation::emitOpError(v39, &v93, &v95);
        v60 = *(v59 + 8) & 7;
        if (v59 && v60 == 6)
        {
          v60 = (*(v59 + 16) + 6);
        }

        if (!v95)
        {
LABEL_83:
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v95, ")");
          if (v95)
          {
            mlir::InFlightDiagnostic::report(&v95);
          }

          if ((v105 & 1) == 0)
          {
            goto LABEL_119;
          }

          if (v104 != v85)
          {
            free(v104);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v103;
            v68 = __p;
            if (v103 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v103 = v66;
            operator delete(v68);
          }

          v69 = v100;
          if (v100)
          {
            v70 = v101;
            v71 = v100;
            if (v101 != v100)
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
              v71 = v100;
            }

            v101 = v69;
            operator delete(v71);
          }

          v80 = v96;
          if (v96 == v86)
          {
            goto LABEL_119;
          }

          goto LABEL_118;
        }

        v91 = 5;
        v92 = v60;
        v61 = v97;
        v62 = &v91;
        v63 = v96;
        if (v97 < v98)
        {
          goto LABEL_82;
        }

        if (v96 > &v91 || v96 + 24 * v97 <= &v91)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
          v62 = &v91;
          v63 = v96;
          goto LABEL_82;
        }

LABEL_133:
        v82 = (&v91 - v63);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v86, v61 + 1, 24);
        v63 = v96;
        v62 = &v82[v96];
LABEL_82:
        v64 = &v63[24 * v97];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        ++v97;
        goto LABEL_83;
      }

      v93 = "Legalization failed";
      v94 = 259;
      mlir::OpState::emitOpError(v90, &v93, &v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v105 != 1)
      {
        goto LABEL_119;
      }

      if (v104 != &v105)
      {
        free(v104);
      }

      v74 = __p;
      if (__p)
      {
        v75 = v103;
        v76 = __p;
        if (v103 != __p)
        {
          do
          {
            v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
          }

          while (v75 != v74);
          v76 = __p;
        }

        v103 = v74;
        operator delete(v76);
      }

      v17 = v100;
      if (v100)
      {
        v77 = v101;
        v19 = v100;
        if (v101 == v100)
        {
          goto LABEL_116;
        }

        do
        {
          v79 = *--v77;
          v78 = v79;
          *v77 = 0;
          if (v79)
          {
            operator delete[](v78);
          }
        }

        while (v77 != v17);
        goto LABEL_115;
      }

      goto LABEL_117;
    }

    v24 = *(v22 + 16);
    if (v24 > 4 * v23 && v24 >= 0x41)
    {
      llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(v22);
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = *v22;
      v26 = (v24 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v26)
      {
        v27 = v26 + 1;
        v28 = (v26 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v29 = &v25[2 * v28];
        v30 = v25 + 2;
        v31 = v28;
        do
        {
          *(v30 - 2) = -4096;
          *v30 = -4096;
          v30 += 4;
          v31 -= 2;
        }

        while (v31);
        if (v27 == v28)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v29 = *v22;
      }

      v32 = &v25[2 * v24];
      do
      {
        *v29 = -4096;
        v29 += 2;
      }

      while (v29 != v32);
    }

LABEL_44:
    *(v22 + 8) = 0;
    goto LABEL_45;
  }

  v93 = "Operation has no symbol table uses";
  v94 = 259;
  mlir::OpState::emitOpError(v90, &v93, &v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v105 != 1)
  {
    goto LABEL_119;
  }

  if (v104 != &v105)
  {
    free(v104);
  }

  v14 = __p;
  if (__p)
  {
    v15 = v103;
    v16 = __p;
    if (v103 != __p)
    {
      do
      {
        v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v103 = v14;
    operator delete(v16);
  }

  v17 = v100;
  if (v100)
  {
    v18 = v101;
    v19 = v100;
    if (v101 == v100)
    {
      goto LABEL_116;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        operator delete[](v20);
      }
    }

    while (v18 != v17);
LABEL_115:
    v19 = v100;
LABEL_116:
    v101 = v17;
    operator delete(v19);
  }

LABEL_117:
  v80 = v96;
  if (v96 != v99)
  {
LABEL_118:
    free(v80);
  }

LABEL_119:
  result = 0;
LABEL_120:
  if (v89 == 1)
  {
    if (v87)
    {
      v88 = v87;
      v81 = result;
      operator delete(v87);
      return v81;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::legalizeRegions(mlir::ModuleOp,mlir::RegionOpCreator *)::$_1::operator() const(mlir::TargetLegalizerInterface)::{lambda(mlir::Operation *)#1}>(uint64_t a1, mlir::Operation *a2)
{
  result = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!result)
  {
    v5 = *a1;
    v6 = *(a1 + 8);

    return mlir::OpBuilder::clone(v5, a2, v6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_11computeCostENS1_8ModuleOpERKNS1_10DeviceInfoERNS1_18InFlightDiagnosticEE3__0NS1_24ExecutionCostOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v6 = *a1;
      v8[0] = a2;
      v8[1] = InterfaceFor;
      result = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v8, *v6);
      **(v6 + 8) = v7 + **(v6 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ExecutionCostOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ExecutionCostOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ExecutionCostOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExecutionCostOpInterface]";
  v6 = 80;
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

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_14collectRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEPKNS1_15CostModelParamsEE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESS_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ****a1, mlir::ForwardIterator *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v5 = *a1;
      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v7 = **v5;
      v8 = 0;
      mlir::collectRegions(a2, InterfaceFor, v7);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_11doPlacementENS1_8ModuleOpExxxNS_8ArrayRefIPNS1_15DeviceInterfaceEEERKNS1_10DeviceInfoENSt3__18optionalIjEEbE3__1NS1_4func6FuncOpES2_EENSK_9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESW_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v2 = **a1;
    v3 = *(v2 + 8);
    if (v3 >= *(v2 + 12))
    {
      v5 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 16, v3 + 1, 8);
      a2 = v5;
      LODWORD(v3) = *(v2 + 8);
    }

    *(*v2 + 8 * v3) = a2;
    ++*(v2 + 8);
  }

  return 1;
}

uint64_t mlir::RegionOpCreator::getRegionCall(mlir::UnitAttr ***a1, uint64_t i, mlir::Operation **a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = i;
  v97 = *MEMORY[0x1E69E9840];
  v93 = a5;
  v94 = 0;
  if (!a6)
  {
    goto LABEL_29;
  }

  v74 = a3;
  v14 = 0;
  for (i = 0; i != a6; v94 = i)
  {
    v82[0] = mlir::ValueRange::dereference_iterator(&v93, i);
    DefiningOp = mlir::Value::getDefiningOp(v82);
    v16 = DefiningOp;
    if (DefiningOp)
    {
      v17 = v14 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v18 = DefiningOp;
    }

    else
    {
      v18 = v14;
    }

    if (v14 && DefiningOp)
    {
      if (mlir::Operation::isBeforeInBlock(v14, DefiningOp))
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }
    }

    v19 = *v82[0];
    v14 = v18;
    if (*v82[0])
    {
      do
      {
        v20 = v19[2];
        if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v20))
        {
          if (v20)
          {
            InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v20);
          }

          else
          {
            InterfaceFor = 0;
          }

          p_p = v20;
          v89 = InterfaceFor;
          if (v20 && mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>(&p_p) && mlir::Operation::isBeforeInBlock(v16, v20))
          {
            v14 = v20;
          }
        }

        else
        {
          p_p = 0;
          v89 = 0;
        }

        v19 = *v19;
      }

      while (v19);
    }

    i = v94 + 1;
  }

  a3 = v74;
  if (!v14)
  {
LABEL_29:
    v14 = *a3;
  }

  v22 = a1[1];
  v23 = v22 + 2;
  v75 = *(v22 + 1);
  v24 = *(v14 + 2);
  v25 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, i) + 8);
  v22[2] = v24;
  v22[3] = v25;
  v26 = ((*a1)[17])(a1, *(v14 + 3), v12, a5, a6);
  v27 = *(v26 + 36);
  v28 = (v26 - 16);
  if (!v27)
  {
    v28 = 0;
  }

  v93 = v28;
  v94 = 0;
  v95 = a7;
  v96 = 0;
  if (v27)
  {
    v29 = a8 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    goto LABEL_47;
  }

  v30 = 0;
  do
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v93, v30);
    v34 = mlir::ValueRange::dereference_iterator(&v95, v96);
    v82[0] = NextResultAtOffset;
    if ((*(v34 + 8) ^ *(NextResultAtOffset + 8)) >= 8)
    {
      v35 = v34;
      v36 = a1[1];
      Loc = mlir::Value::getLoc(v82);
      p_p = (*(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
      v38 = mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type,mlir::Value &>(v36, Loc, &p_p, v82);
      v39 = v82[0];
      if (*(v38 + 36))
      {
        v40 = v38 - 16;
      }

      else
      {
        v40 = 0;
      }

      v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
      p_p = v39;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a9, &p_p) = v41;
    }

    v30 = v94 + 1;
    v31 = v96 + 1;
    v94 = v30;
    ++v96;
  }

  while (v30 != v27 && v31 != a8);
  if (v22)
  {
LABEL_47:
    if (v75)
    {
      *v23 = v75;
    }

    else
    {
      *v23 = 0;
      v22[3] = 0;
    }
  }

  v92 = 0;
  v93 = &v95;
  v94 = 0x400000000;
  v91 = a7;
  if (a8)
  {
    v42 = 0;
    while (1)
    {
      v43 = mlir::ValueRange::dereference_iterator(&v91, v42);
      v44 = *(a9 + 16);
      if (v44)
      {
        v45 = *a9;
        v46 = 0x9DDFEA08EB382D69 * ((8 * v43 - 0xAE502812AA7333) ^ HIDWORD(v43));
        v47 = 0x9DDFEA08EB382D69 * (HIDWORD(v43) ^ (v46 >> 47) ^ v46);
        v48 = (-348639895 * ((v47 >> 47) ^ v47)) & (v44 - 1);
        v49 = *(*a9 + 16 * v48);
        if (v49 == v43)
        {
LABEL_56:
          if (v48 != v44)
          {
            v50 = *(v45 + 16 * v48 + 8);
            goto LABEL_59;
          }
        }

        else
        {
          v66 = 1;
          while (v49 != -4096)
          {
            v67 = v48 + v66++;
            v48 = v67 & (v44 - 1);
            v49 = *(v45 + 16 * v48);
            if (v49 == v43)
            {
              goto LABEL_56;
            }
          }
        }
      }

      v50 = 0;
LABEL_59:
      v87 = v50;
      v51 = mlir::Value::getDefiningOp(&v87);
      v52 = v51;
      if (!*(v51 + 47) || (v98.var0 = "name", v98.var1 = 4, InherentAttr = mlir::Operation::getInherentAttr(v51, v98), (v54 & 1) == 0))
      {
        v99.var0 = "name";
        v99.var1 = 4;
        InherentAttr = mlir::DictionaryAttr::get((v52 + 56), v99);
      }

      if (!InherentAttr)
      {
        UnitAttr = mlir::Builder::getUnitAttr(a1[1], v54);
        v57 = v94;
        if (v94 >= HIDWORD(v94))
        {
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v93, UnitAttr);
        }

        else
        {
          v93[v94] = UnitAttr;
          LODWORD(v94) = v57 + 1;
        }

        goto LABEL_53;
      }

      if (v87 && (*(v87 + 8) & 7) == 6)
      {
        v55 = *(v87 + 16) + 6;
      }

      else
      {
        v55 = *(v87 + 8) & 7;
      }

      v86 = InherentAttr;
      v58 = a1[1];
      AttrData = mlir::OpaqueAttr::getAttrData(&v86);
      v81 = 773;
      v78 = AttrData;
      v79 = v60;
      v80 = ":";
      std::to_string(&v77, v55);
      v61 = v81;
      if (v81)
      {
        if (v81 == 1)
        {
          v82[0] = &v77;
          v62 = 1;
          v61 = 4;
        }

        else
        {
          if (HIBYTE(v81) != 1)
          {
            v61 = 2;
          }

          v63 = &v78;
          if (HIBYTE(v81) == 1)
          {
            v63 = v78;
          }

          v82[0] = v63;
          v82[1] = v79;
          v82[2] = &v77;
          v62 = 4;
        }
      }

      else
      {
        v62 = 1;
      }

      v83 = v61;
      v84 = v62;
      llvm::Twine::str(v82, &__p);
      v90 = 260;
      p_p = &__p;
      StringAttr = mlir::Builder::getStringAttr(v58, &p_p);
      v65 = v94;
      if (v94 >= HIDWORD(v94))
      {
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v93, StringAttr);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_52:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_81;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v93[v94] = StringAttr;
        LODWORD(v94) = v65 + 1;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_52;
        }
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_81:
        operator delete(v77.__r_.__value_.__l.__data_);
      }

LABEL_53:
      v42 = v92 + 1;
      v92 = v42;
      if (v42 == a8)
      {
        v68 = v93;
        v69 = v94;
        goto LABEL_91;
      }
    }
  }

  v69 = 0;
  v68 = &v95;
LABEL_91:
  ArrayAttr = mlir::Builder::getArrayAttr(a1[1], v68, v69);
  Context = mlir::Attribute::getContext((v26 + 24));
  v90 = 261;
  p_p = "output_names";
  v89 = 12;
  v72 = mlir::StringAttr::get(Context, &p_p);
  mlir::Operation::setAttr(v26, v72, ArrayAttr);
  if (v93 != &v95)
  {
    free(v93);
  }

  return v26;
}

BOOL mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>(uint64_t a1)
{
  v12[20] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorOperands(a1, &v10);
  v1 = v10;
  if (!v11)
  {
    v5 = 0;
    if (v10 == v12)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v2 = 40 * v11 - 40;
  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  do
  {
    v4 = **v1;
    {
      v8 = v2;
      v9 = v1;
      mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>();
      v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
      v2 = v8;
      v1 = v9;
    }

    v6 = v4 == v3[23];
    v5 = v6;
    v6 = v6 || v2 == 0;
    v2 -= 40;
    v1 += 5;
  }

  while (!v6);
  v1 = v10;
  if (v10 != v12)
  {
LABEL_11:
    free(v1);
  }

  return v5;
}

uint64_t mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
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

void *mlir::RegionOpCreator::materializeHostTypeConversion(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v11 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v34[0] = v11;
  v34[1] = v12;
  if (a4 == v11 || (v13 = mlir::CallableOpInterface::getArgAttrsAttr(&v35), NumElements = mlir::ShapedType::getNumElements(v13, v14), v16 = mlir::CallableOpInterface::getArgAttrsAttr(v34), NumElements != mlir::ShapedType::getNumElements(v16, v17)))
  {
    v20 = a3;
  }

  else
  {
    v18 = v35;
    if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v32 = v35;
      v33[0] = mlir::DenseElementsAttr::getRawStringData(&v32);
      v33[1] = v21;
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v33);
      v18 = v35;
    }

    else
    {
      CallableForCallee = 0;
    }

    if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v33[0] = v18;
      MemorySpace = mlir::MemRefType::getMemorySpace(v33);
    }

    else
    {
      MemorySpace = 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v35);
    v25 = v24;
    isSplat = mlir::ElementsAttr::isSplat(v34);
    v27 = mlir::MemRefType::get(ArgAttrsAttr, v25, isSplat, CallableForCallee, MemorySpace);
    v28 = v27;
    if (v27)
    {
      v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v29 = 0;
    }

    v20 = (*(*a1 + 144))(a1, a2, v28, v29, a3);
  }

  v30 = mlir::ElementsAttr::isSplat(&v35);
  if (v30 != mlir::ElementsAttr::isSplat(v34))
  {
    v20 = (*(*a1 + 152))(a1, a2, v35, v36, v20);
  }

  v33[0] = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, v33);
  *result = v20;
  return result;
}

uint64_t mlir::RegionOpCreator::canonicalizeTranslatedRegion(mlir::RegionOpCreator *this, mlir::Operation *a2)
{
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v6);
  v3 = *(a2 + 11);
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = (((a2 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v12 = 0;
    v7 = 0x200000000;
    v8 = xmmword_1E097BBC0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    mlir::applyPatternsAndFoldGreedily(v4, v6, &v7, &v12);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v6);
  return 1;
}

uint64_t mlir::minimalLegalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = a2 + 8 * a3;
    do
    {
      v8 = *(*v6 + 36);
      if (v8)
      {
        v9 = *v6 - 16;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, i);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a4, &NextResultAtOffset) = NextResultAtOffset;
        }
      }

      v6 += 8;
    }

    while (v6 != v7);
  }

  if (!mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a1);
  return (*(InterfaceFor + 16))(InterfaceFor, a1);
}

float mlir::getDeviceInfo@<S0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 48) = 978433816;
  *(a3 + 52) = a1;
  *a3 = 1;
  *(a3 + 36) = a2;
  if ((a1 - 5) > 1)
  {
    *(a3 + 4) = 1072399647;
    if (a1 == 3)
    {
      *(a3 + 32) = 1112014848;
      *(a3 + 40) = 0x4248000041A3D70ALL;
      if (a2 < 6)
      {
        v3 = 0x424800003FEB851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0xA)
      {
        goto LABEL_19;
      }

      if (a2 <= 0x14)
      {
LABEL_25:
        *(a3 + 32) = 1128792064;
        v4 = 1120403456;
LABEL_28:
        *(a3 + 44) = v4;
        *(a3 + 4) = 1080788255;
        v3 = 0x43480000406B851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0x28)
      {
LABEL_30:
        *(a3 + 32) = 1137180672;
        v5 = 1120403456;
LABEL_33:
        *(a3 + 44) = v5;
        *(a3 + 4) = 1080788255;
        v3 = 0x43C80000406B851FLL;
        goto LABEL_37;
      }

      *(a3 + 32) = 1145569280;
      v6 = 1120403456;
    }

    else
    {
      if (a1 == 4)
      {
        *(a3 + 32) = 1112014848;
        *(a3 + 40) = 0x4248000041A3D70ALL;
        v3 = 0x424800003FEB851FLL;
        if (a2 < 7)
        {
          goto LABEL_37;
        }

        if (a2 > 0xA)
        {
          if (a2 > 0x14)
          {
            if (a2 > 0x28)
            {
              goto LABEL_37;
            }

            goto LABEL_30;
          }

          goto LABEL_25;
        }

LABEL_19:
        *(a3 + 32) = 1120403456;
        *(a3 + 44) = 1120403456;
        v3 = 0x42C800003FEB851FLL;
        goto LABEL_37;
      }

      *(a3 + 32) = 1107846758;
      *(a3 + 40) = 0x4208666641591EB8;
      if (a2 < 6)
      {
        v3 = 0x420866663FEB851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0xA)
      {
        *(a3 + 32) = 1116235366;
        *(a3 + 44) = 1116235366;
        v3 = 0x428866663FEB851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0x14)
      {
        *(a3 + 32) = 1128792064;
        v4 = 1116235366;
        goto LABEL_28;
      }

      if (a2 <= 0x28)
      {
        *(a3 + 32) = 1137180672;
        v5 = 1116235366;
        goto LABEL_33;
      }

      *(a3 + 32) = 1145569280;
      v6 = 1116235366;
    }

    *(a3 + 44) = v6;
    *(a3 + 4) = 1089176863;
    v3 = 0x4448000040EB851FLL;
    goto LABEL_37;
  }

  *(a3 + 4) = 1072399647;
  *(a3 + 32) = 1115291648;
  *(a3 + 40) = 0x427A000041A3D70ALL;
  v3 = 0x427A00003FEB851FLL;
  if (a2 >= 7)
  {
    if (a2 > 0xA)
    {
      if (a2 > 0x14)
      {
        if (a2 <= 0x28)
        {
          *(a3 + 32) = 1140457472;
          *(a3 + 44) = 1123680256;
          *(a3 + 4) = 1080788255;
          v3 = 0x43FA0000406B851FLL;
        }
      }

      else
      {
        *(a3 + 32) = 1132068864;
        *(a3 + 44) = 1123680256;
        *(a3 + 4) = 1080788255;
        v3 = 0x437A0000406B851FLL;
      }
    }

    else
    {
      *(a3 + 32) = 1123680256;
      *(a3 + 44) = 1123680256;
      v3 = 0x42FA00003FEB851FLL;
    }
  }

LABEL_37:
  v7 = a2 * 0.33;
  *(a3 + 8) = *&v3 + *&v3;
  *(a3 + 12) = v3;
  *(a3 + 20) = v7;
  *(a3 + 24) = v7;
  result = v7 * 0.25;
  *(a3 + 28) = v7 * 0.25;
  return result;
}

mlir::placement::PlacementDialect *mlir::placement::PlacementDialect::PlacementDialect(mlir::placement::PlacementDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "placement", 9, a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id);
  *v3 = &unk_1F5B05640;
  mlir::Dialect::addOperations<mlir::placement::ANEIOCast,mlir::placement::HostTypeCast,mlir::placement::MemrefToTensor,mlir::placement::RegionCall,mlir::placement::ReplacedOps,mlir::placement::ReplacedOpsLiveOuts,mlir::placement::StartTimer,mlir::placement::StopTimer,mlir::placement::TensorToMemref>(v3);
  mlir::Dialect::addAttribute<mlir::placement::RegionTypeAttr>(this);
  mlir::Dialect::addType<mlir::placement::TimerHandleType>(this);
  return this;
}

void sub_1DFDF6FF4(void *__p)
{

  operator delete(__p);
}

void *mlir::Dialect::addOperations<mlir::placement::ANEIOCast,mlir::placement::HostTypeCast,mlir::placement::MemrefToTensor,mlir::placement::RegionCall,mlir::placement::ReplacedOps,mlir::placement::ReplacedOpsLiveOuts,mlir::placement::StartTimer,mlir::placement::StopTimer,mlir::placement::TensorToMemref>(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  v40 = &v42;
  v41 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>>(&v40);
  mlir::OperationName::Impl::Impl(v2, "placement.ane_io_cast", 21, a1, &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id, &v40);
  v3 = v40;
  if (v41)
  {
    v4 = 16 * v41;
    v5 = (v40 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v40;
  }

  if (v3 != &v42)
  {
    free(v3);
  }

  *v2 = &unk_1F5B056C0;
  v40 = v2;
  mlir::RegisteredOperationName::insert(&v40, 0, 0);
  v7 = v40;
  v40 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = operator new(0x70uLL);
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v40 = &v42;
  v41 = 0x300000000;
  mlir::OperationName::Impl::Impl(v8, "placement.host_type_cast", 24, a1, &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id, &v40);
  v9 = v40;
  if (v41)
  {
    v10 = 16 * v41;
    v11 = (v40 + 8);
    do
    {
      v12 = *v11;
      v11 += 2;
      free(v12);
      v10 -= 16;
    }

    while (v10);
    v9 = v40;
  }

  if (v9 != &v42)
  {
    free(v9);
  }

  *v8 = &unk_1F5B05850;
  v40 = v8;
  mlir::RegisteredOperationName::insert(&v40, 0, 0);
  v13 = v40;
  v40 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = operator new(0x70uLL);
  v40 = mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::Model(v14, a1);
  mlir::RegisteredOperationName::insert(&v40, &mlir::placement::MemrefToTensor::getAttributeNames(void)::attrNames, 3);
  v15 = v40;
  v40 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = operator new(0x70uLL);
  v40 = mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::Model(v16, a1);
  mlir::RegisteredOperationName::insert(&v40, &mlir::placement::RegionCall::getAttributeNames(void)::attrNames, 2);
  v17 = v40;
  v40 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = operator new(0x70uLL);
  v40 = mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::Model(v18, a1);
  mlir::RegisteredOperationName::insert(&v40, &mlir::placement::ReplacedOps::getAttributeNames(void)::attrNames, 4);
  v19 = v40;
  v40 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = operator new(0x70uLL);
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v40 = &v42;
  v41 = 0x300000000;
  mlir::OperationName::Impl::Impl(v20, "placement.live_outs", 19, a1, &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOpsLiveOuts,void>::id, &v40);
  v21 = v40;
  if (v41)
  {
    v22 = 16 * v41;
    v23 = (v40 + 8);
    do
    {
      v24 = *v23;
      v23 += 2;
      free(v24);
      v22 -= 16;
    }

    while (v22);
    v21 = v40;
  }

  if (v21 != &v42)
  {
    free(v21);
  }

  *v20 = &unk_1F5B05B70;
  v40 = v20;
  mlir::RegisteredOperationName::insert(&v40, 0, 0);
  v25 = v40;
  v40 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = operator new(0x70uLL);
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v40 = &v42;
  v41 = 0x300000000;
  mlir::OperationName::Impl::Impl(v26, "placement.start_timer", 21, a1, &mlir::detail::TypeIDResolver<mlir::placement::StartTimer,void>::id, &v40);
  v27 = v40;
  if (v41)
  {
    v28 = 16 * v41;
    v29 = (v40 + 8);
    do
    {
      v30 = *v29;
      v29 += 2;
      free(v30);
      v28 -= 16;
    }

    while (v28);
    v27 = v40;
  }

  if (v27 != &v42)
  {
    free(v27);
  }

  *v26 = &unk_1F5B05C38;
  v40 = v26;
  mlir::RegisteredOperationName::insert(&v40, &mlir::placement::StartTimer::getAttributeNames(void)::attrNames, 1);
  v31 = v40;
  v40 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = operator new(0x70uLL);
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v40 = &v42;
  v41 = 0x300000000;
  mlir::OperationName::Impl::Impl(v32, "placement.stop_timer", 20, a1, &mlir::detail::TypeIDResolver<mlir::placement::StopTimer,void>::id, &v40);
  v33 = v40;
  if (v41)
  {
    v34 = 16 * v41;
    v35 = (v40 + 8);
    do
    {
      v36 = *v35;
      v35 += 2;
      free(v36);
      v34 -= 16;
    }

    while (v34);
    v33 = v40;
  }

  if (v33 != &v42)
  {
    free(v33);
  }

  *v32 = &unk_1F5B05D00;
  v40 = v32;
  mlir::RegisteredOperationName::insert(&v40, 0, 0);
  v37 = v40;
  v40 = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = operator new(0x70uLL);
  v40 = mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::Model(v38, a1);
  mlir::RegisteredOperationName::insert(&v40, &mlir::placement::TensorToMemref::getAttributeNames(void)::attrNames, 3);
  result = v40;
  v40 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::placement::RegionTypeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::placement::RegionTypeAttr::parse(mlir::AsmParser *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v48 = 0;
    v49 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v48))
    {
LABEL_42:
      v30 = (*(*a1 + 40))(a1);
      LOWORD(v65) = 259;
      (*(*a1 + 24))(v54, a1, v30, v63);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v31 = __p;
        if (__p)
        {
          v32 = v60;
          v33 = __p;
          if (v60 != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          v60 = v31;
          operator delete(v33);
        }

        v34 = v57;
        if (v57)
        {
          v35 = v58;
          v36 = v57;
          if (v58 != v57)
          {
            do
            {
              v38 = *--v35;
              v37 = v38;
              *v35 = 0;
              if (v38)
              {
                operator delete[](v37);
              }
            }

            while (v35 != v34);
            v36 = v57;
          }

          v58 = v34;
          operator delete(v36);
        }

        if (v55 != &v56)
        {
          free(v55);
        }
      }

      return 0;
    }

    if (v49 != 3)
    {
LABEL_16:
      v47 = 257;
      (*(*a1 + 24))(v63, a1, v2, v46);
      if (v63[0])
      {
        LODWORD(v50) = 3;
        v51 = "expected ";
        v52 = 9;
        v6 = &v50;
        v7 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v50 && &v64[3 * v65] > &v50)
          {
            v44 = &v50 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v7 = v64;
            v6 = (v64 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v6 = &v50;
            v7 = v64;
          }
        }

        v8 = &v7[3 * v65];
        v9 = *v6;
        v8[2] = v6[2];
        *v8 = v9;
        v10 = ++v65;
        if (v63[0])
        {
          LODWORD(v50) = 3;
          v51 = "::mlir::placement::RegionType";
          v52 = 29;
          v11 = &v50;
          v12 = v64;
          if (v10 >= v66)
          {
            if (v64 <= &v50 && &v64[3 * v10] > &v50)
            {
              v45 = &v50 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v10 + 1, 24);
              v12 = v64;
              v11 = (v64 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v10 + 1, 24);
              v11 = &v50;
              v12 = v64;
            }
          }

          v13 = &v12[3 * v65];
          v14 = *v11;
          v13[2] = v11[2];
          *v13 = v14;
          ++v65;
        }
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v63, " to be one of: ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "GPU");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v16, ", ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v17, "ANE");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, ", ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, "CPU");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
        }

        v21 = v70;
        if (v70)
        {
          v22 = v71;
          v23 = v70;
          if (v71 != v70)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = v70;
          }

          v71 = v21;
          operator delete(v23);
        }

        v24 = v68;
        if (v68)
        {
          v25 = v69;
          v26 = v68;
          if (v69 != v68)
          {
            do
            {
              v28 = *--v25;
              v27 = v28;
              *v25 = 0;
              if (v28)
              {
                operator delete[](v27);
              }
            }

            while (v25 != v24);
            v26 = v68;
          }

          v69 = v24;
          operator delete(v26);
        }

        if (v64 != v67)
        {
          free(v64);
        }
      }

      goto LABEL_42;
    }

    if (*v48 == 20551 && *(v48 + 2) == 85)
    {
      v29 = 0;
    }

    else if (*v48 == 20033 && *(v48 + 2) == 69)
    {
      v29 = 1;
    }

    else
    {
      if (*v48 != 20547 || *(v48 + 2) != 85)
      {
        goto LABEL_16;
      }

      v29 = 2;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v50 = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
      v51 = Context;
      v63[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v63[1] = &v50;
      v53 = v29;
      v41 = v29 ^ 0xFF51AFD7ED558CCDLL;
      v42 = 0x9DDFEA08EB382D69 * (((8 * v29) | 4) ^ v41);
      v48 = &v53;
      v46[0] = &v53;
      v46[1] = v63;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) >> 32) >> 15) ^ (-348639895 * (v41 ^ (v42 >> 47) ^ v42))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v46);
    }
  }

  return 0;
}

void *mlir::placement::RegionTypeAttr::print(mlir::placement::RegionTypeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (!v6)
  {
    v7 = 0;
    v9 = "GPU";
    goto LABEL_14;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v9 = "CPU";
LABEL_14:
    v8 = 3;
    goto LABEL_15;
  }

  v7 = v6 != 1;
  if (v6 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 1)
  {
    v9 = "ANE";
  }

  else
  {
    v9 = "";
  }

LABEL_15:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::placement::PlacementDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v30[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v33[2] = 0;
  v31 = 0;
  v32 = 0;
  v30[1] = v5;
  v33[0] = 0;
  if (((*(*a2 + 640))(a2, &v31) & 1) == 0)
  {
    v6 = 0;
    *v33 = 256;
    if (v33[2])
    {
      v27 = "region_type";
    }

    else
    {
      v33[2] = 1;
    }

    goto LABEL_15;
  }

  v27 = "region_type";
  v28 = 11;
  if (v33[2])
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v32;
  if (v32)
  {
    if (v32 == 11 && *v31 == 0x745F6E6F69676572 && *(v31 + 3) == 0x657079745F6E6F69)
    {
      v6 = mlir::placement::RegionTypeAttr::parse(a2);
      v33[0] = v6 != 0;
      *&v33[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v30[0] + 648))(v30[0], &v27, 1);
    if (v33[2])
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v32;
  }

  v6 = 0;
  v9 = v31;
  *v33 = 0;
  v33[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v30) & 0x100) == 0)
  {
    v26 = 257;
    (*(*a2 + 24))(v30, a2, v4, v25);
    if (*v10)
    {
      v29 = 261;
      v27 = v9;
      v28 = v7;
      v11 = v10;
      mlir::Diagnostic::operator<<((v10 + 1), &v27);
      v10 = v11;
    }

    if (*v12)
    {
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v29 = 261;
      v27 = v13;
      v28 = v14;
      v15 = v12;
      mlir::Diagnostic::operator<<((v12 + 1), &v27);
      v12 = v15;
    }

    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v38;
        v18 = __p;
        if (v38 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v38 = v16;
        operator delete(v18);
      }

      v19 = v35;
      if (v35)
      {
        v20 = v36;
        v21 = v35;
        if (v36 != v35)
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
          v21 = v35;
        }

        v36 = v19;
        operator delete(v21);
      }

      if (v32 != &v34)
      {
        free(v32);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::placement::PlacementDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 0xA)
    {
      *(v7 + 7) = 1701869940;
      *v7 = *"region_type";
      v6[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v6, "region_type", 0xBuLL);
    }

    mlir::placement::RegionTypeAttr::print(v8, a3);
  }
}

uint64_t mlir::placement::TimerHandleType::get(mlir::placement::TimerHandleType *this, unint64_t a2)
{
  v8 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v7[1] = &v8;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
  v12[1] = v7;
  v11 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::placement::TimerHandleType::parse(mlir::placement::TimerHandleType *this, mlir::AsmParser *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(this);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v20 = 257;
    if ((*(*this + 400))(this, "handle", 6, v19) & 1) != 0 && ((*(*this + 136))(this))
    {
      v19[0] = 0;
      v3 = mlir::AsmParser::parseInteger<unsigned long long>(this, v19);
      v4 = *this;
      if (v3)
      {
        v5 = v19[0];
        if ((*(v4 + 168))(this))
        {
          Context = mlir::AsmParser::getContext(this);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
          v21[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
          v21[1] = &Context;
          v19[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
          v19[1] = v21;
          v25 = v5;
          v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
          v8 = 0x9DDFEA08EB382D69 * ((8 * v5 + 8) ^ v7);
          v23[0] = &v25;
          v23[1] = v19;
          v24 = &v25;
          return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
        }
      }

      else
      {
        v10 = (*(v4 + 40))(this);
        v20 = 259;
        (*(*this + 24))(v26, this, v10, v19);
        if (v26[0])
        {
          mlir::InFlightDiagnostic::report(v26);
        }

        if (v34 == 1)
        {
          if (v33 != &v34)
          {
            free(v33);
          }

          v11 = __p;
          if (__p)
          {
            v12 = v32;
            v13 = __p;
            if (v32 != __p)
            {
              do
              {
                v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
              }

              while (v12 != v11);
              v13 = __p;
            }

            v32 = v11;
            operator delete(v13);
          }

          v14 = v29;
          if (v29)
          {
            v15 = v30;
            v16 = v29;
            if (v30 != v29)
            {
              do
              {
                v18 = *--v15;
                v17 = v18;
                *v15 = 0;
                if (v18)
                {
                  operator delete[](v17);
                }
              }

              while (v15 != v14);
              v16 = v29;
            }

            v30 = v14;
            operator delete(v16);
          }

          if (v27 != &v28)
          {
            free(v27);
          }
        }
      }
    }
  }

  return 0;
}

void *mlir::placement::TimerHandleType::print(mlir::placement::TimerHandleType *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25964;
    *v7 = 1684955496;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "handle", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = *(*this + 8);
  v15 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v15, v14);
  result = (*(*a2 + 16))(a2);
  v17 = result[4];
  if (result[3] == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::placement::PlacementDialect::parseType(uint64_t a1, mlir::placement::TimerHandleType *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v31[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v34[2] = 0;
  v32 = 0;
  v33 = 0;
  v31[1] = v5;
  v34[0] = 0;
  if (((*(*a2 + 640))(a2, &v32) & 1) == 0)
  {
    v7 = 0;
    *v34 = 256;
    if (v34[2])
    {
      v28 = "timer";
    }

    else
    {
      v34[2] = 1;
    }

    goto LABEL_15;
  }

  v28 = "timer";
  v29 = 5;
  if (v34[2])
  {
    goto LABEL_3;
  }

  v8 = v33;
  if (v33)
  {
    if (v33 == 5 && *v32 == 1701669236 && *(v32 + 4) == 114)
    {
      v7 = mlir::placement::TimerHandleType::parse(a2, v6);
      v34[0] = v7 != 0;
      *&v34[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v31[0] + 648))(v31[0], &v28, 1);
    if (v34[2])
    {
LABEL_3:
      v7 = 0;
LABEL_15:
      v8 = 0;
      v10 = 0;
      goto LABEL_16;
    }

    v8 = v33;
  }

  v7 = 0;
  v10 = v32;
  *v34 = 0;
  v34[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v31) & 0x100) == 0)
  {
    v27 = 257;
    (*(*a2 + 24))(v31, a2, v4, v26);
    if (*v11)
    {
      v30 = 261;
      v28 = v10;
      v29 = v8;
      v12 = v11;
      mlir::Diagnostic::operator<<((v11 + 1), &v28);
      v11 = v12;
    }

    if (*v13)
    {
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v30 = 261;
      v28 = v14;
      v29 = v15;
      v16 = v13;
      mlir::Diagnostic::operator<<((v13 + 1), &v28);
      v13 = v16;
    }

    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v39;
        v19 = __p;
        if (v39 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v39 = v17;
        operator delete(v19);
      }

      v20 = v36;
      if (v36)
      {
        v21 = v37;
        v22 = v36;
        if (v37 != v36)
        {
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
          v22 = v36;
        }

        v37 = v20;
        operator delete(v22);
      }

      if (v33 != &v35)
      {
        free(v33);
      }
    }

    return 0;
  }

  return v7;
}

void mlir::placement::PlacementDialect::printType(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 4)
    {
      *(v7 + 4) = 114;
      *v7 = 1701669236;
      v6[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v6, "timer", 5uLL);
    }

    mlir::placement::TimerHandleType::print(v8, a3);
  }
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v52[0] = a2;
    v10 = v52;
LABEL_34:
    *(v10 + 1) = v9;
    mlir::ElementsAttr::isSplat(v10);
    return 1;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v47[0] = a2;
    v10 = v47;
    goto LABEL_34;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v48 = 261;
  v47[0] = a3;
  v47[1] = a4;
  mlir::Operation::emitOpError(a1, v47, v52);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " #");
  if (*v12)
  {
    v14 = v12 + 24;
    v13 = *(v12 + 24);
    v49 = 5;
    v50 = a5;
    v15 = *(v12 + 32);
    v16 = &v49;
    if (v15 >= *(v12 + 36))
    {
      if (v13 <= &v49 && v13 + 24 * v15 > &v49)
      {
        v42 = &v49 - v13;
        v43 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, v12 + 40, v15 + 1, 24);
        v12 = v43;
        v13 = *(v43 + 24);
        v16 = &v42[v13];
      }

      else
      {
        v40 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, v12 + 40, v15 + 1, 24);
        v12 = v40;
        v13 = *(v40 + 24);
        v16 = &v49;
      }
    }

    v17 = v13 + 24 * *(v12 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    v19 = (*(v12 + 32) + 1);
    *(v12 + 32) = v19;
    if (*v12)
    {
      v49 = 3;
      v50 = " must be tensor of any type values or memref of any type values or index, but got ";
      v51 = 82;
      v20 = *(v12 + 24);
      v21 = &v49;
      if (v19 >= *(v12 + 36))
      {
        if (v20 <= &v49 && v20 + 24 * v19 > &v49)
        {
          v44 = &v49 - v20;
          v45 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v12 + 40, v19 + 1, 24);
          v12 = v45;
          v20 = *(v45 + 24);
          v21 = &v44[v20];
        }

        else
        {
          v41 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v12 + 40, v19 + 1, 24);
          v12 = v41;
          v20 = *(v41 + 24);
          v21 = &v49;
        }
      }

      v22 = v20 + 24 * *(v12 + 32);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 2);
      *v22 = v23;
      ++*(v12 + 32);
      if (*v12)
      {
        v24 = &v49;
        v25 = v12;
        mlir::DiagnosticArgument::DiagnosticArgument(&v49, a2);
        v26 = *(v25 + 32);
        v27 = *(v25 + 24);
        if (v26 >= *(v25 + 36))
        {
          if (v27 <= &v49 && v27 + 24 * v26 > &v49)
          {
            v46 = &v49 - v27;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v25 + 40, v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v46[v27];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v25 + 40, v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v49;
          }
        }

        else
        {
          v12 = v25;
        }

        v28 = v27 + 24 * *(v12 + 32);
        v29 = *v24;
        *(v28 + 16) = *(v24 + 2);
        *v28 = v29;
        ++*(v12 + 32);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  v31 = result;
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
    result = v31;
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
      result = v31;
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
      result = v31;
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
      result = v31;
    }

    if (v53 != &v54)
    {
      free(v53);
      return v31;
    }
  }

  return result;
}

BOOL mlir::placement::ANEIOCast::verify(mlir::placement::ANEIOCast *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v23[0] = *(*(*this + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v23);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id || (*(*this - 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) < 8)
  {
    return 1;
  }

  v19 = 257;
  mlir::OpState::emitOpError(this, &v18, v23);
  if (v23[0])
  {
    v20 = 3;
    v21 = "invalid conversion";
    v22 = 18;
    v4 = &v20;
    v5 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v17 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v5 = v24;
        v4 = (v24 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v4 = &v20;
        v5 = v24;
      }
    }

    v6 = &v5[24 * v25];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v25;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  v8 = result;
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
    result = v8;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v31;
      v11 = __p;
      if (v31 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v31 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            operator delete[](v15);
          }
        }

        while (v13 != v12);
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v24 != v27)
    {
      free(v24);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(mlir::placement::detail::MemrefToTensorGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v3, **(*(this + 1) + 96));
  if (v4 && ((v5 = *(*v4 + 136), v6 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v7 = 0) : (v7 = v4), v16 = v7, v6))
  {
    mlir::IntegerAttr::getValue(&v16, &__p);
    if (v15 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v12 = *p_p;
    v8 = *p_p & 0xFFFFFF00;
    if (v15 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    v10 = v12;
    v9 = 0x100000000;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v9 | v8 | v10;
}

BOOL mlir::placement::MemrefToTensorAdaptor::verify(mlir::placement::MemrefToTensorAdaptor *this, Location a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = *this;
  Value = mlir::AffineMapAttr::getValue(&v40);
  if (Value == mlir::DictionaryAttr::end(&v40))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v40));
    if (v7)
    {
      if (!mlir::DenseIntElementsAttr::classof(v7))
      {
        goto LABEL_16;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v35[0] = v7;
      v35[1] = v8;
      Type = mlir::ElementsAttr::getType(v35);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v41[0] = v10;
      v41[1] = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(v41);
      if (v11 != 1 || (v37 = v7, v38[0] = mlir::ArrayAttr::getValue(&v37), v38[1] = v12, isSplat = mlir::ElementsAttr::isSplat(v38), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_16:
        v35[0] = "'placement.memref_to_tensor' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v36 = 259;
        mlir::emitError(a2.var0.var0, v35, v41);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v14 = __p;
          if (__p)
          {
            v15 = v47;
            v16 = __p;
            if (v47 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v47 = v14;
            operator delete(v16);
          }

          v17 = v44;
          if (!v44)
          {
            goto LABEL_74;
          }

          v18 = v45;
          v19 = v44;
          if (v45 == v44)
          {
LABEL_73:
            v45 = v17;
            operator delete(v19);
LABEL_74:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v13;
          }

          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              operator delete[](v20);
            }
          }

          while (v18 != v17);
LABEL_72:
          v19 = v44;
          goto LABEL_73;
        }

        return v13;
      }
    }
  }

  if (!v6)
  {
LABEL_52:
    if (!v5)
    {
      return 1;
    }

    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v35[0] = v5;
      v41[0] = mlir::AffineMapAttr::getValue(v35);
      if (mlir::Type::isUnsignedInteger(v41, 32))
      {
        return 1;
      }
    }

    v35[0] = "'placement.memref_to_tensor' op attribute 'interleave' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v36 = 259;
    mlir::emitError(a2.var0.var0, v35, v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v17 = v44;
      if (!v44)
      {
        goto LABEL_74;
      }

      v31 = v45;
      v19 = v44;
      if (v45 == v44)
      {
        goto LABEL_73;
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

      while (v31 != v17);
      goto LABEL_72;
    }

    return v13;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v41[0] = v6;
    mlir::AffineMapAttr::getValue(v41);
    goto LABEL_52;
  }

  v35[0] = "'placement.memref_to_tensor' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v36 = 259;
  mlir::emitError(a2.var0.var0, v35, v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v17 = v44;
    if (!v44)
    {
      goto LABEL_74;
    }

    v25 = v45;
    v19 = v44;
    if (v45 == v44)
    {
      goto LABEL_73;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        operator delete[](v26);
      }
    }

    while (v25 != v17);
    goto LABEL_72;
  }

  return v13;
}

uint64_t mlir::placement::MemrefToTensor::getShapeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getResultElementType(mlir::Operation **this)
{
  result = mlir::placement::MemrefToTensor::getResultElementTypeAttr(this);
  v2 = result;
  if (result)
  {
    return mlir::AffineMapAttr::getValue(&v2);
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getResultElementTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getInterleave(mlir::Operation **this)
{
  result = mlir::placement::MemrefToTensor::getInterleaveAttr(this);
  v7 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v7, &__p);
    if (v6 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v3 = *p_p;
    if (v6 >= 0x41 && __p != 0)
    {
      operator delete[](__p);
    }

    return v3 | 0x100000000;
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::placement::MemrefToTensor::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&v14, *(*(*(a2 + 8) + 96) + 16), a5);
    mlir::NamedAttrList::push_back(a2 + 112, v14, v15);
  }

  if (a6)
  {
    mlir::NamedAttribute::NamedAttribute(&v14, *(*(*(a2 + 8) + 96) + 8), a6);
    mlir::NamedAttrList::push_back(a2 + 112, v14, v15);
  }

  if (a7)
  {
    mlir::NamedAttribute::NamedAttribute(&v14, **(*(a2 + 8) + 96), a7);
    mlir::NamedAttrList::push_back(a2 + 112, v14, v15);
  }

  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v12 + 1, 8);
    LODWORD(v12) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
}

void mlir::placement::MemrefToTensor::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  if (a4)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a4);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  if (a6)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a6);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  __src = v27;
  v26 = 0x200000000;
  v11 = *a1;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::placement::MemrefToTensor::inferReturnTypes(v11, v14, v15, v24[0], v24[1], Dictionary, v16, v17, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = __src;
  v19 = v26;
  v20 = *(a2 + 72);
  v21 = v20 + v26;
  if (v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v21, 8);
    LODWORD(v20) = *(a2 + 72);
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v20), v18, 8 * v19);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::placement::MemrefToTensor::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x1E69E9840];
  v65 = a11;
  v69 = a6;
  LOBYTE(v70) = 0;
  v71 = 0;
  v72 = a9;
  v73 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v69);
    if (v71 == 1)
    {
      v71 = 0;
    }

    mlir::OperationName::OperationName(&v70, "placement.memref_to_tensor", 26, Context);
    v71 = 1;
  }

  v74 = a4;
  v75 = a5;
  if (a5)
  {
    v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::placement::MemrefToTensorAdaptor::verify(&v69, v15))
    {
      v66 = v74;
      v67 = 0;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v66, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v63 = v16;
        v64 = v17;
        if (v16)
        {
          isSplat = mlir::ElementsAttr::isSplat(&v63);
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
          v21 = v19;
          v66 = v68;
          v67 = 0x500000000;
          v22 = (8 * v19) >> 3;
          if (v22 < 6)
          {
            v23 = 0;
            v24 = 8 * v19;
            if (!v19)
            {
LABEL_19:
              LODWORD(v67) = v23 + (v24 >> 3);
              Value = mlir::AffineMapAttr::getValue(&v69);
              v30 = mlir::DictionaryAttr::end(&v69);
              v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v30, *(*(v70 + 96) + 8));
              if (v31)
              {
                v32 = *(*v31 + 136);
                v33 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
                v34 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? v31 : 0;
                v61 = v34;
                if (v33)
                {
                  isSplat = mlir::AffineMapAttr::getValue(&v61);
                }
              }

              v35 = mlir::AffineMapAttr::getValue(&v69);
              v36 = mlir::DictionaryAttr::end(&v69);
              v37 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v35, v36, *(*(v70 + 96) + 16));
              if (!v37 || (v38 = v37, !mlir::DenseIntElementsAttr::classof(v37)))
              {
LABEL_43:
                v46 = mlir::AffineMapAttr::getValue(&v69);
                v47 = mlir::DictionaryAttr::end(&v69);
                v48 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v46, v47, **(v70 + 96));
                if (v48)
                {
                  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                  {
                    v52 = mlir::AffineMapAttr::getValue(&v69);
                    v53 = mlir::DictionaryAttr::end(&v69);
                    v54 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v52, v53, *(*(v70 + 96) + 16));
                    if (!v54 || !mlir::DenseIntElementsAttr::classof(v54))
                    {
                      v55 = v67;
                      if ((v67 & 0xFFFFFFFE) != 4)
                      {
LABEL_48:
                        if (v66 != v68)
                        {
                          v51 = result;
                          free(v66);
                          return v51;
                        }

                        return result;
                      }

                      Interleave = mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(&v69);
                      v57 = 16;
                      if (v55 == 4)
                      {
                        v57 = 8;
                      }

                      v58 = v66;
                      *(v66 + v57) /= Interleave;
                      v58[v55 - 1] *= Interleave;
                    }
                  }
                }

                v49 = mlir::RankedTensorType::get(v66, v67, isSplat, 0);
                v50 = *(a11 + 8);
                if (v50 >= *(a11 + 12))
                {
                  v60 = v49;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v50 + 1, 8);
                  v49 = v60;
                  LODWORD(v50) = *(a11 + 8);
                }

                *(*a11 + 8 * v50) = v49;
                ++*(a11 + 8);
                result = 1;
                goto LABEL_48;
              }

              v61 = v38;
              v62 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v61, 8, 1, 0))
              {
                RawStringData = mlir::DenseElementsAttr::getRawStringData(&v61);
                LOBYTE(v21) = mlir::DenseElementsAttr::isSplat(&v61);
                mlir::ArrayAttr::getValue(&v61);
                mlir::DenseElementsAttr::getNumElements(&v61);
              }

              else
              {
                RawStringData = 0;
              }

              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v61, 8, 1, 0))
              {
                mlir::DenseElementsAttr::getRawStringData(&v61);
                mlir::DenseElementsAttr::isSplat(&v61);
                mlir::ArrayAttr::getValue(&v61);
                NumElements = mlir::DenseElementsAttr::getNumElements(&v61);
                v24 = NumElements;
                LODWORD(v67) = 0;
                if (NumElements <= HIDWORD(v67))
                {
                  v41 = 0;
                  v42 = 0;
                  if (!NumElements)
                  {
LABEL_42:
                    LODWORD(v67) = v42;
                    goto LABEL_43;
                  }
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, NumElements, 8);
                  v41 = v67;
                }
              }

              else
              {
                v41 = 0;
              }

              v43 = 0;
              v44 = v66 + 8 * v41;
              do
              {
                if (v21)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v43;
                }

                *&v44[8 * v43++] = *(RawStringData + 8 * v45);
              }

              while (v24 != v43);
              v42 = v41 + v24;
              goto LABEL_42;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v22, 8);
            v23 = v67;
            v24 = 8 * v21;
            if (!v21)
            {
              goto LABEL_19;
            }
          }

          memcpy(v66 + 8 * v23, ArgAttrsAttr, v24);
          v23 = v67;
          goto LABEL_19;
        }
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }
    }
  }

  v25 = mlir::Float32Type::get(this, a2);
  v26 = mlir::UnrankedTensorType::get(v25);
  v27 = *(a11 + 8);
  if (v27 >= *(a11 + 12))
  {
    v59 = v26;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v27 + 1, 8);
    v26 = v59;
    LODWORD(v27) = *(a11 + 8);
  }

  *(*a11 + 8 * v27) = v26;
  ++*(a11 + 8);
  return 1;
}

void mlir::placement::MemrefToTensor::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v27;
  v26 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::placement::MemrefToTensor::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v26;
  v22 = *(a2 + 72);
  v23 = v22 + v26;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::placement::MemrefToTensor::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v10 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = mlir::CallGraphNode::getCallableRegion(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = mlir::CallGraphNode::getCallableRegion(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = *this;
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v10, v7, "shape", 5) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v6, "resultElementType", 0x11) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v5, "interleave", 0xA) & 1) == 0 || (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_8;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v29 = a2;
  v30 = v8;
  Type = mlir::ElementsAttr::getType(&v29);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v32);
  if (v11 == 1)
  {
    v26 = a2;
    v27[0] = mlir::ArrayAttr::getValue(&v26);
    v27[1] = v12;
    isSplat = mlir::ElementsAttr::isSplat(v27);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_8:
  v31 = 257;
  mlir::Operation::emitOpError(a1, &v29, v32);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, "attribute '");
  if (*v14)
  {
    v31 = 261;
    v29 = a3;
    v30 = a4;
    v15 = v14;
    mlir::Diagnostic::operator<<((v14 + 1), &v29);
    v14 = v15;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v14, "' failed to satisfy constraint: ui64 elements attribute of rank 1");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
      {
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v13;
}

uint64_t mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v21[0] = a2;
    mlir::AffineMapAttr::getValue(v21);
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: any type attribute");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

uint64_t mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(v23, 32);
    a1 = v6;
    if (isUnsignedInteger)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 32-bit unsigned integer attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            operator delete[](v18);
          }
        }

        while (v16 != v15);
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

uint64_t mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v39[0] = a2;
    v39[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ElementsAttr::isSplat(v39);
    return 1;
  }

  else
  {
    v36 = 261;
    v35[0] = a3;
    v35[1] = a4;
    mlir::Operation::emitOpError(a1, v35, v39);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, " #");
    if (*v8)
    {
      v9 = *(v8 + 24);
      v37 = 5;
      v38 = a5;
      v10 = *(v8 + 32);
      v11 = &v37;
      if (v10 >= *(v8 + 36))
      {
        if (v9 <= &v37 && v9 + 24 * v10 > &v37)
        {
          v32 = &v37 - v9;
          v33 = v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, v8 + 40, v10 + 1, 24);
          v8 = v33;
          v9 = *(v33 + 24);
          v11 = &v32[v9];
        }

        else
        {
          v31 = v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, v8 + 40, v10 + 1, 24);
          v8 = v31;
          v9 = *(v31 + 24);
          v11 = &v37;
        }
      }

      v12 = v9 + 24 * *(v8 + 32);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      ++*(v8 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v8, " must be memref of any type values, but got ");
    if (*v14)
    {
      v15 = &v37;
      v16 = v14;
      mlir::DiagnosticArgument::DiagnosticArgument(&v37, a2);
      v14 = v16;
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      if (v18 >= *(v16 + 36))
      {
        if (v17 <= &v37 && v17 + 24 * v18 > &v37)
        {
          v34 = &v37 - v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, v16 + 40, v18 + 1, 24);
          v14 = v16;
          v17 = *(v16 + 24);
          v15 = &v34[v17];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, v16 + 40, v18 + 1, 24);
          v14 = v16;
          v17 = *(v16 + 24);
          v15 = &v37;
        }
      }

      v19 = v17 + 24 * *(v14 + 32);
      v20 = *v15;
      *(v19 + 16) = *(v15 + 2);
      *v19 = v20;
      ++*(v14 + 32);
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v45;
        v24 = __p;
        if (v45 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v45 = v22;
        operator delete(v24);
      }

      v25 = v42;
      if (v42)
      {
        v26 = v43;
        v27 = v42;
        if (v43 != v42)
        {
          do
          {
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              operator delete[](v28);
            }
          }

          while (v26 != v25);
          v27 = v42;
        }

        v43 = v25;
        operator delete(v27);
      }

      if (v40 != &v41)
      {
        free(v40);
      }
    }
  }

  return v21;
}

uint64_t mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v41[0] = a2;
    v41[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ElementsAttr::isSplat(v41);
    return 1;
  }

  else
  {
    v38 = 261;
    v37[0] = a3;
    v37[1] = a4;
    mlir::Operation::emitOpError(a1, v37, v41);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, " #");
    if (*v11)
    {
      v12 = *(v11 + 24);
      v39 = 5;
      v40 = a5;
      v13 = *(v11 + 32);
      v14 = &v39;
      if (v13 >= *(v11 + 36))
      {
        if (v12 <= &v39 && v12 + 24 * v13 > &v39)
        {
          v34 = &v39 - v12;
          v35 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v35;
          v12 = *(v35 + 24);
          v14 = &v34[v12];
        }

        else
        {
          v33 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v33;
          v12 = *(v33 + 24);
          v14 = &v39;
        }
      }

      v15 = v12 + 24 * *(v11 + 32);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, " must be tensor of any type values, but got ");
    if (*v17)
    {
      v18 = &v39;
      v19 = v17;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, a2);
      v17 = v19;
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
      if (v21 >= *(v19 + 36))
      {
        if (v20 <= &v39 && v20 + 24 * v21 > &v39)
        {
          v36 = &v39 - v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v36[v20];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v39;
        }
      }

      v22 = v20 + 24 * *(v17 + 32);
      v23 = *v18;
      *(v22 + 16) = *(v18 + 2);
      *v22 = v23;
      ++*(v17 + 32);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v47;
        v26 = __p;
        if (v47 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v47 = v24;
        operator delete(v26);
      }

      v27 = v44;
      if (v44)
      {
        v28 = v45;
        v29 = v44;
        if (v45 != v44)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              operator delete[](v30);
            }
          }

          while (v28 != v27);
          v29 = v44;
        }

        v45 = v27;
        operator delete(v29);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v9;
}

void mlir::placement::MemrefToTensor::verify(mlir::Operation **this)
{
  v126 = *MEMORY[0x1E69E9840];
  v111 = *this;
  v2 = (*(*(*(v111 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  if (v3)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v110[0] = v2;
  v110[1] = v3;
  if (!mlir::placement::MemrefToTensor::getShapeAttr(&v111) || !v110[0] || !mlir::CallOpInterface::getArgOperands(v110))
  {
    goto LABEL_32;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v110);
  if (v5)
  {
    v6 = 8 * v5;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_11:
  v7 = mlir::CallableOpInterface::getArgAttrsAttr(v110);
  NumElements = mlir::ShapedType::getNumElements(v7, v8);
  ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v111);
  LOBYTE(v117[0]) = ShapeAttr != 0;
  isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0);
  if ((isValidIntOrFloat & 1) == 0)
  {
    RawStringData = 0;
    if (isValidIntOrFloat <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    v12 = isValidIntOrFloat & 0xFFFFFFFFFFFFFFFELL;
    v15 = 1;
    v16 = 1;
    do
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 + 1;
      }

      v15 *= *(RawStringData + 8 * v17);
      v16 *= *(RawStringData + 8 * v18);
      v14 += 2;
    }

    while (v14 != v12);
    v13 = v16 * v15;
    goto LABEL_30;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
  isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
  mlir::ArrayAttr::getValue(&ShapeAttr);
  isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  if (!isValidIntOrFloat)
  {
    v13 = 1;
    goto LABEL_31;
  }

  if (isValidIntOrFloat > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v12 = 0;
  v13 = 1;
  do
  {
    if (isSplat)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12;
    }

    v13 *= *(RawStringData + 8 * v19);
    ++v12;
LABEL_30:
    ;
  }

  while (isValidIntOrFloat != v12);
LABEL_31:
  if (NumElements != v13)
  {
    v115 = 257;
    mlir::Operation::emitOpError(v111, &v112, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Input shape ");
    if (*v32)
    {
      v33 = &v107;
      v34 = v32;
      mlir::DiagnosticArgument::DiagnosticArgument(&v107, v110[0]);
      v35 = *(v34 + 24);
      v36 = *(v34 + 32);
      if (v36 >= *(v34 + 36))
      {
        if (v35 <= &v107 && v35 + 24 * v36 > &v107)
        {
          v100 = &v107 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, v34 + 40, v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v100[v35];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, v34 + 40, v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v107;
        }
      }

      else
      {
        v32 = v34;
      }

      v37 = v35 + 24 * *(v32 + 32);
      v38 = *v33;
      *(v37 + 16) = *(v33 + 2);
      *v37 = v38;
      ++*(v32 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " (");
    if (*v39)
    {
      v40 = *(v39 + 24);
      LODWORD(v107) = 5;
      v108 = NumElements;
      v41 = *(v39 + 32);
      v42 = &v107;
      if (v41 >= *(v39 + 36))
      {
        if (v40 <= &v107 && v40 + 24 * v41 > &v107)
        {
          v101 = &v107 - v40;
          v102 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
          v39 = v102;
          v40 = *(v102 + 24);
          v42 = &v101[v40];
        }

        else
        {
          v98 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
          v39 = v98;
          v40 = *(v98 + 24);
          v42 = &v107;
        }
      }

      v43 = v40 + 24 * *(v39 + 32);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(v39 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, " elements) is not compatible with shape attribute ");
    v46 = v45;
    v47 = mlir::placement::MemrefToTensor::getShapeAttr(&v111);
    if (*v46)
    {
      v48 = &v107;
      mlir::DiagnosticArgument::DiagnosticArgument(&v107, v47);
      v49 = v46 + 24;
      v50 = *(v46 + 24);
      v51 = *(v46 + 32);
      if (v51 >= *(v46 + 36))
      {
        if (v50 <= &v107 && v50 + 24 * v51 > &v107)
        {
          v103 = &v107 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v46 + 40, v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v103[v50];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v46 + 40, v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v107;
        }
      }

      v52 = v50 + 24 * *(v46 + 32);
      v53 = *v48;
      *(v52 + 16) = *(v48 + 2);
      *v52 = v53;
      ++*(v46 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v46, " (");
    if (*v54)
    {
      v55 = *(v54 + 24);
      LODWORD(v107) = 2;
      v108 = v13;
      v56 = *(v54 + 32);
      v57 = &v107;
      if (v56 >= *(v54 + 36))
      {
        if (v55 <= &v107 && v55 + 24 * v56 > &v107)
        {
          v104 = &v107 - v55;
          v105 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, v54 + 40, v56 + 1, 24);
          v54 = v105;
          v55 = *(v105 + 24);
          v57 = &v104[v55];
        }

        else
        {
          v99 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, v54 + 40, v56 + 1, 24);
          v54 = v99;
          v55 = *(v99 + 24);
          v57 = &v107;
        }
      }

      v58 = v55 + 24 * *(v54 + 32);
      v59 = *v57;
      *(v58 + 16) = *(v57 + 2);
      *v58 = v59;
      ++*(v54 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " elements)");
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
    }

    if ((v125 & 1) == 0)
    {
      return;
    }

    if (v124 != &v125)
    {
      free(v124);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v123;
      v63 = __p;
      if (v123 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v123 = v61;
      operator delete(v63);
    }

    v64 = v120;
    if (!v120)
    {
LABEL_109:
      if (v118 != &v119)
      {
        free(v118);
      }

      return;
    }

    v65 = v121;
    v66 = v120;
    if (v121 == v120)
    {
LABEL_108:
      v121 = v64;
      operator delete(v66);
      goto LABEL_109;
    }

    do
    {
      v68 = *--v65;
      v67 = v68;
      *v65 = 0;
      if (v68)
      {
        operator delete[](v67);
      }
    }

    while (v65 != v64);
LABEL_107:
    v66 = v120;
    goto LABEL_108;
  }

LABEL_32:
  ShapeAttr = mlir::Operation::getAttrDictionary(v111);
  Value = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v111);
  v21 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v21 + 16 * v22), **(*(v111 + 6) + 96));
  if (!v23)
  {
    return;
  }

  v24 = *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v110[0] == 0;
  if (v24 || !mlir::CallOpInterface::getArgOperands(v110))
  {
    return;
  }

  v25 = mlir::CallableOpInterface::getArgAttrsAttr(v110);
  if (v26)
  {
    v27 = 8 * v26;
    while (*v25 != 0x8000000000000000)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

    return;
  }

LABEL_42:
  ShapeAttr = mlir::Operation::getAttrDictionary(v111);
  v28 = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v111);
  v29 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 + 16 * v30), **(*(v111 + 6) + 96));
  if (v31)
  {
    if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v112 = v31;
      mlir::IntegerAttr::getValue(&v112, &ShapeAttr);
      if (v117[0] >= 0x41u)
      {
        p_ShapeAttr = ShapeAttr;
      }

      else
      {
        p_ShapeAttr = &ShapeAttr;
      }

      v31 = *p_ShapeAttr;
      if (v117[0] >= 0x41u && ShapeAttr)
      {
        v70 = *p_ShapeAttr;
        operator delete[](ShapeAttr);
        v31 = v70;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  mlir::getANENextSupportedInterleaveValue(v31);
  if (v71)
  {
    v112 = v114;
    v113 = 0x400000000;
    v72 = mlir::CallableOpInterface::getArgAttrsAttr(v110);
    v73 = mlir::CallableOpInterface::getArgAttrsAttr(v110);
    v74 = 0;
    v76 = (v73 + 8 * v75);
    LODWORD(v113) = 0;
    v77 = v76 - v72;
    v78 = (v76 - v72) >> 3;
    if (v78 > HIDWORD(v113))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v114, v78, 8);
      v74 = v113;
    }

    if (v76 != v72)
    {
      memcpy(v112 + 8 * v74, v72, v76 - v72);
      v74 = v113;
    }

    v79 = v74 + (v77 >> 3);
    LODWORD(v113) = v74 + (v77 >> 3);
    if ((v79 - 6) > 0xFFFFFFFFFFFFFFFDLL)
    {
      ShapeAttr = mlir::Operation::getAttrDictionary(v111);
      v88 = mlir::ArrayAttr::getValue(&ShapeAttr);
      ShapeAttr = mlir::Operation::getAttrDictionary(v111);
      v89 = mlir::ArrayAttr::getValue(&ShapeAttr);
      v91 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v88, (v89 + 16 * v90), **(*(v111 + 6) + 96));
      if (v91 && *(*v91 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v107 = v91;
        mlir::IntegerAttr::getValue(&v107, &ShapeAttr);
        if (v117[0] >= 0x41u)
        {
          v97 = ShapeAttr;
        }

        else
        {
          v97 = &ShapeAttr;
        }

        v92 = *v97;
        if (v117[0] >= 0x41u && ShapeAttr)
        {
          operator delete[](ShapeAttr);
        }
      }

      else
      {
        v92 = 0;
      }

      v106 = v92;
      if (v79 == 4)
      {
        v93 = 1;
      }

      else
      {
        v93 = 2;
      }

      if (*(v112 + v93) % v92)
      {
        v109 = 257;
        mlir::Operation::emitOpError(v111, &v107, &ShapeAttr);
        if (ShapeAttr)
        {
          mlir::Diagnostic::append<char const(&)[7]>(v117, "channel ");
        }

        mlir::InFlightDiagnostic::operator<<<long long &>(&ShapeAttr, v112 + v93);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v94, " must be a multiple of interleave ");
        mlir::InFlightDiagnostic::operator<<<long long &>(v95, &v106);
        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v96);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAttr);
      }
    }

    else
    {
      v109 = 257;
      mlir::Operation::emitOpError(v111, &v107, &ShapeAttr);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Interleave can only be applied on 4D or 5D tensor");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
      if (ShapeAttr)
      {
        mlir::InFlightDiagnostic::report(&ShapeAttr);
      }

      if (v125 == 1)
      {
        mlir::Diagnostic::~Diagnostic(v117);
      }
    }

    if (v112 != v114)
    {
      free(v112);
    }

    return;
  }

  v115 = 257;
  mlir::Operation::emitOpError(v111, &v112, &ShapeAttr);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "interleave factor not supported");
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
  if (ShapeAttr)
  {
    mlir::InFlightDiagnostic::report(&ShapeAttr);
  }

  if (v125 == 1)
  {
    if (v124 != &v125)
    {
      free(v124);
    }

    v82 = __p;
    if (__p)
    {
      v83 = v123;
      v84 = __p;
      if (v123 != __p)
      {
        do
        {
          v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
        }

        while (v83 != v82);
        v84 = __p;
      }

      v123 = v82;
      operator delete(v84);
    }

    v64 = v120;
    if (!v120)
    {
      goto LABEL_109;
    }

    v85 = v121;
    v66 = v120;
    if (v121 == v120)
    {
      goto LABEL_108;
    }

    do
    {
      v87 = *--v85;
      v86 = v87;
      *v85 = 0;
      if (v87)
      {
        operator delete[](v86);
      }
    }

    while (v85 != v64);
    goto LABEL_107;
  }
}

uint64_t mlir::placement::RegionCall::getCallee(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  AttrDictionary = mlir::AffineMapAttr::getValue(&v6);
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

uint64_t mlir::placement::RegionCall::getRegionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 8);
}

void mlir::placement::RegionCall::build(mlir::MLIRContext **a1, uint64_t a2, mlir::SymbolRefAttr *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  else
  {
    InterfaceFor = 0;
  }

  v33 = a3;
  v34 = InterfaceFor;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v33);
  Results = mlir::FunctionType::getResults(&CallableForCallee);
  v15 = v13;
  v16 = 8 * v13;
  v17 = *(a2 + 72);
  v18 = v17 + ((8 * v13) >> 3);
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v17), Results, v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + (v16 >> 3);
  v19 = mlir::SymbolRefAttr::get(a3, v13);
  Context = mlir::Attribute::getContext(a2);
  v35 = 261;
  v33 = "callee";
  v34 = 6;
  v21 = mlir::StringAttr::get(Context, &v33);
  mlir::NamedAttribute::NamedAttribute(&v36, v21, v19);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v22);
  v30[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v30[1] = v22;
  v33 = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v34 = v30;
  v32 = a4;
  v24 = a4 ^ 0xFF51AFD7ED558CCDLL;
  v25 = 0x9DDFEA08EB382D69 * (((8 * a4) | 4) ^ v24);
  v31 = &v32;
  v36 = &v32;
  v37 = &v33;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 32) >> 15) ^ (-348639895 * (v24 ^ (v25 >> 47) ^ v25))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v36);
  v27 = mlir::Attribute::getContext(a2);
  v35 = 261;
  v33 = "region_type";
  v34 = 11;
  v28 = mlir::StringAttr::get(v27, &v33);
  mlir::NamedAttribute::NamedAttribute(&v36, v28, ParametricStorageTypeImpl);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  mlir::OperationState::addOperands(a2, a5, a6);
}

void mlir::placement::RegionCall::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::NamedAttribute::NamedAttribute(&v16, **(*(a2 + 8) + 96), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  mlir::NamedAttribute::NamedAttribute(&v16, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v13, 8);
    v13 = *(a2 + 72);
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      *(v15 + 8 * v14) = mlir::TypeRange::dereference_iterator(a3, v14);
      ++v14;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
}

void mlir::placement::RegionCall::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  mlir::OperationState::addOperands(a2, a9, a10);
  v17 = **(*(a2 + 8) + 96);
  v18 = mlir::SymbolRefAttr::get(*a1, a5, a6);
  mlir::NamedAttribute::NamedAttribute(&v32, v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, v32, v33);
  v19 = *(*(*(a2 + 8) + 96) + 8);
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v28[1] = v20;
  v32 = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33 = v28;
  v31 = a7;
  v22 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v22);
  v29[1] = &v32;
  v30 = &v31;
  v29[0] = &v31;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  mlir::NamedAttribute::NamedAttribute(&v32, v19, ParametricStorageTypeImpl);
  mlir::NamedAttrList::push_back(a2 + 112, v32, v33);
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v25, 8);
    v25 = *(a2 + 72);
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      *(v27 + 8 * v26) = mlir::TypeRange::dereference_iterator(a3, v26);
      ++v26;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
}

uint64_t mlir::placement::RegionCall::verifyInvariantsImpl(mlir::Operation **this)
{
  v59 = *MEMORY[0x1E69E9840];
  *v50 = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v50);
  if (!v3)
  {
LABEL_5:
    v46 = "requires attribute 'callee'";
    v49 = 259;
    mlir::OpState::emitOpError(this, &v46, v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (*v50)
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return v6;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v56;
      v9 = __p;
      if (v56 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v56 = v7;
      operator delete(v9);
    }

    v10 = v53;
    if (v53)
    {
      v11 = v54;
      v12 = v53;
      if (v54 == v53)
      {
        goto LABEL_42;
      }

      do
      {
        v14 = *--v11;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          operator delete[](v13);
        }
      }

      while (v11 != v10);
LABEL_41:
      v12 = v53;
LABEL_42:
      v54 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v51 != v52)
    {
      free(v51);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v46 = "requires attribute 'region_type'";
    v49 = 259;
    mlir::OpState::emitOpError(this, &v46, v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (*v50)
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return v6;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v56;
      v18 = __p;
      if (v56 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v56 = v16;
      operator delete(v18);
    }

    v10 = v53;
    if (v53)
    {
      v19 = v54;
      v12 = v53;
      if (v54 == v53)
      {
        goto LABEL_42;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          operator delete[](v20);
        }
      }

      while (v19 != v10);
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(*this, v15, "callee", 6) & 1) == 0)
  {
    return 0;
  }

  v23 = *this;
  if (v22 && *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id)
  {
    v49 = 257;
    mlir::Operation::emitOpError(v23, &v46, v50);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, "attribute '");
    if (*v24)
    {
      v49 = 261;
      v46 = "region_type";
      v47 = 11;
      v25 = v24;
      mlir::Diagnostic::operator<<(v24 + 8, &v46);
      v24 = v25;
      if (*v25)
      {
        v26 = *(v25 + 24);
        LODWORD(v46) = 3;
        v47 = "' failed to satisfy constraint: Available region types";
        v48 = 54;
        v27 = *(v25 + 32);
        v28 = &v46;
        if (v27 >= *(v25 + 36))
        {
          if (v26 <= &v46 && v26 + 24 * v27 > &v46)
          {
            v45 = &v46 - v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, v25 + 40, v27 + 1, 24);
            v24 = v25;
            v26 = *(v25 + 24);
            v28 = &v45[v26];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, v25 + 40, v27 + 1, 24);
            v24 = v25;
            v26 = *(v25 + 24);
            v28 = &v46;
          }
        }

        v29 = v26 + 24 * *(v24 + 32);
        v30 = *v28;
        *(v29 + 16) = v28[2];
        *v29 = v30;
        ++*(v24 + 32);
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (*v50)
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v56;
        v34 = __p;
        if (v56 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v56 = v32;
        operator delete(v34);
      }

      v35 = v53;
      if (v53)
      {
        v36 = v54;
        v37 = v53;
        if (v54 != v53)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v53;
        }

        v54 = v35;
        operator delete(v37);
      }

      if (v51 != v52)
      {
        free(v51);
      }
    }

    if (!v31)
    {
      return 0;
    }

    v23 = *this;
  }

  if ((*(v23 + 46) & 0x80) != 0)
  {
    v40 = *(v23 + 17);
    if (v40)
    {
      v41 = 0;
      v42 = *(v23 + 9) + 24;
      while (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(*this, (*(*v42 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41))
      {
        ++v41;
        v42 += 32;
        if (v40 == v41)
        {
          v43 = *this;
          goto LABEL_83;
        }
      }

      return 0;
    }
  }

  v43 = v23;
LABEL_83:
  mlir::placement::RegionCall::verifyInvariantsImpl(this, v43, v50);
  return v50[0];
}

uint64_t mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v6 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a2 : 0;
  v24[0] = v6;
  if (v6)
  {
    v7 = a1;
    mlir::OpaqueAttr::getAttrData(v24);
    a1 = v7;
    if (!v8)
    {
      return 1;
    }
  }

  v23 = 257;
  mlir::Operation::emitOpError(a1, v22, v24);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, "attribute '");
  if (*v9)
  {
    v23 = 261;
    v22[0] = a3;
    v22[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v22);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: flat symbol reference attribute");
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v30;
      v15 = __p;
      if (v30 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v30 = v13;
      operator delete(v15);
    }

    v16 = v27;
    if (v27)
    {
      v17 = v28;
      v18 = v27;
      if (v28 != v27)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v27;
      }

      v28 = v16;
      operator delete(v18);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v12;
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v52[0] = a2;
    v10 = v52;
LABEL_34:
    *(v10 + 1) = v9;
    mlir::ElementsAttr::isSplat(v10);
    return 1;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v47[0] = a2;
    v10 = v47;
    goto LABEL_34;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v48 = 261;
  v47[0] = a3;
  v47[1] = a4;
  mlir::Operation::emitOpError(a1, v47, v52);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " #");
  if (*v12)
  {
    v14 = v12 + 24;
    v13 = *(v12 + 24);
    v49 = 5;
    v50 = a5;
    v15 = *(v12 + 32);
    v16 = &v49;
    if (v15 >= *(v12 + 36))
    {
      if (v13 <= &v49 && v13 + 24 * v15 > &v49)
      {
        v42 = &v49 - v13;
        v43 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, v12 + 40, v15 + 1, 24);
        v12 = v43;
        v13 = *(v43 + 24);
        v16 = &v42[v13];
      }

      else
      {
        v40 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, v12 + 40, v15 + 1, 24);
        v12 = v40;
        v13 = *(v40 + 24);
        v16 = &v49;
      }
    }

    v17 = v13 + 24 * *(v12 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    v19 = (*(v12 + 32) + 1);
    *(v12 + 32) = v19;
    if (*v12)
    {
      v49 = 3;
      v50 = " must be variadic of tensor of any type values or memref of any type values or index, but got ";
      v51 = 94;
      v20 = *(v12 + 24);
      v21 = &v49;
      if (v19 >= *(v12 + 36))
      {
        if (v20 <= &v49 && v20 + 24 * v19 > &v49)
        {
          v44 = &v49 - v20;
          v45 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v12 + 40, v19 + 1, 24);
          v12 = v45;
          v20 = *(v45 + 24);
          v21 = &v44[v20];
        }

        else
        {
          v41 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v12 + 40, v19 + 1, 24);
          v12 = v41;
          v20 = *(v41 + 24);
          v21 = &v49;
        }
      }

      v22 = v20 + 24 * *(v12 + 32);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 2);
      *v22 = v23;
      ++*(v12 + 32);
      if (*v12)
      {
        v24 = &v49;
        v25 = v12;
        mlir::DiagnosticArgument::DiagnosticArgument(&v49, a2);
        v26 = *(v25 + 32);
        v27 = *(v25 + 24);
        if (v26 >= *(v25 + 36))
        {
          if (v27 <= &v49 && v27 + 24 * v26 > &v49)
          {
            v46 = &v49 - v27;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v25 + 40, v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v46[v27];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v25 + 40, v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v49;
          }
        }

        else
        {
          v12 = v25;
        }

        v28 = v27 + 24 * *(v12 + 32);
        v29 = *v24;
        *(v28 + 16) = *(v24 + 2);
        *v28 = v29;
        ++*(v12 + 32);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  v31 = result;
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
    result = v31;
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
      result = v31;
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
      result = v31;
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            operator delete[](v38);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
      result = v31;
    }

    if (v53 != &v54)
    {
      free(v53);
      return v31;
    }
  }

  return result;
}

uint64_t mlir::placement::ReplacedOps::getReplacedBy(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  AttrDictionary = mlir::AffineMapAttr::getValue(&v6);
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

uint64_t mlir::placement::ReplacedOps::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

void mlir::placement::ReplacedOps::build(uint64_t a1, mlir::Attribute *a2, void *a3, uint64_t a4, mlir::SymbolRefAttr *a5, mlir::Operation **a6, uint64_t a7, uint64_t a8, char *a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v79 = *MEMORY[0x1E69E9840];
  v18 = *a1;
  mlir::TypeRange::TypeRange(&v63, a9, a10);
  mlir::TypeRange::TypeRange(&v59, a11, a12);
  v19 = mlir::FunctionType::get(v18, v63, v64, v59, v60);
  v20 = *(*(*(a2 + 1) + 96) + 8);
  v21 = mlir::TypeAttr::get(v19);
  mlir::NamedAttribute::NamedAttribute(&v63, v20, v21);
  mlir::NamedAttrList::push_back(a2 + 112, v63, v64);
  v62 = 261;
  v59 = a3;
  v60 = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, &v59);
  Context = mlir::Attribute::getContext(a2);
  LOWORD(v67) = 261;
  v63 = "sym_name";
  v64 = 8;
  v24 = mlir::StringAttr::get(Context, &v63);
  mlir::NamedAttribute::NamedAttribute(&v72, v24, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v72, v73);
  v26 = mlir::SymbolRefAttr::get(a5, v25);
  v27 = mlir::Attribute::getContext(a2);
  LOWORD(v67) = 261;
  v63 = "replaced_by";
  v64 = 11;
  v28 = mlir::StringAttr::get(v27, &v63);
  mlir::NamedAttribute::NamedAttribute(&v59, v28, v26);
  mlir::NamedAttrList::push_back(a2 + 112, v59, v60);
  v29 = mlir::OperationState::addRegion(a2);
  v30 = operator new(0x48uLL);
  *v30 = 0u;
  v30[1] = 0u;
  *(v30 + 4) = v30 + 2;
  *(v30 + 5) = v30 + 2;
  *(v30 + 7) = 0;
  *(v30 + 8) = 0;
  *(v30 + 6) = 0;
  v72 = v74;
  v73 = 0x400000000;
  v63 = a9;
  v64 = 0;
  if (a10)
  {
    for (i = 0; i != a10; v64 = i)
    {
      v59 = mlir::ValueRange::dereference_iterator(&v63, i);
      Loc = mlir::Value::getLoc(&v59);
      v33 = v73;
      if (v73 >= HIDWORD(v73))
      {
        v34 = Loc;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v73 + 1, 8);
        Loc = v34;
        v33 = v73;
      }

      *&v72[8 * v33] = Loc;
      LODWORD(v73) = v73 + 1;
      i = v64 + 1;
    }
  }

  mlir::TypeRange::TypeRange(&v63, a9, a10);
  mlir::Block::addArguments(v30, v63, v64, v72, v73);
  llvm::ilist_traits<mlir::Block>::addNodeToList(v29, v30);
  v35 = *v29;
  *(v30 + 1) = *v29;
  *(v30 + 2) = v29;
  *(v35 + 8) = v30 + 8;
  *v29 = v30 + 8;
  v37 = *(v30 + 5);
  v36 = *(v30 + 6);
  *(a1 + 16) = v30;
  *(a1 + 24) = v37;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v38 = *(v30 + 7);
  v59 = a9;
  v60 = 0;
  v61[0] = v36;
  if (a10 && v38 != v36)
  {
    v39 = 0;
    do
    {
      v40 = mlir::ValueRange::dereference_iterator(&v59, v39);
      v41 = *v61[0];
      v75 = v40;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v63, &v75) = v41;
      v39 = v60 + 1;
      v42 = v61[0] + 8;
      v60 = v39;
      v61[0] += 8;
    }

    while (v39 != a10 && v42 != v38);
  }

  if (a7)
  {
    v44 = 8 * a7;
    do
    {
      v45 = *a6++;
      mlir::OpBuilder::clone(a1, v45, &v63);
      v44 -= 8;
    }

    while (v44);
  }

  v59 = v61;
  v60 = 0x600000000;
  if (a12 < 7)
  {
    v46 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, a12, 8);
    v46 = v60;
  }

  v75 = a11;
  v76 = 0;
  v77 = &v63;
  v78 = 1;
  if (a12)
  {
    v47 = 0;
    v48 = (v59 + 8 * v46);
    do
    {
      v49 = mlir::ValueRange::dereference_iterator(&v75, v47);
      v50 = *(v77 + 4);
      if (v50)
      {
        v51 = *v77;
        v52 = 0x9DDFEA08EB382D69 * ((8 * v49 - 0xAE502812AA7333) ^ HIDWORD(v49));
        v53 = 0x9DDFEA08EB382D69 * (HIDWORD(v49) ^ (v52 >> 47) ^ v52);
        v54 = (-348639895 * ((v53 >> 47) ^ v53)) & (v50 - 1);
        v55 = *&(*v77)[16 * v54];
        if (v55 == v49)
        {
LABEL_25:
          if (v54 != v50)
          {
            v49 = *&v51[16 * v54 + 8];
          }
        }

        else
        {
          v56 = 1;
          while (v55 != -4096)
          {
            v57 = v54 + v56++;
            v54 = v57 & (v50 - 1);
            v55 = *&v51[16 * v54];
            if (v55 == v49)
            {
              goto LABEL_25;
            }
          }
        }
      }

      *v48++ = v49;
      v47 = v76 + 1;
      v76 = v47;
    }

    while (v47 != a12);
    v46 = v60;
  }

  LODWORD(v60) = v46 + a12;
  mlir::OpBuilder::create<mlir::placement::ReplacedOpsLiveOuts,llvm::SmallVector<mlir::Value,6u> &>(a1, *a2, &v59);
  if (v59 != v61)
  {
    free(v59);
  }

  llvm::deallocate_buffer(v69, (16 * v71));
}

void sub_1DFDFD880()
{
  if (v4)
  {
    *v0 = v4;
  }

  else
  {
    *v0 = 0;
    *(v0 + 8) = 0;
  }

  v3 = *(v2 - 176);
  if (v3 != v1)
  {
    free(v3);
  }
}

uint64_t mlir::OpBuilder::create<mlir::placement::ReplacedOpsLiveOuts,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::ReplacedOpsLiveOuts,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::ReplacedOpsLiveOuts,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOpsLiveOuts,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

BOOL mlir::placement::ReplacedOps::verifyInvariantsImpl(mlir::Operation **this)
{
  v82 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_7:
    v68[0] = "requires attribute 'function_type'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v81 != 1)
    {
      return v7;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v79;
      v10 = __p;
      if (v79 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v79 = v8;
      operator delete(v10);
    }

    v11 = v76;
    if (v76)
    {
      v12 = v77;
      v13 = v76;
      if (v77 == v76)
      {
        goto LABEL_44;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          operator delete[](v14);
        }
      }

      while (v12 != v11);
LABEL_43:
      v13 = v76;
LABEL_44:
      v77 = v11;
      operator delete(v13);
    }

LABEL_45:
    if (v72 != v75)
    {
      free(v72);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v68[0] = "requires attribute 'replaced_by'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v81 != 1)
    {
      return v7;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v79;
      v23 = __p;
      if (v79 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v79 = v21;
      operator delete(v23);
    }

    v11 = v76;
    if (v76)
    {
      v24 = v77;
      v13 = v76;
      if (v77 == v76)
      {
        goto LABEL_44;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v24 != v11);
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    CallableRegion = mlir::CallGraphNode::getCallableRegion((v4 + v16));
    v20 = *this;
    if (CallableRegion == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v27 = *(v18 + 1);
  v28 = 0;
  for (i = v6 - v16; i; i -= 16)
  {
    v41 = mlir::CallGraphNode::getCallableRegion(v18);
    v20 = *this;
    if (v41 == *(*(*(*this + 6) + 96) + 24))
    {
      v28 = *(v18 + 1);
    }

    v18 = (v18 + 16);
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(v20, v27, "replaced_by", 0xB) & 1) == 0)
  {
    return 0;
  }

  if (v17)
  {
    v30 = *this;
    if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (AttrDictionary = v17, *(*mlir::AffineMapAttr::getValue(&AttrDictionary) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id) || (v68[0] = v17, *(*mlir::AffineMapAttr::getValue(v68) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
    {
      v69 = 257;
      mlir::Operation::emitOpError(v30, v68, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
      if (*v31)
      {
        v69 = 261;
        v68[0] = "function_type";
        v68[1] = 13;
        v32 = v31;
        mlir::Diagnostic::operator<<((v31 + 1), v68);
        v31 = v32;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, "' failed to satisfy constraint: type attribute of function type");
      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v81 == 1)
      {
        if (v80 != &v81)
        {
          free(v80);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v79;
          v37 = __p;
          if (v79 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v79 = v35;
          operator delete(v37);
        }

        v38 = v76;
        if (v76)
        {
          v39 = v77;
          v40 = v76;
          if (v77 != v76)
          {
            do
            {
              v43 = *--v39;
              v42 = v43;
              *v39 = 0;
              if (v43)
              {
                operator delete[](v42);
              }
            }

            while (v39 != v38);
            v40 = v76;
          }

          v77 = v38;
          operator delete(v40);
        }

        if (v72 != v75)
        {
          free(v72);
        }
      }

      if (!v34)
      {
        return 0;
      }
    }
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v5, "arg_attrs", 9) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v28, "res_attrs", 9) & 1) == 0)
  {
    return 0;
  }

  v44 = *this;
  v45 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v46 = *(v45 + 8);
  if (v46 != v45 && *(v46 + 8) == v45)
  {
    return 1;
  }

  v68[0] = "region #";
  v69 = 259;
  mlir::Operation::emitOpError(v44, v68, &AttrDictionary);
  if (AttrDictionary)
  {
    LODWORD(v66[0]) = 5;
    v66[1] = 0;
    v47 = v66;
    v48 = v72;
    if (v73 >= v74)
    {
      if (v72 <= v66 && v72 + 24 * v73 > v66)
      {
        v63 = v66 - v72;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v48 = v72;
        v47 = v72 + v63;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v47 = v66;
        v48 = v72;
      }
    }

    v49 = &v48[24 * v73];
    v50 = *v47;
    *(v49 + 2) = *(v47 + 2);
    *v49 = v50;
    ++v73;
    v51 = AttrDictionary == 0;
  }

  else
  {
    v51 = 1;
  }

  v65 = 1283;
  v64[0] = " ('";
  v64[2] = "body";
  v64[3] = 4;
  v66[0] = v64;
  v66[2] = "') ";
  v67 = 770;
  if (!v51)
  {
    mlir::Diagnostic::operator<<(&v71, v66);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "failed to verify constraint: region with 1 blocks");
  v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v54 = __p;
    if (__p)
    {
      v55 = v79;
      v56 = __p;
      if (v79 != __p)
      {
        do
        {
          v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
        }

        while (v55 != v54);
        v56 = __p;
      }

      v79 = v54;
      operator delete(v56);
    }

    v57 = v76;
    if (v76)
    {
      v58 = v77;
      v59 = v76;
      if (v77 != v76)
      {
        do
        {
          v61 = *--v58;
          v60 = v61;
          *v58 = 0;
          if (v61)
          {
            operator delete[](v60);
          }
        }

        while (v58 != v57);
        v59 = v76;
      }

      v77 = v57;
      operator delete(v59);
    }

    if (v72 != v75)
    {
      free(v72);
    }
  }

  return v53;
}

uint64_t mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v33[0] = a2;
    v22 = a1;
    Value = mlir::ArrayAttr::getValue(v33);
    v24 = mlir::ArrayAttr::getValue(v33);
    v26 = v24 + 8 * v25;
    if (v26 != Value)
    {
      a1 = v22;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v26)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v29, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v6)
  {
    v32 = 261;
    v29 = a3;
    v30 = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<(v6 + 8, &v29);
    v6 = v7;
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v29) = 3;
      v30 = "' failed to satisfy constraint: Array of dictionary attributes";
      v31 = 62;
      v9 = *(v7 + 32);
      v10 = &v29;
      if (v9 >= *(v7 + 36))
      {
        if (v8 <= &v29 && v8 + 24 * v9 > &v29)
        {
          v28 = &v29 - v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v28[v8];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v29;
        }
      }

      v11 = v8 + 24 * *(v6 + 32);
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      ++*(v6 + 32);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v39;
      v16 = __p;
      if (v39 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v39 = v14;
      operator delete(v16);
    }

    v17 = v36;
    if (v36)
    {
      v18 = v37;
      v19 = v36;
      if (v37 != v36)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v18 != v17);
        v19 = v36;
      }

      v37 = v17;
      operator delete(v19);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v13;
}

uint64_t mlir::placement::ReplacedOpsLiveOuts::parse(uint64_t a1, uint64_t a2)
{
  v10[16] = *MEMORY[0x1E69E9840];
  v9[0] = v10;
  v9[1] = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7))
  {
    v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v9, v7, v4, a2 + 16) & 1;
  }

  else
  {
    v5 = 0;
  }

  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v5;
}

uint64_t mlir::placement::StartTimer::getReplacedOpsRef(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  AttrDictionary = mlir::AffineMapAttr::getValue(&v6);
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

void mlir::placement::StartTimer::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::NamedAttribute::NamedAttribute(v7, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, v7[0], v7[1]);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

BOOL mlir::placement::StartTimer::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(*this, v4[1], "replaced_ops_ref", 0x10))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'replaced_ops_ref'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id)
  {
    return 1;
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(a1, v34, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, " #");
  if (*v7)
  {
    v8 = *(v7 + 24);
    v36 = 5;
    v37 = a5;
    v9 = *(v7 + 32);
    v10 = &v36;
    if (v9 >= *(v7 + 36))
    {
      if (v8 <= &v36 && v8 + 24 * v9 > &v36)
      {
        v31 = &v36 - v8;
        v32 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
        v7 = v32;
        v8 = *(v32 + 24);
        v10 = &v31[v8];
      }

      else
      {
        v30 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
        v7 = v30;
        v8 = *(v30 + 24);
        v10 = &v36;
      }
    }

    v11 = v8 + 24 * *(v7 + 32);
    v12 = *v10;
    *(v11 + 16) = *(v10 + 2);
    *v11 = v12;
    ++*(v7 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v7, " must be , but got ");
  if (*v13)
  {
    v14 = &v36;
    v15 = v13;
    mlir::DiagnosticArgument::DiagnosticArgument(&v36, a2);
    v13 = v15;
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    if (v17 >= *(v15 + 36))
    {
      if (v16 <= &v36 && v16 + 24 * v17 > &v36)
      {
        v33 = &v36 - v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v17 + 1, 24);
        v13 = v15;
        v16 = *(v15 + 24);
        v14 = &v33[v16];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v17 + 1, 24);
        v13 = v15;
        v16 = *(v15 + 24);
        v14 = &v36;
      }
    }

    v18 = v16 + 24 * *(v13 + 32);
    v19 = *v14;
    *(v18 + 16) = *(v14 + 2);
    *v18 = v19;
    ++*(v13 + 32);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v44;
      v23 = __p;
      if (v44 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v44 = v21;
      operator delete(v23);
    }

    v24 = v41;
    if (v41)
    {
      v25 = v42;
      v26 = v41;
      if (v42 != v41)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            operator delete[](v27);
          }
        }

        while (v25 != v24);
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v20;
}

BOOL mlir::placement::TensorToMemrefAdaptor::verify(mlir::placement::TensorToMemrefAdaptor *this, Location a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = *this;
  Value = mlir::AffineMapAttr::getValue(&v40);
  if (Value == mlir::DictionaryAttr::end(&v40))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v40));
    if (v7)
    {
      if (!mlir::DenseIntElementsAttr::classof(v7))
      {
        goto LABEL_16;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v35[0] = v7;
      v35[1] = v8;
      Type = mlir::ElementsAttr::getType(v35);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v41[0] = v10;
      v41[1] = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(v41);
      if (v11 != 1 || (v37 = v7, v38[0] = mlir::ArrayAttr::getValue(&v37), v38[1] = v12, isSplat = mlir::ElementsAttr::isSplat(v38), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_16:
        v35[0] = "'placement.tensor_to_memref' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v36 = 259;
        mlir::emitError(a2.var0.var0, v35, v41);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v14 = __p;
          if (__p)
          {
            v15 = v47;
            v16 = __p;
            if (v47 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v47 = v14;
            operator delete(v16);
          }

          v17 = v44;
          if (!v44)
          {
            goto LABEL_74;
          }

          v18 = v45;
          v19 = v44;
          if (v45 == v44)
          {
LABEL_73:
            v45 = v17;
            operator delete(v19);
LABEL_74:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v13;
          }

          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              operator delete[](v20);
            }
          }

          while (v18 != v17);
LABEL_72:
          v19 = v44;
          goto LABEL_73;
        }

        return v13;
      }
    }
  }

  if (!v6)
  {
LABEL_52:
    if (!v5)
    {
      return 1;
    }

    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v35[0] = v5;
      v41[0] = mlir::AffineMapAttr::getValue(v35);
      if (mlir::Type::isUnsignedInteger(v41, 32))
      {
        return 1;
      }
    }

    v35[0] = "'placement.tensor_to_memref' op attribute 'interleave' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v36 = 259;
    mlir::emitError(a2.var0.var0, v35, v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v17 = v44;
      if (!v44)
      {
        goto LABEL_74;
      }

      v31 = v45;
      v19 = v44;
      if (v45 == v44)
      {
        goto LABEL_73;
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

      while (v31 != v17);
      goto LABEL_72;
    }

    return v13;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v41[0] = v6;
    mlir::AffineMapAttr::getValue(v41);
    goto LABEL_52;
  }

  v35[0] = "'placement.tensor_to_memref' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v36 = 259;
  mlir::emitError(a2.var0.var0, v35, v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v17 = v44;
    if (!v44)
    {
      goto LABEL_74;
    }

    v25 = v45;
    v19 = v44;
    if (v45 == v44)
    {
      goto LABEL_73;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        operator delete[](v26);
      }
    }

    while (v25 != v17);
    goto LABEL_72;
  }

  return v13;
}

void mlir::placement::TensorToMemref::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  if (a4)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a4);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  if (a6)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a6);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  __src = v27;
  v26 = 0x200000000;
  v11 = *a1;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::placement::TensorToMemref::inferReturnTypes(v11, v14, v15, v24[0], v24[1], Dictionary, v16, v17, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = __src;
  v19 = v26;
  v20 = *(a2 + 72);
  v21 = v20 + v26;
  if (v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v21, 8);
    LODWORD(v20) = *(a2 + 72);
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v20), v18, 8 * v19);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::placement::TensorToMemref::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = *MEMORY[0x1E69E9840];
  v64 = a6;
  LOBYTE(v65) = 0;
  v66 = 0;
  v67 = a9;
  v68 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v64);
    if (v66 == 1)
    {
      v66 = 0;
    }

    mlir::OperationName::OperationName(&v65, "placement.tensor_to_memref", 26, Context);
    v66 = 1;
  }

  v69 = a4;
  v70 = a5;
  if (a5)
  {
    v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::placement::TensorToMemrefAdaptor::verify(&v64, v15))
    {
      v61 = v69;
      v62 = 0;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v61, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v59 = v16;
        v60 = v17;
        if (v16)
        {
          isSplat = mlir::ElementsAttr::isSplat(&v59);
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
          v21 = v19;
          v61 = v63;
          v62 = 0x500000000;
          v22 = (8 * v19) >> 3;
          if (v22 < 6)
          {
            v23 = 0;
            v24 = 8 * v19;
            if (!v19)
            {
LABEL_19:
              LODWORD(v62) = v23 + (v24 >> 3);
              Value = mlir::AffineMapAttr::getValue(&v64);
              v30 = mlir::DictionaryAttr::end(&v64);
              v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v30, *(*(v65 + 96) + 8));
              if (v31)
              {
                v32 = *(*v31 + 136);
                v33 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
                v34 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? v31 : 0;
                v57 = v34;
                if (v33)
                {
                  isSplat = mlir::AffineMapAttr::getValue(&v57);
                }
              }

              v35 = mlir::AffineMapAttr::getValue(&v64);
              v36 = mlir::DictionaryAttr::end(&v64);
              v37 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v35, v36, *(*(v65 + 96) + 16));
              if (!v37 || (v38 = v37, !mlir::DenseIntElementsAttr::classof(v37)))
              {
LABEL_43:
                v46 = mlir::AffineMapAttr::getValue(&v64);
                v47 = mlir::DictionaryAttr::end(&v64);
                v48 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v46, v47, **(v65 + 96));
                if (v48 && *(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                {
                  v49 = v62;
                  if ((v62 & 0xFFFFFFFE) != 4)
                  {
                    v53 = mlir::UnrankedTensorType::get(isSplat);
                    goto LABEL_50;
                  }

                  Interleave = mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(&v64);
                  v51 = 16;
                  if (v49 == 4)
                  {
                    v51 = 8;
                  }

                  v52 = v61;
                  *(v61 + v51) *= Interleave;
                  v52[v49 - 1] /= Interleave;
                }

                v53 = mlir::MemRefType::get(v61, v62, isSplat, 0, 0, 0);
LABEL_50:
                v54 = *(a11 + 8);
                if (v54 >= *(a11 + 12))
                {
                  v56 = v53;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v54 + 1, 8);
                  v53 = v56;
                  v54 = *(a11 + 8);
                }

                *(*a11 + 8 * v54) = v53;
                ++*(a11 + 8);
                if (v61 != v63)
                {
                  free(v61);
                }

                return 1;
              }

              v57 = v38;
              v58 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v57, 8, 1, 0))
              {
                RawStringData = mlir::DenseElementsAttr::getRawStringData(&v57);
                LOBYTE(v21) = mlir::DenseElementsAttr::isSplat(&v57);
                mlir::ArrayAttr::getValue(&v57);
                mlir::DenseElementsAttr::getNumElements(&v57);
              }

              else
              {
                RawStringData = 0;
              }

              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v57, 8, 1, 0))
              {
                mlir::DenseElementsAttr::getRawStringData(&v57);
                mlir::DenseElementsAttr::isSplat(&v57);
                mlir::ArrayAttr::getValue(&v57);
                NumElements = mlir::DenseElementsAttr::getNumElements(&v57);
                v24 = NumElements;
                LODWORD(v62) = 0;
                if (NumElements <= HIDWORD(v62))
                {
                  v41 = 0;
                  v42 = 0;
                  if (!NumElements)
                  {
LABEL_42:
                    LODWORD(v62) = v42;
                    goto LABEL_43;
                  }
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, NumElements, 8);
                  v41 = v62;
                }
              }

              else
              {
                v41 = 0;
              }

              v43 = 0;
              v44 = v61 + 8 * v41;
              do
              {
                if (v21)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v43;
                }

                *&v44[8 * v43++] = *(RawStringData + 8 * v45);
              }

              while (v24 != v43);
              v42 = v41 + v24;
              goto LABEL_42;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v22, 8);
            v23 = v62;
            v24 = 8 * v21;
            if (!v21)
            {
              goto LABEL_19;
            }
          }

          memcpy(v61 + 8 * v23, ArgAttrsAttr, v24);
          v23 = v62;
          goto LABEL_19;
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }
    }
  }

  v25 = mlir::Float32Type::get(this, a2);
  v26 = mlir::UnrankedTensorType::get(v25);
  v27 = *(a11 + 8);
  if (v27 >= *(a11 + 12))
  {
    v55 = v26;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v27 + 1, 8);
    v26 = v55;
    LODWORD(v27) = *(a11 + 8);
  }

  *(*a11 + 8 * v27) = v26;
  ++*(a11 + 8);
  return 1;
}

void mlir::placement::TensorToMemref::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v27;
  v26 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::placement::TensorToMemref::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v26;
  v22 = *(a2 + 72);
  v23 = v22 + v26;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::placement::TensorToMemref::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v10 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = mlir::CallGraphNode::getCallableRegion(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = mlir::CallGraphNode::getCallableRegion(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = *this;
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v10, v7, "shape", 5) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v6, "resultElementType", 0x11) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v5, "interleave", 0xA) & 1) == 0 || (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

void mlir::placement::TensorToMemref::verify(mlir::Operation **this)
{
  v131 = *MEMORY[0x1E69E9840];
  v116 = *this;
  v3 = (*(*(*(v116 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v115[0] = v3;
  v115[1] = v4;
  if (!mlir::placement::MemrefToTensor::getShapeAttr(&v116) || !v115[0] || !mlir::CallOpInterface::getArgOperands(v115))
  {
    goto LABEL_32;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v115);
  if (v6)
  {
    v7 = 8 * v6;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_11:
  v8 = mlir::CallableOpInterface::getArgAttrsAttr(v115);
  NumElements = mlir::ShapedType::getNumElements(v8, v9);
  ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v116);
  LOBYTE(v122[0]) = ShapeAttr != 0;
  isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0);
  if ((isValidIntOrFloat & 1) == 0)
  {
    RawStringData = 0;
    if (isValidIntOrFloat <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    v13 = isValidIntOrFloat & 0xFFFFFFFFFFFFFFFELL;
    v15 = 1;
    v16 = 1;
    do
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 + 1;
      }

      v15 *= *(RawStringData + 8 * v17);
      v16 *= *(RawStringData + 8 * v18);
      v14 += 2;
    }

    while (v14 != v13);
    v2 = v16 * v15;
    goto LABEL_30;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
  isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
  mlir::ArrayAttr::getValue(&ShapeAttr);
  isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  if (!isValidIntOrFloat)
  {
    v2 = 1;
    goto LABEL_31;
  }

  if (isValidIntOrFloat > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v13 = 0;
  v2 = 1;
  do
  {
    if (isSplat)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    v2 *= *(RawStringData + 8 * v19);
    ++v13;
LABEL_30:
    ;
  }

  while (isValidIntOrFloat != v13);
LABEL_31:
  if (NumElements != v2)
  {
    v120 = 257;
    mlir::Operation::emitOpError(v116, &v117, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Input shape ");
    if (*v32)
    {
      v33 = &v112;
      v34 = v32;
      mlir::DiagnosticArgument::DiagnosticArgument(&v112, v115[0]);
      v35 = *(v34 + 24);
      v36 = *(v34 + 32);
      if (v36 >= *(v34 + 36))
      {
        if (v35 <= &v112 && v35 + 24 * v36 > &v112)
        {
          v105 = &v112 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, v34 + 40, v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v105[v35];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, v34 + 40, v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v112;
        }
      }

      else
      {
        v32 = v34;
      }

      v37 = v35 + 24 * *(v32 + 32);
      v38 = *v33;
      *(v37 + 16) = *(v33 + 2);
      *v37 = v38;
      ++*(v32 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " (");
    if (*v39)
    {
      v40 = *(v39 + 24);
      LODWORD(v112) = 5;
      v113 = NumElements;
      v41 = *(v39 + 32);
      v42 = &v112;
      if (v41 >= *(v39 + 36))
      {
        if (v40 <= &v112 && v40 + 24 * v41 > &v112)
        {
          v106 = &v112 - v40;
          v107 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
          v39 = v107;
          v40 = *(v107 + 24);
          v42 = &v106[v40];
        }

        else
        {
          v103 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, v39 + 40, v41 + 1, 24);
          v39 = v103;
          v40 = *(v103 + 24);
          v42 = &v112;
        }
      }

      v43 = v40 + 24 * *(v39 + 32);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(v39 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, " elements) is not compatible with shape attribute ");
    v46 = v45;
    v47 = mlir::placement::MemrefToTensor::getShapeAttr(&v116);
    if (*v46)
    {
      v48 = &v112;
      mlir::DiagnosticArgument::DiagnosticArgument(&v112, v47);
      v49 = v46 + 24;
      v50 = *(v46 + 24);
      v51 = *(v46 + 32);
      if (v51 >= *(v46 + 36))
      {
        if (v50 <= &v112 && v50 + 24 * v51 > &v112)
        {
          v108 = &v112 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v46 + 40, v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v108[v50];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, v46 + 40, v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v112;
        }
      }

      v52 = v50 + 24 * *(v46 + 32);
      v53 = *v48;
      *(v52 + 16) = *(v48 + 2);
      *v52 = v53;
      ++*(v46 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v46, " (");
    if (*v54)
    {
      v55 = *(v54 + 24);
      LODWORD(v112) = 2;
      v113 = v2;
      v56 = *(v54 + 32);
      v57 = &v112;
      if (v56 >= *(v54 + 36))
      {
        if (v55 <= &v112 && v55 + 24 * v56 > &v112)
        {
          v109 = &v112 - v55;
          v110 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, v54 + 40, v56 + 1, 24);
          v54 = v110;
          v55 = *(v110 + 24);
          v57 = &v109[v55];
        }

        else
        {
          v104 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, v54 + 40, v56 + 1, 24);
          v54 = v104;
          v55 = *(v104 + 24);
          v57 = &v112;
        }
      }

      v58 = v55 + 24 * *(v54 + 32);
      v59 = *v57;
      *(v58 + 16) = *(v57 + 2);
      *v58 = v59;
      ++*(v54 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " elements)");
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
    }

    if ((v130 & 1) == 0)
    {
      return;
    }

    if (v129 != &v130)
    {
      free(v129);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v128;
      v63 = __p;
      if (v128 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v128 = v61;
      operator delete(v63);
    }

    v64 = v125;
    if (v125)
    {
      v65 = v126;
      v66 = v125;
      if (v126 == v125)
      {
        goto LABEL_101;
      }

      do
      {
        v68 = *--v65;
        v67 = v68;
        *v65 = 0;
        if (v68)
        {
          operator delete[](v67);
        }
      }

      while (v65 != v64);
LABEL_100:
      v66 = v125;
LABEL_101:
      v126 = v64;
      operator delete(v66);
    }

LABEL_102:
    if (v123 != &v124)
    {
      free(v123);
    }

    return;
  }

LABEL_32:
  ShapeAttr = mlir::Operation::getAttrDictionary(v116);
  Value = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v116);
  v21 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v21 + 16 * v22), **(*(v116 + 6) + 96));
  if (!v23)
  {
    return;
  }

  v24 = *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v115[0] == 0;
  if (v24 || !mlir::CallOpInterface::getArgOperands(v115))
  {
    return;
  }

  v25 = mlir::CallableOpInterface::getArgAttrsAttr(v115);
  if (!v26)
  {
LABEL_42:
    ShapeAttr = mlir::Operation::getAttrDictionary(v116);
    v28 = mlir::ArrayAttr::getValue(&ShapeAttr);
    ShapeAttr = mlir::Operation::getAttrDictionary(v116);
    v29 = mlir::ArrayAttr::getValue(&ShapeAttr);
    v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 + 16 * v30), **(*(v116 + 6) + 96));
    if (v31)
    {
      if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v117 = v31;
        mlir::IntegerAttr::getValue(&v117, &ShapeAttr);
        if (v122[0] >= 0x41u)
        {
          p_ShapeAttr = ShapeAttr;
        }

        else
        {
          p_ShapeAttr = &ShapeAttr;
        }

        v31 = *p_ShapeAttr;
        if (v122[0] >= 0x41u && ShapeAttr)
        {
          v70 = *p_ShapeAttr;
          operator delete[](ShapeAttr);
          v31 = v70;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    mlir::getANENextSupportedInterleaveValue(v31);
    if (v71)
    {
      v117 = v119;
      v118 = 0x400000000;
      if (!mlir::placement::MemrefToTensor::getShapeAttr(&v116))
      {
        v80 = mlir::CallableOpInterface::getArgAttrsAttr(v115);
        v81 = mlir::CallableOpInterface::getArgAttrsAttr(v115);
        v82 = 0;
        v84 = (v81 + 8 * v83);
        LODWORD(v118) = 0;
        v85 = (v84 - v80) >> 3;
        if (v85 > HIDWORD(v118))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v85, 8);
          v82 = v118;
        }

        if (v84 != v80)
        {
          memcpy(v117 + 8 * v82, v80, v84 - v80);
          v82 = v118;
        }

        v86 = v82 + ((v84 - v80) >> 3);
        goto LABEL_121;
      }

      ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v116);
      LOBYTE(v122[0]) = ShapeAttr != 0;
      if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
      {
        v72 = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
        isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
        mlir::ArrayAttr::getValue(&ShapeAttr);
        mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
      }

      else
      {
        v72 = 0;
      }

      v112 = mlir::placement::MemrefToTensor::getShapeAttr(&v116);
      LOBYTE(v113) = v112 != 0;
      if (mlir::DenseElementsAttr::isValidIntOrFloat(&v112, 8, 1, 0))
      {
        mlir::DenseElementsAttr::getRawStringData(&v112);
        mlir::DenseElementsAttr::isSplat(&v112);
        mlir::ArrayAttr::getValue(&v112);
        v87 = mlir::DenseElementsAttr::getNumElements(&v112);
        v2 = v87;
        LODWORD(v118) = 0;
        if (v87 <= HIDWORD(v118))
        {
          v88 = 0;
          v86 = 0;
          if (!v87)
          {
LABEL_121:
            LODWORD(v118) = v86;
            v92 = v86;
            if (v86 - 6 > 0xFFFFFFFFFFFFFFFDLL)
            {
              ShapeAttr = mlir::Operation::getAttrDictionary(v116);
              v94 = mlir::ArrayAttr::getValue(&ShapeAttr);
              ShapeAttr = mlir::Operation::getAttrDictionary(v116);
              v95 = mlir::ArrayAttr::getValue(&ShapeAttr);
              v97 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v94, (v95 + 16 * v96), **(*(v116 + 6) + 96));
              if (v97 && *(*v97 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v112 = v97;
                mlir::IntegerAttr::getValue(&v112, &ShapeAttr);
                if (v122[0] >= 0x41u)
                {
                  v102 = ShapeAttr;
                }

                else
                {
                  v102 = &ShapeAttr;
                }

                v98 = *v102;
                if (v122[0] >= 0x41u && ShapeAttr)
                {
                  operator delete[](ShapeAttr);
                }
              }

              else
              {
                v98 = 0;
              }

              v111 = v98;
              if (*(v117 + v92 - 1) % v98)
              {
                v114 = 257;
                mlir::Operation::emitOpError(v116, &v112, &ShapeAttr);
                if (ShapeAttr)
                {
                  mlir::Diagnostic::append<char const(&)[7]>(v122, "width ");
                }

                mlir::InFlightDiagnostic::operator<<<long long &>(&ShapeAttr, v117 + v92 - 1);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v99, " must be a multiple of interleave ");
                mlir::InFlightDiagnostic::operator<<<long long &>(v100, &v111);
                mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAttr);
              }
            }

            else
            {
              v114 = 257;
              mlir::Operation::emitOpError(v116, &v112, &ShapeAttr);
              mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Interleave can only be applied on 4D or 5D tensor");
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
              if (ShapeAttr)
              {
                mlir::InFlightDiagnostic::report(&ShapeAttr);
              }

              if (v130 == 1)
              {
                mlir::Diagnostic::~Diagnostic(v122);
              }
            }

            if (v117 != v119)
            {
              free(v117);
            }

            return;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v87, 8);
          v88 = v118;
        }
      }

      else
      {
        v88 = 0;
      }

      v89 = 0;
      v90 = v117 + 8 * v88;
      do
      {
        if (isSplat)
        {
          v91 = 0;
        }

        else
        {
          v91 = v89;
        }

        *&v90[8 * v89++] = *(v72 + 8 * v91);
      }

      while (v2 != v89);
      v86 = v88 + v2;
      goto LABEL_121;
    }

    v120 = 257;
    mlir::Operation::emitOpError(v116, &v117, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "interleave factor not supported");
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
    }

    if (v130 != 1)
    {
      return;
    }

    if (v129 != &v130)
    {
      free(v129);
    }

    v74 = __p;
    if (__p)
    {
      v75 = v128;
      v76 = __p;
      if (v128 != __p)
      {
        do
        {
          v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
        }

        while (v75 != v74);
        v76 = __p;
      }

      v128 = v74;
      operator delete(v76);
    }

    v64 = v125;
    if (v125)
    {
      v77 = v126;
      v66 = v125;
      if (v126 == v125)
      {
        goto LABEL_101;
      }

      do
      {
        v79 = *--v77;
        v78 = v79;
        *v77 = 0;
        if (v79)
        {
          operator delete[](v78);
        }
      }

      while (v77 != v64);
      goto LABEL_100;
    }

    goto LABEL_102;
  }

  v27 = 8 * v26;
  while (*v25 != 0x8000000000000000)
  {
    ++v25;
    v27 -= 8;
    if (!v27)
    {
      goto LABEL_42;
    }
  }
}