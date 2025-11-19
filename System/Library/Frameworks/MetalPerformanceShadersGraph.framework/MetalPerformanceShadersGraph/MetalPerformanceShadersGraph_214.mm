int *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v8 = *a1;
  v9 = *a4;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v9, &HandleForToken);
    v11 = *a4;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v8);
    if (HandleForToken)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = -1;
    v11 = *a4;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v8);
    if (HandleForToken)
    {
LABEL_3:
      v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v11, &HandleForToken);
      v13 = *a3;
      v14 = *a2;
      v15 = *a4;
      if (v10 < v12)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v13 = *a3;
  v14 = *a2;
  v15 = *a4;
  if (v10 < -1)
  {
LABEL_4:
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
    if (HandleForToken)
    {
      v16 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v15, &HandleForToken);
      v17 = *a4;
      result = mlir::ODIE::Compiler::getHandleForToken(v14);
      HandleForToken = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v16 = -1;
      v17 = *a4;
      result = mlir::ODIE::Compiler::getHandleForToken(v14);
      HandleForToken = result;
      if (result)
      {
LABEL_6:
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v17, &HandleForToken);
        v19 = *a1;
        if (v16 < *result)
        {
LABEL_7:
          *a1 = *a3;
          *a3 = v19;
          return result;
        }

LABEL_16:
        *a1 = *a2;
        *a2 = v19;
        v22 = *a4;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a3);
        if (HandleForToken)
        {
          v23 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v22, &HandleForToken);
          v24 = *a4;
          result = mlir::ODIE::Compiler::getHandleForToken(v19);
          HandleForToken = result;
          if (result)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v23 = -1;
          v24 = *a4;
          result = mlir::ODIE::Compiler::getHandleForToken(v19);
          HandleForToken = result;
          if (result)
          {
LABEL_18:
            result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v24, &HandleForToken);
            if (v23 >= *result)
            {
              return result;
            }

LABEL_28:
            v30 = *a2;
            *a2 = *a3;
            *a3 = v30;
            return result;
          }
        }

        if (v23 >= -1)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v19 = *a1;
    if (v16 < -1)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_10:
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
  if (HandleForToken)
  {
    v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v15, &HandleForToken);
    v21 = *a4;
    result = mlir::ODIE::Compiler::getHandleForToken(v14);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (v20 >= -1)
    {
      return result;
    }

    goto LABEL_22;
  }

  v20 = -1;
  v21 = *a4;
  result = mlir::ODIE::Compiler::getHandleForToken(v14);
  HandleForToken = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_12:
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v21, &HandleForToken);
  if (v20 >= *result)
  {
    return result;
  }

LABEL_22:
  v25 = *a2;
  *a2 = *a3;
  *a3 = v25;
  v26 = *a1;
  v27 = *a4;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v28 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v27, &HandleForToken);
    v29 = *a4;
    result = mlir::ODIE::Compiler::getHandleForToken(v26);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_24;
    }

LABEL_30:
    if (v28 >= -1)
    {
      return result;
    }

    goto LABEL_31;
  }

  v28 = -1;
  v29 = *a4;
  result = mlir::ODIE::Compiler::getHandleForToken(v26);
  HandleForToken = result;
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_24:
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v29, &HandleForToken);
  if (v28 < *result)
  {
LABEL_31:
    v31 = *a1;
    *a1 = *a2;
    *a2 = v31;
  }

  return result;
}

int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(a1, a2, a3, a5);
  v10 = *a3;
  v11 = *a5;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a4);
  if (HandleForToken)
  {
    v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v11, &HandleForToken);
    v13 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v10);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = -1;
    v13 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v10);
    HandleForToken = result;
    if (result)
    {
LABEL_3:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v13, &HandleForToken);
      if (v12 >= *result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (v12 >= -1)
  {
    return result;
  }

LABEL_7:
  v15 = *a3;
  *a3 = *a4;
  *a4 = v15;
  v16 = *a2;
  v17 = *a5;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a3);
  if (HandleForToken)
  {
    v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v17, &HandleForToken);
    v19 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v16);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = -1;
    v19 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v16);
    HandleForToken = result;
    if (result)
    {
LABEL_9:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v19, &HandleForToken);
      if (v18 >= *result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (v18 >= -1)
  {
    return result;
  }

LABEL_13:
  v20 = *a2;
  *a2 = *a3;
  *a3 = v20;
  v21 = *a1;
  v22 = *a5;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v23 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v22, &HandleForToken);
    v24 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v21);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = -1;
    v24 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v21);
    HandleForToken = result;
    if (result)
    {
LABEL_15:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v24, &HandleForToken);
      if (v23 >= *result)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  if (v23 >= -1)
  {
    return result;
  }

LABEL_16:
  v25 = *a1;
  *a1 = *a2;
  *a2 = v25;
  return result;
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a5);
  if (HandleForToken)
  {
    v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v13, &HandleForToken);
    v15 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v12);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = -1;
    v15 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v12);
    HandleForToken = result;
    if (result)
    {
LABEL_3:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v15, &HandleForToken);
      if (v14 >= *result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (v14 >= -1)
  {
    return result;
  }

LABEL_7:
  v17 = *a4;
  *a4 = *a5;
  *a5 = v17;
  v18 = *a3;
  v19 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a4);
  if (HandleForToken)
  {
    v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v19, &HandleForToken);
    v21 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v18);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = -1;
    v21 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v18);
    HandleForToken = result;
    if (result)
    {
LABEL_9:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v21, &HandleForToken);
      if (v20 >= *result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (v20 >= -1)
  {
    return result;
  }

LABEL_13:
  v22 = *a3;
  *a3 = *a4;
  *a4 = v22;
  v23 = *a2;
  v24 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a3);
  if (HandleForToken)
  {
    v25 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v24, &HandleForToken);
    v26 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v23);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = -1;
    v26 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v23);
    HandleForToken = result;
    if (result)
    {
LABEL_15:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v26, &HandleForToken);
      if (v25 >= *result)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  if (v25 >= -1)
  {
    return result;
  }

LABEL_19:
  v27 = *a2;
  *a2 = *a3;
  *a3 = v27;
  v28 = *a1;
  v29 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v30 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v29, &HandleForToken);
    v31 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v28);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v30 = -1;
    v31 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v28);
    HandleForToken = result;
    if (result)
    {
LABEL_21:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v31, &HandleForToken);
      if (v30 >= *result)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  if (v30 >= -1)
  {
    return result;
  }

LABEL_22:
  v32 = *a1;
  *a1 = *a2;
  *a2 = v32;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = *a1;
      v7 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(a2 - 1));
      if (HandleForToken)
      {
        v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v7, &HandleForToken);
        v9 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v6);
        if (HandleForToken)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v8 = -1;
        v9 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v6);
        if (HandleForToken)
        {
LABEL_6:
          if (v8 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v9, &HandleForToken))
          {
            return 1;
          }

          goto LABEL_37;
        }
      }

      if (v8 < -1)
      {
LABEL_37:
        v24 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v24;
      }

      return 1;
    }
  }

  v10 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = *a3;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v11);
    if (HandleForToken)
    {
      v16 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v15, &HandleForToken);
      v17 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v14);
      if (HandleForToken)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = -1;
      v17 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v14);
      if (HandleForToken)
      {
LABEL_19:
        if (v16 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v17, &HandleForToken))
        {
          break;
        }

        goto LABEL_32;
      }
    }

    if (v16 < -1)
    {
      break;
    }

LABEL_32:
    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  v18 = *v11;
  v19 = v12;
  do
  {
    while (1)
    {
      *(a1 + v19 + 24) = *(a1 + v19 + 16);
      if (v19 == -16)
      {
        *a1 = v18;
        if (++v13 != 8)
        {
          goto LABEL_32;
        }

        return v11 + 1 == a2;
      }

      v20 = *(a1 + v19 + 8);
      v21 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
      if (HandleForToken)
      {
        break;
      }

      v22 = -1;
      v23 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v20);
      if (!HandleForToken)
      {
        goto LABEL_30;
      }

LABEL_24:
      v19 -= 8;
      if (v22 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v23, &HandleForToken))
      {
        goto LABEL_31;
      }
    }

    v22 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v21, &HandleForToken);
    v23 = *a3;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v20);
    if (HandleForToken)
    {
      goto LABEL_24;
    }

LABEL_30:
    v19 -= 8;
  }

  while (v22 < -1);
LABEL_31:
  *(a1 + v19 + 24) = v18;
  if (++v13 != 8)
  {
    goto LABEL_32;
  }

  return v11 + 1 == a2;
}

void mlir::createReplaceGraphBodyWithDelegateCall(const std::string *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x348uLL);
  *(v4 + 2) = "coreml.graph";
  *(v4 + 3) = 12;
  v4[32] = 1;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 37) = 0x1000000000;
  *(v4 + 42) = 0;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *v4 = &unk_1F5B3D500;
  *&v8 = "Delegate id to identify caller delegate.";
  *(&v8 + 1) = 40;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 344), v4 + 152, "delegate-id", 11, &v8);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v8 = "Optional prefix the passes add for each payload.";
  *(&v8 + 1) = 48;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 592), v4 + 152, "payload-prefix", 14, &v8);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B3D490;
  std::string::operator=((v4 + 472), a1);
  v5 = *(v4 + 71);
  if (v5 && ((*(*v5 + 48))(v5, a1), std::string::operator=(v4 + 30, a1 + 1), (v6 = *(v4 + 102)) != 0))
  {
    (*(*v6 + 48))(v6, a1 + 1);
    *a2 = v4;
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

void anonymous namespace::ReplaceGraphBodyWithDelegateCall::~ReplaceGraphBodyWithDelegateCall(_anonymous_namespace_::ReplaceGraphBodyWithDelegateCall *this)
{
  *this = &unk_1F5B3D500;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::impl::ReplaceGraphBodyWithDelegateCallBase<anonymous namespace::ReplaceGraphBodyWithDelegateCall>::getDependentDialects(int a1, uint64_t **a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5B36018;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v3);
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

void anonymous namespace::ReplaceGraphBodyWithDelegateCall::runOnOperation(_anonymous_namespace_::ReplaceGraphBodyWithDelegateCall *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v3 = *(&v2[8 * v2[10] + 18 + 4 * ((v2[11] >> 23) & 1)] + ((v2[11] >> 21) & 0x7F8));
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v32[1] = mlir::Attribute::getContext((v2 + 6));
  v32[2] = 0;
  v33 = 0;
  v34 = 0;
  v32[0] = &unk_1F5AFAFF0;
  v27 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  __dst[0].__r_.__value_.__r.__words[0] = mlir::ODIE::Compiler::CoreML::GraphOp::getFunctionType(&v27);
  Results = mlir::FunctionType::getResults(__dst);
  v31 = v5;
  v27 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  SymName = mlir::ODIE::Compiler::CoreML::GraphOp::getSymName(&v27);
  if (!SymName)
  {
    memset(__dst, 0, 24);
    goto LABEL_16;
  }

  v8 = v7;
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v9 = SymName;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v10 = operator new(v11);
    __dst[0].__r_.__value_.__l.__size_ = v8;
    __dst[0].__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    __dst[0].__r_.__value_.__r.__words[0] = v10;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = v7;
    v10 = __dst;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  memmove(v10, v9, v8);
LABEL_15:
  v10->__r_.__value_.__s.__data_[v8] = 0;
LABEL_16:
  v12 = *(this + 743);
  if (v12 >= 0)
  {
    v13 = this + 720;
  }

  else
  {
    v13 = *(this + 90);
  }

  if (v12 >= 0)
  {
    v14 = *(this + 743);
  }

  else
  {
    v14 = *(this + 91);
  }

  v15 = std::string::insert(__dst, 0, v13, v14);
  v17 = v15->__r_.__value_.__r.__words[2];
  *__p = *&v15->__r_.__value_.__l.__data_;
  v29 = v17;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  __dst[0].__r_.__value_.__r.__words[0] = &__dst[0].__r_.__value_.__r.__words[2];
  __dst[0].__r_.__value_.__l.__size_ = 0x600000000;
  Terminator = mlir::Block::getTerminator(v4, v16);
  mlir::RewriterBase::eraseOp(v32, Terminator);
  v20 = *(v4 + 4);
  if (v20 != (v4 + 32))
  {
    do
    {
      v21 = *v20;
      v22 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v20, v19);
      v23 = *(v22 + 3);
      v24 = LODWORD(__dst[0].__r_.__value_.__r.__words[1]);
      if (LODWORD(__dst[0].__r_.__value_.__r.__words[1]) >= HIDWORD(__dst[0].__r_.__value_.__r.__words[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, &__dst[0].__r_.__value_.__r.__words[2], LODWORD(__dst[0].__r_.__value_.__r.__words[1]) + 1, 8);
        v24 = LODWORD(__dst[0].__r_.__value_.__r.__words[1]);
      }

      *(__dst[0].__r_.__value_.__r.__words[0] + 8 * v24) = v23;
      ++LODWORD(__dst[0].__r_.__value_.__r.__words[1]);
      mlir::RewriterBase::eraseOp(v32, v22);
      v20 = v21;
    }

    while (v21 != (v4 + 32));
  }

  v25 = *(v4 + 5);
  v33 = v4;
  v34 = v25;
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  mlir::FusedLoc::get(__dst[0].__r_.__value_.__l.__data_, LODWORD(__dst[0].__r_.__value_.__r.__words[1]), 0, Context);
}

BOOL mlir::OperationPass<mlir::ODIE::Compiler::CoreML::GraphOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::impl::ReplaceGraphBodyWithDelegateCallBase<anonymous namespace::ReplaceGraphBodyWithDelegateCall>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x348uLL);
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
  *v4 = &unk_1F5B3D500;
  *&v7 = "Delegate id to identify caller delegate.";
  *(&v7 + 1) = 40;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "delegate-id", 11, &v7);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v7 = "Optional prefix the passes add for each payload.";
  *(&v7 + 1) = 48;
  result = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 37), v4 + 152, "payload-prefix", 14, &v7);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B3D490;
  *a2 = v4;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DelegateOp,llvm::ArrayRef<mlir::Type> &,llvm::MutableArrayRef<mlir::BlockArgument>,mlir::StringAttr,mlir::detail::DenseArrayAttrImpl<signed char>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DelegateOp,llvm::ArrayRef<mlir::Type> &,llvm::MutableArrayRef<mlir::BlockArgument>,mlir::StringAttr,mlir::detail::DenseArrayAttrImpl<signed char>>(v19, v21, v20);
  }

  mlir::OperationState::OperationState(v19, a2, v13);
  mlir::ValueRange::ValueRange(v21, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v20, *a4, *(a4 + 8));
  mlir::ODIE::Compiler::CoreML::DelegateOp::build(a1, v19, v21[0], v21[1], v20[0], v20[1], *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DelegateOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ResultRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ResultRange>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
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

void mlir::createSegmentAllOpsToDelegate(const std::string *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x250uLL);
  *(v4 + 2) = "builtin.module";
  *(v4 + 3) = 14;
  v4[32] = 1;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 37) = 0x1000000000;
  *(v4 + 42) = 0;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *v4 = &unk_1F5B3D5E0;
  *&v7 = "The delegate ID to segment to.";
  *(&v7 + 1) = 30;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 344), v4 + 152, "delegate-id", 11, &v7);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B3D570;
  std::string::operator=((v4 + 472), a1);
  v5 = *(v4 + 71);
  if (v5)
  {
    (*(*v5 + 48))(v5, a1);
    *a2 = v4;
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

void anonymous namespace::SegmentAllOpsToDelegate::~SegmentAllOpsToDelegate(_anonymous_namespace_::SegmentAllOpsToDelegate *this)
{
  *this = &unk_1F5B3D5E0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::impl::SegmentAllOpsToDelegateBase<anonymous namespace::SegmentAllOpsToDelegate>::getDependentDialects(int a1, uint64_t **a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5B36018;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v3);
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

uint64_t anonymous namespace::SegmentAllOpsToDelegate::runOnOperation(_anonymous_namespace_::SegmentAllOpsToDelegate *this)
{
  v9[1] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v9[2], 0, 24);
  v9[0] = &unk_1F5AFAFF0;
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v6[2] = v9;
  v7 = v2;
  v6[0] = &v8;
  v6[1] = this;
  v10 = v6;
  if (mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123SegmentAllOpsToDelegate14runOnOperationEvE3__1NS1_4ODIE8Compiler6CoreML7GraphOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v10, 1))
  {
    if (!v2[47])
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(this + 5) |= 4uLL;
    if (!v2[47])
    {
      goto LABEL_8;
    }
  }

  v11.var0 = "neutron.isIndependentAdapter";
  v11.var1 = 28;
  InherentAttr = mlir::Operation::getInherentAttr(v2, v11);
  if (v4)
  {
    if (!InherentAttr)
    {
      return MPSGraphDelegateCompiler.precompilationDescriptor.modify(v9, v4);
    }

    goto LABEL_9;
  }

LABEL_8:
  v12.var0 = "neutron.isIndependentAdapter";
  v12.var1 = 28;
  if (mlir::DictionaryAttr::contains((v2 + 56), v12))
  {
LABEL_9:
    v10 = &v7;
    v6[0] = &v10;
    mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123SegmentAllOpsToDelegate14runOnOperationEvE3__2NS1_4ODIE8Compiler6CoreML15IsolatedGroupOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, v6, 1);
  }

  return MPSGraphDelegateCompiler.precompilationDescriptor.modify(v9, v4);
}

uint64_t mlir::impl::SegmentAllOpsToDelegateBase<anonymous namespace::SegmentAllOpsToDelegate>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x250uLL);
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
  *v4 = &unk_1F5B3D5E0;
  *&v7 = "The delegate ID to segment to.";
  *(&v7 + 1) = 30;
  result = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(v4 + 344, v4 + 152, "delegate-id", 11, &v7);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B3D570;
  *a2 = v4;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123SegmentAllOpsToDelegate14runOnOperationEvE3__1NS1_4ODIE8Compiler6CoreML7GraphOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v5 = *a1;
    v6 = (*a1)[1];
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v8 = *(v6 + 495);
    if (v8 >= 0)
    {
      v9 = v6 + 472;
    }

    else
    {
      v9 = *(v6 + 472);
    }

    if (v8 >= 0)
    {
      v10 = *(v6 + 495);
    }

    else
    {
      v10 = *(v6 + 480);
    }
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::SegmentAllOpsToDelegate::runOnOperation(void)::$_0>(uint64_t a1, uint64_t a2)
{
  *&v89[0] = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v89);
  result = 0;
  v6 = *(*(a2 + 48) + 16);
  v79 = v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AllOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AndOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AnyOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchNormOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CosOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateTokenOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GELUOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IfOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuloOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PowOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReLUOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceSumOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RsqrtOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterNdOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SigmoidOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SiluOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanhOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhereOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WhileOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id
     && v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id;
  if (a2 && !v79)
  {
    if (v3 >= 0xA)
    {
      v80 = *AttrData;
      v81 = *(AttrData + 8);
      if (v80 == 0x6C2E6C6D65726F63 && v81 == 28524)
      {
        return 0;
      }
    }

    if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id)
    {
      *&v93[0] = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      *&v89[0] = mlir::TensorType::getElementType(v93);
      if (mlir::Type::isSignedInteger(v89, 4))
      {
        return 0;
      }

      v6 = *(*(a2 + 48) + 16);
      if (v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
      {
LABEL_229:
        if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
        {
LABEL_230:
          *&v93[0] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
          *&v89[0] = mlir::AffineBinaryOpExpr::getRHS(v93);
          if (mlir::Type::isSignedInteger(v89, 4))
          {
            v83 = *(a2 + 36);
            v84 = v83 ? a2 - 16 : 0;
            v95.n128_u64[0] = v84;
            v95.n128_u64[1] = v83;
            mlir::ResultRange::use_begin(&v95, v93);
            v85 = *(a2 + 36);
            v86 = v85 ? a2 - 16 : 0;
            v95.n128_u64[0] = v86;
            v95.n128_u64[1] = v85;
            mlir::ResultRange::use_end(&v95, v91);
            v87 = v94;
            v90 = v94;
            v89[0] = v93[0];
            v89[1] = v93[1];
            v88 = v92;
            if (v94 != v92)
            {
              while (*(*(*(v87 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id)
              {
                mlir::ResultRange::UseIterator::operator++(v93);
                v87 = v94;
                if (v94 == v88)
                {
                  return 1;
                }
              }

              return 0;
            }
          }
        }

        return 1;
      }
    }

    else if (v6 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
    {
      goto LABEL_229;
    }

    *&v93[0] = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    *&v89[0] = mlir::AffineBinaryOpExpr::getRHS(v93);
    if (!mlir::Type::isSignedInteger(v89, 4))
    {
      if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
      {
        goto LABEL_230;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123SegmentAllOpsToDelegate14runOnOperationEvE3__2NS1_4ODIE8Compiler6CoreML15IsolatedGroupOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
    {
      Context = mlir::Attribute::getContext((***a1 + 24));
      v4 = mlir::BoolAttr::get(Context, 1);
      v5 = mlir::Attribute::getContext((a2 + 24));
      v8 = 261;
      v7[0] = "neutron.isIndependentAdapter";
      v7[1] = 28;
      v6 = mlir::StringAttr::get(v5, v7);
      mlir::Operation::setAttr(a2, v6, v4);
    }
  }
}

uint64_t mlir::ODIE::Compiler::getHandleForToken(uint64_t a1)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    v2 = *(*(result + 48) + 16);
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
    {
      return *(*(result + 72) + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 - 16;
  do
  {
    v8 = v3[2];
    v3 = *v3;
    if (v8 != a2)
    {
      v9 = *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id ? v8 : 0;
      if (v9)
      {
        if (*(v9 + 36))
        {
          v10 = v9 - 16;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8);
        if (*(a2 + 36))
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) ^ v11) <= 7)
        {
          (*(*a3 + 8))(a3, v9, a2);
          v6 = 1;
        }
      }
    }
  }

  while (v3);
  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = v3[2];
    v3 = *v3;
    if (v7 != a2)
    {
      if (v7)
      {
        v8 = *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        (*(*a3 + 8))(a3);
        result = 1;
      }
    }
  }

  while (v3);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v32.n128_u64[0] = v7;
  v32.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v32, v40);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v37[0].n128_u64[0] = v9;
  v37[0].n128_u64[1] = v8;
  mlir::ResultRange::use_end(v37, v35);
  v34 = v42;
  v32 = *v40;
  v33 = v41;
  v10 = v36;
  if (v42 == v36)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      ++v11;
      mlir::ResultRange::UseIterator::operator++(v40);
    }

    while (v42 != v10);
  }

  v40[0] = &v41;
  v40[1] = 0x600000000;
  v12 = *(a2 + 36);
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v32.n128_u64[0] = v13;
  v32.n128_u64[1] = v12;
  mlir::ResultRange::use_begin(&v32, v37);
  v14 = *(a2 + 36);
  if (v14)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v39.n128_u64[0] = v15;
  v39.n128_u64[1] = v14;
  mlir::ResultRange::use_end(&v39, v35);
  v16 = v38;
  v34 = v38;
  v32 = v37[0];
  v33 = v37[1];
  for (i = v36; v38 != i; v16 = v38)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = *(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = LODWORD(v40[1]);
      if (LODWORD(v40[1]) >= HIDWORD(v40[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v40, &v41, LODWORD(v40[1]) + 1, 8);
        v20 = LODWORD(v40[1]);
      }

      *(v40[0] + v20) = v18;
      ++LODWORD(v40[1]);
    }

    mlir::ResultRange::UseIterator::operator++(v37);
  }

  if (LODWORD(v40[1]))
  {
    v21 = v40[0];
    v22 = 8 * LODWORD(v40[1]);
    do
    {
      v24 = *v21++;
      v23 = v24;
      v25 = v24 - 16;
      if (*(v24 + 36))
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v32.n128_u64[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37[0].n128_u64[0] = *(*(a2 + 72) + 24);
      v27 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 1), *(v23 + 24), &v32, v37);
      (*(*a3 + 8))(a3, v23, v27);
      v22 -= 8;
    }

    while (v22);
    if (v11 == LODWORD(v40[1]))
    {
      (*(*a3 + 16))(a3, a2);
    }

    v28 = 1;
    v29 = v40[0];
    if (v40[0] != &v41)
    {
LABEL_38:
      free(v29);
    }
  }

  else
  {
    v32.n128_u64[0] = "no coremlax.copy_with_constraints users";
    LOWORD(v34) = 259;
    v37[0].n128_u64[0] = &v32;
    v31 = a3[2];
    if (v31 && mlir::RewriterBase::Listener::classof(v31))
    {
      (*(*v31 + 88))(v31, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v37);
    }

    v28 = 0;
    v29 = v40[0];
    if (v40[0] != &v41)
    {
      goto LABEL_38;
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if (!*v3)
  {
    return 0;
  }

  if (**v3)
  {
    return 0;
  }

  v12 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v12);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
    {
      return 0;
    }

    if (*(a2 + 36))
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = result;
    v9 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(*(v8 + 72) + 24);
    v12 = v9;
    v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), *(v8 + 24), &v12, &v11);
    (*(*a3 + 8))(a3, v8, v10);
    (*(*a3 + 8))(a3, a2, v10);
    return 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v19);
  if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v18))
  {
    mlir::ODIE::Compiler::CoreMLAX::getStrides(v19, &v26);
    mlir::ODIE::Compiler::CoreMLAX::getStrides(v18, &__s2);
    if (v27)
    {
      v7 = 8 * v27;
      v8 = v26;
      while (*v8 != 0x8000000000000000)
      {
        v8 += 8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v24)
      {
LABEL_13:
        if (v27 == v24 && !memcmp(v26, __s2, 8 * v27))
        {
          v20[0] = *(*(a2 + 72) + 24);
          v17 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::RankedTensorType const&,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 1), *(a2 + 24), &v18, v20);
          (*(*a3 + 8))(a3, a2, v17);
          v13 = 1;
          v15 = __s2;
          if (__s2 == v25)
          {
LABEL_26:
            if (v26 != v28)
            {
              free(v26);
            }

            return v13;
          }

LABEL_25:
          free(v15);
          goto LABEL_26;
        }

        v11 = "source strides don't match dest strides";
LABEL_21:
        v20[0] = v11;
        v21 = 259;
        v22 = v20;
        v14 = a3[2];
        if (v14 && mlir::RewriterBase::Listener::classof(v14))
        {
          (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v22);
        }

        v13 = 0;
        v15 = __s2;
        if (__s2 == v25)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v9 = 8 * v24;
      v10 = __s2;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = "source or result have dynamic shape";
    goto LABEL_21;
  }

  v26 = "source dtype and result dtype are different";
  v28[8] = 259;
  __s2 = &v26;
  v12 = a3[2];
  if (v12 && mlir::RewriterBase::Listener::classof(v12))
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__s2);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::RankedTensorType const&,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::RankedTensorType const&,mlir::detail::TypedValue<mlir::RankedTensorType>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id)
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

void mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(mlir::ArrayAttr *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v8 = v7;
  RawData = mlir::DenseArrayAttr::getRawData(a1);
  v11 = v10;
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v8)
  {
    if (v8 < 7)
    {
      v12 = 0;
      v13 = v8;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 2), v8, 8);
      v12 = *(a3 + 2);
      v13 = v8 - v12;
      if (v8 == v12)
      {
        goto LABEL_7;
      }
    }

    bzero((*a3 + 8 * v12), 8 * v13);
LABEL_7:
    *(a3 + 2) = v8;
  }

  if (v11)
  {
    v14 = 8 * v11;
    v15 = 1;
    v16 = RawData;
    while (*v16 != 0x8000000000000000)
    {
      v15 *= *v16++;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v15 = 0x8000000000000000;
    if (v8)
    {
LABEL_17:
      v17 = *a3 - 8;
      v18 = Value - 8;
      v19 = RawData - 16;
      v20 = a2 - 16;
      v21 = 1;
      v22 = 8;
      v23 = 0x8000000000000000;
      v24 = v15 == 0x8000000000000000;
      if (v15 == 0x8000000000000000)
      {
        goto LABEL_19;
      }

LABEL_18:
      v23 = (*(v18 + 8 * v8) + v21 * v15 - 1) / *(v18 + 8 * v8) * *(v18 + 8 * v8);
LABEL_19:
      while (1)
      {
        *(v17 + 8 * v8) = v23;
        if (8 * v8 == v22)
        {
          break;
        }

        v25 = *(v20 + 8 * v8);
        v26 = *(v19 + 8 * v8);
        v17 -= 8;
        v18 -= 8;
        v22 += 8;
        v19 -= 8;
        v20 -= 8;
        v21 = v23;
        v15 = v25 / v26;
        v23 = 0x8000000000000000;
        v24 |= v15 == 0x8000000000000000;
        if ((v24 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v15 = 1;
LABEL_14:
    if (v8)
    {
      goto LABEL_17;
    }
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::verifyEncoding(mlir::ArrayAttr *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v167 = *MEMORY[0x1E69E9840];
  mlir::ArrayAttr::getValue(a1);
  if (v12 == a3 + 1)
  {
    mlir::DenseArrayAttr::getRawData(a1);
    if (v13 == a3)
    {
      Value = mlir::ArrayAttr::getValue(a1);
      if (v15)
      {
        v16 = 8 * v15;
        while (*Value != 0x8000000000000000)
        {
          ++Value;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        a5(v156, a6);
        if (v156[0])
        {
          v153 = 3;
          v154 = "expected alignments to be statically defined";
          v155 = 44;
          v79 = &v153;
          v80 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v153 && v157 + 24 * v158 > &v153)
            {
              v142 = &v153 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v80 = v157;
              v79 = (v157 + v142);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v79 = &v153;
              v80 = v157;
            }
          }

          v81 = &v80[24 * v158];
          v82 = *v79;
          *(v81 + 2) = *(v79 + 2);
          *v81 = v82;
          ++v158;
        }

        v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v83 = __p;
          if (__p)
          {
            v84 = v164;
            v85 = __p;
            if (v164 != __p)
            {
              do
              {
                v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
              }

              while (v84 != v83);
              v85 = __p;
            }

            v164 = v83;
            operator delete(v85);
          }

          v52 = v161;
          if (!v161)
          {
            goto LABEL_168;
          }

          v86 = v162;
          v54 = v161;
          if (v162 == v161)
          {
LABEL_167:
            v162 = v52;
            operator delete(v54);
LABEL_168:
            if (v157 != v160)
            {
              free(v157);
            }

            return v48;
          }

          do
          {
            v88 = *--v86;
            v87 = v88;
            *v86 = 0;
            if (v88)
            {
              operator delete[](v87);
            }
          }

          while (v86 != v52);
LABEL_166:
          v54 = v161;
          goto LABEL_167;
        }
      }

      else
      {
LABEL_7:
        RawData = mlir::DenseArrayAttr::getRawData(a1);
        if (a3)
        {
          v19 = 0;
          v20 = 8 * v18;
          v21 = 8 * a3;
          v22 = a2;
          while (v20)
          {
            v23 = *v22;
            v24 = *RawData;
            if (*RawData != 1 && (*v22 == 0x8000000000000000) == (*RawData != 0x8000000000000000))
            {
              a5(v156, a6);
              if (v156[0])
              {
                v153 = 3;
                v154 = "dimension shape and dimension interleave factor must both be static or both be dynamic";
                v155 = 86;
                v91 = &v153;
                v92 = v157;
                if (v158 >= v159)
                {
                  if (v157 <= &v153 && v157 + 24 * v158 > &v153)
                  {
                    v143 = &v153 - v157;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                    v92 = v157;
                    v91 = (v157 + v143);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                    v91 = &v153;
                    v92 = v157;
                  }
                }

                v93 = &v92[24 * v158];
                v94 = *v91;
                *(v93 + 2) = *(v91 + 2);
                *v93 = v94;
                ++v158;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
              if (v156[0])
              {
                mlir::InFlightDiagnostic::report(v156);
              }

              if (v166 != 1)
              {
                return v48;
              }

              if (v165 != &v166)
              {
                free(v165);
              }

              v95 = __p;
              if (__p)
              {
                v96 = v164;
                v97 = __p;
                if (v164 != __p)
                {
                  do
                  {
                    v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
                  }

                  while (v96 != v95);
                  v97 = __p;
                }

                v164 = v95;
                operator delete(v97);
              }

              v52 = v161;
              if (!v161)
              {
                goto LABEL_168;
              }

              v98 = v162;
              v54 = v161;
              if (v162 == v161)
              {
                goto LABEL_167;
              }

              do
              {
                v100 = *--v98;
                v99 = v100;
                *v98 = 0;
                if (v100)
                {
                  operator delete[](v99);
                }
              }

              while (v98 != v52);
              goto LABEL_166;
            }

            if (v24 != 1 && ((v19 ^ 1) & 1) == 0)
            {
              a5(v156, a6);
              if (v156[0])
              {
                v153 = 3;
                v154 = "interleave is only supported for a single dimension";
                v155 = 51;
                v101 = &v153;
                v102 = v157;
                if (v158 >= v159)
                {
                  if (v157 <= &v153 && v157 + 24 * v158 > &v153)
                  {
                    v144 = &v153 - v157;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                    v102 = v157;
                    v101 = (v157 + v144);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                    v101 = &v153;
                    v102 = v157;
                  }
                }

                v103 = &v102[24 * v158];
                v104 = *v101;
                *(v103 + 2) = *(v101 + 2);
                *v103 = v104;
                ++v158;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
              if (v156[0])
              {
                mlir::InFlightDiagnostic::report(v156);
              }

              if (v166 != 1)
              {
                return v48;
              }

              if (v165 != &v166)
              {
                free(v165);
              }

              v105 = __p;
              if (__p)
              {
                v106 = v164;
                v107 = __p;
                if (v164 != __p)
                {
                  do
                  {
                    v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
                  }

                  while (v106 != v105);
                  v107 = __p;
                }

                v164 = v105;
                operator delete(v107);
              }

              v52 = v161;
              if (!v161)
              {
                goto LABEL_168;
              }

              v108 = v162;
              v54 = v161;
              if (v162 == v161)
              {
                goto LABEL_167;
              }

              do
              {
                v110 = *--v108;
                v109 = v110;
                *v108 = 0;
                if (v110)
                {
                  operator delete[](v109);
                }
              }

              while (v108 != v52);
              goto LABEL_166;
            }

            if (v23 != 0x8000000000000000)
            {
              if (v23 < v24)
              {
                v111 = RawData;
                a5(v156, a6);
                if (v156[0])
                {
                  v153 = 3;
                  v154 = "dimension interleave factor ";
                  v155 = 28;
                  v112 = &v153;
                  v113 = v157;
                  if (v158 >= v159)
                  {
                    if (v157 <= &v153 && v157 + 24 * v158 > &v153)
                    {
                      v145 = &v153 - v157;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                      v113 = v157;
                      v112 = (v157 + v145);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                      v112 = &v153;
                      v113 = v157;
                    }
                  }

                  v114 = &v113[24 * v158];
                  v115 = *v112;
                  *(v114 + 2) = *(v112 + 2);
                  *v114 = v115;
                  v116 = ++v158;
                  if (v156[0])
                  {
                    v117 = *v111;
                    v153 = 2;
                    v154 = v117;
                    v118 = &v153;
                    v119 = v157;
                    if (v116 >= v159)
                    {
                      if (v157 <= &v153 && v157 + 24 * v116 > &v153)
                      {
                        v147 = &v153 - v157;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v116 + 1, 24);
                        v119 = v157;
                        v118 = (v157 + v147);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v116 + 1, 24);
                        v118 = &v153;
                        v119 = v157;
                      }
                    }

                    v120 = &v119[24 * v158];
                    v121 = *v118;
                    *(v120 + 2) = *(v118 + 2);
                    *v120 = v121;
                    v122 = ++v158;
                    if (v156[0])
                    {
                      v153 = 3;
                      v154 = " must not be greater than dimension shape ";
                      v155 = 42;
                      v123 = &v153;
                      v124 = v157;
                      if (v122 >= v159)
                      {
                        if (v157 <= &v153 && v157 + 24 * v122 > &v153)
                        {
                          v149 = &v153 - v157;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v122 + 1, 24);
                          v124 = v157;
                          v123 = (v157 + v149);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v122 + 1, 24);
                          v123 = &v153;
                          v124 = v157;
                        }
                      }

                      v125 = &v124[24 * v158];
                      v126 = *v123;
                      *(v125 + 2) = *(v123 + 2);
                      *v125 = v126;
                      v127 = ++v158;
                      if (v156[0])
                      {
                        v128 = *v22;
                        v153 = 2;
                        v154 = v128;
                        v129 = &v153;
                        v130 = v157;
                        if (v127 >= v159)
                        {
                          if (v157 <= &v153 && v157 + 24 * v127 > &v153)
                          {
                            v151 = &v153 - v157;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v127 + 1, 24);
                            v130 = v157;
                            v129 = (v157 + v151);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v127 + 1, 24);
                            v129 = &v153;
                            v130 = v157;
                          }
                        }

                        v131 = &v130[24 * v158];
                        v132 = *v129;
                        *(v131 + 2) = *(v129 + 2);
                        *v131 = v132;
                        ++v158;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
                if (v156[0])
                {
                  mlir::InFlightDiagnostic::report(v156);
                }

                if (v166 != 1)
                {
                  return v48;
                }

                if (v165 != &v166)
                {
                  free(v165);
                }

                v133 = __p;
                if (__p)
                {
                  v134 = v164;
                  v135 = __p;
                  if (v164 != __p)
                  {
                    do
                    {
                      v134 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v134 - 1);
                    }

                    while (v134 != v133);
                    v135 = __p;
                  }

                  v164 = v133;
                  operator delete(v135);
                }

                v52 = v161;
                if (!v161)
                {
                  goto LABEL_168;
                }

                v136 = v162;
                v54 = v161;
                if (v162 == v161)
                {
                  goto LABEL_167;
                }

                do
                {
                  v138 = *--v136;
                  v137 = v138;
                  *v136 = 0;
                  if (v138)
                  {
                    operator delete[](v137);
                  }
                }

                while (v136 != v52);
                goto LABEL_166;
              }

              if (v23 % v24)
              {
                v25 = RawData;
                a5(v156, a6);
                if (v156[0])
                {
                  v153 = 3;
                  v154 = "dimension shape ";
                  v155 = 16;
                  v26 = &v153;
                  v27 = v157;
                  if (v158 >= v159)
                  {
                    if (v157 <= &v153 && v157 + 24 * v158 > &v153)
                    {
                      v146 = &v153 - v157;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                      v27 = v157;
                      v26 = (v157 + v146);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                      v26 = &v153;
                      v27 = v157;
                    }
                  }

                  v28 = v25;
                  v29 = &v27[24 * v158];
                  v30 = *v26;
                  *(v29 + 2) = *(v26 + 2);
                  *v29 = v30;
                  v31 = ++v158;
                  if (v156[0])
                  {
                    v32 = *v22;
                    v153 = 2;
                    v154 = v32;
                    v33 = &v153;
                    v34 = v157;
                    if (v31 >= v159)
                    {
                      if (v157 <= &v153 && v157 + 24 * v31 > &v153)
                      {
                        v148 = &v153 - v157;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v31 + 1, 24);
                        v34 = v157;
                        v33 = (v157 + v148);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v31 + 1, 24);
                        v33 = &v153;
                        v34 = v157;
                      }

                      v28 = v25;
                    }

                    v35 = &v34[24 * v158];
                    v36 = *v33;
                    *(v35 + 2) = *(v33 + 2);
                    *v35 = v36;
                    v37 = ++v158;
                    if (v156[0])
                    {
                      v153 = 3;
                      v154 = " must be a multiple of dimension interleave factor ";
                      v155 = 51;
                      v38 = &v153;
                      v39 = v157;
                      if (v37 >= v159)
                      {
                        if (v157 <= &v153 && v157 + 24 * v37 > &v153)
                        {
                          v150 = &v153 - v157;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v37 + 1, 24);
                          v39 = v157;
                          v38 = (v157 + v150);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v37 + 1, 24);
                          v38 = &v153;
                          v39 = v157;
                        }

                        v28 = v25;
                      }

                      v40 = &v39[24 * v158];
                      v41 = *v38;
                      *(v40 + 2) = *(v38 + 2);
                      *v40 = v41;
                      v42 = ++v158;
                      if (v156[0])
                      {
                        v43 = *v28;
                        v153 = 2;
                        v154 = v43;
                        v44 = &v153;
                        v45 = v157;
                        if (v42 >= v159)
                        {
                          if (v157 <= &v153 && v157 + 24 * v42 > &v153)
                          {
                            v152 = &v153 - v157;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v42 + 1, 24);
                            v45 = v157;
                            v44 = (v157 + v152);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v42 + 1, 24);
                            v44 = &v153;
                            v45 = v157;
                          }
                        }

                        v46 = &v45[24 * v158];
                        v47 = *v44;
                        *(v46 + 2) = *(v44 + 2);
                        *v46 = v47;
                        ++v158;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
                if (v156[0])
                {
                  mlir::InFlightDiagnostic::report(v156);
                }

                if (v166 != 1)
                {
                  return v48;
                }

                if (v165 != &v166)
                {
                  free(v165);
                }

                v49 = __p;
                if (__p)
                {
                  v50 = v164;
                  v51 = __p;
                  if (v164 != __p)
                  {
                    do
                    {
                      v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
                    }

                    while (v50 != v49);
                    v51 = __p;
                  }

                  v164 = v49;
                  operator delete(v51);
                }

                v52 = v161;
                if (!v161)
                {
                  goto LABEL_168;
                }

                v53 = v162;
                v54 = v161;
                if (v162 == v161)
                {
                  goto LABEL_167;
                }

                do
                {
                  v90 = *--v53;
                  v89 = v90;
                  *v53 = 0;
                  if (v90)
                  {
                    operator delete[](v89);
                  }
                }

                while (v53 != v52);
                goto LABEL_166;
              }
            }

            v19 |= v24 != 1;
            ++v22;
            ++RawData;
            v20 -= 8;
            v21 -= 8;
            if (!v21)
            {
              break;
            }
          }
        }

        v156[0] = mlir::MemRefType::getMemorySpace(a1);
        if (v156[0])
        {
          return mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(v156, v75, v76, v77, v78, a2, a3, a4, a5, a6);
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      a5(v156, a6);
      if (v156[0])
      {
        v153 = 3;
        v154 = "expected interleave to have (rank) elements";
        v155 = 43;
        v65 = &v153;
        v66 = v157;
        if (v158 >= v159)
        {
          if (v157 <= &v153 && v157 + 24 * v158 > &v153)
          {
            v141 = &v153 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
            v66 = v157;
            v65 = (v157 + v141);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
            v65 = &v153;
            v66 = v157;
          }
        }

        v67 = &v66[24 * v158];
        v68 = *v65;
        *(v67 + 2) = *(v65 + 2);
        *v67 = v68;
        ++v158;
      }

      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
      if (v156[0])
      {
        mlir::InFlightDiagnostic::report(v156);
      }

      if (v166 == 1)
      {
        if (v165 != &v166)
        {
          free(v165);
        }

        v69 = __p;
        if (__p)
        {
          v70 = v164;
          v71 = __p;
          if (v164 != __p)
          {
            do
            {
              v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
            }

            while (v70 != v69);
            v71 = __p;
          }

          v164 = v69;
          operator delete(v71);
        }

        v52 = v161;
        if (!v161)
        {
          goto LABEL_168;
        }

        v72 = v162;
        v54 = v161;
        if (v162 == v161)
        {
          goto LABEL_167;
        }

        do
        {
          v74 = *--v72;
          v73 = v74;
          *v72 = 0;
          if (v74)
          {
            operator delete[](v73);
          }
        }

        while (v72 != v52);
        goto LABEL_166;
      }
    }
  }

  else
  {
    a5(v156, a6);
    if (v156[0])
    {
      v153 = 3;
      v154 = "expected alignments to have (rank + 1) elements";
      v155 = 47;
      v55 = &v153;
      v56 = v157;
      if (v158 >= v159)
      {
        if (v157 <= &v153 && v157 + 24 * v158 > &v153)
        {
          v140 = &v153 - v157;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
          v56 = v157;
          v55 = (v157 + v140);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
          v55 = &v153;
          v56 = v157;
        }
      }

      v57 = &v56[24 * v158];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      ++v158;
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
    if (v156[0])
    {
      mlir::InFlightDiagnostic::report(v156);
    }

    if (v166 == 1)
    {
      if (v165 != &v166)
      {
        free(v165);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v164;
        v61 = __p;
        if (v164 != __p)
        {
          do
          {
            v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v164 = v59;
        operator delete(v61);
      }

      v52 = v161;
      if (!v161)
      {
        goto LABEL_168;
      }

      v62 = v162;
      v54 = v161;
      if (v162 == v161)
      {
        goto LABEL_167;
      }

      do
      {
        v64 = *--v62;
        v63 = v64;
        *v62 = 0;
        if (v64)
        {
          operator delete[](v63);
        }
      }

      while (v62 != v52);
      goto LABEL_166;
    }
  }

  return v48;
}

uint64_t mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXInlinerInterface>(int32x2_t *a1)
{
  v2 = operator new(0x18uLL);
  {
    v5 = v2;
    mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreML::CoreInlinerInterface,mlir::ODIE::Compiler::CoreML::CoreMLBytecodeInterface>();
    v2 = v5;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = a1;
  v2[2] = v3;
  *v2 = &unk_1F5B3E0A8;
  v6 = v2;
  mlir::Dialect::addInterface(a1, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  v11 = a7;
  v10 = a6;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v14[1] = a1;
  return mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_8ArrayRefIxEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_, v14, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, &v13, &v12, &v10, &v11);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::parse(mlir::AsmParser *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v42) = 0;
  v45 = 0;
  LOBYTE(v38) = 0;
  v41 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v2 = mlir::FieldParser<mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum>::parse<mlir::AsmParser>(a1);
  v3 = *a1;
  if ((v2 & 0x100000000) == 0)
  {
    v4 = (*(v3 + 40))(a1);
    v25 = 259;
    (*(*a1 + 24))(v29, a1, v4, v24);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v35;
        v7 = __p;
        if (v35 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v35 = v5;
        operator delete(v7);
      }

      v8 = v32;
      if (v32)
      {
        v9 = v33;
        v10 = v32;
        if (v33 != v32)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              operator delete[](v11);
            }
          }

          while (v9 != v8);
          v10 = v32;
        }

        v33 = v8;
        operator delete(v10);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    goto LABEL_48;
  }

  v13 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v25 = 257;
  if (((*(*a1 + 400))(a1, "alignments", 10, v24) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v14 = (*(*a1 + 40))(a1);
  if (v45 == 1 && v42 != v44)
  {
    free(v42);
  }

  v42 = v44;
  v43 = 0x600000000;
  v45 = 1;
  if (((*(*a1 + 600))(a1, &v42, 1, 0) & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((v45 & 1) == 0)
  {
    v24[0] = "custom parser failed to parse parameter 'alignments'";
    v25 = 259;
    (*(*a1 + 24))(v28, a1, v14, v24);
    v21 = v28;
    goto LABEL_56;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v25 = 257;
  if (((*(*a1 + 400))(a1, "interleave", 10, v24) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = (*(*a1 + 40))(a1);
  if (v41 == 1 && v38 != v40)
  {
    free(v38);
  }

  v38 = v40;
  v39 = 0x600000000;
  v41 = 1;
  if (((*(*a1 + 600))(a1, &v38, 1, 0) & 1) == 0)
  {
LABEL_48:
    v19 = 0;
    if (v41 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if ((v41 & 1) == 0)
  {
    v24[0] = "custom parser failed to parse parameter 'interleave'";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v15, v24);
    v21 = v27;
    goto LABEL_56;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    v18 = 0;
    goto LABEL_60;
  }

  v25 = 257;
  if (((*(*a1 + 400))(a1, "baseEncoding", 12, v24) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v16 = mlir::FieldParser<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>::parse(a1);
  if ((v17 & 1) == 0)
  {
    v23 = (*(*a1 + 40))(a1);
    v25 = 259;
    (*(*a1 + 24))(v26, a1, v23, v24);
    v21 = v26;
LABEL_56:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    v19 = 0;
    if (v41 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v18 = v16;
LABEL_60:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  Context = mlir::AsmParser::getContext(a1);
  v19 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(Context, v42, v43, v38, v39, v13, v18);
  if (v41 != 1)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v38 != v40)
  {
    free(v38);
  }

LABEL_51:
  if (v45 == 1 && v42 != v44)
  {
    free(v42);
  }

  return v19;
}

uint64_t mlir::FieldParser<mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum>::parse<mlir::AsmParser>(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &v28) & 1) == 0)
  {
    v31[0] = "expected keyword for An enum corresponding to the backing type to be used for allocations.";
    v32 = 259;
    (*(*a1 + 24))(&v33, a1, v2, v31);
    if (v33)
    {
      mlir::InFlightDiagnostic::report(&v33);
    }

    if (v42 != 1)
    {
      goto LABEL_52;
    }

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

    v12 = v37;
    if (!v37)
    {
      goto LABEL_50;
    }

    v20 = v38;
    v14 = v37;
    if (v38 == v37)
    {
      goto LABEL_49;
    }

    do
    {
      v22 = *--v20;
      v21 = v22;
      *v20 = 0;
      if (v22)
      {
        operator delete[](v21);
      }
    }

    while (v20 != v12);
    goto LABEL_48;
  }

  v3 = SHIBYTE(v30);
  v4 = v28;
  if (v30 >= 0)
  {
    v4 = &v28;
  }

  if (v30 < 0)
  {
    v3 = v29;
  }

  if (v3 != 9)
  {
LABEL_15:
    v26 = "invalid An enum corresponding to the backing type to be used for allocations. specification: ";
    v27 = 259;
    (*(*a1 + 24))(&v33, a1, v2, &v26);
    if (v33)
    {
      v32 = 260;
      v31[0] = &v28;
      mlir::Diagnostic::operator<<(&v34, v31);
      if (v33)
      {
        mlir::InFlightDiagnostic::report(&v33);
      }
    }

    if (v42 != 1)
    {
      goto LABEL_52;
    }

    if (v41 != &v42)
    {
      free(v41);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v40;
      v11 = __p;
      if (v40 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v40 = v9;
      operator delete(v11);
    }

    v12 = v37;
    if (!v37)
    {
LABEL_50:
      if (v35 != &v36)
      {
        free(v35);
      }

LABEL_52:
      v23 = 0;
      v24 = 0;
      goto LABEL_53;
    }

    v13 = v38;
    v14 = v37;
    if (v38 == v37)
    {
LABEL_49:
      v38 = v12;
      operator delete(v14);
      goto LABEL_50;
    }

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
LABEL_48:
    v14 = v37;
    goto LABEL_49;
  }

  if (*v4 == 0x6361667275534F49 && v4[8] == 101)
  {
    v24 = 0x100000000;
    v23 = 1;
  }

  else
  {
    v6 = *v4;
    v7 = v4[8];
    if (v6 != 0x65666675424C544DLL || v7 != 114)
    {
      goto LABEL_15;
    }

    v24 = 0x100000000;
    v23 = 2;
  }

LABEL_53:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  return v24 | v23;
}

uint64_t mlir::FieldParser<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>::parse(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "coreml", 6uLL);
  v6 = 0;
  v3 = mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::print(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 40);
  v7 = (*(*a2 + 16))(a2);
  if (v6 == 1)
  {
    v8 = "IOSurface";
    v9 = v7[4];
    if ((v7[3] - v9) <= 8)
    {
LABEL_7:
      llvm::raw_ostream::write(v7, v8, 9uLL);
      goto LABEL_10;
    }
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v8 = "MTLBuffer";
    v9 = v7[4];
    if ((v7[3] - v9) <= 8)
    {
      goto LABEL_7;
    }
  }

  *v9 = *v8;
  *(v9 + 8) = v8[8];
  v7[4] += 9;
LABEL_10:
  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if ((v14[3] - v15) > 9)
  {
    *(v15 + 8) = 29556;
    *v15 = *"alignments";
    v14[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v14, "alignments", 0xAuLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++v16[4];
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, "[", 1uLL);
  }

  else
  {
    *v21 = 91;
    ++v20[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 8), *(*this + 16));
  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "]", 1uLL);
  }

  else
  {
    *v23 = 93;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if ((v28[3] - v29) > 9)
  {
    *(v29 + 8) = 25974;
    *v29 = *"interleave";
    v28[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v28, "interleave", 0xAuLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, ":", 1uLL);
  }

  else
  {
    *v31 = 58;
    ++v30[4];
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "[", 1uLL);
  }

  else
  {
    *v35 = 91;
    ++v34[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 24), *(*this + 32));
  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "]", 1uLL);
    if (!*(*this + 48))
    {
      goto LABEL_72;
    }
  }

  else
  {
    *v37 = 93;
    ++v36[4];
    if (!*(*this + 48))
    {
      goto LABEL_72;
    }
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++v38[4];
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = v42[4];
  if ((v42[3] - v43) > 0xB)
  {
    *(v43 + 8) = 1735289188;
    *v43 = *"baseEncoding";
    v42[4] += 12;
  }

  else
  {
    llvm::raw_ostream::write(v42, "baseEncoding", 0xCuLL);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = v44[4];
  if (v44[3] == v45)
  {
    llvm::raw_ostream::write(v44, ":", 1uLL);
    if (!*(*this + 48))
    {
      goto LABEL_72;
    }
  }

  else
  {
    *v45 = 58;
    ++v44[4];
    if (!*(*this + 48))
    {
      goto LABEL_72;
    }
  }

  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (v47 >= *(v46 + 3))
  {
    llvm::raw_ostream::write(v46, 32);
  }

  else
  {
    *(v46 + 4) = v47 + 1;
    *v47 = 32;
  }

  v52 = *(*this + 48);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v48 = (*(*a2 + 16))(a2);
    v49 = (*(*v48 + 80))(v48) + v48[4] - v48[2];
    mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v52, a2);
    if (v49 == (*(*v48 + 80))(v48) + v48[4] - v48[2])
    {
      (*(*a2 + 40))(a2, v52);
    }
  }

LABEL_72:
  result = (*(*a2 + 16))(a2);
  v51 = result[4];
  if (result[3] == v51)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v51 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v42 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v46) = 0;
  v44 = 0;
  v45 = 0;
  v43 = v5;
  LOBYTE(v46) = 0;
  if (((*(*a2 + 640))(a2, &v44) & 1) == 0)
  {
    v6 = 0;
    LOWORD(v46) = 256;
    if ((v46 & 0x10000) != 0)
    {
      v38 = "hw_constraints";
    }

    else
    {
      BYTE2(v46) = 1;
    }

    goto LABEL_15;
  }

  v38 = "hw_constraints";
  v39 = 14;
  if ((v46 & 0x10000) != 0)
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v45;
  if (v45)
  {
    if (v45 == 14 && *v44 == 0x74736E6F635F7768 && *(v44 + 6) == 0x73746E6961727473)
    {
      v6 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::parse(a2);
      LOBYTE(v46) = v6 != 0;
      *(&v46 + 1) = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v42 + 648))(v42, &v38, 1);
    if ((v46 & 0x10000) != 0)
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v45;
  }

  v6 = 0;
  v9 = v44;
  LOWORD(v46) = 0;
  BYTE2(v46) = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v42) & 0x100) == 0)
  {
    v37 = 257;
    (*(*a2 + 24))(&v42, a2, v4, v36);
    if (v42)
    {
      LODWORD(v38) = 3;
      v40 = 19;
      v10 = &v38;
      v11 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v38 && v45 + 24 * v46 > &v38)
        {
          v33 = &v38 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v11 = v45;
          v10 = (v45 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v10 = &v38;
          v11 = v45;
        }
      }

      v12 = &v11[24 * v46];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v46;
      if (v42)
      {
        v41 = 261;
        v38 = v9;
        v39 = v7;
        mlir::Diagnostic::operator<<(&v43, &v38);
        if (v42)
        {
          LODWORD(v38) = 3;
          v40 = 14;
          v14 = &v38;
          v15 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v38 && v45 + 24 * v46 > &v38)
            {
              v34 = &v38 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v15 = v45;
              v14 = (v45 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v14 = &v38;
              v15 = v45;
            }
          }

          v16 = &v15[24 * v46];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v46;
          if (v42)
          {
            v18 = *(a1 + 8);
            v19 = *(a1 + 16);
            v41 = 261;
            v38 = v18;
            v39 = v19;
            mlir::Diagnostic::operator<<(&v43, &v38);
            if (v42)
            {
              LODWORD(v38) = 3;
              v40 = 1;
              v20 = &v38;
              v21 = v45;
              if (v46 >= v47)
              {
                if (v45 <= &v38 && v45 + 24 * v46 > &v38)
                {
                  v35 = &v38 - v45;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
                  v21 = v45;
                  v20 = (v45 + v35);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
                  v20 = &v38;
                  v21 = v45;
                }
              }

              v22 = &v21[24 * v46];
              v23 = *v20;
              *(v22 + 2) = v20[2];
              *v22 = v23;
              ++v46;
              if (v42)
              {
                mlir::InFlightDiagnostic::report(&v42);
              }
            }
          }
        }
      }
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v52;
        v26 = __p;
        if (v52 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v52 = v24;
        operator delete(v26);
      }

      v27 = v49;
      if (v49)
      {
        v28 = v50;
        v29 = v49;
        if (v50 != v49)
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
          v29 = v49;
        }

        v50 = v27;
        operator delete(v29);
      }

      if (v45 != v48)
      {
        free(v45);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if (v6[3] - v7 > 0xDuLL)
    {
      qmemcpy(v7, "hw_constraints", 14);
      v6[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v6, "hw_constraints", 0xEuLL);
    }

    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::print(v8, a3);
  }
}

int32x2_t *mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::CoreMLAXDialect(int32x2_t *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "coremlax", 8, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id);
  *v3 = &unk_1F5B3D910;
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::CastOp>(v3);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::ViewOp>(this);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>(this);
  mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXInlinerInterface>(this);
  return this;
}

void sub_1E053F380(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::CastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.cast", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3D9A8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.constexpr_blockwise_shift_scale", 40, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DA88;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.constexpr_lut_to_dense", 31, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DB68;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.copy_discarding_constraints", 36, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DC48;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.copy_with_constraints", 30, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DD28;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.dequantize", 19, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DE08;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.quantize", 17, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DEE8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreMLAX::ViewOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ViewOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "coremlax.view", 13, a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B3DFC8;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if ((mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(&v7) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if ((mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(&v7) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
  {
    mlir::ValueRange::ValueRange(&v23, v25, v26);
    mlir::ValueRange::ValueRange(v22, *a11, *(a11 + 8));
    v13 = v24;
    if (v24 == v22[1])
    {
      if (!v24)
      {
LABEL_7:
        v18 = 1;
        v19 = v25;
        if (v25 == v27)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v23;
      v16 = v22[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v23 = "coremlax.dequantize";
    v24 = 19;
    v21.var0.var0 = a3;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v21, "'", &v23, "' op inferred type(s) ", &v25, " are incompatible with return type(s) of operation ", a11);
    v19 = v25;
    if (v25 == v27)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v25;
  if (v25 != v27)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultType,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait,mlir::InferTypeOpInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 4))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::ODIE::Compiler::CoreML::AndOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AndOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if (mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v25))
  {
    mlir::ValueRange::ValueRange(&v23, v25, v26);
    mlir::ValueRange::ValueRange(v22, *a11, *(a11 + 8));
    v13 = v24;
    if (v24 == v22[1])
    {
      if (!v24)
      {
LABEL_7:
        v18 = 1;
        v19 = v25;
        if (v25 == v27)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v23;
      v16 = v22[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v23 = "coremlax.quantize";
    v24 = 17;
    v21.var0.var0 = a3;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v21, "'", &v23, "' op inferred type(s) ", &v25, " are incompatible with return type(s) of operation ", a11);
    v19 = v25;
    if (v25 == v27)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v25;
  if (v25 != v27)
  {
    goto LABEL_10;
  }

  return v18;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 4))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(&v6) & 1;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = v6[0];
      if ((v7 & 2) != 0)
      {
        v4 = v6;
      }

      v5 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      result = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OneOperand<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreMLAX::ViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreMLAX::ViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::IsCommutative<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::Elementwise<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::ODIE::Compiler::CoreML::AddOp>,mlir::InferShapedTypeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::AddOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::ODIE::Compiler::CoreMLAX::ViewOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::ODIE::Compiler::CoreMLAX::ViewOp::fold(v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if ((mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(&v7) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ViewOp::verify(&v7);
}

uint64_t *mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>(a1, v11);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != &v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, 0, v9);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::VerifiableTensorEncodingInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>::verifyEncoding;
  {
    v10 = v4;
    mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSF_6detail30HardwareConstraintsAttrStorageENSB_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSE_6detail30HardwareConstraintsAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  *(a2 + 144) = "coremlax.hw_constraints";
  *(a2 + 152) = 23;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSF_6detail30HardwareConstraintsAttrStorageENSB_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 48);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSE_6detail30HardwareConstraintsAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v19 = *(a1 + 8);
  v20 = v3;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = a1;
  v4 = *a2;
  v17 = *a3;
  v18 = v4;
  v28 = &v18;
  v29 = &v17;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>,void>::replace(std::tuple<llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,llvm::ArrayRef<long long> const&,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum const&,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr const&)#1}::operator()(&v28, &v19, &v20, &v21, &v22, &v36);
  Context = mlir::Attribute::getContext(&v23);
  v30 = v32;
  v31 = 0x600000000;
  v6 = v37;
  if (v37)
  {
    if (v37 < 7)
    {
      v8 = v32;
      v7 = v37;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v37, 8);
      v7 = v37;
      if (!v37)
      {
LABEL_7:
        LODWORD(v31) = v6;
        goto LABEL_8;
      }

      v8 = v30;
    }

    memcpy(v8, v36, 8 * v7);
    goto LABEL_7;
  }

LABEL_8:
  v33 = v35;
  v34 = 0x600000000;
  v9 = v40;
  if (!v40)
  {
    v9 = 0;
    v12 = v35;
    goto LABEL_16;
  }

  if (v40 < 7)
  {
    v11 = v35;
    v10 = v40;
    goto LABEL_14;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v40, 8);
  v10 = v40;
  if (v40)
  {
    v11 = v33;
LABEL_14:
    memcpy(v11, v39, 8 * v10);
  }

  LODWORD(v34) = v9;
  v6 = v31;
  v12 = v33;
LABEL_16:
  v35[6] = v42;
  v35[7] = v43;
  v13 = *v42;
  *&v27 = v30;
  *(&v27 + 1) = v6;
  *&v26 = v12;
  *(&v26 + 1) = v9;
  v25 = v43;
  v24 = v13;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v28 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v29 = Context;
  v15 = mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_8ArrayRefIxEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_, &v28, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, &v27, &v26, &v24, &v25);
  if (v33 != v35)
  {
    free(v33);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v39 != &v41)
  {
    free(v39);
  }

  if (v36 != &v38)
  {
    free(v36);
  }

  return v15;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>,void>::replace(std::tuple<llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,llvm::ArrayRef<long long> const&,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum const&,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr const&)#1}::operator()(int64x2_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a3, *(a3 + 8), &v20);
  if (*a5)
  {
    v11 = **a1;
    **a1 = vaddq_s64(v11, xmmword_1E09721B0);
    v12 = *v11.i64[0];
  }

  else
  {
    v12 = 0;
  }

  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v13 = v25;
  if (v25 && &__src != a6)
  {
    if (__src == v27)
    {
      v15 = v25;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v25, 8), (v15 = v25) != 0))
      {
        memcpy(*a6, __src, 8 * v15);
      }

      *(a6 + 8) = v13;
    }

    else
    {
      *a6 = __src;
      v14 = v26;
      *(a6 + 8) = v13;
      *(a6 + 12) = v14;
      __src = v27;
      v26 = 0;
    }

    v25 = 0;
  }

  *(a6 + 64) = a6 + 80;
  *(a6 + 72) = 0x600000000;
  v16 = v20;
  if ((a6 + 64) != &v20)
  {
    v17 = v21;
    if (v21)
    {
      if (v20 != v23)
      {
        *(a6 + 64) = v20;
        v18 = v22;
        *(a6 + 72) = v17;
        *(a6 + 76) = v18;
        v20 = v23;
        v22 = 0;
        v16 = v23;
LABEL_23:
        v21 = 0;
        goto LABEL_24;
      }

      if (v21 < 7)
      {
        v19 = v21;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 64, a6 + 80, v21, 8);
        v19 = v21;
        v16 = v20;
        if (!v21)
        {
          goto LABEL_22;
        }
      }

      memcpy(*(a6 + 64), v16, 8 * v19);
      v16 = v20;
LABEL_22:
      *(a6 + 72) = v17;
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a6 + 128) = a4;
  *(a6 + 136) = v12;
  if (v16 != v23)
  {
    free(v16);
  }

  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, int *a7, uint64_t *a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = a2;
  v21[1] = a3;
  v10 = *a6;
  v17 = *a5;
  v18 = v10;
  v19 = *a7;
  v20 = *a8;
  memset(v26, 0, sizeof(v26));
  v27 = 0xFF51AFD7ED558CCDLL;
  v25 = llvm::hashing::detail::hash_combine_range_impl<char const>(v17, v17 + 8 * *(&v17 + 1));
  v22 = 0;
  v11 = llvm::hashing::detail::hash_combine_range_impl<char const>(v18, v18 + 8 * *(&v18 + 1));
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v25, &v22, v26, &v26[3] + 8, v11);
  v23 = v22;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum>(&v25, &v23, v12, &v26[3] + 8, v19);
  v24 = v23;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v25, &v24, v13, &v26[3] + 8, (v20 >> 4) ^ (v20 >> 9));
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v25, v24, v14, &v26[3] + 8);
  v24 = &v17;
  v25 = &v17;
  *&v26[0] = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, v15, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v25);
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum>(char *a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 4 - v8;
    v32 = &a1[4 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 4 - v8;
  v32 = &a1[4 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && (v5 = *(a2 + 32), v5 == *(v2 + 24)) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5) && *(a2 + 40) == *(v2 + 32))
  {
    return *(a2 + 48) == *(v2 + 40);
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = *(a2 + 8);
  v6 = a2[5];
  v7 = *a1;
  if (v2)
  {
    v8 = *a2;
    v9 = 8 * v2;
    a1[10] += 8 * v2;
    if (v7 && (Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + v9 <= a1[1]))
    {
      *a1 = Slow + v9;
      v11 = v9 - 8;
      if ((v9 - 8) >= 0x18)
      {
LABEL_5:
        v12 = Slow;
        v13 = v8;
        if (Slow - v8 >= 0x20)
        {
          v14 = (v11 >> 3) + 1;
          v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
          v12 = (Slow + v15);
          v13 = (v8 + v15);
          v16 = (v8 + 16);
          v17 = (Slow + 16);
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_15:
            v7 = *a1;
            if (v4)
            {
              goto LABEL_16;
            }

LABEL_11:
            v20 = 0;
            goto LABEL_28;
          }
        }

        do
        {
LABEL_14:
          v22 = *v13++;
          *v12++ = v22;
        }

        while (v13 != (v8 + 8 * v2));
        goto LABEL_15;
      }
    }

    else
    {
      v21 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v21;
      v11 = v9 - 8;
      if ((v9 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v12 = Slow;
    v13 = v8;
    goto LABEL_14;
  }

  Slow = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  v23 = 8 * v4;
  a1[10] += 8 * v4;
  if (v7 && (v20 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v20 + v23 <= a1[1]))
  {
    *a1 = v20 + v23;
    v24 = v23 - 8;
    if ((v23 - 8) >= 0x18)
    {
LABEL_19:
      v25 = v20;
      v26 = v3;
      if (v20 - v3 >= 0x20)
      {
        v27 = (v24 >> 3) + 1;
        v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
        v25 = (v20 + v28);
        v26 = (v3 + v28);
        v29 = (v3 + 16);
        v30 = (v20 + 16);
        v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v32 = *v29;
          *(v30 - 1) = *(v29 - 1);
          *v30 = v32;
          v29 += 2;
          v30 += 2;
          v31 -= 4;
        }

        while (v31);
        if (v27 == (v27 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    v33 = a1;
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v4, 8 * v4, 3);
    a1 = v33;
    v24 = v23 - 8;
    if ((v23 - 8) >= 0x18)
    {
      goto LABEL_19;
    }
  }

  v25 = v20;
  v26 = v3;
  do
  {
LABEL_26:
    v34 = *v26++;
    *v25++ = v34;
  }

  while (v26 != (v3 + 8 * v4));
LABEL_27:
  v7 = *a1;
LABEL_28:
  a1[10] += 56;
  v35 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35 + 56;
  if (v7)
  {
    v37 = v36 > a1[1];
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 56, 56, 3);
  }

  else
  {
    *a1 = v36;
  }

  *v35 = 0;
  *(v35 + 8) = Slow;
  *(v35 + 16) = v2;
  *(v35 + 24) = v20;
  *(v35 + 32) = v4;
  *(v35 + 40) = v5;
  *(v35 + 48) = v6;
  return v35;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML18TensorEncodingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
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
      result = v9;
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
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML18TensorEncodingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v43[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  RHS = mlir::AffineBinaryOpExpr::getRHS(v43);
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v43[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::AffineBinaryOpExpr::getRHS(v43);
  if (RHS == v4)
  {
    return 1;
  }

  v6 = v4;
  v38 = "expected source ";
  v39 = 259;
  mlir::OpState::emitOpError(this, &v38, v43);
  if (v43[0])
  {
    v7 = &v40;
    mlir::DiagnosticArgument::DiagnosticArgument(&v40, RHS);
    v8 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v40 && v44 + 24 * v45 > &v40)
      {
        v34 = &v40 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v8 = v44;
        v7 = (v44 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v7 = &v40;
        v8 = v44;
      }
    }

    v9 = &v8[24 * v45];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v45;
    if (v43[0])
    {
      v40 = 3;
      v41 = " and result element type ";
      v42 = 25;
      v12 = &v40;
      v13 = v44;
      if (v11 >= v46)
      {
        if (v44 <= &v40 && v44 + 24 * v11 > &v40)
        {
          v35 = &v40 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v11 + 1, 24);
          v13 = v44;
          v12 = (v44 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v11 + 1, 24);
          v12 = &v40;
          v13 = v44;
        }
      }

      v14 = &v13[24 * v45];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v45;
      if (v43[0])
      {
        v16 = &v40;
        mlir::DiagnosticArgument::DiagnosticArgument(&v40, v6);
        v17 = v44;
        if (v45 >= v46)
        {
          if (v44 <= &v40 && v44 + 24 * v45 > &v40)
          {
            v36 = &v40 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v17 = v44;
            v16 = (v44 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v16 = &v40;
            v17 = v44;
          }
        }

        v18 = &v17[24 * v45];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v45;
        if (v43[0])
        {
          v40 = 3;
          v41 = " to match";
          v42 = 9;
          v21 = &v40;
          v22 = v44;
          if (v20 >= v46)
          {
            if (v44 <= &v40 && v44 + 24 * v20 > &v40)
            {
              v37 = &v40 - v44;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v20 + 1, 24);
              v22 = v44;
              v21 = (v44 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v20 + 1, 24);
              v21 = &v40;
              v22 = v44;
            }
          }

          v23 = &v22[24 * v45];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v45;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
    }

    v28 = v48;
    if (v48)
    {
      v29 = v49;
      v30 = v48;
      if (v49 != v48)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            operator delete[](v31);
          }
        }

        while (v29 != v28);
        v30 = v48;
      }

      v49 = v28;
      operator delete(v30);
    }

    if (v44 != v47)
    {
      free(v44);
    }
  }

  return v5;
}

void mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v3 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp,mlir::MLIRContext *&>(a1, 0, 0, &v3);
}

void mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v3 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp,mlir::MLIRContext *&>(a1, 0, 0, &v3);
}

void mlir::ODIE::Compiler::CoreMLAX::CastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v3 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp,mlir::MLIRContext *&>(a1, 0, 0, &v3);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::verify(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v64 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 36);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v63 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v64);
  if (RHS != mlir::AffineBinaryOpExpr::getRHS(&v63))
  {
    __s1 = "expected source ";
    v73[8] = 259;
    mlir::OpState::emitOpError(this, &__s1, &v74);
    v25 = mlir::AffineBinaryOpExpr::getRHS(&v64);
    if (v74)
    {
      p_s2 = &__s2;
      mlir::DiagnosticArgument::DiagnosticArgument(&__s2, v25);
      v27 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &__s2 && v76 + 24 * v77 > &__s2)
        {
          v55 = &__s2 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v27 = v76;
          p_s2 = (v76 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          p_s2 = &__s2;
          v27 = v76;
        }
      }

      v28 = &v27[24 * v77];
      v29 = *p_s2;
      *(v28 + 2) = p_s2[2];
      *v28 = v29;
      v30 = ++v77;
      if (v74)
      {
        LODWORD(__s2) = 3;
        v69 = " and result element type ";
        v70[0] = 25;
        v31 = &__s2;
        v32 = v76;
        if (v30 >= v78)
        {
          if (v76 <= &__s2 && v76 + 24 * v30 > &__s2)
          {
            v57 = &__s2 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v30 + 1, 24);
            v32 = v76;
            v31 = (v76 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v30 + 1, 24);
            v31 = &__s2;
            v32 = v76;
          }
        }

        v33 = &v32[24 * v77];
        v34 = *v31;
        *(v33 + 2) = v31[2];
        *v33 = v34;
        ++v77;
      }
    }

    v35 = mlir::AffineBinaryOpExpr::getRHS(&v63);
    if (v74)
    {
      v36 = &__s2;
      mlir::DiagnosticArgument::DiagnosticArgument(&__s2, v35);
      v37 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &__s2 && v76 + 24 * v77 > &__s2)
        {
          v56 = &__s2 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v37 = v76;
          v36 = (v76 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v36 = &__s2;
          v37 = v76;
        }
      }

      v38 = &v37[24 * v77];
      v39 = *v36;
      *(v38 + 2) = v36[2];
      *v38 = v39;
      v40 = ++v77;
      if (v74)
      {
        LODWORD(__s2) = 3;
        v69 = " to match";
        v70[0] = 9;
        v41 = &__s2;
        v42 = v76;
        if (v40 >= v78)
        {
          if (v76 <= &__s2 && v76 + 24 * v40 > &__s2)
          {
            v58 = &__s2 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v40 + 1, 24);
            v42 = v76;
            v41 = (v76 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v40 + 1, 24);
            v41 = &__s2;
            v42 = v76;
          }
        }

        v43 = &v42[24 * v77];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        ++v77;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v83;
        v47 = __p;
        if (v83 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v83 = v45;
        operator delete(v47);
      }

      v48 = v80;
      if (v80)
      {
        v49 = v81;
        v50 = v80;
        if (v81 != v80)
        {
          do
          {
            v52 = *--v49;
            v51 = v52;
            *v49 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v49 != v48);
          v50 = v80;
        }

        v81 = v48;
        operator delete(v50);
      }

      v53 = v76;
      if (v76 != v79)
      {
        goto LABEL_69;
      }
    }

    return v16;
  }

  mlir::ODIE::Compiler::CoreMLAX::getStrides(v64, &__s1);
  mlir::ODIE::Compiler::CoreMLAX::getStrides(v63, &__s2);
  if (v72 == v69 && (v7 = __s2, !memcmp(__s1, __s2, 8 * v72)))
  {
    v16 = 1;
    if (v7 != v70)
    {
LABEL_67:
      free(v7);
    }
  }

  else
  {
    v61 = "source strides [";
    v62 = 259;
    mlir::OpState::emitOpError(this, &v61, &v74);
    if (v74)
    {
      v65 = ", ";
      llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(__s1, __s1 + v72, v75, v75, &v65);
      if (v74)
      {
        LODWORD(v65) = 3;
        v66 = "] do not match dest strides [";
        v67 = 29;
        v8 = &v65;
        v9 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v65 && v76 + 24 * v77 > &v65)
          {
            v59 = &v65 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v9 = v76;
            v8 = (v76 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v8 = &v65;
            v9 = v76;
          }
        }

        v10 = &v9[24 * v77];
        v11 = *v8;
        *(v10 + 2) = v8[2];
        *v10 = v11;
        ++v77;
        if (v74)
        {
          v65 = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(__s2, __s2 + v69, v75, v75, &v65);
          if (v74)
          {
            LODWORD(v65) = 3;
            v66 = "]";
            v67 = 1;
            v12 = &v65;
            v13 = v76;
            if (v77 >= v78)
            {
              if (v76 <= &v65 && v76 + 24 * v77 > &v65)
              {
                v60 = &v65 - v76;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
                v13 = v76;
                v12 = (v76 + v60);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
                v12 = &v65;
                v13 = v76;
              }
            }

            v14 = &v13[24 * v77];
            v15 = *v12;
            *(v14 + 2) = v12[2];
            *v14 = v15;
            ++v77;
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v83;
        v19 = __p;
        if (v83 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v83 = v17;
        operator delete(v19);
      }

      v20 = v80;
      if (v80)
      {
        v21 = v81;
        v22 = v80;
        if (v81 != v80)
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
          v22 = v80;
        }

        v81 = v20;
        operator delete(v22);
      }

      if (v76 != v79)
      {
        free(v76);
      }
    }

    v7 = __s2;
    if (__s2 != v70)
    {
      goto LABEL_67;
    }
  }

  v53 = __s1;
  if (__s1 != v73)
  {
LABEL_69:
    free(v53);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::fold(uint64_t a1)
{
  v2 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  result = 0;
  if ((*(NextResultAtOffset + 8) ^ v2) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5 == 4)
  {
    mlir::ValueRange::ValueRange(&v31, 0, 0);
    v31 = a4;
    v32 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v31, 0);
    v31 = a4;
    v32 = 2;
    v31 = mlir::ValueRange::offset_base(&v31, 2);
    v32 = 0;
    v15 = mlir::ValueRange::dereference_iterator(&v31, 0);
    v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v32 = v16;
    if (v31)
    {
      v30[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
      v30[1] = v17;
      if (v30[0])
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v30);
        v20 = v19;
        isSplat = mlir::ElementsAttr::isSplat(&v31);
        v22 = mlir::RankedTensorType::get(ArgAttrsAttr, v20, isSplat, 0);
        v23 = *(a11 + 8);
        if (v23 >= *(a11 + 12))
        {
          v29 = v22;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
          v22 = v29;
          LODWORD(v23) = *(a11 + 8);
        }

        *(*a11 + 8 * v23) = v22;
        ++*(a11 + 8);
        return 1;
      }

      else
      {
        v28.var0.var0 = a3;
        return mlir::emitOptionalError<char const(&)[66]>(a2, v28, "expect shaped type for input");
      }
    }

    else
    {
      v27.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v27, "expect shaped type for zero_scale");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expect 4 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5 == 4)
  {
    mlir::ValueRange::ValueRange(&v31, 0, 0);
    v31 = a4;
    v32 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v31, 0);
    v31 = a4;
    v32 = 1;
    v31 = mlir::ValueRange::offset_base(&v31, 1);
    v32 = 0;
    v15 = mlir::ValueRange::dereference_iterator(&v31, 0);
    v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v32 = v16;
    if (v31)
    {
      v30[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
      v30[1] = v17;
      if (v30[0])
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v30);
        v20 = v19;
        isSplat = mlir::ElementsAttr::isSplat(&v31);
        v22 = mlir::RankedTensorType::get(ArgAttrsAttr, v20, isSplat, 0);
        v23 = *(a11 + 8);
        if (v23 >= *(a11 + 12))
        {
          v29 = v22;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
          v22 = v29;
          LODWORD(v23) = *(a11 + 8);
        }

        *(*a11 + 8 * v23) = v22;
        ++*(a11 + 8);
        return 1;
      }

      v27 = "expect shaped type for input";
    }

    else
    {
      v27 = "expect shaped type for scale";
    }

    v28.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v28, v27);
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "expect 4 operands");
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::CastOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 36))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  v36 = a1;
  Values = mlir::SparseElementsAttr::getValues(&v58);
  a1 = v36;
  if (!Values || *(*Values + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    goto LABEL_2;
  }

  v38 = *a2;
  {
    v55 = v38;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = *(v55 + 8);
    v41 = *(v55 + 16);
    if (v41)
    {
      goto LABEL_31;
    }

LABEL_59:
    v50 = 0;
    goto LABEL_61;
  }

  v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  if (!v41)
  {
    goto LABEL_59;
  }

LABEL_31:
  v42 = v40;
  v43 = v41;
  do
  {
    v44 = v43 >> 1;
    v45 = &v42[2 * (v43 >> 1)];
    v47 = *v45;
    v46 = v45 + 2;
    v43 += ~(v43 >> 1);
    if (v47 < v39)
    {
      v42 = v46;
    }

    else
    {
      v43 = v44;
    }
  }

  while (v43);
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
    goto LABEL_59;
  }

  v50 = v42[1];
LABEL_61:
  v61[0] = a2;
  v61[1] = v50;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56) || mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v56, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v9 = &v58;
    v10 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v48 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = v62;
        v9 = (v62 + v48);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v9 = &v58;
        v10 = v62;
      }
    }

    v11 = &v10[24 * v63];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    v13 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v14 = &v58;
      v15 = v62;
      if (v13 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v13 > &v58)
        {
          v49 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v13 + 1, 24);
          v15 = v62;
          v14 = (v62 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v13 + 1, 24);
          v14 = &v58;
          v15 = v62;
        }
      }

      v16 = &v15[24 * v63];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      v18 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 120;
        v19 = &v58;
        v20 = v62;
        if (v18 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v18 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v18 + 1, 24);
            v20 = v62;
            v19 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v18 + 1, 24);
            v19 = &v58;
            v20 = v62;
          }
        }

        v21 = &v20[24 * v63];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v63;
        if (v61[0])
        {
          v23 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v24 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = v62;
              v23 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v23 = &v58;
              v24 = v62;
            }
          }

          v25 = &v24[24 * v63];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          ++v63;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v69;
      v30 = __p;
      if (v69 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v69 = v28;
      operator delete(v30);
    }

    v31 = v66;
    if (v66)
    {
      v32 = v67;
      v33 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v66;
      }

      v67 = v31;
      operator delete(v33);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v27;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CastOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp *this)
{
  if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps2(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps2(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps2(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_28;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isUnsignedInteger(v57, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v57))
  {
    return 1;
  }

  if (mlir::Type::isF16(v57))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v57);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_28:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 4-bit unsigned integer or 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v61 = 181;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isBF16(v57))
  {
    return 1;
  }

  if (mlir::Type::isF16(v57))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v57);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_24:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v61 = 81;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp *this)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v16 = v10[1];
      goto LABEL_20;
    }

LABEL_18:
    v16 = 0;
LABEL_20:
    v56[0] = v3;
    v56[1] = v16;
    v51[0] = mlir::ElementsAttr::isSplat(v56);
    if (mlir::Type::isUnsignedInteger(v51, 1) || mlir::Type::isUnsignedInteger(v51, 2) || mlir::Type::isUnsignedInteger(v51, 3) || mlir::Type::isUnsignedInteger(v51, 4) || mlir::Type::isUnsignedInteger(v51, 6) || mlir::Type::isUnsignedInteger(v51, 8))
    {
      goto LABEL_56;
    }
  }

  v52 = 261;
  v51[0] = "operand";
  v51[1] = 7;
  mlir::Operation::emitOpError(v2, v51, v56);
  if (v56[0])
  {
    v53 = 3;
    v54 = " #";
    v55 = 2;
    v17 = &v53;
    v18 = v57;
    if (v58 >= v59)
    {
      if (v57 <= &v53 && v57 + 24 * v58 > &v53)
      {
        v47 = &v53 - v57;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
        v18 = v57;
        v17 = (v57 + v47);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
        v17 = &v53;
        v18 = v57;
      }
    }

    v19 = &v18[24 * v58];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    v21 = ++v58;
    if (v56[0])
    {
      v53 = 5;
      v54 = 0;
      v22 = &v53;
      v23 = v57;
      if (v21 >= v59)
      {
        if (v57 <= &v53 && v57 + 24 * v21 > &v53)
        {
          v48 = &v53 - v57;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v21 + 1, 24);
          v23 = v57;
          v22 = (v57 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v21 + 1, 24);
          v22 = &v53;
          v23 = v57;
        }
      }

      v24 = &v23[24 * v58];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v58;
      if (v56[0])
      {
        v53 = 3;
        v54 = " must be tensor of 1-bit unsigned integer or 2-bit unsigned integer or 3-bit unsigned integer or 4-bit unsigned integer or 6-bit unsigned integer or 8-bit unsigned integer values, but got ";
        v55 = 188;
        v27 = &v53;
        v28 = v57;
        if (v26 >= v59)
        {
          if (v57 <= &v53 && v57 + 24 * v26 > &v53)
          {
            v49 = &v53 - v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v26 + 1, 24);
            v28 = v57;
            v27 = (v57 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v26 + 1, 24);
            v27 = &v53;
            v28 = v57;
          }
        }

        v29 = &v28[24 * v58];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v58;
        if (v56[0])
        {
          v31 = &v53;
          mlir::DiagnosticArgument::DiagnosticArgument(&v53, v3);
          v32 = v57;
          if (v58 >= v59)
          {
            if (v57 <= &v53 && v57 + 24 * v58 > &v53)
            {
              v50 = &v53 - v57;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v32 = v57;
              v31 = (v57 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v31 = &v53;
              v32 = v57;
            }
          }

          v33 = &v32[24 * v58];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v58;
        }
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v64;
      v38 = __p;
      if (v64 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v64 = v36;
      operator delete(v38);
    }

    v39 = v61;
    if (v61)
    {
      v40 = v62;
      v41 = v61;
      if (v62 != v61)
      {
        do
        {
          v43 = *--v40;
          v42 = v43;
          *v40 = 0;
          if (v43)
          {
            operator delete[](v42);
          }
        }

        while (v40 != v39);
        v41 = v61;
      }

      v62 = v39;
      operator delete(v41);
    }

    if (v57 != v60)
    {
      free(v57);
    }
  }

  if (!v35)
  {
    return 0;
  }

LABEL_56:
  if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps5(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v44 = *this - 16;
  }

  else
  {
    v44 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}