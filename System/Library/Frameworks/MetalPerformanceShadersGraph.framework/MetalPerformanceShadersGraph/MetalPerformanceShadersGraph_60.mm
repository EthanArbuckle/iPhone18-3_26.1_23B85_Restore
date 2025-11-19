uint64_t OUTLINED_FUNCTION_122_1()
{
  if (v0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_124_1@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

void OUTLINED_FUNCTION_125_1(uint64_t a1, uint64_t a2, unint64_t a3)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v3, a3, 8);
}

void OUTLINED_FUNCTION_126_1(uint64_t a1, uint64_t a2, unint64_t a3)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v3, a3, 8);
}

uint64_t OUTLINED_FUNCTION_131_0(uint64_t a1)
{
  *(v1 - 136) = a1;

  return mlir::ArrayAttr::getValue((v1 - 136));
}

void OUTLINED_FUNCTION_140_0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a2;
  *(v2 - 160) = v2 - 144;
  *(v2 - 144) = a1;
}

uint64_t OUTLINED_FUNCTION_142_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a29 = a1;

  return mlir::Value::getLoc(&a29);
}

uint64_t OUTLINED_FUNCTION_144_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = a1;

  return mlir::Value::getLoc(&a27);
}

uint64_t OUTLINED_FUNCTION_145_0@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_146_0(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

uint64_t OUTLINED_FUNCTION_148_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = a1;

  return mlir::Value::getLoc(&a27);
}

uint64_t OUTLINED_FUNCTION_149_0(uint64_t a1, mlir::MLIRContext *a2)
{

  return mlir::Builder::getUnitAttr((v2 + 8), a2);
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1, uint64_t a2)
{
}

void OUTLINED_FUNCTION_158_0(uint64_t a1, uint64_t a2, unint64_t a3)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v3, a3, 8);
}

double mlir::mps::createRefineDynamicShapeInfoPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x178uLL);
  result = 0.0;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[13] = 0u;
  v3[14] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v3[17] = 0u;
  v3[18] = 0u;
  v3[19] = 0u;
  v3[22] = 0u;
  *(v3 + 46) = 0;
  *(v3 + 2) = "func.func";
  *(v3 + 3) = 9;
  *(v3 + 32) = 1;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 49) = 4;
  *(v3 + 29) = v3 + 248;
  *(v3 + 61) = 4;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 37) = 0x1000000000;
  v3[19] = 0u;
  v3[20] = 0u;
  v3[20] = 0u;
  v3[21] = 0u;
  *(v3 + 42) = 0;
  *(v3 + 43) = 0;
  *v3 = &unk_1F5AFE6E8;
  *(v3 + 44) = 0;
  *(v3 + 45) = 0;
  *(v3 + 92) = 0;
  *a1 = v3;
  return result;
}

void mlir::mps::anonymous namespace::RefineDynamicShapes::~RefineDynamicShapes(llvm **this)
{
  *this = &unk_1F5AFE6E8;
  llvm::deallocate_buffer(this[44], (16 * *(this + 92)));
}

{
}

void sub_1DFCDC018(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::RefineDynamicShapes::runOnOperation(mlir::mps::_anonymous_namespace_::RefineDynamicShapes *this)
{
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v3 = &v2[8 * v2[10] + 4 * ((v2[11] >> 23) & 1)] + ((v2[11] >> 21) & 0x7F8);
  v5 = *(v3 + 64);
  v4 = v3 + 64;
  if (v5 != v4)
  {
    v6 = *(v4 + 8);
    v7 = v6 ? v6 - 8 : 0;
    v8 = *(v7 + 48);
    for (i = *(v7 + 56); v8 != i; ++v8)
    {
      v11 = *v8;
      v12 = (*(*v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8))
      {
        v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
        v19 = v12;
        v20 = v13;
        if (!v12)
        {
          continue;
        }

        if (mlir::CallOpInterface::getArgOperands(&v19))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v19);
          if (!v15)
          {
            continue;
          }

          v16 = 8 * v15;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_8;
            }
          }
        }

        v10 = *(this + 43);
        *(this + 43) = v10 + 1;
        v18 = v11;
        *llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](this + 352, &v18) = v10;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

LABEL_8:
      ;
    }
  }

  v19 = this;
}

double mlir::mps::MPSRefineDynamicShapesBase<mlir::mps::anonymous namespace::RefineDynamicShapes>::clonePass@<D0>(void *a1@<X8>)
{
  v2 = operator new(0x178uLL);
  v2[2] = "func.func";
  v2[3] = 9;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *(v2 + 120) = 0;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[22] = 0;
  v2[23] = v2 + 25;
  v2[24] = 0x400000000;
  v2[29] = v2 + 31;
  v2[30] = 0x400000000;
  v2[35] = 0;
  v2[36] = 0;
  v2[37] = 0x1000000000;
  v2[42] = 0;
  v2[43] = 0;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *v2 = &unk_1F5AFE6E8;
  v2[44] = 0;
  v2[45] = 0;
  *(v2 + 92) = 0;
  *a1 = v2;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v7 = 0;
    v8 = 1;
    while (v6 != -4096)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 == -8192;
      }

      if (v9)
      {
        v7 = v5;
      }

      v10 = v4 + v8++;
      v4 = v10 & v3;
      v5 = (*a1 + 16 * (v10 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v7)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v11 = *(a1 + 8);
  if (4 * v11 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v11 = *(v14 + 8);
    v5 = v15;
    goto LABEL_15;
  }

  if (v2 + ~v11 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v11 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = ((v25 >> 4) ^ (v25 >> 9)) & v16;
          v23 = (*a1 + 16 * v26);
          v27 = *v23;
          if (v25 != *v23)
          {
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
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = (*a1 + 16 * (v31 & v16));
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::mps::anonymous namespace::RefineDynamicShapes::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v55[8] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 36);
  v3 = a2 - 16;
  if (v2)
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = *a1;
  v8 = v2 - 1;
  do
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6);
    if (hasDynamicShapes)
    {
      break;
    }
  }

  while (v8 != v6++);
  if (!hasDynamicShapes)
  {
    return 1;
  }

  if ((*(a2 + 46) & 0x80) != 0 && (v12 = *(a2 + 68), v12))
  {
    v13 = 0;
    v14 = (*(a2 + 72) + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      --v12;
    }

    while (v12);
    v46 = v13 > 1;
  }

  else
  {
    v46 = 0;
  }

  if (!mlir::OpInterface<mlir::MapDynamicShapeOpInterface,mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v49 = 0;
    v50 = 0;
    goto LABEL_20;
  }

  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::MapDynamicShapeOpInterface,mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v49 = a2;
  v50 = InterfaceFor;
  if (!a2)
  {
LABEL_20:
    v17 = *(a2 + 36);
    if (v17)
    {
      v18 = v3;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, i);
        {
          v21 = *(v7 + 344);
          *(v7 + 344) = v21 + 1;
          v53 = v20;
          *llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](v7 + 352, &v53) = v21;
        }
      }
    }

    return 1;
  }

  mlir::MapDynamicShapeOpInterface::mapDynamicShape(&v53, &v49);
  v22 = *(a2 + 36);
  if (v22)
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

  v48 = v23;
  v24 = v53;
  v25 = v54;
  if (v22 && v54)
  {
    v26 = 0;
    v47 = v53 + 64 * v54;
    do
    {
      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, v26);
      v28 = *(v24 + 2);
      if (v28)
      {
        v29 = v27;
        v30 = *v24;
        v31 = 8 * v28;
        v32 = -1;
        while (*v30 != -1)
        {
          v33 = *(*(a2 + 72) + 32 * *v30 + 24);
          {
            v51[0] = v33;
            v34 = llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](v7 + 352, v51);
            if (v32 == -1)
            {
              v32 = *v34;
            }

            else if (v32 != *v34)
            {
              v35 = *(v7 + 344);
              *(v7 + 344) = v35 + 1;
              v51[0] = v29;
              *llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](v7 + 352, v51) = v35;
              goto LABEL_51;
            }
          }

          ++v30;
          v31 -= 8;
          if (!v31)
          {
            goto LABEL_46;
          }
        }

        v36 = *(v7 + 344);
        *(v7 + 344) = v36 + 1;
        v51[0] = v29;
        *llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](v7 + 352, v51) = v36;
LABEL_46:
        if (v32 != -1)
        {
          v51[0] = v29;
          *llvm::DenseMapBase<llvm::DenseMap<void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>,void *,long long,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,long long>>::operator[](v7 + 352, v51) = v32;
          {
          }

          if (((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID(void)::id) & v46) == 1)
          {
            Context = mlir::Attribute::getContext(((*(v7 + 40) & 0xFFFFFFFFFFFFFFF8) + 24));
            v39 = mlir::UnitAttr::get(Context, v38);
            v40 = mlir::Attribute::getContext((a2 + 24));
            v52 = 261;
            v51[0] = "__no_dynamic_broadcast";
            v51[1] = 22;
            v41 = mlir::StringAttr::get(v40, v51);
            mlir::Operation::setAttr(a2, v41, v39);
          }
        }
      }

LABEL_51:
      if (++v26 == v22)
      {
        break;
      }

      v24 += 64;
    }

    while (v24 != v47);
    v24 = v53;
    v25 = v54;
  }

  if (v25)
  {
    v42 = v25 << 6;
    v43 = &v24[v42 - 64];
    v44 = -v42;
    do
    {
      if (v43 + 2 != *v43)
      {
        free(*v43);
      }

      v43 -= 8;
      v44 += 64;
    }

    while (v44);
    v24 = v53;
  }

  if (v24 != v55)
  {
    free(v24);
  }

  return 1;
}

uint64_t mlir::mps::anonymous namespace::hasDynamicShapes(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v1)
  {
    v2 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v3 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
    while (1)
    {
      v4 = *(*v3 + 136);
      {
        v2 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
      }

      if (v4 != v2[130])
      {
        break;
      }

      v3 = v3[1];
      if (!v3)
      {
        v1 = 0;
        goto LABEL_10;
      }
    }

    v1 = v3;
  }

  else
  {
    v3 = 0;
  }

LABEL_10:
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8))
  {
    v3 = 0;
    v13 = 0;
    v14 = 0;
    return (v3 != 0) & v5;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v1 + 8);
  v13 = v3;
  v14 = v6;
  if (v3)
  {
    if (!mlir::CallOpInterface::getArgOperands(&v13))
    {
      goto LABEL_24;
    }

    if (!mlir::CallOpInterface::getArgOperands(&v13))
    {
      v5 = 1;
      return (v3 != 0) & v5;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v13);
    if (v8)
    {
      v9 = 8 * v8 - 8;
      do
      {
        v10 = *ArgAttrsAttr++;
        v5 = v10 == 0x8000000000000000;
        v11 = v10 == 0x8000000000000000 || v9 == 0;
        v9 -= 8;
      }

      while (!v11);
    }

    else
    {
LABEL_24:
      v5 = 0;
    }
  }

  return (v3 != 0) & v5;
}

uint64_t mlir::OpInterface<mlir::MapDynamicShapeOpInterface,mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::MapDynamicShapeOpInterface,mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::MapDynamicShapeOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::MapDynamicShapeOpInterface,mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::MapDynamicShapeOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::MapDynamicShapeOpInterface,mlir::detail::MapDynamicShapeOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::MapDynamicShapeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ResultsBroadcastableShape<Empty>]";
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

uint64_t mlir::mps::createGPURegionFormationPass@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x3C8uLL);
  *v5 = &unk_1F5AFE758;
  *(v5 + 888) = *a1;
  v6 = *(v5 + 944);
  if (v6)
  {
    result = (*(*v6 + 48))(v6, a1);
    *a2 = v4;
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSGPURegionFormationBase<mlir::mps::anonymous namespace::GPURegionFormationPass>::MPSGPURegionFormationBase(uint64_t a1)
{
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
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5AFE7C8;
  *&v5 = "Device placement hints are strict.";
  *(&v5 + 1) = 34;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "strict-hints", 12, &v5, &v4);
  *(a1 + 344) = &unk_1F5AFB130;
  *(a1 + 536) = &unk_1F5AFB1B0;
  *&v5 = "Insert instrumentation for perf recording.";
  *(&v5 + 1) = 42;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 552, (a1 + 152), "insert-instrumentation", 22, &v5, &v4);
  *(a1 + 552) = &unk_1F5AFB130;
  *(a1 + 744) = &unk_1F5AFB1B0;
  *&v5 = "Whether to duplicate variable creating operations for each region they are used in.";
  *(&v5 + 1) = 83;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 760, (a1 + 152), "duplicate-var-operations", 24, &v5, &v4);
  *(a1 + 760) = &unk_1F5AFB130;
  *(a1 + 952) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::mps::anonymous namespace::GPURegionFormationPass::~GPURegionFormationPass(mlir::mps::_anonymous_namespace_::GPURegionFormationPass *this)
{
  *this = &unk_1F5AFE7C8;
  *(this + 95) = &unk_1F5B3E720;
  v2 = this + 920;
  v3 = *(this + 118);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 95) = &unk_1F5B3E1D8;
  v4 = *(this + 107);
  if (v4 != *(this + 106))
  {
    free(v4);
  }

  v5 = *(this + 103);
  if (v5 != this + 840)
  {
    free(v5);
  }

  *(this + 69) = &unk_1F5B3E720;
  v6 = *(this + 92);
  if (v6 == (this + 712))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 69) = &unk_1F5B3E1D8;
  v7 = *(this + 81);
  if (v7 != *(this + 80))
  {
    free(v7);
  }

  v8 = *(this + 77);
  if (v8 != this + 632)
  {
    free(v8);
  }

  *(this + 43) = &unk_1F5B3E720;
  v9 = *(this + 66);
  if (v9 == (this + 504))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v10 = *(this + 55);
  if (v10 != *(this + 54))
  {
    free(v10);
  }

  v11 = *(this + 51);
  if (v11 != this + 424)
  {
    free(v11);
  }

  mlir::Pass::~Pass(this);
}

{

  operator delete(v1);
}

void mlir::mps::anonymous namespace::GPURegionFormationPass::runOnOperation(mlir::mps::_anonymous_namespace_::GPURegionFormationPass *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v8[0] = mlir::Attribute::getContext((v2 + 24));
  v8[1] = 0;
  v8[2] = *(v2 + 16);
  v8[3] = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v2, v3);
  v4 = *(this + 472);
  v5 = *(this + 680);
  v6 = *(this + 888);
  v9[1] = v8;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v10 = vnegq_f64(v7);
  v11 = 0;
  v9[0] = &unk_1F5AFE838;
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = &unk_1F5AFD7B0;
  v13 = 0;
  v18 = 0;
  v19 = 0;
  v14 = v16;
  v15 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v20 = 0;
  v21 = 16;
  v22 = 0;
  v23 = 0;
  v24 = 0x2800000000;
  v25 = 0;
  v26 = v8[0];
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = &v32;
  v32 = "func";
  v33 = 4;
  v31 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v12, &v32, 1, 2);
  if (v30 != &v32)
  {
    free(v30);
  }

  mlir::OperationName::OperationName(&v30, "placement.region_call", 21, v26);
  mlir::ConversionTarget::setOpAction(v12, v30, 2);
  mlir::OperationName::OperationName(&v30, "placement.tensor_to_memref", 26, v26);
  mlir::ConversionTarget::setOpAction(v12, v30, 2);
  mlir::OperationName::OperationName(&v30, "placement.memref_to_tensor", 26, v26);
  mlir::ConversionTarget::setOpAction(v12, v30, 2);
  v30 = &v32;
  v32 = "mpsx";
  v33 = 4;
  v31 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v12, &v32, 1, 0);
  if (v30 != &v32)
  {
    free(v30);
  }

  v30 = &v32;
  v32 = "mps";
  v33 = 3;
  v31 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v12, &v32, 1, 0);
  if (v30 != &v32)
  {
    free(v30);
  }

  v30 = &v32;
  v32 = "mps_spi";
  v33 = 7;
  v31 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v12, &v32, 1, 0);
  if (v30 != &v32)
  {
    free(v30);
  }

  v30 = &v32;
  v32 = "tensor";
  v33 = 6;
  v31 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v12, &v32, 1, 2);
  if (v30 != &v32)
  {
    free(v30);
  }

  v30 = &v32;
  v32 = "scf";
  v33 = 3;
  v31 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v12, &v32, 1, 2);
  if (v30 != &v32)
  {
    free(v30);
  }

  if ((mlir::collectRegions((*(this + 5) & 0xFFFFFFFFFFFFFFF8), v9, 0) & 1) == 0)
  {
    *(this + 5) |= 4uLL;
  }

  v9[0] = &unk_1F5AFE838;
  mlir::ConversionTarget::~ConversionTarget(v12);
}

uint64_t mlir::mps::MPSGPURegionFormationBase<mlir::mps::anonymous namespace::GPURegionFormationPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x3C8uLL);
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
  *v4 = &unk_1F5AFE7C8;
  *&v9 = "Device placement hints are strict.";
  *(&v9 + 1) = 34;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 344, v4 + 19, "strict-hints", 12, &v9, &v8);
  *(v4 + 43) = &unk_1F5AFB130;
  *(v4 + 67) = &unk_1F5AFB1B0;
  *&v9 = "Insert instrumentation for perf recording.";
  *(&v9 + 1) = 42;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 552, v4 + 19, "insert-instrumentation", 22, &v9, &v8);
  *(v4 + 69) = &unk_1F5AFB130;
  *(v4 + 93) = &unk_1F5AFB1B0;
  *&v9 = "Whether to duplicate variable creating operations for each region they are used in.";
  *(&v9 + 1) = 83;
  v7 = 0;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 760, v4 + 19, "duplicate-var-operations", 24, &v9, &v8);
  *(v4 + 95) = &unk_1F5AFB130;
  *(v4 + 119) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5AFE758;
  *a2 = v4;
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::placement::PlacementDialect,mlir::mpsx::MPSXDialect,mlir::tensor::TensorDialect,mlir::scf::SCFDialect>(uint64_t **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5AFCC40;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  v3[0] = &unk_1F5AFAEA8;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  return mlir::DialectRegistry::insert<mlir::tensor::TensorDialect,mlir::scf::SCFDialect>(a1);
}

uint64_t mlir::DialectRegistry::insert<mlir::tensor::TensorDialect,mlir::scf::SCFDialect>(uint64_t **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5AFB360;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v3);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))();
  }

  v3[0] = &unk_1F5AFAEF0;
  v4 = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void mlir::mps::anonymous namespace::GPURegionOpCreator::~GPURegionOpCreator(mlir::mps::_anonymous_namespace_::GPURegionOpCreator *this)
{
  *this = &unk_1F5AFE838;
  mlir::ConversionTarget::~ConversionTarget((this + 40));
}

{
  *this = &unk_1F5AFE838;
  mlir::ConversionTarget::~ConversionTarget((this + 40));
}

void sub_1DFCDDC28()
{

  operator delete(v0);
}

uint64_t mlir::mps::anonymous namespace::GPURegionOpCreator::getMarkAttrID(mlir::mps::_anonymous_namespace_::GPURegionOpCreator *this)
{
  v1 = *(this + 1);
  v3 = "GPU_region";
  v4 = 259;
  return mlir::Builder::getStringAttr(v1, &v3);
}

uint64_t mlir::mps::anonymous namespace::GPURegionOpCreator::isOpCompatible(mlir::mps::_anonymous_namespace_::GPURegionOpCreator *this, mlir::Operation *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  isLegal = mlir::ConversionTarget::isLegal((this + 40), a2);
  if (!*(a2 + 47) || (v15.var0 = "device_hint", v15.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(a2, v15), (v6 & 1) == 0))
  {
    v16.var0 = "device_hint";
    v16.var1 = 11;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v16);
  }

  if (!InherentAttr)
  {
    return (isLegal >> 8) & 1;
  }

  v7 = *(*InherentAttr + 136);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id;
  v9 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id ? InherentAttr : 0;
  v12 = v9;
  if (!v8)
  {
    return (isLegal >> 8) & 1;
  }

  if (mlir::arith::FastMathFlagsAttr::getValue(&v12) == 1 && *(this + 200) == 1 && (isLegal & 0x100) == 0)
  {
  }

  if (mlir::arith::FastMathFlagsAttr::getValue(&v12) != 1)
  {
    return 0;
  }

  else
  {
    return (isLegal >> 8) & 1;
  }
}

uint64_t mlir::mps::anonymous namespace::GPURegionOpCreator::getRegionOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir::IRMapping *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v32[0] = a6;
  v32[1] = a7;
  v31[0] = a9;
  v31[1] = a10;
  v30[0] = a11;
  v30[1] = a12;
  v29[0] = a13;
  v29[1] = a14;
  v28[0] = a15;
  v28[1] = a16;
  v24 = 773;
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = "_GPU_region_";
  v25[0] = v23;
  v25[2] = &a17;
  v26 = 2818;
  llvm::Twine::str(v25, &__p);
  v20 = *(a1 + 8);
  v25[0] = 0;
  v25[1] = 0;
  result = mlir::OpBuilder::create<mlir::mpsx::GPUOp,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v20, a2, &__p.__r_.__value_.__l.__data_, a5, v30, v29, v32, v31, v28, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v22 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v22;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::GPURegionOpCreator::getRegionTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::ArrayRef<mlir::Value> &>(*(a1 + 8), a2, v5);
}

uint64_t mlir::mps::anonymous namespace::GPURegionOpCreator::getBody(mlir::mps::_anonymous_namespace_::GPURegionOpCreator *this, mlir::Operation *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    return *(a2 + 2);
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::GPURegionOpCreator::replaceOutOfRegionUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 36);
  v7 = a2 - 16;
  if (v6)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v24.n128_u64[0] = v8;
  v24.n128_u64[1] = v6;
  mlir::ResultRange::use_begin(&v24, &v25);
  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v24.n128_u64[0] = v10;
  v24.n128_u64[1] = v9;
  mlir::ResultRange::use_end(&v24, v22);
  v11 = v26;
  v12 = v23;
  if (v26 == v23)
  {
    return 1;
  }

  while (1)
  {
    v13 = *(v11 + 16);
    {
    }

    if ((*(**(v13 + 48) + 32))(*(v13 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      goto LABEL_9;
    }

    v14 = *(a3 + 16);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = (v14 - 1) & ((v13 >> 4) ^ (v13 >> 9));
    v16 = *(*a3 + 8 * v15);
    if (v16 != v13)
    {
      break;
    }

LABEL_15:
    if (v15 == v14)
    {
      goto LABEL_23;
    }

LABEL_9:
    mlir::ResultRange::UseIterator::operator++(&v25);
    v11 = v26;
    if (v26 == v12)
    {
      return 1;
    }
  }

  v17 = 1;
  while (v16 != -4096)
  {
    v18 = v15 + v17++;
    v15 = v18 & (v14 - 1);
    v16 = *(*a3 + 8 * v15);
    if (v16 == v13)
    {
      goto LABEL_15;
    }
  }

LABEL_23:
  result = 1;
  if (a2 && (*(a1 + 202) & 1) != 0)
  {
    v20 = *(*(a2 + 48) + 16);
    return v20 != &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::GPURegionOpCreator::getCallOp(uint64_t a1, uint64_t a2, mlir::SymbolRefAttr *a3, uint64_t a4, uint64_t a5)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v9[1] = a5;
  v8 = a3;
  v5 = *(a1 + 8);
  v7 = 0;
  return mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(v5, a2, &v8, &v7, v9);
}

void *mlir::RegionOpCreator::getConvertedType(uint64_t a1, void *a2)
{
  if (a2)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
  }

  return a2;
}

uint64_t mlir::RegionOpCreator::getPromotedTypes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a4 + 8) = 0;
  v11 = a2;
  v12 = 0;
  if (a3)
  {
    v6 = result;
    for (i = 0; i != a3; v12 = i)
    {
      v8 = mlir::ValueRange::dereference_iterator(&v11, i);
      result = (*(*v6 + 168))(v6, *(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      v9 = *(a4 + 8);
      if (v9 >= *(a4 + 12))
      {
        v10 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v9 + 1, 8);
        result = v10;
        v9 = *(a4 + 8);
      }

      *(*a4 + 8 * v9) = result;
      ++*(a4 + 8);
      i = v12 + 1;
    }
  }

  return result;
}

{
  *(a4 + 8) = 0;
  if (a3)
  {
    v7 = result;
    for (i = 0; i != a3; ++i)
    {
      v9 = mlir::TypeRange::dereference_iterator(a2, i);
      result = (*(*v7 + 168))(v7, v9);
      v10 = *(a4 + 8);
      if (v10 >= *(a4 + 12))
      {
        v11 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v10 + 1, 8);
        result = v11;
        v10 = *(a4 + 8);
      }

      *(*a4 + 8 * v10) = result;
      ++*(a4 + 8);
    }
  }

  return result;
}

uint64_t mlir::RegionOpCreator::getClonedAttributes(mlir::RegionOpCreator *this, const mlir::DictionaryAttr *a2)
{
  Context = mlir::Attribute::getContext(a2);

  return mlir::DictionaryAttr::get(Context, 0, 0);
}

uint64_t mlir::RegionOpCreator::getClonedArgAttrs@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (!a5)
  {
    return result;
  }

  v8 = result;
  if (a5 < 7)
  {
    v9 = 0;
    v10 = a5;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 2), a5, 8);
  v9 = *(a6 + 2);
  v10 = a5 - v9;
  if (a5 != v9)
  {
LABEL_6:
    bzero((*a6 + 8 * v9), 8 * v10);
  }

  v11 = 0;
  *(a6 + 2) = a5;
  v12 = 1;
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v19, v11);
    if (result)
    {
      v13 = result;
      if ((*(result + 8) & 7) == 7)
      {
        v14 = *(result + 24);
        result = mlir::FunctionOpInterface::getArgumentTypes(&v17);
        if (v14 < v15)
        {
          result = mlir::function_interface_impl::getArgAttrDict(v17, v18, *(v13 + 24));
          v16 = result;
          if (result)
          {
            result = (*(*v8 + 192))(v8, &v16);
            *(*a6 + 8 * v11) = result;
          }
        }
      }
    }

    v11 = v12++;
  }

  while (v20 > v11);
  return result;
}

uint64_t mlir::RegionOpCreator::getClonedResultAttrs@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (!a5)
  {
    return result;
  }

  v8 = result;
  if (a5 < 7)
  {
    v9 = 0;
    v10 = a5;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 2), a5, 8);
  v9 = *(a6 + 2);
  v10 = a5 - v9;
  if (a5 != v9)
  {
LABEL_6:
    bzero((*a6 + 8 * v9), 8 * v10);
  }

  v11 = 0;
  *(a6 + 2) = a5;
  v12 = 1;
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v22, v11);
    if ((~*(result + 8) & 7) != 0)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = *(v13 + 8);
      v15 = (v14 & 7) == 6 ? *(v13 + 16) + 6 : v14 & 7;
      result = mlir::FunctionOpInterface::getResultTypes(&v20);
      if (v15 < v16)
      {
        v17 = *(v13 + 8);
        if ((v17 & 7) == 6)
        {
          v18 = *(v13 + 16) + 6;
        }

        else
        {
          v18 = v17 & 7;
        }

        result = mlir::function_interface_impl::getResultAttrDict(v20, v21, v18);
        v19 = result;
        if (result)
        {
          result = (*(*v8 + 192))(v8, &v19);
          *(*a6 + 8 * v11) = result;
        }
      }
    }

    v11 = v12++;
  }

  while (v23 > v11);
  return result;
}

uint64_t mlir::RegionOpCreator::finalizeArgAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  result = mlir::FunctionOpInterface::getArgumentTypes(&v10);
  if (v5)
  {
    for (i = 0; i < v7; ++i)
    {
      ArgAttrDict = mlir::function_interface_impl::getArgAttrDict(v10, v11, i);
      if (ArgAttrDict)
      {
        v8 = (*(*a1 + 216))(a1, &ArgAttrDict);
        mlir::function_interface_impl::setArgAttrs(v10, v11, i, v8);
      }

      result = mlir::FunctionOpInterface::getArgumentTypes(&v10);
    }
  }

  return result;
}

uint64_t mlir::RegionOpCreator::finalizeResultAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  result = mlir::FunctionOpInterface::getResultTypes(&v10);
  if (v5)
  {
    for (i = 0; i < v7; ++i)
    {
      ResultAttrDict = mlir::function_interface_impl::getResultAttrDict(v10, v11, i);
      if (ResultAttrDict)
      {
        v8 = (*(*a1 + 216))(a1, &ResultAttrDict);
        mlir::function_interface_impl::setResultAttrs(v10, v11, i, v8);
      }

      result = mlir::FunctionOpInterface::getResultTypes(&v10);
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::GPUOp,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::GPUOp,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = a3[1];
  }

  mlir::mpsx::CPUOp::build(a1, v31, v23, v24, a4, *a5, *(a5 + 8), v21, *a6, a6[1], *a7, *(a7 + 8), *a8, a8[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::ArrayRef<mlir::Value> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id)
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

uint64_t mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::FormableRegionOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::FormableRegionOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::FormableRegionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FormableRegionOpInterface]";
  v6 = 81;
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

void mlir::ConversionTarget::ConversionTarget(mlir::ConversionTarget *this, const mlir::ConversionTarget *a2)
{
  *this = &unk_1F5AFD7B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  llvm::deallocate_buffer(0, 0);
}

void sub_1DFCDED78()
{
  v3 = *(v1 + 24);
  *(v0 + 24) = v3;
  if (v3)
  {
    buffer = llvm::allocate_buffer(16 * v3, 8uLL);
    *(v0 + 8) = buffer;
    *(v0 + 16) = *(v1 + 16);
    memcpy(buffer, *(v1 + 8), 16 * *(v0 + 24));
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  *(v0 + 32) = v0 + 48;
  *(v0 + 40) = 0;
  if (*(v1 + 40))
  {
    llvm::SmallVectorImpl<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>>::operator=((v0 + 32), v1 + 32);
  }

  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::copyFrom(v0 + 48);
}

void *sub_1DFCDEDE4()
{
  llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::StringMap((v0 + 9), v1 + 9);
  llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::StringMap((v0 + 12), v1 + 12);
  v2 = v1[18];
  if (v2)
  {
    if (v2 == v1 + 15)
    {
      v0[18] = v0 + 15;
      (*(*v1[18] + 24))(v1[18]);
    }

    else
    {
      v0[18] = (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v0[18] = 0;
  }

  v0[19] = v1[19];
  return v0;
}

unsigned int *llvm::SmallVectorImpl<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = a1[2];
    if (v4 >= v3)
    {
      if (v3)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 48 * v3;
        do
        {
          std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>::operator=[abi:nn200100](v11, v10);
          v10 += 48;
          v11 += 48;
          v12 -= 48;
        }

        while (v12);
        v13 = *a1;
        LODWORD(v4) = a1[2];
      }

      else
      {
        v13 = *a1;
        v11 = *a1;
      }

      v27 = v13 + 48 * v4;
      if (v27 != v11)
      {
        v28 = v13 + 48 * v4 - 32;
        do
        {
          v29 = *(v27 - 8);
          if (v27 - 32 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v27 -= 48;
          v28 -= 48;
        }

        while (v27 != v11);
      }

      goto LABEL_39;
    }

    if (a1[3] >= v3)
    {
      v14 = *a1;
      if (!v4)
      {
        v4 = 0;
LABEL_23:
        v19 = *(a2 + 8);
        if (v4 != v19)
        {
          v20 = *a2;
          v21 = 48 * v4;
          v22 = 48 * v19;
          do
          {
            v23 = v14 + v21;
            v24 = v20 + v21;
            *v23 = *(v20 + v21);
            v25 = *(v20 + v21 + 8);
            *(v23 + 12) = *(v20 + v21 + 12);
            *(v23 + 8) = v25;
            v26 = *(v20 + v21 + 40);
            if (v26)
            {
              if (v24 + 16 == v26)
              {
                *(v14 + v21 + 40) = v23 + 16;
                (*(**(v24 + 40) + 24))(*(v24 + 40));
              }

              else
              {
                *(v14 + v21 + 40) = (*(*v26 + 16))(v26);
              }
            }

            else
            {
              *(v23 + 40) = 0;
            }

            v14 += 48;
            v22 -= 48;
            v20 += 48;
          }

          while (v21 != v22);
        }

LABEL_39:
        a1[2] = v3;
        return a1;
      }

      v5 = a2;
      v15 = *a2;
      v16 = 48 * v4;
      do
      {
        std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>::operator=[abi:nn200100](v14, v15);
        v15 += 48;
        v14 += 48;
        v16 -= 48;
      }

      while (v16);
      v14 = *a1;
    }

    else
    {
      v5 = a2;
      if (v4)
      {
        v6 = *a1 + 48 * v4 - 32;
        v7 = -48 * v4;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 48;
          v6 -= 48;
          v7 += 48;
        }

        while (v7);
      }

      a1[2] = 0;
      v31 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v3, 48, &v31);
      v14 = v17;
      llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::moveElementsForGrow(a1, v17);
      v18 = v31;
      if (*a1 != a1 + 4)
      {
        free(*a1);
      }

      v4 = 0;
      *a1 = v14;
      a1[3] = v18;
    }

    a2 = v5;
    goto LABEL_23;
  }

  return a1;
}

uint64_t std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v3;
  v4 = *(a2 + 40);
  if (v4)
  {
    if (v4 == a2 + 16)
    {
      v7 = v6;
      (*(*v4 + 24))(v4, v6);
    }

    else
    {
      v7 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v7 = 0;
  }

  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::swap[abi:nn200100](v6, a1 + 16);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

unsigned int *llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::moveElementsForGrow(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 40);
    v5 = 48 * v2;
    v6 = *result + 40;
    do
    {
      *(v4 - 5) = *(v6 - 40);
      v7 = *(v6 - 32);
      *(v4 - 28) = *(v6 - 28);
      *(v4 - 8) = v7;
      v8 = *v6;
      if (*v6)
      {
        if (v6 - 24 == v8)
        {
          *v4 = v4 - 3;
          result = (*(**v6 + 24))();
        }

        else
        {
          *v4 = v8;
          *v6 = 0;
        }
      }

      else
      {
        *v4 = 0;
      }

      v4 += 6;
      v6 += 48;
      v5 -= 48;
    }

    while (v5);
    v9 = v3[2];
    if (v9)
    {
      v10 = *v3 + 48 * v9 - 32;
      v11 = -48 * v9;
      v12 = v10;
      do
      {
        result = *(v12 + 24);
        if (v12 == result)
        {
          result = (*(*result + 32))(result);
        }

        else if (result)
        {
          result = (*(*result + 40))(result);
        }

        v12 -= 48;
        v10 -= 48;
        v11 += 48;
      }

      while (v11);
    }
  }

  return result;
}

void llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::copyFrom(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = (v3 + 32);
    v5 = v3 + 8;
    v6 = 40 * v2;
    do
    {
      if ((*(v4 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *v4;
        if (v4 - 3 == *v4)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }
      }

      v4 += 5;
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
    v3 = *a1;
    v8 = 40 * *(a1 + 16);
  }

  else
  {
    v8 = 0;
  }

  llvm::deallocate_buffer(v3, v8);
}

llvm::StringMapImpl *llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v8 = v4 + 8 * v5 + 8;
      v9 = v6 + 8 * v5 + 8;
      do
      {
        v10 = *(*a2 + 8 * v7);
        if (v10)
        {
          v11 = v10 == -8;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(*this + 8 * v7) = v10;
        }

        else
        {
          v12 = *v10;
          buffer = llvm::allocate_buffer(*v10 + 17, 8uLL);
          v14 = buffer;
          v15 = buffer + 16;
          if (v12)
          {
            memcpy(buffer + 16, (v10 + 16), v12);
          }

          v15[v12] = 0;
          *v14 = v12;
          *(v14 + 2) = *(v10 + 8);
          *(*this + 8 * v7) = v14;
          *(v8 + 4 * v7) = *(v9 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

llvm::StringMapImpl *llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2800000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v18 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        v9 = *(*a2 + 8 * v7);
        if (v9)
        {
          v10 = v9 + 1 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(*this + 8 * v7) = v9;
        }

        else
        {
          v11 = *v9;
          buffer = llvm::allocate_buffer(*v9 + 41, 8uLL);
          v13 = buffer;
          v14 = (buffer + 5);
          if (v11)
          {
            memcpy(buffer + 5, v9 + 5, v11);
          }

          v14[v11] = 0;
          *v13 = v11;
          v15 = v13 + 1;
          v16 = v9[4];
          if (v16)
          {
            if (v16 == v9 + 1)
            {
              v13[4] = v15;
              (*(*v16 + 24))(v16);
            }

            else
            {
              v13[4] = (*(*v16 + 16))(v16, v15);
            }
          }

          else
          {
            v13[4] = 0;
          }

          *(*this + 8 * v7) = v13;
          *(v18 + 4 * v7) = *(v8 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

uint64_t mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(mlir::MLIRContext **a1, uint64_t a2, mlir::SymbolRefAttr **a3, unsigned int *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::placement::RegionCall::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
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

_OWORD *mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(mlir::func::FuncOp *a1)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x48uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = v2 + 2;
  *(v2 + 5) = v2 + 2;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0;
  *(v2 + 6) = 0;
  v3 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  llvm::ilist_traits<mlir::Block>::addNodeToList(v3, v2);
  v4 = *v3;
  *(v2 + 2) = v3;
  *(v2 + 1) = v4;
  *(v4 + 8) = v2 + 8;
  *v3 = v2 + 8;
  FunctionType = mlir::func::FuncOp::getFunctionType(a1);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v7 = v5;
  v8 = *(*a1 + 24);
  FunctionType = v23;
  v22 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&FunctionType, v23, v5, 8);
    v9 = (FunctionType + 8 * (v7 & 0xFFFFFFFFFFFFFFFCLL));
    v10 = v7 & 3;
    v11 = vdupq_n_s64(v8);
    v12 = (FunctionType + 16);
    v13 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v7 != (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      do
      {
        *v9++ = v8;
        --v10;
      }

      while (v10);
    }

    goto LABEL_23;
  }

  if (v5)
  {
    v14 = vdupq_n_s64(v5 - 1);
    v15 = vmovn_s64(vcgeq_u64(v14, xmmword_1E09700F0));
    if (v15.i8[0])
    {
      v23[0] = v8;
    }

    v16 = (v5 + 1) & 0xE;
    if (v15.i8[4])
    {
      v23[1] = v8;
    }

    if (v16 != 2)
    {
      v17 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970220));
      if (v17.i8[0])
      {
        v23[2] = v8;
        if ((v17.i8[4] & 1) == 0)
        {
LABEL_15:
          if (v16 == 4)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      else if ((v17.i8[4] & 1) == 0)
      {
        goto LABEL_15;
      }

      v23[3] = v8;
      if (v16 == 4)
      {
        goto LABEL_23;
      }

LABEL_19:
      v18 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970230));
      if (v18.i8[0])
      {
        v23[4] = v8;
      }

      if (v18.i8[4])
      {
        v23[5] = v8;
      }
    }
  }

LABEL_23:
  LODWORD(v22) = v7;
  mlir::ValueRange::ValueRange(v20, Inputs, v7);
  mlir::Block::addArguments(v2, v20[0], v20[1], FunctionType, v22);
  if (FunctionType != v23)
  {
    free(FunctionType);
  }

  return v2;
}

void OUTLINED_FUNCTION_1_16(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a1 = a4;
  *(a1 + 32) = 259;

  mlir::Operation::emitOpError(a3, a2, v4);
}

uint64_t mlir::mps::createReorderOperationsPass@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x230uLL);
  v3[2] = "func.func";
  v3[3] = 9;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 120) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  v3[22] = 0;
  v3[23] = v3 + 25;
  v3[24] = 0x400000000;
  v3[29] = v3 + 31;
  v3[30] = 0x400000000;
  v3[35] = 0;
  v3[36] = 0;
  v3[37] = 0x1000000000;
  v3[42] = 0;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *v3 = &unk_1F5AFE9B8;
  *&v7 = "Max distance to move an op to reach goal.";
  *(&v7 + 1) = 41;
  v5 = 50;
  v6 = &v5;
  result = mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v3 + 43), v3 + 19, "max-reordering-distance", 23, &v7, &v6);
  v3[43] = &unk_1F5AFEA28;
  v3[68] = &unk_1F5AFEAA8;
  *v3 = &unk_1F5AFE948;
  *a1 = v3;
  return result;
}

void mlir::mps::anonymous namespace::ReorderOperationsPass::~ReorderOperationsPass(mlir::mps::_anonymous_namespace_::ReorderOperationsPass *this)
{
  *this = &unk_1F5AFE9B8;
  *(this + 43) = &unk_1F5AFEBA8;
  v2 = this + 512;
  v3 = *(this + 67);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v4 = *(this + 55);
  if (v4 != *(this + 54))
  {
    free(v4);
  }

  v5 = *(this + 51);
  if (v5 != this + 424)
  {
    free(v5);
  }

  *this = &unk_1F5B01A70;
  v6 = *(this + 39);
  if (v6)
  {
    *(this + 40) = v6;
    operator delete(v6);
  }

  if (*(this + 73))
  {
    v7 = *(this + 72);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = *(*(this + 35) + v8);
        if (v9 != -8 && v9 != 0)
        {
          llvm::deallocate_buffer(v9, (*v9 + 17));
        }

        v8 += 8;
      }

      while (8 * v7 != v8);
    }
  }

  free(*(this + 35));
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  v12 = *(this + 23);
  if (v12 != this + 200)
  {
    free(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  if (*(this + 120) == 1)
  {
    v14 = *(this + 8);
    if (v14 != *(this + 7))
    {
      free(v14);
    }
  }
}

{

  operator delete(v1);
}

void mlir::mps::anonymous namespace::ReorderOperationsPass::runOnOperation(mlir::mps::_anonymous_namespace_::ReorderOperationsPass *this)
{
  v1 = *(this + 5);
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v2 = *(this + 59);
  v3 = operator new(8uLL);
  *v3 = &unk_1F5AFECF8;
  v20 = v3;
  v21 = v2;
  v19 = &unk_1F5AFECC0;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v15[0] = &v19;
  v15[1] = __p;
  v15[2] = v13;
  while (*(&v18 + 1))
  {
    v4 = (*(__p[1] + ((v18 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v18);
    v5 = *v4;
    v6 = v4[1];
    *&v18 = v18 + 1;
    --*(&v18 + 1);
    if (v18 >= 0x200)
    {
      operator delete(*__p[1]);
      __p[1] = __p[1] + 8;
      *&v18 = v18 - 256;
    }

    (*(*v6 + 32))(v6, v5, __p, v13);
  }

  v7 = __p[1];
  v8 = v17;
  *(&v18 + 1) = 0;
  v9 = (v17 - __p[1]) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v8 = v17;
      v7 = (__p[1] + 8);
      __p[1] = v7;
      v9 = (v17 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v10 = 128;
  }

  else
  {
    if (v9 != 2)
    {
LABEL_13:
      if (v7 != v8)
      {
        do
        {
          v11 = *v7++;
          operator delete(v11);
        }

        while (v7 != v8);
        if (v17 != __p[1])
        {
          *&v17 = v17 + ((__p[1] - v17 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v12 = v20;
      v19 = &unk_1F5AFED50;
      v20 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      llvm::deallocate_buffer(v13[0], (8 * v14));
    }

    v10 = 256;
  }

  *&v18 = v10;
  goto LABEL_13;
}

uint64_t mlir::mps::MPSReorderOperationsBase<mlir::mps::anonymous namespace::ReorderOperationsPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x230uLL);
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
  *v4 = &unk_1F5AFE9B8;
  *&v9 = "Max distance to move an op to reach goal.";
  *(&v9 + 1) = 41;
  v7 = 50;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(v4 + 344, v4 + 152, "max-reordering-distance", 23, &v9, &v8);
  *(v4 + 43) = &unk_1F5AFEA28;
  *(v4 + 68) = &unk_1F5AFEAA8;
  *v4 = &unk_1F5AFE948;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v10, &v13, a5, a6);
  *(v8 + 208) = 0;
  *v8 = &unk_1F5AFEAE8;
  *(v8 + 200) = &unk_1F5AFEB68;
  v13 = (v8 + 200);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v13);
  v11[0] = &unk_1F5AFEC78;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_1F5AFEC78;
  v14 = a1;
  std::__function::__value_func<void ()(unsigned long const&)>::swap[abi:nn200100](&v13, a1 + 168);
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

uint64_t llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<unsigned long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 192);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *mlir::Pass::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option(void *a1)
{
  *a1 = &unk_1F5AFEBA8;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F5B3E1D8;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option(char *__p)
{
  *__p = &unk_1F5AFEBA8;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
    free(v4);
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 152) != 1 || *(a1 + 144) != *(a1 + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 128);
    v6 = *(a1 + 144);
    v8 = *(a1 + 152);
    v7[0] = &unk_1F5AFEC10;
    v7[1] = v6;
    llvm::cl::parser<unsigned long>::printOptionDiff((a1 + 160), a1, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::setDefault(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::print(void *a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = a1[16];

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 72);
  *(result + 208) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F5AFEBA8;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 200) = &unk_1F5B3E1D8;
  v4 = *(a1 - 104);
  if (v4 != *(a1 - 112))
  {
    free(v4);
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 200);
  *(a1 - 200) = &unk_1F5AFEBA8;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(a1 - 200) = &unk_1F5B3E1D8;
  v5 = *(a1 - 104);
  if (v5 != *(a1 - 112))
  {
    free(v5);
  }

  v6 = *(a1 - 136);
  if (v6 != (a1 - 120))
  {
    free(v6);
  }

  operator delete(v2);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 184);
  v5 = *(a1 - 176);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = *(a1 - 72);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 72) = *(a2 - 72);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5)
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
  *(a1 + 136) = &unk_1F5AFEC10;
  *a1 = &unk_1F5AFEBA8;
  *(a1 + 160) = &unk_1F5B3E4A0;
  *(a1 + 168) = &unk_1F5AFEC30;
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

void *mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option(void *a1)
{
  *a1 = &unk_1F5AFEBA8;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F5B3E1D8;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option(char *__p)
{
  *__p = &unk_1F5AFEBA8;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
    free(v4);
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F5AFEBA8;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 200) = &unk_1F5B3E1D8;
  v4 = *(a1 - 104);
  if (v4 != *(a1 - 112))
  {
    free(v4);
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  mlir::detail::PassOptions::Option<unsigned long,llvm::cl::parser<unsigned long>>::~Option((a1 - 200));
}

void *llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::~opt(void *a1)
{
  *a1 = &unk_1F5AFEBA8;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F5B3E1D8;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::~opt(char *__p)
{
  *__p = &unk_1F5AFEBA8;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
    free(v4);
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void *std::__function::__func<llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::{lambda(unsigned long const&)#1},std::allocator<llvm::cl::opt<unsigned long,false,llvm::cl::parser<unsigned long>>::{lambda(unsigned long const&)#1}>,void ()(unsigned long const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFEC30;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionImN4llvm2cl6parserImEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKmEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFEC78;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionImN4llvm2cl6parserImEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKmEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFEC78;
  a2[1] = v2;
  return result;
}

void mlir::mps::anonymous namespace::PermuteOpReorderThroughOperands::~PermuteOpReorderThroughOperands(mlir::mps::_anonymous_namespace_::PermuteOpReorderThroughOperands *this)
{
  v1 = *(this + 1);
  *this = &unk_1F5AFED50;
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F5AFED50;
  *(this + 1) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::ReorderThroughOperandsBase::canReorder(mlir::mps::_anonymous_namespace_::ReorderThroughOperandsBase *this, mlir::Operation *a2)
{
  result = (*(**(this + 1) + 16))(*(this + 1));
  if (result)
  {
    v5 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
      v10 = v5;
      v11 = v6;
      if (v5 && mlir::CallOpInterface::getArgOperands(&v10))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v10);
        if (!v8)
        {
        }

        v9 = 8 * v8;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v9 -= 8;
          if (!v9)
          {
          }
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::ReorderThroughOperandsBase::shouldStartReordering(mlir::mps::_anonymous_namespace_::ReorderThroughOperandsBase *this, mlir::Operation *DefiningOp)
{
  v43 = *MEMORY[0x1E69E9840];
  result = (*(**(this + 1) + 16))(*(this + 1));
  if (result)
  {
    if (result)
    {
      for (i = 1; *(this + 2) > i; ++i)
      {
        v32[0] = *(*(DefiningOp + 9) + 24);
        DefiningOp = mlir::Value::getDefiningOp(v32);
        v32[0] = *(*(DefiningOp + 9) + 24);
        v6 = mlir::Value::getDefiningOp(v32);
        if (v6 && ((*(**(this + 1) + 24))(*(this + 1), v6) & 1) != 0)
        {
          return 1;
        }

        result = 0;
        if ((canPropagateThroughInput & 1) == 0)
        {
          return result;
        }
      }

      v28 = 257;
      mlir::Operation::emitWarning(DefiningOp, v27, v32);
      if (v32[0])
      {
        v29 = 3;
        v30 = "Reached maxReorderingDistance ";
        v31 = 30;
        v8 = &v29;
        v9 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v29 && v33 + 24 * v34 > &v29)
          {
            v25 = &v29 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v9 = v33;
            v8 = (v33 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v8 = &v29;
            v9 = v33;
          }
        }

        v10 = &v9[24 * v34];
        v11 = *v8;
        *(v10 + 2) = *(v8 + 2);
        *v10 = v11;
        v12 = ++v34;
        if (v32[0])
        {
          v29 = 2;
          v30 = i;
          v13 = &v29;
          v14 = v33;
          if (v12 >= v35)
          {
            if (v33 <= &v29 && v33 + 24 * v12 > &v29)
            {
              v26 = &v29 - v33;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v12 + 1, 24);
              v14 = v33;
              v13 = (v33 + v26);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v12 + 1, 24);
              v13 = &v29;
              v14 = v33;
            }
          }

          v15 = &v14[24 * v34];
          v16 = *v13;
          *(v15 + 2) = *(v13 + 2);
          *v15 = v16;
          ++v34;
          if (v32[0])
          {
            mlir::InFlightDiagnostic::report(v32);
          }
        }
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v40;
          v19 = __p;
          if (v40 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v40 = v17;
          operator delete(v19);
        }

        v20 = v37;
        if (v37)
        {
          v21 = v38;
          v22 = v37;
          if (v38 != v37)
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
            v22 = v37;
          }

          v38 = v20;
          operator delete(v22);
        }

        if (v33 != v36)
        {
          free(v33);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::ReorderThroughOperandsBase::reorder(mlir::mps::_anonymous_namespace_::ReorderThroughOperandsBase *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v96 = *MEMORY[0x1E69E9840];
  v85 = a2;
  {
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a4, &v85, v86);
  }

  Context = mlir::Attribute::getContext((a2 + 3));
  v84 = 0uLL;
  v82 = &unk_1F5AFAFF0;
  *&v84 = a2[2];
  *(&v84 + 1) = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v8);
  v86[0] = *(a2[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(v86);
  if ((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if ((*(DefiningOp - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(DefiningOp - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  v10 = v92;
  v90 = v92;
  v91 = 0x400000000;
  v81 = 0;
  (*(**(v7 + 1) + 40))(v86);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v90, v86);
  if (v86[0] != &v87)
  {
    free(v86[0]);
  }

  v11 = DefiningOp[9];
  if (v11)
  {
    v12 = DefiningOp - 4;
  }

  else
  {
    v12 = 0;
  }

  *&v93 = v12;
  *(&v93 + 1) = v11;
  mlir::ResultRange::getUses(&v93, v86);
  v13 = v89;
  v95 = v88;
  v93 = *v86;
  v94 = v87;
  if (v88 == v89)
  {
    goto LABEL_34;
  }

  v14 = 1;
  do
  {
    mlir::ResultRange::UseIterator::operator++(&v93);
    --v14;
  }

  while (v95 != v13);
  if (!v14)
  {
    goto LABEL_34;
  }

  v86[0] = &v87;
  v86[1] = 0x400000000;
  if (mlir::matchConstantWithIntVector<int>(*(a2[9] + 56), v86))
  {
    v15 = LODWORD(v86[1]);
    *&v93 = &v94;
    *(&v93 + 1) = 0x400000000;
    v75 = v7;
    if (LODWORD(v86[1]) <= 4)
    {
      if (!LODWORD(v86[1]))
      {
        DWORD2(v93) = 0;
        v16 = &v94;
        v15 = 0;
        goto LABEL_26;
      }

      bzero(&v94, 4 * LODWORD(v86[1]));
      DWORD2(v93) = v15;
      v16 = &v94;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, &v94, LODWORD(v86[1]), 4);
      v16 = v93;
      bzero(v93, 4 * v15);
      DWORD2(v93) = v15;
      if (!LODWORD(v86[1]))
      {
        goto LABEL_26;
      }
    }

    v18 = 0;
    v19 = v86[0];
    do
    {
      *(v16 + v19[v18]) = v18;
      ++v18;
    }

    while (v18 < LODWORD(v86[1]));
    v15 = DWORD2(v93);
LABEL_26:
    v20 = a2[3];
    v78[0] = Context;
    v78[1] = v84;
    SI32TensorAttr = mlir::getSI32TensorAttr(v78, v16, v15);
    v80 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(&Context, v20, &SI32TensorAttr);
    v21 = a2[3];
    *&v78[0] = v81 - 16;
    v22 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(&Context, v21, v78, &v80);
    v23 = DefiningOp[9];
    if (v23)
    {
      v24 = DefiningOp - 4;
    }

    else
    {
      v24 = 0;
    }

    *&v78[0] = v24;
    *(&v78[0] + 1) = v23;
    mlir::ResultRange::replaceAllUsesWith(v78, v22);
    if (v93 != &v94)
    {
      free(v93);
    }

    v10 = v92;
    v7 = v75;
  }

  if (v86[0] != &v87)
  {
    free(v86[0]);
  }

LABEL_34:
  v25 = *(v81 + 36);
  if (v25)
  {
    v26 = v81 - 16;
  }

  else
  {
    v26 = 0;
  }

  mlir::ValueRange::ValueRange(v86, v26, v25);
  mlir::RewriterBase::replaceOp(&v82, a2, v86[0], v86[1]);
  mlir::RewriterBase::eraseOp(&v82, DefiningOp);
  v28 = v90;
  if (!v91)
  {
    goto LABEL_97;
  }

  v29 = &v90[8 * v91];
  do
  {
    *&v93 = *v28;
    v31 = mlir::Value::getDefiningOp(&v93);
    if (!v31)
    {
      goto LABEL_40;
    }

    v32 = v31;
    if (!(*(**(v7 + 1) + 16))(*(v7 + 1), v31))
    {
      goto LABEL_40;
    }

    if (!*(a3 + 32))
    {
      v33 = *(a3 + 8);
      v34 = *(a3 + 16);
      v35 = 32 * (v34 - v33) - 1;
      if (v34 == v33)
      {
        v35 = 0;
      }

      if ((v35 - *(a3 + 40)) >= 0x100)
      {
        *(a3 + 32) = 256;
        v86[0] = *(v34 - 1);
        *(a3 + 16) = v34 - 8;
        goto LABEL_69;
      }

      v36 = *(a3 + 24);
      v37 = *a3;
      v38 = &v36[-*a3];
      if (v34 - v33 < v38)
      {
        if (v33 == v37)
        {
          v86[0] = operator new(0x1000uLL);
          v43 = *(a3 + 16);
          v86[0] = *(v43 - 8);
          *(a3 + 16) = v43 - 8;
        }

        else
        {
          v86[0] = operator new(0x1000uLL);
        }

        if (*(a3 + 16) - *(a3 + 8) == 8)
        {
          v44 = 128;
        }

        else
        {
          v44 = *(a3 + 32) + 256;
        }

        *(a3 + 32) = v44;
        goto LABEL_69;
      }

      v73 = v29;
      if (v36 == v37)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38 >> 2;
      }

      if (v39 >> 61)
      {
LABEL_100:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v74 = v10;
      v76 = v7;
      v40 = operator new(8 * v39);
      v41 = operator new(0x1000uLL);
      if (v39)
      {
        v42 = &v40[8 * v39];
      }

      else
      {
        v45 = operator new(8uLL);
        v42 = v45 + 8;
        operator delete(v40);
        v33 = *(a3 + 8);
        v34 = *(a3 + 16);
        v40 = v45;
      }

      *v40 = v41;
      v46 = v40 + 8;
      v47 = v40;
      if (v33 == v34)
      {
LABEL_64:
        v48 = *a3;
        *a3 = v40;
        *(a3 + 8) = v47;
        *(a3 + 16) = v46;
        *(a3 + 24) = v42;
        if (v46 - v47 == 8)
        {
          v49 = 128;
        }

        else
        {
          v49 = *(a3 + 32) + 256;
        }

        *(a3 + 32) = v49;
        v10 = v74;
        v7 = v76;
        v29 = v73;
        if (v48)
        {
          operator delete(v48);
        }

        goto LABEL_69;
      }

      while (1)
      {
        if (v46 == v42)
        {
          if (v47 <= v40)
          {
            v57 = (v46 - v40) >> 2;
            if (v46 == v40)
            {
              v57 = 1;
            }

            if (v57 >> 61)
            {
              goto LABEL_100;
            }

            v58 = v57 >> 2;
            v77 = 8 * v57;
            v59 = operator new(8 * v57);
            v60 = v59;
            v54 = &v59[8 * v58];
            v62 = v46 - v47;
            v61 = v46 == v47;
            v46 = v54;
            if (!v61)
            {
              v46 = &v54[v62];
              v63 = v62 - 8;
              if (v63 < 0x18 || (&v59[8 * v58] - v47) < 0x20)
              {
                v64 = &v59[8 * v58];
                v65 = v47;
                goto LABEL_88;
              }

              v67 = (v63 >> 3) + 1;
              v68 = 8 * (v67 & 0x3FFFFFFFFFFFFFFCLL);
              v64 = &v54[v68];
              v65 = &v47[v68];
              v69 = (v47 + 16);
              v70 = &v59[8 * v58 + 16];
              v71 = v67 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v72 = *v69;
                *(v70 - 1) = *(v69 - 1);
                *v70 = v72;
                v69 += 2;
                v70 += 32;
                v71 -= 4;
              }

              while (v71);
              if (v67 != (v67 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_88:
                  v66 = *v65;
                  v65 += 8;
                  *v64 = v66;
                  v64 += 8;
                }

                while (v64 != v46);
              }
            }

            v42 = &v59[v77];
            if (v40)
            {
              operator delete(v40);
            }

            v40 = v60;
            goto LABEL_75;
          }

          v56 = (((v47 - v40) >> 3) + 1 + ((((v47 - v40) >> 3) + 1) >> 63)) >> 1;
          v54 = &v47[-8 * v56];
          if (v46 != v47)
          {
            memmove(&v47[-8 * v56], v47, v46 - v47);
          }

          v46 = &v54[v46 - v47];
        }

        else
        {
          v54 = v47;
        }

LABEL_75:
        v55 = *v33;
        v33 += 8;
        *v46 = v55;
        v46 += 8;
        v47 = v54;
        if (v33 == *(a3 + 16))
        {
          goto LABEL_64;
        }
      }
    }

LABEL_69:
    v50 = *(a3 + 32);
    v51 = *(a3 + 8);
    v52 = (v51 + 8 * (v50 >> 8));
    if (*(a3 + 16) == v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = *v52 + 16 * v50;
    }

    if (v53 == *v52)
    {
      v53 = *(v52 - 1) + 4096;
    }

    *(v53 - 16) = v32;
    *(v53 - 8) = v7;
    v30 = *(a3 + 40) + 1;
    *(a3 + 32) = v50 - 1;
    *(a3 + 40) = v30;
LABEL_40:
    ++v28;
  }

  while (v28 != v29);
  v28 = v90;
LABEL_97:
  if (v28 != v10)
  {
    free(v28);
  }

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v82, v27);
}

uint64_t mlir::mps::anonymous namespace::PermuteOpReorderDetails::isCompatible(mlir::mps::_anonymous_namespace_::PermuteOpReorderDetails *this, mlir::Operation *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = v5;
  v4[1] = 0x400000000;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    matched = mlir::matchConstantWithIntVector<long long>(*(*(a2 + 9) + 56), v4);
    if (v4[0] != v5)
    {
      free(v4[0]);
    }
  }

  else
  {
    matched = 0;
  }

  return matched & 1;
}

BOOL mlir::mps::anonymous namespace::PermuteOpReorderDetails::canHandleBroadcastOfOperand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 8 * a3;
  for (i = 8 * a5; v5 && i; i -= 8)
  {
    v7 = *(a2 - 8 + v5);
    v8 = *(a4 - 8 + i);
    v5 -= 8;
    if (v7 != v8 && v8 != 1)
    {
      return 0;
    }
  }

  return i == 0;
}

void mlir::mps::anonymous namespace::PermuteOpReorderDetails::moveThroughOperand(mlir::Operation **a1@<X1>, mlir::Float32Type **a2@<X2>, Location a3@<0:X3>, mlir::Operation *a4@<X4>, mlir::Operation *a5@<X5>, uint64_t a6@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v10 = *(*(a5 + 6) + 16);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v93 = v95;
    v94 = 0x400000000;
    mlir::matchConstantWithIntVector<long long>(*(*(a4 + 9) + 56), &v93);
    v15 = v94;
    v90 = v92;
    v91 = 0x400000000;
    if (v94 <= 4)
    {
      if (!v94)
      {
        goto LABEL_17;
      }

      bzero(v92, 4 * v94);
      LODWORD(v91) = v15;
      v16 = v92;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v94, 4);
      v16 = v90;
      bzero(v90, 4 * v15);
      LODWORD(v91) = v15;
      if (!v94)
      {
LABEL_17:
        v87 = *(*(a5 + 9) + 24);
        v98 = *(*(a4 + 9) + 56);
        v23 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>(a2 + 1, a3.var0.var0, &v87, &v98);
        if (*(*(a5 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
        {
          v24 = a5;
        }

        else
        {
          v24 = 0;
        }

        v25 = *(*(v24 + 9) + 56);
        v87 = 0;
        v88 = 0;
        v96[0] = &v87;
        v97 = v23;
        v98 = v25;
        DefiningOp = mlir::Value::getDefiningOp(&v98);
        if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v96, DefiningOp) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(v87, v88), (SingleInt & 0x100000000) == 0))
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        LODWORD(v98) = *(v90 + SingleInt);
        v87 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a2 + 1, a3.var0.var0, &v98) - 16);
        v28 = *(v24 + 9);
        v98 = *(v28 + 88);
        v96[0] = *(v28 + 120);
        *a1 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::PermuteOp &,mlir::Value &,mlir::Value,mlir::Value>(a2 + 1, a3.var0.var0, &v97, &v87, &v98, v96);
        *(a6 + 16) = v97 - 16;
        *a6 = a6 + 16;
        *(a6 + 8) = 0x400000001;
        if (v90 != v92)
        {
          free(v90);
        }

        v29 = v93;
        if (v93 == v95)
        {
          return;
        }

LABEL_86:
        free(v29);
        return;
      }
    }

    v21 = 0;
    v22 = v93;
    do
    {
      *&v16[4 * v22[v21]] = v21;
      ++v21;
    }

    while (v21 < v94);
    goto LABEL_17;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    v98 = a4;
    v93 = v95;
    v94 = 0x400000000;
    mlir::matchConstantWithIntVector<long long>(*(*(a4 + 9) + 56), &v93);
    v18 = v94;
    v90 = v92;
    v91 = 0x400000000;
    if (v94 < 5)
    {
      if (!v94)
      {
        goto LABEL_44;
      }

      v20 = 4 * v94;
      v19 = v92;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v94, 4);
      v19 = v90;
      v20 = 4 * v18;
    }

    bzero(v19, v20);
LABEL_44:
    LODWORD(v91) = v18;
    v87 = *(*(a5 + 9) + 24);
    v97 = *(*(a4 + 9) + 56);
    v96[0] = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>(a2 + 1, a3.var0.var0, &v87, &v97);
    if (*(*(a5 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
    {
      v41 = a5;
    }

    else
    {
      v41 = 0;
    }

    v97 = v41;
    v87 = &v93;
    v88 = a2;
    v89[0] = &v98;
    v86 = &v93;
    Index = mlir::pdl::ResultOp::getIndex(&v97);
    Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v97);
    Groups = mlir::mps::Conv3DOp::getGroups(&v97);
    IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v97);
    *a1 = mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,unsigned int,unsigned int,unsigned int,BOOL>(a2 + 1, a3.var0.var0, v96, &v85, &v84, &v83, &v82, &v81, &Groups, &IsSize);
    *(a6 + 16) = v96[0] - 2;
    *a6 = a6 + 16;
    *(a6 + 8) = 0x400000001;
    if (v90 != v92)
    {
      free(v90);
    }

    v29 = v93;
    if (v93 == v95)
    {
      return;
    }

    goto LABEL_86;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v93 = v95;
    v94 = 0x400000000;
    mlir::matchConstantWithIntVector<long long>(*(*(a4 + 9) + 56), &v93);
    v90 = *(*(a5 + 9) + 24);
    v87 = *(*(a4 + 9) + 56);
    v96[0] = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>(a2 + 1, a3.var0.var0, &v90, &v87);
    if (*(*(a5 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
    {
      v31 = a5;
    }

    else
    {
      v31 = 0;
    }

    v98 = 0;
    v99 = 0;
    v97 = v31;
    v32 = *(*(v31 + 9) + 56);
    v87 = &v98;
    v90 = v32;
    v33 = mlir::Value::getDefiningOp(&v90);
    if (v33)
    {
      mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v87, v33);
    }

    v90 = v92;
    v91 = 0x800000000;
    mlir::getIntValues<int>(v98, v99, &v90, 1);
    v87 = v89;
    v88 = 0x800000000;
    v34 = v94;
    if (v94)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = *(v90 + 2 * v93[v35]);
        if (v34 >= HIDWORD(v88))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v34 + 1, 4);
          v34 = v88;
        }

        *(v87 + v34) = v36;
        v37 = (v88 + 1);
        LODWORD(v88) = v37;
        v38 = *(v90 + 2 * v93[v35] + 1);
        if (v37 >= HIDWORD(v88))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v37 + 1, 4);
          LODWORD(v37) = v88;
        }

        *(v87 + v37) = v38;
        v34 = v88 + 1;
        LODWORD(v88) = v88 + 1;
        ++v35;
      }

      while (v35 < v94);
    }

    v39 = (*(*(*(v31 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
      v34 = v88;
    }

    else
    {
      v40 = 0;
    }

    v85 = mlir::DenseElementsAttr::getFromRawBuffer(v39, v40, v87, 4 * v34, 4, 1, 1);
    v74 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a2 + 1), a3.var0.var0, &v85);
    v85 = *(*(v31 + 9) + 88);
    v86 = v74;
    LODWORD(v84) = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v97);
    *a1 = mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp &,mlir::Value,mlir::mps::PaddingMode>(a2 + 1, a3.var0.var0, v96, &v86, &v85, &v84);
    *(a6 + 16) = v96[0] - 2;
    *a6 = a6 + 16;
    *(a6 + 8) = 0x400000001;
    if (v87 != v89)
    {
      free(v87);
    }

    if (v90 != v92)
    {
      free(v90);
    }

    v29 = v93;
    if (v93 == v95)
    {
      return;
    }

    goto LABEL_86;
  }

  if ((*(a5 + 46) & 0x80) != 0)
  {
    v11 = *(a5 + 9);
    v12 = *(a5 + 17);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = (*(a5 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v90 = v13;
  v91 = v14;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x400000000;
  if (v12 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v12, 8);
LABEL_55:
    v44 = 0;
    while (1)
    {
      v98 = *(v11 + 32 * v44 + 24);
      v45 = (*(v98 + 1) & 0xFFFFFFFFFFFFFFF8);
      if (v45)
      {
        v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
      }

      else
      {
        v46 = 0;
      }

      v87 = v45;
      v88 = v46;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
      if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v48) == 1)
      {
        v49 = v98;
      }

      else
      {
        v51 = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
        v53 = v52;
        v54 = mlir::CallableOpInterface::getArgAttrsAttr(&v90);
        v56 = 8 * v55;
        v57 = 8 * v53;
        while (v56 && v57)
        {
          v58 = *(v54 - 8 + v56);
          v59 = *(v51 - 8 + v57);
          v56 -= 8;
          v57 -= 8;
          if (v58 != v59 && v59 != 1)
          {
            goto LABEL_57;
          }
        }

        if (v57)
        {
          goto LABEL_57;
        }

        v96[0] = *(*(a4 + 9) + 56);
        v93 = v95;
        v94 = 0x100000000;
        mlir::OpBuilder::createOrFold<mlir::mps::PermuteOp,mlir::Value &,mlir::Value>((a2 + 1), &v93, a3.var0.var0, &v98, v96);
        v49 = *v93;
        if (v93 != v95)
        {
          free(v93);
        }
      }

      v50 = *(a6 + 8);
      if (v50 >= *(a6 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v50 + 1, 8);
        v50 = *(a6 + 8);
      }

      *(*a6 + 8 * v50) = v49;
      ++*(a6 + 8);
LABEL_57:
      if (++v44 == v12)
      {
        goto LABEL_76;
      }
    }
  }

  if (v12)
  {
    goto LABEL_55;
  }

LABEL_76:
  v61 = (*(a4 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v61)
  {
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
  }

  else
  {
    v62 = 0;
  }

  v93 = v61;
  v94 = v62;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(&v93);
  v65 = v64;
  isSplat = mlir::ElementsAttr::isSplat(&v90);
  v67 = mlir::RankedTensorType::get(v63, v65, isSplat, 0);
  v68 = *(a4 + 3);
  v69 = *(*(a5 + 6) + 8);
  mlir::ValueRange::ValueRange(&v87, *a6, *(a6 + 8));
  v97 = v67;
  mlir::ValueRange::ValueRange(&v98, &v97, 1uLL);
  v96[0] = mlir::Operation::getAttrDictionary(a5);
  Value = mlir::ArrayAttr::getValue(v96);
  v72 = v71;
  mlir::BlockRange::BlockRange(v96, 0, 0);
  *a1 = mlir::OpBuilder::create(a2 + 1, v68, v69, v87, v88, v98, v99, v73, Value, v72, v96[0], v96[1], 0, 0);
}

BOOL mlir::mps::anonymous namespace::PermuteOpReorderDetails::hasSpecialMoveThroughOperandImpl(mlir::mps::_anonymous_namespace_::PermuteOpReorderDetails *this, mlir::Operation *a2)
{
  if (!a2)
  {
    v7 = 0;
    v8 = 0;
    v2 = *(MEMORY[0x30] + 16);
    return v2 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id;
  }

  v2 = *(*(a2 + 6) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    v7 = v4;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
    {
      return mlir::mps::Conv3DOp::getGroups(&v7) == 0;
    }

    return v2 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id;
  }

  return mlir::mps::MaterializeSparseTensorOp::getStorageType(&v8) == 3;
}

uint64_t mlir::mps::anonymous namespace::PermuteOpReorderDetails::applyTransformationFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a4 + 72) + 56);
  v7 = a5;
  return mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>((a2 + 8), a3, &v7, &v6) - 16;
}

BOOL mlir::mps::anonymous namespace::PermuteOpReorderDetails::isInputCompatible(mlir::mps::_anonymous_namespace_::PermuteOpReorderDetails *this, mlir::Operation *a2)
{
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
  }

  if ((*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  }

  if ((*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  {
  }

  if ((*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  v4 = *(*(a2 + 6) + 16);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v11 = v5;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
  {
    Axis = mlir::mps::DequantizeLUTOp::getAxis(&v11);
    return (Axis & 0x100000000) == 0;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    Axis = mlir::mps::DequantizeLUTOp::getAxis(&v10);
    return (Axis & 0x100000000) == 0;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    return mlir::mps::MaterializeSparseTensorOp::getStorageType(&v13) == 3;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;
  if (v4 != &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    return v4 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id;
  }

  return !mlir::mps::Conv3DOp::getGroups(&v12);
}

uint64_t mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::PermuteOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::PermuteOp &,mlir::Value &,mlir::Value,mlir::Value>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::GetCoordOp &,int,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::SliceOp::build(a1, v21, *a3 - 16, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
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

uint64_t mlir::getSingleIntValue<int>(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11[0] = mlir::CallOpInterface::getArgOperands(&v12);
  v11[1] = v2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v11);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v4) == 1 && (v10[0] = mlir::CallOpInterface::getArgOperands(&v12), v10[1] = v5, *(*mlir::ElementsAttr::isSplat(v10) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    LODWORD(v10[0]) = 0;
    mlir::copyElementsAttrData<int>(v12, v13, v10, 1);
    v8 = v10[0] & 0xFFFFFF00;
    v6 = LOBYTE(v10[0]);
    v7 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  return v7 | v8 | v6;
}

float mlir::copyElementsAttrData<int>(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v88[5] = *MEMORY[0x1E69E9840];
  v85 = a1;
  v86 = a2;
  Type = mlir::ElementsAttr::getType(&v85);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v84[0] = v7;
  v84[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v84);
  v8 = mlir::ElementsAttr::isSplat(&v85);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v85);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v8)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_73;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_84;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_91;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_107;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v87, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v87[0], v87[1]);
      v61 = v87[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v88)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<int>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (v8)
      {
        v74 = 0;
      }

      else
      {
        v74 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v74];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v27 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v28 = a3 + 1;
      do
      {
        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        if (v8)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27 + 1;
        }

        v31 = *&ElementsAttrRawData[2 * v30];
        *(v28 - 1) = *&ElementsAttrRawData[2 * v29];
        *v28 = v31;
        v28 += 2;
        v27 += 2;
      }

      while (v27 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (v8)
      {
        v75 = 0;
      }

      else
      {
        v75 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v75];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v26 = 0;
      }

      else
      {
        v26 = m;
      }

      a3[m] = *&ElementsAttrRawData[4 * v26];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_73:
    for (n = 0; n != NumElements; ++n)
    {
      if (v8)
      {
        v33 = 0;
      }

      else
      {
        v33 = n;
      }

      a3[n] = *&ElementsAttrRawData[4 * v33];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_84:
    if (NumElements >= 2)
    {
      v36 = 0;
      v34 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v37 = a3 + 1;
      do
      {
        if (v8)
        {
          v38 = 0;
        }

        else
        {
          v38 = v36;
        }

        if (v8)
        {
          v39 = 0;
        }

        else
        {
          v39 = v36 + 1;
        }

        v40 = *&ElementsAttrRawData[8 * v39];
        *(v37 - 1) = *&ElementsAttrRawData[8 * v38];
        *v37 = v40;
        v37 += 2;
        v36 += 2;
      }

      while (v36 != v34);
      goto LABEL_197;
    }

    v34 = 0;
    do
    {
      if (v8)
      {
        v76 = 0;
      }

      else
      {
        v76 = v34;
      }

      a3[v34++] = *&ElementsAttrRawData[8 * v76];
LABEL_197:
      ;
    }

    while (NumElements != v34);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_91:
    if (NumElements >= 2)
    {
      v42 = 0;
      v35 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v43 = a3 + 1;
      do
      {
        if (v8)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (v8)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + 1;
        }

        v46 = *&ElementsAttrRawData[8 * v45];
        *(v43 - 1) = *&ElementsAttrRawData[8 * v44];
        *v43 = v46;
        v43 += 2;
        v42 += 2;
      }

      while (v42 != v35);
      goto LABEL_202;
    }

    v35 = 0;
    do
    {
      if (v8)
      {
        v77 = 0;
      }

      else
      {
        v77 = v35;
      }

      a3[v35++] = *&ElementsAttrRawData[8 * v77];
LABEL_202:
      ;
    }

    while (NumElements != v35);
    return *&v12;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_107:
    if (NumElements >= 2)
    {
      v48 = 0;
      v41 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (v8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v8)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v41);
      goto LABEL_207;
    }

    v41 = 0;
    do
    {
      if (v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v41;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v78];
      a3[v41++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v41);
    return *&v12;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (v8)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (v8)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (v8)
      {
        v79 = 0;
      }

      else
      {
        v79 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v79];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (v8)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (v8)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (v8)
      {
        v80 = 0;
      }

      else
      {
        v80 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v80];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3;
    do
    {
      if (v8)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v8)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v72];
      WORD2(v12) = *&ElementsAttrRawData[2 * v73];
      v12 = COERCE_DOUBLE(vcvt_s32_f32(vshl_n_s32(*&v12, 0x10uLL)));
      *v71++ = v12;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (v8)
    {
      v81 = 0;
    }

    else
    {
      v81 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v81] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,unsigned int,unsigned int,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,unsigned int,unsigned int,unsigned int,BOOL>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::StridedSliceOp::build(a1, v27, *a3 - 16, *a4 - 16, *a5 - 16, *a6 - 16, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
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

uint64_t mlir::mps::anonymous namespace::PermuteOpReorderDetails::moveThroughOperandImpl<mlir::mps::StridedSliceOp>(mlir::Operation **,mlir::IRRewriter &,mlir::Location,mlir::Operation *,mlir::Operation *)::{lambda(mlir::mps::StridedSliceOp)#1}::operator()<mlir::Value>(uint64_t a1, uint64_t a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  v16 = v18;
  v17 = 0x400000000;
  mlir::matchConstantWithIntVector<long long>(a2, &v19);
  v3 = 0;
  if (v20)
  {
    v4 = 0;
    do
    {
      v5 = *(v19 + *(**a1 + 8 * v4));
      if (v3 >= HIDWORD(v17))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v3 + 1, 8);
        v3 = v17;
      }

      *(v16 + v3) = v5;
      v3 = v17 + 1;
      LODWORD(v17) = v17 + 1;
      ++v4;
    }

    while (v4 < v20);
  }

  v6 = *(a1 + 8);
  v7 = *(**(a1 + 16) + 24);
  v15 = v3;
  IntegerType = mlir::Builder::getIntegerType((v6 + 8), 64, 1);
  v9 = mlir::RankedTensorType::get(&v15, 1, IntegerType, 0);
  if (v9)
  {
    v10 = v9;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, v16, 8 * v17, 8, 1, 1);
  v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((v6 + 8), v7, &v14);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v12;
}

unint64_t mlir::mps::anonymous namespace::PermuteOpReorderDetails::moveThroughOperandImpl<mlir::mps::StridedSliceOp>(mlir::Operation **,mlir::IRRewriter &,mlir::Location,mlir::Operation *,mlir::Operation *)::{lambda(unsigned int)#1}::operator()(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v11 = 32;
  v10 = a2;
  v3 = *a1;
  if (!*(*a1 + 8))
  {
    v4 = 0;
    goto LABEL_17;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    llvm::APInt::extractBits(&v10, *(*v3 + 8 * v5), 1u, &__p);
    v6 = v9;
    if (v9 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase(&__p) == v6)
      {
LABEL_10:
        v4 &= ~(1 << v5);
        if (v6 < 0x41)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    else if (!__p)
    {
      goto LABEL_10;
    }

    v4 |= 1 << v5;
    if (v6 < 0x41)
    {
      goto LABEL_4;
    }

LABEL_11:
    if (__p)
    {
      operator delete[](__p);
    }

LABEL_4:
    ++v5;
    v3 = *a1;
  }

  while (v5 < *(*a1 + 8));
  if (HIDWORD(v4))
  {
    v4 = 0xFFFFFFFFLL;
  }

LABEL_17:
  if (v11 >= 0x41 && v10)
  {
    operator delete[](v10);
  }

  return v4;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp &,mlir::Value,mlir::mps::PaddingMode>(mlir::MLIRContext **a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, unsigned int *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp &,mlir::Value,mlir::mps::PaddingMode>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::PadOp::build(a1, v21, *a3 - 16, *a4 - 16, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
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

void mlir::OpBuilder::createOrFold<mlir::mps::PermuteOp,mlir::Value &,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::mps::PermuteOp::build(a1, v31, *a4, *a5);
  v14 = mlir::Operation::create(v31, v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v17);
    v19 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v19 + 8) = v18;
    *v16 = v18;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v20);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_20;
  }

  v21 = v14[9];
  if (v21)
  {
    v22 = (v14 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 <= *(a2 + 12))
  {
    if (!v21)
    {
      v26 = 0;
      goto LABEL_17;
    }

    v23 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v21, 8);
    v23 = *(a2 + 8);
  }

  v24 = 0;
  v25 = *a2 + 8 * v23;
  do
  {
    *(v25 + 8 * v24) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v24);
    ++v24;
  }

  while (v21 != v24);
  v26 = *(a2 + 8);
LABEL_17:
  *(a2 + 8) = v26 + v21;
  if (*(a1 + 16))
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      (*(*v27 + 16))(v27, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v31);
}

uint64_t mlir::matchConstantWithIntVector<int>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::CallOpInterface::getArgOperands(&v8);
  v6[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<int>(v8, v9, a2, 1);
  return 1;
}

void std::__split_buffer<std::pair<mlir::Operation *,mlir::mps::anonymous namespace::ReordererBase *> *,std::allocator<std::pair<mlir::Operation *,mlir::mps::anonymous namespace::ReordererBase *> *>>::emplace_front<std::pair<mlir::Operation *,mlir::mps::anonymous namespace::ReordererBase *> *&>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 8) = v6;
      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) -= 8;
}

void std::__split_buffer<std::pair<mlir::Operation *,mlir::mps::anonymous namespace::ReordererBase *> *,std::allocator<std::pair<mlir::Operation *,mlir::mps::anonymous namespace::ReordererBase *> *>>::emplace_back<std::pair<mlir::Operation *,mlir::mps::anonymous namespace::ReordererBase *> *>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    a1[2] = &v8[v9];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] += 8;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<void mlir::mps::anonymous namespace::applyReorderer<mlir::mps::anonymous namespace::PermuteOpReorderThroughOperands>(unsigned long,mlir::func::FuncOp,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &)::{lambda(mlir::Operation *)#1}>(uint64_t a1, mlir::Operation *a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 4);
  if (v5)
  {
    v6 = *v4;
    v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(v6 + 8 * v7);
    if (v8 == a2)
    {
LABEL_3:
      if (v7 != v5)
      {
        return;
      }
    }

    else
    {
      v57 = 1;
      while (v8 != -4096)
      {
        v58 = v7 + v57++;
        v7 = v58 & (v5 - 1);
        v8 = *(v6 + 8 * v7);
        if (v8 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  {
    v11 = a1;
    v10 = *a1;
    v9 = *(v11 + 8);
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    v14 = v13 - v12;
    if (v13 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = 32 * (v13 - v12) - 1;
    }

    v16 = *(v9 + 32);
    if (v15 != *(v9 + 40) + v16)
    {
      goto LABEL_34;
    }

    v17 = v16 >= 0x100;
    v18 = v16 - 256;
    if (v17)
    {
      *(v9 + 32) = v18;
      v61 = *v12;
      *(v9 + 8) = v12 + 1;
      goto LABEL_13;
    }

    v19 = *(v9 + 24);
    v20 = &v19[-*v9];
    if (v14 < v20)
    {
      if (v19 != v13)
      {
        v61 = operator new(0x1000uLL);
        goto LABEL_34;
      }

      v61 = operator new(0x1000uLL);
      v28 = *(v9 + 8);
      v61 = *v28;
      *(v9 + 8) = v28 + 1;
LABEL_13:
LABEL_34:
      v35 = *(v9 + 40);
      v36 = (*(*(v9 + 8) + (((v35 + *(v9 + 32)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v35 + *(v9 + 32)));
      *v36 = a2;
      v36[1] = v10;
      *(v9 + 40) = v35 + 1;
      return;
    }

    v60 = v10;
    v21 = v20 >> 2;
    if (v19 == *v9)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    if (!(v22 >> 61))
    {
      v23 = 8 * v22;
      v24 = operator new(8 * v22);
      v25 = &v24[v14];
      v26 = &v24[v23];
      v27 = operator new(0x1000uLL);
      if (v14 != v23)
      {
        goto LABEL_30;
      }

      if (v14 >= 1)
      {
        v25 -= ((v14 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
        goto LABEL_30;
      }

      v59 = v27;
      if (v13 == v12)
      {
        v29 = 1;
      }

      else
      {
        v29 = v14 >> 2;
      }

      if (!(v29 >> 61))
      {
        v30 = 8 * v29;
        v31 = operator new(8 * v29);
        v25 = &v31[8 * (v29 >> 2)];
        v26 = &v31[v30];
        operator delete(v24);
        v12 = *(v9 + 8);
        v13 = *(v9 + 16);
        v24 = v31;
        v27 = v59;
LABEL_30:
        *v25 = v27;
        v32 = v25 + 8;
        if (v13 == v12)
        {
          v33 = v25;
LABEL_32:
          v34 = *v9;
          *v9 = v24;
          *(v9 + 8) = v33;
          *(v9 + 16) = v32;
          *(v9 + 24) = v26;
          v10 = v60;
          if (v34)
          {
            operator delete(v34);
          }

          goto LABEL_34;
        }

        while (v25 != v24)
        {
          v37 = v25;
LABEL_37:
          v38 = *(v13 - 1);
          v13 -= 8;
          *(v37 - 1) = v38;
          v33 = v37 - 8;
          v25 = v33;
          if (v13 == *(v9 + 8))
          {
            goto LABEL_32;
          }
        }

        if (v32 < v26)
        {
          v37 = &v25[8 * ((((v26 - v32) >> 3) + 1 + ((((v26 - v32) >> 3) + 1) >> 63)) >> 1)];
          v40 = v32 - v25;
          v39 = v32 == v25;
          v32 += 8 * ((((v26 - v32) >> 3) + 1 + ((((v26 - v32) >> 3) + 1) >> 63)) >> 1);
          if (!v39)
          {
            memmove(v37, v25, v40);
          }

          goto LABEL_37;
        }

        v41 = (v26 - v25) >> 2;
        if (v26 == v25)
        {
          v41 = 1;
        }

        if (v41 >> 61)
        {
          goto LABEL_59;
        }

        v42 = (v41 + 3) >> 2;
        v43 = 8 * v41;
        v44 = operator new(8 * v41);
        v45 = v44;
        v37 = &v44[8 * v42];
        v46 = v32 - v25;
        v39 = v32 == v25;
        v32 = v37;
        if (!v39)
        {
          v32 = &v37[v46];
          v47 = v46 - 8;
          if (v47 >= 0x18 && (&v44[8 * v42] - v25) >= 0x20)
          {
            v51 = (v47 >> 3) + 1;
            v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
            v48 = &v37[v52];
            v49 = &v25[v52];
            v53 = (v25 + 16);
            v54 = &v44[8 * v42 + 16];
            v55 = v51 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v56 = *v53;
              *(v54 - 1) = *(v53 - 1);
              *v54 = v56;
              v53 += 2;
              v54 += 32;
              v55 -= 4;
            }

            while (v55);
            if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_50;
            }
          }

          else
          {
            v48 = &v44[8 * v42];
            v49 = v25;
          }

          do
          {
            v50 = *v49;
            v49 += 8;
            *v48 = v50;
            v48 += 8;
          }

          while (v48 != v32);
        }

LABEL_50:
        v26 = &v44[v43];
        operator delete(v24);
        v24 = v45;
        goto LABEL_37;
      }
    }

LABEL_59:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t mlir::mps::createRuntimeCanonicalizationPass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x978uLL);
  *v5 = &unk_1F5AFED88;
  *(v5 + 472) = *a1;
  v6 = *(v5 + 528);
  if (v6 && ((*(*v6 + 48))(v6, a1), v4[680] = *(a1 + 1), (v7 = *(v4 + 92)) != 0) && ((*(*v7 + 48))(v7, a1 + 1), *(v4 + 222) = *(a1 + 4), (v8 = *(v4 + 118)) != 0) && ((*(*v8 + 48))(v8, a1 + 4), v4[1096] = *(a1 + 8), (v9 = *(v4 + 144)) != 0) && ((*(*v9 + 48))(v9, a1 + 8), v4[1304] = *(a1 + 9), (v10 = *(v4 + 170)) != 0) && ((*(*v10 + 48))(v10, a1 + 9), v4[1512] = *(a1 + 11), (v11 = *(v4 + 196)) != 0) && ((*(*v11 + 48))(v11, a1 + 11), v4[2136] = *(a1 + 13), (v12 = *(v4 + 274)) != 0) && ((*(*v12 + 48))(v12, a1 + 13), v4[1720] = *(a1 + 12), (v13 = *(v4 + 222)) != 0) && ((*(*v13 + 48))(v13, a1 + 12), v4[1928] = *(a1 + 14), (v14 = *(v4 + 248)) != 0) && ((*(*v14 + 48))(v14, a1 + 14), v16 = *(a1 + 15), v15 = a1 + 15, v4[2344] = v16, (v17 = *(v4 + 300)) != 0))
  {
    result = (*(*v17 + 48))(v17, v15);
    *a2 = v4;
  }

  else
  {
    v19 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSRuntimeCanonicalizationBase<mlir::mps::anonymous namespace::RuntimeCanonicalizationPass>::MPSRuntimeCanonicalizationBase(uint64_t a1)
{
  *(a1 + 16) = "func.func";
  *(a1 + 24) = 9;
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
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5AFEDF8;
  *&v5 = "Enables the folding of a matmul RHS input, where RHS is a transpose of a constant.";
  *(&v5 + 1) = 82;
  LOBYTE(v3) = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "enable-matmul-nt-to-nn-fold", 27, &v5, &v4);
  *(a1 + 344) = &unk_1F5AFB130;
  *(a1 + 536) = &unk_1F5AFB1B0;
  *&v5 = "Use legacy quantization patterns";
  *(&v5 + 1) = 32;
  LOBYTE(v3) = 1;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 552, (a1 + 152), "legacy-quantization", 19, &v5, &v4);
  *(a1 + 552) = &unk_1F5AFB130;
  *(a1 + 744) = &unk_1F5AFB1B0;
  *&v5 = "Maximum number of inputs supported by MPS quantization kernels.";
  *(&v5 + 1) = 63;
  v3 = 32;
  v4 = &v3;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 760, (a1 + 152), "quant-ops-max-inputs-count", 26, &v5, &v4);
  *(a1 + 760) = &unk_1F5AFEE68;
  *(a1 + 952) = &unk_1F5AFEEE8;
  *&v5 = "Enables the canonicalization of 2D (de)convolutions to matmuls.";
  *(&v5 + 1) = 63;
  LOBYTE(v3) = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 968, (a1 + 152), "enable-conv2d-to-matmul", 23, &v5, &v4);
  *(a1 + 968) = &unk_1F5AFB130;
  *(a1 + 1160) = &unk_1F5AFB1B0;
  *&v5 = "Enables the canonicalization of reshaped convolutions to matmuls.";
  *(&v5 + 1) = 65;
  LOBYTE(v3) = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1176, (a1 + 152), "enable-reshape-conv2d-biasadd-reshape", 37, &v5, &v4);
  *(a1 + 1176) = &unk_1F5AFB130;
  *(a1 + 1368) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, dequantize and gather ops will be canonicalized as a single-dispatch QuantizedGather op.";
  *(&v5 + 1) = 100;
  LOBYTE(v3) = 1;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1384, (a1 + 152), "enable-quantized-gather", 23, &v5, &v4);
  *(a1 + 1384) = &unk_1F5AFB130;
  *(a1 + 1576) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, dequantize and gather_nd ops will be canonicalized as a single-dispatch Fusion op.";
  *(&v5 + 1) = 94;
  LOBYTE(v3) = 1;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1592, (a1 + 152), "enable-quantized-gathernd-fusion", 32, &v5, &v4);
  *(a1 + 1592) = &unk_1F5AFB130;
  *(a1 + 1784) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, dequantize and conv2D ops will be canonicalized as a single-dispatch Fusion op.";
  *(&v5 + 1) = 91;
  LOBYTE(v3) = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1800, (a1 + 152), "enable-quantized-conv-fusion", 28, &v5, &v4);
  *(a1 + 1800) = &unk_1F5AFB130;
  *(a1 + 1992) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, dequantize and matmul ops will be canonicalized as a single-dispatch Fusion op.";
  *(&v5 + 1) = 91;
  LOBYTE(v3) = 1;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 2008, (a1 + 152), "enable-quantized-matmul-fusion", 30, &v5, &v4);
  *(a1 + 2008) = &unk_1F5AFB130;
  *(a1 + 2200) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, canonicalize 1x1conv to MatMul";
  *(&v5 + 1) = 42;
  LOBYTE(v3) = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 2216, (a1 + 152), "enable-1x1conv-to-matmul", 24, &v5, &v4);
  *(a1 + 2216) = &unk_1F5AFB130;
  *(a1 + 2408) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::mps::anonymous namespace::RuntimeCanonicalizationPass::~RuntimeCanonicalizationPass(mlir::mps::_anonymous_namespace_::RuntimeCanonicalizationPass *this)
{
  *this = &unk_1F5AFEDF8;
  *(this + 277) = &unk_1F5B3E720;
  v2 = this + 2376;
  v3 = *(this + 300);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 277) = &unk_1F5B3E1D8;
  v4 = *(this + 289);
  if (v4 != *(this + 288))
  {
    free(v4);
  }

  v5 = *(this + 285);
  if (v5 != this + 2296)
  {
    free(v5);
  }

  *(this + 251) = &unk_1F5B3E720;
  v6 = *(this + 274);
  if (v6 == (this + 2168))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 251) = &unk_1F5B3E1D8;
  v7 = *(this + 263);
  if (v7 != *(this + 262))
  {
    free(v7);
  }

  v8 = *(this + 259);
  if (v8 != this + 2088)
  {
    free(v8);
  }

  *(this + 225) = &unk_1F5B3E720;
  v9 = *(this + 248);
  if (v9 == (this + 1960))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 225) = &unk_1F5B3E1D8;
  v10 = *(this + 237);
  if (v10 != *(this + 236))
  {
    free(v10);
  }

  v11 = *(this + 233);
  if (v11 != this + 1880)
  {
    free(v11);
  }

  *(this + 199) = &unk_1F5B3E720;
  v12 = *(this + 222);
  if (v12 == (this + 1752))
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *(this + 199) = &unk_1F5B3E1D8;
  v13 = *(this + 211);
  if (v13 != *(this + 210))
  {
    free(v13);
  }

  v14 = *(this + 207);
  if (v14 != this + 1672)
  {
    free(v14);
  }

  *(this + 173) = &unk_1F5B3E720;
  v15 = *(this + 196);
  if (v15 == (this + 1544))
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  *(this + 173) = &unk_1F5B3E1D8;
  v16 = *(this + 185);
  if (v16 != *(this + 184))
  {
    free(v16);
  }

  v17 = *(this + 181);
  if (v17 != this + 1464)
  {
    free(v17);
  }

  *(this + 147) = &unk_1F5B3E720;
  v18 = *(this + 170);
  if (v18 == (this + 1336))
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  *(this + 147) = &unk_1F5B3E1D8;
  v19 = *(this + 159);
  if (v19 != *(this + 158))
  {
    free(v19);
  }

  v20 = *(this + 155);
  if (v20 != this + 1256)
  {
    free(v20);
  }

  *(this + 121) = &unk_1F5B3E720;
  v21 = *(this + 144);
  if (v21 == (this + 1128))
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  *(this + 121) = &unk_1F5B3E1D8;
  v22 = *(this + 133);
  if (v22 != *(this + 132))
  {
    free(v22);
  }

  v23 = *(this + 129);
  if (v23 != this + 1048)
  {
    free(v23);
  }

  *(this + 95) = &unk_1F5B3E5A8;
  v24 = *(this + 118);
  if (v24 == (this + 920))
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  *(this + 95) = &unk_1F5B3E1D8;
  v25 = *(this + 107);
  if (v25 != *(this + 106))
  {
    free(v25);
  }

  v26 = *(this + 103);
  if (v26 != this + 840)
  {
    free(v26);
  }

  *(this + 69) = &unk_1F5B3E720;
  v27 = *(this + 92);
  if (v27 == (this + 712))
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }

  *(this + 69) = &unk_1F5B3E1D8;
  v28 = *(this + 81);
  if (v28 != *(this + 80))
  {
    free(v28);
  }

  v29 = *(this + 77);
  if (v29 != this + 632)
  {
    free(v29);
  }

  *(this + 43) = &unk_1F5B3E720;
  v30 = *(this + 66);
  if (v30 == (this + 504))
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))(v30);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v31 = *(this + 55);
  if (v31 != *(this + 54))
  {
    free(v31);
  }

  v32 = *(this + 51);
  if (v32 != this + 424)
  {
    free(v32);
  }

  *this = &unk_1F5B01A70;
  v33 = *(this + 39);
  if (v33)
  {
    *(this + 40) = v33;
    operator delete(v33);
  }

  if (*(this + 73))
  {
    v34 = *(this + 72);
    if (v34)
    {
      v35 = 0;
      do
      {
        v36 = *(*(this + 35) + v35);
        if (v36 != -8 && v36 != 0)
        {
          llvm::deallocate_buffer(v36, (*v36 + 17));
        }

        v35 += 8;
      }

      while (8 * v34 != v35);
    }
  }

  free(*(this + 35));
  v38 = *(this + 29);
  if (v38 != this + 248)
  {
    free(v38);
  }

  v39 = *(this + 23);
  if (v39 != this + 200)
  {
    free(v39);
  }

  v40 = *(this + 16);
  if (v40)
  {
    *(this + 17) = v40;
    operator delete(v40);
  }

  if (*(this + 120) == 1)
  {
    v41 = *(this + 8);
    if (v41 != *(this + 7))
    {
      free(v41);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSRuntimeCanonicalizationBase<mlir::mps::anonymous namespace::RuntimeCanonicalizationPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
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

uint64_t sub_1DFCE5E64(uint64_t result)
{
  if ((result & 1) == 0)
  {
    *(v1 + 40) |= 4uLL;
  }

  return result;
}

uint64_t mlir::mps::MPSRuntimeCanonicalizationBase<mlir::mps::anonymous namespace::RuntimeCanonicalizationPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x978uLL);
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
  *v4 = &unk_1F5AFEDF8;
  *&v9 = "Enables the folding of a matmul RHS input, where RHS is a transpose of a constant.";
  *(&v9 + 1) = 82;
  LOBYTE(v7) = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 344, v4 + 19, "enable-matmul-nt-to-nn-fold", 27, &v9, &v8);
  *(v4 + 43) = &unk_1F5AFB130;
  *(v4 + 67) = &unk_1F5AFB1B0;
  *&v9 = "Use legacy quantization patterns";
  *(&v9 + 1) = 32;
  LOBYTE(v7) = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 552, v4 + 19, "legacy-quantization", 19, &v9, &v8);
  *(v4 + 69) = &unk_1F5AFB130;
  *(v4 + 93) = &unk_1F5AFB1B0;
  *&v9 = "Maximum number of inputs supported by MPS quantization kernels.";
  *(&v9 + 1) = 63;
  v7 = 32;
  v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(v4 + 760, v4 + 19, "quant-ops-max-inputs-count", 26, &v9, &v8);
  *(v4 + 95) = &unk_1F5AFEE68;
  *(v4 + 119) = &unk_1F5AFEEE8;
  *&v9 = "Enables the canonicalization of 2D (de)convolutions to matmuls.";
  *(&v9 + 1) = 63;
  LOBYTE(v7) = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 968, v4 + 19, "enable-conv2d-to-matmul", 23, &v9, &v8);
  *(v4 + 121) = &unk_1F5AFB130;
  *(v4 + 145) = &unk_1F5AFB1B0;
  *&v9 = "Enables the canonicalization of reshaped convolutions to matmuls.";
  *(&v9 + 1) = 65;
  LOBYTE(v7) = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1176, v4 + 19, "enable-reshape-conv2d-biasadd-reshape", 37, &v9, &v8);
  *(v4 + 147) = &unk_1F5AFB130;
  *(v4 + 171) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, dequantize and gather ops will be canonicalized as a single-dispatch QuantizedGather op.";
  *(&v9 + 1) = 100;
  LOBYTE(v7) = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1384, v4 + 19, "enable-quantized-gather", 23, &v9, &v8);
  *(v4 + 173) = &unk_1F5AFB130;
  *(v4 + 197) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, dequantize and gather_nd ops will be canonicalized as a single-dispatch Fusion op.";
  *(&v9 + 1) = 94;
  LOBYTE(v7) = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1592, v4 + 19, "enable-quantized-gathernd-fusion", 32, &v9, &v8);
  *(v4 + 199) = &unk_1F5AFB130;
  *(v4 + 223) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, dequantize and conv2D ops will be canonicalized as a single-dispatch Fusion op.";
  *(&v9 + 1) = 91;
  LOBYTE(v7) = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1800, v4 + 19, "enable-quantized-conv-fusion", 28, &v9, &v8);
  *(v4 + 225) = &unk_1F5AFB130;
  *(v4 + 249) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, dequantize and matmul ops will be canonicalized as a single-dispatch Fusion op.";
  *(&v9 + 1) = 91;
  LOBYTE(v7) = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 2008, v4 + 19, "enable-quantized-matmul-fusion", 30, &v9, &v8);
  *(v4 + 251) = &unk_1F5AFB130;
  *(v4 + 275) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, canonicalize 1x1conv to MatMul";
  *(&v9 + 1) = 42;
  LOBYTE(v7) = 0;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 2216, v4 + 19, "enable-1x1conv-to-matmul", 24, &v9, &v8);
  *(v4 + 277) = &unk_1F5AFB130;
  *(v4 + 301) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5AFED88;
  *a2 = v4;
  return result;
}

void mlir::mps::anonymous namespace::RuntimeCanonicalizationPass::canonicalize(mlir::mps::_anonymous_namespace_::RuntimeCanonicalizationPass *this, mlir::Operation *a2)
{
  v687 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((a2 + 24));
  v635 = Context;
  v668 = 0u;
  v669 = 0u;
  v667 = Context;
  v670 = &v672;
  v671 = 0x600000000;
  v674 = 0;
  v673 = 0;
  v675 = 0;
  v677 = 0;
  v676 = 0;
  v678 = 0x2800000000;
  v679 = 0;
  v680 = 0;
  v681 = 0x2800000000;
  v653 = 0u;
  v654 = 0u;
  v652 = Context;
  v655 = &v657;
  v656 = 0x600000000;
  v658 = 0;
  v659 = 0;
  v660 = 0;
  v661 = 0;
  v662 = 0;
  v663 = 0x2800000000;
  v664 = 0;
  v665 = 0;
  v666 = 0x2800000000;
  v637 = Context;
  *__p = 0u;
  *v639 = 0u;
  v640 = &v642;
  v641 = 0x600000000;
  v643 = 0;
  v644 = 0;
  v645 = 0;
  v646 = 0;
  v647 = 0;
  v648 = 0x2800000000;
  v649 = 0;
  v650 = 0;
  v651 = 0x2800000000;
  v5 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 1);
  v683 = xmmword_1E86D3348;
  v684 = *&off_1E86D3358;
  v685 = xmmword_1E86D3368;
  v686 = *&off_1E86D3378;
  *v682 = xmmword_1E86D3328;
  *&v682[16] = *&off_1E86D3338;
  mlir::Pattern::Pattern((v5 + 1), "mps.matmul", 10, v634[0], Context, v682, 6uLL);
  *v5 = &unk_1F5AFF050;
  if (!v5[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_ComplexGEMM_CC]";
    *&v682[8] = 102;
    v6 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = *&v682[8];
    }

    v8 = *v682 + v7;
    v9 = *&v682[8] - v7;
    if (*&v682[8] - v7 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = *&v682[8] - v7;
    }

    v11 = v8 + v10;
    v12 = v9 - v10;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v5[8] = v11;
    v5[9] = v12;
  }

  v13 = *(v5 + 22);
  if (v13 > *(v5 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v5 + 10), (v5 + 12), v13, 16);
    LODWORD(v13) = *(v5 + 22);
  }

  *(v5 + 22) = v13;
  v14 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v16 = v668;
    v17 = *(&v668 + 1) - v668;
    v18 = (*(&v668 + 1) - v668) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v20 = v669 - v668;
    if ((v669 - v668) >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        goto LABEL_859;
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[8 * v18];
    *v23 = v5;
    v15 = v23 + 8;
    memcpy(v22, v16, v17);
    *&v668 = v22;
    *(&v668 + 1) = v15;
    *&v669 = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    **(&v668 + 1) = v5;
    v15 = (v14 + 8);
  }

  *(&v668 + 1) = v15;
  v24 = v667;
  v25 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 1);
  *v682 = xmmword_1E86D3388;
  *&v682[16] = *&off_1E86D3398;
  v683 = xmmword_1E86D33A8;
  v684 = *&off_1E86D33B8;
  mlir::Pattern::Pattern((v25 + 1), "mps.matmul", 10, v634[0], v24, v682, 4uLL);
  *v25 = &unk_1F5AFF090;
  if (!v25[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_ComplexGEMM_CR]";
    *&v682[8] = 102;
    v26 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = *&v682[8];
    }

    v28 = *v682 + v27;
    v29 = *&v682[8] - v27;
    if (*&v682[8] - v27 >= 0x12)
    {
      v30 = 18;
    }

    else
    {
      v30 = *&v682[8] - v27;
    }

    v31 = v28 + v30;
    v32 = v29 - v30;
    if (v32 >= v32 - 1)
    {
      --v32;
    }

    v25[8] = v31;
    v25[9] = v32;
  }

  v33 = *(v25 + 22);
  if (v33 > *(v25 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v25 + 10), (v25 + 12), v33, 16);
    LODWORD(v33) = *(v25 + 22);
  }

  *(v25 + 22) = v33;
  v34 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v36 = v668;
    v37 = *(&v668 + 1) - v668;
    v38 = (*(&v668 + 1) - v668) >> 3;
    v39 = v38 + 1;
    if ((v38 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v40 = v669 - v668;
    if ((v669 - v668) >> 2 > v39)
    {
      v39 = v40 >> 2;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFF8)
    {
      v41 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      if (v41 >> 61)
      {
        goto LABEL_859;
      }

      v42 = operator new(8 * v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = &v42[8 * v38];
    *v43 = v25;
    v35 = v43 + 8;
    memcpy(v42, v36, v37);
    *&v668 = v42;
    *(&v668 + 1) = v35;
    *&v669 = &v42[8 * v41];
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    **(&v668 + 1) = v25;
    v35 = (v34 + 8);
  }

  *(&v668 + 1) = v35;
  v44 = v667;
  v45 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 1);
  *v682 = xmmword_1E86D3388;
  *&v682[16] = *&off_1E86D3398;
  v683 = xmmword_1E86D33A8;
  v684 = *&off_1E86D33B8;
  mlir::Pattern::Pattern((v45 + 1), "mps.matmul", 10, v634[0], v44, v682, 4uLL);
  *v45 = &unk_1F5AFF0D0;
  if (!v45[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_ComplexGEMM_RC]";
    *&v682[8] = 102;
    v46 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = *&v682[8];
    }

    v48 = *v682 + v47;
    v49 = *&v682[8] - v47;
    if (*&v682[8] - v47 >= 0x12)
    {
      v50 = 18;
    }

    else
    {
      v50 = *&v682[8] - v47;
    }

    v51 = v48 + v50;
    v52 = v49 - v50;
    if (v52 >= v52 - 1)
    {
      --v52;
    }

    v45[8] = v51;
    v45[9] = v52;
  }

  v53 = *(v45 + 22);
  if (v53 > *(v45 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v45 + 10), (v45 + 12), v53, 16);
    LODWORD(v53) = *(v45 + 22);
  }

  *(v45 + 22) = v53;
  v54 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v56 = v668;
    v57 = *(&v668 + 1) - v668;
    v58 = (*(&v668 + 1) - v668) >> 3;
    v59 = v58 + 1;
    if ((v58 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v60 = v669 - v668;
    if ((v669 - v668) >> 2 > v59)
    {
      v59 = v60 >> 2;
    }

    if (v60 >= 0x7FFFFFFFFFFFFFF8)
    {
      v61 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v61 = v59;
    }

    if (v61)
    {
      if (v61 >> 61)
      {
        goto LABEL_859;
      }

      v62 = operator new(8 * v61);
    }

    else
    {
      v62 = 0;
    }

    v63 = &v62[8 * v58];
    *v63 = v45;
    v55 = v63 + 8;
    memcpy(v62, v56, v57);
    *&v668 = v62;
    *(&v668 + 1) = v55;
    *&v669 = &v62[8 * v61];
    if (v56)
    {
      operator delete(v56);
    }
  }

  else
  {
    **(&v668 + 1) = v45;
    v55 = (v54 + 8);
  }

  *(&v668 + 1) = v55;
  v64 = v667;
  v65 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 2);
  *v682 = xmmword_1E86D33C8;
  *&v682[16] = *&off_1E86D33D8;
  v683 = xmmword_1E86D33E8;
  mlir::Pattern::Pattern((v65 + 1), "mps.divide", 10, v634[0], v64, v682, 3uLL);
  *v65 = &unk_1F5AFF110;
  if (!v65[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_DivideOfPower]";
    *&v682[8] = 101;
    v66 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v66)
    {
      v67 = v66;
    }

    else
    {
      v67 = *&v682[8];
    }

    v68 = *v682 + v67;
    v69 = *&v682[8] - v67;
    if (*&v682[8] - v67 >= 0x12)
    {
      v70 = 18;
    }

    else
    {
      v70 = *&v682[8] - v67;
    }

    v71 = v68 + v70;
    v72 = v69 - v70;
    if (v72 >= v72 - 1)
    {
      --v72;
    }

    v65[8] = v71;
    v65[9] = v72;
  }

  v73 = *(v65 + 22);
  if (v73 > *(v65 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v65 + 10), (v65 + 12), v73, 16);
    LODWORD(v73) = *(v65 + 22);
  }

  *(v65 + 22) = v73;
  v74 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v76 = v668;
    v77 = *(&v668 + 1) - v668;
    v78 = (*(&v668 + 1) - v668) >> 3;
    v79 = v78 + 1;
    if ((v78 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v80 = v669 - v668;
    if ((v669 - v668) >> 2 > v79)
    {
      v79 = v80 >> 2;
    }

    if (v80 >= 0x7FFFFFFFFFFFFFF8)
    {
      v81 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v81 = v79;
    }

    if (v81)
    {
      if (v81 >> 61)
      {
        goto LABEL_859;
      }

      v82 = operator new(8 * v81);
    }

    else
    {
      v82 = 0;
    }

    v83 = &v82[8 * v78];
    *v83 = v65;
    v75 = v83 + 8;
    memcpy(v82, v76, v77);
    *&v668 = v82;
    *(&v668 + 1) = v75;
    *&v669 = &v82[8 * v81];
    if (v76)
    {
      operator delete(v76);
    }
  }

  else
  {
    **(&v668 + 1) = v65;
    v75 = (v74 + 8);
  }

  *(&v668 + 1) = v75;
  v84 = v667;
  v85 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 2);
  *v682 = xmmword_1E86D33F8;
  *&v682[16] = *&off_1E86D3408;
  mlir::Pattern::Pattern((v85 + 1), "mps.divide", 10, v634[0], v84, v682, 2uLL);
  *v85 = &unk_1F5AFF150;
  if (!v85[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_DivideSqrtToMultiplyRsqrt]";
    *&v682[8] = 113;
    v86 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v86)
    {
      v87 = v86;
    }

    else
    {
      v87 = *&v682[8];
    }

    v88 = *v682 + v87;
    v89 = *&v682[8] - v87;
    if (*&v682[8] - v87 >= 0x12)
    {
      v90 = 18;
    }

    else
    {
      v90 = *&v682[8] - v87;
    }

    v91 = v88 + v90;
    v92 = v89 - v90;
    if (v92 >= v92 - 1)
    {
      --v92;
    }

    v85[8] = v91;
    v85[9] = v92;
  }

  v93 = *(v85 + 22);
  if (v93 > *(v85 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v85 + 10), (v85 + 12), v93, 16);
    LODWORD(v93) = *(v85 + 22);
  }

  *(v85 + 22) = v93;
  v94 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v96 = v668;
    v97 = *(&v668 + 1) - v668;
    v98 = (*(&v668 + 1) - v668) >> 3;
    v99 = v98 + 1;
    if ((v98 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v100 = v669 - v668;
    if ((v669 - v668) >> 2 > v99)
    {
      v99 = v100 >> 2;
    }

    if (v100 >= 0x7FFFFFFFFFFFFFF8)
    {
      v101 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v101 = v99;
    }

    if (v101)
    {
      if (v101 >> 61)
      {
        goto LABEL_859;
      }

      v102 = operator new(8 * v101);
    }

    else
    {
      v102 = 0;
    }

    v103 = &v102[8 * v98];
    *v103 = v85;
    v95 = v103 + 8;
    memcpy(v102, v96, v97);
    *&v668 = v102;
    *(&v668 + 1) = v95;
    *&v669 = &v102[8 * v101];
    if (v96)
    {
      operator delete(v96);
    }
  }

  else
  {
    **(&v668 + 1) = v85;
    v95 = (v94 + 8);
  }

  *(&v668 + 1) = v95;
  v104 = v667;
  v105 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 4);
  *v682 = xmmword_1E86D3418;
  *&v682[16] = *&off_1E86D3428;
  mlir::Pattern::Pattern((v105 + 1), "mps.permute", 11, v634[0], v104, v682, 2uLL);
  *v105 = &unk_1F5AFF190;
  if (!v105[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_NCHW_ConvBias_NHWC]";
    *&v682[8] = 106;
    v106 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v106)
    {
      v107 = v106;
    }

    else
    {
      v107 = *&v682[8];
    }

    v108 = *v682 + v107;
    v109 = *&v682[8] - v107;
    if (*&v682[8] - v107 >= 0x12)
    {
      v110 = 18;
    }

    else
    {
      v110 = *&v682[8] - v107;
    }

    v111 = v108 + v110;
    v112 = v109 - v110;
    if (v112 >= v112 - 1)
    {
      --v112;
    }

    v105[8] = v111;
    v105[9] = v112;
  }

  v113 = *(v105 + 22);
  if (v113 > *(v105 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v105 + 10), (v105 + 12), v113, 16);
    LODWORD(v113) = *(v105 + 22);
  }

  *(v105 + 22) = v113;
  v114 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v116 = v668;
    v117 = *(&v668 + 1) - v668;
    v118 = (*(&v668 + 1) - v668) >> 3;
    v119 = v118 + 1;
    if ((v118 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v120 = v669 - v668;
    if ((v669 - v668) >> 2 > v119)
    {
      v119 = v120 >> 2;
    }

    if (v120 >= 0x7FFFFFFFFFFFFFF8)
    {
      v121 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v121 = v119;
    }

    if (v121)
    {
      if (v121 >> 61)
      {
        goto LABEL_859;
      }

      v122 = operator new(8 * v121);
    }

    else
    {
      v122 = 0;
    }

    v123 = &v122[8 * v118];
    *v123 = v105;
    v115 = v123 + 8;
    memcpy(v122, v116, v117);
    *&v668 = v122;
    *(&v668 + 1) = v115;
    *&v669 = &v122[8 * v121];
    if (v116)
    {
      operator delete(v116);
    }
  }

  else
  {
    **(&v668 + 1) = v105;
    v115 = (v114 + 8);
  }

  *(&v668 + 1) = v115;
  v124 = v667;
  v125 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 3);
  *v682 = "mps.conv_2d";
  *&v682[8] = 11;
  mlir::Pattern::Pattern((v125 + 1), "mps.permute", 11, v634[0], v124, v682, 1uLL);
  *v125 = &unk_1F5AFF1D0;
  if (!v125[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_NCHW_Conv_NHWC]";
    *&v682[8] = 102;
    v126 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v126)
    {
      v127 = v126;
    }

    else
    {
      v127 = *&v682[8];
    }

    v128 = *v682 + v127;
    v129 = *&v682[8] - v127;
    if (*&v682[8] - v127 >= 0x12)
    {
      v130 = 18;
    }

    else
    {
      v130 = *&v682[8] - v127;
    }

    v131 = v128 + v130;
    v132 = v129 - v130;
    if (v132 >= v132 - 1)
    {
      --v132;
    }

    v125[8] = v131;
    v125[9] = v132;
  }

  v133 = *(v125 + 22);
  if (v133 > *(v125 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v125 + 10), (v125 + 12), v133, 16);
    LODWORD(v133) = *(v125 + 22);
  }

  *(v125 + 22) = v133;
  v134 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v136 = v668;
    v137 = *(&v668 + 1) - v668;
    v138 = (*(&v668 + 1) - v668) >> 3;
    v139 = v138 + 1;
    if ((v138 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v140 = v669 - v668;
    if ((v669 - v668) >> 2 > v139)
    {
      v139 = v140 >> 2;
    }

    if (v140 >= 0x7FFFFFFFFFFFFFF8)
    {
      v141 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v141 = v139;
    }

    if (v141)
    {
      if (v141 >> 61)
      {
        goto LABEL_859;
      }

      v142 = operator new(8 * v141);
    }

    else
    {
      v142 = 0;
    }

    v143 = &v142[8 * v138];
    *v143 = v125;
    v135 = v143 + 8;
    memcpy(v142, v136, v137);
    *&v668 = v142;
    *(&v668 + 1) = v135;
    *&v669 = &v142[8 * v141];
    if (v136)
    {
      operator delete(v136);
    }
  }

  else
  {
    **(&v668 + 1) = v125;
    v135 = (v134 + 8);
  }

  *(&v668 + 1) = v135;
  v144 = v667;
  v145 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 2);
  *v682 = xmmword_1E86D3438;
  *&v682[16] = *&off_1E86D3448;
  mlir::Pattern::Pattern((v145 + 1), "mps.pad", 7, v634[0], v144, v682, 2uLL);
  *v145 = &unk_1F5AFF210;
  if (!v145[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_ReorderDequantPad]";
    *&v682[8] = 105;
    v146 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v146)
    {
      v147 = v146;
    }

    else
    {
      v147 = *&v682[8];
    }

    v148 = *v682 + v147;
    v149 = *&v682[8] - v147;
    if (*&v682[8] - v147 >= 0x12)
    {
      v150 = 18;
    }

    else
    {
      v150 = *&v682[8] - v147;
    }

    v151 = v148 + v150;
    v152 = v149 - v150;
    if (v152 >= v152 - 1)
    {
      --v152;
    }

    v145[8] = v151;
    v145[9] = v152;
  }

  v153 = *(v145 + 22);
  if (v153 > *(v145 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v145 + 10), (v145 + 12), v153, 16);
    LODWORD(v153) = *(v145 + 22);
  }

  *(v145 + 22) = v153;
  v154 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v156 = v668;
    v157 = *(&v668 + 1) - v668;
    v158 = (*(&v668 + 1) - v668) >> 3;
    v159 = v158 + 1;
    if ((v158 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v160 = v669 - v668;
    if ((v669 - v668) >> 2 > v159)
    {
      v159 = v160 >> 2;
    }

    if (v160 >= 0x7FFFFFFFFFFFFFF8)
    {
      v161 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v161 = v159;
    }

    if (v161)
    {
      if (v161 >> 61)
      {
        goto LABEL_859;
      }

      v162 = operator new(8 * v161);
    }

    else
    {
      v162 = 0;
    }

    v163 = &v162[8 * v158];
    *v163 = v145;
    v155 = v163 + 8;
    memcpy(v162, v156, v157);
    *&v668 = v162;
    *(&v668 + 1) = v155;
    *&v669 = &v162[8 * v161];
    if (v156)
    {
      operator delete(v156);
    }
  }

  else
  {
    **(&v668 + 1) = v145;
    v155 = (v154 + 8);
  }

  *(&v668 + 1) = v155;
  v164 = v667;
  v165 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 2);
  *v682 = "mps.reshape";
  *&v682[8] = 11;
  mlir::Pattern::Pattern((v165 + 1), "mps.reshape", 11, v634[0], v164, v682, 1uLL);
  *v165 = &unk_1F5AFF250;
  if (!v165[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_ReshapeReshape]";
    *&v682[8] = 102;
    v166 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v166)
    {
      v167 = v166;
    }

    else
    {
      v167 = *&v682[8];
    }

    v168 = *v682 + v167;
    v169 = *&v682[8] - v167;
    if (*&v682[8] - v167 >= 0x12)
    {
      v170 = 18;
    }

    else
    {
      v170 = *&v682[8] - v167;
    }

    v171 = v168 + v170;
    v172 = v169 - v170;
    if (v172 >= v172 - 1)
    {
      --v172;
    }

    v165[8] = v171;
    v165[9] = v172;
  }

  v173 = *(v165 + 22);
  if (v173 > *(v165 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v165 + 10), (v165 + 12), v173, 16);
    LODWORD(v173) = *(v165 + 22);
  }

  *(v165 + 22) = v173;
  v174 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v176 = v668;
    v177 = *(&v668 + 1) - v668;
    v178 = (*(&v668 + 1) - v668) >> 3;
    v179 = v178 + 1;
    if ((v178 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v180 = v669 - v668;
    if ((v669 - v668) >> 2 > v179)
    {
      v179 = v180 >> 2;
    }

    if (v180 >= 0x7FFFFFFFFFFFFFF8)
    {
      v181 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v181 = v179;
    }

    if (v181)
    {
      if (v181 >> 61)
      {
        goto LABEL_859;
      }

      v182 = operator new(8 * v181);
    }

    else
    {
      v182 = 0;
    }

    v183 = &v182[8 * v178];
    *v183 = v165;
    v175 = v183 + 8;
    memcpy(v182, v176, v177);
    *&v668 = v182;
    *(&v668 + 1) = v175;
    *&v669 = &v182[8 * v181];
    if (v176)
    {
      operator delete(v176);
    }
  }

  else
  {
    **(&v668 + 1) = v165;
    v175 = (v174 + 8);
  }

  *(&v668 + 1) = v175;
  v184 = v667;
  v185 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 1);
  *v682 = xmmword_1E86D3458;
  *&v682[16] = *&off_1E86D3468;
  mlir::Pattern::Pattern((v185 + 1), "mps.select", 10, v634[0], v184, v682, 2uLL);
  *v185 = &unk_1F5AFF290;
  if (!v185[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_SelectCondCast]";
    *&v682[8] = 102;
    v186 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v186)
    {
      v187 = v186;
    }

    else
    {
      v187 = *&v682[8];
    }

    v188 = *v682 + v187;
    v189 = *&v682[8] - v187;
    if (*&v682[8] - v187 >= 0x12)
    {
      v190 = 18;
    }

    else
    {
      v190 = *&v682[8] - v187;
    }

    v191 = v188 + v190;
    v192 = v189 - v190;
    if (v192 >= v192 - 1)
    {
      --v192;
    }

    v185[8] = v191;
    v185[9] = v192;
  }

  v193 = *(v185 + 22);
  if (v193 > *(v185 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v185 + 10), (v185 + 12), v193, 16);
    LODWORD(v193) = *(v185 + 22);
  }

  *(v185 + 22) = v193;
  v194 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v196 = v668;
    v197 = *(&v668 + 1) - v668;
    v198 = (*(&v668 + 1) - v668) >> 3;
    v199 = v198 + 1;
    if ((v198 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v200 = v669 - v668;
    if ((v669 - v668) >> 2 > v199)
    {
      v199 = v200 >> 2;
    }

    if (v200 >= 0x7FFFFFFFFFFFFFF8)
    {
      v201 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v201 = v199;
    }

    if (v201)
    {
      if (v201 >> 61)
      {
        goto LABEL_859;
      }

      v202 = operator new(8 * v201);
    }

    else
    {
      v202 = 0;
    }

    v203 = &v202[8 * v198];
    *v203 = v185;
    v195 = v203 + 8;
    memcpy(v202, v196, v197);
    *&v668 = v202;
    *(&v668 + 1) = v195;
    *&v669 = &v202[8 * v201];
    if (v196)
    {
      operator delete(v196);
    }
  }

  else
  {
    **(&v668 + 1) = v185;
    v195 = (v194 + 8);
  }

  *(&v668 + 1) = v195;
  v204 = v667;
  v205 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v634, 2);
  *v682 = "mps.square";
  *&v682[8] = 10;
  mlir::Pattern::Pattern((v205 + 1), "mps.square", 10, v634[0], v204, v682, 1uLL);
  *v205 = &unk_1F5AFF2D0;
  if (!v205[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_SquareOfAbsolute]";
    *&v682[8] = 104;
    v206 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v206)
    {
      v207 = v206;
    }

    else
    {
      v207 = *&v682[8];
    }

    v208 = *v682 + v207;
    v209 = *&v682[8] - v207;
    if (*&v682[8] - v207 >= 0x12)
    {
      v210 = 18;
    }

    else
    {
      v210 = *&v682[8] - v207;
    }

    v211 = v208 + v210;
    v212 = v209 - v210;
    if (v212 >= v212 - 1)
    {
      --v212;
    }

    v205[8] = v211;
    v205[9] = v212;
  }

  v213 = *(v205 + 22);
  if (v213 > *(v205 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v205 + 10), (v205 + 12), v213, 16);
    LODWORD(v213) = *(v205 + 22);
  }

  *(v205 + 22) = v213;
  v214 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v216 = v668;
    v217 = *(&v668 + 1) - v668;
    v218 = (*(&v668 + 1) - v668) >> 3;
    v219 = v218 + 1;
    if ((v218 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v220 = v669 - v668;
    if ((v669 - v668) >> 2 > v219)
    {
      v219 = v220 >> 2;
    }

    if (v220 >= 0x7FFFFFFFFFFFFFF8)
    {
      v221 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v221 = v219;
    }

    if (v221)
    {
      if (v221 >> 61)
      {
        goto LABEL_859;
      }

      v222 = operator new(8 * v221);
    }

    else
    {
      v222 = 0;
    }

    v223 = &v222[8 * v218];
    *v223 = v205;
    v215 = v223 + 8;
    memcpy(v222, v216, v217);
    *&v668 = v222;
    *(&v668 + 1) = v215;
    *&v669 = &v222[8 * v221];
    if (v216)
    {
      operator delete(v216);
    }
  }

  else
  {
    **(&v668 + 1) = v205;
    v215 = (v214 + 8);
  }

  *(&v668 + 1) = v215;
  _ZN4mlir17RewritePatternSet6insertIJNS_3mps12_GLOBAL__N_121CanonicalizeReductionINS2_17ReductionArgMaxOpEEENS4_INS2_17ReductionArgMinOpEEENS4_INS2_14ReductionMaxOpEEENS4_INS2_14ReductionMinOpEEENS4_INS2_15ReductionProdOpEEENS4_INS2_14ReductionSumOpEEENS3_25CanonicalizeReductionAxesIS5_EENSH_IS7_EENSH_IS9_EENSH_ISB_EENSH_ISD_EENSH_ISF_EENS3_27CanonicalizeMatMulTransposeENS3_20CanonicalizeMatMul1DENS3_27CanonicalizeConvToDepthwiseINS2_8Conv2DOpEEENSQ_INS2_20Conv2DDataGradientOpEEENS3_33CanonicalizeSparseMatMulTransposeENS3_35CanonicalizeQuantizedMatmulTranposeENS3_7FuseRMSINS2_10MultiplyOpEEENSX_INS2_8DivideOpEEENS3_16CanonicalizeRoPEENS3_30SpaceToBatchDWConvBatchToSpaceENS3_24CanonicalizeReadVariableENS3_18ReshapeSDPAReshapeENS3_24CanonicalizeSparseMatMulENS3_40CanonicalizeQuantizedMatMulExpandSqueezeEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_(&v667, &v635);
  if (*(this + 1512) == 1)
  {
    v224 = v667;
    v225 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(v682, 1);
    mlir::Pattern::Pattern((v225 + 1), "mps.gather", 10, *v682, v224, 0, 0);
    *v225 = &unk_1F5AFFCD0;
    if (!v225[9])
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedGather]";
      *&v682[8] = 111;
      v226 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v226)
      {
        v227 = v226;
      }

      else
      {
        v227 = *&v682[8];
      }

      v228 = *v682 + v227;
      v229 = *&v682[8] - v227;
      if (*&v682[8] - v227 >= 0x12)
      {
        v230 = 18;
      }

      else
      {
        v230 = *&v682[8] - v227;
      }

      v231 = v228 + v230;
      v232 = v229 - v230;
      if (v232 >= v232 - 1)
      {
        --v232;
      }

      v225[8] = v231;
      v225[9] = v232;
    }

    v233 = *(v225 + 22);
    if (v233 > *(v225 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v225 + 10), (v225 + 12), v233, 16);
      LODWORD(v233) = *(v225 + 22);
    }

    *(v225 + 22) = v233;
    v234 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v236 = v668;
      v237 = *(&v668 + 1) - v668;
      v238 = (*(&v668 + 1) - v668) >> 3;
      v239 = v238 + 1;
      if ((v238 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v240 = v669 - v668;
      if ((v669 - v668) >> 2 > v239)
      {
        v239 = v240 >> 2;
      }

      if (v240 >= 0x7FFFFFFFFFFFFFF8)
      {
        v241 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v241 = v239;
      }

      if (v241)
      {
        if (v241 >> 61)
        {
          goto LABEL_859;
        }

        v242 = operator new(8 * v241);
      }

      else
      {
        v242 = 0;
      }

      v243 = &v242[8 * v238];
      *v243 = v225;
      v235 = v243 + 8;
      memcpy(v242, v236, v237);
      *&v668 = v242;
      *(&v668 + 1) = v235;
      *&v669 = &v242[8 * v241];
      if (v236)
      {
        operator delete(v236);
      }
    }

    else
    {
      **(&v668 + 1) = v225;
      v235 = (v234 + 8);
    }

    *(&v668 + 1) = v235;
  }

  if (*(this + 1720) == 1)
  {
    v244 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(v682, 1);
    mlir::Pattern::Pattern((v244 + 1), "mps.gather_nd", 13, *v682, Context, 0, 0);
    *v244 = &unk_1F5AFFD30;
    if (!v244[9])
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedGatherNDPatternToFusionOp]";
      *&v682[8] = 130;
      v245 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v245)
      {
        v246 = v245;
      }

      else
      {
        v246 = *&v682[8];
      }

      v247 = *v682 + v246;
      v248 = *&v682[8] - v246;
      if (*&v682[8] - v246 >= 0x12)
      {
        v249 = 18;
      }

      else
      {
        v249 = *&v682[8] - v246;
      }

      v250 = v247 + v249;
      v251 = v248 - v249;
      if (v251 >= v251 - 1)
      {
        --v251;
      }

      v244[8] = v250;
      v244[9] = v251;
    }

    v252 = *(v244 + 22);
    if (v252 > *(v244 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v244 + 10), (v244 + 12), v252, 16);
      LODWORD(v252) = *(v244 + 22);
    }

    *(v244 + 22) = v252;
    v253 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v255 = v668;
      v256 = *(&v668 + 1) - v668;
      v257 = (*(&v668 + 1) - v668) >> 3;
      v258 = v257 + 1;
      if ((v257 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v259 = v669 - v668;
      if ((v669 - v668) >> 2 > v258)
      {
        v258 = v259 >> 2;
      }

      if (v259 >= 0x7FFFFFFFFFFFFFF8)
      {
        v260 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v260 = v258;
      }

      if (v260)
      {
        if (v260 >> 61)
        {
          goto LABEL_859;
        }

        v261 = operator new(8 * v260);
      }

      else
      {
        v261 = 0;
      }

      v262 = &v261[8 * v257];
      *v262 = v244;
      v254 = v262 + 8;
      memcpy(v261, v255, v256);
      *&v668 = v261;
      *(&v668 + 1) = v254;
      *&v669 = &v261[8 * v260];
      if (v255)
      {
        operator delete(v255);
      }
    }

    else
    {
      **(&v668 + 1) = v244;
      v254 = (v253 + 8);
    }

    *(&v668 + 1) = v254;
  }

  if (*(this + 680) == 1)
  {
    v263 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(v682, 2);
    mlir::Pattern::Pattern((v263 + 1), "mps.matmul", 10, *v682, Context, 0, 0);
    *v263 = &unk_1F5AFFD90;
    if (!v263[9])
    {
      v264 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedLayerScale<mlir::mps::MatMulOp>]";
      v265 = 136;
LABEL_375:
      *v682 = v264;
      *&v682[8] = v265;
      v286 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v286)
      {
        v287 = v286;
      }

      else
      {
        v287 = *&v682[8];
      }

      v288 = *v682 + v287;
      v289 = *&v682[8] - v287;
      if (*&v682[8] - v287 >= 0x12)
      {
        v290 = 18;
      }

      else
      {
        v290 = *&v682[8] - v287;
      }

      v291 = v288 + v290;
      v292 = v289 - v290;
      if (v292 >= v292 - 1)
      {
        --v292;
      }

      v263[8] = v291;
      v263[9] = v292;
    }
  }

  else
  {
    v266 = operator new(0x68uLL);
    v267 = *(this + 222);
    mlir::PatternBenefit::PatternBenefit(v682, 2);
    mlir::Pattern::Pattern((v266 + 2), "mps.matmul", 10, *v682, Context, 0, 0);
    *v266 = &unk_1F5AFFDF0;
    v266[24] = v267;
    if (!*(v266 + 9))
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConditionallyCanonicalizeQuantizedOp<mlir::mps::MatMulOp>]";
      *&v682[8] = 141;
      v268 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v268)
      {
        v269 = v268;
      }

      else
      {
        v269 = *&v682[8];
      }

      v270 = *v682 + v269;
      v271 = *&v682[8] - v269;
      if (*&v682[8] - v269 >= 0x12)
      {
        v272 = 18;
      }

      else
      {
        v272 = *&v682[8] - v269;
      }

      v273 = v270 + v272;
      v274 = v271 - v272;
      if (v274 >= v274 - 1)
      {
        --v274;
      }

      *(v266 + 8) = v273;
      *(v266 + 9) = v274;
    }

    v275 = v266[22];
    if (v275 > v266[23])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v266 + 20), (v266 + 24), v275, 16);
      LODWORD(v275) = v266[22];
    }

    v266[22] = v275;
    v276 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v278 = v668;
      v279 = *(&v668 + 1) - v668;
      v280 = (*(&v668 + 1) - v668) >> 3;
      v281 = v280 + 1;
      if ((v280 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v282 = v669 - v668;
      if ((v669 - v668) >> 2 > v281)
      {
        v281 = v282 >> 2;
      }

      if (v282 >= 0x7FFFFFFFFFFFFFF8)
      {
        v283 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v283 = v281;
      }

      if (v283)
      {
        if (v283 >> 61)
        {
          goto LABEL_859;
        }

        v284 = operator new(8 * v283);
      }

      else
      {
        v284 = 0;
      }

      v285 = &v284[8 * v280];
      *v285 = v266;
      v277 = v285 + 8;
      memcpy(v284, v278, v279);
      *&v668 = v284;
      *(&v668 + 1) = v277;
      *&v669 = &v284[8 * v283];
      if (v278)
      {
        operator delete(v278);
      }
    }

    else
    {
      **(&v668 + 1) = v266;
      v277 = (v276 + 8);
    }

    *(&v668 + 1) = v277;
    if (*(this + 1928) != 1)
    {
      goto LABEL_401;
    }

    v263 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(v682, 2);
    mlir::Pattern::Pattern((v263 + 1), "mps.conv_2d", 11, *v682, Context, 0, 0);
    *v263 = &unk_1F5AFFEB0;
    if (!v263[9])
    {
      v264 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedConv2DPatternToFusionOp]";
      v265 = 128;
      goto LABEL_375;
    }
  }

  v293 = *(v263 + 22);
  if (v293 > *(v263 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v263 + 10), (v263 + 12), v293, 16);
    LODWORD(v293) = *(v263 + 22);
  }

  *(v263 + 22) = v293;
  v294 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v296 = v668;
    v297 = *(&v668 + 1) - v668;
    v298 = (*(&v668 + 1) - v668) >> 3;
    v299 = v298 + 1;
    if ((v298 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v300 = v669 - v668;
    if ((v669 - v668) >> 2 > v299)
    {
      v299 = v300 >> 2;
    }

    if (v300 >= 0x7FFFFFFFFFFFFFF8)
    {
      v301 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v301 = v299;
    }

    if (v301)
    {
      if (v301 >> 61)
      {
        goto LABEL_859;
      }

      v302 = operator new(8 * v301);
    }

    else
    {
      v302 = 0;
    }

    v303 = &v302[8 * v298];
    *v303 = v263;
    v295 = v303 + 8;
    memcpy(v302, v296, v297);
    *&v668 = v302;
    *(&v668 + 1) = v295;
    *&v669 = &v302[8 * v301];
    if (v296)
    {
      operator delete(v296);
    }
  }

  else
  {
    **(&v668 + 1) = v263;
    v295 = (v294 + 8);
  }

  *(&v668 + 1) = v295;
LABEL_401:
  if (*(this + 2136) == 1)
  {
    v304 = operator new(0x60uLL);
    v305 = v635;
    mlir::PatternBenefit::PatternBenefit(v682, 3);
    mlir::Pattern::Pattern((v304 + 1), "mps.matmul", 10, *v682, v305, 0, 0);
    *v304 = &unk_1F5AFFF10;
    if (!v304[9])
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedMatMulPatternToFusionOp]";
      *&v682[8] = 128;
      v306 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v306)
      {
        v307 = v306;
      }

      else
      {
        v307 = *&v682[8];
      }

      v308 = *v682 + v307;
      v309 = *&v682[8] - v307;
      if (*&v682[8] - v307 >= 0x12)
      {
        v310 = 18;
      }

      else
      {
        v310 = *&v682[8] - v307;
      }

      v311 = v308 + v310;
      v312 = v309 - v310;
      if (v312 >= v312 - 1)
      {
        --v312;
      }

      v304[8] = v311;
      v304[9] = v312;
    }

    v313 = *(v304 + 22);
    if (v313 > *(v304 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v304 + 10), (v304 + 12), v313, 16);
      LODWORD(v313) = *(v304 + 22);
    }

    *(v304 + 22) = v313;
    v314 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v316 = v668;
      v317 = *(&v668 + 1) - v668;
      v318 = (*(&v668 + 1) - v668) >> 3;
      v319 = v318 + 1;
      if ((v318 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v320 = v669 - v668;
      if ((v669 - v668) >> 2 > v319)
      {
        v319 = v320 >> 2;
      }

      if (v320 >= 0x7FFFFFFFFFFFFFF8)
      {
        v321 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v321 = v319;
      }

      if (v321)
      {
        if (v321 >> 61)
        {
          goto LABEL_859;
        }

        v322 = operator new(8 * v321);
      }

      else
      {
        v322 = 0;
      }

      v323 = &v322[8 * v318];
      *v323 = v304;
      v315 = v323 + 8;
      memcpy(v322, v316, v317);
      *&v668 = v322;
      *(&v668 + 1) = v315;
      *&v669 = &v322[8 * v321];
      if (v316)
      {
        operator delete(v316);
      }
    }

    else
    {
      **(&v668 + 1) = v304;
      v315 = (v314 + 8);
    }

    *(&v668 + 1) = v315;
  }

  if (*(this + 472) == 1)
  {
    v324 = operator new(0x60uLL);
    v325 = v635;
    mlir::PatternBenefit::PatternBenefit(v682, 1);
    mlir::Pattern::Pattern((v324 + 1), "mps.transpose", 13, *v682, v325, 0, 0);
    *v324 = &unk_1F5AFFF70;
    if (!v324[9])
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMulNNToNT]";
      *&v682[8] = 108;
      v326 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v326)
      {
        v327 = v326;
      }

      else
      {
        v327 = *&v682[8];
      }

      v328 = *v682 + v327;
      v329 = *&v682[8] - v327;
      if (*&v682[8] - v327 >= 0x12)
      {
        v330 = 18;
      }

      else
      {
        v330 = *&v682[8] - v327;
      }

      v331 = v328 + v330;
      v332 = v329 - v330;
      if (v332 >= v332 - 1)
      {
        --v332;
      }

      v324[8] = v331;
      v324[9] = v332;
    }

    v333 = *(v324 + 22);
    if (v333 > *(v324 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v324 + 10), (v324 + 12), v333, 16);
      LODWORD(v333) = *(v324 + 22);
    }

    *(v324 + 22) = v333;
    v334 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v336 = v668;
      v337 = *(&v668 + 1) - v668;
      v338 = (*(&v668 + 1) - v668) >> 3;
      v339 = v338 + 1;
      if ((v338 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v340 = v669 - v668;
      if ((v669 - v668) >> 2 > v339)
      {
        v339 = v340 >> 2;
      }

      if (v340 >= 0x7FFFFFFFFFFFFFF8)
      {
        v341 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v341 = v339;
      }

      if (v341)
      {
        if (v341 >> 61)
        {
          goto LABEL_859;
        }

        v342 = operator new(8 * v341);
      }

      else
      {
        v342 = 0;
      }

      v343 = &v342[8 * v338];
      *v343 = v324;
      v335 = v343 + 8;
      memcpy(v342, v336, v337);
      *&v668 = v342;
      *(&v668 + 1) = v335;
      *&v669 = &v342[8 * v341];
      if (v336)
      {
        operator delete(v336);
      }
    }

    else
    {
      **(&v668 + 1) = v324;
      v335 = (v334 + 8);
    }

    *(&v668 + 1) = v335;
  }

  if (*(this + 1304) == 1)
  {
    v344 = operator new(0x60uLL);
    v345 = v635;
    mlir::PatternBenefit::PatternBenefit(v682, 1);
    mlir::Pattern::Pattern((v344 + 1), "mps.reshape", 11, *v682, v345, 0, 0);
    *v344 = &unk_1F5AFFFD0;
    if (!v344[9])
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ReshapeConvBiasReshape]";
      *&v682[8] = 106;
      v346 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v346)
      {
        v347 = v346;
      }

      else
      {
        v347 = *&v682[8];
      }

      v348 = *v682 + v347;
      v349 = *&v682[8] - v347;
      if (*&v682[8] - v347 >= 0x12)
      {
        v350 = 18;
      }

      else
      {
        v350 = *&v682[8] - v347;
      }

      v351 = v348 + v350;
      v352 = v349 - v350;
      if (v352 >= v352 - 1)
      {
        --v352;
      }

      v344[8] = v351;
      v344[9] = v352;
    }

    v353 = *(v344 + 22);
    if (v353 > *(v344 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v344 + 10), (v344 + 12), v353, 16);
      LODWORD(v353) = *(v344 + 22);
    }

    *(v344 + 22) = v353;
    v354 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v356 = v668;
      v357 = *(&v668 + 1) - v668;
      v358 = (*(&v668 + 1) - v668) >> 3;
      v359 = v358 + 1;
      if ((v358 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v360 = v669 - v668;
      if ((v669 - v668) >> 2 > v359)
      {
        v359 = v360 >> 2;
      }

      if (v360 >= 0x7FFFFFFFFFFFFFF8)
      {
        v361 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v361 = v359;
      }

      if (v361)
      {
        if (v361 >> 61)
        {
          goto LABEL_859;
        }

        v362 = operator new(8 * v361);
      }

      else
      {
        v362 = 0;
      }

      v363 = &v362[8 * v358];
      *v363 = v344;
      v355 = v363 + 8;
      memcpy(v362, v356, v357);
      *&v668 = v362;
      *(&v668 + 1) = v355;
      *&v669 = &v362[8 * v361];
      if (v356)
      {
        operator delete(v356);
      }
    }

    else
    {
      **(&v668 + 1) = v344;
      v355 = (v354 + 8);
    }

    *(&v668 + 1) = v355;
  }

  v364 = operator new(0x60uLL);
  v365 = v635;
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v364 + 1), "mps.gather_nd", 13, *v682, v365, 0, 0);
  *v364 = &unk_1F5B00030;
  if (!v364[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeGatherNd]";
    *&v682[8] = 104;
    v366 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v366)
    {
      v367 = v366;
    }

    else
    {
      v367 = *&v682[8];
    }

    v368 = *v682 + v367;
    v369 = *&v682[8] - v367;
    if (*&v682[8] - v367 >= 0x12)
    {
      v370 = 18;
    }

    else
    {
      v370 = *&v682[8] - v367;
    }

    v371 = v368 + v370;
    v372 = v369 - v370;
    if (v372 >= v372 - 1)
    {
      --v372;
    }

    v364[8] = v371;
    v364[9] = v372;
  }

  v373 = *(v364 + 22);
  if (v373 > *(v364 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v364 + 10), (v364 + 12), v373, 16);
    LODWORD(v373) = *(v364 + 22);
  }

  *(v364 + 22) = v373;
  v374 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v376 = v668;
    v377 = *(&v668 + 1) - v668;
    v378 = (*(&v668 + 1) - v668) >> 3;
    v379 = v378 + 1;
    if ((v378 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v380 = v669 - v668;
    if ((v669 - v668) >> 2 > v379)
    {
      v379 = v380 >> 2;
    }

    if (v380 >= 0x7FFFFFFFFFFFFFF8)
    {
      v381 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v381 = v379;
    }

    if (v381)
    {
      if (v381 >> 61)
      {
        goto LABEL_859;
      }

      v382 = operator new(8 * v381);
    }

    else
    {
      v382 = 0;
    }

    v383 = &v382[8 * v378];
    *v383 = v364;
    v375 = v383 + 8;
    memcpy(v382, v376, v377);
    *&v668 = v382;
    *(&v668 + 1) = v375;
    *&v669 = &v382[8 * v381];
    if (v376)
    {
      operator delete(v376);
    }
  }

  else
  {
    **(&v668 + 1) = v364;
    v375 = (v374 + 8);
  }

  *(&v668 + 1) = v375;
  v384 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v384 + 1), "mpsx.buffer_to_tensor", 21, *v682, v365, 0, 0);
  *v384 = &unk_1F5B00090;
  if (!v384[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeTensorBuffer]";
    *&v682[8] = 108;
    v385 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v385)
    {
      v386 = v385;
    }

    else
    {
      v386 = *&v682[8];
    }

    v387 = *v682 + v386;
    v388 = *&v682[8] - v386;
    if (*&v682[8] - v386 >= 0x12)
    {
      v389 = 18;
    }

    else
    {
      v389 = *&v682[8] - v386;
    }

    v390 = v387 + v389;
    v391 = v388 - v389;
    if (v391 >= v391 - 1)
    {
      --v391;
    }

    v384[8] = v390;
    v384[9] = v391;
  }

  v392 = *(v384 + 22);
  if (v392 > *(v384 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v384 + 10), (v384 + 12), v392, 16);
    LODWORD(v392) = *(v384 + 22);
  }

  *(v384 + 22) = v392;
  v393 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v395 = v668;
    v396 = *(&v668 + 1) - v668;
    v397 = (*(&v668 + 1) - v668) >> 3;
    v398 = v397 + 1;
    if ((v397 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v399 = v669 - v668;
    if ((v669 - v668) >> 2 > v398)
    {
      v398 = v399 >> 2;
    }

    if (v399 >= 0x7FFFFFFFFFFFFFF8)
    {
      v400 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v400 = v398;
    }

    if (v400)
    {
      if (v400 >> 61)
      {
        goto LABEL_859;
      }

      v401 = operator new(8 * v400);
    }

    else
    {
      v401 = 0;
    }

    v402 = &v401[8 * v397];
    *v402 = v384;
    v394 = v402 + 8;
    memcpy(v401, v395, v396);
    *&v668 = v401;
    *(&v668 + 1) = v394;
    *&v669 = &v401[8 * v400];
    if (v395)
    {
      operator delete(v395);
    }
  }

  else
  {
    **(&v668 + 1) = v384;
    v394 = (v393 + 8);
  }

  *(&v668 + 1) = v394;
  v403 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v403 + 1), "mps.dequantize", 14, *v682, v365, 0, 0);
  *v403 = &unk_1F5B000F0;
  if (!v403[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeDeinterleaveDequantize]";
    *&v682[8] = 118;
    v404 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v404)
    {
      v405 = v404;
    }

    else
    {
      v405 = *&v682[8];
    }

    v406 = *v682 + v405;
    v407 = *&v682[8] - v405;
    if (*&v682[8] - v405 >= 0x12)
    {
      v408 = 18;
    }

    else
    {
      v408 = *&v682[8] - v405;
    }

    v409 = v406 + v408;
    v410 = v407 - v408;
    if (v410 >= v410 - 1)
    {
      --v410;
    }

    v403[8] = v409;
    v403[9] = v410;
  }

  v411 = *(v403 + 22);
  if (v411 > *(v403 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v403 + 10), (v403 + 12), v411, 16);
    LODWORD(v411) = *(v403 + 22);
  }

  *(v403 + 22) = v411;
  v412 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v414 = v668;
    v415 = *(&v668 + 1) - v668;
    v416 = (*(&v668 + 1) - v668) >> 3;
    v417 = v416 + 1;
    if ((v416 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v418 = v669 - v668;
    if ((v669 - v668) >> 2 > v417)
    {
      v417 = v418 >> 2;
    }

    if (v418 >= 0x7FFFFFFFFFFFFFF8)
    {
      v419 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v419 = v417;
    }

    if (v419)
    {
      if (v419 >> 61)
      {
        goto LABEL_859;
      }

      v420 = operator new(8 * v419);
    }

    else
    {
      v420 = 0;
    }

    v421 = &v420[8 * v416];
    *v421 = v403;
    v413 = v421 + 8;
    memcpy(v420, v414, v415);
    *&v668 = v420;
    *(&v668 + 1) = v413;
    *&v669 = &v420[8 * v419];
    if (v414)
    {
      operator delete(v414);
    }
  }

  else
  {
    **(&v668 + 1) = v403;
    v413 = (v412 + 8);
  }

  *(&v668 + 1) = v413;
  v422 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v422 + 1), "mps.read_variable", 17, *v682, v365, 0, 0);
  *v422 = &unk_1F5B00150;
  if (!v422[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReadStateTensorBuffer]";
    *&v682[8] = 117;
    v423 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v423)
    {
      v424 = v423;
    }

    else
    {
      v424 = *&v682[8];
    }

    v425 = *v682 + v424;
    v426 = *&v682[8] - v424;
    if (*&v682[8] - v424 >= 0x12)
    {
      v427 = 18;
    }

    else
    {
      v427 = *&v682[8] - v424;
    }

    v428 = v425 + v427;
    v429 = v426 - v427;
    if (v429 >= v429 - 1)
    {
      --v429;
    }

    v422[8] = v428;
    v422[9] = v429;
  }

  v430 = *(v422 + 22);
  if (v430 > *(v422 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v422 + 10), (v422 + 12), v430, 16);
    LODWORD(v430) = *(v422 + 22);
  }

  *(v422 + 22) = v430;
  v431 = *(&v653 + 1);
  if (*(&v653 + 1) >= v654)
  {
    v433 = v653;
    v434 = *(&v653 + 1) - v653;
    v435 = (*(&v653 + 1) - v653) >> 3;
    v436 = v435 + 1;
    if ((v435 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v437 = v654 - v653;
    if ((v654 - v653) >> 2 > v436)
    {
      v436 = v437 >> 2;
    }

    if (v437 >= 0x7FFFFFFFFFFFFFF8)
    {
      v438 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v438 = v436;
    }

    if (v438)
    {
      if (v438 >> 61)
      {
        goto LABEL_859;
      }

      v439 = operator new(8 * v438);
    }

    else
    {
      v439 = 0;
    }

    v440 = &v439[8 * v435];
    *v440 = v422;
    v432 = v440 + 8;
    memcpy(v439, v433, v434);
    *&v653 = v439;
    *(&v653 + 1) = v432;
    *&v654 = &v439[8 * v438];
    if (v433)
    {
      operator delete(v433);
    }
  }

  else
  {
    **(&v653 + 1) = v422;
    v432 = (v431 + 8);
  }

  *(&v653 + 1) = v432;
  v441 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v441 + 1), "mps.assign_variable", 19, *v682, v365, 0, 0);
  *v441 = &unk_1F5B001B0;
  if (!v441[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeWriteStateTensorBuffer]";
    *&v682[8] = 118;
    v442 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v442)
    {
      v443 = v442;
    }

    else
    {
      v443 = *&v682[8];
    }

    v444 = *v682 + v443;
    v445 = *&v682[8] - v443;
    if (*&v682[8] - v443 >= 0x12)
    {
      v446 = 18;
    }

    else
    {
      v446 = *&v682[8] - v443;
    }

    v447 = v444 + v446;
    v448 = v445 - v446;
    if (v448 >= v448 - 1)
    {
      --v448;
    }

    v441[8] = v447;
    v441[9] = v448;
  }

  v449 = *(v441 + 22);
  if (v449 > *(v441 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v441 + 10), (v441 + 12), v449, 16);
    LODWORD(v449) = *(v441 + 22);
  }

  *(v441 + 22) = v449;
  v450 = __p[1];
  if (__p[1] >= v639[0])
  {
    v452 = __p[0];
    v453 = __p[1] - __p[0];
    v454 = (__p[1] - __p[0]) >> 3;
    v455 = v454 + 1;
    if ((v454 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v456 = v639[0] - __p[0];
    if ((v639[0] - __p[0]) >> 2 > v455)
    {
      v455 = v456 >> 2;
    }

    if (v456 >= 0x7FFFFFFFFFFFFFF8)
    {
      v457 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v457 = v455;
    }

    if (v457)
    {
      if (v457 >> 61)
      {
        goto LABEL_859;
      }

      v458 = operator new(8 * v457);
    }

    else
    {
      v458 = 0;
    }

    v459 = &v458[8 * v454];
    *v459 = v441;
    v451 = v459 + 8;
    memcpy(v458, v452, v453);
    __p[0] = v458;
    __p[1] = v451;
    v639[0] = &v458[8 * v457];
    if (v452)
    {
      operator delete(v452);
    }
  }

  else
  {
    *__p[1] = v441;
    v451 = v450 + 8;
  }

  __p[1] = v451;
  v460 = operator new(0x68uLL);
  v461 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v460 + 8), "mps.conv_2d", 11, *v682, v365, 0, 0);
  *v460 = &unk_1F5B00210;
  v460[96] = v461;
  if (!*(v460 + 9))
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToMatMul<mlir::mps::Conv2DOp>]";
    *&v682[8] = 129;
    v462 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v462)
    {
      v463 = v462;
    }

    else
    {
      v463 = *&v682[8];
    }

    v464 = *v682 + v463;
    v465 = *&v682[8] - v463;
    if (*&v682[8] - v463 >= 0x12)
    {
      v466 = 18;
    }

    else
    {
      v466 = *&v682[8] - v463;
    }

    v467 = v464 + v466;
    v468 = v465 - v466;
    if (v468 >= v468 - 1)
    {
      --v468;
    }

    *(v460 + 8) = v467;
    *(v460 + 9) = v468;
  }

  v469 = *(v460 + 22);
  if (v469 > *(v460 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v460 + 80), (v460 + 96), v469, 16);
    LODWORD(v469) = *(v460 + 22);
  }

  *(v460 + 22) = v469;
  v470 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v472 = v668;
    v473 = *(&v668 + 1) - v668;
    v474 = (*(&v668 + 1) - v668) >> 3;
    v475 = v474 + 1;
    if ((v474 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v476 = v669 - v668;
    if ((v669 - v668) >> 2 > v475)
    {
      v475 = v476 >> 2;
    }

    if (v476 >= 0x7FFFFFFFFFFFFFF8)
    {
      v477 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v477 = v475;
    }

    if (v477)
    {
      if (v477 >> 61)
      {
        goto LABEL_859;
      }

      v478 = operator new(8 * v477);
    }

    else
    {
      v478 = 0;
    }

    v479 = &v478[8 * v474];
    *v479 = v460;
    v471 = v479 + 8;
    memcpy(v478, v472, v473);
    *&v668 = v478;
    *(&v668 + 1) = v471;
    *&v669 = &v478[8 * v477];
    if (v472)
    {
      operator delete(v472);
    }
  }

  else
  {
    **(&v668 + 1) = v460;
    v471 = (v470 + 8);
  }

  *(&v668 + 1) = v471;
  v480 = operator new(0x68uLL);
  v481 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v480 + 8), "mps.conv_2d_data_gradient", 25, *v682, v365, 0, 0);
  *v480 = &unk_1F5B00270;
  v480[96] = v481;
  if (!*(v480 + 9))
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToMatMul<mlir::mps::Conv2DDataGradientOp>]";
    *&v682[8] = 141;
    v482 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v482)
    {
      v483 = v482;
    }

    else
    {
      v483 = *&v682[8];
    }

    v484 = *v682 + v483;
    v485 = *&v682[8] - v483;
    if (*&v682[8] - v483 >= 0x12)
    {
      v486 = 18;
    }

    else
    {
      v486 = *&v682[8] - v483;
    }

    v487 = v484 + v486;
    v488 = v485 - v486;
    if (v488 >= v488 - 1)
    {
      --v488;
    }

    *(v480 + 8) = v487;
    *(v480 + 9) = v488;
  }

  v489 = *(v480 + 22);
  if (v489 > *(v480 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v480 + 80), (v480 + 96), v489, 16);
    LODWORD(v489) = *(v480 + 22);
  }

  *(v480 + 22) = v489;
  v490 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v492 = v668;
    v493 = *(&v668 + 1) - v668;
    v494 = (*(&v668 + 1) - v668) >> 3;
    v495 = v494 + 1;
    if ((v494 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v496 = v669 - v668;
    if ((v669 - v668) >> 2 > v495)
    {
      v495 = v496 >> 2;
    }

    if (v496 >= 0x7FFFFFFFFFFFFFF8)
    {
      v497 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v497 = v495;
    }

    if (v497)
    {
      if (v497 >> 61)
      {
        goto LABEL_859;
      }

      v498 = operator new(8 * v497);
    }

    else
    {
      v498 = 0;
    }

    v499 = &v498[8 * v494];
    *v499 = v480;
    v491 = v499 + 8;
    memcpy(v498, v492, v493);
    *&v668 = v498;
    *(&v668 + 1) = v491;
    *&v669 = &v498[8 * v497];
    if (v492)
    {
      operator delete(v492);
    }
  }

  else
  {
    **(&v668 + 1) = v480;
    v491 = (v490 + 8);
  }

  *(&v668 + 1) = v491;
  v500 = operator new(0x68uLL);
  v501 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v500 + 8), "mps.conv_3d", 11, *v682, v365, 0, 0);
  *v500 = &unk_1F5B002D0;
  v500[96] = v501;
  if (!*(v500 + 9))
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToMatMul<mlir::mps::Conv3DOp>]";
    *&v682[8] = 129;
    v502 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v502)
    {
      v503 = v502;
    }

    else
    {
      v503 = *&v682[8];
    }

    v504 = *v682 + v503;
    v505 = *&v682[8] - v503;
    if (*&v682[8] - v503 >= 0x12)
    {
      v506 = 18;
    }

    else
    {
      v506 = *&v682[8] - v503;
    }

    v507 = v504 + v506;
    v508 = v505 - v506;
    if (v508 >= v508 - 1)
    {
      --v508;
    }

    *(v500 + 8) = v507;
    *(v500 + 9) = v508;
  }

  v509 = *(v500 + 22);
  if (v509 > *(v500 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v500 + 80), (v500 + 96), v509, 16);
    LODWORD(v509) = *(v500 + 22);
  }

  *(v500 + 22) = v509;
  v510 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v512 = v668;
    v513 = *(&v668 + 1) - v668;
    v514 = (*(&v668 + 1) - v668) >> 3;
    v515 = v514 + 1;
    if ((v514 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v516 = v669 - v668;
    if ((v669 - v668) >> 2 > v515)
    {
      v515 = v516 >> 2;
    }

    if (v516 >= 0x7FFFFFFFFFFFFFF8)
    {
      v517 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v517 = v515;
    }

    if (v517)
    {
      if (v517 >> 61)
      {
        goto LABEL_859;
      }

      v518 = operator new(8 * v517);
    }

    else
    {
      v518 = 0;
    }

    v519 = &v518[8 * v514];
    *v519 = v500;
    v511 = v519 + 8;
    memcpy(v518, v512, v513);
    *&v668 = v518;
    *(&v668 + 1) = v511;
    *&v669 = &v518[8 * v517];
    if (v512)
    {
      operator delete(v512);
    }
  }

  else
  {
    **(&v668 + 1) = v500;
    v511 = (v510 + 8);
  }

  *(&v668 + 1) = v511;
  v520 = operator new(0x68uLL);
  v521 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v520 + 8), "mps.conv_3d_data_gradient", 25, *v682, v365, 0, 0);
  *v520 = &unk_1F5B00330;
  v520[96] = v521;
  if (!*(v520 + 9))
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToMatMul<mlir::mps::Conv3DDataGradientOp>]";
    *&v682[8] = 141;
    v522 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v522)
    {
      v523 = v522;
    }

    else
    {
      v523 = *&v682[8];
    }

    v524 = *v682 + v523;
    v525 = *&v682[8] - v523;
    if (*&v682[8] - v523 >= 0x12)
    {
      v526 = 18;
    }

    else
    {
      v526 = *&v682[8] - v523;
    }

    v527 = v524 + v526;
    v528 = v525 - v526;
    if (v528 >= v528 - 1)
    {
      --v528;
    }

    *(v520 + 8) = v527;
    *(v520 + 9) = v528;
  }

  v529 = *(v520 + 22);
  if (v529 > *(v520 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v520 + 80), (v520 + 96), v529, 16);
    LODWORD(v529) = *(v520 + 22);
  }

  *(v520 + 22) = v529;
  v530 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v532 = v668;
    v533 = *(&v668 + 1) - v668;
    v534 = (*(&v668 + 1) - v668) >> 3;
    v535 = v534 + 1;
    if ((v534 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v536 = v669 - v668;
    if ((v669 - v668) >> 2 > v535)
    {
      v535 = v536 >> 2;
    }

    if (v536 >= 0x7FFFFFFFFFFFFFF8)
    {
      v537 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v537 = v535;
    }

    if (v537)
    {
      if (v537 >> 61)
      {
        goto LABEL_859;
      }

      v538 = operator new(8 * v537);
    }

    else
    {
      v538 = 0;
    }

    v539 = &v538[8 * v534];
    *v539 = v520;
    v531 = v539 + 8;
    memcpy(v538, v532, v533);
    *&v668 = v538;
    *(&v668 + 1) = v531;
    *&v669 = &v538[8 * v537];
    if (v532)
    {
      operator delete(v532);
    }
  }

  else
  {
    **(&v668 + 1) = v520;
    v531 = (v530 + 8);
  }

  *(&v668 + 1) = v531;
  v540 = operator new(0x68uLL);
  v541 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v540 + 8), "mps.bias_add", 12, *v682, v365, 0, 0);
  *v540 = &unk_1F5B00390;
  v540[96] = v541;
  if (!*(v540 + 9))
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToMatMul<mlir::mps::BiasAddOp>]";
    *&v682[8] = 130;
    v542 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v542)
    {
      v543 = v542;
    }

    else
    {
      v543 = *&v682[8];
    }

    v544 = *v682 + v543;
    v545 = *&v682[8] - v543;
    if (*&v682[8] - v543 >= 0x12)
    {
      v546 = 18;
    }

    else
    {
      v546 = *&v682[8] - v543;
    }

    v547 = v544 + v546;
    v548 = v545 - v546;
    if (v548 >= v548 - 1)
    {
      --v548;
    }

    *(v540 + 8) = v547;
    *(v540 + 9) = v548;
  }

  v549 = *(v540 + 22);
  if (v549 > *(v540 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v540 + 80), (v540 + 96), v549, 16);
    LODWORD(v549) = *(v540 + 22);
  }

  *(v540 + 22) = v549;
  v550 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v552 = v668;
    v553 = *(&v668 + 1) - v668;
    v554 = (*(&v668 + 1) - v668) >> 3;
    v555 = v554 + 1;
    if ((v554 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v556 = v669 - v668;
    if ((v669 - v668) >> 2 > v555)
    {
      v555 = v556 >> 2;
    }

    if (v556 >= 0x7FFFFFFFFFFFFFF8)
    {
      v557 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v557 = v555;
    }

    if (v557)
    {
      if (v557 >> 61)
      {
        goto LABEL_859;
      }

      v558 = operator new(8 * v557);
    }

    else
    {
      v558 = 0;
    }

    v559 = &v558[8 * v554];
    *v559 = v540;
    v551 = v559 + 8;
    memcpy(v558, v552, v553);
    *&v668 = v558;
    *(&v668 + 1) = v551;
    *&v669 = &v558[8 * v557];
    if (v552)
    {
      operator delete(v552);
    }
  }

  else
  {
    **(&v668 + 1) = v540;
    v551 = (v550 + 8);
  }

  *(&v668 + 1) = v551;
  v560 = operator new(0x68uLL);
  v561 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v560 + 8), "mps.add", 7, *v682, v365, 0, 0);
  *v560 = &unk_1F5B003F0;
  v560[96] = v561;
  if (!*(v560 + 9))
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToMatMul<mlir::mps::AddOp>]";
    *&v682[8] = 126;
    v562 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v562)
    {
      v563 = v562;
    }

    else
    {
      v563 = *&v682[8];
    }

    v564 = *v682 + v563;
    v565 = *&v682[8] - v563;
    if (*&v682[8] - v563 >= 0x12)
    {
      v566 = 18;
    }

    else
    {
      v566 = *&v682[8] - v563;
    }

    v567 = v564 + v566;
    v568 = v565 - v566;
    if (v568 >= v568 - 1)
    {
      --v568;
    }

    *(v560 + 8) = v567;
    *(v560 + 9) = v568;
  }

  v569 = *(v560 + 22);
  if (v569 > *(v560 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v560 + 80), (v560 + 96), v569, 16);
    LODWORD(v569) = *(v560 + 22);
  }

  *(v560 + 22) = v569;
  v570 = *(&v668 + 1);
  if (*(&v668 + 1) >= v669)
  {
    v572 = v668;
    v573 = *(&v668 + 1) - v668;
    v574 = (*(&v668 + 1) - v668) >> 3;
    v575 = v574 + 1;
    if ((v574 + 1) >> 61)
    {
      goto LABEL_858;
    }

    v576 = v669 - v668;
    if ((v669 - v668) >> 2 > v575)
    {
      v575 = v576 >> 2;
    }

    if (v576 >= 0x7FFFFFFFFFFFFFF8)
    {
      v577 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v577 = v575;
    }

    if (v577)
    {
      if (v577 >> 61)
      {
        goto LABEL_859;
      }

      v578 = operator new(8 * v577);
    }

    else
    {
      v578 = 0;
    }

    v579 = &v578[8 * v574];
    *v579 = v560;
    v571 = v579 + 8;
    memcpy(v578, v572, v573);
    *&v668 = v578;
    *(&v668 + 1) = v571;
    *&v669 = &v578[8 * v577];
    if (v572)
    {
      operator delete(v572);
    }
  }

  else
  {
    **(&v668 + 1) = v560;
    v571 = (v570 + 8);
  }

  *(&v668 + 1) = v571;
  if (*(this + 2344) == 1)
  {
    v580 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(v682, 3);
    mlir::Pattern::Pattern((v580 + 1), "mps.conv_2d", 11, *v682, v365, 0, 0);
    *v580 = &unk_1F5B00450;
    if (!v580[9])
    {
      *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::Canonicalize1x1ConvToMatMul]";
      *&v682[8] = 111;
      v581 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
      if (*&v682[8] >= v581)
      {
        v582 = v581;
      }

      else
      {
        v582 = *&v682[8];
      }

      v583 = *v682 + v582;
      v584 = *&v682[8] - v582;
      if (*&v682[8] - v582 >= 0x12)
      {
        v585 = 18;
      }

      else
      {
        v585 = *&v682[8] - v582;
      }

      v586 = v583 + v585;
      v587 = v584 - v585;
      if (v587 >= v587 - 1)
      {
        --v587;
      }

      v580[8] = v586;
      v580[9] = v587;
    }

    v588 = *(v580 + 22);
    if (v588 > *(v580 + 23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v580 + 10), (v580 + 12), v588, 16);
      LODWORD(v588) = *(v580 + 22);
    }

    *(v580 + 22) = v588;
    v589 = *(&v668 + 1);
    if (*(&v668 + 1) >= v669)
    {
      v591 = v668;
      v592 = *(&v668 + 1) - v668;
      v593 = (*(&v668 + 1) - v668) >> 3;
      v594 = v593 + 1;
      if ((v593 + 1) >> 61)
      {
        goto LABEL_858;
      }

      v595 = v669 - v668;
      if ((v669 - v668) >> 2 > v594)
      {
        v594 = v595 >> 2;
      }

      if (v595 >= 0x7FFFFFFFFFFFFFF8)
      {
        v596 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v596 = v594;
      }

      if (v596)
      {
        if (v596 >> 61)
        {
          goto LABEL_859;
        }

        v597 = operator new(8 * v596);
      }

      else
      {
        v597 = 0;
      }

      v598 = &v597[8 * v593];
      *v598 = v580;
      v590 = v598 + 8;
      memcpy(v597, v591, v592);
      *&v668 = v597;
      *(&v668 + 1) = v590;
      *&v669 = &v597[8 * v596];
      if (v591)
      {
        operator delete(v591);
      }
    }

    else
    {
      **(&v668 + 1) = v580;
      v590 = (v589 + 8);
    }

    *(&v668 + 1) = v590;
  }

  v599 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(v682, 1);
  mlir::Pattern::Pattern((v599 + 1), "mps.random_uniform", 18, *v682, v365, 0, 0);
  *v599 = &unk_1F5B004B0;
  if (!v599[9])
  {
    *v682 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeHigherRankTensorToMPSKernelSizeTensor]";
    *&v682[8] = 133;
    v600 = llvm::StringRef::find(v682, "DesiredTypeName = ", 0x12uLL, 0);
    if (*&v682[8] >= v600)
    {
      v601 = v600;
    }

    else
    {
      v601 = *&v682[8];
    }

    v602 = *v682 + v601;
    v603 = *&v682[8] - v601;
    if (*&v682[8] - v601 >= 0x12)
    {
      v604 = 18;
    }

    else
    {
      v604 = *&v682[8] - v601;
    }

    v605 = v602 + v604;
    v606 = v603 - v604;
    if (v606 >= v606 - 1)
    {
      --v606;
    }

    v599[8] = v605;
    v599[9] = v606;
  }

  v607 = *(v599 + 22);
  if (v607 > *(v599 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v599 + 10), (v599 + 12), v607, 16);
    LODWORD(v607) = *(v599 + 22);
  }

  *(v599 + 22) = v607;
  v608 = *(&v668 + 1);
  if (*(&v668 + 1) < v669)
  {
    **(&v668 + 1) = v599;
    v609 = (v608 + 8);
    goto LABEL_825;
  }

  v610 = v668;
  v611 = *(&v668 + 1) - v668;
  v612 = (*(&v668 + 1) - v668) >> 3;
  v613 = v612 + 1;
  if (!((v612 + 1) >> 61))
  {
    v614 = v669 - v668;
    if ((v669 - v668) >> 2 > v613)
    {
      v613 = v614 >> 2;
    }

    if (v614 >= 0x7FFFFFFFFFFFFFF8)
    {
      v615 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v615 = v613;
    }

    if (!v615)
    {
      v616 = 0;
LABEL_823:
      v617 = &v616[8 * v612];
      *v617 = v599;
      v609 = v617 + 8;
      memcpy(v616, v610, v611);
      *&v668 = v616;
      *(&v668 + 1) = v609;
      *&v669 = &v616[8 * v615];
      if (v610)
      {
        operator delete(v610);
      }

LABEL_825:
      *(&v668 + 1) = v609;
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v634, &v652, 0, 0, 0, 0);
      v618 = *(a2 + 11);
      if ((v618 & 0x7FFFFF) != 0)
      {
        v619 = (((a2 + 16 * ((v618 >> 23) & 1) + ((v618 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
        v636 = 0;
        *v682 = 0x200000000;
        *&v682[8] = xmmword_1E097BBC0;
        v683 = 0uLL;
        *&v682[24] = 0;
        mlir::applyPatternsAndFoldGreedily(v619, v634, v682, &v636);
      }

      std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v634);
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v634, &v637, 0, 0, 0, 0);
      v620 = *(a2 + 11);
      if ((v620 & 0x7FFFFF) != 0)
      {
        v621 = (((a2 + 16 * ((v620 >> 23) & 1) + ((v620 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
        v636 = 0;
        *v682 = 0x200000000;
        *&v682[8] = xmmword_1E097BBC0;
        v683 = 0uLL;
        *&v682[24] = 0;
        mlir::applyPatternsAndFoldGreedily(v621, v634, v682, &v636);
      }

      std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v634);
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v634, &v667, 0, 0, 0, 0);
      v622 = *(a2 + 11);
      if ((v622 & 0x7FFFFF) != 0)
      {
        v623 = (((a2 + 16 * ((v622 >> 23) & 1) + ((v622 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
        v636 = 0;
        *v682 = 0x200000000;
        *&v682[8] = xmmword_1E097BBC0;
        v683 = 0uLL;
        *&v682[24] = 0;
        mlir::applyPatternsAndFoldGreedily(v623, v634, v682, &v636);
      }

      std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v634);
      if (HIDWORD(v650) && v650)
      {
        v624 = 0;
        do
        {
          v625 = *(v649 + v624);
          if (v625 != -8 && v625 != 0)
          {
            v627 = *v625;
            v628 = *(v625 + 4);
            if (v628 == (v625 + 8))
            {
              (*(*v628 + 32))(v628);
            }

            else if (v628)
            {
              (*(*v628 + 40))(v628);
            }

            llvm::deallocate_buffer(v625, (v627 + 41));
          }

          v624 += 8;
        }

        while (8 * v650 != v624);
      }

      free(v649);
      if (HIDWORD(v647) && v647)
      {
        v629 = 0;
        do
        {
          v630 = *(v646 + v629);
          if (v630 != -8 && v630 != 0)
          {
            v632 = *v630;
            v633 = *(v630 + 4);
            if (v633 == (v630 + 8))
            {
              (*(*v633 + 32))(v633);
            }

            else if (v633)
            {
              (*(*v633 + 40))(v633);
            }

            llvm::deallocate_buffer(v630, (v632 + 41));
          }

          v629 += 8;
        }

        while (8 * v647 != v629);
      }

      free(v646);
      llvm::deallocate_buffer(v643, (16 * v645));
    }

    if (!(v615 >> 61))
    {
      v616 = operator new(8 * v615);
      goto LABEL_823;
    }

LABEL_859:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_858:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}